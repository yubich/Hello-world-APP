//
//  gViewController.m
//  helloworld
//
//  Created by BINGCHEN YU on 1/16/13.
//  Copyright (c) 2013 BINGCHEN YU. All rights reserved.
//

#import "gViewController.h"

@interface gViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextField *textFied;
- (IBAction)changeGreeting:(id)sender;

@end

@implementation gViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeGreeting:(id)sender {
    self.userName = self.textFied.text;
    
    NSString *nameString = self.userName;
    if([nameString length] == 0){
        nameString = @"World";
    }
    NSString *greeting = [[NSString alloc] initWithFormat:@"Hello, %@!",nameString];
    self.label.text = greeting;
}
- (void)viewDidUnload {
    [self setTextFied:nil];
    [self setLabel:nil];
    [super viewDidUnload];
}
- (BOOL)textFieldShouldReturn: (UITextField *)theTextField {
    if( theTextField == self.textFied){
        [theTextField resignFirstResponder];
    }
    return YES;
}
@end

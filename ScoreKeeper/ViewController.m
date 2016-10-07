//
//  ViewController.m
//  ScoreKeeper
//
//  Created by Ameesh Kapoor on 10/7/16.
//  Copyright © 2016 Glamsquad. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UILabel *leftScoreLabel;
@property (nonatomic, weak) IBOutlet UILabel *rightScoreLabel;
@property (nonatomic, weak) IBOutlet UIView *leftPanel;
@property (nonatomic, weak) IBOutlet UIView *rightPanel;
@property (nonatomic, assign) NSInteger leftScore;
@property (nonatomic, assign) NSInteger rightScore;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.leftScore = 0;
    self.rightScore = 0;
    // Do any additional setup after loading the view, typically from a nib.
    
    self.leftPanel.layer.borderColor = [UIColor whiteColor].CGColor;
    self.rightPanel.layer.borderColor = [UIColor whiteColor].CGColor;
    self.leftPanel.layer.borderWidth = 4.f;
    self.rightPanel.layer.borderWidth = 4.f;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setLeftScore:(NSInteger)leftScore {
    _leftScore = leftScore;
    self.leftScoreLabel.text = [NSString stringWithFormat:@"%ld", (long)_leftScore];
}

- (void)setRightScore:(NSInteger)rightScore {
    _rightScore = rightScore;
    self.rightScoreLabel.text = [NSString stringWithFormat:@"%ld", (long)_rightScore];
}

- (IBAction)reset {
    self.rightScore = 0;
    self.leftScore = 0;
}

- (IBAction)incrementLeftScore {
    self.leftScore = self.leftScore + 1;
}

- (IBAction)incrementRightScore {
    self.rightScore = self.rightScore + 1;
}

@end

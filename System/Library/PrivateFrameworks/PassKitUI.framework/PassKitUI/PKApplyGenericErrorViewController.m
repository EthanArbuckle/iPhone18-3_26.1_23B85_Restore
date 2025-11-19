@interface PKApplyGenericErrorViewController
- (void)handleNextStep;
@end

@implementation PKApplyGenericErrorViewController

- (void)handleNextStep
{
  v3 = [(PKApplyExplanationViewController *)self controller];
  [v3 endApplyFlow];

  v4.receiver = self;
  v4.super_class = PKApplyGenericErrorViewController;
  [(PKApplyExplanationViewController *)&v4 handleNextStep];
}

@end
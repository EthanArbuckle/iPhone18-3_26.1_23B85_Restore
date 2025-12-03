@interface PKApplyGenericErrorViewController
- (void)handleNextStep;
@end

@implementation PKApplyGenericErrorViewController

- (void)handleNextStep
{
  controller = [(PKApplyExplanationViewController *)self controller];
  [controller endApplyFlow];

  v4.receiver = self;
  v4.super_class = PKApplyGenericErrorViewController;
  [(PKApplyExplanationViewController *)&v4 handleNextStep];
}

@end
@interface PKApplyStateExplanationViewController
- (void)handleNextStep;
@end

@implementation PKApplyStateExplanationViewController

- (void)handleNextStep
{
  controller = [(PKApplyExplanationViewController *)self controller];
  featureApplication = [controller featureApplication];
  applicationStateReason = [featureApplication applicationStateReason];

  if (applicationStateReason - 5 < 0xC || applicationStateReason <= 3)
  {
    [controller endApplyFlow];
  }

  v7.receiver = self;
  v7.super_class = PKApplyStateExplanationViewController;
  [(PKApplyExplanationViewController *)&v7 handleNextStep];
}

@end
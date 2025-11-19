@interface PKApplyStateExplanationViewController
- (void)handleNextStep;
@end

@implementation PKApplyStateExplanationViewController

- (void)handleNextStep
{
  v3 = [(PKApplyExplanationViewController *)self controller];
  v4 = [v3 featureApplication];
  v5 = [v4 applicationStateReason];

  if (v5 - 5 < 0xC || v5 <= 3)
  {
    [v3 endApplyFlow];
  }

  v7.receiver = self;
  v7.super_class = PKApplyStateExplanationViewController;
  [(PKApplyExplanationViewController *)&v7 handleNextStep];
}

@end
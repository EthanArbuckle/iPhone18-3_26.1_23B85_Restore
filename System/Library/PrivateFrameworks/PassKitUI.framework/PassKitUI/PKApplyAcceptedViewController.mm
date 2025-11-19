@interface PKApplyAcceptedViewController
- (void)handleNextStep;
- (void)viewDidLoad;
@end

@implementation PKApplyAcceptedViewController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = PKApplyAcceptedViewController;
  [(PKApplyExplanationViewController *)&v6 viewDidLoad];
  [(PKExplanationViewController *)self setShowDoneButton:1];
  v3 = [(PKApplyExplanationViewController *)self controller];
  if (([v3 applicationType] & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v4 = PKFeatureApplicationHeaderImageWithImage([v3 featureIdentifier], 0);
    v5 = [(PKExplanationViewController *)self explanationView];
    [v5 setImage:v4];
    [v5 setTopMargin:30.0];
  }
}

- (void)handleNextStep
{
  v3 = [(PKApplyExplanationViewController *)self controller];
  [v3 endApplyFlow];

  v4.receiver = self;
  v4.super_class = PKApplyAcceptedViewController;
  [(PKApplyExplanationViewController *)&v4 handleNextStep];
}

@end
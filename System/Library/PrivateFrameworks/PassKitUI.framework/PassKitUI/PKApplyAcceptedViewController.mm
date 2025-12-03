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
  controller = [(PKApplyExplanationViewController *)self controller];
  if (([controller applicationType] & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v4 = PKFeatureApplicationHeaderImageWithImage([controller featureIdentifier], 0);
    explanationView = [(PKExplanationViewController *)self explanationView];
    [explanationView setImage:v4];
    [explanationView setTopMargin:30.0];
  }
}

- (void)handleNextStep
{
  controller = [(PKApplyExplanationViewController *)self controller];
  [controller endApplyFlow];

  v4.receiver = self;
  v4.super_class = PKApplyAcceptedViewController;
  [(PKApplyExplanationViewController *)&v4 handleNextStep];
}

@end
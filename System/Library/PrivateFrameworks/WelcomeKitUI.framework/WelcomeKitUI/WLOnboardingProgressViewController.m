@interface WLOnboardingProgressViewController
- (void)viewDidLoad;
@end

@implementation WLOnboardingProgressViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = WLOnboardingProgressViewController;
  [(OBSetupAssistantProgressController *)&v4 viewDidLoad];
  v3 = [(WLOnboardingProgressViewController *)self headerView];
  [v3 setTitleHyphenationFactor:0.0];
}

@end
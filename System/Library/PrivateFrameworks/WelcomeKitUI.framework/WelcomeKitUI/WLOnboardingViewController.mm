@interface WLOnboardingViewController
- (void)viewDidLoad;
@end

@implementation WLOnboardingViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = WLOnboardingViewController;
  [(OBBaseWelcomeController *)&v4 viewDidLoad];
  v3 = [(WLOnboardingViewController *)self headerView];
  [v3 setTitleHyphenationFactor:0.0];
}

@end
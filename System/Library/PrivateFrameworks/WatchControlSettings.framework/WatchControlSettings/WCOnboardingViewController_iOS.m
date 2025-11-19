@interface WCOnboardingViewController_iOS
- (WCOnboardingObserver)onboardingObserver;
- (void)_cancelOnboarding;
- (void)_tryItOut;
- (void)_turnOn;
- (void)viewDidLoad;
@end

@implementation WCOnboardingViewController_iOS

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = WCOnboardingViewController_iOS;
  [(OBNavigationController *)&v15 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x277D37698]);
  v4 = WCLocalizedString(@"watch.control.onboarding.title");
  v5 = WCLocalizedString(@"watch.control.onboarding.message");
  v6 = [v3 initWithTitle:v4 detailText:v5 icon:0];

  v7 = [MEMORY[0x277D37618] boldButton];
  v8 = WCLocalizedString(@"watch.control.onboarding.button.try.it.out");
  [v7 setTitle:v8 forState:0];

  [v7 addTarget:self action:sel__tryItOut forControlEvents:64];
  v9 = [v6 buttonTray];
  [v9 addButton:v7];

  v10 = [MEMORY[0x277D37618] boldButton];
  v11 = WCLocalizedString(@"watch.control.onboarding.button.turn.on");
  [v10 setTitle:v11 forState:0];

  [v10 addTarget:self action:sel__turnOn forControlEvents:64];
  v12 = [v6 buttonTray];
  [v12 addButton:v10];

  v13 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancelOnboarding];
  v14 = [v6 navigationItem];
  [v14 setLeftBarButtonItem:v13];

  [(OBNavigationController *)self pushViewController:v6 animated:1];
}

- (void)_tryItOut
{
  v4 = +[WCGesturesOverviewViewController_iOS createGesturesOverviewViewController];
  v3 = [(WCOnboardingViewController_iOS *)self onboardingObserver];
  [v4 setOnboardingObserver:v3];

  [(OBNavigationController *)self pushViewController:v4 animated:1];
}

- (void)_turnOn
{
  v3 = [(WCOnboardingViewController_iOS *)self onboardingObserver];
  [v3 didConfirmFromOnboarding];

  [(WCOnboardingViewController_iOS *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)_cancelOnboarding
{
  v3 = [(WCOnboardingViewController_iOS *)self onboardingObserver];
  [v3 didCancelOnboarding];

  [(WCOnboardingViewController_iOS *)self dismissViewControllerAnimated:1 completion:0];
}

- (WCOnboardingObserver)onboardingObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_onboardingObserver);

  return WeakRetained;
}

@end
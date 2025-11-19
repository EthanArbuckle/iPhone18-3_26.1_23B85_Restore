@interface WCGesturesOverviewViewController_iOS
+ (id)createGesturesOverviewViewController;
- (WCOnboardingObserver)onboardingObserver;
- (void)_tryItOutOnAppleWatch;
- (void)viewDidLoad;
@end

@implementation WCGesturesOverviewViewController_iOS

+ (id)createGesturesOverviewViewController
{
  v2 = [WCGesturesOverviewViewController_iOS alloc];
  v3 = WCLocalizedString(@"grey.onboarding.title");
  v4 = [(WCGesturesOverviewViewController_iOS *)v2 initWithTitle:v3 detailText:0 icon:0];

  return v4;
}

- (void)viewDidLoad
{
  v27 = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = WCGesturesOverviewViewController_iOS;
  [(OBBaseWelcomeController *)&v25 viewDidLoad];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = WCAvailableGreyEvents();
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    do
    {
      v7 = 0;
      do
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v21 + 1) + 8 * v7) integerValue];
        v9 = WCNameForGreyEvent(v8);
        v10 = WCOnboardingDescriptionForGreyEvent(v8);
        v11 = WCOnboardingImageForGreyEvent(v8, 1);
        [(WCGesturesOverviewViewController_iOS *)self addBulletedListItemWithTitle:v9 description:v10 image:v11];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v5);
  }

  v12 = [MEMORY[0x277D37618] boldButton];
  v13 = WCLocalizedString(@"grey.onboarding.try.it.out.on.watch.action");
  [v12 setTitle:v13 forState:0];

  [v12 addTarget:self action:sel__tryItOutOnAppleWatch forControlEvents:64];
  v14 = [(WCGesturesOverviewViewController_iOS *)self buttonTray];
  [v14 addButton:v12];

  v15 = [(WCGesturesOverviewViewController_iOS *)self navigationController];
  v16 = [v15 viewControllers];
  v17 = [v16 count];

  if (v17 == 1)
  {
    v18 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_dismissOnboarding];
    v19 = [(OBBaseWelcomeController *)self navigationItem];
    [v19 setLeftBarButtonItem:v18];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_tryItOutOnAppleWatch
{
  v2 = +[WatchControlSettings sharedInstance];
  [v2 setRequestToShowPracticeGrey:1];
}

- (WCOnboardingObserver)onboardingObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_onboardingObserver);

  return WeakRetained;
}

@end
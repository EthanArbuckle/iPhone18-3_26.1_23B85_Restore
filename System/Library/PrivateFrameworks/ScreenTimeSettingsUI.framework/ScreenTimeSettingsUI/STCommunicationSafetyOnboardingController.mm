@interface STCommunicationSafetyOnboardingController
- (BOOL)validatePIN:(id)a3 forPINController:(id)a4;
- (STCommunicationSafetyOnboardingController)initWithCoordinator:(id)a3;
- (id)_createCommunicationSafetyAnalyticsEDUController;
- (id)_createCommunicationSafetyEDUController;
- (id)_createInitialViewController;
- (id)_createPINController;
- (void)_addAccessoryButtonToHeaderViewForWelcomeController:(id)a3 title:(id)a4 action:(SEL)a5;
- (void)_addTrayButtonToWelcomeController:(id)a3 localizationKey:(id)a4 action:(SEL)a5 isBold:(BOOL)a6;
- (void)_continueSelected;
- (void)_dontShareAnalyticsSelected;
- (void)_notNowSelected;
- (void)_openAboutAnalytics;
- (void)_openLearnMore;
- (void)_shareAnalyticsSelected;
- (void)didAcceptEnteredPIN;
- (void)didCancelEnteringPIN;
- (void)presentOverViewController:(id)a3 skipFeatureEnablement:(BOOL)a4 completionBlock:(id)a5;
@end

@implementation STCommunicationSafetyOnboardingController

- (STCommunicationSafetyOnboardingController)initWithCoordinator:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = STCommunicationSafetyOnboardingController;
  v5 = [(STCommunicationSafetyOnboardingController *)&v8 init];
  coordinator = v5->_coordinator;
  v5->_coordinator = v4;

  return v5;
}

- (void)presentOverViewController:(id)a3 skipFeatureEnablement:(BOOL)a4 completionBlock:(id)a5
{
  v6 = a4;
  v8 = a3;
  [(STCommunicationSafetyOnboardingController *)self setCompletionBlock:a5];
  [(STCommunicationSafetyOnboardingController *)self setSkipFeatureEnablement:v6];
  v9 = objc_alloc(MEMORY[0x277D37660]);
  v10 = [(STCommunicationSafetyOnboardingController *)self _createInitialViewController];
  v11 = [v9 initWithRootViewController:v10];

  v12 = [MEMORY[0x277D75418] currentDevice];
  v13 = [v12 userInterfaceIdiom];

  if (!v13)
  {
    [v11 setSupportedInterfaceOrientations:2];
  }

  [v11 setModalPresentationStyle:2];
  [v11 setModalInPresentation:1];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __109__STCommunicationSafetyOnboardingController_presentOverViewController_skipFeatureEnablement_completionBlock___block_invoke;
  v15[3] = &unk_279B7CAE0;
  v15[4] = self;
  v16 = v11;
  v14 = v11;
  [v8 presentViewController:v14 animated:1 completion:v15];
}

- (id)_createInitialViewController
{
  v3 = [(STCommunicationSafetyOnboardingController *)self coordinator];
  v4 = [v3 viewModel];
  v5 = [v4 me];

  if ([v5 hasPasscode] && !objc_msgSend(v3, "hasAlreadyEnteredPINForSession"))
  {
    v6 = [(STCommunicationSafetyOnboardingController *)self _createPINController];
  }

  else
  {
    if ([(STCommunicationSafetyOnboardingController *)self skipFeatureEnablement])
    {
      [(STCommunicationSafetyOnboardingController *)self _createCommunicationSafetyAnalyticsEDUController];
    }

    else
    {
      [(STCommunicationSafetyOnboardingController *)self _createCommunicationSafetyEDUController];
    }
    v6 = ;
  }

  v7 = v6;

  return v7;
}

- (id)_createCommunicationSafetyEDUController
{
  v3 = +[STScreenTimeSettingsUIBundle bundle];
  v4 = [v3 localizedStringForKey:@"CommunicationSafetyEDUFeatureTitle" value:&stru_28766E5A8 table:0];
  v5 = [v3 localizedStringForKey:@"CommunicationSafetyEDUFeatureDetails" value:&stru_28766E5A8 table:0];
  v6 = [objc_alloc(MEMORY[0x277D37698]) initWithTitle:v4 detailText:v5 symbolName:@"bubble.left.and.exclamationmark.bubble.right.fill"];
  v7 = [MEMORY[0x277D37638] accessoryButton];
  v8 = [v3 localizedStringForKey:@"CommunicationSafetyEDULearnMoreButton" value:&stru_28766E5A8 table:0];
  [v7 setTitle:v8 forState:0];

  [v7 addTarget:self action:sel__openLearnMore forControlEvents:0x2000];
  v9 = [v6 headerView];
  [v9 addAccessoryButton:v7];

  [(STCommunicationSafetyOnboardingController *)self _addTrayButtonToWelcomeController:v6 localizationKey:@"CommunicationSafetyEDUContinue" action:sel__continueSelected isBold:1];
  [(STCommunicationSafetyOnboardingController *)self _addTrayButtonToWelcomeController:v6 localizationKey:@"CommunicationSafetyEDUNotNow" action:sel__notNowSelected isBold:0];

  return v6;
}

- (id)_createCommunicationSafetyAnalyticsEDUController
{
  v3 = +[STScreenTimeSettingsUIBundle bundle];
  v4 = [v3 localizedStringForKey:@"CommunicationSafetyAnalyticsEDUTitle" value:&stru_28766E5A8 table:0];
  v5 = [v3 localizedStringForKey:@"CommunicationSafetyAnalyticsEDUDetails" value:&stru_28766E5A8 table:0];
  v6 = [objc_alloc(MEMORY[0x277D37698]) initWithTitle:v4 detailText:v5 symbolName:@"chart.bar.xaxis"];
  v7 = [MEMORY[0x277D37670] linkWithBundleIdentifier:@"com.apple.onboarding.improveCommSafety"];
  v8 = [v7 flow];
  v9 = [v8 localizedButtonTitle];

  [(STCommunicationSafetyOnboardingController *)self _addTrayButtonToWelcomeController:v6 localizationKey:@"CommunicationSafetyEDUShareWithApple" action:sel__shareAnalyticsSelected isBold:1];
  [(STCommunicationSafetyOnboardingController *)self _addTrayButtonToWelcomeController:v6 localizationKey:@"CommunicationSafetyEDUDontShare" action:sel__dontShareAnalyticsSelected isBold:0];
  if (v9)
  {
    [(STCommunicationSafetyOnboardingController *)self _addAccessoryButtonToHeaderViewForWelcomeController:v6 title:v9 action:sel__openAboutAnalytics];
  }

  return v6;
}

- (void)_openLearnMore
{
  v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v2 = [MEMORY[0x277CBEBC0] URLWithString:@"https://support.apple.com/kb/HT212850"];
  [v3 openURL:v2 withOptions:0];
}

- (void)_openAboutAnalytics
{
  v3 = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.improveCommSafety"];
  if (v3)
  {
    v5 = v3;
    v4 = [(STCommunicationSafetyOnboardingController *)self navigationController];
    [v5 setPresentingViewController:v4];

    [v5 present];
    v3 = v5;
  }
}

- (void)_shareAnalyticsSelected
{
  [(STCommunicationSafetyOnboardingController *)self setIsAnalyticsEnabled:1];
  v4 = [(STCommunicationSafetyOnboardingController *)self completionBlock];
  if (v4)
  {
    v4[2](v4, 0, [(STCommunicationSafetyOnboardingController *)self isFeatureEnabled], [(STCommunicationSafetyOnboardingController *)self isAnalyticsEnabled]);
  }

  v3 = [(STCommunicationSafetyOnboardingController *)self navigationController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)_dontShareAnalyticsSelected
{
  [(STCommunicationSafetyOnboardingController *)self setIsAnalyticsEnabled:0];
  v4 = [(STCommunicationSafetyOnboardingController *)self completionBlock];
  if (v4)
  {
    v4[2](v4, 0, [(STCommunicationSafetyOnboardingController *)self isFeatureEnabled], [(STCommunicationSafetyOnboardingController *)self isAnalyticsEnabled]);
  }

  v3 = [(STCommunicationSafetyOnboardingController *)self navigationController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)_continueSelected
{
  [(STCommunicationSafetyOnboardingController *)self setIsFeatureEnabled:1];
  v4 = [(STCommunicationSafetyOnboardingController *)self _createCommunicationSafetyAnalyticsEDUController];
  v3 = [(STCommunicationSafetyOnboardingController *)self navigationController];
  [v3 pushViewController:v4 animated:1];
}

- (void)_notNowSelected
{
  [(STCommunicationSafetyOnboardingController *)self setIsFeatureEnabled:0];
  [(STCommunicationSafetyOnboardingController *)self setIsAnalyticsEnabled:0];
  v4 = [(STCommunicationSafetyOnboardingController *)self completionBlock];
  if (v4)
  {
    v4[2](v4, 0, [(STCommunicationSafetyOnboardingController *)self isFeatureEnabled], [(STCommunicationSafetyOnboardingController *)self isAnalyticsEnabled]);
  }

  v3 = [(STCommunicationSafetyOnboardingController *)self navigationController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)_addTrayButtonToWelcomeController:(id)a3 localizationKey:(id)a4 action:(SEL)a5 isBold:(BOOL)a6
{
  v10 = a4;
  v11 = a3;
  v15 = +[STScreenTimeSettingsUIBundle bundle];
  if (a6)
  {
    [MEMORY[0x277D37618] boldButton];
  }

  else
  {
    [MEMORY[0x277D37650] linkButton];
  }
  v12 = ;
  v13 = [v15 localizedStringForKey:v10 value:&stru_28766E5A8 table:0];

  [v12 setTitle:v13 forState:0];
  [v12 addTarget:self action:a5 forControlEvents:0x2000];
  v14 = [v11 buttonTray];

  [v14 addButton:v12];
}

- (void)_addAccessoryButtonToHeaderViewForWelcomeController:(id)a3 title:(id)a4 action:(SEL)a5
{
  v8 = MEMORY[0x277D37638];
  v9 = a4;
  v10 = a3;
  v13 = [v8 accessoryButton];
  [v13 setTitle:v9 forState:0];

  v11 = [v13 titleLabel];
  [v11 setNumberOfLines:0];

  [v13 addTarget:self action:a5 forControlEvents:64];
  v12 = [v10 headerView];

  [v12 addAccessoryButton:v13];
}

- (BOOL)validatePIN:(id)a3 forPINController:(id)a4
{
  v5 = a3;
  v6 = [(STCommunicationSafetyOnboardingController *)self coordinator];
  v7 = [v6 validatePIN:v5];

  return v7;
}

- (void)didAcceptEnteredPIN
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = [(STCommunicationSafetyOnboardingController *)self coordinator];
  [v3 setHasAlreadyEnteredPINForSession:1];

  if ([(STCommunicationSafetyOnboardingController *)self skipFeatureEnablement])
  {
    [(STCommunicationSafetyOnboardingController *)self _createCommunicationSafetyAnalyticsEDUController];
  }

  else
  {
    [(STCommunicationSafetyOnboardingController *)self _createCommunicationSafetyEDUController];
  }
  v4 = ;
  v5 = [(STCommunicationSafetyOnboardingController *)self navigationController];
  v7[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [v5 setViewControllers:v6 animated:1];
}

- (void)didCancelEnteringPIN
{
  [(STCommunicationSafetyOnboardingController *)self setIsFeatureEnabled:0];
  [(STCommunicationSafetyOnboardingController *)self setIsAnalyticsEnabled:0];
  v4 = [(STCommunicationSafetyOnboardingController *)self completionBlock];
  if (v4)
  {
    v4[2](v4, 1, [(STCommunicationSafetyOnboardingController *)self isFeatureEnabled], [(STCommunicationSafetyOnboardingController *)self isAnalyticsEnabled]);
  }

  v3 = [(STCommunicationSafetyOnboardingController *)self navigationController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (id)_createPINController
{
  v3 = objc_opt_new();
  [v3 setPinDelegate:self];
  [v3 setMode:3];

  return v3;
}

@end
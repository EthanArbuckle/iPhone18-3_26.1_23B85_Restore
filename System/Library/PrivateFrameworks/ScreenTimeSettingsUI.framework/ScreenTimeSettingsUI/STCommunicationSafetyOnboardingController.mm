@interface STCommunicationSafetyOnboardingController
- (BOOL)validatePIN:(id)n forPINController:(id)controller;
- (STCommunicationSafetyOnboardingController)initWithCoordinator:(id)coordinator;
- (id)_createCommunicationSafetyAnalyticsEDUController;
- (id)_createCommunicationSafetyEDUController;
- (id)_createInitialViewController;
- (id)_createPINController;
- (void)_addAccessoryButtonToHeaderViewForWelcomeController:(id)controller title:(id)title action:(SEL)action;
- (void)_addTrayButtonToWelcomeController:(id)controller localizationKey:(id)key action:(SEL)action isBold:(BOOL)bold;
- (void)_continueSelected;
- (void)_dontShareAnalyticsSelected;
- (void)_notNowSelected;
- (void)_openAboutAnalytics;
- (void)_openLearnMore;
- (void)_shareAnalyticsSelected;
- (void)didAcceptEnteredPIN;
- (void)didCancelEnteringPIN;
- (void)presentOverViewController:(id)controller skipFeatureEnablement:(BOOL)enablement completionBlock:(id)block;
@end

@implementation STCommunicationSafetyOnboardingController

- (STCommunicationSafetyOnboardingController)initWithCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v8.receiver = self;
  v8.super_class = STCommunicationSafetyOnboardingController;
  v5 = [(STCommunicationSafetyOnboardingController *)&v8 init];
  coordinator = v5->_coordinator;
  v5->_coordinator = coordinatorCopy;

  return v5;
}

- (void)presentOverViewController:(id)controller skipFeatureEnablement:(BOOL)enablement completionBlock:(id)block
{
  enablementCopy = enablement;
  controllerCopy = controller;
  [(STCommunicationSafetyOnboardingController *)self setCompletionBlock:block];
  [(STCommunicationSafetyOnboardingController *)self setSkipFeatureEnablement:enablementCopy];
  v9 = objc_alloc(MEMORY[0x277D37660]);
  _createInitialViewController = [(STCommunicationSafetyOnboardingController *)self _createInitialViewController];
  v11 = [v9 initWithRootViewController:_createInitialViewController];

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (!userInterfaceIdiom)
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
  [controllerCopy presentViewController:v14 animated:1 completion:v15];
}

- (id)_createInitialViewController
{
  coordinator = [(STCommunicationSafetyOnboardingController *)self coordinator];
  viewModel = [coordinator viewModel];
  v5 = [viewModel me];

  if ([v5 hasPasscode] && !objc_msgSend(coordinator, "hasAlreadyEnteredPINForSession"))
  {
    _createPINController = [(STCommunicationSafetyOnboardingController *)self _createPINController];
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
    _createPINController = ;
  }

  v7 = _createPINController;

  return v7;
}

- (id)_createCommunicationSafetyEDUController
{
  v3 = +[STScreenTimeSettingsUIBundle bundle];
  v4 = [v3 localizedStringForKey:@"CommunicationSafetyEDUFeatureTitle" value:&stru_28766E5A8 table:0];
  v5 = [v3 localizedStringForKey:@"CommunicationSafetyEDUFeatureDetails" value:&stru_28766E5A8 table:0];
  v6 = [objc_alloc(MEMORY[0x277D37698]) initWithTitle:v4 detailText:v5 symbolName:@"bubble.left.and.exclamationmark.bubble.right.fill"];
  accessoryButton = [MEMORY[0x277D37638] accessoryButton];
  v8 = [v3 localizedStringForKey:@"CommunicationSafetyEDULearnMoreButton" value:&stru_28766E5A8 table:0];
  [accessoryButton setTitle:v8 forState:0];

  [accessoryButton addTarget:self action:sel__openLearnMore forControlEvents:0x2000];
  headerView = [v6 headerView];
  [headerView addAccessoryButton:accessoryButton];

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
  flow = [v7 flow];
  localizedButtonTitle = [flow localizedButtonTitle];

  [(STCommunicationSafetyOnboardingController *)self _addTrayButtonToWelcomeController:v6 localizationKey:@"CommunicationSafetyEDUShareWithApple" action:sel__shareAnalyticsSelected isBold:1];
  [(STCommunicationSafetyOnboardingController *)self _addTrayButtonToWelcomeController:v6 localizationKey:@"CommunicationSafetyEDUDontShare" action:sel__dontShareAnalyticsSelected isBold:0];
  if (localizedButtonTitle)
  {
    [(STCommunicationSafetyOnboardingController *)self _addAccessoryButtonToHeaderViewForWelcomeController:v6 title:localizedButtonTitle action:sel__openAboutAnalytics];
  }

  return v6;
}

- (void)_openLearnMore
{
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v2 = [MEMORY[0x277CBEBC0] URLWithString:@"https://support.apple.com/kb/HT212850"];
  [defaultWorkspace openURL:v2 withOptions:0];
}

- (void)_openAboutAnalytics
{
  v3 = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.improveCommSafety"];
  if (v3)
  {
    v5 = v3;
    navigationController = [(STCommunicationSafetyOnboardingController *)self navigationController];
    [v5 setPresentingViewController:navigationController];

    [v5 present];
    v3 = v5;
  }
}

- (void)_shareAnalyticsSelected
{
  [(STCommunicationSafetyOnboardingController *)self setIsAnalyticsEnabled:1];
  completionBlock = [(STCommunicationSafetyOnboardingController *)self completionBlock];
  if (completionBlock)
  {
    completionBlock[2](completionBlock, 0, [(STCommunicationSafetyOnboardingController *)self isFeatureEnabled], [(STCommunicationSafetyOnboardingController *)self isAnalyticsEnabled]);
  }

  navigationController = [(STCommunicationSafetyOnboardingController *)self navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];
}

- (void)_dontShareAnalyticsSelected
{
  [(STCommunicationSafetyOnboardingController *)self setIsAnalyticsEnabled:0];
  completionBlock = [(STCommunicationSafetyOnboardingController *)self completionBlock];
  if (completionBlock)
  {
    completionBlock[2](completionBlock, 0, [(STCommunicationSafetyOnboardingController *)self isFeatureEnabled], [(STCommunicationSafetyOnboardingController *)self isAnalyticsEnabled]);
  }

  navigationController = [(STCommunicationSafetyOnboardingController *)self navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];
}

- (void)_continueSelected
{
  [(STCommunicationSafetyOnboardingController *)self setIsFeatureEnabled:1];
  _createCommunicationSafetyAnalyticsEDUController = [(STCommunicationSafetyOnboardingController *)self _createCommunicationSafetyAnalyticsEDUController];
  navigationController = [(STCommunicationSafetyOnboardingController *)self navigationController];
  [navigationController pushViewController:_createCommunicationSafetyAnalyticsEDUController animated:1];
}

- (void)_notNowSelected
{
  [(STCommunicationSafetyOnboardingController *)self setIsFeatureEnabled:0];
  [(STCommunicationSafetyOnboardingController *)self setIsAnalyticsEnabled:0];
  completionBlock = [(STCommunicationSafetyOnboardingController *)self completionBlock];
  if (completionBlock)
  {
    completionBlock[2](completionBlock, 0, [(STCommunicationSafetyOnboardingController *)self isFeatureEnabled], [(STCommunicationSafetyOnboardingController *)self isAnalyticsEnabled]);
  }

  navigationController = [(STCommunicationSafetyOnboardingController *)self navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];
}

- (void)_addTrayButtonToWelcomeController:(id)controller localizationKey:(id)key action:(SEL)action isBold:(BOOL)bold
{
  keyCopy = key;
  controllerCopy = controller;
  v15 = +[STScreenTimeSettingsUIBundle bundle];
  if (bold)
  {
    [MEMORY[0x277D37618] boldButton];
  }

  else
  {
    [MEMORY[0x277D37650] linkButton];
  }
  v12 = ;
  v13 = [v15 localizedStringForKey:keyCopy value:&stru_28766E5A8 table:0];

  [v12 setTitle:v13 forState:0];
  [v12 addTarget:self action:action forControlEvents:0x2000];
  buttonTray = [controllerCopy buttonTray];

  [buttonTray addButton:v12];
}

- (void)_addAccessoryButtonToHeaderViewForWelcomeController:(id)controller title:(id)title action:(SEL)action
{
  v8 = MEMORY[0x277D37638];
  titleCopy = title;
  controllerCopy = controller;
  accessoryButton = [v8 accessoryButton];
  [accessoryButton setTitle:titleCopy forState:0];

  titleLabel = [accessoryButton titleLabel];
  [titleLabel setNumberOfLines:0];

  [accessoryButton addTarget:self action:action forControlEvents:64];
  headerView = [controllerCopy headerView];

  [headerView addAccessoryButton:accessoryButton];
}

- (BOOL)validatePIN:(id)n forPINController:(id)controller
{
  nCopy = n;
  coordinator = [(STCommunicationSafetyOnboardingController *)self coordinator];
  v7 = [coordinator validatePIN:nCopy];

  return v7;
}

- (void)didAcceptEnteredPIN
{
  v7[1] = *MEMORY[0x277D85DE8];
  coordinator = [(STCommunicationSafetyOnboardingController *)self coordinator];
  [coordinator setHasAlreadyEnteredPINForSession:1];

  if ([(STCommunicationSafetyOnboardingController *)self skipFeatureEnablement])
  {
    [(STCommunicationSafetyOnboardingController *)self _createCommunicationSafetyAnalyticsEDUController];
  }

  else
  {
    [(STCommunicationSafetyOnboardingController *)self _createCommunicationSafetyEDUController];
  }
  v4 = ;
  navigationController = [(STCommunicationSafetyOnboardingController *)self navigationController];
  v7[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [navigationController setViewControllers:v6 animated:1];
}

- (void)didCancelEnteringPIN
{
  [(STCommunicationSafetyOnboardingController *)self setIsFeatureEnabled:0];
  [(STCommunicationSafetyOnboardingController *)self setIsAnalyticsEnabled:0];
  completionBlock = [(STCommunicationSafetyOnboardingController *)self completionBlock];
  if (completionBlock)
  {
    completionBlock[2](completionBlock, 1, [(STCommunicationSafetyOnboardingController *)self isFeatureEnabled], [(STCommunicationSafetyOnboardingController *)self isAnalyticsEnabled]);
  }

  navigationController = [(STCommunicationSafetyOnboardingController *)self navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];
}

- (id)_createPINController
{
  v3 = objc_opt_new();
  [v3 setPinDelegate:self];
  [v3 setMode:3];

  return v3;
}

@end
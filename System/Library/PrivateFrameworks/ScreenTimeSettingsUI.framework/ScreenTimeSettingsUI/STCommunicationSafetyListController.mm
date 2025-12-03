@interface STCommunicationSafetyListController
- (BOOL)_hasAcknowledgedIntroScreens;
- (BOOL)_isAnyCommunicationSafetySettingEnabled;
- (BOOL)_isCommunicationSafetyAnalyticsEnabled;
- (STCommunicationSafetyListController)init;
- (id)_checkForUnsafePhotos:(id)photos;
- (id)_createCheckForUnsafePhotosSpecifier;
- (id)_createEnableAnalyticsGroupSpecifier;
- (id)_createEnableAnalyticsSpecifier;
- (id)_createUnsafePhotosGroupSpecifier;
- (id)_createViewChildSafetyResourcesGroupSpecifier;
- (id)_createViewChildSafetyResourcesSpecifier;
- (id)_getEnableAnalytics:(id)analytics;
- (id)specifiers;
- (void)_acknowledgeAnalyticsTip;
- (void)_acknowledgeIntroScreens;
- (void)_disableAnalyticsIfNeeded;
- (void)_openAboutAnalytics;
- (void)_openChildSafetyWebsite;
- (void)_persistSettings;
- (void)_setCheckForUnsafePhotos:(BOOL)photos;
- (void)_setCheckForUnsafePhotos:(id)photos specifier:(id)specifier;
- (void)_setEnableAnalytics:(BOOL)analytics;
- (void)_setEnableAnalytics:(id)analytics specifier:(id)specifier;
- (void)_showChildSafetyResources;
- (void)_showCommunicationSafetyCompatibilityAlertIfNeeded;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setCoordinator:(id)coordinator;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation STCommunicationSafetyListController

- (STCommunicationSafetyListController)init
{
  v6.receiver = self;
  v6.super_class = STCommunicationSafetyListController;
  v2 = [(STPINListViewController *)&v6 init];
  v3 = +[STScreenTimeSettingsUIBundle bundle];
  v4 = [v3 localizedStringForKey:@"CommunicationSafetyTitle" value:&stru_28766E5A8 table:0];
  [(STCommunicationSafetyListController *)v2 setTitle:v4];

  return v2;
}

- (void)dealloc
{
  [(STCommunicationSafetyListController *)self setCoordinator:0];
  v3.receiver = self;
  v3.super_class = STCommunicationSafetyListController;
  [(STListViewController *)&v3 dealloc];
}

- (void)viewDidAppear:(BOOL)appear
{
  v17[1] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = STCommunicationSafetyListController;
  [(STPINListViewController *)&v16 viewDidAppear:appear];
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.ScreenTime/COMMUNICATION_SAFETY"];
  v5 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = +[STScreenTimeSettingsUIBundle bundle];
  bundleURL = [v7 bundleURL];
  v9 = [v5 initWithKey:@"CommunicationSafetyTitle" table:@"Localizable" locale:currentLocale bundleURL:bundleURL];

  v10 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  v12 = +[STScreenTimeSettingsUIBundle bundle];
  bundleURL2 = [v12 bundleURL];
  v14 = [v10 initWithKey:@"ScreenTimeControllerTitle" table:@"Localizable" locale:currentLocale2 bundleURL:bundleURL2];

  v17[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  [(STCommunicationSafetyListController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.screen-time" title:v9 localizedNavigationComponents:v15 deepLink:v4];
}

- (void)setCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  coordinator = [(STPINListViewController *)self coordinator];
  [coordinator removeObserver:self forKeyPath:@"communicationSafetyCoordinator.viewModel.isCommunicationSafetySendingRestricted" context:"STCommunicationSafetyListControllerObservationContext"];
  [coordinator removeObserver:self forKeyPath:@"communicationSafetyCoordinator.viewModel.isCommunicationSafetyReceivingRestricted" context:"STCommunicationSafetyListControllerObservationContext"];
  [coordinator removeObserver:self forKeyPath:@"communicationSafetyCoordinator.viewModel.isCommunicationSafetyAnalyticsEnabled" context:"STCommunicationSafetyListControllerObservationContext"];
  v6.receiver = self;
  v6.super_class = STCommunicationSafetyListController;
  [(STPINListViewController *)&v6 setCoordinator:coordinatorCopy];
  [coordinatorCopy addObserver:self forKeyPath:@"communicationSafetyCoordinator.viewModel.isCommunicationSafetySendingRestricted" options:3 context:"STCommunicationSafetyListControllerObservationContext"];
  [coordinatorCopy addObserver:self forKeyPath:@"communicationSafetyCoordinator.viewModel.isCommunicationSafetyReceivingRestricted" options:3 context:"STCommunicationSafetyListControllerObservationContext"];
  [coordinatorCopy addObserver:self forKeyPath:@"communicationSafetyCoordinator.viewModel.isCommunicationSafetyAnalyticsEnabled" options:3 context:"STCommunicationSafetyListControllerObservationContext"];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == "STCommunicationSafetyListControllerObservationContext")
  {
    v11 = *MEMORY[0x277CCA300];
    changeCopy = change;
    v14 = [changeCopy objectForKeyedSubscript:v11];
    v13 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];

    LODWORD(changeCopy) = [v14 BOOLValue];
    if (changeCopy != [v13 BOOLValue])
    {
      [(STCommunicationSafetyListController *)self _disableAnalyticsIfNeeded];
      [(STCommunicationSafetyListController *)self reloadSpecifiers];
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = STCommunicationSafetyListController;
    changeCopy2 = change;
    [(STListViewController *)&v15 observeValueForKeyPath:path ofObject:object change:changeCopy2 context:context];
  }
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_opt_new();
    _createUnsafePhotosGroupSpecifier = [(STCommunicationSafetyListController *)self _createUnsafePhotosGroupSpecifier];
    [v5 addObject:_createUnsafePhotosGroupSpecifier];

    _createCheckForUnsafePhotosSpecifier = [(STCommunicationSafetyListController *)self _createCheckForUnsafePhotosSpecifier];
    [(STCommunicationSafetyListController *)self setCheckSpecifier:_createCheckForUnsafePhotosSpecifier];

    checkSpecifier = [(STCommunicationSafetyListController *)self checkSpecifier];
    [v5 addObject:checkSpecifier];

    _createViewChildSafetyResourcesGroupSpecifier = [(STCommunicationSafetyListController *)self _createViewChildSafetyResourcesGroupSpecifier];
    [v5 addObject:_createViewChildSafetyResourcesGroupSpecifier];

    _createViewChildSafetyResourcesSpecifier = [(STCommunicationSafetyListController *)self _createViewChildSafetyResourcesSpecifier];
    [v5 addObject:_createViewChildSafetyResourcesSpecifier];

    _createEnableAnalyticsGroupSpecifier = [(STCommunicationSafetyListController *)self _createEnableAnalyticsGroupSpecifier];
    [v5 addObject:_createEnableAnalyticsGroupSpecifier];

    _createEnableAnalyticsSpecifier = [(STCommunicationSafetyListController *)self _createEnableAnalyticsSpecifier];
    [(STCommunicationSafetyListController *)self setEnableAnalyticsSpecifier:_createEnableAnalyticsSpecifier];

    enableAnalyticsSpecifier = [(STCommunicationSafetyListController *)self enableAnalyticsSpecifier];
    [v5 addObject:enableAnalyticsSpecifier];

    [(STCommunicationSafetyListController *)self _disableAnalyticsIfNeeded];
    v14 = [v5 copy];
    v15 = *(&self->super.super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.super.isa + v3) = v14;

    v4 = *(&self->super.super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (id)_createUnsafePhotosGroupSpecifier
{
  v3 = +[STScreenTimeSettingsUIBundle bundle];
  v4 = MEMORY[0x277D3FAD8];
  v5 = [v3 localizedStringForKey:@"CommunicationSafetyEnableFeatureGroupSpecifierTitle" value:&stru_28766E5A8 table:0];
  v6 = [v4 groupSpecifierWithName:v5];

  v7 = [v3 localizedStringForKey:@"CommunicationSafetyEnableFeatureGroupSpecifierFooter" value:&stru_28766E5A8 table:0];
  v8 = +[STScreenTimeSettingsUIBundle bundle];
  v9 = [v8 localizedStringForKey:@"CommunicationSafetyLearnMoreFooterLink" value:&stru_28766E5A8 table:0];

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:v7, v9];
  [v6 setObject:v10 forKeyedSubscript:*MEMORY[0x277D3FF88]];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  [v6 setObject:v12 forKeyedSubscript:*MEMORY[0x277D3FF48]];

  v18.location = [v10 rangeOfString:v9];
  v13 = NSStringFromRange(v18);
  [v6 setObject:v13 forKeyedSubscript:*MEMORY[0x277D3FF58]];

  v14 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
  [v6 setObject:v14 forKeyedSubscript:*MEMORY[0x277D3FF68]];

  v15 = NSStringFromSelector(sel__openChildSafetyWebsite);
  [v6 setObject:v15 forKeyedSubscript:*MEMORY[0x277D3FF50]];

  return v6;
}

- (void)_openChildSafetyWebsite
{
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v2 = [MEMORY[0x277CBEBC0] URLWithString:@"https://support.apple.com/kb/HT212850"];
  [defaultWorkspace openURL:v2 withOptions:0];
}

- (id)_createCheckForUnsafePhotosSpecifier
{
  v3 = +[STScreenTimeSettingsUIBundle bundle];
  v4 = [v3 localizedStringForKey:@"CommunicationSafetyEnableFeatureSpecifierTitle" value:&stru_28766E5A8 table:0];

  v5 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v4 target:self set:sel__setCheckForUnsafePhotos_specifier_ get:sel__checkForUnsafePhotos_ detail:0 cell:6 edit:objc_opt_class()];
  [(STPINListViewController *)self setUpPasscodeAndLineWrapBehaviorForSpecifier:v5];
  [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:0x287675A48];
  coordinator = [(STPINListViewController *)self coordinator];
  communicationSafetyCoordinator = [coordinator communicationSafetyCoordinator];
  isCommunicationSafetySendingEditable = [communicationSafetyCoordinator isCommunicationSafetySendingEditable];

  if ((isCommunicationSafetySendingEditable & 1) == 0)
  {
    [v5 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D3FF38]];
  }

  return v5;
}

- (id)_createEnableAnalyticsSpecifier
{
  v3 = +[STScreenTimeSettingsUIBundle bundle];
  v4 = [v3 localizedStringForKey:@"CommunicationSafetyEnableAnalyticsSpecifierTitle" value:&stru_28766E5A8 table:0];

  v5 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v4 target:self set:sel__setEnableAnalytics_specifier_ get:sel__getEnableAnalytics_ detail:0 cell:6 edit:objc_opt_class()];
  [(STPINListViewController *)self setUpPasscodeAndLineWrapBehaviorForSpecifier:v5];
  [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:0x287675A48];

  return v5;
}

- (id)_createEnableAnalyticsGroupSpecifier
{
  v3 = +[STScreenTimeSettingsUIBundle bundle];
  v4 = MEMORY[0x277D3FAD8];
  v5 = [v3 localizedStringForKey:@"CommunicationSafetyAnalyticsGroupSpecifierTitle" value:&stru_28766E5A8 table:0];
  v6 = [v4 groupSpecifierWithName:v5];

  v7 = [v3 localizedStringForKey:@"CommunicationSafetyAnalyticsGroupSpecifierFooter" value:&stru_28766E5A8 table:0];
  v8 = [MEMORY[0x277D37670] linkWithBundleIdentifier:@"com.apple.onboarding.improveCommSafety"];
  v9 = v8;
  if (v8)
  {
    flow = [v8 flow];
    localizedButtonTitle = [flow localizedButtonTitle];

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:v7, localizedButtonTitle];
    [v6 setObject:v12 forKeyedSubscript:*MEMORY[0x277D3FF88]];
    v20.location = [v12 rangeOfString:localizedButtonTitle];
    v13 = NSStringFromRange(v20);
    [v6 setObject:v13 forKeyedSubscript:*MEMORY[0x277D3FF58]];

    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [v6 setObject:v15 forKeyedSubscript:*MEMORY[0x277D3FF48]];

    v16 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
    [v6 setObject:v16 forKeyedSubscript:*MEMORY[0x277D3FF68]];

    v17 = NSStringFromSelector(sel__openAboutAnalytics);
    [v6 setObject:v17 forKeyedSubscript:*MEMORY[0x277D3FF50]];
  }

  else
  {
    localizedButtonTitle = [MEMORY[0x277CCACA8] stringWithFormat:v7, &stru_28766E5A8];
    [v6 setObject:localizedButtonTitle forKeyedSubscript:*MEMORY[0x277D3FF88]];
  }

  return v6;
}

- (void)_openAboutAnalytics
{
  v3 = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.improveCommSafety"];
  if (v3)
  {
    v4 = v3;
    [v3 setPresentingViewController:self];
    [v4 present];
    v3 = v4;
  }
}

- (id)_createViewChildSafetyResourcesGroupSpecifier
{
  emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  v3 = +[STScreenTimeSettingsUIBundle bundle];
  v4 = [v3 localizedStringForKey:@"CommunicationSafetyViewResourcesGroupSpecifierFooter" value:&stru_28766E5A8 table:0];
  [emptyGroupSpecifier setObject:v4 forKeyedSubscript:*MEMORY[0x277D3FF88]];

  return emptyGroupSpecifier;
}

- (void)_disableAnalyticsIfNeeded
{
  coordinator = [(STPINListViewController *)self coordinator];
  communicationSafetyCoordinator = [coordinator communicationSafetyCoordinator];
  viewModel = [communicationSafetyCoordinator viewModel];

  if ([viewModel isCommunicationSafetySendingRestricted] && (objc_msgSend(viewModel, "isCommunicationSafetyReceivingRestricted") & 1) != 0)
  {
    enableAnalyticsSpecifier = [(STCommunicationSafetyListController *)self enableAnalyticsSpecifier];
    [enableAnalyticsSpecifier setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FF38]];
  }

  else
  {
    enableAnalyticsSpecifier2 = [(STCommunicationSafetyListController *)self enableAnalyticsSpecifier];
    [enableAnalyticsSpecifier2 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D3FF38]];

    [viewModel setIsCommunicationSafetyAnalyticsEnabled:0];
  }
}

- (id)_createViewChildSafetyResourcesSpecifier
{
  v3 = +[STScreenTimeSettingsUIBundle bundle];
  v4 = [v3 localizedStringForKey:@"CommunicationSafetyViewResourcesSpecifierTitle" value:&stru_28766E5A8 table:0];

  coordinator = [(STPINListViewController *)self coordinator];
  viewModel = [coordinator viewModel];
  v7 = [viewModel me];
  if ([v7 isRemoteUser])
  {
    v8 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v4 target:self set:0 get:0 detail:0 cell:13 edit:0];
    [v8 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FD80]];
  }

  else
  {
    v8 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v4 target:self set:0 get:0 detail:0 cell:13 edit:objc_opt_class()];
    [(STPINListViewController *)self setUpPasscodeAndLineWrapBehaviorForSpecifier:v8];
  }

  [v8 setButtonAction:sel__showChildSafetyResources];

  return v8;
}

- (void)_showChildSafetyResources
{
  v38[4] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  nonPersistentDataStore = [MEMORY[0x277CE3868] nonPersistentDataStore];
  v37 = v3;
  [v3 setWebsiteDataStore:nonPersistentDataStore];

  v5 = [[STActivityIndicatingWebView alloc] initWithConfiguration:v3];
  v6 = objc_alloc(MEMORY[0x277CCAD20]);
  resourcesURL = [objc_opt_class() resourcesURL];
  v36 = [v6 initWithURL:resourcesURL];

  v8 = [(STActivityIndicatingWebView *)v5 loadRequest:v36];
  v9 = objc_opt_new();
  v10 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel__dismissChildSafetyResourcesView_];
  navigationItem = [v9 navigationItem];
  [navigationItem setRightBarButtonItem:v10];

  [v9 setEdgesForExtendedLayout:0];
  [(STActivityIndicatingWebView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  view = [v9 view];
  [view addSubview:v5];

  v27 = MEMORY[0x277CCAAD0];
  leadingAnchor = [(STActivityIndicatingWebView *)v5 leadingAnchor];
  view2 = [v9 view];
  leadingAnchor2 = [view2 leadingAnchor];
  v31 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v38[0] = v31;
  topAnchor = [(STActivityIndicatingWebView *)v5 topAnchor];
  view3 = [v9 view];
  topAnchor2 = [view3 topAnchor];
  v26 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v38[1] = v26;
  trailingAnchor = [(STActivityIndicatingWebView *)v5 trailingAnchor];
  view4 = [v9 view];
  trailingAnchor2 = [view4 trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v38[2] = v15;
  bottomAnchor = [(STActivityIndicatingWebView *)v5 bottomAnchor];
  view5 = [v9 view];
  bottomAnchor2 = [view5 bottomAnchor];
  v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v38[3] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:4];
  [v27 activateConstraints:v20];

  view6 = [v9 view];
  [(STActivityIndicatingWebView *)v5 hostActivityIndicatorInView:view6];

  v22 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v9];
  [v22 setModalPresentationStyle:2];
  v23 = objc_opt_new();
  [v23 configureWithOpaqueBackground];
  navigationBar = [v22 navigationBar];
  [navigationBar setScrollEdgeAppearance:v23];

  [(STCommunicationSafetyListController *)self presentViewController:v22 animated:1 completion:0];
}

- (void)_setCheckForUnsafePhotos:(id)photos specifier:(id)specifier
{
  specifierCopy = specifier;
  bOOLValue = [photos BOOLValue];
  coordinator = [(STPINListViewController *)self coordinator];
  viewModel = [coordinator viewModel];
  v10 = [viewModel me];
  if (![v10 hasPasscode])
  {

    goto LABEL_5;
  }

  hasAlreadyEnteredPINForSession = [coordinator hasAlreadyEnteredPINForSession];

  if (hasAlreadyEnteredPINForSession)
  {
LABEL_5:
    [(STCommunicationSafetyListController *)self _setCheckForUnsafePhotos:bOOLValue];
    goto LABEL_6;
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__STCommunicationSafetyListController__setCheckForUnsafePhotos_specifier___block_invoke;
  v12[3] = &unk_279B7CF48;
  v12[4] = self;
  v14 = bOOLValue;
  v13 = specifierCopy;
  [(STPINListViewController *)self showPINSheet:v13 completion:v12];

LABEL_6:
}

uint64_t __74__STCommunicationSafetyListController__setCheckForUnsafePhotos_specifier___block_invoke(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    return [v3 _setCheckForUnsafePhotos:*(a1 + 48)];
  }

  else
  {
    return [v3 reloadSpecifier:*(a1 + 40) animated:1];
  }
}

- (void)_setCheckForUnsafePhotos:(BOOL)photos
{
  photosCopy = photos;
  v5 = +[STUILog communicationSafety];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [STCommunicationSafetyListController _setCheckForUnsafePhotos:photosCopy];
  }

  coordinator = [(STPINListViewController *)self coordinator];
  communicationSafetyCoordinator = [coordinator communicationSafetyCoordinator];
  viewModel = [communicationSafetyCoordinator viewModel];

  [viewModel setIsCommunicationSafetySendingRestricted:photosCopy];
  [viewModel setIsCommunicationSafetyReceivingRestricted:photosCopy];
  if (photosCopy)
  {
    [(STCommunicationSafetyListController *)self _disableAnalyticsIfNeeded];
    [(STCommunicationSafetyListController *)self _persistSettings];
    [(STCommunicationSafetyListController *)self _showCommunicationSafetyCompatibilityAlertIfNeeded];
  }

  else
  {
    [viewModel setIsCommunicationSafetyNotificationEnabled:0];
    [(STCommunicationSafetyListController *)self _disableAnalyticsIfNeeded];
    [(STCommunicationSafetyListController *)self _persistSettings];
  }

  enableAnalyticsSpecifier = [(STCommunicationSafetyListController *)self enableAnalyticsSpecifier];
  [(STCommunicationSafetyListController *)self reloadSpecifier:enableAnalyticsSpecifier animated:1];
}

- (id)_checkForUnsafePhotos:(id)photos
{
  v3 = MEMORY[0x277CCABB0];
  coordinator = [(STPINListViewController *)self coordinator];
  communicationSafetyCoordinator = [coordinator communicationSafetyCoordinator];
  viewModel = [communicationSafetyCoordinator viewModel];
  v7 = [v3 numberWithBool:{objc_msgSend(viewModel, "isCommunicationSafetySendingRestricted")}];

  v8 = +[STUILog communicationSafety];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [STCommunicationSafetyListController _checkForUnsafePhotos:];
  }

  return v7;
}

- (void)_setEnableAnalytics:(id)analytics specifier:(id)specifier
{
  specifierCopy = specifier;
  bOOLValue = [analytics BOOLValue];
  coordinator = [(STPINListViewController *)self coordinator];
  viewModel = [coordinator viewModel];
  v10 = [viewModel me];
  if (![v10 hasPasscode])
  {

    goto LABEL_5;
  }

  hasAlreadyEnteredPINForSession = [coordinator hasAlreadyEnteredPINForSession];

  if (hasAlreadyEnteredPINForSession)
  {
LABEL_5:
    [(STCommunicationSafetyListController *)self _setEnableAnalytics:bOOLValue];
    goto LABEL_6;
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__STCommunicationSafetyListController__setEnableAnalytics_specifier___block_invoke;
  v12[3] = &unk_279B7CF48;
  v12[4] = self;
  v14 = bOOLValue;
  v13 = specifierCopy;
  [(STPINListViewController *)self showPINSheet:v13 completion:v12];

LABEL_6:
}

uint64_t __69__STCommunicationSafetyListController__setEnableAnalytics_specifier___block_invoke(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    return [v3 _setEnableAnalytics:*(a1 + 48)];
  }

  else
  {
    return [v3 reloadSpecifier:*(a1 + 40) animated:1];
  }
}

- (void)_setEnableAnalytics:(BOOL)analytics
{
  analyticsCopy = analytics;
  v5 = +[STUILog communicationSafety];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [STCommunicationSafetyListController _setEnableAnalytics:analyticsCopy];
  }

  coordinator = [(STPINListViewController *)self coordinator];
  communicationSafetyCoordinator = [coordinator communicationSafetyCoordinator];
  viewModel = [communicationSafetyCoordinator viewModel];

  [viewModel setIsCommunicationSafetyAnalyticsEnabled:analyticsCopy];
  [(STCommunicationSafetyListController *)self _persistSettings];
  if (analyticsCopy)
  {
    [(STCommunicationSafetyListController *)self _acknowledgeAnalyticsTip];
  }
}

- (id)_getEnableAnalytics:(id)analytics
{
  v3 = MEMORY[0x277CCABB0];
  coordinator = [(STPINListViewController *)self coordinator];
  communicationSafetyCoordinator = [coordinator communicationSafetyCoordinator];
  viewModel = [communicationSafetyCoordinator viewModel];
  v7 = [v3 numberWithBool:{objc_msgSend(viewModel, "isCommunicationSafetyAnalyticsEnabled")}];

  v8 = +[STUILog communicationSafety];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [STCommunicationSafetyListController _getEnableAnalytics:];
  }

  return v7;
}

- (void)_persistSettings
{
  coordinator = [(STPINListViewController *)self coordinator];
  communicationSafetyCoordinator = [coordinator communicationSafetyCoordinator];
  [communicationSafetyCoordinator persistCommunicationSafetySettingsWithCompletionHandler:&__block_literal_global_5];
}

void __55__STCommunicationSafetyListController__persistSettings__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = +[STUILog communicationSafety];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __55__STCommunicationSafetyListController__persistSettings__block_invoke_cold_1();
    }
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v15.receiver = self;
  v15.super_class = STCommunicationSafetyListController;
  [(STCommunicationSafetyListController *)&v15 viewWillAppear:appear];
  if ([(STCommunicationSafetyListController *)self _isAnyCommunicationSafetySettingEnabled])
  {
    [(STCommunicationSafetyListController *)self _acknowledgeIntroScreens];
  }

  if (![(STCommunicationSafetyListController *)self _hasAcknowledgedIntroScreens])
  {
    v4 = [STCommunicationSafetyOnboardingController alloc];
    coordinator = [(STPINListViewController *)self coordinator];
    v6 = [(STCommunicationSafetyOnboardingController *)v4 initWithCoordinator:coordinator];
    [(STCommunicationSafetyListController *)self setOnboardingController:v6];

    objc_initWeak(location, self);
    onboardingController = [(STCommunicationSafetyListController *)self onboardingController];
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __54__STCommunicationSafetyListController_viewWillAppear___block_invoke;
    v11 = &unk_279B7D1F8;
    objc_copyWeak(&v13, location);
    selfCopy = self;
    [onboardingController presentOverViewController:self skipFeatureEnablement:0 completionBlock:&v8];

    objc_destroyWeak(&v13);
    objc_destroyWeak(location);
  }

  if ([(STCommunicationSafetyListController *)self _isCommunicationSafetyAnalyticsEnabled:v8])
  {
    [(STCommunicationSafetyListController *)self _acknowledgeAnalyticsTip];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(location[0]) = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STCommunicationSafetyListController.viewWillAppear", location, 2u);
  }
}

void __54__STCommunicationSafetyListController_viewWillAppear___block_invoke(uint64_t a1, int a2, int a3, uint64_t a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v13 = WeakRetained;
    if (a2 || ([WeakRetained _acknowledgeIntroScreens], !a3))
    {
      v11 = [*(a1 + 32) navigationController];
      v12 = [v11 popViewControllerAnimated:1];
    }

    else
    {
      [v13 _acknowledgeAnalyticsTip];
      v9 = [v13 coordinator];
      v10 = [v9 communicationSafetyCoordinator];
      v11 = [v10 viewModel];

      [v11 setIsCommunicationSafetySendingRestricted:1];
      [v11 setIsCommunicationSafetyReceivingRestricted:1];
      [v11 setIsCommunicationSafetyAnalyticsEnabled:a4];
      [v13 _persistSettings];
    }

    WeakRetained = v13;
  }
}

- (BOOL)_isAnyCommunicationSafetySettingEnabled
{
  coordinator = [(STPINListViewController *)self coordinator];
  communicationSafetyCoordinator = [coordinator communicationSafetyCoordinator];
  viewModel = [communicationSafetyCoordinator viewModel];

  if ([viewModel isCommunicationSafetySendingRestricted] & 1) != 0 || (objc_msgSend(viewModel, "isCommunicationSafetyReceivingRestricted") & 1) != 0 || (objc_msgSend(viewModel, "isCommunicationSafetyNotificationEnabled"))
  {
    isCommunicationSafetyAnalyticsEnabled = 1;
  }

  else
  {
    isCommunicationSafetyAnalyticsEnabled = [viewModel isCommunicationSafetyAnalyticsEnabled];
  }

  return isCommunicationSafetyAnalyticsEnabled;
}

- (BOOL)_hasAcknowledgedIntroScreens
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"ScreenTimeCommunicationSafetyIntroAcknowledged"];

  return v3;
}

- (void)_acknowledgeIntroScreens
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults setBool:1 forKey:@"ScreenTimeCommunicationSafetyIntroAcknowledged"];
}

- (BOOL)_isCommunicationSafetyAnalyticsEnabled
{
  coordinator = [(STPINListViewController *)self coordinator];
  communicationSafetyCoordinator = [coordinator communicationSafetyCoordinator];
  viewModel = [communicationSafetyCoordinator viewModel];

  LOBYTE(coordinator) = [viewModel isCommunicationSafetyAnalyticsEnabled];
  return coordinator;
}

- (void)_showCommunicationSafetyCompatibilityAlertIfNeeded
{
  coordinator = [(STPINListViewController *)self coordinator];
  viewModel = [coordinator viewModel];
  v5 = [viewModel me];
  if ([viewModel shouldShowCompatibilityAlerts])
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v7 = [standardUserDefaults objectForKey:@"HasShownCommunicationSafetyCompatibilityAlertByDSID"];

    dsid = [v5 dsid];
    stringValue = [dsid stringValue];
    v10 = [v7 objectForKeyedSubscript:stringValue];
    bOOLValue = [v10 BOOLValue];

    if ((bOOLValue & 1) == 0)
    {
      v12 = +[STScreenTimeSettingsUIBundle bundle];
      if ([v5 isRemoteUser])
      {
        givenName = [v5 givenName];
        if (givenName)
        {
          v23 = [v12 localizedStringForKey:@"UpdateChildDevicesAlertTitleFormat" value:&stru_28766E5A8 table:0];
          currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
          v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v23 locale:currentLocale, givenName];
          v16 = [v12 localizedStringForKey:@"CommunicationSafetyChildCompatibilityAlertMessageFormat" value:&stru_28766E5A8 table:0];
          v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v16 locale:currentLocale, givenName];

LABEL_9:
          v20 = [MEMORY[0x277D75110] alertControllerWithTitle:v15 message:v17 preferredStyle:1];
          v21 = [v12 localizedStringForKey:@"ConfirmationButtonOK" value:&stru_28766E5A8 table:0];
          v22 = [MEMORY[0x277D750F8] actionWithTitle:v21 style:0 handler:0];
          [v20 addAction:v22];
          [v20 setPreferredAction:v22];
          v24[0] = MEMORY[0x277D85DD0];
          v24[1] = 3221225472;
          v24[2] = __89__STCommunicationSafetyListController__showCommunicationSafetyCompatibilityAlertIfNeeded__block_invoke;
          v24[3] = &unk_279B7C998;
          v25 = v5;
          [(STCommunicationSafetyListController *)self presentViewController:v20 animated:1 completion:v24];

          goto LABEL_10;
        }

        v15 = [v12 localizedStringForKey:@"UpdateChildDevicesAlertTitle" value:&stru_28766E5A8 table:0];
        v19 = @"CommunicationSafetyChildCompatibilityAlertMessage";
        v18 = v12;
      }

      else
      {
        v15 = [v12 localizedStringForKey:@"UpdateOtherDevicesAlertTitle" value:&stru_28766E5A8 table:0];
        givenName = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"CommunicationSafetyCompatibilityAlertMessage"];
        v18 = v12;
        v19 = givenName;
      }

      v17 = [v18 localizedStringForKey:v19 value:&stru_28766E5A8 table:0];
      goto LABEL_9;
    }
  }

LABEL_10:
}

void __89__STCommunicationSafetyListController__showCommunicationSafetyCompatibilityAlertIfNeeded__block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 objectForKey:@"HasShownCommunicationSafetyCompatibilityAlertByDSID"];
  v4 = [*(a1 + 32) dsid];
  v5 = [v4 stringValue];

  if (v3)
  {
    v6 = [v3 mutableCopy];
    [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v5];
  }

  else
  {
    v7 = v5;
    v8[0] = MEMORY[0x277CBEC38];
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  }

  [v2 setObject:v6 forKey:@"HasShownCommunicationSafetyCompatibilityAlertByDSID"];
}

- (void)_acknowledgeAnalyticsTip
{
  coordinator = [(STPINListViewController *)self coordinator];
  viewModel = [coordinator viewModel];

  v3 = [viewModel me];
  dsid = [v3 dsid];
  stringValue = [dsid stringValue];

  [STCommunicationSafetyAnalyticsTipCell acknowledgeTipViewForDSID:stringValue];
}

- (void)_setCheckForUnsafePhotos:(char)a1 .cold.1(char a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithBool:a1 & 1];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0(&dword_264BA2000, v2, v3, "Setting 'communication safety sending restricted' and 'communication safety receiving restricted' flags on viewmodel: %@", v4, v5, v6, v7, v8);
}

- (void)_checkForUnsafePhotos:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_264BA2000, v0, OS_LOG_TYPE_DEBUG, "Fetching 'communication safety sending restricted' flag from viewmodel: %@", v1, 0xCu);
}

- (void)_setEnableAnalytics:(char)a1 .cold.1(char a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithBool:a1 & 1];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0(&dword_264BA2000, v2, v3, "Setting Improve Communication Safety on viewmodel: %@", v4, v5, v6, v7, v8);
}

- (void)_getEnableAnalytics:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_264BA2000, v0, OS_LOG_TYPE_DEBUG, "Fetching Improve Communication Safety Analytics state: %@", v1, 0xCu);
}

void __55__STCommunicationSafetyListController__persistSettings__block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_264BA2000, v0, OS_LOG_TYPE_ERROR, "Could not save Communication Safety settings: %{public}@", v1, 0xCu);
}

@end
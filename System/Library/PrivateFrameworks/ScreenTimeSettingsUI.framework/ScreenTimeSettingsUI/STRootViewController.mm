@interface STRootViewController
- (STRootViewController)initWithRootViewModelCoordinator:(id)coordinator presentedAsModal:(BOOL)modal;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_startObservingCoordinator;
- (void)_stopObservingCoordinator;
- (void)_toggleNewUsageAction:(id)action;
- (void)dealloc;
- (void)doneButtonAction:(id)action;
- (void)handleURL:(id)l withCompletion:(id)completion;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setShouldRefreshUsageData:(BOOL)data;
- (void)setSpecifier:(id)specifier;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation STRootViewController

- (STRootViewController)initWithRootViewModelCoordinator:(id)coordinator presentedAsModal:(BOOL)modal
{
  v48[17] = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  if (!coordinatorCopy)
  {
    v7 = +[STUsageDetailsViewModelCoordinator defaultDeviceIdentifierForLocalUser];
    v8 = +[STUsageDetailsViewModelCoordinator defaultUsageReportTypeForLocalUser];
    coordinatorCopy = [[STRootViewModelCoordinator alloc] initWithUserDSID:0 deviceIdentifier:v7 usageReportType:v8 usageContext:0];
    if (!coordinatorCopy)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[STRootViewController initWithRootViewModelCoordinator:presentedAsModal:]"];
      [currentHandler handleFailureInFunction:v10 file:@"STRootViewController.m" lineNumber:77 description:@"RootViewModelCoordinator could not be created. This is a fatal error for ScreenTime."];
    }
  }

  v46.receiver = self;
  v46.super_class = STRootViewController;
  v11 = [(STPINListViewController *)&v46 initWithRootViewModelCoordinator:coordinatorCopy];
  if (v11)
  {
    v12 = +[STScreenTimeSettingsUIBundle bundle];
    v13 = [v12 localizedStringForKey:@"ScreenTimeControllerTitle" value:&stru_28766E5A8 table:0];
    [(STRootViewController *)v11 setTitle:v13];

    v11->_presentedAsModal = modal;
    v14 = [STEnableScreenTimeGroupSpecifierProvider providerWithCoordinator:coordinatorCopy rootViewController:v11];
    enableScreenTimeGroupSpecifierProvider = v11->_enableScreenTimeGroupSpecifierProvider;
    v11->_enableScreenTimeGroupSpecifierProvider = v14;

    v16 = [(STRootGroupSpecifierProvider *)STScreenTimeGroupSpecifierProvider providerWithCoordinator:coordinatorCopy];
    screenTimeGroupSpecifierProvider = v11->_screenTimeGroupSpecifierProvider;
    v11->_screenTimeGroupSpecifierProvider = v16;

    v18 = [(STRootGroupSpecifierProvider *)STNoUsageReportedGroupSpecifierProvider providerWithCoordinator:coordinatorCopy];
    noUsageReportedGroupSpecifierProvider = v11->_noUsageReportedGroupSpecifierProvider;
    v11->_noUsageReportedGroupSpecifierProvider = v18;

    v45 = objc_opt_new();
    v44 = [(STRootGroupSpecifierProvider *)STAboutScreenTimeGroupSpecifierProvider providerWithCoordinator:coordinatorCopy];
    v48[0] = v44;
    v48[1] = v11->_enableScreenTimeGroupSpecifierProvider;
    v43 = [STEnableRemoteManagementGroupSpecifierProvider providerWithCoordinator:coordinatorCopy rootViewController:v11];
    v48[2] = v43;
    v48[3] = v11->_screenTimeGroupSpecifierProvider;
    v42 = [(STRootGroupSpecifierProvider *)STUsageSharingGroupSpecifierProvider providerWithCoordinator:coordinatorCopy];
    v48[4] = v42;
    v41 = [STAppRatingChangedGroupSpecifierProvider providerWithCoordinator:coordinatorCopy rootViewController:v11];
    v48[5] = v41;
    v40 = [STCommunicationSafetyAnalyticsTipGroupSpecifierProvider providerWithCoordinator:coordinatorCopy rootViewController:v11];
    v48[6] = v40;
    v39 = [(STRootGroupSpecifierProvider *)STAskForTimeGroupSpecifierProvider providerWithCoordinator:coordinatorCopy];
    v48[7] = v39;
    v38 = [(STRootGroupSpecifierProvider *)STManageContactsGroupSpecifierProvider providerWithCoordinator:coordinatorCopy];
    v48[8] = v38;
    v48[9] = v11->_noUsageReportedGroupSpecifierProvider;
    v20 = [STLimitUsageGroupSpecifierProvider providerWithCoordinator:coordinatorCopy rootViewController:v11];
    v48[10] = v20;
    v21 = [(STRootGroupSpecifierProvider *)STCommunicationGroupSpecifierProvider providerWithCoordinator:coordinatorCopy];
    v48[11] = v21;
    v22 = [(STRootGroupSpecifierProvider *)STRestrictionsGroupSpecifierProvider providerWithCoordinator:coordinatorCopy];
    v48[12] = v22;
    v23 = [(STRootGroupSpecifierProvider *)STRestrictingApplicationsGroupSpecifierProvider providerWithCoordinator:coordinatorCopy];
    v48[13] = v23;
    v24 = [STIncludeWebsiteDataGroupSpecifierProvider providerWithCoordinator:coordinatorCopy isRootView:1];
    v48[14] = v24;
    v25 = [STFamilyMemberGroupSpecifierProvider providerWithCoordinator:coordinatorCopy rootViewController:v11];
    v48[15] = v25;
    v26 = [STPasscodeGroupSpecifierProvider providerWithCoordinator:coordinatorCopy listController:v11 isRootView:1];
    v48[16] = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:17];
    [v45 addObjectsFromArray:v27];

    v28 = [(STRootGroupSpecifierProvider *)STSignInToiCloudGroupSpecifierProvider providerWithCoordinator:coordinatorCopy];
    if ([(STRootViewModelCoordinator *)coordinatorCopy shouldShowConnectToFamilyForSignIn])
    {
      [v45 insertObject:v28 atIndex:1];
    }

    else
    {
      [v45 addObject:v28];
    }

    if (_os_feature_enabled_impl())
    {
      v29 = [STAgeMigrationTipGroupSpecifierProvider providerWithCoordinator:coordinatorCopy rootViewController:v11];
      [v45 addObject:v29];
    }

    v30 = [(STRootGroupSpecifierProvider *)STCloudSyncDataGroupSpecifierProvider providerWithCoordinator:coordinatorCopy];
    v47[0] = v30;
    v31 = [STSetUpForFamilyGroupSpecifierProvider providerWithCoordinator:coordinatorCopy presenter:v11];
    v47[1] = v31;
    v32 = [STDisableAppAndWebsiteActivityGroupSpecifierProvider providerWithCoordinator:coordinatorCopy isRootView:1];
    v47[2] = v32;
    v33 = [(STRootGroupSpecifierProvider *)STDisableScreenTimeGroupSpecifierProvider providerWithCoordinator:coordinatorCopy];
    v47[3] = v33;
    v34 = [STStopSharingScreenTimeGroupSpecifierProvider providerWithCoordinator:coordinatorCopy isRootView:1];
    v47[4] = v34;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:5];
    [v45 addObjectsFromArray:v35];

    v36 = [v45 copy];
    [(STListViewController *)v11 setSpecifierProviders:v36];

    [(STRootViewController *)v11 _startObservingCoordinator];
  }

  return v11;
}

- (void)dealloc
{
  [(STRootViewController *)self _stopObservingCoordinator];
  v3.receiver = self;
  v3.super_class = STRootViewController;
  [(STListViewController *)&v3 dealloc];
}

- (void)setSpecifier:(id)specifier
{
  v24 = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  v22.receiver = self;
  v22.super_class = STRootViewController;
  [(STRootViewController *)&v22 setSpecifier:specifierCopy];
  userInfo = [specifierCopy userInfo];
  v6 = userInfo;
  if (userInfo)
  {
    name = [userInfo name];
    [(STRootViewController *)self setTitle:name];

    dsid = [v6 dsid];
    v9 = [STUsageDetailsViewModelCoordinator defaultDeviceIdentifierForChild:dsid];
    v10 = [STUsageDetailsViewModelCoordinator defaultUsageReportTypeForChild:dsid];
    coordinator = [(STPINListViewController *)self coordinator];
    v12 = [coordinator coordinatorForChild:v6 deviceIdentifier:v9 usageReportType:v10];

    [(STRootViewController *)self _stopObservingCoordinator];
    [(STPINListViewController *)self setCoordinator:v12];
    [(STRootViewController *)self _startObservingCoordinator];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    specifierProviders = [(STListViewController *)self specifierProviders];
    v14 = [specifierProviders countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v19;
      do
      {
        v17 = 0;
        do
        {
          if (*v19 != v16)
          {
            objc_enumerationMutation(specifierProviders);
          }

          [*(*(&v18 + 1) + 8 * v17++) setCoordinator:v12];
        }

        while (v15 != v17);
        v15 = [specifierProviders countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v15);
    }
  }
}

- (void)_stopObservingCoordinator
{
  coordinator = [(STPINListViewController *)self coordinator];
  [coordinator removeObserver:self forKeyPath:@"usageDetailsCoordinator" context:"STRootViewControllerObservationContext"];
}

- (void)_startObservingCoordinator
{
  coordinator = [(STPINListViewController *)self coordinator];
  [(STPINListViewController *)self coordinator];

  [coordinator addObserver:self forKeyPath:@"usageDetailsCoordinator" options:2 context:"STRootViewControllerObservationContext"];
}

- (void)setShouldRefreshUsageData:(BOOL)data
{
  if (self->_shouldRefreshUsageData != data)
  {
    dataCopy = data;
    self->_shouldRefreshUsageData = data;
    coordinator = [(STPINListViewController *)self coordinator];
    usageDetailsCoordinator = [coordinator usageDetailsCoordinator];
    v6 = usageDetailsCoordinator;
    if (dataCopy)
    {
      [usageDetailsCoordinator startRefreshingUsageData];
    }

    else
    {
      [usageDetailsCoordinator stopRefreshingUsageData];
    }
  }
}

- (void)viewDidLoad
{
  v11[1] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = STRootViewController;
  [(STRootViewController *)&v9 viewDidLoad];
  if ([(STRootViewController *)self presentedAsModal])
  {
    v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_doneButtonAction_];
    v11[0] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    navigationItem = [(STRootViewController *)self navigationItem];
    [navigationItem setRightBarButtonItems:v4];
  }

  else
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v7 = [standardUserDefaults BOOLForKey:@"NewUsageToggle"];

    if (!v7)
    {
      return;
    }

    v3 = [MEMORY[0x277D755B8] systemImageNamed:@"ant"];
    v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithImage:v3 style:0 target:self action:sel__toggleNewUsageAction_];
    v10 = v4;
    navigationItem = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
    navigationItem2 = [(STRootViewController *)self navigationItem];
    [navigationItem2 setRightBarButtonItems:navigationItem];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = STRootViewController;
  [(STPINListViewController *)&v10 viewDidAppear:appear];
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.ScreenTime"];
  v5 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = +[STScreenTimeSettingsUIBundle bundle];
  bundleURL = [v7 bundleURL];
  v9 = [v5 initWithKey:@"ScreenTimeControllerTitle" table:@"Localizable" locale:currentLocale bundleURL:bundleURL];

  [(STRootViewController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.screen-time" title:v9 localizedNavigationComponents:MEMORY[0x277CBEBF8] deepLink:v4];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = STRootViewController;
  [(STRootViewController *)&v6 viewWillAppear:appear];
  [(STRootViewController *)self setShouldRefreshUsageData:1];
  coordinator = [(STPINListViewController *)self coordinator];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STRootViewController.viewWillAppear", v5, 2u);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = STRootViewController;
  [(STRootViewController *)&v5 viewWillDisappear:disappear];
  [(STRootViewController *)self setShouldRefreshUsageData:0];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STRootViewController.viewWillDisappear", v4, 2u);
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  if (context == "STRootViewControllerObservationContext")
  {
    pathCopy = path;
    [(STPINListViewController *)self coordinator];

    v13 = [pathCopy isEqualToString:@"usageDetailsCoordinator"];
    if (v13 && [(STRootViewController *)self shouldRefreshUsageData])
    {
      v14 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA300]];
      coordinator = [(STPINListViewController *)self coordinator];
      usageDetailsCoordinator = [coordinator usageDetailsCoordinator];

      null = [MEMORY[0x277CBEB68] null];
      v18 = [null isEqual:v14];

      if ((v18 & 1) == 0)
      {
        [v14 stopRefreshingUsageData];
      }

      null2 = [MEMORY[0x277CBEB68] null];
      v20 = [null2 isEqual:usageDetailsCoordinator];

      if ((v20 & 1) == 0)
      {
        [usageDetailsCoordinator startRefreshingUsageData];
      }
    }
  }

  else
  {
    v21.receiver = self;
    v21.super_class = STRootViewController;
    pathCopy2 = path;
    [(STListViewController *)&v21 observeValueForKeyPath:pathCopy2 ofObject:object change:changeCopy context:context];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v28.receiver = self;
  v28.super_class = STRootViewController;
  v5 = [(STListViewController *)&v28 tableView:view cellForRowAtIndexPath:path];
  noUsageReportedGroupSpecifierProvider = [(STRootViewController *)self noUsageReportedGroupSpecifierProvider];
  specifiers = [noUsageReportedGroupSpecifierProvider specifiers];
  firstObject = [specifiers firstObject];

  v9 = [firstObject objectForKeyedSubscript:*MEMORY[0x277D40148]];
  if ([v5 isEqual:v9])
  {
    v10 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.circle"];
    systemRedColor = [MEMORY[0x277D75348] systemRedColor];
    v12 = [v10 imageWithTintColor:systemRedColor];

    v13 = [MEMORY[0x277D755D0] configurationWithScale:3];
    v14 = [v12 imageByApplyingSymbolConfiguration:v13];

    v15 = [MEMORY[0x277D74270] textAttachmentWithImage:v14];
    v16 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v15];
    v17 = objc_alloc(MEMORY[0x277CCAB48]);
    v18 = [firstObject objectForKeyedSubscript:*MEMORY[0x277D40160]];
    v19 = [@" " stringByAppendingString:v18];
    v20 = [v17 initWithString:v19];

    [v20 insertAttributedString:v16 atIndex:0];
    cellConfiguration = [MEMORY[0x277D756E0] cellConfiguration];
    [cellConfiguration setAttributedText:v20];
    textProperties = [cellConfiguration textProperties];
    [textProperties setNumberOfLines:0];

    textProperties2 = [cellConfiguration textProperties];
    [textProperties2 setLineBreakMode:0];

    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    textProperties3 = [cellConfiguration textProperties];
    [textProperties3 setColor:secondaryLabelColor];

    [v5 setContentConfiguration:cellConfiguration];
  }

  if ([v5 type] == 13 || objc_msgSend(v5, "type") == 6)
  {
    titleLabel = [v5 titleLabel];
    [titleLabel setNumberOfLines:0];
    [titleLabel setLineBreakMode:0];
  }

  return v5;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  noUsageReportedGroupSpecifierProvider = [(STRootViewController *)self noUsageReportedGroupSpecifierProvider];
  specifiers = [noUsageReportedGroupSpecifierProvider specifiers];
  firstObject = [specifiers firstObject];

  if (firstObject && (-[STRootViewController specifierAtIndexPath:](self, "specifierAtIndexPath:", pathCopy), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 isEqual:firstObject], v11, v12))
  {
    v13 = *MEMORY[0x277D76F30];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = STRootViewController;
    [(STRootViewController *)&v16 tableView:viewCopy heightForRowAtIndexPath:pathCopy];
    v13 = v14;
  }

  return v13;
}

- (void)handleURL:(id)l withCompletion:(id)completion
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__STRootViewController_handleURL_withCompletion___block_invoke;
  v9[3] = &unk_279B7DE58;
  v9[4] = self;
  completionCopy = completion;
  lCopy = l;
  [lCopy enumerateKeysAndObjectsUsingBlock:v9];
  v8.receiver = self;
  v8.super_class = STRootViewController;
  [(STRootViewController *)&v8 handleURL:lCopy withCompletion:completionCopy];
}

void __49__STRootViewController_handleURL_withCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v12 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v12 containsString:*MEMORY[0x277D4BC68]])
    {
      v6 = [*(a1 + 32) coordinator];
      v7 = [v6 usageDetailsCoordinator];
      v8 = [v7 viewModel];
      [v8 selectToday];

      *a4 = 1;
    }

    else if ([v12 containsString:*MEMORY[0x277D4BC60]])
    {
      v9 = [*(a1 + 32) coordinator];
      v10 = [v9 usageDetailsCoordinator];
      v11 = [v10 viewModel];

      [v11 setSelectedWeek:1];
      [v11 setSelectedDay:0x7FFFFFFFFFFFFFFFLL];
      *a4 = 1;
    }
  }
}

- (void)doneButtonAction:(id)action
{
  navigationController = [(STRootViewController *)self navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];
}

- (void)_toggleNewUsageAction:(id)action
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [standardUserDefaults BOOLForKey:0x287677CC8];
  [standardUserDefaults setBool:v4 ^ 1u forKey:0x287677CC8];
  coordinator = [(STPINListViewController *)self coordinator];
  usageDetailsCoordinator = [coordinator usageDetailsCoordinator];

  viewModel = [usageDetailsCoordinator viewModel];
  [viewModel setHasDeviceActivityData:v4 ^ 1u];

  [usageDetailsCoordinator loadViewModelWithCompletionHandler:0];
}

@end
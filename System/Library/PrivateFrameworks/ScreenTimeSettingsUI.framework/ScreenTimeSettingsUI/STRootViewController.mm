@interface STRootViewController
- (STRootViewController)initWithRootViewModelCoordinator:(id)a3 presentedAsModal:(BOOL)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_startObservingCoordinator;
- (void)_stopObservingCoordinator;
- (void)_toggleNewUsageAction:(id)a3;
- (void)dealloc;
- (void)doneButtonAction:(id)a3;
- (void)handleURL:(id)a3 withCompletion:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setShouldRefreshUsageData:(BOOL)a3;
- (void)setSpecifier:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation STRootViewController

- (STRootViewController)initWithRootViewModelCoordinator:(id)a3 presentedAsModal:(BOOL)a4
{
  v48[17] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!v6)
  {
    v7 = +[STUsageDetailsViewModelCoordinator defaultDeviceIdentifierForLocalUser];
    v8 = +[STUsageDetailsViewModelCoordinator defaultUsageReportTypeForLocalUser];
    v6 = [[STRootViewModelCoordinator alloc] initWithUserDSID:0 deviceIdentifier:v7 usageReportType:v8 usageContext:0];
    if (!v6)
    {
      v9 = [MEMORY[0x277CCA890] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[STRootViewController initWithRootViewModelCoordinator:presentedAsModal:]"];
      [v9 handleFailureInFunction:v10 file:@"STRootViewController.m" lineNumber:77 description:@"RootViewModelCoordinator could not be created. This is a fatal error for ScreenTime."];
    }
  }

  v46.receiver = self;
  v46.super_class = STRootViewController;
  v11 = [(STPINListViewController *)&v46 initWithRootViewModelCoordinator:v6];
  if (v11)
  {
    v12 = +[STScreenTimeSettingsUIBundle bundle];
    v13 = [v12 localizedStringForKey:@"ScreenTimeControllerTitle" value:&stru_28766E5A8 table:0];
    [(STRootViewController *)v11 setTitle:v13];

    v11->_presentedAsModal = a4;
    v14 = [STEnableScreenTimeGroupSpecifierProvider providerWithCoordinator:v6 rootViewController:v11];
    enableScreenTimeGroupSpecifierProvider = v11->_enableScreenTimeGroupSpecifierProvider;
    v11->_enableScreenTimeGroupSpecifierProvider = v14;

    v16 = [(STRootGroupSpecifierProvider *)STScreenTimeGroupSpecifierProvider providerWithCoordinator:v6];
    screenTimeGroupSpecifierProvider = v11->_screenTimeGroupSpecifierProvider;
    v11->_screenTimeGroupSpecifierProvider = v16;

    v18 = [(STRootGroupSpecifierProvider *)STNoUsageReportedGroupSpecifierProvider providerWithCoordinator:v6];
    noUsageReportedGroupSpecifierProvider = v11->_noUsageReportedGroupSpecifierProvider;
    v11->_noUsageReportedGroupSpecifierProvider = v18;

    v45 = objc_opt_new();
    v44 = [(STRootGroupSpecifierProvider *)STAboutScreenTimeGroupSpecifierProvider providerWithCoordinator:v6];
    v48[0] = v44;
    v48[1] = v11->_enableScreenTimeGroupSpecifierProvider;
    v43 = [STEnableRemoteManagementGroupSpecifierProvider providerWithCoordinator:v6 rootViewController:v11];
    v48[2] = v43;
    v48[3] = v11->_screenTimeGroupSpecifierProvider;
    v42 = [(STRootGroupSpecifierProvider *)STUsageSharingGroupSpecifierProvider providerWithCoordinator:v6];
    v48[4] = v42;
    v41 = [STAppRatingChangedGroupSpecifierProvider providerWithCoordinator:v6 rootViewController:v11];
    v48[5] = v41;
    v40 = [STCommunicationSafetyAnalyticsTipGroupSpecifierProvider providerWithCoordinator:v6 rootViewController:v11];
    v48[6] = v40;
    v39 = [(STRootGroupSpecifierProvider *)STAskForTimeGroupSpecifierProvider providerWithCoordinator:v6];
    v48[7] = v39;
    v38 = [(STRootGroupSpecifierProvider *)STManageContactsGroupSpecifierProvider providerWithCoordinator:v6];
    v48[8] = v38;
    v48[9] = v11->_noUsageReportedGroupSpecifierProvider;
    v20 = [STLimitUsageGroupSpecifierProvider providerWithCoordinator:v6 rootViewController:v11];
    v48[10] = v20;
    v21 = [(STRootGroupSpecifierProvider *)STCommunicationGroupSpecifierProvider providerWithCoordinator:v6];
    v48[11] = v21;
    v22 = [(STRootGroupSpecifierProvider *)STRestrictionsGroupSpecifierProvider providerWithCoordinator:v6];
    v48[12] = v22;
    v23 = [(STRootGroupSpecifierProvider *)STRestrictingApplicationsGroupSpecifierProvider providerWithCoordinator:v6];
    v48[13] = v23;
    v24 = [STIncludeWebsiteDataGroupSpecifierProvider providerWithCoordinator:v6 isRootView:1];
    v48[14] = v24;
    v25 = [STFamilyMemberGroupSpecifierProvider providerWithCoordinator:v6 rootViewController:v11];
    v48[15] = v25;
    v26 = [STPasscodeGroupSpecifierProvider providerWithCoordinator:v6 listController:v11 isRootView:1];
    v48[16] = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:17];
    [v45 addObjectsFromArray:v27];

    v28 = [(STRootGroupSpecifierProvider *)STSignInToiCloudGroupSpecifierProvider providerWithCoordinator:v6];
    if ([(STRootViewModelCoordinator *)v6 shouldShowConnectToFamilyForSignIn])
    {
      [v45 insertObject:v28 atIndex:1];
    }

    else
    {
      [v45 addObject:v28];
    }

    if (_os_feature_enabled_impl())
    {
      v29 = [STAgeMigrationTipGroupSpecifierProvider providerWithCoordinator:v6 rootViewController:v11];
      [v45 addObject:v29];
    }

    v30 = [(STRootGroupSpecifierProvider *)STCloudSyncDataGroupSpecifierProvider providerWithCoordinator:v6];
    v47[0] = v30;
    v31 = [STSetUpForFamilyGroupSpecifierProvider providerWithCoordinator:v6 presenter:v11];
    v47[1] = v31;
    v32 = [STDisableAppAndWebsiteActivityGroupSpecifierProvider providerWithCoordinator:v6 isRootView:1];
    v47[2] = v32;
    v33 = [(STRootGroupSpecifierProvider *)STDisableScreenTimeGroupSpecifierProvider providerWithCoordinator:v6];
    v47[3] = v33;
    v34 = [STStopSharingScreenTimeGroupSpecifierProvider providerWithCoordinator:v6 isRootView:1];
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

- (void)setSpecifier:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = STRootViewController;
  [(STRootViewController *)&v22 setSpecifier:v4];
  v5 = [v4 userInfo];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 name];
    [(STRootViewController *)self setTitle:v7];

    v8 = [v6 dsid];
    v9 = [STUsageDetailsViewModelCoordinator defaultDeviceIdentifierForChild:v8];
    v10 = [STUsageDetailsViewModelCoordinator defaultUsageReportTypeForChild:v8];
    v11 = [(STPINListViewController *)self coordinator];
    v12 = [v11 coordinatorForChild:v6 deviceIdentifier:v9 usageReportType:v10];

    [(STRootViewController *)self _stopObservingCoordinator];
    [(STPINListViewController *)self setCoordinator:v12];
    [(STRootViewController *)self _startObservingCoordinator];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v13 = [(STListViewController *)self specifierProviders];
    v14 = [v13 countByEnumeratingWithState:&v18 objects:v23 count:16];
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
            objc_enumerationMutation(v13);
          }

          [*(*(&v18 + 1) + 8 * v17++) setCoordinator:v12];
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v15);
    }
  }
}

- (void)_stopObservingCoordinator
{
  v3 = [(STPINListViewController *)self coordinator];
  [v3 removeObserver:self forKeyPath:@"usageDetailsCoordinator" context:"STRootViewControllerObservationContext"];
}

- (void)_startObservingCoordinator
{
  v3 = [(STPINListViewController *)self coordinator];
  [(STPINListViewController *)self coordinator];

  [v3 addObserver:self forKeyPath:@"usageDetailsCoordinator" options:2 context:"STRootViewControllerObservationContext"];
}

- (void)setShouldRefreshUsageData:(BOOL)a3
{
  if (self->_shouldRefreshUsageData != a3)
  {
    v4 = a3;
    self->_shouldRefreshUsageData = a3;
    v7 = [(STPINListViewController *)self coordinator];
    v5 = [v7 usageDetailsCoordinator];
    v6 = v5;
    if (v4)
    {
      [v5 startRefreshingUsageData];
    }

    else
    {
      [v5 stopRefreshingUsageData];
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
    v5 = [(STRootViewController *)self navigationItem];
    [v5 setRightBarButtonItems:v4];
  }

  else
  {
    v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v7 = [v6 BOOLForKey:@"NewUsageToggle"];

    if (!v7)
    {
      return;
    }

    v3 = [MEMORY[0x277D755B8] systemImageNamed:@"ant"];
    v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithImage:v3 style:0 target:self action:sel__toggleNewUsageAction_];
    v10 = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
    v8 = [(STRootViewController *)self navigationItem];
    [v8 setRightBarButtonItems:v5];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = STRootViewController;
  [(STPINListViewController *)&v10 viewDidAppear:a3];
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.ScreenTime"];
  v5 = objc_alloc(MEMORY[0x277CCAEB8]);
  v6 = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = +[STScreenTimeSettingsUIBundle bundle];
  v8 = [v7 bundleURL];
  v9 = [v5 initWithKey:@"ScreenTimeControllerTitle" table:@"Localizable" locale:v6 bundleURL:v8];

  [(STRootViewController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.screen-time" title:v9 localizedNavigationComponents:MEMORY[0x277CBEBF8] deepLink:v4];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = STRootViewController;
  [(STRootViewController *)&v6 viewWillAppear:a3];
  [(STRootViewController *)self setShouldRefreshUsageData:1];
  v4 = [(STPINListViewController *)self coordinator];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STRootViewController.viewWillAppear", v5, 2u);
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = STRootViewController;
  [(STRootViewController *)&v5 viewWillDisappear:a3];
  [(STRootViewController *)self setShouldRefreshUsageData:0];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STRootViewController.viewWillDisappear", v4, 2u);
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a5;
  if (a6 == "STRootViewControllerObservationContext")
  {
    v12 = a3;
    [(STPINListViewController *)self coordinator];

    v13 = [v12 isEqualToString:@"usageDetailsCoordinator"];
    if (v13 && [(STRootViewController *)self shouldRefreshUsageData])
    {
      v14 = [v10 objectForKeyedSubscript:*MEMORY[0x277CCA300]];
      v15 = [(STPINListViewController *)self coordinator];
      v16 = [v15 usageDetailsCoordinator];

      v17 = [MEMORY[0x277CBEB68] null];
      v18 = [v17 isEqual:v14];

      if ((v18 & 1) == 0)
      {
        [v14 stopRefreshingUsageData];
      }

      v19 = [MEMORY[0x277CBEB68] null];
      v20 = [v19 isEqual:v16];

      if ((v20 & 1) == 0)
      {
        [v16 startRefreshingUsageData];
      }
    }
  }

  else
  {
    v21.receiver = self;
    v21.super_class = STRootViewController;
    v11 = a3;
    [(STListViewController *)&v21 observeValueForKeyPath:v11 ofObject:a4 change:v10 context:a6];
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v28.receiver = self;
  v28.super_class = STRootViewController;
  v5 = [(STListViewController *)&v28 tableView:a3 cellForRowAtIndexPath:a4];
  v6 = [(STRootViewController *)self noUsageReportedGroupSpecifierProvider];
  v7 = [v6 specifiers];
  v8 = [v7 firstObject];

  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277D40148]];
  if ([v5 isEqual:v9])
  {
    v10 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.circle"];
    v11 = [MEMORY[0x277D75348] systemRedColor];
    v12 = [v10 imageWithTintColor:v11];

    v13 = [MEMORY[0x277D755D0] configurationWithScale:3];
    v14 = [v12 imageByApplyingSymbolConfiguration:v13];

    v15 = [MEMORY[0x277D74270] textAttachmentWithImage:v14];
    v16 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v15];
    v17 = objc_alloc(MEMORY[0x277CCAB48]);
    v18 = [v8 objectForKeyedSubscript:*MEMORY[0x277D40160]];
    v19 = [@" " stringByAppendingString:v18];
    v20 = [v17 initWithString:v19];

    [v20 insertAttributedString:v16 atIndex:0];
    v21 = [MEMORY[0x277D756E0] cellConfiguration];
    [v21 setAttributedText:v20];
    v22 = [v21 textProperties];
    [v22 setNumberOfLines:0];

    v23 = [v21 textProperties];
    [v23 setLineBreakMode:0];

    v24 = [MEMORY[0x277D75348] secondaryLabelColor];
    v25 = [v21 textProperties];
    [v25 setColor:v24];

    [v5 setContentConfiguration:v21];
  }

  if ([v5 type] == 13 || objc_msgSend(v5, "type") == 6)
  {
    v26 = [v5 titleLabel];
    [v26 setNumberOfLines:0];
    [v26 setLineBreakMode:0];
  }

  return v5;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(STRootViewController *)self noUsageReportedGroupSpecifierProvider];
  v9 = [v8 specifiers];
  v10 = [v9 firstObject];

  if (v10 && (-[STRootViewController specifierAtIndexPath:](self, "specifierAtIndexPath:", v7), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 isEqual:v10], v11, v12))
  {
    v13 = *MEMORY[0x277D76F30];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = STRootViewController;
    [(STRootViewController *)&v16 tableView:v6 heightForRowAtIndexPath:v7];
    v13 = v14;
  }

  return v13;
}

- (void)handleURL:(id)a3 withCompletion:(id)a4
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__STRootViewController_handleURL_withCompletion___block_invoke;
  v9[3] = &unk_279B7DE58;
  v9[4] = self;
  v6 = a4;
  v7 = a3;
  [v7 enumerateKeysAndObjectsUsingBlock:v9];
  v8.receiver = self;
  v8.super_class = STRootViewController;
  [(STRootViewController *)&v8 handleURL:v7 withCompletion:v6];
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

- (void)doneButtonAction:(id)a3
{
  v3 = [(STRootViewController *)self navigationController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)_toggleNewUsageAction:(id)a3
{
  v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [v8 BOOLForKey:0x287677CC8];
  [v8 setBool:v4 ^ 1u forKey:0x287677CC8];
  v5 = [(STPINListViewController *)self coordinator];
  v6 = [v5 usageDetailsCoordinator];

  v7 = [v6 viewModel];
  [v7 setHasDeviceActivityData:v4 ^ 1u];

  [v6 loadViewModelWithCompletionHandler:0];
}

@end
@interface STEnableScreenTimeGroupSpecifierProvider
+ (id)providerWithCoordinator:(id)a3 rootViewController:(id)a4;
- (STEnableScreenTimeGroupSpecifierProvider)init;
- (UIViewController)rootViewController;
- (id)enableScreenTimeFooterText;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4;
- (void)setCoordinator:(id)a3;
- (void)setupScreenTime:(id)a3;
@end

@implementation STEnableScreenTimeGroupSpecifierProvider

+ (id)providerWithCoordinator:(id)a3 rootViewController:(id)a4
{
  v5 = a4;
  v6 = [(STRootGroupSpecifierProvider *)STEnableScreenTimeGroupSpecifierProvider providerWithCoordinator:a3];
  [v6 setRootViewController:v5];

  return v6;
}

- (STEnableScreenTimeGroupSpecifierProvider)init
{
  v13.receiver = self;
  v13.super_class = STEnableScreenTimeGroupSpecifierProvider;
  v2 = [(STGroupSpecifierProvider *)&v13 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D262A0] sharedConnection];
    v4 = [v3 effectiveBoolValueForSetting:*MEMORY[0x277D25E68]] != 2;

    v5 = +[STScreenTimeSettingsUIBundle bundle];
    v6 = [v5 localizedStringForKey:@"EnableScreenTimeButtonName" value:&stru_28766E5A8 table:0];

    v7 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v6 target:v2 set:0 get:0 detail:0 cell:13 edit:0];
    setupScreenTimeSpecifier = v2->_setupScreenTimeSpecifier;
    v2->_setupScreenTimeSpecifier = v7;

    [(PSSpecifier *)v2->_setupScreenTimeSpecifier setButtonAction:sel_setupScreenTime_];
    v9 = [MEMORY[0x277CCABB0] numberWithInt:v4];
    [(PSSpecifier *)v2->_setupScreenTimeSpecifier setObject:v9 forKeyedSubscript:*MEMORY[0x277D3FF38]];

    v10 = [(STGroupSpecifierProvider *)v2 mutableSpecifiers];
    [v10 addObject:v2->_setupScreenTimeSpecifier];
    v11 = [MEMORY[0x277D262A0] sharedConnection];
    [v11 registerObserver:v2];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277D262A0] sharedConnection];
  [v3 unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = STEnableScreenTimeGroupSpecifierProvider;
  [(STGroupSpecifierProvider *)&v4 dealloc];
}

- (void)setCoordinator:(id)a3
{
  v4 = a3;
  v5 = [(STRootGroupSpecifierProvider *)self coordinator];
  [v5 removeObserver:self forKeyPath:@"viewModel.canStartScreenTime" context:"STSetupScreenTimeGroupSpecifierProviderObservationContext"];
  [v5 removeObserver:self forKeyPath:@"viewModel.me" context:"STSetupScreenTimeGroupSpecifierProviderObservationContext"];
  v6.receiver = self;
  v6.super_class = STEnableScreenTimeGroupSpecifierProvider;
  [(STRootGroupSpecifierProvider *)&v6 setCoordinator:v4];
  [v4 addObserver:self forKeyPath:@"viewModel.me" options:4 context:"STSetupScreenTimeGroupSpecifierProviderObservationContext"];
  [v4 addObserver:self forKeyPath:@"viewModel.canStartScreenTime" options:4 context:"STSetupScreenTimeGroupSpecifierProviderObservationContext"];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  if (a6 == "STSetupScreenTimeGroupSpecifierProviderObservationContext")
  {
    v11 = [MEMORY[0x277D262A0] sharedConnection];
    v12 = [v11 effectiveBoolValueForSetting:*MEMORY[0x277D25E68]];

    if ([v10 isEqualToString:@"viewModel.canStartScreenTime"])
    {
      if (v12 == 2)
      {
        [(STGroupSpecifierProvider *)self setIsHidden:0];
        goto LABEL_15;
      }

      v14 = [(STRootGroupSpecifierProvider *)self coordinator];
      v15 = [v14 viewModel];
      -[STGroupSpecifierProvider setIsHidden:](self, "setIsHidden:", [v15 canStartScreenTime] ^ 1);
    }

    else
    {
      if (![v10 isEqualToString:@"viewModel.me"])
      {
        goto LABEL_15;
      }

      if (v12 == 2)
      {
        v13 = +[STScreenTimeSettingsUIBundle bundle];
        v14 = [v13 localizedStringForKey:@"ScreenTimeRestrictedFooterText" value:&stru_28766E5A8 table:0];
      }

      else
      {
        v14 = [(STEnableScreenTimeGroupSpecifierProvider *)self enableScreenTimeFooterText];
      }

      v15 = [(STGroupSpecifierProvider *)self groupSpecifier];
      v16 = *MEMORY[0x277D3FF88];
      v17 = [v15 objectForKeyedSubscript:*MEMORY[0x277D3FF88]];
      if (([v17 isEqualToString:v14] & 1) == 0)
      {
        [v15 setObject:v14 forKeyedSubscript:v16];
        [(STGroupSpecifierProvider *)self reloadSpecifier:v15 animated:1];
      }
    }

    goto LABEL_15;
  }

  v18.receiver = self;
  v18.super_class = STEnableScreenTimeGroupSpecifierProvider;
  [(STEnableScreenTimeGroupSpecifierProvider *)&v18 observeValueForKeyPath:v10 ofObject:a4 change:a5 context:a6];
LABEL_15:
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4
{
  v5 = [MEMORY[0x277D262A0] sharedConnection];
  v6 = [v5 effectiveBoolValueForSetting:*MEMORY[0x277D25E68]];

  if (v6 == 2)
  {
    v7 = +[STScreenTimeSettingsUIBundle bundle];
    v15 = [v7 localizedStringForKey:@"ScreenTimeRestrictedFooterText" value:&stru_28766E5A8 table:0];
  }

  else
  {
    v15 = [(STEnableScreenTimeGroupSpecifierProvider *)self enableScreenTimeFooterText];
  }

  v8 = [(STGroupSpecifierProvider *)self groupSpecifier];
  v9 = *MEMORY[0x277D3FF88];
  v10 = [v8 objectForKeyedSubscript:*MEMORY[0x277D3FF88]];
  if (([v10 isEqualToString:v15] & 1) == 0)
  {
    [v8 setObject:v15 forKeyedSubscript:v9];
    [(STGroupSpecifierProvider *)self reloadSpecifier:v8 animated:1];
  }

  v11 = [(STEnableScreenTimeGroupSpecifierProvider *)self setupScreenTimeSpecifier];
  v12 = *MEMORY[0x277D3FF38];
  v13 = [v11 objectForKeyedSubscript:*MEMORY[0x277D3FF38]];
  if ((((v6 == 2) ^ [v13 BOOLValue]) & 1) == 0)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithInt:v6 != 2];
    [v11 setObject:v14 forKeyedSubscript:v12];

    [(STGroupSpecifierProvider *)self reloadSpecifier:v11 animated:1];
  }
}

- (id)enableScreenTimeFooterText
{
  v2 = [(STRootGroupSpecifierProvider *)self coordinator];
  v3 = [v2 viewModel];
  v4 = [v3 me];

  LOBYTE(v3) = [v4 isRemoteUser];
  v5 = +[STScreenTimeSettingsUIBundle bundle];
  if (v3)
  {
    v6 = [v4 name];

    if (v6)
    {
      v7 = objc_opt_new();
      v8 = [v4 name];
      v9 = [v7 personNameComponentsFromString:v8];

      v10 = [v9 givenName];
      if ([v10 length])
      {
        v11 = MEMORY[0x277CCACA8];
        v12 = [v5 localizedStringForKey:@"EnableScreenTimeRemoteFooterText" value:&stru_28766E5A8 table:0];
        v13 = [v11 localizedStringWithFormat:v12, v10];

        goto LABEL_9;
      }
    }

    v14 = @"EnableScreenTimeRemoteGenericFooterText";
  }

  else
  {
    v14 = @"EnableScreenTimeFooterText";
  }

  v13 = [v5 localizedStringForKey:v14 value:&stru_28766E5A8 table:0];
LABEL_9:

  return v13;
}

- (void)setupScreenTime:(id)a3
{
  v4 = [(STRootGroupSpecifierProvider *)self coordinator];
  [v4 setHasShownMiniBuddy:1];
  v5 = [[STIntroductionController alloc] initWithNewUserRootViewModelCoordinator:v4];
  v6 = [v4 viewModel];
  v7 = [v6 me];
  v8 = [v7 isRemoteUser];

  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __60__STEnableScreenTimeGroupSpecifierProvider_setupScreenTime___block_invoke;
  v14 = &unk_279B7CD30;
  v15 = v4;
  v16 = v8;
  v9 = v4;
  [(STIntroductionController *)v5 setCompletionBlock:&v11];
  v10 = [(STEnableScreenTimeGroupSpecifierProvider *)self rootViewController:v11];
  [(STIntroductionController *)v5 presentOverViewController:v10];
}

void __60__STEnableScreenTimeGroupSpecifierProvider_setupScreenTime___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = *(a1 + 32);
    v8 = [v5 parentalControlsPasscode];
    v9 = [v6 recoveryAltDSID];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __60__STEnableScreenTimeGroupSpecifierProvider_setupScreenTime___block_invoke_2;
    v10[3] = &unk_279B7CD08;
    v13 = *(a1 + 40);
    v11 = v6;
    v12 = *(a1 + 32);
    [v7 enableManagementWithPIN:v8 recoveryAltDSID:v9 completionHandler:v10];
  }
}

void __60__STEnableScreenTimeGroupSpecifierProvider_setupScreenTime___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[STUILog budgets];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __65__STLimitUsageGroupSpecifierProvider_setUpAppAndWebsiteActivity___block_invoke_2_cold_1(v3, v4);
    }
  }

  if ((*(a1 + 48) & 1) != 0 || [*(a1 + 32) deviceForChild])
  {
    [*(a1 + 40) applyIntroductionViewModel:*(a1 + 32) withCompletionHandler:0];
  }
}

- (UIViewController)rootViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_rootViewController);

  return WeakRetained;
}

@end
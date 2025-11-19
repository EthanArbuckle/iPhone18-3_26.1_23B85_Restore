@interface STRestrictionsGroupSpecifierProvider
- (STRestrictionsGroupSpecifierProvider)init;
- (id)_screenTimeManagementDetailText;
- (id)_screenTimeManagementSpecifier;
- (id)contentPrivacyDetailText;
- (void)_showScreenTimeManagementListController:(id)a3;
- (void)_updateScreenTimeManagementSpecifierWithOldLastPasscodeUseDate:(id)a3 newLastPasscodeUseDate:(id)a4;
- (void)_updateScreenTimeManagementSpecifierWithWasRemotelyManagedUserWithPasscode:(BOOL)a3 to:(BOOL)a4;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4;
- (void)setCoordinator:(id)a3;
@end

@implementation STRestrictionsGroupSpecifierProvider

- (STRestrictionsGroupSpecifierProvider)init
{
  v13.receiver = self;
  v13.super_class = STRestrictionsGroupSpecifierProvider;
  v2 = [(STGroupSpecifierProvider *)&v13 init];
  if (v2)
  {
    v3 = +[STScreenTimeSettingsUIBundle bundle];
    v4 = [(STGroupSpecifierProvider *)v2 mutableSpecifiers];
    v5 = MEMORY[0x277D3FAD8];
    v6 = [v3 localizedStringForKey:@"RestrictionsGroupSpecifierName" value:&stru_28766E5A8 table:0];
    v7 = [v5 groupSpecifierWithName:v6];
    [(STGroupSpecifierProvider *)v2 setGroupSpecifier:v7];

    v8 = [v3 localizedStringForKey:@"ContentPrivacySpecifierName" value:&stru_28766E5A8 table:0];
    v9 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v8 target:v2 set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
    [v9 setIdentifier:@"CONTENT_PRIVACY"];
    [v9 setObject:v8 forKeyedSubscript:*MEMORY[0x277D40170]];
    [v9 setObject:@"CONTENT_PRIVACY" forKeyedSubscript:*MEMORY[0x277D3FFB8]];
    v10 = [(STRestrictionsGroupSpecifierProvider *)v2 contentPrivacyDetailText];
    [v9 setObject:v10 forKeyedSubscript:*MEMORY[0x277D40160]];

    [v9 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
    [v9 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D40020]];
    [v9 setObject:@"com.apple.graphic-icon.content-and-privacy-restrictions" forKeyedSubscript:*MEMORY[0x277D3FFD8]];
    if ([MEMORY[0x277D75128] isRunningInStoreDemoMode])
    {
      [v9 setButtonAction:sel_showStoreDemoAlert];
    }

    [(STRestrictionsGroupSpecifierProvider *)v2 setContentPrivacySpecifier:v9];
    [v4 addObject:v9];
    v11 = [MEMORY[0x277D262A0] sharedConnection];
    [v11 registerObserver:v2];
  }

  return v2;
}

- (void)dealloc
{
  v5.receiver = self;
  v5.super_class = STRestrictionsGroupSpecifierProvider;
  [(STRootGroupSpecifierProvider *)&v5 invalidate];
  v3 = [MEMORY[0x277D262A0] sharedConnection];
  [v3 unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = STRestrictionsGroupSpecifierProvider;
  [(STGroupSpecifierProvider *)&v4 dealloc];
}

- (void)setCoordinator:(id)a3
{
  v4 = a3;
  v5 = [(STRootGroupSpecifierProvider *)self coordinator];
  [v5 removeObserver:self forKeyPath:@"viewModel.isLocalOrRemotelyManagedUser" context:"STRestrictionsGroupSpecifierProviderObservationContext"];
  if (_os_feature_enabled_impl())
  {
    [v5 removeObserver:self forKeyPath:@"viewModel.isRemotelyManagedUserWithPasscode" context:"STRestrictionsGroupSpecifierProviderObservationContext"];
    [v5 removeObserver:self forKeyPath:@"viewModel.lastPasscodeUseDevice.lastPasscodeUseDate" context:"STRestrictionsGroupSpecifierProviderObservationContext"];
  }

  v8.receiver = self;
  v8.super_class = STRestrictionsGroupSpecifierProvider;
  [(STRootGroupSpecifierProvider *)&v8 setCoordinator:v4];
  v6 = [(STRootGroupSpecifierProvider *)self coordinator];
  v7 = [(STRestrictionsGroupSpecifierProvider *)self contentPrivacySpecifier];
  [v7 setObject:v6 forKeyedSubscript:0x287675C48];

  [v4 addObserver:self forKeyPath:@"viewModel.isLocalOrRemotelyManagedUser" options:4 context:"STRestrictionsGroupSpecifierProviderObservationContext"];
  if (_os_feature_enabled_impl())
  {
    [v4 addObserver:self forKeyPath:@"viewModel.isRemotelyManagedUserWithPasscode" options:7 context:"STRestrictionsGroupSpecifierProviderObservationContext"];
    [v4 addObserver:self forKeyPath:@"viewModel.lastPasscodeUseDevice.lastPasscodeUseDate" options:7 context:"STRestrictionsGroupSpecifierProviderObservationContext"];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a5;
  if (a6 == "STRestrictionsGroupSpecifierProviderObservationContext")
  {
    v12 = [(STRootGroupSpecifierProvider *)self coordinator];
    [(STRootGroupSpecifierProvider *)self coordinator];

    if ([v10 isEqualToString:@"viewModel.isLocalOrRemotelyManagedUser"])
    {
      v13 = [MEMORY[0x277D262A0] sharedConnection];
      v14 = [v13 effectiveBoolValueForSetting:*MEMORY[0x277D25E68]];

      v15 = [(STRootGroupSpecifierProvider *)self coordinator];
      v16 = [v15 viewModel];
      v17 = [v16 isLocalOrRemotelyManagedUser] ^ 1;
      if (v14 == 2)
      {
        v18 = 1;
      }

      else
      {
        v18 = v17;
      }

      [(STGroupSpecifierProvider *)self setIsHidden:v18];
    }

    else if ([v10 isEqualToString:@"viewModel.isRemotelyManagedUserWithPasscode"])
    {
      v15 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA300]];
      v19 = [MEMORY[0x277CBEB68] null];

      if (v15 == v19)
      {

        v15 = 0;
      }

      v16 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      v20 = [MEMORY[0x277CBEB68] null];

      if (v16 == v20)
      {

        v16 = 0;
      }

      -[STRestrictionsGroupSpecifierProvider _updateScreenTimeManagementSpecifierWithWasRemotelyManagedUserWithPasscode:to:](self, "_updateScreenTimeManagementSpecifierWithWasRemotelyManagedUserWithPasscode:to:", [v15 BOOLValue], objc_msgSend(v16, "BOOLValue"));
    }

    else
    {
      if (![v10 isEqualToString:@"viewModel.lastPasscodeUseDevice.lastPasscodeUseDate"])
      {
LABEL_21:

        goto LABEL_22;
      }

      v15 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA300]];
      v21 = [MEMORY[0x277CBEB68] null];

      if (v15 == v21)
      {

        v15 = 0;
      }

      v16 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      v22 = [MEMORY[0x277CBEB68] null];

      if (v16 == v22)
      {

        v16 = 0;
      }

      [(STRestrictionsGroupSpecifierProvider *)self _updateScreenTimeManagementSpecifierWithOldLastPasscodeUseDate:v15 newLastPasscodeUseDate:v16];
    }

    goto LABEL_21;
  }

  v23.receiver = self;
  v23.super_class = STRestrictionsGroupSpecifierProvider;
  [(STRestrictionsGroupSpecifierProvider *)&v23 observeValueForKeyPath:v10 ofObject:a4 change:v11 context:a6];
LABEL_22:
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4
{
  v5 = [MEMORY[0x277D262A0] sharedConnection];
  v6 = [v5 effectiveBoolValueForSetting:*MEMORY[0x277D25E68]];

  v10 = [(STRootGroupSpecifierProvider *)self coordinator];
  v7 = [v10 viewModel];
  v8 = [v7 isLocalOrRemotelyManagedUser] ^ 1;
  if (v6 == 2)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  [(STGroupSpecifierProvider *)self setIsHidden:v9];
}

- (id)contentPrivacyDetailText
{
  v2 = +[STScreenTimeSettingsUIBundle bundle];
  v3 = [v2 localizedStringForKey:@"AADC_ContentPrivacyDetailText" value:&stru_28766E5A8 table:0];

  return v3;
}

- (void)_updateScreenTimeManagementSpecifierWithWasRemotelyManagedUserWithPasscode:(BOOL)a3 to:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (!_os_feature_enabled_impl())
  {
    return;
  }

  v16 = [(STGroupSpecifierProvider *)self mutableSpecifiers];
  v7 = [v16 indexOfSpecifierWithID:@"SCREEN_TIME_MANAGEMENT"];
  v8 = [(STRootGroupSpecifierProvider *)self coordinator];
  v9 = [v8 viewModel];
  v10 = [v9 me];
  v11 = [v10 isRemoteUser];

  if (v11)
  {
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = [(STRestrictionsGroupSpecifierProvider *)self _screenTimeManagementSpecifier];
      [v16 addObject:v12];

LABEL_10:
      v13 = v16;
      goto LABEL_11;
    }

    v13 = v16;
    if (v5 != v4)
    {
      v14 = [v16 objectAtIndexedSubscript:v7];
      v15 = [(STRestrictionsGroupSpecifierProvider *)self _screenTimeManagementDetailText];
      [v14 setObject:v15 forKeyedSubscript:*MEMORY[0x277D40160]];

      [(STGroupSpecifierProvider *)self reloadSpecifier:v14 animated:1];
      goto LABEL_10;
    }
  }

  else
  {
    v13 = v16;
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v16 removeObjectAtIndex:v7];
      goto LABEL_10;
    }
  }

LABEL_11:
}

- (void)_updateScreenTimeManagementSpecifierWithOldLastPasscodeUseDate:(id)a3 newLastPasscodeUseDate:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = _os_feature_enabled_impl();
  if (v13 != v6 && v7 && ([v13 isEqualToDate:v6] & 1) == 0)
  {
    v8 = [(STGroupSpecifierProvider *)self specifiers];
    v9 = [(STGroupSpecifierProvider *)self specifiers];
    v10 = [v9 indexOfSpecifierWithID:@"SCREEN_TIME_MANAGEMENT"];

    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [v8 objectAtIndexedSubscript:v10];
      v12 = [(STRestrictionsGroupSpecifierProvider *)self _screenTimeManagementDetailText];
      [v11 setObject:v12 forKeyedSubscript:*MEMORY[0x277D40160]];

      [(STGroupSpecifierProvider *)self reloadSpecifier:v11 animated:1];
    }
  }
}

- (id)_screenTimeManagementSpecifier
{
  v3 = +[STScreenTimeSettingsUIBundle bundle];
  v4 = [v3 localizedStringForKey:@"ScreenTimeManagementSpecifierName" value:&stru_28766E5A8 table:0];

  v5 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v4 target:self set:0 get:0 detail:0 cell:2 edit:0];
  [v5 setIdentifier:@"SCREEN_TIME_MANAGEMENT"];
  [v5 setObject:v4 forKeyedSubscript:*MEMORY[0x277D40170]];
  [v5 setObject:@"SCREEN_TIME_MANAGEMENT" forKeyedSubscript:*MEMORY[0x277D3FFB8]];
  v6 = [(STRestrictionsGroupSpecifierProvider *)self _screenTimeManagementDetailText];
  [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x277D40160]];

  [v5 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
  [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D40020]];
  [v5 setObject:@"com.apple.screen-time.screen-time-management" forKeyedSubscript:*MEMORY[0x277D3FFD8]];
  if ([MEMORY[0x277D75128] isRunningInStoreDemoMode])
  {
    [v5 setButtonAction:sel_showStoreDemoAlert];
  }

  else
  {
    [v5 setControllerLoadAction:sel__showScreenTimeManagementListController_];
  }

  return v5;
}

- (id)_screenTimeManagementDetailText
{
  v2 = [(STRootGroupSpecifierProvider *)self coordinator];
  v3 = [v2 viewModel];

  if ([v3 isRemotelyManagedUserWithPasscode])
  {
    v4 = [v3 lastPasscodeUseDevice];
    v5 = [v4 lastPasscodeUseDate];

    if (v5)
    {
      v6 = objc_opt_new();
      [v6 setTimeStyle:1];
      [v6 setDateStyle:2];
      [v6 setDoesRelativeDateFormatting:1];
      [v6 setFormattingContext:5];
      v7 = [v6 stringFromDate:v5];
      v8 = +[STScreenTimeSettingsUIBundle bundle];
      v9 = [v8 localizedStringForKey:@"ScreenTimeManagementPasscodeUseDateFormat" value:&stru_28766E5A8 table:0];

      v10 = objc_alloc(MEMORY[0x277CCACA8]);
      v11 = [MEMORY[0x277CBEAF8] currentLocale];
      v12 = [v10 initWithFormat:v9 locale:v11, v7];
    }

    else
    {
      v6 = +[STScreenTimeSettingsUIBundle bundle];
      v12 = [v6 localizedStringForKey:@"ScreenTimeManagementOnDetailText" value:&stru_28766E5A8 table:0];
    }
  }

  else
  {
    v5 = +[STScreenTimeSettingsUIBundle bundle];
    v12 = [v5 localizedStringForKey:@"ScreenTimeManagementOffDetailText" value:&stru_28766E5A8 table:0];
  }

  return v12;
}

- (void)_showScreenTimeManagementListController:(id)a3
{
  v4 = a3;
  v8 = objc_opt_new();
  v5 = [(STRootGroupSpecifierProvider *)self coordinator];
  [v8 setCoordinator:v5];

  v6 = [(STGroupSpecifierProvider *)self delegate];
  [v8 setParentController:v6];
  v7 = [v6 rootController];
  [v8 setRootController:v7];

  [v8 setSpecifier:v4];
  [(STGroupSpecifierProvider *)self showController:v8 animated:1];
}

@end
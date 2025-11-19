@interface STCommunicationGroupSpecifierProvider
- (BOOL)showDemoModeAlertIfNeeded;
- (STCommunicationGroupSpecifierProvider)init;
- (id)_communicationLimitsDetailText;
- (id)_communicationSafetyDetailText;
- (void)_communicationLimitsDidChangeFrom:(id)a3 to:(id)a4;
- (void)_communicationSafetyDetailText;
- (void)_communicationSafetyDidChange;
- (void)_isRemoteUserDidChangeFrom:(BOOL)a3 to:(BOOL)a4;
- (void)_resetCommunicationLimitsDetailText;
- (void)_showCommunicationLimitsViewController:(id)a3;
- (void)_userTypeDidChange:(unint64_t)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4;
- (void)setCoordinator:(id)a3;
- (void)showCommunicationSafetyViewController:(id)a3;
@end

@implementation STCommunicationGroupSpecifierProvider

- (STCommunicationGroupSpecifierProvider)init
{
  v23.receiver = self;
  v23.super_class = STCommunicationGroupSpecifierProvider;
  v2 = [(STGroupSpecifierProvider *)&v23 init];
  if (v2)
  {
    v3 = +[STScreenTimeSettingsUIBundle bundle];
    v19 = [(STGroupSpecifierProvider *)v2 mutableSpecifiers];
    v4 = MEMORY[0x277D3FAD8];
    v5 = [v3 localizedStringForKey:@"CommunicationGroupSpecifierName" value:&stru_28766E5A8 table:0];
    v6 = [v4 groupSpecifierWithName:v5];
    [(STGroupSpecifierProvider *)v2 setGroupSpecifier:v6];

    v21 = v3;
    v22 = [v3 localizedStringForKey:@"CommunicationLimitsSpecifierName" value:&stru_28766E5A8 table:0];
    v7 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v22 target:v2 set:0 get:0 detail:0 cell:2 edit:0];
    [v7 setIdentifier:@"COMMUNICATION_LIMITS"];
    v20 = *MEMORY[0x277D40170];
    [v7 setObject:v22 forKeyedSubscript:?];
    v8 = [(STCommunicationGroupSpecifierProvider *)v2 _communicationLimitsDetailText];
    v9 = *MEMORY[0x277D40160];
    [v7 setObject:v8 forKeyedSubscript:*MEMORY[0x277D40160]];

    v10 = objc_opt_class();
    v11 = *MEMORY[0x277D3FE58];
    [v7 setObject:v10 forKeyedSubscript:*MEMORY[0x277D3FE58]];
    v12 = *MEMORY[0x277D40020];
    [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D40020]];
    v13 = *MEMORY[0x277D3FFD8];
    [v7 setObject:@"com.apple.graphic-icon.communication-limits" forKeyedSubscript:*MEMORY[0x277D3FFD8]];
    [v7 setControllerLoadAction:sel__showCommunicationLimitsViewController_];
    [(STCommunicationGroupSpecifierProvider *)v2 setCommunicationLimitsSpecifier:v7];
    [v19 addObject:v7];
    v14 = [v3 localizedStringForKey:@"CommunicationSafetyTitle" value:&stru_28766E5A8 table:0];
    v15 = [(STCommunicationGroupSpecifierProvider *)v2 _communicationSafetyDetailText];
    v16 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v14 target:v2 set:0 get:0 detail:0 cell:2 edit:0];
    [v16 setIdentifier:@"COMMUNICATION_SAFETY"];
    [v16 setObject:v14 forKeyedSubscript:v20];
    [v16 setObject:v15 forKeyedSubscript:v9];
    [v16 setObject:@"COMMUNICATION_SAFETY" forKeyedSubscript:*MEMORY[0x277D3FFB8]];
    [v16 setObject:objc_opt_class() forKeyedSubscript:v11];
    [v16 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v12];
    [v16 setObject:@"com.apple.graphic-icon.communication-safety" forKeyedSubscript:v13];
    [v16 setControllerLoadAction:sel_showCommunicationSafetyViewController_];
    [(STCommunicationGroupSpecifierProvider *)v2 setCommunicationSafetySpecifier:v16];
    [v19 addObject:v16];
    v17 = [MEMORY[0x277D262A0] sharedConnection];
    [v17 registerObserver:v2];
  }

  return v2;
}

- (void)dealloc
{
  v5.receiver = self;
  v5.super_class = STCommunicationGroupSpecifierProvider;
  [(STRootGroupSpecifierProvider *)&v5 invalidate];
  v3 = [MEMORY[0x277D262A0] sharedConnection];
  [v3 unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = STCommunicationGroupSpecifierProvider;
  [(STGroupSpecifierProvider *)&v4 dealloc];
}

- (void)setCoordinator:(id)a3
{
  v4 = a3;
  v5 = [(STRootGroupSpecifierProvider *)self coordinator];
  [v5 removeObserver:self forKeyPath:@"viewModel.isLocalOrRemotelyManagedUser" context:"STCommunicationGroupSpecifierProviderObservationContext"];
  [v5 removeObserver:self forKeyPath:@"viewModel.me.isRemoteUser"];
  [v5 removeObserver:self forKeyPath:@"viewModel.me.type"];
  [v5 removeObserver:self forKeyPath:@"contentPrivacyCoordinator.viewModel.communicationLimits"];
  [v5 removeObserver:self forKeyPath:@"communicationSafetyCoordinator.viewModel.isCommunicationSafetyReceivingRestricted"];
  [v5 removeObserver:self forKeyPath:@"communicationSafetyCoordinator.viewModel.isCommunicationSafetySendingRestricted"];
  [v5 removeObserver:self forKeyPath:@"communicationSafetyCoordinator.viewModel.isCommunicationSafetyNotificationEnabled"];
  [v5 removeObserver:self forKeyPath:@"communicationSafetyCoordinator.viewModel.isCommunicationSafetyAnalyticsEnabled"];
  v12.receiver = self;
  v12.super_class = STCommunicationGroupSpecifierProvider;
  [(STRootGroupSpecifierProvider *)&v12 setCoordinator:v4];
  v6 = [v5 contentPrivacyCoordinator];
  v7 = [v6 viewModel];
  v8 = [v7 communicationLimits];
  v9 = [v4 contentPrivacyCoordinator];
  v10 = [v9 viewModel];
  v11 = [v10 communicationLimits];
  [(STCommunicationGroupSpecifierProvider *)self _communicationLimitsDidChangeFrom:v8 to:v11];

  [(STCommunicationGroupSpecifierProvider *)self _communicationSafetyDidChange];
  [v4 addObserver:self forKeyPath:@"viewModel.isLocalOrRemotelyManagedUser" options:4 context:"STCommunicationGroupSpecifierProviderObservationContext"];
  [v4 addObserver:self forKeyPath:@"viewModel.me.isRemoteUser" options:7 context:"STCommunicationGroupSpecifierProviderObservationContext"];
  [v4 addObserver:self forKeyPath:@"viewModel.me.type" options:5 context:"STCommunicationGroupSpecifierProviderObservationContext"];
  [v4 addObserver:self forKeyPath:@"contentPrivacyCoordinator.viewModel.communicationLimits" options:3 context:"STCommunicationGroupSpecifierProviderObservationContext"];
  [v4 addObserver:self forKeyPath:@"communicationSafetyCoordinator.viewModel.isCommunicationSafetyReceivingRestricted" options:5 context:"STCommunicationGroupSpecifierProviderObservationContext"];
  [v4 addObserver:self forKeyPath:@"communicationSafetyCoordinator.viewModel.isCommunicationSafetySendingRestricted" options:5 context:"STCommunicationGroupSpecifierProviderObservationContext"];
  [v4 addObserver:self forKeyPath:@"communicationSafetyCoordinator.viewModel.isCommunicationSafetyNotificationEnabled" options:5 context:"STCommunicationGroupSpecifierProviderObservationContext"];
  [v4 addObserver:self forKeyPath:@"communicationSafetyCoordinator.viewModel.isCommunicationSafetyAnalyticsEnabled" options:5 context:"STCommunicationGroupSpecifierProviderObservationContext"];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a5;
  if (a6 == "STCommunicationGroupSpecifierProviderObservationContext")
  {
    v12 = [MEMORY[0x277D262A0] sharedConnection];
    v13 = [v12 effectiveBoolValueForSetting:*MEMORY[0x277D25E68]];

    v14 = [(STRootGroupSpecifierProvider *)self coordinator];
    if ([v10 isEqualToString:@"viewModel.isLocalOrRemotelyManagedUser"])
    {
      v15 = [(STRootGroupSpecifierProvider *)self coordinator];
      v16 = [v15 viewModel];
      if ([v16 isLocalOrRemotelyManagedUser])
      {
        v17 = [(STGroupSpecifierProvider *)self mutableSpecifiers];
        if ([v17 count])
        {
          v18 = v13 == 2;
        }

        else
        {
          v18 = 1;
        }

        v19 = v18;
        [(STGroupSpecifierProvider *)self setIsHidden:v19];
      }

      else
      {
        [(STGroupSpecifierProvider *)self setIsHidden:1];
      }
    }

    else
    {
      if ([v10 isEqualToString:@"viewModel.me.type"])
      {
        v20 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
        v21 = [MEMORY[0x277CBEB68] null];

        if (v20 == v21)
        {

          v20 = 0;
        }

        -[STCommunicationGroupSpecifierProvider _userTypeDidChange:](self, "_userTypeDidChange:", [v20 unsignedIntegerValue]);
      }

      else
      {
        if ([v10 isEqualToString:@"viewModel.me.isRemoteUser"])
        {
          v20 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA300]];
          v22 = [MEMORY[0x277CBEB68] null];

          if (v20 == v22)
          {

            v20 = 0;
          }

          v23 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
          v24 = [MEMORY[0x277CBEB68] null];

          if (v23 == v24)
          {

            v23 = 0;
          }

          -[STCommunicationGroupSpecifierProvider _isRemoteUserDidChangeFrom:to:](self, "_isRemoteUserDidChangeFrom:to:", [v20 BOOLValue], objc_msgSend(v23, "BOOLValue"));
        }

        else
        {
          if (![v10 isEqualToString:@"contentPrivacyCoordinator.viewModel.communicationLimits"])
          {
            if (([v10 isEqualToString:@"communicationSafetyCoordinator.viewModel.isCommunicationSafetyReceivingRestricted"] & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"communicationSafetyCoordinator.viewModel.isCommunicationSafetySendingRestricted") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"communicationSafetyCoordinator.viewModel.isCommunicationSafetyNotificationEnabled") & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"communicationSafetyCoordinator.viewModel.isCommunicationSafetyAnalyticsEnabled"))
            {
              [(STCommunicationGroupSpecifierProvider *)self _communicationSafetyDidChange];
            }

            goto LABEL_32;
          }

          v20 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA300]];
          v25 = [MEMORY[0x277CBEB68] null];

          if (v20 == v25)
          {

            v20 = 0;
          }

          v23 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
          v26 = [MEMORY[0x277CBEB68] null];

          if (v23 == v26)
          {

            v23 = 0;
          }

          [(STCommunicationGroupSpecifierProvider *)self _communicationLimitsDidChangeFrom:v20 to:v23];
        }
      }
    }

LABEL_32:

    goto LABEL_33;
  }

  v27.receiver = self;
  v27.super_class = STCommunicationGroupSpecifierProvider;
  [(STCommunicationGroupSpecifierProvider *)&v27 observeValueForKeyPath:v10 ofObject:a4 change:v11 context:a6];
LABEL_33:
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4
{
  v5 = [MEMORY[0x277D262A0] sharedConnection];
  v6 = [v5 effectiveBoolValueForSetting:*MEMORY[0x277D25E68]];

  v11 = [(STRootGroupSpecifierProvider *)self coordinator];
  v7 = [v11 viewModel];
  if ([v7 isLocalOrRemotelyManagedUser])
  {
    v8 = [(STGroupSpecifierProvider *)self mutableSpecifiers];
    if ([v8 count])
    {
      v9 = v6 == 2;
    }

    else
    {
      v9 = 1;
    }

    v10 = v9;
    [(STGroupSpecifierProvider *)self setIsHidden:v10];
  }

  else
  {
    [(STGroupSpecifierProvider *)self setIsHidden:1];
  }
}

- (void)_userTypeDidChange:(unint64_t)a3
{
  if (!a3)
  {
    v5 = [(STGroupSpecifierProvider *)self mutableSpecifiers];
    v6 = [(STCommunicationGroupSpecifierProvider *)self communicationLimitsSpecifier];
    [v5 removeObject:v6];

    v7 = [MEMORY[0x277D262A0] sharedConnection];
    v8 = [v7 effectiveBoolValueForSetting:*MEMORY[0x277D25E68]];

    v13 = [(STRootGroupSpecifierProvider *)self coordinator];
    v9 = [v13 viewModel];
    if ([v9 isLocalOrRemotelyManagedUser])
    {
      v10 = [(STGroupSpecifierProvider *)self mutableSpecifiers];
      if ([v10 count])
      {
        v11 = v8 == 2;
      }

      else
      {
        v11 = 1;
      }

      v12 = v11;
      [(STGroupSpecifierProvider *)self setIsHidden:v12];
    }

    else
    {
      [(STGroupSpecifierProvider *)self setIsHidden:1];
    }
  }
}

- (void)_isRemoteUserDidChangeFrom:(BOOL)a3 to:(BOOL)a4
{
  if (a3 != a4)
  {
    [(STCommunicationGroupSpecifierProvider *)self _resetCommunicationLimitsDetailText];
  }
}

- (void)_communicationLimitsDidChangeFrom:(id)a3 to:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (v7 != v6 && ([v7 isEqual:v6] & 1) == 0)
  {
    [(STCommunicationGroupSpecifierProvider *)self _resetCommunicationLimitsDetailText];
  }
}

- (void)_resetCommunicationLimitsDetailText
{
  v4 = [(STCommunicationGroupSpecifierProvider *)self communicationLimitsSpecifier];
  v3 = [(STCommunicationGroupSpecifierProvider *)self _communicationLimitsDetailText];
  [v4 setObject:v3 forKeyedSubscript:*MEMORY[0x277D40160]];

  [(STGroupSpecifierProvider *)self reloadSpecifier:v4 animated:0];
}

- (id)_communicationLimitsDetailText
{
  v2 = [(STRootGroupSpecifierProvider *)self coordinator];
  v3 = [v2 contentPrivacyCoordinator];
  v4 = [v3 viewModel];
  v5 = [v4 communicationLimits];

  if ([v5 screenTimeCommunicationLimit] || objc_msgSend(v5, "downtimeCommunicationLimit"))
  {
    v6 = +[STScreenTimeSettingsUIBundle bundle];
    v7 = v6;
    v8 = @"CommunicationLimitsOnDetailText";
  }

  else if ([v5 contactManagementState] || !objc_msgSend(v5, "contactsEditable"))
  {
    v11 = [v5 contactManagementState];
    v6 = +[STScreenTimeSettingsUIBundle bundle];
    v7 = v6;
    if (v11)
    {
      v8 = @"CommunicationLimitsManagingContactsDetailText";
    }

    else
    {
      v8 = @"CommunicationLimitsContactEditingDetailText";
    }
  }

  else
  {
    v6 = +[STScreenTimeSettingsUIBundle bundle];
    v7 = v6;
    v8 = @"AADC_CommunicationLimitsDetailText";
  }

  v9 = [v6 localizedStringForKey:v8 value:&stru_28766E5A8 table:0];

  return v9;
}

- (void)_showCommunicationLimitsViewController:(id)a3
{
  v11 = a3;
  if (![(STCommunicationGroupSpecifierProvider *)self showDemoModeAlertIfNeeded])
  {
    v4 = [(STRootGroupSpecifierProvider *)self coordinator];
    v5 = [[STCommunicationLimitsListController alloc] initWithRootViewModelCoordinator:v4];
    v6 = [v4 viewModel];
    v7 = [v6 me];
    v8 = [v7 isRemoteUser];

    if (v8)
    {
      [MEMORY[0x277CBDA28] requestAccountSyncWithOptions:1];
    }

    v9 = [(STGroupSpecifierProvider *)self delegate];
    [(STCommunicationLimitsListController *)v5 setParentController:v9];
    v10 = [v9 rootController];
    [(STCommunicationLimitsListController *)v5 setRootController:v10];

    [(STCommunicationLimitsListController *)v5 setSpecifier:v11];
    [(STGroupSpecifierProvider *)self showController:v5 animated:1];
  }
}

- (void)showCommunicationSafetyViewController:(id)a3
{
  v8 = a3;
  if (![(STCommunicationGroupSpecifierProvider *)self showDemoModeAlertIfNeeded])
  {
    v4 = objc_opt_new();
    v5 = [(STRootGroupSpecifierProvider *)self coordinator];
    [v4 setCoordinator:v5];

    v6 = [(STGroupSpecifierProvider *)self delegate];
    [v4 setParentController:v6];
    v7 = [v6 rootController];
    [v4 setRootController:v7];

    [v4 setSpecifier:v8];
    [(STGroupSpecifierProvider *)self showController:v4 animated:1];
  }
}

- (void)_communicationSafetyDidChange
{
  v3 = [(STCommunicationGroupSpecifierProvider *)self communicationSafetySpecifier];
  v4 = v3;
  if (v3)
  {
    v5 = *MEMORY[0x277D40160];
    v6 = [v3 objectForKeyedSubscript:*MEMORY[0x277D40160]];
    v7 = [(STCommunicationGroupSpecifierProvider *)self _communicationSafetyDetailText];
    if (([v6 isEqualToString:v7] & 1) == 0)
    {
      [v4 setObject:v7 forKeyedSubscript:v5];
      v8 = +[STUILog communicationSafety];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [(STCommunicationGroupSpecifierProvider *)v8 _communicationSafetyDidChange];
      }

      [(STGroupSpecifierProvider *)self reloadSpecifier:v4 animated:0];
    }
  }
}

- (id)_communicationSafetyDetailText
{
  v2 = [(STRootGroupSpecifierProvider *)self coordinator];
  v3 = [v2 communicationSafetyCoordinator];
  v4 = [v3 viewModel];
  v5 = [v4 isCommunicationSafetySendingRestricted];

  v6 = +[STUILog communicationSafety];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(STCommunicationGroupSpecifierProvider *)v5 _communicationSafetyDetailText];
  }

  v7 = +[STScreenTimeSettingsUIBundle bundle];
  v8 = v7;
  if (v5)
  {
    v9 = @"CommunicationSafetyOnSubtitle";
  }

  else
  {
    v9 = @"CommunicationSafetyOffSubtitle";
  }

  v10 = [v7 localizedStringForKey:v9 value:&stru_28766E5A8 table:0];

  return v10;
}

- (BOOL)showDemoModeAlertIfNeeded
{
  v3 = [MEMORY[0x277D75128] isRunningInStoreDemoMode];
  if (v3)
  {
    [(STGroupSpecifierProvider *)self showStoreDemoAlert];
  }

  return v3;
}

- (void)_communicationSafetyDetailText
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:a1 & 1];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_264BA2000, a2, OS_LOG_TYPE_DEBUG, "Top-level specifier fetching 'communication safety sending restricted' flag from viewmodel: %@", &v4, 0xCu);
}

@end
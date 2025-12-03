@interface STEnableRemoteManagementGroupSpecifierProvider
+ (id)providerWithCoordinator:(id)coordinator rootViewController:(id)controller;
- (BOOL)isHidden;
- (STEnableRemoteManagementGroupSpecifierProvider)init;
- (UIViewController)rootViewController;
- (id)enableRemoteManagementButtonName;
- (id)enableRemoteManagementFooterText;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info;
- (void)setCoordinator:(id)coordinator;
- (void)showChildOnboardingFlow:(id)flow;
@end

@implementation STEnableRemoteManagementGroupSpecifierProvider

+ (id)providerWithCoordinator:(id)coordinator rootViewController:(id)controller
{
  controllerCopy = controller;
  v6 = [(STRootGroupSpecifierProvider *)STEnableRemoteManagementGroupSpecifierProvider providerWithCoordinator:coordinator];
  [v6 setRootViewController:controllerCopy];

  return v6;
}

- (STEnableRemoteManagementGroupSpecifierProvider)init
{
  v13.receiver = self;
  v13.super_class = STEnableRemoteManagementGroupSpecifierProvider;
  v2 = [(STGroupSpecifierProvider *)&v13 init];
  if (v2)
  {
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    v4 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25E68]] != 2;

    v5 = +[STScreenTimeSettingsUIBundle bundle];
    v6 = [v5 localizedStringForKey:@"EnableRemoteManagementGenericButtonName" value:&stru_28766E5A8 table:0];

    v7 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v6 target:v2 set:0 get:0 detail:0 cell:13 edit:0];
    enableRemoteManagementSpecifier = v2->_enableRemoteManagementSpecifier;
    v2->_enableRemoteManagementSpecifier = v7;

    [(PSSpecifier *)v2->_enableRemoteManagementSpecifier setButtonAction:sel_showChildOnboardingFlow_];
    v9 = [MEMORY[0x277CCABB0] numberWithInt:v4];
    [(PSSpecifier *)v2->_enableRemoteManagementSpecifier setObject:v9 forKeyedSubscript:*MEMORY[0x277D3FF38]];

    mutableSpecifiers = [(STGroupSpecifierProvider *)v2 mutableSpecifiers];
    [mutableSpecifiers addObject:v2->_enableRemoteManagementSpecifier];
    mEMORY[0x277D262A0]2 = [MEMORY[0x277D262A0] sharedConnection];
    [mEMORY[0x277D262A0]2 registerObserver:v2];
  }

  return v2;
}

- (void)dealloc
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  [mEMORY[0x277D262A0] unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = STEnableRemoteManagementGroupSpecifierProvider;
  [(STGroupSpecifierProvider *)&v4 dealloc];
}

- (void)setCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  [coordinator removeObserver:self forKeyPath:@"viewModel.isRemoteUnmanagedChild" context:"STEnableRemoteManagementGroupSpecifierProviderObservationContext"];
  [coordinator removeObserver:self forKeyPath:@"viewModel.me" context:"STEnableRemoteManagementGroupSpecifierProviderObservationContext"];
  v6.receiver = self;
  v6.super_class = STEnableRemoteManagementGroupSpecifierProvider;
  [(STRootGroupSpecifierProvider *)&v6 setCoordinator:coordinatorCopy];
  [coordinatorCopy addObserver:self forKeyPath:@"viewModel.me" options:4 context:"STEnableRemoteManagementGroupSpecifierProviderObservationContext"];
  [coordinatorCopy addObserver:self forKeyPath:@"viewModel.isRemoteUnmanagedChild" options:4 context:"STEnableRemoteManagementGroupSpecifierProviderObservationContext"];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  if (context == "STEnableRemoteManagementGroupSpecifierProviderObservationContext")
  {
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    v12 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25E68]];

    if ([pathCopy isEqualToString:@"viewModel.isRemoteUnmanagedChild"])
    {
      if (v12 == 2)
      {
        [(STGroupSpecifierProvider *)self setIsHidden:0];
        goto LABEL_17;
      }

      coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
      viewModel = [coordinator viewModel];
      -[STGroupSpecifierProvider setIsHidden:](self, "setIsHidden:", [viewModel isRemoteUnmanagedChild] ^ 1);
    }

    else
    {
      if (![pathCopy isEqualToString:@"viewModel.me"])
      {
        goto LABEL_17;
      }

      coordinator = [(STEnableRemoteManagementGroupSpecifierProvider *)self enableRemoteManagementButtonName];
      viewModel = [(STEnableRemoteManagementGroupSpecifierProvider *)self enableRemoteManagementSpecifier];
      name = [viewModel name];
      if (([name isEqualToString:coordinator] & 1) == 0)
      {
        [viewModel setName:coordinator];
      }

      if (v12 == 2)
      {
        v16 = +[STScreenTimeSettingsUIBundle bundle];
        enableRemoteManagementFooterText = [v16 localizedStringForKey:@"ScreenTimeRestrictedFooterText" value:&stru_28766E5A8 table:0];
      }

      else
      {
        enableRemoteManagementFooterText = [(STEnableRemoteManagementGroupSpecifierProvider *)self enableRemoteManagementFooterText];
      }

      groupSpecifier = [(STGroupSpecifierProvider *)self groupSpecifier];
      v19 = *MEMORY[0x277D3FF88];
      v20 = [groupSpecifier objectForKeyedSubscript:*MEMORY[0x277D3FF88]];
      if (([v20 isEqualToString:enableRemoteManagementFooterText] & 1) == 0)
      {
        [groupSpecifier setObject:enableRemoteManagementFooterText forKeyedSubscript:v19];
        [(STGroupSpecifierProvider *)self reloadSpecifier:groupSpecifier animated:1];
      }
    }

    goto LABEL_17;
  }

  v21.receiver = self;
  v21.super_class = STEnableRemoteManagementGroupSpecifierProvider;
  [(STEnableRemoteManagementGroupSpecifierProvider *)&v21 observeValueForKeyPath:pathCopy ofObject:object change:change context:context];
LABEL_17:
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v6 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25E68]];

  if (v6 == 2)
  {
    v7 = +[STScreenTimeSettingsUIBundle bundle];
    enableRemoteManagementFooterText = [v7 localizedStringForKey:@"ScreenTimeRestrictedFooterText" value:&stru_28766E5A8 table:0];
  }

  else
  {
    enableRemoteManagementFooterText = [(STEnableRemoteManagementGroupSpecifierProvider *)self enableRemoteManagementFooterText];
  }

  groupSpecifier = [(STGroupSpecifierProvider *)self groupSpecifier];
  v9 = *MEMORY[0x277D3FF88];
  v10 = [groupSpecifier objectForKeyedSubscript:*MEMORY[0x277D3FF88]];
  if (([v10 isEqualToString:enableRemoteManagementFooterText] & 1) == 0)
  {
    [groupSpecifier setObject:enableRemoteManagementFooterText forKeyedSubscript:v9];
    [(STGroupSpecifierProvider *)self reloadSpecifier:groupSpecifier animated:1];
  }

  enableRemoteManagementSpecifier = [(STEnableRemoteManagementGroupSpecifierProvider *)self enableRemoteManagementSpecifier];
  v12 = *MEMORY[0x277D3FF38];
  v13 = [enableRemoteManagementSpecifier objectForKeyedSubscript:*MEMORY[0x277D3FF38]];
  if ((((v6 == 2) ^ [v13 BOOLValue]) & 1) == 0)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithInt:v6 != 2];
    [enableRemoteManagementSpecifier setObject:v14 forKeyedSubscript:v12];

    [(STGroupSpecifierProvider *)self reloadSpecifier:enableRemoteManagementSpecifier animated:1];
  }
}

- (id)enableRemoteManagementButtonName
{
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  viewModel = [coordinator viewModel];
  v4 = [viewModel me];

  v5 = +[STScreenTimeSettingsUIBundle bundle];
  name = [v4 name];

  if (name)
  {
    v7 = objc_opt_new();
    name2 = [v4 name];
    v9 = [v7 personNameComponentsFromString:name2];

    givenName = [v9 givenName];
    if ([givenName length])
    {
      v11 = MEMORY[0x277CCACA8];
      v12 = [v5 localizedStringForKey:@"EnableRemoteManagementButtonName" value:&stru_28766E5A8 table:0];
      v13 = [v11 localizedStringWithFormat:v12, givenName];

      goto LABEL_6;
    }
  }

  v13 = [v5 localizedStringForKey:@"EnableRemoteManagementGenericButtonName" value:&stru_28766E5A8 table:0];
LABEL_6:

  return v13;
}

- (id)enableRemoteManagementFooterText
{
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  viewModel = [coordinator viewModel];
  v4 = [viewModel me];

  v5 = +[STScreenTimeSettingsUIBundle bundle];
  name = [v4 name];

  if (name)
  {
    v7 = objc_opt_new();
    name2 = [v4 name];
    v9 = [v7 personNameComponentsFromString:name2];

    givenName = [v9 givenName];
    if ([givenName length])
    {
      v11 = MEMORY[0x277CCACA8];
      v12 = [v5 localizedStringForKey:@"EnableRemoteManagementFooterText" value:&stru_28766E5A8 table:0];
      v13 = [v11 localizedStringWithFormat:v12, givenName];

      goto LABEL_6;
    }
  }

  v13 = [v5 localizedStringForKey:@"EnableRemoteManagementGenericFooterText" value:&stru_28766E5A8 table:0];
LABEL_6:

  return v13;
}

- (void)showChildOnboardingFlow:(id)flow
{
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  [coordinator setHasShownMiniBuddy:1];
  v5 = [[STIntroductionController alloc] initWithNewUserRootViewModelCoordinator:coordinator];
  viewModel = [coordinator viewModel];
  v7 = [viewModel me];
  isRemoteUser = [v7 isRemoteUser];

  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __74__STEnableRemoteManagementGroupSpecifierProvider_showChildOnboardingFlow___block_invoke;
  v14 = &unk_279B7CD30;
  v15 = coordinator;
  v16 = isRemoteUser;
  v9 = coordinator;
  [(STIntroductionController *)v5 setCompletionBlock:&v11];
  v10 = [(STEnableRemoteManagementGroupSpecifierProvider *)self rootViewController:v11];
  [(STIntroductionController *)v5 presentOverViewController:v10];
}

void __74__STEnableRemoteManagementGroupSpecifierProvider_showChildOnboardingFlow___block_invoke(uint64_t a1, int a2, void *a3)
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
    v10[2] = __74__STEnableRemoteManagementGroupSpecifierProvider_showChildOnboardingFlow___block_invoke_2;
    v10[3] = &unk_279B7CD08;
    v13 = *(a1 + 40);
    v11 = v6;
    v12 = *(a1 + 32);
    [v7 enableManagementWithPIN:v8 recoveryAltDSID:v9 completionHandler:v10];
  }
}

void __74__STEnableRemoteManagementGroupSpecifierProvider_showChildOnboardingFlow___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[STUILog budgets];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __74__STEnableRemoteManagementGroupSpecifierProvider_showChildOnboardingFlow___block_invoke_2_cold_1(v3, v4);
    }
  }

  if ((*(a1 + 48) & 1) != 0 || [*(a1 + 32) deviceForChild])
  {
    [*(a1 + 40) applyIntroductionViewModel:*(a1 + 32) withCompletionHandler:0];
  }
}

- (BOOL)isHidden
{
  v3.receiver = self;
  v3.super_class = STEnableRemoteManagementGroupSpecifierProvider;
  return [(STGroupSpecifierProvider *)&v3 isHidden];
}

- (UIViewController)rootViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_rootViewController);

  return WeakRetained;
}

void __74__STEnableRemoteManagementGroupSpecifierProvider_showChildOnboardingFlow___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_264BA2000, a2, OS_LOG_TYPE_FAULT, "failed to set management enabled: %{public}@", &v2, 0xCu);
}

@end
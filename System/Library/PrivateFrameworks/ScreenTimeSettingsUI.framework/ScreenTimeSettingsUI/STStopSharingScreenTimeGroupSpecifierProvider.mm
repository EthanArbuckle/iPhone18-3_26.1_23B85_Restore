@interface STStopSharingScreenTimeGroupSpecifierProvider
+ (id)providerWithCoordinator:(id)coordinator isRootView:(BOOL)view;
- (STStopSharingScreenTimeGroupSpecifierProvider)init;
- (id)stopSharingScreenTimeButtonName;
- (id)stopSharingScreenTimeConfirmationPrompt;
- (id)stopSharingScreenTimeFooterText;
- (void)_updateHiddenState;
- (void)confirmStopSharingScreenTime:(id)time;
- (void)dealloc;
- (void)disableManagement:(id)management;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setCoordinator:(id)coordinator;
- (void)updateStopSharingScreenTimeSpecifier;
@end

@implementation STStopSharingScreenTimeGroupSpecifierProvider

+ (id)providerWithCoordinator:(id)coordinator isRootView:(BOOL)view
{
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___STStopSharingScreenTimeGroupSpecifierProvider;
  v5 = objc_msgSendSuper2(&v7, sel_providerWithCoordinator_, coordinator);
  v5[48] = view;
  [v5 _updateHiddenState];

  return v5;
}

- (STStopSharingScreenTimeGroupSpecifierProvider)init
{
  v12.receiver = self;
  v12.super_class = STStopSharingScreenTimeGroupSpecifierProvider;
  v2 = [(STGroupSpecifierProvider *)&v12 init];
  v3 = v2;
  if (v2)
  {
    [(STGroupSpecifierProvider *)v2 setIsHidden:1];
    v4 = +[STScreenTimeSettingsUIBundle bundle];
    v5 = [v4 localizedStringForKey:@"StopSharingScreenTimeButtonName" value:&stru_28766E5A8 table:0];

    v6 = [MEMORY[0x277D3FAD8] deleteButtonSpecifierWithName:v5 target:v3 action:sel_confirmStopSharingScreenTime_];
    [v6 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
    [v6 setEditPaneClass:{+[STDevicePINFactory devicePINPaneForPlatform](STDevicePINFactory, "devicePINPaneForPlatform")}];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v6 setObject:v8 forKeyedSubscript:*MEMORY[0x277D400B8]];

    [v6 setObject:&unk_28769D598 forKeyedSubscript:*MEMORY[0x277D401C0]];
    [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:0x287675A28];
    [v6 setObject:&unk_28769D5B0 forKeyedSubscript:*MEMORY[0x277D3FD78]];
    [(STStopSharingScreenTimeGroupSpecifierProvider *)v3 setStopSharingScreenTimeSpecifier:v6];
    mutableSpecifiers = [(STGroupSpecifierProvider *)v3 mutableSpecifiers];
    [mutableSpecifiers addObject:v6];
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    [mEMORY[0x277D262A0] registerObserver:v3];
  }

  return v3;
}

- (void)dealloc
{
  v5.receiver = self;
  v5.super_class = STStopSharingScreenTimeGroupSpecifierProvider;
  [(STRootGroupSpecifierProvider *)&v5 invalidate];
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  [mEMORY[0x277D262A0] unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = STStopSharingScreenTimeGroupSpecifierProvider;
  [(STGroupSpecifierProvider *)&v4 dealloc];
}

- (void)setCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  [coordinator removeObserver:self forKeyPath:@"viewModel.canStopSharingScreenTime" context:@"STStopSharingScreenTimeGroupSpecifierProviderObservationContext"];
  [coordinator removeObserver:self forKeyPath:@"viewModel.me.isRemoteUser" context:@"STStopSharingScreenTimeGroupSpecifierProviderObservationContext"];
  v6.receiver = self;
  v6.super_class = STStopSharingScreenTimeGroupSpecifierProvider;
  [(STRootGroupSpecifierProvider *)&v6 setCoordinator:coordinatorCopy];
  [coordinatorCopy addObserver:self forKeyPath:@"viewModel.canStopSharingScreenTime" options:4 context:@"STStopSharingScreenTimeGroupSpecifierProviderObservationContext"];
  [coordinatorCopy addObserver:self forKeyPath:@"viewModel.me.isRemoteUser" options:4 context:@"STStopSharingScreenTimeGroupSpecifierProviderObservationContext"];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  if (context == @"STStopSharingScreenTimeGroupSpecifierProviderObservationContext")
  {
    [(STRootGroupSpecifierProvider *)self coordinator];

    if ([pathCopy isEqualToString:@"viewModel.canStopSharingScreenTime"])
    {
      [(STStopSharingScreenTimeGroupSpecifierProvider *)self _updateHiddenState];
    }

    else
    {
      [(STRootGroupSpecifierProvider *)self coordinator];

      if ([pathCopy isEqualToString:@"viewModel.me.isRemoteUser"])
      {
        [(STStopSharingScreenTimeGroupSpecifierProvider *)self updateStopSharingScreenTimeSpecifier];
      }
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = STStopSharingScreenTimeGroupSpecifierProvider;
    [(STStopSharingScreenTimeGroupSpecifierProvider *)&v11 observeValueForKeyPath:pathCopy ofObject:object change:change context:context];
  }
}

- (void)_updateHiddenState
{
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  viewModel = [coordinator viewModel];

  canStopSharingScreenTime = [viewModel canStopSharingScreenTime];
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v6 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25E68]];

  if (_os_feature_enabled_impl() && ([viewModel me], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isRemoteUser"), v7, v8) && -[STStopSharingScreenTimeGroupSpecifierProvider isRootView](self, "isRootView"))
  {
    v9 = 1;
  }

  else if (v6 == 2)
  {
    v9 = 1;
  }

  else
  {
    v9 = canStopSharingScreenTime ^ 1u;
  }

  [(STGroupSpecifierProvider *)self setIsHidden:v9];
}

- (void)confirmStopSharingScreenTime:(id)time
{
  v12[4] = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  v5 = +[STScreenTimeSettingsUIBundle bundle];
  v11[0] = *MEMORY[0x277D3FE98];
  stopSharingScreenTimeButtonName = [(STStopSharingScreenTimeGroupSpecifierProvider *)self stopSharingScreenTimeButtonName];
  v12[0] = stopSharingScreenTimeButtonName;
  v11[1] = *MEMORY[0x277D3FE90];
  stopSharingScreenTimeConfirmationPrompt = [(STStopSharingScreenTimeGroupSpecifierProvider *)self stopSharingScreenTimeConfirmationPrompt];
  v12[1] = stopSharingScreenTimeConfirmationPrompt;
  v11[2] = *MEMORY[0x277D3FE88];
  stopSharingScreenTimeButtonName2 = [(STStopSharingScreenTimeGroupSpecifierProvider *)self stopSharingScreenTimeButtonName];
  v12[2] = stopSharingScreenTimeButtonName2;
  v11[3] = *MEMORY[0x277D3FE78];
  v9 = [v5 localizedStringForKey:@"ConfirmationButtonCancel" value:&stru_28766E5A8 table:0];
  v12[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];
  [v4 setupWithDictionary:v10];

  [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FE80]];
  [v4 setTarget:self];
  [v4 setConfirmationAction:sel_disableManagement_];
  [(STGroupSpecifierProvider *)self showConfirmationViewForSpecifier:v4];
}

- (id)stopSharingScreenTimeConfirmationPrompt
{
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  viewModel = [coordinator viewModel];
  v4 = [viewModel me];

  v5 = +[STScreenTimeSettingsUIBundle bundle];
  if ([v4 isRemoteUser])
  {
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
        v12 = [v5 localizedStringForKey:@"StopSharingScreenTimeRemoteFooterText" value:&stru_28766E5A8 table:0];
        v13 = [v11 localizedStringWithFormat:v12, givenName];

        goto LABEL_9;
      }
    }

    v14 = @"StopSharingScreenTimeRemoteGenericFooterText";
  }

  else
  {
    v14 = @"StopSharingScreenTimeFooterText";
  }

  v13 = [v5 localizedStringForKey:v14 value:&stru_28766E5A8 table:0];
LABEL_9:

  return v13;
}

- (void)updateStopSharingScreenTimeSpecifier
{
  stopSharingScreenTimeSpecifier = [(STStopSharingScreenTimeGroupSpecifierProvider *)self stopSharingScreenTimeSpecifier];
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  viewModel = [coordinator viewModel];
  v5 = [viewModel me];
  isRemoteUser = [v5 isRemoteUser];

  if (isRemoteUser)
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [stopSharingScreenTimeSpecifier setObject:v8 forKeyedSubscript:*MEMORY[0x277D400B8]];

    [stopSharingScreenTimeSpecifier setObject:&unk_28769D598 forKeyedSubscript:*MEMORY[0x277D401C0]];
    [stopSharingScreenTimeSpecifier setObject:MEMORY[0x277CBEC38] forKeyedSubscript:0x287675A28];
  }

  else
  {
    [stopSharingScreenTimeSpecifier removePropertyForKey:*MEMORY[0x277D400B8]];
    [stopSharingScreenTimeSpecifier removePropertyForKey:*MEMORY[0x277D401C0]];
    [stopSharingScreenTimeSpecifier removePropertyForKey:0x287675A28];
  }

  stopSharingScreenTimeButtonName = [(STStopSharingScreenTimeGroupSpecifierProvider *)self stopSharingScreenTimeButtonName];
  name = [stopSharingScreenTimeSpecifier name];
  if (([name isEqualToString:stopSharingScreenTimeButtonName] & 1) == 0)
  {
    [stopSharingScreenTimeSpecifier setName:stopSharingScreenTimeButtonName];
  }

  stopSharingScreenTimeFooterText = [(STStopSharingScreenTimeGroupSpecifierProvider *)self stopSharingScreenTimeFooterText];
  groupSpecifier = [(STGroupSpecifierProvider *)self groupSpecifier];
  v13 = *MEMORY[0x277D3FF88];
  v14 = [groupSpecifier objectForKeyedSubscript:*MEMORY[0x277D3FF88]];
  if (([v14 isEqualToString:stopSharingScreenTimeFooterText] & 1) == 0)
  {
    [groupSpecifier setObject:stopSharingScreenTimeFooterText forKeyedSubscript:v13];
    [(STGroupSpecifierProvider *)self reloadSpecifier:groupSpecifier animated:1];
  }
}

- (id)stopSharingScreenTimeButtonName
{
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  viewModel = [coordinator viewModel];
  v4 = [viewModel me];

  LOBYTE(viewModel) = [v4 isRemoteUser];
  v5 = +[STScreenTimeSettingsUIBundle bundle];
  if (viewModel)
  {
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
        v12 = [v5 localizedStringForKey:@"StopSharingScreenTimeRemoteButtonName" value:&stru_28766E5A8 table:0];
        v13 = [v11 localizedStringWithFormat:v12, givenName];

        goto LABEL_9;
      }
    }

    v14 = @"StopSharingScreenTimeRemoteGenericButtonName";
  }

  else
  {
    v14 = @"StopSharingScreenTimeButtonName";
  }

  v13 = [v5 localizedStringForKey:v14 value:&stru_28766E5A8 table:0];
LABEL_9:

  return v13;
}

- (id)stopSharingScreenTimeFooterText
{
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  viewModel = [coordinator viewModel];
  v4 = [viewModel me];

  LOBYTE(viewModel) = [v4 isRemoteUser];
  v5 = +[STScreenTimeSettingsUIBundle bundle];
  if (viewModel)
  {
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
        v12 = [v5 localizedStringForKey:@"StopSharingScreenTimeRemoteFooterText" value:&stru_28766E5A8 table:0];
        v13 = [v11 localizedStringWithFormat:v12, givenName];

        goto LABEL_9;
      }
    }

    v14 = @"StopSharingScreenTimeRemoteGenericFooterText";
  }

  else
  {
    v14 = @"StopSharingScreenTimeFooterText";
  }

  v13 = [v5 localizedStringForKey:v14 value:&stru_28766E5A8 table:0];
LABEL_9:

  return v13;
}

- (void)disableManagement:(id)management
{
  managementCopy = management;
  objc_initWeak(&location, self);
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__STStopSharingScreenTimeGroupSpecifierProvider_disableManagement___block_invoke;
  v6[3] = &unk_279B7DE80;
  objc_copyWeak(&v7, &location);
  [coordinator setManagementEnabled:0 completionHandler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __67__STStopSharingScreenTimeGroupSpecifierProvider_disableManagement___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __67__STStopSharingScreenTimeGroupSpecifierProvider_disableManagement___block_invoke_cold_1(v3);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = [WeakRetained isRootView];

    if ((v5 & 1) == 0)
    {
      v6 = objc_loadWeakRetained((a1 + 32));
      v7 = [v6 delegate];
      v8 = [v7 navigationController];
      v9 = [v8 popViewControllerAnimated:1];
    }
  }
}

void __67__STStopSharingScreenTimeGroupSpecifierProvider_disableManagement___block_invoke_cold_1(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138543362;
  v2 = a1;
  _os_log_error_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to set management disabled: %{public}@", &v1, 0xCu);
}

@end
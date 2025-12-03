@interface STDisableScreenTimeGroupSpecifierProvider
- (STDisableScreenTimeGroupSpecifierProvider)init;
- (id)disableScreenTimeConfirmationPrompt;
- (id)passcodeGatedDeleteButtonSpecifierWithName:(id)name action:(SEL)action;
- (void)confirmDisableScreenTime:(id)time;
- (void)disableScreenTime:(id)time;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setCoordinator:(id)coordinator;
- (void)updateDisableScreenTimeSpecifier;
@end

@implementation STDisableScreenTimeGroupSpecifierProvider

- (id)passcodeGatedDeleteButtonSpecifierWithName:(id)name action:(SEL)action
{
  v4 = [MEMORY[0x277D3FAD8] deleteButtonSpecifierWithName:name target:self action:action];
  [v4 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
  [v4 setEditPaneClass:{+[STDevicePINFactory devicePINPaneForPlatform](STDevicePINFactory, "devicePINPaneForPlatform")}];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 setObject:v6 forKeyedSubscript:*MEMORY[0x277D400B8]];

  [v4 setObject:&unk_28769D268 forKeyedSubscript:*MEMORY[0x277D401C0]];
  [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:0x287675A28];
  [v4 setObject:&unk_28769D280 forKeyedSubscript:*MEMORY[0x277D3FD78]];
  if ([MEMORY[0x277D75128] isRunningInStoreDemoMode])
  {
    [v4 setButtonAction:sel_showStoreDemoAlert];
  }

  return v4;
}

- (STDisableScreenTimeGroupSpecifierProvider)init
{
  v10.receiver = self;
  v10.super_class = STDisableScreenTimeGroupSpecifierProvider;
  v2 = [(STGroupSpecifierProvider *)&v10 init];
  v3 = v2;
  if (v2)
  {
    [(STGroupSpecifierProvider *)v2 setIsHidden:1];
    v4 = +[STScreenTimeSettingsUIBundle bundle];
    v5 = [v4 localizedStringForKey:@"DisableScreenTimeButtonName" value:&stru_28766E5A8 table:0];

    v6 = [(STDisableScreenTimeGroupSpecifierProvider *)v3 passcodeGatedDeleteButtonSpecifierWithName:v5 action:sel_confirmDisableScreenTime_];
    [(STDisableScreenTimeGroupSpecifierProvider *)v3 setDisableScreenTimeSpecifier:v6];

    mutableSpecifiers = [(STGroupSpecifierProvider *)v3 mutableSpecifiers];
    disableScreenTimeSpecifier = [(STDisableScreenTimeGroupSpecifierProvider *)v3 disableScreenTimeSpecifier];
    [mutableSpecifiers addObject:disableScreenTimeSpecifier];
  }

  return v3;
}

- (void)setCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  v6 = coordinator;
  if (coordinator != coordinatorCopy)
  {
    [coordinator removeObserver:self forKeyPath:@"viewModel.canStopScreenTime" context:"STDisableScreenTimeGroupSpecifierProviderObservationContext"];
    [v6 removeObserver:self forKeyPath:@"viewModel.canStopScreenTimeWithoutPasscode" context:"STDisableScreenTimeGroupSpecifierProviderObservationContext"];
    v7.receiver = self;
    v7.super_class = STDisableScreenTimeGroupSpecifierProvider;
    [(STRootGroupSpecifierProvider *)&v7 setCoordinator:coordinatorCopy];
    [coordinatorCopy addObserver:self forKeyPath:@"viewModel.canStopScreenTime" options:4 context:"STDisableScreenTimeGroupSpecifierProviderObservationContext"];
    [coordinatorCopy addObserver:self forKeyPath:@"viewModel.canStopScreenTimeWithoutPasscode" options:4 context:"STDisableScreenTimeGroupSpecifierProviderObservationContext"];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  if (context == "STDisableScreenTimeGroupSpecifierProviderObservationContext")
  {
    [(STRootGroupSpecifierProvider *)self coordinator];

    v11 = [pathCopy isEqualToString:@"viewModel.canStopScreenTime"];
    coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
    v13 = coordinator;
    if (v11)
    {
      viewModel = [coordinator viewModel];
      -[STGroupSpecifierProvider setIsHidden:](self, "setIsHidden:", [viewModel canStopScreenTime] ^ 1);
    }

    else
    {

      if ([pathCopy isEqualToString:@"viewModel.canStopScreenTimeWithoutPasscode"])
      {
        [(STDisableScreenTimeGroupSpecifierProvider *)self updateDisableScreenTimeSpecifier];
      }
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = STDisableScreenTimeGroupSpecifierProvider;
    [(STDisableScreenTimeGroupSpecifierProvider *)&v15 observeValueForKeyPath:pathCopy ofObject:object change:change context:context];
  }
}

- (void)confirmDisableScreenTime:(id)time
{
  v12[4] = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  v5 = +[STScreenTimeSettingsUIBundle bundle];
  v11[0] = *MEMORY[0x277D3FE98];
  v6 = [v5 localizedStringForKey:@"DisableScreenTimeButtonName" value:&stru_28766E5A8 table:0];
  v12[0] = v6;
  v11[1] = *MEMORY[0x277D3FE90];
  disableScreenTimeConfirmationPrompt = [(STDisableScreenTimeGroupSpecifierProvider *)self disableScreenTimeConfirmationPrompt];
  v12[1] = disableScreenTimeConfirmationPrompt;
  v11[2] = *MEMORY[0x277D3FE88];
  v8 = [v5 localizedStringForKey:@"DisableScreenTimeButtonName" value:&stru_28766E5A8 table:0];
  v12[2] = v8;
  v11[3] = *MEMORY[0x277D3FE78];
  v9 = [v5 localizedStringForKey:@"ConfirmationButtonCancel" value:&stru_28766E5A8 table:0];
  v12[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];
  [v4 setupWithDictionary:v10];

  [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FE80]];
  [v4 setTarget:self];
  [v4 setConfirmationAction:sel_disableScreenTime_];
  [(STGroupSpecifierProvider *)self showConfirmationViewForSpecifier:v4];
}

- (void)updateDisableScreenTimeSpecifier
{
  disableScreenTimeSpecifier = [(STDisableScreenTimeGroupSpecifierProvider *)self disableScreenTimeSpecifier];
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  viewModel = [coordinator viewModel];
  canStopScreenTimeWithoutPasscode = [viewModel canStopScreenTimeWithoutPasscode];

  if (canStopScreenTimeWithoutPasscode)
  {
    [disableScreenTimeSpecifier removePropertyForKey:*MEMORY[0x277D400B8]];
    [disableScreenTimeSpecifier removePropertyForKey:*MEMORY[0x277D401C0]];
    [disableScreenTimeSpecifier removePropertyForKey:0x287675A28];
  }

  else
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [disableScreenTimeSpecifier setObject:v7 forKeyedSubscript:*MEMORY[0x277D400B8]];

    [disableScreenTimeSpecifier setObject:&unk_28769D268 forKeyedSubscript:*MEMORY[0x277D401C0]];
    [disableScreenTimeSpecifier setObject:MEMORY[0x277CBEC38] forKeyedSubscript:0x287675A28];
  }
}

- (id)disableScreenTimeConfirmationPrompt
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
        v12 = [v5 localizedStringForKey:@"DisableScreenTimeRemoteConfirmPrompt" value:&stru_28766E5A8 table:0];
        v13 = [v11 localizedStringWithFormat:v12, givenName];

        goto LABEL_9;
      }
    }

    v14 = @"DisableScreenTimeRemoteGenericConfirmPrompt";
  }

  else
  {
    v14 = @"DisableScreenTimeConfirmPrompt";
  }

  v13 = [v5 localizedStringForKey:v14 value:&stru_28766E5A8 table:0];
LABEL_9:

  return v13;
}

- (void)disableScreenTime:(id)time
{
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  [coordinator setScreenTimeEnabled:0 completionHandler:&__block_literal_global_8];
}

void __63__STDisableScreenTimeGroupSpecifierProvider_disableScreenTime___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = +[STUILog persistence];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __85__STDisableAppAndWebsiteActivityGroupSpecifierProvider_disableAppAndWebsiteActivity___block_invoke_cold_1(v2, v3);
    }
  }
}

@end
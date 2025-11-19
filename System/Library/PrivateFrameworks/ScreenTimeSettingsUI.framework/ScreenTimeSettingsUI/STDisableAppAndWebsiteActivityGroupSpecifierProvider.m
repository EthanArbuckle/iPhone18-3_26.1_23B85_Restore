@interface STDisableAppAndWebsiteActivityGroupSpecifierProvider
+ (id)providerWithCoordinator:(id)a3 isRootView:(BOOL)a4;
- (STDisableAppAndWebsiteActivityGroupSpecifierProvider)init;
- (id)disableAppAndWebsiteActivityConfirmationPrompt;
- (id)passcodeGatedDeleteButtonSpecifierWithName:(id)a3 action:(SEL)a4;
- (void)_updateHiddenState;
- (void)confirmDisableAppAndWebsiteActivity:(id)a3;
- (void)disableAppAndWebsiteActivity:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setCoordinator:(id)a3;
- (void)updateDisableAppAndWebsiteActivitySpecifier;
@end

@implementation STDisableAppAndWebsiteActivityGroupSpecifierProvider

+ (id)providerWithCoordinator:(id)a3 isRootView:(BOOL)a4
{
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___STDisableAppAndWebsiteActivityGroupSpecifierProvider;
  v5 = objc_msgSendSuper2(&v7, sel_providerWithCoordinator_, a3);
  v5[48] = a4;
  [v5 _updateHiddenState];

  return v5;
}

- (id)passcodeGatedDeleteButtonSpecifierWithName:(id)a3 action:(SEL)a4
{
  v4 = [MEMORY[0x277D3FAD8] deleteButtonSpecifierWithName:a3 target:self action:a4];
  [v4 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
  [v4 setEditPaneClass:{+[STDevicePINFactory devicePINPaneForPlatform](STDevicePINFactory, "devicePINPaneForPlatform")}];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 setObject:v6 forKeyedSubscript:*MEMORY[0x277D400B8]];

  [v4 setObject:&unk_28769D088 forKeyedSubscript:*MEMORY[0x277D401C0]];
  [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:0x287675A28];
  [v4 setObject:&unk_28769D0A0 forKeyedSubscript:*MEMORY[0x277D3FD78]];
  if ([MEMORY[0x277D75128] isRunningInStoreDemoMode])
  {
    [v4 setButtonAction:sel_showStoreDemoAlert];
  }

  return v4;
}

- (STDisableAppAndWebsiteActivityGroupSpecifierProvider)init
{
  v12.receiver = self;
  v12.super_class = STDisableAppAndWebsiteActivityGroupSpecifierProvider;
  v2 = [(STGroupSpecifierProvider *)&v12 init];
  v3 = v2;
  if (v2)
  {
    [(STGroupSpecifierProvider *)v2 setIsHidden:1];
    v4 = +[STScreenTimeSettingsUIBundle bundle];
    v5 = [v4 localizedStringForKey:@"DisableAppAndWebsiteActivityFooterText" value:&stru_28766E5A8 table:0];
    v6 = [(STGroupSpecifierProvider *)v3 groupSpecifier];
    [v6 setObject:v5 forKeyedSubscript:*MEMORY[0x277D3FF88]];

    v7 = [v4 localizedStringForKey:@"DisableAppAndWebsiteActivityButtonName" value:&stru_28766E5A8 table:0];
    v8 = [(STDisableAppAndWebsiteActivityGroupSpecifierProvider *)v3 passcodeGatedDeleteButtonSpecifierWithName:v7 action:sel_confirmDisableAppAndWebsiteActivity_];
    [(STDisableAppAndWebsiteActivityGroupSpecifierProvider *)v3 setDisableAppAndWebsiteActivitySpecifier:v8];

    v9 = [(STGroupSpecifierProvider *)v3 mutableSpecifiers];
    v10 = [(STDisableAppAndWebsiteActivityGroupSpecifierProvider *)v3 disableAppAndWebsiteActivitySpecifier];
    [v9 addObject:v10];
  }

  return v3;
}

- (void)setCoordinator:(id)a3
{
  v4 = a3;
  v5 = [(STRootGroupSpecifierProvider *)self coordinator];
  v6 = v5;
  if (v5 != v4)
  {
    [v5 removeObserver:self forKeyPath:@"viewModel.canStopScreenTime" context:"STDisableAppAndWebsiteActivityGroupSpecifierProviderObservationContext"];
    [v6 removeObserver:self forKeyPath:@"viewModel.canStopScreenTimeWithoutPasscode" context:"STDisableAppAndWebsiteActivityGroupSpecifierProviderObservationContext"];
    v7.receiver = self;
    v7.super_class = STDisableAppAndWebsiteActivityGroupSpecifierProvider;
    [(STRootGroupSpecifierProvider *)&v7 setCoordinator:v4];
    [v4 addObserver:self forKeyPath:@"viewModel.canStopScreenTime" options:4 context:"STDisableAppAndWebsiteActivityGroupSpecifierProviderObservationContext"];
    [v4 addObserver:self forKeyPath:@"viewModel.canStopScreenTimeWithoutPasscode" options:4 context:"STDisableAppAndWebsiteActivityGroupSpecifierProviderObservationContext"];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  if (a6 == "STDisableAppAndWebsiteActivityGroupSpecifierProviderObservationContext")
  {
    [(STRootGroupSpecifierProvider *)self coordinator];

    if ([v10 isEqualToString:@"viewModel.canStopScreenTime"])
    {
      [(STDisableAppAndWebsiteActivityGroupSpecifierProvider *)self _updateHiddenState];
    }

    else
    {
      [(STRootGroupSpecifierProvider *)self coordinator];

      if ([v10 isEqualToString:@"viewModel.canStopScreenTimeWithoutPasscode"])
      {
        [(STDisableAppAndWebsiteActivityGroupSpecifierProvider *)self updateDisableAppAndWebsiteActivitySpecifier];
      }
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = STDisableAppAndWebsiteActivityGroupSpecifierProvider;
    [(STDisableAppAndWebsiteActivityGroupSpecifierProvider *)&v11 observeValueForKeyPath:v10 ofObject:a4 change:a5 context:a6];
  }
}

- (void)_updateHiddenState
{
  v3 = [(STRootGroupSpecifierProvider *)self coordinator];
  v8 = [v3 viewModel];

  v4 = [v8 canStopScreenTime];
  if (_os_feature_enabled_impl() && ([v8 me], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isRemoteUser"), v5, v6) && -[STDisableAppAndWebsiteActivityGroupSpecifierProvider isRootView](self, "isRootView"))
  {
    v7 = 1;
  }

  else
  {
    v7 = v4 ^ 1u;
  }

  [(STGroupSpecifierProvider *)self setIsHidden:v7];
}

- (void)confirmDisableAppAndWebsiteActivity:(id)a3
{
  v12[4] = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  v5 = +[STScreenTimeSettingsUIBundle bundle];
  v11[0] = *MEMORY[0x277D3FE98];
  v6 = [v5 localizedStringForKey:@"DisableAppAndWebsiteActivityButtonName" value:&stru_28766E5A8 table:0];
  v12[0] = v6;
  v11[1] = *MEMORY[0x277D3FE90];
  v7 = [(STDisableAppAndWebsiteActivityGroupSpecifierProvider *)self disableAppAndWebsiteActivityConfirmationPrompt];
  v12[1] = v7;
  v11[2] = *MEMORY[0x277D3FE88];
  v8 = [v5 localizedStringForKey:@"DisableAppAndWebsiteActivityButtonName" value:&stru_28766E5A8 table:0];
  v12[2] = v8;
  v11[3] = *MEMORY[0x277D3FE78];
  v9 = [v5 localizedStringForKey:@"ConfirmationButtonCancel" value:&stru_28766E5A8 table:0];
  v12[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];
  [v4 setupWithDictionary:v10];

  [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FE80]];
  [v4 setTarget:self];
  [v4 setConfirmationAction:sel_disableAppAndWebsiteActivity_];
  [(STGroupSpecifierProvider *)self showConfirmationViewForSpecifier:v4];
}

- (void)updateDisableAppAndWebsiteActivitySpecifier
{
  v3 = [(STDisableAppAndWebsiteActivityGroupSpecifierProvider *)self disableAppAndWebsiteActivitySpecifier];
  v4 = [(STRootGroupSpecifierProvider *)self coordinator];
  v5 = [v4 viewModel];
  v6 = [v5 canStopScreenTimeWithoutPasscode];

  if (v6)
  {
    [v3 removePropertyForKey:*MEMORY[0x277D400B8]];
    [v3 removePropertyForKey:*MEMORY[0x277D401C0]];
    [v3 removePropertyForKey:0x287675A28];
    v7 = +[STUILog persistence];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_264BA2000, v7, OS_LOG_TYPE_DEFAULT, "User can disable screen time without passcode authentication. No blueprints are configured.", v10, 2u);
    }
  }

  else
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v3 setObject:v9 forKeyedSubscript:*MEMORY[0x277D400B8]];

    [v3 setObject:&unk_28769D088 forKeyedSubscript:*MEMORY[0x277D401C0]];
    [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:0x287675A28];
  }
}

- (id)disableAppAndWebsiteActivityConfirmationPrompt
{
  v2 = [(STRootGroupSpecifierProvider *)self coordinator];
  v3 = [v2 viewModel];
  v4 = [v3 me];

  v5 = +[STScreenTimeSettingsUIBundle bundle];
  if ([v4 isRemoteUser])
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
        v12 = [v5 localizedStringForKey:@"DisableAppAndWebsiteActivityRemoteConfirmPrompt" value:&stru_28766E5A8 table:0];
        v13 = [v11 localizedStringWithFormat:v12, v10];

        goto LABEL_9;
      }
    }

    v14 = @"DisableAppAndWebsiteActivityRemoteGenericConfirmPrompt";
  }

  else
  {
    v14 = @"DisableAppAndWebsiteActivityConfirmPrompt";
  }

  v13 = [v5 localizedStringForKey:v14 value:&stru_28766E5A8 table:0];
LABEL_9:

  return v13;
}

- (void)disableAppAndWebsiteActivity:(id)a3
{
  v3 = [(STRootGroupSpecifierProvider *)self coordinator];
  [v3 setScreenTimeEnabled:0 completionHandler:&__block_literal_global_4];
}

void __85__STDisableAppAndWebsiteActivityGroupSpecifierProvider_disableAppAndWebsiteActivity___block_invoke(uint64_t a1, void *a2)
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

void __85__STDisableAppAndWebsiteActivityGroupSpecifierProvider_disableAppAndWebsiteActivity___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_264BA2000, a2, OS_LOG_TYPE_FAULT, "failed to set screen time disabled: %{public}@", &v2, 0xCu);
}

@end
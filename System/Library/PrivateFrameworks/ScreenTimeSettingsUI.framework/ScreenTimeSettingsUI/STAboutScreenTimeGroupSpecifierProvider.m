@interface STAboutScreenTimeGroupSpecifierProvider
- (STAboutScreenTimeGroupSpecifierProvider)init;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4;
- (void)setCoordinator:(id)a3;
@end

@implementation STAboutScreenTimeGroupSpecifierProvider

- (STAboutScreenTimeGroupSpecifierProvider)init
{
  v15.receiver = self;
  v15.super_class = STAboutScreenTimeGroupSpecifierProvider;
  v2 = [(STGroupSpecifierProvider *)&v15 init];
  if (v2)
  {
    v3 = +[STScreenTimeSettingsUIBundle bundle];
    v4 = [v3 localizedStringForKey:@"AboutScreenTimeTitle" value:&stru_28766E5A8 table:0];
    v5 = [v3 localizedStringForKey:@"AboutScreenTimeDetailText" value:&stru_28766E5A8 table:0];
    v6 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v4 target:v2 set:0 get:0 detail:0 cell:-1 edit:0];
    [v6 setIdentifier:@"ABOUT_SCREEN_TIME"];
    [v6 setProperty:NSClassFromString(&cfstr_Pesettingsfeat.isa) forKey:*MEMORY[0x277D3FE58]];
    [v6 setProperty:v5 forKey:*MEMORY[0x277D40160]];
    [v6 setProperty:@"com.apple.graphic-icon.screen-time" forKey:*MEMORY[0x277D3FFD8]];
    v7 = [(STGroupSpecifierProvider *)v2 mutableSpecifiers];
    [v7 addObject:v6];
    v8 = [MEMORY[0x277D262A0] sharedConnection];
    v9 = [v8 effectiveBoolValueForSetting:*MEMORY[0x277D25E68]];

    if (v9 == 2)
    {
      v10 = +[STScreenTimeSettingsUIBundle bundle];
      v11 = [v10 localizedStringForKey:@"ScreenTimeRestrictedFooterText" value:&stru_28766E5A8 table:0];

      if (v11)
      {
        v12 = [(STGroupSpecifierProvider *)v2 groupSpecifier];
        [v12 setObject:v11 forKeyedSubscript:*MEMORY[0x277D3FF88]];
      }
    }

    v13 = [MEMORY[0x277D262A0] sharedConnection];
    [v13 registerObserver:v2];
  }

  return v2;
}

- (void)dealloc
{
  v5.receiver = self;
  v5.super_class = STAboutScreenTimeGroupSpecifierProvider;
  [(STRootGroupSpecifierProvider *)&v5 invalidate];
  v3 = [MEMORY[0x277D262A0] sharedConnection];
  [v3 unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = STAboutScreenTimeGroupSpecifierProvider;
  [(STGroupSpecifierProvider *)&v4 dealloc];
}

- (void)setCoordinator:(id)a3
{
  v4 = a3;
  v5 = [(STRootGroupSpecifierProvider *)self coordinator];
  [v5 removeObserver:self forKeyPath:@"viewModel.isLocalOrRemotelyManagedUserWithScreenTimeDisabled" context:"STAboutScreenTimeGroupSpecifierObservationContext"];
  v6.receiver = self;
  v6.super_class = STAboutScreenTimeGroupSpecifierProvider;
  [(STRootGroupSpecifierProvider *)&v6 setCoordinator:v4];
  [v4 addObserver:self forKeyPath:@"viewModel.isLocalOrRemotelyManagedUserWithScreenTimeDisabled" options:4 context:"STAboutScreenTimeGroupSpecifierObservationContext"];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == "STAboutScreenTimeGroupSpecifierObservationContext")
  {
    v11 = MEMORY[0x277D262A0];
    v12 = a3;
    v13 = [v11 sharedConnection];
    v14 = [v13 effectiveBoolValueForSetting:*MEMORY[0x277D25E68]];

    v16 = [(STRootGroupSpecifierProvider *)self coordinator];
    LODWORD(v13) = [v12 isEqualToString:@"viewModel.isLocalOrRemotelyManagedUserWithScreenTimeDisabled"];

    if (v13)
    {
      if (v14 == 2)
      {
        [(STGroupSpecifierProvider *)self setIsHidden:0];
      }

      else
      {
        v15 = [v16 viewModel];
        -[STGroupSpecifierProvider setIsHidden:](self, "setIsHidden:", [v15 isLocalOrRemotelyManagedUserWithScreenTimeDisabled] ^ 1);
      }
    }
  }

  else
  {
    v17.receiver = self;
    v17.super_class = STAboutScreenTimeGroupSpecifierProvider;
    v10 = a3;
    [(STAboutScreenTimeGroupSpecifierProvider *)&v17 observeValueForKeyPath:v10 ofObject:a4 change:a5 context:a6];
  }
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4
{
  v5 = [MEMORY[0x277D262A0] sharedConnection];
  v6 = [v5 effectiveBoolValueForSetting:*MEMORY[0x277D25E68]];

  if (v6 == 2)
  {
    v7 = +[STScreenTimeSettingsUIBundle bundle];
    v13 = [v7 localizedStringForKey:@"ScreenTimeRestrictedFooterText" value:&stru_28766E5A8 table:0];
  }

  else
  {
    v13 = 0;
  }

  v8 = [(STGroupSpecifierProvider *)self groupSpecifier];
  v9 = *MEMORY[0x277D3FF88];
  v10 = [v8 objectForKeyedSubscript:*MEMORY[0x277D3FF88]];
  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = v13 == 0;
  }

  if (!v11 || (v10 ? (v12 = v13 == 0) : (v12 = 0), v12))
  {
    [v8 setObject:v13 forKeyedSubscript:v9];
    [(STGroupSpecifierProvider *)self reloadSpecifier:v8 animated:1];
  }
}

@end
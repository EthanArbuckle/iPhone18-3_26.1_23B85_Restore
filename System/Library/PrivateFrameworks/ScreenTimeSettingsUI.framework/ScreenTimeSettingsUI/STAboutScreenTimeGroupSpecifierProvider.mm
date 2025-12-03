@interface STAboutScreenTimeGroupSpecifierProvider
- (STAboutScreenTimeGroupSpecifierProvider)init;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info;
- (void)setCoordinator:(id)coordinator;
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
    mutableSpecifiers = [(STGroupSpecifierProvider *)v2 mutableSpecifiers];
    [mutableSpecifiers addObject:v6];
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    v9 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25E68]];

    if (v9 == 2)
    {
      v10 = +[STScreenTimeSettingsUIBundle bundle];
      v11 = [v10 localizedStringForKey:@"ScreenTimeRestrictedFooterText" value:&stru_28766E5A8 table:0];

      if (v11)
      {
        groupSpecifier = [(STGroupSpecifierProvider *)v2 groupSpecifier];
        [groupSpecifier setObject:v11 forKeyedSubscript:*MEMORY[0x277D3FF88]];
      }
    }

    mEMORY[0x277D262A0]2 = [MEMORY[0x277D262A0] sharedConnection];
    [mEMORY[0x277D262A0]2 registerObserver:v2];
  }

  return v2;
}

- (void)dealloc
{
  v5.receiver = self;
  v5.super_class = STAboutScreenTimeGroupSpecifierProvider;
  [(STRootGroupSpecifierProvider *)&v5 invalidate];
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  [mEMORY[0x277D262A0] unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = STAboutScreenTimeGroupSpecifierProvider;
  [(STGroupSpecifierProvider *)&v4 dealloc];
}

- (void)setCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  [coordinator removeObserver:self forKeyPath:@"viewModel.isLocalOrRemotelyManagedUserWithScreenTimeDisabled" context:"STAboutScreenTimeGroupSpecifierObservationContext"];
  v6.receiver = self;
  v6.super_class = STAboutScreenTimeGroupSpecifierProvider;
  [(STRootGroupSpecifierProvider *)&v6 setCoordinator:coordinatorCopy];
  [coordinatorCopy addObserver:self forKeyPath:@"viewModel.isLocalOrRemotelyManagedUserWithScreenTimeDisabled" options:4 context:"STAboutScreenTimeGroupSpecifierObservationContext"];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == "STAboutScreenTimeGroupSpecifierObservationContext")
  {
    v11 = MEMORY[0x277D262A0];
    pathCopy = path;
    sharedConnection = [v11 sharedConnection];
    v14 = [sharedConnection effectiveBoolValueForSetting:*MEMORY[0x277D25E68]];

    coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
    LODWORD(sharedConnection) = [pathCopy isEqualToString:@"viewModel.isLocalOrRemotelyManagedUserWithScreenTimeDisabled"];

    if (sharedConnection)
    {
      if (v14 == 2)
      {
        [(STGroupSpecifierProvider *)self setIsHidden:0];
      }

      else
      {
        viewModel = [coordinator viewModel];
        -[STGroupSpecifierProvider setIsHidden:](self, "setIsHidden:", [viewModel isLocalOrRemotelyManagedUserWithScreenTimeDisabled] ^ 1);
      }
    }
  }

  else
  {
    v17.receiver = self;
    v17.super_class = STAboutScreenTimeGroupSpecifierProvider;
    pathCopy2 = path;
    [(STAboutScreenTimeGroupSpecifierProvider *)&v17 observeValueForKeyPath:pathCopy2 ofObject:object change:change context:context];
  }
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v6 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25E68]];

  if (v6 == 2)
  {
    v7 = +[STScreenTimeSettingsUIBundle bundle];
    v13 = [v7 localizedStringForKey:@"ScreenTimeRestrictedFooterText" value:&stru_28766E5A8 table:0];
  }

  else
  {
    v13 = 0;
  }

  groupSpecifier = [(STGroupSpecifierProvider *)self groupSpecifier];
  v9 = *MEMORY[0x277D3FF88];
  v10 = [groupSpecifier objectForKeyedSubscript:*MEMORY[0x277D3FF88]];
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
    [groupSpecifier setObject:v13 forKeyedSubscript:v9];
    [(STGroupSpecifierProvider *)self reloadSpecifier:groupSpecifier animated:1];
  }
}

@end
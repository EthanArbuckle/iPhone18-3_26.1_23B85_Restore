@interface SBAppProfileExpiredAlertItem
- (SBAppProfileExpiredAlertItem)initWithApp:(id)app;
- (void)configure:(BOOL)configure requirePasscodeForActions:(BOOL)actions;
@end

@implementation SBAppProfileExpiredAlertItem

- (SBAppProfileExpiredAlertItem)initWithApp:(id)app
{
  appCopy = app;
  v6 = [(SBAlertItem *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_app, app);
  }

  return v7;
}

- (void)configure:(BOOL)configure requirePasscodeForActions:(BOOL)actions
{
  v5 = [(SBAlertItem *)self alertController:configure];
  displayName = [(SBApplication *)self->_app displayName];
  info = [(SBApplication *)self->_app info];
  isBeta = [info isBeta];

  v9 = MEMORY[0x277CCACA8];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v11 = mainBundle;
  if (isBeta)
  {
    v12 = @"APP_BETA_EXPIRED_TITLE_WITH_NAME_FORMAT";
  }

  else
  {
    v12 = @"APP_PROFILE_EXPIRED_TITLE_WITH_NAME_FORMAT";
  }

  v13 = [mainBundle localizedStringForKey:v12 value:&stru_283094718 table:@"SpringBoard"];
  v14 = [v9 stringWithFormat:v13, displayName];

  [v5 setTitle:v14];
  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  v16 = [mainBundle2 localizedStringForKey:@"APP_PROFILE_EXPIRED_OK" value:&stru_283094718 table:@"SpringBoard"];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __68__SBAppProfileExpiredAlertItem_configure_requirePasscodeForActions___block_invoke;
  v18[3] = &unk_2783A8A40;
  v18[4] = self;
  v17 = [MEMORY[0x277D750F8] actionWithTitle:v16 style:1 handler:v18];
  [v5 addAction:v17];
}

@end
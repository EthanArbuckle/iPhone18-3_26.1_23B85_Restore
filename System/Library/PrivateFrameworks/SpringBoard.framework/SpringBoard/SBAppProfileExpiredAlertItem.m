@interface SBAppProfileExpiredAlertItem
- (SBAppProfileExpiredAlertItem)initWithApp:(id)a3;
- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4;
@end

@implementation SBAppProfileExpiredAlertItem

- (SBAppProfileExpiredAlertItem)initWithApp:(id)a3
{
  v5 = a3;
  v6 = [(SBAlertItem *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_app, a3);
  }

  return v7;
}

- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4
{
  v5 = [(SBAlertItem *)self alertController:a3];
  v6 = [(SBApplication *)self->_app displayName];
  v7 = [(SBApplication *)self->_app info];
  v8 = [v7 isBeta];

  v9 = MEMORY[0x277CCACA8];
  v10 = [MEMORY[0x277CCA8D8] mainBundle];
  v11 = v10;
  if (v8)
  {
    v12 = @"APP_BETA_EXPIRED_TITLE_WITH_NAME_FORMAT";
  }

  else
  {
    v12 = @"APP_PROFILE_EXPIRED_TITLE_WITH_NAME_FORMAT";
  }

  v13 = [v10 localizedStringForKey:v12 value:&stru_283094718 table:@"SpringBoard"];
  v14 = [v9 stringWithFormat:v13, v6];

  [v5 setTitle:v14];
  v15 = [MEMORY[0x277CCA8D8] mainBundle];
  v16 = [v15 localizedStringForKey:@"APP_PROFILE_EXPIRED_OK" value:&stru_283094718 table:@"SpringBoard"];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __68__SBAppProfileExpiredAlertItem_configure_requirePasscodeForActions___block_invoke;
  v18[3] = &unk_2783A8A40;
  v18[4] = self;
  v17 = [MEMORY[0x277D750F8] actionWithTitle:v16 style:1 handler:v18];
  [v5 addAction:v17];
}

@end
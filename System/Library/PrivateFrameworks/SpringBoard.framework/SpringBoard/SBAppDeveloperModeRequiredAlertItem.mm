@interface SBAppDeveloperModeRequiredAlertItem
- (SBAppDeveloperModeRequiredAlertItem)initWithApplication:(id)application;
- (void)configure:(BOOL)configure requirePasscodeForActions:(BOOL)actions;
@end

@implementation SBAppDeveloperModeRequiredAlertItem

- (SBAppDeveloperModeRequiredAlertItem)initWithApplication:(id)application
{
  applicationCopy = application;
  v9.receiver = self;
  v9.super_class = SBAppDeveloperModeRequiredAlertItem;
  v6 = [(SBAlertItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_application, application);
  }

  return v7;
}

- (void)configure:(BOOL)configure requirePasscodeForActions:(BOOL)actions
{
  v5 = [(SBAlertItem *)self alertController:configure];
  v6 = MEMORY[0x277CCACA8];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v8 = [mainBundle localizedStringForKey:@"DEVELOPER_MODE_REQUIRED_ERROR_TITLE" value:&stru_283094718 table:@"SpringBoard"];
  v9 = [v6 stringWithFormat:v8];
  [v5 setTitle:v9];

  v10 = MEMORY[0x277CCACA8];
  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  v12 = [mainBundle2 localizedStringForKey:@"DEVELOPER_MODE_REQUIRED_ERROR_BODY" value:&stru_283094718 table:@"SpringBoard"];
  displayName = [(SBApplication *)self->_application displayName];
  v14 = [v10 stringWithFormat:v12, displayName];
  [v5 setMessage:v14];

  v15 = MEMORY[0x277D750F8];
  mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
  v17 = [mainBundle3 localizedStringForKey:@"DEVELOPER_MODE_REQUIRED_ERROR_ACKNOWLEDGE" value:&stru_283094718 table:@"SpringBoard"];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __75__SBAppDeveloperModeRequiredAlertItem_configure_requirePasscodeForActions___block_invoke;
  v19[3] = &unk_2783A8A40;
  v19[4] = self;
  v18 = [v15 actionWithTitle:v17 style:0 handler:v19];

  [v5 addAction:v18];
  [v5 setPreferredAction:v18];
}

@end
@interface SBVPPAppRequiresHealingAlertItem
- (SBVPPAppRequiresHealingAlertItem)initWithApplication:(id)application;
- (void)configure:(BOOL)configure requirePasscodeForActions:(BOOL)actions;
@end

@implementation SBVPPAppRequiresHealingAlertItem

- (SBVPPAppRequiresHealingAlertItem)initWithApplication:(id)application
{
  applicationCopy = application;
  v6 = [(SBAlertItem *)self init];
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
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v7 = [mainBundle localizedStringForKey:@"APP_REPAIR_REQUIRES_NETWORK_TITLE" value:&stru_283094718 table:@"SpringBoard"];
  [v5 setTitle:v7];

  displayName = [(SBApplication *)self->_application displayName];
  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  v10 = [mainBundle2 localizedStringForKey:@"APP_REPAIR_REQUIRES_NETWORK_MESSAGE" value:&stru_283094718 table:@"SpringBoard"];

  v11 = MEMORY[0x277CCACA8];
  mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
  v13 = [mainBundle3 localizedStringForKey:v10 value:&stru_283094718 table:@"SpringBoard"];
  v14 = [v11 stringWithFormat:v13, displayName];

  [v5 setMessage:v14];
  mainBundle4 = [MEMORY[0x277CCA8D8] mainBundle];
  v16 = [mainBundle4 localizedStringForKey:@"APP_REPAIR_REQUIRES_NETWORK_OK" value:&stru_283094718 table:@"SpringBoard"];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __72__SBVPPAppRequiresHealingAlertItem_configure_requirePasscodeForActions___block_invoke;
  v18[3] = &unk_2783A8A40;
  v18[4] = self;
  v17 = [MEMORY[0x277D750F8] actionWithTitle:v16 style:1 handler:v18];
  [v5 addAction:v17];
}

@end
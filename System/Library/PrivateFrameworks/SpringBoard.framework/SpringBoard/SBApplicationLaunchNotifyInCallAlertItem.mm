@interface SBApplicationLaunchNotifyInCallAlertItem
- (SBApplicationLaunchNotifyInCallAlertItem)initWithApplication:(id)a3;
- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4;
@end

@implementation SBApplicationLaunchNotifyInCallAlertItem

- (SBApplicationLaunchNotifyInCallAlertItem)initWithApplication:(id)a3
{
  v6.receiver = self;
  v6.super_class = SBApplicationLaunchNotifyInCallAlertItem;
  v3 = [(SBApplicationLaunchNotifyAlertItem *)&v6 initWithApplication:a3];
  v4 = v3;
  if (v3)
  {
    [(SBAlertItem *)v3 setAllowInCar:1];
  }

  return v4;
}

- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4
{
  v5 = [(SBAlertItem *)self alertController:a3];
  v6 = [MEMORY[0x277CCA8D8] mainBundle];
  v7 = [v6 localizedStringForKey:@"IN_CALL_LAUNCH_ALERT" value:&stru_283094718 table:@"SpringBoard"];
  [v5 setTitle:v7];

  v8 = MEMORY[0x277D750F8];
  v9 = [MEMORY[0x277CCA8D8] mainBundle];
  v10 = [v9 localizedStringForKey:@"IN_CALL_LAUNCH_OK" value:&stru_283094718 table:@"SpringBoard"];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __80__SBApplicationLaunchNotifyInCallAlertItem_configure_requirePasscodeForActions___block_invoke;
  v12[3] = &unk_2783A8A40;
  v12[4] = self;
  v11 = [v8 actionWithTitle:v10 style:0 handler:v12];
  [v5 addAction:v11];
}

@end
@interface SBApplicationLaunchNotifyInCallWithoutDataSwitchingAlertItem
- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4;
@end

@implementation SBApplicationLaunchNotifyInCallWithoutDataSwitchingAlertItem

- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4
{
  v4 = [(SBAlertItem *)self alertController:a3];
  v5 = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [v5 localizedStringForKey:@"IN_CALL_NO_DATA_SWITCHING_LAUNCH_ALERT_TITLE" value:&stru_283094718 table:@"SpringBoard"];
  [v4 setTitle:v6];

  v7 = +[SBTelephonyManager sharedTelephonyManager];
  v8 = objc_alloc(MEMORY[0x277D6BB90]);
  v9 = [SBApp systemStatusServer];
  v36 = [v8 initWithServerHandle:v9];

  v10 = [v36 data];
  [v36 invalidate];
  v35 = v10;
  v11 = [v10 primarySIMInfo];
  v12 = [v10 secondarySIMInfo];
  v13 = [v11 isProvidingDataConnection];
  v14 = v12;
  v34 = v12;
  if (v13)
  {
    v12 = v11;
  }

  else
  {
    v14 = v11;
  }

  v15 = MEMORY[0x277CCACA8];
  v16 = MEMORY[0x277CCA8D8];
  v17 = v14;
  v18 = v12;
  v19 = [v16 mainBundle];
  v20 = [v19 localizedStringForKey:@"IN_CALL_NO_DATA_SWITCHING_LAUNCH_ALERT_BODY_FORMAT" value:&stru_283094718 table:@"SpringBoard"];
  v21 = [v18 label];

  v22 = [v17 label];

  v23 = [v15 stringWithFormat:v20, v21, v22];
  [v4 setMessage:v23];

  v24 = MEMORY[0x277D750F8];
  v25 = [MEMORY[0x277CCA8D8] mainBundle];
  v26 = [v25 localizedStringForKey:@"IN_CALL_NO_DATA_SWITCHING_LAUNCH_ALERT_ENABLE" value:&stru_283094718 table:@"SpringBoard"];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __100__SBApplicationLaunchNotifyInCallWithoutDataSwitchingAlertItem_configure_requirePasscodeForActions___block_invoke;
  v38[3] = &unk_2783A8A18;
  v39 = v7;
  v40 = self;
  v27 = v7;
  v28 = [v24 actionWithTitle:v26 style:0 handler:v38];
  [v4 addAction:v28];

  v29 = MEMORY[0x277D750F8];
  v30 = [MEMORY[0x277CCA8D8] mainBundle];
  v31 = [v30 localizedStringForKey:@"IN_CALL_NO_DATA_SWITCHING_LAUNCH_ALERT_CANCEL" value:&stru_283094718 table:@"SpringBoard"];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __100__SBApplicationLaunchNotifyInCallWithoutDataSwitchingAlertItem_configure_requirePasscodeForActions___block_invoke_2;
  v37[3] = &unk_2783A8A40;
  v37[4] = self;
  v32 = [v29 actionWithTitle:v31 style:1 handler:v37];
  [v4 addAction:v32];
}

uint64_t __100__SBApplicationLaunchNotifyInCallWithoutDataSwitchingAlertItem_configure_requirePasscodeForActions___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCellDataSwitchingEnabled:1];
  v2 = *(a1 + 40);

  return [v2 deactivateForButton];
}

@end
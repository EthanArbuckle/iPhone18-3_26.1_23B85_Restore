@interface SBApplicationLaunchNotifyInCallWithoutDataSwitchingAlertItem
- (void)configure:(BOOL)configure requirePasscodeForActions:(BOOL)actions;
@end

@implementation SBApplicationLaunchNotifyInCallWithoutDataSwitchingAlertItem

- (void)configure:(BOOL)configure requirePasscodeForActions:(BOOL)actions
{
  v4 = [(SBAlertItem *)self alertController:configure];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [mainBundle localizedStringForKey:@"IN_CALL_NO_DATA_SWITCHING_LAUNCH_ALERT_TITLE" value:&stru_283094718 table:@"SpringBoard"];
  [v4 setTitle:v6];

  v7 = +[SBTelephonyManager sharedTelephonyManager];
  v8 = objc_alloc(MEMORY[0x277D6BB90]);
  systemStatusServer = [SBApp systemStatusServer];
  v36 = [v8 initWithServerHandle:systemStatusServer];

  data = [v36 data];
  [v36 invalidate];
  v35 = data;
  primarySIMInfo = [data primarySIMInfo];
  secondarySIMInfo = [data secondarySIMInfo];
  isProvidingDataConnection = [primarySIMInfo isProvidingDataConnection];
  v14 = secondarySIMInfo;
  v34 = secondarySIMInfo;
  if (isProvidingDataConnection)
  {
    secondarySIMInfo = primarySIMInfo;
  }

  else
  {
    v14 = primarySIMInfo;
  }

  v15 = MEMORY[0x277CCACA8];
  v16 = MEMORY[0x277CCA8D8];
  v17 = v14;
  v18 = secondarySIMInfo;
  mainBundle2 = [v16 mainBundle];
  v20 = [mainBundle2 localizedStringForKey:@"IN_CALL_NO_DATA_SWITCHING_LAUNCH_ALERT_BODY_FORMAT" value:&stru_283094718 table:@"SpringBoard"];
  label = [v18 label];

  label2 = [v17 label];

  v23 = [v15 stringWithFormat:v20, label, label2];
  [v4 setMessage:v23];

  v24 = MEMORY[0x277D750F8];
  mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
  v26 = [mainBundle3 localizedStringForKey:@"IN_CALL_NO_DATA_SWITCHING_LAUNCH_ALERT_ENABLE" value:&stru_283094718 table:@"SpringBoard"];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __100__SBApplicationLaunchNotifyInCallWithoutDataSwitchingAlertItem_configure_requirePasscodeForActions___block_invoke;
  v38[3] = &unk_2783A8A18;
  v39 = v7;
  selfCopy = self;
  v27 = v7;
  v28 = [v24 actionWithTitle:v26 style:0 handler:v38];
  [v4 addAction:v28];

  v29 = MEMORY[0x277D750F8];
  mainBundle4 = [MEMORY[0x277CCA8D8] mainBundle];
  v31 = [mainBundle4 localizedStringForKey:@"IN_CALL_NO_DATA_SWITCHING_LAUNCH_ALERT_CANCEL" value:&stru_283094718 table:@"SpringBoard"];
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
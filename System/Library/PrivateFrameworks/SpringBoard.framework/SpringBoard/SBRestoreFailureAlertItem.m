@interface SBRestoreFailureAlertItem
- (void)_rebootNow;
- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4;
- (void)performUnlockAction;
@end

@implementation SBRestoreFailureAlertItem

- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4
{
  v5 = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [(SBAlertItem *)self alertController];
  v7 = MEMORY[0x277CCACA8];
  v8 = [v5 localizedStringForKey:@"RESTORE_FAILURE_ALERT_BODY_TEXT" value:&stru_283094718 table:@"SpringBoard"];
  v9 = +[SBPlatformController sharedInstance];
  v10 = [v9 localizedPlatformName];
  v11 = [v7 stringWithFormat:v8, v10];

  [v6 setMessage:v11];
  v12 = [v5 localizedStringForKey:@"RESTORE_FAILURE_ALERT_RESTART_BUTTON_TITLE" value:&stru_283094718 table:@"SpringBoard"];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__SBRestoreFailureAlertItem_configure_requirePasscodeForActions___block_invoke;
  v14[3] = &unk_2783A8A40;
  v14[4] = self;
  v13 = [MEMORY[0x277D750F8] actionWithTitle:v12 style:1 handler:v14];
  [v6 addAction:v13];
}

uint64_t __65__SBRestoreFailureAlertItem_configure_requirePasscodeForActions___block_invoke(uint64_t a1)
{
  [*(a1 + 32) restartSystemEvent];
  v2 = *(a1 + 32);

  return [v2 deactivateForButton];
}

- (void)_rebootNow
{
  v2 = [SBApp restartManager];
  [v2 rebootForReason:@"SBRestoreFailureAlertItem"];
}

- (void)performUnlockAction
{
  [(SBRestoreFailureAlertItem *)self restartSystemEvent];

  [(SBAlertItem *)self deactivate];
}

@end
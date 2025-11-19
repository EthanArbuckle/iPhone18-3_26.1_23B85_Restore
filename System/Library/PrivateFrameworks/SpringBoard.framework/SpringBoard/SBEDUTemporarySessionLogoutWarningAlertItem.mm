@interface SBEDUTemporarySessionLogoutWarningAlertItem
- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4;
@end

@implementation SBEDUTemporarySessionLogoutWarningAlertItem

- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4
{
  v20.receiver = self;
  v20.super_class = SBEDUTemporarySessionLogoutWarningAlertItem;
  [(SBAlertItem *)&v20 configure:a3 requirePasscodeForActions:a4];
  v5 = [(SBAlertItem *)self alertController];
  [v5 setPreferredStyle:1];
  v6 = [MEMORY[0x277CCA8D8] mainBundle];
  v7 = [v6 localizedStringForKey:@"LOGOUT_TEMPORARY_SESSION_LOGOUT_ALERT_TITLE" value:&stru_283094718 table:@"SpringBoard"];
  [v5 setTitle:v7];

  v8 = [MEMORY[0x277CCA8D8] mainBundle];
  v9 = [v8 localizedStringForKey:@"LOGOUT_TEMPORARY_SESSION_LOGOUT_ALERT_MESSAGE" value:&stru_283094718 table:@"SpringBoard"];
  [v5 setMessage:v9];

  v10 = MEMORY[0x277D750F8];
  v11 = [MEMORY[0x277CCA8D8] mainBundle];
  v12 = [v11 localizedStringForKey:@"LOGOUT_BUTTON_TITLE" value:&stru_283094718 table:@"SpringBoard"];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __83__SBEDUTemporarySessionLogoutWarningAlertItem_configure_requirePasscodeForActions___block_invoke;
  v19[3] = &unk_2783A8A40;
  v19[4] = self;
  v13 = [v10 actionWithTitle:v12 style:2 handler:v19];

  v14 = MEMORY[0x277D750F8];
  v15 = [MEMORY[0x277CCA8D8] mainBundle];
  v16 = [v15 localizedStringForKey:@"CANCEL" value:&stru_283094718 table:@"SpringBoard"];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __83__SBEDUTemporarySessionLogoutWarningAlertItem_configure_requirePasscodeForActions___block_invoke_3;
  v18[3] = &unk_2783A8A40;
  v18[4] = self;
  v17 = [v14 actionWithTitle:v16 style:1 handler:v18];

  [v5 addAction:v13];
  [v5 addAction:v17];
}

uint64_t __83__SBEDUTemporarySessionLogoutWarningAlertItem_configure_requirePasscodeForActions___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) deactivateForButton];
  v3 = *(a1 + 32);
  if (*(v3 + 112))
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __83__SBEDUTemporarySessionLogoutWarningAlertItem_configure_requirePasscodeForActions___block_invoke_2;
    v4[3] = &unk_2783A8C18;
    v4[4] = v3;
    return [MEMORY[0x277CD9FF0] bs_performAfterSynchronizedCommit:v4];
  }

  return result;
}

@end
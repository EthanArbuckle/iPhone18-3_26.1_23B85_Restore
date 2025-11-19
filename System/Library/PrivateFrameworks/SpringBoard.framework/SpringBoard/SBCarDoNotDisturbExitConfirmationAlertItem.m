@interface SBCarDoNotDisturbExitConfirmationAlertItem
- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4;
@end

@implementation SBCarDoNotDisturbExitConfirmationAlertItem

- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4
{
  v17.receiver = self;
  v17.super_class = SBCarDoNotDisturbExitConfirmationAlertItem;
  [(SBAlertItem *)&v17 configure:a3 requirePasscodeForActions:a4];
  v5 = [(SBAlertItem *)self alertController];
  [v5 setPreferredStyle:0];
  [v5 setTitle:0];
  [v5 setMessage:0];
  v6 = MEMORY[0x277D750F8];
  v7 = [MEMORY[0x277CCA8D8] mainBundle];
  v8 = [v7 localizedStringForKey:@"CARDND_EXIT_NOT_DRIVING" value:&stru_283094718 table:@"SpringBoard"];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __82__SBCarDoNotDisturbExitConfirmationAlertItem_configure_requirePasscodeForActions___block_invoke;
  v16[3] = &unk_2783A8A40;
  v16[4] = self;
  v9 = [v6 actionWithTitle:v8 style:0 handler:v16];

  [v5 addAction:v9];
  if ([(SBCarDoNotDisturbExitConfirmationAlertItem *)self showSiriHeaderViewController])
  {
    v10 = objc_alloc_init(MEMORY[0x277D61990]);
    [v10 setDelegate:self];
    [v5 _setSeparatedHeaderContentViewController:v10];
  }

  v11 = MEMORY[0x277D750F8];
  v12 = [MEMORY[0x277CCA8D8] mainBundle];
  v13 = [v12 localizedStringForKey:@"CANCEL" value:&stru_283094718 table:@"SpringBoard"];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __82__SBCarDoNotDisturbExitConfirmationAlertItem_configure_requirePasscodeForActions___block_invoke_2;
  v15[3] = &unk_2783A8A40;
  v15[4] = self;
  v14 = [v11 actionWithTitle:v13 style:1 handler:v15];
  [v5 addAction:v14];
}

void __82__SBCarDoNotDisturbExitConfirmationAlertItem_configure_requirePasscodeForActions___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) notDrivingActionHandler];
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

void __82__SBCarDoNotDisturbExitConfirmationAlertItem_configure_requirePasscodeForActions___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) deactivateForButton];
  v2 = [*(a1 + 32) cancelActionHandler];
  if (v2)
  {
    v3 = v2;
    v2[2]();
    v2 = v3;
  }
}

@end
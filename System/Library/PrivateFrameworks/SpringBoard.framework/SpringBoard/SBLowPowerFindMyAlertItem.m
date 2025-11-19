@interface SBLowPowerFindMyAlertItem
+ (void)_readSupportsFindMy:(id)a3;
- (BOOL)shouldShowInLockScreen;
- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4;
@end

@implementation SBLowPowerFindMyAlertItem

void __44__SBLowPowerFindMyAlertItem_showFindMyAlert__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = objc_alloc_init(SBLowPowerFindMyAlertItem);
    v2 = +[SBAlertItemsController sharedInstance];
    [v2 activateAlertItem:v3];
  }
}

- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4
{
  v6 = [(SBAlertItem *)self alertController:a3];
  v7 = [MEMORY[0x277CCA8D8] mainBundle];
  v8 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"LOW_BATT_FIND_MY_TITLE"];
  v9 = [v7 localizedStringForKey:v8 value:&stru_283094718 table:@"SpringBoard"];

  v10 = [MEMORY[0x277CCA8D8] mainBundle];
  v11 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"LOW_BATT_FIND_MY"];
  v12 = [v10 localizedStringForKey:v11 value:&stru_283094718 table:@"SpringBoard"];

  [v6 setTitle:v9];
  [v6 setMessage:v12];
  if (!a3)
  {
    v13 = MEMORY[0x277D750F8];
    v14 = [MEMORY[0x277CCA8D8] mainBundle];
    v15 = [v14 localizedStringForKey:@"OK" value:&stru_283094718 table:@"SpringBoard"];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __65__SBLowPowerFindMyAlertItem_configure_requirePasscodeForActions___block_invoke;
    v17[3] = &unk_2783A8A40;
    v17[4] = self;
    v16 = [v13 actionWithTitle:v15 style:1 handler:v17];
    [v6 addAction:v16];
  }
}

void __65__SBLowPowerFindMyAlertItem_configure_requirePasscodeForActions___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D49638]);
  [*(a1 + 32) setBeaconManager:v2];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __65__SBLowPowerFindMyAlertItem_configure_requirePasscodeForActions___block_invoke_2;
  v3[3] = &unk_2783A8C18;
  v3[4] = *(a1 + 32);
  [v2 setUserHasAcknowledgedFindMy:1 completion:v3];
}

void __65__SBLowPowerFindMyAlertItem_configure_requirePasscodeForActions___block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__SBLowPowerFindMyAlertItem_configure_requirePasscodeForActions___block_invoke_3;
  block[3] = &unk_2783A8C18;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __65__SBLowPowerFindMyAlertItem_configure_requirePasscodeForActions___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setBeaconManager:0];
  v2 = *(a1 + 32);

  return [v2 deactivateForButton];
}

- (BOOL)shouldShowInLockScreen
{
  v2 = [SBApp notificationDispatcher];
  v3 = [v2 isCarDestinationActive];

  return v3;
}

+ (void)_readSupportsFindMy:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277D49638]);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__SBLowPowerFindMyAlertItem__readSupportsFindMy___block_invoke;
  v7[3] = &unk_2783B3B78;
  v8 = v4;
  v9 = v3;
  v5 = v4;
  v6 = v3;
  [v5 isLPEMModeSupported:v7];
}

void __49__SBLowPowerFindMyAlertItem__readSupportsFindMy___block_invoke(uint64_t a1, char a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__SBLowPowerFindMyAlertItem__readSupportsFindMy___block_invoke_2;
  v4[3] = &unk_2783AB500;
  v5 = *(a1 + 40);
  v6 = a2;
  dispatch_async(MEMORY[0x277D85CD0], v4);
  v3 = objc_opt_self();
}

@end
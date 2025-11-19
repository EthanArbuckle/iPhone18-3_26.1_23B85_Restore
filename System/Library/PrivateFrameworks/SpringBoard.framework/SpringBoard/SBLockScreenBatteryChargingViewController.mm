@interface SBLockScreenBatteryChargingViewController
- (SBLockScreenBatteryChargingViewControllerDelegate)delegate;
- (id)chargingView;
- (id)initForDisplayOfBattery:(BOOL)a3;
- (void)_clearVisibilityTimer;
- (void)_visibilityTimerFired:(id)a3;
- (void)connectedDevicesDidChange:(id)a3;
- (void)dealloc;
- (void)loadView;
- (void)presentWithAnimation:(BOOL)a3;
- (void)showChargeLevelWithBatteryVisible:(BOOL)a3;
@end

@implementation SBLockScreenBatteryChargingViewController

- (id)initForDisplayOfBattery:(BOOL)a3
{
  v13.receiver = self;
  v13.super_class = SBLockScreenBatteryChargingViewController;
  v4 = [(CSCoverSheetViewControllerBase *)&v13 initWithNibName:0 bundle:0];
  p_isa = &v4->super.super.super.super.isa;
  if (v4)
  {
    v4->_shouldDisplayBattery = a3;
    v6 = objc_alloc_init(MEMORY[0x277CF0DB0]);
    v7 = p_isa[137];
    p_isa[137] = v6;

    v8 = [p_isa[137] connectedDevices];
    v9 = [v8 mutableCopy];
    v10 = p_isa[136];
    p_isa[136] = v9;

    v11 = [p_isa[136] indexesOfObjectsPassingTest:&__block_literal_global_280];
    [p_isa[136] removeObjectsAtIndexes:v11];
  }

  return p_isa;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SBLockScreenBatteryChargingViewController;
  [(CSCoverSheetViewControllerBase *)&v4 dealloc];
}

- (void)loadView
{
  if (self->_shouldDisplayBattery && [(NSMutableArray *)self->_connectedDevices count]> 1)
  {
    v3 = [MEMORY[0x277D02BA8] batteryChargingViewWithDoubleBattery];
    v5 = 0;
    v4 = 1;
  }

  else
  {
    v3 = [MEMORY[0x277D02BA8] batteryChargingViewWithSingleBattery];
    v4 = 0;
    v5 = 1;
  }

  objc_storeStrong(&self->_chargingView, v3);
  if (v4)
  {
  }

  if (v5)
  {
  }

  [(BCBatteryDeviceController *)self->_batteryDeviceController addBatteryDeviceObserver:self queue:MEMORY[0x277D85CD0]];
  chargingView = self->_chargingView;

  [(SBLockScreenBatteryChargingViewController *)self setView:chargingView];
}

- (void)presentWithAnimation:(BOOL)a3
{
  v5 = [(SBLockScreenBatteryChargingViewController *)self view];
  [v5 setAlpha:0.0];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__SBLockScreenBatteryChargingViewController_presentWithAnimation___block_invoke;
  v8[3] = &unk_2783B08D0;
  v8[4] = self;
  v9 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__SBLockScreenBatteryChargingViewController_presentWithAnimation___block_invoke_2;
  v6[3] = &unk_2783AF318;
  v7 = a3;
  v6[4] = self;
  [(CSCoverSheetViewControllerBase *)self updateAppearance:v8 completion:v6];
}

id __66__SBLockScreenBatteryChargingViewController_presentWithAnimation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setComponents:0];
  if ([*(*(a1 + 32) + 1072) batteryVisible])
  {
    v4 = [MEMORY[0x277D02BC8] statusBar];
    v5 = [v4 priority:40];
    v6 = [v5 hidden:1];
    [v3 addComponent:v6];

    v7 = [MEMORY[0x277D02BC8] dateView];
    v8 = [v7 priority:40];
    v9 = [v8 hidden:1];
    v10 = [v9 string:&stru_283094718];
    [v3 addComponent:v10];

    v11 = [MEMORY[0x277D02BC8] backgroundContent];
    v12 = [v11 priority:40];
    v13 = [v12 hidden:1];
    [v3 addComponent:v13];

    v14 = [MEMORY[0x277D02BC8] pageContent];
    v15 = [v14 priority:40];
    [v15 hidden:1];
  }

  else
  {
    v14 = [MEMORY[0x277D02BC8] dateView];
    v15 = [v14 priority:40];
    [v15 string:&stru_283094718];
  }
  v16 = ;
  [v3 addComponent:v16];

  if (*(a1 + 40) == 1)
  {
    v17 = [MEMORY[0x277CF0B70] settingsWithDuration:0.25];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void __66__SBLockScreenBatteryChargingViewController_presentWithAnimation___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = [MEMORY[0x277CF0B70] settingsWithDuration:0.25];
  }

  else
  {
    v2 = 0;
  }

  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __66__SBLockScreenBatteryChargingViewController_presentWithAnimation___block_invoke_3;
  v3[3] = &unk_2783A8C18;
  v3[4] = *(a1 + 32);
  [MEMORY[0x277CF0D38] animateWithSettings:v2 actions:v3];
}

void __66__SBLockScreenBatteryChargingViewController_presentWithAnimation___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:1.0];
}

- (void)_clearVisibilityTimer
{
  [(NSTimer *)self->_visibilityTimer invalidate];
  visibilityTimer = self->_visibilityTimer;
  self->_visibilityTimer = 0;
}

- (id)chargingView
{
  v3 = objc_opt_class();
  v4 = [(SBLockScreenBatteryChargingViewController *)self view];
  v5 = SBSafeCast(v3, v4);

  return v5;
}

- (void)showChargeLevelWithBatteryVisible:(BOOL)a3
{
  v3 = a3;
  [(SBLockScreenBatteryChargingViewController *)self _clearVisibilityTimer];
  [(CSBatteryChargingView *)self->_chargingView setAlpha:1.0];
  [(CSBatteryChargingView *)self->_chargingView setBatteryVisible:v3];
  v5 = MEMORY[0x277CBEBB8];
  [(CSBatteryChargingView *)self->_chargingView desiredVisibilityDuration];
  v6 = [v5 timerWithTimeInterval:self target:sel__visibilityTimerFired_ selector:0 userInfo:0 repeats:?];
  visibilityTimer = self->_visibilityTimer;
  self->_visibilityTimer = v6;

  v8 = [MEMORY[0x277CBEB88] currentRunLoop];
  [v8 addTimer:self->_visibilityTimer forMode:*MEMORY[0x277CBE738]];
}

- (void)_visibilityTimerFired:(id)a3
{
  [(SBLockScreenBatteryChargingViewController *)self _clearVisibilityTimer];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __67__SBLockScreenBatteryChargingViewController__visibilityTimerFired___block_invoke;
  v5[3] = &unk_2783A8C18;
  v5[4] = self;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __67__SBLockScreenBatteryChargingViewController__visibilityTimerFired___block_invoke_2;
  v4[3] = &unk_2783A9398;
  v4[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v5 animations:v4 completion:0.25];
}

void __67__SBLockScreenBatteryChargingViewController__visibilityTimerFired___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1104));
  [WeakRetained chargingViewControllerFadedOutContent:*(a1 + 32)];
}

- (void)connectedDevicesDidChange:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    v24 = *MEMORY[0x277CF0DB8];
    v23 = *MEMORY[0x277CF0DC0];
    v8 = &OBJC_IVAR___SBExternalDisplayCoverSheetController__screenOn;
    v9 = &OBJC_IVAR___SBExternalDisplayCoverSheetController__screenOn;
    do
    {
      v10 = 0;
      do
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v25 + 1) + 8 * v10);
        if (*(&self->super.super.super.super.isa + v8[92]) == 1 && (v12 = v9[94], [*(&self->super.super.super.super.isa + v12) count] > 1))
        {
          if ([v11 isInternal])
          {
LABEL_11:
            chargingView = self->_chargingView;
            v14 = SBLockScreenChargePercentageLabelForBattery(v11);
            [(CSBatteryChargingView *)chargingView setPrimaryBatteryText:v14 forBattery:v11];
LABEL_12:

            goto LABEL_13;
          }

          v15 = v4;
          v16 = [v11 identifier];
          v17 = [*(&self->super.super.super.super.isa + v12) objectAtIndex:1];
          v18 = [v17 identifier];
          v19 = [v16 isEqualToString:v18];

          if ([v11 productIdentifier] == v24 || objc_msgSend(v11, "productIdentifier") == v23)
          {
            v20 = self->_chargingView;
            v14 = SBLockScreenSimpleChargePercentageLabelForBattery(v11);
            [(CSBatteryChargingView *)v20 setSecondaryBatteryText:v14 forBattery:v11];
            v4 = v15;
            v8 = &OBJC_IVAR___SBExternalDisplayCoverSheetController__screenOn;
            v9 = &OBJC_IVAR___SBExternalDisplayCoverSheetController__screenOn;
            goto LABEL_12;
          }

          v4 = v15;
          v8 = &OBJC_IVAR___SBExternalDisplayCoverSheetController__screenOn;
          v9 = &OBJC_IVAR___SBExternalDisplayCoverSheetController__screenOn;
          if (v19)
          {
            v21 = self->_chargingView;
            v14 = SBLockScreenChargePercentageLabelForBattery(v11);
            [(CSBatteryChargingView *)v21 setSecondaryBatteryText:v14 forBattery:v11];
            goto LABEL_12;
          }
        }

        else if ([v11 isInternal])
        {
          goto LABEL_11;
        }

LABEL_13:
        ++v10;
      }

      while (v6 != v10);
      v22 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
      v6 = v22;
    }

    while (v22);
  }
}

- (SBLockScreenBatteryChargingViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
@interface SBActivationFailedAlertItem
- (SBActivationFailedAlertItem)initWithFailureCount:(int)a3 slot:(int64_t)a4;
- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4;
@end

@implementation SBActivationFailedAlertItem

- (SBActivationFailedAlertItem)initWithFailureCount:(int)a3 slot:(int64_t)a4
{
  v11.receiver = self;
  v11.super_class = SBActivationFailedAlertItem;
  v6 = [(SBAlertItem *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_slot = a4;
    v8 = [SBApp telephonyStateProvider];
    v9 = [v8 carrierBundleInfoForSlot:v7->_slot];

    if ([v9 isReinitiatingActivationDisabled])
    {
      v7->_showSupportNumber = 1;
    }

    else
    {
      v7->_showRetryButton = 1;
      if (a3 >= 2)
      {
        v7->_showSupportNumber = 1;
        if (a3 != 2)
        {
          v7->_showRetryButton = 0;
        }
      }
    }
  }

  return v7;
}

- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4
{
  v5 = [(SBAlertItem *)self alertController:a3];
  v6 = [MEMORY[0x277CCA8D8] mainBundle];
  v7 = [v6 localizedStringForKey:@"ACTIVATION_FAILED_TITLE" value:&stru_283094718 table:@"SpringBoard"];
  [v5 setTitle:v7];

  v8 = [MEMORY[0x277CCA8D8] mainBundle];
  v9 = [v8 localizedStringForKey:@"ACTIVATION_FAILED_BODY" value:@"Contact your carrier if this problem continues to occur." table:@"SpringBoard"];

  if (self->_showSupportNumber)
  {
    v10 = [SBApp telephonyStateProvider];
    v11 = [v10 carrierBundleInfoForSlot:self->_slot];

    v12 = [v11 customerServicePhoneNumber];
    if (v12)
    {
      v13 = MEMORY[0x277CCACA8];
      v14 = [MEMORY[0x277CCA8D8] mainBundle];
      [v14 localizedStringForKey:@"ACTIVATION_FAILED_BODY_SUPPORT" value:@"Contact your carrier at %@ from another phone if this problem continues to occur." table:@"SpringBoard"];
      v16 = v15 = v9;
      v17 = UIFormattedPhoneNumberFromString();
      v18 = [v13 stringWithFormat:v16, v17];

      v9 = v15;
    }

    else
    {
      v18 = v9;
    }
  }

  else
  {
    v18 = v9;
  }

  [v5 setMessage:v18];
  showRetryButton = self->_showRetryButton;
  v20 = MEMORY[0x277D750F8];
  v21 = [MEMORY[0x277CCA8D8] mainBundle];
  v22 = v21;
  if (showRetryButton)
  {
    v23 = [v21 localizedStringForKey:@"ACTIVATION_FAILED_IGNORE_BUTTON" value:&stru_283094718 table:@"SpringBoard"];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __67__SBActivationFailedAlertItem_configure_requirePasscodeForActions___block_invoke;
    v33[3] = &unk_2783A8A40;
    v33[4] = self;
    v24 = [v20 actionWithTitle:v23 style:1 handler:v33];
    [v5 addAction:v24];

    v25 = MEMORY[0x277D750F8];
    v26 = [MEMORY[0x277CCA8D8] mainBundle];
    v27 = [v26 localizedStringForKey:@"ACTIVATION_FAILED_RETRY_BUTTON" value:&stru_283094718 table:@"SpringBoard"];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __67__SBActivationFailedAlertItem_configure_requirePasscodeForActions___block_invoke_2;
    v32[3] = &unk_2783A8A40;
    v32[4] = self;
    v28 = [v25 actionWithTitle:v27 style:0 handler:v32];
    [v5 addAction:v28];
  }

  else
  {
    v29 = [v21 localizedStringForKey:@"DISMISS_ALERT" value:&stru_283094718 table:@"SpringBoard"];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __67__SBActivationFailedAlertItem_configure_requirePasscodeForActions___block_invoke_3;
    v31[3] = &unk_2783A8A40;
    v31[4] = self;
    v30 = [v20 actionWithTitle:v29 style:1 handler:v31];
    [v5 addAction:v30];
  }
}

uint64_t __67__SBActivationFailedAlertItem_configure_requirePasscodeForActions___block_invoke_2(uint64_t a1)
{
  CTStartOTASP();
  v2 = *(a1 + 32);

  return [v2 deactivateForButton];
}

@end
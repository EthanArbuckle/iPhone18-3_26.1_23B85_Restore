@interface SBActivationFailedAlertItem
- (SBActivationFailedAlertItem)initWithFailureCount:(int)count slot:(int64_t)slot;
- (void)configure:(BOOL)configure requirePasscodeForActions:(BOOL)actions;
@end

@implementation SBActivationFailedAlertItem

- (SBActivationFailedAlertItem)initWithFailureCount:(int)count slot:(int64_t)slot
{
  v11.receiver = self;
  v11.super_class = SBActivationFailedAlertItem;
  v6 = [(SBAlertItem *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_slot = slot;
    telephonyStateProvider = [SBApp telephonyStateProvider];
    v9 = [telephonyStateProvider carrierBundleInfoForSlot:v7->_slot];

    if ([v9 isReinitiatingActivationDisabled])
    {
      v7->_showSupportNumber = 1;
    }

    else
    {
      v7->_showRetryButton = 1;
      if (count >= 2)
      {
        v7->_showSupportNumber = 1;
        if (count != 2)
        {
          v7->_showRetryButton = 0;
        }
      }
    }
  }

  return v7;
}

- (void)configure:(BOOL)configure requirePasscodeForActions:(BOOL)actions
{
  v5 = [(SBAlertItem *)self alertController:configure];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v7 = [mainBundle localizedStringForKey:@"ACTIVATION_FAILED_TITLE" value:&stru_283094718 table:@"SpringBoard"];
  [v5 setTitle:v7];

  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  v9 = [mainBundle2 localizedStringForKey:@"ACTIVATION_FAILED_BODY" value:@"Contact your carrier if this problem continues to occur." table:@"SpringBoard"];

  if (self->_showSupportNumber)
  {
    telephonyStateProvider = [SBApp telephonyStateProvider];
    v11 = [telephonyStateProvider carrierBundleInfoForSlot:self->_slot];

    customerServicePhoneNumber = [v11 customerServicePhoneNumber];
    if (customerServicePhoneNumber)
    {
      v13 = MEMORY[0x277CCACA8];
      mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
      [mainBundle3 localizedStringForKey:@"ACTIVATION_FAILED_BODY_SUPPORT" value:@"Contact your carrier at %@ from another phone if this problem continues to occur." table:@"SpringBoard"];
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
  mainBundle4 = [MEMORY[0x277CCA8D8] mainBundle];
  v22 = mainBundle4;
  if (showRetryButton)
  {
    v23 = [mainBundle4 localizedStringForKey:@"ACTIVATION_FAILED_IGNORE_BUTTON" value:&stru_283094718 table:@"SpringBoard"];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __67__SBActivationFailedAlertItem_configure_requirePasscodeForActions___block_invoke;
    v33[3] = &unk_2783A8A40;
    v33[4] = self;
    v24 = [v20 actionWithTitle:v23 style:1 handler:v33];
    [v5 addAction:v24];

    v25 = MEMORY[0x277D750F8];
    mainBundle5 = [MEMORY[0x277CCA8D8] mainBundle];
    v27 = [mainBundle5 localizedStringForKey:@"ACTIVATION_FAILED_RETRY_BUTTON" value:&stru_283094718 table:@"SpringBoard"];
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
    v29 = [mainBundle4 localizedStringForKey:@"DISMISS_ALERT" value:&stru_283094718 table:@"SpringBoard"];
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
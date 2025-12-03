@interface SBNetworkReselectionAlertItem
- (SBNetworkReselectionAlertItem)initWithSlot:(int64_t)slot;
- (id)lockLabel;
- (id)shortLockLabel;
- (void)_showPrefs;
- (void)configure:(BOOL)configure requirePasscodeForActions:(BOOL)actions;
- (void)performUnlockAction;
@end

@implementation SBNetworkReselectionAlertItem

- (SBNetworkReselectionAlertItem)initWithSlot:(int64_t)slot
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [mainBundle localizedStringForKey:@"NETWORK_LOST" value:&stru_283094718 table:@"SpringBoard"];
  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  v8 = [mainBundle2 localizedStringForKey:@"NETWORK_LOST_TEXT" value:&stru_283094718 table:@"SpringBoard"];
  v9 = [(SBPhoneAlertItem *)self initWithTitle:v6 bodyText:v8 slot:slot];

  return v9;
}

- (void)_showPrefs
{
  v2 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=Carrier"];
  SBWorkspaceActivateApplicationFromURL(v2, 0, 0);
}

- (id)lockLabel
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"NETWORK_LOST_LOCK_LABEL" value:&stru_283094718 table:@"SpringBoard"];

  return v3;
}

- (id)shortLockLabel
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"NETWORK_LOST_LOCK_LABEL_SHORT" value:&stru_283094718 table:@"SpringBoard"];

  return v3;
}

- (void)performUnlockAction
{
  [(SBNetworkReselectionAlertItem *)self _showPrefs];

  [(SBAlertItem *)self deactivate];
}

- (void)configure:(BOOL)configure requirePasscodeForActions:(BOOL)actions
{
  v5 = [(SBAlertItem *)self alertController:configure];
  telephonyStateProvider = [SBApp telephonyStateProvider];
  slot = [(SBPhoneAlertItem *)self slot];
  v8 = [telephonyStateProvider subscriptionInfoForSlot:slot];
  v9 = [v8 registrationRejectionCauseCode] - 2;
  if (slot && [telephonyStateProvider isDualSIMEnabled])
  {
    if (slot == 1)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    v11 = [telephonyStateProvider isSIMPresentForSlot:v10];
  }

  else
  {
    v11 = 0;
  }

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v13 = mainBundle;
  v31 = v8;
  if (v9 > 4)
  {
    v14 = [mainBundle localizedStringForKey:@"NETWORK_LOST" value:&stru_283094718 table:@"SpringBoard"];

    v15 = MEMORY[0x277CCACA8];
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    if (v11)
    {
      v17 = @"NETWORK_LOST_TEXT_FORMAT";
      goto LABEL_13;
    }

    v21 = @"NETWORK_LOST_TEXT";
  }

  else
  {
    v14 = [mainBundle localizedStringForKey:@"NETWORK_RESTRICTED" value:&stru_283094718 table:@"SpringBoard"];

    v15 = MEMORY[0x277CCACA8];
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    if (v11)
    {
      v17 = @"NETWORK_RESTRICTED_TEXT_FORMAT";
LABEL_13:
      v18 = [mainBundle2 localizedStringForKey:v17 value:&stru_283094718 table:@"SpringBoard-gemini"];
      sIMLabel = [v8 SIMLabel];
      v20 = [v15 stringWithFormat:v18, sIMLabel];

      goto LABEL_17;
    }

    v21 = @"NETWORK_RESTRICTED_TEXT";
  }

  v18 = [mainBundle2 localizedStringForKey:v21 value:&stru_283094718 table:@"SpringBoard"];
  v20 = [v15 stringWithFormat:v18];
LABEL_17:

  [v5 setTitle:v14];
  [v5 setMessage:v20];
  if (!configure)
  {
    v22 = MEMORY[0x277D750F8];
    mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
    v24 = [mainBundle3 localizedStringForKey:@"DISMISS_ALERT" value:&stru_283094718 table:@"SpringBoard"];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __69__SBNetworkReselectionAlertItem_configure_requirePasscodeForActions___block_invoke;
    v33[3] = &unk_2783A8A40;
    v33[4] = self;
    v25 = [v22 actionWithTitle:v24 style:0 handler:v33];
    [v5 addAction:v25];

    v26 = MEMORY[0x277D750F8];
    mainBundle4 = [MEMORY[0x277CCA8D8] mainBundle];
    v28 = [mainBundle4 localizedStringForKey:@"SETTINGS" value:&stru_283094718 table:@"SpringBoard"];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __69__SBNetworkReselectionAlertItem_configure_requirePasscodeForActions___block_invoke_2;
    v32[3] = &unk_2783A8A40;
    v32[4] = self;
    v29 = [v26 actionWithTitle:v28 style:0 handler:v32];

    [v5 addAction:v29];
    [v5 setPreferredAction:v29];
  }
}

uint64_t __69__SBNetworkReselectionAlertItem_configure_requirePasscodeForActions___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _showPrefs];
  v2 = *(a1 + 32);

  return [v2 deactivateForButton];
}

@end
@interface SBPasscodeAlertItem
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (SBPasscodeAlertItem)initWithPasscodeMode:(int)a3 unlockScreenType:(int)a4 simplePasscodeType:(int)a5;
- (void)_clearAlertController;
- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4;
- (void)configureTextField:(id)a3;
- (void)dealloc;
- (void)didEndCall;
- (void)makeEmergencyCall;
- (void)submitPassword;
@end

@implementation SBPasscodeAlertItem

- (SBPasscodeAlertItem)initWithPasscodeMode:(int)a3 unlockScreenType:(int)a4 simplePasscodeType:(int)a5
{
  v12.receiver = self;
  v12.super_class = SBPasscodeAlertItem;
  v8 = [(SBAlertItem *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_mode = a3;
    v8->_unlockScreenType = a4;
    v8->_simplePasscodeType = a5;
    v10 = +[SBTelephonyManager sharedTelephonyManager];
    v9->_hasEmergencyCall = [v10 hasCellularTelephony];

    v9->_alreadySubmittedPassword = 0;
  }

  return v9;
}

- (void)dealloc
{
  v3 = [(SBAlertItem *)self alertController];
  v4 = [v3 textFields];
  v5 = [v4 firstObject];

  if (v5)
  {
    [v5 setDelegate:0];
    [v5 removeTarget:self action:sel_submitPassword forControlEvents:0x80000];
  }

  v6.receiver = self;
  v6.super_class = SBPasscodeAlertItem;
  [(SBPasscodeAlertItem *)&v6 dealloc];
}

- (void)submitPassword
{
  if (!self->_alreadySubmittedPassword)
  {
    self->_alreadySubmittedPassword = 1;
    v3 = [(SBAlertItem *)self alertController];
    v4 = [v3 textFields];
    v5 = [v4 firstObject];
    v7 = [v5 text];

    v6 = +[SBPasscodeController sharedInstance];
    [v6 _passwordEntered:v7];
  }
}

- (void)makeEmergencyCall
{
  v2 = +[SBTelephonyManager sharedTelephonyManager];
  v3 = [v2 inCall];

  if (v3)
  {
    v4 = +[SBWorkspace mainWorkspace];
    v5 = [v4 inCallPresentationManager];
    [v5 reactivateInCallForReason:3];
  }

  else
  {
    v4 = [SBApp authenticationController];
    if ([v4 hasPasscodeSet])
    {
      [v4 revokeAuthenticationImmediatelyForPublicReason:@"PasscodeController - makeEmergencyCall"];
    }

    dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_107);
  }

  v6 = +[SBPasscodeController sharedInstance];
  [v6 _abort];
}

void __40__SBPasscodeAlertItem_makeEmergencyCall__block_invoke()
{
  v10[3] = *MEMORY[0x277D85DE8];
  v0 = +[SBLockScreenManager sharedInstance];
  v9[0] = @"SBUILockOptionsUseScreenOffModeKey";
  v1 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v10[0] = v1;
  v9[1] = @"SBUILockOptionsLockAutomaticallyKey";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v10[1] = v2;
  v9[2] = @"SBUILockOptionsForceLockKey";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v10[2] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];
  [v0 lockUIFromSource:9 withOptions:v4];

  v5 = dispatch_walltime(0, 250000000);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__SBPasscodeAlertItem_makeEmergencyCall__block_invoke_2;
  v7[3] = &unk_2783A8C18;
  v8 = v0;
  v6 = v0;
  dispatch_after(v5, MEMORY[0x277D85CD0], v7);
}

void __40__SBPasscodeAlertItem_makeEmergencyCall__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) lockScreenEnvironment];
  v1 = [v2 callController];
  [v1 launchEmergencyDialer];
}

- (void)_clearAlertController
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(SBAlertItem *)self alertController];
  v4 = [v3 textFields];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        [v9 setDelegate:0];
        [v9 removeTarget:self action:sel_submitPassword forControlEvents:0x80000];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10.receiver = self;
  v10.super_class = SBPasscodeAlertItem;
  [(SBAlertItem *)&v10 _clearAlertController];
}

- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4
{
  v5 = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [(SBAlertItem *)self alertController];
  v7 = [v6 textFields];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [v6 textFields];
    v10 = [v9 objectAtIndex:0];
    [(SBPasscodeAlertItem *)self configureTextField:v10];
  }

  else
  {
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __59__SBPasscodeAlertItem_configure_requirePasscodeForActions___block_invoke;
    v31[3] = &unk_2783B2190;
    v31[4] = self;
    [v6 addTextFieldWithConfigurationHandler:v31];
  }

  mode = self->_mode;
  v12 = @"PASSCODE_ALERT_NEXT";
  if (mode == 2)
  {
    v14 = @"CONFIRM_NEW_PASSCODE";
    v15 = v5;
LABEL_11:
    v17 = [v15 localizedStringForKey:v14 value:&stru_283094718 table:@"SpringBoard"];
    [v6 setTitle:v17];
    goto LABEL_12;
  }

  if (mode != 1)
  {
    if (mode)
    {
      goto LABEL_15;
    }

    v13 = [v5 localizedStringForKey:@"ENTER_CURRENT_PASSCODE" value:&stru_283094718 table:@"SpringBoard"];
    [v6 setMessage:v13];

    v14 = @"PASSCODE_ALERT_TITLE";
    v15 = v5;
    goto LABEL_11;
  }

  v16 = [v5 localizedStringForKey:@"ENTER_NEW_PASSCODE" value:&stru_283094718 table:@"SpringBoard"];
  [v6 setTitle:v16];

  if (self->_errorString)
  {
    [v6 setMessage:?];
    goto LABEL_13;
  }

  v17 = [MEMORY[0x277D262A0] sharedConnection];
  v28 = [v17 localizedDescriptionOfDefaultNewPasscodeConstraints];
  [v6 setMessage:v28];

LABEL_12:
LABEL_13:
  if (self->_mode == 2)
  {
    v12 = @"PASSCODE_ALERT_DONE";
  }

LABEL_15:
  v18 = [v5 localizedStringForKey:v12 value:&stru_283094718 table:@"SpringBoard"];
  if (self->_hasEmergencyCall)
  {
    v19 = +[SBTelephonyManager sharedTelephonyManager];
    v20 = [v19 inCall];
    v21 = @"PASSCODE_ALERT_EMERGENCY";
    if (v20)
    {
      v21 = @"PASSCODE_ALERT_CANCEL";
    }

    v22 = v21;

    v23 = MEMORY[0x277D750F8];
    v24 = [v5 localizedStringForKey:v22 value:&stru_283094718 table:@"SpringBoard"];

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __59__SBPasscodeAlertItem_configure_requirePasscodeForActions___block_invoke_2;
    v30[3] = &unk_2783A8A40;
    v30[4] = self;
    v25 = [v23 actionWithTitle:v24 style:1 handler:v30];
    [v6 addAction:v25];

    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __59__SBPasscodeAlertItem_configure_requirePasscodeForActions___block_invoke_3;
  v29[3] = &unk_2783A8A40;
  v29[4] = self;
  v27 = [MEMORY[0x277D750F8] actionWithTitle:v18 style:v26 handler:v29];
  [v6 addAction:v27];
}

- (void)configureTextField:(id)a3
{
  v4 = a3;
  [v4 setSecureTextEntry:1];
  [v4 setDelegate:self];
  [v4 addTarget:self action:sel_submitPassword forControlEvents:0x80000];
  [v4 setKeyboardAppearance:1];
  [v4 setKeyboardType:4 * (self->_unlockScreenType != 2)];
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v10 = a3;
  v11 = a5;
  if (self->_unlockScreenType)
  {
    goto LABEL_8;
  }

  simplePasscodeType = self->_simplePasscodeType;
  if (simplePasscodeType == 1)
  {
    v14 = 6;
  }

  else
  {
    if (simplePasscodeType == -1)
    {
      v13 = [MEMORY[0x277CCA890] currentHandler];
      [v13 handleFailureInMethod:a2 object:self file:@"SBPasscodeController.m" lineNumber:191 description:{@"Illegal condition: unlock type is simple, but no simple passcode type detected."}];
    }

    v14 = 4;
  }

  if (location + length < v14)
  {
LABEL_8:
    v15 = 1;
  }

  else
  {
    v15 = [v11 length] == 0;
  }

  return v15;
}

- (void)didEndCall
{
  if (self->_hasEmergencyCall)
  {
    v15[11] = v2;
    v15[12] = v3;
    v5 = [(SBAlertItem *)self alertController];
    v6 = [v5 actions];
    v7 = [MEMORY[0x277CCA8D8] mainBundle];
    v8 = [v7 localizedStringForKey:@"PASSCODE_ALERT_EMERGENCY" value:&stru_283094718 table:@"SpringBoard"];

    v9 = MEMORY[0x277CBEB18];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __33__SBPasscodeAlertItem_didEndCall__block_invoke;
    v15[3] = &unk_2783A8A40;
    v15[4] = self;
    v10 = [MEMORY[0x277D750F8] actionWithTitle:v8 style:1 handler:v15];
    v11 = [v9 arrayWithObject:v10];

    if ([v6 count] >= 2)
    {
      v12 = 1;
      do
      {
        v13 = [v6 objectAtIndex:v12];
        [v11 addObject:v13];

        ++v12;
      }

      while (v12 < [v6 count]);
    }

    v14 = [MEMORY[0x277CBEA60] arrayWithArray:v11];
    [v5 _setActions:v14];
  }
}

@end
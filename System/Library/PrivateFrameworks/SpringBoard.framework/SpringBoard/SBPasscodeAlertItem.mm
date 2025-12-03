@interface SBPasscodeAlertItem
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (SBPasscodeAlertItem)initWithPasscodeMode:(int)mode unlockScreenType:(int)type simplePasscodeType:(int)passcodeType;
- (void)_clearAlertController;
- (void)configure:(BOOL)configure requirePasscodeForActions:(BOOL)actions;
- (void)configureTextField:(id)field;
- (void)dealloc;
- (void)didEndCall;
- (void)makeEmergencyCall;
- (void)submitPassword;
@end

@implementation SBPasscodeAlertItem

- (SBPasscodeAlertItem)initWithPasscodeMode:(int)mode unlockScreenType:(int)type simplePasscodeType:(int)passcodeType
{
  v12.receiver = self;
  v12.super_class = SBPasscodeAlertItem;
  v8 = [(SBAlertItem *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_mode = mode;
    v8->_unlockScreenType = type;
    v8->_simplePasscodeType = passcodeType;
    v10 = +[SBTelephonyManager sharedTelephonyManager];
    v9->_hasEmergencyCall = [v10 hasCellularTelephony];

    v9->_alreadySubmittedPassword = 0;
  }

  return v9;
}

- (void)dealloc
{
  alertController = [(SBAlertItem *)self alertController];
  textFields = [alertController textFields];
  firstObject = [textFields firstObject];

  if (firstObject)
  {
    [firstObject setDelegate:0];
    [firstObject removeTarget:self action:sel_submitPassword forControlEvents:0x80000];
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
    alertController = [(SBAlertItem *)self alertController];
    textFields = [alertController textFields];
    firstObject = [textFields firstObject];
    text = [firstObject text];

    v6 = +[SBPasscodeController sharedInstance];
    [v6 _passwordEntered:text];
  }
}

- (void)makeEmergencyCall
{
  v2 = +[SBTelephonyManager sharedTelephonyManager];
  inCall = [v2 inCall];

  if (inCall)
  {
    authenticationController = +[SBWorkspace mainWorkspace];
    inCallPresentationManager = [authenticationController inCallPresentationManager];
    [inCallPresentationManager reactivateInCallForReason:3];
  }

  else
  {
    authenticationController = [SBApp authenticationController];
    if ([authenticationController hasPasscodeSet])
    {
      [authenticationController revokeAuthenticationImmediatelyForPublicReason:@"PasscodeController - makeEmergencyCall"];
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
  alertController = [(SBAlertItem *)self alertController];
  textFields = [alertController textFields];

  v5 = [textFields countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(textFields);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        [v9 setDelegate:0];
        [v9 removeTarget:self action:sel_submitPassword forControlEvents:0x80000];
      }

      v6 = [textFields countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10.receiver = self;
  v10.super_class = SBPasscodeAlertItem;
  [(SBAlertItem *)&v10 _clearAlertController];
}

- (void)configure:(BOOL)configure requirePasscodeForActions:(BOOL)actions
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  alertController = [(SBAlertItem *)self alertController];
  textFields = [alertController textFields];
  v8 = [textFields count];

  if (v8)
  {
    textFields2 = [alertController textFields];
    v10 = [textFields2 objectAtIndex:0];
    [(SBPasscodeAlertItem *)self configureTextField:v10];
  }

  else
  {
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __59__SBPasscodeAlertItem_configure_requirePasscodeForActions___block_invoke;
    v31[3] = &unk_2783B2190;
    v31[4] = self;
    [alertController addTextFieldWithConfigurationHandler:v31];
  }

  mode = self->_mode;
  v12 = @"PASSCODE_ALERT_NEXT";
  if (mode == 2)
  {
    v14 = @"CONFIRM_NEW_PASSCODE";
    v15 = mainBundle;
LABEL_11:
    mEMORY[0x277D262A0] = [v15 localizedStringForKey:v14 value:&stru_283094718 table:@"SpringBoard"];
    [alertController setTitle:mEMORY[0x277D262A0]];
    goto LABEL_12;
  }

  if (mode != 1)
  {
    if (mode)
    {
      goto LABEL_15;
    }

    v13 = [mainBundle localizedStringForKey:@"ENTER_CURRENT_PASSCODE" value:&stru_283094718 table:@"SpringBoard"];
    [alertController setMessage:v13];

    v14 = @"PASSCODE_ALERT_TITLE";
    v15 = mainBundle;
    goto LABEL_11;
  }

  v16 = [mainBundle localizedStringForKey:@"ENTER_NEW_PASSCODE" value:&stru_283094718 table:@"SpringBoard"];
  [alertController setTitle:v16];

  if (self->_errorString)
  {
    [alertController setMessage:?];
    goto LABEL_13;
  }

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  localizedDescriptionOfDefaultNewPasscodeConstraints = [mEMORY[0x277D262A0] localizedDescriptionOfDefaultNewPasscodeConstraints];
  [alertController setMessage:localizedDescriptionOfDefaultNewPasscodeConstraints];

LABEL_12:
LABEL_13:
  if (self->_mode == 2)
  {
    v12 = @"PASSCODE_ALERT_DONE";
  }

LABEL_15:
  v18 = [mainBundle localizedStringForKey:v12 value:&stru_283094718 table:@"SpringBoard"];
  if (self->_hasEmergencyCall)
  {
    v19 = +[SBTelephonyManager sharedTelephonyManager];
    inCall = [v19 inCall];
    v21 = @"PASSCODE_ALERT_EMERGENCY";
    if (inCall)
    {
      v21 = @"PASSCODE_ALERT_CANCEL";
    }

    v22 = v21;

    v23 = MEMORY[0x277D750F8];
    v24 = [mainBundle localizedStringForKey:v22 value:&stru_283094718 table:@"SpringBoard"];

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __59__SBPasscodeAlertItem_configure_requirePasscodeForActions___block_invoke_2;
    v30[3] = &unk_2783A8A40;
    v30[4] = self;
    v25 = [v23 actionWithTitle:v24 style:1 handler:v30];
    [alertController addAction:v25];

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
  [alertController addAction:v27];
}

- (void)configureTextField:(id)field
{
  fieldCopy = field;
  [fieldCopy setSecureTextEntry:1];
  [fieldCopy setDelegate:self];
  [fieldCopy addTarget:self action:sel_submitPassword forControlEvents:0x80000];
  [fieldCopy setKeyboardAppearance:1];
  [fieldCopy setKeyboardType:4 * (self->_unlockScreenType != 2)];
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  fieldCopy = field;
  stringCopy = string;
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
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"SBPasscodeController.m" lineNumber:191 description:{@"Illegal condition: unlock type is simple, but no simple passcode type detected."}];
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
    v15 = [stringCopy length] == 0;
  }

  return v15;
}

- (void)didEndCall
{
  if (self->_hasEmergencyCall)
  {
    v15[11] = v2;
    v15[12] = v3;
    alertController = [(SBAlertItem *)self alertController];
    actions = [alertController actions];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v8 = [mainBundle localizedStringForKey:@"PASSCODE_ALERT_EMERGENCY" value:&stru_283094718 table:@"SpringBoard"];

    v9 = MEMORY[0x277CBEB18];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __33__SBPasscodeAlertItem_didEndCall__block_invoke;
    v15[3] = &unk_2783A8A40;
    v15[4] = self;
    v10 = [MEMORY[0x277D750F8] actionWithTitle:v8 style:1 handler:v15];
    v11 = [v9 arrayWithObject:v10];

    if ([actions count] >= 2)
    {
      v12 = 1;
      do
      {
        v13 = [actions objectAtIndex:v12];
        [v11 addObject:v13];

        ++v12;
      }

      while (v12 < [actions count]);
    }

    v14 = [MEMORY[0x277CBEA60] arrayWithArray:v11];
    [alertController _setActions:v14];
  }
}

@end
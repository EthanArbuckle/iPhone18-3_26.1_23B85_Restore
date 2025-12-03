@interface STRestrictionsPINController
- (BOOL)validatePIN:(id)n;
- (id)pinInstructionsPrompt;
- (void)_setOptionsTitle:(id)title optionsHandler:(id)handler;
- (void)recoveryAuthenticationFailed:(id)failed;
- (void)recoveryAuthenticationSucceededForPasscode:(id)passcode;
- (void)setPIN:(id)n;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation STRestrictionsPINController

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  specifier = [(STRestrictionsPINController *)self specifier];
  v6 = [specifier objectForKeyedSubscript:@"PreventDismissalWhenDone"];
  -[DevicePINController setShouldDismissWhenDone:](self, "setShouldDismissWhenDone:", [v6 BOOLValue] ^ 1);

  v7 = [specifier objectForKeyedSubscript:@"PINOptionsTitle"];
  v8 = [specifier objectForKeyedSubscript:@"PINOptionsHandler"];
  v9 = v8;
  if (v7 && v8)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v11 = [standardUserDefaults integerForKey:@"PasscodeRecoveryAttempts"];

    if ([(DevicePINController *)self isBlocked]&& v11 >= 1)
    {
      [(DevicePINController *)self unblockTime];
      v13 = v12;
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v15 = v13 - v14;
      v16 = MEMORY[0x277CBEBB8];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __46__STRestrictionsPINController_viewWillAppear___block_invoke;
      v21[3] = &unk_279B7DDC0;
      v21[4] = self;
      v22 = v7;
      v23 = v9;
      v17 = [v16 timerWithTimeInterval:0 repeats:v21 block:v15];
      currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
      [currentRunLoop addTimer:v17 forMode:*MEMORY[0x277CBE640]];
    }

    else
    {
      [(STRestrictionsPINController *)self _setOptionsTitle:v7 optionsHandler:v9];
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STRestrictionsPINController.viewWillAppear", buf, 2u);
  }

  v19.receiver = self;
  v19.super_class = STRestrictionsPINController;
  [(DevicePINController *)&v19 viewWillAppear:appearCopy];
}

void __46__STRestrictionsPINController_viewWillAppear___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setOptionsTitle:*(a1 + 40) optionsHandler:*(a1 + 48)];
  v2 = [*(a1 + 32) pane];
  [*(a1 + 32) setPane:v2];
  [v2 slideToNewPasscodeField:objc_msgSend(*(a1 + 32) requiresKeyboard:"simplePIN") numericOnly:objc_msgSend(*(a1 + 32) transition:"requiresKeyboard") showsOptionsButton:{objc_msgSend(*(a1 + 32), "isNumericPIN"), 0, 1}];
}

- (void)_setOptionsTitle:(id)title optionsHandler:(id)handler
{
  handlerCopy = handler;
  [(DevicePINController *)self setPasscodeOptionsTitle:title];
  selfCopy = self;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__STRestrictionsPINController__setOptionsTitle_optionsHandler___block_invoke;
  v10[3] = &unk_279B7DDE8;
  v11 = selfCopy;
  v12 = handlerCopy;
  v8 = selfCopy;
  v9 = handlerCopy;
  [(DevicePINController *)v8 setPasscodeOptionsHandler:v10];
}

- (id)pinInstructionsPrompt
{
  v3 = *(&self->super.super.super.super.super.super.super.isa + *MEMORY[0x277D3FBC0]);
  if (v3 <= 3 && ([MEMORY[0x277CCACA8] stringWithFormat:off_279B7DE30[v3], *(&self->super.super.super.super.super.super.super.isa + *MEMORY[0x277D3FBC8])], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = +[STScreenTimeSettingsUIBundle bundle];
    pinInstructionsPrompt = [v6 localizedStringForKey:v5 value:&stru_28766E5A8 table:0];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = STRestrictionsPINController;
    pinInstructionsPrompt = [(PSRestrictionsPINController *)&v9 pinInstructionsPrompt];
  }

  return pinInstructionsPrompt;
}

- (BOOL)validatePIN:(id)n
{
  nCopy = n;
  pinDelegate = [(DevicePINController *)self pinDelegate];
  v6 = [pinDelegate validatePIN:nCopy forPINController:self];

  if (v6)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults setInteger:0 forKey:@"PasscodeRecoveryAttempts"];
  }

  return v6;
}

- (void)setPIN:(id)n
{
  nCopy = n;
  pinDelegate = [(DevicePINController *)self pinDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    pinDelegate2 = [(DevicePINController *)self pinDelegate];
    [pinDelegate2 setPIN:nCopy forPINController:self];
  }
}

- (void)recoveryAuthenticationSucceededForPasscode:(id)passcode
{
  passcodeCopy = passcode;
  if ([(DevicePINController *)self isBlocked])
  {
    [(DevicePINController *)self attemptValidationWithPIN:passcodeCopy];
    pane = [(PSDetailController *)self pane];
    [pane showError:0 error:0 isBlocked:0 animate:0];
  }

  [(DevicePINController *)self pinEntered:passcodeCopy];
}

- (void)recoveryAuthenticationFailed:(id)failed
{
  failedCopy = failed;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [standardUserDefaults integerForKey:@"PasscodeRecoveryAttempts"];
  if ([(DevicePINController *)self isBlocked])
  {
    [standardUserDefaults setInteger:++v6 forKey:@"PasscodeRecoveryAttempts"];
  }

  else
  {
    [(DevicePINController *)self pinEntered:0];
  }

  if (v6 >= 1)
  {
    [failedCopy setHidden:1];
    [(DevicePINController *)self unblockTime];
    v8 = v7;
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v10 = v8 - v9;
    v11 = MEMORY[0x277CBEBB8];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __60__STRestrictionsPINController_recoveryAuthenticationFailed___block_invoke;
    v14[3] = &unk_279B7DE10;
    v15 = failedCopy;
    v12 = [v11 timerWithTimeInterval:0 repeats:v14 block:v10];
    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    [currentRunLoop addTimer:v12 forMode:*MEMORY[0x277CBE640]];
  }
}

@end
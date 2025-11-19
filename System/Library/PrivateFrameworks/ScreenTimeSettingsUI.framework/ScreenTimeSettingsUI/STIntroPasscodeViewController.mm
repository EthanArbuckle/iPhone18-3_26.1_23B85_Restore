@interface STIntroPasscodeViewController
- (STIntroPasscodeViewController)initWithIntroductionModel:(id)a3 childName:(id)a4 askForRecoveryAppleID:(BOOL)a5 altDSID:(id)a6 isChildOrNotSignedIntoiCloud:(BOOL)a7 continueHandler:(id)a8;
- (id)instructions;
- (void)_transitionToFirstPasscodePaneWithState:(int64_t)a3;
- (void)passcodeTypeChanged:(BOOL)a3;
- (void)userEnteredPasscode:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation STIntroPasscodeViewController

- (STIntroPasscodeViewController)initWithIntroductionModel:(id)a3 childName:(id)a4 askForRecoveryAppleID:(BOOL)a5 altDSID:(id)a6 isChildOrNotSignedIntoiCloud:(BOOL)a7 continueHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a8;
  v17 = a6;
  v18 = +[STScreenTimeSettingsUIBundle bundle];
  v19 = [v18 localizedStringForKey:@"IntroPasscodeSetupTitle" value:&stru_28766E5A8 table:0];

  v29.receiver = self;
  v29.super_class = STIntroPasscodeViewController;
  v20 = [(STIntroPasscodeViewController *)&v29 initWithTitle:v19 detailText:0 symbolName:@"lock.shield.fill" contentLayout:2];
  v21 = [v17 copy];

  altDSID = v20->_altDSID;
  v20->_altDSID = v21;

  v20->_askForRecoveryAppleID = a5;
  childName = v20->_childName;
  v20->_childName = v15;
  v24 = v15;

  v20->_childOrNotSignedIntoiCloud = a7;
  v25 = [v16 copy];

  continueHandler = v20->_continueHandler;
  v20->_continueHandler = v25;

  model = v20->_model;
  v20->_model = v14;

  v20->_passcodeState = 0;
  return v20;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = STIntroPasscodeViewController;
  [(OBPasscodeViewController *)&v6 viewDidLoad];
  [(OBPasscodeViewController *)self setDelegate:self];
  [(OBPasscodeViewController *)self configureForPasscodeEntry:0 length:4];
  v3 = [(STIntroPasscodeViewController *)self headerView];
  v4 = [(STIntroPasscodeViewController *)self instructions];
  [v3 setDetailText:v4];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STIntroPasscodeViewController.viewDidLoad", v5, 2u);
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = STIntroPasscodeViewController;
  [(OBBaseWelcomeController *)&v6 viewDidAppear:?];
  [(STIntroPasscodeViewController *)self passcodeTypeChanged:v3];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STIntroPasscodeViewController.viewDidAppear", v5, 2u);
  }
}

- (void)passcodeTypeChanged:(BOOL)a3
{
  v3 = a3;
  v4 = [(OBBaseWelcomeController *)self navigationItem];
  [v4 setRightBarButtonItem:0 animated:v3];
}

- (id)instructions
{
  v3 = [(STIntroPasscodeViewController *)self passcodeState];
  v4 = 0;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v5 = +[STScreenTimeSettingsUIBundle bundle];
      v6 = v5;
      v7 = @"IntroPasscodeSetupInstructionsFailure";
    }

    else
    {
      if (v3 != 3)
      {
        goto LABEL_14;
      }

      v5 = +[STScreenTimeSettingsUIBundle bundle];
      v6 = v5;
      v7 = @"RecoveryAppleIDInvalidError";
    }

    goto LABEL_12;
  }

  if (v3)
  {
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    v5 = +[STScreenTimeSettingsUIBundle bundle];
    v6 = v5;
    v7 = @"IntroPasscodeSetupInstructionsReentry";
    goto LABEL_12;
  }

  v8 = [(STIntroPasscodeViewController *)self childName];
  v9 = [v8 length];

  if (!v9)
  {
    v5 = +[STScreenTimeSettingsUIBundle bundle];
    v6 = v5;
    v7 = @"IntroPasscodeSetupInstructionsNoChild";
LABEL_12:
    v4 = [v5 localizedStringForKey:v7 value:&stru_28766E5A8 table:0];
    goto LABEL_13;
  }

  v10 = MEMORY[0x277CCACA8];
  v6 = +[STScreenTimeSettingsUIBundle bundle];
  v11 = [v6 localizedStringForKey:@"IntroPasscodeSetupInstructionsWithChild" value:&stru_28766E5A8 table:0];
  v12 = [(STIntroPasscodeViewController *)self childName];
  v4 = [v10 localizedStringWithFormat:v11, v12];

LABEL_13:
LABEL_14:

  return v4;
}

- (void)userEnteredPasscode:(id)a3
{
  v4 = a3;
  if ([(STIntroPasscodeViewController *)self passcodeState]== 1)
  {
    v5 = [(STIntroPasscodeViewController *)self initialPasscode];
    v6 = [v4 isEqualToString:v5];

    if (!v6)
    {
      [(OBPasscodeViewController *)self shakePasscodeEntry];
      [(STIntroPasscodeViewController *)self _transitionToFirstPasscodePaneWithState:2];
      goto LABEL_9;
    }

    if (![(STIntroPasscodeViewController *)self askForRecoveryAppleID])
    {
      v15 = [(STIntroPasscodeViewController *)self model];
      [v15 setParentalControlsPasscode:v4];

      v16 = [(STIntroPasscodeViewController *)self continueHandler];
      v16[2]();

      goto LABEL_9;
    }

    v7 = objc_opt_new();
    [v7 setIsEphemeral:1];
    [v7 setAuthenticationType:2];
    [v7 setShouldPromptForPasswordOnly:1];
    [v7 _setProxiedAppName:@"ScreenTime"];
    [v7 setPresentingViewController:self];
    [v7 setAppProvidedContext:@"setup"];
    v8 = +[STScreenTimeSettingsUIBundle bundle];
    v9 = [v8 localizedStringForKey:@"RecoveryAppleIDAlertTitle" value:&stru_28766E5A8 table:0];
    [v7 setTitle:v9];

    v10 = [v8 localizedStringForKey:@"RecoveryAppleIDAlertReason" value:&stru_28766E5A8 table:0];
    [v7 setReason:v10];

    v11 = [v8 localizedStringForKey:@"ConfirmationButtonOK" value:&stru_28766E5A8 table:0];
    [v7 setDefaultButtonString:v11];

    v12 = [v8 localizedStringForKey:@"RecoveryAppleIDAlertSkipButton" value:&stru_28766E5A8 table:0];
    [v7 setCancelButtonString:v12];

    v13 = objc_opt_new();
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __53__STIntroPasscodeViewController_userEnteredPasscode___block_invoke;
    v17[3] = &unk_279B7DAD0;
    v17[4] = self;
    v18 = v4;
    v19 = v8;
    v14 = v8;
    [v13 authenticateWithContext:v7 completion:v17];
  }

  else
  {
    [(STIntroPasscodeViewController *)self setInitialPasscode:v4];
    [(STIntroPasscodeViewController *)self setPasscodeState:1];
    [(OBPasscodeViewController *)self clearPasscodeEntry];
    v7 = [(STIntroPasscodeViewController *)self headerView];
    v14 = [(STIntroPasscodeViewController *)self instructions];
    [v7 setDetailText:v14];
  }

LABEL_9:
}

void __53__STIntroPasscodeViewController_userEnteredPasscode___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CCABD8] mainQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__STIntroPasscodeViewController_userEnteredPasscode___block_invoke_2;
  v11[3] = &unk_279B7DAA8;
  v12 = v5;
  v13 = v6;
  v8 = *(a1 + 40);
  v14 = *(a1 + 32);
  v15 = v8;
  v16 = *(a1 + 48);
  v9 = v6;
  v10 = v5;
  [v7 addOperationWithBlock:v11];
}

void __53__STIntroPasscodeViewController_userEnteredPasscode___block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x277CEFF78]];
  v5 = (a1 + 40);
  v4 = *(a1 + 40);
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v3 == 0;
  }

  if (v6)
  {
    v7 = [v4 domain];
    if ([v7 isEqualToString:*MEMORY[0x277CEFF48]])
    {
      v8 = [*v5 code];

      if (v8 == -7003)
      {
        v9 = @"RecoveryAppleIDAlertConfirmSkipTitle";
LABEL_20:
        v13 = [*(a1 + 64) localizedStringForKey:v9 value:&stru_28766E5A8 table:0];
        if ([*(a1 + 48) isChildOrNotSignedIntoiCloud])
        {
          v15 = @"RecoveryAppleIDAlertConfirmSkipMessageChild";
        }

        else
        {
          v15 = @"RecoveryAppleIDAlertConfirmSkipMessage";
        }

        v16 = [*(a1 + 64) localizedStringForKey:v15 value:&stru_28766E5A8 table:0];
        v17 = [MEMORY[0x277D75110] alertControllerWithTitle:v13 message:v16 preferredStyle:1];
        v18 = [*(a1 + 64) localizedStringForKey:@"RecoveryAppleIDAlertSkipButton" value:&stru_28766E5A8 table:0];
        v19 = MEMORY[0x277D750F8];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __53__STIntroPasscodeViewController_userEnteredPasscode___block_invoke_79;
        v32[3] = &unk_279B7CDF0;
        v20 = *(a1 + 56);
        v32[4] = *(a1 + 48);
        v33 = v20;
        v21 = [v19 actionWithTitle:v18 style:0 handler:v32];
        [v17 addAction:v21];

        v22 = [*(a1 + 64) localizedStringForKey:@"RecoveryAppleIDAlertSetButton" value:&stru_28766E5A8 table:0];
        v23 = MEMORY[0x277D750F8];
        v26 = MEMORY[0x277D85DD0];
        v27 = 3221225472;
        v28 = __53__STIntroPasscodeViewController_userEnteredPasscode___block_invoke_2_84;
        v29 = &unk_279B7CDF0;
        v24 = *(a1 + 56);
        v30 = *(a1 + 48);
        v31 = v24;
        v25 = [v23 actionWithTitle:v22 style:1 handler:&v26];
        [v17 addAction:{v25, v26, v27, v28, v29, v30}];

        [*(a1 + 48) presentViewController:v17 animated:1 completion:0];
        goto LABEL_24;
      }
    }

    else
    {
    }

    if (*v5)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __53__STIntroPasscodeViewController_userEnteredPasscode___block_invoke_2_cold_1((a1 + 40));
      }
    }

    else if (!v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      __53__STIntroPasscodeViewController_userEnteredPasscode___block_invoke_2_cold_2(v2);
    }

    v9 = @"RecoveryAppleIDUnknownError";
    goto LABEL_20;
  }

  v10 = [*(a1 + 48) altDSID];
  v11 = [v10 isEqualToString:v3];

  v12 = *(a1 + 48);
  if (!v11)
  {
    v13 = [v12 model];
    [v13 setParentalControlsPasscode:*(a1 + 56)];
    [v13 setRecoveryAltDSID:v3];
    v14 = [*(a1 + 48) continueHandler];
    v14[2]();

LABEL_24:
    goto LABEL_25;
  }

  [v12 _transitionToFirstPasscodePaneWithState:3];
LABEL_25:
}

void __53__STIntroPasscodeViewController_userEnteredPasscode___block_invoke_79(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) model];
  [v3 setParentalControlsPasscode:v2];

  v4 = [*(a1 + 32) continueHandler];
  v4[2]();
}

- (void)_transitionToFirstPasscodePaneWithState:(int64_t)a3
{
  [(STIntroPasscodeViewController *)self setInitialPasscode:0];
  [(STIntroPasscodeViewController *)self setPasscodeState:a3];
  [(OBPasscodeViewController *)self clearPasscodeEntry];
  v6 = [(STIntroPasscodeViewController *)self headerView];
  v5 = [(STIntroPasscodeViewController *)self instructions];
  [v6 setDetailText:v5];
}

void __53__STIntroPasscodeViewController_userEnteredPasscode___block_invoke_2_cold_1(uint64_t *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = 138543362;
  v3 = v1;
  _os_log_error_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to authenticate recovery Apple ID: %{public}@", &v2, 0xCu);
}

void __53__STIntroPasscodeViewController_userEnteredPasscode___block_invoke_2_cold_2(uint64_t *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = 138412290;
  v3 = v1;
  _os_log_fault_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Authenticated user without an altDSID: %@", &v2, 0xCu);
}

@end
@interface BFFFinishSetupBiometricAndPasscodeController
- (BFFFinishSetupBiometricAndPasscodeController)initWithFlowSkipIdentifier:(id)identifier;
- (id)createViewControllerWithPasscode:(id)passcode completion:(id)completion;
- (id)passcodeViewControllerCustomFirstEntryInstructions:(id)instructions;
- (id)preconditionViewControllerWithCompletion:(id)completion;
- (id)viewControllerWithCompletion:(id)completion;
- (void)_userDidTapPasscodeCancelButton:(id)button;
- (void)passcodeViewController:(id)controller didFinishWithPasscodeCreation:(id)creation;
@end

@implementation BFFFinishSetupBiometricAndPasscodeController

- (BFFFinishSetupBiometricAndPasscodeController)initWithFlowSkipIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = BFFFinishSetupBiometricAndPasscodeController;
  v5 = [(BFFFinishSetupBiometricAndPasscodeController *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    flowSkipIdentifier = v5->_flowSkipIdentifier;
    v5->_flowSkipIdentifier = v6;
  }

  return v5;
}

- (id)preconditionViewControllerWithCompletion:(id)completion
{
  completionCopy = completion;
  [(BFFFinishSetupBiometricAndPasscodeController *)self setPasscode:0];
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isPasscodeSet = [mEMORY[0x277D262A0] isPasscodeSet];

  v7 = 0;
  if (isPasscodeSet)
  {
    v7 = objc_alloc_init(BFFFinishSetupPINVerificationViewController);
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __89__BFFFinishSetupBiometricAndPasscodeController_preconditionViewControllerWithCompletion___block_invoke;
    v13 = &unk_279BB4D40;
    selfCopy = self;
    v15 = completionCopy;
    [(BFFFinishSetupPINVerificationViewController *)v7 setCompletion:&v10];
    if (BFFIsiPad())
    {
      [(BFFFinishSetupPINVerificationViewController *)v7 setModalPresentationStyle:7, v10, v11, v12, v13, selfCopy];
      popoverPresentationController = [(BFFFinishSetupPINVerificationViewController *)v7 popoverPresentationController];
      [popoverPresentationController setDelegate:self];
      [popoverPresentationController setPermittedArrowDirections:0];
      [popoverPresentationController setSourceView:0];
      [popoverPresentationController _setCentersPopoverIfSourceViewNotSet:1];
    }

    else
    {
      [(BFFFinishSetupPINVerificationViewController *)v7 setModalPresentationStyle:17, v10, v11, v12, v13, selfCopy];
    }
  }

  return v7;
}

void __89__BFFFinishSetupBiometricAndPasscodeController_preconditionViewControllerWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setPasscode:a2];
  v4 = *(a1 + 40);
  if (v4)
  {
    if (a2)
    {
      v5 = *(v4 + 16);

      v5();
    }

    else
    {
      v6 = [*(a1 + 32) flowSkipController];
      [v6 didCompleteFlow:*(*(a1 + 32) + 8)];

      v7 = *(a1 + 40);
      v9[0] = *(*(a1 + 32) + 8);
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
      (*(v7 + 16))(v7, 0, v8);
    }
  }
}

- (id)createViewControllerWithPasscode:(id)passcode completion:(id)completion
{
  v4 = _BYLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_265AC5000, v4, OS_LOG_TYPE_DEFAULT, "Finish setup biometric subclass failed to implement -createViewController.", v6, 2u);
  }

  return 0;
}

- (id)viewControllerWithCompletion:(id)completion
{
  completionCopy = completion;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__0;
  v17[4] = __Block_byref_object_dispose__0;
  selfCopy = self;
  v18 = selfCopy;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __77__BFFFinishSetupBiometricAndPasscodeController_viewControllerWithCompletion___block_invoke;
  v14[3] = &unk_279BB4D68;
  v16 = v17;
  v6 = completionCopy;
  v15 = v6;
  [(BFFFinishSetupBiometricAndPasscodeController *)selfCopy setCompletion:v14];
  passcode = [(BFFFinishSetupBiometricAndPasscodeController *)selfCopy passcode];
  v8 = [passcode length];

  passcode2 = [(BFFFinishSetupBiometricAndPasscodeController *)selfCopy passcode];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__BFFFinishSetupBiometricAndPasscodeController_viewControllerWithCompletion___block_invoke_2;
  v12[3] = &unk_279BB4D90;
  v12[4] = selfCopy;
  v13 = v8 == 0;
  v10 = [(BFFFinishSetupBiometricAndPasscodeController *)selfCopy createViewControllerWithPasscode:passcode2 completion:v12];

  _Block_object_dispose(v17, 8);

  return v10;
}

void __77__BFFFinishSetupBiometricAndPasscodeController_viewControllerWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
  v6 = a3;

  (*(*(a1 + 32) + 16))();
}

void __77__BFFFinishSetupBiometricAndPasscodeController_viewControllerWithCompletion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [*(a1 + 32) flowSkipController];
  [v6 didCompleteFlow:*(*(a1 + 32) + 8)];

  if (!a3)
  {
    if (*(a1 + 40) == 1)
    {
      v7 = objc_alloc_init(BFFPasscodeViewController);
      [(BFFPasscodeViewController *)v7 setPasscodeCreationDelegate:*(a1 + 32)];
      v8 = [(BFFPasscodeViewController *)v7 view];
      v9 = +[BFFStyle sharedStyle];
      v10 = [v9 backgroundColor];
      [v8 setBackgroundColor:v10];

      v11 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:*(a1 + 32) action:sel__userDidTapPasscodeCancelButton_];
      v12 = [(BFFPasscodeViewController *)v7 navigationItem];
      [v12 setLeftBarButtonItem:v11 animated:0];

      v13 = [v5 parentViewController];
      [v13 showViewController:v7 sender:*(a1 + 32)];

      goto LABEL_9;
    }

    v14 = [MEMORY[0x277D262A0] sharedConnection];
    v15 = [*(a1 + 32) passcode];
    [v14 setFingerprintUnlockAllowed:1 passcode:v15 completion:0];
  }

  v16 = *(a1 + 32);
  v17 = *(v16 + 48);
  if (v17)
  {
    if (a3 != 2)
    {
      a3 = a3 == 1;
    }

    v21[0] = *(v16 + 8);
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    (*(v17 + 16))(v17, a3, v18);

    v19 = *(a1 + 32);
    v20 = *(v19 + 48);
    *(v19 + 48) = 0;
  }

LABEL_9:
}

- (void)_userDidTapPasscodeCancelButton:(id)button
{
  v11[2] = *MEMORY[0x277D85DE8];
  v4 = _BYLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_265AC5000, v4, OS_LOG_TYPE_DEFAULT, "Finish setup biometric user did cancel passcode", v10, 2u);
  }

  paneFeatureAnalyticsManager = [(BFFFinishSetupBiometricAndPasscodeController *)self paneFeatureAnalyticsManager];
  [paneFeatureAnalyticsManager recordActionWithValue:MEMORY[0x277CBEC28] forFeature:11];

  completion = self->_completion;
  if (completion)
  {
    v7 = *MEMORY[0x277D4D9B8];
    v11[0] = self->_flowSkipIdentifier;
    v11[1] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
    completion[2](completion, 2, v8);

    v9 = self->_completion;
    self->_completion = 0;
  }
}

- (id)passcodeViewControllerCustomFirstEntryInstructions:(id)instructions
{
  capabilities = [(BFFFinishSetupBiometricAndPasscodeController *)self capabilities];
  supportsPearl = [capabilities supportsPearl];

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = v5;
  if (supportsPearl)
  {
    v7 = @"ENTER_PASSCODE_SUBTITLE_FACEID";
  }

  else
  {
    v7 = @"ENTER_PASSCODE_SUBTITLE_TOUCHID";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_287761F90 table:@"Localizable"];

  return v8;
}

- (void)passcodeViewController:(id)controller didFinishWithPasscodeCreation:(id)creation
{
  v19 = *MEMORY[0x277D85DE8];
  creationCopy = creation;
  v6 = _BYLoggingFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInt:creationCopy != 0];
    *buf = 138412290;
    v18 = v7;
    _os_log_impl(&dword_265AC5000, v6, OS_LOG_TYPE_DEFAULT, "Finish setup biometric passcode did finish with passcode %@", buf, 0xCu);
  }

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  [mEMORY[0x277D262A0] setFingerprintUnlockAllowed:1 passcode:creationCopy completion:0];

  flowSkipController = [(BFFFinishSetupBiometricAndPasscodeController *)self flowSkipController];
  v10 = *MEMORY[0x277D4D9B8];
  [flowSkipController didCompleteFlow:*MEMORY[0x277D4D9B8]];

  CFPreferencesSetValue(@"Passcode4Presented", *MEMORY[0x277CBED28], *MEMORY[0x277D4D9E0], *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
  paneFeatureAnalyticsManager = [(BFFFinishSetupBiometricAndPasscodeController *)self paneFeatureAnalyticsManager];
  v12 = [MEMORY[0x277CCABB0] numberWithInt:creationCopy != 0];
  [paneFeatureAnalyticsManager recordActionWithValue:v12 forFeature:11];

  completion = self->_completion;
  if (completion)
  {
    v16[0] = self->_flowSkipIdentifier;
    v16[1] = v10;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    completion[2](completion, 0, v14);

    v15 = self->_completion;
    self->_completion = 0;
  }
}

@end
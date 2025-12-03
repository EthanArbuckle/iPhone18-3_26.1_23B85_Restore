@interface BFFFinishSetupPasscodeController
+ (id)finishSetupPasscodeController;
- (id)viewControllerWithCompletion:(id)completion;
- (void)_completeWithPasscode:(id)passcode result:(unint64_t)result;
- (void)_userDidTapCancelButton:(id)button;
- (void)passcodeViewController:(id)controller didFinishWithPasscodeCreation:(id)creation;
@end

@implementation BFFFinishSetupPasscodeController

+ (id)finishSetupPasscodeController
{
  v2 = objc_alloc_init(BFFFinishSetupPasscodeController);

  return v2;
}

- (id)viewControllerWithCompletion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  [(BFFFinishSetupPasscodeController *)self setCompletion:completion];
  v4 = objc_alloc_init(BFFPasscodeViewController);
  passcodeViewController = self->_passcodeViewController;
  self->_passcodeViewController = v4;

  v6 = _BYLoggingFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = self->_passcodeViewController;
    v16 = 138412290;
    v17 = v7;
    _os_log_impl(&dword_265AC5000, v6, OS_LOG_TYPE_DEFAULT, "Finish setup created passcodeController %@", &v16, 0xCu);
  }

  [(BFFPasscodeViewController *)self->_passcodeViewController setPasscodeCreationDelegate:self];
  objc_storeStrong(&self->_selfReference, self);
  view = [(BFFPasscodeViewController *)self->_passcodeViewController view];
  v9 = +[BFFStyle sharedStyle];
  backgroundColor = [v9 backgroundColor];
  [view setBackgroundColor:backgroundColor];

  v11 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__userDidTapCancelButton_];
  navigationItem = [(BFFPasscodeViewController *)self->_passcodeViewController navigationItem];
  [navigationItem setLeftBarButtonItem:v11 animated:0];

  v13 = self->_passcodeViewController;
  v14 = v13;

  return v13;
}

- (void)_userDidTapCancelButton:(id)button
{
  v4 = _BYLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_265AC5000, v4, OS_LOG_TYPE_DEFAULT, "Finish setup passcode user did cancel", v5, 2u);
  }

  [(BFFFinishSetupPasscodeController *)self _completeWithPasscode:0 result:2];
}

- (void)_completeWithPasscode:(id)passcode result:(unint64_t)result
{
  v15[1] = *MEMORY[0x277D85DE8];
  flowSkipController = [(BFFFinishSetupPasscodeController *)self flowSkipController];
  v8 = *MEMORY[0x277D4D9B8];
  [flowSkipController didCompleteFlow:*MEMORY[0x277D4D9B8]];

  CFPreferencesSetValue(@"Passcode4Presented", *MEMORY[0x277CBED28], *MEMORY[0x277D4D9E0], *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
  paneFeatureAnalyticsManager = [(BFFFinishSetupPasscodeController *)self paneFeatureAnalyticsManager];
  v10 = [MEMORY[0x277CCABB0] numberWithInt:passcode != 0];
  [paneFeatureAnalyticsManager recordActionWithValue:v10 forFeature:11];

  completion = self->_completion;
  if (completion)
  {
    v15[0] = v8;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    completion[2](completion, result, v12);

    v13 = self->_completion;
    self->_completion = 0;
  }

  selfReference = self->_selfReference;
  self->_selfReference = 0;
}

- (void)passcodeViewController:(id)controller didFinishWithPasscodeCreation:(id)creation
{
  controllerCopy = controller;
  creationCopy = creation;
  v8 = _BYLoggingFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_265AC5000, v8, OS_LOG_TYPE_DEFAULT, "Finish setup passcode did finish", buf, 2u);
  }

  if ([creationCopy length])
  {
    view = [controllerCopy view];
    [view setUserInteractionEnabled:0];

    navigationItem = [controllerCopy navigationItem];
    hidesBackButton = [navigationItem hidesBackButton];

    navigationItem2 = [controllerCopy navigationItem];
    [navigationItem2 setHidesBackButton:1];

    [BFFViewControllerSpinnerManager startAnimatingSpinnerFor:controllerCopy identifier:@"FINISH_SETUP_PASSCODE_CONTROLLER"];
    v13 = _BYLoggingFacility();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_265AC5000, v13, OS_LOG_TYPE_DEFAULT, "Finish setup passcode will prompt for device passcode change", buf, 2u);
    }

    mEMORY[0x277D3FA38] = [MEMORY[0x277D3FA38] sharedManager];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __89__BFFFinishSetupPasscodeController_passcodeViewController_didFinishWithPasscodeCreation___block_invoke;
    v15[3] = &unk_279BB4C08;
    v19 = hidesBackButton;
    v16 = controllerCopy;
    selfCopy = self;
    v18 = creationCopy;
    [mEMORY[0x277D3FA38] promptForDevicePasscodeChangeToPasscode:v18 overController:v16 completion:v15];
  }

  else
  {
    -[BFFFinishSetupPasscodeController _completeWithPasscode:result:](self, "_completeWithPasscode:result:", creationCopy, [creationCopy length] == 0);
  }
}

void __89__BFFFinishSetupPasscodeController_passcodeViewController_didFinishWithPasscodeCreation___block_invoke(uint64_t a1, int a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _BYLoggingFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v16 = a2;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_265AC5000, v6, OS_LOG_TYPE_DEFAULT, "Finish setup passcode did prompt for device passcode change with success %d error %@", buf, 0x12u);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __89__BFFFinishSetupPasscodeController_passcodeViewController_didFinishWithPasscodeCreation___block_invoke_11;
  v10[3] = &unk_279BB4BE0;
  v7 = *(a1 + 32);
  v14 = *(a1 + 56);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v11 = v7;
  v12 = v8;
  v13 = v9;
  dispatch_async(MEMORY[0x277D85CD0], v10);
}

uint64_t __89__BFFFinishSetupPasscodeController_passcodeViewController_didFinishWithPasscodeCreation___block_invoke_11(uint64_t a1)
{
  [BFFViewControllerSpinnerManager stopAnimatingSpinnerFor:@"FINISH_SETUP_PASSCODE_CONTROLLER"];
  v2 = [*(a1 + 32) navigationItem];
  [v2 setHidesBackButton:*(a1 + 56)];

  v3 = [*(a1 + 32) view];
  [v3 setUserInteractionEnabled:1];

  v4 = *(a1 + 40);
  v5 = *(a1 + 48);

  return [v4 _completeWithPasscode:v5 result:0];
}

@end
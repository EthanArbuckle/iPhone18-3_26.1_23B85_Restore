@interface PKPaymentVerificationMethodsViewController
- (BOOL)pkui_disablesAutomaticDismissalUponEnteringBackground;
- (PKPaymentVerificationMethodsViewController)initWithVerificationController:(id)a3 fieldsModel:(id)a4;
- (PKPaymentVerificationMethodsViewController)initWithVerificationController:(id)a3 verificationMethodGroups:(id)a4;
- (PKPaymentVerificationMethodsViewControllerFlowItemDelegate)flowItemDelegate;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_newVerificationRequest;
- (id)_requestErrorAlertController:(id)a3;
- (id)defaultHeaderViewSubTitle;
- (id)defaultHeaderViewTitle;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)visibleFieldIdentifiers;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_configure;
- (void)_handleVerificationFinished;
- (void)_loadVerificationOptions;
- (void)_terminateSetupFlow;
- (void)_verifyLaterButtonPressed;
- (void)handleNextButtonTapped:(id)a3;
- (void)loadView;
- (void)showActivitySpinnerWithTitle:(id)a3 subtitle:(id)a4;
- (void)showLoadingUI:(BOOL)a3 animated:(BOOL)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PKPaymentVerificationMethodsViewController

- (PKPaymentVerificationMethodsViewController)initWithVerificationController:(id)a3 fieldsModel:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKPaymentVerificationController *)v6 webService];
  v15.receiver = self;
  v15.super_class = PKPaymentVerificationMethodsViewController;
  v9 = [(PKPaymentSetupFieldsViewController *)&v15 initWithWebService:v8 context:[(PKPaymentVerificationController *)v6 context] setupDelegate:0 setupFieldsModel:v7];

  verificationController = v9->_verificationController;
  v9->_verificationController = v6;
  v11 = v6;

  v12 = [[PKPaymentSetupVerificationMethodTableController alloc] initWithVerificationController:v11];
  methodTableController = v9->_methodTableController;
  v9->_methodTableController = v12;

  return v9;
}

- (PKPaymentVerificationMethodsViewController)initWithVerificationController:(id)a3 verificationMethodGroups:(id)a4
{
  v6 = a4;
  v7 = [(PKPaymentVerificationMethodsViewController *)self initWithVerificationController:a3];
  v8 = v7;
  if (v7)
  {
    [(PKPaymentSetupVerificationMethodTableController *)v7->_methodTableController setVerificationMethodGroups:v6];
  }

  return v8;
}

- (void)loadView
{
  v12.receiver = self;
  v12.super_class = PKPaymentVerificationMethodsViewController;
  [(PKPaymentSetupFieldsViewController *)&v12 loadView];
  v3 = [(PKPaymentSetupFieldsViewController *)self headerView];
  v4 = [(PKPaymentVerificationController *)self->_verificationController passSnapshot];
  if (v4)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = PKUIGetMinScreenWidthType();
    [v3 setPassSnapshot:v4 withSize:0 animated:0 needsCorners:{dbl_1BE1148A0[v6 == 0], dbl_1BE1148B0[v6 == 0]}];
  }

  v7 = [(PKPaymentSetupTableViewController *)self dockView];
  v8 = [v7 footerView];
  v9 = [v8 skipCardButton];
  v10 = PKLocalizedPaymentString(&cfstr_ActivationVeri.isa);
  [v9 setTitle:v10 forState:0];

  [v9 addTarget:self action:sel__verifyLaterButtonPressed forControlEvents:0x2000];
  [(PKPaymentSetupFieldsViewController *)self setPreferPrimaryButtonInNavigationBar:0];
  v11 = PKLocalizedPaymentString(&cfstr_Next.isa);
  [(PKPaymentSetupFieldsViewController *)self setPrimaryButtonTitleText:v11];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKPaymentVerificationMethodsViewController;
  [(PKPaymentSetupFieldsViewController *)&v4 viewWillAppear:a3];
  [(PKPaymentSetupFieldsViewController *)self setHidesBackButton:1 animated:0];
  [(PKPaymentVerificationMethodsViewController *)self _configure];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKPaymentVerificationMethodsViewController;
  [(PKPaymentSetupFieldsViewController *)&v4 viewDidAppear:a3];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportViewAppeared];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PKPaymentVerificationMethodsViewController;
  [(PKPaymentVerificationMethodsViewController *)&v5 viewDidDisappear:a3];
  v4 = [(PKPaymentSetupFieldsViewController *)self fieldsModel];
  [v4 resetAllPaymentSetupFieldValues];
}

- (void)_configure
{
  v3 = [(PKPaymentSetupFieldsViewController *)self fieldsModel];
  v4 = [v3 visiblePaymentSetupFields];
  if ([v4 count])
  {
  }

  else
  {
    v5 = [(PKPaymentSetupVerificationMethodTableController *)self->_methodTableController verificationMethodGroups];
    v6 = [v5 count];

    if (!v6)
    {
      v7 = [(PKPaymentVerificationMethodsViewController *)self defaultHeaderViewTitle];
      [(PKPaymentVerificationMethodsViewController *)self showActivitySpinnerWithTitle:v7 subtitle:&stru_1F3BD7330];

      v8 = [(PKPaymentSetupTableViewController *)self dockView];
      [v8 setButtonsEnabled:0];

      objc_initWeak(&location, self);
      v9 = MEMORY[0x1E69B8EE0];
      v10 = [(PKPaymentVerificationController *)self->_verificationController pass];
      v11 = [v9 requestWithPass:v10];

      verificationController = self->_verificationController;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __56__PKPaymentVerificationMethodsViewController__configure__block_invoke;
      v13[3] = &unk_1E8012C78;
      objc_copyWeak(&v14, &location);
      [(PKPaymentVerificationController *)verificationController performVerificationOptionsRequest:v11 completion:v13];
      objc_destroyWeak(&v14);

      objc_destroyWeak(&location);
      return;
    }
  }

  [(PKPaymentVerificationMethodsViewController *)self _loadVerificationOptions];
}

void __56__PKPaymentVerificationMethodsViewController__configure__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__PKPaymentVerificationMethodsViewController__configure__block_invoke_2;
    block[3] = &unk_1E8012C50;
    v9 = WeakRetained;
    v11 = a2;
    v10 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __56__PKPaymentVerificationMethodsViewController__configure__block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) hideActivitySpinner];
  v2 = [*(a1 + 32) dockView];
  [v2 setButtonsEnabled:1];

  if (*(a1 + 48) == 1)
  {
    v3 = [*(*(a1 + 32) + 1288) verificationRecord];
    v4 = [v3 verificationStatus];
    if ((v4 - 2) < 2 || v4 == 4000)
    {
      v10 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "Updating verification OTP methods", &v13, 2u);
      }

      v11 = *(*(a1 + 32) + 1264);
      v6 = [v3 methodGroups];
      [v11 setVerificationMethodGroups:v6];
    }

    else if (v4 == 1)
    {
      v5 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Updating verification fields", &v13, 2u);
      }

      v6 = [*(a1 + 32) fieldsModel];
      v7 = [v3 requiredVerificationFields];
      [v6 replaceAllPaymentSetupFields:v7];
    }

    else
    {
      v12 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "Verification status: unknown, showing error.", &v13, 2u);
      }

      v6 = [*(a1 + 32) _requestErrorAlertController:*(a1 + 40)];
      if (v6)
      {
        [*(a1 + 32) presentViewController:v6 animated:1 completion:0];
      }
    }

    [*(a1 + 32) _loadVerificationOptions];
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 40) description];
      v13 = 138412290;
      v14 = v9;
      _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Showing error: %@", &v13, 0xCu);
    }

    v3 = [*(a1 + 32) _requestErrorAlertController:*(a1 + 40)];
    if (v3)
    {
      [*(a1 + 32) presentViewController:v3 animated:1 completion:0];
    }
  }
}

- (void)_loadVerificationOptions
{
  v3 = [(PKPaymentVerificationController *)self->_verificationController verificationRecord];
  self->_verificationStatus = [v3 verificationStatus];

  v4 = [(PKPaymentVerificationMethodsViewController *)self defaultHeaderViewTitle];
  v5 = [(PKPaymentVerificationMethodsViewController *)self defaultHeaderViewSubTitle];
  [(PKPaymentSetupFieldsViewController *)self setHeaderViewTitle:v4 subtitle:v5];

  v6 = [(PKPaymentSetupTableViewController *)self dockView];
  [v6 setButtonsEnabled:1];

  v7 = [(PKPaymentSetupTableViewController *)self tableView];
  [v7 reloadData];

  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = [(PKPaymentVerificationController *)self->_verificationController verificationRecord];
  v9 = [v8 methodGroups];

  v10 = [v9 pk_arrayByApplyingBlock:&__block_literal_global_24];
  v11 = [v10 componentsJoinedByString:{@", "}];
  [v12 setObject:v11 forKeyedSubscript:*MEMORY[0x1E69BB438]];

  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportStateChangedWithContext:v12];
}

id __70__PKPaymentVerificationMethodsViewController__loadVerificationOptions__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 methods];
  v3 = [v2 pk_createArrayByApplyingBlock:&__block_literal_global_189];
  v4 = [v3 componentsJoinedByString:@"|"];

  return v4;
}

- (id)defaultHeaderViewTitle
{
  verificationStatus = self->_verificationStatus;
  if ((verificationStatus - 2) < 2 || verificationStatus == 4000)
  {
    v3 = [(PKPaymentSetupVerificationMethodTableController *)self->_methodTableController defaultHeaderViewTitle];
  }

  else
  {
    v5 = [(PKPaymentVerificationController *)self->_verificationController pass];
    v6 = [v5 supportsBarcodePayment];

    if (v6)
    {
      PKLocalizedAquamanString(&cfstr_AccountVerific.isa);
    }

    else
    {
      PKLocalizedPaymentString(&cfstr_CardVerificati.isa);
    }
    v3 = ;
  }

  return v3;
}

- (id)defaultHeaderViewSubTitle
{
  verificationStatus = self->_verificationStatus;
  if ((verificationStatus - 2) < 2 || verificationStatus == 4000)
  {
    v3 = [(PKPaymentSetupVerificationMethodTableController *)self->_methodTableController defaultHeaderViewSubTitle];
  }

  else
  {
    v3 = PKLocalizedPaymentString(&cfstr_EnterVerificat.isa);
  }

  return v3;
}

- (id)visibleFieldIdentifiers
{
  v2 = [(PKPaymentSetupFieldsViewController *)self fieldsModel];
  v3 = [v2 visibleSetupFieldIdentifiers];

  return v3;
}

- (void)showActivitySpinnerWithTitle:(id)a3 subtitle:(id)a4
{
  [(PKPaymentSetupFieldsViewController *)self setHeaderViewTitle:a3 subtitle:a4];

  [(PKPaymentVerificationMethodsViewController *)self showLoadingUI:1 animated:1];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  if (self->_verificationStatus == 1)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = PKPaymentVerificationMethodsViewController;
    return [(PKPaymentSetupFieldsViewController *)&v7 numberOfSectionsInTableView:a3];
  }

  else
  {
    methodTableController = self->_methodTableController;

    return [(PKPaymentSetupVerificationMethodTableController *)methodTableController numberOfSectionsInTableView:a3];
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (self->_verificationStatus == 1)
  {
    v9 = v4;
    v10 = v5;
    v8.receiver = self;
    v8.super_class = PKPaymentVerificationMethodsViewController;
    return [(PKPaymentSetupFieldsViewController *)&v8 tableView:a3 numberOfRowsInSection:a4];
  }

  else
  {
    methodTableController = self->_methodTableController;

    return [(PKPaymentSetupVerificationMethodTableController *)methodTableController tableView:a3 numberOfRowsInSection:a4];
  }
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  if (self->_verificationStatus == 1)
  {
    v9 = v4;
    v10 = v5;
    v8.receiver = self;
    v8.super_class = PKPaymentVerificationMethodsViewController;
    [(PKPaymentSetupFieldsViewController *)&v8 tableView:a3 heightForRowAtIndexPath:a4];
  }

  else
  {
    methodTableController = self->_methodTableController;

    [(PKPaymentSetupVerificationMethodTableController *)methodTableController tableView:a3 heightForRowAtIndexPath:a4];
  }

  return result;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  if (self->_verificationStatus == 1)
  {
    v6.receiver = self;
    v6.super_class = PKPaymentVerificationMethodsViewController;
    v4 = [(PKPaymentSetupFieldsViewController *)&v6 tableView:a3 cellForRowAtIndexPath:a4];
  }

  else
  {
    v4 = [(PKPaymentSetupVerificationMethodTableController *)self->_methodTableController tableView:a3 cellForRowAtIndexPath:a4];
  }

  return v4;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  if (self->_verificationStatus == 1)
  {
    v8 = v4;
    v9 = v5;
    v7.receiver = self;
    v7.super_class = PKPaymentVerificationMethodsViewController;
    [(PKPaymentSetupFieldsViewController *)&v7 tableView:a3 didSelectRowAtIndexPath:a4];
  }

  else
  {
    methodTableController = self->_methodTableController;

    [(PKPaymentSetupVerificationMethodTableController *)methodTableController tableView:a3 didSelectRowAtIndexPath:a4];
  }
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  if (self->_verificationStatus == 1)
  {
    v9 = v5;
    v10 = v6;
    v8.receiver = self;
    v8.super_class = PKPaymentVerificationMethodsViewController;
    [(PKPaymentSetupFieldsViewController *)&v8 tableView:a3 willDisplayCell:a4 forRowAtIndexPath:a5];
  }

  else
  {
    methodTableController = self->_methodTableController;

    [(PKPaymentSetupVerificationMethodTableController *)methodTableController tableView:a3 willDisplayCell:a4 forRowAtIndexPath:a5];
  }
}

- (void)_verifyLaterButtonPressed
{
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportButtonPressed:4];

  [(PKPaymentVerificationMethodsViewController *)self _handleVerificationFinished];
}

- (void)_handleVerificationFinished
{
  WeakRetained = objc_loadWeakRetained(&self->_flowItemDelegate);
  [WeakRetained verificationMethodsViewControllerDidFinish:self];
}

- (void)_terminateSetupFlow
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Terminating setup flow", v8, 2u);
  }

  v4 = [(PKPaymentSetupFieldsViewController *)self setupDelegate];
  WeakRetained = objc_loadWeakRetained(&self->_flowItemDelegate);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_flowItemDelegate);
    [v6 verificationMethodsViewControllerDidFinish:self];
  }

  else if (v4)
  {
    [v4 viewControllerDidTerminateSetupFlow:self];
    [(PKPaymentSetupFieldsViewController *)self setHidesBackButton:0 animated:0];
  }

  else
  {
    v7 = [(PKPaymentVerificationMethodsViewController *)self presentingViewController];
    [v7 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)handleNextButtonTapped:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = [(PKPaymentVerificationMethodsViewController *)self _newVerificationRequest];
  v5 = [v4 methodGroup];
  v6 = PKLogFacilityTypeGetObject();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v13 = 138412290;
      v14 = v5;
      _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Performing verification update request for method group: %@", &v13, 0xCu);
    }

    [(PKPaymentVerificationMethodsViewController *)self showActivitySpinnerWithTitle:0 subtitle:0];
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = [v5 methods];
    v10 = [v9 pk_createArrayByApplyingBlock:&__block_literal_global_189];
    v11 = [v10 componentsJoinedByString:@"|"];

    [v8 safelySetObject:v11 forKey:*MEMORY[0x1E69BB430]];
    [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportButtonPressed:0 context:v8];
    [(PKPaymentVerificationController *)self->_verificationController setActiveVerificationMethodGroup:v5];
    WeakRetained = objc_loadWeakRetained(&self->_flowItemDelegate);

    if (WeakRetained)
    {
      v6 = objc_loadWeakRetained(&self->_flowItemDelegate);
      [v6 performVerificationForViewController:self methodGroup:v5];
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Failed to continue verification because flow item delegate not set", &v13, 2u);
    }

    v6 = v8;
  }

  else if (v7)
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Unable to performing verification because no method group selected", &v13, 2u);
  }
}

- (BOOL)pkui_disablesAutomaticDismissalUponEnteringBackground
{
  v2 = [(PKPaymentVerificationController *)self->_verificationController verificationRecord];
  v3 = [v2 verificationStatus] == 1;

  return v3;
}

- (id)_newVerificationRequest
{
  verificationStatus = self->_verificationStatus;
  if ((verificationStatus - 2) < 2 || verificationStatus == 4000)
  {
    methodTableController = self->_methodTableController;

    return [(PKPaymentSetupVerificationMethodTableController *)methodTableController newVerificationRequest];
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E69B8EF0]);
    v7 = [(PKPaymentVerificationController *)self->_verificationController pass];
    [v6 setPass:v7];

    v8 = [(PKPaymentSetupFieldsViewController *)self fieldsModel];
    v9 = *MEMORY[0x1E69BC258];
    v10 = [v8 submissionValuesForDestination:*MEMORY[0x1E69BC258]];

    [v6 setDynamicFieldParameters:v10];
    v11 = [(PKPaymentSetupFieldsViewController *)self fieldsModel];
    v12 = [v11 secureSubmissionValuesForDestination:v9];

    [v6 setEncryptedDynamicFieldParameters:v12];
    return v6;
  }
}

- (id)_requestErrorAlertController:(id)a3
{
  v4 = a3;
  v5 = PKLocalizedPaymentString(&cfstr_ActivationNotA.isa);
  v6 = PKLocalizedPaymentString(&cfstr_ActivationNotA_0.isa);
  v7 = [v4 domain];
  v8 = [v7 isEqualToString:*MEMORY[0x1E696A978]];

  if (v8)
  {
    v9 = PKLocalizedPaymentString(&cfstr_CouldNotConnec.isa);

    v10 = PKLocalizedPaymentString(&cfstr_CouldNotConnec_0.isa);
LABEL_10:
    v15 = v6;
    v5 = v9;
    v6 = v10;
    goto LABEL_11;
  }

  v11 = [v4 domain];
  v12 = [v11 isEqualToString:*MEMORY[0x1E69BC6F0]];

  if (!v12)
  {
    v15 = [v4 domain];
    if (![v15 isEqualToString:*MEMORY[0x1E69BC300]])
    {
LABEL_11:

      goto LABEL_12;
    }

    v16 = [v4 localizedFailureReason];

    if (!v16)
    {
LABEL_12:
      v17 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v5 message:v6 preferredStyle:1];
      objc_initWeak(&location, self);
      v18 = MEMORY[0x1E69DC648];
      v19 = PKLocalizedString(&cfstr_OkButtonTitle.isa);
      v22 = MEMORY[0x1E69E9820];
      v23 = 3221225472;
      v24 = __75__PKPaymentVerificationMethodsViewController__requestErrorAlertController___block_invoke;
      v25 = &unk_1E8012CC0;
      objc_copyWeak(&v26, &location);
      v20 = [v18 actionWithTitle:v19 style:1 handler:&v22];
      [v17 addAction:{v20, v22, v23, v24, v25}];

      objc_destroyWeak(&v26);
      objc_destroyWeak(&location);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v13 = [v4 code];
  if ((v13 - 2) < 4)
  {
LABEL_5:
    v14 = [v4 localizedFailureReason];

    if (!v14)
    {
      goto LABEL_12;
    }

LABEL_9:
    v9 = [v4 localizedFailureReason];

    v10 = [v4 localizedRecoverySuggestion];
    goto LABEL_10;
  }

  if (v13 != 1)
  {
    if (v13)
    {
      goto LABEL_12;
    }

    goto LABEL_5;
  }

  v17 = 0;
LABEL_13:

  return v17;
}

void __75__PKPaymentVerificationMethodsViewController__requestErrorAlertController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleVerificationFinished];
}

- (void)showLoadingUI:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v6 = [(PKPaymentVerificationMethodsViewController *)self view:a3];
  [v6 setUserInteractionEnabled:v4 ^ 1];

  v8 = [(PKPaymentSetupTableViewController *)self dockView];
  [v8 setButtonsEnabled:v4 ^ 1];
  if ([v8 hasPrimaryButton])
  {
    v7 = [v8 primaryButton];
    [v7 setShowSpinner:v4];
  }
}

- (PKPaymentVerificationMethodsViewControllerFlowItemDelegate)flowItemDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_flowItemDelegate);

  return WeakRetained;
}

@end
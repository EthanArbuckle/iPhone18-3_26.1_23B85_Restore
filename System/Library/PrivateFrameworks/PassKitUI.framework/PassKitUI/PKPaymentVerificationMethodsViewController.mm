@interface PKPaymentVerificationMethodsViewController
- (BOOL)pkui_disablesAutomaticDismissalUponEnteringBackground;
- (PKPaymentVerificationMethodsViewController)initWithVerificationController:(id)controller fieldsModel:(id)model;
- (PKPaymentVerificationMethodsViewController)initWithVerificationController:(id)controller verificationMethodGroups:(id)groups;
- (PKPaymentVerificationMethodsViewControllerFlowItemDelegate)flowItemDelegate;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_newVerificationRequest;
- (id)_requestErrorAlertController:(id)controller;
- (id)defaultHeaderViewSubTitle;
- (id)defaultHeaderViewTitle;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)visibleFieldIdentifiers;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_configure;
- (void)_handleVerificationFinished;
- (void)_loadVerificationOptions;
- (void)_terminateSetupFlow;
- (void)_verifyLaterButtonPressed;
- (void)handleNextButtonTapped:(id)tapped;
- (void)loadView;
- (void)showActivitySpinnerWithTitle:(id)title subtitle:(id)subtitle;
- (void)showLoadingUI:(BOOL)i animated:(BOOL)animated;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PKPaymentVerificationMethodsViewController

- (PKPaymentVerificationMethodsViewController)initWithVerificationController:(id)controller fieldsModel:(id)model
{
  controllerCopy = controller;
  modelCopy = model;
  webService = [(PKPaymentVerificationController *)controllerCopy webService];
  v15.receiver = self;
  v15.super_class = PKPaymentVerificationMethodsViewController;
  v9 = [(PKPaymentSetupFieldsViewController *)&v15 initWithWebService:webService context:[(PKPaymentVerificationController *)controllerCopy context] setupDelegate:0 setupFieldsModel:modelCopy];

  verificationController = v9->_verificationController;
  v9->_verificationController = controllerCopy;
  v11 = controllerCopy;

  v12 = [[PKPaymentSetupVerificationMethodTableController alloc] initWithVerificationController:v11];
  methodTableController = v9->_methodTableController;
  v9->_methodTableController = v12;

  return v9;
}

- (PKPaymentVerificationMethodsViewController)initWithVerificationController:(id)controller verificationMethodGroups:(id)groups
{
  groupsCopy = groups;
  v7 = [(PKPaymentVerificationMethodsViewController *)self initWithVerificationController:controller];
  v8 = v7;
  if (v7)
  {
    [(PKPaymentSetupVerificationMethodTableController *)v7->_methodTableController setVerificationMethodGroups:groupsCopy];
  }

  return v8;
}

- (void)loadView
{
  v12.receiver = self;
  v12.super_class = PKPaymentVerificationMethodsViewController;
  [(PKPaymentSetupFieldsViewController *)&v12 loadView];
  headerView = [(PKPaymentSetupFieldsViewController *)self headerView];
  passSnapshot = [(PKPaymentVerificationController *)self->_verificationController passSnapshot];
  if (passSnapshot)
  {
    v5 = headerView == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = PKUIGetMinScreenWidthType();
    [headerView setPassSnapshot:passSnapshot withSize:0 animated:0 needsCorners:{dbl_1BE1148A0[v6 == 0], dbl_1BE1148B0[v6 == 0]}];
  }

  dockView = [(PKPaymentSetupTableViewController *)self dockView];
  footerView = [dockView footerView];
  skipCardButton = [footerView skipCardButton];
  v10 = PKLocalizedPaymentString(&cfstr_ActivationVeri.isa);
  [skipCardButton setTitle:v10 forState:0];

  [skipCardButton addTarget:self action:sel__verifyLaterButtonPressed forControlEvents:0x2000];
  [(PKPaymentSetupFieldsViewController *)self setPreferPrimaryButtonInNavigationBar:0];
  v11 = PKLocalizedPaymentString(&cfstr_Next.isa);
  [(PKPaymentSetupFieldsViewController *)self setPrimaryButtonTitleText:v11];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKPaymentVerificationMethodsViewController;
  [(PKPaymentSetupFieldsViewController *)&v4 viewWillAppear:appear];
  [(PKPaymentSetupFieldsViewController *)self setHidesBackButton:1 animated:0];
  [(PKPaymentVerificationMethodsViewController *)self _configure];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKPaymentVerificationMethodsViewController;
  [(PKPaymentSetupFieldsViewController *)&v4 viewDidAppear:appear];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportViewAppeared];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = PKPaymentVerificationMethodsViewController;
  [(PKPaymentVerificationMethodsViewController *)&v5 viewDidDisappear:disappear];
  fieldsModel = [(PKPaymentSetupFieldsViewController *)self fieldsModel];
  [fieldsModel resetAllPaymentSetupFieldValues];
}

- (void)_configure
{
  fieldsModel = [(PKPaymentSetupFieldsViewController *)self fieldsModel];
  visiblePaymentSetupFields = [fieldsModel visiblePaymentSetupFields];
  if ([visiblePaymentSetupFields count])
  {
  }

  else
  {
    verificationMethodGroups = [(PKPaymentSetupVerificationMethodTableController *)self->_methodTableController verificationMethodGroups];
    v6 = [verificationMethodGroups count];

    if (!v6)
    {
      defaultHeaderViewTitle = [(PKPaymentVerificationMethodsViewController *)self defaultHeaderViewTitle];
      [(PKPaymentVerificationMethodsViewController *)self showActivitySpinnerWithTitle:defaultHeaderViewTitle subtitle:&stru_1F3BD7330];

      dockView = [(PKPaymentSetupTableViewController *)self dockView];
      [dockView setButtonsEnabled:0];

      objc_initWeak(&location, self);
      v9 = MEMORY[0x1E69B8EE0];
      pass = [(PKPaymentVerificationController *)self->_verificationController pass];
      v11 = [v9 requestWithPass:pass];

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
  verificationRecord = [(PKPaymentVerificationController *)self->_verificationController verificationRecord];
  self->_verificationStatus = [verificationRecord verificationStatus];

  defaultHeaderViewTitle = [(PKPaymentVerificationMethodsViewController *)self defaultHeaderViewTitle];
  defaultHeaderViewSubTitle = [(PKPaymentVerificationMethodsViewController *)self defaultHeaderViewSubTitle];
  [(PKPaymentSetupFieldsViewController *)self setHeaderViewTitle:defaultHeaderViewTitle subtitle:defaultHeaderViewSubTitle];

  dockView = [(PKPaymentSetupTableViewController *)self dockView];
  [dockView setButtonsEnabled:1];

  tableView = [(PKPaymentSetupTableViewController *)self tableView];
  [tableView reloadData];

  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  verificationRecord2 = [(PKPaymentVerificationController *)self->_verificationController verificationRecord];
  methodGroups = [verificationRecord2 methodGroups];

  v10 = [methodGroups pk_arrayByApplyingBlock:&__block_literal_global_24];
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
    defaultHeaderViewTitle = [(PKPaymentSetupVerificationMethodTableController *)self->_methodTableController defaultHeaderViewTitle];
  }

  else
  {
    pass = [(PKPaymentVerificationController *)self->_verificationController pass];
    supportsBarcodePayment = [pass supportsBarcodePayment];

    if (supportsBarcodePayment)
    {
      PKLocalizedAquamanString(&cfstr_AccountVerific.isa);
    }

    else
    {
      PKLocalizedPaymentString(&cfstr_CardVerificati.isa);
    }
    defaultHeaderViewTitle = ;
  }

  return defaultHeaderViewTitle;
}

- (id)defaultHeaderViewSubTitle
{
  verificationStatus = self->_verificationStatus;
  if ((verificationStatus - 2) < 2 || verificationStatus == 4000)
  {
    defaultHeaderViewSubTitle = [(PKPaymentSetupVerificationMethodTableController *)self->_methodTableController defaultHeaderViewSubTitle];
  }

  else
  {
    defaultHeaderViewSubTitle = PKLocalizedPaymentString(&cfstr_EnterVerificat.isa);
  }

  return defaultHeaderViewSubTitle;
}

- (id)visibleFieldIdentifiers
{
  fieldsModel = [(PKPaymentSetupFieldsViewController *)self fieldsModel];
  visibleSetupFieldIdentifiers = [fieldsModel visibleSetupFieldIdentifiers];

  return visibleSetupFieldIdentifiers;
}

- (void)showActivitySpinnerWithTitle:(id)title subtitle:(id)subtitle
{
  [(PKPaymentSetupFieldsViewController *)self setHeaderViewTitle:title subtitle:subtitle];

  [(PKPaymentVerificationMethodsViewController *)self showLoadingUI:1 animated:1];
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  if (self->_verificationStatus == 1)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = PKPaymentVerificationMethodsViewController;
    return [(PKPaymentSetupFieldsViewController *)&v7 numberOfSectionsInTableView:view];
  }

  else
  {
    methodTableController = self->_methodTableController;

    return [(PKPaymentSetupVerificationMethodTableController *)methodTableController numberOfSectionsInTableView:view];
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (self->_verificationStatus == 1)
  {
    v9 = v4;
    v10 = v5;
    v8.receiver = self;
    v8.super_class = PKPaymentVerificationMethodsViewController;
    return [(PKPaymentSetupFieldsViewController *)&v8 tableView:view numberOfRowsInSection:section];
  }

  else
  {
    methodTableController = self->_methodTableController;

    return [(PKPaymentSetupVerificationMethodTableController *)methodTableController tableView:view numberOfRowsInSection:section];
  }
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  if (self->_verificationStatus == 1)
  {
    v9 = v4;
    v10 = v5;
    v8.receiver = self;
    v8.super_class = PKPaymentVerificationMethodsViewController;
    [(PKPaymentSetupFieldsViewController *)&v8 tableView:view heightForRowAtIndexPath:path];
  }

  else
  {
    methodTableController = self->_methodTableController;

    [(PKPaymentSetupVerificationMethodTableController *)methodTableController tableView:view heightForRowAtIndexPath:path];
  }

  return result;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  if (self->_verificationStatus == 1)
  {
    v6.receiver = self;
    v6.super_class = PKPaymentVerificationMethodsViewController;
    v4 = [(PKPaymentSetupFieldsViewController *)&v6 tableView:view cellForRowAtIndexPath:path];
  }

  else
  {
    v4 = [(PKPaymentSetupVerificationMethodTableController *)self->_methodTableController tableView:view cellForRowAtIndexPath:path];
  }

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  if (self->_verificationStatus == 1)
  {
    v8 = v4;
    v9 = v5;
    v7.receiver = self;
    v7.super_class = PKPaymentVerificationMethodsViewController;
    [(PKPaymentSetupFieldsViewController *)&v7 tableView:view didSelectRowAtIndexPath:path];
  }

  else
  {
    methodTableController = self->_methodTableController;

    [(PKPaymentSetupVerificationMethodTableController *)methodTableController tableView:view didSelectRowAtIndexPath:path];
  }
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  if (self->_verificationStatus == 1)
  {
    v9 = v5;
    v10 = v6;
    v8.receiver = self;
    v8.super_class = PKPaymentVerificationMethodsViewController;
    [(PKPaymentSetupFieldsViewController *)&v8 tableView:view willDisplayCell:cell forRowAtIndexPath:path];
  }

  else
  {
    methodTableController = self->_methodTableController;

    [(PKPaymentSetupVerificationMethodTableController *)methodTableController tableView:view willDisplayCell:cell forRowAtIndexPath:path];
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

  setupDelegate = [(PKPaymentSetupFieldsViewController *)self setupDelegate];
  WeakRetained = objc_loadWeakRetained(&self->_flowItemDelegate);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_flowItemDelegate);
    [v6 verificationMethodsViewControllerDidFinish:self];
  }

  else if (setupDelegate)
  {
    [setupDelegate viewControllerDidTerminateSetupFlow:self];
    [(PKPaymentSetupFieldsViewController *)self setHidesBackButton:0 animated:0];
  }

  else
  {
    presentingViewController = [(PKPaymentVerificationMethodsViewController *)self presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)handleNextButtonTapped:(id)tapped
{
  v15 = *MEMORY[0x1E69E9840];
  _newVerificationRequest = [(PKPaymentVerificationMethodsViewController *)self _newVerificationRequest];
  methodGroup = [_newVerificationRequest methodGroup];
  v6 = PKLogFacilityTypeGetObject();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (methodGroup)
  {
    if (v7)
    {
      v13 = 138412290;
      v14 = methodGroup;
      _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Performing verification update request for method group: %@", &v13, 0xCu);
    }

    [(PKPaymentVerificationMethodsViewController *)self showActivitySpinnerWithTitle:0 subtitle:0];
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    methods = [methodGroup methods];
    v10 = [methods pk_createArrayByApplyingBlock:&__block_literal_global_189];
    v11 = [v10 componentsJoinedByString:@"|"];

    [v8 safelySetObject:v11 forKey:*MEMORY[0x1E69BB430]];
    [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportButtonPressed:0 context:v8];
    [(PKPaymentVerificationController *)self->_verificationController setActiveVerificationMethodGroup:methodGroup];
    WeakRetained = objc_loadWeakRetained(&self->_flowItemDelegate);

    if (WeakRetained)
    {
      v6 = objc_loadWeakRetained(&self->_flowItemDelegate);
      [v6 performVerificationForViewController:self methodGroup:methodGroup];
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
  verificationRecord = [(PKPaymentVerificationController *)self->_verificationController verificationRecord];
  v3 = [verificationRecord verificationStatus] == 1;

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
    pass = [(PKPaymentVerificationController *)self->_verificationController pass];
    [v6 setPass:pass];

    fieldsModel = [(PKPaymentSetupFieldsViewController *)self fieldsModel];
    v9 = *MEMORY[0x1E69BC258];
    v10 = [fieldsModel submissionValuesForDestination:*MEMORY[0x1E69BC258]];

    [v6 setDynamicFieldParameters:v10];
    fieldsModel2 = [(PKPaymentSetupFieldsViewController *)self fieldsModel];
    v12 = [fieldsModel2 secureSubmissionValuesForDestination:v9];

    [v6 setEncryptedDynamicFieldParameters:v12];
    return v6;
  }
}

- (id)_requestErrorAlertController:(id)controller
{
  controllerCopy = controller;
  v5 = PKLocalizedPaymentString(&cfstr_ActivationNotA.isa);
  v6 = PKLocalizedPaymentString(&cfstr_ActivationNotA_0.isa);
  domain = [controllerCopy domain];
  v8 = [domain isEqualToString:*MEMORY[0x1E696A978]];

  if (v8)
  {
    localizedFailureReason3 = PKLocalizedPaymentString(&cfstr_CouldNotConnec.isa);

    localizedRecoverySuggestion = PKLocalizedPaymentString(&cfstr_CouldNotConnec_0.isa);
LABEL_10:
    domain3 = v6;
    v5 = localizedFailureReason3;
    v6 = localizedRecoverySuggestion;
    goto LABEL_11;
  }

  domain2 = [controllerCopy domain];
  v12 = [domain2 isEqualToString:*MEMORY[0x1E69BC6F0]];

  if (!v12)
  {
    domain3 = [controllerCopy domain];
    if (![domain3 isEqualToString:*MEMORY[0x1E69BC300]])
    {
LABEL_11:

      goto LABEL_12;
    }

    localizedFailureReason = [controllerCopy localizedFailureReason];

    if (!localizedFailureReason)
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

  code = [controllerCopy code];
  if ((code - 2) < 4)
  {
LABEL_5:
    localizedFailureReason2 = [controllerCopy localizedFailureReason];

    if (!localizedFailureReason2)
    {
      goto LABEL_12;
    }

LABEL_9:
    localizedFailureReason3 = [controllerCopy localizedFailureReason];

    localizedRecoverySuggestion = [controllerCopy localizedRecoverySuggestion];
    goto LABEL_10;
  }

  if (code != 1)
  {
    if (code)
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

- (void)showLoadingUI:(BOOL)i animated:(BOOL)animated
{
  iCopy = i;
  v6 = [(PKPaymentVerificationMethodsViewController *)self view:i];
  [v6 setUserInteractionEnabled:iCopy ^ 1];

  dockView = [(PKPaymentSetupTableViewController *)self dockView];
  [dockView setButtonsEnabled:iCopy ^ 1];
  if ([dockView hasPrimaryButton])
  {
    primaryButton = [dockView primaryButton];
    [primaryButton setShowSpinner:iCopy];
  }
}

- (PKPaymentVerificationMethodsViewControllerFlowItemDelegate)flowItemDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_flowItemDelegate);

  return WeakRetained;
}

@end
@interface PKApplyVerificationTrialDepositViewController
- (BOOL)_needsPreflight;
- (BOOL)_performActionForActionIdentifier:(id)identifier;
- (CGSize)_heroImageSize;
- (PKApplyVerificationTrialDepositViewController)initWithController:(id)controller setupDelegate:(id)delegate verificationPage:(id)page;
- (PKApplyVerificationTrialDepositViewController)initWithSetupDelegate:(id)delegate context:(int64_t)context verificationPage:(id)page account:(id)account;
- (id)_alertControllerForContactSupport;
- (id)_alertControllerForError:(id)error;
- (id)_userEnteredAmounts;
- (unint64_t)_verificationStatus;
- (void)_clearAllTextFields;
- (void)_handleNextButtonTapped;
- (void)_primaryButtonPressed;
- (void)_requestTrialDeposits;
- (void)_secondaryButtonPressed;
- (void)_submitCodes:(id)codes;
- (void)_terminateFlow;
- (void)_updateContentUnavailableConfigurationUsingState:(id)state;
- (void)handleNextButtonTapped:(id)tapped;
- (void)preflightWithCompletion:(id)completion;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PKApplyVerificationTrialDepositViewController

- (PKApplyVerificationTrialDepositViewController)initWithSetupDelegate:(id)delegate context:(int64_t)context verificationPage:(id)page account:(id)account
{
  pageCopy = page;
  accountCopy = account;
  v20.receiver = self;
  v20.super_class = PKApplyVerificationTrialDepositViewController;
  v13 = [(PKDynamicProvisioningFieldsPageViewController *)&v20 initWithWebService:0 context:context setupDelegate:delegate fieldsPage:pageCopy];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_verificationPage, page);
    objc_storeStrong(&v14->_account, account);
    fieldModel = [(PKApplyVerificationPage *)v14->_verificationPage fieldModel];
    paymentSetupFields = [fieldModel paymentSetupFields];
    v17 = [paymentSetupFields count];

    if (v17)
    {
      [(PKPaymentSetupFieldsViewController *)v14 setPreferPrimaryButtonInNavigationBar:1];
      v18 = PKLocalizedPaymentString(&cfstr_Submit.isa);
      [(PKPaymentSetupFieldsViewController *)v14 setPrimaryButtonTitleText:v18];
    }

    else
    {
      [(PKPaymentSetupFieldsViewController *)v14 setPreferPrimaryButtonInNavigationBar:0];
      [(PKPaymentSetupFieldsViewController *)v14 _setNavigationBarEnabled:0 animated:0];
    }
  }

  return v14;
}

- (PKApplyVerificationTrialDepositViewController)initWithController:(id)controller setupDelegate:(id)delegate verificationPage:(id)page
{
  controllerCopy = controller;
  pageCopy = page;
  delegateCopy = delegate;
  context = [controllerCopy context];
  account = [controllerCopy account];
  v14 = [(PKApplyVerificationTrialDepositViewController *)self initWithSetupDelegate:delegateCopy context:context verificationPage:pageCopy account:account];

  if (v14)
  {
    objc_storeStrong(&v14->_controller, controller);
  }

  return v14;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = PKApplyVerificationTrialDepositViewController;
  [(PKDynamicProvisioningFieldsPageViewController *)&v10 viewDidLoad];
  dockView = [(PKPaymentSetupTableViewController *)self dockView];
  footerView = [dockView footerView];
  primaryActionTitle = [(PKApplyVerificationPage *)self->_verificationPage primaryActionTitle];
  if (primaryActionTitle)
  {
    [(PKPaymentSetupFieldsViewController *)self setPrimaryButtonTitleText:primaryActionTitle];
  }

  else
  {
    [dockView setPrimaryButton:0];
  }

  secondaryActionTitle = [(PKApplyVerificationPage *)self->_verificationPage secondaryActionTitle];
  if (secondaryActionTitle)
  {
    secondaryActionButton = [footerView secondaryActionButton];
    [secondaryActionButton setTitle:secondaryActionTitle forState:0];
    [secondaryActionButton addTarget:self action:sel__secondaryButtonPressed forControlEvents:0x2000];
  }

  else
  {
    [footerView setSecondaryActionButton:0];
  }

  headerView = [(PKPaymentSetupFieldsViewController *)self headerView];
  [headerView setTopPadding:20.0];
  [headerView setBottomPadding:20.0];
  heroImage = self->_heroImage;
  if (heroImage)
  {
    [(PKApplyVerificationTrialDepositViewController *)self _heroImageSize];
    [headerView setImageViewImage:heroImage withSize:0 animated:?];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = PKApplyVerificationTrialDepositViewController;
  [(PKPaymentSetupFieldsViewController *)&v7 viewWillAppear:appear];
  if ([(PKApplyVerificationTrialDepositViewController *)self _needsPreflight])
  {
    self->_isPreflighting = 1;
    [(PKApplyVerificationTrialDepositViewController *)self _setNeedsUpdateContentUnavailableConfiguration];
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __64__PKApplyVerificationTrialDepositViewController_viewWillAppear___block_invoke;
    v4[3] = &unk_1E8011180;
    objc_copyWeak(&v5, &location);
    [(PKApplyVerificationTrialDepositViewController *)self preflightWithCompletion:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __64__PKApplyVerificationTrialDepositViewController_viewWillAppear___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PKApplyVerificationTrialDepositViewController_viewWillAppear___block_invoke_2;
  block[3] = &unk_1E8010998;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __64__PKApplyVerificationTrialDepositViewController_viewWillAppear___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    if (WeakRetained[168])
    {
      v2 = [WeakRetained headerView];
      v3 = v4[168];
      [v4 _heroImageSize];
      [v2 setImageViewImage:v3 withSize:1 animated:?];

      WeakRetained = v4;
    }

    *(WeakRetained + 1352) = 0;
    [v4 _setNeedsUpdateContentUnavailableConfiguration];
    WeakRetained = v4;
  }
}

- (void)preflightWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = MEMORY[0x1E695DFF8];
  heroImageURL = [(PKApplyVerificationPage *)self->_verificationPage heroImageURL];
  v7 = [v5 URLWithString:heroImageURL];

  if (v7)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __73__PKApplyVerificationTrialDepositViewController_preflightWithCompletion___block_invoke;
    aBlock[3] = &unk_1E8020520;
    aBlock[4] = self;
    v15 = completionCopy;
    v8 = _Block_copy(aBlock);
    mEMORY[0x1E69B8A08] = [MEMORY[0x1E69B8A08] sharedImageAssetDownloader];
    v10 = [mEMORY[0x1E69B8A08] cachedDataForURL:v7];

    if (v10)
    {
      v8[2](v8, v10);
    }

    else
    {
      mEMORY[0x1E69B8A08]2 = [MEMORY[0x1E69B8A08] sharedImageAssetDownloader];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __73__PKApplyVerificationTrialDepositViewController_preflightWithCompletion___block_invoke_3;
      v12[3] = &unk_1E8013E70;
      v13 = v8;
      [mEMORY[0x1E69B8A08]2 downloadFromUrl:v7 completionHandler:v12];
    }
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1);
  }
}

void __73__PKApplyVerificationTrialDepositViewController_preflightWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x1E69DCAB8] imageWithData:v3];
    v5 = *(a1 + 32);
    v6 = *(v5 + 1344);
    *(v5 + 1344) = v4;
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__PKApplyVerificationTrialDepositViewController_preflightWithCompletion___block_invoke_2;
    block[3] = &unk_1E8010B50;
    v9 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (BOOL)_needsPreflight
{
  heroImageURL = [(PKApplyVerificationPage *)self->_verificationPage heroImageURL];
  if (heroImageURL)
  {
    v4 = self->_heroImage == 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)handleNextButtonTapped:(id)tapped
{
  v13 = *MEMORY[0x1E69E9840];
  tappedCopy = tapped;
  dockView = [(PKPaymentSetupTableViewController *)self dockView];
  if ([dockView hasPrimaryButton] && (objc_msgSend(dockView, "primaryButton"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6 == tappedCopy))
  {
    [(PKApplyVerificationTrialDepositViewController *)self _primaryButtonPressed];
  }

  else
  {
    navigationItem = [(PKApplyVerificationTrialDepositViewController *)self navigationItem];
    rightBarButtonItems = [navigationItem rightBarButtonItems];
    v9 = [rightBarButtonItems containsObject:tappedCopy];

    if (v9)
    {
      [(PKApplyVerificationTrialDepositViewController *)self _handleNextButtonTapped];
    }

    else
    {
      v10 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = tappedCopy;
        _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "Unknown button to handle tap for: %@", &v11, 0xCu);
      }
    }
  }
}

- (void)_handleNextButtonTapped
{
  _verificationStatus = [(PKApplyVerificationTrialDepositViewController *)self _verificationStatus];
  if (_verificationStatus <= 1)
  {
    if (_verificationStatus)
    {
      if (_verificationStatus != 1)
      {
        return;
      }

      v4 = @"triggerTrialDeposits";
      goto LABEL_13;
    }

LABEL_9:

    [(PKApplyVerificationTrialDepositViewController *)self _terminateFlow];
    return;
  }

  if (_verificationStatus == 2)
  {
    goto LABEL_9;
  }

  if (_verificationStatus != 3)
  {
    if (_verificationStatus != 4)
    {
      return;
    }

    goto LABEL_9;
  }

  v4 = @"submitTrialDeposits";
LABEL_13:

  [(PKApplyVerificationTrialDepositViewController *)self _performActionForActionIdentifier:v4];
}

- (void)_primaryButtonPressed
{
  primaryActionIdentifier = [(PKApplyVerificationPage *)self->_verificationPage primaryActionIdentifier];
  v4 = [(PKApplyVerificationTrialDepositViewController *)self _performActionForActionIdentifier:primaryActionIdentifier];

  if (!v4)
  {

    [(PKApplyVerificationTrialDepositViewController *)self _terminateFlow];
  }
}

- (void)_secondaryButtonPressed
{
  secondaryActionIdentifier = [(PKApplyVerificationPage *)self->_verificationPage secondaryActionIdentifier];
  v4 = [(PKApplyVerificationTrialDepositViewController *)self _performActionForActionIdentifier:secondaryActionIdentifier];

  if (!v4)
  {

    [(PKApplyVerificationTrialDepositViewController *)self _terminateFlow];
  }
}

- (BOOL)_performActionForActionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (identifierCopy == @"triggerTrialDeposits")
  {
    goto LABEL_4;
  }

  if (!identifierCopy)
  {
LABEL_15:
    v7 = 0;
    goto LABEL_16;
  }

  v6 = [(__CFString *)identifierCopy isEqualToString:@"triggerTrialDeposits"];

  if (!v6)
  {
    v8 = v5;
    if (v8 == @"callSavingsSupport" || (v9 = v8, v10 = [(__CFString *)v8 isEqualToString:@"callSavingsSupport"], v9, v10))
    {
      objc_initWeak(&location, self);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __83__PKApplyVerificationTrialDepositViewController__performActionForActionIdentifier___block_invoke;
      v19[3] = &unk_1E8010998;
      objc_copyWeak(&v20, &location);
      dispatch_async(MEMORY[0x1E69E96A0], v19);
      objc_destroyWeak(&v20);
      objc_destroyWeak(&location);
      goto LABEL_5;
    }

    v11 = v9;
    if (v11 == @"submitTrialDeposits" || (v12 = v11, v13 = [(__CFString *)v11 isEqualToString:@"submitTrialDeposits"], v12, v13))
    {
      _userEnteredAmounts = [(PKApplyVerificationTrialDepositViewController *)self _userEnteredAmounts];
      [(PKApplyVerificationTrialDepositViewController *)self _submitCodes:_userEnteredAmounts];

      goto LABEL_5;
    }

    v15 = v12;
    if (v15 == @"skipTrialDeposits" || (v16 = v15, v17 = [(__CFString *)v15 isEqualToString:@"skipTrialDeposits"], v16, v17))
    {
      [(PKApplyVerificationTrialDepositViewController *)self _submitCodes:0];
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_4:
  [(PKApplyVerificationTrialDepositViewController *)self _requestTrialDeposits];
LABEL_5:
  v7 = 1;
LABEL_16:

  return v7;
}

void __83__PKApplyVerificationTrialDepositViewController__performActionForActionIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained _alertControllerForContactSupport];
    if (v2)
    {
      v3 = [v4 navigationController];
      [v3 presentViewController:v2 animated:1 completion:0];
    }

    WeakRetained = v4;
  }
}

- (void)_terminateFlow
{
  [(PKApplyController *)self->_controller endApplyFlow];
  setupDelegate = [(PKPaymentSetupFieldsViewController *)self setupDelegate];
  v5 = setupDelegate;
  if (setupDelegate)
  {
    [setupDelegate viewControllerDidTerminateSetupFlow:self];
  }

  else
  {
    presentingViewController = [(PKApplyVerificationTrialDepositViewController *)self presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_submitCodes:(id)codes
{
  codesCopy = codes;
  v5 = [codesCopy count] == 0;
  [(PKDynamicProvisioningFieldsPageViewController *)self showSpinner:1];
  v6 = objc_alloc_init(MEMORY[0x1E69B85E8]);
  [v6 setTrialDeposits:codesCopy];
  [v6 setSkippedVerification:v5];
  objc_initWeak(&location, self);
  controller = self->_controller;
  verificationPage = self->_verificationPage;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__PKApplyVerificationTrialDepositViewController__submitCodes___block_invoke;
  v9[3] = &unk_1E80162F0;
  objc_copyWeak(&v10, &location);
  [(PKApplyController *)controller submitVerificationPage:verificationPage verificationInfo:v6 completion:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __62__PKApplyVerificationTrialDepositViewController__submitCodes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__PKApplyVerificationTrialDepositViewController__submitCodes___block_invoke_2;
  block[3] = &unk_1E8011828;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v6;
  v11 = v5;
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v12);
}

void __62__PKApplyVerificationTrialDepositViewController__submitCodes___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __62__PKApplyVerificationTrialDepositViewController__submitCodes___block_invoke_3;
    aBlock[3] = &unk_1E8011D28;
    aBlock[4] = WeakRetained;
    v4 = _Block_copy(aBlock);
    v5 = v4;
    if (*(a1 + 32))
    {
      v6 = [v3 _alertControllerForError:?];
      if (v6)
      {
        [v3 presentViewController:v6 animated:1 completion:0];
      }

      (v5)[2](v5, v6 != 0);
    }

    else if (*(a1 + 40))
    {
      v7 = [v3 navigationController];
      [v7 pk_presentPaymentSetupViewController:*(a1 + 40) animated:1 completion:v5];
    }

    else
    {
      (*(v4 + 2))(v4, 0);
    }
  }
}

uint64_t __62__PKApplyVerificationTrialDepositViewController__submitCodes___block_invoke_3(uint64_t a1, char a2)
{
  result = [*(a1 + 32) showSpinner:0];
  if ((a2 & 1) == 0)
  {
    [*(*(a1 + 32) + 1320) endApplyFlow];
    v5 = *(a1 + 32);

    return [v5 _terminateFlow];
  }

  return result;
}

- (void)_requestTrialDeposits
{
  dockView = [(PKPaymentSetupTableViewController *)self dockView];
  primaryButton = [dockView primaryButton];

  [primaryButton setShowSpinner:1];
  [primaryButton setEnabled:0];
  objc_initWeak(&location, self);
  controller = self->_controller;
  verificationPage = self->_verificationPage;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__PKApplyVerificationTrialDepositViewController__requestTrialDeposits__block_invoke;
  v8[3] = &unk_1E801D6E0;
  objc_copyWeak(&v11, &location);
  v7 = primaryButton;
  v9 = v7;
  selfCopy = self;
  [(PKApplyController *)controller resendVerificationForPage:verificationPage completion:v8];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __70__PKApplyVerificationTrialDepositViewController__requestTrialDeposits__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__PKApplyVerificationTrialDepositViewController__requestTrialDeposits__block_invoke_2;
  v8[3] = &unk_1E8014828;
  objc_copyWeak(&v12, (a1 + 48));
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v5;
  v10 = v6;
  v11 = v4;
  v7 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v8);

  objc_destroyWeak(&v12);
}

void __70__PKApplyVerificationTrialDepositViewController__requestTrialDeposits__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [*(a1 + 32) setShowSpinner:0];
    [*(a1 + 32) setEnabled:1];
    v3 = [*(a1 + 40) _alertControllerForError:*(a1 + 48)];
    if (v3)
    {
      [v4 presentViewController:v3 animated:1 completion:0];
    }

    else
    {
      [v4 _terminateFlow];
    }

    WeakRetained = v4;
  }
}

- (CGSize)_heroImageSize
{
  if (self->_heroImage)
  {
    v3 = PKUIPixelLength();
    [(UIImage *)self->_heroImage size];
    v5 = v3 * v4;
    v7 = v3 * v6;
  }

  else
  {
    v7 = *MEMORY[0x1E695F060];
    v5 = *(MEMORY[0x1E695F060] + 8);
  }

  result.height = v5;
  result.width = v7;
  return result;
}

- (unint64_t)_verificationStatus
{
  fundingSource = [(PKApplyController *)self->_controller fundingSource];
  fundingDetails = [fundingSource fundingDetails];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    verificationDetails = [fundingDetails verificationDetails];
    status = [verificationDetails status];
  }

  else
  {
    status = 0;
  }

  return status;
}

- (id)_userEnteredAmounts
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  fieldModel = [(PKApplyVerificationPage *)self->_verificationPage fieldModel];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  visiblePaymentSetupFields = [fieldModel visiblePaymentSetupFields];
  v6 = [visiblePaymentSetupFields countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(visiblePaymentSetupFields);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        identifier = [v10 identifier];
        v12 = [(PKPaymentSetupFieldsViewController *)self cellForIdentifier:identifier];
        [v12 updatePaymentSetupFieldWithFormatting];

        submissionString = [v10 submissionString];
        if ([submissionString length])
        {
          [v3 addObject:submissionString];
        }
      }

      v7 = [visiblePaymentSetupFields countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v3;
}

- (void)_clearAllTextFields
{
  v19 = *MEMORY[0x1E69E9840];
  fieldModel = [(PKApplyVerificationPage *)self->_verificationPage fieldModel];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  visiblePaymentSetupFields = [fieldModel visiblePaymentSetupFields];
  v5 = [visiblePaymentSetupFields countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(visiblePaymentSetupFields);
        }

        identifier = [*(*(&v14 + 1) + 8 * v8) identifier];
        v10 = [(PKPaymentSetupFieldsViewController *)self cellForIdentifier:identifier];

        editableTextField = [v10 editableTextField];
        [editableTextField setText:0];

        [v10 updatePaymentSetupFieldWithCurrentCellValue];
        ++v8;
      }

      while (v6 != v8);
      v6 = [visiblePaymentSetupFields countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  firstEmptyCell = [(PKPaymentSetupFieldsViewController *)self firstEmptyCell];
  editableTextField2 = [firstEmptyCell editableTextField];
  [editableTextField2 becomeFirstResponder];
}

- (id)_alertControllerForError:(id)error
{
  errorCopy = error;
  if (!errorCopy)
  {
    v16 = 0;
    goto LABEL_41;
  }

  v5 = errorCopy;
  domain = [errorCopy domain];
  v7 = [domain isEqualToString:*MEMORY[0x1E69BB840]];

  v8 = MEMORY[0x1E696AA08];
  if (v7)
  {
    userInfo = [v5 userInfo];
    v10 = [userInfo objectForKeyedSubscript:*v8];

    v5 = v10;
  }

  domain2 = [v5 domain];
  v12 = *MEMORY[0x1E69BC300];
  v13 = domain2;
  v14 = v13;
  if (v13 == v12)
  {

    goto LABEL_11;
  }

  if (v13 && v12)
  {
    v15 = [v13 isEqualToString:v12];

    if ((v15 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_11:
    userInfo2 = [v5 userInfo];
    v18 = [userInfo2 objectForKeyedSubscript:*v8];

    domain3 = [v18 domain];
    v20 = *MEMORY[0x1E69BC6F0];
    v21 = domain3;
    v22 = v21;
    if (v21 == v20)
    {
    }

    else
    {
      if (!v21 || !v20)
      {

LABEL_21:
        localizedRecoverySuggestion = 0;
        localizedFailureReason = 0;
LABEL_22:
        code = [v5 code];
        v27 = 0;
        v28 = 1;
        if (code > 40455)
        {
          if (code != 40457)
          {
            if (code == 40456)
            {
              if (!(localizedFailureReason | localizedRecoverySuggestion))
              {
                [(PKAccount *)self->_account feature];
                localizedFailureReason = PKLocalizedFeatureString();
                localizedRecoverySuggestion = PKLocalizedFeatureString();
              }

              v27 = 1;
              goto LABEL_34;
            }

            goto LABEL_31;
          }
        }

        else if (code != 40423 && code != 40454)
        {
LABEL_31:
          if (!(localizedFailureReason | localizedRecoverySuggestion))
          {
            localizedFailureReason = [v5 localizedFailureReason];
            localizedRecoverySuggestion = [v5 localizedRecoverySuggestion];
          }

          v27 = 0;
          v28 = 0;
        }

LABEL_34:
        if (localizedFailureReason | localizedRecoverySuggestion)
        {
          v16 = [MEMORY[0x1E69DC650] alertControllerWithTitle:localizedFailureReason message:localizedRecoverySuggestion preferredStyle:1];
          v29 = &unk_1BE0FC000;
          if (v27)
          {
            objc_initWeak(&location, self);
            v30 = MEMORY[0x1E69DC648];
            v31 = PKLocalizedPaymentString(&cfstr_TryAgainButton.isa);
            v39[0] = MEMORY[0x1E69E9820];
            v39[1] = 3221225472;
            v39[2] = __74__PKApplyVerificationTrialDepositViewController__alertControllerForError___block_invoke;
            v39[3] = &unk_1E8012CC0;
            objc_copyWeak(&v40, &location);
            v32 = [v30 actionWithTitle:v31 style:0 handler:v39];

            [v16 addAction:v32];
            [v16 setPreferredAction:v32];

            objc_destroyWeak(&v40);
            objc_destroyWeak(&location);
            v29 = &unk_1BE0FC000;
          }

          v33 = MEMORY[0x1E69DC648];
          v34 = PKLocalizedString(&cfstr_Cancel.isa);
          v37[0] = MEMORY[0x1E69E9820];
          v37[1] = v29[509];
          v37[2] = __74__PKApplyVerificationTrialDepositViewController__alertControllerForError___block_invoke_2;
          v37[3] = &unk_1E8016148;
          v38 = v28;
          v37[4] = self;
          v35 = [v33 actionWithTitle:v34 style:1 handler:v37];
          [v16 addAction:v35];
        }

        else
        {
          v16 = 0;
        }

        goto LABEL_40;
      }

      v23 = [v21 isEqualToString:v20];

      if (!v23)
      {
        goto LABEL_21;
      }
    }

    localizedFailureReason = [v18 localizedFailureReason];
    localizedRecoverySuggestion = [v18 localizedRecoverySuggestion];
    goto LABEL_22;
  }

LABEL_17:
  v16 = PKAlertForDisplayableErrorWithHandlers(v5, 0, 0, 0);
LABEL_40:

LABEL_41:

  return v16;
}

void __74__PKApplyVerificationTrialDepositViewController__alertControllerForError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _clearAllTextFields];
    WeakRetained = v2;
  }
}

uint64_t __74__PKApplyVerificationTrialDepositViewController__alertControllerForError___block_invoke_2(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    return [*(result + 32) _performActionForActionIdentifier:@"skipTrialDeposits"];
  }

  return result;
}

- (id)_alertControllerForContactSupport
{
  savingsDetails = [(PKAccount *)self->_account savingsDetails];
  contactNumber = [savingsDetails contactNumber];

  if (contactNumber)
  {
    [(PKAccount *)self->_account feature];
    v5 = PKLocalizedFeatureString();
    v6 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v5 message:0 preferredStyle:0];
    popoverPresentationController = [v6 popoverPresentationController];
    dockView = [(PKPaymentSetupTableViewController *)self dockView];
    footerView = [dockView footerView];
    secondaryActionButton = [footerView secondaryActionButton];
    [popoverPresentationController setSourceView:secondaryActionButton];

    v11 = MEMORY[0x1E69DC648];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __82__PKApplyVerificationTrialDepositViewController__alertControllerForContactSupport__block_invoke;
    v17[3] = &unk_1E80112E8;
    v18 = contactNumber;
    v12 = [v11 actionWithTitle:v18 style:0 handler:v17];
    [v6 addAction:v12];

    v13 = MEMORY[0x1E69DC648];
    v14 = PKLocalizedString(&cfstr_Cancel.isa);
    v15 = [v13 actionWithTitle:v14 style:1 handler:0];
    [v6 addAction:v15];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __82__PKApplyVerificationTrialDepositViewController__alertControllerForContactSupport__block_invoke()
{
  v1 = [MEMORY[0x1E6963608] defaultWorkspace];
  v0 = PKTelephoneURLFromPhoneNumber();
  [v1 openSensitiveURL:v0 withOptions:0];
}

- (void)_updateContentUnavailableConfigurationUsingState:(id)state
{
  if (self->_isPreflighting)
  {
    v4 = MEMORY[0x1E69DC8C8];
    stateCopy = state;
    loadingConfiguration = [v4 loadingConfiguration];
    v10 = [loadingConfiguration updatedConfigurationForState:stateCopy];

    background = [v10 background];
    view = [(PKApplyVerificationTrialDepositViewController *)self view];
    backgroundColor = [view backgroundColor];
    [background setBackgroundColor:backgroundColor];
  }

  else
  {
    v10 = 0;
  }

  [(PKApplyVerificationTrialDepositViewController *)self _setContentUnavailableConfiguration:v10];
}

@end
@interface PKApplyVerificationTrialDepositViewController
- (BOOL)_needsPreflight;
- (BOOL)_performActionForActionIdentifier:(id)a3;
- (CGSize)_heroImageSize;
- (PKApplyVerificationTrialDepositViewController)initWithController:(id)a3 setupDelegate:(id)a4 verificationPage:(id)a5;
- (PKApplyVerificationTrialDepositViewController)initWithSetupDelegate:(id)a3 context:(int64_t)a4 verificationPage:(id)a5 account:(id)a6;
- (id)_alertControllerForContactSupport;
- (id)_alertControllerForError:(id)a3;
- (id)_userEnteredAmounts;
- (unint64_t)_verificationStatus;
- (void)_clearAllTextFields;
- (void)_handleNextButtonTapped;
- (void)_primaryButtonPressed;
- (void)_requestTrialDeposits;
- (void)_secondaryButtonPressed;
- (void)_submitCodes:(id)a3;
- (void)_terminateFlow;
- (void)_updateContentUnavailableConfigurationUsingState:(id)a3;
- (void)handleNextButtonTapped:(id)a3;
- (void)preflightWithCompletion:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PKApplyVerificationTrialDepositViewController

- (PKApplyVerificationTrialDepositViewController)initWithSetupDelegate:(id)a3 context:(int64_t)a4 verificationPage:(id)a5 account:(id)a6
{
  v11 = a5;
  v12 = a6;
  v20.receiver = self;
  v20.super_class = PKApplyVerificationTrialDepositViewController;
  v13 = [(PKDynamicProvisioningFieldsPageViewController *)&v20 initWithWebService:0 context:a4 setupDelegate:a3 fieldsPage:v11];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_verificationPage, a5);
    objc_storeStrong(&v14->_account, a6);
    v15 = [(PKApplyVerificationPage *)v14->_verificationPage fieldModel];
    v16 = [v15 paymentSetupFields];
    v17 = [v16 count];

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

- (PKApplyVerificationTrialDepositViewController)initWithController:(id)a3 setupDelegate:(id)a4 verificationPage:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = a4;
  v12 = [v9 context];
  v13 = [v9 account];
  v14 = [(PKApplyVerificationTrialDepositViewController *)self initWithSetupDelegate:v11 context:v12 verificationPage:v10 account:v13];

  if (v14)
  {
    objc_storeStrong(&v14->_controller, a3);
  }

  return v14;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = PKApplyVerificationTrialDepositViewController;
  [(PKDynamicProvisioningFieldsPageViewController *)&v10 viewDidLoad];
  v3 = [(PKPaymentSetupTableViewController *)self dockView];
  v4 = [v3 footerView];
  v5 = [(PKApplyVerificationPage *)self->_verificationPage primaryActionTitle];
  if (v5)
  {
    [(PKPaymentSetupFieldsViewController *)self setPrimaryButtonTitleText:v5];
  }

  else
  {
    [v3 setPrimaryButton:0];
  }

  v6 = [(PKApplyVerificationPage *)self->_verificationPage secondaryActionTitle];
  if (v6)
  {
    v7 = [v4 secondaryActionButton];
    [v7 setTitle:v6 forState:0];
    [v7 addTarget:self action:sel__secondaryButtonPressed forControlEvents:0x2000];
  }

  else
  {
    [v4 setSecondaryActionButton:0];
  }

  v8 = [(PKPaymentSetupFieldsViewController *)self headerView];
  [v8 setTopPadding:20.0];
  [v8 setBottomPadding:20.0];
  heroImage = self->_heroImage;
  if (heroImage)
  {
    [(PKApplyVerificationTrialDepositViewController *)self _heroImageSize];
    [v8 setImageViewImage:heroImage withSize:0 animated:?];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = PKApplyVerificationTrialDepositViewController;
  [(PKPaymentSetupFieldsViewController *)&v7 viewWillAppear:a3];
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

- (void)preflightWithCompletion:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E695DFF8];
  v6 = [(PKApplyVerificationPage *)self->_verificationPage heroImageURL];
  v7 = [v5 URLWithString:v6];

  if (v7)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __73__PKApplyVerificationTrialDepositViewController_preflightWithCompletion___block_invoke;
    aBlock[3] = &unk_1E8020520;
    aBlock[4] = self;
    v15 = v4;
    v8 = _Block_copy(aBlock);
    v9 = [MEMORY[0x1E69B8A08] sharedImageAssetDownloader];
    v10 = [v9 cachedDataForURL:v7];

    if (v10)
    {
      v8[2](v8, v10);
    }

    else
    {
      v11 = [MEMORY[0x1E69B8A08] sharedImageAssetDownloader];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __73__PKApplyVerificationTrialDepositViewController_preflightWithCompletion___block_invoke_3;
      v12[3] = &unk_1E8013E70;
      v13 = v8;
      [v11 downloadFromUrl:v7 completionHandler:v12];
    }
  }

  else if (v4)
  {
    (*(v4 + 2))(v4, 1);
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
  v3 = [(PKApplyVerificationPage *)self->_verificationPage heroImageURL];
  if (v3)
  {
    v4 = self->_heroImage == 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)handleNextButtonTapped:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PKPaymentSetupTableViewController *)self dockView];
  if ([v5 hasPrimaryButton] && (objc_msgSend(v5, "primaryButton"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6 == v4))
  {
    [(PKApplyVerificationTrialDepositViewController *)self _primaryButtonPressed];
  }

  else
  {
    v7 = [(PKApplyVerificationTrialDepositViewController *)self navigationItem];
    v8 = [v7 rightBarButtonItems];
    v9 = [v8 containsObject:v4];

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
        v12 = v4;
        _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "Unknown button to handle tap for: %@", &v11, 0xCu);
      }
    }
  }
}

- (void)_handleNextButtonTapped
{
  v3 = [(PKApplyVerificationTrialDepositViewController *)self _verificationStatus];
  if (v3 <= 1)
  {
    if (v3)
    {
      if (v3 != 1)
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

  if (v3 == 2)
  {
    goto LABEL_9;
  }

  if (v3 != 3)
  {
    if (v3 != 4)
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
  v3 = [(PKApplyVerificationPage *)self->_verificationPage primaryActionIdentifier];
  v4 = [(PKApplyVerificationTrialDepositViewController *)self _performActionForActionIdentifier:v3];

  if (!v4)
  {

    [(PKApplyVerificationTrialDepositViewController *)self _terminateFlow];
  }
}

- (void)_secondaryButtonPressed
{
  v3 = [(PKApplyVerificationPage *)self->_verificationPage secondaryActionIdentifier];
  v4 = [(PKApplyVerificationTrialDepositViewController *)self _performActionForActionIdentifier:v3];

  if (!v4)
  {

    [(PKApplyVerificationTrialDepositViewController *)self _terminateFlow];
  }
}

- (BOOL)_performActionForActionIdentifier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == @"triggerTrialDeposits")
  {
    goto LABEL_4;
  }

  if (!v4)
  {
LABEL_15:
    v7 = 0;
    goto LABEL_16;
  }

  v6 = [(__CFString *)v4 isEqualToString:@"triggerTrialDeposits"];

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
      v14 = [(PKApplyVerificationTrialDepositViewController *)self _userEnteredAmounts];
      [(PKApplyVerificationTrialDepositViewController *)self _submitCodes:v14];

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
  v3 = [(PKPaymentSetupFieldsViewController *)self setupDelegate];
  v5 = v3;
  if (v3)
  {
    [v3 viewControllerDidTerminateSetupFlow:self];
  }

  else
  {
    v4 = [(PKApplyVerificationTrialDepositViewController *)self presentingViewController];
    [v4 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_submitCodes:(id)a3
{
  v4 = a3;
  v5 = [v4 count] == 0;
  [(PKDynamicProvisioningFieldsPageViewController *)self showSpinner:1];
  v6 = objc_alloc_init(MEMORY[0x1E69B85E8]);
  [v6 setTrialDeposits:v4];
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
  v3 = [(PKPaymentSetupTableViewController *)self dockView];
  v4 = [v3 primaryButton];

  [v4 setShowSpinner:1];
  [v4 setEnabled:0];
  objc_initWeak(&location, self);
  controller = self->_controller;
  verificationPage = self->_verificationPage;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__PKApplyVerificationTrialDepositViewController__requestTrialDeposits__block_invoke;
  v8[3] = &unk_1E801D6E0;
  objc_copyWeak(&v11, &location);
  v7 = v4;
  v9 = v7;
  v10 = self;
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
  v2 = [(PKApplyController *)self->_controller fundingSource];
  v3 = [v2 fundingDetails];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 verificationDetails];
    v5 = [v4 status];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_userEnteredAmounts
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(PKApplyVerificationPage *)self->_verificationPage fieldModel];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 visiblePaymentSetupFields];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 identifier];
        v12 = [(PKPaymentSetupFieldsViewController *)self cellForIdentifier:v11];
        [v12 updatePaymentSetupFieldWithFormatting];

        v13 = [v10 submissionString];
        if ([v13 length])
        {
          [v3 addObject:v13];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v3;
}

- (void)_clearAllTextFields
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(PKApplyVerificationPage *)self->_verificationPage fieldModel];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 visiblePaymentSetupFields];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v14 + 1) + 8 * v8) identifier];
        v10 = [(PKPaymentSetupFieldsViewController *)self cellForIdentifier:v9];

        v11 = [v10 editableTextField];
        [v11 setText:0];

        [v10 updatePaymentSetupFieldWithCurrentCellValue];
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = [(PKPaymentSetupFieldsViewController *)self firstEmptyCell];
  v13 = [v12 editableTextField];
  [v13 becomeFirstResponder];
}

- (id)_alertControllerForError:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v16 = 0;
    goto LABEL_41;
  }

  v5 = v4;
  v6 = [v4 domain];
  v7 = [v6 isEqualToString:*MEMORY[0x1E69BB840]];

  v8 = MEMORY[0x1E696AA08];
  if (v7)
  {
    v9 = [v5 userInfo];
    v10 = [v9 objectForKeyedSubscript:*v8];

    v5 = v10;
  }

  v11 = [v5 domain];
  v12 = *MEMORY[0x1E69BC300];
  v13 = v11;
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
    v17 = [v5 userInfo];
    v18 = [v17 objectForKeyedSubscript:*v8];

    v19 = [v18 domain];
    v20 = *MEMORY[0x1E69BC6F0];
    v21 = v19;
    v22 = v21;
    if (v21 == v20)
    {
    }

    else
    {
      if (!v21 || !v20)
      {

LABEL_21:
        v25 = 0;
        v24 = 0;
LABEL_22:
        v26 = [v5 code];
        v27 = 0;
        v28 = 1;
        if (v26 > 40455)
        {
          if (v26 != 40457)
          {
            if (v26 == 40456)
            {
              if (!(v24 | v25))
              {
                [(PKAccount *)self->_account feature];
                v24 = PKLocalizedFeatureString();
                v25 = PKLocalizedFeatureString();
              }

              v27 = 1;
              goto LABEL_34;
            }

            goto LABEL_31;
          }
        }

        else if (v26 != 40423 && v26 != 40454)
        {
LABEL_31:
          if (!(v24 | v25))
          {
            v24 = [v5 localizedFailureReason];
            v25 = [v5 localizedRecoverySuggestion];
          }

          v27 = 0;
          v28 = 0;
        }

LABEL_34:
        if (v24 | v25)
        {
          v16 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v24 message:v25 preferredStyle:1];
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

    v24 = [v18 localizedFailureReason];
    v25 = [v18 localizedRecoverySuggestion];
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
  v3 = [(PKAccount *)self->_account savingsDetails];
  v4 = [v3 contactNumber];

  if (v4)
  {
    [(PKAccount *)self->_account feature];
    v5 = PKLocalizedFeatureString();
    v6 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v5 message:0 preferredStyle:0];
    v7 = [v6 popoverPresentationController];
    v8 = [(PKPaymentSetupTableViewController *)self dockView];
    v9 = [v8 footerView];
    v10 = [v9 secondaryActionButton];
    [v7 setSourceView:v10];

    v11 = MEMORY[0x1E69DC648];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __82__PKApplyVerificationTrialDepositViewController__alertControllerForContactSupport__block_invoke;
    v17[3] = &unk_1E80112E8;
    v18 = v4;
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

- (void)_updateContentUnavailableConfigurationUsingState:(id)a3
{
  if (self->_isPreflighting)
  {
    v4 = MEMORY[0x1E69DC8C8];
    v5 = a3;
    v6 = [v4 loadingConfiguration];
    v10 = [v6 updatedConfigurationForState:v5];

    v7 = [v10 background];
    v8 = [(PKApplyVerificationTrialDepositViewController *)self view];
    v9 = [v8 backgroundColor];
    [v7 setBackgroundColor:v9];
  }

  else
  {
    v10 = 0;
  }

  [(PKApplyVerificationTrialDepositViewController *)self _setContentUnavailableConfiguration:v10];
}

@end
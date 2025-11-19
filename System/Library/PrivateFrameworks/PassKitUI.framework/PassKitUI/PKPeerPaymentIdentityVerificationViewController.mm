@interface PKPeerPaymentIdentityVerificationViewController
- (PKPeerPaymentIdentityVerificationViewController)initWithController:(id)a3 setupDelegate:(id)a4 visibleFieldIdentifiers:(id)a5;
- (void)_handleCancelButtonTapped:(id)a3;
- (void)_showSpinner:(BOOL)a3;
- (void)_terminateFlow;
- (void)_updateNavigationBarItems;
- (void)explanationViewDidSelectContinue:(id)a3;
- (void)handleNextButtonTapped:(id)a3;
- (void)setShowCancelButton:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation PKPeerPaymentIdentityVerificationViewController

- (PKPeerPaymentIdentityVerificationViewController)initWithController:(id)a3 setupDelegate:(id)a4 visibleFieldIdentifiers:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = a4;
  v12 = [v9 context];
  v13 = [v9 fieldsModel];
  v16.receiver = self;
  v16.super_class = PKPeerPaymentIdentityVerificationViewController;
  v14 = [(PKPaymentSetupFieldsViewController *)&v16 initWithWebService:0 context:v12 setupDelegate:v11 setupFieldsModel:v13];

  if (v14)
  {
    objc_storeStrong(&v14->_controller, a3);
    objc_storeStrong(&v14->_visibleFieldIdentifiers, a5);
    v14->_showCancelButton = 1;
    [(PKPeerPaymentIdentityVerificationViewController *)v14 _updateNavigationBarItems];
  }

  return v14;
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKPeerPaymentIdentityVerificationViewController;
  [(PKPeerPaymentIdentityVerificationViewController *)&v4 viewDidDisappear:a3];
  if (([(PKPeerPaymentIdentityVerificationViewController *)self isBeingDismissed]& 1) != 0 || [(PKPeerPaymentIdentityVerificationViewController *)self isMovingFromParentViewController])
  {
    [(PKPeerPaymentIdentityVerificationController *)self->_controller didDismissViewController];
  }
}

- (void)setShowCancelButton:(BOOL)a3
{
  if (self->_showCancelButton != a3)
  {
    self->_showCancelButton = a3;
    [(PKPeerPaymentIdentityVerificationViewController *)self _updateNavigationBarItems];
  }
}

- (void)explanationViewDidSelectContinue:(id)a3
{
  v4 = a3;
  v5 = v4;
  identityVerificaionError = self->_identityVerificaionError;
  if (identityVerificaionError <= 4)
  {
    if (identityVerificaionError != 2)
    {
      if (identityVerificaionError == 3)
      {
        v16 = [v4 dockView];
        [v16 setButtonsEnabled:0];

        v17 = [v5 dockView];
        v18 = [v17 primaryButton];
        [v18 setShowSpinner:1];

        v19 = [v5 dockView];
        v20 = [v19 footerView];
        [v20 setButtonsEnabled:0];

        [(PKPeerPaymentIdentityVerificationViewController *)self handleNextButtonTapped:0];
        goto LABEL_13;
      }

      goto LABEL_9;
    }

    v13 = PKLocalizedPaymentString(&cfstr_CouldNotConnec.isa);
    v14 = PKLocalizedPaymentString(&cfstr_CouldNotConnec_0.isa);
    v7 = PKDisplayableErrorCustom();

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __84__PKPeerPaymentIdentityVerificationViewController_explanationViewDidSelectContinue___block_invoke_29;
    v21[3] = &unk_1E8010970;
    v21[4] = self;
    v9 = PKAlertForDisplayableErrorWithHandlers(v7, 0, v21, 0);
    v15 = [(PKPeerPaymentIdentityVerificationViewController *)self navigationController];
    [v15 presentViewController:v9 animated:1 completion:0];

LABEL_11:
    goto LABEL_13;
  }

  if ((identityVerificaionError - 5) < 2)
  {
    v7 = [(PKPeerPaymentIdentityVerificationController *)self->_controller webService];
    v8 = [v7 peerPaymentService];
    v9 = [v8 account];

    v10 = objc_alloc_init(MEMORY[0x1E69B8A60]);
    v11 = [[PKPeerPaymentAccountResolutionController alloc] initWithAccount:v9 webService:v7 context:[(PKPaymentSetupTableViewController *)self context] delegate:self passLibraryDataProvider:v10];
    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "Presenting contact apple support alert...", buf, 2u);
    }

    MEMORY[0x1BFB41980](*MEMORY[0x1E69BA0D8], 0);
    [(PKPeerPaymentAccountResolutionController *)v11 presentFlowForAccountResolution:3 configuration:0 completion:&__block_literal_global_267];

    goto LABEL_11;
  }

LABEL_9:
  [(PKPeerPaymentIdentityVerificationViewController *)self _terminateFlow];
LABEL_13:
}

void __84__PKPeerPaymentIdentityVerificationViewController_explanationViewDidSelectContinue___block_invoke(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"NO";
    if (a2)
    {
      v4 = @"YES";
    }

    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Presented contact apple support alert with success %@", &v5, 0xCu);
  }
}

- (void)handleNextButtonTapped:(id)a3
{
  v4 = a3;
  [(PKPeerPaymentIdentityVerificationViewController *)self _showSpinner:1];
  objc_initWeak(&location, self);
  controller = self->_controller;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __74__PKPeerPaymentIdentityVerificationViewController_handleNextButtonTapped___block_invoke;
  v6[3] = &unk_1E80117A0;
  objc_copyWeak(&v7, &location);
  v6[4] = self;
  [(PKPeerPaymentIdentityVerificationController *)controller nextViewControllerWithCompletion:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __74__PKPeerPaymentIdentityVerificationViewController_handleNextButtonTapped___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __74__PKPeerPaymentIdentityVerificationViewController_handleNextButtonTapped___block_invoke_2;
    v13[3] = &unk_1E8011778;
    v13[4] = *(a1 + 32);
    v18 = a5;
    v14 = v9;
    v15 = WeakRetained;
    v16 = v11;
    v17 = v10;
    dispatch_async(MEMORY[0x1E69E96A0], v13);
  }
}

void __74__PKPeerPaymentIdentityVerificationViewController_handleNextButtonTapped___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _showSpinner:0];
  *(*(a1 + 32) + 1280) = *(a1 + 72);
  if (!*(a1 + 40))
  {
    if (*(a1 + 56))
    {
      v4 = [MEMORY[0x1E69B8F28] displayableErrorForError:?];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __74__PKPeerPaymentIdentityVerificationViewController_handleNextButtonTapped___block_invoke_3;
      v17[3] = &unk_1E8010970;
      v17[4] = *(a1 + 32);
      v5 = PKAlertForDisplayableErrorWithHandlers(v4, 0, v17, 0);
      v6 = [*(a1 + 32) navigationController];
      [v6 presentViewController:v5 animated:1 completion:0];
    }

    else
    {
      v7 = *(a1 + 64);
      if (v7)
      {
        v8 = [v7 explanationView];
        [v8 setDelegate:*(a1 + 32)];

        v2 = [*(a1 + 32) navigationController];
        v14 = v2;
        v3 = *(a1 + 64);
        goto LABEL_3;
      }

      v9 = *(a1 + 32);
      if (v9[160] != 1)
      {
        return;
      }

      v4 = [v9 headerView];
      [v4 showCheckmark:1 animated:0];
      v10 = *(a1 + 32);
      v11 = PKLocalizedPeerPaymentString(&cfstr_IdentityVerifi_1.isa);
      [v10 setHeaderViewTitle:v11 subtitle:&stru_1F3BD7330];

      [v4 setNeedsLayout];
      [*(a1 + 32) _setNavigationBarEnabled:0 animated:1];
      [*(a1 + 32) _destroyNavigationBarButtonItemsAnimated:1];
      v12 = [*(a1 + 32) view];
      [v12 setUserInteractionEnabled:0];

      v13 = dispatch_time(0, 1000000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __74__PKPeerPaymentIdentityVerificationViewController_handleNextButtonTapped___block_invoke_4;
      block[3] = &unk_1E8010970;
      v16 = *(a1 + 48);
      dispatch_after(v13, MEMORY[0x1E69E96A0], block);
    }

    return;
  }

  v2 = [*(a1 + 48) navigationController];
  v14 = v2;
  v3 = *(a1 + 40);
LABEL_3:
  [v2 pushViewController:v3 animated:1];
}

- (void)_showSpinner:(BOOL)a3
{
  v3 = a3;
  v5 = [(PKPaymentSetupTableViewController *)self dockView];
  if (v3)
  {
    [(PKPaymentSetupFieldsViewController *)self showActivitySpinnerWithTitle:0 subtitle:0];
  }

  else
  {
    [(PKPaymentSetupFieldsViewController *)self hideActivitySpinner];
  }

  [v5 setButtonsEnabled:!v3];
}

- (void)_updateNavigationBarItems
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (self->_showCancelButton)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__handleCancelButtonTapped_];
    [v3 setAccessibilityIdentifier:*MEMORY[0x1E69B9708]];
    if (v3)
    {
      v5[0] = v3;
      v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
      [(PKPaymentSetupFieldsViewController *)self _setLeftBarButtonItems:v4 animated:0];
    }

    else
    {
      [(PKPaymentSetupFieldsViewController *)self _setLeftBarButtonItems:0 animated:0];
    }

    [(PKPaymentSetupFieldsViewController *)self setHidesBackButton:1 animated:0];
  }

  else
  {
    [(PKPaymentSetupFieldsViewController *)self _setLeftBarButtonItems:0 animated:0];

    [(PKPaymentSetupFieldsViewController *)self setHidesBackButton:0 animated:0];
  }
}

- (void)_handleCancelButtonTapped:(id)a3
{
  MEMORY[0x1BFB41980](*MEMORY[0x1E69BA0D0], 0, a3);
  v4 = [(PKPaymentSetupFieldsViewController *)self setupDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 viewControllerDidCancelSetupFlow:self];
  }

  else
  {
    [(PKPeerPaymentIdentityVerificationViewController *)self _terminateFlow];
  }
}

- (void)_terminateFlow
{
  v3 = [(PKPaymentSetupFieldsViewController *)self setupDelegate];
  v5 = v3;
  if (v3)
  {
    [v3 viewControllerDidTerminateSetupFlow:self];
  }

  else
  {
    v4 = [(PKPeerPaymentIdentityVerificationViewController *)self presentingViewController];
    [v4 dismissViewControllerAnimated:1 completion:0];
  }
}

@end
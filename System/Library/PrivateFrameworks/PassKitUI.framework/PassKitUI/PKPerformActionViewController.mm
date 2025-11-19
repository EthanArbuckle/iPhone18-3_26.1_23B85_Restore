@interface PKPerformActionViewController
+ (id)alertControllerForUnableReason:(unint64_t)a3 action:(id)a4 displayableError:(id)a5 addCardActionHandler:(id)a6 unavailableActionHandler:(id)a7 cancelActionHandler:(id)a8;
- (BOOL)shouldHidePassView;
- (PKPerformActionViewController)initWithPass:(id)a3 action:(id)a4;
- (PKPerformActionViewController)initWithPass:(id)a3 action:(id)a4 viewStyle:(int64_t)a5 paymentDataProvider:(id)a6;
- (PKPerformActionViewControllerDelegate)delegate;
- (id)_actionViewForPass:(id)a3 action:(id)a4;
- (id)_generateGenericAlertWithCompletion:(id)a3;
- (id)_generateNoActionsAvailableDueToConflictErrorAlertWithCompletion:(id)a3;
- (id)_generateNoActionsAvailableDueToRemoteActionFailureAlertWithCompletion:(id)a3;
- (id)presentationSceneIdentifierForPaymentAuthorizationCoordinator:(id)a3;
- (void)_canPerformPaymentWithCompletion:(id)a3;
- (void)_cancelButtonPressed:(id)a3;
- (void)_fetchRemoteContentIfNeeded;
- (void)_presentAddAnotherCardFlowWithTransitNetworkIdentifiers:(id)a3;
- (void)_presentPaymentSetupControllerWithAllowedPaymentNetworks:(id)a3;
- (void)_reloadActionView;
- (void)_rightBarButtonPressed:(id)a3;
- (void)_showGenericErrorAlert:(id)a3;
- (void)_showLoadingView:(BOOL)a3;
- (void)_showNoActionsAvailableDueToConflictErrorAlert;
- (void)_showNoActionsAvailableDueToRemoteActionFailureAlert;
- (void)_showSpinner:(BOOL)a3;
- (void)autoReloadSetupControllerDidCompleteWithAmount:(id)a3 threshold:(id)a4;
- (void)paymentAuthorizationCoordinator:(id)a3 didAuthorizePayment:(id)a4 handler:(id)a5;
- (void)paymentAuthorizationCoordinator:(id)a3 didAuthorizePurchase:(id)a4 completion:(id)a5;
- (void)paymentAuthorizationCoordinatorDidFinish:(id)a3;
- (void)paymentSetupDidFinish:(id)a3;
- (void)preflightWithCompletion:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateFirstResponder;
- (void)updatePassViewVisibility;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation PKPerformActionViewController

+ (id)alertControllerForUnableReason:(unint64_t)a3 action:(id)a4 displayableError:(id)a5 addCardActionHandler:(id)a6 unavailableActionHandler:(id)a7 cancelActionHandler:(id)a8
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  if (a3 == 6)
  {
    v18 = PKCreateAlertControllerForWalletUninstalled(0);
    goto LABEL_21;
  }

  if (!v14)
  {
    v18 = 0;
    goto LABEL_21;
  }

  v19 = MEMORY[0x1E69DC650];
  v20 = PKTitleForDisplayableError();
  v21 = MEMORY[0x1BFB42D10](v14);
  v18 = [v19 alertControllerWithTitle:v20 message:v21 preferredStyle:1];

  if (a3 == 5)
  {
    v22 = @"PASS_ACTION_UNAVAILABLE_OK_BUTTON_TITLE";
  }

  else
  {
    v22 = @"PASS_ACTION_UNAVAILABLE_CANCEL_BUTTON_TITLE";
  }

  v23 = PKLocalizedPaymentString(&v22->isa);
  v24 = MEMORY[0x1E69DC648];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __154__PKPerformActionViewController_alertControllerForUnableReason_action_displayableError_addCardActionHandler_unavailableActionHandler_cancelActionHandler___block_invoke;
  v43[3] = &unk_1E8011248;
  v44 = v17;
  v25 = [v24 actionWithTitle:v23 style:1 handler:v43];
  [v18 addAction:v25];
  if (a3 == 2 && v15)
  {
    v37 = v23;
    if (([v13 serviceProviderCapabilities] & 0xC) == 8)
    {
      v26 = @"PASS_ACTION_UNAVAILABLE_ADD_DEBIT_CARD_BUTTON_TITLE";
    }

    else
    {
      v26 = @"PASS_ACTION_UNAVAILABLE_ADD_CARD_BUTTON_TITLE";
    }

    v27 = MEMORY[0x1E69DC648];
    v28 = PKLocalizedPaymentString(&v26->isa);
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __154__PKPerformActionViewController_alertControllerForUnableReason_action_displayableError_addCardActionHandler_unavailableActionHandler_cancelActionHandler___block_invoke_2;
    v41[3] = &unk_1E8011248;
    v42 = v15;
    v29 = [v27 actionWithTitle:v28 style:0 handler:v41];

    [v18 addAction:v29];
    [v18 setPreferredAction:v29];

    v30 = v42;
LABEL_19:

    v23 = v37;
    goto LABEL_20;
  }

  if (a3 == 7)
  {
    v37 = v23;
    v31 = [v13 unavailableActionTitle];
    v32 = v31;
    if (v31)
    {
      v33 = v31;
    }

    else
    {
      v33 = PKLocalizedPaymentString(&cfstr_PassActionUnav.isa);
    }

    v30 = v33;

    v34 = MEMORY[0x1E69DC648];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __154__PKPerformActionViewController_alertControllerForUnableReason_action_displayableError_addCardActionHandler_unavailableActionHandler_cancelActionHandler___block_invoke_3;
    v38[3] = &unk_1E8016458;
    v39 = v13;
    v40 = v16;
    v35 = [v34 actionWithTitle:v30 style:0 handler:v38];
    [v18 addAction:v35];
    [v18 setPreferredAction:v35];

    goto LABEL_19;
  }

LABEL_20:

LABEL_21:

  return v18;
}

uint64_t __154__PKPerformActionViewController_alertControllerForUnableReason_action_displayableError_addCardActionHandler_unavailableActionHandler_cancelActionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __154__PKPerformActionViewController_alertControllerForUnableReason_action_displayableError_addCardActionHandler_unavailableActionHandler_cancelActionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __154__PKPerformActionViewController_alertControllerForUnableReason_action_displayableError_addCardActionHandler_unavailableActionHandler_cancelActionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) unavailableActionURL];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFF8] URLWithString:v2];
    v4 = [objc_alloc(MEMORY[0x1E6994680]) initWithURL:v3];
    [v4 setShouldReturnErrorOnUserCancellation:1];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __154__PKPerformActionViewController_alertControllerForUnableReason_action_displayableError_addCardActionHandler_unavailableActionHandler_cancelActionHandler___block_invoke_4;
    v7[3] = &unk_1E8017A28;
    v8 = v3;
    v9 = *(a1 + 40);
    v5 = v3;
    [v4 requestClipWithCompletion:v7];
  }

  else
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))();
    }
  }
}

void __154__PKPerformActionViewController_alertControllerForUnableReason_action_displayableError_addCardActionHandler_unavailableActionHandler_cancelActionHandler___block_invoke_4(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "PKPerformActionViewController launches app clip", v9, 2u);
    }
  }

  else if ([v5 code] != 8)
  {
    PKOpenURL();
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))();
  }
}

- (PKPerformActionViewController)initWithPass:(id)a3 action:(id)a4
{
  v6 = MEMORY[0x1E69B8BD8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 defaultDataProvider];
  v10 = [(PKPerformActionViewController *)self initWithPass:v8 action:v7 paymentDataProvider:v9];

  return v10;
}

- (PKPerformActionViewController)initWithPass:(id)a3 action:(id)a4 viewStyle:(int64_t)a5 paymentDataProvider:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = [v12 type];
  if (v14)
  {
    v15 = v14;
    v33.receiver = self;
    v33.super_class = PKPerformActionViewController;
    v16 = [(PKPerformActionViewController *)&v33 init];
    v17 = v16;
    if (v16)
    {
      objc_storeStrong(&v16->_pass, a3);
      objc_storeStrong(&v17->_action, a4);
      v18 = [MEMORY[0x1E69B8EF8] sharedService];
      webService = v17->_webService;
      v17->_webService = v18;

      objc_storeStrong(&v17->_paymentDataProvider, a6);
      v20 = [(PKPerformActionViewController *)v17 navigationItem];
      if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
      {
        v21 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
        [v21 configureWithTransparentBackground];
        v22 = PKProvisioningBackgroundColor();
        [v21 setBackgroundColor:v22];

        [v20 setStandardAppearance:v21];
        [v20 setScrollEdgeAppearance:v21];
      }

      if (v15 != 5)
      {
        v23 = [(PKPaymentPassAction *)v17->_action title];
        [v20 setTitle:v23];
      }

      v24 = [(PKPaymentPassAction *)v17->_action confirmationTitle];
      v25 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v24 style:2 target:v17 action:sel__rightBarButtonPressed_];
      button = v17->_button;
      v17->_button = v25;

      [v20 setRightBarButtonItem:v17->_button];
      v27 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
      v28 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v27];
      spinner = v17->_spinner;
      v17->_spinner = v28;

      [v27 startAnimating];
      v17->_fieldsVerified = 1;
      if ([PKPaymentAutoReloadSetupController shouldOfferAutoReloadForPass:v11])
      {
        v30 = [[PKPaymentAutoReloadSetupController alloc] initWithPass:v11 paymentDataProvider:v13 viewStyle:a5 delegate:v17];
        autoReloadSetupController = v17->_autoReloadSetupController;
        v17->_autoReloadSetupController = v30;
      }
    }
  }

  else
  {

    v17 = 0;
  }

  return v17;
}

- (void)autoReloadSetupControllerDidCompleteWithAmount:(id)a3 threshold:(id)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    v8 = objc_loadWeakRetained(&self->_delegate);
    v9 = v8;
    if (v7)
    {
      [v8 performActionViewControllerDidCompleteAutoReload:self];
    }

    else
    {
      [v8 performActionViewControllerDidPerformAction:self];
    }
  }

  else
  {
    v9 = [(PKPerformActionViewController *)self navigationController];
    [v9 dismissViewControllerAnimated:1 completion:0];
  }
}

- (id)_actionViewForPass:(id)a3 action:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 type];
  switch(v8)
  {
    case 1:
      v9 = off_1E80060B8;
      goto LABEL_7;
    case 5:
      v9 = off_1E80060D0;
      goto LABEL_7;
    case 2:
      v9 = off_1E80060E0;
LABEL_7:
      v10 = [objc_alloc(*v9) initWithPass:v6 action:v7 paymentDataProvider:self->_paymentDataProvider];
      goto LABEL_9;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (void)viewWillAppear:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = PKPerformActionViewController;
  [(PKPerformActionViewController *)&v11 viewWillAppear:a3];
  [(PKPerformActionViewController *)self _fetchRemoteContentIfNeeded];
  v4 = [(PKPerformActionViewController *)self navigationController];
  if ([v4 pk_settings_useStateDrivenNavigation])
  {
    v5 = [v4 pk_settings_viewControllerCount];
  }

  else
  {
    v6 = [v4 viewControllers];
    v7 = [v6 count];

    v5 = v7 == 1;
  }

  v8 = [(PKPerformActionViewController *)self presentingViewController];
  if (v8)
  {

    if ((v4 == 0) | v5 & 1)
    {
      v9 = [(PKPerformActionViewController *)self navigationItem];
      v10 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__cancelButtonPressed_];
      [v9 setLeftBarButtonItem:v10];
    }
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKPerformActionViewController;
  [(PKPerformActionViewController *)&v4 viewWillDisappear:a3];
  if (objc_opt_respondsToSelector())
  {
    [(PKPerformActionView *)self->_actionView willDismissViewController];
  }
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = PKPerformActionViewController;
  [(PKPerformActionViewController *)&v10 viewDidLoad];
  v3 = [(PKPerformActionViewController *)self view];
  v4 = PKProvisioningBackgroundColor();
  [v3 setBackgroundColor:v4];

  v5 = [PKPerformActionPassView alloc];
  pass = self->_pass;
  v7 = [(PKPerformActionViewController *)self view];
  [v7 bounds];
  v8 = [(PKPerformActionPassView *)v5 initWithPass:pass frame:?];
  passView = self->_passView;
  self->_passView = v8;

  [(PKPerformActionPassView *)self->_passView setHidden:[(PKPerformActionViewController *)self shouldHidePassView]];
  [v3 addSubview:self->_passView];
  [(PKPerformActionViewController *)self _reloadActionView];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKPerformActionViewController;
  [(PKPerformActionViewController *)&v4 viewDidAppear:a3];
  [(PKPerformActionViewController *)self updateFirstResponder];
}

- (void)updateFirstResponder
{
  v3 = [(PKPaymentPassAction *)self->_action type];
  v4 = [(PKPerformActionView *)self->_actionView amountTextField];
  v5 = v4;
  if (v3 == 1)
  {
    [v4 becomeFirstResponder];
  }

  else
  {
    [v4 resignFirstResponder];
  }
}

- (void)viewWillLayoutSubviews
{
  v28.receiver = self;
  v28.super_class = PKPerformActionViewController;
  [(PKPerformActionViewController *)&v28 viewWillLayoutSubviews];
  v3 = [(PKPerformActionViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  width = v8;
  v11 = v10;
  [v3 safeAreaInsets];
  v13 = v12;
  v15 = v14;
  x = v5 + 0.0;
  y = v7 + v17;
  height = v11 - (v17 + v19);
  memset(&remainder, 0, sizeof(remainder));
  [(PKPerformActionPassView *)self->_passView sizeThatFits:width, height, 0, 0, 0, 0];
  v22 = v21;
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  CGRectDivide(v29, &v26, &remainder, v22, CGRectMinYEdge);
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  [(PKPerformActionPassView *)self->_passView setFrame:?];
  if (([(PKPerformActionPassView *)self->_passView isHidden]& 1) == 0)
  {
    x = remainder.origin.x;
    y = remainder.origin.y;
    width = remainder.size.width;
    height = remainder.size.height;
  }

  v23 = v13 + x;
  v24 = y + 0.0;
  v25 = width - (v13 + v15);
  [(PKPerformActionView *)self->_actionView setFrame:v23, v24, v25, height];
  [(PKPerformActionLoadingView *)self->_loadingView setFrame:v23, v24, v25, height];
}

- (BOOL)shouldHidePassView
{
  if (!PKUIGetMinScreenWidthType())
  {
    return 1;
  }

  v3 = [(PKPerformActionViewController *)self traitCollection];
  v4 = [v3 verticalSizeClass] == 1;

  return v4;
}

- (void)updatePassViewVisibility
{
  v3 = [(PKPerformActionViewController *)self shouldHidePassView];
  if (v3 != [(PKPerformActionPassView *)self->_passView isHidden])
  {
    [(PKPerformActionPassView *)self->_passView setHidden:v3];
    v4 = [(PKPerformActionViewController *)self viewIfLoaded];
    [v4 setNeedsLayout];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = PKPerformActionViewController;
  [(PKPerformActionViewController *)&v4 traitCollectionDidChange:a3];
  [(PKPerformActionViewController *)self updatePassViewVisibility];
}

- (void)_showSpinner:(BOOL)a3
{
  v3 = a3;
  v5 = [(PKPerformActionViewController *)self navigationItem];
  v7 = v5;
  v6 = 4;
  if (v3)
  {
    v6 = 5;
  }

  [v5 setRightBarButtonItem:*(&self->super.super.super.isa + OBJC_IVAR___PKPerformActionViewController__pass[v6])];
}

- (void)preflightWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentPassAction *)self->_action remoteContentConfiguration];
  if (v5 && (remoteContentFetched = self->_remoteContentFetched, v5, !remoteContentFetched))
  {
    self->_remoteContentFetched = 1;
    objc_initWeak(&location, self);
    webService = self->_webService;
    action = self->_action;
    pass = self->_pass;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __57__PKPerformActionViewController_preflightWithCompletion___block_invoke;
    v10[3] = &unk_1E8022610;
    objc_copyWeak(&v12, &location);
    v11 = v4;
    [(PKPaymentWebService *)webService passActionWithRemoteContentPassAction:action forPass:pass completion:v10];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else if (v4)
  {
    (*(v4 + 2))(v4, 1, 0);
  }
}

void __57__PKPerformActionViewController_preflightWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__PKPerformActionViewController_preflightWithCompletion___block_invoke_2;
  v10[3] = &unk_1E8011220;
  objc_copyWeak(&v14, (a1 + 40));
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v11 = v5;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v10);

  objc_destroyWeak(&v14);
}

void __57__PKPerformActionViewController_preflightWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v17 = WeakRetained;
  if (!WeakRetained)
  {
    v6 = *(a1 + 48);
    if (!v6)
    {
      goto LABEL_23;
    }

    v5 = *(v6 + 16);
    goto LABEL_7;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    objc_storeStrong(WeakRetained + 133, v3);
    v4 = *(a1 + 48);
    if (!v4)
    {
      goto LABEL_23;
    }

    v5 = *(v4 + 16);
LABEL_7:
    v5();
    goto LABEL_23;
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = [v7 domain];
    v9 = *MEMORY[0x1E69BC300];
    if ([v8 isEqualToString:*MEMORY[0x1E69BC300]])
    {
      v10 = [*(a1 + 40) code];

      if (v10 == 60091)
      {
        v11 = *(a1 + 48);
        if (!v11)
        {
          goto LABEL_23;
        }

        v12 = [v17 _generateNoActionsAvailableDueToConflictErrorAlertWithCompletion:0];
        goto LABEL_22;
      }
    }

    else
    {
    }

    v13 = *(a1 + 40);
    if (v13)
    {
      v14 = [v13 domain];
      if ([v14 isEqualToString:v9])
      {
        v15 = [*(a1 + 40) code];

        if (v15 == 60086)
        {
          v11 = *(a1 + 48);
          if (!v11)
          {
            goto LABEL_23;
          }

          v12 = [v17 _generateNoActionsAvailableDueToRemoteActionFailureAlertWithCompletion:0];
          goto LABEL_22;
        }
      }

      else
      {
      }
    }
  }

  v11 = *(a1 + 48);
  if (!v11)
  {
    goto LABEL_23;
  }

  v12 = [v17 _generateGenericAlertWithCompletion:0];
LABEL_22:
  v16 = v12;
  (*(v11 + 16))(v11, 0, v12);

LABEL_23:
}

- (void)_fetchRemoteContentIfNeeded
{
  v3 = [(PKPaymentPassAction *)self->_action remoteContentConfiguration];
  if (v3)
  {
    remoteContentFetched = self->_remoteContentFetched;

    if (!remoteContentFetched)
    {
      self->_remoteContentFetched = 1;
      [(PKPerformActionViewController *)self _showLoadingView:1];
      objc_initWeak(&location, self);
      webService = self->_webService;
      action = self->_action;
      pass = self->_pass;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __60__PKPerformActionViewController__fetchRemoteContentIfNeeded__block_invoke;
      v8[3] = &unk_1E8022638;
      objc_copyWeak(&v9, &location);
      [(PKPaymentWebService *)webService passActionWithRemoteContentPassAction:action forPass:pass completion:v8];
      objc_destroyWeak(&v9);
      objc_destroyWeak(&location);
    }
  }
}

void __60__PKPerformActionViewController__fetchRemoteContentIfNeeded__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__PKPerformActionViewController__fetchRemoteContentIfNeeded__block_invoke_2;
  block[3] = &unk_1E8011828;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v12);
}

void __60__PKPerformActionViewController__fetchRemoteContentIfNeeded__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _showLoadingView:0];
    v4 = *(a1 + 32);
    if (!v4)
    {
      v5 = *(a1 + 40);
      if (v5)
      {
        v6 = [v5 domain];
        v7 = *MEMORY[0x1E69BC300];
        if ([v6 isEqualToString:*MEMORY[0x1E69BC300]])
        {
          v8 = [*(a1 + 40) code];

          if (v8 == 60091)
          {
            [v3 _showNoActionsAvailableDueToConflictErrorAlert];
            goto LABEL_15;
          }
        }

        else
        {
        }

        v9 = *(a1 + 40);
        if (v9)
        {
          v10 = [v9 domain];
          if ([v10 isEqualToString:v7])
          {
            v11 = [*(a1 + 40) code];

            if (v11 == 60086)
            {
              [v3 _showNoActionsAvailableDueToRemoteActionFailureAlert];
              goto LABEL_15;
            }
          }

          else
          {
          }
        }
      }

      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __60__PKPerformActionViewController__fetchRemoteContentIfNeeded__block_invoke_3;
      v12[3] = &unk_1E8010998;
      objc_copyWeak(&v13, (a1 + 48));
      [v3 _showGenericErrorAlert:v12];
      objc_destroyWeak(&v13);
      goto LABEL_15;
    }

    objc_storeStrong(v3 + 133, v4);
    [v3 _reloadActionView];
  }

LABEL_15:
}

void __60__PKPerformActionViewController__fetchRemoteContentIfNeeded__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v2 performActionViewControllerDidCancel:v3];
}

- (void)_showLoadingView:(BOOL)a3
{
  loadingView = self->_loadingView;
  if (a3)
  {
    if (!loadingView)
    {
      v5 = [PKPerformActionLoadingView alloc];
      [(PKPerformActionView *)self->_actionView frame];
      v6 = [(PKPerformActionLoadingView *)v5 initWithFrame:?];
      v7 = self->_loadingView;
      self->_loadingView = v6;
    }

    v8 = [(PKPerformActionViewController *)self view];
    [v8 addSubview:self->_loadingView];

    [(PKPerformActionView *)self->_actionView setDelegate:0];
    [(PKPerformActionView *)self->_actionView removeFromSuperview];
    actionView = self->_actionView;
    self->_actionView = 0;
  }

  else
  {

    [(PKPerformActionLoadingView *)loadingView removeFromSuperview];
  }
}

- (void)_reloadActionView
{
  [(PKPerformActionView *)self->_actionView setDelegate:0];
  [(PKPerformActionView *)self->_actionView removeFromSuperview];
  v3 = [(PKPerformActionViewController *)self _actionViewForPass:self->_pass action:self->_action];
  actionView = self->_actionView;
  self->_actionView = v3;

  [(PKPerformActionView *)self->_actionView setDelegate:self];
  v5 = [(PKPerformActionViewController *)self view];
  [v5 insertSubview:self->_actionView belowSubview:self->_passView];
}

- (void)_rightBarButtonPressed:(id)a3
{
  v4 = a3;
  if (self->_fieldsVerified)
  {
    if ([MEMORY[0x1E69B8B60] canMakePayments])
    {
      [(PKPerformActionViewController *)self setModalInPresentation:1];
      [(PKPerformActionViewController *)self setRightBarButtonEnabled:0];
      v5 = [(PKPerformActionView *)self->_actionView amountTextField];
      [v5 resignFirstResponder];

      v6 = [(PKPerformActionViewController *)self actionView];
      objc_initWeak(location, self);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __56__PKPerformActionViewController__rightBarButtonPressed___block_invoke;
      v9[3] = &unk_1E8022688;
      v7 = v6;
      v10 = v7;
      objc_copyWeak(&v12, location);
      v11 = self;
      [(PKPerformActionViewController *)self _canPerformPaymentWithCompletion:v9];
      objc_destroyWeak(&v12);

      objc_destroyWeak(location);
    }

    else
    {
      v8 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        LOWORD(location[0]) = 0;
        _os_log_error_impl(&dword_1BD026000, v8, OS_LOG_TYPE_ERROR, "Error: Device is unable to make in-app payments.", location, 2u);
      }

      [(PKPerformActionViewController *)self _showGenericErrorAlert:0];
    }
  }
}

void __56__PKPerformActionViewController__rightBarButtonPressed___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__PKPerformActionViewController__rightBarButtonPressed___block_invoke_2;
  v10[3] = &unk_1E8022660;
  objc_copyWeak(v13, (a1 + 48));
  v9 = *(a1 + 32);
  v7 = v9.i64[0];
  v11 = vextq_s8(v9, v9, 8uLL);
  v13[1] = a3;
  v8 = v5;
  v12 = v8;
  [v6 fetchServiceProviderDataWithCompletion:v10];

  objc_destroyWeak(v13);
}

void __56__PKPerformActionViewController__rightBarButtonPressed___block_invoke_2(uint64_t a1, void *a2)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = objc_alloc_init(MEMORY[0x1E69B8A10]);
  v6 = [*(*(a1 + 32) + 1064) actionDescription];
  [v5 setItemDescription:v6];

  [v5 setServiceProviderData:v3];
  v7 = [*(*(a1 + 32) + 1064) serviceProviderIdentifier];
  [v5 setServiceProviderIdentifier:v7];

  v8 = [objc_alloc(MEMORY[0x1E69B9218]) initWithServiceProviderOrder:v5];
  v9 = [*(a1 + 40) transactionCurrency];
  [v8 setCurrencyCode:v9];
  v10 = [*(*(a1 + 32) + 1064) serviceProviderAcceptedNetworks];
  [v8 setSupportedNetworks:v10];

  [v8 setMerchantCapabilities:{objc_msgSend(*(*(a1 + 32) + 1064), "serviceProviderCapabilities")}];
  v11 = [*(*(a1 + 32) + 1064) serviceProviderCountryCode];
  [v8 setCountryCode:v11];

  v12 = [*(*(a1 + 32) + 1064) serviceProviderSupportedCountries];
  [v8 setSupportedCountries:v12];

  v13 = [*(a1 + 40) transactionAmount];
  v14 = [*(*(a1 + 32) + 1064) serviceProviderLocalizedDisplayName];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = [*(*(a1 + 32) + 1056) organizationName];
  }

  v17 = v16;

  v18 = [MEMORY[0x1E69B8E90] summaryItemWithLabel:v17 amount:v13];
  v30[0] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  [v8 setPaymentSummaryItems:v19];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__PKPerformActionViewController__rightBarButtonPressed___block_invoke_3;
  aBlock[3] = &unk_1E8010A10;
  v20 = v8;
  v28 = v20;
  v29 = WeakRetained;
  v21 = _Block_copy(aBlock);
  v22 = v21;
  if (*(a1 + 64) == 2)
  {
    v23 = [MEMORY[0x1E69B8A58] sharedInstance];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __56__PKPerformActionViewController__rightBarButtonPressed___block_invoke_2_95;
    v24[3] = &unk_1E801EAF8;
    v24[4] = WeakRetained;
    v26 = v22;
    v25 = *(a1 + 48);
    [v23 canPresentPaymentRequest:v20 completion:v24];
  }

  else if (*(a1 + 48))
  {
    [WeakRetained setRightBarButtonEnabled:1];
    [WeakRetained presentViewController:*(a1 + 48) animated:1 completion:0];
  }

  else
  {
    (*(v21 + 2))(v21);
  }
}

void __56__PKPerformActionViewController__rightBarButtonPressed___block_invoke_3(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E69B8B60]) initWithPaymentRequest:*(a1 + 32)];
  [v2 setDelegate:*(a1 + 40)];
  [v2 _setPrivateDelegate:*(a1 + 40)];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__PKPerformActionViewController__rightBarButtonPressed___block_invoke_4;
  v3[3] = &unk_1E8011D28;
  v3[4] = *(a1 + 40);
  [v2 presentWithCompletion:v3];
}

void __56__PKPerformActionViewController__rightBarButtonPressed___block_invoke_4(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__PKPerformActionViewController__rightBarButtonPressed___block_invoke_5;
  block[3] = &unk_1E8010970;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
  if ((a2 & 1) == 0)
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BD026000, v4, OS_LOG_TYPE_ERROR, "Error: Device failed to present payment coordinator!", buf, 2u);
    }

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __56__PKPerformActionViewController__rightBarButtonPressed___block_invoke_92;
    v6[3] = &unk_1E8010970;
    v6[4] = *(a1 + 32);
    v5 = MEMORY[0x1E69E96A0];
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }
}

void __56__PKPerformActionViewController__rightBarButtonPressed___block_invoke_2_95(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__PKPerformActionViewController__rightBarButtonPressed___block_invoke_3_96;
  v3[3] = &unk_1E8019D88;
  v3[4] = *(a1 + 32);
  v6 = a2;
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

uint64_t __56__PKPerformActionViewController__rightBarButtonPressed___block_invoke_3_96(uint64_t a1)
{
  if ([*(a1 + 32) _shouldPresentPaymentRequest:*(a1 + 56)])
  {
    v2 = *(*(a1 + 48) + 16);

    return v2();
  }

  else
  {
    [*(a1 + 32) setRightBarButtonEnabled:1];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v4 presentViewController:v5 animated:1 completion:0];
  }
}

- (void)_canPerformPaymentWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if ([(PKPaymentPassAction *)self->_action type]== 5)
    {
      (*(v4 + 2))(v4, 0, 0);
      goto LABEL_15;
    }

    if ([(PKPaymentPassAction *)self->_action type]== 2)
    {
      v5 = [(PKPaymentPass *)self->_pass uniqueID];
      v6 = [(PKPaymentPass *)self->_pass devicePrimaryPaymentApplication];
      if (objc_opt_respondsToSelector())
      {
        paymentDataProvider = self->_paymentDataProvider;
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __66__PKPerformActionViewController__canPerformPaymentWithCompletion___block_invoke;
        v16[3] = &unk_1E801EB70;
        v17 = v6;
        v18 = self;
        v19 = v4;
        [(PKPaymentDataProvider *)paymentDataProvider transitStateWithPassUniqueIdentifier:v5 paymentApplication:v17 completion:v16];
      }

      else
      {
        (*(v4 + 2))(v4, 0, 0);
      }
    }

    else
    {
      v14 = 0;
      v15 = 0;
      v8 = [(PKPaymentPass *)self->_pass canPerformAction:self->_action unableReason:&v15 displayableError:&v14];
      v5 = v14;
      if (v8)
      {
        (*(v4 + 2))(v4, 0, 0);
LABEL_14:

        goto LABEL_15;
      }

      action = self->_action;
      v12[4] = self;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __66__PKPerformActionViewController__canPerformPaymentWithCompletion___block_invoke_2_111;
      v13[3] = &unk_1E8010970;
      v13[4] = self;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __66__PKPerformActionViewController__canPerformPaymentWithCompletion___block_invoke_3;
      v12[3] = &unk_1E8010970;
      v6 = [PKPerformActionViewController alertControllerForUnableReason:v15 action:action displayableError:v5 addCardActionHandler:v13 unavailableActionHandler:0 cancelActionHandler:v12];
      if ([(PKPaymentPass *)self->_pass isTransitPass])
      {
        v10 = [objc_opt_class() displayableErrorForTransitAction:self->_action andReason:v15];
        v11 = MEMORY[0x1BFB42D10]();
        [v6 setMessage:v11];
      }

      (*(v4 + 2))(v4, v6, v15);
    }

    goto LABEL_14;
  }

LABEL_15:
}

void __66__PKPerformActionViewController__canPerformPaymentWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__PKPerformActionViewController__canPerformPaymentWithCompletion___block_invoke_2;
  v8[3] = &unk_1E8011D78;
  v9 = v3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v7 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

void __66__PKPerformActionViewController__canPerformPaymentWithCompletion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  if (v2 && ([v2 transitPassPropertiesWithPaymentApplication:a1[5] pass:*(a1[6] + 1056)], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isEnRoute"), v3, v4))
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Device unable to make in-app payments while in transit.", buf, 2u);
    }

    v6 = PKLocalizedPaymentString(&cfstr_CardInTransit.isa);
    v7 = PKPassLocalizedStringWithFormat();
    v8 = PKDisplayableErrorCustom();

    v9 = a1[6];
    v10 = *(v9 + 1064);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __66__PKPerformActionViewController__canPerformPaymentWithCompletion___block_invoke_109;
    v13[3] = &unk_1E8010970;
    v13[4] = v9;
    v11 = [PKPerformActionViewController alertControllerForUnableReason:5 action:v10 displayableError:v8 addCardActionHandler:v13, 0];
    (*(a1[7] + 16))();
  }

  else
  {
    v12 = *(a1[7] + 16);

    v12();
  }
}

void __66__PKPerformActionViewController__canPerformPaymentWithCompletion___block_invoke_109(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1[133] serviceProviderAcceptedNetworks];
  [v1 _presentPaymentSetupControllerWithAllowedPaymentNetworks:v2];
}

void __66__PKPerformActionViewController__canPerformPaymentWithCompletion___block_invoke_2_111(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1[133] serviceProviderAcceptedNetworks];
  [v1 _presentPaymentSetupControllerWithAllowedPaymentNetworks:v2];
}

- (id)_generateGenericAlertWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69B8D08] displayableErrorForAction:self->_action andReason:1];
  v6 = MEMORY[0x1E69DC650];
  v7 = [v5 localizedDescription];
  v8 = [v5 localizedRecoverySuggestion];
  v9 = [v6 alertControllerWithTitle:v7 message:v8 preferredStyle:1];

  v10 = MEMORY[0x1E69DC648];
  v11 = PKLocalizedPaymentString(&cfstr_PassActionUnav.isa);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__PKPerformActionViewController__generateGenericAlertWithCompletion___block_invoke;
  v15[3] = &unk_1E8011248;
  v16 = v4;
  v12 = v4;
  v13 = [v10 actionWithTitle:v11 style:1 handler:v15];
  [v9 addAction:v13];

  return v9;
}

uint64_t __69__PKPerformActionViewController__generateGenericAlertWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_showGenericErrorAlert:(id)a3
{
  v4 = [(PKPerformActionViewController *)self _generateGenericAlertWithCompletion:a3];
  [(PKPerformActionViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (id)_generateNoActionsAvailableDueToRemoteActionFailureAlertWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentPass *)self->_pass localizedDescription];
  v6 = PKLocalizedPaymentString(&cfstr_PassActionUnav_7.isa);
  v7 = PKLocalizedPaymentString(&cfstr_PassActionUnav_8.isa, &stru_1F3BD5BF0.isa, v5);
  v8 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v6 message:v7 preferredStyle:1];
  v9 = MEMORY[0x1E69DC648];
  v10 = PKLocalizedPaymentString(&cfstr_PassActionUnav.isa);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __104__PKPerformActionViewController__generateNoActionsAvailableDueToRemoteActionFailureAlertWithCompletion___block_invoke;
  v14[3] = &unk_1E8011248;
  v15 = v4;
  v11 = v4;
  v12 = [v9 actionWithTitle:v10 style:1 handler:v14];
  [v8 addAction:v12];

  return v8;
}

uint64_t __104__PKPerformActionViewController__generateNoActionsAvailableDueToRemoteActionFailureAlertWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)_generateNoActionsAvailableDueToConflictErrorAlertWithCompletion:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = [(PKPaymentPass *)self->_pass devicePaymentApplications];
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v23 + 1) + 8 * i) supportedTransitNetworkIdentifiers];
        if (v11)
        {
          [v5 addObjectsFromArray:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v12 = PKPassLocalizedStringWithFormat();
    v13 = PKPassLocalizedStringWithFormat();
    v14 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v12 message:v13 preferredStyle:{1, 0}];
    v15 = MEMORY[0x1E69DC648];
    v16 = PKLocalizedPaymentString(&cfstr_PassActionUnav.isa);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __98__PKPerformActionViewController__generateNoActionsAvailableDueToConflictErrorAlertWithCompletion___block_invoke;
    v20[3] = &unk_1E8011248;
    v21 = v4;
    v17 = [v15 actionWithTitle:v16 style:1 handler:v20];

    [v14 addAction:v17];
  }

  else
  {
    v18 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v18, OS_LOG_TYPE_DEFAULT, "PKPerformActionViewController unable to find transit network identifiers for pass", buf, 2u);
    }

    v14 = [(PKPerformActionViewController *)self _generateGenericAlertWithCompletion:v4];
  }

  return v14;
}

uint64_t __98__PKPerformActionViewController__generateNoActionsAvailableDueToConflictErrorAlertWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_showNoActionsAvailableDueToRemoteActionFailureAlert
{
  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __85__PKPerformActionViewController__showNoActionsAvailableDueToRemoteActionFailureAlert__block_invoke;
  v8 = &unk_1E8010998;
  objc_copyWeak(&v9, &location);
  v3 = _Block_copy(&v5);
  v4 = [(PKPerformActionViewController *)self _generateNoActionsAvailableDueToRemoteActionFailureAlertWithCompletion:v3, v5, v6, v7, v8];
  [(PKPerformActionViewController *)self presentViewController:v4 animated:1 completion:0];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __85__PKPerformActionViewController__showNoActionsAvailableDueToRemoteActionFailureAlert__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v2 performActionViewControllerDidCancel:v3];
}

- (void)_showNoActionsAvailableDueToConflictErrorAlert
{
  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __79__PKPerformActionViewController__showNoActionsAvailableDueToConflictErrorAlert__block_invoke;
  v8 = &unk_1E8010998;
  objc_copyWeak(&v9, &location);
  v3 = _Block_copy(&v5);
  v4 = [(PKPerformActionViewController *)self _generateNoActionsAvailableDueToConflictErrorAlertWithCompletion:v3, v5, v6, v7, v8];
  [(PKPerformActionViewController *)self presentViewController:v4 animated:1 completion:0];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __79__PKPerformActionViewController__showNoActionsAvailableDueToConflictErrorAlert__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v2 performActionViewControllerDidCancel:v3];
}

- (void)_presentPaymentSetupControllerWithAllowedPaymentNetworks:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69B8EF8] sharedService];
  v6 = [objc_alloc(MEMORY[0x1E69B8D48]) initWithWebService:v5];
  [v6 setAllowedPaymentNetworks:v4];
  [(PKPerformActionViewController *)self _showSpinner:1];
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __90__PKPerformActionViewController__presentPaymentSetupControllerWithAllowedPaymentNetworks___block_invoke;
  v8[3] = &unk_1E8013B00;
  objc_copyWeak(&v10, &location);
  v7 = v6;
  v9 = v7;
  [v7 preflightWithCompletion:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __90__PKPerformActionViewController__presentPaymentSetupControllerWithAllowedPaymentNetworks___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v8 = [[PKPaymentSetupNavigationController alloc] initWithProvisioningController:*(a1 + 32) context:0];
      [(PKNavigationController *)v8 setCustomFormSheetPresentationStyleForiPad];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __90__PKPerformActionViewController__presentPaymentSetupControllerWithAllowedPaymentNetworks___block_invoke_2;
      v11[3] = &unk_1E8012FD0;
      v11[4] = v7;
      v12 = v8;
      v9 = v8;
      [(PKPaymentSetupNavigationController *)v9 preflightWithCompletion:v11];
    }

    else
    {
      [WeakRetained _showSpinner:0];
      v9 = [*(a1 + 32) alertForDisplayableError:v5];
      if (v9)
      {
        [v7 presentViewController:v9 animated:1 completion:0];
      }

      else
      {
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __90__PKPerformActionViewController__presentPaymentSetupControllerWithAllowedPaymentNetworks___block_invoke_3;
        v10[3] = &unk_1E8010970;
        v10[4] = v7;
        [v7 _showGenericErrorAlert:v10];
      }
    }
  }
}

uint64_t __90__PKPerformActionViewController__presentPaymentSetupControllerWithAllowedPaymentNetworks___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _showSpinner:0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 presentViewController:v3 animated:1 completion:0];
}

void __90__PKPerformActionViewController__presentPaymentSetupControllerWithAllowedPaymentNetworks___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 performActionViewControllerDidCancel:*(a1 + 32)];
}

- (void)_presentAddAnotherCardFlowWithTransitNetworkIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69B8EF8] sharedService];
  v6 = [objc_alloc(MEMORY[0x1E69B8D48]) initWithWebService:v5];
  [v6 setRequiredTransitNetworkIdentifiers:v4];
  [(PKPerformActionViewController *)self _showSpinner:1];
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __89__PKPerformActionViewController__presentAddAnotherCardFlowWithTransitNetworkIdentifiers___block_invoke;
  v8[3] = &unk_1E8013B00;
  objc_copyWeak(&v10, &location);
  v7 = v6;
  v9 = v7;
  [v7 preflightWithCompletion:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __89__PKPerformActionViewController__presentAddAnotherCardFlowWithTransitNetworkIdentifiers___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v8 = [[PKPaymentSetupNavigationController alloc] initWithProvisioningController:*(a1 + 32) context:0];
      [(PKNavigationController *)v8 setCustomFormSheetPresentationStyleForiPad];
      [(PKPaymentSetupNavigationController *)v8 setPaymentSetupMode:3];
      [(PKPaymentSetupNavigationController *)v8 setSetupDelegate:v7];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __89__PKPerformActionViewController__presentAddAnotherCardFlowWithTransitNetworkIdentifiers___block_invoke_2;
      v11[3] = &unk_1E8012FD0;
      v11[4] = v7;
      v12 = v8;
      v9 = v8;
      [(PKPaymentSetupNavigationController *)v9 preflightWithCompletion:v11];
    }

    else
    {
      [WeakRetained _showSpinner:0];
      v9 = [*(a1 + 32) alertForDisplayableError:v5];
      if (v9)
      {
        [v7 presentViewController:v9 animated:1 completion:0];
      }

      else
      {
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __89__PKPerformActionViewController__presentAddAnotherCardFlowWithTransitNetworkIdentifiers___block_invoke_3;
        v10[3] = &unk_1E8010970;
        v10[4] = v7;
        [v7 _showGenericErrorAlert:v10];
      }
    }
  }
}

uint64_t __89__PKPerformActionViewController__presentAddAnotherCardFlowWithTransitNetworkIdentifiers___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _showSpinner:0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 presentViewController:v3 animated:1 completion:0];
}

void __89__PKPerformActionViewController__presentAddAnotherCardFlowWithTransitNetworkIdentifiers___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 performActionViewControllerDidCancel:*(a1 + 32)];
}

- (void)paymentAuthorizationCoordinator:(id)a3 didAuthorizePayment:(id)a4 handler:(id)a5
{
  v5 = MEMORY[0x1E69B8B80];
  v6 = a5;
  v7 = objc_alloc_init(v5);
  [v7 setStatus:1];
  v6[2](v6, v7);
}

- (void)paymentAuthorizationCoordinatorDidFinish:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __74__PKPerformActionViewController_paymentAuthorizationCoordinatorDidFinish___block_invoke;
  v3[3] = &unk_1E8010970;
  v3[4] = self;
  [a3 dismissWithCompletion:v3];
}

void __74__PKPerformActionViewController_paymentAuthorizationCoordinatorDidFinish___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__PKPerformActionViewController_paymentAuthorizationCoordinatorDidFinish___block_invoke_2;
  block[3] = &unk_1E8010970;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __74__PKPerformActionViewController_paymentAuthorizationCoordinatorDidFinish___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setModalInPresentation:0];
  v2 = *(a1 + 32);
  if (v2[128])
  {
    if (objc_opt_respondsToSelector())
    {
      [*(*(a1 + 32) + 1072) willDismissViewController];
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1088));

    v4 = *(a1 + 32);
    if (WeakRetained)
    {
      v5 = objc_loadWeakRetained(v4 + 136);
      [v5 performActionViewControllerDidPerformAction:*(a1 + 32)];
    }

    else
    {

      [v4 dismissViewControllerAnimated:1 completion:0];
    }
  }

  else
  {

    [v2 updateFirstResponder];
  }
}

- (id)presentationSceneIdentifierForPaymentAuthorizationCoordinator:(id)a3
{
  v3 = [(PKPerformActionViewController *)self view];
  v4 = [v3 window];
  v5 = [v4 windowScene];
  v6 = [v5 _sceneIdentifier];

  return v6;
}

- (void)paymentAuthorizationCoordinator:(id)a3 didAuthorizePurchase:(id)a4 completion:(id)a5
{
  v9 = a4;
  if (v9)
  {
    objc_storeStrong(&self->_completedPurchase, a4);
    v8 = a5;
    [(PKPerformActionView *)self->_actionView saveLastInputValues];
    v8[2](v8, 0);
  }

  else
  {
    (*(a5 + 2))(a5, 1);
  }
}

- (void)paymentSetupDidFinish:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained performActionViewControllerDidCancel:self];
}

- (void)_cancelButtonPressed:(id)a3
{
  if (objc_opt_respondsToSelector())
  {
    [(PKPerformActionView *)self->_actionView willDismissViewController];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 performActionViewControllerDidPerformAction:self];
  }

  else
  {

    [(PKPerformActionViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (PKPerformActionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
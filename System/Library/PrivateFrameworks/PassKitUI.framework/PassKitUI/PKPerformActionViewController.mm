@interface PKPerformActionViewController
+ (id)alertControllerForUnableReason:(unint64_t)reason action:(id)action displayableError:(id)error addCardActionHandler:(id)handler unavailableActionHandler:(id)actionHandler cancelActionHandler:(id)cancelActionHandler;
- (BOOL)shouldHidePassView;
- (PKPerformActionViewController)initWithPass:(id)pass action:(id)action;
- (PKPerformActionViewController)initWithPass:(id)pass action:(id)action viewStyle:(int64_t)style paymentDataProvider:(id)provider;
- (PKPerformActionViewControllerDelegate)delegate;
- (id)_actionViewForPass:(id)pass action:(id)action;
- (id)_generateGenericAlertWithCompletion:(id)completion;
- (id)_generateNoActionsAvailableDueToConflictErrorAlertWithCompletion:(id)completion;
- (id)_generateNoActionsAvailableDueToRemoteActionFailureAlertWithCompletion:(id)completion;
- (id)presentationSceneIdentifierForPaymentAuthorizationCoordinator:(id)coordinator;
- (void)_canPerformPaymentWithCompletion:(id)completion;
- (void)_cancelButtonPressed:(id)pressed;
- (void)_fetchRemoteContentIfNeeded;
- (void)_presentAddAnotherCardFlowWithTransitNetworkIdentifiers:(id)identifiers;
- (void)_presentPaymentSetupControllerWithAllowedPaymentNetworks:(id)networks;
- (void)_reloadActionView;
- (void)_rightBarButtonPressed:(id)pressed;
- (void)_showGenericErrorAlert:(id)alert;
- (void)_showLoadingView:(BOOL)view;
- (void)_showNoActionsAvailableDueToConflictErrorAlert;
- (void)_showNoActionsAvailableDueToRemoteActionFailureAlert;
- (void)_showSpinner:(BOOL)spinner;
- (void)autoReloadSetupControllerDidCompleteWithAmount:(id)amount threshold:(id)threshold;
- (void)paymentAuthorizationCoordinator:(id)coordinator didAuthorizePayment:(id)payment handler:(id)handler;
- (void)paymentAuthorizationCoordinator:(id)coordinator didAuthorizePurchase:(id)purchase completion:(id)completion;
- (void)paymentAuthorizationCoordinatorDidFinish:(id)finish;
- (void)paymentSetupDidFinish:(id)finish;
- (void)preflightWithCompletion:(id)completion;
- (void)traitCollectionDidChange:(id)change;
- (void)updateFirstResponder;
- (void)updatePassViewVisibility;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation PKPerformActionViewController

+ (id)alertControllerForUnableReason:(unint64_t)reason action:(id)action displayableError:(id)error addCardActionHandler:(id)handler unavailableActionHandler:(id)actionHandler cancelActionHandler:(id)cancelActionHandler
{
  actionCopy = action;
  errorCopy = error;
  handlerCopy = handler;
  actionHandlerCopy = actionHandler;
  cancelActionHandlerCopy = cancelActionHandler;
  if (reason == 6)
  {
    v18 = PKCreateAlertControllerForWalletUninstalled(0);
    goto LABEL_21;
  }

  if (!errorCopy)
  {
    v18 = 0;
    goto LABEL_21;
  }

  v19 = MEMORY[0x1E69DC650];
  v20 = PKTitleForDisplayableError();
  v21 = MEMORY[0x1BFB42D10](errorCopy);
  v18 = [v19 alertControllerWithTitle:v20 message:v21 preferredStyle:1];

  if (reason == 5)
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
  v44 = cancelActionHandlerCopy;
  v25 = [v24 actionWithTitle:v23 style:1 handler:v43];
  [v18 addAction:v25];
  if (reason == 2 && handlerCopy)
  {
    v37 = v23;
    if (([actionCopy serviceProviderCapabilities] & 0xC) == 8)
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
    v42 = handlerCopy;
    v29 = [v27 actionWithTitle:v28 style:0 handler:v41];

    [v18 addAction:v29];
    [v18 setPreferredAction:v29];

    v30 = v42;
LABEL_19:

    v23 = v37;
    goto LABEL_20;
  }

  if (reason == 7)
  {
    v37 = v23;
    unavailableActionTitle = [actionCopy unavailableActionTitle];
    v32 = unavailableActionTitle;
    if (unavailableActionTitle)
    {
      v33 = unavailableActionTitle;
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
    v39 = actionCopy;
    v40 = actionHandlerCopy;
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

- (PKPerformActionViewController)initWithPass:(id)pass action:(id)action
{
  v6 = MEMORY[0x1E69B8BD8];
  actionCopy = action;
  passCopy = pass;
  defaultDataProvider = [v6 defaultDataProvider];
  v10 = [(PKPerformActionViewController *)self initWithPass:passCopy action:actionCopy paymentDataProvider:defaultDataProvider];

  return v10;
}

- (PKPerformActionViewController)initWithPass:(id)pass action:(id)action viewStyle:(int64_t)style paymentDataProvider:(id)provider
{
  passCopy = pass;
  actionCopy = action;
  providerCopy = provider;
  type = [actionCopy type];
  if (type)
  {
    v15 = type;
    v33.receiver = self;
    v33.super_class = PKPerformActionViewController;
    v16 = [(PKPerformActionViewController *)&v33 init];
    v17 = v16;
    if (v16)
    {
      objc_storeStrong(&v16->_pass, pass);
      objc_storeStrong(&v17->_action, action);
      mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
      webService = v17->_webService;
      v17->_webService = mEMORY[0x1E69B8EF8];

      objc_storeStrong(&v17->_paymentDataProvider, provider);
      navigationItem = [(PKPerformActionViewController *)v17 navigationItem];
      if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
      {
        v21 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
        [v21 configureWithTransparentBackground];
        v22 = PKProvisioningBackgroundColor();
        [v21 setBackgroundColor:v22];

        [navigationItem setStandardAppearance:v21];
        [navigationItem setScrollEdgeAppearance:v21];
      }

      if (v15 != 5)
      {
        title = [(PKPaymentPassAction *)v17->_action title];
        [navigationItem setTitle:title];
      }

      confirmationTitle = [(PKPaymentPassAction *)v17->_action confirmationTitle];
      v25 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:confirmationTitle style:2 target:v17 action:sel__rightBarButtonPressed_];
      button = v17->_button;
      v17->_button = v25;

      [navigationItem setRightBarButtonItem:v17->_button];
      v27 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
      v28 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v27];
      spinner = v17->_spinner;
      v17->_spinner = v28;

      [v27 startAnimating];
      v17->_fieldsVerified = 1;
      if ([PKPaymentAutoReloadSetupController shouldOfferAutoReloadForPass:passCopy])
      {
        v30 = [[PKPaymentAutoReloadSetupController alloc] initWithPass:passCopy paymentDataProvider:providerCopy viewStyle:style delegate:v17];
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

- (void)autoReloadSetupControllerDidCompleteWithAmount:(id)amount threshold:(id)threshold
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    v8 = objc_loadWeakRetained(&self->_delegate);
    navigationController = v8;
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
    navigationController = [(PKPerformActionViewController *)self navigationController];
    [navigationController dismissViewControllerAnimated:1 completion:0];
  }
}

- (id)_actionViewForPass:(id)pass action:(id)action
{
  passCopy = pass;
  actionCopy = action;
  type = [actionCopy type];
  switch(type)
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
      v10 = [objc_alloc(*v9) initWithPass:passCopy action:actionCopy paymentDataProvider:self->_paymentDataProvider];
      goto LABEL_9;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (void)viewWillAppear:(BOOL)appear
{
  v11.receiver = self;
  v11.super_class = PKPerformActionViewController;
  [(PKPerformActionViewController *)&v11 viewWillAppear:appear];
  [(PKPerformActionViewController *)self _fetchRemoteContentIfNeeded];
  navigationController = [(PKPerformActionViewController *)self navigationController];
  if ([navigationController pk_settings_useStateDrivenNavigation])
  {
    pk_settings_viewControllerCount = [navigationController pk_settings_viewControllerCount];
  }

  else
  {
    viewControllers = [navigationController viewControllers];
    v7 = [viewControllers count];

    pk_settings_viewControllerCount = v7 == 1;
  }

  presentingViewController = [(PKPerformActionViewController *)self presentingViewController];
  if (presentingViewController)
  {

    if ((navigationController == 0) | pk_settings_viewControllerCount & 1)
    {
      navigationItem = [(PKPerformActionViewController *)self navigationItem];
      v10 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__cancelButtonPressed_];
      [navigationItem setLeftBarButtonItem:v10];
    }
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PKPerformActionViewController;
  [(PKPerformActionViewController *)&v4 viewWillDisappear:disappear];
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
  view = [(PKPerformActionViewController *)self view];
  v4 = PKProvisioningBackgroundColor();
  [view setBackgroundColor:v4];

  v5 = [PKPerformActionPassView alloc];
  pass = self->_pass;
  view2 = [(PKPerformActionViewController *)self view];
  [view2 bounds];
  v8 = [(PKPerformActionPassView *)v5 initWithPass:pass frame:?];
  passView = self->_passView;
  self->_passView = v8;

  [(PKPerformActionPassView *)self->_passView setHidden:[(PKPerformActionViewController *)self shouldHidePassView]];
  [view addSubview:self->_passView];
  [(PKPerformActionViewController *)self _reloadActionView];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKPerformActionViewController;
  [(PKPerformActionViewController *)&v4 viewDidAppear:appear];
  [(PKPerformActionViewController *)self updateFirstResponder];
}

- (void)updateFirstResponder
{
  type = [(PKPaymentPassAction *)self->_action type];
  amountTextField = [(PKPerformActionView *)self->_actionView amountTextField];
  v5 = amountTextField;
  if (type == 1)
  {
    [amountTextField becomeFirstResponder];
  }

  else
  {
    [amountTextField resignFirstResponder];
  }
}

- (void)viewWillLayoutSubviews
{
  v28.receiver = self;
  v28.super_class = PKPerformActionViewController;
  [(PKPerformActionViewController *)&v28 viewWillLayoutSubviews];
  view = [(PKPerformActionViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  width = v8;
  v11 = v10;
  [view safeAreaInsets];
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

  traitCollection = [(PKPerformActionViewController *)self traitCollection];
  v4 = [traitCollection verticalSizeClass] == 1;

  return v4;
}

- (void)updatePassViewVisibility
{
  shouldHidePassView = [(PKPerformActionViewController *)self shouldHidePassView];
  if (shouldHidePassView != [(PKPerformActionPassView *)self->_passView isHidden])
  {
    [(PKPerformActionPassView *)self->_passView setHidden:shouldHidePassView];
    viewIfLoaded = [(PKPerformActionViewController *)self viewIfLoaded];
    [viewIfLoaded setNeedsLayout];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = PKPerformActionViewController;
  [(PKPerformActionViewController *)&v4 traitCollectionDidChange:change];
  [(PKPerformActionViewController *)self updatePassViewVisibility];
}

- (void)_showSpinner:(BOOL)spinner
{
  spinnerCopy = spinner;
  navigationItem = [(PKPerformActionViewController *)self navigationItem];
  v7 = navigationItem;
  v6 = 4;
  if (spinnerCopy)
  {
    v6 = 5;
  }

  [navigationItem setRightBarButtonItem:*(&self->super.super.super.isa + OBJC_IVAR___PKPerformActionViewController__pass[v6])];
}

- (void)preflightWithCompletion:(id)completion
{
  completionCopy = completion;
  remoteContentConfiguration = [(PKPaymentPassAction *)self->_action remoteContentConfiguration];
  if (remoteContentConfiguration && (remoteContentFetched = self->_remoteContentFetched, remoteContentConfiguration, !remoteContentFetched))
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
    v11 = completionCopy;
    [(PKPaymentWebService *)webService passActionWithRemoteContentPassAction:action forPass:pass completion:v10];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1, 0);
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
  remoteContentConfiguration = [(PKPaymentPassAction *)self->_action remoteContentConfiguration];
  if (remoteContentConfiguration)
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

- (void)_showLoadingView:(BOOL)view
{
  loadingView = self->_loadingView;
  if (view)
  {
    if (!loadingView)
    {
      v5 = [PKPerformActionLoadingView alloc];
      [(PKPerformActionView *)self->_actionView frame];
      v6 = [(PKPerformActionLoadingView *)v5 initWithFrame:?];
      v7 = self->_loadingView;
      self->_loadingView = v6;
    }

    view = [(PKPerformActionViewController *)self view];
    [view addSubview:self->_loadingView];

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
  view = [(PKPerformActionViewController *)self view];
  [view insertSubview:self->_actionView belowSubview:self->_passView];
}

- (void)_rightBarButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  if (self->_fieldsVerified)
  {
    if ([MEMORY[0x1E69B8B60] canMakePayments])
    {
      [(PKPerformActionViewController *)self setModalInPresentation:1];
      [(PKPerformActionViewController *)self setRightBarButtonEnabled:0];
      amountTextField = [(PKPerformActionView *)self->_actionView amountTextField];
      [amountTextField resignFirstResponder];

      actionView = [(PKPerformActionViewController *)self actionView];
      objc_initWeak(location, self);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __56__PKPerformActionViewController__rightBarButtonPressed___block_invoke;
      v9[3] = &unk_1E8022688;
      v7 = actionView;
      v10 = v7;
      objc_copyWeak(&v12, location);
      selfCopy = self;
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

- (void)_canPerformPaymentWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    if ([(PKPaymentPassAction *)self->_action type]== 5)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
      goto LABEL_15;
    }

    if ([(PKPaymentPassAction *)self->_action type]== 2)
    {
      uniqueID = [(PKPaymentPass *)self->_pass uniqueID];
      devicePrimaryPaymentApplication = [(PKPaymentPass *)self->_pass devicePrimaryPaymentApplication];
      if (objc_opt_respondsToSelector())
      {
        paymentDataProvider = self->_paymentDataProvider;
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __66__PKPerformActionViewController__canPerformPaymentWithCompletion___block_invoke;
        v16[3] = &unk_1E801EB70;
        v17 = devicePrimaryPaymentApplication;
        selfCopy = self;
        v19 = completionCopy;
        [(PKPaymentDataProvider *)paymentDataProvider transitStateWithPassUniqueIdentifier:uniqueID paymentApplication:v17 completion:v16];
      }

      else
      {
        (*(completionCopy + 2))(completionCopy, 0, 0);
      }
    }

    else
    {
      v14 = 0;
      v15 = 0;
      v8 = [(PKPaymentPass *)self->_pass canPerformAction:self->_action unableReason:&v15 displayableError:&v14];
      uniqueID = v14;
      if (v8)
      {
        (*(completionCopy + 2))(completionCopy, 0, 0);
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
      devicePrimaryPaymentApplication = [PKPerformActionViewController alertControllerForUnableReason:v15 action:action displayableError:uniqueID addCardActionHandler:v13 unavailableActionHandler:0 cancelActionHandler:v12];
      if ([(PKPaymentPass *)self->_pass isTransitPass])
      {
        v10 = [objc_opt_class() displayableErrorForTransitAction:self->_action andReason:v15];
        v11 = MEMORY[0x1BFB42D10]();
        [devicePrimaryPaymentApplication setMessage:v11];
      }

      (*(completionCopy + 2))(completionCopy, devicePrimaryPaymentApplication, v15);
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

- (id)_generateGenericAlertWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [MEMORY[0x1E69B8D08] displayableErrorForAction:self->_action andReason:1];
  v6 = MEMORY[0x1E69DC650];
  localizedDescription = [v5 localizedDescription];
  localizedRecoverySuggestion = [v5 localizedRecoverySuggestion];
  v9 = [v6 alertControllerWithTitle:localizedDescription message:localizedRecoverySuggestion preferredStyle:1];

  v10 = MEMORY[0x1E69DC648];
  v11 = PKLocalizedPaymentString(&cfstr_PassActionUnav.isa);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__PKPerformActionViewController__generateGenericAlertWithCompletion___block_invoke;
  v15[3] = &unk_1E8011248;
  v16 = completionCopy;
  v12 = completionCopy;
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

- (void)_showGenericErrorAlert:(id)alert
{
  v4 = [(PKPerformActionViewController *)self _generateGenericAlertWithCompletion:alert];
  [(PKPerformActionViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (id)_generateNoActionsAvailableDueToRemoteActionFailureAlertWithCompletion:(id)completion
{
  completionCopy = completion;
  localizedDescription = [(PKPaymentPass *)self->_pass localizedDescription];
  v6 = PKLocalizedPaymentString(&cfstr_PassActionUnav_7.isa);
  v7 = PKLocalizedPaymentString(&cfstr_PassActionUnav_8.isa, &stru_1F3BD5BF0.isa, localizedDescription);
  v8 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v6 message:v7 preferredStyle:1];
  v9 = MEMORY[0x1E69DC648];
  v10 = PKLocalizedPaymentString(&cfstr_PassActionUnav.isa);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __104__PKPerformActionViewController__generateNoActionsAvailableDueToRemoteActionFailureAlertWithCompletion___block_invoke;
  v14[3] = &unk_1E8011248;
  v15 = completionCopy;
  v11 = completionCopy;
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

- (id)_generateNoActionsAvailableDueToConflictErrorAlertWithCompletion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  devicePaymentApplications = [(PKPaymentPass *)self->_pass devicePaymentApplications];
  v7 = [devicePaymentApplications countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(devicePaymentApplications);
        }

        supportedTransitNetworkIdentifiers = [*(*(&v23 + 1) + 8 * i) supportedTransitNetworkIdentifiers];
        if (supportedTransitNetworkIdentifiers)
        {
          [v5 addObjectsFromArray:supportedTransitNetworkIdentifiers];
        }
      }

      v8 = [devicePaymentApplications countByEnumeratingWithState:&v23 objects:v27 count:16];
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
    v21 = completionCopy;
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

    v14 = [(PKPerformActionViewController *)self _generateGenericAlertWithCompletion:completionCopy];
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

- (void)_presentPaymentSetupControllerWithAllowedPaymentNetworks:(id)networks
{
  networksCopy = networks;
  mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
  v6 = [objc_alloc(MEMORY[0x1E69B8D48]) initWithWebService:mEMORY[0x1E69B8EF8]];
  [v6 setAllowedPaymentNetworks:networksCopy];
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

- (void)_presentAddAnotherCardFlowWithTransitNetworkIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
  v6 = [objc_alloc(MEMORY[0x1E69B8D48]) initWithWebService:mEMORY[0x1E69B8EF8]];
  [v6 setRequiredTransitNetworkIdentifiers:identifiersCopy];
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

- (void)paymentAuthorizationCoordinator:(id)coordinator didAuthorizePayment:(id)payment handler:(id)handler
{
  v5 = MEMORY[0x1E69B8B80];
  handlerCopy = handler;
  v7 = objc_alloc_init(v5);
  [v7 setStatus:1];
  handlerCopy[2](handlerCopy, v7);
}

- (void)paymentAuthorizationCoordinatorDidFinish:(id)finish
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __74__PKPerformActionViewController_paymentAuthorizationCoordinatorDidFinish___block_invoke;
  v3[3] = &unk_1E8010970;
  v3[4] = self;
  [finish dismissWithCompletion:v3];
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

- (id)presentationSceneIdentifierForPaymentAuthorizationCoordinator:(id)coordinator
{
  view = [(PKPerformActionViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  _sceneIdentifier = [windowScene _sceneIdentifier];

  return _sceneIdentifier;
}

- (void)paymentAuthorizationCoordinator:(id)coordinator didAuthorizePurchase:(id)purchase completion:(id)completion
{
  purchaseCopy = purchase;
  if (purchaseCopy)
  {
    objc_storeStrong(&self->_completedPurchase, purchase);
    completionCopy = completion;
    [(PKPerformActionView *)self->_actionView saveLastInputValues];
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    (*(completion + 2))(completion, 1);
  }
}

- (void)paymentSetupDidFinish:(id)finish
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained performActionViewControllerDidCancel:self];
}

- (void)_cancelButtonPressed:(id)pressed
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
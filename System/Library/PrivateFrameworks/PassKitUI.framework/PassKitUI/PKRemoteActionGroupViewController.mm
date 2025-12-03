@interface PKRemoteActionGroupViewController
- (BOOL)_canSkipSecondaryScreen;
- (PKRemoteActionGroupViewController)initWithPass:(id)pass actionGroup:(id)group paymentDataProvider:(id)provider webService:(id)service;
- (PKRemoteActionGroupViewControllerDelegate)delegate;
- (id)_generateGenericAlertForError:(id)error completion:(id)completion;
- (id)_generateNoActionsAvailableDueToConflictErrorAlertWithCompletion:(id)completion;
- (id)presentationSceneIdentifierForPaymentAuthorizationCoordinator:(id)coordinator;
- (void)_canPerformPaymentWithCompletion:(id)completion;
- (void)_cancelButtonPressed:(id)pressed;
- (void)_fetchRemoteContentIfNeeded;
- (void)_presentAddAnotherCardFlowWithTransitNetworkIdentifiers:(id)identifiers;
- (void)_presentPaymentSetupControllerWithAllowedPaymentNetworks:(id)networks;
- (void)_reloadActionGroupActionsView;
- (void)_rightBarButtonPressed:(id)pressed;
- (void)_rightBarButtonPressedForOslo:(id)oslo;
- (void)_rightBarButtonPressedForPerformAction:(id)action;
- (void)_showGenericErrorAlert:(id)alert;
- (void)_showGenericErrorAlertForError:(id)error completion:(id)completion;
- (void)_showSpinner:(BOOL)spinner;
- (void)fetchServiceProviderDataWithCompletion:(id)completion;
- (void)paymentAuthorizationCoordinator:(id)coordinator didAuthorizePayment:(id)payment handler:(id)handler;
- (void)paymentAuthorizationCoordinatorDidFinish:(id)finish;
- (void)performActionViewControllerDidCancel:(id)cancel;
- (void)performActionViewControllerDidPerformAction:(id)action;
- (void)preflightWithCompletion:(id)completion;
- (void)selectActionGroupActionsViewDidSelectActionGroupAction:(id)action;
- (void)setRightBarButtonEnabled:(BOOL)enabled;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation PKRemoteActionGroupViewController

- (PKRemoteActionGroupViewController)initWithPass:(id)pass actionGroup:(id)group paymentDataProvider:(id)provider webService:(id)service
{
  passCopy = pass;
  groupCopy = group;
  providerCopy = provider;
  serviceCopy = service;
  v27.receiver = self;
  v27.super_class = PKRemoteActionGroupViewController;
  v15 = [(PKRemoteActionGroupViewController *)&v27 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_pass, pass);
    objc_storeStrong(&v16->_actionGroup, group);
    objc_storeStrong(&v16->_paymentDataProvider, provider);
    objc_storeStrong(&v16->_webService, service);
    navigationItem = [(PKRemoteActionGroupViewController *)v16 navigationItem];
    v18 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
    [v18 configureWithTransparentBackground];
    v19 = PKProvisioningBackgroundColor();
    [v18 setBackgroundColor:v19];

    [navigationItem setStandardAppearance:v18];
    [navigationItem setScrollEdgeAppearance:v18];
    v20 = PKLocalizedPaymentString(&cfstr_SetupPurchaseA_0.isa);
    v21 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v20 style:2 target:v16 action:sel__rightBarButtonPressed_];
    button = v16->_button;
    v16->_button = v21;

    [(UIBarButtonItem *)v16->_button setEnabled:0];
    [navigationItem setRightBarButtonItem:v16->_button];
    v23 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    v24 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v23];
    spinner = v16->_spinner;
    v16->_spinner = v24;

    [v23 startAnimating];
  }

  return v16;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PKRemoteActionGroupViewController;
  [(PKRemoteActionGroupViewController *)&v3 viewDidLoad];
  [(PKRemoteActionGroupViewController *)self _reloadActionGroupActionsView];
  [(PKRemoteActionGroupViewController *)self _fetchRemoteContentIfNeeded];
}

- (void)viewWillAppear:(BOOL)appear
{
  v11.receiver = self;
  v11.super_class = PKRemoteActionGroupViewController;
  [(PKRemoteActionGroupViewController *)&v11 viewWillAppear:appear];
  navigationController = [(PKRemoteActionGroupViewController *)self navigationController];
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

  presentingViewController = [(PKRemoteActionGroupViewController *)self presentingViewController];
  if (presentingViewController)
  {

    if ((navigationController == 0) | pk_settings_viewControllerCount & 1)
    {
      navigationItem = [(PKRemoteActionGroupViewController *)self navigationItem];
      v10 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__cancelButtonPressed_];
      [navigationItem setLeftBarButtonItem:v10];
    }
  }
}

- (void)_reloadActionGroupActionsView
{
  view = [(PKRemoteActionGroupViewController *)self view];
  [(PKSelectActionGroupActionsView *)self->_actionGroupActionView removeFromSuperview];
  [(PKSelectActionGroupActionsView *)self->_actionGroupActionView setDelegate:0];
  actionGroupActionView = self->_actionGroupActionView;
  self->_actionGroupActionView = 0;

  remoteContentConfiguration = [(PKPaymentPassActionGroup *)self->_actionGroup remoteContentConfiguration];
  if (remoteContentConfiguration)
  {
    v5 = !self->_remoteContentFetched;
  }

  else
  {
    v5 = 0;
  }

  v6 = [[PKSelectActionGroupActionsView alloc] initWithPass:self->_pass actionGroup:self->_actionGroup];
  v7 = self->_actionGroupActionView;
  self->_actionGroupActionView = v6;

  [(PKSelectActionGroupActionsView *)self->_actionGroupActionView setLoading:v5];
  v8 = self->_actionGroupActionView;
  v9 = PKProvisioningBackgroundColor();
  [(PKSelectActionGroupActionsView *)v8 setBackgroundColor:v9];

  [(PKSelectActionGroupActionsView *)self->_actionGroupActionView setDelegate:self];
  [view addSubview:self->_actionGroupActionView];
}

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = PKRemoteActionGroupViewController;
  [(PKRemoteActionGroupViewController *)&v15 viewWillLayoutSubviews];
  view = [(PKRemoteActionGroupViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [view safeAreaInsets];
  [(PKSelectActionGroupActionsView *)self->_actionGroupActionView setFrame:v13 + v5 + 0.0, v7 + v12 + 0.0, v9 - (v13 + v14), v11 - (v12 + 0.0)];
}

- (void)_showSpinner:(BOOL)spinner
{
  spinnerCopy = spinner;
  navigationItem = [(PKRemoteActionGroupViewController *)self navigationItem];
  v7 = navigationItem;
  v6 = 4;
  if (spinnerCopy)
  {
    v6 = 5;
  }

  [navigationItem setRightBarButtonItem:*(&self->super.super.super.isa + OBJC_IVAR___PKRemoteActionGroupViewController__pass[v6])];
}

- (void)_rightBarButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  if ([(PKRemoteActionGroupViewController *)self _canSkipSecondaryScreen])
  {
    [(PKRemoteActionGroupViewController *)self _rightBarButtonPressedForOslo:pressedCopy];
  }

  else
  {
    [(PKRemoteActionGroupViewController *)self _rightBarButtonPressedForPerformAction:pressedCopy];
  }
}

- (void)preflightWithCompletion:(id)completion
{
  completionCopy = completion;
  remoteContentConfiguration = [(PKPaymentPassActionGroup *)self->_actionGroup remoteContentConfiguration];
  if (remoteContentConfiguration && (remoteContentFetched = self->_remoteContentFetched, remoteContentConfiguration, !remoteContentFetched))
  {
    self->_remoteContentFetched = 1;
    objc_initWeak(&location, self);
    webService = self->_webService;
    actionGroup = self->_actionGroup;
    pass = self->_pass;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __61__PKRemoteActionGroupViewController_preflightWithCompletion___block_invoke;
    v10[3] = &unk_1E801EA80;
    objc_copyWeak(&v12, &location);
    v10[4] = self;
    v11 = completionCopy;
    [(PKPaymentWebService *)webService passActionGroupWithRemoteContentPassActionGroup:actionGroup forPass:pass completion:v10];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1, 0);
  }
}

void __61__PKRemoteActionGroupViewController_preflightWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__PKRemoteActionGroupViewController_preflightWithCompletion___block_invoke_2;
  block[3] = &unk_1E8014D58;
  block[4] = WeakRetained;
  v13 = v5;
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v14 = v6;
  v15 = v9;
  v16 = v8;
  v10 = v6;
  v11 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __61__PKRemoteActionGroupViewController_preflightWithCompletion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    return;
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    objc_storeStrong((v1 + 1000), v3);
    v4 = *(a1 + 64);
    if (v4)
    {
      v5 = *(v4 + 16);

      v5();
    }

    return;
  }

  v6 = *(a1 + 48);
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = [v6 domain];
  if (([v7 isEqualToString:*MEMORY[0x1E69BC300]] & 1) == 0)
  {

    goto LABEL_13;
  }

  v8 = [*(a1 + 48) code];

  if (v8 != 60091)
  {
LABEL_13:
    v9 = *(a1 + 64);
    if (!v9)
    {
      return;
    }

    v10 = [*(a1 + 56) _generateGenericAlertForError:*(a1 + 48)];
    goto LABEL_15;
  }

  v9 = *(a1 + 64);
  if (!v9)
  {
    return;
  }

  v10 = [*(a1 + 56) _generateNoActionsAvailableDueToConflictErrorAlert];
LABEL_15:
  v11 = v10;
  (*(v9 + 16))(v9, 0, v10);
}

- (id)_generateGenericAlertForError:(id)error completion:(id)completion
{
  completionCopy = completion;
  v5 = MEMORY[0x1E69DC650];
  v6 = PKLocalizedPaymentString(&cfstr_PassActionUnav_0.isa);
  v7 = PKLocalizedPaymentString(&cfstr_PassActionUnav_1.isa);
  v8 = [v5 alertControllerWithTitle:v6 message:v7 preferredStyle:1];

  v9 = MEMORY[0x1E69DC648];
  v10 = PKLocalizedPaymentString(&cfstr_PassActionUnav.isa);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __78__PKRemoteActionGroupViewController__generateGenericAlertForError_completion___block_invoke;
  v14[3] = &unk_1E8011248;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = [v9 actionWithTitle:v10 style:1 handler:v14];
  [v8 addAction:v12];

  return v8;
}

uint64_t __78__PKRemoteActionGroupViewController__generateGenericAlertForError_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_showGenericErrorAlertForError:(id)error completion:(id)completion
{
  v5 = [(PKRemoteActionGroupViewController *)self _generateGenericAlertForError:error completion:completion];
  [(PKRemoteActionGroupViewController *)self presentViewController:v5 animated:1 completion:0];
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
    v20[2] = __102__PKRemoteActionGroupViewController__generateNoActionsAvailableDueToConflictErrorAlertWithCompletion___block_invoke;
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

    v14 = [(PKRemoteActionGroupViewController *)self _generateGenericAlertForError:0 completion:completionCopy];
  }

  return v14;
}

uint64_t __102__PKRemoteActionGroupViewController__generateNoActionsAvailableDueToConflictErrorAlertWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_fetchRemoteContentIfNeeded
{
  remoteContentConfiguration = [(PKPaymentPassActionGroup *)self->_actionGroup remoteContentConfiguration];
  if (remoteContentConfiguration)
  {
    remoteContentFetched = self->_remoteContentFetched;

    if (!remoteContentFetched)
    {
      self->_remoteContentFetched = 1;
      [(PKSelectActionGroupActionsView *)self->_actionGroupActionView setLoading:1];
      objc_initWeak(&location, self);
      webService = self->_webService;
      actionGroup = self->_actionGroup;
      pass = self->_pass;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __64__PKRemoteActionGroupViewController__fetchRemoteContentIfNeeded__block_invoke;
      v8[3] = &unk_1E801EAA8;
      objc_copyWeak(&v9, &location);
      [(PKPaymentWebService *)webService passActionGroupWithRemoteContentPassActionGroup:actionGroup forPass:pass completion:v8];
      objc_destroyWeak(&v9);
      objc_destroyWeak(&location);
    }
  }
}

void __64__PKRemoteActionGroupViewController__fetchRemoteContentIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__PKRemoteActionGroupViewController__fetchRemoteContentIfNeeded__block_invoke_2;
    block[3] = &unk_1E8012808;
    block[4] = WeakRetained;
    v7 = v3;
    objc_copyWeak(&v8, (a1 + 32));
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v8);
  }
}

void __64__PKRemoteActionGroupViewController__fetchRemoteContentIfNeeded__block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 1008) setLoading:0];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v2)
  {
    objc_storeStrong(v3 + 125, v2);
    v4 = *(a1 + 32);

    [v4 _reloadActionGroupActionsView];
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __64__PKRemoteActionGroupViewController__fetchRemoteContentIfNeeded__block_invoke_3;
    v5[3] = &unk_1E8010998;
    objc_copyWeak(&v6, (a1 + 48));
    [v3 _showGenericErrorAlert:v5];
    objc_destroyWeak(&v6);
  }
}

void __64__PKRemoteActionGroupViewController__fetchRemoteContentIfNeeded__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v2 remoteGroupActionsViewControllerDidCancel:v3];
}

- (void)fetchServiceProviderDataWithCompletion:(id)completion
{
  completionCopy = completion;
  type = [(PKPaymentPassAction *)self->_selectedAction type];
  if (type == 5)
  {
    purchaseNewActionItems = [(PKPaymentPassAction *)self->_selectedAction purchaseNewActionItems];
    firstObject = [purchaseNewActionItems firstObject];

    secureElementPass = [(PKPaymentPass *)self->_pass secureElementPass];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __76__PKRemoteActionGroupViewController_fetchServiceProviderDataWithCompletion___block_invoke_2;
    v16[3] = &unk_1E801EAD0;
    v17 = firstObject;
    v18 = completionCopy;
    v15 = firstObject;
    [v15 serviceProviderDataWithItemForPass:secureElementPass completion:v16];
  }

  else if (type == 2)
  {
    selectedActionItems = [(PKPaymentPassAction *)self->_selectedAction selectedActionItems];
    firstObject2 = [selectedActionItems firstObject];

    v8 = [MEMORY[0x1E69B88B0] passPropertiesForPass:self->_pass];
    balance = [v8 balance];
    secureElementPass2 = [(PKPaymentPass *)self->_pass secureElementPass];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __76__PKRemoteActionGroupViewController_fetchServiceProviderDataWithCompletion___block_invoke;
    v19[3] = &unk_1E801EAD0;
    v20 = firstObject2;
    v21 = completionCopy;
    v11 = firstObject2;
    [v11 serviceProviderDataWithPass:secureElementPass2 currentLocalBalance:balance completion:v19];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0, 0);
  }
}

void __76__PKRemoteActionGroupViewController_fetchServiceProviderDataWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = a2;
  v7 = [v4 currency];
  v6 = [*(a1 + 32) amount];
  (*(v3 + 16))(v3, v5, v7, v6);
}

void __76__PKRemoteActionGroupViewController_fetchServiceProviderDataWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = a2;
  v7 = [v4 currency];
  v6 = [*(a1 + 32) amount];
  (*(v3 + 16))(v3, v5, v7, v6);
}

- (void)_rightBarButtonPressedForPerformAction:(id)action
{
  v12 = 0;
  v13 = 0;
  v4 = [(PKPaymentPass *)self->_pass canPerformAction:self->_selectedAction unableReason:&v13 displayableError:&v12];
  v5 = v12;
  if ((v4 & 1) == 0 && v13 != 2)
  {
    v6 = [PKPerformActionViewController alertControllerForUnableReason:v13 action:self->_selectedAction displayableError:v5 addCardActionHandler:0];
    [(PKRemoteActionGroupViewController *)self presentViewController:v6 animated:1 completion:0];
LABEL_7:

    goto LABEL_8;
  }

  if (![(PKPaymentPassAction *)self->_selectedAction hasExternalActionContent])
  {
    v6 = [[PKPerformActionViewController alloc] initWithPass:self->_pass action:self->_selectedAction paymentDataProvider:self->_paymentDataProvider];
    [(PKPerformActionViewController *)v6 setDelegate:self];
    [(PKPerformActionViewController *)v6 setWebService:self->_webService];
    v10 = [[PKNavigationController alloc] initWithRootViewController:v6];
    [(PKNavigationController *)v10 setSupportedInterfaceOrientations:2];
    [(PKRemoteActionGroupViewController *)self presentViewController:v10 animated:1 completion:0];

    goto LABEL_7;
  }

  pass = self->_pass;
  externalActionContent = [(PKPaymentPassAction *)self->_selectedAction externalActionContent];
  title = [(PKPaymentPassAction *)self->_selectedAction title];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__PKRemoteActionGroupViewController__rightBarButtonPressedForPerformAction___block_invoke;
  v11[3] = &unk_1E8014560;
  v11[4] = self;
  PKPaymentPassActionPerformExternalActionContent(pass, externalActionContent, title, v11);

LABEL_8:
}

uint64_t __76__PKRemoteActionGroupViewController__rightBarButtonPressedForPerformAction___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return [*(result + 32) presentViewController:a3 animated:1 completion:0];
  }

  return result;
}

- (void)_rightBarButtonPressedForOslo:(id)oslo
{
  osloCopy = oslo;
  if ([MEMORY[0x1E69B8B60] canMakePayments])
  {
    [(PKRemoteActionGroupViewController *)self setRightBarButtonEnabled:0];
    objc_initWeak(location, self);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __67__PKRemoteActionGroupViewController__rightBarButtonPressedForOslo___block_invoke;
    v6[3] = &unk_1E801EB48;
    v6[4] = self;
    objc_copyWeak(&v7, location);
    [(PKRemoteActionGroupViewController *)self _canPerformPaymentWithCompletion:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(location);
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      _os_log_error_impl(&dword_1BD026000, v5, OS_LOG_TYPE_ERROR, "Error: Device is unable to make in-app payments.", location, 2u);
    }

    [(PKRemoteActionGroupViewController *)self _showGenericErrorAlert:0];
  }
}

void __67__PKRemoteActionGroupViewController__rightBarButtonPressedForOslo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__PKRemoteActionGroupViewController__rightBarButtonPressedForOslo___block_invoke_2;
  v8[3] = &unk_1E801EB20;
  objc_copyWeak(v10, (a1 + 40));
  v8[4] = *(a1 + 32);
  v10[1] = a3;
  v7 = v5;
  v9 = v7;
  [v6 fetchServiceProviderDataWithCompletion:v8];

  objc_destroyWeak(v10);
}

void __67__PKRemoteActionGroupViewController__rightBarButtonPressedForOslo___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v38[1] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v11 = objc_alloc_init(MEMORY[0x1E69B8A10]);
  v12 = [*(*(a1 + 32) + 1016) actionDescription];
  [v11 setItemDescription:v12];

  [v11 setServiceProviderData:v9];
  v13 = [*(*(a1 + 32) + 1016) serviceProviderIdentifier];
  [v11 setServiceProviderIdentifier:v13];

  v14 = [objc_alloc(MEMORY[0x1E69B9218]) initWithServiceProviderOrder:v11];
  [v14 setCurrencyCode:v8];

  v15 = [*(*(a1 + 32) + 1016) serviceProviderAcceptedNetworks];
  [v14 setSupportedNetworks:v15];

  [v14 setMerchantCapabilities:{objc_msgSend(*(*(a1 + 32) + 1016), "serviceProviderCapabilities")}];
  v16 = [*(*(a1 + 32) + 1016) serviceProviderCountryCode];
  [v14 setCountryCode:v16];

  v17 = [*(*(a1 + 32) + 1016) serviceProviderSupportedCountries];
  [v14 setSupportedCountries:v17];

  v18 = [*(*(a1 + 32) + 1016) serviceProviderLocalizedDisplayName];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = [*(*(a1 + 32) + 992) organizationName];
  }

  v21 = v20;

  v22 = [MEMORY[0x1E69B8E90] summaryItemWithLabel:v21 amount:v7];

  v38[0] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
  [v14 setPaymentSummaryItems:v23];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__PKRemoteActionGroupViewController__rightBarButtonPressedForOslo___block_invoke_3;
  aBlock[3] = &unk_1E8010A10;
  v24 = v14;
  v36 = v24;
  v37 = WeakRetained;
  v25 = _Block_copy(aBlock);
  v26 = v25;
  if (*(a1 + 56) == 2)
  {
    v27 = [MEMORY[0x1E69B8A58] sharedInstance];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __67__PKRemoteActionGroupViewController__rightBarButtonPressedForOslo___block_invoke_2_81;
    v32[3] = &unk_1E801EAF8;
    v32[4] = WeakRetained;
    v34 = v26;
    v33 = *(a1 + 40);
    [v27 canPresentPaymentRequest:v24 completion:v32];

    v28 = v34;
  }

  else
  {
    v29 = *(a1 + 40);
    if (!v29)
    {
      (*(v25 + 2))(v25);
      goto LABEL_9;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__PKRemoteActionGroupViewController__rightBarButtonPressedForOslo___block_invoke_4_84;
    block[3] = &unk_1E8010A10;
    block[4] = WeakRetained;
    v31 = v29;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v28 = v31;
  }

LABEL_9:
}

void __67__PKRemoteActionGroupViewController__rightBarButtonPressedForOslo___block_invoke_3(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E69B8B60]) initWithPaymentRequest:*(a1 + 32)];
  [v2 setDelegate:*(a1 + 40)];
  [v2 _setPrivateDelegate:*(a1 + 40)];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __67__PKRemoteActionGroupViewController__rightBarButtonPressedForOslo___block_invoke_4;
  v3[3] = &unk_1E8011D28;
  v3[4] = *(a1 + 40);
  [v2 presentWithCompletion:v3];
}

void __67__PKRemoteActionGroupViewController__rightBarButtonPressedForOslo___block_invoke_4(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__PKRemoteActionGroupViewController__rightBarButtonPressedForOslo___block_invoke_5;
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
    v6[2] = __67__PKRemoteActionGroupViewController__rightBarButtonPressedForOslo___block_invoke_78;
    v6[3] = &unk_1E8010970;
    v6[4] = *(a1 + 32);
    v5 = MEMORY[0x1E69E96A0];
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }
}

void __67__PKRemoteActionGroupViewController__rightBarButtonPressedForOslo___block_invoke_2_81(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __67__PKRemoteActionGroupViewController__rightBarButtonPressedForOslo___block_invoke_3_82;
  v3[3] = &unk_1E8019D88;
  v3[4] = *(a1 + 32);
  v6 = a2;
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

uint64_t __67__PKRemoteActionGroupViewController__rightBarButtonPressedForOslo___block_invoke_3_82(uint64_t a1)
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

uint64_t __67__PKRemoteActionGroupViewController__rightBarButtonPressedForOslo___block_invoke_4_84(uint64_t a1)
{
  [*(a1 + 32) setRightBarButtonEnabled:1];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 presentViewController:v3 animated:1 completion:0];
}

- (void)_canPerformPaymentWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    if ([(PKPaymentPassAction *)self->_selectedAction type]== 5)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
      goto LABEL_15;
    }

    if ([(PKPaymentPassAction *)self->_selectedAction type]== 2)
    {
      uniqueID = [(PKPaymentPass *)self->_pass uniqueID];
      devicePrimaryPaymentApplication = [(PKPaymentPass *)self->_pass devicePrimaryPaymentApplication];
      if (objc_opt_respondsToSelector())
      {
        paymentDataProvider = self->_paymentDataProvider;
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __70__PKRemoteActionGroupViewController__canPerformPaymentWithCompletion___block_invoke;
        v15[3] = &unk_1E801EB70;
        v16 = devicePrimaryPaymentApplication;
        selfCopy = self;
        v18 = completionCopy;
        [(PKPaymentDataProvider *)paymentDataProvider transitStateWithPassUniqueIdentifier:uniqueID paymentApplication:v16 completion:v15];
      }

      else
      {
        (*(completionCopy + 2))(completionCopy, 0, 0);
      }
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v8 = [(PKPaymentPass *)self->_pass canPerformAction:self->_selectedAction unableReason:&v14 displayableError:&v13];
      uniqueID = v13;
      if (v8)
      {
        (*(completionCopy + 2))(completionCopy, 0, 0);
LABEL_14:

        goto LABEL_15;
      }

      selectedAction = self->_selectedAction;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __70__PKRemoteActionGroupViewController__canPerformPaymentWithCompletion___block_invoke_2_97;
      v12[3] = &unk_1E8010970;
      v12[4] = self;
      devicePrimaryPaymentApplication = [PKPerformActionViewController alertControllerForUnableReason:v14 action:selectedAction displayableError:uniqueID addCardActionHandler:v12];
      if ([(PKPaymentPass *)self->_pass isTransitPass])
      {
        v10 = [objc_opt_class() displayableErrorForTransitAction:self->_selectedAction andReason:v14];
        v11 = MEMORY[0x1BFB42D10]();
        [devicePrimaryPaymentApplication setMessage:v11];
      }

      (*(completionCopy + 2))(completionCopy, devicePrimaryPaymentApplication, v14);
    }

    goto LABEL_14;
  }

LABEL_15:
}

void __70__PKRemoteActionGroupViewController__canPerformPaymentWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__PKRemoteActionGroupViewController__canPerformPaymentWithCompletion___block_invoke_2;
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

void __70__PKRemoteActionGroupViewController__canPerformPaymentWithCompletion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  if (v2 && ([v2 transitPassPropertiesWithPaymentApplication:a1[5] pass:*(a1[6] + 992)], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isEnRoute"), v3, v4))
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
    v10 = *(v9 + 1016);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __70__PKRemoteActionGroupViewController__canPerformPaymentWithCompletion___block_invoke_95;
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

void __70__PKRemoteActionGroupViewController__canPerformPaymentWithCompletion___block_invoke_95(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1[127] serviceProviderAcceptedNetworks];
  [v1 _presentPaymentSetupControllerWithAllowedPaymentNetworks:v2];
}

void __70__PKRemoteActionGroupViewController__canPerformPaymentWithCompletion___block_invoke_2_97(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1[127] serviceProviderAcceptedNetworks];
  [v1 _presentPaymentSetupControllerWithAllowedPaymentNetworks:v2];
}

- (void)_presentPaymentSetupControllerWithAllowedPaymentNetworks:(id)networks
{
  networksCopy = networks;
  mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
  v6 = [objc_alloc(MEMORY[0x1E69B8D48]) initWithWebService:mEMORY[0x1E69B8EF8]];
  [v6 setAllowedPaymentNetworks:networksCopy];
  [(PKRemoteActionGroupViewController *)self _showSpinner:1];
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __94__PKRemoteActionGroupViewController__presentPaymentSetupControllerWithAllowedPaymentNetworks___block_invoke;
  v8[3] = &unk_1E8013B00;
  objc_copyWeak(&v10, &location);
  v7 = v6;
  v9 = v7;
  [v7 preflightWithCompletion:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __94__PKRemoteActionGroupViewController__presentPaymentSetupControllerWithAllowedPaymentNetworks___block_invoke(uint64_t a1, int a2, void *a3)
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
      objc_initWeak(&location, v7);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __94__PKRemoteActionGroupViewController__presentPaymentSetupControllerWithAllowedPaymentNetworks___block_invoke_2;
      v11[3] = &unk_1E80113B0;
      objc_copyWeak(&v13, &location);
      v9 = v8;
      v12 = v9;
      [(PKPaymentSetupNavigationController *)v9 preflightWithCompletion:v11];

      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
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
        v10[2] = __94__PKRemoteActionGroupViewController__presentPaymentSetupControllerWithAllowedPaymentNetworks___block_invoke_3;
        v10[3] = &unk_1E8010970;
        v10[4] = v7;
        [v7 _showGenericErrorAlert:v10];
      }
    }
  }
}

void __94__PKRemoteActionGroupViewController__presentPaymentSetupControllerWithAllowedPaymentNetworks___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _showSpinner:0];
    [v3 presentViewController:*(a1 + 32) animated:1 completion:0];
    WeakRetained = v3;
  }
}

- (void)_presentAddAnotherCardFlowWithTransitNetworkIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
  v6 = [objc_alloc(MEMORY[0x1E69B8D48]) initWithWebService:mEMORY[0x1E69B8EF8]];
  [v6 setRequiredTransitNetworkIdentifiers:identifiersCopy];
  [(PKRemoteActionGroupViewController *)self _showSpinner:1];
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __93__PKRemoteActionGroupViewController__presentAddAnotherCardFlowWithTransitNetworkIdentifiers___block_invoke;
  v8[3] = &unk_1E8013B00;
  objc_copyWeak(&v10, &location);
  v7 = v6;
  v9 = v7;
  [v7 preflightWithCompletion:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __93__PKRemoteActionGroupViewController__presentAddAnotherCardFlowWithTransitNetworkIdentifiers___block_invoke(uint64_t a1, int a2, void *a3)
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
      objc_initWeak(&location, v7);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __93__PKRemoteActionGroupViewController__presentAddAnotherCardFlowWithTransitNetworkIdentifiers___block_invoke_2;
      v11[3] = &unk_1E80113B0;
      objc_copyWeak(&v13, &location);
      v9 = v8;
      v12 = v9;
      [(PKPaymentSetupNavigationController *)v9 preflightWithCompletion:v11];

      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
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
        v10[2] = __93__PKRemoteActionGroupViewController__presentAddAnotherCardFlowWithTransitNetworkIdentifiers___block_invoke_3;
        v10[3] = &unk_1E8010970;
        v10[4] = v7;
        [v7 _showGenericErrorAlert:v10];
      }
    }
  }
}

void __93__PKRemoteActionGroupViewController__presentAddAnotherCardFlowWithTransitNetworkIdentifiers___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _showSpinner:0];
    [v3 presentViewController:*(a1 + 32) animated:1 completion:0];
    WeakRetained = v3;
  }
}

- (BOOL)_canSkipSecondaryScreen
{
  type = [(PKPaymentPassAction *)self->_selectedAction type];
  if (type == 5)
  {
    purchaseNewActionItems = [(PKPaymentPassAction *)self->_selectedAction purchaseNewActionItems];
  }

  else
  {
    if (type != 2)
    {
      return 0;
    }

    purchaseNewActionItems = [(PKPaymentPassAction *)self->_selectedAction selectedActionItems];
  }

  v5 = purchaseNewActionItems;
  v6 = [purchaseNewActionItems count] == 1;

  return v6;
}

- (void)_showGenericErrorAlert:(id)alert
{
  alertCopy = alert;
  v5 = MEMORY[0x1E69DC650];
  v6 = PKLocalizedPaymentString(&cfstr_PassActionUnav_0.isa);
  v7 = PKLocalizedPaymentString(&cfstr_PassActionUnav_1.isa);
  v8 = [v5 alertControllerWithTitle:v6 message:v7 preferredStyle:1];

  v9 = MEMORY[0x1E69DC648];
  v10 = PKLocalizedPaymentString(&cfstr_PassActionUnav.isa);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60__PKRemoteActionGroupViewController__showGenericErrorAlert___block_invoke;
  v13[3] = &unk_1E8011248;
  v14 = alertCopy;
  v11 = alertCopy;
  v12 = [v9 actionWithTitle:v10 style:1 handler:v13];
  [v8 addAction:v12];

  [(PKRemoteActionGroupViewController *)self presentViewController:v8 animated:1 completion:0];
}

uint64_t __60__PKRemoteActionGroupViewController__showGenericErrorAlert___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)performActionViewControllerDidCancel:(id)cancel
{
  [cancel setDelegate:0];
  delegate = [(PKRemoteActionGroupViewController *)self delegate];
  [delegate remoteGroupActionsViewControllerDidCancel:self];
}

- (void)performActionViewControllerDidPerformAction:(id)action
{
  [action setDelegate:0];
  delegate = [(PKRemoteActionGroupViewController *)self delegate];
  [delegate remoteGroupActionsViewControllerDidPerformFetchActionGroup:self];
}

- (void)selectActionGroupActionsViewDidSelectActionGroupAction:(id)action
{
  actionCopy = action;
  objc_storeStrong(&self->_selectedAction, action);
  if ([(PKRemoteActionGroupViewController *)self _canSkipSecondaryScreen])
  {
    [(PKPaymentPassAction *)self->_selectedAction confirmationTitle];
  }

  else
  {
    PKLocalizedPaymentString(&cfstr_Next.isa);
  }
  v5 = ;
  navigationItem = [(PKRemoteActionGroupViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setTitle:v5];
}

- (void)_cancelButtonPressed:(id)pressed
{
  delegate = [(PKRemoteActionGroupViewController *)self delegate];
  [delegate remoteGroupActionsViewControllerDidCancel:self];
}

- (void)setRightBarButtonEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  navigationItem = [(PKRemoteActionGroupViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:enabledCopy];
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
  v3[2] = __78__PKRemoteActionGroupViewController_paymentAuthorizationCoordinatorDidFinish___block_invoke;
  v3[3] = &unk_1E8010970;
  v3[4] = self;
  [finish dismissWithCompletion:v3];
}

void __78__PKRemoteActionGroupViewController_paymentAuthorizationCoordinatorDidFinish___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__PKRemoteActionGroupViewController_paymentAuthorizationCoordinatorDidFinish___block_invoke_2;
  block[3] = &unk_1E8010970;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __78__PKRemoteActionGroupViewController_paymentAuthorizationCoordinatorDidFinish___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 remoteGroupActionsViewControllerDidPerformPayment:*(a1 + 32)];
}

- (id)presentationSceneIdentifierForPaymentAuthorizationCoordinator:(id)coordinator
{
  view = [(PKRemoteActionGroupViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  _sceneIdentifier = [windowScene _sceneIdentifier];

  return _sceneIdentifier;
}

- (PKRemoteActionGroupViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
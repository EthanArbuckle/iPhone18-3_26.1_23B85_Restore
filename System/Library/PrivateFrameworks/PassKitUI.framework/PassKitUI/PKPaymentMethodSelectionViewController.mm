@interface PKPaymentMethodSelectionViewController
- (PKPaymentMethodSelectionViewController)initWithPaymentRequest:(id)request selectedPass:(id)pass paymentMethodName:(id)name paymentMethodIdentifier:(id)identifier allowAppleCashToggle:(BOOL)toggle useAppleCashBalance:(BOOL)balance viewStyle:(int64_t)style delegate:(id)self0;
- (void)_handlePassUpdate:(id)update;
- (void)_openPaymentSetupWithNetworkWhitelist:(id)whitelist completion:(id)completion;
- (void)requestOpenURL:(id)l;
- (void)selectedPass:(id)pass;
- (void)toggledUseAppleCashBalance:(BOOL)balance;
@end

@implementation PKPaymentMethodSelectionViewController

- (PKPaymentMethodSelectionViewController)initWithPaymentRequest:(id)request selectedPass:(id)pass paymentMethodName:(id)name paymentMethodIdentifier:(id)identifier allowAppleCashToggle:(BOOL)toggle useAppleCashBalance:(BOOL)balance viewStyle:(int64_t)style delegate:(id)self0
{
  balanceCopy = balance;
  toggleCopy = toggle;
  requestCopy = request;
  passCopy = pass;
  nameCopy = name;
  identifierCopy = identifier;
  delegateCopy = delegate;
  v40.receiver = self;
  v40.super_class = PKPaymentMethodSelectionViewController;
  v21 = [(PKDynamicCollectionViewController *)&v40 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_paymentRequest, request);
    objc_storeStrong(&v22->_selectedPass, pass);
    objc_storeWeak(&v22->_delegate, delegateCopy);
    navigationItem = [(PKPaymentMethodSelectionViewController *)v22 navigationItem];
    v24 = PKLocalizedPaymentString(&cfstr_AutoReloadPaym.isa);
    [navigationItem setTitle:v24];

    [navigationItem setLargeTitleDisplayMode:2];
    v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (toggleCopy)
    {
      v26 = [[PKPaymentMethodPeerPaymentSectionController alloc] initWithDelegate:v22 request:v22->_paymentRequest useAppleCashBalance:balanceCopy];
      peerPaymentController = v22->_peerPaymentController;
      v22->_peerPaymentController = v26;

      [v25 addObject:v22->_peerPaymentController];
    }

    v28 = [[PKPaymentMethodPassesSectionController alloc] initWithDelegate:v22 request:v22->_paymentRequest selectedPass:v22->_selectedPass];
    passesController = v22->_passesController;
    v22->_passesController = v28;

    [v25 addObject:v22->_passesController];
    if (nameCopy)
    {
      if (identifierCopy)
      {
        mEMORY[0x1E69B8A58] = [MEMORY[0x1E69B8A58] sharedInstance];
        v31 = [mEMORY[0x1E69B8A58] passWithFPANIdentifier:identifierCopy];

        if (!v31)
        {
          v32 = [[PKPaymentMethodRemovedSectionController alloc] initWithPaymentMethodName:nameCopy paymentMethodIdentifier:identifierCopy];
          [v25 addObject:v32];
        }
      }
    }

    v33 = [[PKPaymentMethodActionSectionController alloc] initWithDelegate:v22];
    actionsController = v22->_actionsController;
    v22->_actionsController = v33;

    linkColor = [MEMORY[0x1E69DC888] linkColor];
    if (style == 2)
    {
      PKBridgeButtonTextColor();
    }

    else
    {
      [MEMORY[0x1E69DC888] linkColor];
    }
    v36 = ;

    [(PKPaymentMethodActionSectionController *)v22->_actionsController setLinkTextColor:v36];
    [v25 addObject:v22->_actionsController];
    [(PKDynamicCollectionViewController *)v22 setSections:v25 animated:0];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v22 selector:sel__handlePassUpdate_ name:*MEMORY[0x1E69BBBD8] object:0];
  }

  return v22;
}

- (void)selectedPass:(id)pass
{
  passCopy = pass;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained paymentMethodSelectionViewController:self didSelectPaymentMethod:passCopy];
}

- (void)requestOpenURL:(id)l
{
  v4 = MEMORY[0x1E697A838];
  lCopy = l;
  v6 = [[v4 alloc] initWithURL:lCopy];

  [v6 setModalPresentationStyle:2];
  [(PKPaymentMethodSelectionViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)toggledUseAppleCashBalance:(BOOL)balance
{
  balanceCopy = balance;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained paymentMethodSelectionViewController:self didToggleUseAppleCashBalance:balanceCopy];
}

- (void)_openPaymentSetupWithNetworkWhitelist:(id)whitelist completion:(id)completion
{
  whitelistCopy = whitelist;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v8 = objc_alloc(MEMORY[0x1E69B8D48]);
  mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
  v10 = [v8 initWithWebService:mEMORY[0x1E69B8EF8]];

  [v10 setAllowedPaymentNetworks:whitelistCopy];
  [v10 setAllowedCardTypes:&unk_1F3CC8468];
  v11 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  [v10 setAllowedFeatureIdentifiers:v11];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __91__PKPaymentMethodSelectionViewController__openPaymentSetupWithNetworkWhitelist_completion___block_invoke;
  v14[3] = &unk_1E801AA28;
  objc_copyWeak(&v18, &location);
  v12 = completionCopy;
  v17 = v12;
  v13 = v10;
  v15 = v13;
  selfCopy = self;
  [v13 preflightWithCompletion:v14];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __91__PKPaymentMethodSelectionViewController__openPaymentSetupWithNetworkWhitelist_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __91__PKPaymentMethodSelectionViewController__openPaymentSetupWithNetworkWhitelist_completion___block_invoke_2;
  v9[3] = &unk_1E801AA00;
  objc_copyWeak(&v14, (a1 + 56));
  v15 = a2;
  v10 = v5;
  v13 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v11 = v6;
  v12 = v7;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v9);

  objc_destroyWeak(&v14);
}

void __91__PKPaymentMethodSelectionViewController__openPaymentSetupWithNetworkWhitelist_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    if (*(a1 + 72))
    {
      v3 = [objc_alloc(MEMORY[0x1E69B90E0]) initWithEnvironment:0 provisioningController:*(a1 + 40) groupsController:0];
      v4 = [[PKPaymentSetupDismissibleNavigationController alloc] initWithContext:0];
      [(PKNavigationController *)v4 setCustomFormSheetPresentationStyleForiPad];
      objc_initWeak(&location, *(a1 + 48));
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __91__PKPaymentMethodSelectionViewController__openPaymentSetupWithNetworkWhitelist_completion___block_invoke_3;
      v11[3] = &unk_1E80111F8;
      objc_copyWeak(&v14, &location);
      v5 = v4;
      v12 = v5;
      v13 = *(a1 + 56);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __91__PKPaymentMethodSelectionViewController__openPaymentSetupWithNetworkWhitelist_completion___block_invoke_4;
      v9[3] = &unk_1E8010998;
      objc_copyWeak(&v10, &location);
      [PKProvisioningFlowBridge startProvisionToPurchaseFlowWithNavController:v5 context:v3 onFirstViewControllerShown:v11 completion:v9];
      objc_destroyWeak(&v10);

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }

    else
    {
      v6 = *(a1 + 32);
      if (v6)
      {
        v7 = v6;
      }

      else
      {
        v7 = PKDisplayableErrorForCommonType();
      }

      v3 = v7;
      v5 = [PKPaymentSetupNavigationController viewControllerForPresentingPaymentError:v7];
      v8 = [WeakRetained navigationController];
      [v8 presentViewController:v5 animated:1 completion:*(a1 + 56)];
    }
  }
}

void __91__PKPaymentMethodSelectionViewController__openPaymentSetupWithNetworkWhitelist_completion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained navigationController];
    [v3 presentViewController:*(a1 + 32) animated:1 completion:*(a1 + 40)];

    WeakRetained = v4;
  }
}

void __91__PKPaymentMethodSelectionViewController__openPaymentSetupWithNetworkWhitelist_completion___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained navigationController];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

- (void)_handlePassUpdate:(id)update
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__PKPaymentMethodSelectionViewController__handlePassUpdate___block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

@end
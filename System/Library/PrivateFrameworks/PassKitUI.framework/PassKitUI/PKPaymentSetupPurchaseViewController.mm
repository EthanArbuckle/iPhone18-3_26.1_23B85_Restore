@interface PKPaymentSetupPurchaseViewController
- (BOOL)_isCompactHeight;
- (BOOL)_shouldHideImage;
- (PKPaymentSetupPurchaseViewController)initWithProvisioningController:(id)controller context:(int64_t)context setupDelegate:(id)delegate product:(id)product;
- (PKPaymentSetupPurchaseViewControllerFlowDelegate)flowDelegate;
- (PKPaymentSetupViewControllerDelegate)setupDelegate;
- (id)_rightBarButton;
- (id)_spinnerBarButton;
- (id)presentationSceneIdentifierForPaymentAuthorizationCoordinator:(id)coordinator;
- (void)_createConstraints;
- (void)_createSubviews;
- (void)_rightBarButtonPressed:(id)pressed;
- (void)_showSpinner:(BOOL)spinner;
- (void)_updateBottomHeightConstraint;
- (void)didUpdateAmount:(id)amount isValid:(BOOL)valid;
- (void)paymentAuthorizationCoordinator:(id)coordinator didAuthorizePayment:(id)payment handler:(id)handler;
- (void)paymentAuthorizationCoordinator:(id)coordinator didAuthorizePurchase:(id)purchase completion:(id)completion;
- (void)paymentAuthorizationCoordinatorDidFinish:(id)finish;
- (void)paymentSetupDidFinish:(id)finish;
- (void)preflightWithCompletion:(id)completion;
- (void)showKeyPad;
- (void)transferBalanceFromExistingCard;
- (void)viewController:(id)controller didShowProvisioningError:(id)error;
- (void)viewControllerDidTerminateSetupFlow:(id)flow;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PKPaymentSetupPurchaseViewController

- (PKPaymentSetupPurchaseViewController)initWithProvisioningController:(id)controller context:(int64_t)context setupDelegate:(id)delegate product:(id)product
{
  controllerCopy = controller;
  delegateCopy = delegate;
  productCopy = product;
  v27.receiver = self;
  v27.super_class = PKPaymentSetupPurchaseViewController;
  v14 = [(PKPaymentSetupPurchaseViewController *)&v27 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_product, product);
    objc_storeStrong(&v15->_provisioningController, controller);
    v15->_setupContext = context;
    objc_storeWeak(&v15->_setupDelegate, delegateCopy);
    v16 = [(PKPaymentSetupProduct *)v15->_product provisioningMethodMetadataForType:*MEMORY[0x1E69BC130]];
    provisioningMethodMetadata = v15->_provisioningMethodMetadata;
    v15->_provisioningMethodMetadata = v16;

    zero = [MEMORY[0x1E696AB90] zero];
    currentAmount = v15->_currentAmount;
    v15->_currentAmount = zero;

    v20 = [[PKPaymentSetupPurchaseController alloc] initWithProvisioningController:controllerCopy context:context purchaseControllerDelegate:v15 product:productCopy provisioningMetadata:v15->_provisioningMethodMetadata];
    purchaseController = v15->_purchaseController;
    v15->_purchaseController = v20;

    navigationItem = [(PKPaymentSetupPurchaseViewController *)v15 navigationItem];
    v23 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
    [v23 configureWithTransparentBackground];
    [navigationItem setStandardAppearance:v23];
    [navigationItem setTitle:0];
    _rightBarButton = [(PKPaymentSetupPurchaseViewController *)v15 _rightBarButton];
    [navigationItem setRightBarButtonItem:_rightBarButton];

    v15->_fieldsVerified = 0;
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    [rightBarButtonItem setEnabled:v15->_fieldsVerified];
  }

  return v15;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PKPaymentSetupPurchaseViewController;
  [(PKPaymentSetupPurchaseViewController *)&v5 viewDidLoad];
  view = [(PKPaymentSetupPurchaseViewController *)self view];
  v4 = PKProvisioningBackgroundColor();
  [view setBackgroundColor:v4];

  [(PKPaymentSetupPurchaseViewController *)self _createSubviews];
  [(PKPaymentSetupPurchaseViewController *)self _createConstraints];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = PKPaymentSetupPurchaseViewController;
  [(PKPaymentSetupPurchaseViewController *)&v6 viewWillAppear:appear];
  self->_visibility = 1;
  setupContext = self->_setupContext;
  view = [(PKPaymentSetupPurchaseViewController *)self view];
  PKPaymentSetupApplyContextAppearance(setupContext, view);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PKPaymentSetupPurchaseViewController;
  [(PKPaymentSetupPurchaseViewController *)&v4 viewWillDisappear:disappear];
  self->_visibility = 3;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PKPaymentSetupPurchaseViewController;
  [(PKPaymentSetupPurchaseViewController *)&v4 viewDidDisappear:disappear];
  self->_visibility = 0;
}

- (void)viewDidAppear:(BOOL)appear
{
  v12.receiver = self;
  v12.super_class = PKPaymentSetupPurchaseViewController;
  [(PKPaymentSetupPurchaseViewController *)&v12 viewDidAppear:appear];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportViewAppeared];
  self->_visibility = 2;
  self->_didPurchase = 0;
  [(PKPaymentSetupPurchaseViewController *)self showKeyPad];
  if (([(PKPaymentSetupProduct *)self->_product flags]& 1) != 0)
  {
    v4 = MEMORY[0x1E69DC650];
    v5 = PKLocalizedPaymentString(&cfstr_TransitCardOnl.isa);
    v6 = PKLocalizedPaymentString(&cfstr_TransitCardOnl_0.isa);
    v7 = [v4 alertControllerWithTitle:v5 message:v6 preferredStyle:1];

    v8 = MEMORY[0x1E69DC648];
    v9 = PKLocalizedPaymentString(&cfstr_TransitCardOnl_1.isa);
    v10 = [v8 actionWithTitle:v9 style:0 handler:0];

    [v7 addAction:v10];
    navigationController = [(PKPaymentSetupPurchaseViewController *)self navigationController];
    [navigationController presentViewController:v7 animated:1 completion:0];
  }
}

- (void)preflightWithCompletion:(id)completion
{
  completionCopy = completion;
  product = self->_product;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__PKPaymentSetupPurchaseViewController_preflightWithCompletion___block_invoke;
  v8[3] = &unk_1E8012AF0;
  v8[4] = self;
  v9 = completionCopy;
  v6 = completionCopy;
  v7 = [(PKPaymentSetupProduct *)product digitalCardCachedImage:v8];
}

void __64__PKPaymentSetupPurchaseViewController_preflightWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = v4;
  if (v4)
  {
    *(*(a1 + 32) + 993) = 1;
    [*(a1 + 32) setCardImage:v4];
    v4 = v6;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, 1, v4);
    v4 = v6;
  }
}

- (void)didUpdateAmount:(id)amount isValid:(BOOL)valid
{
  objc_storeStrong(&self->_currentAmount, amount);
  self->_fieldsVerified = valid;
  navigationItem = [(PKPaymentSetupPurchaseViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:self->_fieldsVerified];

  setupContext = self->_setupContext;
  view = [(PKPaymentSetupPurchaseViewController *)self view];
  PKPaymentSetupApplyContextAppearance(setupContext, view);
}

- (void)transferBalanceFromExistingCard
{
  WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);
  [WeakRetained purchaseViewControllerDidRequestTransferBalance:self];
}

- (void)paymentAuthorizationCoordinator:(id)coordinator didAuthorizePayment:(id)payment handler:(id)handler
{
  v5 = MEMORY[0x1E69B8B80];
  handlerCopy = handler;
  v7 = [[v5 alloc] initWithStatus:0 errors:0];
  handlerCopy[2](handlerCopy, v7);
}

- (void)paymentAuthorizationCoordinatorDidFinish:(id)finish
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __81__PKPaymentSetupPurchaseViewController_paymentAuthorizationCoordinatorDidFinish___block_invoke;
  v3[3] = &unk_1E8010970;
  v3[4] = self;
  [finish dismissWithCompletion:v3];
}

void __81__PKPaymentSetupPurchaseViewController_paymentAuthorizationCoordinatorDidFinish___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__PKPaymentSetupPurchaseViewController_paymentAuthorizationCoordinatorDidFinish___block_invoke_2;
  block[3] = &unk_1E8010970;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __81__PKPaymentSetupPurchaseViewController_paymentAuthorizationCoordinatorDidFinish___block_invoke_2(uint64_t a1)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1104);
  *(v2 + 1104) = 0;

  result = *(a1 + 32);
  if (*(result + 1112))
  {
    v5 = *(result + 1024);
    v18 = *MEMORY[0x1E69BA680];
    v19[0] = *MEMORY[0x1E69BA778];
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    [v5 reportEvent:v6];

    v7 = objc_alloc(MEMORY[0x1E69B8780]);
    v8 = *(a1 + 32);
    v9 = *(v8 + 1096);
    v10 = [*(v8 + 1056) currency];
    v11 = [v7 initWithAmount:v9 currency:v10 exponent:0];

    v12 = [objc_alloc(MEMORY[0x1E69B8BE8]) initWithPaymentSetupProduct:*(*(a1 + 32) + 1000) purchase:*(*(a1 + 32) + 1112) balance:v11];
    v13 = *(a1 + 32);
    v14 = *(v13 + 1112);
    *(v13 + 1112) = 0;

    *(*(a1 + 32) + 992) = 1;
    [*(*(a1 + 32) + 1032) resolveRequirementsUsingProvisioningMethodMetadata:*(*(a1 + 32) + 1056)];
    v15 = [v12 state];
    v16 = [*(*(a1 + 32) + 1032) requirementsResponse];
    [v15 setRequirementsResponse:v16];

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1016));
    [WeakRetained purchaseViewController:*(a1 + 32) didPerformPurchaseWithCredential:v12];

    result = *(a1 + 32);
  }

  if ((*(result + 992) & 1) == 0)
  {
    return [result showKeyPad];
  }

  return result;
}

- (id)presentationSceneIdentifierForPaymentAuthorizationCoordinator:(id)coordinator
{
  view = [(PKPaymentSetupPurchaseViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  _sceneIdentifier = [windowScene _sceneIdentifier];

  return _sceneIdentifier;
}

- (void)paymentAuthorizationCoordinator:(id)coordinator didAuthorizePurchase:(id)purchase completion:(id)completion
{
  purchaseCopy = purchase;
  v8 = purchaseCopy;
  if (purchaseCopy)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __104__PKPaymentSetupPurchaseViewController_paymentAuthorizationCoordinator_didAuthorizePurchase_completion___block_invoke;
    v12[3] = &unk_1E8010A10;
    v12[4] = self;
    v13 = purchaseCopy;
    completionCopy = completion;
    dispatch_async(MEMORY[0x1E69E96A0], v12);
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v10 = *(completion + 2);
    completionCopy2 = completion;
    v10();
  }
}

- (void)viewControllerDidTerminateSetupFlow:(id)flow
{
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
  [WeakRetained viewControllerDidTerminateSetupFlow:self];
}

- (void)viewController:(id)controller didShowProvisioningError:(id)error
{
  errorCopy = error;
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportError:errorCopy context:0];
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
  v6 = objc_opt_respondsToSelector();

  v7 = objc_loadWeakRetained(&self->_setupDelegate);
  v8 = v7;
  if (errorCopy && (v6 & 1) != 0)
  {
    [v7 viewController:self didShowProvisioningError:errorCopy];
  }

  else
  {
    [v7 viewControllerDidTerminateSetupFlow:self];
  }
}

- (void)paymentSetupDidFinish:(id)finish
{
  [(PKPaymentSetupPurchaseViewController *)self dismissViewControllerAnimated:1 completion:0];

  [(PKPaymentSetupPurchaseViewController *)self showKeyPad];
}

- (BOOL)_shouldHideImage
{
  if (!PKUIGetMinScreenWidthType())
  {
    return 1;
  }

  return [(PKPaymentSetupPurchaseViewController *)self _isCompactHeight];
}

- (BOOL)_isCompactHeight
{
  traitCollection = [(PKPaymentSetupPurchaseViewController *)self traitCollection];
  v3 = [traitCollection verticalSizeClass] == 1;

  return v3;
}

- (void)_createSubviews
{
  view = [(PKPaymentSetupPurchaseViewController *)self view];
  v3 = [[PKPaymentSetupPurchaseAmountView alloc] initWithProduct:self->_product provisioningMethodMetadata:self->_provisioningMethodMetadata];
  amountView = self->_amountView;
  self->_amountView = v3;

  [(PKPaymentSetupPurchaseAmountView *)self->_amountView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PKPaymentSetupPurchaseAmountView *)self->_amountView setDelegate:self];
  [view addSubview:self->_amountView];
  if (![(PKPaymentSetupPurchaseViewController *)self _shouldHideImage])
  {
    PKUIGetMinScreenWidthType();
    v5 = objc_alloc(MEMORY[0x1E69DCAE0]);
    cardImage = self->_cardImage;
    v7 = cardImage;
    if (!cardImage)
    {
      v7 = PKUIImageNamed(@"PlaceholderCardArt_Large");
    }

    v8 = [v5 initWithImage:v7];
    passView = self->_passView;
    self->_passView = v8;

    if (!cardImage)
    {
    }

    layer = [(UIImageView *)self->_passView layer];
    [layer setShadowRadius:12.0];
    v11 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.15];
    [layer setShadowColor:{objc_msgSend(v11, "CGColor")}];

    [layer setShadowOffset:{0.0, 12.0}];
    LODWORD(v12) = 1.0;
    [layer setShadowOpacity:v12];
    [layer setMasksToBounds:0];
    v13 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.1];
    [v13 CGColor];
    PKPaymentStyleApplyCorners();

    [(UIImageView *)self->_passView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)self->_passView setAccessibilityIgnoresInvertColors:1];
    [view addSubview:self->_passView];
  }

  v14 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v14;

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = self->_titleLabel;
  v17 = PKLocalizedPaymentString(&cfstr_SetupPurchaseS.isa);
  [(UILabel *)v16 setText:v17];

  v18 = _UISolariumFeatureFlagEnabled();
  v19 = self->_titleLabel;
  v20 = MEMORY[0x1E69DDDB0];
  if (v18)
  {
    v20 = MEMORY[0x1E69DDD58];
  }

  v21 = PKFontForDefaultDesign(*v20, *MEMORY[0x1E69DDC38], 2, 0);
  [(UILabel *)v19 setFont:v21];

  [(UILabel *)self->_titleLabel setNumberOfLines:0];
  [(UILabel *)self->_titleLabel setTextAlignment:1];
  [(UILabel *)self->_titleLabel setLineBreakMode:4];
  [view addSubview:self->_titleLabel];
}

- (void)_createConstraints
{
  v53 = *MEMORY[0x1E69E9840];
  view = [(PKPaymentSetupPurchaseViewController *)self view];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v42 = view;
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  passView = self->_passView;
  v40 = v4;
  if (passView)
  {
    v8 = PKUIGetMinScreenWidthType();
    v9 = dbl_1BE1148E0[v8 == 0];
    v10 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_passView attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:{dbl_1BE1148D0[v8 == 0], v4}];
    v11 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_passView attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v9];
    [v4 addObject:v11];
    [v4 addObject:v10];
    v12 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_passView attribute:9 relatedBy:0 toItem:safeAreaLayoutGuide attribute:9 multiplier:1.0 constant:0.0];
    [v5 addObject:v12];

    v13 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_passView attribute:3 relatedBy:0 toItem:safeAreaLayoutGuide attribute:15 multiplier:1.0 constant:0.0];
    [v5 addObject:v13];

    passView = self->_passView;
  }

  titleLabel = self->_titleLabel;
  v15 = MEMORY[0x1E696ACD8];
  if (passView)
  {
    v16 = passView;
  }

  else
  {
    v16 = safeAreaLayoutGuide;
  }

  if (passView)
  {
    v17 = 4;
  }

  else
  {
    v17 = 15;
  }

  _isCompactHeight = [(PKPaymentSetupPurchaseViewController *)self _isCompactHeight];
  v19 = 8.0;
  if (!_isCompactHeight)
  {
    v19 = 12.0;
  }

  v20 = [v15 constraintWithItem:titleLabel attribute:3 relatedBy:0 toItem:v16 attribute:v17 multiplier:1.0 constant:v19];
  [v5 addObject:v20];

  v21 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_titleLabel attribute:5 relatedBy:0 toItem:safeAreaLayoutGuide attribute:17 multiplier:1.0 constant:0.0];
  [v5 addObject:v21];

  v22 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_titleLabel attribute:6 relatedBy:0 toItem:safeAreaLayoutGuide attribute:18 multiplier:1.0 constant:0.0];
  [v5 addObject:v22];

  v23 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_amountView attribute:3 relatedBy:0 toItem:self->_titleLabel attribute:11 multiplier:1.0 constant:0.0];
  [v5 addObject:v23];

  v24 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_amountView attribute:4 relatedBy:0 toItem:safeAreaLayoutGuide attribute:4 multiplier:1.0 constant:0.0];
  amountViewBottomHeightConstraint = self->_amountViewBottomHeightConstraint;
  self->_amountViewBottomHeightConstraint = v24;

  [(PKPaymentSetupPurchaseViewController *)self _updateBottomHeightConstraint];
  [v5 addObject:self->_amountViewBottomHeightConstraint];
  v26 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_amountView attribute:5 relatedBy:0 toItem:safeAreaLayoutGuide attribute:17 multiplier:1.0 constant:0.0];
  [v5 addObject:v26];

  v27 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_amountView attribute:6 relatedBy:0 toItem:safeAreaLayoutGuide attribute:18 multiplier:1.0 constant:0.0];
  [v5 addObject:v27];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v28 = v41;
  v29 = [v28 countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v29)
  {
    v31 = v29;
    v32 = *v48;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v48 != v32)
        {
          objc_enumerationMutation(v28);
        }

        LODWORD(v30) = 1148846080;
        [*(*(&v47 + 1) + 8 * i) setPriority:v30];
      }

      v31 = [v28 countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v31);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v34 = v5;
  v35 = [v34 countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v35)
  {
    v37 = v35;
    v38 = *v44;
    do
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v44 != v38)
        {
          objc_enumerationMutation(v34);
        }

        LODWORD(v36) = 1144750080;
        [*(*(&v43 + 1) + 8 * j) setPriority:v36];
      }

      v37 = [v34 countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v37);
  }

  [MEMORY[0x1E696ACD8] activateConstraints:v28];
  [MEMORY[0x1E696ACD8] activateConstraints:v34];
}

- (id)_rightBarButton
{
  v3 = PKLocalizedPaymentString(&cfstr_SetupPurchaseA.isa);
  v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v3 style:2 target:self action:sel__rightBarButtonPressed_];

  return v4;
}

- (id)_spinnerBarButton
{
  if (!self->_activityIndicator)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    activityIndicator = self->_activityIndicator;
    self->_activityIndicator = v3;

    PKPaymentSetupApplyContextAppearance([(PKPaymentSetupPurchaseViewController *)self setupContext], self->_activityIndicator);
  }

  v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:self->_activityIndicator];

  return v5;
}

- (void)showKeyPad
{
  amountTextField = [(PKPaymentSetupPurchaseAmountView *)self->_amountView amountTextField];
  [amountTextField becomeFirstResponder];
}

- (void)_showSpinner:(BOOL)spinner
{
  spinnerCopy = spinner;
  navigationItem = [(PKPaymentSetupPurchaseViewController *)self navigationItem];
  if (spinnerCopy)
  {
    _spinnerBarButton = [(PKPaymentSetupPurchaseViewController *)self _spinnerBarButton];
    [navigationItem setRightBarButtonItem:_spinnerBarButton];

    [(UIActivityIndicatorView *)self->_activityIndicator startAnimating];
  }

  else
  {
    _rightBarButton = [(PKPaymentSetupPurchaseViewController *)self _rightBarButton];
    [navigationItem setRightBarButtonItem:_rightBarButton];

    [(UIActivityIndicatorView *)self->_activityIndicator stopAnimating];
  }
}

- (void)_rightBarButtonPressed:(id)pressed
{
  if (self->_fieldsVerified)
  {
    v12 = v3;
    v13 = v4;
    [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportButtonPressed:0];
    amountTextField = [(PKPaymentSetupPurchaseAmountView *)self->_amountView amountTextField];
    [amountTextField resignFirstResponder];

    v7 = [(PKPaymentSetupPurchaseController *)self->_purchaseController paymentRequestForAmount:self->_currentAmount];
    mEMORY[0x1E69B8A58] = [MEMORY[0x1E69B8A58] sharedInstance];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __63__PKPaymentSetupPurchaseViewController__rightBarButtonPressed___block_invoke;
    v10[3] = &unk_1E8012D08;
    v10[4] = self;
    v11 = v7;
    v9 = v7;
    [mEMORY[0x1E69B8A58] canPresentPaymentRequest:v9 completion:v10];
  }
}

void __63__PKPaymentSetupPurchaseViewController__rightBarButtonPressed___block_invoke(uint64_t a1, uint64_t a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__PKPaymentSetupPurchaseViewController__rightBarButtonPressed___block_invoke_2;
  block[3] = &unk_1E8012C50;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = v3;
  v6 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_updateBottomHeightConstraint
{
  [(PKPaymentSetupPurchaseAmountView *)self->_amountView defaultKeyboardSize];
  v4 = v3;
  amountViewBottomHeightConstraint = self->_amountViewBottomHeightConstraint;
  +[PKNumberPadSuggestionsView defaultSize];

  [(NSLayoutConstraint *)amountViewBottomHeightConstraint setConstant:-(v4 + v6)];
}

- (PKPaymentSetupPurchaseViewControllerFlowDelegate)flowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);

  return WeakRetained;
}

- (PKPaymentSetupViewControllerDelegate)setupDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);

  return WeakRetained;
}

@end
@interface PKPaymentSetupChooseProductTypeViewController
- (PKPaymentSetupChooseProductTypeViewController)initWithProvisioningController:(id)controller context:(int64_t)context setupDelegate:(id)delegate product:(id)product;
- (PKPaymentSetupChooseProductTypeViewControllerFlowDelegate)flowDelegate;
- (id)presentationSceneIdentifierForPaymentAuthorizationCoordinator:(id)coordinator;
- (void)didSelectPKPaymentSetupChooseProductListItem:(id)item;
- (void)paymentAuthorizationCoordinator:(id)coordinator didAuthorizePayment:(id)payment handler:(id)handler;
- (void)paymentAuthorizationCoordinator:(id)coordinator didAuthorizePurchase:(id)purchase completion:(id)completion;
- (void)paymentAuthorizationCoordinatorDidFinish:(id)finish;
- (void)preflightWithCompletion:(id)completion;
- (void)viewControllerDidTerminateSetupFlow:(id)flow;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation PKPaymentSetupChooseProductTypeViewController

- (PKPaymentSetupChooseProductTypeViewController)initWithProvisioningController:(id)controller context:(int64_t)context setupDelegate:(id)delegate product:(id)product
{
  controllerCopy = controller;
  delegateCopy = delegate;
  productCopy = product;
  v36.receiver = self;
  v36.super_class = PKPaymentSetupChooseProductTypeViewController;
  v14 = [(PKDynamicCollectionViewController *)&v36 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_product, product);
    objc_storeStrong(&v15->_provisioningController, controller);
    v15->_setupContext = context;
    objc_storeStrong(&v15->_setupDelegate, delegate);
    v16 = [(PKPaymentSetupProduct *)v15->_product provisioningMethodMetadataForType:*MEMORY[0x1E69BC130]];
    provisioningMethodMetadata = v15->_provisioningMethodMetadata;
    v15->_provisioningMethodMetadata = v16;

    v18 = PKUIImageNamed(@"PlaceholderCardArt_Large");
    cardImage = v15->_cardImage;
    v15->_cardImage = v18;

    navigationItem = [(PKPaymentSetupChooseProductTypeViewController *)v15 navigationItem];
    v21 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
    [v21 configureWithOpaqueBackground];
    [navigationItem setStandardAppearance:v21];
    [navigationItem setTitle:0];
    navigationController = [(PKPaymentSetupChooseProductTypeViewController *)v15 navigationController];
    navigationBar = [navigationController navigationBar];

    [navigationBar frame];
    v24 = v23;
    v25 = v23 + v23;
    v26 = [[PKAnimatedNavigationBarTitleView alloc] initWithFrame:0.0, 0.0, v23 + v23, v23];
    titleIconView = v15->_titleIconView;
    v15->_titleIconView = v26;

    v28 = v15->_titleIconView;
    systemCyanColor = [MEMORY[0x1E69DC888] systemCyanColor];
    [(PKAnimatedNavigationBarTitleView *)v28 setBackgroundColor:systemCyanColor];

    [(PKAnimatedNavigationBarTitleView *)v15->_titleIconView setAlpha:1.0];
    [navigationItem pkui_setCenterAlignedTitleView:v15->_titleIconView];
    v30 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    passView = v15->_passView;
    v15->_passView = v30;

    v32 = v15->_passView;
    systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
    [(UIImageView *)v32 setBackgroundColor:systemRedColor];

    [(UIImageView *)v15->_passView setFrame:0.0, 0.0, v25, v24];
    [(UIImageView *)v15->_passView setAlpha:1.0];
    [(PKAnimatedNavigationBarTitleView *)v15->_titleIconView setTitleView:v15->_passView animated:1];
    [(PKDynamicCollectionViewController *)v15 setUseItemIdentityWhenUpdating:1];
  }

  return v15;
}

- (void)viewDidLoad
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = PKPaymentSetupChooseProductTypeViewController;
  [(PKDynamicCollectionViewController *)&v9 viewDidLoad];
  v3 = [PKPaymentSetupChooseProductListSectionController alloc];
  cardImage = self->_cardImage;
  digitalIssuanceMetadata = [(PKPaymentProvisioningMethodMetadata *)self->_provisioningMethodMetadata digitalIssuanceMetadata];
  v6 = [(PKPaymentSetupChooseProductListSectionController *)v3 initWithImage:cardImage digitalIssuanceMetadata:digitalIssuanceMetadata];
  listSectionController = self->_listSectionController;
  self->_listSectionController = v6;

  [(PKPaymentSetupChooseProductListSectionController *)self->_listSectionController setDelegate:self];
  v10[0] = self->_listSectionController;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  [(PKDynamicCollectionViewController *)self setSections:v8 animated:1];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKPaymentSetupChooseProductTypeViewController;
  [(PKDynamicCollectionViewController *)&v4 viewDidAppear:appear];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportViewAppeared];
}

- (void)preflightWithCompletion:(id)completion
{
  completionCopy = completion;
  product = self->_product;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__PKPaymentSetupChooseProductTypeViewController_preflightWithCompletion___block_invoke;
  v8[3] = &unk_1E8012AF0;
  v8[4] = self;
  v9 = completionCopy;
  v6 = completionCopy;
  v7 = [(PKPaymentSetupProduct *)product digitalCardCachedImage:v8];
}

void __73__PKPaymentSetupChooseProductTypeViewController_preflightWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  if (v7)
  {
    *(*(a1 + 32) + 1072) = 1;
    objc_storeStrong((*(a1 + 32) + 1136), a3);
    [*(*(a1 + 32) + 1120) setImage:*(*(a1 + 32) + 1136)];
    [*(*(a1 + 32) + 1168) setCardImage:*(*(a1 + 32) + 1136)];
    v5 = [*(a1 + 32) view];
    [v5 layoutSubviews];
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 1);
  }
}

- (void)didSelectPKPaymentSetupChooseProductListItem:(id)item
{
  itemCopy = item;
  identifier = [itemCopy identifier];
  selectedItemIdentifier = self->_selectedItemIdentifier;
  self->_selectedItemIdentifier = identifier;

  type = [itemCopy type];
  if (type == 1)
  {
    digitalIssuanceMetadata = [(PKPaymentProvisioningMethodMetadata *)self->_provisioningMethodMetadata digitalIssuanceMetadata];
    serviceProviderProducts = [digitalIssuanceMetadata serviceProviderProducts];
    WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);
    [WeakRetained chooseProductTypeViewController:self didSelectServiceProducts:serviceProviderProducts];
  }

  else
  {
    digitalIssuanceMetadata = objc_loadWeakRetained(&self->_flowDelegate);
    [digitalIssuanceMetadata chooseProductTypeViewControllerDidSelectManualEntry:self];
  }
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
  v3[2] = __90__PKPaymentSetupChooseProductTypeViewController_paymentAuthorizationCoordinatorDidFinish___block_invoke;
  v3[3] = &unk_1E8010970;
  v3[4] = self;
  [finish dismissWithCompletion:v3];
}

void __90__PKPaymentSetupChooseProductTypeViewController_paymentAuthorizationCoordinatorDidFinish___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__PKPaymentSetupChooseProductTypeViewController_paymentAuthorizationCoordinatorDidFinish___block_invoke_2;
  block[3] = &unk_1E8010970;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __90__PKPaymentSetupChooseProductTypeViewController_paymentAuthorizationCoordinatorDidFinish___block_invoke_2(uint64_t a1)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1200);
  *(v2 + 1200) = 0;

  v4 = *(a1 + 32);
  if (*(v4 + 1208))
  {
    v5 = *(v4 + 1240);
    v20 = *MEMORY[0x1E69BA680];
    v21[0] = *MEMORY[0x1E69BA778];
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    [v5 reportEvent:v6];

    v7 = objc_alloc(MEMORY[0x1E69B8BE8]);
    v8 = *(a1 + 32);
    v9 = *(v8 + 1216);
    v10 = *(v8 + 1208);
    v11 = *(v8 + 1184);
    v12 = *(v8 + 1192);
    v13 = [*(v8 + 1112) currency];
    v14 = [v7 initWithPaymentSetupProduct:v9 purchase:v10 serviceProviderProduct:v11 item:v12 currency:v13];

    v15 = *(a1 + 32);
    v16 = *(v15 + 1208);
    *(v15 + 1208) = 0;

    [*(*(a1 + 32) + 1088) resolveRequirementsUsingProvisioningMethodMetadata:*(*(a1 + 32) + 1112)];
    v17 = [v14 state];
    v18 = [*(*(a1 + 32) + 1088) requirementsResponse];
    [v17 setRequirementsResponse:v18];

    [*(a1 + 32) _showSpinner:0];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1232));
    [WeakRetained chooseProductTypeViewController:*(a1 + 32) didPerformPurchaseWithCredential:v14];
  }
}

- (id)presentationSceneIdentifierForPaymentAuthorizationCoordinator:(id)coordinator
{
  view = [(PKPaymentSetupChooseProductTypeViewController *)self view];
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
    v12[2] = __113__PKPaymentSetupChooseProductTypeViewController_paymentAuthorizationCoordinator_didAuthorizePurchase_completion___block_invoke;
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
  WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_flowDelegate);
    [v6 chooseProductTypeViewControllerDidTerminate:self];
  }

  else
  {
    setupDelegate = self->_setupDelegate;

    [(PKPaymentSetupViewControllerDelegate *)setupDelegate viewControllerDidTerminateSetupFlow:self];
  }
}

- (PKPaymentSetupChooseProductTypeViewControllerFlowDelegate)flowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);

  return WeakRetained;
}

@end
@interface PKPaymentSetupChooseProductTypeViewController
- (PKPaymentSetupChooseProductTypeViewController)initWithProvisioningController:(id)a3 context:(int64_t)a4 setupDelegate:(id)a5 product:(id)a6;
- (PKPaymentSetupChooseProductTypeViewControllerFlowDelegate)flowDelegate;
- (id)presentationSceneIdentifierForPaymentAuthorizationCoordinator:(id)a3;
- (void)didSelectPKPaymentSetupChooseProductListItem:(id)a3;
- (void)paymentAuthorizationCoordinator:(id)a3 didAuthorizePayment:(id)a4 handler:(id)a5;
- (void)paymentAuthorizationCoordinator:(id)a3 didAuthorizePurchase:(id)a4 completion:(id)a5;
- (void)paymentAuthorizationCoordinatorDidFinish:(id)a3;
- (void)preflightWithCompletion:(id)a3;
- (void)viewControllerDidTerminateSetupFlow:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation PKPaymentSetupChooseProductTypeViewController

- (PKPaymentSetupChooseProductTypeViewController)initWithProvisioningController:(id)a3 context:(int64_t)a4 setupDelegate:(id)a5 product:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v36.receiver = self;
  v36.super_class = PKPaymentSetupChooseProductTypeViewController;
  v14 = [(PKDynamicCollectionViewController *)&v36 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_product, a6);
    objc_storeStrong(&v15->_provisioningController, a3);
    v15->_setupContext = a4;
    objc_storeStrong(&v15->_setupDelegate, a5);
    v16 = [(PKPaymentSetupProduct *)v15->_product provisioningMethodMetadataForType:*MEMORY[0x1E69BC130]];
    provisioningMethodMetadata = v15->_provisioningMethodMetadata;
    v15->_provisioningMethodMetadata = v16;

    v18 = PKUIImageNamed(@"PlaceholderCardArt_Large");
    cardImage = v15->_cardImage;
    v15->_cardImage = v18;

    v20 = [(PKPaymentSetupChooseProductTypeViewController *)v15 navigationItem];
    v21 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
    [v21 configureWithOpaqueBackground];
    [v20 setStandardAppearance:v21];
    [v20 setTitle:0];
    v22 = [(PKPaymentSetupChooseProductTypeViewController *)v15 navigationController];
    v35 = [v22 navigationBar];

    [v35 frame];
    v24 = v23;
    v25 = v23 + v23;
    v26 = [[PKAnimatedNavigationBarTitleView alloc] initWithFrame:0.0, 0.0, v23 + v23, v23];
    titleIconView = v15->_titleIconView;
    v15->_titleIconView = v26;

    v28 = v15->_titleIconView;
    v29 = [MEMORY[0x1E69DC888] systemCyanColor];
    [(PKAnimatedNavigationBarTitleView *)v28 setBackgroundColor:v29];

    [(PKAnimatedNavigationBarTitleView *)v15->_titleIconView setAlpha:1.0];
    [v20 pkui_setCenterAlignedTitleView:v15->_titleIconView];
    v30 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    passView = v15->_passView;
    v15->_passView = v30;

    v32 = v15->_passView;
    v33 = [MEMORY[0x1E69DC888] systemRedColor];
    [(UIImageView *)v32 setBackgroundColor:v33];

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
  v5 = [(PKPaymentProvisioningMethodMetadata *)self->_provisioningMethodMetadata digitalIssuanceMetadata];
  v6 = [(PKPaymentSetupChooseProductListSectionController *)v3 initWithImage:cardImage digitalIssuanceMetadata:v5];
  listSectionController = self->_listSectionController;
  self->_listSectionController = v6;

  [(PKPaymentSetupChooseProductListSectionController *)self->_listSectionController setDelegate:self];
  v10[0] = self->_listSectionController;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  [(PKDynamicCollectionViewController *)self setSections:v8 animated:1];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKPaymentSetupChooseProductTypeViewController;
  [(PKDynamicCollectionViewController *)&v4 viewDidAppear:a3];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportViewAppeared];
}

- (void)preflightWithCompletion:(id)a3
{
  v4 = a3;
  product = self->_product;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__PKPaymentSetupChooseProductTypeViewController_preflightWithCompletion___block_invoke;
  v8[3] = &unk_1E8012AF0;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
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

- (void)didSelectPKPaymentSetupChooseProductListItem:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  selectedItemIdentifier = self->_selectedItemIdentifier;
  self->_selectedItemIdentifier = v5;

  v7 = [v4 type];
  if (v7 == 1)
  {
    v10 = [(PKPaymentProvisioningMethodMetadata *)self->_provisioningMethodMetadata digitalIssuanceMetadata];
    v8 = [v10 serviceProviderProducts];
    WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);
    [WeakRetained chooseProductTypeViewController:self didSelectServiceProducts:v8];
  }

  else
  {
    v10 = objc_loadWeakRetained(&self->_flowDelegate);
    [v10 chooseProductTypeViewControllerDidSelectManualEntry:self];
  }
}

- (void)paymentAuthorizationCoordinator:(id)a3 didAuthorizePayment:(id)a4 handler:(id)a5
{
  v5 = MEMORY[0x1E69B8B80];
  v6 = a5;
  v7 = [[v5 alloc] initWithStatus:0 errors:0];
  v6[2](v6, v7);
}

- (void)paymentAuthorizationCoordinatorDidFinish:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __90__PKPaymentSetupChooseProductTypeViewController_paymentAuthorizationCoordinatorDidFinish___block_invoke;
  v3[3] = &unk_1E8010970;
  v3[4] = self;
  [a3 dismissWithCompletion:v3];
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

- (id)presentationSceneIdentifierForPaymentAuthorizationCoordinator:(id)a3
{
  v3 = [(PKPaymentSetupChooseProductTypeViewController *)self view];
  v4 = [v3 window];
  v5 = [v4 windowScene];
  v6 = [v5 _sceneIdentifier];

  return v6;
}

- (void)paymentAuthorizationCoordinator:(id)a3 didAuthorizePurchase:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __113__PKPaymentSetupChooseProductTypeViewController_paymentAuthorizationCoordinator_didAuthorizePurchase_completion___block_invoke;
    v12[3] = &unk_1E8010A10;
    v12[4] = self;
    v13 = v7;
    v9 = a5;
    dispatch_async(MEMORY[0x1E69E96A0], v12);
    v9[2](v9, 0);
  }

  else
  {
    v10 = *(a5 + 2);
    v11 = a5;
    v10();
  }
}

- (void)viewControllerDidTerminateSetupFlow:(id)a3
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
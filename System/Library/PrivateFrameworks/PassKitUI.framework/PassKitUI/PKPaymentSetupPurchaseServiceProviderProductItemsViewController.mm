@interface PKPaymentSetupPurchaseServiceProviderProductItemsViewController
- (PKPaymentSetupPurchaseServiceProviderProductItemsViewController)initWithProvisioningController:(id)a3 context:(int64_t)a4 product:(id)a5 serviceProviderProduct:(id)a6;
- (PKPaymentSetupPurchaseServiceProviderProductItemsViewControllerFlowDelegate)flowDelegate;
- (id)_initWithProvisioningController:(id)a3 context:(int64_t)a4 product:(id)a5 primaryServiceProviderProduct:(id)a6 serviceProviderProductWithItems:(id)a7 showOtherProviders:(BOOL)a8;
- (id)_rightBarButton;
- (id)presentationSceneIdentifierForPaymentAuthorizationCoordinator:(id)a3;
- (void)_rightBarButtonPressed:(id)a3;
- (void)_setHeroCardImage:(id)a3;
- (void)didSelectOtherProviders;
- (void)didSelectServiceProviderItem:(id)a3;
- (void)paymentAuthorizationCoordinator:(id)a3 didAuthorizePayment:(id)a4 handler:(id)a5;
- (void)paymentAuthorizationCoordinator:(id)a3 didAuthorizePurchase:(id)a4 completion:(id)a5;
- (void)paymentAuthorizationCoordinatorDidFinish:(id)a3;
- (void)preflightWithCompletion:(id)a3;
- (void)showLoadingUI:(BOOL)a3 animated:(BOOL)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation PKPaymentSetupPurchaseServiceProviderProductItemsViewController

- (PKPaymentSetupPurchaseServiceProviderProductItemsViewController)initWithProvisioningController:(id)a3 context:(int64_t)a4 product:(id)a5 serviceProviderProduct:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [v10 items];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __137__PKPaymentSetupPurchaseServiceProviderProductItemsViewController_initWithProvisioningController_context_product_serviceProviderProduct___block_invoke;
  v18[3] = &unk_1E8022250;
  v19 = v10;
  v14 = v10;
  v15 = [v13 pk_arrayByApplyingBlock:v18];

  v16 = [(PKPaymentSetupPurchaseServiceProviderProductItemsViewController *)self _initWithProvisioningController:v12 context:a4 product:v11 primaryServiceProviderProduct:v14 serviceProviderProductWithItems:v15 showOtherProviders:0];
  return v16;
}

PKPaymentSetupServiceProviderProductWithItem *__137__PKPaymentSetupPurchaseServiceProviderProductItemsViewController_initWithProvisioningController_context_product_serviceProviderProduct___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PKPaymentSetupServiceProviderProductWithItem alloc] initWithServiceProviderProduct:*(a1 + 32) item:v3];

  return v4;
}

- (id)_initWithProvisioningController:(id)a3 context:(int64_t)a4 product:(id)a5 primaryServiceProviderProduct:(id)a6 serviceProviderProductWithItems:(id)a7 showOtherProviders:(BOOL)a8
{
  v8 = a8;
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v38.receiver = self;
  v38.super_class = PKPaymentSetupPurchaseServiceProviderProductItemsViewController;
  v19 = [(PKPaymentSetupOptionsViewController *)&v38 initWithContext:a4];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_provisioningController, a3);
    objc_storeStrong(&v20->_product, a5);
    v20->_hasSelectedItems = 0;
    objc_storeStrong(&v20->_primaryServiceProviderProduct, a6);
    [(PKDynamicCollectionViewController *)v20 setUseItemIdentityWhenUpdating:1];
    v21 = [(PKPaymentSetupProduct *)v20->_product provisioningMethodMetadataForType:*MEMORY[0x1E69BC130]];
    provisioningMethodMetadata = v20->_provisioningMethodMetadata;
    v20->_provisioningMethodMetadata = v21;

    v23 = [[PKPaymentSetupPurchaseController alloc] initWithProvisioningController:v15 context:a4 purchaseControllerDelegate:v20 product:v16 provisioningMetadata:v20->_provisioningMethodMetadata];
    purchaseController = v20->_purchaseController;
    v20->_purchaseController = v23;

    v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v26 = [PKPaymentServiceProviderItemsSectionController alloc];
    v27 = [(PKPaymentProvisioningMethodMetadata *)v20->_provisioningMethodMetadata currency];
    v28 = [(PKPaymentServiceProviderItemsSectionController *)v26 initWithIdentifier:@"ServiceProviderItems" serviceProviderProductWithItems:v18 currency:v27 delegate:v20];
    listSectionController = v20->_listSectionController;
    v20->_listSectionController = v28;

    [v25 addObject:v20->_listSectionController];
    if (v8)
    {
      v30 = [[PKPaymentSetupProductProvidersViewController alloc] initWithProduct:v20->_product showOtherProviders:1 context:a4];
      productProvidersViewController = v20->_productProvidersViewController;
      v20->_productProvidersViewController = v30;

      v32 = [[PKPaymentServiceProviderItemsSectionController alloc] initWithIdentifier:@"OtherProvidersItem" showOtherProviders:1 delegate:v20];
      otherProviderSectionController = v20->_otherProviderSectionController;
      v20->_otherProviderSectionController = v32;

      [v25 addObject:v20->_otherProviderSectionController];
    }

    v34 = [v25 copy];
    [(PKPaymentSetupOptionsViewController *)v20 setSections:v34 animated:0];

    v35 = [(PKPaymentSetupPurchaseServiceProviderProductItemsViewController *)v20 navigationItem];
    v36 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
    [v36 configureWithDefaultBackground];
    [v35 setStandardAppearance:v36];
  }

  return v20;
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = PKPaymentSetupPurchaseServiceProviderProductItemsViewController;
  [(PKPaymentSetupOptionsViewController *)&v11 viewDidLoad];
  [(PKDynamicCollectionViewController *)self setRetainCellSelectionCellOnReload:1];
  primaryServiceProviderProduct = self->_primaryServiceProviderProduct;
  if (primaryServiceProviderProduct)
  {
    v4 = [(PKDigitalIssuanceServiceProviderProduct *)primaryServiceProviderProduct localizedDisplayName];
    [(PKPaymentSetupOptionsViewController *)self setTitleText:v4];

    [(PKDigitalIssuanceServiceProviderProduct *)self->_primaryServiceProviderProduct localizedDescription];
  }

  else
  {
    v5 = PKLocalizedPaymentString(&cfstr_DciCommutePlan.isa);
    [(PKPaymentSetupOptionsViewController *)self setTitleText:v5];

    PKLocalizedPaymentString(&cfstr_DciCommutePlan_0.isa);
  }
  v6 = ;
  [(PKPaymentSetupOptionsViewController *)self setSubtitleText:v6];

  v7 = PKUIImageNamed(@"PlaceholderCardArt_Large");
  [(PKPaymentSetupPurchaseServiceProviderProductItemsViewController *)self _setHeroCardImage:v7];

  v8 = [(PKPaymentSetupPurchaseServiceProviderProductItemsViewController *)self navigationItem];
  v9 = [(PKPaymentSetupPurchaseServiceProviderProductItemsViewController *)self _rightBarButton];
  [v8 setRightBarButtonItem:v9];

  v10 = [v8 rightBarButtonItem];
  [v10 setEnabled:self->_hasSelectedItems];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKPaymentSetupPurchaseServiceProviderProductItemsViewController;
  [(PKPaymentSetupOptionsViewController *)&v4 viewDidAppear:a3];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportViewAppeared];
}

- (void)preflightWithCompletion:(id)a3
{
  v4 = a3;
  product = self->_product;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __91__PKPaymentSetupPurchaseServiceProviderProductItemsViewController_preflightWithCompletion___block_invoke;
  v8[3] = &unk_1E8012AF0;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  v7 = [(PKPaymentSetupProduct *)product digitalCardCachedImage:v8];
}

void __91__PKPaymentSetupPurchaseServiceProviderProductItemsViewController_preflightWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = v4;
  if (v4)
  {
    [*(a1 + 32) _setHeroCardImage:v4];
    v4 = v6;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, 1, v4);
    v4 = v6;
  }
}

- (id)_rightBarButton
{
  v3 = PKLocalizedPaymentString(&cfstr_SetupPurchaseA_0.isa);
  v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v3 style:2 target:self action:sel__rightBarButtonPressed_];

  return v4;
}

- (void)_rightBarButtonPressed:(id)a3
{
  if (self->_hasSelectedItems)
  {
    v15 = v3;
    v16 = v4;
    [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportButtonPressed:0];
    purchaseController = self->_purchaseController;
    product = self->_product;
    v8 = [(PKPaymentSetupServiceProviderProductWithItem *)self->_selectedItemPair serviceProviderProduct];
    v9 = [(PKPaymentSetupServiceProviderProductWithItem *)self->_selectedItemPair item];
    v10 = [(PKPaymentSetupPurchaseController *)purchaseController paymentRequestForProduct:product serviceProviderProduct:v8 productItem:v9];

    v11 = [MEMORY[0x1E69B8A58] sharedInstance];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __90__PKPaymentSetupPurchaseServiceProviderProductItemsViewController__rightBarButtonPressed___block_invoke;
    v13[3] = &unk_1E8012D08;
    v13[4] = self;
    v14 = v10;
    v12 = v10;
    [v11 canPresentPaymentRequest:v12 completion:v13];
  }
}

void __90__PKPaymentSetupPurchaseServiceProviderProductItemsViewController__rightBarButtonPressed___block_invoke(uint64_t a1, uint64_t a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__PKPaymentSetupPurchaseServiceProviderProductItemsViewController__rightBarButtonPressed___block_invoke_2;
  block[3] = &unk_1E8012C50;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = v3;
  v6 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_setHeroCardImage:(id)a3
{
  v6 = a3;
  v4 = [(PKPaymentSetupOptionsViewController *)self headerView];
  v5 = [v4 topArtView];
  if (!v5)
  {
    v5 = [[PKHeroCardExplanationHeaderView alloc] initWithImage:0];
    [(PKHeroCardExplanationHeaderView *)v5 setPadding:0];
    [(PKHeroCardExplanationHeaderView *)v5 setSize:0];
    [(PKHeroCardExplanationHeaderView *)v5 setHideBackground:1];
    [(PKHeroCardExplanationHeaderView *)v5 setHideShadow:1];
    [v4 setTopArtView:v5];
  }

  [(PKHeroCardExplanationHeaderView *)v5 setCardImage:v6];
}

- (void)didSelectServiceProviderItem:(id)a3
{
  v4 = a3;
  self->_hasSelectedItems = 1;
  v5 = [(PKPaymentSetupPurchaseServiceProviderProductItemsViewController *)self navigationItem];
  v6 = [v5 rightBarButtonItem];
  [v6 setEnabled:1];

  selectedItemPair = self->_selectedItemPair;
  self->_selectedItemPair = v4;
}

- (void)didSelectOtherProviders
{
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportOtherButtonPressed:*MEMORY[0x1E69BB5F8]];
  WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);
  [WeakRetained purchaseServiceProviderProductItemsViewControllerDidSelectOtherProviders:self];

  self->_hasSelectedItems = 0;
  selectedItemPair = self->_selectedItemPair;
  self->_selectedItemPair = 0;

  [(PKPaymentServiceProviderItemsSectionController *)self->_listSectionController deselectAllItems];
  v6 = [(PKPaymentSetupPurchaseServiceProviderProductItemsViewController *)self navigationItem];
  v5 = [v6 rightBarButtonItem];
  [v5 setEnabled:0];
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
  v3[2] = __108__PKPaymentSetupPurchaseServiceProviderProductItemsViewController_paymentAuthorizationCoordinatorDidFinish___block_invoke;
  v3[3] = &unk_1E8010970;
  v3[4] = self;
  [a3 dismissWithCompletion:v3];
}

void __108__PKPaymentSetupPurchaseServiceProviderProductItemsViewController_paymentAuthorizationCoordinatorDidFinish___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __108__PKPaymentSetupPurchaseServiceProviderProductItemsViewController_paymentAuthorizationCoordinatorDidFinish___block_invoke_2;
  block[3] = &unk_1E8010970;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __108__PKPaymentSetupPurchaseServiceProviderProductItemsViewController_paymentAuthorizationCoordinatorDidFinish___block_invoke_2(uint64_t a1)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (*(v1 + 1360))
  {
    v3 = *(v1 + 1392);
    v18 = *MEMORY[0x1E69BA680];
    v19[0] = *MEMORY[0x1E69BA778];
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    [v3 reportEvent:v4];

    v5 = objc_alloc(MEMORY[0x1E69B8BE8]);
    v6 = *(a1 + 32);
    v7 = *(v6 + 1368);
    v8 = *(v6 + 1360);
    v9 = [*(v6 + 1352) serviceProviderProduct];
    v10 = [*(*(a1 + 32) + 1352) item];
    v11 = [*(*(a1 + 32) + 1304) currency];
    v12 = [v5 initWithPaymentSetupProduct:v7 purchase:v8 serviceProviderProduct:v9 item:v10 currency:v11];

    v13 = *(a1 + 32);
    v14 = *(v13 + 1360);
    *(v13 + 1360) = 0;

    [*(*(a1 + 32) + 1296) resolveRequirementsUsingProvisioningMethodMetadata:*(*(a1 + 32) + 1304)];
    v15 = [v12 state];
    v16 = [*(*(a1 + 32) + 1296) requirementsResponse];
    [v15 setRequirementsResponse:v16];

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1384));
    [WeakRetained purchaseServiceProviderProductItemsViewController:*(a1 + 32) didPerformPurchaseWithCredential:v12];
  }
}

- (id)presentationSceneIdentifierForPaymentAuthorizationCoordinator:(id)a3
{
  v3 = [(PKPaymentSetupPurchaseServiceProviderProductItemsViewController *)self view];
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
    v12[2] = __131__PKPaymentSetupPurchaseServiceProviderProductItemsViewController_paymentAuthorizationCoordinator_didAuthorizePurchase_completion___block_invoke;
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

- (void)showLoadingUI:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(PKDynamicCollectionViewController *)self collectionView];
  [v7 setUserInteractionEnabled:!v5];

  if (!v5)
  {
    otherProviderSectionController = self->_otherProviderSectionController;

    [(PKPaymentServiceProviderItemsSectionController *)otherProviderSectionController hideLoadingIndicatorsAnimated:v4];
  }
}

- (PKPaymentSetupPurchaseServiceProviderProductItemsViewControllerFlowDelegate)flowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);

  return WeakRetained;
}

@end
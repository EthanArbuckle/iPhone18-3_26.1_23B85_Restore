@interface PKPaymentSetupPurchaseServiceProviderProductItemsViewController
- (PKPaymentSetupPurchaseServiceProviderProductItemsViewController)initWithProvisioningController:(id)controller context:(int64_t)context product:(id)product serviceProviderProduct:(id)providerProduct;
- (PKPaymentSetupPurchaseServiceProviderProductItemsViewControllerFlowDelegate)flowDelegate;
- (id)_initWithProvisioningController:(id)controller context:(int64_t)context product:(id)product primaryServiceProviderProduct:(id)providerProduct serviceProviderProductWithItems:(id)items showOtherProviders:(BOOL)providers;
- (id)_rightBarButton;
- (id)presentationSceneIdentifierForPaymentAuthorizationCoordinator:(id)coordinator;
- (void)_rightBarButtonPressed:(id)pressed;
- (void)_setHeroCardImage:(id)image;
- (void)didSelectOtherProviders;
- (void)didSelectServiceProviderItem:(id)item;
- (void)paymentAuthorizationCoordinator:(id)coordinator didAuthorizePayment:(id)payment handler:(id)handler;
- (void)paymentAuthorizationCoordinator:(id)coordinator didAuthorizePurchase:(id)purchase completion:(id)completion;
- (void)paymentAuthorizationCoordinatorDidFinish:(id)finish;
- (void)preflightWithCompletion:(id)completion;
- (void)showLoadingUI:(BOOL)i animated:(BOOL)animated;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation PKPaymentSetupPurchaseServiceProviderProductItemsViewController

- (PKPaymentSetupPurchaseServiceProviderProductItemsViewController)initWithProvisioningController:(id)controller context:(int64_t)context product:(id)product serviceProviderProduct:(id)providerProduct
{
  providerProductCopy = providerProduct;
  productCopy = product;
  controllerCopy = controller;
  items = [providerProductCopy items];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __137__PKPaymentSetupPurchaseServiceProviderProductItemsViewController_initWithProvisioningController_context_product_serviceProviderProduct___block_invoke;
  v18[3] = &unk_1E8022250;
  v19 = providerProductCopy;
  v14 = providerProductCopy;
  v15 = [items pk_arrayByApplyingBlock:v18];

  v16 = [(PKPaymentSetupPurchaseServiceProviderProductItemsViewController *)self _initWithProvisioningController:controllerCopy context:context product:productCopy primaryServiceProviderProduct:v14 serviceProviderProductWithItems:v15 showOtherProviders:0];
  return v16;
}

PKPaymentSetupServiceProviderProductWithItem *__137__PKPaymentSetupPurchaseServiceProviderProductItemsViewController_initWithProvisioningController_context_product_serviceProviderProduct___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PKPaymentSetupServiceProviderProductWithItem alloc] initWithServiceProviderProduct:*(a1 + 32) item:v3];

  return v4;
}

- (id)_initWithProvisioningController:(id)controller context:(int64_t)context product:(id)product primaryServiceProviderProduct:(id)providerProduct serviceProviderProductWithItems:(id)items showOtherProviders:(BOOL)providers
{
  providersCopy = providers;
  controllerCopy = controller;
  productCopy = product;
  providerProductCopy = providerProduct;
  itemsCopy = items;
  v38.receiver = self;
  v38.super_class = PKPaymentSetupPurchaseServiceProviderProductItemsViewController;
  v19 = [(PKPaymentSetupOptionsViewController *)&v38 initWithContext:context];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_provisioningController, controller);
    objc_storeStrong(&v20->_product, product);
    v20->_hasSelectedItems = 0;
    objc_storeStrong(&v20->_primaryServiceProviderProduct, providerProduct);
    [(PKDynamicCollectionViewController *)v20 setUseItemIdentityWhenUpdating:1];
    v21 = [(PKPaymentSetupProduct *)v20->_product provisioningMethodMetadataForType:*MEMORY[0x1E69BC130]];
    provisioningMethodMetadata = v20->_provisioningMethodMetadata;
    v20->_provisioningMethodMetadata = v21;

    v23 = [[PKPaymentSetupPurchaseController alloc] initWithProvisioningController:controllerCopy context:context purchaseControllerDelegate:v20 product:productCopy provisioningMetadata:v20->_provisioningMethodMetadata];
    purchaseController = v20->_purchaseController;
    v20->_purchaseController = v23;

    v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v26 = [PKPaymentServiceProviderItemsSectionController alloc];
    currency = [(PKPaymentProvisioningMethodMetadata *)v20->_provisioningMethodMetadata currency];
    v28 = [(PKPaymentServiceProviderItemsSectionController *)v26 initWithIdentifier:@"ServiceProviderItems" serviceProviderProductWithItems:itemsCopy currency:currency delegate:v20];
    listSectionController = v20->_listSectionController;
    v20->_listSectionController = v28;

    [v25 addObject:v20->_listSectionController];
    if (providersCopy)
    {
      v30 = [[PKPaymentSetupProductProvidersViewController alloc] initWithProduct:v20->_product showOtherProviders:1 context:context];
      productProvidersViewController = v20->_productProvidersViewController;
      v20->_productProvidersViewController = v30;

      v32 = [[PKPaymentServiceProviderItemsSectionController alloc] initWithIdentifier:@"OtherProvidersItem" showOtherProviders:1 delegate:v20];
      otherProviderSectionController = v20->_otherProviderSectionController;
      v20->_otherProviderSectionController = v32;

      [v25 addObject:v20->_otherProviderSectionController];
    }

    v34 = [v25 copy];
    [(PKPaymentSetupOptionsViewController *)v20 setSections:v34 animated:0];

    navigationItem = [(PKPaymentSetupPurchaseServiceProviderProductItemsViewController *)v20 navigationItem];
    v36 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
    [v36 configureWithDefaultBackground];
    [navigationItem setStandardAppearance:v36];
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
    localizedDisplayName = [(PKDigitalIssuanceServiceProviderProduct *)primaryServiceProviderProduct localizedDisplayName];
    [(PKPaymentSetupOptionsViewController *)self setTitleText:localizedDisplayName];

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

  navigationItem = [(PKPaymentSetupPurchaseServiceProviderProductItemsViewController *)self navigationItem];
  _rightBarButton = [(PKPaymentSetupPurchaseServiceProviderProductItemsViewController *)self _rightBarButton];
  [navigationItem setRightBarButtonItem:_rightBarButton];

  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:self->_hasSelectedItems];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKPaymentSetupPurchaseServiceProviderProductItemsViewController;
  [(PKPaymentSetupOptionsViewController *)&v4 viewDidAppear:appear];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportViewAppeared];
}

- (void)preflightWithCompletion:(id)completion
{
  completionCopy = completion;
  product = self->_product;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __91__PKPaymentSetupPurchaseServiceProviderProductItemsViewController_preflightWithCompletion___block_invoke;
  v8[3] = &unk_1E8012AF0;
  v8[4] = self;
  v9 = completionCopy;
  v6 = completionCopy;
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

- (void)_rightBarButtonPressed:(id)pressed
{
  if (self->_hasSelectedItems)
  {
    v15 = v3;
    v16 = v4;
    [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportButtonPressed:0];
    purchaseController = self->_purchaseController;
    product = self->_product;
    serviceProviderProduct = [(PKPaymentSetupServiceProviderProductWithItem *)self->_selectedItemPair serviceProviderProduct];
    item = [(PKPaymentSetupServiceProviderProductWithItem *)self->_selectedItemPair item];
    v10 = [(PKPaymentSetupPurchaseController *)purchaseController paymentRequestForProduct:product serviceProviderProduct:serviceProviderProduct productItem:item];

    mEMORY[0x1E69B8A58] = [MEMORY[0x1E69B8A58] sharedInstance];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __90__PKPaymentSetupPurchaseServiceProviderProductItemsViewController__rightBarButtonPressed___block_invoke;
    v13[3] = &unk_1E8012D08;
    v13[4] = self;
    v14 = v10;
    v12 = v10;
    [mEMORY[0x1E69B8A58] canPresentPaymentRequest:v12 completion:v13];
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

- (void)_setHeroCardImage:(id)image
{
  imageCopy = image;
  headerView = [(PKPaymentSetupOptionsViewController *)self headerView];
  topArtView = [headerView topArtView];
  if (!topArtView)
  {
    topArtView = [[PKHeroCardExplanationHeaderView alloc] initWithImage:0];
    [(PKHeroCardExplanationHeaderView *)topArtView setPadding:0];
    [(PKHeroCardExplanationHeaderView *)topArtView setSize:0];
    [(PKHeroCardExplanationHeaderView *)topArtView setHideBackground:1];
    [(PKHeroCardExplanationHeaderView *)topArtView setHideShadow:1];
    [headerView setTopArtView:topArtView];
  }

  [(PKHeroCardExplanationHeaderView *)topArtView setCardImage:imageCopy];
}

- (void)didSelectServiceProviderItem:(id)item
{
  itemCopy = item;
  self->_hasSelectedItems = 1;
  navigationItem = [(PKPaymentSetupPurchaseServiceProviderProductItemsViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:1];

  selectedItemPair = self->_selectedItemPair;
  self->_selectedItemPair = itemCopy;
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
  navigationItem = [(PKPaymentSetupPurchaseServiceProviderProductItemsViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:0];
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
  v3[2] = __108__PKPaymentSetupPurchaseServiceProviderProductItemsViewController_paymentAuthorizationCoordinatorDidFinish___block_invoke;
  v3[3] = &unk_1E8010970;
  v3[4] = self;
  [finish dismissWithCompletion:v3];
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

- (id)presentationSceneIdentifierForPaymentAuthorizationCoordinator:(id)coordinator
{
  view = [(PKPaymentSetupPurchaseServiceProviderProductItemsViewController *)self view];
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
    v12[2] = __131__PKPaymentSetupPurchaseServiceProviderProductItemsViewController_paymentAuthorizationCoordinator_didAuthorizePurchase_completion___block_invoke;
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

- (void)showLoadingUI:(BOOL)i animated:(BOOL)animated
{
  animatedCopy = animated;
  iCopy = i;
  collectionView = [(PKDynamicCollectionViewController *)self collectionView];
  [collectionView setUserInteractionEnabled:!iCopy];

  if (!iCopy)
  {
    otherProviderSectionController = self->_otherProviderSectionController;

    [(PKPaymentServiceProviderItemsSectionController *)otherProviderSectionController hideLoadingIndicatorsAnimated:animatedCopy];
  }
}

- (PKPaymentSetupPurchaseServiceProviderProductItemsViewControllerFlowDelegate)flowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);

  return WeakRetained;
}

@end
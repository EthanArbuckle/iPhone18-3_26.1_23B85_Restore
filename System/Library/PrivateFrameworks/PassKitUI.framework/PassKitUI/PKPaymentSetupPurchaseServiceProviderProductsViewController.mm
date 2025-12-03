@interface PKPaymentSetupPurchaseServiceProviderProductsViewController
- (PKPaymentSetupPurchaseServiceProviderProductsViewController)initWithProvisioningController:(id)controller context:(int64_t)context setupDelegate:(id)delegate product:(id)product;
- (PKPaymentSetupPurchaseServiceProviderProductsViewControllerFlowDelegate)flowDelegate;
- (void)_setHeroCardImage:(id)image;
- (void)didSelectServiceProviderProduct:(id)product;
- (void)preflightWithCompletion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation PKPaymentSetupPurchaseServiceProviderProductsViewController

- (PKPaymentSetupPurchaseServiceProviderProductsViewController)initWithProvisioningController:(id)controller context:(int64_t)context setupDelegate:(id)delegate product:(id)product
{
  v25[1] = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  productCopy = product;
  v24.receiver = self;
  v24.super_class = PKPaymentSetupPurchaseServiceProviderProductsViewController;
  v12 = [(PKPaymentSetupOptionsViewController *)&v24 initWithContext:context];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_product, product);
    objc_storeStrong(&v13->_setupDelegate, delegate);
    v14 = [(PKPaymentSetupProduct *)v13->_product provisioningMethodMetadataForType:*MEMORY[0x1E69BC130]];
    provisioningMethodMetadata = v13->_provisioningMethodMetadata;
    v13->_provisioningMethodMetadata = v14;

    [(PKDynamicCollectionViewController *)v13 setUseItemIdentityWhenUpdating:1];
    digitalIssuanceMetadata = [(PKPaymentProvisioningMethodMetadata *)v13->_provisioningMethodMetadata digitalIssuanceMetadata];
    serviceProviderProducts = [digitalIssuanceMetadata serviceProviderProducts];

    v18 = [[PKPaymentServiceProviderProductsListSectionController alloc] initWithIdentifier:@"ServiceProviderProducts" serviceProviderProducts:serviceProviderProducts];
    listSectionController = v13->_listSectionController;
    v13->_listSectionController = v18;

    [(PKPaymentServiceProviderProductsListSectionController *)v13->_listSectionController setDelegate:v13];
    v25[0] = v13->_listSectionController;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
    [(PKPaymentSetupOptionsViewController *)v13 setSections:v20 animated:0];

    navigationItem = [(PKPaymentSetupPurchaseServiceProviderProductsViewController *)v13 navigationItem];
    v22 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
    [v22 configureWithDefaultBackground];
    [navigationItem setStandardAppearance:v22];
  }

  return v13;
}

- (void)didSelectServiceProviderProduct:(id)product
{
  v12[2] = *MEMORY[0x1E69E9840];
  reporter = self->_reporter;
  v5 = *MEMORY[0x1E69BA680];
  v12[0] = *MEMORY[0x1E69BA7A0];
  v6 = *MEMORY[0x1E69BA2D8];
  v11[0] = v5;
  v11[1] = v6;
  productCopy = product;
  identifier = [productCopy identifier];
  v12[1] = identifier;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  [(PKProvisioningAnalyticsSessionUIReporter *)reporter reportEvent:v9];

  WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);
  [WeakRetained purchaseServiceProviderProductsViewController:self didSelectServiceProviderProduct:productCopy];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PKPaymentSetupPurchaseServiceProviderProductsViewController;
  [(PKPaymentSetupOptionsViewController *)&v5 viewDidLoad];
  v3 = PKLocalizedPaymentString(&cfstr_DciCommutePlan.isa);
  [(PKPaymentSetupOptionsViewController *)self setTitleText:v3];

  v4 = PKLocalizedPaymentString(&cfstr_DciCommutePlan_0.isa);
  [(PKPaymentSetupOptionsViewController *)self setSubtitleText:v4];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKPaymentSetupPurchaseServiceProviderProductsViewController;
  [(PKPaymentSetupOptionsViewController *)&v4 viewDidAppear:appear];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportViewAppeared];
}

- (void)preflightWithCompletion:(id)completion
{
  completionCopy = completion;
  product = self->_product;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __87__PKPaymentSetupPurchaseServiceProviderProductsViewController_preflightWithCompletion___block_invoke;
  v8[3] = &unk_1E8012AF0;
  v8[4] = self;
  v9 = completionCopy;
  v6 = completionCopy;
  v7 = [(PKPaymentSetupProduct *)product digitalCardCachedImage:v8];
}

void __87__PKPaymentSetupPurchaseServiceProviderProductsViewController_preflightWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
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

- (PKPaymentSetupPurchaseServiceProviderProductsViewControllerFlowDelegate)flowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);

  return WeakRetained;
}

@end
@interface PKPaymentSetupPurchaseServiceProviderProductsViewController
- (PKPaymentSetupPurchaseServiceProviderProductsViewController)initWithProvisioningController:(id)a3 context:(int64_t)a4 setupDelegate:(id)a5 product:(id)a6;
- (PKPaymentSetupPurchaseServiceProviderProductsViewControllerFlowDelegate)flowDelegate;
- (void)_setHeroCardImage:(id)a3;
- (void)didSelectServiceProviderProduct:(id)a3;
- (void)preflightWithCompletion:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation PKPaymentSetupPurchaseServiceProviderProductsViewController

- (PKPaymentSetupPurchaseServiceProviderProductsViewController)initWithProvisioningController:(id)a3 context:(int64_t)a4 setupDelegate:(id)a5 product:(id)a6
{
  v25[1] = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a6;
  v24.receiver = self;
  v24.super_class = PKPaymentSetupPurchaseServiceProviderProductsViewController;
  v12 = [(PKPaymentSetupOptionsViewController *)&v24 initWithContext:a4];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_product, a6);
    objc_storeStrong(&v13->_setupDelegate, a5);
    v14 = [(PKPaymentSetupProduct *)v13->_product provisioningMethodMetadataForType:*MEMORY[0x1E69BC130]];
    provisioningMethodMetadata = v13->_provisioningMethodMetadata;
    v13->_provisioningMethodMetadata = v14;

    [(PKDynamicCollectionViewController *)v13 setUseItemIdentityWhenUpdating:1];
    v16 = [(PKPaymentProvisioningMethodMetadata *)v13->_provisioningMethodMetadata digitalIssuanceMetadata];
    v17 = [v16 serviceProviderProducts];

    v18 = [[PKPaymentServiceProviderProductsListSectionController alloc] initWithIdentifier:@"ServiceProviderProducts" serviceProviderProducts:v17];
    listSectionController = v13->_listSectionController;
    v13->_listSectionController = v18;

    [(PKPaymentServiceProviderProductsListSectionController *)v13->_listSectionController setDelegate:v13];
    v25[0] = v13->_listSectionController;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
    [(PKPaymentSetupOptionsViewController *)v13 setSections:v20 animated:0];

    v21 = [(PKPaymentSetupPurchaseServiceProviderProductsViewController *)v13 navigationItem];
    v22 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
    [v22 configureWithDefaultBackground];
    [v21 setStandardAppearance:v22];
  }

  return v13;
}

- (void)didSelectServiceProviderProduct:(id)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  reporter = self->_reporter;
  v5 = *MEMORY[0x1E69BA680];
  v12[0] = *MEMORY[0x1E69BA7A0];
  v6 = *MEMORY[0x1E69BA2D8];
  v11[0] = v5;
  v11[1] = v6;
  v7 = a3;
  v8 = [v7 identifier];
  v12[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  [(PKProvisioningAnalyticsSessionUIReporter *)reporter reportEvent:v9];

  WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);
  [WeakRetained purchaseServiceProviderProductsViewController:self didSelectServiceProviderProduct:v7];
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

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKPaymentSetupPurchaseServiceProviderProductsViewController;
  [(PKPaymentSetupOptionsViewController *)&v4 viewDidAppear:a3];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportViewAppeared];
}

- (void)preflightWithCompletion:(id)a3
{
  v4 = a3;
  product = self->_product;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __87__PKPaymentSetupPurchaseServiceProviderProductsViewController_preflightWithCompletion___block_invoke;
  v8[3] = &unk_1E8012AF0;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
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

- (PKPaymentSetupPurchaseServiceProviderProductsViewControllerFlowDelegate)flowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);

  return WeakRetained;
}

@end
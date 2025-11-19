@interface PKPaymentSetupProductsViewController
- (BOOL)didSelectProduct:(id)a3 completion:(id)a4;
- (PKPaymentSetupProductsViewController)initWithProvisioningController:(id)a3 context:(int64_t)a4 delegate:(id)a5 category:(id)a6 paymentSetupProducts:(id)a7;
- (PKPaymentSetupProductsViewControllerFlowDelegate)flowDelegate;
- (void)_didSelectAddADifferentCardWithCompletion:(id)a3;
- (void)dealloc;
- (void)displayNoResultsViewWithSubtitle:(id)a3 needsManualEntryButton:(BOOL)a4;
- (void)provisioningControllerUpdatedProducts:(id)a3;
- (void)reloadSectionsRequired;
- (void)searchBarCancelButtonClicked;
- (void)searchTextDidChangeTo:(id)a3;
- (void)showLoadingUI:(BOOL)a3 animated:(BOOL)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation PKPaymentSetupProductsViewController

- (PKPaymentSetupProductsViewController)initWithProvisioningController:(id)a3 context:(int64_t)a4 delegate:(id)a5 category:(id)a6 paymentSetupProducts:(id)a7
{
  v11 = a3;
  v12 = a6;
  v13 = a7;
  v17.receiver = self;
  v17.super_class = PKPaymentSetupProductsViewController;
  v14 = [(PKPaymentSetupOptionsViewController *)&v17 initWithContext:0];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_provisioningController, a3);
    objc_storeStrong(&v15->_category, a6);
    objc_storeStrong(&v15->_paymentSetupProducts, a7);
    [v11 addDelegate:v15];
    [(PKDynamicCollectionViewController *)v15 setUseItemIdentityWhenUpdating:1];
  }

  return v15;
}

- (void)dealloc
{
  [(PKPaymentProvisioningController *)self->_provisioningController removeDelegate:self];
  v3.receiver = self;
  v3.super_class = PKPaymentSetupProductsViewController;
  [(PKPaymentSetupProductsViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = PKPaymentSetupProductsViewController;
  [(PKPaymentSetupOptionsViewController *)&v10 viewDidLoad];
  [(PKDynamicCollectionViewController *)self setRetainCellSelectionCellOnReload:1];
  v3 = [(PKPaymentSetupProductCategory *)self->_category localizedTitle];
  [(PKPaymentSetupOptionsViewController *)self setTitleText:v3];

  category = self->_category;
  [(PKPaymentSetupOptionsViewController *)self context];
  v5 = [(PKPaymentSetupProductCategory *)category localizedSubtitleWithIsBridge:PKPaymentSetupContextIsBridge()];
  [(PKPaymentSetupOptionsViewController *)self setSubtitleText:v5];

  [(PKPaymentSetupOptionsViewController *)self setShowSearchBar:[(NSArray *)self->_paymentSetupProducts count]> 6];
  v6 = [(PKPaymentSetupProductCategory *)self->_category localizedSearchBarDefaultText];
  [(PKPaymentSetupOptionsViewController *)self setSearchBarDefaultText:v6];

  v7 = [[PKPaymentSetupProductsSectionController alloc] initWithProvisoningController:self->_provisioningController];
  primaryProductSectionController = self->_primaryProductSectionController;
  self->_primaryProductSectionController = v7;

  [(PKPaymentSetupProductsSectionController *)self->_primaryProductSectionController setDelegate:self];
  [(PKPaymentSetupProductsSectionController *)self->_primaryProductSectionController updateWithPaymentSetupProducts:self->_paymentSetupProducts];
  v11[0] = self->_primaryProductSectionController;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [(PKPaymentSetupOptionsViewController *)self setSections:v9 animated:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v14.receiver = self;
  v14.super_class = PKPaymentSetupProductsViewController;
  [(PKPaymentSetupOptionsViewController *)&v14 viewDidAppear:a3];
  v4 = &OBJC_IVAR___PKPaymentSetupProductsViewController__category;
  v5 = [(PKPaymentSetupProductCategory *)self->_category identifier];
  v6 = PKPaymentSetupProductTypeFromString();

  reporter = self->_reporter;
  if (v6 <= 0xC)
  {
    v4 = **(&unk_1E801D818 + v6);
  }

  [(PKProvisioningAnalyticsSessionUIReporter *)reporter setProductType:v4 subtype:0];

  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v6 == 12)
  {
    v9 = [(NSArray *)self->_paymentSetupProducts pk_arrayBySafelyApplyingBlock:&__block_literal_global_172];
    v10 = [v9 componentsJoinedByString:{@", "}];
    v11 = v10;
    v12 = &stru_1F3BD7330;
    if (v10)
    {
      v12 = v10;
    }

    v13 = v12;

    [v8 setObject:v13 forKeyedSubscript:*MEMORY[0x1E69BAA30]];
  }

  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportViewAppearedWithContext:v8];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKPaymentSetupProductsViewController;
  [(PKPaymentSetupProductsViewController *)&v4 viewDidDisappear:a3];
  if ([(PKPaymentSetupProductsViewController *)self isMovingFromParentViewController])
  {
    [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter resetProductTypes];
  }
}

- (void)provisioningControllerUpdatedProducts:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = [(PKPaymentProvisioningController *)self->_provisioningController paymentSetupProductModel];
  v5 = [(NSArray *)self->_paymentSetupProducts valueForKey:@"productIdentifier"];
  v6 = [v4 productsForProductIdentifiers:v5];
  paymentSetupProducts = self->_paymentSetupProducts;
  self->_paymentSetupProducts = v6;

  [(PKPaymentSetupProductsSectionController *)self->_primaryProductSectionController updateWithPaymentSetupProducts:self->_paymentSetupProducts];
  v9[0] = self->_primaryProductSectionController;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  [(PKPaymentSetupOptionsViewController *)self setSections:v8 animated:1];
}

- (void)searchTextDidChangeTo:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPaymentSetupProductsViewController;
  v4 = a3;
  [(PKPaymentSetupOptionsViewController *)&v5 searchTextDidChangeTo:v4];
  [(PKPaymentSetupProductsSectionController *)self->_primaryProductSectionController applySearchString:v4, v5.receiver, v5.super_class];
}

- (void)searchBarCancelButtonClicked
{
  v3.receiver = self;
  v3.super_class = PKPaymentSetupProductsViewController;
  [(PKPaymentSetupOptionsViewController *)&v3 searchBarCancelButtonClicked];
  [(PKPaymentSetupProductsSectionController *)self->_primaryProductSectionController applySearchString:0];
}

- (void)displayNoResultsViewWithSubtitle:(id)a3 needsManualEntryButton:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(PKPaymentSetupOptionsViewController *)self setShowNoResultsView:1 animated:1];
  [(PKPaymentSetupOptionsViewController *)self setNoResultsSubtitle:v6];

  if (v4)
  {
    v7 = PKLocalizedPaymentString(&cfstr_AddANewCard.isa);
    [(PKPaymentSetupOptionsViewController *)self setNoResultsActionButtonTitle:v7 target:self action:sel__didSelectAddADifferentCard];
  }
}

- (BOOL)didSelectProduct:(id)a3 completion:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  currentlyLoadingProduct = self->_currentlyLoadingProduct;
  if (currentlyLoadingProduct)
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(PKPaymentSetupProduct *)currentlyLoadingProduct productIdentifier];
      v12 = [v7 productIdentifier];
      v16 = 138412546;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "Already loading product for: %@ cannot select: %@", &v16, 0x16u);
    }

    if (v8)
    {
      v8[2](v8, 0);
    }
  }

  else
  {
    objc_storeStrong(&self->_currentlyLoadingProduct, a3);
    WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);
    [WeakRetained productsViewController:self didSelectProduct:v7];

    [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter setSetupProduct:v7];
    v14 = self->_currentlyLoadingProduct;
    self->_currentlyLoadingProduct = 0;

    if (v8)
    {
      v8[2](v8, 1);
    }
  }

  return currentlyLoadingProduct == 0;
}

- (void)reloadSectionsRequired
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = self->_primaryProductSectionController;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  [(PKPaymentSetupOptionsViewController *)self setSections:v3 animated:1];
}

- (void)_didSelectAddADifferentCardWithCompletion:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);
  [WeakRetained productsViewControllerDidSelectManualEntry:self];

  v5 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, 1);
    v5 = v6;
  }
}

- (void)showLoadingUI:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(PKDynamicCollectionViewController *)self collectionView];
  [v7 setUserInteractionEnabled:v5 ^ 1];

  v8 = [(PKPaymentSetupProductsViewController *)self navigationController];
  v9 = [v8 view];
  [v9 setUserInteractionEnabled:v5 ^ 1];

  v10 = [(PKPaymentSetupProductsViewController *)self navigationItem];
  [v10 setHidesBackButton:v5];

  if (!v5)
  {
    [(PKPaymentSetupProductsSectionController *)self->_primaryProductSectionController hideLoadingIndicatorsAnimated:v4];
    v15 = [(PKPaymentSetupProductsViewController *)self navigationController];
    v11 = [v15 viewControllers];
    v12 = [v11 lastObject];
    v13 = v12;
    if (v12 == self)
    {
      v14 = [(PKPaymentSetupProductsViewController *)self presentedViewController];

      if (!v14)
      {

        [(PKDynamicCollectionViewController *)self deselectCells];
      }
    }

    else
    {
    }
  }
}

- (PKPaymentSetupProductsViewControllerFlowDelegate)flowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);

  return WeakRetained;
}

@end
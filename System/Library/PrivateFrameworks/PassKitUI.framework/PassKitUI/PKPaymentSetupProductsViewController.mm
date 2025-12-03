@interface PKPaymentSetupProductsViewController
- (BOOL)didSelectProduct:(id)product completion:(id)completion;
- (PKPaymentSetupProductsViewController)initWithProvisioningController:(id)controller context:(int64_t)context delegate:(id)delegate category:(id)category paymentSetupProducts:(id)products;
- (PKPaymentSetupProductsViewControllerFlowDelegate)flowDelegate;
- (void)_didSelectAddADifferentCardWithCompletion:(id)completion;
- (void)dealloc;
- (void)displayNoResultsViewWithSubtitle:(id)subtitle needsManualEntryButton:(BOOL)button;
- (void)provisioningControllerUpdatedProducts:(id)products;
- (void)reloadSectionsRequired;
- (void)searchBarCancelButtonClicked;
- (void)searchTextDidChangeTo:(id)to;
- (void)showLoadingUI:(BOOL)i animated:(BOOL)animated;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation PKPaymentSetupProductsViewController

- (PKPaymentSetupProductsViewController)initWithProvisioningController:(id)controller context:(int64_t)context delegate:(id)delegate category:(id)category paymentSetupProducts:(id)products
{
  controllerCopy = controller;
  categoryCopy = category;
  productsCopy = products;
  v17.receiver = self;
  v17.super_class = PKPaymentSetupProductsViewController;
  v14 = [(PKPaymentSetupOptionsViewController *)&v17 initWithContext:0];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_provisioningController, controller);
    objc_storeStrong(&v15->_category, category);
    objc_storeStrong(&v15->_paymentSetupProducts, products);
    [controllerCopy addDelegate:v15];
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
  localizedTitle = [(PKPaymentSetupProductCategory *)self->_category localizedTitle];
  [(PKPaymentSetupOptionsViewController *)self setTitleText:localizedTitle];

  category = self->_category;
  [(PKPaymentSetupOptionsViewController *)self context];
  v5 = [(PKPaymentSetupProductCategory *)category localizedSubtitleWithIsBridge:PKPaymentSetupContextIsBridge()];
  [(PKPaymentSetupOptionsViewController *)self setSubtitleText:v5];

  [(PKPaymentSetupOptionsViewController *)self setShowSearchBar:[(NSArray *)self->_paymentSetupProducts count]> 6];
  localizedSearchBarDefaultText = [(PKPaymentSetupProductCategory *)self->_category localizedSearchBarDefaultText];
  [(PKPaymentSetupOptionsViewController *)self setSearchBarDefaultText:localizedSearchBarDefaultText];

  v7 = [[PKPaymentSetupProductsSectionController alloc] initWithProvisoningController:self->_provisioningController];
  primaryProductSectionController = self->_primaryProductSectionController;
  self->_primaryProductSectionController = v7;

  [(PKPaymentSetupProductsSectionController *)self->_primaryProductSectionController setDelegate:self];
  [(PKPaymentSetupProductsSectionController *)self->_primaryProductSectionController updateWithPaymentSetupProducts:self->_paymentSetupProducts];
  v11[0] = self->_primaryProductSectionController;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [(PKPaymentSetupOptionsViewController *)self setSections:v9 animated:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v14.receiver = self;
  v14.super_class = PKPaymentSetupProductsViewController;
  [(PKPaymentSetupOptionsViewController *)&v14 viewDidAppear:appear];
  v4 = &OBJC_IVAR___PKPaymentSetupProductsViewController__category;
  identifier = [(PKPaymentSetupProductCategory *)self->_category identifier];
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

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PKPaymentSetupProductsViewController;
  [(PKPaymentSetupProductsViewController *)&v4 viewDidDisappear:disappear];
  if ([(PKPaymentSetupProductsViewController *)self isMovingFromParentViewController])
  {
    [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter resetProductTypes];
  }
}

- (void)provisioningControllerUpdatedProducts:(id)products
{
  v9[1] = *MEMORY[0x1E69E9840];
  paymentSetupProductModel = [(PKPaymentProvisioningController *)self->_provisioningController paymentSetupProductModel];
  v5 = [(NSArray *)self->_paymentSetupProducts valueForKey:@"productIdentifier"];
  v6 = [paymentSetupProductModel productsForProductIdentifiers:v5];
  paymentSetupProducts = self->_paymentSetupProducts;
  self->_paymentSetupProducts = v6;

  [(PKPaymentSetupProductsSectionController *)self->_primaryProductSectionController updateWithPaymentSetupProducts:self->_paymentSetupProducts];
  v9[0] = self->_primaryProductSectionController;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  [(PKPaymentSetupOptionsViewController *)self setSections:v8 animated:1];
}

- (void)searchTextDidChangeTo:(id)to
{
  v5.receiver = self;
  v5.super_class = PKPaymentSetupProductsViewController;
  toCopy = to;
  [(PKPaymentSetupOptionsViewController *)&v5 searchTextDidChangeTo:toCopy];
  [(PKPaymentSetupProductsSectionController *)self->_primaryProductSectionController applySearchString:toCopy, v5.receiver, v5.super_class];
}

- (void)searchBarCancelButtonClicked
{
  v3.receiver = self;
  v3.super_class = PKPaymentSetupProductsViewController;
  [(PKPaymentSetupOptionsViewController *)&v3 searchBarCancelButtonClicked];
  [(PKPaymentSetupProductsSectionController *)self->_primaryProductSectionController applySearchString:0];
}

- (void)displayNoResultsViewWithSubtitle:(id)subtitle needsManualEntryButton:(BOOL)button
{
  buttonCopy = button;
  subtitleCopy = subtitle;
  [(PKPaymentSetupOptionsViewController *)self setShowNoResultsView:1 animated:1];
  [(PKPaymentSetupOptionsViewController *)self setNoResultsSubtitle:subtitleCopy];

  if (buttonCopy)
  {
    v7 = PKLocalizedPaymentString(&cfstr_AddANewCard.isa);
    [(PKPaymentSetupOptionsViewController *)self setNoResultsActionButtonTitle:v7 target:self action:sel__didSelectAddADifferentCard];
  }
}

- (BOOL)didSelectProduct:(id)product completion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  productCopy = product;
  completionCopy = completion;
  currentlyLoadingProduct = self->_currentlyLoadingProduct;
  if (currentlyLoadingProduct)
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      productIdentifier = [(PKPaymentSetupProduct *)currentlyLoadingProduct productIdentifier];
      productIdentifier2 = [productCopy productIdentifier];
      v16 = 138412546;
      v17 = productIdentifier;
      v18 = 2112;
      v19 = productIdentifier2;
      _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "Already loading product for: %@ cannot select: %@", &v16, 0x16u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    objc_storeStrong(&self->_currentlyLoadingProduct, product);
    WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);
    [WeakRetained productsViewController:self didSelectProduct:productCopy];

    [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter setSetupProduct:productCopy];
    v14 = self->_currentlyLoadingProduct;
    self->_currentlyLoadingProduct = 0;

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
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

- (void)_didSelectAddADifferentCardWithCompletion:(id)completion
{
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);
  [WeakRetained productsViewControllerDidSelectManualEntry:self];

  v5 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1);
    v5 = completionCopy;
  }
}

- (void)showLoadingUI:(BOOL)i animated:(BOOL)animated
{
  animatedCopy = animated;
  iCopy = i;
  collectionView = [(PKDynamicCollectionViewController *)self collectionView];
  [collectionView setUserInteractionEnabled:iCopy ^ 1];

  navigationController = [(PKPaymentSetupProductsViewController *)self navigationController];
  view = [navigationController view];
  [view setUserInteractionEnabled:iCopy ^ 1];

  navigationItem = [(PKPaymentSetupProductsViewController *)self navigationItem];
  [navigationItem setHidesBackButton:iCopy];

  if (!iCopy)
  {
    [(PKPaymentSetupProductsSectionController *)self->_primaryProductSectionController hideLoadingIndicatorsAnimated:animatedCopy];
    navigationController2 = [(PKPaymentSetupProductsViewController *)self navigationController];
    viewControllers = [navigationController2 viewControllers];
    lastObject = [viewControllers lastObject];
    v13 = lastObject;
    if (lastObject == self)
    {
      presentedViewController = [(PKPaymentSetupProductsViewController *)self presentedViewController];

      if (!presentedViewController)
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
@interface PKPaymentSetupWelcomeViewController
- (BOOL)_didSelectItemWithIdentifier:(id)identifier title:(id)title category:(id)category productIdentifiers:(id)identifiers completion:(id)completion;
- (BOOL)_updateAnalyticsProductCategoriesString;
- (BOOL)didSelectAppExtensionWithIdentifier:(id)identifier title:(id)title completion:(id)completion;
- (BOOL)didSelectCategory:(id)category completion:(id)completion;
- (BOOL)didSelectYourCardsWithCompletion:(id)completion;
- (PKPaymentSetupWelcomeViewController)initWithProvisioningController:(id)controller context:(int64_t)context;
- (PKPaymentSetupWelcomeViewControllerFlowDelegate)flowDelegate;
- (void)_updateFilteredPaymentSetupProductModelForRequirements:(unint64_t)requirements provisoningController:(id)controller forceReload:(BOOL)reload;
- (void)_updateHeaderContentsWithProvisoningController:(id)controller;
- (void)didTapFooterLink:(id)link;
- (void)preflightRequirementsUpdated:(unint64_t)updated displayableError:(id)error;
- (void)preflightWithCompletion:(id)completion;
- (void)provisioningControllerUpdatedAccounts:(id)accounts;
- (void)provisioningControllerUpdatedProducts:(id)products;
- (void)reloadSectionsForRequirements:(unint64_t)requirements animated:(BOOL)animated forceReload:(BOOL)reload;
- (void)showLoadingUI:(BOOL)i animated:(BOOL)animated;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PKPaymentSetupWelcomeViewController

- (PKPaymentSetupWelcomeViewController)initWithProvisioningController:(id)controller context:(int64_t)context
{
  controllerCopy = controller;
  v15.receiver = self;
  v15.super_class = PKPaymentSetupWelcomeViewController;
  v8 = [(PKPaymentSetupOptionsViewController *)&v15 initWithContext:context];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_provisioningController, controller);
    v10 = objc_alloc_init(PKPaymentSetupCategoriesSectionController);
    categoriesSectionController = v9->_categoriesSectionController;
    v9->_categoriesSectionController = v10;

    [(PKPaymentSetupCategoriesSectionController *)v9->_categoriesSectionController setDelegate:v9];
    v12 = objc_alloc_init(PKPaymentSetupAppExtensionsSectionController);
    appExtensionSectionController = v9->_appExtensionSectionController;
    v9->_appExtensionSectionController = v12;

    [(PKPaymentSetupAppExtensionsSectionController *)v9->_appExtensionSectionController setDelegate:v9];
    [(PKDynamicCollectionViewController *)v9 setUseItemIdentityWhenUpdating:1];
  }

  return v9;
}

- (void)viewDidLoad
{
  v19[1] = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = PKPaymentSetupWelcomeViewController;
  [(PKPaymentSetupOptionsViewController *)&v18 viewDidLoad];
  [(PKDynamicCollectionViewController *)self setRetainCellSelectionCellOnReload:1];
  v3 = PKCurrentRegion();
  v4 = [v3 isEqualToString:@"CN"];

  if (v4)
  {
    dockView = [(PKPaymentSetupOptionsViewController *)self dockView];
    v6 = objc_alloc_init(PKMultiHyperlinkView);
    v7 = PKLocalizedPaymentString(&cfstr_WelcomePrivacy.isa);
    v8 = PKLocalizedPaymentString(&cfstr_WelcomePrivacy_0.isa);
    v9 = PKStringWithValidatedFormat();
    [(PKMultiHyperlinkView *)v6 setText:v9, v8];
    [(PKMultiHyperlinkView *)v6 setTextAlignment:PKOBKTextAlignment()];
    objc_initWeak(&location, self);
    v10 = [PKTextRangeHyperlink alloc];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __50__PKPaymentSetupWelcomeViewController_viewDidLoad__block_invoke;
    v15[3] = &unk_1E8010998;
    objc_copyWeak(&v16, &location);
    v11 = [(PKTextRangeHyperlink *)v10 initWithLinkText:v8 action:v15];
    v19[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    [(PKMultiHyperlinkView *)v6 setSources:v12];

    [dockView setAdditionalView:v6];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  v13 = self->_provisioningController;
  [(PKPaymentProvisioningController *)v13 addDelegate:self];
  [(PKPaymentSetupWelcomeViewController *)self _updateHeaderContentsWithProvisoningController:self->_provisioningController];
  [(PKPaymentSetupWelcomeViewController *)self reloadSectionsForRequirements:[(PKPaymentProvisioningController *)self->_provisioningController preflightRequirements] animated:0 forceReload:0];
  view = [(PKPaymentSetupWelcomeViewController *)self view];

  [view setAccessibilityIdentifier:*MEMORY[0x1E69B9A68]];
}

void __50__PKPaymentSetupWelcomeViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [MEMORY[0x1E695DFF8] URLWithString:*MEMORY[0x1E69BB750]];
    [v3 didTapFooterLink:v2];

    WeakRetained = v3;
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v10[1] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = PKPaymentSetupWelcomeViewController;
  [(PKPaymentSetupOptionsViewController *)&v8 viewWillAppear:?];
  self->_viewWillAppearReported = 1;
  [(PKPaymentSetupWelcomeViewController *)self _updateAnalyticsProductCategoriesString];
  reporter = self->_reporter;
  analyticsProductCategoriesString = self->_analyticsProductCategoriesString;
  v9 = *MEMORY[0x1E69BB0A0];
  v10[0] = analyticsProductCategoriesString;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [(PKProvisioningAnalyticsSessionUIReporter *)reporter reportViewAppearedWithContext:v7];

  [(PKPaymentSetupWelcomeViewController *)self reloadSectionsForRequirements:[(PKPaymentProvisioningController *)self->_provisioningController preflightRequirements] animated:appearCopy forceReload:0];
  [(PKPaymentSetupWelcomeViewController *)self preflightWithCompletion:0];
}

- (void)reloadSectionsForRequirements:(unint64_t)requirements animated:(BOOL)animated forceReload:(BOOL)reload
{
  reloadCopy = reload;
  animatedCopy = animated;
  v15[1] = *MEMORY[0x1E69E9840];
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = self->_provisioningController;
  [(PKPaymentSetupWelcomeViewController *)self _updateFilteredPaymentSetupProductModelForRequirements:requirements provisoningController:self->_provisioningController forceReload:reloadCopy];
  if ([(PKPaymentSetupCategoriesSectionController *)self->_categoriesSectionController updateWithRequirements:requirements provisioningController:v10 paymentSetupProductModel:self->_filteredPaymentSetupProductModel forceProductConfiguration:reloadCopy])
  {
    [v9 addObject:self->_categoriesSectionController];
  }

  if ([(PKPaymentSetupAppExtensionsSectionController *)self->_appExtensionSectionController updateWithRequirements:requirements paymentSetupProductModel:self->_filteredPaymentSetupProductModel])
  {
    [v9 addObject:self->_appExtensionSectionController];
  }

  [(PKPaymentSetupWelcomeViewController *)self _updateHeaderContentsWithProvisoningController:v10];
  [(PKPaymentSetupOptionsViewController *)self setSections:v9 animated:animatedCopy];
  [(PKPaymentSetupOptionsViewController *)self setShowHeaderSpinner:(requirements & 0xA) == 0];
  if ([(PKPaymentSetupWelcomeViewController *)self _updateAnalyticsProductCategoriesString]&& self->_viewWillAppearReported)
  {
    reporter = self->_reporter;
    analyticsProductCategoriesString = self->_analyticsProductCategoriesString;
    v14 = *MEMORY[0x1E69BB0A0];
    v15[0] = analyticsProductCategoriesString;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    [(PKProvisioningAnalyticsSessionUIReporter *)reporter reportStateChangedWithContext:v13];
  }
}

- (void)_updateFilteredPaymentSetupProductModelForRequirements:(unint64_t)requirements provisoningController:(id)controller forceReload:(BOOL)reload
{
  controllerCopy = controller;
  if (reload || PKPaymentPreflightRequirementsImpactProducts())
  {
    self->_currentConfiguredRequirements = requirements;
    v8 = PKCurrentMobileCarrierRegion();
    webService = [controllerCopy webService];
    targetDevice = [webService targetDevice];
    deviceRegion = [targetDevice deviceRegion];

    paymentSetupProductModel = [controllerCopy paymentSetupProductModel];
    localCredentials = [controllerCopy localCredentials];
    v14 = [paymentSetupProductModel filteredPaymentSetupProductModelWithLocalCredentials:localCredentials setupContext:-[PKPaymentSetupOptionsViewController context](self webService:"context") mobileCarrierRegion:webService deviceRegion:{v8, deviceRegion}];
    filteredPaymentSetupProductModel = self->_filteredPaymentSetupProductModel;
    self->_filteredPaymentSetupProductModel = v14;
  }
}

- (void)_updateHeaderContentsWithProvisoningController:(id)controller
{
  paymentSetupProductModel = [controller paymentSetupProductModel];
  localizedTitle = [paymentSetupProductModel localizedTitle];
  localizedSubtitle = [paymentSetupProductModel localizedSubtitle];
  if (localizedTitle)
  {
    [(PKPaymentSetupOptionsViewController *)self setTitleText:localizedTitle];
    if (localizedSubtitle)
    {
LABEL_3:
      [(PKPaymentSetupOptionsViewController *)self setSubtitleText:localizedSubtitle];
      goto LABEL_6;
    }
  }

  else
  {
    v6 = PKLocalizedPaymentString(&cfstr_PaymentSetupTi.isa);
    [(PKPaymentSetupOptionsViewController *)self setTitleText:v6];

    if (localizedSubtitle)
    {
      goto LABEL_3;
    }
  }

  v7 = PKLocalizedPaymentString(&cfstr_PaymentSetupSu.isa);
  [(PKPaymentSetupOptionsViewController *)self setSubtitleText:v7];

LABEL_6:
}

- (void)preflightRequirementsUpdated:(unint64_t)updated displayableError:(id)error
{
  errorCopy = error;
  v7 = errorCopy;
  if (!self->_isDisplayingError)
  {
    if (errorCopy)
    {
      self->_isDisplayingError = 1;
      [(PKPaymentSetupOptionsViewController *)self setShowHeaderSpinner:0];
      objc_initWeak(&location, self);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __85__PKPaymentSetupWelcomeViewController_preflightRequirementsUpdated_displayableError___block_invoke;
      v9[3] = &unk_1E80110E0;
      objc_copyWeak(&v10, &location);
      v9[4] = self;
      v8 = PKAlertForDisplayableErrorWithHandlers(v7, 0, v9, 0);
      [(PKPaymentSetupWelcomeViewController *)self presentViewController:v8 animated:1 completion:0];
      [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportError:v7 context:0];

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }

    else
    {
      [(PKPaymentSetupWelcomeViewController *)self reloadSectionsForRequirements:updated animated:1 forceReload:0];
    }
  }
}

void __85__PKPaymentSetupWelcomeViewController_preflightRequirementsUpdated_displayableError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = objc_loadWeakRetained(WeakRetained + 171);

  if (v2)
  {
    v3 = objc_loadWeakRetained(WeakRetained + 171);
    [v3 welcomeViewControllerDidTerminate:*(a1 + 32)];
  }

  else
  {
    [WeakRetained dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)provisioningControllerUpdatedProducts:(id)products
{
  preflightRequirements = [products preflightRequirements];

  [(PKPaymentSetupWelcomeViewController *)self reloadSectionsForRequirements:preflightRequirements animated:0 forceReload:1];
}

- (void)provisioningControllerUpdatedAccounts:(id)accounts
{
  preflightRequirements = [accounts preflightRequirements];

  [(PKPaymentSetupWelcomeViewController *)self reloadSectionsForRequirements:preflightRequirements animated:1 forceReload:1];
}

- (BOOL)didSelectAppExtensionWithIdentifier:(id)identifier title:(id)title completion:(id)completion
{
  identifierCopy = identifier;
  titleCopy = title;
  completionCopy = completion;
  v12 = completionCopy;
  if (self->_loadingIdentifier)
  {
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }

    v13 = 0;
  }

  else
  {
    objc_storeStrong(&self->_loadingIdentifier, identifier);
    v14 = [MEMORY[0x1E695DFD8] setWithObject:identifierCopy];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __92__PKPaymentSetupWelcomeViewController_didSelectAppExtensionWithIdentifier_title_completion___block_invoke;
    v16[3] = &unk_1E80109C0;
    v16[4] = self;
    v17 = v12;
    v13 = [(PKPaymentSetupWelcomeViewController *)self _didSelectItemWithIdentifier:0 title:titleCopy category:0 productIdentifiers:v14 completion:v16];
  }

  return v13;
}

uint64_t __92__PKPaymentSetupWelcomeViewController_didSelectAppExtensionWithIdentifier_title_completion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 deselectCells];
}

- (BOOL)didSelectYourCardsWithCompletion:(id)completion
{
  completionCopy = completion;
  loadingIdentifier = self->_loadingIdentifier;
  if (!loadingIdentifier)
  {
    objc_storeStrong(&self->_loadingIdentifier, *MEMORY[0x1E69BC2B0]);
    WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);
    [WeakRetained welcomeViewControllerDidSelectCardsOnFile:self];

    v7 = self->_loadingIdentifier;
    self->_loadingIdentifier = 0;
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, loadingIdentifier == 0);
  }

  return loadingIdentifier == 0;
}

- (BOOL)didSelectCategory:(id)category completion:(id)completion
{
  categoryCopy = category;
  completionCopy = completion;
  v8 = completionCopy;
  if (self->_loadingIdentifier)
  {
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }

    v9 = 0;
  }

  else
  {
    identifier = [categoryCopy identifier];
    loadingIdentifier = self->_loadingIdentifier;
    self->_loadingIdentifier = identifier;

    identifier2 = [categoryCopy identifier];
    localizedDisplayName = [categoryCopy localizedDisplayName];
    productIdentifiers = [categoryCopy productIdentifiers];
    v9 = [(PKPaymentSetupWelcomeViewController *)self _didSelectItemWithIdentifier:identifier2 title:localizedDisplayName category:categoryCopy productIdentifiers:productIdentifiers completion:v8];
  }

  return v9;
}

- (void)preflightWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (self->_didPreflight)
  {
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 1);
    }
  }

  else
  {
    self->_didPreflight = 1;
    provisioningController = self->_provisioningController;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __63__PKPaymentSetupWelcomeViewController_preflightWithCompletion___block_invoke;
    v7[3] = &unk_1E8013FF8;
    v8 = completionCopy;
    [(PKPaymentProvisioningController *)provisioningController preflightWithCompletion:v7];
  }
}

uint64_t __63__PKPaymentSetupWelcomeViewController_preflightWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)_didSelectItemWithIdentifier:(id)identifier title:(id)title category:(id)category productIdentifiers:(id)identifiers completion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  categoryCopy = category;
  completionCopy = completion;
  v14 = [(PKPaymentSetupProductModel *)self->_filteredPaymentSetupProductModel availableProductsForProductIdentifiers:identifiers];
  if ([v14 count])
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }

    WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);
    [WeakRetained welcomeViewController:self didSelectCategory:categoryCopy products:v14];
  }

  else
  {
    if (([identifierCopy isEqualToString:*MEMORY[0x1E69BC288]] & 1) == 0)
    {
      v16 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412290;
        v19 = identifierCopy;
        _os_log_impl(&dword_1BD026000, v16, OS_LOG_TYPE_DEFAULT, "Error: Category:%@ should have products - using default flow", &v18, 0xCu);
      }
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }

    WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);
    [WeakRetained welcomeViewControllerDidSelectManualEntry:self];
  }

  return 1;
}

- (void)didTapFooterLink:(id)link
{
  v10 = *MEMORY[0x1E69E9840];
  linkCopy = link;
  if (linkCopy)
  {
    v5 = [objc_alloc(MEMORY[0x1E697A838]) initWithURL:linkCopy];
    [v5 setModalPresentationStyle:2];
    [(PKPaymentSetupWelcomeViewController *)self presentViewController:v5 animated:1 completion:0];
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Error: Could not open url in: %@", &v8, 0xCu);
    }
  }
}

- (void)showLoadingUI:(BOOL)i animated:(BOOL)animated
{
  animatedCopy = animated;
  iCopy = i;
  collectionView = [(PKDynamicCollectionViewController *)self collectionView];
  [collectionView setUserInteractionEnabled:!iCopy];

  loadingIdentifier = self->_loadingIdentifier;
  if (loadingIdentifier && !iCopy)
  {
    self->_loadingIdentifier = 0;

    [(PKPaymentSetupCategoriesSectionController *)self->_categoriesSectionController hideLoadingIndicatorsAnimated:animatedCopy];
    appExtensionSectionController = self->_appExtensionSectionController;

    [(PKPaymentSetupAppExtensionsSectionController *)appExtensionSectionController hideLoadingIndicatorsAnimated:animatedCopy];
  }
}

- (BOOL)_updateAnalyticsProductCategoriesString
{
  orderedAnalyticsProductCategories = [(PKPaymentSetupCategoriesSectionController *)self->_categoriesSectionController orderedAnalyticsProductCategories];
  v4 = [orderedAnalyticsProductCategories mutableCopy];

  v5 = [(PKPaymentSetupProductModel *)self->_filteredPaymentSetupProductModel setupProductsOfType:6];
  v6 = [v5 count];

  if (v6)
  {
    [v4 safelyAddObject:*MEMORY[0x1E69BC268]];
  }

  v7 = [(NSString *)self->_analyticsProductCategoriesString copy];
  v8 = [v4 componentsJoinedByString:{@", "}];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_1F3BD7330;
  }

  objc_storeStrong(&self->_analyticsProductCategoriesString, v10);

  analyticsProductCategoriesString = self->_analyticsProductCategoriesString;
  v12 = v7;
  v13 = analyticsProductCategoriesString;
  v14 = v13;
  if (v12 == v13)
  {
    LOBYTE(v16) = 0;
  }

  else
  {
    if (v12)
    {
      v15 = v13 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      LOBYTE(v16) = 1;
    }

    else
    {
      v16 = ![(NSString *)v12 isEqualToString:v13];
    }
  }

  return v16;
}

- (PKPaymentSetupWelcomeViewControllerFlowDelegate)flowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);

  return WeakRetained;
}

@end
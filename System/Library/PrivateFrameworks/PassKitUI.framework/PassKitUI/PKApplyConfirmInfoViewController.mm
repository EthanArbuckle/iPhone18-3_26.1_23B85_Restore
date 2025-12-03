@interface PKApplyConfirmInfoViewController
- (PKApplyConfirmInfoViewController)initWithController:(id)controller setupDelegate:(id)delegate context:(int64_t)context applyPage:(id)page;
- (void)_continueAction;
- (void)didSelectActionItem:(id)item;
- (void)viewDidLoad;
@end

@implementation PKApplyConfirmInfoViewController

- (PKApplyConfirmInfoViewController)initWithController:(id)controller setupDelegate:(id)delegate context:(int64_t)context applyPage:(id)page
{
  controllerCopy = controller;
  pageCopy = page;
  v16.receiver = self;
  v16.super_class = PKApplyConfirmInfoViewController;
  v12 = [(PKApplyCollectionViewController *)&v16 initWithController:controllerCopy setupDelegate:delegate context:context applyPage:pageCopy];
  if (v12)
  {
    v13 = [[PKApplyConfirmInfoSectionController alloc] initWithController:controllerCopy applyPage:pageCopy delegate:v12];
    sectionController = v12->_sectionController;
    v12->_sectionController = v13;
  }

  return v12;
}

- (void)viewDidLoad
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = PKApplyConfirmInfoViewController;
  [(PKApplyCollectionViewController *)&v7 viewDidLoad];
  v8[0] = self->_sectionController;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [(PKPaymentSetupOptionsViewController *)self setSections:v3 animated:0];

  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__PKApplyConfirmInfoViewController_viewDidLoad__block_invoke;
  v4[3] = &unk_1E80131F8;
  objc_copyWeak(&v5, &location);
  [(PKApplyCollectionViewController *)self setPrimaryButtonAction:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

uint64_t __47__PKApplyConfirmInfoViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _continueAction];
  }

  return 0;
}

- (void)didSelectActionItem:(id)item
{
  v20[2] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  contextPrimaryActionIdentifier = [itemCopy contextPrimaryActionIdentifier];
  if (contextPrimaryActionIdentifier)
  {
    controller = [(PKApplyCollectionViewController *)self controller];
    page = [(PKApplyCollectionViewController *)self page];
    pageTag = [(PKApplyCollectionViewController *)self pageTag];
    v9 = *MEMORY[0x1E69BA7C8];
    v10 = *MEMORY[0x1E69BB170];
    v19[0] = *MEMORY[0x1E69BA680];
    v19[1] = v10;
    v20[0] = v9;
    v20[1] = contextPrimaryActionIdentifier;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
    [controller reportAnalyticsDictionaryForPage:page pageTag:pageTag additionalValues:v11];

    [(PKPaymentSetupOptionsViewController *)self setShowNavigationBarSpinner:1];
    objc_initWeak(&location, self);
    controller2 = [(PKApplyCollectionViewController *)self controller];
    currentPage = [(PKApplyCollectionViewController *)self currentPage];
    footerContent = [currentPage footerContent];
    termsIdentifiers = [footerContent termsIdentifiers];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __56__PKApplyConfirmInfoViewController_didSelectActionItem___block_invoke;
    v16[3] = &unk_1E80162F0;
    objc_copyWeak(&v17, &location);
    [controller2 submitActionIdentifier:contextPrimaryActionIdentifier termsIdentifiers:termsIdentifiers odiAttributesDictionary:0 completion:v16];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

void __56__PKApplyConfirmInfoViewController_didSelectActionItem___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleNextViewController:v8 displayableError:v5];
  }
}

- (void)_continueAction
{
  currentPage = [(PKApplyCollectionViewController *)self currentPage];
  loadingPageContent = [currentPage loadingPageContent];
  if (!loadingPageContent)
  {
    controller = [(PKApplyCollectionViewController *)self controller];
    if (![controller featureIdentifier])
    {
      controller2 = [(PKApplyCollectionViewController *)self controller];
      featureApplication = [controller2 featureApplication];
      [featureApplication feature];
    }

    controller3 = [(PKApplyCollectionViewController *)self controller];
    preferredLanguage = [controller3 preferredLanguage];

    loadingPageContent = objc_alloc_init(MEMORY[0x1E69B8818]);
    v10 = PKLocalizedApplyFeatureString();
    [loadingPageContent setTitle:v10];

    v11 = PKLocalizedApplyFeatureString();
    [loadingPageContent setSubtitle:v11];
  }

  identifier = [loadingPageContent identifier];

  if (!identifier)
  {
    [loadingPageContent setIdentifier:@"ApplyConfirmInfoVerifying"];
  }

  v27 = [PKApplyVerifyingViewController alloc];
  controller4 = [(PKApplyCollectionViewController *)self controller];
  setupDelegate = [(PKApplyCollectionViewController *)self setupDelegate];
  v15 = loadingPageContent;
  context = [(PKPaymentSetupOptionsViewController *)self context];
  primaryActionIdentifier = [currentPage primaryActionIdentifier];
  footerContent = [currentPage footerContent];
  termsIdentifiers = [footerContent termsIdentifiers];
  v26 = currentPage;
  actionContent = [currentPage actionContent];
  odiAttributesDictionary = [actionContent odiAttributesDictionary];
  v22 = context;
  v23 = v15;
  v24 = [(PKApplyVerifyingViewController *)v27 initWithController:controller4 setupDelegate:setupDelegate context:v22 applyPage:v15 actionIdentifierToSubmit:primaryActionIdentifier termsIdentifiersToSubmit:termsIdentifiers odiAttributesDictionaryToSubmit:odiAttributesDictionary];

  [(PKPaymentSetupOptionsViewController *)self setShowNavigationBarSpinner:1];
  objc_initWeak(&location, self);
  navigationController = [(PKApplyConfirmInfoViewController *)self navigationController];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __51__PKApplyConfirmInfoViewController__continueAction__block_invoke;
  v28[3] = &unk_1E8011180;
  objc_copyWeak(&v29, &location);
  [navigationController pk_presentPaymentSetupViewController:v24 animated:1 completion:v28];

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

void __51__PKApplyConfirmInfoViewController__continueAction__block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained setShowNavigationBarSpinner:0];
    WeakRetained = v4;
    if ((a2 & 1) == 0)
    {
      [v4 terminateSetupFlow];
      WeakRetained = v4;
    }
  }
}

@end
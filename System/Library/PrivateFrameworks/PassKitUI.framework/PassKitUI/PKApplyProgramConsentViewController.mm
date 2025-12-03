@interface PKApplyProgramConsentViewController
- (PKApplyProgramConsentViewController)initWithController:(id)controller setupDelegate:(id)delegate context:(int64_t)context applyPage:(id)page;
- (void)_termsAccepted:(BOOL)accepted actionIdentifier:(id)identifier;
- (void)dealloc;
- (void)explanationViewDidSelectBodyButton:(id)button;
- (void)explanationViewDidSelectContinue:(id)continue;
- (void)explanationViewDidSelectSetupLater:(id)later;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PKApplyProgramConsentViewController

- (PKApplyProgramConsentViewController)initWithController:(id)controller setupDelegate:(id)delegate context:(int64_t)context applyPage:(id)page
{
  controllerCopy = controller;
  v19.receiver = self;
  v19.super_class = PKApplyProgramConsentViewController;
  v11 = [(PKApplyExplanationViewController *)&v19 initWithController:controllerCopy setupDelegate:delegate context:context applyPage:page];
  if (v11)
  {
    featureApplication = [controllerCopy featureApplication];
    declineDetails = [featureApplication declineDetails];

    pathTermsIdentifier = [declineDetails pathTermsIdentifier];
    pathTermsIdentifier = v11->_pathTermsIdentifier;
    v11->_pathTermsIdentifier = pathTermsIdentifier;

    pathIdentifier = [declineDetails pathIdentifier];
    pathIdentifier = v11->_pathIdentifier;
    v11->_pathIdentifier = pathIdentifier;
  }

  return v11;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = PKApplyProgramConsentViewController;
  [(PKApplyExplanationViewController *)&v6 viewDidLoad];
  explanationView = [(PKExplanationViewController *)self explanationView];
  v4 = PKUIImageNamed(@"PTACAppleCardTitanium");
  [explanationView setImage:v4];

  v5 = PKUIImageNamed(@"PTACTitle");
  [explanationView setTitleImage:v5];

  [explanationView setTopLogoBottomPadding:12.0];
  [explanationView setBodyButtonNumberOfLines:2];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = PKApplyProgramConsentViewController;
  [(PKApplyProgramConsentViewController *)&v6 viewWillDisappear:disappear];
  inUseAssertion = self->_inUseAssertion;
  if (inUseAssertion)
  {
    [(CLInUseAssertion *)inUseAssertion invalidate];
    v5 = self->_inUseAssertion;
    self->_inUseAssertion = 0;
  }
}

- (void)dealloc
{
  inUseAssertion = self->_inUseAssertion;
  if (inUseAssertion)
  {
    [(CLInUseAssertion *)inUseAssertion invalidate];
    v4 = self->_inUseAssertion;
    self->_inUseAssertion = 0;
  }

  v5.receiver = self;
  v5.super_class = PKApplyProgramConsentViewController;
  [(PKApplyProgramConsentViewController *)&v5 dealloc];
}

- (void)explanationViewDidSelectContinue:(id)continue
{
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Program terms accepted", v7, 2u);
  }

  currentPage = [(PKApplyExplanationViewController *)self currentPage];
  primaryActionIdentifier = [currentPage primaryActionIdentifier];
  [(PKApplyProgramConsentViewController *)self _termsAccepted:1 actionIdentifier:primaryActionIdentifier];
}

- (void)explanationViewDidSelectSetupLater:(id)later
{
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Program terms declined", v7, 2u);
  }

  currentPage = [(PKApplyExplanationViewController *)self currentPage];
  secondaryActionIdentifier = [currentPage secondaryActionIdentifier];
  [(PKApplyProgramConsentViewController *)self _termsAccepted:0 actionIdentifier:secondaryActionIdentifier];
}

- (void)explanationViewDidSelectBodyButton:(id)button
{
  buttonCopy = button;
  [(PKApplyExplanationViewController *)self showNavigationBarSpinner:1];
  v5 = [PKApplyTermsAndConditionsViewController alloc];
  controller = [(PKApplyExplanationViewController *)self controller];
  setupDelegate = [(PKApplyExplanationViewController *)self setupDelegate];
  v8 = [(PKApplyTermsAndConditionsViewController *)v5 initWithController:controller setupDelegate:setupDelegate context:[(PKExplanationViewController *)self context] termsIdentifier:self->_pathTermsIdentifier];

  [(PKApplyTermsAndConditionsViewController *)v8 setPreflightPDFTerms:1];
  [(PKFeatureTermsAndConditionsViewController *)v8 setUseModalPresentation:1];
  objc_initWeak(&location, self);
  navigationController = [(PKApplyProgramConsentViewController *)self navigationController];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__PKApplyProgramConsentViewController_explanationViewDidSelectBodyButton___block_invoke;
  v10[3] = &unk_1E8011180;
  objc_copyWeak(&v11, &location);
  [navigationController pk_presentPaymentSetupViewController:v8 animated:1 completion:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __74__PKApplyProgramConsentViewController_explanationViewDidSelectBodyButton___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained showNavigationBarSpinner:0];
    WeakRetained = v2;
  }
}

- (void)_termsAccepted:(BOOL)accepted actionIdentifier:(id)identifier
{
  acceptedCopy = accepted;
  identifierCopy = identifier;
  if (!self->_inUseAssertion)
  {
    v7 = MEMORY[0x1E695FBE0];
    v8 = PKPassKitCoreBundle();
    v9 = [v7 newAssertionForBundle:v8 withReason:@"Accepting program terms"];
    inUseAssertion = self->_inUseAssertion;
    self->_inUseAssertion = v9;
  }

  [(PKApplyExplanationViewController *)self showNavigationBarSpinner:1];
  objc_initWeak(&location, self);
  controller = [(PKApplyExplanationViewController *)self controller];
  pathTermsIdentifier = self->_pathTermsIdentifier;
  pathIdentifier = self->_pathIdentifier;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __71__PKApplyProgramConsentViewController__termsAccepted_actionIdentifier___block_invoke;
  v14[3] = &unk_1E80162F0;
  objc_copyWeak(&v15, &location);
  [controller termsAccepted:acceptedCopy termsIdentifier:pathTermsIdentifier secondaryIdentifier:pathIdentifier actionIdentifier:identifierCopy completion:v14];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __71__PKApplyProgramConsentViewController__termsAccepted_actionIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
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

@end
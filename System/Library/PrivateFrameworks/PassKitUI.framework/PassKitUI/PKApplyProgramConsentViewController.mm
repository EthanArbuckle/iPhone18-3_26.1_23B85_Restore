@interface PKApplyProgramConsentViewController
- (PKApplyProgramConsentViewController)initWithController:(id)a3 setupDelegate:(id)a4 context:(int64_t)a5 applyPage:(id)a6;
- (void)_termsAccepted:(BOOL)a3 actionIdentifier:(id)a4;
- (void)dealloc;
- (void)explanationViewDidSelectBodyButton:(id)a3;
- (void)explanationViewDidSelectContinue:(id)a3;
- (void)explanationViewDidSelectSetupLater:(id)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PKApplyProgramConsentViewController

- (PKApplyProgramConsentViewController)initWithController:(id)a3 setupDelegate:(id)a4 context:(int64_t)a5 applyPage:(id)a6
{
  v10 = a3;
  v19.receiver = self;
  v19.super_class = PKApplyProgramConsentViewController;
  v11 = [(PKApplyExplanationViewController *)&v19 initWithController:v10 setupDelegate:a4 context:a5 applyPage:a6];
  if (v11)
  {
    v12 = [v10 featureApplication];
    v13 = [v12 declineDetails];

    v14 = [v13 pathTermsIdentifier];
    pathTermsIdentifier = v11->_pathTermsIdentifier;
    v11->_pathTermsIdentifier = v14;

    v16 = [v13 pathIdentifier];
    pathIdentifier = v11->_pathIdentifier;
    v11->_pathIdentifier = v16;
  }

  return v11;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = PKApplyProgramConsentViewController;
  [(PKApplyExplanationViewController *)&v6 viewDidLoad];
  v3 = [(PKExplanationViewController *)self explanationView];
  v4 = PKUIImageNamed(@"PTACAppleCardTitanium");
  [v3 setImage:v4];

  v5 = PKUIImageNamed(@"PTACTitle");
  [v3 setTitleImage:v5];

  [v3 setTopLogoBottomPadding:12.0];
  [v3 setBodyButtonNumberOfLines:2];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = PKApplyProgramConsentViewController;
  [(PKApplyProgramConsentViewController *)&v6 viewWillDisappear:a3];
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

- (void)explanationViewDidSelectContinue:(id)a3
{
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Program terms accepted", v7, 2u);
  }

  v5 = [(PKApplyExplanationViewController *)self currentPage];
  v6 = [v5 primaryActionIdentifier];
  [(PKApplyProgramConsentViewController *)self _termsAccepted:1 actionIdentifier:v6];
}

- (void)explanationViewDidSelectSetupLater:(id)a3
{
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Program terms declined", v7, 2u);
  }

  v5 = [(PKApplyExplanationViewController *)self currentPage];
  v6 = [v5 secondaryActionIdentifier];
  [(PKApplyProgramConsentViewController *)self _termsAccepted:0 actionIdentifier:v6];
}

- (void)explanationViewDidSelectBodyButton:(id)a3
{
  v4 = a3;
  [(PKApplyExplanationViewController *)self showNavigationBarSpinner:1];
  v5 = [PKApplyTermsAndConditionsViewController alloc];
  v6 = [(PKApplyExplanationViewController *)self controller];
  v7 = [(PKApplyExplanationViewController *)self setupDelegate];
  v8 = [(PKApplyTermsAndConditionsViewController *)v5 initWithController:v6 setupDelegate:v7 context:[(PKExplanationViewController *)self context] termsIdentifier:self->_pathTermsIdentifier];

  [(PKApplyTermsAndConditionsViewController *)v8 setPreflightPDFTerms:1];
  [(PKFeatureTermsAndConditionsViewController *)v8 setUseModalPresentation:1];
  objc_initWeak(&location, self);
  v9 = [(PKApplyProgramConsentViewController *)self navigationController];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__PKApplyProgramConsentViewController_explanationViewDidSelectBodyButton___block_invoke;
  v10[3] = &unk_1E8011180;
  objc_copyWeak(&v11, &location);
  [v9 pk_presentPaymentSetupViewController:v8 animated:1 completion:v10];

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

- (void)_termsAccepted:(BOOL)a3 actionIdentifier:(id)a4
{
  v4 = a3;
  v6 = a4;
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
  v11 = [(PKApplyExplanationViewController *)self controller];
  pathTermsIdentifier = self->_pathTermsIdentifier;
  pathIdentifier = self->_pathIdentifier;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __71__PKApplyProgramConsentViewController__termsAccepted_actionIdentifier___block_invoke;
  v14[3] = &unk_1E80162F0;
  objc_copyWeak(&v15, &location);
  [v11 termsAccepted:v4 termsIdentifier:pathTermsIdentifier secondaryIdentifier:pathIdentifier actionIdentifier:v6 completion:v14];

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
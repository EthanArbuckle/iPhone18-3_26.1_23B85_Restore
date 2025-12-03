@interface PKApplyTermsAndConditionsViewController
- (PKApplyTermsAndConditionsViewController)initWithController:(id)controller setupDelegate:(id)delegate context:(int64_t)context termsIdentifier:(id)identifier;
- (id)displayTitle;
- (void)_terminateSetupFlow;
- (void)dealloc;
- (void)htmlTermsDataWithCompletion:(id)completion;
- (void)initalTermsDataWithCompletion:(id)completion;
- (void)pdfTermsDataWithIdentifier:(id)identifier completion:(id)completion;
- (void)presentErrorAlert;
- (void)reportAnalyticsForTermsLink:(id)link;
- (void)termsAccepted:(BOOL)accepted completion:(id)completion;
- (void)termsShown;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PKApplyTermsAndConditionsViewController

- (PKApplyTermsAndConditionsViewController)initWithController:(id)controller setupDelegate:(id)delegate context:(int64_t)context termsIdentifier:(id)identifier
{
  controllerCopy = controller;
  identifierCopy = identifier;
  v17.receiver = self;
  v17.super_class = PKApplyTermsAndConditionsViewController;
  v12 = [(PKFeatureTermsAndConditionsViewController *)&v17 initWithSetupDelegate:delegate context:context];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_applyController, controllerCopy);
    v14 = [identifierCopy copy];
    termsIdentifier = v13->_termsIdentifier;
    v13->_termsIdentifier = v14;

    v13->_preflightPDFTerms = 0;
  }

  return v13;
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
  v5.super_class = PKApplyTermsAndConditionsViewController;
  [(PKApplyTermsAndConditionsViewController *)&v5 dealloc];
}

- (void)viewDidAppear:(BOOL)appear
{
  v14[1] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = PKApplyTermsAndConditionsViewController;
  [(PKApplyTermsAndConditionsViewController *)&v12 viewDidAppear:appear];
  WeakRetained = objc_loadWeakRetained(&self->_applyController);
  [WeakRetained applyFlowDidAppear];

  v5 = objc_loadWeakRetained(&self->_applyController);
  featureIdentifier = [v5 featureIdentifier];

  if (featureIdentifier == 2)
  {
    if (self->_termsIdentifier)
    {
      v7 = MEMORY[0x1E69BB698];
    }

    else
    {
      v7 = MEMORY[0x1E69BB6A0];
    }

    v8 = *v7;
    v9 = objc_loadWeakRetained(&self->_applyController);
    v10 = *MEMORY[0x1E69BA210];
    v13 = *MEMORY[0x1E69BA680];
    v14[0] = *MEMORY[0x1E69BA818];
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    [v9 reportAnalyticsDictionaryForPage:0 subject:v8 pageTag:v10 additionalValues:v11];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v13[1] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = PKApplyTermsAndConditionsViewController;
  [(PKApplyTermsAndConditionsViewController *)&v11 viewDidDisappear:disappear];
  WeakRetained = objc_loadWeakRetained(&self->_applyController);
  featureIdentifier = [WeakRetained featureIdentifier];

  if (featureIdentifier == 2)
  {
    if (self->_termsIdentifier)
    {
      v6 = MEMORY[0x1E69BB698];
    }

    else
    {
      v6 = MEMORY[0x1E69BB6A0];
    }

    v7 = *v6;
    v8 = objc_loadWeakRetained(&self->_applyController);
    v9 = *MEMORY[0x1E69BA210];
    v12 = *MEMORY[0x1E69BA680];
    v13[0] = *MEMORY[0x1E69BA820];
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    [v8 reportAnalyticsDictionaryForPage:0 subject:v7 pageTag:v9 additionalValues:v10];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = PKApplyTermsAndConditionsViewController;
  [(PKApplyTermsAndConditionsViewController *)&v6 viewWillDisappear:disappear];
  inUseAssertion = self->_inUseAssertion;
  if (inUseAssertion)
  {
    [(CLInUseAssertion *)inUseAssertion invalidate];
    v5 = self->_inUseAssertion;
    self->_inUseAssertion = 0;
  }
}

- (id)displayTitle
{
  WeakRetained = objc_loadWeakRetained(&self->_applyController);
  featureIdentifier = [WeakRetained featureIdentifier];

  if (featureIdentifier == 5)
  {
    v5 = 0;
  }

  else
  {
    v6 = objc_loadWeakRetained(&self->_applyController);
    preferredLanguage = [v6 preferredLanguage];

    v5 = PKLocalizedApplyFeatureString();
  }

  return v5;
}

- (void)initalTermsDataWithCompletion:(id)completion
{
  if (self->_preflightPDFTerms)
  {
    [(PKApplyTermsAndConditionsViewController *)self pdfTermsDataWithIdentifier:self->_termsIdentifier completion:completion];
  }

  else
  {
    [(PKApplyTermsAndConditionsViewController *)self htmlTermsDataWithCompletion:completion];
  }
}

- (void)htmlTermsDataWithCompletion:(id)completion
{
  termsIdentifier = self->_termsIdentifier;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_applyController);
  v7 = WeakRetained;
  if (termsIdentifier)
  {
    [WeakRetained termsDataForIdentifier:self->_termsIdentifier format:*MEMORY[0x1E69BC548] completion:completionCopy];
  }

  else
  {
    [WeakRetained termsDataForFeatureWithIdentifier:0 format:*MEMORY[0x1E69BC548] completion:completionCopy];
  }
}

- (void)pdfTermsDataWithIdentifier:(id)identifier completion:(id)completion
{
  termsIdentifier = self->_termsIdentifier;
  completionCopy = completion;
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_applyController);
  v10 = *MEMORY[0x1E69BC550];
  v11 = WeakRetained;
  if (termsIdentifier)
  {
    [WeakRetained termsDataForIdentifier:identifierCopy format:v10 completion:completionCopy];
  }

  else
  {
    [WeakRetained termsDataForFeatureWithIdentifier:identifierCopy format:v10 completion:completionCopy];
  }
}

- (void)reportAnalyticsForTermsLink:(id)link
{
  v13[3] = *MEMORY[0x1E69E9840];
  v4 = [link PKStringForKey:@"termsFileName"];
  WeakRetained = objc_loadWeakRetained(&self->_applyController);
  v6 = *MEMORY[0x1E69BA7C8];
  v7 = *MEMORY[0x1E69BB170];
  v12[0] = *MEMORY[0x1E69BA680];
  v12[1] = v7;
  v8 = *MEMORY[0x1E69BB4C0];
  v13[0] = v6;
  v13[1] = v8;
  v12[2] = *MEMORY[0x1E69BA1F8];
  v9 = *MEMORY[0x1E69BA210];
  if (v4)
  {
    v10 = v4;
  }

  else
  {
    v10 = &stru_1F3BD7330;
  }

  v13[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  [WeakRetained reportAnalyticsDictionaryForPage:0 pageTag:v9 additionalValues:v11];
}

- (void)termsShown
{
  if (self->_termsIdentifier)
  {
    WeakRetained = objc_loadWeakRetained(&self->_applyController);
    [WeakRetained termsShownWithIdentifier:self->_termsIdentifier];
  }
}

- (void)termsAccepted:(BOOL)accepted completion:(id)completion
{
  acceptedCopy = accepted;
  v38[2] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = MEMORY[0x1E69BA2E8];
  if (!acceptedCopy)
  {
    v7 = MEMORY[0x1E69BA618];
  }

  v8 = *v7;
  WeakRetained = objc_loadWeakRetained(&self->_applyController);
  v10 = *MEMORY[0x1E69BA6F0];
  v11 = *MEMORY[0x1E69BA440];
  v37[0] = *MEMORY[0x1E69BA680];
  v37[1] = v11;
  v38[0] = v10;
  v38[1] = v8;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2];
  [WeakRetained reportAnalyticsDictionaryForPage:0 pageTag:*MEMORY[0x1E69BA210] additionalValues:v12];

  v13 = objc_loadWeakRetained(&self->_applyController);
  featureIdentifier = [v13 featureIdentifier];

  if (featureIdentifier == 5 || !acceptedCopy)
  {
    if (!self->_inUseAssertion)
    {
      v24 = MEMORY[0x1E695FBE0];
      v25 = PKPassKitCoreBundle();
      if (acceptedCopy)
      {
        v26 = @"Accepting application terms";
      }

      else
      {
        v26 = @"Declining application terms";
      }

      v27 = [v24 newAssertionForBundle:v25 withReason:v26];
      inUseAssertion = self->_inUseAssertion;
      self->_inUseAssertion = v27;
    }

    objc_initWeak(&location, self);
    v29 = objc_loadWeakRetained(&self->_applyController);
    termsIdentifier = self->_termsIdentifier;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __68__PKApplyTermsAndConditionsViewController_termsAccepted_completion___block_invoke_2;
    v31[3] = &unk_1E801C4F0;
    objc_copyWeak(&v33, &location);
    v31[4] = self;
    v32 = completionCopy;
    [v29 termsAccepted:acceptedCopy termsIdentifier:termsIdentifier secondaryIdentifier:0 actionIdentifier:0 completion:v31];

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }

  else
  {
    v15 = [PKApplyTermsVerifyingViewController alloc];
    v16 = objc_loadWeakRetained(&self->_applyController);
    setupDelegate = [(PKFeatureTermsAndConditionsViewController *)self setupDelegate];
    context = [(PKFeatureTermsAndConditionsViewController *)self context];
    v19 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{self->_termsIdentifier, 0}];
    v20 = [(PKApplyTermsVerifyingViewController *)v15 initWithController:v16 setupDelegate:setupDelegate context:context termsIdentifiers:v19 applyPage:0];

    containerNavigationController = [(PKFeatureTermsAndConditionsViewController *)self containerNavigationController];
    presentingViewController = [(PKApplyTermsAndConditionsViewController *)self presentingViewController];
    objc_opt_class();
    LOBYTE(context) = objc_opt_isKindOfClass();

    if (context)
    {
      presentingViewController2 = [(PKApplyTermsAndConditionsViewController *)self presentingViewController];

      containerNavigationController = presentingViewController2;
    }

    if (containerNavigationController)
    {
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __68__PKApplyTermsAndConditionsViewController_termsAccepted_completion___block_invoke;
      v35[3] = &unk_1E80109C0;
      v35[4] = self;
      v36 = completionCopy;
      [containerNavigationController pk_presentPaymentSetupViewController:v20 animated:0 completion:v35];
    }

    else if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

uint64_t __68__PKApplyTermsAndConditionsViewController_termsAccepted_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 dismissViewControllerWithCompletion:0];
}

void __68__PKApplyTermsAndConditionsViewController_termsAccepted_completion___block_invoke_2(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    if (v5)
    {
      v8 = [a1[4] containerNavigationController];
      v9 = [a1[4] presentingViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v11 = [a1[4] presentingViewController];

        v8 = v11;
      }

      if (v8)
      {
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __68__PKApplyTermsAndConditionsViewController_termsAccepted_completion___block_invoke_3;
        v29[3] = &unk_1E80109C0;
        v31 = a1[5];
        v30 = WeakRetained;
        [v8 pk_presentPaymentSetupViewController:v5 animated:0 completion:v29];
      }

      else
      {
        v25 = a1[5];
        if (v25)
        {
          v25[2]();
        }
      }
    }

    else
    {
      v12 = a1[5];
      if (v6)
      {
        if (v12)
        {
          v12[2]();
        }

        v26 = PKTitleForDisplayableError();
        v13 = MEMORY[0x1BFB42D10](v6);
        v14 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v26 message:v13 preferredStyle:1];
        v15 = objc_loadWeakRetained(a1[4] + 194);
        [v15 featureIdentifier];

        v16 = objc_loadWeakRetained(a1[4] + 194);
        v17 = [v16 preferredLanguage];

        v18 = MEMORY[0x1E69DC648];
        v19 = PKLocalizedApplyFeatureString();
        v20 = [v18 actionWithTitle:v19 style:0 handler:0];
        [v14 addAction:v20];

        v21 = MEMORY[0x1E69DC648];
        v22 = PKLocalizedApplyFeatureString();
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __68__PKApplyTermsAndConditionsViewController_termsAccepted_completion___block_invoke_4;
        v27[3] = &unk_1E80112E8;
        v23 = WeakRetained;
        v28 = v23;
        v24 = [v21 actionWithTitle:v22 style:1 handler:v27];
        [v14 addAction:v24];

        [v23 presentViewController:v14 animated:1 completion:0];
      }

      else
      {
        if (v12)
        {
          v12[2]();
        }

        [WeakRetained _terminateSetupFlow];
      }
    }
  }
}

uint64_t __68__PKApplyTermsAndConditionsViewController_termsAccepted_completion___block_invoke_3(uint64_t a1, char a2)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))();
  }

  result = [*(a1 + 32) dismissViewControllerWithCompletion:0];
  if ((a2 & 1) == 0)
  {
    v6 = *(a1 + 32);

    return [v6 _terminateSetupFlow];
  }

  return result;
}

- (void)presentErrorAlert
{
  WeakRetained = objc_loadWeakRetained(&self->_applyController);
  [WeakRetained featureIdentifier];

  v4 = objc_loadWeakRetained(&self->_applyController);
  preferredLanguage = [v4 preferredLanguage];

  v5 = PKLocalizedApplyFeatureString();
  v6 = PKLocalizedApplyFeatureString();
  v7 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v5 message:v6 preferredStyle:1];
  v8 = MEMORY[0x1E69DC648];
  v9 = PKLocalizedApplyFeatureString();
  v10 = [v8 actionWithTitle:v9 style:1 handler:0];
  [v7 addAction:v10];

  [(PKApplyTermsAndConditionsViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)_terminateSetupFlow
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Terminating setup flow", v7, 2u);
  }

  setupDelegate = [(PKFeatureTermsAndConditionsViewController *)self setupDelegate];
  v5 = setupDelegate;
  if (setupDelegate)
  {
    [setupDelegate viewControllerDidTerminateSetupFlow:self];
  }

  else
  {
    presentingViewController = [(PKApplyTermsAndConditionsViewController *)self presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }
}

@end
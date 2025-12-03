@interface PKApplyExplanationViewController
- (PKApplyExplanationViewController)initWithController:(id)controller setupDelegate:(id)delegate context:(int64_t)context applyPage:(id)page;
- (PKPaymentSetupViewControllerDelegate)setupDelegate;
- (void)_analyticsReportButtonTap:(id)tap;
- (void)_auxiliary;
- (void)_bodyButtonAction;
- (void)_cancel;
- (void)_continue;
- (void)_done;
- (void)_featureApplicationUpdated;
- (void)_learnMore;
- (void)_linkAction:(id)action;
- (void)_performActionForBlock:(id)block;
- (void)_performDoneAction:(BOOL)action;
- (void)_performLearnMoreAction;
- (void)_presentInvitationContactSupport;
- (void)_presentTermsWithIdentifier:(id)identifier;
- (void)handleNextStep;
- (void)handleNextViewController:(id)controller displayableError:(id)error;
- (void)showNavigationBarSpinner:(BOOL)spinner;
- (void)terminateSetupFlow;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation PKApplyExplanationViewController

- (PKApplyExplanationViewController)initWithController:(id)controller setupDelegate:(id)delegate context:(int64_t)context applyPage:(id)page
{
  controllerCopy = controller;
  delegateCopy = delegate;
  pageCopy = page;
  v36.receiver = self;
  v36.super_class = PKApplyExplanationViewController;
  v14 = [(PKDynamicProvisioningPageViewController *)&v36 initWithPage:pageCopy context:context];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_setupDelegate, delegateCopy);
    objc_storeStrong(&v15->_controller, controller);
    objc_initWeak(&location, v15);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __87__PKApplyExplanationViewController_initWithController_setupDelegate_context_applyPage___block_invoke;
    v33[3] = &unk_1E8010998;
    objc_copyWeak(&v34, &location);
    v32.receiver = v15;
    v32.super_class = PKApplyExplanationViewController;
    [(PKDynamicProvisioningPageViewController *)&v32 setPrimaryButtonAction:v33];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __87__PKApplyExplanationViewController_initWithController_setupDelegate_context_applyPage___block_invoke_2;
    v30[3] = &unk_1E8010998;
    objc_copyWeak(&v31, &location);
    v29.receiver = v15;
    v29.super_class = PKApplyExplanationViewController;
    [(PKDynamicProvisioningPageViewController *)&v29 setSecondaryButtonAction:v30];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __87__PKApplyExplanationViewController_initWithController_setupDelegate_context_applyPage___block_invoke_3;
    v27[3] = &unk_1E8010998;
    objc_copyWeak(&v28, &location);
    v26.receiver = v15;
    v26.super_class = PKApplyExplanationViewController;
    [(PKDynamicProvisioningPageViewController *)&v26 setCancelButtonAction:v27];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __87__PKApplyExplanationViewController_initWithController_setupDelegate_context_applyPage___block_invoke_4;
    v24[3] = &unk_1E8010998;
    objc_copyWeak(&v25, &location);
    v23.receiver = v15;
    v23.super_class = PKApplyExplanationViewController;
    [(PKDynamicProvisioningPageViewController *)&v23 setDoneButtonAction:v24];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __87__PKApplyExplanationViewController_initWithController_setupDelegate_context_applyPage___block_invoke_5;
    v21[3] = &unk_1E8010998;
    objc_copyWeak(&v22, &location);
    v20.receiver = v15;
    v20.super_class = PKApplyExplanationViewController;
    [(PKDynamicProvisioningPageViewController *)&v20 setBodyButtonAction:v21];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __87__PKApplyExplanationViewController_initWithController_setupDelegate_context_applyPage___block_invoke_6;
    v18[3] = &unk_1E80126D0;
    objc_copyWeak(&v19, &location);
    v17.receiver = v15;
    v17.super_class = PKApplyExplanationViewController;
    [(PKDynamicProvisioningPageViewController *)&v17 setLinkAction:v18];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&v31);
    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }

  return v15;
}

void __87__PKApplyExplanationViewController_initWithController_setupDelegate_context_applyPage___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _continue];
    WeakRetained = v2;
  }
}

void __87__PKApplyExplanationViewController_initWithController_setupDelegate_context_applyPage___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _auxiliary];
    WeakRetained = v2;
  }
}

void __87__PKApplyExplanationViewController_initWithController_setupDelegate_context_applyPage___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _cancel];
    WeakRetained = v2;
  }
}

void __87__PKApplyExplanationViewController_initWithController_setupDelegate_context_applyPage___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _done];
    WeakRetained = v2;
  }
}

void __87__PKApplyExplanationViewController_initWithController_setupDelegate_context_applyPage___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _learnMore];
    WeakRetained = v2;
  }
}

void __87__PKApplyExplanationViewController_initWithController_setupDelegate_context_applyPage___block_invoke_6(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _linkAction:v5];
  }
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = PKApplyExplanationViewController;
  [(PKDynamicProvisioningPageViewController *)&v17 viewDidLoad];
  currentPage = [(PKApplyExplanationViewController *)self currentPage];
  identifier = [currentPage identifier];

  if (identifier)
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = identifier;
    v7 = [[v5 alloc] initWithObjects:{@"newParticipantInvitationAcceptance", @"participantToParticipantInvitationAcceptance", @"participantToCoOwnerInvitationAcceptance", @"newCoOwnerInvitationAcceptance", @"ownerToCoOwnerInvitationAcceptance", 0}];
    v8 = [v7 containsObject:v6];

    if (v8)
    {
      explanationView = [(PKExplanationViewController *)self explanationView];
      [explanationView setShowPrivacyView:1];
      v10 = [MEMORY[0x1E69B7D50] pk_privacyLinkForContext:4];
      [(PKExplanationViewController *)self setPrivacyLinkController:v10];

      navigationItem = [(PKApplyExplanationViewController *)self navigationItem];
      [navigationItem setHidesBackButton:0];
    }
  }

  controller = [(PKApplyExplanationViewController *)self controller];
  applicationType = [controller applicationType];
  if ((applicationType - 2) < 2)
  {
    explanationView2 = [(PKExplanationViewController *)self explanationView];
    image = [explanationView2 image];
    if (!image)
    {
      v16 = PKFeatureApplicationHeaderImageWithImage([controller featureIdentifier], 0);
      [explanationView2 setImage:v16];
    }

    [explanationView2 setTopMargin:30.0];

    goto LABEL_8;
  }

  if (applicationType == 4 && [controller updateUserInfoSubType] == 4)
  {
    explanationView2 = [(PKExplanationViewController *)self explanationView];
    [explanationView2 setImageStyle:1];
LABEL_8:
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v15[1] = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = PKApplyExplanationViewController;
  [(PKApplyExplanationViewController *)&v13 viewDidAppear:appear];
  controller = [(PKApplyExplanationViewController *)self controller];
  [controller applyFlowDidAppear];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__featureApplicationUpdated name:@"PKApplyControllerUpdatedNotification" object:0];

  v6 = objc_alloc(MEMORY[0x1E695DF90]);
  v14 = *MEMORY[0x1E69BA680];
  v15[0] = *MEMORY[0x1E69BA818];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v8 = [v6 initWithDictionary:v7];

  analyticsAdditionalValues = [(PKApplyExplanationViewController *)self analyticsAdditionalValues];
  [v8 addEntriesFromDictionary:analyticsAdditionalValues];

  controller = self->_controller;
  currentPage = [(PKApplyExplanationViewController *)self currentPage];
  analyticsPageTag = [(PKApplyExplanationViewController *)self analyticsPageTag];
  [(PKApplyController *)controller reportAnalyticsDictionaryForPage:currentPage pageTag:analyticsPageTag additionalValues:v8];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v14[1] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = PKApplyExplanationViewController;
  [(PKApplyExplanationViewController *)&v12 viewDidDisappear:disappear];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"PKApplyControllerUpdatedNotification" object:0];

  v5 = objc_alloc(MEMORY[0x1E695DF90]);
  v13 = *MEMORY[0x1E69BA680];
  v14[0] = *MEMORY[0x1E69BA820];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v7 = [v5 initWithDictionary:v6];

  analyticsAdditionalValues = [(PKApplyExplanationViewController *)self analyticsAdditionalValues];
  [v7 addEntriesFromDictionary:analyticsAdditionalValues];

  controller = self->_controller;
  currentPage = [(PKApplyExplanationViewController *)self currentPage];
  analyticsPageTag = [(PKApplyExplanationViewController *)self analyticsPageTag];
  [(PKApplyController *)controller reportAnalyticsDictionaryForPage:currentPage pageTag:analyticsPageTag additionalValues:v7];
}

- (void)_continue
{
  [(PKApplyExplanationViewController *)self _analyticsReportButtonTap:*MEMORY[0x1E69BA500]];
  continueAction = self->_continueAction;

  [(PKApplyExplanationViewController *)self _performActionForBlock:continueAction];
}

- (void)_auxiliary
{
  [(PKApplyExplanationViewController *)self _analyticsReportButtonTap:*MEMORY[0x1E69BA378]];
  v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"ownerToParticipantImportantInfo", @"coOwnerToParticipantImportantInfo", @"coOwnerToCoOwnerImportantInfo", @"mergeCombinedLimitFailure", @"invitationUnavailable", @"invitationIneligible", 0}];
  currentPage = [(PKApplyExplanationViewController *)self currentPage];
  identifier = [currentPage identifier];
  v5 = [v6 containsObject:identifier];

  if (v5)
  {
    [(PKApplyExplanationViewController *)self _presentInvitationContactSupport];
  }

  else
  {
    [(PKApplyExplanationViewController *)self _performActionForBlock:self->_auxiliaryAction];
  }
}

- (void)_learnMore
{
  [(PKApplyExplanationViewController *)self _analyticsReportButtonTap:*MEMORY[0x1E69BAA58]];

  [(PKApplyExplanationViewController *)self _performLearnMoreAction];
}

- (void)_done
{
  [(PKApplyExplanationViewController *)self _analyticsReportButtonTap:*MEMORY[0x1E69BA640]];

  [(PKApplyExplanationViewController *)self _performDoneAction:1];
}

- (void)_cancel
{
  [(PKApplyExplanationViewController *)self _analyticsReportButtonTap:*MEMORY[0x1E69BA468]];

  [(PKApplyExplanationViewController *)self _performDoneAction:0];
}

- (void)_linkAction:(id)action
{
  location[3] = *MEMORY[0x1E69E9840];
  actionCopy = action;
  linkURL = [actionCopy linkURL];
  termsIdentifier = [actionCopy termsIdentifier];
  controller = [(PKApplyExplanationViewController *)self controller];
  account = [controller account];

  if (termsIdentifier)
  {
    if (account)
    {
      v9 = [PKAccountTermsAndConditionsController alloc];
      mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
      v11 = [(PKAccountTermsAndConditionsController *)v9 initWithAccount:account webService:mEMORY[0x1E69B8EF8] context:[(PKExplanationViewController *)self context] termsIdentifier:termsIdentifier];
      termsController = self->_termsController;
      self->_termsController = v11;

      objc_initWeak(location, self);
      v13 = self->_termsController;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __48__PKApplyExplanationViewController__linkAction___block_invoke;
      v17[3] = &unk_1E80162F0;
      objc_copyWeak(&v18, location);
      [(PKAccountTermsAndConditionsController *)v13 termsViewControllerWithCompletion:v17];
      objc_destroyWeak(&v18);
      objc_destroyWeak(location);
    }

    else
    {
      v15 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(location[0]) = 138412290;
        *(location + 4) = termsIdentifier;
        _os_log_impl(&dword_1BD026000, v15, OS_LOG_TYPE_DEFAULT, "Error: there is no account on PKApplyController in order to open termsIdentifier %@", location, 0xCu);
      }
    }
  }

  else if (linkURL)
  {
    if (PKIsURLHttpScheme())
    {
      v14 = [objc_alloc(MEMORY[0x1E697A838]) initWithURL:linkURL];
      [v14 setModalPresentationStyle:2];
      [(PKApplyExplanationViewController *)self presentViewController:v14 animated:1 completion:0];
    }

    else
    {
      defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
      [defaultWorkspace openSensitiveURL:linkURL withOptions:0];
    }
  }
}

void __48__PKApplyExplanationViewController__linkAction___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v5)
    {
      v7 = PKAlertForDisplayableErrorWithHandlers(v5, 0, 0, 0);
      v8 = [WeakRetained navigationController];
      [v8 presentViewController:v7 animated:1 completion:0];
    }

    else if (v9)
    {
      [WeakRetained presentViewController:v9 animated:1 completion:0];
    }
  }
}

- (void)_analyticsReportButtonTap:(id)tap
{
  v16[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DF90];
  tapCopy = tap;
  v6 = [v4 alloc];
  v7 = *MEMORY[0x1E69BA6F0];
  v8 = *MEMORY[0x1E69BA440];
  v15[0] = *MEMORY[0x1E69BA680];
  v15[1] = v8;
  v16[0] = v7;
  v16[1] = tapCopy;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v10 = [v6 initWithDictionary:v9];

  analyticsAdditionalValues = [(PKApplyExplanationViewController *)self analyticsAdditionalValues];
  [v10 addEntriesFromDictionary:analyticsAdditionalValues];

  controller = self->_controller;
  currentPage = [(PKApplyExplanationViewController *)self currentPage];
  analyticsPageTag = [(PKApplyExplanationViewController *)self analyticsPageTag];
  [(PKApplyController *)controller reportAnalyticsDictionaryForPage:currentPage pageTag:analyticsPageTag additionalValues:v10];
}

- (void)_performActionForBlock:(id)block
{
  blockCopy = block;
  v7 = blockCopy;
  if (!blockCopy || (v5 = blockCopy[2](), v6 = v7, v5))
  {
    [(PKApplyExplanationViewController *)self handleNextStep];
    v6 = v7;
  }
}

- (void)_performLearnMoreAction
{
  v3 = _Block_copy(self->_learnMoreAction);
  v6 = v3;
  if (!v3 || (v4 = v3[2](), v5 = v6, v4))
  {
    [(PKApplyExplanationViewController *)self _bodyButtonAction];
    v5 = v6;
  }
}

- (void)_performDoneAction:(BOOL)action
{
  actionCopy = action;
  v5 = _Block_copy(self->_doneAction);
  v8 = v5;
  if (!v5 || (v6 = v5[2](v5, actionCopy), v7 = v8, v6))
  {
    [(PKApplyExplanationViewController *)self handleNextStep];
    v7 = v8;
  }
}

- (void)handleNextStep
{
  [(PKApplyExplanationViewController *)self showNavigationBarSpinner:1];
  objc_initWeak(&location, self);
  controller = self->_controller;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__PKApplyExplanationViewController_handleNextStep__block_invoke;
  v4[3] = &unk_1E80162F0;
  objc_copyWeak(&v5, &location);
  [(PKApplyController *)controller nextViewControllerWithCompletion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __50__PKApplyExplanationViewController_handleNextStep__block_invoke(uint64_t a1, void *a2, void *a3)
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

- (void)handleNextViewController:(id)controller displayableError:(id)error
{
  v24 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  errorCopy = error;
  v8 = errorCopy;
  if (controllerCopy)
  {
    navigationController = [(PKApplyExplanationViewController *)self navigationController];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __78__PKApplyExplanationViewController_handleNextViewController_displayableError___block_invoke;
    v21[3] = &unk_1E8011D28;
    v21[4] = self;
    [navigationController pk_presentPaymentSetupViewController:controllerCopy animated:1 completion:v21];
LABEL_21:

    goto LABEL_22;
  }

  if (errorCopy)
  {
    underlyingErrors = [errorCopy underlyingErrors];
    navigationController = [underlyingErrors firstObject];

    domain = [navigationController domain];
    v12 = *MEMORY[0x1E69BB758];
    v13 = domain;
    v14 = v13;
    if (v13 == v12)
    {
    }

    else
    {
      if (!v13 || !v12)
      {

LABEL_14:
        goto LABEL_15;
      }

      v15 = [v13 isEqualToString:v12];

      if (!v15)
      {
        goto LABEL_14;
      }
    }

    code = [navigationController code];

    if (code == 1)
    {
      [(PKApplyExplanationViewController *)self showNavigationBarSpinner:0];
      goto LABEL_21;
    }

LABEL_15:
    v17 = PKAlertForDisplayableErrorWithHandlers(v8, 0, 0, 0);
    if (v17)
    {
      navigationController2 = [(PKApplyExplanationViewController *)self navigationController];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __78__PKApplyExplanationViewController_handleNextViewController_displayableError___block_invoke_2;
      v20[3] = &unk_1E8010970;
      v20[4] = self;
      [navigationController2 presentViewController:v17 animated:1 completion:v20];
    }

    else
    {
      v19 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23 = v8;
        _os_log_impl(&dword_1BD026000, v19, OS_LOG_TYPE_DEFAULT, "Error could not generate alertController for: %@", buf, 0xCu);
      }

      [(PKApplyExplanationViewController *)self showNavigationBarSpinner:0];
      [(PKApplyExplanationViewController *)self terminateSetupFlow];
    }

    goto LABEL_21;
  }

  [(PKApplyExplanationViewController *)self showNavigationBarSpinner:0];
  [(PKApplyExplanationViewController *)self terminateSetupFlow];
LABEL_22:
}

uint64_t __78__PKApplyExplanationViewController_handleNextViewController_displayableError___block_invoke(uint64_t a1, char a2)
{
  result = [*(a1 + 32) showNavigationBarSpinner:0];
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 32);

    return [v5 terminateSetupFlow];
  }

  return result;
}

- (void)terminateSetupFlow
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Terminating setup flow", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained viewControllerDidTerminateSetupFlow:self];
  }

  else
  {
    presentingViewController = [(PKApplyExplanationViewController *)self presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)showNavigationBarSpinner:(BOOL)spinner
{
  spinnerCopy = spinner;
  v13 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = PKApplyExplanationViewController;
  [(PKExplanationViewController *)&v8 showNavigationBarSpinner:?];
  self->_isLoading = spinnerCopy;
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  [mEMORY[0x1E69DC668] _setIdleTimerDisabled:spinnerCopy forReason:@"Submitting Application information"];

  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"enabled";
    if (spinnerCopy)
    {
      v7 = @"disabled";
    }

    *buf = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = @"Submitting Application information";
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Idle timer is: %@ for reason: %@", buf, 0x16u);
  }
}

- (void)_featureApplicationUpdated
{
  v15 = *MEMORY[0x1E69E9840];
  isLoading = self->_isLoading;
  v4 = PKLogFacilityTypeGetObject();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (isLoading)
  {
    if (v5)
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "%@ Application update received but current view controller is loading - skipping update", buf, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138412290;
      v14 = v9;
      _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "%@ Application update received presenting next step", buf, 0xCu);
    }

    controller = [(PKApplyExplanationViewController *)self controller];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __62__PKApplyExplanationViewController__featureApplicationUpdated__block_invoke;
    v12[3] = &unk_1E8010970;
    v12[4] = self;
    v11 = [controller applicationUpdatedAlertControllerWithHandler:v12];

    [(PKApplyExplanationViewController *)self presentViewController:v11 animated:1 completion:0];
  }
}

- (void)_bodyButtonAction
{
  page = [(PKDynamicProvisioningPageViewController *)self page];
  learnMore = [page learnMore];

  buttonURL = [learnMore buttonURL];
  termsIdentifier = [learnMore termsIdentifier];
  v6 = termsIdentifier;
  if (buttonURL)
  {
    defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
    [defaultWorkspace openURL:buttonURL configuration:0 completionHandler:0];
  }

  else if (termsIdentifier)
  {
    [(PKApplyExplanationViewController *)self _presentTermsWithIdentifier:termsIdentifier];
  }

  else
  {
    v8 = [[PKPaymentMoreInformationViewController alloc] initWithContext:[(PKExplanationViewController *)self context]];
    title = [learnMore title];
    [(PKPaymentMoreInformationViewController *)v8 setDetailTitle:title];

    subtitle = [learnMore subtitle];
    [(PKPaymentMoreInformationViewController *)v8 setDetailSubtitle:subtitle];

    body = [learnMore body];
    [(PKPaymentMoreInformationViewController *)v8 setDetailBody:body];

    businessChatIntentName = [learnMore businessChatIntentName];
    [(PKPaymentMoreInformationViewController *)v8 setBusinessChatIntentName:businessChatIntentName];

    businessChatButtonTitle = [learnMore businessChatButtonTitle];
    [(PKPaymentMoreInformationViewController *)v8 setBusinessChatButtonTitle:businessChatButtonTitle];

    featureApplication = [(PKApplyController *)self->_controller featureApplication];
    businessChatIdentifier = [featureApplication businessChatIdentifier];
    [(PKPaymentMoreInformationViewController *)v8 setBusinessChatIdentifier:businessChatIdentifier];

    navigationController = [(PKApplyExplanationViewController *)self navigationController];
    [navigationController pushViewController:v8 animated:1];
  }
}

- (void)_presentTermsWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(PKApplyExplanationViewController *)self showNavigationBarSpinner:1];
  v5 = [PKApplyTermsAndConditionsViewController alloc];
  controller = [(PKApplyExplanationViewController *)self controller];
  setupDelegate = [(PKApplyExplanationViewController *)self setupDelegate];
  v8 = [(PKApplyTermsAndConditionsViewController *)v5 initWithController:controller setupDelegate:setupDelegate context:[(PKExplanationViewController *)self context] termsIdentifier:identifierCopy];

  [(PKApplyTermsAndConditionsViewController *)v8 setPreflightPDFTerms:1];
  objc_initWeak(&location, self);
  navigationController = [(PKApplyExplanationViewController *)self navigationController];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__PKApplyExplanationViewController__presentTermsWithIdentifier___block_invoke;
  v10[3] = &unk_1E8011180;
  objc_copyWeak(&v11, &location);
  [navigationController pk_presentPaymentSetupViewController:v8 animated:1 completion:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __64__PKApplyExplanationViewController__presentTermsWithIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained showNavigationBarSpinner:0];
    WeakRetained = v2;
  }
}

- (void)_presentInvitationContactSupport
{
  if (+[PKBusinessChatController deviceSupportsBusinessChat])
  {
    controller = [(PKApplyExplanationViewController *)self controller];
    featureApplication = [controller featureApplication];
    businessChatIdentifier = [featureApplication businessChatIdentifier];

    if (businessChatIdentifier)
    {
      if (!self->_businessChatController)
      {
        v6 = objc_alloc_init(PKBusinessChatController);
        businessChatController = self->_businessChatController;
        self->_businessChatController = v6;
      }

      v8 = objc_alloc_init(MEMORY[0x1E69B8658]);
      v29[0] = 0;
      v29[1] = v29;
      v29[2] = 0x3032000000;
      v29[3] = __Block_byref_object_copy__50;
      v29[4] = __Block_byref_object_dispose__50;
      v30 = 0;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __68__PKApplyExplanationViewController__presentInvitationContactSupport__block_invoke;
      v26[3] = &unk_1E8016750;
      v9 = controller;
      v27 = v9;
      v28 = v29;
      [v8 addOperation:v26];
      v24[0] = 0;
      v24[1] = v24;
      v24[2] = 0x3032000000;
      v24[3] = __Block_byref_object_copy__50;
      v24[4] = __Block_byref_object_dispose__50;
      v25 = 0;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __68__PKApplyExplanationViewController__presentInvitationContactSupport__block_invoke_3;
      v21[3] = &unk_1E8016750;
      v10 = v9;
      v22 = v10;
      v23 = v24;
      [v8 addOperation:v21];
      objc_initWeak(&location, self);
      null = [MEMORY[0x1E695DFB0] null];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __68__PKApplyExplanationViewController__presentInvitationContactSupport__block_invoke_5;
      v13[3] = &unk_1E8020428;
      v14 = businessChatIdentifier;
      v17 = v29;
      v18 = v24;
      v15 = v10;
      selfCopy = self;
      objc_copyWeak(&v19, &location);
      v12 = [v8 evaluateWithInput:null completion:v13];

      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);

      _Block_object_dispose(v24, 8);
      _Block_object_dispose(v29, 8);
    }
  }
}

void __68__PKApplyExplanationViewController__presentInvitationContactSupport__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__PKApplyExplanationViewController__presentInvitationContactSupport__block_invoke_2;
  v12[3] = &unk_1E8012DD0;
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v14 = v7;
  v15 = v8;
  v13 = v6;
  v10 = v6;
  v11 = v7;
  [v9 accountUserInvitationsWithCompletion:v12];
}

uint64_t __68__PKApplyExplanationViewController__presentInvitationContactSupport__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(a1 + 40) + 16);

  return v6();
}

void __68__PKApplyExplanationViewController__presentInvitationContactSupport__block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__PKApplyExplanationViewController__presentInvitationContactSupport__block_invoke_4;
  v12[3] = &unk_1E8012DD0;
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v14 = v7;
  v15 = v8;
  v13 = v6;
  v10 = v6;
  v11 = v7;
  [v9 featureApplicationsWithCompletion:v12];
}

uint64_t __68__PKApplyExplanationViewController__presentInvitationContactSupport__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(a1 + 40) + 16);

  return v6();
}

void __68__PKApplyExplanationViewController__presentInvitationContactSupport__block_invoke_5(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [PKBusinessChatInvitationContext alloc];
  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) account];
  v11 = [*(a1 + 40) featureApplication];
  v12 = [(PKBusinessChatInvitationContext *)v8 initWithBusinessChatIdentifier:v9 account:v10 invitation:v11 pendingInvitations:*(*(*(a1 + 56) + 8) + 40) featureApplications:*(*(*(a1 + 64) + 8) + 40)];

  v13 = *(*(a1 + 48) + 1152);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68__PKApplyExplanationViewController__presentInvitationContactSupport__block_invoke_6;
  v14[3] = &unk_1E8011338;
  objc_copyWeak(&v15, (a1 + 72));
  [v13 openBusinessChatWithContext:v12 completion:v14];
  objc_destroyWeak(&v15);
}

void __68__PKApplyExplanationViewController__presentInvitationContactSupport__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__PKApplyExplanationViewController__presentInvitationContactSupport__block_invoke_7;
  v5[3] = &unk_1E80110E0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __68__PKApplyExplanationViewController__presentInvitationContactSupport__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v5 = WeakRetained;
    if (v3)
    {
      v4 = PKAlertForDisplayableErrorWithHandlers(v3, 0, 0, 0);
      [v5 presentViewController:v4 animated:1 completion:0];

      WeakRetained = v5;
    }

    [WeakRetained _continue];
    WeakRetained = v5;
  }
}

- (PKPaymentSetupViewControllerDelegate)setupDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);

  return WeakRetained;
}

@end
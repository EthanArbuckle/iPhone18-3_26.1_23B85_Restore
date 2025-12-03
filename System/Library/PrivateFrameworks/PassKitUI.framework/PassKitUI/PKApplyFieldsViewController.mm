@interface PKApplyFieldsViewController
- (BOOL)fieldCellEditableTextFieldShouldBeginEditing:(id)editing;
- (BOOL)shouldAppearWithFirstEmptyFieldAsFirstResponder;
- (PKApplyFieldsViewController)initWithController:(id)controller setupDelegate:(id)delegate applyPage:(id)page;
- (void)_analyticsReportError:(id)error;
- (void)_analyticsReportRowTapForFieldCell:(id)cell;
- (void)_completeInWalletLater;
- (void)_featureApplicationUpdated;
- (void)_handleLearnMoreTapped;
- (void)_handleNextStep;
- (void)_handleNextViewController:(id)controller displayableError:(id)error terminationHandler:(id)handler;
- (void)_handleURL:(id)l;
- (void)_presentTermsViewControllerForIdentifier:(id)identifier;
- (void)_terminateFlow;
- (void)_withdrawApplicationTapped;
- (void)didTapFooterLink:(id)link;
- (void)didTapLink:(id)link termsIdentifier:(id)identifier analyticsIdentifier:(id)analyticsIdentifier;
- (void)fieldCellDidTapButton:(id)button;
- (void)handleCancelTapped;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation PKApplyFieldsViewController

- (PKApplyFieldsViewController)initWithController:(id)controller setupDelegate:(id)delegate applyPage:(id)page
{
  controllerCopy = controller;
  pageCopy = page;
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = PKApplyFieldsViewController;
  v12 = -[PKDynamicProvisioningFieldsPageViewController initWithWebService:context:setupDelegate:fieldsPage:](&v14, sel_initWithWebService_context_setupDelegate_fieldsPage_, 0, [controllerCopy context], delegateCopy, pageCopy);

  if (v12)
  {
    objc_storeStrong(&v12->_controller, controller);
    objc_storeStrong(&v12->_applyPage, page);
  }

  return v12;
}

- (void)viewDidLoad
{
  v41 = *MEMORY[0x1E69E9840];
  v39.receiver = self;
  v39.super_class = PKApplyFieldsViewController;
  [(PKDynamicProvisioningFieldsPageViewController *)&v39 viewDidLoad];
  footerContent = [(PKApplyRequiredFieldsPage *)self->_applyPage footerContent];
  footerText = [footerContent footerText];
  dockView = [(PKPaymentSetupTableViewController *)self dockView];
  if (footerContent)
  {
    v2 = footerText == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    v26 = objc_alloc_init(PKMultiHyperlinkView);
    [(PKMultiHyperlinkView *)v26 setText:footerText];
    [(PKMultiHyperlinkView *)v26 setTextAlignment:1];
    objc_initWeak(&location, self);
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    links = [footerContent links];
    v5 = [links countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v5)
    {
      v6 = *v35;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v35 != v6)
          {
            objc_enumerationMutation(links);
          }

          v8 = *(*(&v34 + 1) + 8 * i);
          v9 = [PKTextRangeHyperlink alloc];
          linkText = [v8 linkText];
          v32[0] = MEMORY[0x1E69E9820];
          v32[1] = 3221225472;
          v32[2] = __42__PKApplyFieldsViewController_viewDidLoad__block_invoke;
          v32[3] = &unk_1E80110E0;
          objc_copyWeak(&v33, &location);
          v32[4] = v8;
          v11 = [(PKTextRangeHyperlink *)v9 initWithLinkText:linkText action:v32];

          [v3 safelyAddObject:v11];
          objc_destroyWeak(&v33);
        }

        v5 = [links countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v5);
    }

    v12 = [v3 count];
    if (v12)
    {
      v13 = [v3 copy];
    }

    else
    {
      v13 = 0;
    }

    [(PKMultiHyperlinkView *)v26 setSources:v13];
    if (v12)
    {
    }

    [dockView setAdditionalView:v26];
    [dockView setAdditionalViewBottomPadding:16.0];

    objc_destroyWeak(&location);
  }

  headerView = [(PKPaymentSetupFieldsViewController *)self headerView];
  if (([(PKApplyController *)self->_controller applicationType]& 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    identifier = [(PKApplyRequiredFieldsPage *)self->_applyPage identifier];
    if (identifier != @"creditReporting")
    {
      v16 = identifier;
      if (!identifier || (v17 = [(__CFString *)identifier isEqualToString:@"creditReporting"], v16, v16, (v17 & 1) == 0))
      {
        v18 = PKFeatureApplicationHeaderImageWithImage([(PKApplyController *)self->_controller featureIdentifier], 0);
        [v18 size];
        [headerView setImageViewImage:v18 withSize:0 animated:?];
      }
    }
  }

  learnMore = [(PKApplyRequiredFieldsPage *)self->_applyPage learnMore];
  title = [learnMore title];
  v21 = [title length] == 0;

  if (!v21)
  {
    [headerView setActionButtonUsesLearnMoreStyle:1];
    buttonTitle = [learnMore buttonTitle];
    [headerView setActionTitle:buttonTitle];

    objc_initWeak(&location, self);
    v23 = MEMORY[0x1E69DC628];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __42__PKApplyFieldsViewController_viewDidLoad__block_invoke_2;
    v30[3] = &unk_1E8010A60;
    objc_copyWeak(&v31, &location);
    v24 = [v23 actionWithHandler:v30];
    [headerView setActionButtonAction:v24];

    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }
}

void __42__PKApplyFieldsViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained didTapFooterLink:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void __42__PKApplyFieldsViewController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleLearnMoreTapped];
}

- (void)viewDidAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = PKApplyFieldsViewController;
  [(PKPaymentSetupFieldsViewController *)&v10 viewDidAppear:appear];
  [(PKApplyController *)self->_controller applyFlowDidAppear];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__featureApplicationUpdated name:@"PKApplyControllerUpdatedNotification" object:0];

  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  fieldModel = [(PKApplyRequiredFieldsPage *)self->_applyPage fieldModel];
  setupFieldAnalytics = [fieldModel setupFieldAnalytics];
  [v5 addEntriesFromDictionary:setupFieldAnalytics];

  [v5 setObject:*MEMORY[0x1E69BA818] forKey:*MEMORY[0x1E69BA680]];
  controller = self->_controller;
  currentPage = [(PKApplyFieldsViewController *)self currentPage];
  [(PKApplyController *)controller reportAnalyticsDictionaryForPage:currentPage pageTag:*MEMORY[0x1E69BA1E0] additionalValues:v5];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v10.receiver = self;
  v10.super_class = PKApplyFieldsViewController;
  [(PKApplyFieldsViewController *)&v10 viewDidDisappear:disappear];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"PKApplyControllerUpdatedNotification" object:0];

  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  fieldModel = [(PKApplyRequiredFieldsPage *)self->_applyPage fieldModel];
  setupFieldAnalytics = [fieldModel setupFieldAnalytics];
  [v5 addEntriesFromDictionary:setupFieldAnalytics];

  [v5 setObject:*MEMORY[0x1E69BA820] forKey:*MEMORY[0x1E69BA680]];
  controller = self->_controller;
  currentPage = [(PKApplyFieldsViewController *)self currentPage];
  [(PKApplyController *)controller reportAnalyticsDictionaryForPage:currentPage pageTag:*MEMORY[0x1E69BA1E0] additionalValues:v5];
}

- (void)didTapFooterLink:(id)link
{
  linkCopy = link;
  linkURL = [linkCopy linkURL];
  termsIdentifier = [linkCopy termsIdentifier];
  analyticsIdentifier = [linkCopy analyticsIdentifier];

  [(PKApplyFieldsViewController *)self didTapLink:linkURL termsIdentifier:termsIdentifier analyticsIdentifier:analyticsIdentifier];
}

- (void)didTapLink:(id)link termsIdentifier:(id)identifier analyticsIdentifier:(id)analyticsIdentifier
{
  v17[2] = *MEMORY[0x1E69E9840];
  linkCopy = link;
  identifierCopy = identifier;
  analyticsIdentifierCopy = analyticsIdentifier;
  if (analyticsIdentifierCopy)
  {
    controller = self->_controller;
    currentPage = [(PKApplyFieldsViewController *)self currentPage];
    v13 = *MEMORY[0x1E69BA6F0];
    v14 = *MEMORY[0x1E69BA440];
    v16[0] = *MEMORY[0x1E69BA680];
    v16[1] = v14;
    v17[0] = v13;
    v17[1] = analyticsIdentifierCopy;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
    [(PKApplyController *)controller reportAnalyticsDictionaryForPage:currentPage pageTag:0 additionalValues:v15];
  }

  if (identifierCopy)
  {
    [(PKApplyFieldsViewController *)self _presentTermsViewControllerForIdentifier:identifierCopy];
  }

  else if (linkCopy)
  {
    [(PKApplyFieldsViewController *)self _handleURL:linkCopy];
  }
}

- (void)_featureApplicationUpdated
{
  v14 = *MEMORY[0x1E69E9840];
  isLoading = [(PKDynamicProvisioningFieldsPageViewController *)self isLoading];
  v4 = PKLogFacilityTypeGetObject();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (isLoading)
  {
    if (v5)
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138412290;
      v13 = v7;
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
      v13 = v9;
      _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "%@ Application update received presenting next step", buf, 0xCu);
    }

    controller = self->_controller;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __57__PKApplyFieldsViewController__featureApplicationUpdated__block_invoke;
    v11[3] = &unk_1E8010970;
    v11[4] = self;
    v4 = [(PKApplyController *)controller applicationUpdatedAlertControllerWithHandler:v11];
    [(PKApplyFieldsViewController *)self presentViewController:v4 animated:1 completion:0];
  }
}

uint64_t __57__PKApplyFieldsViewController__featureApplicationUpdated__block_invoke(uint64_t a1)
{
  [*(a1 + 32) showSpinner:1];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1320);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__PKApplyFieldsViewController__featureApplicationUpdated__block_invoke_2;
  v5[3] = &unk_1E8011D00;
  v5[4] = v2;
  return [v3 nextViewControllerWithCompletion:v5];
}

uint64_t __57__PKApplyFieldsViewController__featureApplicationUpdated__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__PKApplyFieldsViewController__featureApplicationUpdated__block_invoke_3;
  v5[3] = &unk_1E8010970;
  v5[4] = v3;
  return [v3 _handleNextViewController:a2 displayableError:a3 terminationHandler:v5];
}

- (void)_withdrawApplicationTapped
{
  [(PKDynamicProvisioningFieldsPageViewController *)self showSpinner:1];
  objc_initWeak(&location, self);
  controller = self->_controller;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__PKApplyFieldsViewController__withdrawApplicationTapped__block_invoke;
  v4[3] = &unk_1E80162F0;
  objc_copyWeak(&v5, &location);
  [(PKApplyController *)controller withdrawApplicationWithCompletion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __57__PKApplyFieldsViewController__withdrawApplicationTapped__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v5)
    {
      v9 = [WeakRetained navigationController];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __57__PKApplyFieldsViewController__withdrawApplicationTapped__block_invoke_2;
      v12[3] = &unk_1E8011D28;
      v13 = v8;
      [v9 pk_presentPaymentSetupViewController:v5 animated:1 completion:v12];
    }

    else
    {
      [WeakRetained showSpinner:0];
      if (v6)
      {
        v10 = PKAlertForDisplayableErrorWithHandlers(v6, 0, 0, 0);
        v11 = [v8 navigationController];
        [v11 presentViewController:v10 animated:1 completion:0];
      }

      else
      {
        [v8[165] endApplyFlow];
        [v8 _terminateFlow];
      }
    }
  }
}

uint64_t __57__PKApplyFieldsViewController__withdrawApplicationTapped__block_invoke_2(uint64_t a1, char a2)
{
  result = [*(a1 + 32) showSpinner:0];
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 32);

    return [v5 _terminateFlow];
  }

  return result;
}

- (void)_completeInWalletLater
{
  [(PKApplyController *)self->_controller endApplyFlow];

  [(PKApplyFieldsViewController *)self _handleNextStep];
}

- (void)fieldCellDidTapButton:(id)button
{
  v5.receiver = self;
  v5.super_class = PKApplyFieldsViewController;
  buttonCopy = button;
  [(PKPaymentSetupFieldsViewController *)&v5 fieldCellDidTapButton:buttonCopy];
  [(PKApplyFieldsViewController *)self _analyticsReportRowTapForFieldCell:buttonCopy, v5.receiver, v5.super_class];
}

- (BOOL)fieldCellEditableTextFieldShouldBeginEditing:(id)editing
{
  editingCopy = editing;
  [(PKApplyFieldsViewController *)self _analyticsReportRowTapForFieldCell:editingCopy];
  v6.receiver = self;
  v6.super_class = PKApplyFieldsViewController;
  LOBYTE(self) = [(PKPaymentSetupFieldsViewController *)&v6 fieldCellEditableTextFieldShouldBeginEditing:editingCopy];

  return self;
}

- (BOOL)shouldAppearWithFirstEmptyFieldAsFirstResponder
{
  firstEmptySetupField = [(PKPaymentSetupFieldsViewController *)self firstEmptySetupField];
  identifier = [firstEmptySetupField identifier];
  v4 = [identifier isEqualToString:*MEMORY[0x1E69BC1E0]];

  return v4 ^ 1;
}

- (void)handleCancelTapped
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__PKApplyFieldsViewController_handleCancelTapped__block_invoke;
  aBlock[3] = &unk_1E8010970;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = [(PKApplyController *)self->_controller cancelAlertWithContinueAction:v3];
  if (v4)
  {
    navigationController = [(PKApplyFieldsViewController *)self navigationController];
    [navigationController presentViewController:v4 animated:1 completion:0];
  }

  else
  {
    v3[2](v3);
  }
}

uint64_t __49__PKApplyFieldsViewController_handleCancelTapped__block_invoke(uint64_t a1)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = v2[165];
  v4 = [v2 currentPage];
  v5 = *MEMORY[0x1E69BA1E0];
  v6 = *MEMORY[0x1E69BA440];
  v12[0] = *MEMORY[0x1E69BA680];
  v12[1] = v6;
  v7 = *MEMORY[0x1E69BA448];
  v13[0] = *MEMORY[0x1E69BA6F0];
  v13[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  [v3 reportAnalyticsDictionaryForPage:v4 pageTag:v5 additionalValues:v8];

  v9 = [*(*(a1 + 32) + 1320) featureIdentifier];
  v10 = *(a1 + 32);
  if (v9 != 5)
  {
    return [v10 _withdrawApplicationTapped];
  }

  [v10[165] endApplyFlow];
  return [*(a1 + 32) _terminateFlow];
}

- (void)_handleNextStep
{
  v15[2] = *MEMORY[0x1E69E9840];
  [(PKDynamicProvisioningFieldsPageViewController *)self showSpinner:1];
  controller = self->_controller;
  currentPage = [(PKApplyFieldsViewController *)self currentPage];
  v5 = *MEMORY[0x1E69BA6F0];
  v6 = *MEMORY[0x1E69BA440];
  v14[0] = *MEMORY[0x1E69BA680];
  v14[1] = v6;
  v7 = *MEMORY[0x1E69BAB18];
  v15[0] = v5;
  v15[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  [(PKApplyController *)controller reportAnalyticsDictionaryForPage:currentPage pageTag:*MEMORY[0x1E69BA1E0] additionalValues:v8];

  objc_initWeak(&location, self);
  v9 = self->_controller;
  applyPage = self->_applyPage;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __46__PKApplyFieldsViewController__handleNextStep__block_invoke;
  v11[3] = &unk_1E80162F0;
  objc_copyWeak(&v12, &location);
  [(PKApplyController *)v9 submitFieldsPage:applyPage completion:v11];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __46__PKApplyFieldsViewController__handleNextStep__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __46__PKApplyFieldsViewController__handleNextStep__block_invoke_2;
    v9[3] = &unk_1E8010970;
    v9[4] = WeakRetained;
    [WeakRetained _handleNextViewController:v5 displayableError:v6 terminationHandler:v9];
  }
}

uint64_t __46__PKApplyFieldsViewController__handleNextStep__block_invoke_2(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Error: No next step to take. Terminating setup flow - File a radar", v4, 2u);
  }

  return [*(a1 + 32) _terminateFlow];
}

- (void)_handleNextViewController:(id)controller displayableError:(id)error terminationHandler:(id)handler
{
  controllerCopy = controller;
  errorCopy = error;
  handlerCopy = handler;
  if (controllerCopy)
  {
    navigationController = [(PKApplyFieldsViewController *)self navigationController];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __93__PKApplyFieldsViewController__handleNextViewController_displayableError_terminationHandler___block_invoke;
    v14[3] = &unk_1E8011D28;
    v14[4] = self;
    [navigationController pk_presentPaymentSetupViewController:controllerCopy animated:1 delay:0 completion:v14];
LABEL_5:

    goto LABEL_6;
  }

  [(PKDynamicProvisioningFieldsPageViewController *)self showSpinner:0];
  if (errorCopy)
  {
    [(PKApplyFieldsViewController *)self _analyticsReportError:errorCopy];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __93__PKApplyFieldsViewController__handleNextViewController_displayableError_terminationHandler___block_invoke_2;
    v13[3] = &unk_1E8010970;
    v13[4] = self;
    navigationController = PKAlertForDisplayableErrorWithHandlers(errorCopy, 0, v13, 0);
    navigationController2 = [(PKApplyFieldsViewController *)self navigationController];
    [navigationController2 presentViewController:navigationController animated:1 completion:0];

    goto LABEL_5;
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }

LABEL_6:
}

uint64_t __93__PKApplyFieldsViewController__handleNextViewController_displayableError_terminationHandler___block_invoke(uint64_t a1, char a2)
{
  result = [*(a1 + 32) showSpinner:0];
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 32);

    return [v5 _terminateFlow];
  }

  return result;
}

void __93__PKApplyFieldsViewController__handleNextViewController_displayableError_terminationHandler___block_invoke_2(uint64_t a1)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = v1[165];
  v3 = [v1 currentPage];
  v4 = *MEMORY[0x1E69BA1E0];
  v5 = *MEMORY[0x1E69BA440];
  v8[0] = *MEMORY[0x1E69BA680];
  v8[1] = v5;
  v6 = *MEMORY[0x1E69BAB80];
  v9[0] = *MEMORY[0x1E69BA6F0];
  v9[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  [v2 reportAnalyticsDictionaryForPage:v3 pageTag:v4 additionalValues:v7];
}

- (void)_handleLearnMoreTapped
{
  learnMore = [(PKApplyRequiredFieldsPage *)self->_applyPage learnMore];
  buttonURL = [learnMore buttonURL];
  termsIdentifier = [learnMore termsIdentifier];
  v5 = termsIdentifier;
  if (buttonURL)
  {
    [(PKApplyFieldsViewController *)self _handleURL:buttonURL];
  }

  else if (termsIdentifier)
  {
    [(PKApplyFieldsViewController *)self _presentTermsViewControllerForIdentifier:termsIdentifier];
  }

  else
  {
    v6 = [[PKPaymentMoreInformationViewController alloc] initWithContext:[(PKPaymentSetupTableViewController *)self context]];
    title = [learnMore title];
    [(PKPaymentMoreInformationViewController *)v6 setDetailTitle:title];

    subtitle = [learnMore subtitle];
    [(PKPaymentMoreInformationViewController *)v6 setDetailSubtitle:subtitle];

    body = [learnMore body];
    [(PKPaymentMoreInformationViewController *)v6 setDetailBody:body];

    businessChatIntentName = [learnMore businessChatIntentName];
    [(PKPaymentMoreInformationViewController *)v6 setBusinessChatIntentName:businessChatIntentName];

    businessChatButtonTitle = [learnMore businessChatButtonTitle];
    [(PKPaymentMoreInformationViewController *)v6 setBusinessChatButtonTitle:businessChatButtonTitle];

    featureApplication = [(PKApplyController *)self->_controller featureApplication];
    businessChatIdentifier = [featureApplication businessChatIdentifier];
    [(PKPaymentMoreInformationViewController *)v6 setBusinessChatIdentifier:businessChatIdentifier];

    navigationController = [(PKApplyFieldsViewController *)self navigationController];
    [navigationController pushViewController:v6 animated:1];
  }
}

- (void)_terminateFlow
{
  setupDelegate = [(PKPaymentSetupFieldsViewController *)self setupDelegate];
  v5 = setupDelegate;
  if (setupDelegate)
  {
    [setupDelegate viewControllerDidTerminateSetupFlow:self];
  }

  else
  {
    presentingViewController = [(PKApplyFieldsViewController *)self presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_presentTermsViewControllerForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [PKApplyTermsAndConditionsViewController alloc];
  controller = self->_controller;
  setupDelegate = [(PKPaymentSetupFieldsViewController *)self setupDelegate];
  v9 = [(PKApplyTermsAndConditionsViewController *)v5 initWithController:controller setupDelegate:setupDelegate context:[(PKPaymentSetupTableViewController *)self context] termsIdentifier:identifierCopy];

  [(PKApplyTermsAndConditionsViewController *)v9 setPreflightPDFTerms:1];
  navigationController = [(PKApplyFieldsViewController *)self navigationController];
  [navigationController pk_presentPaymentSetupViewController:v9 animated:1 completion:0];
}

- (void)_handleURL:(id)l
{
  lCopy = l;
  if (PKIsURLHttpScheme())
  {
    v4 = [objc_alloc(MEMORY[0x1E697A838]) initWithURL:lCopy];
    navigationController = [(PKApplyFieldsViewController *)self navigationController];
    [navigationController pushViewController:v4 animated:1];
  }

  else
  {
    PKOpenURL();
  }
}

- (void)_analyticsReportRowTapForFieldCell:(id)cell
{
  v12[2] = *MEMORY[0x1E69E9840];
  paymentSetupField = [cell paymentSetupField];
  identifier = [paymentSetupField identifier];

  if ([identifier length])
  {
    controller = self->_controller;
    currentPage = [(PKApplyFieldsViewController *)self currentPage];
    v8 = *MEMORY[0x1E69BB170];
    v11[0] = *MEMORY[0x1E69BA680];
    v11[1] = v8;
    v9 = *MEMORY[0x1E69BA1E0];
    v12[0] = *MEMORY[0x1E69BA7C8];
    v12[1] = identifier;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
    [(PKApplyController *)controller reportAnalyticsDictionaryForPage:currentPage pageTag:v9 additionalValues:v10];
  }
}

- (void)_analyticsReportError:(id)error
{
  controller = self->_controller;
  errorCopy = error;
  currentPage = [(PKApplyFieldsViewController *)self currentPage];
  [(PKApplyController *)controller reportAnalyticsError:errorCopy page:currentPage pageTag:*MEMORY[0x1E69BA1E0] additionalValues:0];
}

@end
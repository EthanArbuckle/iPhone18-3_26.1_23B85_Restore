@interface PKApplyFieldsViewController
- (BOOL)fieldCellEditableTextFieldShouldBeginEditing:(id)a3;
- (BOOL)shouldAppearWithFirstEmptyFieldAsFirstResponder;
- (PKApplyFieldsViewController)initWithController:(id)a3 setupDelegate:(id)a4 applyPage:(id)a5;
- (void)_analyticsReportError:(id)a3;
- (void)_analyticsReportRowTapForFieldCell:(id)a3;
- (void)_completeInWalletLater;
- (void)_featureApplicationUpdated;
- (void)_handleLearnMoreTapped;
- (void)_handleNextStep;
- (void)_handleNextViewController:(id)a3 displayableError:(id)a4 terminationHandler:(id)a5;
- (void)_handleURL:(id)a3;
- (void)_presentTermsViewControllerForIdentifier:(id)a3;
- (void)_terminateFlow;
- (void)_withdrawApplicationTapped;
- (void)didTapFooterLink:(id)a3;
- (void)didTapLink:(id)a3 termsIdentifier:(id)a4 analyticsIdentifier:(id)a5;
- (void)fieldCellDidTapButton:(id)a3;
- (void)handleCancelTapped;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation PKApplyFieldsViewController

- (PKApplyFieldsViewController)initWithController:(id)a3 setupDelegate:(id)a4 applyPage:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = a4;
  v14.receiver = self;
  v14.super_class = PKApplyFieldsViewController;
  v12 = -[PKDynamicProvisioningFieldsPageViewController initWithWebService:context:setupDelegate:fieldsPage:](&v14, sel_initWithWebService_context_setupDelegate_fieldsPage_, 0, [v9 context], v11, v10);

  if (v12)
  {
    objc_storeStrong(&v12->_controller, a3);
    objc_storeStrong(&v12->_applyPage, a5);
  }

  return v12;
}

- (void)viewDidLoad
{
  v41 = *MEMORY[0x1E69E9840];
  v39.receiver = self;
  v39.super_class = PKApplyFieldsViewController;
  [(PKDynamicProvisioningFieldsPageViewController *)&v39 viewDidLoad];
  v28 = [(PKApplyRequiredFieldsPage *)self->_applyPage footerContent];
  v27 = [v28 footerText];
  v25 = [(PKPaymentSetupTableViewController *)self dockView];
  if (v28)
  {
    v2 = v27 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    v26 = objc_alloc_init(PKMultiHyperlinkView);
    [(PKMultiHyperlinkView *)v26 setText:v27];
    [(PKMultiHyperlinkView *)v26 setTextAlignment:1];
    objc_initWeak(&location, self);
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v4 = [v28 links];
    v5 = [v4 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v5)
    {
      v6 = *v35;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v35 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v34 + 1) + 8 * i);
          v9 = [PKTextRangeHyperlink alloc];
          v10 = [v8 linkText];
          v32[0] = MEMORY[0x1E69E9820];
          v32[1] = 3221225472;
          v32[2] = __42__PKApplyFieldsViewController_viewDidLoad__block_invoke;
          v32[3] = &unk_1E80110E0;
          objc_copyWeak(&v33, &location);
          v32[4] = v8;
          v11 = [(PKTextRangeHyperlink *)v9 initWithLinkText:v10 action:v32];

          [v3 safelyAddObject:v11];
          objc_destroyWeak(&v33);
        }

        v5 = [v4 countByEnumeratingWithState:&v34 objects:v40 count:16];
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

    [v25 setAdditionalView:v26];
    [v25 setAdditionalViewBottomPadding:16.0];

    objc_destroyWeak(&location);
  }

  v14 = [(PKPaymentSetupFieldsViewController *)self headerView];
  if (([(PKApplyController *)self->_controller applicationType]& 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v15 = [(PKApplyRequiredFieldsPage *)self->_applyPage identifier];
    if (v15 != @"creditReporting")
    {
      v16 = v15;
      if (!v15 || (v17 = [(__CFString *)v15 isEqualToString:@"creditReporting"], v16, v16, (v17 & 1) == 0))
      {
        v18 = PKFeatureApplicationHeaderImageWithImage([(PKApplyController *)self->_controller featureIdentifier], 0);
        [v18 size];
        [v14 setImageViewImage:v18 withSize:0 animated:?];
      }
    }
  }

  v19 = [(PKApplyRequiredFieldsPage *)self->_applyPage learnMore];
  v20 = [v19 title];
  v21 = [v20 length] == 0;

  if (!v21)
  {
    [v14 setActionButtonUsesLearnMoreStyle:1];
    v22 = [v19 buttonTitle];
    [v14 setActionTitle:v22];

    objc_initWeak(&location, self);
    v23 = MEMORY[0x1E69DC628];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __42__PKApplyFieldsViewController_viewDidLoad__block_invoke_2;
    v30[3] = &unk_1E8010A60;
    objc_copyWeak(&v31, &location);
    v24 = [v23 actionWithHandler:v30];
    [v14 setActionButtonAction:v24];

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

- (void)viewDidAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = PKApplyFieldsViewController;
  [(PKPaymentSetupFieldsViewController *)&v10 viewDidAppear:a3];
  [(PKApplyController *)self->_controller applyFlowDidAppear];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel__featureApplicationUpdated name:@"PKApplyControllerUpdatedNotification" object:0];

  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [(PKApplyRequiredFieldsPage *)self->_applyPage fieldModel];
  v7 = [v6 setupFieldAnalytics];
  [v5 addEntriesFromDictionary:v7];

  [v5 setObject:*MEMORY[0x1E69BA818] forKey:*MEMORY[0x1E69BA680]];
  controller = self->_controller;
  v9 = [(PKApplyFieldsViewController *)self currentPage];
  [(PKApplyController *)controller reportAnalyticsDictionaryForPage:v9 pageTag:*MEMORY[0x1E69BA1E0] additionalValues:v5];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = PKApplyFieldsViewController;
  [(PKApplyFieldsViewController *)&v10 viewDidDisappear:a3];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self name:@"PKApplyControllerUpdatedNotification" object:0];

  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [(PKApplyRequiredFieldsPage *)self->_applyPage fieldModel];
  v7 = [v6 setupFieldAnalytics];
  [v5 addEntriesFromDictionary:v7];

  [v5 setObject:*MEMORY[0x1E69BA820] forKey:*MEMORY[0x1E69BA680]];
  controller = self->_controller;
  v9 = [(PKApplyFieldsViewController *)self currentPage];
  [(PKApplyController *)controller reportAnalyticsDictionaryForPage:v9 pageTag:*MEMORY[0x1E69BA1E0] additionalValues:v5];
}

- (void)didTapFooterLink:(id)a3
{
  v4 = a3;
  v7 = [v4 linkURL];
  v5 = [v4 termsIdentifier];
  v6 = [v4 analyticsIdentifier];

  [(PKApplyFieldsViewController *)self didTapLink:v7 termsIdentifier:v5 analyticsIdentifier:v6];
}

- (void)didTapLink:(id)a3 termsIdentifier:(id)a4 analyticsIdentifier:(id)a5
{
  v17[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    controller = self->_controller;
    v12 = [(PKApplyFieldsViewController *)self currentPage];
    v13 = *MEMORY[0x1E69BA6F0];
    v14 = *MEMORY[0x1E69BA440];
    v16[0] = *MEMORY[0x1E69BA680];
    v16[1] = v14;
    v17[0] = v13;
    v17[1] = v10;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
    [(PKApplyController *)controller reportAnalyticsDictionaryForPage:v12 pageTag:0 additionalValues:v15];
  }

  if (v9)
  {
    [(PKApplyFieldsViewController *)self _presentTermsViewControllerForIdentifier:v9];
  }

  else if (v8)
  {
    [(PKApplyFieldsViewController *)self _handleURL:v8];
  }
}

- (void)_featureApplicationUpdated
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(PKDynamicProvisioningFieldsPageViewController *)self isLoading];
  v4 = PKLogFacilityTypeGetObject();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
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

- (void)fieldCellDidTapButton:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKApplyFieldsViewController;
  v4 = a3;
  [(PKPaymentSetupFieldsViewController *)&v5 fieldCellDidTapButton:v4];
  [(PKApplyFieldsViewController *)self _analyticsReportRowTapForFieldCell:v4, v5.receiver, v5.super_class];
}

- (BOOL)fieldCellEditableTextFieldShouldBeginEditing:(id)a3
{
  v4 = a3;
  [(PKApplyFieldsViewController *)self _analyticsReportRowTapForFieldCell:v4];
  v6.receiver = self;
  v6.super_class = PKApplyFieldsViewController;
  LOBYTE(self) = [(PKPaymentSetupFieldsViewController *)&v6 fieldCellEditableTextFieldShouldBeginEditing:v4];

  return self;
}

- (BOOL)shouldAppearWithFirstEmptyFieldAsFirstResponder
{
  v2 = [(PKPaymentSetupFieldsViewController *)self firstEmptySetupField];
  v3 = [v2 identifier];
  v4 = [v3 isEqualToString:*MEMORY[0x1E69BC1E0]];

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
    v5 = [(PKApplyFieldsViewController *)self navigationController];
    [v5 presentViewController:v4 animated:1 completion:0];
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
  v4 = [(PKApplyFieldsViewController *)self currentPage];
  v5 = *MEMORY[0x1E69BA6F0];
  v6 = *MEMORY[0x1E69BA440];
  v14[0] = *MEMORY[0x1E69BA680];
  v14[1] = v6;
  v7 = *MEMORY[0x1E69BAB18];
  v15[0] = v5;
  v15[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  [(PKApplyController *)controller reportAnalyticsDictionaryForPage:v4 pageTag:*MEMORY[0x1E69BA1E0] additionalValues:v8];

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

- (void)_handleNextViewController:(id)a3 displayableError:(id)a4 terminationHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v11 = [(PKApplyFieldsViewController *)self navigationController];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __93__PKApplyFieldsViewController__handleNextViewController_displayableError_terminationHandler___block_invoke;
    v14[3] = &unk_1E8011D28;
    v14[4] = self;
    [v11 pk_presentPaymentSetupViewController:v8 animated:1 delay:0 completion:v14];
LABEL_5:

    goto LABEL_6;
  }

  [(PKDynamicProvisioningFieldsPageViewController *)self showSpinner:0];
  if (v9)
  {
    [(PKApplyFieldsViewController *)self _analyticsReportError:v9];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __93__PKApplyFieldsViewController__handleNextViewController_displayableError_terminationHandler___block_invoke_2;
    v13[3] = &unk_1E8010970;
    v13[4] = self;
    v11 = PKAlertForDisplayableErrorWithHandlers(v9, 0, v13, 0);
    v12 = [(PKApplyFieldsViewController *)self navigationController];
    [v12 presentViewController:v11 animated:1 completion:0];

    goto LABEL_5;
  }

  if (v10)
  {
    v10[2](v10);
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
  v15 = [(PKApplyRequiredFieldsPage *)self->_applyPage learnMore];
  v3 = [v15 buttonURL];
  v4 = [v15 termsIdentifier];
  v5 = v4;
  if (v3)
  {
    [(PKApplyFieldsViewController *)self _handleURL:v3];
  }

  else if (v4)
  {
    [(PKApplyFieldsViewController *)self _presentTermsViewControllerForIdentifier:v4];
  }

  else
  {
    v6 = [[PKPaymentMoreInformationViewController alloc] initWithContext:[(PKPaymentSetupTableViewController *)self context]];
    v7 = [v15 title];
    [(PKPaymentMoreInformationViewController *)v6 setDetailTitle:v7];

    v8 = [v15 subtitle];
    [(PKPaymentMoreInformationViewController *)v6 setDetailSubtitle:v8];

    v9 = [v15 body];
    [(PKPaymentMoreInformationViewController *)v6 setDetailBody:v9];

    v10 = [v15 businessChatIntentName];
    [(PKPaymentMoreInformationViewController *)v6 setBusinessChatIntentName:v10];

    v11 = [v15 businessChatButtonTitle];
    [(PKPaymentMoreInformationViewController *)v6 setBusinessChatButtonTitle:v11];

    v12 = [(PKApplyController *)self->_controller featureApplication];
    v13 = [v12 businessChatIdentifier];
    [(PKPaymentMoreInformationViewController *)v6 setBusinessChatIdentifier:v13];

    v14 = [(PKApplyFieldsViewController *)self navigationController];
    [v14 pushViewController:v6 animated:1];
  }
}

- (void)_terminateFlow
{
  v3 = [(PKPaymentSetupFieldsViewController *)self setupDelegate];
  v5 = v3;
  if (v3)
  {
    [v3 viewControllerDidTerminateSetupFlow:self];
  }

  else
  {
    v4 = [(PKApplyFieldsViewController *)self presentingViewController];
    [v4 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_presentTermsViewControllerForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [PKApplyTermsAndConditionsViewController alloc];
  controller = self->_controller;
  v7 = [(PKPaymentSetupFieldsViewController *)self setupDelegate];
  v9 = [(PKApplyTermsAndConditionsViewController *)v5 initWithController:controller setupDelegate:v7 context:[(PKPaymentSetupTableViewController *)self context] termsIdentifier:v4];

  [(PKApplyTermsAndConditionsViewController *)v9 setPreflightPDFTerms:1];
  v8 = [(PKApplyFieldsViewController *)self navigationController];
  [v8 pk_presentPaymentSetupViewController:v9 animated:1 completion:0];
}

- (void)_handleURL:(id)a3
{
  v6 = a3;
  if (PKIsURLHttpScheme())
  {
    v4 = [objc_alloc(MEMORY[0x1E697A838]) initWithURL:v6];
    v5 = [(PKApplyFieldsViewController *)self navigationController];
    [v5 pushViewController:v4 animated:1];
  }

  else
  {
    PKOpenURL();
  }
}

- (void)_analyticsReportRowTapForFieldCell:(id)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = [a3 paymentSetupField];
  v5 = [v4 identifier];

  if ([v5 length])
  {
    controller = self->_controller;
    v7 = [(PKApplyFieldsViewController *)self currentPage];
    v8 = *MEMORY[0x1E69BB170];
    v11[0] = *MEMORY[0x1E69BA680];
    v11[1] = v8;
    v9 = *MEMORY[0x1E69BA1E0];
    v12[0] = *MEMORY[0x1E69BA7C8];
    v12[1] = v5;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
    [(PKApplyController *)controller reportAnalyticsDictionaryForPage:v7 pageTag:v9 additionalValues:v10];
  }
}

- (void)_analyticsReportError:(id)a3
{
  controller = self->_controller;
  v5 = a3;
  v6 = [(PKApplyFieldsViewController *)self currentPage];
  [(PKApplyController *)controller reportAnalyticsError:v5 page:v6 pageTag:*MEMORY[0x1E69BA1E0] additionalValues:0];
}

@end
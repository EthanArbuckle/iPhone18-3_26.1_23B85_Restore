@interface PKApplyCollectionViewController
- (PKApplyCollectionViewController)initWithController:(id)a3 setupDelegate:(id)a4 context:(int64_t)a5 applyPage:(id)a6;
- (PKPaymentSetupViewControllerDelegate)setupDelegate;
- (id)_secondaryButton;
- (void)_cancelPressed;
- (void)_reportViewDidAppear:(BOOL)a3;
- (void)_withdrawApplicationTapped;
- (void)didTapFooterLink:(id)a3;
- (void)didTapLearnMore:(id)a3;
- (void)didTapLink:(id)a3 termsIdentifier:(id)a4 analyticsIdentifier:(id)a5;
- (void)displayDisplayableError:(id)a3;
- (void)handleNextStep;
- (void)handleNextViewController:(id)a3 displayableError:(id)a4;
- (void)primaryButtonTapped;
- (void)secondaryButtonTapped;
- (void)terminateSetupFlow;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation PKApplyCollectionViewController

- (PKApplyCollectionViewController)initWithController:(id)a3 setupDelegate:(id)a4 context:(int64_t)a5 applyPage:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = PKApplyCollectionViewController;
  v14 = [(PKPaymentSetupOptionsViewController *)&v17 initWithContext:a5];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_setupDelegate, v12);
    objc_storeStrong(&v15->_page, a6);
    objc_storeStrong(&v15->_controller, a3);
  }

  return v15;
}

- (void)viewDidLoad
{
  v40[1] = *MEMORY[0x1E69E9840];
  v38.receiver = self;
  v38.super_class = PKApplyCollectionViewController;
  [(PKPaymentSetupOptionsViewController *)&v38 viewDidLoad];
  v28 = [(PKPaymentSetupOptionsViewController *)self headerView];
  [v28 setTitleAccessoriesEnabled:0];
  [v28 setAdditionalBottomPadding:15.0];
  v24 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__cancelPressed];
  v3 = [(PKApplyCollectionViewController *)self navigationItem];
  v40[0] = v24;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
  [v3 setLeftBarButtonItems:v4 animated:0];

  v23 = [(PKApplyCollectionViewController *)self navigationItem];
  [v23 setHidesBackButton:1];
  v30 = [(PKPaymentSetupOptionsViewController *)self dockView];
  v22 = [v30 footerView];
  v5 = [(PKDynamicProvisioningPageContent *)self->_page title];
  [(PKPaymentSetupOptionsViewController *)self setTitleText:v5];

  v6 = [(PKDynamicProvisioningPageContent *)self->_page subtitle];
  [(PKPaymentSetupOptionsViewController *)self setSubtitleText:v6];

  v27 = [(PKDynamicProvisioningPageContent *)self->_page primaryActionTitle];
  if (v27)
  {
    v7 = [v30 primaryButton];
    [v7 setTitle:v27 forState:0];

    v8 = [v30 primaryButton];
    [v8 addTarget:self action:sel_primaryButtonTapped forControlEvents:64];
  }

  else
  {
    [v30 setPrimaryButton:0];
  }

  v26 = [(PKDynamicProvisioningPageContent *)self->_page secondaryActionTitle];
  if (v26)
  {
    v9 = [(PKApplyCollectionViewController *)self _secondaryButton];
    [v22 setSetUpLaterButton:v9];
    [v9 setTitle:v26 forState:0];
    [v9 addTarget:self action:sel_secondaryButtonTapped forControlEvents:64];
  }

  else
  {
    [v22 setSetUpLaterButton:0];
  }

  v29 = [(PKDynamicProvisioningPageContent *)self->_page footerContent];
  v25 = [v29 footerText];
  if (v29 && v25)
  {
    v21 = objc_alloc_init(PKMultiHyperlinkView);
    [(PKMultiHyperlinkView *)v21 setText:v25];
    [(PKMultiHyperlinkView *)v21 setTextAlignment:1];
    objc_initWeak(&location, self);
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v11 = [v29 links];
    v12 = [v11 countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v12)
    {
      v13 = *v34;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v34 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v33 + 1) + 8 * i);
          v16 = [PKTextRangeHyperlink alloc];
          v17 = [v15 linkText];
          v31[0] = MEMORY[0x1E69E9820];
          v31[1] = 3221225472;
          v31[2] = __46__PKApplyCollectionViewController_viewDidLoad__block_invoke;
          v31[3] = &unk_1E80110E0;
          objc_copyWeak(&v32, &location);
          v31[4] = v15;
          v18 = [(PKTextRangeHyperlink *)v16 initWithLinkText:v17 action:v31];

          [v10 safelyAddObject:v18];
          objc_destroyWeak(&v32);
        }

        v12 = [v11 countByEnumeratingWithState:&v33 objects:v39 count:16];
      }

      while (v12);
    }

    v19 = [v10 count];
    if (v19)
    {
      v20 = [v10 copy];
    }

    else
    {
      v20 = 0;
    }

    [(PKMultiHyperlinkView *)v21 setSources:v20];
    if (v19)
    {
    }

    [v30 setAdditionalView:v21];

    objc_destroyWeak(&location);
  }
}

void __46__PKApplyCollectionViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained didTapFooterLink:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKApplyCollectionViewController;
  [(PKPaymentSetupOptionsViewController *)&v4 viewDidAppear:a3];
  [(PKApplyCollectionViewController *)self _reportViewDidAppear:1];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKApplyCollectionViewController;
  [(PKApplyCollectionViewController *)&v4 viewDidDisappear:a3];
  [(PKApplyCollectionViewController *)self _reportViewDidAppear:0];
}

- (void)_reportViewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5 = MEMORY[0x1E69BA818];
  if (!a3)
  {
    v5 = MEMORY[0x1E69BA820];
  }

  v6 = MEMORY[0x1E695DF90];
  v7 = *v5;
  v12 = objc_alloc_init(v6);
  v8 = [(PKApplyCollectionViewController *)self additionalAnalyticsDictionaryForViewAppearing:v3];
  [v12 addEntriesFromDictionary:v8];

  [v12 setObject:v7 forKey:*MEMORY[0x1E69BA680]];
  v9 = [(PKApplyCollectionViewController *)self controller];
  v10 = [(PKApplyCollectionViewController *)self currentPage];
  v11 = [(PKApplyCollectionViewController *)self pageTag];
  [v9 reportAnalyticsDictionaryForPage:v10 pageTag:v11 additionalValues:v12];
}

- (void)primaryButtonTapped
{
  v17[2] = *MEMORY[0x1E69E9840];
  controller = self->_controller;
  v4 = [(PKApplyCollectionViewController *)self currentPage];
  v5 = [(PKApplyCollectionViewController *)self pageTag];
  v6 = *MEMORY[0x1E69BA440];
  v16[0] = *MEMORY[0x1E69BA680];
  v16[1] = v6;
  v7 = *MEMORY[0x1E69BA500];
  v17[0] = *MEMORY[0x1E69BA6F0];
  v17[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  [(PKApplyController *)controller reportAnalyticsDictionaryForPage:v4 pageTag:v5 additionalValues:v8];

  primaryButtonAction = self->_primaryButtonAction;
  if (!primaryButtonAction || primaryButtonAction[2]())
  {
    [(PKPaymentSetupOptionsViewController *)self setShowNavigationBarSpinner:1];
    v10 = [(PKApplyCollectionViewController *)self currentPage];
    v11 = [(PKApplyCollectionViewController *)self controller];
    v12 = [v10 primaryActionIdentifier];
    v13 = [v10 footerContent];
    v14 = [v13 termsIdentifiers];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __54__PKApplyCollectionViewController_primaryButtonTapped__block_invoke;
    v15[3] = &unk_1E8011D00;
    v15[4] = self;
    [v11 submitActionIdentifier:v12 termsIdentifiers:v14 odiAttributesDictionary:0 completion:v15];
  }
}

- (void)secondaryButtonTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_setupDelegate);
    [v4 viewControllerDidTerminateSetupFlow:self];
  }
}

- (id)_secondaryButton
{
  v3 = [MEMORY[0x1E69DC738] buttonWithType:1];
  [v3 setExclusiveTouch:1];
  v4 = [v3 titleLabel];
  [v4 setNumberOfLines:0];
  [v4 setTextAlignment:1];
  v5 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC50]);
  [v4 setFont:v5];

  [v3 addTarget:self action:sel_secondaryButtonTapped forControlEvents:64];

  return v3;
}

- (void)_cancelPressed
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__PKApplyCollectionViewController__cancelPressed__block_invoke;
  aBlock[3] = &unk_1E8010970;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = [(PKApplyController *)self->_controller cancelAlertWithContinueAction:v3];
  if (v4)
  {
    v5 = [(PKApplyCollectionViewController *)self navigationController];
    [v5 presentViewController:v4 animated:1 completion:0];
  }

  else
  {
    v3[2](v3);
  }
}

uint64_t __49__PKApplyCollectionViewController__cancelPressed__block_invoke(uint64_t a1)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = v2[163];
  v4 = [v2 currentPage];
  v5 = [*(a1 + 32) pageTag];
  v6 = *MEMORY[0x1E69BA440];
  v12[0] = *MEMORY[0x1E69BA680];
  v12[1] = v6;
  v7 = *MEMORY[0x1E69BA448];
  v13[0] = *MEMORY[0x1E69BA6F0];
  v13[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  [v3 reportAnalyticsDictionaryForPage:v4 pageTag:v5 additionalValues:v8];

  v9 = [*(*(a1 + 32) + 1304) featureIdentifier];
  v10 = *(a1 + 32);
  if (v9 != 5)
  {
    return [v10 _withdrawApplicationTapped];
  }

  [v10[163] endApplyFlow];
  return [*(a1 + 32) terminateSetupFlow];
}

- (void)_withdrawApplicationTapped
{
  [(PKPaymentSetupOptionsViewController *)self setShowNavigationBarSpinner:1];
  objc_initWeak(&location, self);
  controller = self->_controller;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__PKApplyCollectionViewController__withdrawApplicationTapped__block_invoke;
  v4[3] = &unk_1E801F0A0;
  objc_copyWeak(&v5, &location);
  v4[4] = self;
  [(PKApplyController *)controller withdrawApplicationWithCompletion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __61__PKApplyCollectionViewController__withdrawApplicationTapped__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v5)
    {
      v9 = [WeakRetained navigationController];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __61__PKApplyCollectionViewController__withdrawApplicationTapped__block_invoke_2;
      v11[3] = &unk_1E8011D28;
      v11[4] = v8;
      [v9 pk_presentPaymentSetupViewController:v5 animated:1 completion:v11];
    }

    else
    {
      [WeakRetained setShowNavigationBarSpinner:0];
      if (!v6 || ![*(a1 + 32) shouldDisplayErrorOnWithdraw])
      {
        [v8[163] endApplyFlow];
        [v8 terminateSetupFlow];
        goto LABEL_9;
      }

      v9 = PKAlertForDisplayableErrorWithHandlers(v6, 0, 0, 0);
      v10 = [v8 navigationController];
      [v10 presentViewController:v9 animated:1 completion:0];
    }
  }

LABEL_9:
}

uint64_t __61__PKApplyCollectionViewController__withdrawApplicationTapped__block_invoke_2(uint64_t a1, char a2)
{
  result = [*(a1 + 32) setShowNavigationBarSpinner:0];
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 32);

    return [v5 terminateSetupFlow];
  }

  return result;
}

- (void)handleNextStep
{
  [(PKPaymentSetupOptionsViewController *)self setShowNavigationBarSpinner:1];
  objc_initWeak(&location, self);
  controller = self->_controller;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__PKApplyCollectionViewController_handleNextStep__block_invoke;
  v4[3] = &unk_1E80162F0;
  objc_copyWeak(&v5, &location);
  [(PKApplyController *)controller nextViewControllerWithCompletion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __49__PKApplyCollectionViewController_handleNextStep__block_invoke(uint64_t a1, void *a2, void *a3)
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

- (void)handleNextViewController:(id)a3 displayableError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v9 = [(PKApplyCollectionViewController *)self navigationController];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __77__PKApplyCollectionViewController_handleNextViewController_displayableError___block_invoke;
    v10[3] = &unk_1E8011D28;
    v10[4] = self;
    [v9 pk_presentPaymentSetupViewController:v6 animated:1 completion:v10];
  }

  else if (v7)
  {
    [(PKApplyCollectionViewController *)self displayDisplayableError:v7];
  }

  else
  {
    [(PKPaymentSetupOptionsViewController *)self setShowNavigationBarSpinner:0];
    [(PKApplyCollectionViewController *)self terminateSetupFlow];
  }
}

uint64_t __77__PKApplyCollectionViewController_handleNextViewController_displayableError___block_invoke(uint64_t a1, char a2)
{
  result = [*(a1 + 32) setShowNavigationBarSpinner:0];
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 32);

    return [v5 terminateSetupFlow];
  }

  return result;
}

- (void)displayDisplayableError:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 underlyingErrors];
  v6 = [v5 firstObject];

  v7 = [v6 domain];
  v8 = *MEMORY[0x1E69BB758];
  v9 = v7;
  v10 = v9;
  if (v9 == v8)
  {
  }

  else
  {
    if (!v9 || !v8)
    {

LABEL_10:
      goto LABEL_11;
    }

    v11 = [v9 isEqualToString:v8];

    if (!v11)
    {
      goto LABEL_10;
    }
  }

  v12 = [v6 code];

  if (v12 == 1)
  {
    [(PKPaymentSetupOptionsViewController *)self setShowNavigationBarSpinner:0];
    goto LABEL_17;
  }

LABEL_11:
  v13 = PKAlertForDisplayableErrorWithHandlers(v4, 0, 0, 0);
  if (v13)
  {
    v14 = [(PKApplyCollectionViewController *)self navigationController];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __59__PKApplyCollectionViewController_displayDisplayableError___block_invoke;
    v16[3] = &unk_1E8010970;
    v16[4] = self;
    [v14 presentViewController:v13 animated:1 completion:v16];
  }

  else
  {
    v15 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v4;
      _os_log_impl(&dword_1BD026000, v15, OS_LOG_TYPE_DEFAULT, "Error could not generate alertController for: %@", buf, 0xCu);
    }

    [(PKPaymentSetupOptionsViewController *)self setShowNavigationBarSpinner:0];
    [(PKApplyCollectionViewController *)self terminateSetupFlow];
  }

LABEL_17:
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
    v6 = [(PKApplyCollectionViewController *)self presentingViewController];
    [v6 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)didTapLearnMore:(id)a3
{
  v4 = a3;
  v6 = [v4 buttonURL];
  v5 = [v4 termsIdentifier];

  [(PKApplyCollectionViewController *)self didTapLink:v6 termsIdentifier:v5 analyticsIdentifier:0];
}

- (void)didTapFooterLink:(id)a3
{
  v4 = a3;
  v7 = [v4 linkURL];
  v5 = [v4 termsIdentifier];
  v6 = [v4 analyticsIdentifier];

  [(PKApplyCollectionViewController *)self didTapLink:v7 termsIdentifier:v5 analyticsIdentifier:v6];
}

- (void)didTapLink:(id)a3 termsIdentifier:(id)a4 analyticsIdentifier:(id)a5
{
  v31[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PKApplyCollectionViewController *)self controller];
  v12 = [v11 account];

  if (v10)
  {
    v13 = [(PKApplyCollectionViewController *)self controller];
    v14 = [(PKApplyCollectionViewController *)self currentPage];
    v15 = [(PKApplyCollectionViewController *)self pageTag];
    v16 = *MEMORY[0x1E69BA6F0];
    v17 = *MEMORY[0x1E69BA440];
    v30[0] = *MEMORY[0x1E69BA680];
    v30[1] = v17;
    v31[0] = v16;
    v31[1] = v10;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];
    [v13 reportAnalyticsDictionaryForPage:v14 pageTag:v15 additionalValues:v18];
  }

  if (v9)
  {
    if (v12)
    {
      v19 = [PKAccountTermsAndConditionsController alloc];
      v20 = [MEMORY[0x1E69B8EF8] sharedService];
      v21 = [(PKAccountTermsAndConditionsController *)v19 initWithAccount:v12 webService:v20 context:[(PKPaymentSetupOptionsViewController *)self context] termsIdentifier:v9];
      termsController = self->_termsController;
      self->_termsController = v21;

      objc_initWeak(location, self);
      v23 = self->_termsController;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __82__PKApplyCollectionViewController_didTapLink_termsIdentifier_analyticsIdentifier___block_invoke;
      v27[3] = &unk_1E80162F0;
      objc_copyWeak(&v28, location);
      [(PKAccountTermsAndConditionsController *)v23 termsViewControllerWithCompletion:v27];
      objc_destroyWeak(&v28);
      objc_destroyWeak(location);
    }

    else
    {
      v25 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(location[0]) = 138412290;
        *(location + 4) = v9;
        _os_log_impl(&dword_1BD026000, v25, OS_LOG_TYPE_DEFAULT, "Error: there is no account on PKApplyController in order to open termsIdentifier %@", location, 0xCu);
      }
    }
  }

  else if (v8)
  {
    if (PKIsURLHttpScheme())
    {
      v24 = [objc_alloc(MEMORY[0x1E697A838]) initWithURL:v8];
      [v24 setModalPresentationStyle:2];
      [(PKApplyCollectionViewController *)self presentViewController:v24 animated:1 completion:0];
    }

    else
    {
      v26 = [MEMORY[0x1E6963608] defaultWorkspace];
      [v26 openSensitiveURL:v8 withOptions:0];
    }
  }
}

void __82__PKApplyCollectionViewController_didTapLink_termsIdentifier_analyticsIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (PKPaymentSetupViewControllerDelegate)setupDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);

  return WeakRetained;
}

@end
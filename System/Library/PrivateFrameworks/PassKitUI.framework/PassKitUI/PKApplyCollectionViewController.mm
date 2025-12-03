@interface PKApplyCollectionViewController
- (PKApplyCollectionViewController)initWithController:(id)controller setupDelegate:(id)delegate context:(int64_t)context applyPage:(id)page;
- (PKPaymentSetupViewControllerDelegate)setupDelegate;
- (id)_secondaryButton;
- (void)_cancelPressed;
- (void)_reportViewDidAppear:(BOOL)appear;
- (void)_withdrawApplicationTapped;
- (void)didTapFooterLink:(id)link;
- (void)didTapLearnMore:(id)more;
- (void)didTapLink:(id)link termsIdentifier:(id)identifier analyticsIdentifier:(id)analyticsIdentifier;
- (void)displayDisplayableError:(id)error;
- (void)handleNextStep;
- (void)handleNextViewController:(id)controller displayableError:(id)error;
- (void)primaryButtonTapped;
- (void)secondaryButtonTapped;
- (void)terminateSetupFlow;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation PKApplyCollectionViewController

- (PKApplyCollectionViewController)initWithController:(id)controller setupDelegate:(id)delegate context:(int64_t)context applyPage:(id)page
{
  controllerCopy = controller;
  delegateCopy = delegate;
  pageCopy = page;
  v17.receiver = self;
  v17.super_class = PKApplyCollectionViewController;
  v14 = [(PKPaymentSetupOptionsViewController *)&v17 initWithContext:context];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_setupDelegate, delegateCopy);
    objc_storeStrong(&v15->_page, page);
    objc_storeStrong(&v15->_controller, controller);
  }

  return v15;
}

- (void)viewDidLoad
{
  v40[1] = *MEMORY[0x1E69E9840];
  v38.receiver = self;
  v38.super_class = PKApplyCollectionViewController;
  [(PKPaymentSetupOptionsViewController *)&v38 viewDidLoad];
  headerView = [(PKPaymentSetupOptionsViewController *)self headerView];
  [headerView setTitleAccessoriesEnabled:0];
  [headerView setAdditionalBottomPadding:15.0];
  v24 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__cancelPressed];
  navigationItem = [(PKApplyCollectionViewController *)self navigationItem];
  v40[0] = v24;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
  [navigationItem setLeftBarButtonItems:v4 animated:0];

  navigationItem2 = [(PKApplyCollectionViewController *)self navigationItem];
  [navigationItem2 setHidesBackButton:1];
  dockView = [(PKPaymentSetupOptionsViewController *)self dockView];
  footerView = [dockView footerView];
  title = [(PKDynamicProvisioningPageContent *)self->_page title];
  [(PKPaymentSetupOptionsViewController *)self setTitleText:title];

  subtitle = [(PKDynamicProvisioningPageContent *)self->_page subtitle];
  [(PKPaymentSetupOptionsViewController *)self setSubtitleText:subtitle];

  primaryActionTitle = [(PKDynamicProvisioningPageContent *)self->_page primaryActionTitle];
  if (primaryActionTitle)
  {
    primaryButton = [dockView primaryButton];
    [primaryButton setTitle:primaryActionTitle forState:0];

    primaryButton2 = [dockView primaryButton];
    [primaryButton2 addTarget:self action:sel_primaryButtonTapped forControlEvents:64];
  }

  else
  {
    [dockView setPrimaryButton:0];
  }

  secondaryActionTitle = [(PKDynamicProvisioningPageContent *)self->_page secondaryActionTitle];
  if (secondaryActionTitle)
  {
    _secondaryButton = [(PKApplyCollectionViewController *)self _secondaryButton];
    [footerView setSetUpLaterButton:_secondaryButton];
    [_secondaryButton setTitle:secondaryActionTitle forState:0];
    [_secondaryButton addTarget:self action:sel_secondaryButtonTapped forControlEvents:64];
  }

  else
  {
    [footerView setSetUpLaterButton:0];
  }

  footerContent = [(PKDynamicProvisioningPageContent *)self->_page footerContent];
  footerText = [footerContent footerText];
  if (footerContent && footerText)
  {
    v21 = objc_alloc_init(PKMultiHyperlinkView);
    [(PKMultiHyperlinkView *)v21 setText:footerText];
    [(PKMultiHyperlinkView *)v21 setTextAlignment:1];
    objc_initWeak(&location, self);
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    links = [footerContent links];
    v12 = [links countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v12)
    {
      v13 = *v34;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v34 != v13)
          {
            objc_enumerationMutation(links);
          }

          v15 = *(*(&v33 + 1) + 8 * i);
          v16 = [PKTextRangeHyperlink alloc];
          linkText = [v15 linkText];
          v31[0] = MEMORY[0x1E69E9820];
          v31[1] = 3221225472;
          v31[2] = __46__PKApplyCollectionViewController_viewDidLoad__block_invoke;
          v31[3] = &unk_1E80110E0;
          objc_copyWeak(&v32, &location);
          v31[4] = v15;
          v18 = [(PKTextRangeHyperlink *)v16 initWithLinkText:linkText action:v31];

          [v10 safelyAddObject:v18];
          objc_destroyWeak(&v32);
        }

        v12 = [links countByEnumeratingWithState:&v33 objects:v39 count:16];
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

    [dockView setAdditionalView:v21];

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

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKApplyCollectionViewController;
  [(PKPaymentSetupOptionsViewController *)&v4 viewDidAppear:appear];
  [(PKApplyCollectionViewController *)self _reportViewDidAppear:1];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PKApplyCollectionViewController;
  [(PKApplyCollectionViewController *)&v4 viewDidDisappear:disappear];
  [(PKApplyCollectionViewController *)self _reportViewDidAppear:0];
}

- (void)_reportViewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = MEMORY[0x1E69BA818];
  if (!appear)
  {
    v5 = MEMORY[0x1E69BA820];
  }

  v6 = MEMORY[0x1E695DF90];
  v7 = *v5;
  v12 = objc_alloc_init(v6);
  v8 = [(PKApplyCollectionViewController *)self additionalAnalyticsDictionaryForViewAppearing:appearCopy];
  [v12 addEntriesFromDictionary:v8];

  [v12 setObject:v7 forKey:*MEMORY[0x1E69BA680]];
  controller = [(PKApplyCollectionViewController *)self controller];
  currentPage = [(PKApplyCollectionViewController *)self currentPage];
  pageTag = [(PKApplyCollectionViewController *)self pageTag];
  [controller reportAnalyticsDictionaryForPage:currentPage pageTag:pageTag additionalValues:v12];
}

- (void)primaryButtonTapped
{
  v17[2] = *MEMORY[0x1E69E9840];
  controller = self->_controller;
  currentPage = [(PKApplyCollectionViewController *)self currentPage];
  pageTag = [(PKApplyCollectionViewController *)self pageTag];
  v6 = *MEMORY[0x1E69BA440];
  v16[0] = *MEMORY[0x1E69BA680];
  v16[1] = v6;
  v7 = *MEMORY[0x1E69BA500];
  v17[0] = *MEMORY[0x1E69BA6F0];
  v17[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  [(PKApplyController *)controller reportAnalyticsDictionaryForPage:currentPage pageTag:pageTag additionalValues:v8];

  primaryButtonAction = self->_primaryButtonAction;
  if (!primaryButtonAction || primaryButtonAction[2]())
  {
    [(PKPaymentSetupOptionsViewController *)self setShowNavigationBarSpinner:1];
    currentPage2 = [(PKApplyCollectionViewController *)self currentPage];
    controller = [(PKApplyCollectionViewController *)self controller];
    primaryActionIdentifier = [currentPage2 primaryActionIdentifier];
    footerContent = [currentPage2 footerContent];
    termsIdentifiers = [footerContent termsIdentifiers];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __54__PKApplyCollectionViewController_primaryButtonTapped__block_invoke;
    v15[3] = &unk_1E8011D00;
    v15[4] = self;
    [controller submitActionIdentifier:primaryActionIdentifier termsIdentifiers:termsIdentifiers odiAttributesDictionary:0 completion:v15];
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
  titleLabel = [v3 titleLabel];
  [titleLabel setNumberOfLines:0];
  [titleLabel setTextAlignment:1];
  v5 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC50]);
  [titleLabel setFont:v5];

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
    navigationController = [(PKApplyCollectionViewController *)self navigationController];
    [navigationController presentViewController:v4 animated:1 completion:0];
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

- (void)handleNextViewController:(id)controller displayableError:(id)error
{
  controllerCopy = controller;
  errorCopy = error;
  v8 = errorCopy;
  if (controllerCopy)
  {
    navigationController = [(PKApplyCollectionViewController *)self navigationController];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __77__PKApplyCollectionViewController_handleNextViewController_displayableError___block_invoke;
    v10[3] = &unk_1E8011D28;
    v10[4] = self;
    [navigationController pk_presentPaymentSetupViewController:controllerCopy animated:1 completion:v10];
  }

  else if (errorCopy)
  {
    [(PKApplyCollectionViewController *)self displayDisplayableError:errorCopy];
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

- (void)displayDisplayableError:(id)error
{
  v19 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  underlyingErrors = [errorCopy underlyingErrors];
  firstObject = [underlyingErrors firstObject];

  domain = [firstObject domain];
  v8 = *MEMORY[0x1E69BB758];
  v9 = domain;
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

  code = [firstObject code];

  if (code == 1)
  {
    [(PKPaymentSetupOptionsViewController *)self setShowNavigationBarSpinner:0];
    goto LABEL_17;
  }

LABEL_11:
  v13 = PKAlertForDisplayableErrorWithHandlers(errorCopy, 0, 0, 0);
  if (v13)
  {
    navigationController = [(PKApplyCollectionViewController *)self navigationController];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __59__PKApplyCollectionViewController_displayDisplayableError___block_invoke;
    v16[3] = &unk_1E8010970;
    v16[4] = self;
    [navigationController presentViewController:v13 animated:1 completion:v16];
  }

  else
  {
    v15 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = errorCopy;
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
    presentingViewController = [(PKApplyCollectionViewController *)self presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)didTapLearnMore:(id)more
{
  moreCopy = more;
  buttonURL = [moreCopy buttonURL];
  termsIdentifier = [moreCopy termsIdentifier];

  [(PKApplyCollectionViewController *)self didTapLink:buttonURL termsIdentifier:termsIdentifier analyticsIdentifier:0];
}

- (void)didTapFooterLink:(id)link
{
  linkCopy = link;
  linkURL = [linkCopy linkURL];
  termsIdentifier = [linkCopy termsIdentifier];
  analyticsIdentifier = [linkCopy analyticsIdentifier];

  [(PKApplyCollectionViewController *)self didTapLink:linkURL termsIdentifier:termsIdentifier analyticsIdentifier:analyticsIdentifier];
}

- (void)didTapLink:(id)link termsIdentifier:(id)identifier analyticsIdentifier:(id)analyticsIdentifier
{
  v31[2] = *MEMORY[0x1E69E9840];
  linkCopy = link;
  identifierCopy = identifier;
  analyticsIdentifierCopy = analyticsIdentifier;
  controller = [(PKApplyCollectionViewController *)self controller];
  account = [controller account];

  if (analyticsIdentifierCopy)
  {
    controller2 = [(PKApplyCollectionViewController *)self controller];
    currentPage = [(PKApplyCollectionViewController *)self currentPage];
    pageTag = [(PKApplyCollectionViewController *)self pageTag];
    v16 = *MEMORY[0x1E69BA6F0];
    v17 = *MEMORY[0x1E69BA440];
    v30[0] = *MEMORY[0x1E69BA680];
    v30[1] = v17;
    v31[0] = v16;
    v31[1] = analyticsIdentifierCopy;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];
    [controller2 reportAnalyticsDictionaryForPage:currentPage pageTag:pageTag additionalValues:v18];
  }

  if (identifierCopy)
  {
    if (account)
    {
      v19 = [PKAccountTermsAndConditionsController alloc];
      mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
      v21 = [(PKAccountTermsAndConditionsController *)v19 initWithAccount:account webService:mEMORY[0x1E69B8EF8] context:[(PKPaymentSetupOptionsViewController *)self context] termsIdentifier:identifierCopy];
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
        *(location + 4) = identifierCopy;
        _os_log_impl(&dword_1BD026000, v25, OS_LOG_TYPE_DEFAULT, "Error: there is no account on PKApplyController in order to open termsIdentifier %@", location, 0xCu);
      }
    }
  }

  else if (linkCopy)
  {
    if (PKIsURLHttpScheme())
    {
      v24 = [objc_alloc(MEMORY[0x1E697A838]) initWithURL:linkCopy];
      [v24 setModalPresentationStyle:2];
      [(PKApplyCollectionViewController *)self presentViewController:v24 animated:1 completion:0];
    }

    else
    {
      defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
      [defaultWorkspace openSensitiveURL:linkCopy withOptions:0];
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
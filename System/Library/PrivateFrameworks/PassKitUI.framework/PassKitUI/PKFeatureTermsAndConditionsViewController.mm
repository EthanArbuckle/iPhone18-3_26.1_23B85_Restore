@interface PKFeatureTermsAndConditionsViewController
- (PKFeatureTermsAndConditionsViewController)initWithSetupDelegate:(id)delegate context:(int64_t)context;
- (PKPaymentSetupViewControllerDelegate)setupDelegate;
- (id)_loadPDFViewControllerWithFileName:(id)name;
- (void)_handleWalletTermsLink:(id)link withCompletion:(id)completion;
- (void)_loadHTML;
- (void)_loadHTMLViewController;
- (void)_loadPDF;
- (void)_pk_dismissViewControllerWithTransition:(int)transition completion:(id)completion;
- (void)_renderTermsView;
- (void)_showTermsSpinner:(BOOL)spinner objectModel:(id)model;
- (void)_updateTermsData:(id)data termsFileName:(id)name;
- (void)dismissViewControllerWithCompletion:(id)completion;
- (void)loader:(id)loader didFinishLoadWithError:(id)error;
- (void)popViewControllerWithCompletion:(id)completion;
- (void)preflightWithCompletion:(id)completion;
- (void)presentWithNavigationController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)previewControllerWillDismiss:(id)dismiss;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PKFeatureTermsAndConditionsViewController

- (PKFeatureTermsAndConditionsViewController)initWithSetupDelegate:(id)delegate context:(int64_t)context
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = PKFeatureTermsAndConditionsViewController;
  v7 = [(PKFeatureTermsAndConditionsViewController *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_context = context;
    objc_storeWeak(&v7->_setupDelegate, delegateCopy);
    [(PKFeatureTermsAndConditionsViewController *)v8 setModalInPresentation:1];
    if ([(UIViewController *)v8 pkui_userInterfaceIdiomSupportsLargeLayouts])
    {
      [(PKFeatureTermsAndConditionsViewController *)v8 setModalPresentationStyle:3];
    }
  }

  return v8;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PKFeatureTermsAndConditionsViewController;
  [(PKFeatureTermsAndConditionsViewController *)&v5 viewDidLoad];
  view = [(PKFeatureTermsAndConditionsViewController *)self view];
  v4 = PKProvisioningBackgroundColor();
  [view setBackgroundColor:v4];

  PKPaymentSetupApplyContextAppearance(self->_context, self);
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = PKFeatureTermsAndConditionsViewController;
  [(PKFeatureTermsAndConditionsViewController *)&v7 viewWillAppear:appear];
  if (!self->_performedInitialLoad)
  {
    self->_performedInitialLoad = 1;
    if (self->_pdfData || self->_htmlData)
    {
      [(PKFeatureTermsAndConditionsViewController *)self _renderTermsView];
    }

    else
    {
      objc_initWeak(&location, self);
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __60__PKFeatureTermsAndConditionsViewController_viewWillAppear___block_invoke;
      v4[3] = &unk_1E8011180;
      objc_copyWeak(&v5, &location);
      [(PKFeatureTermsAndConditionsViewController *)self preflightWithCompletion:v4];
      objc_destroyWeak(&v5);
      objc_destroyWeak(&location);
    }
  }
}

void __60__PKFeatureTermsAndConditionsViewController_viewWillAppear___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _renderTermsView];
    WeakRetained = v2;
  }
}

- (void)preflightWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__PKFeatureTermsAndConditionsViewController_preflightWithCompletion___block_invoke;
  v6[3] = &unk_1E8020B18;
  objc_copyWeak(&v8, &location);
  v5 = completionCopy;
  v7 = v5;
  [(PKFeatureTermsAndConditionsViewController *)self initalTermsDataWithCompletion:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __69__PKFeatureTermsAndConditionsViewController_preflightWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v13 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    if (!v13 || a4)
    {
      v12 = *(a1 + 32);
      if (!v12)
      {
        goto LABEL_9;
      }

      v11 = *(v12 + 16);
    }

    else
    {
      [WeakRetained _updateTermsData:v13 termsFileName:v7];
      v10 = *(a1 + 32);
      if (!v10)
      {
        goto LABEL_9;
      }

      v11 = *(v10 + 16);
    }

    v11();
  }

LABEL_9:
}

- (void)_updateTermsData:(id)data termsFileName:(id)name
{
  dataCopy = data;
  nameCopy = name;
  hasPDFMIMEType = [dataCopy hasPDFMIMEType];
  v9 = 4;
  if (hasPDFMIMEType)
  {
    v9 = 3;
  }

  v10 = OBJC_IVAR___PKFeatureTermsAndConditionsViewController__context[v9];
  v11 = *(&self->super.super.super.super.super.isa + v10);
  *(&self->super.super.super.super.super.isa + v10) = dataCopy;
  v13 = dataCopy;

  termsFileName = self->_termsFileName;
  self->_termsFileName = nameCopy;
}

- (void)presentWithNavigationController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  if (animatedCopy)
  {
    if (self->_useModalPresentation)
    {
      animatedCopy = 8;
    }

    else
    {
      animatedCopy = 1;
    }
  }

  containerNavigationController = self->_containerNavigationController;
  self->_containerNavigationController = controllerCopy;
  v10 = controllerCopy;
  completionCopy = completion;

  [(UINavigationController *)v10 presentViewController:self withTransition:animatedCopy completion:completionCopy];
}

- (void)dismissViewControllerWithCompletion:(id)completion
{
  if (self->_useModalPresentation)
  {
    v4 = 9;
  }

  else
  {
    v4 = 1;
  }

  [(PKFeatureTermsAndConditionsViewController *)self _pk_dismissViewControllerWithTransition:v4 completion:completion];
}

- (void)popViewControllerWithCompletion:(id)completion
{
  if (self->_useModalPresentation)
  {
    v4 = 9;
  }

  else
  {
    v4 = 2;
  }

  [(PKFeatureTermsAndConditionsViewController *)self _pk_dismissViewControllerWithTransition:v4 completion:completion];
}

- (void)_pk_dismissViewControllerWithTransition:(int)transition completion:(id)completion
{
  v4 = *&transition;
  termsUIController = self->_termsUIController;
  completionCopy = completion;
  [(RemoteUIController *)termsUIController setDelegate:0];
  [(PKFeatureTermsAndConditionsViewController *)self dismissViewControllerWithTransition:v4 completion:completionCopy];
}

- (void)_renderTermsView
{
  if (self->_htmlData)
  {
    [(PKFeatureTermsAndConditionsViewController *)self _loadHTMLViewController];
  }

  else if (self->_pdfData)
  {
    [(PKFeatureTermsAndConditionsViewController *)self _loadPDF];
  }

  else
  {
    [(PKFeatureTermsAndConditionsViewController *)self presentErrorAlert];
  }
}

- (void)_loadHTML
{
  if (!self->_termsUIController)
  {
    if (self->_htmlData)
    {

      [(PKFeatureTermsAndConditionsViewController *)self _loadHTMLViewController];
    }

    else
    {
      objc_initWeak(&location, self);
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = __54__PKFeatureTermsAndConditionsViewController__loadHTML__block_invoke;
      v3[3] = &unk_1E8020B40;
      objc_copyWeak(&v4, &location);
      [(PKFeatureTermsAndConditionsViewController *)self htmlTermsDataWithCompletion:v3];
      objc_destroyWeak(&v4);
      objc_destroyWeak(&location);
    }
  }
}

void __54__PKFeatureTermsAndConditionsViewController__loadHTML__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    if (!v7 || v9)
    {
      v12 = [WeakRetained presentingViewController];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __54__PKFeatureTermsAndConditionsViewController__loadHTML__block_invoke_2;
      v14[3] = &unk_1E8010A10;
      v15 = v9;
      v16 = v12;
      v13 = v12;
      [v11 popViewControllerWithCompletion:v14];
    }

    else
    {
      [WeakRetained _updateTermsData:v7 termsFileName:v8];
      [v11 _renderTermsView];
    }
  }
}

void __54__PKFeatureTermsAndConditionsViewController__loadHTML__block_invoke_2(uint64_t a1)
{
  v2 = PKAlertForDisplayableErrorWithHandlers(*(a1 + 32), 0, 0, 0);
  [*(a1 + 40) presentViewController:v2 animated:1 completion:0];
}

- (void)_loadHTMLViewController
{
  [(PKFeatureTermsAndConditionsViewController *)self termsShown];
  v3 = objc_alloc_init(MEMORY[0x1E69C7048]);
  termsUIController = self->_termsUIController;
  self->_termsUIController = v3;

  [(RemoteUIController *)self->_termsUIController setDelegate:self];
  [(RemoteUIController *)self->_termsUIController setNavigationController:self];
  [(RemoteUIController *)self->_termsUIController loadData:self->_htmlData baseURL:0];
  [(PKFeatureTermsAndConditionsViewController *)self context];
  if (PKPaymentSetupContextIsBridge())
  {
    v5 = self->_termsUIController;
    v6 = objc_alloc_init(MEMORY[0x1E698F570]);
    [(RemoteUIController *)v5 setStyle:v6];
  }

  objc_initWeak(&location, self);
  v7 = self->_termsUIController;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __68__PKFeatureTermsAndConditionsViewController__loadHTMLViewController__block_invoke;
  v17[3] = &unk_1E801D690;
  objc_copyWeak(&v18, &location);
  [(RemoteUIController *)v7 setHandlerForElementName:@"agree" handler:v17];
  v8 = self->_termsUIController;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __68__PKFeatureTermsAndConditionsViewController__loadHTMLViewController__block_invoke_4;
  v15[3] = &unk_1E801D690;
  objc_copyWeak(&v16, &location);
  [(RemoteUIController *)v8 setHandlerForElementName:@"disagree" handler:v15];
  v9 = self->_termsUIController;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__PKFeatureTermsAndConditionsViewController__loadHTMLViewController__block_invoke_7;
  v13[3] = &unk_1E801D690;
  objc_copyWeak(&v14, &location);
  [(RemoteUIController *)v9 setHandlerForElementName:@"done" handler:v13];
  v10 = self->_termsUIController;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__PKFeatureTermsAndConditionsViewController__loadHTMLViewController__block_invoke_9;
  v11[3] = &unk_1E801D690;
  objc_copyWeak(&v12, &location);
  [(RemoteUIController *)v10 setHandlerForElementName:@"wallet_terms_link" handler:v11];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __68__PKFeatureTermsAndConditionsViewController__loadHTMLViewController__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__PKFeatureTermsAndConditionsViewController__loadHTMLViewController__block_invoke_2;
  v5[3] = &unk_1E80110E0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __68__PKFeatureTermsAndConditionsViewController__loadHTMLViewController__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _showTermsSpinner:1 objectModel:*(a1 + 32)];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __68__PKFeatureTermsAndConditionsViewController__loadHTMLViewController__block_invoke_3;
    v4[3] = &unk_1E8010A10;
    v5 = v3;
    v6 = *(a1 + 32);
    [v5 termsAccepted:1 completion:v4];
  }
}

void __68__PKFeatureTermsAndConditionsViewController__loadHTMLViewController__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__PKFeatureTermsAndConditionsViewController__loadHTMLViewController__block_invoke_5;
  v5[3] = &unk_1E80110E0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __68__PKFeatureTermsAndConditionsViewController__loadHTMLViewController__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _showTermsSpinner:1 objectModel:*(a1 + 32)];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __68__PKFeatureTermsAndConditionsViewController__loadHTMLViewController__block_invoke_6;
    v4[3] = &unk_1E8010A10;
    v5 = v3;
    v6 = *(a1 + 32);
    [v5 termsAccepted:0 completion:v4];
  }
}

void __68__PKFeatureTermsAndConditionsViewController__loadHTMLViewController__block_invoke_7(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__PKFeatureTermsAndConditionsViewController__loadHTMLViewController__block_invoke_8;
  block[3] = &unk_1E8010998;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __68__PKFeatureTermsAndConditionsViewController__loadHTMLViewController__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained dismissViewControllerWithCompletion:0];
    WeakRetained = v2;
  }
}

void __68__PKFeatureTermsAndConditionsViewController__loadHTMLViewController__block_invoke_9(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__PKFeatureTermsAndConditionsViewController__loadHTMLViewController__block_invoke_10;
  block[3] = &unk_1E8011828;
  objc_copyWeak(&v13, (a1 + 32));
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v13);
}

void __68__PKFeatureTermsAndConditionsViewController__loadHTMLViewController__block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _showTermsSpinner:1 objectModel:*(a1 + 32)];
    v4 = *(a1 + 40);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __68__PKFeatureTermsAndConditionsViewController__loadHTMLViewController__block_invoke_11;
    v5[3] = &unk_1E8010A10;
    v6 = v3;
    v7 = *(a1 + 32);
    [v6 _handleWalletTermsLink:v4 withCompletion:v5];
  }
}

- (void)_handleWalletTermsLink:(id)link withCompletion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  linkCopy = link;
  completionCopy = completion;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = linkCopy;
    _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Wallet terms link detected with attributes: %@", buf, 0xCu);
  }

  v9 = [linkCopy PKStringForKey:@"termsIdentifier"];
  v10 = [linkCopy PKStringForKey:@"termsDataFormat"];
  v11 = [linkCopy PKStringForKey:@"termsFileName"];
  v12 = v11;
  if (v9 && v10 && v11 && ([v10 isEqualToString:*MEMORY[0x1E69BC550]] & 1) != 0)
  {
    [(PKFeatureTermsAndConditionsViewController *)self reportAnalyticsForTermsLink:linkCopy];
    objc_initWeak(buf, self);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __83__PKFeatureTermsAndConditionsViewController__handleWalletTermsLink_withCompletion___block_invoke;
    v13[3] = &unk_1E8020B90;
    objc_copyWeak(&v17, buf);
    v14 = v12;
    selfCopy = self;
    v16 = completionCopy;
    [(PKFeatureTermsAndConditionsViewController *)self pdfTermsDataWithIdentifier:v9 completion:v13];

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }

  else
  {
    [(PKFeatureTermsAndConditionsViewController *)self presentErrorAlert];
    completionCopy[2](completionCopy);
  }
}

void __83__PKFeatureTermsAndConditionsViewController__handleWalletTermsLink_withCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __83__PKFeatureTermsAndConditionsViewController__handleWalletTermsLink_withCompletion___block_invoke_2;
  v13[3] = &unk_1E8020B68;
  objc_copyWeak(&v19, (a1 + 56));
  v14 = v6;
  v15 = v7;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v11 = v7;
  v12 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v13);

  objc_destroyWeak(&v19);
}

void __83__PKFeatureTermsAndConditionsViewController__handleWalletTermsLink_withCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    v8 = WeakRetained;
    if (v4 && !*(a1 + 40))
    {
      objc_storeStrong(WeakRetained + 187, v4);
      v6 = [v8 _loadPDFViewControllerWithFileName:*(a1 + 48)];
      [*(a1 + 56) pushViewController:v6 animated:1];
      v7 = *(a1 + 64);
      if (v7)
      {
        (*(v7 + 16))();
      }
    }

    else
    {
      [WeakRetained presentErrorAlert];
      v3 = v8;
      v5 = *(a1 + 64);
      if (!v5)
      {
        goto LABEL_10;
      }

      (*(v5 + 16))();
    }

    v3 = v8;
  }

LABEL_10:
}

- (void)_loadPDF
{
  if (!self->_previewController)
  {
    v4 = [(PKFeatureTermsAndConditionsViewController *)self _loadPDFViewControllerWithFileName:self->_termsFileName];
    [(PKFeatureTermsAndConditionsViewController *)self presentViewController:v4 animated:0 completion:0];
  }
}

- (id)_loadPDFViewControllerWithFileName:(id)name
{
  v4 = *MEMORY[0x1E6982F10];
  nameCopy = name;
  identifier = [v4 identifier];
  v7 = [objc_alloc(_MergedGlobals_5_7()) initWithDataProvider:self contentType:identifier previewTitle:nameCopy];

  pdfItem = self->_pdfItem;
  self->_pdfItem = v7;

  v9 = objc_alloc_init(off_1EE989770());
  previewController = self->_previewController;
  self->_previewController = v9;

  [(QLPreviewController *)self->_previewController setDelegate:self];
  [(QLPreviewController *)self->_previewController setDataSource:self];
  [(QLPreviewController *)self->_previewController setModalPresentationStyle:3];
  v11 = self->_previewController;
  v12 = v11;

  return v11;
}

- (void)_showTermsSpinner:(BOOL)spinner objectModel:(id)model
{
  spinnerCopy = spinner;
  v23 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  v7 = modelCopy;
  if (spinnerCopy)
  {
    displayTitle = [(PKFeatureTermsAndConditionsViewController *)self displayTitle];
    [v7 startNavigationBarSpinnerWithTitle:displayTitle];
  }

  else
  {
    [modelCopy stopNavigationBarSpinner];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  allPages = [v7 allPages];
  v10 = [allPages countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(allPages);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        rightToolbarItem = [v14 rightToolbarItem];
        [rightToolbarItem setEnabled:!spinnerCopy];

        leftToolbarItem = [v14 leftToolbarItem];
        [leftToolbarItem setEnabled:!spinnerCopy];

        middleToolbarItem = [v14 middleToolbarItem];
        [middleToolbarItem setEnabled:!spinnerCopy];
      }

      v11 = [allPages countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }
}

- (void)loader:(id)loader didFinishLoadWithError:(id)error
{
  v11 = *MEMORY[0x1E69E9840];
  loaderCopy = loader;
  errorCopy = error;
  if (errorCopy)
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = errorCopy;
      _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Error loading terms: %{public}@", &v9, 0xCu);
    }

    [(PKFeatureTermsAndConditionsViewController *)self dismissViewControllerWithCompletion:0];
  }
}

- (void)previewControllerWillDismiss:(id)dismiss
{
  pdfData = self->_pdfData;
  self->_pdfData = 0;

  previewController = self->_previewController;
  self->_previewController = 0;

  presentingViewController = [(PKFeatureTermsAndConditionsViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:0 completion:0];
}

- (PKPaymentSetupViewControllerDelegate)setupDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);

  return WeakRetained;
}

@end
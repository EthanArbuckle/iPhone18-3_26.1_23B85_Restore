@interface PKFeatureTermsAndConditionsViewController
- (PKFeatureTermsAndConditionsViewController)initWithSetupDelegate:(id)a3 context:(int64_t)a4;
- (PKPaymentSetupViewControllerDelegate)setupDelegate;
- (id)_loadPDFViewControllerWithFileName:(id)a3;
- (void)_handleWalletTermsLink:(id)a3 withCompletion:(id)a4;
- (void)_loadHTML;
- (void)_loadHTMLViewController;
- (void)_loadPDF;
- (void)_pk_dismissViewControllerWithTransition:(int)a3 completion:(id)a4;
- (void)_renderTermsView;
- (void)_showTermsSpinner:(BOOL)a3 objectModel:(id)a4;
- (void)_updateTermsData:(id)a3 termsFileName:(id)a4;
- (void)dismissViewControllerWithCompletion:(id)a3;
- (void)loader:(id)a3 didFinishLoadWithError:(id)a4;
- (void)popViewControllerWithCompletion:(id)a3;
- (void)preflightWithCompletion:(id)a3;
- (void)presentWithNavigationController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)previewControllerWillDismiss:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PKFeatureTermsAndConditionsViewController

- (PKFeatureTermsAndConditionsViewController)initWithSetupDelegate:(id)a3 context:(int64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = PKFeatureTermsAndConditionsViewController;
  v7 = [(PKFeatureTermsAndConditionsViewController *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_context = a4;
    objc_storeWeak(&v7->_setupDelegate, v6);
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
  v3 = [(PKFeatureTermsAndConditionsViewController *)self view];
  v4 = PKProvisioningBackgroundColor();
  [v3 setBackgroundColor:v4];

  PKPaymentSetupApplyContextAppearance(self->_context, self);
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = PKFeatureTermsAndConditionsViewController;
  [(PKFeatureTermsAndConditionsViewController *)&v7 viewWillAppear:a3];
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

- (void)preflightWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__PKFeatureTermsAndConditionsViewController_preflightWithCompletion___block_invoke;
  v6[3] = &unk_1E8020B18;
  objc_copyWeak(&v8, &location);
  v5 = v4;
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

- (void)_updateTermsData:(id)a3 termsFileName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 hasPDFMIMEType];
  v9 = 4;
  if (v8)
  {
    v9 = 3;
  }

  v10 = OBJC_IVAR___PKFeatureTermsAndConditionsViewController__context[v9];
  v11 = *(&self->super.super.super.super.super.isa + v10);
  *(&self->super.super.super.super.super.isa + v10) = v6;
  v13 = v6;

  termsFileName = self->_termsFileName;
  self->_termsFileName = v7;
}

- (void)presentWithNavigationController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  if (v6)
  {
    if (self->_useModalPresentation)
    {
      v6 = 8;
    }

    else
    {
      v6 = 1;
    }
  }

  containerNavigationController = self->_containerNavigationController;
  self->_containerNavigationController = v8;
  v10 = v8;
  v11 = a5;

  [(UINavigationController *)v10 presentViewController:self withTransition:v6 completion:v11];
}

- (void)dismissViewControllerWithCompletion:(id)a3
{
  if (self->_useModalPresentation)
  {
    v4 = 9;
  }

  else
  {
    v4 = 1;
  }

  [(PKFeatureTermsAndConditionsViewController *)self _pk_dismissViewControllerWithTransition:v4 completion:a3];
}

- (void)popViewControllerWithCompletion:(id)a3
{
  if (self->_useModalPresentation)
  {
    v4 = 9;
  }

  else
  {
    v4 = 2;
  }

  [(PKFeatureTermsAndConditionsViewController *)self _pk_dismissViewControllerWithTransition:v4 completion:a3];
}

- (void)_pk_dismissViewControllerWithTransition:(int)a3 completion:(id)a4
{
  v4 = *&a3;
  termsUIController = self->_termsUIController;
  v7 = a4;
  [(RemoteUIController *)termsUIController setDelegate:0];
  [(PKFeatureTermsAndConditionsViewController *)self dismissViewControllerWithTransition:v4 completion:v7];
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

- (void)_handleWalletTermsLink:(id)a3 withCompletion:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v6;
    _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Wallet terms link detected with attributes: %@", buf, 0xCu);
  }

  v9 = [v6 PKStringForKey:@"termsIdentifier"];
  v10 = [v6 PKStringForKey:@"termsDataFormat"];
  v11 = [v6 PKStringForKey:@"termsFileName"];
  v12 = v11;
  if (v9 && v10 && v11 && ([v10 isEqualToString:*MEMORY[0x1E69BC550]] & 1) != 0)
  {
    [(PKFeatureTermsAndConditionsViewController *)self reportAnalyticsForTermsLink:v6];
    objc_initWeak(buf, self);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __83__PKFeatureTermsAndConditionsViewController__handleWalletTermsLink_withCompletion___block_invoke;
    v13[3] = &unk_1E8020B90;
    objc_copyWeak(&v17, buf);
    v14 = v12;
    v15 = self;
    v16 = v7;
    [(PKFeatureTermsAndConditionsViewController *)self pdfTermsDataWithIdentifier:v9 completion:v13];

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }

  else
  {
    [(PKFeatureTermsAndConditionsViewController *)self presentErrorAlert];
    v7[2](v7);
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

- (id)_loadPDFViewControllerWithFileName:(id)a3
{
  v4 = *MEMORY[0x1E6982F10];
  v5 = a3;
  v6 = [v4 identifier];
  v7 = [objc_alloc(_MergedGlobals_5_7()) initWithDataProvider:self contentType:v6 previewTitle:v5];

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

- (void)_showTermsSpinner:(BOOL)a3 objectModel:(id)a4
{
  v4 = a3;
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = v6;
  if (v4)
  {
    v8 = [(PKFeatureTermsAndConditionsViewController *)self displayTitle];
    [v7 startNavigationBarSpinnerWithTitle:v8];
  }

  else
  {
    [v6 stopNavigationBarSpinner];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [v7 allPages];
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [v14 rightToolbarItem];
        [v15 setEnabled:!v4];

        v16 = [v14 leftToolbarItem];
        [v16 setEnabled:!v4];

        v17 = [v14 middleToolbarItem];
        [v17 setEnabled:!v4];
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }
}

- (void)loader:(id)a3 didFinishLoadWithError:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Error loading terms: %{public}@", &v9, 0xCu);
    }

    [(PKFeatureTermsAndConditionsViewController *)self dismissViewControllerWithCompletion:0];
  }
}

- (void)previewControllerWillDismiss:(id)a3
{
  pdfData = self->_pdfData;
  self->_pdfData = 0;

  previewController = self->_previewController;
  self->_previewController = 0;

  v6 = [(PKFeatureTermsAndConditionsViewController *)self presentingViewController];
  [v6 dismissViewControllerAnimated:0 completion:0];
}

- (PKPaymentSetupViewControllerDelegate)setupDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);

  return WeakRetained;
}

@end
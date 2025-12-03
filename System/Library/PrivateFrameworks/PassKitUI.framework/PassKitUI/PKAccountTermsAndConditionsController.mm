@interface PKAccountTermsAndConditionsController
- (PKAccountTermsAndConditionsController)initWithAccount:(id)account webService:(id)service context:(int64_t)context termsIdentifier:(id)identifier;
- (id)_loadViewController;
- (void)_fetchTermsDataWithCompletion:(id)completion;
- (void)previewControllerWillDismiss:(id)dismiss;
- (void)termsViewControllerWithCompletion:(id)completion;
@end

@implementation PKAccountTermsAndConditionsController

- (PKAccountTermsAndConditionsController)initWithAccount:(id)account webService:(id)service context:(int64_t)context termsIdentifier:(id)identifier
{
  accountCopy = account;
  serviceCopy = service;
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = PKAccountTermsAndConditionsController;
  v13 = [(PKAccountTermsAndConditionsController *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_account, account);
    objc_storeStrong(&v14->_webService, service);
    objc_storeStrong(&v14->_termsIdentifier, identifier);
  }

  return v14;
}

- (void)termsViewControllerWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    v6 = _Block_copy(completionCopy);
    completionBlock = self->_completionBlock;
    self->_completionBlock = v6;

    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __75__PKAccountTermsAndConditionsController_termsViewControllerWithCompletion___block_invoke;
    v8[3] = &unk_1E8011338;
    objc_copyWeak(&v9, &location);
    [(PKAccountTermsAndConditionsController *)self _fetchTermsDataWithCompletion:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __75__PKAccountTermsAndConditionsController_termsViewControllerWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained _loadViewController];
    (*(v4[5] + 16))();
    v6 = v4[5];
    v4[5] = 0;
  }
}

- (void)_fetchTermsDataWithCompletion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    accountIdentifier = [(PKAccount *)self->_account accountIdentifier];
    *buf = 138412290;
    v17 = accountIdentifier;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Fetching terms for account %@", buf, 0xCu);
  }

  v7 = objc_alloc_init(MEMORY[0x1E69B84D8]);
  accountBaseURL = [(PKAccount *)self->_account accountBaseURL];
  [v7 setBaseURL:accountBaseURL];

  [v7 setTermsIdentifier:self->_termsIdentifier];
  accountIdentifier2 = [(PKAccount *)self->_account accountIdentifier];
  [v7 setAccountIdentifier:accountIdentifier2];

  objc_initWeak(buf, self);
  feature = [(PKAccount *)self->_account feature];
  webService = self->_webService;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __71__PKAccountTermsAndConditionsController__fetchTermsDataWithCompletion___block_invoke;
  v13[3] = &unk_1E801A0D0;
  objc_copyWeak(v15, buf);
  v15[1] = feature;
  v12 = completionCopy;
  v14 = v12;
  [(PKPaymentWebService *)webService accountTermsDataWithRequest:v7 completion:v13];

  objc_destroyWeak(v15);
  objc_destroyWeak(buf);
}

void __71__PKAccountTermsAndConditionsController__fetchTermsDataWithCompletion___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__PKAccountTermsAndConditionsController__fetchTermsDataWithCompletion___block_invoke_2;
  block[3] = &unk_1E80123E0;
  objc_copyWeak(v13, a1 + 5);
  v10 = v5;
  v11 = v6;
  v13[1] = a1[6];
  v12 = a1[4];
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(v13);
}

void __71__PKAccountTermsAndConditionsController__fetchTermsDataWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v3 = [*(a1 + 32) termsData];
    v4 = v9[6];
    v9[6] = v3;

    v5 = [*(a1 + 32) termsDataFileName];
    v6 = v9[7];
    v9[7] = v5;

    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = [PKAccountFlowController displayableErrorForError:v7 featureIdentifier:*(a1 + 64) genericErrorTitle:0 genericErrorMessage:0];
    }

    else
    {
      v8 = 0;
    }

    (*(*(a1 + 48) + 16))();

    WeakRetained = v9;
  }
}

- (id)_loadViewController
{
  v21 = *MEMORY[0x1E69E9840];
  if (self->_termsData)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      termsFileName = self->_termsFileName;
      *buf = 138412290;
      v20 = termsFileName;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Loading terms for file name %@", buf, 0xCu);
    }

    hasPDFMIMEType = [(NSData *)self->_termsData hasPDFMIMEType];
    v6 = MEMORY[0x1E6982F10];
    if (!hasPDFMIMEType)
    {
      v6 = MEMORY[0x1E6982E18];
    }

    identifier = [*v6 identifier];
    v8 = [objc_alloc(_MergedGlobals_619()) initWithDataProvider:self contentType:identifier previewTitle:self->_termsFileName];
    pdfItem = self->_pdfItem;
    self->_pdfItem = v8;

    v10 = objc_alloc(off_1EE98A678());
    v18 = self->_pdfItem;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    v12 = [v10 initWithPreviewItems:v11];
    previewController = self->_previewController;
    self->_previewController = v12;

    [(QLPreviewController *)self->_previewController setDelegate:self];
    [(QLPreviewController *)self->_previewController setDataSource:self];
    v14 = self->_previewController;
    if ([(QLPreviewController *)v14 pkui_userInterfaceIdiomSupportsLargeLayouts])
    {
      v15 = 2;
    }

    else
    {
      v15 = 3;
    }

    [(QLPreviewController *)v14 setModalPresentationStyle:v15];
    v16 = self->_previewController;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)previewControllerWillDismiss:(id)dismiss
{
  [(QLPreviewController *)self->_previewController dismissViewControllerAnimated:1 completion:0];
  previewController = self->_previewController;
  self->_previewController = 0;
}

@end
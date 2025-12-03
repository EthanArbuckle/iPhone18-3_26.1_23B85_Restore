@interface PKAccountServiceAccountResolutionController
- (PKAccountBillPaymentObserver)billPaymentObserver;
- (PKAccountServiceAccountResolutionController)initWithAccount:(id)account accountUserCollection:(id)collection transactionSourceCollection:(id)sourceCollection;
- (PKAccountServiceAccountResolutionControllerDelegate)delegate;
- (UIViewController)presentingViewController;
- (id)_alertControllerForBusinessChatContext:(id)context;
- (id)presentationAnchorForWebAuthenticationSession:(id)session;
- (void)_callIssuer;
- (void)_handleAccountServiceAccountDidChangeNotification:(id)notification;
- (void)_openBusinessChatWithContext:(id)context;
- (void)_openPaymentPlansInDefaultBrowser;
- (void)_presentAccountServiceAction:(unint64_t)action configuration:(id)configuration completion:(id)completion;
- (void)_presentViewController:(id)controller;
- (void)_startPaymentPlansWebSessionWithAuthenticationToken:(id)token completion:(id)completion;
- (void)_viewAvailablePaymentPlansWithCompletion:(id)completion;
- (void)presentFlowForAccountResolution:(unint64_t)resolution configuration:(id)configuration completion:(id)completion;
@end

@implementation PKAccountServiceAccountResolutionController

- (PKAccountServiceAccountResolutionController)initWithAccount:(id)account accountUserCollection:(id)collection transactionSourceCollection:(id)sourceCollection
{
  accountCopy = account;
  collectionCopy = collection;
  sourceCollectionCopy = sourceCollection;
  v16.receiver = self;
  v16.super_class = PKAccountServiceAccountResolutionController;
  v12 = [(PKAccountServiceAccountResolutionController *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_account, account);
    objc_storeStrong(&v13->_accountUserCollection, collection);
    objc_storeStrong(&v13->_transactionSourceCollection, sourceCollection);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v13 selector:sel__handleAccountServiceAccountDidChangeNotification_ name:*MEMORY[0x1E69B9E60] object:0];
  }

  return v13;
}

- (void)presentFlowForAccountResolution:(unint64_t)resolution configuration:(id)configuration completion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  completionCopy = completion;
  if (!self->_isInPreflight)
  {
    objc_initWeak(buf, self);
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __104__PKAccountServiceAccountResolutionController_presentFlowForAccountResolution_configuration_completion___block_invoke;
    v16 = &unk_1E80110B8;
    objc_copyWeak(&v18, buf);
    completionCopy = completionCopy;
    v17 = completionCopy;
    v11 = _Block_copy(&v13);
    v12 = v11;
    self->_isInPreflight = 1;
    if (resolution - 1 >= 4)
    {
      if (completionCopy)
      {
        (*(v11 + 2))(v11, 0);
      }
    }

    else
    {
      [(PKAccountServiceAccountResolutionController *)self _presentAccountServiceAction:resolution configuration:configurationCopy completion:v11, v13, v14, v15, v16];

      completionCopy = 0;
    }

    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
    goto LABEL_11;
  }

  v10 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    resolutionCopy = resolution;
    _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "Failed to present flow for resolution %lu as its already in preflight", buf, 0xCu);
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
LABEL_11:
  }
}

void __104__PKAccountServiceAccountResolutionController_presentFlowForAccountResolution_configuration_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 16) = 0;
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = v5;
      (*(v6 + 16))(v6, a2);
      v5 = v7;
    }
  }
}

- (void)_presentAccountServiceAction:(unint64_t)action configuration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __101__PKAccountServiceAccountResolutionController__presentAccountServiceAction_configuration_completion___block_invoke;
  aBlock[3] = &unk_1E8011270;
  objc_copyWeak(v26, &location);
  v26[1] = action;
  v10 = _Block_copy(aBlock);
  v11 = 0;
  if (action > 2)
  {
    if (action == 3)
    {
      businessChatContext = [configurationCopy businessChatContext];
      if (businessChatContext)
      {
        [(PKAccountServiceAccountResolutionController *)self _openBusinessChatWithContext:businessChatContext];
        v11 = 1;
        if (completionCopy)
        {
          completionCopy[2](completionCopy, 1);
        }

        goto LABEL_19;
      }

      goto LABEL_16;
    }

    if (action == 4)
    {
      [(PKAccountServiceAccountResolutionController *)self _viewAvailablePaymentPlansWithCompletion:completionCopy];
      goto LABEL_23;
    }
  }

  else
  {
    if (action == 1)
    {
      account = self->_account;
      v24 = 0;
      v16 = [PKAccountBillPaymentViewController canPayBillForAccount:account displayableError:&v24];
      businessChatContext = v24;
      if (!v16)
      {
        anyObject = [PKAccountBillPaymentViewController alertControllerForDisplayableError:businessChatContext];
        v10[2](v10, anyObject, 0);
        v11 = 0;
        goto LABEL_18;
      }

      v17 = [(PKTransactionSourceCollection *)self->_transactionSourceCollection transactionSourcesForType:0];
      anyObject = [v17 anyObject];

      v19 = self->_account;
      accountUserCollection = self->_accountUserCollection;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __101__PKAccountServiceAccountResolutionController__presentAccountServiceAction_configuration_completion___block_invoke_2;
      v20[3] = &unk_1E8011298;
      objc_copyWeak(&v23, &location);
      v21 = v10;
      v22 = completionCopy;
      [PKAccountBillPaymentViewController billPaymentViewControllerForAccount:v19 accountUserCollection:accountUserCollection transactionSource:anyObject configuration:configurationCopy withCompletion:v20];

      objc_destroyWeak(&v23);
LABEL_12:
      v11 = 1;
LABEL_18:

      goto LABEL_19;
    }

    if (action == 2)
    {
      businessChatContext = [configurationCopy businessChatContext];
      if (businessChatContext)
      {
        anyObject = [(PKAccountServiceAccountResolutionController *)self _alertControllerForBusinessChatContext:businessChatContext];
        v14 = (v10[2])(v10, anyObject, 0);
        if (completionCopy)
        {
          completionCopy[2](completionCopy, v14);
        }

        goto LABEL_12;
      }

LABEL_16:
      v11 = 0;
LABEL_19:
    }
  }

  if (completionCopy && (v11 & 1) == 0)
  {
    completionCopy[2](completionCopy, 0);
  }

LABEL_23:

  objc_destroyWeak(v26);
  objc_destroyWeak(&location);
}

BOOL __101__PKAccountServiceAccountResolutionController__presentAccountServiceAction_configuration_completion___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (a3)
    {
      v7 = [[PKNavigationController alloc] initWithRootViewController:v5];
      if (PKIsVision() && *(a1 + 40) == 1)
      {
        [(PKNavigationController *)v7 setPageSheetPresentation];
      }

      else if ([0 pkui_userInterfaceIdiomSupportsLargeLayouts])
      {
        [(PKNavigationController *)v7 setModalPresentationStyle:2];
      }
    }

    else
    {
      v7 = v5;
    }

    [WeakRetained _presentViewController:v7];
  }

  return WeakRetained != 0;
}

void __101__PKAccountServiceAccountResolutionController__presentAccountServiceAction_configuration_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = 0;
  if (v7 && WeakRetained)
  {
    v5 = objc_loadWeakRetained(WeakRetained + 7);
    [v7 setObserver:v5];

    v4 = (*(*(a1 + 32) + 16))();
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v4);
  }
}

- (void)_presentViewController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_presentingViewController);
    [v5 presentViewController:controllerCopy animated:1 completion:0];
  }

  else
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    v5 = v6;
    if (v6)
    {
      [v6 accountServiceAccountResolutionController:self requestsPresentViewController:controllerCopy animated:1];
    }
  }
}

- (void)_handleAccountServiceAccountDidChangeNotification:(id)notification
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __97__PKAccountServiceAccountResolutionController__handleAccountServiceAccountDidChangeNotification___block_invoke;
  aBlock[3] = &unk_1E80112C0;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  if (self->_account)
  {
    mEMORY[0x1E69B8400] = [MEMORY[0x1E69B8400] sharedInstance];
    accountIdentifier = [(PKAccount *)self->_account accountIdentifier];
    [mEMORY[0x1E69B8400] accountWithIdentifier:accountIdentifier completion:v4];
  }
}

void __97__PKAccountServiceAccountResolutionController__handleAccountServiceAccountDidChangeNotification___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __97__PKAccountServiceAccountResolutionController__handleAccountServiceAccountDidChangeNotification___block_invoke_2;
  v6[3] = &unk_1E8010A10;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __97__PKAccountServiceAccountResolutionController__handleAccountServiceAccountDidChangeNotification___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    objc_storeStrong((*(a1 + 40) + 24), v1);
  }
}

- (id)_alertControllerForBusinessChatContext:(id)context
{
  contextCopy = context;
  paymentPass = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];
  v5 = [paymentPass localizedValueForFieldKey:*MEMORY[0x1E69BC100]];
  businessChatIdentifier = [paymentPass businessChatIdentifier];
  organizationName = [paymentPass organizationName];
  v8 = PKLocalizedPaymentString(&cfstr_ContactIssuer.isa, &stru_1F3BD5BF0.isa, organizationName);
  v9 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v8 message:0 preferredStyle:0];
  if (v5)
  {
    v10 = MEMORY[0x1E69DC648];
    v11 = PKLocalizedPaymentString(&cfstr_Call.isa);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __86__PKAccountServiceAccountResolutionController__alertControllerForBusinessChatContext___block_invoke;
    v23[3] = &unk_1E80112E8;
    v23[4] = self;
    v12 = [v10 actionWithTitle:v11 style:0 handler:v23];
    [v9 addAction:v12];
  }

  if (businessChatIdentifier && +[PKBusinessChatController deviceSupportsBusinessChat])
  {
    v13 = MEMORY[0x1E69DC648];
    v14 = PKLocalizedPaymentString(&cfstr_Message.isa);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __86__PKAccountServiceAccountResolutionController__alertControllerForBusinessChatContext___block_invoke_2;
    v21[3] = &unk_1E8011310;
    v21[4] = self;
    v22 = contextCopy;
    v15 = [v13 actionWithTitle:v14 style:0 handler:v21];
    [v9 addAction:v15];
  }

  v16 = MEMORY[0x1E69DC648];
  v17 = PKLocalizedString(&cfstr_Cancel.isa);
  v18 = [v16 actionWithTitle:v17 style:1 handler:0];
  [v9 addAction:v18];

  return v9;
}

- (void)_callIssuer
{
  paymentPass = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];
  v2 = [paymentPass localizedValueForFieldKey:*MEMORY[0x1E69BC100]];
  v3 = PKTelephoneURLFromPhoneNumber();
  PKOpenURL();
}

- (void)_openBusinessChatWithContext:(id)context
{
  contextCopy = context;
  if (+[PKBusinessChatController deviceSupportsBusinessChat])
  {
    if (!self->_businessChatController)
    {
      v5 = objc_alloc_init(PKBusinessChatController);
      businessChatController = self->_businessChatController;
      self->_businessChatController = v5;
    }

    objc_initWeak(&location, self);
    v7 = self->_businessChatController;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __76__PKAccountServiceAccountResolutionController__openBusinessChatWithContext___block_invoke;
    v8[3] = &unk_1E8011338;
    objc_copyWeak(&v9, &location);
    [(PKBusinessChatController *)v7 openBusinessChatWithContext:contextCopy completion:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __76__PKAccountServiceAccountResolutionController__openBusinessChatWithContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __76__PKAccountServiceAccountResolutionController__openBusinessChatWithContext___block_invoke_2;
  v5[3] = &unk_1E80110E0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __76__PKAccountServiceAccountResolutionController__openBusinessChatWithContext___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v5 = WeakRetained;
      v4 = PKAlertForDisplayableErrorWithHandlers(v3, 0, 0, 0);
      [v5 _presentViewController:v4];

      WeakRetained = v5;
    }
  }
}

- (void)_openPaymentPlansInDefaultBrowser
{
  v2 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:@"https://card.apple.com/?paymentplans"];
  PKOpenURL();
}

- (void)_viewAvailablePaymentPlansWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(MEMORY[0x1E69B8470]);
  accountIdentifier = [(PKAccount *)self->_account accountIdentifier];
  [v5 setAccountIdentifier:accountIdentifier];

  accountBaseURL = [(PKAccount *)self->_account accountBaseURL];
  [v5 setBaseURL:accountBaseURL];

  mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __88__PKAccountServiceAccountResolutionController__viewAvailablePaymentPlansWithCompletion___block_invoke;
  v10[3] = &unk_1E8011360;
  v10[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  [mEMORY[0x1E69B8EF8] authenticationTokenWithRequest:v5 completion:v10];
}

void __88__PKAccountServiceAccountResolutionController__viewAvailablePaymentPlansWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 token];
  if (![v3 length])
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_1BD026000, v4, OS_LOG_TYPE_ERROR, "Received a null or empty authentication token from web service", v5, 2u);
    }
  }

  [*(a1 + 32) _startPaymentPlansWebSessionWithAuthenticationToken:v3 completion:*(a1 + 40)];
}

- (void)_startPaymentPlansWebSessionWithAuthenticationToken:(id)token completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  completionCopy = completion;
  v8 = PKCreditWebPortalOverrideURL();
  absoluteString = [v8 absoluteString];
  v10 = absoluteString;
  v11 = @"https://card.apple.com";
  if (absoluteString)
  {
    v11 = absoluteString;
  }

  v12 = v11;

  v13 = [(__CFString *)v12 stringByAppendingString:@"?paymentplans=wallet"];

  v14 = [MEMORY[0x1E695DFF8] URLWithString:v13];
  if (v14)
  {
    v15 = [MEMORY[0x1E695A958] callbackWithCustomScheme:@"wallet"];
    v16 = objc_alloc(MEMORY[0x1E695A950]);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __110__PKAccountServiceAccountResolutionController__startPaymentPlansWebSessionWithAuthenticationToken_completion___block_invoke;
    v23[3] = &unk_1E8011388;
    v17 = completionCopy;
    v24 = v17;
    v18 = [v16 initWithURL:v14 callback:v15 completionHandler:v23];
    [v18 setPrefersEphemeralWebBrowserSession:1];
    [v18 setPresentationContextProvider:self];
    if ([tokenCopy length])
    {
      v25 = @"x-apple-authentication";
      v26 = tokenCopy;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      [v18 setAdditionalHeaderFields:v19];
    }

    if ([v18 start])
    {
      self->_isInPreflight = 0;
      v20 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v13;
        _os_log_impl(&dword_1BD026000, v20, OS_LOG_TYPE_DEFAULT, "Successfully started ASWebAuthenticationSession with URL %@", buf, 0xCu);
      }
    }

    else
    {
      v22 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v28 = v13;
        _os_log_error_impl(&dword_1BD026000, v22, OS_LOG_TYPE_ERROR, "Failed to start ASWebAuthenticationSession with URL %@", buf, 0xCu);
      }

      [(PKAccountServiceAccountResolutionController *)self _openPaymentPlansInDefaultBrowser];
      if (v17)
      {
        (*(v17 + 2))(v17, 0);
      }
    }
  }

  else
  {
    v21 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28 = v13;
      _os_log_error_impl(&dword_1BD026000, v21, OS_LOG_TYPE_ERROR, "Invalid portal URL %@", buf, 0xCu);
    }

    [(PKAccountServiceAccountResolutionController *)self _openPaymentPlansInDefaultBrowser];
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

void __110__PKAccountServiceAccountResolutionController__startPaymentPlansWebSessionWithAuthenticationToken_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_error_impl(&dword_1BD026000, v7, OS_LOG_TYPE_ERROR, "Error received from ASWebAuthenticationSession completion handler: %@", &v9, 0xCu);
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, 1);
  }
}

- (id)presentationAnchorForWebAuthenticationSession:(id)session
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
  view = [WeakRetained view];
  window = [view window];

  return window;
}

- (PKAccountServiceAccountResolutionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PKAccountBillPaymentObserver)billPaymentObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_billPaymentObserver);

  return WeakRetained;
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end
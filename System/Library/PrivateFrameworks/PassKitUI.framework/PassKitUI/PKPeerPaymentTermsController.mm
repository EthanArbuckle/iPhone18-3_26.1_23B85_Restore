@interface PKPeerPaymentTermsController
- (PKPeerPaymentTermsController)initWithTermsURL:(id)a3 termsIdentifier:(id)a4 passUniqueID:(id)a5 webService:(id)a6;
- (UIViewController)currentHostController;
- (void)_presentRemoteUIControllerWithUpdatedTermsViewController:(id)a3;
- (void)peerPaymentUpdatedTermsViewController:(id)a3 didSelectContinue:(BOOL)a4;
- (void)presentTermsOverController:(id)a3 showInterstitialViewController:(BOOL)a4 withCompletionHandler:(id)a5;
@end

@implementation PKPeerPaymentTermsController

- (PKPeerPaymentTermsController)initWithTermsURL:(id)a3 termsIdentifier:(id)a4 passUniqueID:(id)a5 webService:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v29.receiver = self;
  v29.super_class = PKPeerPaymentTermsController;
  v15 = [(PKPeerPaymentTermsController *)&v29 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_termsURL, a3);
    v17 = [v12 copy];
    termsIdentifier = v16->_termsIdentifier;
    v16->_termsIdentifier = v17;

    objc_storeStrong(&v16->_passUniqueID, a5);
    objc_storeStrong(&v16->_webService, a6);
    v19 = objc_alloc_init(MEMORY[0x1E69C7048]);
    remoteUIController = v16->_remoteUIController;
    v16->_remoteUIController = v19;

    v21 = PKUserInterfaceIdiomSupportsLargeLayouts();
    v22 = 0x1E69DCCD8;
    if (!v21)
    {
      v22 = off_1E8006140;
    }

    v23 = objc_alloc_init(*v22);
    navigationController = v16->_navigationController;
    v16->_navigationController = v23;

    v25 = 1;
    [(UINavigationController *)v16->_navigationController setModalInPresentation:1];
    [(RemoteUIController *)v16->_remoteUIController setNavigationController:v16->_navigationController];
    v26 = [(RemoteUIController *)v16->_remoteUIController loader];
    v27 = [(PKPeerPaymentWebService *)v16->_webService context];
    if (([v27 devSigned] & 1) == 0)
    {
      v25 = os_variant_allows_internal_security_policies();
    }

    [v26 setAllowNonSecureHTTP:v25];
  }

  return v16;
}

- (void)presentTermsOverController:(id)a3 showInterstitialViewController:(BOOL)a4 withCompletionHandler:(id)a5
{
  v5 = a4;
  v8 = a5;
  objc_storeWeak(&self->_currentHostController, a3);
  v9 = [v8 copy];

  completionHandler = self->_completionHandler;
  self->_completionHandler = v9;

  if (v5)
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "Presenting peer payment interstial terms view controller.", v16, 2u);
    }

    v12 = objc_alloc_init(PKNavigationController);
    [(PKNavigationController *)v12 setModalInPresentation:1];
    v13 = [[PKPeerPaymentUpdatedTermsViewController alloc] initWithPassUniqueID:self->_passUniqueID];
    [(PKPeerPaymentUpdatedTermsViewController *)v13 setDelegate:self];
    if ([(UIViewController *)v13 pkui_userInterfaceIdiomSupportsLargeLayouts])
    {
      [(PKNavigationController *)v12 setModalPresentationStyle:2];
    }

    [(PKNavigationController *)v12 pushViewController:v13 animated:0];
    customPresentationHandler = self->_customPresentationHandler;
    WeakRetained = objc_loadWeakRetained(&self->_currentHostController);
    if (customPresentationHandler)
    {
      customPresentationHandler[2](customPresentationHandler, WeakRetained, v12);
    }

    else
    {
      [WeakRetained presentViewController:v12 animated:1 completion:0];
    }
  }

  else
  {

    [(PKPeerPaymentTermsController *)self _presentRemoteUIController];
  }
}

- (void)peerPaymentUpdatedTermsViewController:(id)a3 didSelectContinue:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    v8 = v6;
    objc_storeWeak(&self->_currentHostController, v6);
    [(PKPeerPaymentTermsController *)self setCustomPresentationHandler:&__block_literal_global_167];
    [(PKPeerPaymentTermsController *)self _presentRemoteUIControllerWithUpdatedTermsViewController:v8];
  }

  else
  {
    completionHandler = self->_completionHandler;
    if (!completionHandler)
    {
      goto LABEL_6;
    }

    v8 = v6;
    completionHandler[2](completionHandler, 1, 0);
  }

  v6 = v8;
LABEL_6:
}

void __88__PKPeerPaymentTermsController_peerPaymentUpdatedTermsViewController_didSelectContinue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  [v5 setModalPresentationStyle:3];
  [v5 presentViewController:v4 withTransition:1 completion:0];
}

- (void)_presentRemoteUIControllerWithUpdatedTermsViewController:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    termsURL = self->_termsURL;
    termsIdentifier = self->_termsIdentifier;
    *buf = 138412546;
    v16 = termsURL;
    v17 = 2112;
    v18 = termsIdentifier;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Presenting peer payment terms with URL: %@, termsIdentifier: %@", buf, 0x16u);
  }

  [v4 showSpinner:1];
  objc_initWeak(buf, self);
  remoteUIController = self->_remoteUIController;
  v9 = self->_termsURL;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __89__PKPeerPaymentTermsController__presentRemoteUIControllerWithUpdatedTermsViewController___block_invoke;
  v11[3] = &unk_1E801D6E0;
  objc_copyWeak(&v14, buf);
  v10 = v4;
  v12 = v10;
  v13 = self;
  [(RemoteUIController *)remoteUIController loadURL:v9 postBody:0 completion:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

void __89__PKPeerPaymentTermsController__presentRemoteUIControllerWithUpdatedTermsViewController___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__PKPeerPaymentTermsController__presentRemoteUIControllerWithUpdatedTermsViewController___block_invoke_2;
  block[3] = &unk_1E801D6B8;
  v14 = a2;
  v10 = v5;
  v6 = v5;
  objc_copyWeak(&v13, (a1 + 48));
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = v7;
  v12 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v13);
}

void __89__PKPeerPaymentTermsController__presentRemoteUIControllerWithUpdatedTermsViewController___block_invoke_2(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    if (*(a1 + 64))
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    *buf = 138412546;
    v21 = v4;
    v22 = 2112;
    v23 = v3;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Presented terms with success: %@, error %@.", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    [*(a1 + 40) showSpinner:0];
    if (*(a1 + 64) == 1)
    {
      v6 = *(WeakRetained + 8);
      v7 = objc_loadWeakRetained(WeakRetained + 9);
      if (v6)
      {
        (*(v6 + 16))(v6, v7, *(WeakRetained + 10));
      }

      else
      {
        [v7 presentViewController:*(WeakRetained + 10) animated:1 completion:0];
      }

      v11 = *(WeakRetained + 6);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __89__PKPeerPaymentTermsController__presentRemoteUIControllerWithUpdatedTermsViewController___block_invoke_27;
      v18[3] = &unk_1E801D640;
      objc_copyWeak(&v19, (a1 + 56));
      v18[4] = *(a1 + 48);
      [v11 setHandlerForElementName:@"agree" handler:v18];
      v12 = *(WeakRetained + 6);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __89__PKPeerPaymentTermsController__presentRemoteUIControllerWithUpdatedTermsViewController___block_invoke_38;
      v16[3] = &unk_1E801D668;
      v16[4] = *(a1 + 48);
      v17 = *(a1 + 32);
      [v12 setHandlerForElementName:@"disagree" handler:v16];
      v13 = *(WeakRetained + 6);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __89__PKPeerPaymentTermsController__presentRemoteUIControllerWithUpdatedTermsViewController___block_invoke_2_42;
      v14[3] = &unk_1E801D690;
      objc_copyWeak(&v15, (a1 + 56));
      [v13 setHandlerForElementName:@"emailTerms" handler:v14];
      objc_destroyWeak(&v15);

      objc_destroyWeak(&v19);
    }

    else
    {
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(*(a1 + 48) + 16);
        v9 = *(a1 + 32);
        *buf = 138412546;
        v21 = v8;
        v22 = 2112;
        v23 = v9;
        _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Error Failed to load termsURL %@ with error %@", buf, 0x16u);
      }

      v10 = *(*(a1 + 48) + 8);
      if (v10)
      {
        (*(v10 + 16))(v10, 0, *(a1 + 32));
      }
    }
  }
}

void __89__PKPeerPaymentTermsController__presentRemoteUIControllerWithUpdatedTermsViewController___block_invoke_27(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAct_3.isa);
    [v3 startNavigationBarSpinnerWithTitle:v5];
    v6 = WeakRetained[5];
    v7 = WeakRetained[3];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __89__PKPeerPaymentTermsController__presentRemoteUIControllerWithUpdatedTermsViewController___block_invoke_2_31;
    v10[3] = &unk_1E8013D88;
    v8 = v3;
    v9 = *(a1 + 32);
    v11 = v8;
    v12 = v9;
    [v6 peerPaymentAcceptTermsWithIdentifier:v7 completion:v10];
  }
}

void __89__PKPeerPaymentTermsController__presentRemoteUIControllerWithUpdatedTermsViewController___block_invoke_2_31(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __89__PKPeerPaymentTermsController__presentRemoteUIControllerWithUpdatedTermsViewController___block_invoke_3;
  v8[3] = &unk_1E80170D8;
  v6 = *(a1 + 32);
  v12 = a2;
  v9 = v6;
  v10 = v5;
  v11 = *(a1 + 40);
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

uint64_t __89__PKPeerPaymentTermsController__presentRemoteUIControllerWithUpdatedTermsViewController___block_invoke_3(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) stopNavigationBarSpinner];
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    if (*(a1 + 56))
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    v6 = 138412546;
    v7 = v4;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Accepted terms with success: %@, error %@.", &v6, 0x16u);
  }

  result = *(*(a1 + 48) + 8);
  if (result)
  {
    return (*(result + 16))(result, 2, *(a1 + 40));
  }

  return result;
}

uint64_t __89__PKPeerPaymentTermsController__presentRemoteUIControllerWithUpdatedTermsViewController___block_invoke_38(uint64_t a1)
{
  result = *(*(a1 + 32) + 8);
  if (result)
  {
    return (*(result + 16))(result, 1, *(a1 + 40));
  }

  return result;
}

void __89__PKPeerPaymentTermsController__presentRemoteUIControllerWithUpdatedTermsViewController___block_invoke_2_42(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __89__PKPeerPaymentTermsController__presentRemoteUIControllerWithUpdatedTermsViewController___block_invoke_3_43;
  v5[3] = &unk_1E80110E0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __89__PKPeerPaymentTermsController__presentRemoteUIControllerWithUpdatedTermsViewController___block_invoke_3_43(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentEma_1.isa);
    v4 = PKPrimaryAppleAccountFormattedUsername();
    v5 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentEma_2.isa, &stru_1F3BD5BF0.isa, v4);

    v6 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v3 message:v5 preferredStyle:1];
    v7 = MEMORY[0x1E69DC648];
    v8 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentEma_3.isa);
    v9 = [v7 actionWithTitle:v8 style:1 handler:0];

    v10 = MEMORY[0x1E69DC648];
    v11 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentEma_4.isa);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __89__PKPeerPaymentTermsController__presentRemoteUIControllerWithUpdatedTermsViewController___block_invoke_4;
    v13[3] = &unk_1E8011310;
    v14 = *(a1 + 32);
    v15 = WeakRetained;
    v12 = [v10 actionWithTitle:v11 style:0 handler:v13];

    [v6 addAction:v9];
    [v6 addAction:v12];
    [v6 setPreferredAction:v12];
    [WeakRetained[10] presentViewController:v6 animated:1 completion:0];
  }
}

void __89__PKPeerPaymentTermsController__presentRemoteUIControllerWithUpdatedTermsViewController___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentEma_5.isa);
  [v2 startNavigationBarSpinnerWithTitle:v3];

  v4 = *(*(a1 + 40) + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __89__PKPeerPaymentTermsController__presentRemoteUIControllerWithUpdatedTermsViewController___block_invoke_5;
  v7[3] = &unk_1E8013D88;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = v5;
  v9 = v6;
  [v4 peerPaymentEmailTermsWithCompletion:v7];
}

void __89__PKPeerPaymentTermsController__presentRemoteUIControllerWithUpdatedTermsViewController___block_invoke_5(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __89__PKPeerPaymentTermsController__presentRemoteUIControllerWithUpdatedTermsViewController___block_invoke_6;
  v8[3] = &unk_1E80170D8;
  v6 = *(a1 + 32);
  v12 = a2;
  v9 = v6;
  v10 = v5;
  v11 = *(a1 + 40);
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

void __89__PKPeerPaymentTermsController__presentRemoteUIControllerWithUpdatedTermsViewController___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) stopNavigationBarSpinner];
  if ((*(a1 + 56) & 1) == 0 && *(a1 + 40))
  {
    v3 = [MEMORY[0x1E69B8F28] displayableErrorForError:?];
    v2 = PKAlertForDisplayableErrorWithHandlers(v3, 0, 0, 0);
    [*(*(a1 + 48) + 80) presentViewController:v2 animated:1 completion:0];
  }
}

- (UIViewController)currentHostController
{
  WeakRetained = objc_loadWeakRetained(&self->_currentHostController);

  return WeakRetained;
}

@end
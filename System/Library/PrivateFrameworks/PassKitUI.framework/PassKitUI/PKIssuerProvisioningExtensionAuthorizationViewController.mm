@interface PKIssuerProvisioningExtensionAuthorizationViewController
- (PKIssuerProvisioningExtensionAuthorizationViewController)initWithExtension:(id)extension completionHandler:(id)handler;
- (void)_cancel;
- (void)_failWithApplicationName:(id)name;
- (void)_invokeCompletionWithAuthorized:(BOOL)authorized;
- (void)dealloc;
@end

@implementation PKIssuerProvisioningExtensionAuthorizationViewController

- (PKIssuerProvisioningExtensionAuthorizationViewController)initWithExtension:(id)extension completionHandler:(id)handler
{
  extensionCopy = extension;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (extensionCopy)
  {
    v39.receiver = self;
    v39.super_class = PKIssuerProvisioningExtensionAuthorizationViewController;
    v9 = [(PKIssuerProvisioningExtensionAuthorizationViewController *)&v39 initWithNibName:0 bundle:0];
    if (v9)
    {
      v10 = _Block_copy(v8);
      completionHandler = v9->_completionHandler;
      v9->_completionHandler = v10;

      _plugIn = [extensionCopy _plugIn];
      localizedContainingName = [_plugIn localizedContainingName];
      v14 = localizedContainingName;
      if (localizedContainingName)
      {
        _localizedName = localizedContainingName;
      }

      else
      {
        _localizedName = [extensionCopy _localizedName];
      }

      v17 = _localizedName;

      v18 = v17;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __96__PKIssuerProvisioningExtensionAuthorizationViewController_initWithExtension_completionHandler___block_invoke;
      aBlock[3] = &unk_1E801A5B0;
      v19 = v18;
      v38 = v19;
      v20 = _Block_copy(aBlock);
      v21 = objc_alloc_init(PKIssuerProvisioningExtensionAuthorizationPlaceholderViewController);
      navigationItem = [(PKIssuerProvisioningExtensionAuthorizationPlaceholderViewController *)v21 navigationItem];
      v20[2](v20, v9, navigationItem);

      [(PKIssuerProvisioningExtensionAuthorizationViewController *)v9 pushViewController:v21 animated:0];
      v35[0] = 0;
      v35[1] = v35;
      v35[2] = 0x2020000000;
      v36 = 0;
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __96__PKIssuerProvisioningExtensionAuthorizationViewController_initWithExtension_completionHandler___block_invoke_2;
      v34[3] = &unk_1E801A5D8;
      v34[4] = v35;
      [(PKIssuerProvisioningExtensionAuthorizationViewController *)v9 _beginDelayingPresentation:v34 cancellationHandler:1.0];
      objc_initWeak(&location, v9);
      v23 = dispatch_get_global_queue(25, 0);
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __96__PKIssuerProvisioningExtensionAuthorizationViewController_initWithExtension_completionHandler___block_invoke_3;
      v27[3] = &unk_1E801A678;
      v28 = extensionCopy;
      v29 = v19;
      v24 = v19;
      objc_copyWeak(&v32, &location);
      v30 = v20;
      v31 = v35;
      v25 = v20;
      dispatch_async(v23, v27);

      objc_destroyWeak(&v32);
      objc_destroyWeak(&location);
      _Block_object_dispose(v35, 8);
    }

    else if (v8)
    {
      v8[2](v8, 0, 0);
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0, 0);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

void __96__PKIssuerProvisioningExtensionAuthorizationViewController_initWithExtension_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  [v5 setTitle:v4];
  v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v6 action:sel__cancel];

  [v5 setLeftBarButtonItem:v7];
}

void __96__PKIssuerProvisioningExtensionAuthorizationViewController_initWithExtension_completionHandler___block_invoke_3(uint64_t a1)
{
  v43[3] = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) _plugIn];
  v4 = [v3 containingUrl];

  v5 = [v4 path];
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v28 = v2;
    v29 = a1;
    v27 = v4;
    v9 = v4;
    v10 = *MEMORY[0x1E696A2B0];
    v42[0] = *MEMORY[0x1E696A2F8];
    v42[1] = v10;
    v43[0] = @"com.apple.PassKit.issuer-provisioning.authorization";
    v43[1] = v6;
    v26 = v6;
    v42[2] = @"ENTITLEMENT:com.apple.developer.payment-pass-provisioning";
    v43[2] = MEMORY[0x1E695E118];
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:3];
    v11 = [MEMORY[0x1E696ABD0] extensionsWithMatchingAttributes:? error:?];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v12)
    {
      v13 = v12;
      v8 = 0;
      v14 = *v38;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v38 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v37 + 1) + 8 * i);
          v17 = [v16 _plugIn];
          v18 = [v17 containingUrl];
          v19 = PKEqualObjects();

          if (v19)
          {
            v20 = v16;

            v8 = v20;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v13);
    }

    else
    {
      v8 = 0;
    }

    v2 = v28;
    a1 = v29;
    v6 = v26;
    v4 = v27;
  }

  objc_autoreleasePoolPop(v2);
  if (!v9)
  {
    v9 = *(a1 + 40);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96__PKIssuerProvisioningExtensionAuthorizationViewController_initWithExtension_completionHandler___block_invoke_4;
  block[3] = &unk_1E801A650;
  objc_copyWeak(&v36, (a1 + 64));
  v21 = *(a1 + 48);
  v22 = *(a1 + 56);
  v34 = v21;
  v35 = v22;
  v31 = *(a1 + 40);
  v32 = v8;
  v33 = v9;
  v23 = v9;
  v24 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v36);
}

void __96__PKIssuerProvisioningExtensionAuthorizationViewController_initWithExtension_completionHandler___block_invoke_4(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __96__PKIssuerProvisioningExtensionAuthorizationViewController_initWithExtension_completionHandler___block_invoke_5;
    aBlock[3] = &unk_1E801A600;
    v3 = *(a1 + 56);
    v4 = *(a1 + 64);
    v15 = v3;
    v16 = v4;
    v14 = *(a1 + 32);
    v5 = _Block_copy(aBlock);
    v6 = *(a1 + 40);
    if (v6)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __96__PKIssuerProvisioningExtensionAuthorizationViewController_initWithExtension_completionHandler___block_invoke_6;
      v9[3] = &unk_1E801A628;
      objc_copyWeak(&v12, (a1 + 72));
      v11 = v5;
      v10 = *(a1 + 48);
      [v6 instantiateViewControllerWithInputItems:0 connectionHandler:v9];

      objc_destroyWeak(&v12);
    }

    else
    {
      v7 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 48);
        *buf = 138412290;
        v18 = v8;
        _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "PKIssuerProvisioningExtensionAuthorizationViewController: failed to find matching authorization UI extension for %@.", buf, 0xCu);
      }

      (*(v5 + 2))(v5, WeakRetained, 0);
    }
  }
}

void __96__PKIssuerProvisioningExtensionAuthorizationViewController_initWithExtension_completionHandler___block_invoke_5(void *a1, void *a2, void *a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = a1[5];
    v6 = a3;
    v7 = a2;
    v8 = [v6 navigationItem];
    (*(v5 + 16))(v5, v7, v8);

    [v7[185] reportViewAppeared];
    v12[0] = v6;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v10 = *(*(a1[6] + 8) + 24);

    [v7 setViewControllers:v9 animated:v10];
    [v7 _endDelayingPresentation];
  }

  else
  {
    v11 = a2;
    [v11 _endDelayingPresentation];
    [v11 _failWithApplicationName:a1[4]];
  }
}

void __96__PKIssuerProvisioningExtensionAuthorizationViewController_initWithExtension_completionHandler___block_invoke_6(uint64_t a1, void *a2, void *a3, void *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v8 && !v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __96__PKIssuerProvisioningExtensionAuthorizationViewController_initWithExtension_completionHandler___block_invoke_7;
      v13[3] = &unk_1E8011180;
      objc_copyWeak(&v14, (a1 + 48));
      [v8 pkui_setCompletionHandler:v13];
      (*(*(a1 + 40) + 16))();
      objc_destroyWeak(&v14);
    }

    else
    {
      v11 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 32);
        *buf = 138412290;
        v16 = v12;
        _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "PKIssuerProvisioningExtensionAuthorizationViewController: failed to materialize authorization UI extension for %@.", buf, 0xCu);
      }

      (*(*(a1 + 40) + 16))();
    }
  }
}

void __96__PKIssuerProvisioningExtensionAuthorizationViewController_initWithExtension_completionHandler___block_invoke_7(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invokeCompletionWithAuthorized:a2];
}

- (void)dealloc
{
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    v4 = _Block_copy(completionHandler);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__PKIssuerProvisioningExtensionAuthorizationViewController_dealloc__block_invoke;
    block[3] = &unk_1E8010B50;
    v8 = v4;
    v5 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  v6.receiver = self;
  v6.super_class = PKIssuerProvisioningExtensionAuthorizationViewController;
  [(PKIssuerProvisioningExtensionAuthorizationViewController *)&v6 dealloc];
}

uint64_t __67__PKIssuerProvisioningExtensionAuthorizationViewController_dealloc__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

- (void)_invokeCompletionWithAuthorized:(BOOL)authorized
{
  authorizedCopy = authorized;
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportPageCompleted:authorized context:0];
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, self, authorizedCopy);
    v6 = self->_completionHandler;
    self->_completionHandler = 0;
  }
}

- (void)_cancel
{
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportButtonPressed:3];

  [(PKIssuerProvisioningExtensionAuthorizationViewController *)self _invokeCompletionWithAuthorized:0];
}

- (void)_failWithApplicationName:(id)name
{
  nameCopy = name;
  v5 = PKLocalizedPaymentString(&cfstr_ProvisioningEx_0.isa, &stru_1F3BD5BF0.isa, nameCopy);
  v6 = MEMORY[0x1E69DC650];
  v7 = PKLocalizedPaymentString(&cfstr_ProvisioningEx_1.isa);
  v8 = [v6 alertControllerWithTitle:v7 message:v5 preferredStyle:1];

  objc_initWeak(&location, self);
  v9 = MEMORY[0x1E69DC648];
  v10 = PKLocalizedString(&cfstr_OkButtonTitle.isa);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __85__PKIssuerProvisioningExtensionAuthorizationViewController__failWithApplicationName___block_invoke;
  v12[3] = &unk_1E8012CC0;
  objc_copyWeak(&v13, &location);
  v11 = [v9 actionWithTitle:v10 style:1 handler:v12];
  [v8 addAction:v11];

  [(PKIssuerProvisioningExtensionAuthorizationViewController *)self presentViewController:v8 animated:1 completion:0];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __85__PKIssuerProvisioningExtensionAuthorizationViewController__failWithApplicationName___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invokeCompletionWithAuthorized:0];
}

@end
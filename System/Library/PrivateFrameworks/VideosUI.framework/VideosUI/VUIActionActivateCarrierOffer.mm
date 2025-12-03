@interface VUIActionActivateCarrierOffer
- (VUIActionActivateCarrierOffer)initWithContextData:(id)data;
- (id)_configurePreflightManager;
- (void)_activateOfferWithCompletionHandler:(id)handler;
- (void)_handleActivationSuccessWithCompletionHandler:(id)handler;
- (void)_notifyDidEndActivationWithError:(id)error;
- (void)_notifyDidStartActivation;
- (void)_showUIConfirmationForSubTransactionWithCompletion:(id)completion;
- (void)handleAuthenticateRequest:(id)request completion:(id)completion;
- (void)handleDialogRequest:(id)request completion:(id)completion;
- (void)handleEngagementRequest:(id)request completion:(id)completion;
- (void)handleSuccessfulActivationHelper:(id)helper;
- (void)performWithTargetResponder:(id)responder completionHandler:(id)handler;
@end

@implementation VUIActionActivateCarrierOffer

- (VUIActionActivateCarrierOffer)initWithContextData:(id)data
{
  dataCopy = data;
  v19.receiver = self;
  v19.super_class = VUIActionActivateCarrierOffer;
  v5 = [(VUIActionActivateCarrierOffer *)&v19 init];
  if (v5)
  {
    v6 = VUIDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "ActivateCarrierOffer - create", v18, 2u);
    }

    v7 = [dataCopy vui_stringForKey:@"linkParams"];
    linkParams = v5->_linkParams;
    v5->_linkParams = v7;

    v9 = [dataCopy vui_stringForKey:@"productCode"];
    productCode = v5->_productCode;
    v5->_productCode = v9;

    v11 = [dataCopy vui_dictionaryForKey:@"additionalParams"];
    additionalParams = v5->_additionalParams;
    v5->_additionalParams = v11;

    v13 = [dataCopy vui_stringForKey:@"notificationTitle"];
    notificationTitle = v5->_notificationTitle;
    v5->_notificationTitle = v13;

    v15 = [dataCopy vui_stringForKey:@"notificationBody"];
    notificationBody = v5->_notificationBody;
    v5->_notificationBody = v15;
  }

  return v5;
}

- (void)_activateOfferWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = VUIDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "ActivateCarrierOffer - activating offer...", buf, 2u);
  }

  activeAccount = [MEMORY[0x1E69D5920] activeAccount];
  createBagForSubProfile = [MEMORY[0x1E698C870] createBagForSubProfile];
  v8 = [objc_alloc(MEMORY[0x1E698C870]) initWithAccount:activeAccount bag:createBagForSubProfile linkParams:self->_linkParams productCode:self->_productCode];
  [v8 setAdditionalLinkingParameters:self->_additionalParams];
  [v8 setDelegate:self];
  perform = [v8 perform];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__VUIActionActivateCarrierOffer__activateOfferWithCompletionHandler___block_invoke;
  v11[3] = &unk_1E8730510;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [perform addFinishBlock:v11];
}

void __69__VUIActionActivateCarrierOffer__activateOfferWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = VUIDefaultLogObject();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __69__VUIActionActivateCarrierOffer__activateOfferWithCompletionHandler___block_invoke_cold_1();
    }

    v9 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "ActivateCarrierOffer - Registered for hard bundle offers, result: %@", &v10, 0xCu);
    }

    v9 = *(*(a1 + 32) + 16);
  }

  v9();
}

- (void)performWithTargetResponder:(id)responder completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = VUIDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "ActivateCarrierOffer - performing action...", buf, 2u);
  }

  _configurePreflightManager = [(VUIActionActivateCarrierOffer *)self _configurePreflightManager];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __78__VUIActionActivateCarrierOffer_performWithTargetResponder_completionHandler___block_invoke;
  v9[3] = &unk_1E8730588;
  v9[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [_configurePreflightManager preflightWithOptions:1 completion:v9];
}

void __78__VUIActionActivateCarrierOffer_performWithTargetResponder_completionHandler___block_invoke(uint64_t a1, char a2)
{
  [*(a1 + 32) _notifyDidStartActivation];
  if (a2)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __78__VUIActionActivateCarrierOffer_performWithTargetResponder_completionHandler___block_invoke_28;
    v8[3] = &unk_1E8730560;
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = v5;
    [v4 _activateOfferWithCompletionHandler:v8];
    v6 = v9;
  }

  else
  {
    v7 = VUIDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "ActivateCarrierOffer - Activation are restricted", buf, 2u);
    }

    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"TRANSACTION_RESTRICTED_CONTENT" code:0 userInfo:0];
    [*(a1 + 32) _notifyDidEndActivationWithError:v6];
    (*(*(a1 + 40) + 16))();
  }
}

void __78__VUIActionActivateCarrierOffer_performWithTargetResponder_completionHandler___block_invoke_28(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = VUIDefaultLogObject();
  v7 = v6;
  if (v5 || (a2 & 1) == 0)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __78__VUIActionActivateCarrierOffer_performWithTargetResponder_completionHandler___block_invoke_28_cold_1();
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v12 = __78__VUIActionActivateCarrierOffer_performWithTargetResponder_completionHandler___block_invoke_29;
    v13 = &unk_1E8730538;
    v8 = *(a1 + 40);
    v9 = *(a1 + 32);
    v16 = v8;
    v14 = v9;
    v15 = v5;
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v12(block);
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "ActivateCarrierOffer - Activation successful", v10, 2u);
    }

    [*(a1 + 32) _handleActivationSuccessWithCompletionHandler:*(a1 + 40)];
  }
}

void __78__VUIActionActivateCarrierOffer_performWithTargetResponder_completionHandler___block_invoke_29(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __78__VUIActionActivateCarrierOffer_performWithTargetResponder_completionHandler___block_invoke_2;
  v5[3] = &unk_1E8730538;
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = v2;
  v5[4] = v3;
  v6 = v4;
  [VUIApplicationRouter dismissOrPopViewControllerWithId:@"CommerceViewControllerIdentifier" completion:v5];
}

uint64_t __78__VUIActionActivateCarrierOffer_performWithTargetResponder_completionHandler___block_invoke_2(uint64_t result)
{
  if (*(result + 48))
  {
    v1 = result;
    [*(result + 32) _notifyDidEndActivationWithError:*(result + 40)];
    v2 = *(*(v1 + 48) + 16);

    return v2();
  }

  return result;
}

- (void)_handleActivationSuccessWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  if (_os_feature_enabled_impl())
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __79__VUIActionActivateCarrierOffer__handleActivationSuccessWithCompletionHandler___block_invoke;
    v12[3] = &unk_1E87305B0;
    v5 = &v14;
    objc_copyWeak(&v14, &location);
    v13 = handlerCopy;
    [_TtC8VideosUI25VUIUTSNetworkManagerProxy fetchConfiguration:1 completion:v12];
    v6 = &v13;
  }

  else
  {
    mEMORY[0x1E69E1508] = [MEMORY[0x1E69E1508] sharedInstance];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __79__VUIActionActivateCarrierOffer__handleActivationSuccessWithCompletionHandler___block_invoke_39;
    v9[3] = &unk_1E87305D8;
    v5 = &v11;
    objc_copyWeak(&v11, &location);
    v10 = handlerCopy;
    [mEMORY[0x1E69E1508] fetchConfigurationWithOptions:0 cachePolicy:3 queryParameters:0 completion:v9];
    v6 = &v10;
  }

  objc_destroyWeak(v5);
  mEMORY[0x1E69E15E8] = [MEMORY[0x1E69E15E8] sharedInstance];
  [mEMORY[0x1E69E15E8] fetchSubscriptionData:1 completion:&__block_literal_global_49];

  objc_destroyWeak(&location);
}

void __79__VUIActionActivateCarrierOffer__handleActivationSuccessWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = VUIDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "ActivateCarrierOffer - UTS Subscription state refreshed. error: %@", &v7, 0xCu);
  }

  [WeakRetained handleSuccessfulActivationHelper:*(a1 + 32)];
}

void __79__VUIActionActivateCarrierOffer__handleActivationSuccessWithCompletionHandler___block_invoke_39(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = VUIDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "ActivateCarrierOffer - UTS Subscription state refreshed. error: %@", &v7, 0xCu);
  }

  [WeakRetained handleSuccessfulActivationHelper:*(a1 + 32)];
}

void __79__VUIActionActivateCarrierOffer__handleActivationSuccessWithCompletionHandler___block_invoke_42(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = VUIDefaultLogObject();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v6)
    {
      LOWORD(v10) = 0;
      v7 = "ActivateCarrierOffer - successfully refreshed subscription store";
      v8 = v5;
      v9 = 2;
LABEL_6:
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, v7, &v10, v9);
    }
  }

  else if (v6)
  {
    v10 = 138412290;
    v11 = v4;
    v7 = "ActivateCarrierOffer - error refreshing subscriptions from finance: %@";
    v8 = v5;
    v9 = 12;
    goto LABEL_6;
  }
}

- (void)handleSuccessfulActivationHelper:(id)helper
{
  helperCopy = helper;
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v8 = __66__VUIActionActivateCarrierOffer_handleSuccessfulActivationHelper___block_invoke;
  v9 = &unk_1E872E828;
  objc_copyWeak(&v11, &location);
  v5 = helperCopy;
  v10 = v5;
  v6 = v7;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v8(v6);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __66__VUIActionActivateCarrierOffer_handleSuccessfulActivationHelper___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __66__VUIActionActivateCarrierOffer_handleSuccessfulActivationHelper___block_invoke_2;
  v2[3] = &unk_1E872E828;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  [VUIApplicationRouter dismissOrPopViewControllerWithId:@"CommerceViewControllerIdentifier" completion:v2];

  objc_destroyWeak(&v4);
}

void __66__VUIActionActivateCarrierOffer_handleSuccessfulActivationHelper___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (*(a1 + 32))
  {
    [WeakRetained _notifyDidEndActivationWithError:0];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __66__VUIActionActivateCarrierOffer_handleSuccessfulActivationHelper___block_invoke_3;
    v4[3] = &unk_1E872D7E0;
    v5 = *(a1 + 32);
    [v3 _showUIConfirmationForSubTransactionWithCompletion:v4];
  }
}

- (void)handleEngagementRequest:(id)request completion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completionCopy = completion;
  v7 = VUIDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    logKey = [requestCopy logKey];
    *buf = 138412290;
    v18 = logKey;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "ActivateCarrierOffer - handle engagement request: %@", buf, 0xCu);
  }

  v12 = MEMORY[0x1E69E9820];
  v13 = __68__VUIActionActivateCarrierOffer_handleEngagementRequest_completion___block_invoke;
  v14 = &unk_1E872E580;
  v15 = requestCopy;
  v16 = completionCopy;
  v9 = MEMORY[0x1E696AF00];
  v10 = completionCopy;
  v11 = requestCopy;
  if ([v9 isMainThread])
  {
    v13(&v12);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], &v12);
  }
}

void __68__VUIActionActivateCarrierOffer_handleEngagementRequest_completion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E698C7D8] vui_defaultBag];
  v3 = +[VUIApplicationRouter topMostVisibleViewController];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E698CCD0]) initWithRequest:*(a1 + 32) bag:v2 presentingViewController:v3];
    v5 = [v4 presentEngagement];
    [v5 addFinishBlock:*(a1 + 40)];
  }

  else
  {
    v6 = VUIDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __68__VUIActionActivateCarrierOffer_handleEngagementRequest_completion___block_invoke_cold_1();
    }
  }
}

- (void)handleAuthenticateRequest:(id)request completion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completionCopy = completion;
  v7 = VUIDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    logKey = [requestCopy logKey];
    *buf = 138412290;
    v18 = logKey;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "ActivateCarrierOffer - handle auth request: %@", buf, 0xCu);
  }

  v12 = MEMORY[0x1E69E9820];
  v13 = __70__VUIActionActivateCarrierOffer_handleAuthenticateRequest_completion___block_invoke;
  v14 = &unk_1E872E580;
  v15 = requestCopy;
  v16 = completionCopy;
  v9 = MEMORY[0x1E696AF00];
  v10 = completionCopy;
  v11 = requestCopy;
  if ([v9 isMainThread])
  {
    v13(&v12);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], &v12);
  }
}

void __70__VUIActionActivateCarrierOffer_handleAuthenticateRequest_completion___block_invoke(uint64_t a1)
{
  v2 = +[VUIApplicationRouter topMostVisibleViewController];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E698CC58]) initWithRequest:*(a1 + 32) presentingViewController:v2];
    v4 = [v3 performAuthentication];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __70__VUIActionActivateCarrierOffer_handleAuthenticateRequest_completion___block_invoke_2;
    v5[3] = &unk_1E872F580;
    v6 = *(a1 + 40);
    [v4 addFinishBlock:v5];
  }

  else
  {
    v3 = VUIDefaultLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __70__VUIActionActivateCarrierOffer_handleAuthenticateRequest_completion___block_invoke_cold_1();
    }
  }
}

void __70__VUIActionActivateCarrierOffer_handleAuthenticateRequest_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = VUIDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 authenticationResults];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "ActivateCarrierOffer - finished auth request: %@, %@", &v10, 0x16u);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v5, v6);
  }
}

- (void)handleDialogRequest:(id)request completion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completionCopy = completion;
  v7 = VUIDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    logKey = [requestCopy logKey];
    *buf = 138412290;
    v18 = logKey;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "ActivateCarrierOffer - handle dialog request: %@", buf, 0xCu);
  }

  v12 = MEMORY[0x1E69E9820];
  v13 = __64__VUIActionActivateCarrierOffer_handleDialogRequest_completion___block_invoke;
  v14 = &unk_1E872E580;
  v15 = requestCopy;
  v16 = completionCopy;
  v9 = MEMORY[0x1E696AF00];
  v10 = completionCopy;
  v11 = requestCopy;
  if ([v9 isMainThread])
  {
    v13(&v12);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], &v12);
  }
}

void __64__VUIActionActivateCarrierOffer_handleDialogRequest_completion___block_invoke(uint64_t a1)
{
  v2 = +[VUIApplicationRouter topMostVisibleViewController];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E698CC50]) initWithRequest:*(a1 + 32) presentingViewController:v2];
    v4 = [v3 present];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __64__VUIActionActivateCarrierOffer_handleDialogRequest_completion___block_invoke_2;
    v5[3] = &unk_1E8730620;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    [v4 addFinishBlock:v5];
  }

  else
  {
    v3 = VUIDefaultLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __64__VUIActionActivateCarrierOffer_handleDialogRequest_completion___block_invoke_cold_1();
    }
  }
}

void __64__VUIActionActivateCarrierOffer_handleDialogRequest_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v5 selectedActionIdentifier];
  v9 = [v7 locateActionWithIdentifier:v8];
  v10 = [v9 style];

  v11 = VUIDefaultLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134218498;
    v15 = v10;
    v16 = 2112;
    v17 = v5;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "ActivateCarrierOffer - finished dialog with actionStyle %ld for request: %@, %@", &v14, 0x20u);
  }

  if ((v10 - 1) <= 1)
  {
    v12 = VUIDefaultLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "ActivateCarrierOffer - User canceled dialog", &v14, 2u);
    }
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    (*(v13 + 16))(v13, v5, v6);
  }
}

- (id)_configurePreflightManager
{
  v2 = +[VUIPreflightManager defaultPreflightManager];
  v3 = +[VUIApplicationRouter topPresentedViewController];
  [v2 setPresentingController:v3];

  [v2 setRestrictionsCheckType:2];

  return v2;
}

- (void)_showUIConfirmationForSubTransactionWithCompletion:(id)completion
{
  completionCopy = completion;
  notificationTitle = [(VUIActionActivateCarrierOffer *)self notificationTitle];
  v6 = [notificationTitle copy];

  notificationBody = [(VUIActionActivateCarrierOffer *)self notificationBody];
  v8 = [notificationBody copy];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v14 = __84__VUIActionActivateCarrierOffer__showUIConfirmationForSubTransactionWithCompletion___block_invoke;
  v15 = &unk_1E872DF40;
  v16 = v6;
  v17 = v8;
  v18 = completionCopy;
  v9 = MEMORY[0x1E696AF00];
  v10 = completionCopy;
  v11 = v8;
  v12 = v6;
  if ([v9 isMainThread])
  {
    v14(block);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_notifyDidStartActivation
{
  v11 = *MEMORY[0x1E69E9840];
  linkParams = [(VUIActionActivateCarrierOffer *)self linkParams];
  v3 = VUIDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = linkParams;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "ActivateCarrierOffer - notify start, linkParams: %@", buf, 0xCu);
  }

  v4 = +[VUIPurchaser sharedInstance];
  [v4 rememberPurchasing:linkParams];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v7 = @"TransactionID";
  v8 = linkParams;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  [defaultCenter postNotificationName:@"VUIPurchaseOrSubscribeRequestDidStartNotification" object:0 userInfo:v6];
}

- (void)_notifyDidEndActivationWithError:(id)error
{
  v17 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  linkParams = [(VUIActionActivateCarrierOffer *)self linkParams];
  canonicalID = [(VUIActionActivateCarrierOffer *)self canonicalID];
  v7 = VUIDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412802;
    v12 = linkParams;
    v13 = 2112;
    v14 = canonicalID;
    v15 = 2112;
    v16 = errorCopy;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "ActivateCarrierOffer - notify end, linkParams: %@, canonicalID: %@, error:%@", &v11, 0x20u);
  }

  v8 = +[VUIPurchaser sharedInstance];
  [v8 forgetPurchasing:linkParams];
  v9 = objc_opt_new();
  [v9 setObject:linkParams forKeyedSubscript:@"TransactionID"];
  if (errorCopy)
  {
    [v9 setObject:errorCopy forKeyedSubscript:@"Error"];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"VUISubscribeRequestDidFinishNotification" object:0 userInfo:v9];
}

@end
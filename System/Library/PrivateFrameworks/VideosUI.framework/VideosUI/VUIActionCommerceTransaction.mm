@interface VUIActionCommerceTransaction
+ (BOOL)isTransactionInProgressForBuyParams:(id)params;
+ (id)extractSalableAdamIDFromBuyParams:(id)params;
+ (void)displayConfirmationUIWithTitle:(id)title andBody:(id)body;
+ (void)displayConfirmationUIWithTitle:(id)title andBody:(id)body completion:(id)completion;
- (NSString)buyParams;
- (VUIActionCommerceTransaction)initWithActionRef:(id)ref contextData:(id)data appContext:(id)context;
- (VUIAppContext)appContext;
- (id)_preflightManagerForTransactionOffer:(id)offer purchaseType:(int64_t)type;
- (void)_handleBuyCompletionForOffer:(id)offer appContext:(id)context shouldPlayWhenDone:(BOOL)done serverResponse:(id)response completionHandler:(id)handler;
- (void)_handleSubscriptionCompletionForOffer:(id)offer appContext:(id)context shouldInitiateFamilySetup:(BOOL)setup serverResponse:(id)response completionHandler:(id)handler;
- (void)_handleSuccessfulSubscriptionHelper:(id)helper appContext:(id)context shouldInitiateFamilySetup:(BOOL)setup completionHandler:(id)handler;
- (void)_notifyDidEndPurchaseType:(int64_t)type transactionOffer:(id)offer withError:(id)error;
- (void)_notifyDidStartPurchaseType:(int64_t)type transactionOffer:(id)offer;
- (void)_recordLog:(id)log withBuyParams:(id)params;
- (void)_showUIConfirmationForSubTransaction:(id)transaction completion:(id)completion;
- (void)_startTransactionOfOffer:(id)offer withAppContext:(id)context andCompletionHandler:(id)handler;
- (void)performWithTargetResponder:(id)responder completionHandler:(id)handler;
@end

@implementation VUIActionCommerceTransaction

- (VUIActionCommerceTransaction)initWithActionRef:(id)ref contextData:(id)data appContext:(id)context
{
  refCopy = ref;
  dataCopy = data;
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = VUIActionCommerceTransaction;
  v11 = [(VUIActionCommerceTransaction *)&v15 init];
  v12 = v11;
  if (v11)
  {
    [(VUIActionCommerceTransaction *)v11 setCommerceActionRef:refCopy];
    objc_storeStrong(&v12->_contextData, data);
    objc_storeWeak(&v12->_appContext, contextCopy);
    v13 = +[VUIActionCommerceInterruptedTransactionManager sharedInstance];
    [v13 setLastInterruptedOfferDetails:0];
  }

  return v12;
}

- (void)performWithTargetResponder:(id)responder completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = [[VUITransactionOffer alloc] initWithDictionary:self->_contextData];
  WeakRetained = objc_loadWeakRetained(&self->_appContext);
  v8 = +[VUIPurchaser sharedInstance];
  buyParams = [(VUITransactionOffer *)v6 buyParams];
  v10 = [v8 isPurchasing:buyParams];

  if (v10)
  {
    v11 = VUIDefaultLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "PurchaseAction - performWithTargetResponder: ending early because purchase with buyParams already exists", v12, 2u);
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }

  else
  {
    [(VUIActionCommerceTransaction *)self _startTransactionOfOffer:v6 withAppContext:WeakRetained andCompletionHandler:handlerCopy];
  }
}

- (NSString)buyParams
{
  v2 = [[VUITransactionOffer alloc] initWithDictionary:self->_contextData];
  buyParams = [(VUITransactionOffer *)v2 buyParams];

  return buyParams;
}

- (id)_preflightManagerForTransactionOffer:(id)offer purchaseType:(int64_t)type
{
  offerCopy = offer;
  v6 = +[VUIPreflightManager defaultPreflightManager];
  rootViewController = +[VUIApplicationRouter topPresentedViewController];
  if (!rootViewController)
  {
    v8 = +[VUITVAppLauncher sharedInstance];
    appWindow = [v8 appWindow];

    rootViewController = [appWindow rootViewController];
  }

  [v6 setPresentingController:rootViewController];
  [v6 setRestrictionsCheckType:2];
  if (offerCopy)
  {
    videosPlayables = [offerCopy videosPlayables];

    if (videosPlayables)
    {
      videosPlayables2 = [offerCopy videosPlayables];
      firstObject = [videosPlayables2 firstObject];
    }

    else
    {
      offer = [offerCopy offer];
      videosPlayables2 = [offer objectForKey:@"playbackMetadata"];

      if (!videosPlayables2 || ([videosPlayables2 objectForKey:@"ratingDomain"], v16 = objc_claimAutoreleasedReturnValue(), v16, !v16))
      {
        if (type == 1)
        {
          [v6 setIsSubscriptionPurchaseWithoutPlayback:1];
        }

        goto LABEL_7;
      }

      v17 = [VUIVideosPlayable alloc];
      firstObject = [(VUIVideosPlayable *)v17 initWithDictionary:MEMORY[0x1E695E0F8] andMetadataDictionary:videosPlayables2];
    }

    v13 = firstObject;
    [v6 setVideosPlayable:firstObject];

LABEL_7:
  }

  return v6;
}

- (void)_startTransactionOfOffer:(id)offer withAppContext:(id)context andCompletionHandler:(id)handler
{
  v37 = *MEMORY[0x1E69E9840];
  offerCopy = offer;
  contextCopy = context;
  handlerCopy = handler;
  v11 = [VUIPurchaseRequest getPurchaseTypeFromActionRef:self->_commerceActionRef];
  v12 = [VUIPurchaseRequest shouldPlayWhenDoneForActionRef:self->_commerceActionRef];
  initiateFamilySetup = [offerCopy initiateFamilySetup];
  v14 = VUIDefaultLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    commerceActionRef = self->_commerceActionRef;
    *buf = 138412802;
    v32 = commerceActionRef;
    v33 = 2048;
    v34 = v11;
    v35 = 1024;
    v36 = v12;
    _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, "PurchaseAction - _amsStartPurchaseFlowForOffer: [%@], type: %ld, shouldPlayWhenDone: %d", buf, 0x1Cu);
  }

  buyParams = [offerCopy buyParams];
  v17 = +[VUIPurchaser sharedInstance];
  [v17 rememberPurchasing:buyParams];

  v18 = [(VUIActionCommerceTransaction *)self _preflightManagerForTransactionOffer:offerCopy purchaseType:v11];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __93__VUIActionCommerceTransaction__startTransactionOfOffer_withAppContext_andCompletionHandler___block_invoke;
  v23[3] = &unk_1E8737378;
  v23[4] = self;
  v24 = offerCopy;
  v27 = handlerCopy;
  v28 = v11;
  v25 = buyParams;
  v26 = contextCopy;
  v29 = initiateFamilySetup;
  v30 = v12;
  v19 = contextCopy;
  v20 = handlerCopy;
  v21 = buyParams;
  v22 = offerCopy;
  [v18 preflightWithOptions:1 completion:v23];
}

void __93__VUIActionCommerceTransaction__startTransactionOfOffer_withAppContext_andCompletionHandler___block_invoke(uint64_t a1, char a2)
{
  [*(a1 + 32) _notifyDidStartPurchaseType:*(a1 + 72) transactionOffer:*(a1 + 40)];
  if (a2)
  {
    v4 = [[VUIPurchaseRequest alloc] initWithBuyParams:*(a1 + 48) ofPurchaseType:*(a1 + 72)];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __93__VUIActionCommerceTransaction__startTransactionOfOffer_withAppContext_andCompletionHandler___block_invoke_116;
    v14[3] = &unk_1E8737350;
    v5 = *(a1 + 48);
    v6 = *(a1 + 40);
    v7 = *(a1 + 64);
    v8 = *(a1 + 72);
    v17 = v7;
    v18 = v8;
    v13 = *(a1 + 32);
    v9 = *(a1 + 56);
    *&v10 = v13;
    *(&v10 + 1) = v9;
    *&v11 = v5;
    *(&v11 + 1) = v6;
    v15 = v11;
    v16 = v10;
    v19 = *(a1 + 80);
    [(VUIPurchaseRequest *)v4 enqueueWithCompletion:v14];
  }

  else
  {
    v12 = VUIDefaultLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "PurchaseAction - Purchase restricted", buf, 2u);
    }

    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"TRANSACTION_RESTRICTED_CONTENT" code:0 userInfo:0];
    [*(a1 + 32) _notifyDidEndPurchaseType:*(a1 + 72) transactionOffer:*(a1 + 40) withError:v4];
  }
}

void __93__VUIActionCommerceTransaction__startTransactionOfOffer_withAppContext_andCompletionHandler___block_invoke_116(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = +[VUIPurchaser sharedInstance];
  [v7 forgetPurchasing:*(a1 + 32)];

  v8 = VUIDefaultLogObject();
  v9 = v8;
  if (!v5 || v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __93__VUIActionCommerceTransaction__startTransactionOfOffer_withAppContext_andCompletionHandler___block_invoke_116_cold_1(v6, v9);
    }

    v14 = [*(a1 + 40) videosPlayables];
    v15 = [v14 firstObject];
    v16 = [v15 sharedWatchId];

    LODWORD(v15) = [VUIGroupActivitiesManagerObjC isSharedWatchIdValidForCurrentSession:v16];
    v17 = VUIDefaultLogObject();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (v18)
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v17, OS_LOG_TYPE_DEFAULT, "PurchaseAction - Leaving session due to failed purchase flow", buf, 2u);
      }

      +[VUIGroupActivitiesManagerObjC leaveSession];
    }

    else
    {
      if (v18)
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v17, OS_LOG_TYPE_DEFAULT, "PurchaseAction - Not leaving session because the active session is different than the upsell session", buf, 2u);
      }
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v24 = __93__VUIActionCommerceTransaction__startTransactionOfOffer_withAppContext_andCompletionHandler___block_invoke_118;
    v25 = &unk_1E8737328;
    v19 = *(a1 + 64);
    v20 = *(a1 + 72);
    v28 = v19;
    v29 = v20;
    v22 = *(a1 + 40);
    v21 = v22.i64[0];
    v26 = vextq_s8(v22, v22, 8uLL);
    v27 = v6;
    v30 = 0;
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v24(block);
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = v5;
      _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "PurchaseAction - Purchase server response [%@]", buf, 0xCu);
    }

    v10 = *(a1 + 64);
    v12 = *(a1 + 40);
    v11 = *(a1 + 48);
    v13 = *(a1 + 56);
    if (*(a1 + 72) == 1)
    {
      [v11 _handleSubscriptionCompletionForOffer:v12 appContext:v13 shouldInitiateFamilySetup:*(a1 + 80) serverResponse:v5 completionHandler:v10];
    }

    else
    {
      [v11 _handleBuyCompletionForOffer:v12 appContext:v13 shouldPlayWhenDone:*(a1 + 81) serverResponse:v5 completionHandler:v10];
    }
  }
}

void __93__VUIActionCommerceTransaction__startTransactionOfOffer_withAppContext_andCompletionHandler___block_invoke_118(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __93__VUIActionCommerceTransaction__startTransactionOfOffer_withAppContext_andCompletionHandler___block_invoke_2;
  aBlock[3] = &unk_1E8737300;
  v2 = *(a1 + 56);
  v18 = *(a1 + 64);
  v10 = *(a1 + 32);
  v3 = *(&v10 + 1);
  *&v4 = *(a1 + 48);
  *(&v4 + 1) = v2;
  v16 = v10;
  v17 = v4;
  v5 = _Block_copy(aBlock);
  v6 = v5;
  if (*(a1 + 72) == 1)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __93__VUIActionCommerceTransaction__startTransactionOfOffer_withAppContext_andCompletionHandler___block_invoke_3;
    v13[3] = &unk_1E872D7E0;
    v7 = &v14;
    v14 = v5;
    v8 = v5;
    [VUIApplicationRouter dismissOrPopLastViewControllerWithCompletion:v13];
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __93__VUIActionCommerceTransaction__startTransactionOfOffer_withAppContext_andCompletionHandler___block_invoke_4;
    v11[3] = &unk_1E872D7E0;
    v7 = &v12;
    v12 = v5;
    v9 = v5;
    [VUIApplicationRouter dismissOrPopViewControllerWithId:@"CommerceViewControllerIdentifier" completion:v11];
  }
}

uint64_t __93__VUIActionCommerceTransaction__startTransactionOfOffer_withAppContext_andCompletionHandler___block_invoke_2(uint64_t result)
{
  if (*(result + 56))
  {
    v1 = result;
    [*(result + 32) _notifyDidEndPurchaseType:*(result + 64) transactionOffer:v1[5] withError:v1[6]];
    v2 = *(v1[7] + 16);

    return v2();
  }

  return result;
}

- (void)_handleBuyCompletionForOffer:(id)offer appContext:(id)context shouldPlayWhenDone:(BOOL)done serverResponse:(id)response completionHandler:(id)handler
{
  offerCopy = offer;
  handlerCopy = handler;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v15 = __124__VUIActionCommerceTransaction__handleBuyCompletionForOffer_appContext_shouldPlayWhenDone_serverResponse_completionHandler___block_invoke;
  v16 = &unk_1E872DF40;
  v17 = offerCopy;
  selfCopy = self;
  v19 = handlerCopy;
  v11 = MEMORY[0x1E696AF00];
  v12 = handlerCopy;
  v13 = offerCopy;
  if ([v11 isMainThread])
  {
    v15(block);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __124__VUIActionCommerceTransaction__handleBuyCompletionForOffer_appContext_shouldPlayWhenDone_serverResponse_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69704E0] sharedCloudController];
  [v2 updateJaliscoMediaLibraryWithReason:1 completionHandler:0];

  v3 = +[VUIPurchaser sharedInstance];
  v4 = [*(a1 + 32) buyParams];
  [v3 postCrossProcessNotificationWithBuyParams:v4 error:0];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __124__VUIActionCommerceTransaction__handleBuyCompletionForOffer_appContext_shouldPlayWhenDone_serverResponse_completionHandler___block_invoke_2;
  v7[3] = &unk_1E872DF40;
  v6 = *(a1 + 32);
  v5 = v6.i64[0];
  v8 = vextq_s8(v6, v6, 8uLL);
  v9 = *(a1 + 48);
  [VUIApplicationRouter dismissOrPopViewControllerWithId:@"CommerceViewControllerIdentifier" completion:v7];
}

void __124__VUIActionCommerceTransaction__handleBuyCompletionForOffer_appContext_shouldPlayWhenDone_serverResponse_completionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _notifyDidEndPurchaseType:0 transactionOffer:*(a1 + 40) withError:0];
  v2 = [*(a1 + 40) sharedWatchUrl];
  if (v2)
  {
    [VUIGroupActivitiesManagerObjC handleCommerceSharedWatchUrl:v2];
  }

  else
  {
    v3 = VUIDefaultLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "PurchaseAction - BuyRentFlow:: GroupActivity no shared watch url!", v5, 2u);
    }
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, 1);
  }
}

- (void)_handleSubscriptionCompletionForOffer:(id)offer appContext:(id)context shouldInitiateFamilySetup:(BOOL)setup serverResponse:(id)response completionHandler:(id)handler
{
  offerCopy = offer;
  contextCopy = context;
  responseCopy = response;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  if (_os_feature_enabled_impl())
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __140__VUIActionCommerceTransaction__handleSubscriptionCompletionForOffer_appContext_shouldInitiateFamilySetup_serverResponse_completionHandler___block_invoke;
    v28[3] = &unk_1E87373A0;
    v16 = &v32;
    objc_copyWeak(&v32, &location);
    v29 = offerCopy;
    v30 = contextCopy;
    setupCopy = setup;
    v31 = handlerCopy;
    [_TtC8VideosUI25VUIUTSNetworkManagerProxy fetchConfiguration:1 completion:v28];
    v17 = &v29;
    v18 = &v30;
    v19 = &v31;
  }

  else
  {
    mEMORY[0x1E69E1508] = [MEMORY[0x1E69E1508] sharedInstance];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __140__VUIActionCommerceTransaction__handleSubscriptionCompletionForOffer_appContext_shouldInitiateFamilySetup_serverResponse_completionHandler___block_invoke_127;
    v22[3] = &unk_1E87373C8;
    v16 = &v26;
    objc_copyWeak(&v26, &location);
    v23 = offerCopy;
    v24 = contextCopy;
    setupCopy2 = setup;
    v25 = handlerCopy;
    [mEMORY[0x1E69E1508] fetchConfigurationWithOptions:0 cachePolicy:3 queryParameters:0 completion:v22];
    v17 = &v23;
    v18 = &v24;
    v19 = &v25;
  }

  objc_destroyWeak(v16);
  mEMORY[0x1E69E15E8] = [MEMORY[0x1E69E15E8] sharedInstance];
  [mEMORY[0x1E69E15E8] fetchSubscriptionData:1 completion:&__block_literal_global_160];

  objc_destroyWeak(&location);
}

void __140__VUIActionCommerceTransaction__handleSubscriptionCompletionForOffer_appContext_shouldInitiateFamilySetup_serverResponse_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = VUIDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "PurchaseAction - UTS Subscription state refreshed. error: %@", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _handleSuccessfulSubscriptionHelper:*(a1 + 32) appContext:*(a1 + 40) shouldInitiateFamilySetup:*(a1 + 64) completionHandler:*(a1 + 48)];
}

void __140__VUIActionCommerceTransaction__handleSubscriptionCompletionForOffer_appContext_shouldInitiateFamilySetup_serverResponse_completionHandler___block_invoke_127(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = VUIDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "PurchaseAction - UTS Subscription state refreshed. error: %@", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _handleSuccessfulSubscriptionHelper:*(a1 + 32) appContext:*(a1 + 40) shouldInitiateFamilySetup:*(a1 + 64) completionHandler:*(a1 + 48)];
}

void __140__VUIActionCommerceTransaction__handleSubscriptionCompletionForOffer_appContext_shouldInitiateFamilySetup_serverResponse_completionHandler___block_invoke_130(uint64_t a1, uint64_t a2, void *a3)
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
      v7 = "PurchaseAction - SubscriptionFlow successfully refreshed subscription store";
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
    v7 = "PurchaseAction - SubscriptionFlow error refreshing subscriptions from finance: %@";
    v8 = v5;
    v9 = 12;
    goto LABEL_6;
  }
}

- (void)_handleSuccessfulSubscriptionHelper:(id)helper appContext:(id)context shouldInitiateFamilySetup:(BOOL)setup completionHandler:(id)handler
{
  helperCopy = helper;
  contextCopy = context;
  handlerCopy = handler;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v18 = __123__VUIActionCommerceTransaction__handleSuccessfulSubscriptionHelper_appContext_shouldInitiateFamilySetup_completionHandler___block_invoke;
  v19 = &unk_1E8737440;
  v20 = helperCopy;
  selfCopy = self;
  v22 = contextCopy;
  v23 = handlerCopy;
  setupCopy = setup;
  v13 = MEMORY[0x1E696AF00];
  v14 = contextCopy;
  v15 = handlerCopy;
  v16 = helperCopy;
  if ([v13 isMainThread])
  {
    v18(block);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __123__VUIActionCommerceTransaction__handleSuccessfulSubscriptionHelper_appContext_shouldInitiateFamilySetup_completionHandler___block_invoke(uint64_t a1)
{
  v2 = +[VUIPurchaser sharedInstance];
  v3 = [*(a1 + 32) buyParams];
  [v2 postCrossProcessNotificationWithBuyParams:v3 error:0];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __123__VUIActionCommerceTransaction__handleSuccessfulSubscriptionHelper_appContext_shouldInitiateFamilySetup_completionHandler___block_invoke_2;
  v6[3] = &unk_1E8731440;
  v9 = *(a1 + 56);
  v5 = *(a1 + 32);
  v4 = v5.i64[0];
  v7 = vextq_s8(v5, v5, 8uLL);
  v8 = *(a1 + 48);
  v10 = *(a1 + 64);
  [VUIApplicationRouter dismissOrPopViewControllerWithId:@"CommerceViewControllerIdentifier" completion:v6];
}

void __123__VUIActionCommerceTransaction__handleSuccessfulSubscriptionHelper_appContext_shouldInitiateFamilySetup_completionHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 56))
  {
    [*(a1 + 32) _notifyDidEndPurchaseType:1 transactionOffer:*(a1 + 40) withError:0];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __123__VUIActionCommerceTransaction__handleSuccessfulSubscriptionHelper_appContext_shouldInitiateFamilySetup_completionHandler___block_invoke_3;
    v9[3] = &unk_1E8737418;
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v12 = *(a1 + 64);
    v8 = *(a1 + 32);
    v5 = *(a1 + 56);
    *&v6 = v8;
    *(&v6 + 1) = v5;
    *&v7 = v3;
    *(&v7 + 1) = v4;
    v10 = v7;
    v11 = v6;
    [v2 _showUIConfirmationForSubTransaction:v3 completion:v9];
  }
}

uint64_t __123__VUIActionCommerceTransaction__handleSuccessfulSubscriptionHelper_appContext_shouldInitiateFamilySetup_completionHandler___block_invoke_3(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = +[VUIPlaybackManager sharedInstance];
  v3 = [v2 isPostPlayActive];

  v4 = [*(a1 + 32) sharedWatchUrl];
  if (v4)
  {
    v5 = v4;
    if (v3)
    {
      v6 = [v4 vui_URLByAddingQueryParamWithName:@"postPlay" value:@"true"];

      v5 = [v6 vui_URLByAddingQueryParamWithName:@"binge" value:@"true"];
    }

    v7 = [VUIGroupActivitiesManagerObjC handleCommerceSharedWatchUrl:v5];
  }

  else
  {
    v5 = VUIDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "PurchaseAction - SubscriptionFlow:: GroupActivity no shared watch url!", buf, 2u);
    }

    v7 = 0;
  }

  if (!v7 && ((v3 ^ 1) & 1) == 0)
  {
    v8 = [*(a1 + 32) videosPlayables];
    v9 = [v8 count];

    if (v9)
    {
      v10 = [*(a1 + 32) videosPlayables];
      v11 = [v10 firstObject];

      v12 = VUIDefaultLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v11 canonicalID];
        *buf = 138412290;
        v28 = v13;
        _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "PurchaseAction - Resolving playable for id %@", buf, 0xCu);
      }

      v14 = [v11 canonicalID];
      v15 = [v11 showCanonicalID];
      v16 = [v11 mediaType];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __123__VUIActionCommerceTransaction__handleSuccessfulSubscriptionHelper_appContext_shouldInitiateFamilySetup_completionHandler___block_invoke_137;
      v23[3] = &unk_1E87373F0;
      v17 = *(a1 + 40);
      v18 = *(a1 + 48);
      v24 = v17;
      v25 = v18;
      v26 = v11;
      v19 = v11;
      [VUIPlayableResolver playableForCanonicalID:v14 showID:v15 mediaType:v16 completion:v23];
    }

    else
    {
      v19 = +[VUIPlaybackManager sharedInstance];
      [(VUIFamilyInviteManager *)v19 dismissPlaybackAnimated:1 leaveGroupActivitySession:1 completion:0];
    }

LABEL_19:

    return (*(*(a1 + 56) + 16))();
  }

  if (*(a1 + 64) == 1)
  {
    v20 = VUIDefaultLogObject();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v20, OS_LOG_TYPE_DEFAULT, "PurchaseAction - SubscriptionFlow showing family invite manager", buf, 2u);
    }

    v19 = objc_alloc_init(VUIFamilyInviteManager);
    v21 = [*(a1 + 32) buyParams];
    [(VUIFamilyInviteManager *)v19 presentFamilySetupScreenWithBuyParams:v21];

    goto LABEL_19;
  }

  return (*(*(a1 + 56) + 16))();
}

void __123__VUIActionCommerceTransaction__handleSuccessfulSubscriptionHelper_appContext_shouldInitiateFamilySetup_completionHandler___block_invoke_137(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = VUIDefaultLogObject();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v5 canonicalID];
      *buf = 138412290;
      v20 = v9;
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "PurchaseAction - Finished resolving playable for id %@", buf, 0xCu);
    }

    v10 = [VUIMediaInfo alloc];
    v18 = v5;
    v11 = MEMORY[0x1E695DEC8];
    v12 = v5;
    v13 = [v11 arrayWithObjects:&v18 count:1];

    v8 = [(VUIMediaInfo *)v10 initWithPlaybackContext:5 videosPlayables:v13 imageProxies:0 storeDictionary:0];
    [v8 setAppContext:*(a1 + 32)];
    v14 = [MEMORY[0x1E695DF00] date];
    [v8 setUserPlaybackInitiationDate:v14 openURLCompletionDate:0];

    [v8 setIntent:1];
    v15 = *(a1 + 40);
    if (v15)
    {
      v16 = [*(v15 + 32) isEqualToString:@"actionRefRentWatchNow"];
    }

    else
    {
      v16 = 0;
    }

    v17 = [v12 sharedWatchId];
    [VUIActionPlay playMediaInfo:v8 watchType:[VUIGroupActivitiesManagerObjC isSharedWatchIdValidForCurrentSession:v17] isRentAndWatchNow:v16];
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __123__VUIActionCommerceTransaction__handleSuccessfulSubscriptionHelper_appContext_shouldInitiateFamilySetup_completionHandler___block_invoke_137_cold_1(a1, v6, v8);
  }
}

- (void)_showUIConfirmationForSubTransaction:(id)transaction completion:(id)completion
{
  completionCopy = completion;
  transactionCopy = transaction;
  notificationTitle = [transactionCopy notificationTitle];
  v9 = [notificationTitle copy];

  notificationBody = [transactionCopy notificationBody];

  v11 = [notificationBody copy];
  v16 = MEMORY[0x1E69E9820];
  v17 = __80__VUIActionCommerceTransaction__showUIConfirmationForSubTransaction_completion___block_invoke;
  v18 = &unk_1E872DF68;
  selfCopy = self;
  v20 = v9;
  v21 = v11;
  v22 = completionCopy;
  v12 = MEMORY[0x1E696AF00];
  v13 = completionCopy;
  v14 = v11;
  v15 = v9;
  if ([v12 isMainThread])
  {
    v17(&v16);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], &v16);
  }
}

uint64_t __80__VUIActionCommerceTransaction__showUIConfirmationForSubTransaction_completion___block_invoke(void *a1)
{
  v2 = objc_opt_class();
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];

  return [v2 displayConfirmationUIWithTitle:v3 andBody:v4 completion:v5];
}

- (void)_notifyDidStartPurchaseType:(int64_t)type transactionOffer:(id)offer
{
  v15 = *MEMORY[0x1E69E9840];
  offerCopy = offer;
  v6 = VUIDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    typeCopy = type;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "PurchaseAction - _notifyPurchaseDidStart, type:%ld", buf, 0xCu);
  }

  buyParams = [offerCopy buyParams];

  v8 = +[VUIPurchaser sharedInstance];
  [v8 rememberPurchasing:buyParams];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v11 = @"TransactionID";
  v12 = buyParams;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [defaultCenter postNotificationName:@"VUIPurchaseOrSubscribeRequestDidStartNotification" object:0 userInfo:v10];
}

- (void)_notifyDidEndPurchaseType:(int64_t)type transactionOffer:(id)offer withError:(id)error
{
  v28 = *MEMORY[0x1E69E9840];
  offerCopy = offer;
  errorCopy = error;
  v9 = VUIDefaultLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    typeCopy = type;
    v26 = 2112;
    v27 = errorCopy;
    _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "PurchaseAction - _notifyPurchaseDidEnd, type:%ld, error:%@", buf, 0x16u);
  }

  buyParams = [offerCopy buyParams];
  v11 = +[VUIPurchaser sharedInstance];
  [v11 forgetPurchasing:buyParams];
  v12 = objc_opt_new();
  [v12 setObject:buyParams forKeyedSubscript:@"TransactionID"];
  if (errorCopy)
  {
    [v12 setObject:errorCopy forKeyedSubscript:@"Error"];
  }

  canonicalIDs = [offerCopy canonicalIDs];
  if (canonicalIDs)
  {
    [v12 setObject:canonicalIDs forKeyedSubscript:@"CanonicalIDs"];
  }

  v14 = VUISubscribeRequestDidFinishNotification;
  if (type != 1)
  {
    v14 = VUIPurchaseRequestDidFinishNotification;
  }

  v15 = *v14;
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __85__VUIActionCommerceTransaction__notifyDidEndPurchaseType_transactionOffer_withError___block_invoke;
  v21 = &unk_1E872D990;
  v22 = v15;
  v23 = v12;
  v16 = v12;
  v17 = v15;
  dispatch_async(MEMORY[0x1E69E96A0], &v18);
  if (!errorCopy)
  {
    [v11 setInterruptedPurchaseRequest:{0, v18, v19, v20, v21, v22, v23}];
  }
}

void __85__VUIActionCommerceTransaction__notifyDidEndPurchaseType_transactionOffer_withError___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:*(a1 + 32) object:0 userInfo:*(a1 + 40)];
}

+ (void)displayConfirmationUIWithTitle:(id)title andBody:(id)body completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

+ (void)displayConfirmationUIWithTitle:(id)title andBody:(id)body
{
  bodyCopy = body;
  titleCopy = title;
  [objc_opt_class() displayConfirmationUIWithTitle:titleCopy andBody:bodyCopy completion:0];
}

+ (BOOL)isTransactionInProgressForBuyParams:(id)params
{
  paramsCopy = params;
  v4 = +[VUIPurchaser sharedInstance];
  v5 = [v4 isPurchasing:paramsCopy];

  return v5;
}

- (void)_recordLog:(id)log withBuyParams:(id)params
{
  v20[3] = *MEMORY[0x1E69E9840];
  paramsCopy = params;
  logCopy = log;
  commerceActionRef = [(VUIActionCommerceTransaction *)self commerceActionRef];
  v9 = [@"commerce transaction failure - " stringByAppendingString:commerceActionRef];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = &stru_1F5DB25C0;
  }

  v20[0] = v10;
  v19[0] = @"message";
  v19[1] = @"errorCode";
  v11 = MEMORY[0x1E696AD98];
  code = [logCopy code];

  v13 = [v11 numberWithLong:code];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = &stru_1F5DB25C0;
  }

  v19[2] = @"buyParams";
  if (paramsCopy)
  {
    v16 = paramsCopy;
  }

  else
  {
    v16 = &stru_1F5DB25C0;
  }

  v20[1] = v15;
  v20[2] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];

  v18 = +[VUIMetricsController sharedInstance];

  [v18 recordLog:v17];
}

+ (id)extractSalableAdamIDFromBuyParams:(id)params
{
  v23 = *MEMORY[0x1E69E9840];
  paramsCopy = params;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v17 = paramsCopy;
  [paramsCopy componentsSeparatedByString:@"&"];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v21 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v19 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = [*(*(&v18 + 1) + 8 * v9) componentsSeparatedByString:@"="];
      firstObject = [v10 firstObject];
      stringByRemovingPercentEncoding = [firstObject stringByRemovingPercentEncoding];

      lastObject = [v10 lastObject];
      stringByRemovingPercentEncoding2 = [lastObject stringByRemovingPercentEncoding];

      [v4 setObject:stringByRemovingPercentEncoding2 forKey:stringByRemovingPercentEncoding];
      LOBYTE(lastObject) = [stringByRemovingPercentEncoding isEqualToString:@"salableAdamId"];

      if (lastObject)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v15 = [v4 objectForKey:@"salableAdamId"];

  return v15;
}

- (VUIAppContext)appContext
{
  WeakRetained = objc_loadWeakRetained(&self->_appContext);

  return WeakRetained;
}

void __93__VUIActionCommerceTransaction__startTransactionOfOffer_withAppContext_andCompletionHandler___block_invoke_116_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1E323F000, a2, OS_LOG_TYPE_ERROR, "PurchaseAction - Purchase failed: %@", &v2, 0xCu);
}

void __123__VUIActionCommerceTransaction__handleSuccessfulSubscriptionHelper_appContext_shouldInitiateFamilySetup_completionHandler___block_invoke_137_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 48) canonicalID];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_1E323F000, a3, OS_LOG_TYPE_ERROR, "PurchaseAction - Failed to resolve playable for id %@, with error %@", &v6, 0x16u);
}

@end
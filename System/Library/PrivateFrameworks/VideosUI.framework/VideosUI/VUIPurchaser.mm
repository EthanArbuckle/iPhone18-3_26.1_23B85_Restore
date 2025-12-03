@interface VUIPurchaser
+ (id)sharedInstance;
- (BOOL)_isInterruptedPurchaseFulfilledBySSPurchaseResponse:(id)response;
- (BOOL)isPurchaseInProgress;
- (BOOL)isPurchasing:(id)purchasing;
- (VUIPurchaseRequest)interruptedPurchaseRequest;
- (VUIPurchaser)init;
- (id)_getAdamIdFromBuyParams:(id)params;
- (void)didCompleteInterruptedBuyWithResponse:(id)response error:(id)error;
- (void)enqueuePurchase:(id)purchase withCompletion:(id)completion;
- (void)eventMonitor:(id)monitor receivedEventWithName:(id)name userInfo:(id)info;
- (void)forgetPurchasing:(id)purchasing;
- (void)postCrossProcessNotificationWithBuyParams:(id)params error:(id)error;
- (void)purchase:(id)purchase handleAuthenticateRequest:(id)request completion:(id)completion;
- (void)purchase:(id)purchase handleDialogRequest:(id)request completion:(id)completion;
- (void)purchase:(id)purchase handleEngagementRequest:(id)request completion:(id)completion;
- (void)rememberPurchasing:(id)purchasing;
- (void)setInterruptedPurchaseRequest:(id)request;
@end

@implementation VUIPurchaser

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_15 != -1)
  {
    +[VUIPurchaser sharedInstance];
  }

  v3 = sharedInstance_purchaser;

  return v3;
}

void __30__VUIPurchaser_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(VUIPurchaser);
  v1 = sharedInstance_purchaser;
  sharedInstance_purchaser = v0;
}

- (VUIPurchaser)init
{
  v12.receiver = self;
  v12.super_class = VUIPurchaser;
  v2 = [(VUIPurchaser *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    purchasingParamsSet = v2->_purchasingParamsSet;
    v2->_purchasingParamsSet = v3;

    vui_defaultBag = [MEMORY[0x1E698C7D8] vui_defaultBag];
    v6 = [objc_alloc(MEMORY[0x1E698CD18]) initWithBag:vui_defaultBag];
    [v6 setPurchaseTaskClass:objc_opt_class()];
    [v6 setDelegate:v2];
    v7 = [objc_alloc(MEMORY[0x1E698CD10]) initWithConfiguration:v6];
    purchaseUIQueue = v2->_purchaseUIQueue;
    v2->_purchaseUIQueue = v7;

    v9 = objc_alloc_init(MEMORY[0x1E69D4900]);
    eventMonitor = v2->_eventMonitor;
    v2->_eventMonitor = v9;

    [(SSEventMonitor *)v2->_eventMonitor setDelegate:v2];
  }

  return v2;
}

- (void)enqueuePurchase:(id)purchase withCompletion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  purchaseCopy = purchase;
  [(VUIPurchaser *)self setInterruptedPurchaseRequest:purchaseCopy];
  purchase = [purchaseCopy purchase];

  uniqueIdentifier = [purchase uniqueIdentifier];
  v10 = VUIDefaultLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = uniqueIdentifier;
    _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - enqueue purchase %@", buf, 0xCu);
  }

  v11 = _Block_copy(completionCopy);
  v12 = _completion;
  _completion = v11;

  purchaseUIQueue = [(VUIPurchaser *)self purchaseUIQueue];
  v26 = purchase;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
  v15 = [purchaseUIQueue enquePurchases:v14];

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __47__VUIPurchaser_enqueuePurchase_withCompletion___block_invoke;
  v24[3] = &unk_1E8732000;
  v16 = completionCopy;
  v25 = v16;
  [v15 addErrorBlock:v24];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__VUIPurchaser_enqueuePurchase_withCompletion___block_invoke_16;
  aBlock[3] = &unk_1E8732028;
  aBlock[4] = self;
  v23 = v16;
  v17 = v16;
  v18 = _Block_copy(aBlock);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __47__VUIPurchaser_enqueuePurchase_withCompletion___block_invoke_18;
  v20[3] = &unk_1E8732050;
  v21 = v18;
  v19 = v18;
  [v15 addSuccessBlock:v20];
}

void __47__VUIPurchaser_enqueuePurchase_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 userInfo];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - purchase failed %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __47__VUIPurchaser_enqueuePurchase_withCompletion___block_invoke_16(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) setInterruptedPurchaseRequest:0];
  v4 = [v3 purchase];
  v5 = [v4 uniqueIdentifier];

  v6 = VUIDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - purchase succeeded %@", &v7, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

void __47__VUIPurchaser_enqueuePurchase_withCompletion___block_invoke_18(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  (*(*(a1 + 32) + 16))();
}

- (void)postCrossProcessNotificationWithBuyParams:(id)params error:(id)error
{
  v15 = *MEMORY[0x1E69E9840];
  paramsCopy = params;
  errorCopy = error;
  v7 = objc_opt_new();
  v8 = v7;
  if (errorCopy)
  {
    [v7 setObject:errorCopy forKeyedSubscript:@"VUIStoreAcquisitionCrossProcessNotificationKeyError"];
  }

  if ([paramsCopy length])
  {
    [v8 setObject:paramsCopy forKeyedSubscript:@"VUIStoreAcquisitionCrossProcessNotificationKeyBuyParams"];
  }

  v9 = VUIDefaultLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = paramsCopy;
    v13 = 2112;
    v14 = errorCopy;
    _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - Posting VUIStoreAcquisitionCrossProcessNotification with buy params: %@, error: %@", &v11, 0x16u);
  }

  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter vui_postNotificationName:@"com.apple.VideosUI.StoreAcquisitionCrossProcessNotification" object:0 userInfo:v8];
}

- (BOOL)isPurchaseInProgress
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [(NSMutableSet *)self->_purchasingParamsSet count];
  v3 = VUIDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = v2;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - isPurchaseInProgress: %ld", &v5, 0xCu);
  }

  return v2 != 0;
}

- (BOOL)isPurchasing:(id)purchasing
{
  v13 = *MEMORY[0x1E69E9840];
  purchasingCopy = purchasing;
  v5 = [(NSMutableSet *)self->_purchasingParamsSet containsObject:purchasingCopy];
  v6 = VUIDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "Not Purchasing";
    if (v5)
    {
      v7 = "Purchasing";
    }

    v9 = 136315394;
    v10 = v7;
    v11 = 2112;
    v12 = purchasingCopy;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - %s: %@", &v9, 0x16u);
  }

  return v5;
}

- (void)rememberPurchasing:(id)purchasing
{
  v8 = *MEMORY[0x1E69E9840];
  purchasingCopy = purchasing;
  v5 = VUIDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = purchasingCopy;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - rememberPurchasing: %@", &v6, 0xCu);
  }

  [(NSMutableSet *)self->_purchasingParamsSet addObject:purchasingCopy];
}

- (void)forgetPurchasing:(id)purchasing
{
  v8 = *MEMORY[0x1E69E9840];
  purchasingCopy = purchasing;
  v5 = VUIDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = purchasingCopy;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - forgetPurchasing: %@", &v6, 0xCu);
  }

  [(NSMutableSet *)self->_purchasingParamsSet removeObject:purchasingCopy];
}

- (void)purchase:(id)purchase handleAuthenticateRequest:(id)request completion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  purchaseCopy = purchase;
  requestCopy = request;
  completionCopy = completion;
  v10 = VUIDefaultLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    logKey = [requestCopy logKey];
    uniqueIdentifier = [purchaseCopy uniqueIdentifier];
    *buf = 138412546;
    v22 = logKey;
    v23 = 2112;
    v24 = uniqueIdentifier;
    _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - handle auth request %@ for purchase %@", buf, 0x16u);
  }

  v16 = MEMORY[0x1E69E9820];
  v17 = __62__VUIPurchaser_purchase_handleAuthenticateRequest_completion___block_invoke;
  v18 = &unk_1E872E580;
  v19 = requestCopy;
  v20 = completionCopy;
  v13 = MEMORY[0x1E696AF00];
  v14 = completionCopy;
  v15 = requestCopy;
  if ([v13 isMainThread])
  {
    v17(&v16);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], &v16);
  }
}

void __62__VUIPurchaser_purchase_handleAuthenticateRequest_completion___block_invoke(uint64_t a1)
{
  v2 = +[VUIApplicationRouter topMostVisibleViewController];
  v3 = [objc_alloc(MEMORY[0x1E698CC58]) initWithRequest:*(a1 + 32) presentingViewController:v2];
  v4 = [v3 performAuthentication];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__VUIPurchaser_purchase_handleAuthenticateRequest_completion___block_invoke_2;
  v5[3] = &unk_1E872F580;
  v6 = *(a1 + 40);
  [v4 addFinishBlock:v5];
}

void __62__VUIPurchaser_purchase_handleAuthenticateRequest_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
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
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - finished auth request: %@, %@", &v10, 0x16u);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v5, v6);
  }
}

- (void)purchase:(id)purchase handleDialogRequest:(id)request completion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  purchaseCopy = purchase;
  requestCopy = request;
  completionCopy = completion;
  v10 = VUIDefaultLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    logKey = [requestCopy logKey];
    uniqueIdentifier = [purchaseCopy uniqueIdentifier];
    *buf = 138412546;
    v22 = logKey;
    v23 = 2112;
    v24 = uniqueIdentifier;
    _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - handle dialog request %@ for purchase %@", buf, 0x16u);
  }

  v16 = MEMORY[0x1E69E9820];
  v17 = __56__VUIPurchaser_purchase_handleDialogRequest_completion___block_invoke;
  v18 = &unk_1E872E580;
  v19 = requestCopy;
  v20 = completionCopy;
  v13 = MEMORY[0x1E696AF00];
  v14 = completionCopy;
  v15 = requestCopy;
  if ([v13 isMainThread])
  {
    v17(&v16);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], &v16);
  }
}

void __56__VUIPurchaser_purchase_handleDialogRequest_completion___block_invoke(uint64_t a1)
{
  v2 = +[VUIApplicationRouter topMostVisibleViewController];
  v3 = [objc_alloc(MEMORY[0x1E698CC50]) initWithRequest:*(a1 + 32) presentingViewController:v2];
  v4 = [v3 present];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__VUIPurchaser_purchase_handleDialogRequest_completion___block_invoke_2;
  v5[3] = &unk_1E8730620;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  [v4 addFinishBlock:v5];
}

void __56__VUIPurchaser_purchase_handleDialogRequest_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
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
    _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - finished dialog with actionStyle %ld for request: %@, %@", &v14, 0x20u);
  }

  if ((v10 - 1) <= 1)
  {
    v12 = VUIDefaultLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - User canceled purchase dialog", &v14, 2u);
    }
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    (*(v13 + 16))(v13, v5, v6);
  }
}

- (void)purchase:(id)purchase handleEngagementRequest:(id)request completion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  purchaseCopy = purchase;
  requestCopy = request;
  completionCopy = completion;
  v10 = VUIDefaultLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    logKey = [requestCopy logKey];
    uniqueIdentifier = [purchaseCopy uniqueIdentifier];
    *buf = 138412546;
    v22 = logKey;
    v23 = 2112;
    v24 = uniqueIdentifier;
    _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - handle engagement request %@ for purchase %@", buf, 0x16u);
  }

  v16 = MEMORY[0x1E69E9820];
  v17 = __60__VUIPurchaser_purchase_handleEngagementRequest_completion___block_invoke;
  v18 = &unk_1E872E580;
  v19 = requestCopy;
  v20 = completionCopy;
  v13 = MEMORY[0x1E696AF00];
  v14 = completionCopy;
  v15 = requestCopy;
  if ([v13 isMainThread])
  {
    v17(&v16);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], &v16);
  }
}

void __60__VUIPurchaser_purchase_handleEngagementRequest_completion___block_invoke(uint64_t a1)
{
  v5 = +[VUIApplicationRouter topMostVisibleViewController];
  v2 = [MEMORY[0x1E698C7D8] vui_defaultBag];
  v3 = [objc_alloc(MEMORY[0x1E698CCD0]) initWithRequest:*(a1 + 32) bag:v2 presentingViewController:v5];
  v4 = [v3 presentEngagement];
  [v4 addFinishBlock:*(a1 + 40)];
}

- (void)setInterruptedPurchaseRequest:(id)request
{
  v14 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_interruptedPurchaseRequest != requestCopy)
  {
    if (requestCopy)
    {
      v7 = VUIDefaultLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        purchase = [(VUIPurchaseRequest *)requestCopy purchase];
        uniqueIdentifier = [purchase uniqueIdentifier];
        v12 = 138412290;
        v13 = uniqueIdentifier;
        _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - Remember request [%@] for interrupted case", &v12, 0xCu);
      }
    }

    else
    {
      v7 = VUIDefaultLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        purchase2 = [(VUIPurchaseRequest *)selfCopy->_interruptedPurchaseRequest purchase];
        uniqueIdentifier2 = [purchase2 uniqueIdentifier];
        v12 = 138412290;
        v13 = uniqueIdentifier2;
        _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - Forget request [%@] for interrupted case", &v12, 0xCu);
      }
    }

    objc_storeStrong(&selfCopy->_interruptedPurchaseRequest, request);
  }

  objc_sync_exit(selfCopy);
}

- (VUIPurchaseRequest)interruptedPurchaseRequest
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_interruptedPurchaseRequest;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)didCompleteInterruptedBuyWithResponse:(id)response error:(id)error
{
  v36 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  errorCopy = error;
  v8 = VUIDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v33 = responseCopy;
    v34 = 2112;
    v35 = errorCopy;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - Received interrupted buy completion event [%@], error: %@", buf, 0x16u);
  }

  purchase = [(VUIPurchaseRequest *)self->_interruptedPurchaseRequest purchase];
  buyParams = [purchase buyParams];
  stringValue = [buyParams stringValue];

  v12 = [(VUIPurchaser *)self _getAdamIdFromBuyParams:stringValue];
  v13 = v12;
  if (v12)
  {
    longLongValue = [v12 longLongValue];
    v15 = [responseCopy vui_dictionaryForKey:@"metrics"];
    v30 = [v15 vui_arrayForKey:@"itemIds"];
    firstObject = [v30 firstObject];
    v31 = errorCopy;
    if (firstObject)
    {
      v17 = firstObject;
      v29 = 0;
      v18 = 0;
    }

    else
    {
      v18 = [responseCopy vui_arrayForKey:@"songList"];
      firstObject2 = [v18 firstObject];
      v20 = [firstObject2 vui_numberForKey:@"songId"];
      if (v20)
      {
        v17 = v20;
        v29 = firstObject2;
      }

      else
      {
        v21 = [responseCopy vui_arrayForKey:@"app-list"];

        firstObject3 = [v21 firstObject];
        v23 = firstObject2;
        v24 = firstObject3;

        v17 = [v24 vui_numberForKey:@"item-id"];
        v29 = v24;
        v18 = v21;
      }
    }

    longLongValue2 = [v17 longLongValue];
    v26 = VUIDefaultLogObject();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v33 = longLongValue;
      v34 = 2048;
      v35 = longLongValue2;
      _os_log_impl(&dword_1E323F000, v26, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - saved interrupted buy [%li], incoming buy [%li] ", buf, 0x16u);
    }

    v27 = VUIDefaultLogObject();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    if (longLongValue2 && longLongValue && longLongValue == longLongValue2)
    {
      if (v28)
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v27, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - Interrupted buy completed!", buf, 2u);
      }

      errorCopy = v31;
      [(VUIPurchaseRequest *)self->_interruptedPurchaseRequest handleRequestCompletionWithResult:responseCopy andError:v31];
    }

    else
    {
      if (v28)
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v27, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - Not the buy completion for which we were interrupted", buf, 2u);
      }

      errorCopy = v31;
    }
  }

  else
  {
    v15 = VUIDefaultLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - No saved interrupted purchase request", buf, 2u);
    }
  }
}

- (id)_getAdamIdFromBuyParams:(id)params
{
  v20 = *MEMORY[0x1E69E9840];
  paramsCopy = params;
  if ([paramsCopy length])
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AF20]);
    [v4 setQuery:paramsCopy];
    [v4 queryItems];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v18 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          name = [v10 name];
          v12 = [name isEqualToString:@"salableAdamId"];

          if (v12)
          {
            value = [v10 value];
            goto LABEL_12;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    value = 0;
LABEL_12:
  }

  else
  {
    value = 0;
  }

  return value;
}

- (void)eventMonitor:(id)monitor receivedEventWithName:(id)name userInfo:(id)info
{
  v40 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  infoCopy = info;
  v9 = VUIDefaultLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = nameCopy;
    _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - Received SS event [%@]", buf, 0xCu);
  }

  if ([nameCopy isEqualToString:*MEMORY[0x1E69D4C30]])
  {
    v10 = [infoCopy objectForKey:@"response"];
    if (!v10)
    {
      v11 = VUIDefaultLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - No payload in ss purchase completion event", buf, 2u);
      }

      goto LABEL_19;
    }

    v33 = 0;
    v11 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v10 error:&v33];
    v12 = v33;
    if (v12)
    {
      v13 = v12;
      v14 = VUIDefaultLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v35 = v13;
        _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - Failed to unarchive data with error: %@", buf, 0xCu);
      }

      goto LABEL_18;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = VUIDefaultLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v16 = "VUIPurchaser - ss event payload has invalid response type";
        goto LABEL_17;
      }

LABEL_18:

LABEL_19:
      goto LABEL_20;
    }

    error = [v11 error];

    if (error)
    {
      v13 = VUIDefaultLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v16 = "VUIPurchaser - SS event success notification receieved an unexpected error";
LABEL_17:
        _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, v16, buf, 2u);
        goto LABEL_18;
      }

      goto LABEL_18;
    }

    v17 = [(VUIPurchaser *)self _isInterruptedPurchaseFulfilledBySSPurchaseResponse:v11];
    v13 = VUIDefaultLogObject();
    v18 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (!v17)
    {
      if (!v18)
      {
        goto LABEL_18;
      }

      *buf = 0;
      v16 = "VUIPurchaser - Not the buy completion for which we were interrupted";
      goto LABEL_17;
    }

    if (v18)
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - Interrupted buy completed!", buf, 2u);
    }

    uRLResponse = [v11 URLResponse];
    bodyData = [uRLResponse bodyData];

    if (bodyData)
    {
      v32 = 0;
      v21 = [MEMORY[0x1E696AE40] propertyListWithData:bodyData options:0 format:0 error:&v32];
      v22 = v32;
    }

    else
    {
      v21 = 0;
      v22 = 0;
    }

    error2 = [v11 error];
    v24 = error2;
    if (v21)
    {
      v25 = 0;
    }

    else
    {
      v25 = v22;
    }

    if (error2)
    {
      v25 = error2;
    }

    v13 = v25;

    domain = [v13 domain];
    v31 = bodyData;
    if ([domain isEqualToString:*MEMORY[0x1E69E46D0]])
    {
      code = [v13 code];

      if (code == 16)
      {
        v28 = 1;
        goto LABEL_43;
      }
    }

    else
    {
    }

    v29 = [v21 objectForKey:*MEMORY[0x1E69E4830]];
    v28 = v29 != 0;

    if (!v22 && !v13 && !v29 && v21)
    {
      [(VUIPurchaseRequest *)self->_interruptedPurchaseRequest handleRequestCompletionWithResult:v21 andError:0];
      v22 = 0;
LABEL_46:

      goto LABEL_18;
    }

LABEL_43:
    v30 = VUIDefaultLogObject();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v35 = v13;
      v36 = 2112;
      v37 = v22;
      v38 = 1024;
      v39 = v28;
      _os_log_impl(&dword_1E323F000, v30, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - Error finishing interrupted purchse: [%@] plist error [%@] Was cancelled [%d]", buf, 0x1Cu);
    }

    [(VUIPurchaser *)self setInterruptedPurchaseRequest:0];
    goto LABEL_46;
  }

LABEL_20:
}

- (BOOL)_isInterruptedPurchaseFulfilledBySSPurchaseResponse:(id)response
{
  v21 = *MEMORY[0x1E69E9840];
  purchase = [response purchase];
  v5 = purchase;
  if (!purchase)
  {
    buyParameters = VUIDefaultLogObject();
    if (os_log_type_enabled(buyParameters, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      v15 = "VUIPurchaser - Interrupted purchase not valid ss response";
LABEL_13:
      _os_log_impl(&dword_1E323F000, buyParameters, OS_LOG_TYPE_DEFAULT, v15, &v17, 2u);
    }

LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

  if (!self->_interruptedPurchaseRequest)
  {
    buyParameters = VUIDefaultLogObject();
    if (os_log_type_enabled(buyParameters, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      v15 = "VUIPurchaser - No interrupted purchase request";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  buyParameters = [purchase buyParameters];
  purchase2 = [(VUIPurchaseRequest *)self->_interruptedPurchaseRequest purchase];
  buyParams = [purchase2 buyParams];
  stringValue = [buyParams stringValue];

  v10 = VUIDefaultLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412546;
    v18 = buyParameters;
    v19 = 2112;
    v20 = stringValue;
    _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - buyParams [%@], interruptedBuyParams[%@] ", &v17, 0x16u);
  }

  v11 = [(VUIPurchaser *)self _getAdamIdFromBuyParams:buyParameters];
  v12 = [(VUIPurchaser *)self _getAdamIdFromBuyParams:stringValue];
  v13 = v12;
  v14 = 0;
  if (v11 && v12)
  {
    v14 = [v11 isEqualToString:v12];
  }

LABEL_15:
  return v14;
}

@end
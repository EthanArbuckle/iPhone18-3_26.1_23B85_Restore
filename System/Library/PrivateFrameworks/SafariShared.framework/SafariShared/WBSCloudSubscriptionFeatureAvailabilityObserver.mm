@interface WBSCloudSubscriptionFeatureAvailabilityObserver
+ (WBSCloudSubscriptionFeatureAvailabilityObserver)porcupineAvailabilityObserver;
+ (WBSCloudSubscriptionFeatureAvailabilityObserver)provisionNewHideMyEmailAvailabilityObserver;
- (BOOL)_overridenAvailability;
- (WBSCloudSubscriptionFeatureAvailabilityObserver)initWithFeatureIdentifier:(id)a3;
- (void)_requestFeatureEligibilityBlockingQueueUntilResponse:(BOOL)a3;
- (void)_requestFeatureObjectBlockingQueueUntilResponse:(BOOL)a3;
- (void)dealloc;
- (void)getFeatureAvailabilityWithCompletionHandler:(id)a3;
- (void)getFeatureEligibilityWithCompletionHandler:(id)a3;
@end

@implementation WBSCloudSubscriptionFeatureAvailabilityObserver

+ (WBSCloudSubscriptionFeatureAvailabilityObserver)porcupineAvailabilityObserver
{
  if (porcupineAvailabilityObserver_onceToken != -1)
  {
    +[WBSCloudSubscriptionFeatureAvailabilityObserver porcupineAvailabilityObserver];
  }

  v3 = porcupineAvailabilityObserver_porcupineAvailabilityObserver;

  return v3;
}

void __80__WBSCloudSubscriptionFeatureAvailabilityObserver_porcupineAvailabilityObserver__block_invoke()
{
  v0 = [[WBSCloudSubscriptionFeatureAvailabilityObserver alloc] initWithFeatureIdentifier:@"networking.privacy.subscriber"];
  v1 = porcupineAvailabilityObserver_porcupineAvailabilityObserver;
  porcupineAvailabilityObserver_porcupineAvailabilityObserver = v0;
}

- (BOOL)_overridenAvailability
{
  v2 = [@"WBSCloudFeatureOverride." stringByAppendingString:self->_featureIdentifier];
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [v3 BOOLForKey:v2];

  return v4;
}

- (WBSCloudSubscriptionFeatureAvailabilityObserver)initWithFeatureIdentifier:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = WBSCloudSubscriptionFeatureAvailabilityObserver;
  v5 = [(WBSCloudSubscriptionFeatureAvailabilityObserver *)&v18 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.WBSCloudSubscriptionFeatureAvailabilityObserver", 0);
    queue = v5->_queue;
    v5->_queue = v6;

    v8 = [v4 copy];
    featureIdentifier = v5->_featureIdentifier;
    v5->_featureIdentifier = v8;

    if (!CloudSubscriptionFeaturesLibraryCore_frameworkLibrary)
    {
      location[0] = MEMORY[0x1E69E9820];
      location[1] = 3221225472;
      location[2] = __CloudSubscriptionFeaturesLibraryCore_block_invoke;
      location[3] = &__block_descriptor_40_e5_v8__0l;
      location[4] = 0;
      v20 = xmmword_1E7FB8728;
      v21 = 0;
      CloudSubscriptionFeaturesLibraryCore_frameworkLibrary = _sl_dlopen();
    }

    if (CloudSubscriptionFeaturesLibraryCore_frameworkLibrary)
    {
      objc_initWeak(location, v5);
      v10 = MEMORY[0x1E6994FE8];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __77__WBSCloudSubscriptionFeatureAvailabilityObserver_initWithFeatureIdentifier___block_invoke;
      v16[3] = &unk_1E7FB86B8;
      objc_copyWeak(&v17, location);
      v11 = [v10 registerForFeatureChangeNotificationsUsingBlock:v16];
      changeObserverToken = v5->_changeObserverToken;
      v5->_changeObserverToken = v11;

      [(WBSCloudSubscriptionFeatureAvailabilityObserver *)v5 _requestFeatureObjectBlockingQueueUntilResponse:1];
      [(WBSCloudSubscriptionFeatureAvailabilityObserver *)v5 _requestFeatureEligibilityBlockingQueueUntilResponse:1];
      objc_destroyWeak(&v17);
      objc_destroyWeak(location);
    }

    else
    {
      v13 = WBS_LOG_CHANNEL_PREFIXAppleAccount();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        LOWORD(location[0]) = 0;
        _os_log_impl(&dword_1BB6F3000, v13, OS_LOG_TYPE_INFO, "Running in an environment where CloudSubscriptionFeatures framework is not available.", location, 2u);
      }
    }

    v14 = v5;
  }

  return v5;
}

void __77__WBSCloudSubscriptionFeatureAvailabilityObserver_initWithFeatureIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _requestFeatureObjectBlockingQueueUntilResponse:0];
  [WeakRetained _requestFeatureEligibilityBlockingQueueUntilResponse:0];
}

- (void)_requestFeatureObjectBlockingQueueUntilResponse:(BOOL)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = [(WBSCloudSubscriptionFeatureAvailabilityObserver *)self _overridenAvailability];
  v6 = WBS_LOG_CHANNEL_PREFIXAppleAccount();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      featureIdentifier = self->_featureIdentifier;
      *buf = 138412290;
      v14 = featureIdentifier;
      _os_log_impl(&dword_1BB6F3000, v6, OS_LOG_TYPE_INFO, "Found local override for cloud subscription feature %@. Skipping availability lookup.", buf, 0xCu);
    }
  }

  else
  {
    if (v7)
    {
      v9 = self->_featureIdentifier;
      *buf = 138412290;
      v14 = v9;
      _os_log_impl(&dword_1BB6F3000, v6, OS_LOG_TYPE_INFO, "Requesting feature availability for cloud subscription feature %@", buf, 0xCu);
    }

    queue = self->_queue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __99__WBSCloudSubscriptionFeatureAvailabilityObserver__requestFeatureObjectBlockingQueueUntilResponse___block_invoke;
    v11[3] = &unk_1E7FB74B8;
    v12 = a3;
    v11[4] = self;
    dispatch_async(queue, v11);
  }
}

void __99__WBSCloudSubscriptionFeatureAvailabilityObserver__requestFeatureObjectBlockingQueueUntilResponse___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, &__block_literal_global_19);
  }

  else
  {
    v2 = 0;
  }

  v3 = MEMORY[0x1E6994FE8];
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __99__WBSCloudSubscriptionFeatureAvailabilityObserver__requestFeatureObjectBlockingQueueUntilResponse___block_invoke_3;
  v7[3] = &unk_1E7FB86E0;
  v7[4] = v4;
  v6 = v2;
  v8 = v6;
  [v3 requestFeatureWithId:v5 completion:v7];
  if (v6)
  {
    dispatch_block_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  }
}

void __99__WBSCloudSubscriptionFeatureAvailabilityObserver__requestFeatureObjectBlockingQueueUntilResponse___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = WBS_LOG_CHANNEL_PREFIXAppleAccount();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __99__WBSCloudSubscriptionFeatureAvailabilityObserver__requestFeatureObjectBlockingQueueUntilResponse___block_invoke_3_cold_1(v8, v6);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = *(*(a1 + 32) + 16);
    *buf = 138412290;
    v18 = v9;
    _os_log_impl(&dword_1BB6F3000, v8, OS_LOG_TYPE_INFO, "Did receive feature availability for cloud subscription feature %@", buf, 0xCu);
  }

  v10 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v11 = *(v10 + 32);
    *(v10 + 32) = v5;
    v12 = v5;

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v13 = *(v10 + 8);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __99__WBSCloudSubscriptionFeatureAvailabilityObserver__requestFeatureObjectBlockingQueueUntilResponse___block_invoke_9;
    v15[3] = &unk_1E7FB6E30;
    v15[4] = v10;
    v16 = v5;
    v14 = v5;
    dispatch_async(v13, v15);
  }
}

- (void)_requestFeatureEligibilityBlockingQueueUntilResponse:(BOOL)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = [(WBSCloudSubscriptionFeatureAvailabilityObserver *)self _overridenAvailability];
  v6 = WBS_LOG_CHANNEL_PREFIXAppleAccount();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      featureIdentifier = self->_featureIdentifier;
      *buf = 138412290;
      v14 = featureIdentifier;
      _os_log_impl(&dword_1BB6F3000, v6, OS_LOG_TYPE_INFO, "Found local override for cloud subscription feature %@. Skipping eligibility lookup.", buf, 0xCu);
    }
  }

  else
  {
    if (v7)
    {
      v9 = self->_featureIdentifier;
      *buf = 138412290;
      v14 = v9;
      _os_log_impl(&dword_1BB6F3000, v6, OS_LOG_TYPE_INFO, "Requesting feature eligibility for cloud subscription feature %@", buf, 0xCu);
    }

    queue = self->_queue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __104__WBSCloudSubscriptionFeatureAvailabilityObserver__requestFeatureEligibilityBlockingQueueUntilResponse___block_invoke;
    v11[3] = &unk_1E7FB74B8;
    v11[4] = self;
    v12 = a3;
    dispatch_async(queue, v11);
  }
}

void __104__WBSCloudSubscriptionFeatureAvailabilityObserver__requestFeatureEligibilityBlockingQueueUntilResponse___block_invoke(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    if (*(a1 + 40) == 1)
    {
      v2 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, &__block_literal_global_14_0);
    }

    else
    {
      v2 = 0;
    }

    v3 = MEMORY[0x1E6994FE8];
    v4 = *(*(a1 + 32) + 16);
    v5 = [MEMORY[0x1E696AAE8] safari_safariApplicationPlatformBundleIdentifier];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __104__WBSCloudSubscriptionFeatureAvailabilityObserver__requestFeatureEligibilityBlockingQueueUntilResponse___block_invoke_3;
    v7[3] = &unk_1E7FB8708;
    v7[4] = *(a1 + 32);
    v6 = v2;
    v8 = v6;
    [v3 getFeatureEligibilityForFeatureWithId:v4 bundleId:v5 completion:v7];

    if (v6)
    {
      dispatch_block_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  else
  {
    *(*(a1 + 32) + 40) = 0;
  }
}

void __104__WBSCloudSubscriptionFeatureAvailabilityObserver__requestFeatureEligibilityBlockingQueueUntilResponse___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = WBS_LOG_CHANNEL_PREFIXAppleAccount();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __104__WBSCloudSubscriptionFeatureAvailabilityObserver__requestFeatureEligibilityBlockingQueueUntilResponse___block_invoke_3_cold_1(v7, v5);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = *(*(a1 + 32) + 16);
    *buf = 138412290;
    v14 = v8;
    _os_log_impl(&dword_1BB6F3000, v7, OS_LOG_TYPE_INFO, "Did receive feature eligibility for cloud subscription feature %@", buf, 0xCu);
  }

  v9 = *(a1 + 32);
  if (*(a1 + 40))
  {
    *(v9 + 40) = a2;
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v10 = *(v9 + 8);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __104__WBSCloudSubscriptionFeatureAvailabilityObserver__requestFeatureEligibilityBlockingQueueUntilResponse___block_invoke_16;
    v11[3] = &unk_1E7FB74B8;
    v11[4] = v9;
    v12 = a2;
    dispatch_async(v10, v11);
  }
}

- (void)dealloc
{
  if (self->_changeObserverToken)
  {
    [MEMORY[0x1E6994FE8] unregisterForFeatureChangeNotificationsUsingObserver:?];
  }

  v3.receiver = self;
  v3.super_class = WBSCloudSubscriptionFeatureAvailabilityObserver;
  [(WBSCloudSubscriptionFeatureAvailabilityObserver *)&v3 dealloc];
}

- (void)getFeatureAvailabilityWithCompletionHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __95__WBSCloudSubscriptionFeatureAvailabilityObserver_getFeatureAvailabilityWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7FB81B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __95__WBSCloudSubscriptionFeatureAvailabilityObserver_getFeatureAvailabilityWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  if ([*(a1 + 32) _overridenAvailability])
  {
    v3 = WBS_LOG_CHANNEL_PREFIXAppleAccount();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __95__WBSCloudSubscriptionFeatureAvailabilityObserver_getFeatureAvailabilityWithCompletionHandler___block_invoke_cold_2(v2, v3);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v4 = *(*v2 + 32);
    if (objc_opt_respondsToSelector())
    {
      v5 = [v4 canUse];
    }

    else if (v4)
    {
      v5 = [v4 status] == 0;
    }

    else
    {
      v5 = 0;
    }

    v6 = WBS_LOG_CHANNEL_PREFIXAppleAccount();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __95__WBSCloudSubscriptionFeatureAvailabilityObserver_getFeatureAvailabilityWithCompletionHandler___block_invoke_cold_1(v2, v5);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)getFeatureEligibilityWithCompletionHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __94__WBSCloudSubscriptionFeatureAvailabilityObserver_getFeatureEligibilityWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7FB81B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

uint64_t __94__WBSCloudSubscriptionFeatureAvailabilityObserver_getFeatureEligibilityWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = [*(a1 + 32) _overridenAvailability];
  v4 = WBS_LOG_CHANNEL_PREFIXAppleAccount();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      __94__WBSCloudSubscriptionFeatureAvailabilityObserver_getFeatureEligibilityWithCompletionHandler___block_invoke_cold_2(v2, v4);
    }

    v6 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (v5)
    {
      __94__WBSCloudSubscriptionFeatureAvailabilityObserver_getFeatureEligibilityWithCompletionHandler___block_invoke_cold_1(v2);
    }

    v6 = *(*(a1 + 40) + 16);
  }

  return v6();
}

+ (WBSCloudSubscriptionFeatureAvailabilityObserver)provisionNewHideMyEmailAvailabilityObserver
{
  if (provisionNewHideMyEmailAvailabilityObserver_onceToken != -1)
  {
    +[WBSCloudSubscriptionFeatureAvailabilityObserver provisionNewHideMyEmailAvailabilityObserver];
  }

  v3 = provisionNewHideMyEmailAvailabilityObserver_hideMyEmailAvailabilityObserver;

  return v3;
}

void __94__WBSCloudSubscriptionFeatureAvailabilityObserver_provisionNewHideMyEmailAvailabilityObserver__block_invoke()
{
  v0 = [[WBSCloudSubscriptionFeatureAvailabilityObserver alloc] initWithFeatureIdentifier:@"mail.hide-my-email.create"];
  v1 = provisionNewHideMyEmailAvailabilityObserver_hideMyEmailAvailabilityObserver;
  provisionNewHideMyEmailAvailabilityObserver_hideMyEmailAvailabilityObserver = v0;
}

void __99__WBSCloudSubscriptionFeatureAvailabilityObserver__requestFeatureObjectBlockingQueueUntilResponse___block_invoke_3_cold_1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_1(&dword_1BB6F3000, v5, v6, "Failed to get cloud feature object: %{public}@", v7, v8, v9, v10, 2u);
}

void __104__WBSCloudSubscriptionFeatureAvailabilityObserver__requestFeatureEligibilityBlockingQueueUntilResponse___block_invoke_3_cold_1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_1(&dword_1BB6F3000, v5, v6, "Failed to get cloud feature eligibility: %{public}@", v7, v8, v9, v10, 2u);
}

void __95__WBSCloudSubscriptionFeatureAvailabilityObserver_getFeatureAvailabilityWithCompletionHandler___block_invoke_cold_1(uint64_t a1, char a2)
{
  v2 = @"NO";
  if (a2)
  {
    v2 = @"YES";
  }

  v3 = v2;
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_2_2(&dword_1BB6F3000, v4, v5, "Returning cloud feature %@ availability from CloudSubscriptionFeatures: %@", v6, v7, v8, v9, v10);
}

void __95__WBSCloudSubscriptionFeatureAvailabilityObserver_getFeatureAvailabilityWithCompletionHandler___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 16);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_DEBUG, "Found local override for cloud feature %@. Returning feature availble: YES", &v3, 0xCu);
}

void __94__WBSCloudSubscriptionFeatureAvailabilityObserver_getFeatureEligibilityWithCompletionHandler___block_invoke_cold_1(uint64_t a1)
{
  if (*(*a1 + 40))
  {
    v1 = @"YES";
  }

  else
  {
    v1 = @"NO";
  }

  v2 = v1;
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_2_2(&dword_1BB6F3000, v3, v4, "Returning cloud feature %@ eligibility from CloudSubscriptionFeatures: %@", v5, v6, v7, v8, v9);
}

void __94__WBSCloudSubscriptionFeatureAvailabilityObserver_getFeatureEligibilityWithCompletionHandler___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 16);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_DEBUG, "Found local override for cloud feature %@. Returning feature eligible: YES", &v3, 0xCu);
}

@end
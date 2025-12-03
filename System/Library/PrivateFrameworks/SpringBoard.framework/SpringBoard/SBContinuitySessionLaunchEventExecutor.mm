@interface SBContinuitySessionLaunchEventExecutor
- (void)_executeAppLaunchEvent:(id)event animatedly:(BOOL)animatedly completion:(id)completion;
- (void)_executeDebugLaunchEvent:(id)event animatedly:(BOOL)animatedly completion:(id)completion;
- (void)_executeNotificationLaunchEvent:(id)event animatedly:(BOOL)animatedly completion:(id)completion;
- (void)_executeWidgetLaunchEvent:(id)event animatedly:(BOOL)animatedly completion:(id)completion;
- (void)executeLaunchEvent:(id)event animatedly:(BOOL)animatedly completion:(id)completion;
@end

@implementation SBContinuitySessionLaunchEventExecutor

- (void)executeLaunchEvent:(id)event animatedly:(BOOL)animatedly completion:(id)completion
{
  animatedlyCopy = animatedly;
  eventCopy = event;
  completionCopy = completion;
  if (!eventCopy)
  {
    [SBContinuitySessionLaunchEventExecutor executeLaunchEvent:a2 animatedly:self completion:?];
  }

  type = [eventCopy type];
  v12 = [type isEqualToString:@"notification"];

  if (v12)
  {
    [(SBContinuitySessionLaunchEventExecutor *)self _executeNotificationLaunchEvent:eventCopy animatedly:animatedlyCopy completion:completionCopy];
  }

  else
  {
    type2 = [eventCopy type];
    v14 = [type2 isEqualToString:@"widget"];

    if (v14)
    {
      [(SBContinuitySessionLaunchEventExecutor *)self _executeWidgetLaunchEvent:eventCopy animatedly:animatedlyCopy completion:completionCopy];
    }

    else
    {
      type3 = [eventCopy type];
      launchEventType = [MEMORY[0x277D67CC8] launchEventType];
      v17 = [type3 isEqualToString:launchEventType];

      if (v17)
      {
        [(SBContinuitySessionLaunchEventExecutor *)self _executeAppLaunchEvent:eventCopy animatedly:animatedlyCopy completion:completionCopy];
      }

      else
      {
        type4 = [eventCopy type];
        v19 = [type4 isEqualToString:@"debug"];

        if (v19)
        {
          [(SBContinuitySessionLaunchEventExecutor *)self _executeDebugLaunchEvent:eventCopy animatedly:animatedlyCopy completion:completionCopy];
        }

        else
        {
          v20 = SBLogContinuitySession();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            [SBContinuitySessionLaunchEventExecutor executeLaunchEvent:animatedly:completion:];
          }

          completionCopy[2](completionCopy);
        }
      }
    }
  }
}

- (void)_executeNotificationLaunchEvent:(id)event animatedly:(BOOL)animatedly completion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  completionCopy = completion;
  v8 = SBLogContinuitySession();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = eventCopy;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Building foreground action for launch event %{public}@", buf, 0xCu);
  }

  payload = [eventCopy payload];
  v12 = eventCopy;
  v10 = completionCopy;
  v11 = eventCopy;
  UNSBuildForegroundAction();
}

void __96__SBContinuitySessionLaunchEventExecutor__executeNotificationLaunchEvent_animatedly_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = SBLogContinuitySession();
  v11 = v10;
  if (v7 && v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      *buf = 138543618;
      v27 = v12;
      v28 = 2114;
      v29 = v7;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Finished building foreground action for launch event %{public}@ - bundleIdentifier: %{public}@ - calling openApplication:", buf, 0x16u);
    }

    v13 = v8;
    v14 = v13;
    if ((*(a1 + 48) & 1) == 0)
    {
      v15 = [v13 dictionary];
      v16 = [v15 mutableCopy];
      v17 = v16;
      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = [MEMORY[0x277CBEB38] dictionary];
      }

      v19 = v18;

      [v19 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D67118]];
      v20 = [MEMORY[0x277D0AD60] optionsWithDictionary:v19];

      v14 = v20;
    }

    v21 = [MEMORY[0x277D0AD78] continuityDisplayService];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __96__SBContinuitySessionLaunchEventExecutor__executeNotificationLaunchEvent_animatedly_completion___block_invoke_20;
    v22[3] = &unk_2783B8048;
    v23 = *(a1 + 32);
    v24 = v7;
    v25 = *(a1 + 40);
    [v21 openApplication:v24 withOptions:v14 completion:v22];
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __96__SBContinuitySessionLaunchEventExecutor__executeNotificationLaunchEvent_animatedly_completion___block_invoke_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __96__SBContinuitySessionLaunchEventExecutor__executeNotificationLaunchEvent_animatedly_completion___block_invoke_20(id *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v5 = v4;
  BSDispatchMain();
}

void __96__SBContinuitySessionLaunchEventExecutor__executeNotificationLaunchEvent_animatedly_completion___block_invoke_2(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = SBLogContinuitySession();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __96__SBContinuitySessionLaunchEventExecutor__executeNotificationLaunchEvent_animatedly_completion___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    *buf = 138543618;
    v21 = v5;
    v22 = 2114;
    v23 = v6;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Foreground application launch succeed for launch event %{public}@ bundleIdentifier %{public}@", buf, 0x16u);
  }

  v7 = [*(a1 + 40) payload];
  UNSDidCompleteDeliveryOfForegroundAction();

  v8 = +[SBWorkspace mainWorkspace];
  v9 = [v8 currentTransaction];
  v10 = objc_opt_class();
  v11 = v9;
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v14 = [v13 toApplicationSceneEntities];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __96__SBContinuitySessionLaunchEventExecutor__executeNotificationLaunchEvent_animatedly_completion___block_invoke_23;
  v18[3] = &unk_2783A9EA0;
  v19 = *(a1 + 48);
  v15 = [v14 bs_containsObjectPassingTest:v18];

  if (v15 && [v13 isRunning])
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __96__SBContinuitySessionLaunchEventExecutor__executeNotificationLaunchEvent_animatedly_completion___block_invoke_2_25;
    v16[3] = &unk_2783B8020;
    v17 = *(a1 + 56);
    [v13 registerBlockObserver:v16];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

uint64_t __96__SBContinuitySessionLaunchEventExecutor__executeNotificationLaunchEvent_animatedly_completion___block_invoke_23(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 sceneHandle];
  v4 = [v3 application];
  v5 = [v4 bundleIdentifier];
  v6 = [v2 isEqualToString:v5];

  return v6;
}

void __96__SBContinuitySessionLaunchEventExecutor__executeNotificationLaunchEvent_animatedly_completion___block_invoke_2_25(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __96__SBContinuitySessionLaunchEventExecutor__executeNotificationLaunchEvent_animatedly_completion___block_invoke_3;
  v3[3] = &unk_2783B7FF8;
  v4 = *(a1 + 32);
  [a2 addTransactionDidCompleteBlock:v3];
}

- (void)_executeWidgetLaunchEvent:(id)event animatedly:(BOOL)animatedly completion:(id)completion
{
  animatedlyCopy = animatedly;
  v45 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  completionCopy = completion;
  v11 = SBLogContinuitySession();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v44 = eventCopy;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Building foreground action for launch event %{public}@", buf, 0xCu);
  }

  v12 = objc_alloc(MEMORY[0x277CFA540]);
  payload = [eventCopy payload];
  v14 = [v12 initWithData:payload];

  if (v14)
  {
    v37 = animatedlyCopy;
    v15 = +[SBContinuitySessionManager sharedInstance];
    currentSession = [v15 currentSession];
    mainWindowScene = [currentSession mainWindowScene];

    if (!mainWindowScene)
    {
      [SBContinuitySessionLaunchEventExecutor _executeWidgetLaunchEvent:a2 animatedly:self completion:?];
    }

    v18 = +[SBApplicationController sharedInstance];
    extensionIdentity = [v14 extensionIdentity];
    containerBundleIdentifier = [extensionIdentity containerBundleIdentifier];
    v38 = v18;
    v21 = [v18 applicationWithBundleIdentifier:containerBundleIdentifier];

    v22 = +[SBMainWorkspace sharedInstance];
    v23 = [SBDeviceApplicationSceneEntity alloc];
    sceneManager = [mainWindowScene sceneManager];
    _sbDisplayConfiguration = [mainWindowScene _sbDisplayConfiguration];
    identity = [_sbDisplayConfiguration identity];
    v36 = v21;
    v27 = [(SBDeviceApplicationSceneEntity *)v23 initWithApplication:v21 sceneHandleProvider:sceneManager displayIdentity:identity];

    action = [v14 action];
    if (action)
    {
      v29 = [MEMORY[0x277CBEB98] setWithObject:action];
      [(SBApplicationSceneEntity *)v27 addActions:v29];
    }

    if (v37)
    {
      v30 = 0;
    }

    else
    {
      v30 = 4;
    }

    _sbDisplayConfiguration2 = [mainWindowScene _sbDisplayConfiguration];
    v32 = [v22 createRequestForApplicationActivation:v27 withDisplayConfiguration:_sbDisplayConfiguration2 options:v30];

    if (v32)
    {
      processHandle = [MEMORY[0x277CF0CD0] processHandle];
      [v32 setOriginatingProcess:processHandle];

      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __90__SBContinuitySessionLaunchEventExecutor__executeWidgetLaunchEvent_animatedly_completion___block_invoke;
      v39[3] = &unk_2783AE5A0;
      v40 = eventCopy;
      v41 = v14;
      v42 = completionCopy;
      v34 = [v32 addCompletionHandler:v39];
      [v22 executeTransitionRequest:v32];
    }

    else if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    v35 = SBLogContinuitySession();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [SBContinuitySessionLaunchEventExecutor _executeWidgetLaunchEvent:animatedly:completion:];
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

uint64_t __90__SBContinuitySessionLaunchEventExecutor__executeWidgetLaunchEvent_animatedly_completion___block_invoke(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = SBLogContinuitySession();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = [*(a1 + 40) extensionIdentity];
      v8 = [v7 containerBundleIdentifier];
      v9 = [*(a1 + 40) action];
      v11 = 138543874;
      v12 = v6;
      v13 = 2114;
      v14 = v8;
      v15 = 2114;
      v16 = v9;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Foreground widget launch succeed for launch event %{public}@ bundleIdentifier %{public}@ bsAction %{public}@", &v11, 0x20u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __90__SBContinuitySessionLaunchEventExecutor__executeWidgetLaunchEvent_animatedly_completion___block_invoke_cold_1(a1, v5);
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_executeAppLaunchEvent:(id)event animatedly:(BOOL)animatedly completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  completionCopy = completion;
  v9 = SBLogContinuitySession();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v30 = eventCopy;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Building foreground action for launch event %{public}@", buf, 0xCu);
  }

  v10 = MEMORY[0x277D67CC8];
  payload = [eventCopy payload];
  v28 = 0;
  v12 = [v10 eventWithData:payload error:&v28];
  v13 = v28;

  v14 = SBLogContinuitySession();
  v15 = v14;
  if (!v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "Successfully unarchived appLaunchEvent", buf, 2u);
    }

    lsApplicationRecord = [v12 lsApplicationRecord];
    bundleIdentifier = [lsApplicationRecord bundleIdentifier];

    if (bundleIdentifier)
    {
      if (animatedly)
      {
LABEL_12:
        v18 = 0;
LABEL_16:
        continuityDisplayService = [MEMORY[0x277D0AD78] continuityDisplayService];
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __87__SBContinuitySessionLaunchEventExecutor__executeAppLaunchEvent_animatedly_completion___block_invoke;
        v24[3] = &unk_2783B8048;
        v25 = eventCopy;
        v26 = bundleIdentifier;
        v27 = completionCopy;
        v22 = bundleIdentifier;
        [continuityDisplayService openApplication:v22 withOptions:v18 completion:v24];

        goto LABEL_17;
      }
    }

    else
    {
      bundleIdentifier2 = [v12 bundleIdentifier];
      if (!bundleIdentifier2)
      {
        v23 = SBLogContinuitySession();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [SBContinuitySessionLaunchEventExecutor _executeAppLaunchEvent:animatedly:completion:];
        }

        goto LABEL_7;
      }

      bundleIdentifier = bundleIdentifier2;
      if (animatedly)
      {
        goto LABEL_12;
      }
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [dictionary setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D67118]];
    v18 = [MEMORY[0x277D0AD60] optionsWithDictionary:dictionary];

    goto LABEL_16;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [SBContinuitySessionLaunchEventExecutor _executeAppLaunchEvent:animatedly:completion:];
  }

LABEL_7:
  completionCopy[2](completionCopy);
LABEL_17:
}

void __87__SBContinuitySessionLaunchEventExecutor__executeAppLaunchEvent_animatedly_completion___block_invoke(id *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v5 = v4;
  BSDispatchMain();
}

void __87__SBContinuitySessionLaunchEventExecutor__executeAppLaunchEvent_animatedly_completion___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = SBLogContinuitySession();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __96__SBContinuitySessionLaunchEventExecutor__executeNotificationLaunchEvent_animatedly_completion___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    *buf = 138543618;
    v20 = v5;
    v21 = 2114;
    v22 = v6;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Foreground application launch succeed for launch event %{public}@ bundleIdentifier %{public}@", buf, 0x16u);
  }

  v7 = +[SBWorkspace mainWorkspace];
  v8 = [v7 currentTransaction];
  v9 = objc_opt_class();
  v10 = v8;
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = [v12 toApplicationSceneEntities];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __87__SBContinuitySessionLaunchEventExecutor__executeAppLaunchEvent_animatedly_completion___block_invoke_42;
  v17[3] = &unk_2783A9EA0;
  v18 = *(a1 + 48);
  v14 = [v13 bs_containsObjectPassingTest:v17];

  if (v14 && [v12 isRunning])
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __87__SBContinuitySessionLaunchEventExecutor__executeAppLaunchEvent_animatedly_completion___block_invoke_2_43;
    v15[3] = &unk_2783B8020;
    v16 = *(a1 + 56);
    [v12 registerBlockObserver:v15];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

uint64_t __87__SBContinuitySessionLaunchEventExecutor__executeAppLaunchEvent_animatedly_completion___block_invoke_42(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 sceneHandle];
  v4 = [v3 application];
  v5 = [v4 bundleIdentifier];
  v6 = [v2 isEqualToString:v5];

  return v6;
}

void __87__SBContinuitySessionLaunchEventExecutor__executeAppLaunchEvent_animatedly_completion___block_invoke_2_43(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __87__SBContinuitySessionLaunchEventExecutor__executeAppLaunchEvent_animatedly_completion___block_invoke_3;
  v3[3] = &unk_2783B7FF8;
  v4 = *(a1 + 32);
  [a2 addTransactionDidCompleteBlock:v3];
}

- (void)_executeDebugLaunchEvent:(id)event animatedly:(BOOL)animatedly completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  completionCopy = completion;
  v9 = SBLogContinuitySession();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v22 = eventCopy;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Executing debug launch event %{public}@", buf, 0xCu);
  }

  continuityDisplayService = [MEMORY[0x277D0AD78] continuityDisplayService];
  if (animatedly)
  {
    v11 = MEMORY[0x277CBEC10];
  }

  else
  {
    v19 = *MEMORY[0x277D67118];
    v20 = MEMORY[0x277CBEC38];
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  }

  v12 = [MEMORY[0x277D0AD60] optionsWithDictionary:v11];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __89__SBContinuitySessionLaunchEventExecutor__executeDebugLaunchEvent_animatedly_completion___block_invoke;
  v15[3] = &unk_2783B8048;
  v16 = eventCopy;
  v17 = @"com.apple.tips";
  v18 = completionCopy;
  v13 = completionCopy;
  v14 = eventCopy;
  [continuityDisplayService openApplication:@"com.apple.tips" withOptions:v12 completion:v15];
}

void __89__SBContinuitySessionLaunchEventExecutor__executeDebugLaunchEvent_animatedly_completion___block_invoke(id *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v5 = v4;
  BSDispatchMain();
}

uint64_t __89__SBContinuitySessionLaunchEventExecutor__executeDebugLaunchEvent_animatedly_completion___block_invoke_2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = SBLogContinuitySession();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __89__SBContinuitySessionLaunchEventExecutor__executeDebugLaunchEvent_animatedly_completion___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[5];
    v6 = a1[6];
    v8 = 138543618;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Debug application launch succeed for launch event %{public}@ bundleIdentifier %{public}@", &v8, 0x16u);
  }

  return (*(a1[7] + 16))();
}

- (void)executeLaunchEvent:(uint64_t)a1 animatedly:(uint64_t)a2 completion:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBContinuitySessionLaunchEventExecutor.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"event"}];
}

void __96__SBContinuitySessionLaunchEventExecutor__executeNotificationLaunchEvent_animatedly_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_3_19(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_33();
  OUTLINED_FUNCTION_1_17();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)_executeWidgetLaunchEvent:(uint64_t)a1 animatedly:(uint64_t)a2 completion:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBContinuitySessionLaunchEventExecutor.m" lineNumber:114 description:@"could not get continuityScene"];
}

void __90__SBContinuitySessionLaunchEventExecutor__executeWidgetLaunchEvent_animatedly_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) extensionIdentity];
  v6 = [v5 containerBundleIdentifier];
  v7 = [*(a1 + 40) action];
  v8 = 138543874;
  v9 = v4;
  v10 = 2114;
  v11 = v6;
  v12 = 2114;
  v13 = v7;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Foreground widget launch failed for launch event %{public}@ bundleIdentifier %{public}@ bsAction %{public}@", &v8, 0x20u);
}

void __89__SBContinuitySessionLaunchEventExecutor__executeDebugLaunchEvent_animatedly_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_3_19(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_33();
  OUTLINED_FUNCTION_1_17();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

@end
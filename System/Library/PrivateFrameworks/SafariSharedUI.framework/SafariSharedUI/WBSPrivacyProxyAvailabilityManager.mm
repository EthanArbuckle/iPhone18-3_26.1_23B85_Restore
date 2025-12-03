@interface WBSPrivacyProxyAvailabilityManager
+ (WBSPrivacyProxyAvailabilityManager)sharedManager;
- (BOOL)isPrivacyProxyActive;
- (BOOL)isPrivacyProxyPaidTierUnavailableInUserCountry;
- (WBSPrivacyProxyAvailabilityManager)init;
- (unint64_t)state;
- (void)_registerForDefaultNetworkInterfaceChangeNotifications;
- (void)_registerForPrivacyProxyChangeNotifications;
@end

@implementation WBSPrivacyProxyAvailabilityManager

+ (WBSPrivacyProxyAvailabilityManager)sharedManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__WBSPrivacyProxyAvailabilityManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_once != -1)
  {
    dispatch_once(&sharedManager_once, block);
  }

  v2 = sharedManager_manager_0;

  return v2;
}

void __51__WBSPrivacyProxyAvailabilityManager_sharedManager__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedManager_manager_0;
  sharedManager_manager_0 = v1;
}

- (WBSPrivacyProxyAvailabilityManager)init
{
  v25.receiver = self;
  v25.super_class = WBSPrivacyProxyAvailabilityManager;
  v2 = [(WBSPrivacyProxyAvailabilityManager *)&v25 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.SafariShared.WBSPrivacyProxyAvailabilityManager.%@.%p.internalQueue", objc_opt_class(), v2];
    v5 = dispatch_queue_create([v4 UTF8String], 0);
    internalQueue = v3->_internalQueue;
    v3->_internalQueue = v5;

    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.SafariShared.WBSPrivacyProxyAvailabilityManager.%@.%p.notificationQueue", objc_opt_class(), v3];
    v8 = dispatch_queue_create([v7 UTF8String], 0);
    notificationQueue = v3->_notificationQueue;
    v3->_notificationQueue = v8;

    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v3->_isPrivacyProxyOnInICloudSettings = [standardUserDefaults BOOLForKey:*MEMORY[0x1E69C9508]];

    standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
    v3->_isPrivacyProxyPaidTierUnavailableInUserCountry = [standardUserDefaults2 BOOLForKey:*MEMORY[0x1E69C9510]];

    standardUserDefaults3 = [MEMORY[0x1E695E000] standardUserDefaults];
    v13 = [standardUserDefaults3 safari_numberForKey:*MEMORY[0x1E69C9518]];
    v3->_privacyProxyTrafficBitfield = [v13 unsignedLongLongValue];

    standardUserDefaults4 = [MEMORY[0x1E695E000] standardUserDefaults];
    v15 = [standardUserDefaults4 safari_numberForKey:*MEMORY[0x1E69C94F0]];
    v3->_privacyProxyAccountType = [v15 unsignedLongLongValue];

    standardUserDefaults5 = [MEMORY[0x1E695E000] standardUserDefaults];
    v17 = [standardUserDefaults5 safari_numberForKey:*MEMORY[0x1E69C9500]];
    v3->_privacyProxyServiceStatus = [v17 unsignedLongLongValue];

    standardUserDefaults6 = [MEMORY[0x1E695E000] standardUserDefaults];
    v3->_isPrivacyProxyActiveOnDefaultNetwork = [standardUserDefaults6 BOOLForKey:*MEMORY[0x1E69C94F8]];

    v19 = v3->_notificationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__WBSPrivacyProxyAvailabilityManager_init__block_invoke;
    block[3] = &unk_1E8283080;
    v20 = v3;
    v24 = v20;
    dispatch_async(v19, block);
    v21 = v20;
  }

  return v3;
}

void __42__WBSPrivacyProxyAvailabilityManager_init__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __42__WBSPrivacyProxyAvailabilityManager_init__block_invoke_2;
  v2[3] = &unk_1E8283080;
  v3 = v1;
  [v3 _updatePrivacyProxyStateWithCompletionHandler:v2];
}

- (BOOL)isPrivacyProxyPaidTierUnavailableInUserCountry
{
  os_unfair_lock_lock(&self->_lock);
  isPrivacyProxyPaidTierUnavailableInUserCountry = self->_isPrivacyProxyPaidTierUnavailableInUserCountry;
  os_unfair_lock_unlock(&self->_lock);
  return isPrivacyProxyPaidTierUnavailableInUserCountry;
}

uint64_t __42__WBSPrivacyProxyAvailabilityManager_init__block_invoke_2(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXPrivacyProxy();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __42__WBSPrivacyProxyAvailabilityManager_init__block_invoke_2_cold_1(v2);
  }

  [*(a1 + 32) _registerForPrivacyProxyChangeNotifications];
  return [*(a1 + 32) _registerForDefaultNetworkInterfaceChangeNotifications];
}

- (void)_registerForPrivacyProxyChangeNotifications
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = self;
  _os_log_error_impl(&dword_1C6968000, a2, OS_LOG_TYPE_ERROR, "Failed to listen to privacy proxy service status change notification: %i", v2, 8u);
}

- (void)_registerForDefaultNetworkInterfaceChangeNotifications
{
  mEMORY[0x1E6977E50] = [MEMORY[0x1E6977E50] sharedDefaultEvaluator];
  [mEMORY[0x1E6977E50] addObserver:self forKeyPath:@"path" options:7 context:0];
}

- (BOOL)isPrivacyProxyActive
{
  if (![(WBSPrivacyProxyAvailabilityManager *)self isPrivacyProxyFreeTierAvailable])
  {
    return 0;
  }

  os_unfair_lock_lock(&self->_lock);
  v3 = self->_isPrivacyProxyActiveOnDefaultNetwork && self->_privacyProxyServiceStatus == 1;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (unint64_t)state
{
  os_unfair_lock_lock(&self->_lock);
  privacyProxyTrafficBitfield = self->_privacyProxyTrafficBitfield;
  isPrivacyProxyOnInICloudSettings = self->_isPrivacyProxyOnInICloudSettings;
  os_unfair_lock_unlock(&self->_lock);
  if (isPrivacyProxyOnInICloudSettings && (privacyProxyTrafficBitfield & 8) != 0)
  {
    return 2;
  }

  else
  {
    return (privacyProxyTrafficBitfield >> 2) & 1;
  }
}

void __77__WBSPrivacyProxyAvailabilityManager_setPrivacyProxyState_completionHandler___block_invoke_17_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_3() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1C6968000, v4, v5, "Failed to set user privacy proxy tier to Subscriber: %{public}@", v6, v7, v8, v9, v10);
}

void __77__WBSPrivacyProxyAvailabilityManager_setPrivacyProxyState_completionHandler___block_invoke_19_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_3() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1C6968000, v4, v5, "Failed to change privacy proxy state: %{public}@", v6, v7, v8, v9, v10);
}

void __84__WBSPrivacyProxyAvailabilityManager__updatePrivacyProxyStateWithCompletionHandler___block_invoke_25_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_3() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1C6968000, v4, v5, "Failed to query privacy proxy tier: %{public}@", v6, v7, v8, v9, v10);
}

void __84__WBSPrivacyProxyAvailabilityManager__updatePrivacyProxyStateWithCompletionHandler___block_invoke_27_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_3() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1C6968000, v4, v5, "Failed to query privacy proxy state: %{public}@", v6, v7, v8, v9, v10);
}

void __84__WBSPrivacyProxyAvailabilityManager__updatePrivacyProxyStateWithCompletionHandler___block_invoke_30_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_3() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1C6968000, v4, v5, "Failed to query privacy proxy account type: %{public}@", v6, v7, v8, v9, v10);
}

void __84__WBSPrivacyProxyAvailabilityManager__updatePrivacyProxyStateWithCompletionHandler___block_invoke_31_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_3() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1C6968000, v4, v5, "Failed to query privacy proxy service status: %{public}@", v6, v7, v8, v9, v10);
}

@end
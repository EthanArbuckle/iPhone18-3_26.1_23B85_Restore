@interface VSMultiAppInstallUtility
+ (id)getDecidedNonChannelAppsForProvider:(id)provider account:(id)account device:(id)device;
+ (void)determineMultiAppEnabledForProvider:(id)provider completion:(id)completion;
+ (void)determineMultiAppEnabledForProvider:(id)provider withAccount:(id)account withBagLoadOperation:(id)operation completion:(id)completion;
+ (void)filterBundleIDsByPendingConsent:(id)consent completionHandler:(id)handler;
+ (void)getPendingConsentBundleIDsFromSelectedAppDescriptions:(id)descriptions completionHandler:(id)handler;
+ (void)isShowMultiAppInstallForCaseAlwaysRequirePasswordEnabledWithBagLoadOperation:(id)operation completion:(id)completion;
@end

@implementation VSMultiAppInstallUtility

+ (void)determineMultiAppEnabledForProvider:(id)provider completion:(id)completion
{
  v5 = MEMORY[0x277CE2198];
  completionCopy = completion;
  providerCopy = provider;
  sharedInstance = [v5 sharedInstance];
  [VSMultiAppInstallUtility determineMultiAppEnabledForProvider:providerCopy withAccount:sharedInstance completion:completionCopy];
}

+ (void)determineMultiAppEnabledForProvider:(id)provider withAccount:(id)account withBagLoadOperation:(id)operation completion:(id)completion
{
  providerCopy = provider;
  accountCopy = account;
  operationCopy = operation;
  completionCopy = completion;
  shouldShowChannelApps = [providerCopy shouldShowChannelApps];
  shouldShowSubscriptionApps = [providerCopy shouldShowSubscriptionApps];
  if ((shouldShowChannelApps & 1) == 0 && (shouldShowSubscriptionApps & 1) == 0)
  {
    v15 = VSDefaultLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v16 = "Provider is not configured to show Channel or Subscription apps. MAI disabled.";
LABEL_16:
      _os_log_impl(&dword_270DD4000, v15, OS_LOG_TYPE_DEFAULT, v16, buf, 2u);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  allPersonalizedAppDescriptions = [providerCopy allPersonalizedAppDescriptions];
  v18 = [allPersonalizedAppDescriptions count];

  if (!v18)
  {
    v15 = VSDefaultLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v16 = "Provider does not actually have any Personalized apps. MAI disabled.";
      goto LABEL_16;
    }

LABEL_17:

    completionCopy[2](completionCopy, 0);
    goto LABEL_18;
  }

  hasAccount = [accountCopy hasAccount];
  freeAppPasswordPromptSetting = [accountCopy freeAppPasswordPromptSetting];
  if ((hasAccount & 1) == 0)
  {
    v15 = VSDefaultLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v16 = "User does not have an active iTunes Account. MAI disabled.";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if ((freeAppPasswordPromptSetting & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v21 = VSDefaultLogObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_270DD4000, v21, OS_LOG_TYPE_DEFAULT, "User has selected Never or Require After 15Min. No need to Check for Skip Bag Key. MAI is enabled.", buf, 2u);
    }

    completionCopy[2](completionCopy, 1);
  }

  else
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __108__VSMultiAppInstallUtility_determineMultiAppEnabledForProvider_withAccount_withBagLoadOperation_completion___block_invoke;
    v22[3] = &unk_279E19B60;
    v24 = (freeAppPasswordPromptSetting & 0xFFFFFFFFFFFFFFFELL) == 2;
    v23 = completionCopy;
    [VSMultiAppInstallUtility isShowMultiAppInstallForCaseAlwaysRequirePasswordEnabledWithBagLoadOperation:operationCopy completion:v22];
  }

LABEL_18:
}

void __108__VSMultiAppInstallUtility_determineMultiAppEnabledForProvider_withAccount_withBagLoadOperation_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v1 = *(a1 + 32);
  VSPerformBlockOnMainThread();
}

uint64_t __108__VSMultiAppInstallUtility_determineMultiAppEnabledForProvider_withAccount_withBagLoadOperation_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) & 1) != 0 || (*(a1 + 41))
  {
    v2 = VSDefaultLogObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_270DD4000, v2, OS_LOG_TYPE_DEFAULT, "MAI is enabled.", v4, 2u);
    }
  }

  else
  {
    v2 = VSDefaultLogObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_270DD4000, v2, OS_LOG_TYPE_DEFAULT, "Skipping MAI on AlwaysRequirePassword Option is Enabled and User has selected AlwaysRequirePassword. MAI disabled.", buf, 2u);
    }
  }

  return (*(*(a1 + 32) + 16))();
}

+ (void)isShowMultiAppInstallForCaseAlwaysRequirePasswordEnabledWithBagLoadOperation:(id)operation completion:(id)completion
{
  operationCopy = operation;
  completionCopy = completion;
  v7 = objc_alloc_init(MEMORY[0x277CE21A0]);
  [v7 setBagKey:*MEMORY[0x277CE2370]];
  objc_initWeak(&location, v7);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __116__VSMultiAppInstallUtility_isShowMultiAppInstallForCaseAlwaysRequirePasswordEnabledWithBagLoadOperation_completion___block_invoke;
  v9[3] = &unk_279E19B88;
  objc_copyWeak(&v11, &location);
  v8 = completionCopy;
  v10 = v8;
  [v7 setCompletionBlock:v9];
  VSEnqueueCompletionOperation();

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __116__VSMultiAppInstallUtility_isShowMultiAppInstallForCaseAlwaysRequirePasswordEnabledWithBagLoadOperation_completion___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained value];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 BOOLValue];
    v5 = VSDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109120;
      v7[1] = v4;
      _os_log_impl(&dword_270DD4000, v5, OS_LOG_TYPE_DEFAULT, "isShowMultiAppInstallForCaseAlwaysRequirePasswordEnabled: %d", v7, 8u);
    }
  }

  (*(*(a1 + 32) + 16))();

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)getPendingConsentBundleIDsFromSelectedAppDescriptions:(id)descriptions completionHandler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  descriptionsCopy = descriptions;
  handlerCopy = handler;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = descriptionsCopy;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        bundleID = [*(*(&v16 + 1) + 8 * v13) bundleID];
        if (bundleID)
        {
          [v8 addObject:bundleID];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  [self filterBundleIDsByPendingConsent:v8 completionHandler:handlerCopy];
  v15 = *MEMORY[0x277D85DE8];
}

+ (id)getDecidedNonChannelAppsForProvider:(id)provider account:(id)account device:(id)device
{
  providerCopy = provider;
  deviceCopy = device;
  accountCopy = account;
  nonChannelAppDescriptions = [providerCopy nonChannelAppDescriptions];

  if (!nonChannelAppDescriptions)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [provider nonChannelAppDescriptions] parameter must not be nil."];
  }

  nonChannelAppDescriptions2 = [providerCopy nonChannelAppDescriptions];
  preferredAppID = [accountCopy preferredAppID];

  v13 = objc_alloc_init(VSNonChannelAppDecider);
  [(VSNonChannelAppDecider *)v13 setAppDescriptions:nonChannelAppDescriptions2];
  [(VSNonChannelAppDecider *)v13 setPreferredAppBundleOrAdamID:preferredAppID];
  stringForAMSDeviceFamilies = [deviceCopy stringForAMSDeviceFamilies];

  [(VSNonChannelAppDecider *)v13 setPreferredDeviceFamily:stringForAMSDeviceFamilies];
  decidedNonChannelApps = [(VSNonChannelAppDecider *)v13 decidedNonChannelApps];

  return decidedNonChannelApps;
}

+ (void)filterBundleIDsByPendingConsent:(id)consent completionHandler:(id)handler
{
  consentCopy = consent;
  handlerCopy = handler;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = MEMORY[0x277D782F8];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __78__VSMultiAppInstallUtility_filterBundleIDsByPendingConsent_completionHandler___block_invoke;
  v12[3] = &unk_279E19BB0;
  v13 = consentCopy;
  v14 = v7;
  v15 = handlerCopy;
  v9 = handlerCopy;
  v10 = v7;
  v11 = consentCopy;
  [v8 resolveBundleIDs:v11 completionHandler:v12];
}

void __78__VSMultiAppInstallUtility_filterBundleIDsByPendingConsent_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = VSErrorLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __78__VSMultiAppInstallUtility_filterBundleIDsByPendingConsent_completionHandler___block_invoke_cold_1(a1, v6, v7);
    }
  }

  if (v5)
  {
    v8 = v5;
    v9 = VSDefaultLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v8;
      _os_log_impl(&dword_270DD4000, v9, OS_LOG_TYPE_DEFAULT, "Received final bundle IDs: %@", &v14, 0xCu);
    }

    v10 = [*(a1 + 32) mutableCopy];
    [v10 removeObjectsInArray:v8];
    v11 = VSDefaultLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v10;
      _os_log_impl(&dword_270DD4000, v11, OS_LOG_TYPE_DEFAULT, "Omitted bundle IDs: %@", &v14, 0xCu);
    }

    [*(a1 + 40) addObjectsFromArray:v8];
  }

  v12 = *(a1 + 40);
  (*(*(a1 + 48) + 16))();

  v13 = *MEMORY[0x277D85DE8];
}

void __78__VSMultiAppInstallUtility_filterBundleIDsByPendingConsent_completionHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_270DD4000, log, OS_LOG_TYPE_ERROR, "Error filtering out consented candidateBundleIDs %@: %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end
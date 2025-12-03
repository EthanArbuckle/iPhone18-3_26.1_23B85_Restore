@interface PDCPreflightManager
+ (BOOL)isPreflightFeatureEnabled;
- (BOOL)_requiresPreflightForApplication:(id)application;
- (BOOL)_requiresPreflightForApplicationRecord:(id)record;
- (PDCPreflightManager)initWithTargetQueue:(id)queue;
- (PDCPreflightManager)initWithTargetQueue:(id)queue consentStore:(id)store;
- (id)_preflightLaunchForApplication:(id)application withCompletionHandler:(id)handler;
@end

@implementation PDCPreflightManager

+ (BOOL)isPreflightFeatureEnabled
{
  if (isPreflightFeatureEnabled_once != -1)
  {
    +[PDCPreflightManager isPreflightFeatureEnabled];
  }

  return isPreflightFeatureEnabled_result;
}

void __48__PDCPreflightManager_isPreflightFeatureEnabled__block_invoke()
{
  v0 = _os_feature_enabled_impl();
  if (isGreenTea_once != -1)
  {
    __48__PDCPreflightManager_isPreflightFeatureEnabled__block_invoke_cold_1();
  }

  v1 = isGreenTea_result;
  v2 = _os_feature_enabled_impl();
  v3 = ct_green_tea_logging_enabled();
  if (isRunningInDemoMode_once != -1)
  {
    __48__PDCPreflightManager_isPreflightFeatureEnabled__block_invoke_cold_2();
  }

  isPreflightFeatureEnabled_result = (isRunningInDemoMode_result ^ 1) & (v2 | v1) & (v0 | v3);
}

- (PDCPreflightManager)initWithTargetQueue:(id)queue
{
  queueCopy = queue;
  v5 = PDCGlobalConsentStoreInstance();
  v6 = [(PDCPreflightManager *)self initWithTargetQueue:queueCopy consentStore:v5];

  return v6;
}

- (PDCPreflightManager)initWithTargetQueue:(id)queue consentStore:(id)store
{
  queueCopy = queue;
  storeCopy = store;
  v16.receiver = self;
  v16.super_class = PDCPreflightManager;
  v8 = [(PDCPreflightManager *)&v16 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"PDCPreflightManager.0x%p", v8];
    uTF8String = [v9 UTF8String];
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create_with_target_V2(uTF8String, v11, queueCopy);
    queue = v8->_queue;
    v8->_queue = v12;

    objc_storeStrong(&v8->_consentStore, store);
    v14 = v8;
  }

  return v8;
}

- (BOOL)_requiresPreflightForApplication:(id)application
{
  applicationCopy = application;
  v10 = 0;
  v5 = [applicationCopy findApplicationRecordWithError:&v10];
  v6 = v10;
  if (v6)
  {
    v7 = PDC_LOG_CHANNEL_PREFIXPrivacyDisclosureCore();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      PDCCurrentRegulatoryDisclosureVersionForApplicationIdentity_cold_1(applicationCopy, v6, v7);
    }

    v8 = 0;
  }

  else
  {
    v8 = [(PDCPreflightManager *)self _requiresPreflightForApplicationRecord:v5];
  }

  return v8;
}

- (BOOL)_requiresPreflightForApplicationRecord:(id)record
{
  recordCopy = record;
  if (+[PDCPreflightManager isPreflightFeatureEnabled])
  {
    regulatoryPrivacyDisclosureVersion = [recordCopy regulatoryPrivacyDisclosureVersion];
    if (regulatoryPrivacyDisclosureVersion)
    {
      consentStore = [(PDCPreflightManager *)self consentStore];
      bundleIdentifier = [recordCopy bundleIdentifier];
      v8 = [consentStore userConsentedRegulatoryDisclosureVersionForBundleIdentifier:bundleIdentifier];

      v9 = [regulatoryPrivacyDisclosureVersion isEqual:v8] ^ 1;
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (id)_preflightLaunchForApplication:(id)application withCompletionHandler:(id)handler
{
  applicationCopy = application;
  handlerCopy = handler;
  if ([(PDCPreflightManager *)self _requiresPreflightForApplication:applicationCopy])
  {
    v8 = [[PDCPreflightRequestHandle alloc] initWithQueue:self->_queue completionHandler:handlerCopy];
    v9 = +[PDCPrivacyAlertPresenter sharedPresenter];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __76__PDCPreflightManager__preflightLaunchForApplication_withCompletionHandler___block_invoke_2;
    v14[3] = &unk_279AA1F50;
    v10 = &v15;
    v11 = v8;
    v15 = v11;
    [v9 activateRemoteAlertWithIdentity:applicationCopy requestHandle:v11 forcePresent:0 completionHandler:v14];
  }

  else
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__PDCPreflightManager__preflightLaunchForApplication_withCompletionHandler___block_invoke;
    block[3] = &unk_279AA1F28;
    v10 = &v17;
    v17 = handlerCopy;
    dispatch_async(queue, block);
    v11 = +[PDCPreflightRequestHandle alreadyCompletedRequestHandle];
  }

  return v11;
}

uint64_t __76__PDCPreflightManager__preflightLaunchForApplication_withCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) > 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = qword_25F706D68[a2 - 1];
  }

  return [*(a1 + 32) completeRequestWithResponse:v2];
}

@end
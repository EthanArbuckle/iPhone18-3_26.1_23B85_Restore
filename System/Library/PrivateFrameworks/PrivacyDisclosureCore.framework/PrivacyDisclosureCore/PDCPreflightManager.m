@interface PDCPreflightManager
+ (BOOL)isPreflightFeatureEnabled;
- (BOOL)_requiresPreflightForApplication:(id)a3;
- (BOOL)_requiresPreflightForApplicationRecord:(id)a3;
- (PDCPreflightManager)initWithTargetQueue:(id)a3;
- (PDCPreflightManager)initWithTargetQueue:(id)a3 consentStore:(id)a4;
- (id)_preflightLaunchForApplication:(id)a3 withCompletionHandler:(id)a4;
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

- (PDCPreflightManager)initWithTargetQueue:(id)a3
{
  v4 = a3;
  v5 = PDCGlobalConsentStoreInstance();
  v6 = [(PDCPreflightManager *)self initWithTargetQueue:v4 consentStore:v5];

  return v6;
}

- (PDCPreflightManager)initWithTargetQueue:(id)a3 consentStore:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = PDCPreflightManager;
  v8 = [(PDCPreflightManager *)&v16 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"PDCPreflightManager.0x%p", v8];
    v10 = [v9 UTF8String];
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create_with_target_V2(v10, v11, v6);
    queue = v8->_queue;
    v8->_queue = v12;

    objc_storeStrong(&v8->_consentStore, a4);
    v14 = v8;
  }

  return v8;
}

- (BOOL)_requiresPreflightForApplication:(id)a3
{
  v4 = a3;
  v10 = 0;
  v5 = [v4 findApplicationRecordWithError:&v10];
  v6 = v10;
  if (v6)
  {
    v7 = PDC_LOG_CHANNEL_PREFIXPrivacyDisclosureCore();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      PDCCurrentRegulatoryDisclosureVersionForApplicationIdentity_cold_1(v4, v6, v7);
    }

    v8 = 0;
  }

  else
  {
    v8 = [(PDCPreflightManager *)self _requiresPreflightForApplicationRecord:v5];
  }

  return v8;
}

- (BOOL)_requiresPreflightForApplicationRecord:(id)a3
{
  v4 = a3;
  if (+[PDCPreflightManager isPreflightFeatureEnabled])
  {
    v5 = [v4 regulatoryPrivacyDisclosureVersion];
    if (v5)
    {
      v6 = [(PDCPreflightManager *)self consentStore];
      v7 = [v4 bundleIdentifier];
      v8 = [v6 userConsentedRegulatoryDisclosureVersionForBundleIdentifier:v7];

      v9 = [v5 isEqual:v8] ^ 1;
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

- (id)_preflightLaunchForApplication:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PDCPreflightManager *)self _requiresPreflightForApplication:v6])
  {
    v8 = [[PDCPreflightRequestHandle alloc] initWithQueue:self->_queue completionHandler:v7];
    v9 = +[PDCPrivacyAlertPresenter sharedPresenter];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __76__PDCPreflightManager__preflightLaunchForApplication_withCompletionHandler___block_invoke_2;
    v14[3] = &unk_279AA1F50;
    v10 = &v15;
    v11 = v8;
    v15 = v11;
    [v9 activateRemoteAlertWithIdentity:v6 requestHandle:v11 forcePresent:0 completionHandler:v14];
  }

  else
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__PDCPreflightManager__preflightLaunchForApplication_withCompletionHandler___block_invoke;
    block[3] = &unk_279AA1F28;
    v10 = &v17;
    v17 = v7;
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
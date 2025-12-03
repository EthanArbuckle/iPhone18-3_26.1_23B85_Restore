@interface TRIXPCServices
+ (void)registerAgentToSystemService;
+ (void)registerTrialServicesWithPromise:(id)promise;
+ (void)registerTrialSystemServicesWithPromise:(id)promise;
@end

@implementation TRIXPCServices

+ (void)registerTrialServicesWithPromise:(id)promise
{
  promiseCopy = promise;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__TRIXPCServices_registerTrialServicesWithPromise___block_invoke;
  block[3] = &unk_279DDEEE0;
  v7 = promiseCopy;
  v4 = registerTrialServicesWithPromise___pasOnceToken2;
  v5 = promiseCopy;
  if (v4 != -1)
  {
    dispatch_once(&registerTrialServicesWithPromise___pasOnceToken2, block);
  }
}

void __51__TRIXPCServices_registerTrialServicesWithPromise___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = MEMORY[0x277D42658];
  v4 = [[TRIXPCInternalServiceListener alloc] initWithServerContextPromise:*(a1 + 32) forSystem:0];
  [v3 registerForService:@"com.apple.triald.internal" delegate:v4];

  v5 = MEMORY[0x277D42658];
  v6 = [[TRIXPCNamespaceManagementServiceListener alloc] initWithServerContextPromise:*(a1 + 32) forSystem:0];
  [v5 registerForService:@"com.apple.triald.namespace-management" delegate:v6];

  v7 = MEMORY[0x277D42658];
  v8 = [[TRIXPCStatusServiceListener alloc] initWithPromise:*(a1 + 32) forSystem:0];
  [v7 registerForService:@"com.apple.trial.status" delegate:v8];

  objc_autoreleasePoolPop(v2);
}

+ (void)registerTrialSystemServicesWithPromise:(id)promise
{
  promiseCopy = promise;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__TRIXPCServices_registerTrialSystemServicesWithPromise___block_invoke;
  block[3] = &unk_279DDEEE0;
  v7 = promiseCopy;
  v4 = registerTrialSystemServicesWithPromise___pasOnceToken3;
  v5 = promiseCopy;
  if (v4 != -1)
  {
    dispatch_once(&registerTrialSystemServicesWithPromise___pasOnceToken3, block);
  }
}

void __57__TRIXPCServices_registerTrialSystemServicesWithPromise___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (_os_feature_enabled_impl())
  {
    v3 = MEMORY[0x277D42658];
    v4 = [[TRIXPCInternalServiceListener alloc] initWithServerContextPromise:*(a1 + 32) forSystem:1];
    [v3 registerForService:@"com.apple.triald.system.internal" delegate:v4];

    v5 = MEMORY[0x277D42658];
    v6 = [[TRIXPCNamespaceManagementServiceListener alloc] initWithServerContextPromise:*(a1 + 32) forSystem:1];
    [v5 registerForService:@"com.apple.triald.system.namespace-management" delegate:v6];

    v7 = MEMORY[0x277D42658];
    v8 = [[TRIXPCStatusServiceListener alloc] initWithPromise:*(a1 + 32) forSystem:1];
    [v7 registerForService:@"com.apple.trial.system.status" delegate:v8];
  }

  objc_autoreleasePoolPop(v2);
}

+ (void)registerAgentToSystemService
{
  if (registerAgentToSystemService__pasOnceToken4 != -1)
  {
    dispatch_once(&registerAgentToSystemService__pasOnceToken4, &__block_literal_global_12);
  }
}

void __46__TRIXPCServices_registerAgentToSystemService__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = MEMORY[0x277D42658];
  v2 = objc_alloc_init(TRIXPCInternalAgentToSystemServiceListener);
  [v1 registerForService:@"com.apple.triald.system.from-agent" delegate:v2];

  objc_autoreleasePoolPop(v0);
}

@end
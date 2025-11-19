@interface RCURLSession
+ (id)_sharedSession;
+ (id)backgroundSessionForFetchConfig:(id)a3 delegateReference:(id *)a4;
+ (id)backgroundSessionWithIdentifier:(id)a3 sharedContainerIdentifier:(id)a4 timeout:(double)a5 delegateReference:(id *)a6;
+ (id)backgroundSessionsLock;
+ (id)sharedForegroundSession;
+ (void)_configureURLSessionConfiguration:(id)a3;
+ (void)cancelAllTasksOnBackgroundSessionWithFetchConfig:(id)a3 completion:(id)a4;
- (RCURLSession)init;
@end

@implementation RCURLSession

+ (id)_sharedSession
{
  if (_sharedSession_onceToken != -1)
  {
    +[RCURLSession _sharedSession];
  }

  v3 = _sharedSession_s_sharedSession;

  return v3;
}

uint64_t __30__RCURLSession__sharedSession__block_invoke()
{
  _sharedSession_s_sharedSession = objc_alloc_init(RCURLSession);

  return MEMORY[0x2821F96F8]();
}

- (RCURLSession)init
{
  v6.receiver = self;
  v6.super_class = RCURLSession;
  v2 = [(RCURLSession *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(RCUnfairLock);
    backgroundSessionsLock = v2->_backgroundSessionsLock;
    v2->_backgroundSessionsLock = v3;
  }

  return v2;
}

+ (id)sharedForegroundSession
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__RCURLSession_sharedForegroundSession__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedForegroundSession_onceToken != -1)
  {
    dispatch_once(&sharedForegroundSession_onceToken, block);
  }

  v2 = sharedForegroundSession_s_sharedSession;

  return v2;
}

void __39__RCURLSession_sharedForegroundSession__block_invoke(uint64_t a1)
{
  v6 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
  [*(a1 + 32) _configureURLSessionConfiguration:v6];
  v2 = objc_alloc_init(MEMORY[0x277CCABD8]);
  [v2 setName:@"RCFetchOperation.callbackQueue"];
  v3 = [MEMORY[0x277CCAC38] processInfo];
  [v2 setMaxConcurrentOperationCount:{objc_msgSend(v3, "processorCount")}];

  v4 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v6 delegate:0 delegateQueue:v2];
  v5 = sharedForegroundSession_s_sharedSession;
  sharedForegroundSession_s_sharedSession = v4;
}

+ (id)backgroundSessionWithIdentifier:(id)a3 sharedContainerIdentifier:(id)a4 timeout:(double)a5 delegateReference:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [a1 backgroundSessionsLock];
  [v12 lock];

  v13 = +[RCURLSession _sharedSession];
  v14 = [v13 backgroundSessions];
  v15 = [v14 objectForKeyedSubscript:v10];

  v16 = [a1 backgroundSessionsLock];
  [v16 unlock];

  if (v15)
  {
    v17 = [v15 configuration];
    v18 = [v17 sharedContainerIdentifier];

    if (v18 != v11 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[RCURLSession backgroundSessionWithIdentifier:sharedContainerIdentifier:timeout:delegateReference:];
    }
  }

  else
  {
    v19 = [MEMORY[0x277CCAD38] backgroundSessionConfigurationWithIdentifier:v10];
    [a1 _configureURLSessionConfiguration:v19];
    [v19 setTimeoutIntervalForResource:a5];
    [v19 setSharedContainerIdentifier:v11];

    v20 = objc_alloc_init(MEMORY[0x277CCABD8]);
    [v20 setName:@"RCFetchOperation.backgroundFetchCallbackQueue"];
    v21 = [MEMORY[0x277CCAC38] processInfo];
    [v20 setMaxConcurrentOperationCount:{objc_msgSend(v21, "processorCount")}];

    v22 = [[RCNetworkOperationURLSessionDelegate alloc] initWithSessionIdentifier:v10];
    v23 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v19 delegate:v22 delegateQueue:v20];
    v24 = [a1 backgroundSessionsLock];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __100__RCURLSession_backgroundSessionWithIdentifier_sharedContainerIdentifier_timeout_delegateReference___block_invoke;
    v29[3] = &unk_27822F130;
    v30 = v10;
    v15 = v23;
    v31 = v15;
    [v24 performWithLockSync:v29];
  }

  if (a6)
  {
    v25 = [v15 delegate];

    if (!v25 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[RCURLSession backgroundSessionWithIdentifier:sharedContainerIdentifier:timeout:delegateReference:];
    }

    v26 = objc_opt_class();
    v27 = [v15 delegate];
    *a6 = RCCheckedDynamicCast(v26, v27);
  }

  return v15;
}

void __100__RCURLSession_backgroundSessionWithIdentifier_sharedContainerIdentifier_timeout_delegateReference___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = +[RCURLSession _sharedSession];
  v3 = [v4 backgroundSessions];
  [v3 setObject:v2 forKeyedSubscript:*(a1 + 32)];
}

+ (id)backgroundSessionForFetchConfig:(id)a3 delegateReference:(id *)a4
{
  v6 = a3;
  v7 = [v6 sessionIdentifier];
  v8 = [v6 sharedContainerIdentifier];
  [v6 timeout];
  v10 = v9;

  v11 = [a1 backgroundSessionWithIdentifier:v7 sharedContainerIdentifier:v8 timeout:a4 delegateReference:v10];

  return v11;
}

+ (void)cancelAllTasksOnBackgroundSessionWithFetchConfig:(id)a3 completion:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = RCSharedLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 sessionIdentifier];
    *buf = 138543362;
    v17 = v8;
    _os_log_impl(&dword_2179FC000, v7, OS_LOG_TYPE_DEFAULT, "Will cancel all tasks on background URLSession: %{public}@", buf, 0xCu);
  }

  v9 = [RCURLSession backgroundSessionForFetchConfig:v5 delegateReference:0];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__RCURLSession_cancelAllTasksOnBackgroundSessionWithFetchConfig_completion___block_invoke;
  v13[3] = &unk_27822FC48;
  v14 = v5;
  v15 = v6;
  v10 = v6;
  v11 = v5;
  [v9 getAllTasksWithCompletionHandler:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __76__RCURLSession_cancelAllTasksOnBackgroundSessionWithFetchConfig_completion___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v13 + 1) + 8 * v7++) cancel];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v5);
  }

  v8 = RCSharedLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v3 count];
    v10 = [*(a1 + 32) sessionIdentifier];
    *buf = 134218242;
    v18 = v9;
    v19 = 2114;
    v20 = v10;
    _os_log_impl(&dword_2179FC000, v8, OS_LOG_TYPE_DEFAULT, "Did cancel all tasks (%lu) on background URLSession: %{public}@", buf, 0x16u);
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))();
  }

  v12 = *MEMORY[0x277D85DE8];
}

+ (id)backgroundSessionsLock
{
  v2 = +[RCURLSession _sharedSession];
  v3 = [v2 backgroundSessionsLock];

  return v3;
}

+ (void)_configureURLSessionConfiguration:(id)a3
{
  v5 = a3;
  [v5 setAllowsCellularAccess:1];
  [v5 setRequestCachePolicy:1];
  [v5 setURLCache:0];
  [v5 setTimeoutIntervalForRequest:60.0];
  [v5 setTimeoutIntervalForResource:240.0];
  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [v3 objectForInfoDictionaryKey:@"RCNetworkAttributionBundleIdentifier"];

  if (v4)
  {
    [v5 set_sourceApplicationBundleIdentifier:v4];
  }

  [v5 set_timingDataOptions:1];
  [v5 setHTTPMaximumConnectionsPerHost:1];
  [v5 setHTTPShouldUsePipelining:0];
}

+ (void)backgroundSessionWithIdentifier:sharedContainerIdentifier:timeout:delegateReference:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"expected equality between %s and %s", "urlSession.configuration.sharedContainerIdentifier", "sharedContainerIdentifier"];
  *buf = 136315906;
  v3 = "+[RCURLSession backgroundSessionWithIdentifier:sharedContainerIdentifier:timeout:delegateReference:]";
  v4 = 2080;
  v5 = "/Library/Caches/com.apple.xbs/Sources/RemoteConfiguration/RemoteConfiguration/BackgroundURLSessionSupport/RCURLSession.m";
  v6 = 1024;
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_2179FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure: %s %s:%d %{public}@", buf, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

+ (void)backgroundSessionWithIdentifier:sharedContainerIdentifier:timeout:delegateReference:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"invalid nil value for '%s'", "urlSession.delegate"];
  *buf = 136315906;
  v3 = "+[RCURLSession backgroundSessionWithIdentifier:sharedContainerIdentifier:timeout:delegateReference:]";
  v4 = 2080;
  v5 = "/Library/Caches/com.apple.xbs/Sources/RemoteConfiguration/RemoteConfiguration/BackgroundURLSessionSupport/RCURLSession.m";
  v6 = 1024;
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_2179FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure: %s %s:%d %{public}@", buf, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

@end
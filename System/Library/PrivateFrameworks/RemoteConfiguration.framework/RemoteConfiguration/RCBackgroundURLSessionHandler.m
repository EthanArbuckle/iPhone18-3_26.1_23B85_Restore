@interface RCBackgroundURLSessionHandler
- (RCBackgroundURLSessionHandler)init;
- (void)networkSessionDidFinishWithTasks:(id)a3;
- (void)reestablishBackgroundSessionWithConfigurationSettings:(id)a3 sessionCompletionHandler:(id)a4;
@end

@implementation RCBackgroundURLSessionHandler

- (RCBackgroundURLSessionHandler)init
{
  v3.receiver = self;
  v3.super_class = RCBackgroundURLSessionHandler;
  return [(RCBackgroundURLSessionHandler *)&v3 init];
}

- (void)reestablishBackgroundSessionWithConfigurationSettings:(id)a3 sessionCompletionHandler:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  [(RCBackgroundURLSessionHandler *)self setConfigurationSettings:v7];
  [(RCBackgroundURLSessionHandler *)self setSessionCompletionHandler:v6];

  v8 = [v7 backgroundFetchConfiguration];

  v9 = [v8 sessionIdentifier];
  [(RCBackgroundURLSessionHandler *)self setSessionIdentifier:v9];

  v10 = RCSharedLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v8 sessionIdentifier];
    *buf = 138543362;
    v17 = v11;
    _os_log_impl(&dword_2179FC000, v10, OS_LOG_TYPE_DEFAULT, "RCBackgroundURLSessionHandler will reestablish background URL session, id: %{public}@", buf, 0xCu);
  }

  v15 = 0;
  v12 = [RCURLSession backgroundSessionForFetchConfig:v8 delegateReference:&v15];
  v13 = v15;
  [v13 addObserver:self];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)networkSessionDidFinishWithTasks:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = RCSharedLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(RCBackgroundURLSessionHandler *)self sessionIdentifier];
    *buf = 138543618;
    *&buf[4] = v5;
    *&buf[12] = 2048;
    *&buf[14] = [v3 count];
    _os_log_impl(&dword_2179FC000, v4, OS_LOG_TYPE_DEFAULT, "RCBackgroundURLSessionHandler networkSessionDidFinish, id: %{public}@, taskCount: %lu", buf, 0x16u);
  }

  queue = RCDispatchQueueForQualityOfService(-1);
  v6 = dispatch_group_create();
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v44 = __Block_byref_object_copy__2;
  v45 = __Block_byref_object_dispose__2;
  v46 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = __Block_byref_object_copy__2;
  v36[4] = __Block_byref_object_dispose__2;
  v37 = objc_alloc_init(RCUnfairLock);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v3;
  v25 = [obj countByEnumeratingWithState:&v32 objects:v42 count:16];
  if (v25)
  {
    v24 = *v33;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v33 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v32 + 1) + 8 * i);
        dispatch_group_enter(v6);
        v9 = [v8 data];
        v10 = [v8 httpResponse];
        v11 = [v10 allHeaderFields];
        v12 = [v11 objectForKeyedSubscript:@"Cache-Control"];
        v13 = [v12 rc_numberFollowingString:@"max-age="];

        if (!v13 || ([v13 doubleValue], v14 == 0.0))
        {
          v15 = RCSharedLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = [v10 URL];
            v17 = [v16 absoluteString];
            v18 = [v8 identifier];
            *v38 = 138543618;
            v39 = v17;
            v40 = 2114;
            v41 = v18;
            _os_log_impl(&dword_2179FC000, v15, OS_LOG_TYPE_DEFAULT, "max-age missing from Cache-Control header for URL: %{public}@, taskID: %{public}@", v38, 0x16u);
          }

          v13 = 0;
        }

        v19 = [(RCBackgroundURLSessionHandler *)self configurationSettings];
        v20 = [v8 identifier];
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __66__RCBackgroundURLSessionHandler_networkSessionDidFinishWithTasks___block_invoke;
        v28[3] = &unk_27822FC70;
        v28[4] = v8;
        v28[5] = self;
        v30 = v36;
        v31 = buf;
        v29 = v6;
        [RCEndpointResponseProcessing parseEndpointResponse:v9 configurationSettings:v19 maxAge:v13 loggingPrefix:v20 completion:v28];
      }

      v25 = [obj countByEnumeratingWithState:&v32 objects:v42 count:16];
    }

    while (v25);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__RCBackgroundURLSessionHandler_networkSessionDidFinishWithTasks___block_invoke_2;
  block[3] = &unk_27822FC98;
  block[4] = self;
  block[5] = buf;
  dispatch_group_notify(v6, queue, block);
  _Block_object_dispose(v36, 8);

  _Block_object_dispose(buf, 8);
  v21 = *MEMORY[0x277D85DE8];
}

void __66__RCBackgroundURLSessionHandler_networkSessionDidFinishWithTasks___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = RCSharedLog();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __66__RCBackgroundURLSessionHandler_networkSessionDidFinishWithTasks___block_invoke_cold_1(a1, v5, v8);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) identifier];
    v10 = [*(a1 + 40) sessionIdentifier];
    *buf = 138543618;
    v22 = v9;
    v23 = 2114;
    v24 = v10;
    _os_log_impl(&dword_2179FC000, v8, OS_LOG_TYPE_DEFAULT, "Successfully parsed response data for task (%{public}@) of network session (%{public}@)", buf, 0x16u);
  }

  v11 = [RCBackgroundTaskResult alloc];
  v12 = [*(a1 + 32) identifier];
  v13 = [(RCBackgroundTaskResult *)v11 initWithTaskIdentifier:v12 configurationResourcesByRequestKey:v6 error:v5];

  v14 = *(*(*(a1 + 56) + 8) + 40);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __66__RCBackgroundURLSessionHandler_networkSessionDidFinishWithTasks___block_invoke_8;
  v18[3] = &unk_27822F288;
  v15 = *(a1 + 64);
  v19 = v13;
  v20 = v15;
  v16 = v13;
  [v14 performWithLockSync:v18];
  dispatch_group_leave(*(a1 + 48));

  v17 = *MEMORY[0x277D85DE8];
}

void __66__RCBackgroundURLSessionHandler_networkSessionDidFinishWithTasks___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionCompletionHandler];

  if (v2)
  {
    v4 = [*(a1 + 32) sessionCompletionHandler];
    v3 = [*(*(*(a1 + 40) + 8) + 40) copy];
    v4[2](v4, v3);
  }
}

void __66__RCBackgroundURLSessionHandler_networkSessionDidFinishWithTasks___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = [*(a1 + 32) identifier];
  v7 = [*(a1 + 40) sessionIdentifier];
  v9 = 138543874;
  v10 = v6;
  v11 = 2114;
  v12 = v7;
  v13 = 2114;
  v14 = a2;
  _os_log_error_impl(&dword_2179FC000, a3, OS_LOG_TYPE_ERROR, "Failed to parse response data for task (%{public}@) of network session (%{public}@), error: %{public}@", &v9, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

@end
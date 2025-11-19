@interface RCEndpointOperation
- (BOOL)canRetryWithError:(id)a3 retryAfter:(id *)a4;
- (BOOL)validateOperation;
- (id)requestDataForSettings:(id)a3;
- (void)_fetchConfigurationWithSettings:(id)a3;
- (void)operationWillFinishWithError:(id)a3;
- (void)performOperation;
- (void)validateOperation;
@end

@implementation RCEndpointOperation

- (BOOL)validateOperation
{
  v3 = [(RCEndpointOperation *)self configurationSettings];
  if (v3 && (v4 = v3, -[RCEndpointOperation configurationSettings](self, "configurationSettings"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isValid], v5, v4, (v6 & 1) != 0))
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v7)
    {
      [RCEndpointOperation validateOperation];
      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

- (void)performOperation
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = RCSharedLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(RCOperation *)self shortOperationDescription];
    v5 = [(RCEndpointOperation *)self configurationSettings];
    v8 = 138543618;
    v9 = v4;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&dword_2179FC000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ will perform operation to fetch config with settings %{public}@", &v8, 0x16u);
  }

  v6 = [(RCEndpointOperation *)self configurationSettings];
  [(RCEndpointOperation *)self _fetchConfigurationWithSettings:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)operationWillFinishWithError:(id)a3
{
  v4 = a3;
  v5 = [(RCEndpointOperation *)self completionQueue];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = RCDispatchQueueForQualityOfService([(RCEndpointOperation *)self qualityOfService]);
  }

  v8 = v7;

  v9 = [(RCEndpointOperation *)self configurationCompletionHandler];

  if (v9)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __52__RCEndpointOperation_operationWillFinishWithError___block_invoke;
    v10[3] = &unk_27822F130;
    v10[4] = self;
    v11 = v4;
    dispatch_async(v8, v10);
  }
}

void __52__RCEndpointOperation_operationWillFinishWithError___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) configurationCompletionHandler];
  v2 = [*(a1 + 32) configurationResourcesByRequestKey];
  v3[2](v3, v2, *(a1 + 40));
}

- (void)_fetchConfigurationWithSettings:(id)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(RCURLFetchOperation);
  v6 = [(RCEndpointOperation *)self endpointURL];
  [(RCURLFetchOperation *)v5 setURL:v6];

  v7 = [(RCEndpointOperation *)self requestDataForSettings:v4];
  [(RCURLFetchOperation *)v5 setHTTPBody:v7];

  [(RCURLFetchOperation *)v5 setHTTPMethod:@"PUT"];
  v17 = @"Content-Type";
  v18[0] = @"application/json";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  [(RCURLFetchOperation *)v5 setAdditionalRequestHTTPHeaders:v8];

  v9 = [v4 loggingKey];
  [(RCURLFetchOperation *)v5 setLoggingKey:v9];

  [v4 endpointTimeoutDuration];
  [(RCURLFetchOperation *)v5 setURLRequestTimeoutDuration:?];
  v10 = [(RCEndpointOperation *)self networkEventHandler];
  [(RCURLFetchOperation *)v5 setNetworkEventHandler:v10];

  v11 = [(RCEndpointOperation *)self networkActivity];
  [(RCURLFetchOperation *)v5 setNetworkActivity:v11];

  v12 = [v4 backgroundFetchConfiguration];
  [(RCURLFetchOperation *)v5 setBackgroundFetchConfiguration:v12];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __55__RCEndpointOperation__fetchConfigurationWithSettings___block_invoke;
  v15[3] = &unk_27822F440;
  v15[4] = self;
  v16 = v4;
  v13 = v4;
  [(RCURLFetchOperation *)v5 setConfigurationDictionaryCompletionHandler:v15];
  [(RCOperation *)self associateChildOperation:v5];
  [(RCOperation *)v5 start];

  v14 = *MEMORY[0x277D85DE8];
}

void __55__RCEndpointOperation__fetchConfigurationWithSettings___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v32 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = RCSharedLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [*(a1 + 32) shortOperationDescription];
    v18 = [v14 statusCode];
    v19 = [MEMORY[0x277CCAA40] localizedStringForStatusCode:{objc_msgSend(v14, "statusCode")}];
    *buf = 138543874;
    *&buf[4] = v17;
    *&buf[12] = 2048;
    *&buf[14] = v18;
    *&buf[22] = 2114;
    v29 = v19;
    _os_log_impl(&dword_2179FC000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Endpoint JSON HTTP response status code: %ld (%{public}@)", buf, 0x20u);
  }

  if (!v11 || v15)
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __55__RCEndpointOperation__fetchConfigurationWithSettings___block_invoke_15;
    v26[3] = &unk_27822F130;
    v26[4] = *(a1 + 32);
    v27 = v15;
    __55__RCEndpointOperation__fetchConfigurationWithSettings___block_invoke_15(v26);
  }

  else if (v12)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __55__RCEndpointOperation__fetchConfigurationWithSettings___block_invoke_2;
    v24[3] = &unk_27822F130;
    v24[4] = *(a1 + 32);
    v25 = v12;
    __55__RCEndpointOperation__fetchConfigurationWithSettings___block_invoke_2(v24);
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v29 = __Block_byref_object_copy__1;
    v30 = __Block_byref_object_dispose__1;
    v31 = 0;
    v20 = *(a1 + 40);
    v21 = [*(a1 + 32) shortOperationDescription];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __55__RCEndpointOperation__fetchConfigurationWithSettings___block_invoke_17;
    v23[3] = &unk_27822F418;
    v23[4] = *(a1 + 32);
    v23[5] = buf;
    [RCEndpointResponseProcessing parseEndpointResponseDict:v11 parsingError:0 configurationSettings:v20 maxAge:v13 loggingPrefix:v21 completion:v23];

    [*(a1 + 32) finishedPerformingOperationWithError:*(*&buf[8] + 40)];
    _Block_object_dispose(buf, 8);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __55__RCEndpointOperation__fetchConfigurationWithSettings___block_invoke_17(uint64_t a1, void *a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v6 = obj;
  v7 = a2;
  [*(a1 + 32) setConfigurationResourcesByRequestKey:v7];
}

- (id)requestDataForSettings:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 dictionaryRepresentation];
  v6 = [v5 mutableCopy];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v34 = v4;
  obj = [v4 requestInfos];
  v7 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v45;
    v36 = self;
    v37 = v6;
    v35 = *v45;
    do
    {
      v10 = 0;
      v38 = v8;
      do
      {
        if (*v45 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v44 + 1) + 8 * v10);
        v12 = MEMORY[0x277CBEB38];
        v13 = [v11 allAdditionalFields];
        v14 = [v12 dictionaryWithDictionary:v13];

        v15 = [(RCEndpointOperation *)self changeTagsByRequestKey];
        v16 = [v11 requestKey];
        v17 = [v15 objectForKeyedSubscript:v16];

        if ([v11 requestType])
        {
          if ([v11 requestType] != 1)
          {
            goto LABEL_22;
          }

          v18 = [MEMORY[0x277CBEB18] array];
          if (v17)
          {
            v19 = [v17 dictionaryRepresentation];
            [v18 addObject:v19];
          }

          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v20 = [v11 additionalChangeTags];
          v21 = [v20 countByEnumeratingWithState:&v40 objects:v52 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v41;
            do
            {
              for (i = 0; i != v22; ++i)
              {
                if (*v41 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v25 = [*(*(&v40 + 1) + 8 * i) dictionaryRepresentation];
                [v18 addObject:v25];
              }

              v22 = [v20 countByEnumeratingWithState:&v40 objects:v52 count:16];
            }

            while (v22);
          }

          [v14 setObject:v18 forKeyedSubscript:@"changeTagWrappers"];
          v26 = [v11 requestKey];
          v6 = v37;
          [v37 setObject:v14 forKeyedSubscript:v26];

          v9 = v35;
          self = v36;
          v8 = v38;
        }

        else
        {
          if (v17)
          {
            v27 = [v17 dictionaryRepresentation];
            [v14 setObject:v27 forKeyedSubscript:@"changeTagWrapper"];
          }

          v18 = [v11 requestKey];
          [v6 setObject:v14 forKeyedSubscript:v18];
        }

LABEL_22:
        ++v10;
      }

      while (v10 != v8);
      v8 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
    }

    while (v8);
  }

  v28 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v6 options:0 error:0];
  v29 = RCSharedLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = [(RCOperation *)self shortOperationDescription];
    v31 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v28 encoding:4];
    *buf = 138543618;
    v49 = v30;
    v50 = 2114;
    v51 = v31;
    _os_log_impl(&dword_2179FC000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ Endpoint JSON request: %{public}@", buf, 0x16u);
  }

  v32 = *MEMORY[0x277D85DE8];

  return v28;
}

- (BOOL)canRetryWithError:(id)a3 retryAfter:(id *)a4
{
  v5 = a3;
  if ([v5 rc_shouldRetry] && (objc_msgSend(v5, "userInfo"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "objectForKeyedSubscript:", @"RCErrorRetryAfter"), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v8 = [v5 userInfo];
    v9 = [v8 objectForKeyedSubscript:@"RCErrorRetryAfter"];
    [v9 doubleValue];
    v11 = v10;

    *a4 = [[RCOperationDelayedRetrySignal alloc] initWithDelay:v11];
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)validateOperation
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"the endpoint operation must have valid configuration settings"];
  v2 = 136315906;
  v3 = "[RCEndpointOperation validateOperation]";
  v4 = 2080;
  v5 = "/Library/Caches/com.apple.xbs/Sources/RemoteConfiguration/RemoteConfiguration/RCEndpointOperation.m";
  v6 = 1024;
  v7 = 55;
  v8 = 2114;
  v9 = v0;
  _os_log_error_impl(&dword_2179FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure: %s %s:%d %{public}@", &v2, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

@end
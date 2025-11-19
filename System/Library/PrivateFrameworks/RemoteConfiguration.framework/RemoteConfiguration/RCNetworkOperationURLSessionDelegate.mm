@interface RCNetworkOperationURLSessionDelegate
- (RCNetworkOperationURLSessionDelegate)initWithSessionIdentifier:(id)a3;
- (id)_existingNetworkTaskForURLSessionTask:(id)a3;
- (id)_networkTaskForIdentifier:(id)a3;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5;
- (void)URLSessionDidFinishEventsForBackgroundURLSession:(id)a3;
- (void)addObserver:(id)a3;
- (void)observeCompletionOfTaskWithIdentifier:(id)a3 completion:(id)a4;
@end

@implementation RCNetworkOperationURLSessionDelegate

- (RCNetworkOperationURLSessionDelegate)initWithSessionIdentifier:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = RCNetworkOperationURLSessionDelegate;
  v6 = [(RCNetworkOperationURLSessionDelegate *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sessionIdentifier, a3);
    v8 = [MEMORY[0x277CBEB38] dictionary];
    runningTasks = v7->_runningTasks;
    v7->_runningTasks = v8;

    v10 = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    sessionDidFinishObservers = v7->_sessionDidFinishObservers;
    v7->_sessionDidFinishObservers = v10;

    v12 = [[RCUnfairLock alloc] initWithOptions:1];
    taskLock = v7->_taskLock;
    v7->_taskLock = v12;
  }

  return v7;
}

- (void)addObserver:(id)a3
{
  v7 = a3;
  v4 = [(RCNetworkOperationURLSessionDelegate *)self sessionDidFinishObservers];
  v5 = [v4 rc_containsObject:v7];

  if ((v5 & 1) == 0)
  {
    v6 = [(RCNetworkOperationURLSessionDelegate *)self sessionDidFinishObservers];
    [v6 addPointer:v7];
  }
}

- (void)observeCompletionOfTaskWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v9 = [(RCNetworkOperationURLSessionDelegate *)self _networkTaskForIdentifier:a3];
  v7 = [(RCNetworkOperationURLSessionDelegate *)self taskLock];
  [v7 lock];

  [v9 setCompletionHandler:v6];
  v8 = [(RCNetworkOperationURLSessionDelegate *)self taskLock];
  [v8 unlock];
}

- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = RCSharedLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (v9)
    {
      [RCNetworkOperationURLSessionDelegate URLSession:didBecomeInvalidWithError:];
    }

    v10 = v7;
  }

  else
  {
    if (v9)
    {
      [RCNetworkOperationURLSessionDelegate URLSession:v6 didBecomeInvalidWithError:?];
    }

    v10 = [MEMORY[0x277CCA9B8] rc_unknownBackgroundNetworkOperationError];
  }

  v11 = v10;
  v12 = [(RCNetworkOperationURLSessionDelegate *)self taskLock];
  [v12 lock];

  v13 = [(RCNetworkOperationURLSessionDelegate *)self runningTasks];
  v14 = [v13 allValues];

  v15 = [(RCNetworkOperationURLSessionDelegate *)self taskLock];
  [v15 unlock];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v16 = v14;
  v17 = [v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v29;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v28 + 1) + 8 * i);
        v22 = [v21 completionHandler];

        if (v22)
        {
          v23 = [v21 completionHandler];
          (v23)[2](v23, 0, 0, v11);
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v18);
  }

  v24 = [(RCNetworkOperationURLSessionDelegate *)self taskLock];
  [v24 lock];

  v25 = [(RCNetworkOperationURLSessionDelegate *)self runningTasks];
  [v25 removeAllObjects];

  v26 = [(RCNetworkOperationURLSessionDelegate *)self taskLock];
  [v26 unlock];

  v27 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v51[3] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = [(RCNetworkOperationURLSessionDelegate *)self _existingNetworkTaskForURLSessionTask:v7];

  if (!v9)
  {
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __77__RCNetworkOperationURLSessionDelegate_URLSession_task_didCompleteWithError___block_invoke;
    v43[3] = &unk_27822F130;
    v44 = v7;
    v45 = self;
    __77__RCNetworkOperationURLSessionDelegate_URLSession_task_didCompleteWithError___block_invoke(v43);
    v10 = v44;
    goto LABEL_26;
  }

  v10 = [(RCNetworkOperationURLSessionDelegate *)self _existingNetworkTaskForURLSessionTask:v7];
  v11 = objc_opt_class();
  v12 = [v7 response];
  v13 = RCDynamicCast(v11, v12);

  [v10 receiveHTTPResponse:v13];
  if (v8)
  {
    v14 = RCSharedLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [RCNetworkOperationURLSessionDelegate URLSession:task:didCompleteWithError:];
    }

    v15 = [v10 completionHandler];

    if (!v15)
    {
      goto LABEL_21;
    }

    v16 = [v10 completionHandler];
    v17 = [v10 data];
    v18 = [v7 response];
    (v16)[2](v16, v17, v18, v8);
  }

  else if (v13 && [v13 isFailure])
  {
    v19 = RCSharedLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [RCNetworkOperationURLSessionDelegate URLSession:task:didCompleteWithError:];
    }

    v20 = [v10 completionHandler];

    if (!v20)
    {
      goto LABEL_21;
    }

    v50[0] = @"RCErrorHTTPURL";
    v41 = [v13 URL];
    v21 = [v41 absoluteString];
    v51[0] = v21;
    v50[1] = @"RCErrorHTTPRequestUUID";
    v22 = [v7 taskDescription];
    v51[1] = v22;
    v50[2] = @"RCErrorHTTPStatusCode";
    v23 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v13, "statusCode")}];
    v51[2] = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:3];
    v16 = [v24 mutableCopy];

    v25 = [v13 allHeaderFields];

    if (v25)
    {
      v26 = [v13 allHeaderFields];
      [v16 setObject:v26 forKeyedSubscript:@"RCErrorHTTPResponseHeaders"];
    }

    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"URL session task failed with status code %lu", objc_msgSend(v13, "statusCode")];
    v18 = [MEMORY[0x277CCA9B8] rc_errorWithCode:3 description:v17 additionalUserInfo:v16];
    v42 = [v10 completionHandler];
    v27 = [v10 data];
    v28 = [v7 response];
    (v42)[2](v42, v27, v28, v18);
  }

  else
  {
    v29 = RCSharedLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [v7 rc_logIdentifier];
      *buf = 138543362;
      v47 = v30;
      _os_log_impl(&dword_2179FC000, v29, OS_LOG_TYPE_DEFAULT, "Network operation %{public}@ did succeed", buf, 0xCu);
    }

    v31 = [v10 completionHandler];

    if (!v31)
    {
      goto LABEL_21;
    }

    v16 = [v10 completionHandler];
    v17 = [v10 data];
    v18 = [v7 response];
    (v16)[2](v16, v17, v18, 0);
  }

LABEL_21:
  v32 = [v10 completionHandler];

  if (v32)
  {
    v33 = [(RCNetworkOperationURLSessionDelegate *)self taskLock];
    [v33 lock];

    v34 = [(RCNetworkOperationURLSessionDelegate *)self runningTasks];
    v35 = [v7 taskDescription];
    [v34 setObject:0 forKeyedSubscript:v35];

    v36 = [(RCNetworkOperationURLSessionDelegate *)self taskLock];
    [v36 unlock];
  }

  else
  {
    v36 = RCSharedLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = [v7 rc_logIdentifier];
      v38 = [(RCNetworkOperationURLSessionDelegate *)self runningTasks];
      v39 = [v38 allKeys];
      *buf = 138543618;
      v47 = v37;
      v48 = 2114;
      v49 = v39;
      _os_log_impl(&dword_2179FC000, v36, OS_LOG_TYPE_DEFAULT, "Network operation task %{public}@ has no completion handler. Tasks: %{public}@", buf, 0x16u);
    }
  }

LABEL_26:
  v40 = *MEMORY[0x277D85DE8];
}

void __77__RCNetworkOperationURLSessionDelegate_URLSession_task_didCompleteWithError___block_invoke(uint64_t a1)
{
  v2 = RCSharedLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __77__RCNetworkOperationURLSessionDelegate_URLSession_task_didCompleteWithError___block_invoke_cold_1(a1);
  }
}

- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5
{
  v6 = a4;
  v7 = a5;
  v8 = RCSharedLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [RCNetworkOperationURLSessionDelegate URLSession:task:didFinishCollectingMetrics:];
  }
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = [v7 taskDescription];

  if (v9)
  {
    v10 = [v7 taskDescription];
    v11 = RCSharedLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v7 rc_logIdentifier];
      *buf = 138543618;
      v20 = v12;
      v21 = 2048;
      v22 = [v8 length];
      _os_log_impl(&dword_2179FC000, v11, OS_LOG_TYPE_DEFAULT, "Network operation with request %{public}@ received data (%lu bytes)", buf, 0x16u);
    }

    v13 = [(RCNetworkOperationURLSessionDelegate *)self _networkTaskForIdentifier:v10];
    v14 = [(RCNetworkOperationURLSessionDelegate *)self taskLock];
    [v14 lock];

    [v13 receiveData:v8];
    v15 = [(RCNetworkOperationURLSessionDelegate *)self taskLock];
    [v15 unlock];
  }

  else
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __75__RCNetworkOperationURLSessionDelegate_URLSession_dataTask_didReceiveData___block_invoke;
    v17[3] = &unk_27822F2B0;
    v18 = v7;
    __75__RCNetworkOperationURLSessionDelegate_URLSession_dataTask_didReceiveData___block_invoke(v17);
    v10 = v18;
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __75__RCNetworkOperationURLSessionDelegate_URLSession_dataTask_didReceiveData___block_invoke(uint64_t a1)
{
  v2 = RCSharedLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __75__RCNetworkOperationURLSessionDelegate_URLSession_dataTask_didReceiveData___block_invoke_cold_1(a1);
  }
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v23 = 0;
  v9 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v8 options:0 error:&v23];
  v10 = v23;
  v11 = RCSharedLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v7 rc_logIdentifier];
    v13 = [v9 length];
    v14 = [v8 absoluteString];
    *buf = 138543874;
    v25 = v12;
    v26 = 2048;
    v27 = v13;
    v28 = 2114;
    v29 = v14;
    _os_log_impl(&dword_2179FC000, v11, OS_LOG_TYPE_DEFAULT, "Network operation with request %{public}@ finished downloading data (%lu bytes) to location %{public}@", buf, 0x20u);
  }

  v15 = [v7 taskDescription];

  if (v15)
  {
    v16 = [v7 taskDescription];
    if (v10)
    {
      v17 = RCSharedLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [RCNetworkOperationURLSessionDelegate URLSession:downloadTask:didFinishDownloadingToURL:];
      }
    }

    else
    {
      v17 = [(RCNetworkOperationURLSessionDelegate *)self _networkTaskForIdentifier:v16];
      v18 = [(RCNetworkOperationURLSessionDelegate *)self taskLock];
      [v18 lock];

      [v17 receiveData:v9];
      v19 = [(RCNetworkOperationURLSessionDelegate *)self taskLock];
      [v19 unlock];
    }
  }

  else
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __90__RCNetworkOperationURLSessionDelegate_URLSession_downloadTask_didFinishDownloadingToURL___block_invoke;
    v21[3] = &unk_27822F2B0;
    v22 = v7;
    __90__RCNetworkOperationURLSessionDelegate_URLSession_downloadTask_didFinishDownloadingToURL___block_invoke(v21);
    v16 = v22;
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __90__RCNetworkOperationURLSessionDelegate_URLSession_downloadTask_didFinishDownloadingToURL___block_invoke(uint64_t a1)
{
  v2 = RCSharedLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __75__RCNetworkOperationURLSessionDelegate_URLSession_dataTask_didReceiveData___block_invoke_cold_1(a1);
  }
}

- (void)URLSessionDidFinishEventsForBackgroundURLSession:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = RCSharedLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 rc_logIdentifier];
    *buf = 138543362;
    v39 = v6;
    _os_log_impl(&dword_2179FC000, v5, OS_LOG_TYPE_DEFAULT, "Background URL session did finish for identifier: %{public}@", buf, 0xCu);
  }

  v7 = [(RCNetworkOperationURLSessionDelegate *)self taskLock];
  [v7 lock];

  v8 = [(RCNetworkOperationURLSessionDelegate *)self runningTasks];
  v9 = [v8 allValues];

  v10 = [(RCNetworkOperationURLSessionDelegate *)self taskLock];
  [v10 unlock];

  v11 = [(RCNetworkOperationURLSessionDelegate *)self observerLock];
  [v11 lock];

  v12 = [(RCNetworkOperationURLSessionDelegate *)self sessionDidFinishObservers];
  v13 = [v12 count];

  if (v13)
  {
    v14 = 0;
    do
    {
      v15 = [(RCNetworkOperationURLSessionDelegate *)self sessionDidFinishObservers];
      v16 = [v15 pointerAtIndex:v14];

      [v16 networkSessionDidFinishWithTasks:v9];
      ++v14;
      v17 = [(RCNetworkOperationURLSessionDelegate *)self sessionDidFinishObservers];
      v18 = [v17 count];
    }

    while (v14 < v18);
  }

  v19 = [(RCNetworkOperationURLSessionDelegate *)self observerLock];
  [v19 unlock];

  v20 = [(RCNetworkOperationURLSessionDelegate *)self taskLock];
  [v20 lock];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v21 = [(RCNetworkOperationURLSessionDelegate *)self runningTasks];
  v22 = [v21 allValues];

  v23 = [v22 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v34;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v34 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v33 + 1) + 8 * i);
        v28 = [v27 completionHandler];

        if (!v28)
        {
          v29 = [(RCNetworkOperationURLSessionDelegate *)self runningTasks];
          v30 = [v27 identifier];
          [v29 setObject:0 forKeyedSubscript:v30];
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v24);
  }

  v31 = [(RCNetworkOperationURLSessionDelegate *)self taskLock];
  [v31 unlock];

  v32 = *MEMORY[0x277D85DE8];
}

- (id)_networkTaskForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(RCNetworkOperationURLSessionDelegate *)self taskLock];
  [v5 lock];

  v6 = [(RCNetworkOperationURLSessionDelegate *)self runningTasks];
  v7 = [v6 objectForKeyedSubscript:v4];

  if (!v7)
  {
    v7 = [[RCNetworkOperationTask alloc] initWithIdentifier:v4];
    v8 = [(RCNetworkOperationURLSessionDelegate *)self runningTasks];
    [v8 setObject:v7 forKeyedSubscript:v4];
  }

  v9 = [(RCNetworkOperationURLSessionDelegate *)self taskLock];
  [v9 unlock];

  return v7;
}

- (id)_existingNetworkTaskForURLSessionTask:(id)a3
{
  v4 = a3;
  v5 = [v4 taskDescription];
  if (v5)
  {
    v6 = [(RCNetworkOperationURLSessionDelegate *)self taskLock];
    [v6 lock];

    v7 = [(RCNetworkOperationURLSessionDelegate *)self runningTasks];
    v8 = [v7 objectForKeyedSubscript:v5];

    v9 = [(RCNetworkOperationURLSessionDelegate *)self taskLock];
    [v9 unlock];
  }

  else
  {
    v10 = RCSharedLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [RCNetworkOperationURLSessionDelegate _existingNetworkTaskForURLSessionTask:];
    }

    v8 = 0;
  }

  return v8;
}

- (void)URLSession:didBecomeInvalidWithError:.cold.1()
{
  OUTLINED_FUNCTION_3_2();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 rc_logIdentifier];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(void *)a1 didBecomeInvalidWithError:.cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 rc_logIdentifier];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:task:didCompleteWithError:.cold.1()
{
  OUTLINED_FUNCTION_3_2();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 rc_logIdentifier];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:task:didCompleteWithError:.cold.2()
{
  OUTLINED_FUNCTION_3_2();
  v9 = *MEMORY[0x277D85DE8];
  v8 = [v1 rc_logIdentifier];
  [v0 statusCode];
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __77__RCNetworkOperationURLSessionDelegate_URLSession_task_didCompleteWithError___block_invoke_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) rc_logIdentifier];
  v3 = [*(a1 + 40) runningTasks];
  v10 = [v3 allKeys];
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:task:didFinishCollectingMetrics:.cold.1()
{
  OUTLINED_FUNCTION_3_2();
  v5 = *MEMORY[0x277D85DE8];
  v2 = [v1 rc_logIdentifier];
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(&dword_2179FC000, v0, OS_LOG_TYPE_DEBUG, "Network operation %{public}@ did finish collecting metrics: %{public}@", v4, 0x16u);

  v3 = *MEMORY[0x277D85DE8];
}

void __75__RCNetworkOperationURLSessionDelegate_URLSession_dataTask_didReceiveData___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) rc_logIdentifier];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:downloadTask:didFinishDownloadingToURL:.cold.1()
{
  OUTLINED_FUNCTION_3_2();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 rc_logIdentifier];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_existingNetworkTaskForURLSessionTask:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(&dword_2179FC000, v0, OS_LOG_TYPE_ERROR, "Identifier is missing for task: %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end
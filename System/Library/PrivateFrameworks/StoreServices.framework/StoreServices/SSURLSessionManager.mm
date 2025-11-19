@interface SSURLSessionManager
+ (BOOL)_fetchedFromCache:(id)a3;
+ (BOOL)_shouldCollectNetworkLogs;
+ (BOOL)_shouldCreateLocalCache;
+ (double)_localTimeIntervalToServerTimeInterval:(double)a3;
+ (double)_randomDouble;
+ (double)_timingDataMetricToServerTimeInterval:(id)a3;
+ (id)_DNSServerIPAddresses;
+ (id)_bagPerformanceValuesWithDelegate:(id)a3;
+ (id)_fetchNetworkQualityReports;
+ (id)_legacyBagValueForKey:(id)a3;
+ (id)_resolvedIPAddressFromTask:(id)a3;
+ (id)_responseDateFromTask:(id)a3 delegate:(id)a4;
+ (id)_tidStateForTask:(id)a3 delegate:(id)a4;
+ (id)bagValueForKey:(id)a3 delegate:(id)a4 type:(unint64_t)a5;
+ (id)eventFromTimingData:(id)a3 delegate:(id)a4 session:(id)a5 task:(id)a6 error:(id)a7;
+ (id)sharedManager;
+ (unint64_t)_messageSizeFromTask:(id)a3 isRequest:(BOOL)a4 delegate:(id)a5;
- (BOOL)_sendTimingDataForSessionTask:(id)a3;
- (BOOL)_shouldDisableCellularForDelegate:(id)a3;
- (BOOL)_shouldEnableAPSRWithTask:(id)a3;
- (BOOL)_shouldEnableTLSSessionForDelegate:(id)a3;
- (BOOL)_shouldRecordResponseBodyForDataTask:(id)a3;
- (BOOL)_shouldRequireCelluarForDelegate:(id)a3;
- (BOOL)_shouldSetCookiesForDelegate:(id)a3;
- (SSURLSessionManager)init;
- (id)_URLCacheForDelegate:(id)a3;
- (id)_URLCacheIDForDelegate:(id)a3;
- (id)_delegateForTask:(id)a3;
- (id)_requestDataForSessionTask:(id)a3;
- (id)_responseDataForSessionTask:(id)a3;
- (id)_saveHTTPArchiveBufferToDiskDecompressed:(BOOL)a3;
- (id)_sessionConfigurationWithDelegate:(id)a3 collectTimingData:(BOOL)a4 allowsTLSSessionTickets:(BOOL)a5;
- (id)_sessionIDWithDelegate:(id)a3 collectTimingData:(BOOL)a4 allowsTLSSessionTickets:(BOOL)a5;
- (id)_sessionWithDelegate:(id)a3 collectTimingData:(BOOL *)a4;
- (id)_taskMetricsForSessionTask:(id)a3;
- (id)dataTaskWithRequest:(id)a3 delegate:(id)a4;
- (int)_PIDFromAuditTokenData:(id)a3;
- (unint64_t)httpArchiveBufferSize;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 didSendBodyData:(int64_t)a5 totalBytesSent:(int64_t)a6 totalBytesExpectedToSend:(int64_t)a7;
- (void)URLSession:(id)a3 task:(id)a4 needNewBodyStream:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7;
- (void)_appendResponseData:(id)a3 forSessionTask:(id)a4;
- (void)_insertEventIntoDatabase:(id)a3 delegate:(id)a4;
- (void)_listenForLowMemoryWarning;
- (void)_logAPSResultsWithTask:(id)a3;
- (void)_logCacheHitForTask:(id)a3 metrics:(id)a4;
- (void)_removeDelegateForTask:(id)a3;
- (void)_removeRecordResponseDataForSessionTask:(id)a3;
- (void)_removeResponseDataForSessionTask:(id)a3;
- (void)_setAPSTopicWithTask:(id)a3;
- (void)_setDelegate:(id)a3 forTask:(id)a4;
- (void)_setRequestData:(id)a3 forSessionTask:(id)a4;
- (void)_setSendTimingData:(id)a3 forSessionTask:(id)a4;
- (void)_setTaskMetrics:(id)a3 forSessionTask:(id)a4;
- (void)dealloc;
- (void)flushHTTPArchiveBuffer;
- (void)setHttpArchiveBufferSize:(unint64_t)a3;
@end

@implementation SSURLSessionManager

- (SSURLSessionManager)init
{
  v41.receiver = self;
  v41.super_class = SSURLSessionManager;
  v2 = [(SSURLSessionManager *)&v41 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.StoreServices.SessionManager.eventqueue", 0);
    eventQueue = v2->_eventQueue;
    v2->_eventQueue = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    sendTimingDataMap = v2->_sendTimingDataMap;
    v2->_sendTimingDataMap = v5;

    v7 = MEMORY[0x1E69E96A8];
    v8 = dispatch_queue_create("com.apple.StoreServices.SessionManager.sendTimingData", MEMORY[0x1E69E96A8]);
    sendTimingDataQueue = v2->_sendTimingDataQueue;
    v2->_sendTimingDataQueue = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    sessions = v2->_sessions;
    v2->_sessions = v10;

    v12 = dispatch_queue_create("com.apple.StoreServices.SessionManager.sessions", v7);
    sessionsQueue = v2->_sessionsQueue;
    v2->_sessionsQueue = v12;

    v14 = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    taskDelegates = v2->_taskDelegates;
    v2->_taskDelegates = v14;

    v16 = dispatch_queue_create("com.apple.StoreServices.SessionManager.taskDelegates", v7);
    taskDelegatesQueue = v2->_taskDelegatesQueue;
    v2->_taskDelegatesQueue = v16;

    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    taskMetrics = v2->_taskMetrics;
    v2->_taskMetrics = v18;

    v20 = dispatch_queue_create("com.apple.StoreServices.SessionManager.taskMetrics", v7);
    taskMetricsQueue = v2->_taskMetricsQueue;
    v2->_taskMetricsQueue = v20;

    if (SSIsInternalBuild())
    {
      v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
      requestData = v2->_requestData;
      v2->_requestData = v22;

      v24 = dispatch_queue_create("com.apple.StoreServices.SessionManager.requestData", v7);
      requestDataQueue = v2->_requestDataQueue;
      v2->_requestDataQueue = v24;

      v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
      responseData = v2->_responseData;
      v2->_responseData = v26;

      v28 = dispatch_queue_create("com.apple.StoreServices.SessionManager.responseData", v7);
      responseDataQueue = v2->_responseDataQueue;
      v2->_responseDataQueue = v28;

      v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
      recordResponseMap = v2->_recordResponseMap;
      v2->_recordResponseMap = v30;

      v32 = dispatch_queue_create("com.apple.StoreServices.SessionManager.recordResponse", v7);
      recordResponseQueue = v2->_recordResponseQueue;
      v2->_recordResponseQueue = v32;
    }

    if ([objc_opt_class() _shouldCollectNetworkLogs])
    {
      [(SSURLSessionManager *)v2 _listenForLowMemoryWarning];
      v34 = [[SSCircularBuffer alloc] initWithMaxSize:400];
      httpArchiveBuffer = v2->_httpArchiveBuffer;
      v2->_httpArchiveBuffer = v34;

      v36 = [MEMORY[0x1E696AAE8] mainBundle];
      v37 = [v36 bundleIdentifier];
      v38 = [v37 isEqualToString:@"com.apple.AppStore"];

      if (v38)
      {
        [(SSCircularBuffer *)v2->_httpArchiveBuffer setMaxSize:2000];
      }

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _SSHTTPArchiveShouldSaveToDisk, @"SSHTTPArchiveShouldSaveToDiskNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _SSHTTPArchiveShouldSaveToDiskDecompressed, @"SSHTTPArchiveShouldSaveToDiskDecompressedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }
  }

  return v2;
}

- (void)dealloc
{
  if ([objc_opt_class() _shouldCollectNetworkLogs])
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"SSHTTPArchiveShouldSaveToDiskNotification", 0);
  }

  v4 = [(SSURLSessionManager *)self sessionsQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__SSURLSessionManager_dealloc__block_invoke;
  block[3] = &unk_1E84AC050;
  block[4] = self;
  dispatch_barrier_sync(v4, block);

  v5 = [(SSURLSessionManager *)self taskDelegatesQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __30__SSURLSessionManager_dealloc__block_invoke_2;
  v8[3] = &unk_1E84AC050;
  v8[4] = self;
  dispatch_barrier_sync(v5, v8);

  memoryPressureSource = self->_memoryPressureSource;
  if (memoryPressureSource)
  {
    dispatch_source_cancel(memoryPressureSource);
  }

  v7.receiver = self;
  v7.super_class = SSURLSessionManager;
  [(SSURLSessionManager *)&v7 dealloc];
}

void __30__SSURLSessionManager_dealloc__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [*(a1 + 32) sessions];
  v3 = [v2 allKeys];

  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = [*(a1 + 32) sessions];
        v10 = [v9 objectForKeyedSubscript:v8];

        [v10 invalidateAndCancel];
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11 = [*(a1 + 32) sessions];
  [v11 removeAllObjects];
}

void __30__SSURLSessionManager_dealloc__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) taskDelegates];
  [v1 removeAllObjects];
}

- (unint64_t)httpArchiveBufferSize
{
  v3 = [(SSURLSessionManager *)self httpArchiveBuffer];
  if (v3)
  {
    v4 = [(SSURLSessionManager *)self httpArchiveBuffer];
    v5 = [v4 maxSize];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setHttpArchiveBufferSize:(unint64_t)a3
{
  v4 = [(SSURLSessionManager *)self httpArchiveBuffer];
  [v4 setMaxSize:a3];
}

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[SSURLSessionManager sharedManager];
  }

  v3 = sharedManager___sessionManager;

  return v3;
}

void __36__SSURLSessionManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(SSURLSessionManager);
  v1 = sharedManager___sessionManager;
  sharedManager___sessionManager = v0;
}

- (id)dataTaskWithRequest:(id)a3 delegate:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  HIBYTE(v26) = 0;
  v8 = [(SSURLSessionManager *)self _sessionWithDelegate:v7 collectTimingData:&v26 + 7];
  v9 = [v8 dataTaskWithRequest:v6];
  if (!v9)
  {
    v11 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v11)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    v12 = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v13 = v12 | 2;
    }

    else
    {
      v13 = v12;
    }

    v14 = [v11 OSLogObject];
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v13 &= 2u;
    }

    if (v13)
    {
      v15 = objc_opt_class();
      v16 = v15;
      v17 = [v6 URL];
      v27 = 138412546;
      v28 = v15;
      v29 = 2112;
      v30 = v17;
      LODWORD(v26) = 22;
      v18 = _os_log_send_and_compose_impl();

      if (!v18)
      {
LABEL_15:

        goto LABEL_16;
      }

      v14 = [MEMORY[0x1E696AEC0] stringWithCString:v18 encoding:{4, &v27, v26}];
      free(v18);
      SSFileLog(v11, @"%@", v19, v20, v21, v22, v23, v24, v14);
    }

    goto LABEL_15;
  }

  [(SSURLSessionManager *)self _setDelegate:v7 forTask:v9];
  v10 = [v6 HTTPBody];
  [(SSURLSessionManager *)self _setRequestData:v10 forSessionTask:v9];

  [(SSURLSessionManager *)self _setAPSTopicWithTask:v9];
  if (HIBYTE(v26) == 1)
  {
    [(SSURLSessionManager *)self _setSendTimingData:MEMORY[0x1E695E118] forSessionTask:v9];
  }

LABEL_16:

  return v9;
}

+ (id)eventFromTimingData:(id)a3 delegate:(id)a4 session:(id)a5 task:(id)a6 error:(id)a7
{
  v76 = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (![a3 count])
  {
    v27 = 0;
    goto LABEL_39;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v12 requestProperties], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "clientIdentifier"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "length"), v17, v16, v18))
  {
    v19 = [v12 requestProperties];
    v20 = [v19 clientIdentifier];

    if (!v20)
    {
      v21 = [MEMORY[0x1E696AAE8] mainBundle];
      v20 = [v21 bundleIdentifier];
    }

    v22 = [objc_alloc(MEMORY[0x1E698CAC8]) initWithBundleIdentifier:v20];
  }

  else
  {
    v22 = 0;
  }

  v23 = [objc_opt_class() sharedManager];
  v24 = [v23 _taskMetricsForSessionTask:v14];

  v25 = [objc_alloc(MEMORY[0x1E698CA28]) initWithTask:v14 metrics:v24];
  [v25 setError:v15];
  [v25 setProcessInfo:v22];
  v62 = v15;
  v63 = v14;
  v60 = v24;
  v61 = v22;
  if (objc_opt_respondsToSelector())
  {
    v26 = [v12 rawResponseData];
    [v25 setResponseBody:v26];
  }

  else
  {
    [v25 setResponseBody:0];
  }

  v64 = v13;
  [v25 setSession:v13];
  v59 = v25;
  v28 = [objc_alloc(MEMORY[0x1E698CA30]) initWithContext:v25];
  v29 = [a1 _bagPerformanceValuesWithDelegate:v12];
  v30 = [v29 objectForKeyedSubscript:@"sessionDuration"];
  [v30 doubleValue];
  [v28 setXpSessionDuration:?];

  v31 = [v29 objectForKeyedSubscript:@"samplingPercentageCachedResponses"];
  [v31 doubleValue];
  [v28 setXpSamplingPercentageCachedResponses:?];

  v58 = v29;
  v32 = [v29 objectForKeyedSubscript:@"samplingPercentageUsers"];
  [v32 doubleValue];
  [v28 setXpSamplingPercentageUsers:?];

  if (+[SSMetricsLoadURLEvent shouldLogTimingMetrics])
  {
    [v28 setXpSamplingForced:1];
    [v28 setXpSamplingPercentageCachedResponses:1.0];
    [v28 setXpSamplingPercentageUsers:1.0];
    v33 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v33)
    {
      v33 = +[SSLogConfig sharedConfig];
    }

    v34 = [v33 shouldLog];
    if ([v33 shouldLogToDisk])
    {
      v35 = v34 | 2;
    }

    else
    {
      v35 = v34;
    }

    v36 = [v33 OSLogObject];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = v35;
    }

    else
    {
      v37 = v35 & 2;
    }

    if (v37)
    {
      v74 = 138412290;
      v75 = v28;
      LODWORD(v57) = 12;
      v56 = &v74;
      v38 = _os_log_send_and_compose_impl();

      if (!v38)
      {
LABEL_25:

        goto LABEL_26;
      }

      v36 = [MEMORY[0x1E696AEC0] stringWithCString:v38 encoding:{4, &v74, v57}];
      free(v38);
      SSFileLog(v33, @"%@", v39, v40, v41, v42, v43, v44, v36);
    }

    goto LABEL_25;
  }

LABEL_26:
  if (objc_opt_respondsToSelector())
  {
    v45 = [v12 requestProperties];
    v46 = [v45 additionalMetrics];
  }

  else
  {
    v46 = 0;
  }

  v65 = v12;
  if ([v46 count])
  {
    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 3221225472;
    v70[2] = __71__SSURLSessionManager_eventFromTimingData_delegate_session_task_error___block_invoke;
    v70[3] = &unk_1E84B2A00;
    v71 = v28;
    v72 = a1;
    [v46 enumerateKeysAndObjectsUsingBlock:v70];
  }

  v27 = objc_alloc_init(SSMetricsLoadURLEvent);
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v47 = [v28 underlyingDictionary];
  v48 = [v47 countByEnumeratingWithState:&v66 objects:v73 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v67;
    do
    {
      for (i = 0; i != v49; ++i)
      {
        if (*v67 != v50)
        {
          objc_enumerationMutation(v47);
        }

        v52 = *(*(&v66 + 1) + 8 * i);
        v53 = [v28 underlyingDictionary];
        v54 = [v53 objectForKeyedSubscript:v52];

        [(SSMetricsMutableEvent *)v27 setProperty:v54 forBodyKey:v52];
      }

      v49 = [v47 countByEnumeratingWithState:&v66 objects:v73 count:16];
    }

    while (v49);
  }

  v13 = v64;
  v12 = v65;
  v15 = v62;
  v14 = v63;
LABEL_39:

  return v27;
}

void __71__SSURLSessionManager_eventFromTimingData_delegate_session_task_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) propertyForBodyKey:v5];

  if (v7)
  {
    v8 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = v9 | 2;
    }

    else
    {
      v10 = v9;
    }

    v11 = [v8 OSLogObject];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v10 &= 2u;
    }

    if (v10)
    {
      *v22 = 138543874;
      *&v22[4] = objc_opt_class();
      *&v22[12] = 2114;
      *&v22[14] = v5;
      *&v22[22] = 2112;
      v23 = v6;
      v12 = *&v22[4];
      LODWORD(v21) = 32;
      v20 = v22;
      v13 = _os_log_send_and_compose_impl();

      if (!v13)
      {
LABEL_13:

        goto LABEL_14;
      }

      v11 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, v22, v21, *v22, *&v22[16], v23}];
      free(v13);
      SSFileLog(v8, @"%@", v14, v15, v16, v17, v18, v19, v11);
    }

    goto LABEL_13;
  }

LABEL_14:
  [*(a1 + 32) setProperty:v6 forBodyKey:{v5, v20}];
}

- (void)flushHTTPArchiveBuffer
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [(SSURLSessionManager *)self httpArchiveBuffer];
  v4 = [v3 count];

  v5 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = v7;
  }

  else
  {
    v9 = v7 & 2;
  }

  if (!v9)
  {
    goto LABEL_12;
  }

  v20 = 134217984;
  v21 = v4;
  LODWORD(v19) = 12;
  v10 = _os_log_send_and_compose_impl();

  if (v10)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v20, v19}];
    free(v10);
    SSFileLog(v5, @"%@", v11, v12, v13, v14, v15, v16, v8);
LABEL_12:
  }

  v17 = [(SSURLSessionManager *)self httpArchiveBuffer];
  v18 = [v17 flush];
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if ([(SSURLSessionManager *)self _shouldRecordResponseBodyForDataTask:v8])
  {
    [(SSURLSessionManager *)self _appendResponseData:v9 forSessionTask:v8];
  }

  v10 = [(SSURLSessionManager *)self _delegateForTask:v8];
  if (objc_opt_respondsToSelector())
  {
    [v10 URLSession:v11 dataTask:v8 didReceiveData:v9];
  }
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6
{
  v14 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(SSURLSessionManager *)self _delegateForTask:v10];
  if (objc_opt_respondsToSelector())
  {
    [v13 URLSession:v14 dataTask:v10 didReceiveResponse:v11 completionHandler:v12];
  }
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v16 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(SSURLSessionManager *)self _delegateForTask:v8];
  v11 = [v8 _timingData];
  if (v11 && [(SSURLSessionManager *)self _sendTimingDataForSessionTask:v8])
  {
    v12 = [objc_opt_class() eventFromTimingData:v11 delegate:v10 session:v16 task:v8 error:v9];
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([v10 metricsLoadURLSamplingPercentageCachedResponses], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
    {
      v14 = [v10 metricsLoadURLSamplingPercentageCachedResponses];
      [v14 doubleValue];
      v15 = [SSMetricsLoadURLEvent shouldReportCachedEventWithSamplingPercentage:?];
    }

    else
    {
      v15 = +[SSMetricsLoadURLEvent shouldReportCachedEvent];
    }

    if (![v12 connectionReused] || v15)
    {
      [(SSURLSessionManager *)self _insertEventIntoDatabase:v12 delegate:v10];
    }
  }

  else
  {
    v12 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    [v10 URLSession:v16 task:v8 didCompleteWithEvent:v12 error:v9];
  }

  [(SSURLSessionManager *)self _removeDelegateForTask:v8];
  [(SSURLSessionManager *)self _setSendTimingData:0 forSessionTask:v8];
  [(SSURLSessionManager *)self _setTaskMetrics:0 forSessionTask:v8];
}

- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5
{
  v21 = a3;
  v8 = a4;
  v9 = a5;
  [(SSURLSessionManager *)self _setTaskMetrics:v9 forSessionTask:v8];
  if (SSIsInternalBuild())
  {
    v10 = [(SSURLSessionManager *)self _requestDataForSessionTask:v8];
    v11 = [(SSURLSessionManager *)self _responseDataForSessionTask:v8];
    v12 = [(SSURLSessionManager *)self _delegateForTask:v8];
    if (objc_opt_respondsToSelector())
    {
      v13 = [v12 URLSession:v21 task:v8 decodedDataForResponseData:v11];

      v11 = v13;
    }

    if (SSDebugShouldDisableNetworkLogging())
    {
      goto LABEL_15;
    }

    v14 = [(SSURLSessionManager *)self httpArchiveBuffer];
    v15 = [v14 maxSize];

    if (!v15)
    {
      goto LABEL_15;
    }

    v16 = [[SSHTTPArchive alloc] initWithTaskMetrics:v9 requestData:v10 responseData:v11];
    if (objc_opt_respondsToSelector())
    {
      [v12 URLSession:v21 task:v8 didFinishCreatingHTTPArchive:v16];
    }

    v17 = [v8 response];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v8 response];
      v19 = [SSVCookieStorage responseHasSetCookies:v18];

      if (!v19)
      {
LABEL_12:
        if ([objc_opt_class() _shouldCollectNetworkLogs])
        {
          v20 = [(SSURLSessionManager *)self httpArchiveBuffer];
          [v20 addObject:v16];
        }

LABEL_15:
        [(SSURLSessionManager *)self _removeResponseDataForSessionTask:v8];
        [(SSURLSessionManager *)self _setRequestData:0 forSessionTask:v8];
        [(SSURLSessionManager *)self _removeRecordResponseDataForSessionTask:v8];

        goto LABEL_16;
      }

      v17 = +[SSLogConfig sharedAccountsAuthenticationConfig];
      [(SSHTTPArchive *)v16 writeToDiskWithLogConfig:v17 compressed:0 error:0];
    }

    goto LABEL_12;
  }

LABEL_16:
  [(SSURLSessionManager *)self _logAPSResultsWithTask:v8];
  [(SSURLSessionManager *)self _logCacheHitForTask:v8 metrics:v9];
}

- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6
{
  v14 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(SSURLSessionManager *)self _delegateForTask:v10];
  if (objc_opt_respondsToSelector())
  {
    [v13 URLSession:v14 task:v10 didReceiveChallenge:v11 completionHandler:v12];
  }

  else
  {
    v12[2](v12, 1, 0);
  }
}

- (void)URLSession:(id)a3 task:(id)a4 didSendBodyData:(int64_t)a5 totalBytesSent:(int64_t)a6 totalBytesExpectedToSend:(int64_t)a7
{
  v14 = a3;
  v12 = a4;
  v13 = [(SSURLSessionManager *)self _delegateForTask:v12];
  if (objc_opt_respondsToSelector())
  {
    [v13 URLSession:v14 task:v12 didSendBodyData:a5 totalBytesSent:a6 totalBytesExpectedToSend:a7];
  }
}

- (void)URLSession:(id)a3 task:(id)a4 needNewBodyStream:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(SSURLSessionManager *)self _delegateForTask:v8];
  if (objc_opt_respondsToSelector())
  {
    [v10 URLSession:v11 task:v8 needNewBodyStream:v9];
  }
}

- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7
{
  v17 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [(SSURLSessionManager *)self _delegateForTask:v12];
  if (objc_opt_respondsToSelector())
  {
    [v16 URLSession:v17 task:v12 willPerformHTTPRedirection:v13 newRequest:v14 completionHandler:v15];
  }
}

+ (id)_legacyBagValueForKey:(id)a3
{
  v3 = a3;
  v4 = [SSURLBagContext contextWithBagType:0];
  if (SSIsDaemon())
  {
    v5 = SSViTunesStoreFramework();
    v6 = [SSVWeakLinkedClassForString(&cfstr_Isurlbagcache.isa v5)];
    v7 = [v6 URLBagForContext:v4];

    [v7 valueForKey:v3];
  }

  else
  {
    v7 = [SSURLBag URLBagForContext:v4];
    [v7 valueForKey:v3 error:0];
  }
  v8 = ;

  return v8;
}

- (id)_delegateForTask:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__65;
  v16 = __Block_byref_object_dispose__65;
  v17 = 0;
  v5 = [(SSURLSessionManager *)self taskDelegatesQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__SSURLSessionManager__delegateForTask___block_invoke;
  block[3] = &unk_1E84ABF90;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __40__SSURLSessionManager__delegateForTask___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) taskDelegates];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

+ (id)_DNSServerIPAddresses
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = malloc_type_calloc(1uLL, 0x228uLL, 0x10B2040E67E7BACuLL);
  if (!res_9_ninit(v3))
  {
    v4 = malloc_type_malloc(v3->nscount << 7, 0x1000040AE2C30F4uLL);
    res_9_getservers(v3, v4, v3->nscount);
    if (v3->nscount)
    {
      v5 = 0;
      v6 = &v4->__space[4];
      while (1)
      {
        v7 = *(v6 - 3);
        if (v7 == 30)
        {
          break;
        }

        if (v7 == 2)
        {
          v8 = 2;
          v9 = v6;
          v10 = 16;
          goto LABEL_8;
        }

LABEL_10:
        ++v5;
        v6 += 128;
        if (v5 >= v3->nscount)
        {
          goto LABEL_11;
        }
      }

      v9 = v6 + 4;
      v8 = 30;
      v10 = 46;
LABEL_8:
      inet_ntop(v8, v9, v15, v10);
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v15];
      if (v11)
      {
        [v2 addObject:v11];
      }

      goto LABEL_10;
    }

LABEL_11:
    free(v4);
  }

  res_9_ndestroy(v3);
  free(v3);
  if ([v2 count])
  {
    v12 = v2;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  return v12;
}

+ (unint64_t)_messageSizeFromTask:(id)a3 isRequest:(BOOL)a4 delegate:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = a5;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  if (v6)
  {
    v9 = [v7 originalRequest];
    if (v9)
    {
LABEL_3:
      v10 = [v9 allHTTPHeaderFields];
      v11 = [v9 HTTPBody];
      v12 = [v11 length];

      v13 = [v9 HTTPMethod];
      v14 = [v13 length];
      v33[3] += v14 + 1;

      v15 = [v9 URL];
      v16 = [v15 path];
      v17 = [v16 length];
      v33[3] += v17;

      v18 = [v9 URL];
      v19 = [v18 query];

      if (v19)
      {
        v20 = [v9 URL];
        v21 = [v20 query];
        v22 = [v21 length];
        v33[3] += v22 + 2;
      }

      v33[3] += 10;
      goto LABEL_22;
    }

    getISURLOperationClass();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 activeURLRequest];
      if (!v9)
      {
        goto LABEL_25;
      }

      goto LABEL_3;
    }

LABEL_19:
    v9 = 0;
    goto LABEL_25;
  }

  v9 = [v7 response];
  if (!v9)
  {
    getISURLOperationClass();
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_19;
    }

    v9 = [v8 response];
    if (!v9)
    {
      goto LABEL_25;
    }
  }

  v10 = [v9 allHeaderFields];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v8 rawResponseData], v23 = objc_claimAutoreleasedReturnValue(), (v24 = v23) != 0))
  {
    v12 = [v23 length];
  }

  else
  {
    v12 = [v9 expectedContentLength];
    v24 = 0;
  }

  [v9 _CFURLResponse];
  HTTPResponse = CFURLResponseGetHTTPResponse();
  v26 = CFHTTPMessageCopyResponseStatusLine(HTTPResponse);
  v27 = v26;
  if (v26)
  {
    v28 = [(__CFString *)v26 length];
    v33[3] += v28 + 2;
    CFRelease(v27);
  }

  else
  {
    v33[3] += 15;
  }

LABEL_22:
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __63__SSURLSessionManager__messageSizeFromTask_isRequest_delegate___block_invoke;
  v31[3] = &unk_1E84B2A28;
  v31[4] = &v32;
  [v10 enumerateKeysAndObjectsUsingBlock:v31];
  v29 = v12 + 2;
  if (!v12)
  {
    v29 = 0;
  }

  v9 = (v33[3] + v29 + 2);
  v33[3] = v9;

LABEL_25:
  _Block_object_dispose(&v32, 8);

  return v9;
}

void __63__SSURLSessionManager__messageSizeFromTask_isRequest_delegate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) += [a2 length];
  v6 = [v5 length];

  *(*(*(a1 + 32) + 8) + 24) += v6;
  *(*(*(a1 + 32) + 8) + 24) += 4;
}

- (void)_logCacheHitForTask:(id)a3 metrics:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (_logCacheHitForTask_metrics__onceToken != -1)
  {
    [SSURLSessionManager _logCacheHitForTask:metrics:];
  }

  if ([_logCacheHitForTask_metrics__cacheConfig debugLogsEnabled])
  {
    v8 = [v7 transactionMetrics];
    v9 = [v8 lastObject];

    v10 = [v9 response];
    objc_opt_class();
    v11 = SSSafeCast(v10);
    if ([v11 statusCode] >= 200 && objc_msgSend(v11, "statusCode") <= 299)
    {
      v12 = [v9 resourceFetchType];
      v13 = @"NO";
      if (v12 == 3)
      {
        v13 = @"YES";
      }

      v29 = v13;
      v14 = [v11 allHeaderFields];
      v28 = [v14 objectForKeyedSubscript:@"Cache-Control"];

      v15 = [(SSURLSessionManager *)self _delegateForTask:v6];
      v16 = _logCacheHitForTask_metrics__cacheConfig;
      if (!v16)
      {
        v16 = +[SSLogConfig sharedConfig];
      }

      v17 = [v16 shouldLog];
      if ([v16 shouldLogToDisk])
      {
        v17 |= 2u;
      }

      v18 = [v16 OSLogObject];
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v17 &= 2u;
      }

      if (v17)
      {
        [v10 URL];
        v31 = v30 = 138413058;
        v32 = 2112;
        v33 = v15;
        v34 = 2112;
        v35 = v28;
        v36 = 2112;
        v37 = v29;
        LODWORD(v27) = 42;
        v19 = _os_log_send_and_compose_impl();

        if (v19)
        {
          v20 = [MEMORY[0x1E696AEC0] stringWithCString:v19 encoding:{4, &v30, v27}];
          free(v19);
          SSFileLog(v16, @"%@", v21, v22, v23, v24, v25, v26, v20);
        }
      }

      else
      {
      }
    }
  }
}

void __51__SSURLSessionManager__logCacheHitForTask_metrics___block_invoke()
{
  v2 = objc_alloc_init(SSMutableLogConfig);
  [(SSLogConfig *)v2 setSubsystem:@"com.apple.StoreServices"];
  [(SSLogConfig *)v2 setCategory:@"urlcache"];
  [(SSLogConfig *)v2 setEnvironment:2];
  v0 = [(SSMutableLogConfig *)v2 copy];
  v1 = _logCacheHitForTask_metrics__cacheConfig;
  _logCacheHitForTask_metrics__cacheConfig = v0;
}

- (int)_PIDFromAuditTokenData:(id)a3
{
  if (a3)
  {
    return *(CFDataGetBytePtr(a3) + 5);
  }

  else
  {
    return 0;
  }
}

- (void)_removeDelegateForTask:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_initWeak(&location, self);
    v5 = [(SSURLSessionManager *)self taskDelegatesQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__SSURLSessionManager__removeDelegateForTask___block_invoke;
    block[3] = &unk_1E84AD870;
    objc_copyWeak(&v8, &location);
    v7 = v4;
    dispatch_barrier_async(v5, block);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __46__SSURLSessionManager__removeDelegateForTask___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained taskDelegates];
  [v2 removeObjectForKey:*(a1 + 32)];
}

+ (id)_responseDateFromTask:(id)a3 delegate:(id)a4
{
  v5 = a4;
  v6 = [a3 response];
  if (!v6)
  {
    getISURLOperationClass();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 response];
    }

    else
    {
      v6 = 0;
    }
  }

  v7 = [v6 allHeaderFields];
  v8 = [v7 objectForKey:@"Date"];

  return v8;
}

- (BOOL)_sendTimingDataForSessionTask:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__65;
  v15 = __Block_byref_object_dispose__65;
  v16 = 0;
  v5 = [(SSURLSessionManager *)self sendTimingDataQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__SSURLSessionManager__sendTimingDataForSessionTask___block_invoke;
  block[3] = &unk_1E84ABF90;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  v9 = v6;
  dispatch_sync(v5, block);

  LOBYTE(v4) = [v12[5] BOOLValue];
  _Block_object_dispose(&v11, 8);

  return v4;
}

void __53__SSURLSessionManager__sendTimingDataForSessionTask___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) sendTimingDataMap];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_sessionWithDelegate:(id)a3 collectTimingData:(BOOL *)a4
{
  v6 = a3;
  v7 = [(SSURLSessionManager *)self _shouldEnableTLSSessionForDelegate:v6];
  if (objc_opt_respondsToSelector())
  {
    v8 = [v6 metricsLoadURLSessionDuration];
  }

  else
  {
    v8 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = [v6 metricsLoadURLSamplingPercentage];
    v10 = v9;
    if (v8 && v9)
    {
      [v8 doubleValue];
      v12 = v11;
      [v10 doubleValue];
      v14 = [SSMetricsLoadURLEvent shouldCollectTimingDataWithSessionDuration:v12 samplingPercentage:v13];
      goto LABEL_10;
    }
  }

  else
  {
    v10 = 0;
  }

  v14 = [SSMetricsLoadURLEvent shouldCollectTimingDataWithSessionDelegate:v6];
LABEL_10:
  v15 = v14;
  v16 = [(SSURLSessionManager *)self _sessionIDWithDelegate:v6 collectTimingData:v14 allowsTLSSessionTickets:v7];
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__65;
  v35 = __Block_byref_object_dispose__65;
  v36 = 0;
  v17 = [(SSURLSessionManager *)self sessionsQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__SSURLSessionManager__sessionWithDelegate_collectTimingData___block_invoke;
  block[3] = &unk_1E84ABF90;
  v30 = &v31;
  block[4] = self;
  v18 = v16;
  v29 = v18;
  dispatch_sync(v17, block);

  if (!v32[5])
  {
    v19 = [(SSURLSessionManager *)self sessionsQueue];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __62__SSURLSessionManager__sessionWithDelegate_collectTimingData___block_invoke_2;
    v22[3] = &unk_1E84B2A50;
    v25 = &v31;
    v22[4] = self;
    v23 = v18;
    v24 = v6;
    v26 = v15;
    v27 = v7;
    dispatch_barrier_sync(v19, v22);
  }

  if (a4)
  {
    *a4 = v15;
  }

  v20 = v32[5];

  _Block_object_dispose(&v31, 8);

  return v20;
}

void __62__SSURLSessionManager__sessionWithDelegate_collectTimingData___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) sessions];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __62__SSURLSessionManager__sessionWithDelegate_collectTimingData___block_invoke_2(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) sessions];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v6 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
    }

    v9 = [v6 OSLogObject];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v10 = objc_opt_class();
      v11 = *(a1 + 40);
      *v29 = 138412546;
      *&v29[4] = v10;
      *&v29[12] = 2112;
      *&v29[14] = v11;
      v12 = v10;
      LODWORD(v28) = 22;
      v13 = _os_log_send_and_compose_impl();

      if (!v13)
      {
LABEL_13:

        v20 = objc_opt_new();
        [v20 setMaxConcurrentOperationCount:5];
        v21 = MEMORY[0x1E696AF78];
        v22 = [*(a1 + 32) _sessionConfigurationWithDelegate:*(a1 + 48) collectTimingData:*(a1 + 64) allowsTLSSessionTickets:*(a1 + 65)];
        v23 = [v21 sessionWithConfiguration:v22 delegate:*(a1 + 32) delegateQueue:v20];
        v24 = *(*(a1 + 56) + 8);
        v25 = *(v24 + 40);
        *(v24 + 40) = v23;

        v26 = *(*(*(a1 + 56) + 8) + 40);
        v27 = [*(a1 + 32) sessions];
        [v27 setObject:v26 forKeyedSubscript:*(a1 + 40)];

        return;
      }

      v9 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, v29, v28, *v29, *&v29[16]}];
      free(v13);
      SSFileLog(v6, @"%@", v14, v15, v16, v17, v18, v19, v9);
    }

    goto LABEL_13;
  }
}

- (id)_sessionIDWithDelegate:(id)a3 collectTimingData:(BOOL)a4 allowsTLSSessionTickets:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = [MEMORY[0x1E696AD60] stringWithString:@"com.apple.itunesstore"];
  if (objc_opt_respondsToSelector())
  {
    v10 = [v8 sourceAppBundleID];
    v11 = [v10 length];

    if (v11)
    {
      v12 = [v8 sourceAppBundleID];
      [v9 appendFormat:@".client-%@", v12];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v13 = [v8 sourceAppAuditTokenData];

    if (v13)
    {
      v14 = [v8 sourceAppAuditTokenData];
      [v9 appendFormat:@".auditToken-%d-%ld", -[SSURLSessionManager _PIDFromAuditTokenData:](self, "_PIDFromAuditTokenData:", v14), objc_msgSend(v14, "hash")];
    }
  }

  if ([(SSURLSessionManager *)self _shouldSetCookiesForDelegate:v8])
  {
    [v9 appendString:@".setcookies"];
  }

  if (v6)
  {
    [v9 appendString:@".collecttimingdata"];
  }

  if ([(SSURLSessionManager *)self _shouldRequireCelluarForDelegate:v8])
  {
    v15 = @".requirescellular";
  }

  else
  {
    if ([(SSURLSessionManager *)self _shouldDisableCellularForDelegate:v8])
    {
      goto LABEL_16;
    }

    v15 = @".allowscellular";
  }

  [v9 appendString:v15];
LABEL_16:
  v16 = [(SSURLSessionManager *)self _URLCacheIDForDelegate:v8];
  if ([v16 length])
  {
    [v9 appendFormat:@".cache-%@", v16];
  }

  if (v5)
  {
    [v9 appendString:@".allowstls"];
  }

  return v9;
}

- (id)_sessionConfigurationWithDelegate:(id)a3 collectTimingData:(BOOL)a4 allowsTLSSessionTickets:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = [MEMORY[0x1E696AF80] defaultSessionConfiguration];
  if ([(SSURLSessionManager *)self _shouldRequireCelluarForDelegate:v8])
  {
    [v9 set_CTDataConnectionServiceType:*MEMORY[0x1E6965270]];
    v10 = 1;
  }

  else
  {
    v10 = [(SSURLSessionManager *)self _shouldDisableCellularForDelegate:v8]^ 1;
  }

  [v9 setAllowsCellularAccess:v10];
  [v9 set_allowsTLSSessionTickets:v5];
  [v9 setHTTPShouldSetCookies:{-[SSURLSessionManager _shouldSetCookiesForDelegate:](self, "_shouldSetCookiesForDelegate:", v8)}];
  [v9 setHTTPShouldUsePipelining:1];
  if (v6)
  {
    [v9 set_timingDataOptions:7];
  }

  if (objc_opt_respondsToSelector())
  {
    v11 = [v8 sourceAppBundleID];
    v12 = [v11 length];

    if (v12)
    {
      v13 = [v8 sourceAppBundleID];
      [v9 set_sourceApplicationBundleIdentifier:v13];

      [v9 set_infersDiscretionaryFromOriginatingClient:1];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v14 = [v8 sourceAppAuditTokenData];

    if (v14)
    {
      v15 = [v8 sourceAppAuditTokenData];
      [v9 set_sourceApplicationAuditTokenData:v15];

      [v9 set_infersDiscretionaryFromOriginatingClient:1];
    }
  }

  v16 = [(SSURLSessionManager *)self _URLCacheForDelegate:v8];
  if (v16 || [objc_opt_class() _shouldCreateLocalCache] && (v16 = objc_msgSend(objc_alloc(MEMORY[0x1E696AF18]), "initWithMemoryCapacity:diskCapacity:diskPath:", 0, 20971520, @"StoreServices")) != 0)
  {
    v17 = v16;
    [v9 setURLCache:v16];
  }

  if ([(NSArray *)self->_customURLProtocols count])
  {
    v18 = [(NSArray *)self->_customURLProtocols mutableCopy];
    v19 = [v18 count];
    if (v19 - 1 >= 0)
    {
      v20 = v19;
      do
      {
        if (([objc_msgSend(v18 objectAtIndexedSubscript:{--v20), "isSubclassOfClass:", objc_opt_class()}] & 1) == 0)
        {
          [v18 removeObjectAtIndex:v20];
        }
      }

      while (v20 > 0);
    }

    v21 = [v9 protocolClasses];
    [v18 addObjectsFromArray:v21];

    v22 = [v18 copy];
    [v9 setProtocolClasses:v22];
  }

  return v9;
}

- (void)_setDelegate:(id)a3 forTask:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    objc_initWeak(&location, self);
    v9 = [(SSURLSessionManager *)self taskDelegatesQueue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __44__SSURLSessionManager__setDelegate_forTask___block_invoke;
    v10[3] = &unk_1E84AE328;
    objc_copyWeak(&v13, &location);
    v11 = v6;
    v12 = v8;
    dispatch_barrier_async(v9, v10);

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __44__SSURLSessionManager__setDelegate_forTask___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained taskDelegates];
  [v2 setObject:*(a1 + 32) forKey:*(a1 + 40)];
}

- (void)_setSendTimingData:(id)a3 forSessionTask:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(SSURLSessionManager *)self sendTimingDataQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__SSURLSessionManager__setSendTimingData_forSessionTask___block_invoke;
  v11[3] = &unk_1E84AE328;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_barrier_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __57__SSURLSessionManager__setSendTimingData_forSessionTask___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = *(a1 + 32);
  v6 = WeakRetained;
  v4 = [WeakRetained sendTimingDataMap];
  v5 = v4;
  if (v3)
  {
    [v4 setObject:v3 forKeyedSubscript:*(a1 + 40)];
  }

  else
  {
    [v4 removeObjectForKey:*(a1 + 40)];
  }
}

- (void)_setTaskMetrics:(id)a3 forSessionTask:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(SSURLSessionManager *)self taskMetricsQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__SSURLSessionManager__setTaskMetrics_forSessionTask___block_invoke;
  v11[3] = &unk_1E84AE328;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_barrier_sync(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __54__SSURLSessionManager__setTaskMetrics_forSessionTask___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = *(a1 + 32);
  v6 = WeakRetained;
  v4 = [WeakRetained taskMetrics];
  v5 = v4;
  if (v3)
  {
    [v4 setObject:*(a1 + 32) forKey:*(a1 + 40)];
  }

  else
  {
    [v4 removeObjectForKey:*(a1 + 40)];
  }
}

+ (BOOL)_shouldCreateLocalCache
{
  v2 = [MEMORY[0x1E696AF18] sharedURLCache];
  v3 = [v2 diskCapacity] == 0;

  return v3;
}

- (BOOL)_shouldDisableCellularForDelegate:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 shouldDisableCellular];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_shouldRequireCelluarForDelegate:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 shouldRequireCellular];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_shouldEnableTLSSessionForDelegate:(id)a3
{
  v3 = a3;
  CFPreferencesAppSynchronize(@"com.apple.itunesstored");
  v4 = CFPreferencesCopyAppValue(@"TLSLastSampleDate", @"com.apple.itunesstored");
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"TLSLastSampleResult", @"com.apple.itunesstored", 0);
  v6 = [objc_opt_class() bagValueForKey:@"TLSSamplingPercentage" delegate:v3 type:3];
  [v6 doubleValue];
  v8 = v7;

  v9 = [objc_opt_class() bagValueForKey:@"TLSSamplingSessionDuration" delegate:v3 type:3];

  [v9 doubleValue];
  v11 = v10;

  v12 = [MEMORY[0x1E695DF00] date];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v13 = AppBooleanValue != 0, [v4 dateByAddingTimeInterval:v11 / 1000.0], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v12, "compare:", v14), v14, v15 != -1))
  {
    [objc_opt_class() _randomDouble];
    if (v16 == 0.0)
    {
      v13 = 0;
    }

    else
    {
      v17 = v16;
      CFPreferencesSetAppValue(@"TLSLastSampleDate", v12, @"com.apple.itunesstored");
      v13 = v17 <= v8;
      v18 = MEMORY[0x1E695E4D0];
      if (v17 > v8)
      {
        v18 = MEMORY[0x1E695E4C0];
      }

      CFPreferencesSetAppValue(@"TLSLastSampleResult", *v18, @"com.apple.itunesstored");
    }
  }

  return v13;
}

- (BOOL)_shouldSetCookiesForDelegate:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 shouldSetCookies];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_taskMetricsForSessionTask:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__65;
  v18 = __Block_byref_object_dispose__65;
  v19 = 0;
  objc_initWeak(&location, self);
  v5 = [(SSURLSessionManager *)self taskMetricsQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__SSURLSessionManager__taskMetricsForSessionTask___block_invoke;
  v9[3] = &unk_1E84B2A78;
  objc_copyWeak(&v12, &location);
  v10 = v4;
  v11 = &v14;
  v6 = v4;
  dispatch_sync(v5, v9);

  v7 = v15[5];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v14, 8);

  return v7;
}

void __50__SSURLSessionManager__taskMetricsForSessionTask___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained taskMetrics];
  v3 = [v2 objectForKey:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

+ (id)_tidStateForTask:(id)a3 delegate:(id)a4
{
  v5 = a4;
  v6 = [a3 originalRequest];
  if (v6)
  {
    v7 = v6;
LABEL_3:
    v8 = [v7 allHTTPHeaderFields];
    v9 = [v8 objectForKey:@"X-Apple-TID-State"];

    goto LABEL_9;
  }

  getISURLOperationClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 activeURLRequest];
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

- (id)_URLCacheForDelegate:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector() & 1) != 0 && ([v3 URLCacheID], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "length"), v4, v5) && (objc_opt_respondsToSelector())
  {
    v6 = [v3 URLCache];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_URLCacheIDForDelegate:(id)a3
{
  v3 = a3;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_5;
  }

  v4 = [v3 URLCache];

  if (!v4)
  {
    goto LABEL_6;
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 URLCacheID];
  }

  else
  {
LABEL_5:
    v4 = 0;
  }

LABEL_6:

  return v4;
}

- (void)_appendResponseData:(id)a3 forSessionTask:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([objc_opt_class() _shouldCollectNetworkLogs])
  {
    v8 = [v6 copy];
    objc_initWeak(&location, self);
    v9 = [(SSURLSessionManager *)self responseDataQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __58__SSURLSessionManager__appendResponseData_forSessionTask___block_invoke;
    v11[3] = &unk_1E84AE328;
    objc_copyWeak(&v14, &location);
    v12 = v7;
    v13 = v8;
    v10 = v8;
    dispatch_barrier_async(v9, v11);

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __58__SSURLSessionManager__appendResponseData_forSessionTask___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained responseData];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 32)];

  if (!v3)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF88]);
    v4 = [WeakRetained responseData];
    [v4 setObject:v3 forKeyedSubscript:*(a1 + 32)];
  }

  [v3 appendData:*(a1 + 40)];
}

+ (BOOL)_fetchedFromCache:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 sharedManager];
  v6 = [v5 _taskMetricsForSessionTask:v4];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = [v6 transactionMetrics];
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        if ([*(*(&v12 + 1) + 8 * i) resourceFetchType] == 3)
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

+ (id)_fetchNetworkQualityReports
{
  v3 = +[SSNetworkQualityInquiry sharedInstance];
  v4 = [v3 investigateNetworks];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__SSURLSessionManager__fetchNetworkQualityReports__block_invoke;
  v7[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v7[4] = a1;
  [v4 addErrorBlock:v7];
  v5 = [v4 resultWithTimeout:0 error:10.0];

  return v5;
}

void __50__SSURLSessionManager__fetchNetworkQualityReports__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

  *v16 = 138412546;
  *&v16[4] = objc_opt_class();
  *&v16[12] = 2112;
  *&v16[14] = v2;
  v7 = *&v16[4];
  LODWORD(v15) = 22;
  v8 = _os_log_send_and_compose_impl();

  if (v8)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, v16, v15, *v16, *&v16[16], v17}];
    free(v8);
    SSFileLog(v3, @"%@", v9, v10, v11, v12, v13, v14, v6);
LABEL_11:
  }
}

- (void)_listenForLowMemoryWarning
{
  v3 = dispatch_source_create(MEMORY[0x1E69E96E8], 0, 3uLL, 0);
  memoryPressureSource = self->_memoryPressureSource;
  self->_memoryPressureSource = v3;

  if (self->_memoryPressureSource)
  {
    objc_initWeak(&location, self);
    v5 = self->_memoryPressureSource;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __49__SSURLSessionManager__listenForLowMemoryWarning__block_invoke;
    handler[3] = &unk_1E84AD870;
    objc_copyWeak(&v7, &location);
    handler[4] = self;
    dispatch_source_set_event_handler(v5, handler);
    dispatch_resume(self->_memoryPressureSource);
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __49__SSURLSessionManager__listenForLowMemoryWarning__block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = dispatch_source_get_data(*(v3 + 8));
  v5 = *(*(a1 + 32) + 16);
  if (v4 == v5)
  {
    goto LABEL_31;
  }

  if (v5 == 1)
  {
    v25 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v25)
    {
      v25 = +[SSLogConfig sharedConfig];
    }

    v26 = [v25 shouldLog];
    if ([v25 shouldLogToDisk])
    {
      v27 = v26 | 2;
    }

    else
    {
      v27 = v26;
    }

    v28 = [v25 OSLogObject];
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v27 &= 2u;
    }

    if (v27)
    {
      *v38 = 138412290;
      *&v38[4] = objc_opt_class();
      v29 = *&v38[4];
      LODWORD(v37) = 12;
      v30 = _os_log_send_and_compose_impl();

      if (!v30)
      {
LABEL_28:

        v12 = [WeakRetained httpArchiveBuffer];
        [v12 setMaxSize:*(*(a1 + 32) + 24)];
LABEL_30:

        goto LABEL_31;
      }

      v28 = [MEMORY[0x1E696AEC0] stringWithCString:v30 encoding:{4, v38, v37, *v38, *&v38[8]}];
      free(v30);
      SSFileLog(v25, @"%@", v31, v32, v33, v34, v35, v36, v28);
    }

    goto LABEL_28;
  }

  if (v5 == 2)
  {
    v6 = [WeakRetained httpArchiveBuffer];
    *(*(a1 + 32) + 24) = [v6 maxSize];

    v7 = [WeakRetained httpArchiveBuffer];
    v8 = [v7 count];

    if (v8 >= 0x28)
    {
      v9 = 20;
    }

    else
    {
      v9 = v8 >> 1;
    }

    v10 = [WeakRetained httpArchiveBuffer];
    [v10 setMaxSize:v9];

    v11 = [WeakRetained httpArchiveBuffer];
    [v11 setMaxSize:20];

    v12 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v12)
    {
      v12 = +[SSLogConfig sharedConfig];
    }

    v13 = [v12 shouldLog];
    if ([v12 shouldLogToDisk])
    {
      v14 = v13 | 2;
    }

    else
    {
      v14 = v13;
    }

    v15 = [v12 OSLogObject];
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v14 &= 2u;
    }

    if (v14)
    {
      *v38 = 138412546;
      *&v38[4] = objc_opt_class();
      *&v38[12] = 2048;
      *&v38[14] = v8 - v9;
      v16 = *&v38[4];
      LODWORD(v37) = 22;
      v17 = _os_log_send_and_compose_impl();

      if (v17)
      {
        v18 = [MEMORY[0x1E696AEC0] stringWithCString:v17 encoding:{4, v38, v37, *v38, *&v38[16], v39}];
        free(v17);
        SSFileLog(v12, @"%@", v19, v20, v21, v22, v23, v24, v18);
      }
    }

    else
    {
    }

    goto LABEL_30;
  }

LABEL_31:
}

+ (double)_randomDouble
{
  if (_randomDouble_onceToken == -1)
  {
  }

  else
  {
    +[SSURLSessionManager _randomDouble];
  }

  return drand48();
}

void __36__SSURLSessionManager__randomDouble__block_invoke()
{
  v0 = arc4random();

  srand48(v0);
}

- (void)_removeRecordResponseDataForSessionTask:(id)a3
{
  v4 = a3;
  if ([objc_opt_class() _shouldCollectNetworkLogs])
  {
    objc_initWeak(&location, self);
    v5 = [(SSURLSessionManager *)self recordResponseQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__SSURLSessionManager__removeRecordResponseDataForSessionTask___block_invoke;
    block[3] = &unk_1E84AD870;
    objc_copyWeak(&v8, &location);
    v7 = v4;
    dispatch_barrier_async(v5, block);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __63__SSURLSessionManager__removeRecordResponseDataForSessionTask___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained recordResponseMap];
  [v2 removeObjectForKey:*(a1 + 32)];
}

- (void)_removeResponseDataForSessionTask:(id)a3
{
  v4 = a3;
  if ([objc_opt_class() _shouldCollectNetworkLogs])
  {
    objc_initWeak(&location, self);
    v5 = [(SSURLSessionManager *)self responseDataQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__SSURLSessionManager__removeResponseDataForSessionTask___block_invoke;
    block[3] = &unk_1E84AD870;
    objc_copyWeak(&v8, &location);
    v7 = v4;
    dispatch_barrier_async(v5, block);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __57__SSURLSessionManager__removeResponseDataForSessionTask___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained responseData];
  [v2 removeObjectForKey:*(a1 + 32)];
}

- (id)_requestDataForSessionTask:(id)a3
{
  v4 = a3;
  if ([objc_opt_class() _shouldCollectNetworkLogs])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__65;
    v15 = __Block_byref_object_dispose__65;
    v16 = 0;
    v5 = [(SSURLSessionManager *)self requestDataQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__SSURLSessionManager__requestDataForSessionTask___block_invoke;
    block[3] = &unk_1E84ABF90;
    v10 = &v11;
    block[4] = self;
    v9 = v4;
    dispatch_sync(v5, block);

    v6 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __50__SSURLSessionManager__requestDataForSessionTask___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) requestData];
  v2 = [v6 objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v2 copy];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)_responseDataForSessionTask:(id)a3
{
  v4 = a3;
  if ([objc_opt_class() _shouldCollectNetworkLogs])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__65;
    v15 = __Block_byref_object_dispose__65;
    v16 = 0;
    v5 = [(SSURLSessionManager *)self responseDataQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__SSURLSessionManager__responseDataForSessionTask___block_invoke;
    block[3] = &unk_1E84ABF90;
    v10 = &v11;
    block[4] = self;
    v9 = v4;
    dispatch_sync(v5, block);

    v6 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __51__SSURLSessionManager__responseDataForSessionTask___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) responseData];
  v2 = [v6 objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v2 copy];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)_saveHTTPArchiveBufferToDiskDecompressed:(BOOL)a3
{
  v3 = a3;
  v35 = *MEMORY[0x1E69E9840];
  if (![objc_opt_class() _shouldCollectNetworkLogs])
  {
    v24 = 0;
    goto LABEL_25;
  }

  v5 = [(SSURLSessionManager *)self httpArchiveBuffer];
  v6 = [v5 allObjects];

  if ([v6 count])
  {
    v7 = [SSHTTPArchive merge:v6 withEstimatedFileSizeLimit:4000];

    v8 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = v9 | 2;
    }

    else
    {
      v10 = v9;
    }

    v11 = [v8 OSLogObject];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v10 &= 2u;
    }

    if (v10)
    {
      v33 = 134217984;
      v34 = [v7 count];
      LODWORD(v27) = 12;
      v26 = &v33;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
LABEL_14:

        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v6 = v7;
        v19 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v29;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v29 != v21)
              {
                objc_enumerationMutation(v6);
              }

              [*(*(&v28 + 1) + 8 * i) writeToDiskWithLogConfig:0 compressed:!v3 error:{0, v26}];
            }

            v20 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
          }

          while (v20);
        }

        v23 = dispatch_get_global_queue(-32768, 0);
        dispatch_async(v23, &__block_literal_global_166);

        v24 = [SSHTTPArchive outputDirectoryForLogConfig:0];
        goto LABEL_24;
      }

      v11 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:{4, &v33, v27}];
      free(v12);
      SSFileLog(v8, @"%@", v13, v14, v15, v16, v17, v18, v11);
    }

    goto LABEL_14;
  }

  v24 = 0;
LABEL_24:

LABEL_25:

  return v24;
}

void __64__SSURLSessionManager__saveHTTPArchiveBufferToDiskDecompressed___block_invoke()
{
  v0 = [MEMORY[0x1E695DF00] date];
  v1 = [v0 dateByAddingTimeInterval:-2419200.0];

  [SSHTTPArchive removeLogsWithLogConfig:0 olderThanDate:v1];
}

- (void)_setRequestData:(id)a3 forSessionTask:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([objc_opt_class() _shouldCollectNetworkLogs])
  {
    v8 = [v6 copy];
    objc_initWeak(&location, self);
    v9 = [(SSURLSessionManager *)self requestDataQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __54__SSURLSessionManager__setRequestData_forSessionTask___block_invoke;
    v11[3] = &unk_1E84AE328;
    objc_copyWeak(&v14, &location);
    v12 = v8;
    v13 = v7;
    v10 = v8;
    dispatch_barrier_async(v9, v11);

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __54__SSURLSessionManager__setRequestData_forSessionTask___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = *(a1 + 32);
  v6 = WeakRetained;
  v4 = [WeakRetained requestData];
  v5 = v4;
  if (v3)
  {
    [v4 setObject:v3 forKeyedSubscript:*(a1 + 40)];
  }

  else
  {
    [v4 removeObjectForKey:*(a1 + 40)];
  }
}

+ (BOOL)_shouldCollectNetworkLogs
{
  if (_shouldCollectNetworkLogs_onceToken != -1)
  {
    +[SSURLSessionManager _shouldCollectNetworkLogs];
  }

  return (_shouldCollectNetworkLogs_shouldCollectLogs & 1) == 0;
}

void __48__SSURLSessionManager__shouldCollectNetworkLogs__block_invoke()
{
  if ((SSIsInternalBuild() & 1) != 0 && !SSDebugShouldDisableNetworkLogging())
  {
    v0 = +[SSLogConfig sharedConfig];
    v4 = [v0 outputDirectory];

    v1 = [MEMORY[0x1E696AC08] defaultManager];
    v2 = [v1 fileExistsAtPath:v4];

    if ((v2 & 1) == 0)
    {
      v3 = [MEMORY[0x1E696AC08] defaultManager];
      [v3 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:0];
    }

    if (!SSFileIsLocalWritable(v4))
    {
      _shouldCollectNetworkLogs_shouldCollectLogs = 1;
    }
  }

  else
  {
    _shouldCollectNetworkLogs_shouldCollectLogs = 1;
  }
}

- (BOOL)_shouldRecordResponseBodyForDataTask:(id)a3
{
  v4 = a3;
  if ([objc_opt_class() _shouldCollectNetworkLogs])
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__65;
    v26 = __Block_byref_object_dispose__65;
    v27 = 0;
    v5 = [(SSURLSessionManager *)self recordResponseQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__SSURLSessionManager__shouldRecordResponseBodyForDataTask___block_invoke;
    block[3] = &unk_1E84ABF90;
    v21 = &v22;
    block[4] = self;
    v6 = v4;
    v20 = v6;
    dispatch_sync(v5, block);

    v7 = v23[5];
    if (v7)
    {
      v8 = [v7 BOOLValue];
    }

    else
    {
      v9 = [v6 response];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v11 = [v6 response];
        v12 = [v11 MIMEType];
        v13 = [v12 lowercaseString];

        if ([v13 containsString:@"image"])
        {
          v8 = 0;
        }

        else if ([v13 isEqualToString:@"application/json"] & 1) != 0 || (objc_msgSend(v13, "isEqualToString:", @"application/javascript") & 1) != 0 || (objc_msgSend(v13, "isEqualToString:", @"application/x-javascript") & 1) != 0 || (objc_msgSend(v13, "isEqualToString:", @"text/html") & 1) != 0 || (objc_msgSend(v13, "isEqualToString:", @"text/xml"))
        {
          v8 = 1;
        }

        else
        {
          v8 = [v13 isEqualToString:@"text/xml+itml"];
        }

        v14 = [(SSURLSessionManager *)self recordResponseQueue];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __60__SSURLSessionManager__shouldRecordResponseBodyForDataTask___block_invoke_2;
        v16[3] = &unk_1E84B2AC0;
        v16[4] = self;
        v17 = v6;
        v18 = v8;
        dispatch_barrier_sync(v14, v16);
      }

      else
      {
        v8 = 0;
      }
    }

    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __60__SSURLSessionManager__shouldRecordResponseBodyForDataTask___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) recordResponseMap];
  v2 = [v6 objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v2 copy];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __60__SSURLSessionManager__shouldRecordResponseBodyForDataTask___block_invoke_2(uint64_t a1)
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 48)];
  v2 = [*(a1 + 32) recordResponseMap];
  [v2 setObject:v3 forKeyedSubscript:*(a1 + 40)];
}

- (void)_logAPSResultsWithTask:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SSURLSessionManager *)self _taskMetricsForSessionTask:v4];
  v6 = [v5 transactionMetrics];
  v7 = [v6 lastObject];

  if ([v7 _apsRelayAttempted])
  {
    if ([v7 _apsRelaySucceeded])
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v29 = v8;
    if ([v7 _apsRelayAttempted])
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    v10 = v9;
    v11 = [v4 originalRequest];
    v12 = [v11 URL];
    v13 = [v12 absoluteString];

    v14 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v14)
    {
      v14 = +[SSLogConfig sharedConfig];
    }

    v15 = [v14 shouldLog];
    if ([v14 shouldLogToDisk])
    {
      v16 = v15 | 2;
    }

    else
    {
      v16 = v15;
    }

    v17 = [v14 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v16;
    }

    else
    {
      v18 = v16 & 2;
    }

    if (v18)
    {
      v30 = 138544130;
      v31 = objc_opt_class();
      v32 = 2114;
      v33 = v10;
      v34 = 2114;
      v35 = v29;
      v36 = 2112;
      v37 = v13;
      v19 = v31;
      LODWORD(v28) = 42;
      v20 = _os_log_send_and_compose_impl();

      if (v20)
      {
        v21 = [MEMORY[0x1E696AEC0] stringWithCString:v20 encoding:{4, &v30, v28}];
        free(v20);
        SSFileLog(v14, @"%@", v22, v23, v24, v25, v26, v27, v21);
      }
    }

    else
    {
    }
  }
}

- (void)_setAPSTopicWithTask:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(SSURLSessionManager *)self _shouldEnableAPSRWithTask:v4])
  {
    v5 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
    }

    v8 = [v5 OSLogObject];
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      LODWORD(v18) = 138543362;
      *(&v18 + 4) = objc_opt_class();
      v9 = *(&v18 + 4);
      LODWORD(v17) = 12;
      v10 = _os_log_send_and_compose_impl();

      if (!v10)
      {
LABEL_13:

        [v4 set_APSRelayTopic:@"com.apple.private.alloy.itunes.apsr"];
        goto LABEL_14;
      }

      v8 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v18, v17, v18}];
      free(v10);
      SSFileLog(v5, @"%@", v11, v12, v13, v14, v15, v16, v8);
    }

    goto LABEL_13;
  }

LABEL_14:
}

- (BOOL)_shouldEnableAPSRWithTask:(id)a3
{
  v33[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SSURLSessionManager *)self _delegateForTask:v4];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 requestProperties];
  }

  else
  {
    v6 = 0;
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && ([v5 isURLBagRequest] & 1) != 0 || (objc_msgSend(v6, "shouldDisableReversePush"))
  {
    goto LABEL_9;
  }

  v7 = [MEMORY[0x1E698C890] reversePushEnabled];
  if (v7 == 1)
  {
    goto LABEL_13;
  }

  if (v7 == 2)
  {
LABEL_9:
    LOBYTE(v8) = 0;
    goto LABEL_36;
  }

  if (([v6 shouldDisableReversePushSampling] & 1) != 0 || (objc_msgSend(objc_opt_class(), "_randomDouble"), v10 = v9, objc_msgSend(objc_opt_class(), "bagValueForKey:delegate:type:", @"aps-sampling-percentage", v5, 3), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "doubleValue"), v13 = v12, v11, LOBYTE(v8) = 0, v10 > 0.0) && v10 <= v13)
  {
LABEL_13:
    v14 = [v4 originalRequest];
    v15 = [v14 URL];

    if (!v15)
    {
      v16 = [v6 URL];
      if (v16)
      {
        v15 = v16;
      }

      else
      {
        v25 = [v6 URLBagKey];
        if (!v25)
        {
          goto LABEL_9;
        }

        v26 = v25;
        v15 = [objc_opt_class() bagValueForKey:v25 delegate:v5 type:6];

        if (!v15)
        {
          goto LABEL_9;
        }
      }
    }

    v17 = [v15 absoluteString];
    v18 = [objc_opt_class() bagValueForKey:@"aps-enabled-patterns" delegate:v5 type:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33[0] = v18;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v20 = 0;
        goto LABEL_22;
      }

      v19 = v18;
    }

    v20 = v19;
LABEL_22:
    if (![v20 count])
    {

      v20 = &unk_1F507A318;
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v21 = v20;
    v8 = [v21 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v8)
    {
      v27 = v15;
      v22 = *v29;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v29 != v22)
          {
            objc_enumerationMutation(v21);
          }

          if ([v17 rangeOfString:*(*(&v28 + 1) + 8 * i) options:1024] != 0x7FFFFFFFFFFFFFFFLL)
          {
            LOBYTE(v8) = 1;
            goto LABEL_34;
          }
        }

        v8 = [v21 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }

LABEL_34:
      v15 = v27;
    }
  }

LABEL_36:

  return v8;
}

+ (id)_bagPerformanceValuesWithDelegate:(id)a3
{
  v3 = [a1 _metricsDictionaryWithDelegate:a3];
  v4 = [v3 objectForKeyedSubscript:@"performance"];

  return v4;
}

+ (id)bagValueForKey:(id)a3 delegate:(id)a4 type:(unint64_t)a5
{
  v64 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v9 bag], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v13 = [a1 _legacyBagValueForKey:v8];
    v11 = 0;
    v14 = @"NO";
    goto LABEL_6;
  }

  v11 = v10;
  if (objc_opt_respondsToSelector())
  {
    v12 = [v9 isURLBagRequest];
  }

  else
  {
    v12 = 0;
  }

  v29 = [v11 profileConfig];
  v30 = [v29 bagKeys];
  v31 = [v30 containsObject:v8];

  v14 = @"YES";
  if ((v12 & 1) != 0 || !v31)
  {
    goto LABEL_7;
  }

  v13 = 0;
  if (a5 <= 2)
  {
    if (a5)
    {
      if (a5 == 1)
      {
        v56 = 0;
        v32 = &v56;
        v33 = [v11 BOOLForKey:v8 error:&v56];
      }

      else
      {
        if (a5 != 2)
        {
          goto LABEL_6;
        }

        v55 = 0;
        v32 = &v55;
        v33 = [v11 dictionaryForKey:v8 error:&v55];
      }
    }

    else
    {
      v57 = 0;
      v32 = &v57;
      v33 = [v11 arrayForKey:v8 error:&v57];
    }
  }

  else if (a5 > 4)
  {
    if (a5 == 5)
    {
      v52 = 0;
      v32 = &v52;
      v33 = [v11 stringForKey:v8 error:&v52];
    }

    else
    {
      if (a5 != 6)
      {
        goto LABEL_6;
      }

      v51 = 0;
      v32 = &v51;
      v33 = [v11 URLForKey:v8 error:&v51];
    }
  }

  else if (a5 == 3)
  {
    v54 = 0;
    v32 = &v54;
    v33 = [v11 doubleForKey:v8 error:&v54];
  }

  else
  {
    v53 = 0;
    v32 = &v53;
    v33 = [v11 integerForKey:v8 error:&v53];
  }

  v13 = v33;
  v34 = *v32;
  if (v34)
  {
    v35 = v34;
    v36 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v36)
    {
      v36 = +[SSLogConfig sharedConfig];
    }

    v37 = [v36 shouldLog];
    if ([v36 shouldLogToDisk])
    {
      v38 = v37 | 2;
    }

    else
    {
      v38 = v37;
    }

    v39 = [v36 OSLogObject];
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v38 &= 2u;
    }

    if (v38)
    {
      v40 = objc_opt_class();
      v58 = 138412802;
      v59 = v40;
      v60 = 2112;
      v61 = v8;
      v62 = 2112;
      v63 = v35;
      v41 = v40;
      LODWORD(v50) = 32;
      v49 = &v58;
      v42 = _os_log_send_and_compose_impl();

      if (!v42)
      {
LABEL_52:

        v14 = @"YES";
        goto LABEL_6;
      }

      v39 = [MEMORY[0x1E696AEC0] stringWithCString:v42 encoding:{4, &v58, v50}];
      free(v42);
      SSFileLog(v36, @"%@", v43, v44, v45, v46, v47, v48, v39);
    }

    goto LABEL_52;
  }

LABEL_6:
  if (v13)
  {
    goto LABEL_19;
  }

LABEL_7:
  v15 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v15)
  {
    v15 = +[SSLogConfig sharedConfig];
  }

  v16 = [v15 shouldLog];
  if ([v15 shouldLogToDisk])
  {
    v17 = v16 | 2;
  }

  else
  {
    v17 = v16;
  }

  v18 = [v15 OSLogObject];
  if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v17 &= 2u;
  }

  if (!v17)
  {
    goto LABEL_17;
  }

  v19 = objc_opt_class();
  v58 = 138543874;
  v59 = v19;
  v60 = 2114;
  v61 = v8;
  v62 = 2114;
  v63 = v14;
  v20 = v19;
  LODWORD(v50) = 32;
  v21 = _os_log_send_and_compose_impl();

  if (v21)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithCString:v21 encoding:{4, &v58, v50}];
    free(v21);
    SSFileLog(v15, @"%@", v22, v23, v24, v25, v26, v27, v18);
LABEL_17:
  }

  v13 = 0;
LABEL_19:

  return v13;
}

- (void)_insertEventIntoDatabase:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    objc_initWeak(&location, self);
    v8 = [(SSURLSessionManager *)self eventQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__SSURLSessionManager__insertEventIntoDatabase_delegate___block_invoke;
    block[3] = &unk_1E84B2AE8;
    objc_copyWeak(&v12, &location);
    block[4] = self;
    v10 = v7;
    v11 = v6;
    dispatch_async(v8, block);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __57__SSURLSessionManager__insertEventIntoDatabase_delegate___block_invoke(uint64_t a1)
{
  v2 = +[SSTransactionStore defaultStore];
  [v2 takeKeepAliveWithTransactionID:@"com.apple.storeservices.metricsEventTransactionIdentifier"];

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained metricsController];

  if (!v3)
  {
    v4 = objc_alloc_init(SSMetricsController);
    [WeakRetained setMetricsController:v4];

    v5 = [objc_opt_class() _metricsDictionaryWithDelegate:*(a1 + 40)];
    if (v5)
    {
      v6 = [[SSMetricsConfiguration alloc] initWithGlobalConfiguration:v5];
      v7 = [WeakRetained metricsController];
      [v7 setGlobalConfiguration:v6];
    }
  }

  v8 = [WeakRetained metricsController];
  v9 = [v8 configuration];
  v10 = [v9 reportingURLString];

  if (v10 && ([*(a1 + 48) requestURL], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "containsString:", v10), v11, (v12 & 1) == 0))
  {
    v13 = [WeakRetained metricsController];
    [v13 insertEvent:*(a1 + 48) withCompletionHandler:&__block_literal_global_214];
  }

  else
  {
    v13 = +[SSTransactionStore defaultStore];
    [v13 releaseKeepAliveWithTransactionID:@"com.apple.storeservices.metricsEventTransactionIdentifier"];
  }
}

void __57__SSURLSessionManager__insertEventIntoDatabase_delegate___block_invoke_2()
{
  v0 = +[SSTransactionStore defaultStore];
  [v0 releaseKeepAliveWithTransactionID:@"com.apple.storeservices.metricsEventTransactionIdentifier"];
}

+ (double)_localTimeIntervalToServerTimeInterval:(double)a3
{
  if (_localTimeIntervalToServerTimeInterval__onceToken != -1)
  {
    +[SSURLSessionManager _localTimeIntervalToServerTimeInterval:];
  }

  return *&_localTimeIntervalToServerTimeInterval__timeIntervalBetweenReferenceDates + a3;
}

void __62__SSURLSessionManager__localTimeIntervalToServerTimeInterval___block_invoke()
{
  v2 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:0.0];
  v0 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:0.0];
  [v2 timeIntervalSinceDate:v0];
  _localTimeIntervalToServerTimeInterval__timeIntervalBetweenReferenceDates = v1;
}

+ (id)_resolvedIPAddressFromTask:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = [a3 response];
  v4 = [v3 _CFURLResponse];

  if (v4 && (v5 = CFURLResponseCopyPeerAddress()) != 0)
  {
    v6 = v5;
    BytePtr = CFDataGetBytePtr(v5);
    v8 = *BytePtr;
    v9 = v12 - ((v8 + 15) & 0x1F0);
    inet_ntop(BytePtr[1], BytePtr + 4, v9, v8);
    v10 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:1];
    CFRelease(v6);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (double)_timingDataMetricToServerTimeInterval:(id)a3
{
  [a3 doubleValue];
  if (v4 == 0.0)
  {
    return 0.0;
  }

  [a1 _localTimeIntervalToServerTimeInterval:?];
  return result;
}

@end
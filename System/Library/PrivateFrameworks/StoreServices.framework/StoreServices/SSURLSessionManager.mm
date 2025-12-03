@interface SSURLSessionManager
+ (BOOL)_fetchedFromCache:(id)cache;
+ (BOOL)_shouldCollectNetworkLogs;
+ (BOOL)_shouldCreateLocalCache;
+ (double)_localTimeIntervalToServerTimeInterval:(double)interval;
+ (double)_randomDouble;
+ (double)_timingDataMetricToServerTimeInterval:(id)interval;
+ (id)_DNSServerIPAddresses;
+ (id)_bagPerformanceValuesWithDelegate:(id)delegate;
+ (id)_fetchNetworkQualityReports;
+ (id)_legacyBagValueForKey:(id)key;
+ (id)_resolvedIPAddressFromTask:(id)task;
+ (id)_responseDateFromTask:(id)task delegate:(id)delegate;
+ (id)_tidStateForTask:(id)task delegate:(id)delegate;
+ (id)bagValueForKey:(id)key delegate:(id)delegate type:(unint64_t)type;
+ (id)eventFromTimingData:(id)data delegate:(id)delegate session:(id)session task:(id)task error:(id)error;
+ (id)sharedManager;
+ (unint64_t)_messageSizeFromTask:(id)task isRequest:(BOOL)request delegate:(id)delegate;
- (BOOL)_sendTimingDataForSessionTask:(id)task;
- (BOOL)_shouldDisableCellularForDelegate:(id)delegate;
- (BOOL)_shouldEnableAPSRWithTask:(id)task;
- (BOOL)_shouldEnableTLSSessionForDelegate:(id)delegate;
- (BOOL)_shouldRecordResponseBodyForDataTask:(id)task;
- (BOOL)_shouldRequireCelluarForDelegate:(id)delegate;
- (BOOL)_shouldSetCookiesForDelegate:(id)delegate;
- (SSURLSessionManager)init;
- (id)_URLCacheForDelegate:(id)delegate;
- (id)_URLCacheIDForDelegate:(id)delegate;
- (id)_delegateForTask:(id)task;
- (id)_requestDataForSessionTask:(id)task;
- (id)_responseDataForSessionTask:(id)task;
- (id)_saveHTTPArchiveBufferToDiskDecompressed:(BOOL)decompressed;
- (id)_sessionConfigurationWithDelegate:(id)delegate collectTimingData:(BOOL)data allowsTLSSessionTickets:(BOOL)tickets;
- (id)_sessionIDWithDelegate:(id)delegate collectTimingData:(BOOL)data allowsTLSSessionTickets:(BOOL)tickets;
- (id)_sessionWithDelegate:(id)delegate collectTimingData:(BOOL *)data;
- (id)_taskMetricsForSessionTask:(id)task;
- (id)dataTaskWithRequest:(id)request delegate:(id)delegate;
- (int)_PIDFromAuditTokenData:(id)data;
- (unint64_t)httpArchiveBufferSize;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics;
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send;
- (void)URLSession:(id)session task:(id)task needNewBodyStream:(id)stream;
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
- (void)_appendResponseData:(id)data forSessionTask:(id)task;
- (void)_insertEventIntoDatabase:(id)database delegate:(id)delegate;
- (void)_listenForLowMemoryWarning;
- (void)_logAPSResultsWithTask:(id)task;
- (void)_logCacheHitForTask:(id)task metrics:(id)metrics;
- (void)_removeDelegateForTask:(id)task;
- (void)_removeRecordResponseDataForSessionTask:(id)task;
- (void)_removeResponseDataForSessionTask:(id)task;
- (void)_setAPSTopicWithTask:(id)task;
- (void)_setDelegate:(id)delegate forTask:(id)task;
- (void)_setRequestData:(id)data forSessionTask:(id)task;
- (void)_setSendTimingData:(id)data forSessionTask:(id)task;
- (void)_setTaskMetrics:(id)metrics forSessionTask:(id)task;
- (void)dealloc;
- (void)flushHTTPArchiveBuffer;
- (void)setHttpArchiveBufferSize:(unint64_t)size;
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

    weakToWeakObjectsMapTable = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    taskDelegates = v2->_taskDelegates;
    v2->_taskDelegates = weakToWeakObjectsMapTable;

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

      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      v38 = [bundleIdentifier isEqualToString:@"com.apple.AppStore"];

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

  sessionsQueue = [(SSURLSessionManager *)self sessionsQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__SSURLSessionManager_dealloc__block_invoke;
  block[3] = &unk_1E84AC050;
  block[4] = self;
  dispatch_barrier_sync(sessionsQueue, block);

  taskDelegatesQueue = [(SSURLSessionManager *)self taskDelegatesQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __30__SSURLSessionManager_dealloc__block_invoke_2;
  v8[3] = &unk_1E84AC050;
  v8[4] = self;
  dispatch_barrier_sync(taskDelegatesQueue, v8);

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
  httpArchiveBuffer = [(SSURLSessionManager *)self httpArchiveBuffer];
  if (httpArchiveBuffer)
  {
    httpArchiveBuffer2 = [(SSURLSessionManager *)self httpArchiveBuffer];
    maxSize = [httpArchiveBuffer2 maxSize];
  }

  else
  {
    maxSize = 0;
  }

  return maxSize;
}

- (void)setHttpArchiveBufferSize:(unint64_t)size
{
  httpArchiveBuffer = [(SSURLSessionManager *)self httpArchiveBuffer];
  [httpArchiveBuffer setMaxSize:size];
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

- (id)dataTaskWithRequest:(id)request delegate:(id)delegate
{
  v31 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  delegateCopy = delegate;
  HIBYTE(v26) = 0;
  v8 = [(SSURLSessionManager *)self _sessionWithDelegate:delegateCopy collectTimingData:&v26 + 7];
  v9 = [v8 dataTaskWithRequest:requestCopy];
  if (!v9)
  {
    v11 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v11)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v13 = shouldLog | 2;
    }

    else
    {
      v13 = shouldLog;
    }

    oSLogObject = [v11 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v13 &= 2u;
    }

    if (v13)
    {
      v15 = objc_opt_class();
      v16 = v15;
      v17 = [requestCopy URL];
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

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v18 encoding:{4, &v27, v26}];
      free(v18);
      SSFileLog(v11, @"%@", v19, v20, v21, v22, v23, v24, oSLogObject);
    }

    goto LABEL_15;
  }

  [(SSURLSessionManager *)self _setDelegate:delegateCopy forTask:v9];
  hTTPBody = [requestCopy HTTPBody];
  [(SSURLSessionManager *)self _setRequestData:hTTPBody forSessionTask:v9];

  [(SSURLSessionManager *)self _setAPSTopicWithTask:v9];
  if (HIBYTE(v26) == 1)
  {
    [(SSURLSessionManager *)self _setSendTimingData:MEMORY[0x1E695E118] forSessionTask:v9];
  }

LABEL_16:

  return v9;
}

+ (id)eventFromTimingData:(id)data delegate:(id)delegate session:(id)session task:(id)task error:(id)error
{
  v76 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  sessionCopy = session;
  taskCopy = task;
  errorCopy = error;
  if (![data count])
  {
    v27 = 0;
    goto LABEL_39;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && ([delegateCopy requestProperties], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "clientIdentifier"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "length"), v17, v16, v18))
  {
    requestProperties = [delegateCopy requestProperties];
    clientIdentifier = [requestProperties clientIdentifier];

    if (!clientIdentifier)
    {
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      clientIdentifier = [mainBundle bundleIdentifier];
    }

    v22 = [objc_alloc(MEMORY[0x1E698CAC8]) initWithBundleIdentifier:clientIdentifier];
  }

  else
  {
    v22 = 0;
  }

  sharedManager = [objc_opt_class() sharedManager];
  v24 = [sharedManager _taskMetricsForSessionTask:taskCopy];

  v25 = [objc_alloc(MEMORY[0x1E698CA28]) initWithTask:taskCopy metrics:v24];
  [v25 setError:errorCopy];
  [v25 setProcessInfo:v22];
  v62 = errorCopy;
  v63 = taskCopy;
  v60 = v24;
  v61 = v22;
  if (objc_opt_respondsToSelector())
  {
    rawResponseData = [delegateCopy rawResponseData];
    [v25 setResponseBody:rawResponseData];
  }

  else
  {
    [v25 setResponseBody:0];
  }

  v64 = sessionCopy;
  [v25 setSession:sessionCopy];
  v59 = v25;
  v28 = [objc_alloc(MEMORY[0x1E698CA30]) initWithContext:v25];
  v29 = [self _bagPerformanceValuesWithDelegate:delegateCopy];
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

    shouldLog = [v33 shouldLog];
    if ([v33 shouldLogToDisk])
    {
      v35 = shouldLog | 2;
    }

    else
    {
      v35 = shouldLog;
    }

    oSLogObject = [v33 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v38 encoding:{4, &v74, v57}];
      free(v38);
      SSFileLog(v33, @"%@", v39, v40, v41, v42, v43, v44, oSLogObject);
    }

    goto LABEL_25;
  }

LABEL_26:
  if (objc_opt_respondsToSelector())
  {
    requestProperties2 = [delegateCopy requestProperties];
    additionalMetrics = [requestProperties2 additionalMetrics];
  }

  else
  {
    additionalMetrics = 0;
  }

  v65 = delegateCopy;
  if ([additionalMetrics count])
  {
    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 3221225472;
    v70[2] = __71__SSURLSessionManager_eventFromTimingData_delegate_session_task_error___block_invoke;
    v70[3] = &unk_1E84B2A00;
    v71 = v28;
    selfCopy = self;
    [additionalMetrics enumerateKeysAndObjectsUsingBlock:v70];
  }

  v27 = objc_alloc_init(SSMetricsLoadURLEvent);
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  underlyingDictionary = [v28 underlyingDictionary];
  v48 = [underlyingDictionary countByEnumeratingWithState:&v66 objects:v73 count:16];
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
          objc_enumerationMutation(underlyingDictionary);
        }

        v52 = *(*(&v66 + 1) + 8 * i);
        underlyingDictionary2 = [v28 underlyingDictionary];
        v54 = [underlyingDictionary2 objectForKeyedSubscript:v52];

        [(SSMetricsMutableEvent *)v27 setProperty:v54 forBodyKey:v52];
      }

      v49 = [underlyingDictionary countByEnumeratingWithState:&v66 objects:v73 count:16];
    }

    while (v49);
  }

  sessionCopy = v64;
  delegateCopy = v65;
  errorCopy = v62;
  taskCopy = v63;
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
  httpArchiveBuffer = [(SSURLSessionManager *)self httpArchiveBuffer];
  v4 = [httpArchiveBuffer count];

  v5 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = shouldLog | 2;
  }

  else
  {
    v7 = shouldLog;
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
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
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v20, v19}];
    free(v10);
    SSFileLog(v5, @"%@", v11, v12, v13, v14, v15, v16, oSLogObject);
LABEL_12:
  }

  httpArchiveBuffer2 = [(SSURLSessionManager *)self httpArchiveBuffer];
  flush = [httpArchiveBuffer2 flush];
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  sessionCopy = session;
  taskCopy = task;
  dataCopy = data;
  if ([(SSURLSessionManager *)self _shouldRecordResponseBodyForDataTask:taskCopy])
  {
    [(SSURLSessionManager *)self _appendResponseData:dataCopy forSessionTask:taskCopy];
  }

  v10 = [(SSURLSessionManager *)self _delegateForTask:taskCopy];
  if (objc_opt_respondsToSelector())
  {
    [v10 URLSession:sessionCopy dataTask:taskCopy didReceiveData:dataCopy];
  }
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  sessionCopy = session;
  taskCopy = task;
  responseCopy = response;
  handlerCopy = handler;
  v13 = [(SSURLSessionManager *)self _delegateForTask:taskCopy];
  if (objc_opt_respondsToSelector())
  {
    [v13 URLSession:sessionCopy dataTask:taskCopy didReceiveResponse:responseCopy completionHandler:handlerCopy];
  }
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  sessionCopy = session;
  taskCopy = task;
  errorCopy = error;
  v10 = [(SSURLSessionManager *)self _delegateForTask:taskCopy];
  _timingData = [taskCopy _timingData];
  if (_timingData && [(SSURLSessionManager *)self _sendTimingDataForSessionTask:taskCopy])
  {
    v12 = [objc_opt_class() eventFromTimingData:_timingData delegate:v10 session:sessionCopy task:taskCopy error:errorCopy];
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([v10 metricsLoadURLSamplingPercentageCachedResponses], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
    {
      metricsLoadURLSamplingPercentageCachedResponses = [v10 metricsLoadURLSamplingPercentageCachedResponses];
      [metricsLoadURLSamplingPercentageCachedResponses doubleValue];
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
    [v10 URLSession:sessionCopy task:taskCopy didCompleteWithEvent:v12 error:errorCopy];
  }

  [(SSURLSessionManager *)self _removeDelegateForTask:taskCopy];
  [(SSURLSessionManager *)self _setSendTimingData:0 forSessionTask:taskCopy];
  [(SSURLSessionManager *)self _setTaskMetrics:0 forSessionTask:taskCopy];
}

- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics
{
  sessionCopy = session;
  taskCopy = task;
  metricsCopy = metrics;
  [(SSURLSessionManager *)self _setTaskMetrics:metricsCopy forSessionTask:taskCopy];
  if (SSIsInternalBuild())
  {
    v10 = [(SSURLSessionManager *)self _requestDataForSessionTask:taskCopy];
    v11 = [(SSURLSessionManager *)self _responseDataForSessionTask:taskCopy];
    v12 = [(SSURLSessionManager *)self _delegateForTask:taskCopy];
    if (objc_opt_respondsToSelector())
    {
      v13 = [v12 URLSession:sessionCopy task:taskCopy decodedDataForResponseData:v11];

      v11 = v13;
    }

    if (SSDebugShouldDisableNetworkLogging())
    {
      goto LABEL_15;
    }

    httpArchiveBuffer = [(SSURLSessionManager *)self httpArchiveBuffer];
    maxSize = [httpArchiveBuffer maxSize];

    if (!maxSize)
    {
      goto LABEL_15;
    }

    v16 = [[SSHTTPArchive alloc] initWithTaskMetrics:metricsCopy requestData:v10 responseData:v11];
    if (objc_opt_respondsToSelector())
    {
      [v12 URLSession:sessionCopy task:taskCopy didFinishCreatingHTTPArchive:v16];
    }

    response = [taskCopy response];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      response2 = [taskCopy response];
      v19 = [SSVCookieStorage responseHasSetCookies:response2];

      if (!v19)
      {
LABEL_12:
        if ([objc_opt_class() _shouldCollectNetworkLogs])
        {
          httpArchiveBuffer2 = [(SSURLSessionManager *)self httpArchiveBuffer];
          [httpArchiveBuffer2 addObject:v16];
        }

LABEL_15:
        [(SSURLSessionManager *)self _removeResponseDataForSessionTask:taskCopy];
        [(SSURLSessionManager *)self _setRequestData:0 forSessionTask:taskCopy];
        [(SSURLSessionManager *)self _removeRecordResponseDataForSessionTask:taskCopy];

        goto LABEL_16;
      }

      response = +[SSLogConfig sharedAccountsAuthenticationConfig];
      [(SSHTTPArchive *)v16 writeToDiskWithLogConfig:response compressed:0 error:0];
    }

    goto LABEL_12;
  }

LABEL_16:
  [(SSURLSessionManager *)self _logAPSResultsWithTask:taskCopy];
  [(SSURLSessionManager *)self _logCacheHitForTask:taskCopy metrics:metricsCopy];
}

- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  sessionCopy = session;
  taskCopy = task;
  challengeCopy = challenge;
  handlerCopy = handler;
  v13 = [(SSURLSessionManager *)self _delegateForTask:taskCopy];
  if (objc_opt_respondsToSelector())
  {
    [v13 URLSession:sessionCopy task:taskCopy didReceiveChallenge:challengeCopy completionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy, 1, 0);
  }
}

- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send
{
  sessionCopy = session;
  taskCopy = task;
  v13 = [(SSURLSessionManager *)self _delegateForTask:taskCopy];
  if (objc_opt_respondsToSelector())
  {
    [v13 URLSession:sessionCopy task:taskCopy didSendBodyData:data totalBytesSent:sent totalBytesExpectedToSend:send];
  }
}

- (void)URLSession:(id)session task:(id)task needNewBodyStream:(id)stream
{
  sessionCopy = session;
  taskCopy = task;
  streamCopy = stream;
  v10 = [(SSURLSessionManager *)self _delegateForTask:taskCopy];
  if (objc_opt_respondsToSelector())
  {
    [v10 URLSession:sessionCopy task:taskCopy needNewBodyStream:streamCopy];
  }
}

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  sessionCopy = session;
  taskCopy = task;
  redirectionCopy = redirection;
  requestCopy = request;
  handlerCopy = handler;
  v16 = [(SSURLSessionManager *)self _delegateForTask:taskCopy];
  if (objc_opt_respondsToSelector())
  {
    [v16 URLSession:sessionCopy task:taskCopy willPerformHTTPRedirection:redirectionCopy newRequest:requestCopy completionHandler:handlerCopy];
  }
}

+ (id)_legacyBagValueForKey:(id)key
{
  keyCopy = key;
  v4 = [SSURLBagContext contextWithBagType:0];
  if (SSIsDaemon())
  {
    v5 = SSViTunesStoreFramework();
    v6 = [SSVWeakLinkedClassForString(&cfstr_Isurlbagcache.isa v5)];
    v7 = [v6 URLBagForContext:v4];

    [v7 valueForKey:keyCopy];
  }

  else
  {
    v7 = [SSURLBag URLBagForContext:v4];
    [v7 valueForKey:keyCopy error:0];
  }
  v8 = ;

  return v8;
}

- (id)_delegateForTask:(id)task
{
  taskCopy = task;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__65;
  v16 = __Block_byref_object_dispose__65;
  v17 = 0;
  taskDelegatesQueue = [(SSURLSessionManager *)self taskDelegatesQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__SSURLSessionManager__delegateForTask___block_invoke;
  block[3] = &unk_1E84ABF90;
  v10 = taskCopy;
  v11 = &v12;
  block[4] = self;
  v6 = taskCopy;
  dispatch_sync(taskDelegatesQueue, block);

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

+ (unint64_t)_messageSizeFromTask:(id)task isRequest:(BOOL)request delegate:(id)delegate
{
  requestCopy = request;
  taskCopy = task;
  delegateCopy = delegate;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  if (requestCopy)
  {
    originalRequest = [taskCopy originalRequest];
    if (originalRequest)
    {
LABEL_3:
      allHTTPHeaderFields = [originalRequest allHTTPHeaderFields];
      hTTPBody = [originalRequest HTTPBody];
      expectedContentLength = [hTTPBody length];

      hTTPMethod = [originalRequest HTTPMethod];
      v14 = [hTTPMethod length];
      v33[3] += v14 + 1;

      v15 = [originalRequest URL];
      path = [v15 path];
      v17 = [path length];
      v33[3] += v17;

      v18 = [originalRequest URL];
      query = [v18 query];

      if (query)
      {
        v20 = [originalRequest URL];
        query2 = [v20 query];
        v22 = [query2 length];
        v33[3] += v22 + 2;
      }

      v33[3] += 10;
      goto LABEL_22;
    }

    getISURLOperationClass();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      originalRequest = [delegateCopy activeURLRequest];
      if (!originalRequest)
      {
        goto LABEL_25;
      }

      goto LABEL_3;
    }

LABEL_19:
    originalRequest = 0;
    goto LABEL_25;
  }

  originalRequest = [taskCopy response];
  if (!originalRequest)
  {
    getISURLOperationClass();
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_19;
    }

    originalRequest = [delegateCopy response];
    if (!originalRequest)
    {
      goto LABEL_25;
    }
  }

  allHTTPHeaderFields = [originalRequest allHeaderFields];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([delegateCopy rawResponseData], v23 = objc_claimAutoreleasedReturnValue(), (v24 = v23) != 0))
  {
    expectedContentLength = [v23 length];
  }

  else
  {
    expectedContentLength = [originalRequest expectedContentLength];
    v24 = 0;
  }

  [originalRequest _CFURLResponse];
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
  [allHTTPHeaderFields enumerateKeysAndObjectsUsingBlock:v31];
  v29 = expectedContentLength + 2;
  if (!expectedContentLength)
  {
    v29 = 0;
  }

  originalRequest = (v33[3] + v29 + 2);
  v33[3] = originalRequest;

LABEL_25:
  _Block_object_dispose(&v32, 8);

  return originalRequest;
}

void __63__SSURLSessionManager__messageSizeFromTask_isRequest_delegate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) += [a2 length];
  v6 = [v5 length];

  *(*(*(a1 + 32) + 8) + 24) += v6;
  *(*(*(a1 + 32) + 8) + 24) += 4;
}

- (void)_logCacheHitForTask:(id)task metrics:(id)metrics
{
  v38 = *MEMORY[0x1E69E9840];
  taskCopy = task;
  metricsCopy = metrics;
  if (_logCacheHitForTask_metrics__onceToken != -1)
  {
    [SSURLSessionManager _logCacheHitForTask:metrics:];
  }

  if ([_logCacheHitForTask_metrics__cacheConfig debugLogsEnabled])
  {
    transactionMetrics = [metricsCopy transactionMetrics];
    lastObject = [transactionMetrics lastObject];

    response = [lastObject response];
    objc_opt_class();
    v11 = SSSafeCast(response);
    if ([v11 statusCode] >= 200 && objc_msgSend(v11, "statusCode") <= 299)
    {
      resourceFetchType = [lastObject resourceFetchType];
      v13 = @"NO";
      if (resourceFetchType == 3)
      {
        v13 = @"YES";
      }

      v29 = v13;
      allHeaderFields = [v11 allHeaderFields];
      v28 = [allHeaderFields objectForKeyedSubscript:@"Cache-Control"];

      v15 = [(SSURLSessionManager *)self _delegateForTask:taskCopy];
      v16 = _logCacheHitForTask_metrics__cacheConfig;
      if (!v16)
      {
        v16 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v16 shouldLog];
      if ([v16 shouldLogToDisk])
      {
        shouldLog |= 2u;
      }

      oSLogObject = [v16 OSLogObject];
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
      {
        shouldLog &= 2u;
      }

      if (shouldLog)
      {
        [response URL];
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

- (int)_PIDFromAuditTokenData:(id)data
{
  if (data)
  {
    return *(CFDataGetBytePtr(data) + 5);
  }

  else
  {
    return 0;
  }
}

- (void)_removeDelegateForTask:(id)task
{
  taskCopy = task;
  if (taskCopy)
  {
    objc_initWeak(&location, self);
    taskDelegatesQueue = [(SSURLSessionManager *)self taskDelegatesQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__SSURLSessionManager__removeDelegateForTask___block_invoke;
    block[3] = &unk_1E84AD870;
    objc_copyWeak(&v8, &location);
    v7 = taskCopy;
    dispatch_barrier_async(taskDelegatesQueue, block);

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

+ (id)_responseDateFromTask:(id)task delegate:(id)delegate
{
  delegateCopy = delegate;
  response = [task response];
  if (!response)
  {
    getISURLOperationClass();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      response = [delegateCopy response];
    }

    else
    {
      response = 0;
    }
  }

  allHeaderFields = [response allHeaderFields];
  v8 = [allHeaderFields objectForKey:@"Date"];

  return v8;
}

- (BOOL)_sendTimingDataForSessionTask:(id)task
{
  taskCopy = task;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__65;
  v15 = __Block_byref_object_dispose__65;
  v16 = 0;
  sendTimingDataQueue = [(SSURLSessionManager *)self sendTimingDataQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__SSURLSessionManager__sendTimingDataForSessionTask___block_invoke;
  block[3] = &unk_1E84ABF90;
  v10 = &v11;
  block[4] = self;
  v6 = taskCopy;
  v9 = v6;
  dispatch_sync(sendTimingDataQueue, block);

  LOBYTE(taskCopy) = [v12[5] BOOLValue];
  _Block_object_dispose(&v11, 8);

  return taskCopy;
}

void __53__SSURLSessionManager__sendTimingDataForSessionTask___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) sendTimingDataMap];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_sessionWithDelegate:(id)delegate collectTimingData:(BOOL *)data
{
  delegateCopy = delegate;
  v7 = [(SSURLSessionManager *)self _shouldEnableTLSSessionForDelegate:delegateCopy];
  if (objc_opt_respondsToSelector())
  {
    metricsLoadURLSessionDuration = [delegateCopy metricsLoadURLSessionDuration];
  }

  else
  {
    metricsLoadURLSessionDuration = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    metricsLoadURLSamplingPercentage = [delegateCopy metricsLoadURLSamplingPercentage];
    v10 = metricsLoadURLSamplingPercentage;
    if (metricsLoadURLSessionDuration && metricsLoadURLSamplingPercentage)
    {
      [metricsLoadURLSessionDuration doubleValue];
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

  v14 = [SSMetricsLoadURLEvent shouldCollectTimingDataWithSessionDelegate:delegateCopy];
LABEL_10:
  v15 = v14;
  v16 = [(SSURLSessionManager *)self _sessionIDWithDelegate:delegateCopy collectTimingData:v14 allowsTLSSessionTickets:v7];
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__65;
  v35 = __Block_byref_object_dispose__65;
  v36 = 0;
  sessionsQueue = [(SSURLSessionManager *)self sessionsQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__SSURLSessionManager__sessionWithDelegate_collectTimingData___block_invoke;
  block[3] = &unk_1E84ABF90;
  v30 = &v31;
  block[4] = self;
  v18 = v16;
  v29 = v18;
  dispatch_sync(sessionsQueue, block);

  if (!v32[5])
  {
    sessionsQueue2 = [(SSURLSessionManager *)self sessionsQueue];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __62__SSURLSessionManager__sessionWithDelegate_collectTimingData___block_invoke_2;
    v22[3] = &unk_1E84B2A50;
    v25 = &v31;
    v22[4] = self;
    v23 = v18;
    v24 = delegateCopy;
    v26 = v15;
    v27 = v7;
    dispatch_barrier_sync(sessionsQueue2, v22);
  }

  if (data)
  {
    *data = v15;
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

- (id)_sessionIDWithDelegate:(id)delegate collectTimingData:(BOOL)data allowsTLSSessionTickets:(BOOL)tickets
{
  ticketsCopy = tickets;
  dataCopy = data;
  delegateCopy = delegate;
  v9 = [MEMORY[0x1E696AD60] stringWithString:@"com.apple.itunesstore"];
  if (objc_opt_respondsToSelector())
  {
    sourceAppBundleID = [delegateCopy sourceAppBundleID];
    v11 = [sourceAppBundleID length];

    if (v11)
    {
      sourceAppBundleID2 = [delegateCopy sourceAppBundleID];
      [v9 appendFormat:@".client-%@", sourceAppBundleID2];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    sourceAppAuditTokenData = [delegateCopy sourceAppAuditTokenData];

    if (sourceAppAuditTokenData)
    {
      sourceAppAuditTokenData2 = [delegateCopy sourceAppAuditTokenData];
      [v9 appendFormat:@".auditToken-%d-%ld", -[SSURLSessionManager _PIDFromAuditTokenData:](self, "_PIDFromAuditTokenData:", sourceAppAuditTokenData2), objc_msgSend(sourceAppAuditTokenData2, "hash")];
    }
  }

  if ([(SSURLSessionManager *)self _shouldSetCookiesForDelegate:delegateCopy])
  {
    [v9 appendString:@".setcookies"];
  }

  if (dataCopy)
  {
    [v9 appendString:@".collecttimingdata"];
  }

  if ([(SSURLSessionManager *)self _shouldRequireCelluarForDelegate:delegateCopy])
  {
    v15 = @".requirescellular";
  }

  else
  {
    if ([(SSURLSessionManager *)self _shouldDisableCellularForDelegate:delegateCopy])
    {
      goto LABEL_16;
    }

    v15 = @".allowscellular";
  }

  [v9 appendString:v15];
LABEL_16:
  v16 = [(SSURLSessionManager *)self _URLCacheIDForDelegate:delegateCopy];
  if ([v16 length])
  {
    [v9 appendFormat:@".cache-%@", v16];
  }

  if (ticketsCopy)
  {
    [v9 appendString:@".allowstls"];
  }

  return v9;
}

- (id)_sessionConfigurationWithDelegate:(id)delegate collectTimingData:(BOOL)data allowsTLSSessionTickets:(BOOL)tickets
{
  ticketsCopy = tickets;
  dataCopy = data;
  delegateCopy = delegate;
  defaultSessionConfiguration = [MEMORY[0x1E696AF80] defaultSessionConfiguration];
  if ([(SSURLSessionManager *)self _shouldRequireCelluarForDelegate:delegateCopy])
  {
    [defaultSessionConfiguration set_CTDataConnectionServiceType:*MEMORY[0x1E6965270]];
    v10 = 1;
  }

  else
  {
    v10 = [(SSURLSessionManager *)self _shouldDisableCellularForDelegate:delegateCopy]^ 1;
  }

  [defaultSessionConfiguration setAllowsCellularAccess:v10];
  [defaultSessionConfiguration set_allowsTLSSessionTickets:ticketsCopy];
  [defaultSessionConfiguration setHTTPShouldSetCookies:{-[SSURLSessionManager _shouldSetCookiesForDelegate:](self, "_shouldSetCookiesForDelegate:", delegateCopy)}];
  [defaultSessionConfiguration setHTTPShouldUsePipelining:1];
  if (dataCopy)
  {
    [defaultSessionConfiguration set_timingDataOptions:7];
  }

  if (objc_opt_respondsToSelector())
  {
    sourceAppBundleID = [delegateCopy sourceAppBundleID];
    v12 = [sourceAppBundleID length];

    if (v12)
    {
      sourceAppBundleID2 = [delegateCopy sourceAppBundleID];
      [defaultSessionConfiguration set_sourceApplicationBundleIdentifier:sourceAppBundleID2];

      [defaultSessionConfiguration set_infersDiscretionaryFromOriginatingClient:1];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    sourceAppAuditTokenData = [delegateCopy sourceAppAuditTokenData];

    if (sourceAppAuditTokenData)
    {
      sourceAppAuditTokenData2 = [delegateCopy sourceAppAuditTokenData];
      [defaultSessionConfiguration set_sourceApplicationAuditTokenData:sourceAppAuditTokenData2];

      [defaultSessionConfiguration set_infersDiscretionaryFromOriginatingClient:1];
    }
  }

  v16 = [(SSURLSessionManager *)self _URLCacheForDelegate:delegateCopy];
  if (v16 || [objc_opt_class() _shouldCreateLocalCache] && (v16 = objc_msgSend(objc_alloc(MEMORY[0x1E696AF18]), "initWithMemoryCapacity:diskCapacity:diskPath:", 0, 20971520, @"StoreServices")) != 0)
  {
    v17 = v16;
    [defaultSessionConfiguration setURLCache:v16];
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

    protocolClasses = [defaultSessionConfiguration protocolClasses];
    [v18 addObjectsFromArray:protocolClasses];

    v22 = [v18 copy];
    [defaultSessionConfiguration setProtocolClasses:v22];
  }

  return defaultSessionConfiguration;
}

- (void)_setDelegate:(id)delegate forTask:(id)task
{
  delegateCopy = delegate;
  taskCopy = task;
  v8 = taskCopy;
  if (delegateCopy && taskCopy)
  {
    objc_initWeak(&location, self);
    taskDelegatesQueue = [(SSURLSessionManager *)self taskDelegatesQueue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __44__SSURLSessionManager__setDelegate_forTask___block_invoke;
    v10[3] = &unk_1E84AE328;
    objc_copyWeak(&v13, &location);
    v11 = delegateCopy;
    v12 = v8;
    dispatch_barrier_async(taskDelegatesQueue, v10);

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

- (void)_setSendTimingData:(id)data forSessionTask:(id)task
{
  dataCopy = data;
  taskCopy = task;
  objc_initWeak(&location, self);
  sendTimingDataQueue = [(SSURLSessionManager *)self sendTimingDataQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__SSURLSessionManager__setSendTimingData_forSessionTask___block_invoke;
  v11[3] = &unk_1E84AE328;
  objc_copyWeak(&v14, &location);
  v12 = dataCopy;
  v13 = taskCopy;
  v9 = taskCopy;
  v10 = dataCopy;
  dispatch_barrier_async(sendTimingDataQueue, v11);

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

- (void)_setTaskMetrics:(id)metrics forSessionTask:(id)task
{
  metricsCopy = metrics;
  taskCopy = task;
  objc_initWeak(&location, self);
  taskMetricsQueue = [(SSURLSessionManager *)self taskMetricsQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__SSURLSessionManager__setTaskMetrics_forSessionTask___block_invoke;
  v11[3] = &unk_1E84AE328;
  objc_copyWeak(&v14, &location);
  v12 = metricsCopy;
  v13 = taskCopy;
  v9 = taskCopy;
  v10 = metricsCopy;
  dispatch_barrier_sync(taskMetricsQueue, v11);

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
  mEMORY[0x1E696AF18] = [MEMORY[0x1E696AF18] sharedURLCache];
  v3 = [mEMORY[0x1E696AF18] diskCapacity] == 0;

  return v3;
}

- (BOOL)_shouldDisableCellularForDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (objc_opt_respondsToSelector())
  {
    shouldDisableCellular = [delegateCopy shouldDisableCellular];
  }

  else
  {
    shouldDisableCellular = 0;
  }

  return shouldDisableCellular;
}

- (BOOL)_shouldRequireCelluarForDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (objc_opt_respondsToSelector())
  {
    shouldRequireCellular = [delegateCopy shouldRequireCellular];
  }

  else
  {
    shouldRequireCellular = 0;
  }

  return shouldRequireCellular;
}

- (BOOL)_shouldEnableTLSSessionForDelegate:(id)delegate
{
  delegateCopy = delegate;
  CFPreferencesAppSynchronize(@"com.apple.itunesstored");
  v4 = CFPreferencesCopyAppValue(@"TLSLastSampleDate", @"com.apple.itunesstored");
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"TLSLastSampleResult", @"com.apple.itunesstored", 0);
  v6 = [objc_opt_class() bagValueForKey:@"TLSSamplingPercentage" delegate:delegateCopy type:3];
  [v6 doubleValue];
  v8 = v7;

  v9 = [objc_opt_class() bagValueForKey:@"TLSSamplingSessionDuration" delegate:delegateCopy type:3];

  [v9 doubleValue];
  v11 = v10;

  date = [MEMORY[0x1E695DF00] date];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v13 = AppBooleanValue != 0, [v4 dateByAddingTimeInterval:v11 / 1000.0], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(date, "compare:", v14), v14, v15 != -1))
  {
    [objc_opt_class() _randomDouble];
    if (v16 == 0.0)
    {
      v13 = 0;
    }

    else
    {
      v17 = v16;
      CFPreferencesSetAppValue(@"TLSLastSampleDate", date, @"com.apple.itunesstored");
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

- (BOOL)_shouldSetCookiesForDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (objc_opt_respondsToSelector())
  {
    shouldSetCookies = [delegateCopy shouldSetCookies];
  }

  else
  {
    shouldSetCookies = 0;
  }

  return shouldSetCookies;
}

- (id)_taskMetricsForSessionTask:(id)task
{
  taskCopy = task;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__65;
  v18 = __Block_byref_object_dispose__65;
  v19 = 0;
  objc_initWeak(&location, self);
  taskMetricsQueue = [(SSURLSessionManager *)self taskMetricsQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__SSURLSessionManager__taskMetricsForSessionTask___block_invoke;
  v9[3] = &unk_1E84B2A78;
  objc_copyWeak(&v12, &location);
  v10 = taskCopy;
  v11 = &v14;
  v6 = taskCopy;
  dispatch_sync(taskMetricsQueue, v9);

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

+ (id)_tidStateForTask:(id)task delegate:(id)delegate
{
  delegateCopy = delegate;
  originalRequest = [task originalRequest];
  if (originalRequest)
  {
    activeURLRequest = originalRequest;
LABEL_3:
    allHTTPHeaderFields = [activeURLRequest allHTTPHeaderFields];
    v9 = [allHTTPHeaderFields objectForKey:@"X-Apple-TID-State"];

    goto LABEL_9;
  }

  getISURLOperationClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    activeURLRequest = [delegateCopy activeURLRequest];
    if (activeURLRequest)
    {
      goto LABEL_3;
    }
  }

  else
  {
    activeURLRequest = 0;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

- (id)_URLCacheForDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (objc_opt_respondsToSelector() & 1) != 0 && ([delegateCopy URLCacheID], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "length"), v4, v5) && (objc_opt_respondsToSelector())
  {
    uRLCache = [delegateCopy URLCache];
  }

  else
  {
    uRLCache = 0;
  }

  return uRLCache;
}

- (id)_URLCacheIDForDelegate:(id)delegate
{
  delegateCopy = delegate;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_5;
  }

  uRLCache = [delegateCopy URLCache];

  if (!uRLCache)
  {
    goto LABEL_6;
  }

  if (objc_opt_respondsToSelector())
  {
    uRLCache = [delegateCopy URLCacheID];
  }

  else
  {
LABEL_5:
    uRLCache = 0;
  }

LABEL_6:

  return uRLCache;
}

- (void)_appendResponseData:(id)data forSessionTask:(id)task
{
  dataCopy = data;
  taskCopy = task;
  if ([objc_opt_class() _shouldCollectNetworkLogs])
  {
    v8 = [dataCopy copy];
    objc_initWeak(&location, self);
    responseDataQueue = [(SSURLSessionManager *)self responseDataQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __58__SSURLSessionManager__appendResponseData_forSessionTask___block_invoke;
    v11[3] = &unk_1E84AE328;
    objc_copyWeak(&v14, &location);
    v12 = taskCopy;
    v13 = v8;
    v10 = v8;
    dispatch_barrier_async(responseDataQueue, v11);

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

+ (BOOL)_fetchedFromCache:(id)cache
{
  v17 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  sharedManager = [self sharedManager];
  v6 = [sharedManager _taskMetricsForSessionTask:cacheCopy];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  transactionMetrics = [v6 transactionMetrics];
  v8 = [transactionMetrics countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(transactionMetrics);
        }

        if ([*(*(&v12 + 1) + 8 * i) resourceFetchType] == 3)
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = [transactionMetrics countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  investigateNetworks = [v3 investigateNetworks];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__SSURLSessionManager__fetchNetworkQualityReports__block_invoke;
  v7[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v7[4] = self;
  [investigateNetworks addErrorBlock:v7];
  v5 = [investigateNetworks resultWithTimeout:0 error:10.0];

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

- (void)_removeRecordResponseDataForSessionTask:(id)task
{
  taskCopy = task;
  if ([objc_opt_class() _shouldCollectNetworkLogs])
  {
    objc_initWeak(&location, self);
    recordResponseQueue = [(SSURLSessionManager *)self recordResponseQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__SSURLSessionManager__removeRecordResponseDataForSessionTask___block_invoke;
    block[3] = &unk_1E84AD870;
    objc_copyWeak(&v8, &location);
    v7 = taskCopy;
    dispatch_barrier_async(recordResponseQueue, block);

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

- (void)_removeResponseDataForSessionTask:(id)task
{
  taskCopy = task;
  if ([objc_opt_class() _shouldCollectNetworkLogs])
  {
    objc_initWeak(&location, self);
    responseDataQueue = [(SSURLSessionManager *)self responseDataQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__SSURLSessionManager__removeResponseDataForSessionTask___block_invoke;
    block[3] = &unk_1E84AD870;
    objc_copyWeak(&v8, &location);
    v7 = taskCopy;
    dispatch_barrier_async(responseDataQueue, block);

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

- (id)_requestDataForSessionTask:(id)task
{
  taskCopy = task;
  if ([objc_opt_class() _shouldCollectNetworkLogs])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__65;
    v15 = __Block_byref_object_dispose__65;
    v16 = 0;
    requestDataQueue = [(SSURLSessionManager *)self requestDataQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__SSURLSessionManager__requestDataForSessionTask___block_invoke;
    block[3] = &unk_1E84ABF90;
    v10 = &v11;
    block[4] = self;
    v9 = taskCopy;
    dispatch_sync(requestDataQueue, block);

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

- (id)_responseDataForSessionTask:(id)task
{
  taskCopy = task;
  if ([objc_opt_class() _shouldCollectNetworkLogs])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__65;
    v15 = __Block_byref_object_dispose__65;
    v16 = 0;
    responseDataQueue = [(SSURLSessionManager *)self responseDataQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__SSURLSessionManager__responseDataForSessionTask___block_invoke;
    block[3] = &unk_1E84ABF90;
    v10 = &v11;
    block[4] = self;
    v9 = taskCopy;
    dispatch_sync(responseDataQueue, block);

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

- (id)_saveHTTPArchiveBufferToDiskDecompressed:(BOOL)decompressed
{
  decompressedCopy = decompressed;
  v35 = *MEMORY[0x1E69E9840];
  if (![objc_opt_class() _shouldCollectNetworkLogs])
  {
    v24 = 0;
    goto LABEL_25;
  }

  httpArchiveBuffer = [(SSURLSessionManager *)self httpArchiveBuffer];
  allObjects = [httpArchiveBuffer allObjects];

  if ([allObjects count])
  {
    v7 = [SSHTTPArchive merge:allObjects withEstimatedFileSizeLimit:4000];

    v8 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = shouldLog | 2;
    }

    else
    {
      v10 = shouldLog;
    }

    oSLogObject = [v8 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
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
        allObjects = v7;
        v19 = [allObjects countByEnumeratingWithState:&v28 objects:v32 count:16];
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
                objc_enumerationMutation(allObjects);
              }

              [*(*(&v28 + 1) + 8 * i) writeToDiskWithLogConfig:0 compressed:!decompressedCopy error:{0, v26}];
            }

            v20 = [allObjects countByEnumeratingWithState:&v28 objects:v32 count:16];
          }

          while (v20);
        }

        v23 = dispatch_get_global_queue(-32768, 0);
        dispatch_async(v23, &__block_literal_global_166);

        v24 = [SSHTTPArchive outputDirectoryForLogConfig:0];
        goto LABEL_24;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:{4, &v33, v27}];
      free(v12);
      SSFileLog(v8, @"%@", v13, v14, v15, v16, v17, v18, oSLogObject);
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

- (void)_setRequestData:(id)data forSessionTask:(id)task
{
  dataCopy = data;
  taskCopy = task;
  if ([objc_opt_class() _shouldCollectNetworkLogs])
  {
    v8 = [dataCopy copy];
    objc_initWeak(&location, self);
    requestDataQueue = [(SSURLSessionManager *)self requestDataQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __54__SSURLSessionManager__setRequestData_forSessionTask___block_invoke;
    v11[3] = &unk_1E84AE328;
    objc_copyWeak(&v14, &location);
    v12 = v8;
    v13 = taskCopy;
    v10 = v8;
    dispatch_barrier_async(requestDataQueue, v11);

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

- (BOOL)_shouldRecordResponseBodyForDataTask:(id)task
{
  taskCopy = task;
  if ([objc_opt_class() _shouldCollectNetworkLogs])
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__65;
    v26 = __Block_byref_object_dispose__65;
    v27 = 0;
    recordResponseQueue = [(SSURLSessionManager *)self recordResponseQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__SSURLSessionManager__shouldRecordResponseBodyForDataTask___block_invoke;
    block[3] = &unk_1E84ABF90;
    v21 = &v22;
    block[4] = self;
    v6 = taskCopy;
    v20 = v6;
    dispatch_sync(recordResponseQueue, block);

    v7 = v23[5];
    if (v7)
    {
      bOOLValue = [v7 BOOLValue];
    }

    else
    {
      response = [v6 response];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        response2 = [v6 response];
        mIMEType = [response2 MIMEType];
        lowercaseString = [mIMEType lowercaseString];

        if ([lowercaseString containsString:@"image"])
        {
          bOOLValue = 0;
        }

        else if ([lowercaseString isEqualToString:@"application/json"] & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"application/javascript") & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"application/x-javascript") & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"text/html") & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"text/xml"))
        {
          bOOLValue = 1;
        }

        else
        {
          bOOLValue = [lowercaseString isEqualToString:@"text/xml+itml"];
        }

        recordResponseQueue2 = [(SSURLSessionManager *)self recordResponseQueue];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __60__SSURLSessionManager__shouldRecordResponseBodyForDataTask___block_invoke_2;
        v16[3] = &unk_1E84B2AC0;
        v16[4] = self;
        v17 = v6;
        v18 = bOOLValue;
        dispatch_barrier_sync(recordResponseQueue2, v16);
      }

      else
      {
        bOOLValue = 0;
      }
    }

    _Block_object_dispose(&v22, 8);
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
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

- (void)_logAPSResultsWithTask:(id)task
{
  v38 = *MEMORY[0x1E69E9840];
  taskCopy = task;
  v5 = [(SSURLSessionManager *)self _taskMetricsForSessionTask:taskCopy];
  transactionMetrics = [v5 transactionMetrics];
  lastObject = [transactionMetrics lastObject];

  if ([lastObject _apsRelayAttempted])
  {
    if ([lastObject _apsRelaySucceeded])
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v29 = v8;
    if ([lastObject _apsRelayAttempted])
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    v10 = v9;
    originalRequest = [taskCopy originalRequest];
    v12 = [originalRequest URL];
    absoluteString = [v12 absoluteString];

    v14 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v14)
    {
      v14 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v14 shouldLog];
    if ([v14 shouldLogToDisk])
    {
      v16 = shouldLog | 2;
    }

    else
    {
      v16 = shouldLog;
    }

    oSLogObject = [v14 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
      v37 = absoluteString;
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

- (void)_setAPSTopicWithTask:(id)task
{
  v19 = *MEMORY[0x1E69E9840];
  taskCopy = task;
  if ([(SSURLSessionManager *)self _shouldEnableAPSRWithTask:taskCopy])
  {
    v5 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = shouldLog | 2;
    }

    else
    {
      v7 = shouldLog;
    }

    oSLogObject = [v5 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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

        [taskCopy set_APSRelayTopic:@"com.apple.private.alloy.itunes.apsr"];
        goto LABEL_14;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v18, v17, v18}];
      free(v10);
      SSFileLog(v5, @"%@", v11, v12, v13, v14, v15, v16, oSLogObject);
    }

    goto LABEL_13;
  }

LABEL_14:
}

- (BOOL)_shouldEnableAPSRWithTask:(id)task
{
  v33[1] = *MEMORY[0x1E69E9840];
  taskCopy = task;
  v5 = [(SSURLSessionManager *)self _delegateForTask:taskCopy];
  if (objc_opt_respondsToSelector())
  {
    requestProperties = [v5 requestProperties];
  }

  else
  {
    requestProperties = 0;
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && ([v5 isURLBagRequest] & 1) != 0 || (objc_msgSend(requestProperties, "shouldDisableReversePush"))
  {
    goto LABEL_9;
  }

  reversePushEnabled = [MEMORY[0x1E698C890] reversePushEnabled];
  if (reversePushEnabled == 1)
  {
    goto LABEL_13;
  }

  if (reversePushEnabled == 2)
  {
LABEL_9:
    LOBYTE(v8) = 0;
    goto LABEL_36;
  }

  if (([requestProperties shouldDisableReversePushSampling] & 1) != 0 || (objc_msgSend(objc_opt_class(), "_randomDouble"), v10 = v9, objc_msgSend(objc_opt_class(), "bagValueForKey:delegate:type:", @"aps-sampling-percentage", v5, 3), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "doubleValue"), v13 = v12, v11, LOBYTE(v8) = 0, v10 > 0.0) && v10 <= v13)
  {
LABEL_13:
    originalRequest = [taskCopy originalRequest];
    v15 = [originalRequest URL];

    if (!v15)
    {
      v16 = [requestProperties URL];
      if (v16)
      {
        v15 = v16;
      }

      else
      {
        uRLBagKey = [requestProperties URLBagKey];
        if (!uRLBagKey)
        {
          goto LABEL_9;
        }

        v26 = uRLBagKey;
        v15 = [objc_opt_class() bagValueForKey:uRLBagKey delegate:v5 type:6];

        if (!v15)
        {
          goto LABEL_9;
        }
      }
    }

    absoluteString = [v15 absoluteString];
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

          if ([absoluteString rangeOfString:*(*(&v28 + 1) + 8 * i) options:1024] != 0x7FFFFFFFFFFFFFFFLL)
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

+ (id)_bagPerformanceValuesWithDelegate:(id)delegate
{
  v3 = [self _metricsDictionaryWithDelegate:delegate];
  v4 = [v3 objectForKeyedSubscript:@"performance"];

  return v4;
}

+ (id)bagValueForKey:(id)key delegate:(id)delegate type:(unint64_t)type
{
  v64 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  delegateCopy = delegate;
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([delegateCopy bag], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v13 = [self _legacyBagValueForKey:keyCopy];
    v11 = 0;
    v14 = @"NO";
    goto LABEL_6;
  }

  v11 = v10;
  if (objc_opt_respondsToSelector())
  {
    isURLBagRequest = [delegateCopy isURLBagRequest];
  }

  else
  {
    isURLBagRequest = 0;
  }

  profileConfig = [v11 profileConfig];
  bagKeys = [profileConfig bagKeys];
  v31 = [bagKeys containsObject:keyCopy];

  v14 = @"YES";
  if ((isURLBagRequest & 1) != 0 || !v31)
  {
    goto LABEL_7;
  }

  v13 = 0;
  if (type <= 2)
  {
    if (type)
    {
      if (type == 1)
      {
        v56 = 0;
        v32 = &v56;
        v33 = [v11 BOOLForKey:keyCopy error:&v56];
      }

      else
      {
        if (type != 2)
        {
          goto LABEL_6;
        }

        v55 = 0;
        v32 = &v55;
        v33 = [v11 dictionaryForKey:keyCopy error:&v55];
      }
    }

    else
    {
      v57 = 0;
      v32 = &v57;
      v33 = [v11 arrayForKey:keyCopy error:&v57];
    }
  }

  else if (type > 4)
  {
    if (type == 5)
    {
      v52 = 0;
      v32 = &v52;
      v33 = [v11 stringForKey:keyCopy error:&v52];
    }

    else
    {
      if (type != 6)
      {
        goto LABEL_6;
      }

      v51 = 0;
      v32 = &v51;
      v33 = [v11 URLForKey:keyCopy error:&v51];
    }
  }

  else if (type == 3)
  {
    v54 = 0;
    v32 = &v54;
    v33 = [v11 doubleForKey:keyCopy error:&v54];
  }

  else
  {
    v53 = 0;
    v32 = &v53;
    v33 = [v11 integerForKey:keyCopy error:&v53];
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

    shouldLog = [v36 shouldLog];
    if ([v36 shouldLogToDisk])
    {
      v38 = shouldLog | 2;
    }

    else
    {
      v38 = shouldLog;
    }

    oSLogObject = [v36 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v38 &= 2u;
    }

    if (v38)
    {
      v40 = objc_opt_class();
      v58 = 138412802;
      v59 = v40;
      v60 = 2112;
      v61 = keyCopy;
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

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v42 encoding:{4, &v58, v50}];
      free(v42);
      SSFileLog(v36, @"%@", v43, v44, v45, v46, v47, v48, oSLogObject);
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

  shouldLog2 = [v15 shouldLog];
  if ([v15 shouldLogToDisk])
  {
    v17 = shouldLog2 | 2;
  }

  else
  {
    v17 = shouldLog2;
  }

  oSLogObject2 = [v15 OSLogObject];
  if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
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
  v61 = keyCopy;
  v62 = 2114;
  v63 = v14;
  v20 = v19;
  LODWORD(v50) = 32;
  v21 = _os_log_send_and_compose_impl();

  if (v21)
  {
    oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v21 encoding:{4, &v58, v50}];
    free(v21);
    SSFileLog(v15, @"%@", v22, v23, v24, v25, v26, v27, oSLogObject2);
LABEL_17:
  }

  v13 = 0;
LABEL_19:

  return v13;
}

- (void)_insertEventIntoDatabase:(id)database delegate:(id)delegate
{
  databaseCopy = database;
  delegateCopy = delegate;
  if (databaseCopy)
  {
    objc_initWeak(&location, self);
    eventQueue = [(SSURLSessionManager *)self eventQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__SSURLSessionManager__insertEventIntoDatabase_delegate___block_invoke;
    block[3] = &unk_1E84B2AE8;
    objc_copyWeak(&v12, &location);
    block[4] = self;
    v10 = delegateCopy;
    v11 = databaseCopy;
    dispatch_async(eventQueue, block);

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

+ (double)_localTimeIntervalToServerTimeInterval:(double)interval
{
  if (_localTimeIntervalToServerTimeInterval__onceToken != -1)
  {
    +[SSURLSessionManager _localTimeIntervalToServerTimeInterval:];
  }

  return *&_localTimeIntervalToServerTimeInterval__timeIntervalBetweenReferenceDates + interval;
}

void __62__SSURLSessionManager__localTimeIntervalToServerTimeInterval___block_invoke()
{
  v2 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:0.0];
  v0 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:0.0];
  [v2 timeIntervalSinceDate:v0];
  _localTimeIntervalToServerTimeInterval__timeIntervalBetweenReferenceDates = v1;
}

+ (id)_resolvedIPAddressFromTask:(id)task
{
  v12[1] = *MEMORY[0x1E69E9840];
  response = [task response];
  _CFURLResponse = [response _CFURLResponse];

  if (_CFURLResponse && (v5 = CFURLResponseCopyPeerAddress()) != 0)
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

+ (double)_timingDataMetricToServerTimeInterval:(id)interval
{
  [interval doubleValue];
  if (v4 == 0.0)
  {
    return 0.0;
  }

  [self _localTimeIntervalToServerTimeInterval:?];
  return result;
}

@end
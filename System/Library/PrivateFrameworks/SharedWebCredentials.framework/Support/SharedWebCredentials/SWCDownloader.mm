@interface SWCDownloader
- (SWCDownloader)init;
- (SWCDownloaderDelegate)delegate;
- (id)_URLRequestWithDomain:(id)domain downloadRoute:(unsigned __int8)route;
- (id)_replaceTaskState:(id)state;
- (id)_sessionForTaskState:(id)state;
- (id)_taskStateForDomain:(id)domain downloadRoute:(unsigned __int8)route;
- (unint64_t)_maximumActiveTaskCountForSessionID:(unsigned __int8)d;
- (unsigned)_sessionIDForTaskState:(id)state;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
- (void)_downloadAASAFileForDomain:(id)domain applicationIdentifier:(id)identifier downloadRoute:(unsigned __int8)route discretionary:(BOOL)discretionary completionHandlers:(id)handlers;
- (void)_enumerateTaskStatesUsingBlock:(id)block;
- (void)_invokeCompletionHandlerForState:(id)state JSONObject:(id)object error:(id)error;
- (void)_processDownloadedDataForState:(id)state;
- (void)_resumePendingTasks;
- (void)downloadAASAFileForDomain:(id)domain applicationIdentifier:(id)identifier completionHandler:(id)handler;
- (void)enumerateActiveAASAFileDownloadsWithBlock:(id)block;
- (void)receiveSIGTERMSignal;
- (void)updateAASAFileForDomain:(id)domain applicationIdentifier:(id)identifier completionHandler:(id)handler;
@end

@implementation SWCDownloader

- (SWCDownloader)init
{
  v12.receiver = self;
  v12.super_class = SWCDownloader;
  v2 = [(SWCDownloader *)&v12 init];
  if (v2)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = objc_alloc_init(NSOperationQueue);
    queue = v2->_queue;
    v2->_queue = v4;

    [(NSOperationQueue *)v2->_queue setMaxConcurrentOperationCount:1];
    v6 = [[NSString alloc] initWithFormat:@"SWC download queue"];
    [(NSOperationQueue *)v2->_queue setName:v6];

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("SWC download queue (U)", v7);

    if (v8)
    {
      [(NSOperationQueue *)v2->_queue setUnderlyingQueue:v8];
    }

    v9 = +[NSMapTable weakToStrongObjectsMapTable];
    allTaskStates = v2->_allTaskStates;
    v2->_allTaskStates = v9;

    objc_autoreleasePoolPop(v3);
  }

  return v2;
}

- (void)receiveSIGTERMSignal
{
  v3 = os_transaction_create();
  underlyingQueue = [(NSOperationQueue *)self->_queue underlyingQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000012A0;
  v6[3] = &unk_10002C790;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_async(underlyingQueue, v6);
}

- (void)downloadAASAFileForDomain:(id)domain applicationIdentifier:(id)identifier completionHandler:(id)handler
{
  domainCopy = domain;
  identifierCopy = identifier;
  handlerCopy = handler;
  -[SWCDownloader downloadAASAFileForDomain:applicationIdentifier:downloadRoute:completionHandler:](self, "downloadAASAFileForDomain:applicationIdentifier:downloadRoute:completionHandler:", domainCopy, identifierCopy, [domainCopy modeOfOperation] != 0, handlerCopy);
}

- (void)updateAASAFileForDomain:(id)domain applicationIdentifier:(id)identifier completionHandler:(id)handler
{
  domainCopy = domain;
  identifierCopy = identifier;
  handlerCopy = handler;
  -[SWCDownloader updateAASAFileForDomain:applicationIdentifier:downloadRoute:completionHandler:](self, "updateAASAFileForDomain:applicationIdentifier:downloadRoute:completionHandler:", domainCopy, identifierCopy, [domainCopy modeOfOperation] != 0, handlerCopy);
}

- (void)enumerateActiveAASAFileDownloadsWithBlock:(id)block
{
  blockCopy = block;
  v5 = objc_autoreleasePoolPush();
  underlyingQueue = [(NSOperationQueue *)self->_queue underlyingQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100001748;
  v8[3] = &unk_10002C7E0;
  v8[4] = self;
  v7 = blockCopy;
  v9 = v7;
  dispatch_sync(underlyingQueue, v8);

  objc_autoreleasePoolPop(v5);
}

- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  taskCopy = task;
  challengeCopy = challenge;
  handlerCopy = handler;
  underlyingQueue = [(NSOperationQueue *)self->_queue underlyingQueue];
  dispatch_assert_queue_V2(underlyingQueue);

  allTaskStates = self->_allTaskStates;
  taskDescription = [taskCopy taskDescription];
  v15 = [(NSMapTable *)allTaskStates objectForKey:taskDescription];

  if (v15)
  {
    protectionSpace = [challengeCopy protectionSpace];
    authenticationMethod = [protectionSpace authenticationMethod];
    v18 = [authenticationMethod isEqualToString:NSURLAuthenticationMethodServerTrust];

    if (!v18)
    {
      v25 = 0;
      v27 = 1;
LABEL_28:

      goto LABEL_29;
    }

    serverTrust = [protectionSpace serverTrust];
    if (!serverTrust)
    {
      if (qword_100032510 != -1)
      {
        dispatch_once(&qword_100032510, &stru_10002C8E8);
      }

      v28 = qword_100032508;
      if (os_log_type_enabled(qword_100032508, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v41 = protectionSpace;
        v42 = 2112;
        v43 = v15;
        _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to get server trust from %@ for task %@", buf, 0x16u);
      }

      v29 = [NSError alloc];
      v38[0] = @"Line";
      v38[1] = @"Function";
      v39[0] = &off_10002E5A8;
      v24 = [NSString stringWithUTF8String:"[SWCDownloader URLSession:task:didReceiveChallenge:completionHandler:]"];
      v39[1] = v24;
      v30 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:2];
      v31 = [v29 initWithDomain:_SWCErrorDomain code:101 userInfo:v30];
      [(SWCDownloader *)self _invokeCompletionHandlerForState:v15 JSONObject:0 error:v31];

      goto LABEL_26;
    }

    domain = [v15 domain];
    modeOfOperation = [domain modeOfOperation];

    v22 = +[SWCSecurityGuard sharedSecurityGuard];
    v37 = 0;
    v23 = [v22 verifyTrust:serverTrust allowInstalledRootCertificates:modeOfOperation & 1 error:&v37];
    v24 = v37;

    if (v23)
    {
      v25 = [NSURLCredential credentialForTrust:serverTrust];
      if (v25)
      {
        if (qword_100032510 != -1)
        {
          dispatch_once(&qword_100032510, &stru_10002C8E8);
        }

        v26 = qword_100032508;
        if (os_log_type_enabled(qword_100032508, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v41 = challengeCopy;
          v42 = 2112;
          v43 = v15;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Successfully got credential for challenge %@ for task %@", buf, 0x16u);
        }

        v27 = 0;
        goto LABEL_27;
      }

      if (qword_100032510 != -1)
      {
        dispatch_once(&qword_100032510, &stru_10002C8E8);
      }

      v36 = qword_100032508;
      if (!os_log_type_enabled(qword_100032508, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *buf = 138412546;
      v41 = serverTrust;
      v42 = 2112;
      v43 = v15;
      v33 = "Failed to get credential from server trust %@ for task %@";
      v34 = v36;
      v35 = 22;
    }

    else
    {
      if (qword_100032510 != -1)
      {
        dispatch_once(&qword_100032510, &stru_10002C8E8);
      }

      v32 = qword_100032508;
      if (!os_log_type_enabled(qword_100032508, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *buf = 138412802;
      v41 = serverTrust;
      v42 = 2112;
      v43 = v15;
      v44 = 2114;
      v45 = v24;
      v33 = "Failed to verify server trust %@ for task %@: %{public}@";
      v34 = v32;
      v35 = 32;
    }

    _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, v33, buf, v35);
LABEL_25:
    [(SWCDownloader *)self _invokeCompletionHandlerForState:v15 JSONObject:0 error:v24];
LABEL_26:
    v25 = 0;
    v27 = 2;
LABEL_27:

    goto LABEL_28;
  }

  v25 = 0;
  v27 = 2;
LABEL_29:

  handlerCopy[2](handlerCopy, v27, v25);
}

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  taskCopy = task;
  requestCopy = request;
  handlerCopy = handler;
  underlyingQueue = [(NSOperationQueue *)self->_queue underlyingQueue];
  dispatch_assert_queue_V2(underlyingQueue);

  allTaskStates = self->_allTaskStates;
  taskDescription = [taskCopy taskDescription];
  v16 = [(NSMapTable *)allTaskStates objectForKey:taskDescription];

  if (v16)
  {
    v17 = [requestCopy URL];
    scheme = [v17 scheme];

    if (scheme && ![scheme caseInsensitiveCompare:@"https"])
    {
      if (qword_100032510 != -1)
      {
        dispatch_once(&qword_100032510, &stru_10002C8E8);
      }

      v19 = qword_100032508;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        originalRequest = [taskCopy originalRequest];
        v25 = [originalRequest URL];
        v26 = [requestCopy URL];
        v27 = 138412802;
        v28 = v25;
        v29 = 2112;
        v30 = v26;
        v31 = 2112;
        v32 = v16;
        _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Allowing redirect '%@' -> '%@' for task %@", &v27, 0x20u);
      }

      v20 = requestCopy;
    }

    else
    {
      if (qword_100032510 != -1)
      {
        dispatch_once(&qword_100032510, &stru_10002C8E8);
      }

      v19 = qword_100032508;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        originalRequest2 = [taskCopy originalRequest];
        v22 = [originalRequest2 URL];
        v23 = [requestCopy URL];
        v27 = 138412802;
        v28 = v22;
        v29 = 2112;
        v30 = v23;
        v31 = 2112;
        v32 = v16;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Denying redirect '%@' -> '%@' for task %@ because the new URL has a bad scheme", &v27, 0x20u);
      }

      v20 = 0;
    }

    (handlerCopy)[2](handlerCopy, v20);
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  taskCopy = task;
  responseCopy = response;
  handlerCopy = handler;
  underlyingQueue = [(NSOperationQueue *)self->_queue underlyingQueue];
  dispatch_assert_queue_V2(underlyingQueue);

  allTaskStates = self->_allTaskStates;
  taskDescription = [taskCopy taskDescription];
  v15 = [(NSMapTable *)allTaskStates objectForKey:taskDescription];

  if (v15)
  {
    if (qword_100032510 != -1)
    {
      dispatch_once(&qword_100032510, &stru_10002C8E8);
    }

    v16 = qword_100032508;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v40 = [responseCopy URL];
      *buf = 138412546;
      v56 = v40;
      v57 = 2112;
      v58 = v15;
      _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Received URL '%@' response start for task %@", buf, 0x16u);
    }

    buffer = [(__CFString *)v15 buffer];
    [buffer setLength:0];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (qword_100032510 != -1)
      {
        dispatch_once(&qword_100032510, &stru_10002C8E8);
      }

      v18 = qword_100032508;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v42 = [responseCopy URL];
        v43 = objc_opt_class();
        v44 = NSStringFromClass(v43);
        *buf = 138412802;
        v56 = v42;
        v57 = 2112;
        v58 = v15;
        v59 = 2114;
        v60 = v44;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Request for '%@' for task %@ denied because it is not an HTTP response (%{public}@)", buf, 0x20u);
      }

      v22 = 0;
      goto LABEL_51;
    }

    v18 = responseCopy;
    statusCode = [v18 statusCode];
    v19 = [v18 valueForHTTPHeaderField:@"Apple-Failure-Reason"];
    v20 = [v18 valueForHTTPHeaderField:@"Apple-Failure-Details"];
    if ([v20 length])
    {
      if ([(__CFString *)v19 length])
      {
        v21 = [(__CFString *)v19 stringByAppendingFormat:@" -- %@", v20];
      }

      else
      {
        v21 = v20;
      }

      v23 = v21;
    }

    else
    {
      v23 = v19;
    }

    v24 = v23;
    if (![(__CFString *)v23 length])
    {

      v24 = @"unknown";
    }

    downloadRoute = [(__CFString *)v15 downloadRoute];
    v26 = (statusCode - 400);
    if (downloadRoute)
    {
      if (v26 <= 0x63)
      {
        v27 = [NSError alloc];
        v53[0] = @"Line";
        v53[1] = @"Function";
        v54[0] = &off_10002E5D8;
        v28 = [NSString stringWithUTF8String:"[SWCDownloader URLSession:dataTask:didReceiveResponse:completionHandler:]"];
        v54[1] = v28;
        v29 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:2];
        v30 = v24;
        v31 = [v27 initWithDomain:@"HTTP" code:statusCode userInfo:v29];
        [(__CFString *)v15 setCancellationError:v31];

        if (qword_100032510 != -1)
        {
          dispatch_once(&qword_100032510, &stru_10002C8E8);
        }

        v32 = qword_100032508;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v45 = [v18 URL];
          v46 = sub_1000061C0([(__CFString *)v15 downloadRoute]);
          *buf = 138413058;
          v56 = v45;
          v57 = 2048;
          v58 = statusCode;
          v59 = 2114;
          v60 = v46;
          v61 = 2112;
          v62 = v15;
          _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Request for '%@' denied due to HTTP status %lli on route %{public}@ for task %@", buf, 0x2Au);
        }

LABEL_49:
        v22 = 0;
        goto LABEL_50;
      }

      v30 = v24;
      if (qword_100032510 != -1)
      {
        dispatch_once(&qword_100032510, &stru_10002C8E8);
      }

      v38 = qword_100032508;
      if (os_log_type_enabled(qword_100032508, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218242;
        v56 = statusCode;
        v57 = 2112;
        v58 = v15;
        v39 = "Proceeding with response (status: %lli) for task %@";
LABEL_43:
        _os_log_debug_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, v39, buf, 0x16u);
      }
    }

    else
    {
      if (v26 < 0xC8)
      {
        v51 = [NSError alloc];
        v66[0] = &off_10002E5C0;
        v65[0] = @"Line";
        v65[1] = @"Function";
        v50 = [NSString stringWithUTF8String:"[SWCDownloader URLSession:dataTask:didReceiveResponse:completionHandler:]"];
        v66[1] = v50;
        v66[2] = v24;
        v65[2] = NSDebugDescriptionErrorKey;
        v65[3] = NSUnderlyingErrorKey;
        v33 = [NSError alloc];
        v63[1] = @"Function";
        v64[0] = &off_10002E5C0;
        v63[0] = @"Line";
        v49 = [NSString stringWithUTF8String:"[SWCDownloader URLSession:dataTask:didReceiveResponse:completionHandler:]"];
        v64[1] = v49;
        v48 = [NSDictionary dictionaryWithObjects:v64 forKeys:v63 count:2];
        v34 = [v33 initWithDomain:@"HTTP" code:statusCode userInfo:?];
        v66[3] = v34;
        v35 = [NSDictionary dictionaryWithObjects:v66 forKeys:v65 count:4];
        v30 = v24;
        v36 = [v51 initWithDomain:_SWCErrorDomain code:7 userInfo:v35];
        [(__CFString *)v15 setCancellationError:v36];

        if (qword_100032510 != -1)
        {
          dispatch_once(&qword_100032510, &stru_10002C8E8);
        }

        v37 = qword_100032508;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v47 = [v18 URL];
          *buf = 138413058;
          v56 = v47;
          v57 = 2112;
          v58 = v15;
          v59 = 2048;
          v60 = statusCode;
          v61 = 2114;
          v62 = v24;
          _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Request for '%@' for task %@ denied because the CDN told us to stop with HTTP status %lli: %{public}@", buf, 0x2Au);
        }

        goto LABEL_49;
      }

      v30 = v24;
      if ((statusCode - 200) >= 0x64)
      {
        if (qword_100032510 != -1)
        {
          dispatch_once(&qword_100032510, &stru_10002C8E8);
        }

        v41 = qword_100032508;
        if (os_log_type_enabled(qword_100032508, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218242;
          v56 = statusCode;
          v57 = 2112;
          v58 = v15;
          _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "CDN sent an unexpected HTTP status %lli (ignoring) for task %@", buf, 0x16u);
        }

        goto LABEL_49;
      }

      if (qword_100032510 != -1)
      {
        dispatch_once(&qword_100032510, &stru_10002C8E8);
      }

      v38 = qword_100032508;
      if (os_log_type_enabled(qword_100032508, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218242;
        v56 = statusCode;
        v57 = 2112;
        v58 = v15;
        v39 = "Proceeding: CDN gave HTTP status %lli for task %@";
        goto LABEL_43;
      }
    }

    v22 = 1;
LABEL_50:

LABEL_51:
    goto LABEL_52;
  }

  v22 = 0;
LABEL_52:

  handlerCopy[2](handlerCopy, v22);
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  underlyingQueue = [(NSOperationQueue *)self->_queue underlyingQueue];
  dispatch_assert_queue_V2(underlyingQueue);

  allTaskStates = self->_allTaskStates;
  taskDescription = [taskCopy taskDescription];
  v11 = [(NSMapTable *)allTaskStates objectForKey:taskDescription];

  if (v11)
  {
    if (errorCopy)
    {
      [(SWCDownloader *)self _invokeCompletionHandlerForState:v11 JSONObject:0 error:errorCopy];
    }

    else
    {
      [(SWCDownloader *)self _processDownloadedDataForState:v11];
    }
  }
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  taskCopy = task;
  dataCopy = data;
  underlyingQueue = [(NSOperationQueue *)self->_queue underlyingQueue];
  dispatch_assert_queue_V2(underlyingQueue);

  allTaskStates = self->_allTaskStates;
  taskDescription = [taskCopy taskDescription];
  v12 = [(NSMapTable *)allTaskStates objectForKey:taskDescription];

  if (v12)
  {
    buffer = [v12 buffer];
    [buffer appendData:dataCopy];

    buffer2 = [v12 buffer];
    v15 = [buffer2 length];

    if (v15 > 0x20000)
    {
      if (qword_100032510 != -1)
      {
        dispatch_once(&qword_100032510, &stru_10002C8E8);
      }

      v16 = qword_100032508;
      if (os_log_type_enabled(qword_100032508, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v12;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Data for task %@ exceeded maximum length", buf, 0xCu);
      }

      0x20000 = [[NSString alloc] initWithFormat:@"Data exceeded maximum length of %zu bytes.", 0x20000];
      task = [v12 task];
      response = [task response];

      if (response && [response expectedContentLength] >= 1)
      {
        v20 = [[NSString alloc] initWithFormat:@"Data exceeded maximum length of %zu bytes (server said it would be %lld bytes.)", 0x20000, objc_msgSend(response, "expectedContentLength")];

        0x20000 = v20;
      }

      v21 = [NSError alloc];
      v26[0] = &off_10002E5F0;
      v25[0] = @"Line";
      v25[1] = @"Function";
      v22 = [NSString stringWithUTF8String:"[SWCDownloader URLSession:dataTask:didReceiveData:]"];
      v25[2] = NSDebugDescriptionErrorKey;
      v26[1] = v22;
      v26[2] = 0x20000;
      v23 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:3];
      v24 = [v21 initWithDomain:NSURLErrorDomain code:-1103 userInfo:v23];
      [v12 cancelTaskWithError:v24];
    }
  }
}

- (SWCDownloaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (unsigned)_sessionIDForTaskState:(id)state
{
  stateCopy = state;
  downloadRoute = [stateCopy downloadRoute];
  isDiscretionary = [stateCopy isDiscretionary];
  v6 = downloadRoute == 0;
  if (v6)
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  if (isDiscretionary)
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

- (id)_sessionForTaskState:(id)state
{
  v5 = objc_autoreleasePoolPush();
  v6 = [(SWCDownloader *)self _sessionIDForTaskState:state];
  sessions = self->_sessions;
  v8 = self->_sessions[v6];
  if (!v8)
  {
    v9 = v6;
    v10 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
    [v10 setHTTPCookieAcceptPolicy:1];
    [v10 setHTTPCookieStorage:0];
    [v10 setHTTPShouldSetCookies:0];
    [v10 setRequestCachePolicy:1];
    [v10 setURLCredentialStorage:0];
    [v10 setURLCache:0];
    [v10 setAllowsCellularAccess:1];
    v11 = +[_SWCPrefs sharedPrefs];
    [v10 set_performsEVCertCheck:{objc_msgSend(v11, "verifyExtendedValidation")}];

    if (v9)
    {
      [v10 setWaitsForConnectivity:1];
    }

    if ((v9 & 2) != 0)
    {
      [v10 setDiscretionary:1];
    }

    v12 = [NSURLSession sessionWithConfiguration:v10 delegate:self delegateQueue:self->_queue];
    v13 = sessions[v9];
    sessions[v9] = v12;

    v8 = sessions[v9];
  }

  v14 = v8;
  objc_autoreleasePoolPop(v5);

  return v14;
}

- (unint64_t)_maximumActiveTaskCountForSessionID:(unsigned __int8)d
{
  if (d > 3u)
  {
    return 1;
  }

  else
  {
    return qword_10001F4A0[d];
  }
}

- (id)_taskStateForDomain:(id)domain downloadRoute:(unsigned __int8)route
{
  domainCopy = domain;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100003DD8;
  v19 = sub_100003DE8;
  v20 = 0;
  underlyingQueue = [(NSOperationQueue *)self->_queue underlyingQueue];
  dispatch_assert_queue_V2(underlyingQueue);

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100003DF0;
  v11[3] = &unk_10002C808;
  routeCopy = route;
  v8 = domainCopy;
  v12 = v8;
  v13 = &v15;
  [(SWCDownloader *)self _enumerateTaskStatesUsingBlock:v11];
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

- (void)_downloadAASAFileForDomain:(id)domain applicationIdentifier:(id)identifier downloadRoute:(unsigned __int8)route discretionary:(BOOL)discretionary completionHandlers:(id)handlers
{
  domainCopy = domain;
  identifierCopy = identifier;
  handlersCopy = handlers;
  v16 = [NSString alloc];
  redactedDescription = [domainCopy redactedDescription];
  v18 = [v16 initWithFormat:@"com.apple.swc.dl.begin-%@", redactedDescription];
  [v18 UTF8String];
  v19 = os_transaction_create();

  underlyingQueue = [(NSOperationQueue *)self->_queue underlyingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004084;
  block[3] = &unk_10002C830;
  block[4] = self;
  v26 = domainCopy;
  routeCopy = route;
  discretionaryCopy = discretionary;
  v27 = handlersCopy;
  v28 = identifierCopy;
  v29 = v19;
  v30 = a2;
  v21 = v19;
  v22 = identifierCopy;
  v23 = handlersCopy;
  v24 = domainCopy;
  dispatch_async(underlyingQueue, block);
}

- (id)_URLRequestWithDomain:(id)domain downloadRoute:(unsigned __int8)route
{
  routeCopy = route;
  domainCopy = domain;
  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc_init(NSURLComponents);
  [v7 setScheme:@"https"];
  if (routeCopy)
  {
    if (routeCopy == 1)
    {
      host = [domainCopy host];
      [v7 setHost:host];

      port = [domainCopy port];
      [v7 setPort:port];

      [v7 setPath:@"/.well-known/apple-app-site-association"];
    }

    else
    {
      if (qword_100032510 != -1)
      {
        dispatch_once(&qword_100032510, &stru_10002C8E8);
      }

      v16 = qword_100032508;
      if (os_log_type_enabled(qword_100032508, OS_LOG_TYPE_FAULT))
      {
        *buf = 134217984;
        v27 = routeCopy;
        _os_log_fault_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "Unknown download route %llu: this is a bug in SWC.", buf, 0xCu);
      }
    }

    v14 = 0;
  }

  else
  {
    [v7 setHost:@"app-site-association.cdn-apple.com"];
    v10 = [@"/a/v1/" mutableCopy];
    host2 = [domainCopy host];
    [v10 appendString:host2];

    port2 = [domainCopy port];
    v13 = port2;
    if (port2)
    {
      [v10 appendFormat:@":%@", port2];
    }

    [v7 setPath:v10];
    v14 = objc_alloc_init(NSMutableDictionary);
    host3 = [domainCopy host];
    [v14 setObject:host3 forKeyedSubscript:@"Apple-Proxied-Domain-Name"];
  }

  v17 = [NSMutableURLRequest alloc];
  v18 = [v7 URL];
  v19 = [v17 initWithURL:v18];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100004B74;
  v24[3] = &unk_10002C858;
  v20 = v19;
  v25 = v20;
  [v14 enumerateKeysAndObjectsUsingBlock:v24];
  if (routeCopy)
  {
    v21 = v20;
    [v20 _CFURLRequest];
    _CFURLRequestSetAllowedProtocolTypes();
  }

  [v20 setCachePolicy:1];
  [v20 setHTTPShouldHandleCookies:0];
  v22 = [v20 copy];

  objc_autoreleasePoolPop(v6);

  return v22;
}

- (void)_enumerateTaskStatesUsingBlock:(id)block
{
  blockCopy = block;
  underlyingQueue = [(NSOperationQueue *)self->_queue underlyingQueue];
  dispatch_assert_queue_V2(underlyingQueue);

  v16 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  objectEnumerator = [(NSMapTable *)self->_allTaskStates objectEnumerator];
  v7 = [objectEnumerator countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v7)
  {
    v8 = *v13;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(objectEnumerator);
      }

      v10 = *(*(&v12 + 1) + 8 * v9);
      v11 = objc_autoreleasePoolPush();
      blockCopy[2](blockCopy, v10, &v16);
      LOBYTE(v10) = v16;
      objc_autoreleasePoolPop(v11);
      if (v10)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [objectEnumerator countByEnumeratingWithState:&v12 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)_resumePendingTasks
{
  underlyingQueue = [(NSOperationQueue *)self->_queue underlyingQueue];
  dispatch_assert_queue_V2(underlyingQueue);

  v4 = objc_autoreleasePoolPush();
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x5812000000;
  v18[3] = sub_100004FCC;
  v18[4] = sub_10000503C;
  v18[5] = &unk_1000290DA;
  memset(v19, 0, sizeof(v19));
  v20 = 1065353216;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100005044;
  v17[3] = &unk_10002C880;
  v17[4] = self;
  v17[5] = v18;
  [(SWCDownloader *)self _enumerateTaskStatesUsingBlock:v17];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000050E4;
  v14[3] = &unk_10002C8A8;
  v14[4] = self;
  v16 = v18;
  v5 = objc_alloc_init(NSMutableArray);
  v15 = v5;
  [(SWCDownloader *)self _enumerateTaskStatesUsingBlock:v14];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v10 objects:v21 count:16];
  if (v7)
  {
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v10 + 1) + 8 * v9) resumeTask];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v10 objects:v21 count:16];
    }

    while (v7);
  }

  _Block_object_dispose(v18, 8);
  sub_100005D54(v19);
  objc_autoreleasePoolPop(v4);
}

- (id)_replaceTaskState:(id)state
{
  stateCopy = state;
  underlyingQueue = [(NSOperationQueue *)self->_queue underlyingQueue];
  dispatch_assert_queue_V2(underlyingQueue);

  v7 = [SWCDownloadTaskState alloc];
  domain = [stateCopy domain];
  v9 = -[SWCDownloadTaskState initWithDownloader:domain:downloadRoute:](v7, "initWithDownloader:domain:downloadRoute:", self, domain, [stateCopy downloadRoute]);

  if (!v9)
  {
    v20 = +[NSAssertionHandler currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"SWCDownloader.mm" lineNumber:709 description:@"Failed to create download state object"];
  }

  completionHandlers = [(SWCDownloadTaskState *)v9 completionHandlers];
  completionHandlers2 = [stateCopy completionHandlers];
  [completionHandlers setArray:completionHandlers2];

  completionHandlers3 = [stateCopy completionHandlers];
  [completionHandlers3 removeAllObjects];

  cancellationError = [stateCopy cancellationError];
  [(SWCDownloadTaskState *)v9 setCancellationError:cancellationError];

  allTaskStates = self->_allTaskStates;
  task = [stateCopy task];
  taskDescription = [task taskDescription];
  [(NSMapTable *)allTaskStates removeObjectForKey:taskDescription];

  v17 = self->_allTaskStates;
  taskDescription2 = [(SWCDownloadTaskState *)v9 taskDescription];
  [(NSMapTable *)v17 setObject:v9 forKey:taskDescription2];

  [stateCopy cancelTaskWithError:0];

  return v9;
}

- (void)_processDownloadedDataForState:(id)state
{
  stateCopy = state;
  v5 = objc_autoreleasePoolPush();
  if (qword_100032510 != -1)
  {
    dispatch_once(&qword_100032510, &stru_10002C8E8);
  }

  v6 = qword_100032508;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    domain = [stateCopy domain];
    v22 = sub_1000061C0([stateCopy downloadRoute]);
    __buf = 138412546;
    v25 = domain;
    v26 = 2114;
    v27 = v22;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Downloaded data for domain %@ (route? %{public}@)", &__buf, 0x16u);
  }

  domain2 = [stateCopy domain];
  buffer = [stateCopy buffer];
  v9 = [NSString alloc];
  redactedDescription = [domain2 redactedDescription];
  v11 = [v9 initWithFormat:@"com.apple.swc.aasa.read-%@", redactedDescription];
  v12 = v11;
  [v11 UTF8String];
  v13 = os_transaction_create();

  if (buffer)
  {
    if (_SWCDiagnosticStorage[2] && (+[_SWCPrefs sharedPrefs](_SWCPrefs, "sharedPrefs"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 isAppleInternal], v14, v15))
    {
      arc4random_buf(&__buf, 0x80uLL);
      v16 = [[NSMutableData alloc] initWithCapacity:{objc_msgSend(buffer, "length") + 128}];
      [v16 appendBytes:&__buf length:128];
      [v16 appendData:buffer];
    }

    else
    {
      v16 = buffer;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = +[SWCSecurityGuard sharedSecurityGuard];
  v23 = 0;
  v18 = [v17 JSONObjectWithSignedJSONData:v16 error:&v23];
  v19 = v23;

  if (v18)
  {
    [(SWCDownloader *)self _invokeCompletionHandlerForState:stateCopy JSONObject:v18 error:0];
  }

  else
  {
    if (qword_100032510 != -1)
    {
      dispatch_once(&qword_100032510, &stru_10002C8E8);
    }

    v20 = qword_100032508;
    if (os_log_type_enabled(qword_100032508, OS_LOG_TYPE_ERROR))
    {
      __buf = 138412546;
      v25 = domain2;
      v26 = 2112;
      v27 = v19;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Error securing JSON file for %@: %@", &__buf, 0x16u);
    }

    [(SWCDownloader *)self _invokeCompletionHandlerForState:stateCopy JSONObject:0 error:v19];
  }

  objc_autoreleasePoolPop(v5);
}

- (void)_invokeCompletionHandlerForState:(id)state JSONObject:(id)object error:(id)error
{
  stateCopy = state;
  objectCopy = object;
  errorCopy = error;
  underlyingQueue = [(NSOperationQueue *)self->_queue underlyingQueue];
  dispatch_assert_queue_V2(underlyingQueue);

  context = objc_autoreleasePoolPush();
  delegate = [(SWCDownloader *)self delegate];
  downloadRoute = [stateCopy downloadRoute];
  if (objectCopy)
  {
    if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      domain = [stateCopy domain];
      [delegate downloader:self didDownloadAASAFileContainingJSONObject:objectCopy fromDomain:domain downloadRoute:downloadRoute];
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    completionHandlers = [stateCopy completionHandlers];
    v15 = [completionHandlers countByEnumeratingWithState:&v40 objects:v49 count:16];
    if (v15)
    {
      v16 = *v41;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v41 != v16)
          {
            objc_enumerationMutation(completionHandlers);
          }

          (*(*(*(&v40 + 1) + 8 * i) + 16))();
        }

        v15 = [completionHandlers countByEnumeratingWithState:&v40 objects:v49 count:16];
      }

      while (v15);
    }
  }

  else
  {
    completionHandlers = [stateCopy cancellationError];
    if ([errorCopy code] == -999)
    {
      domain2 = [errorCopy domain];
      v19 = [domain2 isEqual:NSURLErrorDomain];
      v20 = completionHandlers ? v19 : 0;

      if (v20 == 1)
      {
        if (qword_100032510 != -1)
        {
          dispatch_once(&qword_100032510, &stru_10002C8E8);
        }

        v21 = qword_100032508;
        if (os_log_type_enabled(qword_100032508, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v46 = completionHandlers;
          v47 = 2112;
          v48 = errorCopy;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Substituting cancellation error %@ for error %@", buf, 0x16u);
        }

        v22 = completionHandlers;

        errorCopy = v22;
      }
    }

    if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      domain3 = [stateCopy domain];
      [delegate downloader:self failedToDownloadAASAFileFromDomain:domain3 error:errorCopy];
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    completionHandlers2 = [stateCopy completionHandlers];
    v25 = [completionHandlers2 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v25)
    {
      v26 = *v37;
      do
      {
        for (j = 0; j != v25; j = j + 1)
        {
          if (*v37 != v26)
          {
            objc_enumerationMutation(completionHandlers2);
          }

          (*(*(*(&v36 + 1) + 8 * j) + 16))();
        }

        v25 = [completionHandlers2 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v25);
    }
  }

  allTaskStates = self->_allTaskStates;
  task = [stateCopy task];
  taskDescription = [task taskDescription];
  [(NSMapTable *)allTaskStates removeObjectForKey:taskDescription];

  if ([(NSMapTable *)self->_allTaskStates count])
  {
    [(SWCDownloader *)self _resumePendingTasks];
  }

  else
  {
    v31 = 0;
    sessions = self->_sessions;
    do
    {
      [(NSURLSession *)sessions[v31] finishTasksAndInvalidate];
      v33 = sessions[v31];
      sessions[v31] = 0;

      ++v31;
    }

    while (v31 != 4);
  }

  objc_autoreleasePoolPop(context);
}

@end
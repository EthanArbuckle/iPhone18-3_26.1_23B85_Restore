@interface SWCDownloader
- (SWCDownloader)init;
- (SWCDownloaderDelegate)delegate;
- (id)_URLRequestWithDomain:(id)a3 downloadRoute:(unsigned __int8)a4;
- (id)_replaceTaskState:(id)a3;
- (id)_sessionForTaskState:(id)a3;
- (id)_taskStateForDomain:(id)a3 downloadRoute:(unsigned __int8)a4;
- (unint64_t)_maximumActiveTaskCountForSessionID:(unsigned __int8)a3;
- (unsigned)_sessionIDForTaskState:(id)a3;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7;
- (void)_downloadAASAFileForDomain:(id)a3 applicationIdentifier:(id)a4 downloadRoute:(unsigned __int8)a5 discretionary:(BOOL)a6 completionHandlers:(id)a7;
- (void)_enumerateTaskStatesUsingBlock:(id)a3;
- (void)_invokeCompletionHandlerForState:(id)a3 JSONObject:(id)a4 error:(id)a5;
- (void)_processDownloadedDataForState:(id)a3;
- (void)_resumePendingTasks;
- (void)downloadAASAFileForDomain:(id)a3 applicationIdentifier:(id)a4 completionHandler:(id)a5;
- (void)enumerateActiveAASAFileDownloadsWithBlock:(id)a3;
- (void)receiveSIGTERMSignal;
- (void)updateAASAFileForDomain:(id)a3 applicationIdentifier:(id)a4 completionHandler:(id)a5;
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
  v4 = [(NSOperationQueue *)self->_queue underlyingQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000012A0;
  v6[3] = &unk_10002C790;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

- (void)downloadAASAFileForDomain:(id)a3 applicationIdentifier:(id)a4 completionHandler:(id)a5
{
  v10 = a3;
  v8 = a4;
  v9 = a5;
  -[SWCDownloader downloadAASAFileForDomain:applicationIdentifier:downloadRoute:completionHandler:](self, "downloadAASAFileForDomain:applicationIdentifier:downloadRoute:completionHandler:", v10, v8, [v10 modeOfOperation] != 0, v9);
}

- (void)updateAASAFileForDomain:(id)a3 applicationIdentifier:(id)a4 completionHandler:(id)a5
{
  v10 = a3;
  v8 = a4;
  v9 = a5;
  -[SWCDownloader updateAASAFileForDomain:applicationIdentifier:downloadRoute:completionHandler:](self, "updateAASAFileForDomain:applicationIdentifier:downloadRoute:completionHandler:", v10, v8, [v10 modeOfOperation] != 0, v9);
}

- (void)enumerateActiveAASAFileDownloadsWithBlock:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(NSOperationQueue *)self->_queue underlyingQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100001748;
  v8[3] = &unk_10002C7E0;
  v8[4] = self;
  v7 = v4;
  v9 = v7;
  dispatch_sync(v6, v8);

  objc_autoreleasePoolPop(v5);
}

- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(NSOperationQueue *)self->_queue underlyingQueue];
  dispatch_assert_queue_V2(v12);

  allTaskStates = self->_allTaskStates;
  v14 = [v9 taskDescription];
  v15 = [(NSMapTable *)allTaskStates objectForKey:v14];

  if (v15)
  {
    v16 = [v10 protectionSpace];
    v17 = [v16 authenticationMethod];
    v18 = [v17 isEqualToString:NSURLAuthenticationMethodServerTrust];

    if (!v18)
    {
      v25 = 0;
      v27 = 1;
LABEL_28:

      goto LABEL_29;
    }

    v19 = [v16 serverTrust];
    if (!v19)
    {
      if (qword_100032510 != -1)
      {
        dispatch_once(&qword_100032510, &stru_10002C8E8);
      }

      v28 = qword_100032508;
      if (os_log_type_enabled(qword_100032508, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v41 = v16;
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

    v20 = [v15 domain];
    v21 = [v20 modeOfOperation];

    v22 = +[SWCSecurityGuard sharedSecurityGuard];
    v37 = 0;
    v23 = [v22 verifyTrust:v19 allowInstalledRootCertificates:v21 & 1 error:&v37];
    v24 = v37;

    if (v23)
    {
      v25 = [NSURLCredential credentialForTrust:v19];
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
          v41 = v10;
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
      v41 = v19;
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
      v41 = v19;
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

  v11[2](v11, v27, v25);
}

- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7
{
  v10 = a4;
  v11 = a6;
  v12 = a7;
  v13 = [(NSOperationQueue *)self->_queue underlyingQueue];
  dispatch_assert_queue_V2(v13);

  allTaskStates = self->_allTaskStates;
  v15 = [v10 taskDescription];
  v16 = [(NSMapTable *)allTaskStates objectForKey:v15];

  if (v16)
  {
    v17 = [v11 URL];
    v18 = [v17 scheme];

    if (v18 && ![v18 caseInsensitiveCompare:@"https"])
    {
      if (qword_100032510 != -1)
      {
        dispatch_once(&qword_100032510, &stru_10002C8E8);
      }

      v19 = qword_100032508;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v24 = [v10 originalRequest];
        v25 = [v24 URL];
        v26 = [v11 URL];
        v27 = 138412802;
        v28 = v25;
        v29 = 2112;
        v30 = v26;
        v31 = 2112;
        v32 = v16;
        _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Allowing redirect '%@' -> '%@' for task %@", &v27, 0x20u);
      }

      v20 = v11;
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
        v21 = [v10 originalRequest];
        v22 = [v21 URL];
        v23 = [v11 URL];
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

    (v12)[2](v12, v20);
  }

  else
  {
    v12[2](v12, 0);
  }
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(NSOperationQueue *)self->_queue underlyingQueue];
  dispatch_assert_queue_V2(v12);

  allTaskStates = self->_allTaskStates;
  v14 = [v9 taskDescription];
  v15 = [(NSMapTable *)allTaskStates objectForKey:v14];

  if (v15)
  {
    if (qword_100032510 != -1)
    {
      dispatch_once(&qword_100032510, &stru_10002C8E8);
    }

    v16 = qword_100032508;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v40 = [v10 URL];
      *buf = 138412546;
      v56 = v40;
      v57 = 2112;
      v58 = v15;
      _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Received URL '%@' response start for task %@", buf, 0x16u);
    }

    v17 = [(__CFString *)v15 buffer];
    [v17 setLength:0];

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
        v42 = [v10 URL];
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

    v18 = v10;
    v52 = [v18 statusCode];
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

    v25 = [(__CFString *)v15 downloadRoute];
    v26 = (v52 - 400);
    if (v25)
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
        v31 = [v27 initWithDomain:@"HTTP" code:v52 userInfo:v29];
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
          v58 = v52;
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
        v56 = v52;
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
        v34 = [v33 initWithDomain:@"HTTP" code:v52 userInfo:?];
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
          v60 = v52;
          v61 = 2114;
          v62 = v24;
          _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Request for '%@' for task %@ denied because the CDN told us to stop with HTTP status %lli: %{public}@", buf, 0x2Au);
        }

        goto LABEL_49;
      }

      v30 = v24;
      if ((v52 - 200) >= 0x64)
      {
        if (qword_100032510 != -1)
        {
          dispatch_once(&qword_100032510, &stru_10002C8E8);
        }

        v41 = qword_100032508;
        if (os_log_type_enabled(qword_100032508, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218242;
          v56 = v52;
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
        v56 = v52;
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

  v11[2](v11, v22);
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v12 = a4;
  v7 = a5;
  v8 = [(NSOperationQueue *)self->_queue underlyingQueue];
  dispatch_assert_queue_V2(v8);

  allTaskStates = self->_allTaskStates;
  v10 = [v12 taskDescription];
  v11 = [(NSMapTable *)allTaskStates objectForKey:v10];

  if (v11)
  {
    if (v7)
    {
      [(SWCDownloader *)self _invokeCompletionHandlerForState:v11 JSONObject:0 error:v7];
    }

    else
    {
      [(SWCDownloader *)self _processDownloadedDataForState:v11];
    }
  }
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(NSOperationQueue *)self->_queue underlyingQueue];
  dispatch_assert_queue_V2(v9);

  allTaskStates = self->_allTaskStates;
  v11 = [v7 taskDescription];
  v12 = [(NSMapTable *)allTaskStates objectForKey:v11];

  if (v12)
  {
    v13 = [v12 buffer];
    [v13 appendData:v8];

    v14 = [v12 buffer];
    v15 = [v14 length];

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

      v17 = [[NSString alloc] initWithFormat:@"Data exceeded maximum length of %zu bytes.", 0x20000];
      v18 = [v12 task];
      v19 = [v18 response];

      if (v19 && [v19 expectedContentLength] >= 1)
      {
        v20 = [[NSString alloc] initWithFormat:@"Data exceeded maximum length of %zu bytes (server said it would be %lld bytes.)", 0x20000, objc_msgSend(v19, "expectedContentLength")];

        v17 = v20;
      }

      v21 = [NSError alloc];
      v26[0] = &off_10002E5F0;
      v25[0] = @"Line";
      v25[1] = @"Function";
      v22 = [NSString stringWithUTF8String:"[SWCDownloader URLSession:dataTask:didReceiveData:]"];
      v25[2] = NSDebugDescriptionErrorKey;
      v26[1] = v22;
      v26[2] = v17;
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

- (unsigned)_sessionIDForTaskState:(id)a3
{
  v3 = a3;
  v4 = [v3 downloadRoute];
  v5 = [v3 isDiscretionary];
  v6 = v4 == 0;
  if (v6)
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  if (v5)
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

- (id)_sessionForTaskState:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  v6 = [(SWCDownloader *)self _sessionIDForTaskState:a3];
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

- (unint64_t)_maximumActiveTaskCountForSessionID:(unsigned __int8)a3
{
  if (a3 > 3u)
  {
    return 1;
  }

  else
  {
    return qword_10001F4A0[a3];
  }
}

- (id)_taskStateForDomain:(id)a3 downloadRoute:(unsigned __int8)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100003DD8;
  v19 = sub_100003DE8;
  v20 = 0;
  v7 = [(NSOperationQueue *)self->_queue underlyingQueue];
  dispatch_assert_queue_V2(v7);

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100003DF0;
  v11[3] = &unk_10002C808;
  v14 = a4;
  v8 = v6;
  v12 = v8;
  v13 = &v15;
  [(SWCDownloader *)self _enumerateTaskStatesUsingBlock:v11];
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

- (void)_downloadAASAFileForDomain:(id)a3 applicationIdentifier:(id)a4 downloadRoute:(unsigned __int8)a5 discretionary:(BOOL)a6 completionHandlers:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v16 = [NSString alloc];
  v17 = [v13 redactedDescription];
  v18 = [v16 initWithFormat:@"com.apple.swc.dl.begin-%@", v17];
  [v18 UTF8String];
  v19 = os_transaction_create();

  v20 = [(NSOperationQueue *)self->_queue underlyingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004084;
  block[3] = &unk_10002C830;
  block[4] = self;
  v26 = v13;
  v31 = a5;
  v32 = a6;
  v27 = v15;
  v28 = v14;
  v29 = v19;
  v30 = a2;
  v21 = v19;
  v22 = v14;
  v23 = v15;
  v24 = v13;
  dispatch_async(v20, block);
}

- (id)_URLRequestWithDomain:(id)a3 downloadRoute:(unsigned __int8)a4
{
  v4 = a4;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc_init(NSURLComponents);
  [v7 setScheme:@"https"];
  if (v4)
  {
    if (v4 == 1)
    {
      v8 = [v5 host];
      [v7 setHost:v8];

      v9 = [v5 port];
      [v7 setPort:v9];

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
        v27 = v4;
        _os_log_fault_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "Unknown download route %llu: this is a bug in SWC.", buf, 0xCu);
      }
    }

    v14 = 0;
  }

  else
  {
    [v7 setHost:@"app-site-association.cdn-apple.com"];
    v10 = [@"/a/v1/" mutableCopy];
    v11 = [v5 host];
    [v10 appendString:v11];

    v12 = [v5 port];
    v13 = v12;
    if (v12)
    {
      [v10 appendFormat:@":%@", v12];
    }

    [v7 setPath:v10];
    v14 = objc_alloc_init(NSMutableDictionary);
    v15 = [v5 host];
    [v14 setObject:v15 forKeyedSubscript:@"Apple-Proxied-Domain-Name"];
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
  if (v4)
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

- (void)_enumerateTaskStatesUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(NSOperationQueue *)self->_queue underlyingQueue];
  dispatch_assert_queue_V2(v5);

  v16 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(NSMapTable *)self->_allTaskStates objectEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v7)
  {
    v8 = *v13;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v12 + 1) + 8 * v9);
      v11 = objc_autoreleasePoolPush();
      v4[2](v4, v10, &v16);
      LOBYTE(v10) = v16;
      objc_autoreleasePoolPop(v11);
      if (v10)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
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
  v3 = [(NSOperationQueue *)self->_queue underlyingQueue];
  dispatch_assert_queue_V2(v3);

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

- (id)_replaceTaskState:(id)a3
{
  v5 = a3;
  v6 = [(NSOperationQueue *)self->_queue underlyingQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [SWCDownloadTaskState alloc];
  v8 = [v5 domain];
  v9 = -[SWCDownloadTaskState initWithDownloader:domain:downloadRoute:](v7, "initWithDownloader:domain:downloadRoute:", self, v8, [v5 downloadRoute]);

  if (!v9)
  {
    v20 = +[NSAssertionHandler currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"SWCDownloader.mm" lineNumber:709 description:@"Failed to create download state object"];
  }

  v10 = [(SWCDownloadTaskState *)v9 completionHandlers];
  v11 = [v5 completionHandlers];
  [v10 setArray:v11];

  v12 = [v5 completionHandlers];
  [v12 removeAllObjects];

  v13 = [v5 cancellationError];
  [(SWCDownloadTaskState *)v9 setCancellationError:v13];

  allTaskStates = self->_allTaskStates;
  v15 = [v5 task];
  v16 = [v15 taskDescription];
  [(NSMapTable *)allTaskStates removeObjectForKey:v16];

  v17 = self->_allTaskStates;
  v18 = [(SWCDownloadTaskState *)v9 taskDescription];
  [(NSMapTable *)v17 setObject:v9 forKey:v18];

  [v5 cancelTaskWithError:0];

  return v9;
}

- (void)_processDownloadedDataForState:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  if (qword_100032510 != -1)
  {
    dispatch_once(&qword_100032510, &stru_10002C8E8);
  }

  v6 = qword_100032508;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v21 = [v4 domain];
    v22 = sub_1000061C0([v4 downloadRoute]);
    __buf = 138412546;
    v25 = v21;
    v26 = 2114;
    v27 = v22;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Downloaded data for domain %@ (route? %{public}@)", &__buf, 0x16u);
  }

  v7 = [v4 domain];
  v8 = [v4 buffer];
  v9 = [NSString alloc];
  v10 = [v7 redactedDescription];
  v11 = [v9 initWithFormat:@"com.apple.swc.aasa.read-%@", v10];
  v12 = v11;
  [v11 UTF8String];
  v13 = os_transaction_create();

  if (v8)
  {
    if (_SWCDiagnosticStorage[2] && (+[_SWCPrefs sharedPrefs](_SWCPrefs, "sharedPrefs"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 isAppleInternal], v14, v15))
    {
      arc4random_buf(&__buf, 0x80uLL);
      v16 = [[NSMutableData alloc] initWithCapacity:{objc_msgSend(v8, "length") + 128}];
      [v16 appendBytes:&__buf length:128];
      [v16 appendData:v8];
    }

    else
    {
      v16 = v8;
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
    [(SWCDownloader *)self _invokeCompletionHandlerForState:v4 JSONObject:v18 error:0];
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
      v25 = v7;
      v26 = 2112;
      v27 = v19;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Error securing JSON file for %@: %@", &__buf, 0x16u);
    }

    [(SWCDownloader *)self _invokeCompletionHandlerForState:v4 JSONObject:0 error:v19];
  }

  objc_autoreleasePoolPop(v5);
}

- (void)_invokeCompletionHandlerForState:(id)a3 JSONObject:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(NSOperationQueue *)self->_queue underlyingQueue];
  dispatch_assert_queue_V2(v11);

  context = objc_autoreleasePoolPush();
  v35 = [(SWCDownloader *)self delegate];
  v12 = [v8 downloadRoute];
  if (v9)
  {
    if (v35 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v13 = [v8 domain];
      [v35 downloader:self didDownloadAASAFileContainingJSONObject:v9 fromDomain:v13 downloadRoute:v12];
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v14 = [v8 completionHandlers];
    v15 = [v14 countByEnumeratingWithState:&v40 objects:v49 count:16];
    if (v15)
    {
      v16 = *v41;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v41 != v16)
          {
            objc_enumerationMutation(v14);
          }

          (*(*(*(&v40 + 1) + 8 * i) + 16))();
        }

        v15 = [v14 countByEnumeratingWithState:&v40 objects:v49 count:16];
      }

      while (v15);
    }
  }

  else
  {
    v14 = [v8 cancellationError];
    if ([v10 code] == -999)
    {
      v18 = [v10 domain];
      v19 = [v18 isEqual:NSURLErrorDomain];
      v20 = v14 ? v19 : 0;

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
          v46 = v14;
          v47 = 2112;
          v48 = v10;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Substituting cancellation error %@ for error %@", buf, 0x16u);
        }

        v22 = v14;

        v10 = v22;
      }
    }

    if (v35 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v23 = [v8 domain];
      [v35 downloader:self failedToDownloadAASAFileFromDomain:v23 error:v10];
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v24 = [v8 completionHandlers];
    v25 = [v24 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v25)
    {
      v26 = *v37;
      do
      {
        for (j = 0; j != v25; j = j + 1)
        {
          if (*v37 != v26)
          {
            objc_enumerationMutation(v24);
          }

          (*(*(*(&v36 + 1) + 8 * j) + 16))();
        }

        v25 = [v24 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v25);
    }
  }

  allTaskStates = self->_allTaskStates;
  v29 = [v8 task];
  v30 = [v29 taskDescription];
  [(NSMapTable *)allTaskStates removeObjectForKey:v30];

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
@interface TPSURLSessionManager
+ (id)defaultManager;
- (NSURLSession)defaultURLSession;
- (TPSURLSessionDelegate)defaultSessionDelegate;
- (TPSURLSessionManager)init;
- (TPSURLSessionManagerDelegate)delegate;
- (id)URLSessionForAttributionIdentifier:(id)a3;
- (id)_mappedURLRequest:(id)a3;
- (id)newURLSessionItemWithRequest:(id)a3 identifier:(id)a4 attributionIdentifier:(id)a5 requestType:(id)a6 networkDelegate:(id)a7 completionHandler:(id)a8;
- (id)sessionTaskForTask:(id)a3;
- (void)URLSession:(id)a3 dataTask:(id)a4 didBecomeDownloadTask:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 dataTask:(id)a4 willCacheResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didWriteData:(int64_t)a5 totalBytesWritten:(int64_t)a6 totalBytesExpectedToWrite:(int64_t)a7;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6;
- (void)cancelSessionItem:(id)a3;
- (void)dealloc;
- (void)removeTaskFromMap:(id)a3;
- (void)resumeSessionItem:(id)a3;
- (void)sessionTask:(id)a3 didCompleteWithError:(id)a4;
- (void)setDefaultSessionDelegate:(id)a3;
- (void)setDelegate:(id)a3;
@end

@implementation TPSURLSessionManager

+ (id)defaultManager
{
  if (defaultManager_predicate_0 != -1)
  {
    +[TPSURLSessionManager defaultManager];
  }

  v3 = defaultManager_gURLSessionManager;

  return v3;
}

uint64_t __38__TPSURLSessionManager_defaultManager__block_invoke()
{
  v0 = objc_alloc_init(TPSURLSessionManager);
  v1 = defaultManager_gURLSessionManager;
  defaultManager_gURLSessionManager = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)dealloc
{
  [(NSURLSession *)self->_defaultURLSession invalidateAndCancel];
  [(NSMutableDictionary *)self->_URLSessionMap enumerateKeysAndObjectsUsingBlock:&__block_literal_global_3];
  sessionTaskQueue = self->_sessionTaskQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__TPSURLSessionManager_dealloc__block_invoke_2;
  block[3] = &unk_1E8101340;
  block[4] = self;
  dispatch_sync(sessionTaskQueue, block);
  v4.receiver = self;
  v4.super_class = TPSURLSessionManager;
  [(TPSURLSessionManager *)&v4 dealloc];
}

void __31__TPSURLSessionManager_dealloc__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) coalesceTaskURLMap];
  [v1 removeAllObjects];
}

- (TPSURLSessionManager)init
{
  v13.receiver = self;
  v13.super_class = TPSURLSessionManager;
  v2 = [(TPSURLSessionManager *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.IPURLSessionTaskSerialQueue", v3);
    sessionTaskQueue = v2->_sessionTaskQueue;
    v2->_sessionTaskQueue = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.IPURLSessionMapSerialQueue", v6);
    sessionMapQueue = v2->_sessionMapQueue;
    v2->_sessionMapQueue = v7;

    v9 = v2->_sessionTaskQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __28__TPSURLSessionManager_init__block_invoke;
    block[3] = &unk_1E8101340;
    v12 = v2;
    dispatch_sync(v9, block);
  }

  return v2;
}

void __28__TPSURLSessionManager_init__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E695E0F8];
  v3 = [MEMORY[0x1E695E0F8] mutableCopy];
  [*(a1 + 32) setCoalesceTaskURLMap:v3];

  v4 = [v2 mutableCopy];
  [*(a1 + 32) setUncoalesceTaskMap:v4];

  v5 = [v2 mutableCopy];
  [*(a1 + 32) setURLSessionMap:v5];

  if (+[TPSCommonDefines isInternalDevice]&& PingPongClientLibraryCore_0())
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2050000000;
    v6 = getPPCRedirectClass_softClass;
    v17 = getPPCRedirectClass_softClass;
    if (!getPPCRedirectClass_softClass)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __getPPCRedirectClass_block_invoke;
      v13[3] = &unk_1E8102A50;
      v13[4] = &v14;
      __getPPCRedirectClass_block_invoke(v13);
      v6 = v15[3];
    }

    v7 = v6;
    _Block_object_dispose(&v14, 8);
    v8 = objc_alloc_init(v6);
    [*(a1 + 32) setUrlRedirector:v8];

    v9 = [*(a1 + 32) urlRedirector];

    v10 = +[TPSLogger data];
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        LOWORD(v13[0]) = 0;
        v12 = "PPCRedirect initialized.";
LABEL_10:
        _os_log_impl(&dword_1C00A7000, v10, OS_LOG_TYPE_DEFAULT, v12, v13, 2u);
      }
    }

    else if (v11)
    {
      LOWORD(v13[0]) = 0;
      v12 = "PPCRedirect not found.";
      goto LABEL_10;
    }
  }
}

- (id)URLSessionForAttributionIdentifier:(id)a3
{
  v4 = a3;
  if (v4 && ![(TPSURLSessionManager *)self allowsNetworkAttribution])
  {

    v4 = 0;
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__7;
  v17 = __Block_byref_object_dispose__7;
  v18 = 0;
  sessionMapQueue = self->_sessionMapQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__TPSURLSessionManager_URLSessionForAttributionIdentifier___block_invoke;
  block[3] = &unk_1E8102B60;
  v11 = self;
  v12 = &v13;
  v10 = v4;
  v6 = v4;
  dispatch_sync(sessionMapQueue, block);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void __59__TPSURLSessionManager_URLSessionForAttributionIdentifier___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && (+[TPSCommonDefines clientBundleIdentifier](TPSCommonDefines, "clientBundleIdentifier"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v2 isEqualToString:v3], v3, !v4))
  {
    v8 = [*(a1 + 40) URLSessionMap];
    v9 = [v8 objectForKeyedSubscript:*(a1 + 32)];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    if (*(*(*(a1 + 48) + 8) + 40))
    {
      return;
    }

    v12 = [*(a1 + 40) defaultURLSession];
    v22 = [v12 configuration];

    [v22 set_sourceApplicationBundleIdentifier:*(a1 + 32)];
    v13 = MEMORY[0x1E696AF78];
    v14 = *(a1 + 40);
    v15 = [v14 defaultURLSession];
    v16 = [v15 delegateQueue];
    v17 = [v13 sessionWithConfiguration:v22 delegate:v14 delegateQueue:v16];
    v18 = *(*(a1 + 48) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    v20 = *(*(*(a1 + 48) + 8) + 40);
    v21 = [*(a1 + 40) URLSessionMap];
    [v21 setObject:v20 forKeyedSubscript:*(a1 + 32)];

    v7 = v22;
  }

  else
  {
    v5 = [*(a1 + 40) defaultURLSession];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  MEMORY[0x1EEE66BB8](v5, v7);
}

- (NSURLSession)defaultURLSession
{
  defaultURLSession = self->_defaultURLSession;
  if (!defaultURLSession)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained(&self->_delegate);
      v7 = [v6 URLSessionManagerSessionConfiguration:self];
    }

    else
    {
      v8 = MEMORY[0x1E696AF18];
      v9 = [objc_opt_class() defaultURLCacheMemoryCapcity];
      v6 = [v8 tps_urlCacheWithIdentifier:0 memoryCapacity:v9 diskCapacity:{objc_msgSend(objc_opt_class(), "defaultURLCacheDiskCapcity")}];
      [MEMORY[0x1E696AF18] setSharedURLCache:v6];
      v7 = [MEMORY[0x1E696AF80] defaultSessionConfiguration];
      [v7 setURLCache:v6];
    }

    if ([(TPSURLSessionManager *)self allowsNetworkAttribution])
    {
      v10 = +[TPSCommonDefines clientBundleIdentifier];
      [v7 set_sourceApplicationBundleIdentifier:v10];
    }

    v11 = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = objc_loadWeakRetained(&self->_delegate);
      v14 = [v13 URLSessionManagerSessionOperationQueue:self];
    }

    else
    {
      v14 = objc_alloc_init(MEMORY[0x1E696ADC8]);
      [v14 setMaxConcurrentOperationCount:4];
    }

    v15 = objc_loadWeakRetained(&self->_delegate);
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      v17 = objc_loadWeakRetained(&self->_delegate);
      self->_coalesceRequests = [v17 URLSessionManagerShouldCoalesceRequest:self];
    }

    v18 = [MEMORY[0x1E696AF78] sessionWithConfiguration:v7 delegate:self delegateQueue:v14];
    v19 = self->_defaultURLSession;
    self->_defaultURLSession = v18;

    defaultURLSession = self->_defaultURLSession;
  }

  return defaultURLSession;
}

- (id)_mappedURLRequest:(id)a3
{
  v4 = a3;
  v5 = [(TPSURLSessionManager *)self urlRedirector];

  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [v4 URL];
  v7 = [(TPSURLSessionManager *)self urlRedirector];
  v8 = [v7 mappedURL:v6];

  if (!v8 || ([v8 isEqual:v6] & 1) != 0)
  {

LABEL_5:
    v9 = v4;
    goto LABEL_6;
  }

  v9 = [v4 mutableCopy];
  [v9 setURL:v8];
  v11 = +[TPSLogger data];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [(TPSURLSessionManager *)v9 _mappedURLRequest:v11];
  }

  v12 = MEMORY[0x1E695DF90];
  v13 = [(TPSURLSessionManager *)self authenticationHandler];
  v14 = [v13 customHeaderFields];
  v15 = [v12 dictionaryWithDictionary:v14];

  if ([v15 count])
  {
    v16 = [v9 allHTTPHeaderFields];
    [v15 addEntriesFromDictionary:v16];

    [v9 setAllHTTPHeaderFields:v15];
  }

LABEL_6:

  return v9;
}

- (void)setDefaultSessionDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_defaultSessionDelegate);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_defaultSessionDelegate, obj);
    v6 = [TPSURLSessionTask delegateRespondsWithDelegate:obj];
    *&self->_defaultSessionDelegateResponds.willCacheResponse = v6;
    self->_defaultSessionDelegateResponds.taskDidReceiveChallenge = BYTE4(v6);
  }
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_delegate, obj);
    self->_respondsToDidReceiveChallenge = objc_opt_respondsToSelector() & 1;
  }
}

- (id)newURLSessionItemWithRequest:(id)a3 identifier:(id)a4 attributionIdentifier:(id)a5 requestType:(id)a6 networkDelegate:(id)a7 completionHandler:(id)a8
{
  v64 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v41 = a6;
  v17 = a7;
  v42 = a8;
  if (v16 && ![(TPSURLSessionManager *)self allowsNetworkAttribution])
  {

    v16 = 0;
  }

  v40 = v14;
  v18 = [(TPSURLSessionManager *)self _mappedURLRequest:v14];
  v19 = [v18 URL];
  v20 = v19;
  if (v19 && (v15 || ([v19 lastPathComponent], (v15 = objc_claimAutoreleasedReturnValue()) != 0)))
  {
    v52 = 0;
    v53 = &v52;
    v54 = 0x3032000000;
    v55 = __Block_byref_object_copy__7;
    v56 = __Block_byref_object_dispose__7;
    v57 = 0;
    if (v17)
    {
      goto LABEL_10;
    }

    if (!self->_coalesceRequests)
    {
      goto LABEL_10;
    }

    sessionTaskQueue = self->_sessionTaskQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __132__TPSURLSessionManager_newURLSessionItemWithRequest_identifier_attributionIdentifier_requestType_networkDelegate_completionHandler___block_invoke;
    block[3] = &unk_1E8101EE0;
    v51 = &v52;
    block[4] = self;
    v50 = v20;
    dispatch_sync(sessionTaskQueue, block);

    if (!v53[5])
    {
LABEL_10:
      v22 = [(TPSURLSessionManager *)self URLSessionForAttributionIdentifier:v16];
      v23 = [v22 dataTaskWithRequest:v18];
      v24 = +[TPSLogger data];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v39 = [v14 URL];
        v35 = [v22 configuration];
        v36 = [v35 _sourceApplicationBundleIdentifier];
        v38 = v35;
        *buf = 138412802;
        v59 = v39;
        v60 = 2112;
        v61 = v16;
        v62 = 2112;
        v63 = v36;
        v37 = v36;
        _os_log_debug_impl(&dword_1C00A7000, v24, OS_LOG_TYPE_DEBUG, "Network request - %@. Attribution - Requested: %@, Effective: %@", buf, 0x20u);
      }

      [v23 setTaskDescription:v16];
      v25 = [[TPSURLSessionTask alloc] initWithSessionTask:v23 identifier:v15];
      v26 = v53[5];
      v53[5] = v25;

      [v53[5] setUnderlyingSession:v22];
      [v53[5] setRequestType:v41];
      WeakRetained = v17;
      if (!v17)
      {
        WeakRetained = objc_loadWeakRetained(&self->_defaultSessionDelegate);
      }

      [v53[5] setNetworkDelegate:WeakRetained];
      if (v17)
      {
        v28 = [TPSURLSessionTask delegateRespondsWithDelegate:v17];
      }

      else
      {

        v28 = *&self->_defaultSessionDelegateResponds.willCacheResponse | (self->_defaultSessionDelegateResponds.taskDidReceiveChallenge << 32);
      }

      [v53[5] setDelegateResponds:v28 & 0xFFFFFFFFFFLL];
      v30 = self->_sessionTaskQueue;
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __132__TPSURLSessionManager_newURLSessionItemWithRequest_identifier_attributionIdentifier_requestType_networkDelegate_completionHandler___block_invoke_25;
      v43[3] = &unk_1E8102B88;
      v44 = v17;
      v45 = self;
      v47 = v23;
      v48 = &v52;
      v46 = v20;
      v31 = v23;
      dispatch_sync(v30, v43);
    }

    v32 = [TPSURLSessionItem alloc];
    v29 = [(TPSURLSessionItem *)v32 initWithSessionTask:v53[5] completionHandler:v42];
    _Block_object_dispose(&v52, 8);
  }

  else
  {
    v29 = 0;
  }

  v33 = *MEMORY[0x1E69E9840];
  return v29;
}

void __132__TPSURLSessionManager_newURLSessionItemWithRequest_identifier_attributionIdentifier_requestType_networkDelegate_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) coalesceTaskURLMap];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if ([*(*(*(a1 + 48) + 8) + 40) isCancelled])
  {
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
  }
}

void __132__TPSURLSessionManager_newURLSessionItemWithRequest_identifier_attributionIdentifier_requestType_networkDelegate_completionHandler___block_invoke_25(uint64_t a1)
{
  if (*(a1 + 32) || ![*(a1 + 40) coalesceRequests])
  {
    v2 = *(*(*(a1 + 64) + 8) + 40);
    v3 = [*(a1 + 40) uncoalesceTaskMap];
    v4 = *(a1 + 56);
  }

  else
  {
    v2 = *(*(*(a1 + 64) + 8) + 40);
    v3 = [*(a1 + 40) coalesceTaskURLMap];
    v4 = *(a1 + 48);
  }

  v5 = v3;
  [v3 setObject:v2 forKeyedSubscript:v4];
}

- (void)resumeSessionItem:(id)a3
{
  v3 = a3;
  if ([v3 state] == 1)
  {
    [v3 resume];
  }
}

- (void)cancelSessionItem:(id)a3
{
  if (a3)
  {
    v4 = a3;
    [v4 cancel];
    v8 = [v4 sessionTask];

    v6 = v8;
    if (v8)
    {
      v5 = [v8 isCancelled];
      v6 = v8;
      if (v5)
      {
        v7 = [v8 task];
        [(TPSURLSessionManager *)self removeTaskFromMap:v7];

        v6 = v8;
      }
    }

    MEMORY[0x1EEE66BB8](v5, v6);
  }
}

- (void)sessionTask:(id)a3 didCompleteWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __57__TPSURLSessionManager_sessionTask_didCompleteWithError___block_invoke;
    v13 = &unk_1E8101390;
    v8 = v6;
    v14 = v8;
    v15 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], &v10);
    v9 = [v8 task];
    [(TPSURLSessionManager *)self removeTaskFromMap:v9];
  }
}

- (void)removeTaskFromMap:(id)a3
{
  v4 = a3;
  sessionTaskQueue = self->_sessionTaskQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__TPSURLSessionManager_removeTaskFromMap___block_invoke;
  v7[3] = &unk_1E8101390;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(sessionTaskQueue, v7);
}

void __42__TPSURLSessionManager_removeTaskFromMap___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) coalesceRequests];
  v3 = *(a1 + 32);
  if (v2)
  {
    v6 = [v3 coalesceTaskURLMap];
    v4 = [*(a1 + 40) originalRequest];
    v5 = [v4 URL];
    [v6 removeObjectForKey:v5];
  }

  else
  {
    v6 = [v3 uncoalesceTaskMap];
    [v6 removeObjectForKey:*(a1 + 40)];
  }
}

- (id)sessionTaskForTask:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__7;
  v16 = __Block_byref_object_dispose__7;
  v17 = 0;
  sessionTaskQueue = self->_sessionTaskQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__TPSURLSessionManager_sessionTaskForTask___block_invoke;
  block[3] = &unk_1E8102408;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(sessionTaskQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __43__TPSURLSessionManager_sessionTaskForTask___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) coalesceRequests])
  {
    v2 = [*(a1 + 40) originalRequest];
    v9 = [v2 URL];

    v3 = [*(a1 + 32) coalesceTaskURLMap];
    v4 = [v3 objectForKeyedSubscript:v9];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  else
  {
    v9 = [*(a1 + 32) uncoalesceTaskMap];
    v7 = [v9 objectForKeyedSubscript:*(a1 + 40)];
    v8 = *(*(a1 + 48) + 8);
    v3 = *(v8 + 40);
    *(v8 + 40) = v7;
  }
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6
{
  v38 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(TPSURLSessionManager *)self sessionTaskForTask:v9];
  v13 = v12;
  if (v12)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __81__TPSURLSessionManager_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke;
    aBlock[3] = &unk_1E8102BD8;
    v14 = v12;
    v32 = v14;
    v15 = v10;
    v33 = v15;
    v34 = self;
    v16 = v11;
    v35 = v16;
    v17 = _Block_copy(aBlock);
    v18 = [(TPSURLSessionManager *)self authenticationHandler];
    if ([objc_opt_class() canAuthenticateWithURLResponse:v15])
    {
      v24 = v16;
      v19 = [v14 retryCount];

      if (!v19)
      {
        v20 = +[TPSLogger data];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = [v15 URL];
          *buf = 138412290;
          v37 = v21;
          _os_log_impl(&dword_1C00A7000, v20, OS_LOG_TYPE_INFO, "Authentication required for URL: %@", buf, 0xCu);
        }

        [v14 setRetryCount:{objc_msgSend(v14, "retryCount") + 1}];
        v22 = [(TPSURLSessionManager *)self authenticationHandler];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __81__TPSURLSessionManager_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_29;
        v25[3] = &unk_1E8102C28;
        v29 = v17;
        v26 = v9;
        v30 = v24;
        v27 = self;
        v28 = v14;
        [v22 authenticateForURLResponse:v15 completion:v25];

        goto LABEL_10;
      }
    }

    else
    {
    }

    v17[2](v17);
LABEL_10:

    goto LABEL_11;
  }

  (*(v11 + 2))(v11, 0);
LABEL_11:

  v23 = *MEMORY[0x1E69E9840];
}

void __81__TPSURLSessionManager_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) delegateResponds] & 0x10000) != 0)
  {
    v4 = [*(a1 + 32) networkDelegate];
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __81__TPSURLSessionManager_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_2;
    v7[3] = &unk_1E8102BB0;
    v7[4] = *(a1 + 48);
    v8 = v5;
    v9 = *(a1 + 56);
    [v4 sessionTask:v8 didReceiveResponse:v6 completionHandler:v7];
  }

  else
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF88]);
    [*(a1 + 32) setDataTaskData:v2];

    v3 = *(*(a1 + 56) + 16);

    v3();
  }
}

uint64_t __81__TPSURLSessionManager_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    [*(a1 + 32) sessionTask:*(a1 + 40) didCompleteWithError:0];
  }

  else if (a2 == 1)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF88]);
    [*(a1 + 40) setDataTaskData:v4];
  }

  v5 = *(*(a1 + 48) + 16);

  return v5();
}

void __81__TPSURLSessionManager_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_29(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  if (v8)
  {
    v9 = +[TPSLogger data];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __81__TPSURLSessionManager_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_29_cold_1(v8, v9);
    }

    (*(*(a1 + 56) + 16))();
  }

  else if ([*(a1 + 32) state] != 3)
  {
    (*(*(a1 + 64) + 16))();
    v10 = [*(a1 + 32) originalRequest];
    v11 = [v10 mutableCopy];

    [v11 setAllHTTPHeaderFields:v7];
    v12 = [*(a1 + 32) taskDescription];
    v13 = [*(a1 + 40) URLSessionForAttributionIdentifier:v12];
    v14 = [v13 dataTaskWithRequest:v11];
    [v14 setTaskDescription:v12];
    [*(a1 + 48) setTask:v14];
    v15 = +[TPSLogger data];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v21 = [v11 URL];
      v23 = [v13 configuration];
      v22 = [v23 _sourceApplicationBundleIdentifier];
      *buf = 138412802;
      v29 = v21;
      v30 = 2112;
      v31 = v12;
      v32 = 2112;
      v33 = v22;
      _os_log_debug_impl(&dword_1C00A7000, v15, OS_LOG_TYPE_DEBUG, "Network request - %@. Attribution - Requested: %@, Effective: %@", buf, 0x20u);
    }

    v16 = *(a1 + 32);
    v17 = *(a1 + 40);
    v18 = *(v17 + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __81__TPSURLSessionManager_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_30;
    block[3] = &unk_1E8102C00;
    block[4] = v17;
    v25 = v16;
    v26 = v14;
    v27 = *(a1 + 48);
    v19 = v14;
    dispatch_sync(v18, block);
    [v19 resume];
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __81__TPSURLSessionManager_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_30(uint64_t a1)
{
  v2 = [*(a1 + 32) uncoalesceTaskMap];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    v4 = *(a1 + 56);
    v5 = [*(a1 + 32) uncoalesceTaskMap];
    [v5 setObject:v4 forKeyedSubscript:*(a1 + 48)];

    v6 = [*(a1 + 32) uncoalesceTaskMap];
    [v6 removeObjectForKey:*(a1 + 40)];
  }
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v10 = a5;
  v7 = [(TPSURLSessionManager *)self sessionTaskForTask:a4];
  v8 = [v7 dataTaskData];
  v9 = v8;
  if (v8)
  {
    [v8 appendData:v10];
  }
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didBecomeDownloadTask:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(TPSURLSessionManager *)self sessionTaskForTask:v7];
  [v9 setTask:v8];
  [v9 setDataTaskData:0];
  sessionTaskQueue = self->_sessionTaskQueue;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __66__TPSURLSessionManager_URLSession_dataTask_didBecomeDownloadTask___block_invoke;
  v17 = &unk_1E8102C00;
  v18 = self;
  v19 = v8;
  v20 = v9;
  v21 = v7;
  v11 = v7;
  v12 = v9;
  v13 = v8;
  dispatch_sync(sessionTaskQueue, &v14);
  [v13 resume];
}

void __66__TPSURLSessionManager_URLSession_dataTask_didBecomeDownloadTask___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) coalesceRequests] & 1) == 0)
  {
    v2 = *(a1 + 48);
    v3 = [*(a1 + 32) uncoalesceTaskMap];
    [v3 setObject:v2 forKeyedSubscript:*(a1 + 40)];

    v4 = [*(a1 + 32) uncoalesceTaskMap];
    [v4 removeObjectForKey:*(a1 + 56)];
  }
}

- (void)URLSession:(id)a3 dataTask:(id)a4 willCacheResponse:(id)a5 completionHandler:(id)a6
{
  v12 = a5;
  v9 = a6;
  v10 = [(TPSURLSessionManager *)self sessionTaskForTask:a4];
  if ([v10 delegateResponds])
  {
    v11 = [v10 networkDelegate];
    [v11 sessionTask:v10 willCacheResponse:v12 completionHandler:v9];
  }

  else
  {
    v9[2](v9, v12);
  }
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didWriteData:(int64_t)a5 totalBytesWritten:(int64_t)a6 totalBytesExpectedToWrite:(int64_t)a7
{
  if (a7 >= 1 || a6 <= 0)
  {
    v8 = a7;
  }

  else
  {
    v8 = a6;
  }

  if (v8 >= 1)
  {
    v9 = [(TPSURLSessionManager *)self sessionTaskForTask:a4];
    [v9 setDownloadTaskTotalBytes:v8];
  }
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5
{
  v13 = a5;
  v7 = [(TPSURLSessionManager *)self sessionTaskForTask:a4];
  v8 = [v7 downloadTaskTotalBytes];
  if (v13 && v8)
  {
    if (([v7 delegateResponds] & 0x100) != 0)
    {
      v12 = [v7 networkDelegate];
      [v12 sessionTask:v7 didFinishDownloadingToURL:v13];
    }

    else
    {
      v9 = MEMORY[0x1E695DEF0];
      v10 = [v13 path];
      v11 = [v9 dataWithContentsOfFile:v10];
      [v7 setFormattedData:v11];
    }
  }

  else
  {
    [v7 setDownloadTaskTotalBytes:0];
  }
}

- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5
{
  v14 = a4;
  v7 = a5;
  v8 = [v7 transactionMetrics];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [(TPSURLSessionManager *)self sessionTaskForTask:v14];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 requestType];
      v13 = [TPSAnalyticsEventServiceRequest serviceRequestEventWithType:v12 metrics:v7];
      [v13 log];
    }
  }
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v16 = a4;
  v7 = a5;
  v8 = [(TPSURLSessionManager *)self sessionTaskForTask:v16];
  v9 = [v16 response];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v11 = [v16 response];
    [v8 setResponse:v11];
    v12 = [v11 allHeaderFields];
    v13 = [v12 objectForKeyedSubscript:@"Last-Modified"];
    [v8 setLastModified:v13];
  }

  if (([v8 delegateResponds] & 0x1000000) != 0)
  {
    v14 = [v8 networkDelegate];
    [v14 sessionTask:v8 didCompleteWithError:v7];
  }

  if (v8)
  {
    if (v7)
    {
      [(TPSURLSessionManager *)self sessionTask:v8 didCompleteWithError:v7];
    }

    else
    {
      v15 = [v8 dataError];
      [(TPSURLSessionManager *)self sessionTask:v8 didCompleteWithError:v15];
    }
  }
}

- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6
{
  v15 = a5;
  v9 = a6;
  v10 = [(TPSURLSessionManager *)self sessionTaskForTask:a4];
  if (([v10 delegateResponds] & 0x100000000) != 0 && (objc_msgSend(v15, "protectionSpace"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "host"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "hasSuffix:", @".apple.com"), v12, v11, v13))
  {
    v14 = [v10 networkDelegate];
    [v14 sessionTask:v10 didReceiveChallenge:v15 completionHandler:v9];
  }

  else
  {
    v9[2](v9, 3, 0);
  }
}

- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  if (self->_respondsToDidReceiveChallenge && ([v8 protectionSpace], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "host"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "hasSuffix:", @".apple.com"), v11, v10, v12))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained URLSessionManagerDidReceiveChallenge:v8 completionHandler:v9];
  }

  else
  {
    v9[2](v9, 3, 0);
  }
}

- (TPSURLSessionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (TPSURLSessionDelegate)defaultSessionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_defaultSessionDelegate);

  return WeakRetained;
}

- (void)_mappedURLRequest:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 URL];
  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_1C00A7000, a2, OS_LOG_TYPE_DEBUG, "Mapped URL Request: %@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

void __81__TPSURLSessionManager_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_29_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1C00A7000, a2, OS_LOG_TYPE_DEBUG, "Failed to authenticate: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end
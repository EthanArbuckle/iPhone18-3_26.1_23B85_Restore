@interface VUIURLImageLoader
+ (id)sharedInstanceWithMinimalSession:(BOOL)session;
- (VUIURLImageLoader)initWithMinimalSessionImageLoading:(BOOL)loading;
- (id)URLForObject:(id)object;
- (id)imageKeyForObject:(id)object;
- (id)loadImageForObject:(id)object scaleToSize:(CGSize)size cropToFit:(BOOL)fit imageDirection:(int64_t)direction completionHandler:(id)handler;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session dataTask:(id)task willCacheResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)_executeOnProcessingQueue:(id)queue;
- (void)cancelLoad:(id)load;
@end

@implementation VUIURLImageLoader

+ (id)sharedInstanceWithMinimalSession:(BOOL)session
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__VUIURLImageLoader_sharedInstanceWithMinimalSession___block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  sessionCopy = session;
  if (sharedInstanceWithMinimalSession__onceToken != -1)
  {
    dispatch_once(&sharedInstanceWithMinimalSession__onceToken, block);
  }

  v3 = sharedInstanceWithMinimalSession__sSharedInstance;

  return v3;
}

uint64_t __54__VUIURLImageLoader_sharedInstanceWithMinimalSession___block_invoke(uint64_t a1)
{
  sharedInstanceWithMinimalSession__sSharedInstance = [[VUIURLImageLoader alloc] initWithMinimalSessionImageLoading:*(a1 + 32)];

  return MEMORY[0x2821F96F8]();
}

- (VUIURLImageLoader)initWithMinimalSessionImageLoading:(BOOL)loading
{
  loadingCopy = loading;
  v26[1] = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = VUIURLImageLoader;
  v4 = [(VUIURLImageLoader *)&v24 init];
  if (v4)
  {
    defaultSessionConfiguration = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
    [defaultSessionConfiguration setHTTPMaximumConnectionsPerHost:4];
    [defaultSessionConfiguration setHTTPShouldUsePipelining:1];
    [defaultSessionConfiguration setWaitsForConnectivity:0];
    [defaultSessionConfiguration set_timingDataOptions:1];
    v6 = MEMORY[0x277CEE708];
    currentProcess = [MEMORY[0x277CEE620] currentProcess];
    v8 = [v6 userAgentForProcessInfo:currentProcess];

    if ([v8 length])
    {
      v25 = @"User-Agent";
      v26[0] = v8;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      [defaultSessionConfiguration setHTTPAdditionalHeaders:v9];
    }

    v4->_useMinimalSessionImageLoading = loadingCopy;
    if (loadingCopy)
    {
      v10 = [MEMORY[0x277CEE6F0] minimalSessionUsing:defaultSessionConfiguration];
      session = v4->_session;
      v4->_session = v10;

      [(AMSURLSession *)v4->_session setDelegate:v4];
    }

    else
    {
      v12 = [MEMORY[0x277CCAD30] sessionWithConfiguration:defaultSessionConfiguration delegate:v4 delegateQueue:0];
      urlSession = v4->_urlSession;
      v4->_urlSession = v12;
    }

    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"VUIURLImageLoader (%p) processing queue", v4];
    v15 = dispatch_queue_create([v14 cStringUsingEncoding:4], 0);
    processingQueue = v4->_processingQueue;
    v4->_processingQueue = v15;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    loadOptionsByID = v4->_loadOptionsByID;
    v4->_loadOptionsByID = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    loadIDsByURL = v4->_loadIDsByURL;
    v4->_loadIDsByURL = dictionary2;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    taskOptionsByURL = v4->_taskOptionsByURL;
    v4->_taskOptionsByURL = dictionary3;
  }

  return v4;
}

- (void)_executeOnProcessingQueue:(id)queue
{
  queueCopy = queue;
  objc_initWeak(&location, self);
  processingQueue = [(VUIURLImageLoader *)self processingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__VUIURLImageLoader__executeOnProcessingQueue___block_invoke;
  block[3] = &unk_279E220A8;
  objc_copyWeak(&v9, &location);
  v8 = queueCopy;
  v6 = queueCopy;
  dispatch_async(processingQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

uint64_t __47__VUIURLImageLoader__executeOnProcessingQueue___block_invoke(uint64_t a1)
{
  if (objc_loadWeakRetained((a1 + 40)))
  {
    (*(*(a1 + 32) + 16))();
  }

  return MEMORY[0x2821F96F8]();
}

- (id)URLForObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objectCopy;
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [objectCopy url];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (id)imageKeyForObject:(id)object
{
  v11 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    absoluteString = [objectCopy absoluteString];
LABEL_5:
    v5 = absoluteString;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    absoluteString = [objectCopy identifier];
    goto LABEL_5;
  }

  v6 = VUICImageLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v10 = 138412290;
    *&v10[4] = objc_opt_class();
    v7 = *&v10[4];
    _os_log_impl(&dword_270E6E000, v6, OS_LOG_TYPE_INFO, "URLImageLoader cannot create key for object of type [%@]", v10, 0xCu);
  }

  v5 = 0;
LABEL_9:
  vui_SHA256String = [v5 vui_SHA256String];

  return vui_SHA256String;
}

- (id)loadImageForObject:(id)object scaleToSize:(CGSize)size cropToFit:(BOOL)fit imageDirection:(int64_t)direction completionHandler:(id)handler
{
  selfCopy = self;
  v56 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  handlerCopy = handler;
  v37 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  v35 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objectCopy;
    v9 = v8;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v27 = VUICImageLogObject();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = objc_opt_class();
        v28 = *(&buf + 4);
        _os_log_impl(&dword_270E6E000, v27, OS_LOG_TYPE_INFO, "URLImageLoader cannot load image for object of type [%@]", &buf, 0xCu);
      }

      v29 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:0];
      (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, 0, v29);

      v9 = 0;
      v8 = 0;
      goto LABEL_21;
    }

    v10 = objectCopy;
    v9 = [v10 url];
    v11 = objc_alloc(MEMORY[0x277CCAB70]);
    v12 = [v10 url];
    v8 = [v11 initWithURL:v12];

    v49 = 0u;
    v47 = 0u;
    v48 = 0u;
    v46 = 0u;
    headers = [v10 headers];
    v14 = [headers countByEnumeratingWithState:&v46 objects:v55 count:16];
    if (v14)
    {
      v15 = *v47;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v47 != v15)
          {
            objc_enumerationMutation(headers);
          }

          v17 = *(*(&v46 + 1) + 8 * i);
          headers2 = [v10 headers];
          v19 = [headers2 objectForKey:v17];
          [v8 setValue:v19 forHTTPHeaderField:v17];
        }

        v14 = [headers countByEnumeratingWithState:&v46 objects:v55 count:16];
      }

      while (v14);
    }

    decrypter = [v10 decrypter];

    if (decrypter)
    {
      decrypter2 = [v10 decrypter];
      [v35 setObject:decrypter2 forKey:@"VUIURLImageLoaderTaskDecryptorKey"];
    }
  }

  if (!v8)
  {
LABEL_21:
    v26 = 0;
    goto LABEL_22;
  }

  uUID = [MEMORY[0x277CCAD78] UUID];
  v23 = [uUID description];

  [v37 setObject:v23 forKey:@"VUIURLImageLoaderOptionsIDKey"];
  [v37 setObject:v9 forKey:@"VUIURLImageLoaderOptionsURLKey"];
  if (handlerCopy)
  {
    v24 = [handlerCopy copy];
    [v37 setObject:v24 forKey:@"VUIURLImageLoaderOptionsCompletionHandlerKey"];
  }

  data = [MEMORY[0x277CBEB28] data];
  [v35 setObject:data forKey:@"VUIURLImageLoaderTaskReceivedDataKey"];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__3;
  v53 = __Block_byref_object_dispose__3;
  v54 = 0;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __95__VUIURLImageLoader_loadImageForObject_scaleToSize_cropToFit_imageDirection_completionHandler___block_invoke;
  v38[3] = &unk_279E220D0;
  v26 = v23;
  v39 = v26;
  v40 = v37;
  v9 = v9;
  v41 = v9;
  v8 = v8;
  v42 = v8;
  v43 = v33;
  p_buf = &buf;
  v44 = v35;
  [v33 _executeOnProcessingQueue:v38];

  _Block_object_dispose(&buf, 8);
LABEL_22:
  v30 = v26;

  return v26;
}

void __95__VUIURLImageLoader_loadImageForObject_scaleToSize_cropToFit_imageDirection_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 40) copy];
  v5 = [v3 loadOptionsByID];
  [v5 setObject:v4 forKeyedSubscript:*(a1 + 32)];

  v6 = VUICImageLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 48);
    v28 = 138412546;
    v29 = v7;
    v30 = 2112;
    v31 = v8;
    _os_log_impl(&dword_270E6E000, v6, OS_LOG_TYPE_INFO, "URLImageLoader Adding request %@ URL %@", &v28, 0x16u);
  }

  v9 = [v3 loadIDsByURL];
  v10 = [v9 objectForKeyedSubscript:*(a1 + 48)];

  if (!v10)
  {
    v10 = [MEMORY[0x277CBEB18] array];
    v11 = [v3 loadIDsByURL];
    [v11 setObject:v10 forKeyedSubscript:*(a1 + 48)];
  }

  [v10 addObject:*(a1 + 32)];
  if ([v10 count] == 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (![*(a1 + 64) useMinimalSessionImageLoading])
      {
        v12 = [*(a1 + 64) urlSession];
        v13 = [v12 dataTaskWithURL:*(a1 + 56)];
LABEL_15:
        v21 = *(*(a1 + 80) + 8);
        v22 = *(v21 + 40);
        *(v21 + 40) = v13;

        goto LABEL_16;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v12 = VUICImageLogObject();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          LOWORD(v28) = 0;
          _os_log_impl(&dword_270E6E000, v12, OS_LOG_TYPE_INFO, "URLImageLoader invalid NSURLSessionTask source type", &v28, 2u);
        }

        goto LABEL_16;
      }

      if (![*(a1 + 64) useMinimalSessionImageLoading])
      {
        v12 = [*(a1 + 64) urlSession];
        v13 = [v12 dataTaskWithRequest:*(a1 + 56)];
        goto LABEL_15;
      }
    }

    v14 = objc_alloc(MEMORY[0x277CEE6D0]);
    v15 = [MEMORY[0x277CCAD20] requestWithURL:*(a1 + 56)];
    v16 = [MEMORY[0x277CEE3F8] bagForProfile:@"TVApp" profileVersion:@"1"];
    v12 = [v14 initWithRequest:v15 bag:v16];

    v17 = [*(a1 + 64) session];
    v18 = [v17 dataTaskWithRequest:v12];
    v19 = *(*(a1 + 80) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

LABEL_16:
    v23 = VUICImageLogObject();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = [*(*(*(a1 + 80) + 8) + 40) description];
      v25 = *(a1 + 48);
      v28 = 138412546;
      v29 = v24;
      v30 = 2112;
      v31 = v25;
      _os_log_impl(&dword_270E6E000, v23, OS_LOG_TYPE_INFO, "URLImageLoader Loading task %@ URL %@", &v28, 0x16u);
    }

    [*(a1 + 72) setObject:*(*(*(a1 + 80) + 8) + 40) forKey:@"VUIURLImageLoaderTaskKey"];
    v26 = [*(a1 + 72) copy];
    v27 = [v3 taskOptionsByURL];
    [v27 setObject:v26 forKeyedSubscript:*(a1 + 48)];

    [*(*(*(a1 + 80) + 8) + 40) resume];
  }
}

- (void)cancelLoad:(id)load
{
  loadCopy = load;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __32__VUIURLImageLoader_cancelLoad___block_invoke;
    v5[3] = &unk_279E220F8;
    v6 = loadCopy;
    [(VUIURLImageLoader *)self _executeOnProcessingQueue:v5];
  }
}

void __32__VUIURLImageLoader_cancelLoad___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 loadOptionsByID];
  v5 = [v4 objectForKeyedSubscript:*(a1 + 32)];

  if (v5)
  {
    v6 = [v3 loadOptionsByID];
    v7 = [v6 objectForKeyedSubscript:*(a1 + 32)];
    v8 = [v7 objectForKeyedSubscript:@"VUIURLImageLoaderOptionsURLKey"];

    v9 = VUICImageLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 32);
      v21 = 138412546;
      v22 = v10;
      v23 = 2112;
      v24 = v8;
      _os_log_impl(&dword_270E6E000, v9, OS_LOG_TYPE_INFO, "URLImageLoader Canceling request %@ URL %@", &v21, 0x16u);
    }

    v11 = [v3 loadOptionsByID];
    [v11 removeObjectForKey:*(a1 + 32)];

    v12 = [v3 loadIDsByURL];
    v13 = [v12 objectForKeyedSubscript:v8];

    [v13 removeObject:*(a1 + 32)];
    if (![v13 count])
    {
      v14 = [v3 loadIDsByURL];
      [v14 removeObjectForKey:v8];

      v15 = [v3 taskOptionsByURL];
      v16 = [v15 objectForKeyedSubscript:v8];
      v17 = [v16 objectForKeyedSubscript:@"VUIURLImageLoaderTaskKey"];

      v18 = [v3 taskOptionsByURL];
      [v18 removeObjectForKey:v8];

      v19 = VUICImageLogObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = [v17 description];
        v21 = 138412546;
        v22 = v20;
        v23 = 2112;
        v24 = v8;
        _os_log_impl(&dword_270E6E000, v19, OS_LOG_TYPE_INFO, "URLImageLoader Canceling task %@ URL %@", &v21, 0x16u);
      }

      [v17 cancel];
    }
  }
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  taskCopy = task;
  handlerCopy = handler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __78__VUIURLImageLoader_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke;
  v12[3] = &unk_279E22120;
  v13 = taskCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = taskCopy;
  [(VUIURLImageLoader *)self _executeOnProcessingQueue:v12];
}

void __78__VUIURLImageLoader_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) originalRequest];
  v3 = [v2 URL];

  (*(*(a1 + 40) + 16))();
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  taskCopy = task;
  dataCopy = data;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__VUIURLImageLoader_URLSession_dataTask_didReceiveData___block_invoke;
  v11[3] = &unk_279E22148;
  v12 = taskCopy;
  v13 = dataCopy;
  v9 = dataCopy;
  v10 = taskCopy;
  [(VUIURLImageLoader *)self _executeOnProcessingQueue:v11];
}

void __56__VUIURLImageLoader_URLSession_dataTask_didReceiveData___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 originalRequest];
  v9 = [v5 URL];

  v6 = [v4 taskOptionsByURL];

  v7 = [v6 objectForKey:v9];
  v8 = [v7 objectForKey:@"VUIURLImageLoaderTaskReceivedDataKey"];

  [v8 appendData:*(a1 + 40)];
}

- (void)URLSession:(id)session dataTask:(id)task willCacheResponse:(id)response completionHandler:(id)handler
{
  v7 = MEMORY[0x277CCA8F0];
  handlerCopy = handler;
  responseCopy = response;
  v10 = [v7 alloc];
  response = [responseCopy response];
  data = [responseCopy data];
  userInfo = [responseCopy userInfo];

  v14 = [v10 initWithResponse:response data:data userInfo:userInfo storagePolicy:2];
  handlerCopy[2](handlerCopy, v14);
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__VUIURLImageLoader_URLSession_task_didCompleteWithError___block_invoke;
  v11[3] = &unk_279E22148;
  v12 = taskCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = taskCopy;
  [(VUIURLImageLoader *)self _executeOnProcessingQueue:v11];
}

void __58__VUIURLImageLoader_URLSession_task_didCompleteWithError___block_invoke(uint64_t a1, void *a2)
{
  v79[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) originalRequest];
  v5 = [v4 URL];

  v6 = [v3 taskOptionsByURL];
  v7 = [v6 objectForKey:v5];

  v8 = [v7 objectForKeyedSubscript:@"VUIURLImageLoaderTaskKey"];
  v9 = *(a1 + 32);

  if (v8 != v9)
  {
    v10 = 0;
    goto LABEL_45;
  }

  v50 = [v7 objectForKey:@"VUIURLImageLoaderTaskDecryptorKey"];
  v11 = [v7 objectForKey:@"VUIURLImageLoaderTaskReceivedDataKey"];
  v12 = [*(a1 + 32) response];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_7;
  }

  v13 = [*(a1 + 32) response];

  if (!v13)
  {
LABEL_7:
    v16 = VUICImageLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v5 absoluteString];
      *buf = 138412290;
      v73 = v17;
      _os_log_impl(&dword_270E6E000, v16, OS_LOG_TYPE_DEFAULT, "URLImageLoader returned a non-NSHTTPURLResponse with url [%@]", buf, 0xCu);
    }

    v15 = *(a1 + 40);
    if (v15)
    {
      v14 = 0;
    }

    else
    {
      v14 = 200;
    }

    goto LABEL_12;
  }

  v14 = [v13 statusCode];
  v15 = *(a1 + 40);

LABEL_12:
  v53 = a1;
  v54 = v3;
  v48 = v11;
  v49 = v7;
  if (v15 || (v14 - 400) <= 0xFFFFFFFFFFFFFF37)
  {
    if (v15)
    {
      v10 = v15;
    }

    else
    {
      v21 = MEMORY[0x277CCA9B8];
      v22 = *MEMORY[0x277CCA590];
      v78[0] = @"statusCode";
      [MEMORY[0x277CCABB0] numberWithInteger:{v14, v11}];
      v24 = v23 = v5;
      v79[0] = v24;
      v78[1] = *MEMORY[0x277CCA450];
      v25 = [MEMORY[0x277CCAA40] localizedStringForStatusCode:v14];
      v79[1] = v25;
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:2];
      v27 = v22;
      v3 = v54;
      v10 = [v21 errorWithDomain:v27 code:-18 userInfo:v26];

      v5 = v23;
    }

    v18 = VUICImageLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v28 = [*(v53 + 32) description];
      *buf = 138412802;
      v73 = v28;
      v74 = 2112;
      v75 = v5;
      v76 = 2112;
      v77 = v10;
      _os_log_impl(&dword_270E6E000, v18, OS_LOG_TYPE_INFO, "URLImageLoader Finished task %@ url %@ with error [%@]", buf, 0x20u);
    }

    v51 = 0;
  }

  else
  {
    v18 = v11;
    if ([v18 length])
    {
      if (v50)
      {
        v19 = [v50 decryptImageData:v18];

        if (v19)
        {
          v20 = [VUIImage imageWithData:v19];
          [v20 setRotationEnabled:{objc_msgSend(v3, "isImageRotationEnabled")}];
          v10 = 0;
          v18 = v19;
        }

        else
        {
          v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-18 userInfo:0];
          v18 = 0;
          v20 = 0;
        }
      }

      else
      {
        v20 = [VUIImage imageWithData:v18];
        [v20 setRotationEnabled:{objc_msgSend(v3, "isImageRotationEnabled")}];
        v10 = 0;
      }

      v29 = VUICImageLogObject();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v31 = [*(v53 + 32) description];
        *buf = 138412546;
        v73 = v31;
        v74 = 2112;
        v75 = v5;
        _os_log_impl(&dword_270E6E000, v29, OS_LOG_TYPE_INFO, "URLImageLoader Finished loading task %@ url %@", buf, 0x16u);
      }
    }

    else
    {
      v29 = VUICImageLogObject();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = [*(a1 + 32) description];
        *buf = 138412546;
        v73 = v30;
        v74 = 2112;
        v75 = v5;
        _os_log_impl(&dword_270E6E000, v29, OS_LOG_TYPE_INFO, "URLImageLoader Finished loading task %@ url %@ with no data", buf, 0x16u);
      }

      v20 = 0;
      v10 = 0;
    }

    v51 = v20;
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v32 = [v3 loadIDsByURL];
  v33 = [v32 objectForKeyedSubscript:v5];

  obj = v33;
  v34 = [v33 countByEnumeratingWithState:&v67 objects:v71 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v68;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v68 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v38 = *(*(&v67 + 1) + 8 * i);
        v39 = [v54 loadOptionsByID];
        v40 = [v39 objectForKeyedSubscript:v38];

        v41 = [v54 loadOptionsByID];
        [v41 removeObjectForKey:v38];

        v42 = [v40 objectForKey:@"VUIURLImageLoaderOptionsCompletionHandlerKey"];
        v43 = v42;
        if (v10)
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __58__VUIURLImageLoader_URLSession_task_didCompleteWithError___block_invoke_58;
          block[3] = &unk_279E21AD8;
          v66 = v42;
          v64 = *(v53 + 32);
          v65 = v10;
          dispatch_async(MEMORY[0x277D85CD0], block);

          v44 = &v64;
          v45 = &v66;
        }

        else if (v51)
        {
          v58[0] = MEMORY[0x277D85DD0];
          v58[1] = 3221225472;
          v58[2] = __58__VUIURLImageLoader_URLSession_task_didCompleteWithError___block_invoke_2;
          v58[3] = &unk_279E22170;
          v62 = v42;
          v59 = *(v53 + 32);
          v60 = v51;
          v61 = *(v53 + 40);
          dispatch_async(MEMORY[0x277D85CD0], v58);

          v44 = &v59;
          v45 = &v62;
        }

        else
        {
          v55[0] = MEMORY[0x277D85DD0];
          v55[1] = 3221225472;
          v55[2] = __58__VUIURLImageLoader_URLSession_task_didCompleteWithError___block_invoke_3;
          v55[3] = &unk_279E21A60;
          v57 = v42;
          v56 = *(v53 + 32);
          dispatch_async(MEMORY[0x277D85CD0], v55);
          v44 = &v56;
          v45 = &v57;
        }
      }

      v35 = [obj countByEnumeratingWithState:&v67 objects:v71 count:16];
    }

    while (v35);
  }

  v3 = v54;
  v46 = [v54 loadIDsByURL];
  [v46 removeObjectForKey:v5];

  v47 = [v54 taskOptionsByURL];
  [v47 removeObjectForKey:v5];

  v7 = v49;
LABEL_45:
}

void __58__VUIURLImageLoader_URLSession_task_didCompleteWithError___block_invoke_58(uint64_t a1)
{
  if (*(a1 + 48) && [*(a1 + 32) state] != 2)
  {
    v2 = *(a1 + 48);
    if (*(a1 + 40))
    {
      v3 = *(v2 + 16);
      v4 = *(a1 + 48);

      v3(v4, 0, 0, 0, 0);
    }

    else
    {
      v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-18 userInfo:0];
      (*(v2 + 16))(v2, 0, 0, 0, 0, v5);
    }
  }
}

uint64_t __58__VUIURLImageLoader_URLSession_task_didCompleteWithError___block_invoke_2(uint64_t result)
{
  if (*(result + 56))
  {
    v1 = result;
    result = [*(result + 32) state];
    if (result != 2)
    {
      v2 = *(*(v1 + 56) + 16);

      return v2();
    }
  }

  return result;
}

void __58__VUIURLImageLoader_URLSession_task_didCompleteWithError___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 40) && [*(a1 + 32) state] != 2)
  {
    v2 = *(a1 + 40);
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-18 userInfo:0];
    (*(v2 + 16))(v2, 0, 0, 0, 0, v3);
  }
}

@end
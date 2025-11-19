@interface TVURLImageLoader
+ (id)sharedInstance;
- (TVURLImageLoader)init;
- (id)URLForObject:(id)a3;
- (id)imageKeyForObject:(id)a3;
- (id)loadImageForObject:(id)a3 scaleToSize:(CGSize)a4 cropToFit:(BOOL)a5 imageDirection:(int64_t)a6 requestLoader:(id)a7 completionHandler:(id)a8;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 dataTask:(id)a4 willCacheResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)_executeOnProcessingQueue:(id)a3;
- (void)cancelLoad:(id)a3;
@end

@implementation TVURLImageLoader

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_3 != -1)
  {
    +[TVURLImageLoader sharedInstance];
  }

  v3 = sharedInstance_sSharedInstance;

  return v3;
}

uint64_t __34__TVURLImageLoader_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(TVURLImageLoader);
  v1 = sharedInstance_sSharedInstance;
  sharedInstance_sSharedInstance = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (TVURLImageLoader)init
{
  v16.receiver = self;
  v16.super_class = TVURLImageLoader;
  v2 = [(TVURLImageLoader *)&v16 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
    [v3 setHTTPMaximumConnectionsPerHost:4];
    [v3 setHTTPShouldUsePipelining:1];
    [v3 setWaitsForConnectivity:0];
    [v3 set_timingDataOptions:1];
    v4 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v3 delegate:v2 delegateQueue:0];
    session = v2->_session;
    v2->_session = v4;

    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"TVURLImageLoader (%p) processing queue", v2];
    v7 = dispatch_queue_create([v6 cStringUsingEncoding:4], 0);
    processingQueue = v2->_processingQueue;
    v2->_processingQueue = v7;

    v9 = [MEMORY[0x277CBEB38] dictionary];
    loadOptionsByID = v2->_loadOptionsByID;
    v2->_loadOptionsByID = v9;

    v11 = [MEMORY[0x277CBEB38] dictionary];
    loadIDsByURL = v2->_loadIDsByURL;
    v2->_loadIDsByURL = v11;

    v13 = [MEMORY[0x277CBEB38] dictionary];
    taskOptionsByURL = v2->_taskOptionsByURL;
    v2->_taskOptionsByURL = v13;
  }

  return v2;
}

- (void)_executeOnProcessingQueue:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(TVURLImageLoader *)self processingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__TVURLImageLoader__executeOnProcessingQueue___block_invoke;
  block[3] = &unk_279D6FE98;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

uint64_t __46__TVURLImageLoader__executeOnProcessingQueue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    WeakRetained = (*(*(a1 + 32) + 16))();
    v3 = v5;
  }

  return MEMORY[0x2821F96F8](WeakRetained, v3);
}

- (id)URLForObject:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 url];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (id)imageKeyForObject:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 absoluteString];
LABEL_5:
    v5 = v4;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 identifier];
    goto LABEL_5;
  }

  v6 = TVMLKitImageLogObject;
  if (os_log_type_enabled(TVMLKitImageLogObject, OS_LOG_TYPE_DEBUG))
  {
    [TVURLImageLoader imageKeyForObject:v6];
  }

  v5 = 0;
LABEL_9:
  v7 = [v5 tv_SHA256String];

  return v7;
}

- (id)loadImageForObject:(id)a3 scaleToSize:(CGSize)a4 cropToFit:(BOOL)a5 imageDirection:(int64_t)a6 requestLoader:(id)a7 completionHandler:(id)a8
{
  v64 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a7;
  v13 = a8;
  v14 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  v15 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [(TVURLImageLoader *)self session];
    v17 = [v16 dataTaskWithURL:v11];

    if (v17)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v49 = v15;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v43 = TVMLKitImageLogObject;
      if (os_log_type_enabled(TVMLKitImageLogObject, OS_LOG_TYPE_DEBUG))
      {
        [TVURLImageLoader loadImageForObject:v43 scaleToSize:? cropToFit:? imageDirection:? requestLoader:? completionHandler:?];
      }

      v27 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:0];
      (*(v13 + 2))(v13, 0, 0, 0, 0, v27);
      v17 = 0;
      v25 = 0;
      v15 = v49;
      goto LABEL_23;
    }

    v51 = self;
    v46 = v14;
    v47 = v13;
    v48 = v12;
    v28 = v11;
    v29 = objc_alloc(MEMORY[0x277CCAB70]);
    v30 = [v28 url];
    v31 = [v29 initWithURL:v30];

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v32 = [v28 headers];
    v33 = [v32 countByEnumeratingWithState:&v59 objects:v63 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v60;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v60 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = *(*(&v59 + 1) + 8 * i);
          v38 = [v28 headers];
          v39 = [v38 objectForKey:v37];
          [v31 setValue:v39 forHTTPHeaderField:v37];
        }

        v34 = [v32 countByEnumeratingWithState:&v59 objects:v63 count:16];
      }

      while (v34);
    }

    self = v51;
    v40 = [(TVURLImageLoader *)v51 session];
    v17 = [v40 dataTaskWithRequest:v31];

    v41 = [v28 decrypter];

    v15 = v49;
    if (v41)
    {
      v42 = [v28 decrypter];
      [v49 setObject:v42 forKey:@"TVURLImageLoaderTaskDecryptorKey"];
    }

    v13 = v47;
    v12 = v48;
    v14 = v46;
    if (v17)
    {
LABEL_3:
      v50 = self;
      v18 = [v17 originalRequest];
      v19 = [v18 URL];

      v20 = [MEMORY[0x277CCAD78] UUID];
      v21 = [v20 description];

      [v14 setObject:v21 forKey:@"TVURLImageLoaderOptionsIDKey"];
      [v14 setObject:v19 forKey:@"TVURLImageLoaderOptionsURLKey"];
      if (v13)
      {
        v22 = [v13 copy];
        [v14 setObject:v22 forKey:@"TVURLImageLoaderOptionsCompletionHandlerKey"];
      }

      [v15 setObject:v17 forKey:@"TVURLImageLoaderTaskKey"];
      v23 = [v12 recordForResource:3 withInitiator:2];
      if (v23)
      {
        [v15 setObject:v23 forKey:@"TVURLImageLoaderOptionsRequestRecordKey"];
      }

      v24 = [MEMORY[0x277CBEB28] data];
      [v15 setObject:v24 forKey:@"TVURLImageLoaderTaskReceivedDataKey"];

      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __108__TVURLImageLoader_loadImageForObject_scaleToSize_cropToFit_imageDirection_requestLoader_completionHandler___block_invoke;
      v52[3] = &unk_279D6FEC0;
      v25 = v21;
      v53 = v25;
      v54 = v14;
      v55 = v19;
      v17 = v17;
      v56 = v17;
      v57 = v15;
      v58 = v23;
      v26 = v23;
      v27 = v19;
      [(TVURLImageLoader *)v50 _executeOnProcessingQueue:v52];

LABEL_23:
      goto LABEL_24;
    }
  }

  v25 = 0;
LABEL_24:
  v44 = v25;

  return v25;
}

void __108__TVURLImageLoader_loadImageForObject_scaleToSize_cropToFit_imageDirection_requestLoader_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 40) copy];
  v5 = [v3 loadOptionsByID];
  [v5 setObject:v4 forKeyedSubscript:*(a1 + 32)];

  if (os_log_type_enabled(TVMLKitImageLogObject, OS_LOG_TYPE_DEBUG))
  {
    __108__TVURLImageLoader_loadImageForObject_scaleToSize_cropToFit_imageDirection_requestLoader_completionHandler___block_invoke_cold_1();
  }

  v6 = [v3 loadIDsByURL];
  v7 = [v6 objectForKeyedSubscript:*(a1 + 48)];

  if (!v7)
  {
    v7 = [MEMORY[0x277CBEB18] array];
    v8 = [v3 loadIDsByURL];
    [v8 setObject:v7 forKeyedSubscript:*(a1 + 48)];
  }

  [v7 addObject:*(a1 + 32)];
  if ([v7 count] == 1)
  {
    v9 = TVMLKitImageLogObject;
    if (os_log_type_enabled(TVMLKitImageLogObject, OS_LOG_TYPE_DEBUG))
    {
      __108__TVURLImageLoader_loadImageForObject_scaleToSize_cropToFit_imageDirection_requestLoader_completionHandler___block_invoke_cold_2(a1, v9);
    }

    v10 = [*(a1 + 64) copy];
    v11 = [v3 taskOptionsByURL];
    [v11 setObject:v10 forKeyedSubscript:*(a1 + 48)];

    [*(a1 + 56) resume];
    v12 = *(a1 + 72);
    v13 = [*(a1 + 56) originalRequest];
    [v12 willSendRequest:v13];
  }
}

- (void)cancelLoad:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __31__TVURLImageLoader_cancelLoad___block_invoke;
    v5[3] = &unk_279D6FEE8;
    v6 = v4;
    [(TVURLImageLoader *)self _executeOnProcessingQueue:v5];
  }
}

void __31__TVURLImageLoader_cancelLoad___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 loadOptionsByID];
  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  v7 = [v4 objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = [v3 loadOptionsByID];
    v9 = [v8 objectForKeyedSubscript:*v5];
    v10 = [v9 objectForKeyedSubscript:@"TVURLImageLoaderOptionsURLKey"];

    if (os_log_type_enabled(TVMLKitImageLogObject, OS_LOG_TYPE_DEBUG))
    {
      __31__TVURLImageLoader_cancelLoad___block_invoke_cold_1();
    }

    v11 = [v3 loadOptionsByID];
    [v11 removeObjectForKey:*v5];

    v12 = [v3 loadIDsByURL];
    v13 = [v12 objectForKeyedSubscript:v10];

    [v13 removeObject:*v5];
    if (![v13 count])
    {
      v14 = [v3 loadIDsByURL];
      [v14 removeObjectForKey:v10];

      v15 = [v3 taskOptionsByURL];
      v16 = [v15 objectForKeyedSubscript:v10];
      v17 = [v16 objectForKeyedSubscript:@"TVURLImageLoaderTaskKey"];

      v18 = [v3 taskOptionsByURL];
      [v18 removeObjectForKey:v10];

      v19 = TVMLKitImageLogObject;
      if (os_log_type_enabled(TVMLKitImageLogObject, OS_LOG_TYPE_DEBUG))
      {
        __31__TVURLImageLoader_cancelLoad___block_invoke_cold_2(v19);
      }

      [v17 cancel];
    }
  }
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __77__TVURLImageLoader_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke;
  v15[3] = &unk_279D6FF10;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v12 = v11;
  v13 = v10;
  v14 = v9;
  [(TVURLImageLoader *)self _executeOnProcessingQueue:v15];
}

void __77__TVURLImageLoader_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 originalRequest];
  v11 = [v5 URL];

  v6 = [v4 taskOptionsByURL];

  v7 = [v6 objectForKey:v11];
  v8 = [v7 objectForKey:@"TVURLImageLoaderOptionsRequestRecordKey"];

  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) _timingData];
  [v8 didReceiveResponse:v9 timingData:v10];

  (*(*(a1 + 48) + 16))();
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v7 = a4;
  v8 = a5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__TVURLImageLoader_URLSession_dataTask_didReceiveData___block_invoke;
  v11[3] = &unk_279D6FF38;
  v12 = v7;
  v13 = v8;
  v9 = v8;
  v10 = v7;
  [(TVURLImageLoader *)self _executeOnProcessingQueue:v11];
}

void __55__TVURLImageLoader_URLSession_dataTask_didReceiveData___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 originalRequest];
  v12 = [v5 URL];

  v6 = [v4 taskOptionsByURL];
  v7 = [v6 objectForKey:v12];
  v8 = [v7 objectForKey:@"TVURLImageLoaderTaskReceivedDataKey"];

  [v8 appendData:*(a1 + 40)];
  v9 = [v4 taskOptionsByURL];

  v10 = [v9 objectForKey:v12];
  v11 = [v10 objectForKey:@"TVURLImageLoaderOptionsRequestRecordKey"];

  [v11 didReceiveData:*(a1 + 40)];
}

- (void)URLSession:(id)a3 dataTask:(id)a4 willCacheResponse:(id)a5 completionHandler:(id)a6
{
  v7 = MEMORY[0x277CCA8F0];
  v8 = a6;
  v9 = a5;
  v10 = [v7 alloc];
  v11 = [v9 response];
  v12 = [v9 data];
  v13 = [v9 userInfo];

  v14 = [v10 initWithResponse:v11 data:v12 userInfo:v13 storagePolicy:2];
  v8[2](v8, v14);
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v7 = a4;
  v8 = a5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__TVURLImageLoader_URLSession_task_didCompleteWithError___block_invoke;
  v11[3] = &unk_279D6FF38;
  v12 = v7;
  v13 = v8;
  v9 = v8;
  v10 = v7;
  [(TVURLImageLoader *)self _executeOnProcessingQueue:v11];
}

void __57__TVURLImageLoader_URLSession_task_didCompleteWithError___block_invoke(uint64_t a1, void *a2)
{
  v79[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) originalRequest];
  v5 = [v4 URL];

  v6 = [v3 taskOptionsByURL];
  v7 = [v6 objectForKey:v5];

  v8 = [v7 objectForKeyedSubscript:@"TVURLImageLoaderTaskKey"];
  v9 = *(a1 + 32);

  if (v8 == v9)
  {
    v11 = [v7 objectForKey:@"TVURLImageLoaderOptionsRequestRecordKey"];
    v10 = [v7 objectForKey:@"TVURLImageLoaderTaskDecryptorKey"];
    v50 = [v7 objectForKey:@"TVURLImageLoaderTaskReceivedDataKey"];
    v12 = [*(a1 + 32) response];
    v13 = [v12 itunes_statusCode];

    v14 = *(a1 + 40);
    v51 = a1;
    v47 = v11;
    v48 = v7;
    v54 = (a1 + 32);
    v46 = v10;
    if (v14 || (v13 - 400) <= 0xFFFFFFFFFFFFFF37)
    {
      if (v14)
      {
        v10 = v14;
      }

      else
      {
        v18 = MEMORY[0x277CCA9B8];
        v19 = *MEMORY[0x277CCA590];
        v78[0] = @"statusCode";
        v20 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
        v79[0] = v20;
        v78[1] = *MEMORY[0x277CCA450];
        v21 = [MEMORY[0x277CCAA40] localizedStringForStatusCode:v13];
        v79[1] = v21;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:2];
        v23 = v22 = v11;
        v10 = [v18 errorWithDomain:v19 code:-18 userInfo:v23];

        v11 = v22;
      }

      [v11 didFailWithError:v10];
      v24 = TVMLKitImageLogObject;
      if (os_log_type_enabled(TVMLKitImageLogObject, OS_LOG_TYPE_DEBUG))
      {
        v43 = *v54;
        v44 = v24;
        v45 = [v43 description];
        *buf = 138412802;
        v73 = v45;
        v74 = 2112;
        v75 = v5;
        v76 = 2112;
        v77 = v10;
        _os_log_debug_impl(&dword_26CD9A000, v44, OS_LOG_TYPE_DEBUG, "URLImageLoader Finished task %@ url %@ with error [%@]", buf, 0x20u);
      }

      v52 = 0;
    }

    else
    {
      v15 = v50;
      if ([v15 length])
      {
        if (v10)
        {
          v16 = [v10 decryptImageData:v15];

          if (v16)
          {
            v17 = [TVImage imageWithData:v16];
            [v17 setRotationEnabled:{objc_msgSend(v3, "isImageRotationEnabled")}];
            v10 = 0;
            v15 = v16;
          }

          else
          {
            v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-18 userInfo:0];
            v15 = 0;
            v17 = 0;
          }
        }

        else
        {
          v17 = [TVImage imageWithData:v15];
          [v17 setRotationEnabled:{objc_msgSend(v3, "isImageRotationEnabled")}];
        }

        v26 = TVMLKitImageLogObject;
        if (os_log_type_enabled(TVMLKitImageLogObject, OS_LOG_TYPE_DEBUG))
        {
          __57__TVURLImageLoader_URLSession_task_didCompleteWithError___block_invoke_cold_1(v54, v26);
        }
      }

      else
      {
        v25 = TVMLKitImageLogObject;
        if (os_log_type_enabled(TVMLKitImageLogObject, OS_LOG_TYPE_DEBUG))
        {
          __57__TVURLImageLoader_URLSession_task_didCompleteWithError___block_invoke_cold_2(a1 + 32, v25);
        }

        v17 = 0;
        v10 = 0;
      }

      v52 = v17;
      [v11 didCompleteLoadingWithResponseBody:v15];
    }

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v27 = [v3 loadIDsByURL];
    v49 = v5;
    v28 = [v27 objectForKeyedSubscript:v5];

    obj = v28;
    v29 = [v28 countByEnumeratingWithState:&v67 objects:v71 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v68;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v68 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v33 = *(*(&v67 + 1) + 8 * i);
          v34 = [v3 loadOptionsByID];
          v35 = [v34 objectForKeyedSubscript:v33];

          v36 = [v3 loadOptionsByID];
          [v36 removeObjectForKey:v33];

          v37 = [v35 objectForKey:@"TVURLImageLoaderOptionsCompletionHandlerKey"];
          v38 = v37;
          if (v10)
          {
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __57__TVURLImageLoader_URLSession_task_didCompleteWithError___block_invoke_43;
            block[3] = &unk_279D6F9B8;
            v66 = v37;
            v64 = *v54;
            v65 = v10;
            dispatch_async(MEMORY[0x277D85CD0], block);

            v39 = &v64;
            v40 = &v66;
          }

          else if (v52)
          {
            v58[0] = MEMORY[0x277D85DD0];
            v58[1] = 3221225472;
            v58[2] = __57__TVURLImageLoader_URLSession_task_didCompleteWithError___block_invoke_2;
            v58[3] = &unk_279D6FF60;
            v62 = v37;
            v59 = *(v51 + 32);
            v60 = v52;
            v61 = *(v51 + 40);
            dispatch_async(MEMORY[0x277D85CD0], v58);

            v39 = &v59;
            v40 = &v62;
          }

          else
          {
            v55[0] = MEMORY[0x277D85DD0];
            v55[1] = 3221225472;
            v55[2] = __57__TVURLImageLoader_URLSession_task_didCompleteWithError___block_invoke_3;
            v55[3] = &unk_279D6F9E0;
            v57 = v37;
            v56 = *v54;
            dispatch_async(MEMORY[0x277D85CD0], v55);
            v39 = &v56;
            v40 = &v57;
          }
        }

        v30 = [obj countByEnumeratingWithState:&v67 objects:v71 count:16];
      }

      while (v30);
    }

    v41 = [v3 loadIDsByURL];
    v5 = v49;
    [v41 removeObjectForKey:v49];

    v42 = [v3 taskOptionsByURL];
    [v42 removeObjectForKey:v49];

    v7 = v48;
  }

  else
  {
    v10 = 0;
  }
}

void __57__TVURLImageLoader_URLSession_task_didCompleteWithError___block_invoke_43(uint64_t a1)
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

uint64_t __57__TVURLImageLoader_URLSession_task_didCompleteWithError___block_invoke_2(uint64_t result)
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

void __57__TVURLImageLoader_URLSession_task_didCompleteWithError___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 40) && [*(a1 + 32) state] != 2)
  {
    v2 = *(a1 + 40);
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-18 userInfo:0];
    (*(v2 + 16))(v2, 0, 0, 0, 0, v3);
  }
}

- (void)imageKeyForObject:(void *)a1 .cold.1(void *a1)
{
  v1 = a1;
  v2 = objc_opt_class();
  OUTLINED_FUNCTION_0_0(&dword_26CD9A000, v3, v4, "URLImageLoader cannot create key for object of type [%@]", v5, v6, v7, v8, 2u);
}

- (void)loadImageForObject:(void *)a1 scaleToSize:cropToFit:imageDirection:requestLoader:completionHandler:.cold.1(void *a1)
{
  v1 = a1;
  v2 = objc_opt_class();
  OUTLINED_FUNCTION_0_0(&dword_26CD9A000, v3, v4, "URLImageLoader cannot load image for object of type [%@]", v5, v6, v7, v8, 2u);
}

void __108__TVURLImageLoader_loadImageForObject_scaleToSize_cropToFit_imageDirection_requestLoader_completionHandler___block_invoke_cold_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_2_0() description];
  OUTLINED_FUNCTION_1_0(&dword_26CD9A000, v5, v6, "URLImageLoader Loading task %@ URL %@", v7, v8, v9, v10, 2u);
}

void __31__TVURLImageLoader_cancelLoad___block_invoke_cold_2(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2_0() description];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_26CD9A000, v4, v5, "URLImageLoader Canceling task %@ URL %@", v6, v7, v8, v9, v10);
}

void __57__TVURLImageLoader_URLSession_task_didCompleteWithError___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_2_0() description];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_26CD9A000, v5, v6, "URLImageLoader Finished loading task %@ url %@", v7, v8, v9, v10, v11);
}

void __57__TVURLImageLoader_URLSession_task_didCompleteWithError___block_invoke_cold_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_2_0() description];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_26CD9A000, v5, v6, "URLImageLoader Finished loading task %@ url %@ with no data", v7, v8, v9, v10, v11);
}

@end
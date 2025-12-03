@interface TPSURLSessionHandler
+ (id)sharedInstance;
- (TPSURLSessionHandler)init;
- (TPSURLSessionHandlerDelegate)delegate;
- (id)URLSessionManagerSessionConfiguration:(id)configuration;
- (id)URLSessionManagerSessionOperationQueue:(id)queue;
- (id)cacheControllerForDataType:(int64_t)type;
- (id)processJSONFormattedDataForCDSError:(id)error;
- (void)URLSessionManagerDidReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)sessionTask:(id)task didCompleteWithError:(id)error;
- (void)sessionTask:(id)task didFinishDownloadingToURL:(id)l;
- (void)sessionTask:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)sessionTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)sessionTask:(id)task willCacheResponse:(id)response completionHandler:(id)handler;
- (void)setCertificateFilePath:(id)path;
- (void)setPassphrase:(id)passphrase;
- (void)storeCachedResponseData:(id)data forSessionTask:(id)task;
@end

@implementation TPSURLSessionHandler

+ (id)sharedInstance
{
  if (sharedInstance_predicate_1 != -1)
  {
    +[TPSURLSessionHandler sharedInstance];
  }

  v3 = sharedInstance_gTPSURLSessionHandler;

  return v3;
}

uint64_t __38__TPSURLSessionHandler_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(TPSURLSessionHandler);
  v1 = sharedInstance_gTPSURLSessionHandler;
  sharedInstance_gTPSURLSessionHandler = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (TPSURLSessionHandler)init
{
  v3.receiver = self;
  v3.super_class = TPSURLSessionHandler;
  return [(TPSURLSessionHandler *)&v3 init];
}

- (void)setPassphrase:(id)passphrase
{
  passphraseCopy = passphrase;
  if (+[TPSCommonDefines isInternalDevice])
  {
    passphrase = self->_passphrase;
    p_passphrase = &self->_passphrase;
    if (![(NSString *)passphrase isEqualToString:passphraseCopy])
    {
      objc_storeStrong(p_passphrase, passphrase);
    }
  }
}

- (void)setCertificateFilePath:(id)path
{
  pathCopy = path;
  if (+[TPSCommonDefines isInternalDevice])
  {
    certificateFilePath = self->_certificateFilePath;
    p_certificateFilePath = &self->_certificateFilePath;
    if (![(NSString *)certificateFilePath isEqualToString:pathCopy])
    {
      objc_storeStrong(p_certificateFilePath, path);
    }
  }
}

- (id)cacheControllerForDataType:(int64_t)type
{
  if ((type - 1) > 2)
  {
    sharedInstance = 0;
  }

  else
  {
    sharedInstance = [(__objc2_class *)*off_1E8101830[type - 1] sharedInstance];
  }

  return sharedInstance;
}

- (id)URLSessionManagerSessionOperationQueue:(id)queue
{
  v3 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  [v3 setMaxConcurrentOperationCount:4];

  return v3;
}

- (id)URLSessionManagerSessionConfiguration:(id)configuration
{
  v3 = [MEMORY[0x1E696AF18] tps_urlCacheWithIdentifier:0 memoryCapacity:+[TPSURLSessionManager defaultURLCacheMemoryCapcity](TPSURLSessionManager diskCapacity:{"defaultURLCacheMemoryCapcity", configuration), +[TPSURLSessionManager defaultURLCacheDiskCapcity](TPSURLSessionManager, "defaultURLCacheDiskCapcity")}];
  [MEMORY[0x1E696AF18] setSharedURLCache:v3];
  defaultSessionConfiguration = [MEMORY[0x1E696AF80] defaultSessionConfiguration];
  [defaultSessionConfiguration setURLCache:v3];

  return defaultSessionConfiguration;
}

- (void)sessionTask:(id)task willCacheResponse:(id)response completionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  if (-[NSIndexSet containsIndex:](self->_excludeCachingDataTypes, "containsIndex:", [task dataType]))
  {
    v9 = responseCopy;
  }

  else
  {
    v9 = 0;
  }

  (handlerCopy)[2](handlerCopy, v9);
}

- (id)processJSONFormattedDataForCDSError:(id)error
{
  errorCopy = error;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [errorCopy objectForKeyedSubscript:@"errorDetail"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 objectForKey:@"errorCode"];
      integerValue = [v5 integerValue];

      v7 = [v4 objectForKey:@"errorMessage"];
      v8 = v7;
      v9 = 0;
      if (integerValue >= 1 && v7)
      {
        v9 = [MEMORY[0x1E696ABC0] errorWithDomain:v7 code:integerValue userInfo:0];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)storeCachedResponseData:(id)data forSessionTask:(id)task
{
  dataCopy = data;
  taskCopy = task;
  response = [taskCopy response];
  if (response)
  {
    underlyingSession = [taskCopy underlyingSession];
    configuration = [underlyingSession configuration];
    uRLCache = [configuration URLCache];

    v10 = objc_alloc(MEMORY[0x1E696AAF8]);
    v11 = v10;
    if (dataCopy)
    {
      v12 = [v10 initWithResponse:response data:dataCopy userInfo:0 storagePolicy:0];
    }

    else
    {
      data = [MEMORY[0x1E695DEF0] data];
      v12 = [v11 initWithResponse:response data:data userInfo:0 storagePolicy:0];
    }

    task = [taskCopy task];
    currentRequest = [task currentRequest];
    [uRLCache storeCachedResponse:v12 forRequest:currentRequest];
  }
}

- (void)sessionTask:(id)task didFinishDownloadingToURL:(id)l
{
  taskCopy = task;
  lCopy = l;
  dataType = [taskCopy dataType];
  v8 = [(TPSURLSessionHandler *)self cacheControllerForDataType:dataType];
  identifier = [taskCopy identifier];
  v10 = [v8 dataCacheForIdentifier:identifier];
  downloadTaskTotalBytes = [taskCopy downloadTaskTotalBytes];
  if (v8)
  {
    response = [taskCopy response];
    statusCode = [response statusCode];

    v14 = lCopy;
    if (statusCode == 200)
    {
      v15 = 0;
    }

    else
    {
      v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"TPSURLSessionError" code:statusCode userInfo:0];
    }

    v21 = dataType == 1 && v15 == 0;
    v22 = !v21;
    if (v21)
    {
      v19 = [v8 formattedDataWithFileURL:v14];
      v15 = [(TPSURLSessionHandler *)self processJSONFormattedDataForCDSError:v19];
    }

    else
    {
      v19 = 0;
    }

    if (v15)
    {
      [taskCopy setDataError:v15];
    }

    else
    {
      if ([(TPSURLSessionHandler *)self shouldCacheToDiskForSessionTask:taskCopy])
      {
        lastModified = [taskCopy lastModified];
        v24 = [v8 saveFileURL:v14 identifier:identifier fileSize:downloadTaskTotalBytes lastModified:lastModified dataCache:v10];

        v14 = v24;
      }

      if (v22)
      {
        v25 = [v8 formattedDataWithFileURL:v14];

        v19 = v25;
      }
    }

    v20 = 0;
  }

  else
  {
    v16 = MEMORY[0x1E695DEF0];
    path = [lCopy path];
    v18 = [v16 dataWithContentsOfFile:path];

    v19 = v18;
    v20 = v19;
  }

  response2 = [taskCopy response];
  if (response2)
  {
    v35 = v10;
    underlyingSession = [taskCopy underlyingSession];
    configuration = [underlyingSession configuration];
    uRLCache = [configuration URLCache];

    if (v20)
    {
      data = v20;
      v31 = objc_alloc(MEMORY[0x1E696AAF8]);
    }

    else
    {
      data = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:lCopy options:1 error:0];
      v31 = objc_alloc(MEMORY[0x1E696AAF8]);
      if (!data)
      {
        data = [MEMORY[0x1E695DEF0] data];
      }
    }

    v32 = [v31 initWithResponse:response2 data:data userInfo:0 storagePolicy:0];

    task = [taskCopy task];
    currentRequest = [task currentRequest];
    [uRLCache storeCachedResponse:v32 forRequest:currentRequest];

    v10 = v35;
  }

  [taskCopy setFormattedData:v19];
}

- (void)sessionTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  taskCopy = task;
  responseCopy = response;
  handlerCopy = handler;
  dataType = [taskCopy dataType];
  v12 = [(TPSURLSessionHandler *)self shouldCacheToDiskForSessionTask:taskCopy];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  v13 = responseCopy;
  [taskCopy setResponse:v13];
  task = [taskCopy task];
  currentRequest = [task currentRequest];
  v16 = [(TPSURLSessionHandler *)self respectCachingForRequest:currentRequest];

  if (!v12 || !v16)
  {

LABEL_12:
    if (v12)
    {
      v30 = 2;
    }

    else
    {
      v30 = 1;
    }

    goto LABEL_15;
  }

  allHeaderFields = [v13 allHeaderFields];
  v18 = [allHeaderFields objectForKeyedSubscript:@"Last-Modified"];

  [taskCopy setLastModified:v18];
  if (v18 && ![(NSIndexSet *)self->_excludeCachingDataTypes containsIndex:dataType])
  {
    v19 = [(TPSURLSessionHandler *)self cacheControllerForDataType:dataType];
    identifier = [taskCopy identifier];
    v21 = [v19 dataCacheForIdentifier:identifier];

    if (v21)
    {
      lastModified = [v21 lastModified];
      if ([lastModified isEqualToString:v18])
      {
        v23 = [v19 isDataCacheValid:v21];

        if (v23)
        {
          v24 = +[TPSLogger default];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            [TPSURLSessionHandler sessionTask:v21 didReceiveResponse:v24 completionHandler:?];
          }

          v25 = [v19 cacheFileURLForDataCache:v21];
          v26 = [v19 formattedDataWithFileURL:v25];
          [taskCopy setFormattedData:v26];

          v27 = 1;
          [taskCopy setIsCacheData:1];
          v33[0] = MEMORY[0x1E69E9820];
          v33[1] = 3221225472;
          v33[2] = __73__TPSURLSessionHandler_sessionTask_didReceiveResponse_completionHandler___block_invoke;
          v33[3] = &unk_1E8101390;
          v34 = v21;
          v35 = v19;
          v28 = v19;
          v29 = v21;
          dispatch_async(MEMORY[0x1E69E96A0], v33);

          goto LABEL_22;
        }
      }

      else
      {
      }
    }
  }

  if (dataType == 2)
  {
    allHeaderFields2 = [v13 allHeaderFields];
    v32 = [allHeaderFields2 objectForKeyedSubscript:@"Content-Type"];

    LOBYTE(allHeaderFields2) = [v32 containsString:@"text/html"];
    if (allHeaderFields2)
    {
      v27 = 0;
LABEL_22:
      v30 = 0;
      goto LABEL_16;
    }
  }

  else
  {
  }

  v30 = 2;
LABEL_15:
  v27 = 0;
LABEL_16:
  handlerCopy[2](handlerCopy, v30, v27);
}

uint64_t __73__TPSURLSessionHandler_sessionTask_didReceiveResponse_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF00] date];
  [*(a1 + 32) setUpdatedDate:v2];

  v3 = *(a1 + 40);

  return [v3 updateCache];
}

- (void)sessionTask:(id)task didCompleteWithError:(id)error
{
  v47 = *MEMORY[0x1E69E9840];
  taskCopy = task;
  errorCopy = error;
  task = [taskCopy task];
  if (!errorCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      response = [taskCopy response];
      statusCode = [response statusCode];

      response2 = [task response];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        response3 = [task response];
        allHeaderFields = [response3 allHeaderFields];
        v15 = [allHeaderFields objectForKeyedSubscript:@"Last-Modified"];
        [taskCopy setLastModified:v15];
      }

      else
      {
        response3 = 0;
      }

      dataTaskData = [taskCopy dataTaskData];
      task2 = [taskCopy task];
      originalRequest = [task2 originalRequest];

      v19 = [(TPSURLSessionHandler *)self respectCachingForRequest:originalRequest];
      if (taskCopy && v19 && [response3 statusCode] != 404 && objc_msgSend(response3, "statusCode") != 200 && originalRequest)
      {
        v40 = dataTaskData;
        mEMORY[0x1E696AF18] = [MEMORY[0x1E696AF18] sharedURLCache];
        v21 = [mEMORY[0x1E696AF18] cachedResponseForRequest:originalRequest];

        response4 = [v21 response];
        objc_opt_class();
        v23 = objc_opt_isKindOfClass();

        if (v23)
        {
          response5 = [v21 response];

          if ([response5 statusCode] == 200)
          {
            data = [v21 data];

            if (data)
            {
              statusCode = [response5 statusCode];
              v26 = +[TPSLogger data];
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                v27 = [originalRequest URL];
                *buf = 138412290;
                v46 = v27;
                _os_log_impl(&dword_1C00A7000, v26, OS_LOG_TYPE_DEFAULT, "Using cache data for request: %@", buf, 0xCu);
              }

              v28 = MEMORY[0x1E695DF88];
              data2 = [v21 data];
              v30 = [v28 dataWithData:data2];

              [taskCopy setDataTaskData:v30];
              [taskCopy setIsCacheData:v30 != 0];
              v40 = v30;
            }
          }
        }

        else
        {
          response5 = response3;
        }

        response3 = response5;
        dataTaskData = v40;
      }

      if (statusCode == 200)
      {
        v31 = 0;
        if (!taskCopy)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v31 = [MEMORY[0x1E696ABC0] errorWithDomain:@"TPSURLSessionError" code:statusCode userInfo:0];
        if (!taskCopy)
        {
LABEL_31:
          [taskCopy setDataError:v31];

          goto LABEL_32;
        }
      }

      if ([dataTaskData length])
      {
        dataType = [taskCopy dataType];
        dataError = [taskCopy dataError];

        if (!dataError || dataType == 1)
        {
          v34 = -[TPSURLSessionHandler cacheControllerForDataType:](self, "cacheControllerForDataType:", [taskCopy dataType]);
          v41 = dataTaskData;
          v35 = [v34 formattedDataWithData:dataTaskData];
          if (dataType == 1)
          {
            v36 = [(TPSURLSessionHandler *)self processJSONFormattedDataForCDSError:v35];

            v31 = v36;
          }

          if (v35)
          {
            [taskCopy setFormattedData:v35];
          }

          dataTaskData = v41;
        }
      }

      goto LABEL_31;
    }
  }

LABEL_32:
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__TPSURLSessionHandler_sessionTask_didCompleteWithError___block_invoke;
  block[3] = &unk_1E8101390;
  v43 = errorCopy;
  v44 = task;
  v37 = task;
  v38 = errorCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  v39 = *MEMORY[0x1E69E9840];
}

void __57__TPSURLSessionHandler_sessionTask_didCompleteWithError___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    if ([v2 code] != -999)
    {
      v3 = +[TPSLogger data];
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = [*(a1 + 40) currentRequest];
        v5 = [v4 URL];
        v6 = *(a1 + 32);
        *buf = 138412546;
        v12 = v5;
        v13 = 2112;
        v14 = v6;
        _os_log_impl(&dword_1C00A7000, v3, OS_LOG_TYPE_DEFAULT, "URLSession %@ failed with error, %@", buf, 0x16u);
      }

      v7 = +[TPSNetworkPathMonitor sharedMonitor];
      [v7 start];
    }

    v8 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v10 = +[TPSNetworkPathMonitor sharedMonitor];
    [v10 stop];
    v9 = *MEMORY[0x1E69E9840];
  }
}

- (void)URLSessionManagerDidReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  keys[1] = *MEMORY[0x1E69E9840];
  challengeCopy = challenge;
  handlerCopy = handler;
  if (+[TPSCommonDefines isInternalDevice](TPSCommonDefines, "isInternalDevice") && [challengeCopy previousFailureCount] < 4)
  {
    proposedCredential = [challengeCopy proposedCredential];
    protectionSpace = [challengeCopy protectionSpace];
    authenticationMethod = [protectionSpace authenticationMethod];
    if ([authenticationMethod isEqualToString:*MEMORY[0x1E696A940]])
    {
      host = [protectionSpace host];
      v12 = [host hasSuffix:@".apple.com"];

      if (v12)
      {
        if (self->_passphrase && self->_certificateFilePath)
        {
          v13 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:self->_certificateFilePath];
          if (v13)
          {
            v14 = *MEMORY[0x1E697B0B0];
            values = self->_passphrase;
            keys[0] = v14;
            v15 = CFDictionaryCreate(0, keys, &values, 1, 0, 0);
            items = 0;
            if (!SecPKCS12Import(v13, v15, &items))
            {
              ValueAtIndex = CFArrayGetValueAtIndex(items, 0);
              Value = CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x1E697B0B8]);
              v23 = 0;
              SecIdentityCopyCertificate(Value, &v23);
              v25 = v23;
              v18 = CFArrayCreate(0, &v25, 1, 0);
              v19 = [MEMORY[0x1E696AF30] credentialWithIdentity:Value certificates:v18 persistence:1];

              if (v18)
              {
                CFRelease(v18);
              }

              proposedCredential = v19;
            }

            if (v15)
            {
              CFRelease(v15);
            }
          }
        }
      }
    }

    if (proposedCredential)
    {
      v20 = 0;
      v21 = proposedCredential;
    }

    else
    {
      v20 = 1;
      v21 = 0;
    }

    (handlerCopy)[2](handlerCopy, v20, v21);
  }

  else
  {
    handlerCopy[2](handlerCopy, 3, 0);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)sessionTask:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  taskCopy = task;
  challengeCopy = challenge;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__TPSURLSessionHandler_sessionTask_didReceiveChallenge_completionHandler___block_invoke;
  block[3] = &unk_1E8101810;
  objc_copyWeak(&v18, &location);
  v16 = taskCopy;
  v17 = handlerCopy;
  v15 = challengeCopy;
  v11 = taskCopy;
  v12 = challengeCopy;
  v13 = handlerCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __74__TPSURLSessionHandler_sessionTask_didReceiveChallenge_completionHandler___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    if (+[TPSCommonDefines isInternalDevice])
    {
      goto LABEL_11;
    }

    v4 = 0;
LABEL_13:
    (*(a1[6] + 2))();
LABEL_22:

    goto LABEL_23;
  }

  v4 = objc_loadWeakRetained(WeakRetained + 2);
  if (!+[TPSCommonDefines isInternalDevice])
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v5 = [a1[4] protectionSpace];
    v6 = [v5 authenticationMethod];

    if (([v6 isEqualToString:*MEMORY[0x1E696A948]] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", *MEMORY[0x1E696A958]))
    {
      if ([a1[4] previousFailureCount] > 3)
      {
        if (objc_opt_respondsToSelector())
        {
          [v4 urlSessionHandlerURLAuthenticationFailed:v3];
        }

        (*(a1[6] + 2))();
      }

      else
      {
        v7 = [a1[4] proposedCredential];
        if (v7 && (v8 = v7, v9 = [a1[4] previousFailureCount], v8, v9 <= 1))
        {
          v10 = a1[6];
          v11 = [a1[4] proposedCredential];
          v10[2](v10, 0, v11);
        }

        else
        {
          v12 = [a1[5] task];
          v13 = [v12 currentRequest];
          v14 = [v13 URL];
          v15 = [v14 host];

          if (objc_opt_respondsToSelector())
          {
            v16[0] = MEMORY[0x1E69E9820];
            v16[1] = 3221225472;
            v16[2] = __74__TPSURLSessionHandler_sessionTask_didReceiveChallenge_completionHandler___block_invoke_2;
            v16[3] = &unk_1E81017E8;
            v17 = a1[6];
            [v4 urlSessionHandlerURL:v3 authenticateWithHost:v15 completionHandler:v16];
          }

          else
          {
            (*(a1[6] + 2))();
          }
        }
      }
    }

    goto LABEL_22;
  }

LABEL_11:
  (*(a1[6] + 2))();
LABEL_23:
}

void __74__TPSURLSessionHandler_sessionTask_didReceiveChallenge_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([v7 length] && objc_msgSend(v5, "length"))
  {
    v6 = [objc_alloc(MEMORY[0x1E696AF30]) initWithUser:v7 password:v5 persistence:2];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (TPSURLSessionHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)sessionTask:(void *)a1 didReceiveResponse:(NSObject *)a2 completionHandler:.cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 identifier];
  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_1C00A7000, a2, OS_LOG_TYPE_DEBUG, "Data cache Last-Modified did not change, cancel request and use cache %@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end
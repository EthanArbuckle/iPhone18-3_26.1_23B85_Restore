@interface TPSURLSessionHandler
+ (id)sharedInstance;
- (TPSURLSessionHandler)init;
- (TPSURLSessionHandlerDelegate)delegate;
- (id)URLSessionManagerSessionConfiguration:(id)a3;
- (id)URLSessionManagerSessionOperationQueue:(id)a3;
- (id)cacheControllerForDataType:(int64_t)a3;
- (id)processJSONFormattedDataForCDSError:(id)a3;
- (void)URLSessionManagerDidReceiveChallenge:(id)a3 completionHandler:(id)a4;
- (void)sessionTask:(id)a3 didCompleteWithError:(id)a4;
- (void)sessionTask:(id)a3 didFinishDownloadingToURL:(id)a4;
- (void)sessionTask:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
- (void)sessionTask:(id)a3 didReceiveResponse:(id)a4 completionHandler:(id)a5;
- (void)sessionTask:(id)a3 willCacheResponse:(id)a4 completionHandler:(id)a5;
- (void)setCertificateFilePath:(id)a3;
- (void)setPassphrase:(id)a3;
- (void)storeCachedResponseData:(id)a3 forSessionTask:(id)a4;
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

- (void)setPassphrase:(id)a3
{
  v7 = a3;
  if (+[TPSCommonDefines isInternalDevice])
  {
    passphrase = self->_passphrase;
    p_passphrase = &self->_passphrase;
    if (![(NSString *)passphrase isEqualToString:v7])
    {
      objc_storeStrong(p_passphrase, a3);
    }
  }
}

- (void)setCertificateFilePath:(id)a3
{
  v7 = a3;
  if (+[TPSCommonDefines isInternalDevice])
  {
    certificateFilePath = self->_certificateFilePath;
    p_certificateFilePath = &self->_certificateFilePath;
    if (![(NSString *)certificateFilePath isEqualToString:v7])
    {
      objc_storeStrong(p_certificateFilePath, a3);
    }
  }
}

- (id)cacheControllerForDataType:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(__objc2_class *)*off_1E8101830[a3 - 1] sharedInstance];
  }

  return v5;
}

- (id)URLSessionManagerSessionOperationQueue:(id)a3
{
  v3 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  [v3 setMaxConcurrentOperationCount:4];

  return v3;
}

- (id)URLSessionManagerSessionConfiguration:(id)a3
{
  v3 = [MEMORY[0x1E696AF18] tps_urlCacheWithIdentifier:0 memoryCapacity:+[TPSURLSessionManager defaultURLCacheMemoryCapcity](TPSURLSessionManager diskCapacity:{"defaultURLCacheMemoryCapcity", a3), +[TPSURLSessionManager defaultURLCacheDiskCapcity](TPSURLSessionManager, "defaultURLCacheDiskCapcity")}];
  [MEMORY[0x1E696AF18] setSharedURLCache:v3];
  v4 = [MEMORY[0x1E696AF80] defaultSessionConfiguration];
  [v4 setURLCache:v3];

  return v4;
}

- (void)sessionTask:(id)a3 willCacheResponse:(id)a4 completionHandler:(id)a5
{
  v10 = a4;
  v8 = a5;
  if (-[NSIndexSet containsIndex:](self->_excludeCachingDataTypes, "containsIndex:", [a3 dataType]))
  {
    v9 = v10;
  }

  else
  {
    v9 = 0;
  }

  (v8)[2](v8, v9);
}

- (id)processJSONFormattedDataForCDSError:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 objectForKeyedSubscript:@"errorDetail"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 objectForKey:@"errorCode"];
      v6 = [v5 integerValue];

      v7 = [v4 objectForKey:@"errorMessage"];
      v8 = v7;
      v9 = 0;
      if (v6 >= 1 && v7)
      {
        v9 = [MEMORY[0x1E696ABC0] errorWithDomain:v7 code:v6 userInfo:0];
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

- (void)storeCachedResponseData:(id)a3 forSessionTask:(id)a4
{
  v16 = a3;
  v5 = a4;
  v6 = [v5 response];
  if (v6)
  {
    v7 = [v5 underlyingSession];
    v8 = [v7 configuration];
    v9 = [v8 URLCache];

    v10 = objc_alloc(MEMORY[0x1E696AAF8]);
    v11 = v10;
    if (v16)
    {
      v12 = [v10 initWithResponse:v6 data:v16 userInfo:0 storagePolicy:0];
    }

    else
    {
      v13 = [MEMORY[0x1E695DEF0] data];
      v12 = [v11 initWithResponse:v6 data:v13 userInfo:0 storagePolicy:0];
    }

    v14 = [v5 task];
    v15 = [v14 currentRequest];
    [v9 storeCachedResponse:v12 forRequest:v15];
  }
}

- (void)sessionTask:(id)a3 didFinishDownloadingToURL:(id)a4
{
  v36 = a3;
  v6 = a4;
  v7 = [v36 dataType];
  v8 = [(TPSURLSessionHandler *)self cacheControllerForDataType:v7];
  v9 = [v36 identifier];
  v10 = [v8 dataCacheForIdentifier:v9];
  v11 = [v36 downloadTaskTotalBytes];
  if (v8)
  {
    v12 = [v36 response];
    v13 = [v12 statusCode];

    v14 = v6;
    if (v13 == 200)
    {
      v15 = 0;
    }

    else
    {
      v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"TPSURLSessionError" code:v13 userInfo:0];
    }

    v21 = v7 == 1 && v15 == 0;
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
      [v36 setDataError:v15];
    }

    else
    {
      if ([(TPSURLSessionHandler *)self shouldCacheToDiskForSessionTask:v36])
      {
        v23 = [v36 lastModified];
        v24 = [v8 saveFileURL:v14 identifier:v9 fileSize:v11 lastModified:v23 dataCache:v10];

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
    v17 = [v6 path];
    v18 = [v16 dataWithContentsOfFile:v17];

    v19 = v18;
    v20 = v19;
  }

  v26 = [v36 response];
  if (v26)
  {
    v35 = v10;
    v27 = [v36 underlyingSession];
    v28 = [v27 configuration];
    v29 = [v28 URLCache];

    if (v20)
    {
      v30 = v20;
      v31 = objc_alloc(MEMORY[0x1E696AAF8]);
    }

    else
    {
      v30 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v6 options:1 error:0];
      v31 = objc_alloc(MEMORY[0x1E696AAF8]);
      if (!v30)
      {
        v30 = [MEMORY[0x1E695DEF0] data];
      }
    }

    v32 = [v31 initWithResponse:v26 data:v30 userInfo:0 storagePolicy:0];

    v33 = [v36 task];
    v34 = [v33 currentRequest];
    [v29 storeCachedResponse:v32 forRequest:v34];

    v10 = v35;
  }

  [v36 setFormattedData:v19];
}

- (void)sessionTask:(id)a3 didReceiveResponse:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 dataType];
  v12 = [(TPSURLSessionHandler *)self shouldCacheToDiskForSessionTask:v8];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  v13 = v9;
  [v8 setResponse:v13];
  v14 = [v8 task];
  v15 = [v14 currentRequest];
  v16 = [(TPSURLSessionHandler *)self respectCachingForRequest:v15];

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

  v17 = [v13 allHeaderFields];
  v18 = [v17 objectForKeyedSubscript:@"Last-Modified"];

  [v8 setLastModified:v18];
  if (v18 && ![(NSIndexSet *)self->_excludeCachingDataTypes containsIndex:v11])
  {
    v19 = [(TPSURLSessionHandler *)self cacheControllerForDataType:v11];
    v20 = [v8 identifier];
    v21 = [v19 dataCacheForIdentifier:v20];

    if (v21)
    {
      v22 = [v21 lastModified];
      if ([v22 isEqualToString:v18])
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
          [v8 setFormattedData:v26];

          v27 = 1;
          [v8 setIsCacheData:1];
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

  if (v11 == 2)
  {
    v31 = [v13 allHeaderFields];
    v32 = [v31 objectForKeyedSubscript:@"Content-Type"];

    LOBYTE(v31) = [v32 containsString:@"text/html"];
    if (v31)
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
  v10[2](v10, v30, v27);
}

uint64_t __73__TPSURLSessionHandler_sessionTask_didReceiveResponse_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF00] date];
  [*(a1 + 32) setUpdatedDate:v2];

  v3 = *(a1 + 40);

  return [v3 updateCache];
}

- (void)sessionTask:(id)a3 didCompleteWithError:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 task];
  if (!v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v6 response];
      v10 = [v9 statusCode];

      v11 = [v8 response];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v13 = [v8 response];
        v14 = [v13 allHeaderFields];
        v15 = [v14 objectForKeyedSubscript:@"Last-Modified"];
        [v6 setLastModified:v15];
      }

      else
      {
        v13 = 0;
      }

      v16 = [v6 dataTaskData];
      v17 = [v6 task];
      v18 = [v17 originalRequest];

      v19 = [(TPSURLSessionHandler *)self respectCachingForRequest:v18];
      if (v6 && v19 && [v13 statusCode] != 404 && objc_msgSend(v13, "statusCode") != 200 && v18)
      {
        v40 = v16;
        v20 = [MEMORY[0x1E696AF18] sharedURLCache];
        v21 = [v20 cachedResponseForRequest:v18];

        v22 = [v21 response];
        objc_opt_class();
        v23 = objc_opt_isKindOfClass();

        if (v23)
        {
          v24 = [v21 response];

          if ([v24 statusCode] == 200)
          {
            v25 = [v21 data];

            if (v25)
            {
              v10 = [v24 statusCode];
              v26 = +[TPSLogger data];
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                v27 = [v18 URL];
                *buf = 138412290;
                v46 = v27;
                _os_log_impl(&dword_1C00A7000, v26, OS_LOG_TYPE_DEFAULT, "Using cache data for request: %@", buf, 0xCu);
              }

              v28 = MEMORY[0x1E695DF88];
              v29 = [v21 data];
              v30 = [v28 dataWithData:v29];

              [v6 setDataTaskData:v30];
              [v6 setIsCacheData:v30 != 0];
              v40 = v30;
            }
          }
        }

        else
        {
          v24 = v13;
        }

        v13 = v24;
        v16 = v40;
      }

      if (v10 == 200)
      {
        v31 = 0;
        if (!v6)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v31 = [MEMORY[0x1E696ABC0] errorWithDomain:@"TPSURLSessionError" code:v10 userInfo:0];
        if (!v6)
        {
LABEL_31:
          [v6 setDataError:v31];

          goto LABEL_32;
        }
      }

      if ([v16 length])
      {
        v32 = [v6 dataType];
        v33 = [v6 dataError];

        if (!v33 || v32 == 1)
        {
          v34 = -[TPSURLSessionHandler cacheControllerForDataType:](self, "cacheControllerForDataType:", [v6 dataType]);
          v41 = v16;
          v35 = [v34 formattedDataWithData:v16];
          if (v32 == 1)
          {
            v36 = [(TPSURLSessionHandler *)self processJSONFormattedDataForCDSError:v35];

            v31 = v36;
          }

          if (v35)
          {
            [v6 setFormattedData:v35];
          }

          v16 = v41;
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
  v43 = v7;
  v44 = v8;
  v37 = v8;
  v38 = v7;
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

- (void)URLSessionManagerDidReceiveChallenge:(id)a3 completionHandler:(id)a4
{
  keys[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (+[TPSCommonDefines isInternalDevice](TPSCommonDefines, "isInternalDevice") && [v6 previousFailureCount] < 4)
  {
    v8 = [v6 proposedCredential];
    v9 = [v6 protectionSpace];
    v10 = [v9 authenticationMethod];
    if ([v10 isEqualToString:*MEMORY[0x1E696A940]])
    {
      v11 = [v9 host];
      v12 = [v11 hasSuffix:@".apple.com"];

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

              v8 = v19;
            }

            if (v15)
            {
              CFRelease(v15);
            }
          }
        }
      }
    }

    if (v8)
    {
      v20 = 0;
      v21 = v8;
    }

    else
    {
      v20 = 1;
      v21 = 0;
    }

    (v7)[2](v7, v20, v21);
  }

  else
  {
    v7[2](v7, 3, 0);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)sessionTask:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__TPSURLSessionHandler_sessionTask_didReceiveChallenge_completionHandler___block_invoke;
  block[3] = &unk_1E8101810;
  objc_copyWeak(&v18, &location);
  v16 = v8;
  v17 = v10;
  v15 = v9;
  v11 = v8;
  v12 = v9;
  v13 = v10;
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
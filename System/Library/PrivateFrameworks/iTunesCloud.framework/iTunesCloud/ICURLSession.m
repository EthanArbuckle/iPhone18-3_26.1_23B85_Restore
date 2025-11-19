@interface ICURLSession
- (ICURLSession)init;
- (ICURLSession)initWithConfiguration:(id)a3 maxConcurrentRequests:(unint64_t)a4 qualityOfService:(int64_t)a5;
- (double)_timeoutForRequest:(id)a3;
- (id)_createURLSessionTaskForRequest:(id)a3 usingSession:(id)a4;
- (id)_newResponseForRequest:(id)a3;
- (id)_requestForTask:(id)a3;
- (void)URLSession:(id)a3 avAssetDownloadTask:(id)a4 didReceiveAVAssetDownloadToken:(unint64_t)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7;
- (void)_checkRequestTimeouts;
- (void)_enqueueRequest:(id)a3;
- (void)_finishRequest:(id)a3;
- (void)_processPendingRequests;
- (void)_processRequest:(id)a3;
- (void)_scheduleNextRequestTimeoutCheck;
- (void)_updateProgressForSessionTask:(id)a3 withTotalBytesWritten:(int64_t)a4 totalBytesExpectedToWrite:(int64_t)a5;
- (void)cancelPendingRequestsWithError:(id)a3;
- (void)cancelRequest:(id)a3;
- (void)cancelRequest:(id)a3 withError:(id)a4;
- (void)dealloc;
- (void)enqueueDataRequest:(id)a3 withCompletionHandler:(id)a4;
- (void)enqueueDownloadRequest:(id)a3 toDestination:(id)a4 withCompletionHandler:(id)a5;
- (void)enqueueDownloadRequest:(id)a3 withCompletionHandler:(id)a4;
- (void)enqueueUploadRequest:(id)a3 withCompletionHandler:(id)a4;
- (void)pause;
- (void)pauseRequest:(id)a3;
- (void)resume;
- (void)resumeRequest:(id)a3;
@end

@implementation ICURLSession

void __39__ICURLSession__processPendingRequests__block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  ++*(*(a1 + 32) + 32);
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v4 = [*(v2 + 40) copy];
  v5 = [*(*(a1 + 32) + 48) copy];
  v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 138543618;
    v38 = v7;
    v39 = 2048;
    v40 = v3;
    _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Checking request queue (counter = %lu).", buf, 0x16u);
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__ICURLSession__processPendingRequests__block_invoke_60;
  block[3] = &unk_1E7BF51E8;
  block[4] = v8;
  v35 = v3;
  v10 = v5;
  v33 = v10;
  v11 = v4;
  v34 = v11;
  dispatch_async(v9, block);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = *(*(a1 + 32) + 48);
  v13 = [v12 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v29;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(v12);
        }

        if ([*(*(&v28 + 1) + 8 * i) requestState] != 2)
        {
          ++v15;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }

  v18 = 0;
  if ([*(*(a1 + 32) + 40) count])
  {
    while (1)
    {
      v19 = [*(*(a1 + 32) + 40) objectAtIndex:{v18, v28}];
      v20 = v19;
      v21 = *(a1 + 32);
      if ((*(v21 + 64) & 1) == 0 && v15 < *(v21 + 88))
      {
        break;
      }

      if ([v19 prioritize])
      {
        break;
      }

      if (++v18 >= [*(*(a1 + 32) + 40) count])
      {
        goto LABEL_21;
      }
    }
  }

LABEL_21:
  if (v18 < [*(*(a1 + 32) + 40) count])
  {
    v22 = [*(*(a1 + 32) + 40) objectAtIndex:v18];
    v23 = *(*(a1 + 40) + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = v22;

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    [*(*(*(a1 + 40) + 8) + 40) setLastUpdateTime:?];
    v25 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(a1 + 32);
      v27 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138543618;
      v38 = v26;
      v39 = 2114;
      v40 = v27;
      _os_log_impl(&dword_1B4491000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ Activating request %{public}@", buf, 0x16u);
    }

    [*(*(a1 + 32) + 40) removeObject:*(*(*(a1 + 40) + 8) + 40)];
    [*(*(a1 + 32) + 48) addObject:*(*(*(a1 + 40) + 8) + 40)];
    *(*(*(a1 + 48) + 8) + 24) = 1;
    [*(a1 + 32) _processRequest:*(*(*(a1 + 40) + 8) + 40)];
  }
}

void __39__ICURLSession__processPendingRequests__block_invoke_60(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v6 = a1[6];
    v5 = a1[7];
    v7 = 138544130;
    v8 = v3;
    v9 = 2048;
    v10 = v5;
    v11 = 2114;
    v12 = v4;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Request queue state for counter = %lu: _activeRequests = %{public}@, _pendingRequests = %{public}@", &v7, 0x2Au);
  }
}

- (void)_processPendingRequests
{
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = __Block_byref_object_copy__10613;
  v9[4] = __Block_byref_object_dispose__10614;
  v10 = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__ICURLSession__processPendingRequests__block_invoke;
  block[3] = &unk_1E7BF9BE8;
  block[4] = self;
  block[5] = v9;
  block[6] = &v5;
  dispatch_sync(accessQueue, block);
  if (*(v6 + 24) == 1)
  {
    [(ICURLSession *)self _processPendingRequests];
  }

  _Block_object_dispose(&v5, 8);
  _Block_object_dispose(v9, 8);
}

- (void)_scheduleNextRequestTimeoutCheck
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__ICURLSession__scheduleNextRequestTimeoutCheck__block_invoke;
  block[3] = &unk_1E7BFA300;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

void __48__ICURLSession__scheduleNextRequestTimeoutCheck__block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v2 = *(*(a1 + 32) + 48);
  v3 = [v2 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v23;
    v6 = 3.40282347e38;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        if ([v8 requestState] != 2)
        {
          [*(a1 + 32) _timeoutForRequest:v8];
          if (v9 != 0.0)
          {
            v10 = v9;
            [v8 lastUpdateTime];
            if (v10 + v11 < v6)
            {
              [v8 lastUpdateTime];
              v6 = v10 + v12;
            }
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v4);

    if (v6 != 3.40282347e38)
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v14 = v6 - v13;
      v15 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 32);
        *buf = 138543618;
        v27 = v16;
        v28 = 2048;
        v29 = v14;
        _os_log_impl(&dword_1B4491000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Scheduling next timeout check in %.2fs", buf, 0x16u);
      }

      v17 = *(*(a1 + 32) + 72);
      v18 = dispatch_time(0, (v14 * 1000000000.0));
      v19 = v17;
      goto LABEL_20;
    }
  }

  else
  {
  }

  v20 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(a1 + 32);
    *buf = 138543362;
    v27 = v21;
    _os_log_impl(&dword_1B4491000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ Canceling timeout timer", buf, 0xCu);
  }

  v19 = *(*(a1 + 32) + 72);
  v18 = -1;
LABEL_20:
  dispatch_source_set_timer(v19, v18, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
}

- (void)_updateProgressForSessionTask:(id)a3 withTotalBytesWritten:(int64_t)a4 totalBytesExpectedToWrite:(int64_t)a5
{
  v8 = a3;
  accessQueue = self->_accessQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __94__ICURLSession__updateProgressForSessionTask_withTotalBytesWritten_totalBytesExpectedToWrite___block_invoke;
  v11[3] = &unk_1E7BF4E18;
  v11[4] = self;
  v12 = v8;
  v13 = a5;
  v14 = a4;
  v10 = v8;
  dispatch_sync(accessQueue, v11);
}

void __94__ICURLSession__updateProgressForSessionTask_withTotalBytesWritten_totalBytesExpectedToWrite___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _requestForTask:*(a1 + 40)];
  if (v2)
  {
    v11 = v2;
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v4 = v3;
    if (*(a1 + 48) >= 1)
    {
      v5 = [v11 progress];
      v6 = [v5 totalUnitCount];
      v7 = *(a1 + 48) + 1;

      if (v6 != v7)
      {
        v8 = [v11 progress];
        [v8 setTotalUnitCount:*(a1 + 48) + 1];
      }

      [v11 lastProgressUpdateTime];
      if (v4 - v9 > 0.5)
      {
        v10 = [v11 progress];
        [v10 setCompletedUnitCount:*(a1 + 56) + 1];

        [v11 setLastProgressUpdateTime:v4];
      }
    }

    [v11 setLastUpdateTime:v4];
    v2 = v11;
  }
}

- (double)_timeoutForRequest:(id)a3
{
  v4 = [a3 currentURLRequest];
  [v4 timeoutInterval];
  v6 = v5;

  if (v6 == 0.0)
  {
    v7 = [(NSURLSession *)self->_urlSession configuration];
    [v7 timeoutIntervalForRequest];
    v6 = v8;
  }

  return v6 + v6;
}

- (void)_checkRequestTimeouts
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__ICURLSession__checkRequestTimeouts__block_invoke;
  block[3] = &unk_1E7BFA300;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

void __37__ICURLSession__checkRequestTimeouts__block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v29 = v3;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Checking for timeouts", buf, 0xCu);
  }

  v4 = [*(*(a1 + 32) + 48) copy];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = 0;
    v10 = 0;
    v11 = *v25;
    *&v7 = 138543618;
    v23 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        if ([v13 requestState] != 2)
        {
          [*(a1 + 32) _timeoutForRequest:v13];
          if (v14 == 0.0 || (v15 = v14, [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate], v17 = v16, objc_msgSend(v13, "lastUpdateTime"), v17 <= v15 + v18))
          {
            v9 = 1;
          }

          else
          {
            v19 = os_log_create("com.apple.amp.iTunesCloud", "Default");
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              v20 = *(a1 + 32);
              *buf = v23;
              v29 = v20;
              v30 = 2114;
              v31 = v13;
              _os_log_impl(&dword_1B4491000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ timing out request %{public}@", buf, 0x16u);
            }

            v21 = *(a1 + 32);
            v22 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7003 userInfo:0];
            [v21 cancelRequest:v13 withError:v22];

            v9 = 1;
            v10 = 1;
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v8);

    if (!(v10 & 1 | ((v9 & 1) == 0)))
    {
      [*(a1 + 32) _scheduleNextRequestTimeoutCheck];
    }
  }

  else
  {
  }
}

- (id)_newResponseForRequest:(id)a3
{
  v3 = a3;
  v4 = [v3 type];
  if (v4 > 5)
  {
    v12 = 0;
  }

  else
  {
    if (((1 << v4) & 0x3A) != 0)
    {
      v5 = objc_alloc([objc_opt_class() _responseClass]);
      v6 = [v3 urlResponse];
      v7 = [v3 currentURLRequest];
      v8 = [v3 responseDataURL];
      v9 = [v3 aggregatedPerformanceMetrics];
      v10 = [v5 initWithURLResponse:v6 urlRequest:v7 bodyDataURL:v8 performanceMetrics:v9];
    }

    else
    {
      v11 = objc_alloc([objc_opt_class() _responseClass]);
      v6 = [v3 urlResponse];
      v7 = [v3 currentURLRequest];
      v8 = [v3 responseData];
      v9 = [v3 aggregatedPerformanceMetrics];
      v10 = [v11 initWithURLResponse:v6 urlRequest:v7 bodyData:v8 performanceMetrics:v9];
    }

    v12 = v10;
  }

  return v12;
}

- (id)_createURLSessionTaskForRequest:(id)a3 usingSession:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 type];
  if (v9 <= 1)
  {
    if (!v9)
    {
      v10 = [v7 currentURLRequest];
      v11 = [v8 dataTaskWithRequest:v10];
      goto LABEL_10;
    }

    if (v9 == 1)
    {
      v10 = [v7 currentURLRequest];
      v11 = [v8 downloadTaskWithRequest:v10];
LABEL_10:
      v12 = v11;
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (v9 != 2)
  {
    if (v9 == 4)
    {
      v10 = [v7 resumeData];
      v11 = [v8 downloadTaskWithResumeData:v10];
      goto LABEL_10;
    }

LABEL_8:
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"ICURLSession.m" lineNumber:756 description:{@"unsupported request type %d", objc_msgSend(v7, "type")}];
    v12 = 0;
    goto LABEL_12;
  }

  v10 = [v7 currentURLRequest];
  v13 = [v7 currentURLRequest];
  v14 = [v13 HTTPBody];
  v12 = [v8 uploadTaskWithRequest:v10 fromData:v14];

LABEL_12:

  return v12;
}

- (id)_requestForTask:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_accessQueue);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_activeRequests;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 task];
        v11 = [v10 taskIdentifier];
        v12 = [v4 taskIdentifier];

        if (v11 == v12)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)_finishRequest:(id)a3
{
  v4 = a3;
  operationQueue = self->_operationQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__ICURLSession__finishRequest___block_invoke;
  v7[3] = &unk_1E7BFA078;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(operationQueue, v7);
}

void __31__ICURLSession__finishRequest___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateState:3];
  v2 = [*(a1 + 32) currentURLRequest];
  v3 = [*(a1 + 40) _newResponseForRequest:*(a1 + 32)];
  v4 = [*(a1 + 32) responseHandler];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __31__ICURLSession__finishRequest___block_invoke_2;
  v9[3] = &unk_1E7BF4DF0;
  v8 = *(a1 + 32);
  v5 = v8.i64[0];
  v10 = vextq_s8(v8, v8, 8uLL);
  v11 = v3;
  v12 = v2;
  v6 = v2;
  v7 = v3;
  [v4 processCompletedResponse:v7 toRequest:v5 withCompletionHandler:v9];

  [*(a1 + 40) _scheduleNextRequestTimeoutCheck];
}

void __31__ICURLSession__finishRequest___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__ICURLSession__finishRequest___block_invoke_3;
  block[3] = &unk_1E7BF4DC8;
  v19 = a2;
  v13 = *(a1 + 40);
  v14 = v7;
  v15 = *(a1 + 32);
  v16 = *(a1 + 48);
  v17 = v8;
  v18 = *(a1 + 56);
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, block);
}

void __31__ICURLSession__finishRequest___block_invoke_3(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 80);
  if ((v2 - 1) > 1)
  {
LABEL_11:
    v18 = [*(a1 + 32) completionHandler];
    v18[2](v18, *(a1 + 56), *(a1 + 64));

    [*(a1 + 32) setCompletionHandler:0];
    goto LABEL_12;
  }

  v3 = 0.0;
  if (v2 != 1)
  {
    [*(a1 + 32) retryDelay];
    v3 = v4;
  }

  v5 = [*(a1 + 32) _retryCountForReason:*(a1 + 40)];
  v6 = [*(a1 + 32) _maxRetryCountForReason:*(a1 + 40)];
  v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v5 >= v6)
  {
    if (v8)
    {
      v16 = *(a1 + 40);
      v15 = *(a1 + 48);
      v17 = *(a1 + 32);
      *buf = 138544386;
      v30 = v15;
      v31 = 2114;
      v32 = v17;
      v33 = 2114;
      v34 = v16;
      v35 = 2048;
      v36 = v5;
      v37 = 2048;
      v38 = v6;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ rejecting retry for request %{public}@ (retryReason = %{public}@, retryCount = %lu, maxRetryCount = %lu)", buf, 0x34u);
    }

    goto LABEL_11;
  }

  if (v8)
  {
    v10 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11 = *(a1 + 32);
    *buf = 138544642;
    v30 = v9;
    v31 = 2114;
    v32 = v11;
    v33 = 2048;
    v34 = v3;
    v35 = 2114;
    v36 = v10;
    v37 = 2048;
    v38 = v5;
    v39 = 2048;
    v40 = v6;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ retrying request %{public}@ in %f seconds (retryReason = %{public}@, retryCount = %lu, maxRetryCount = %lu)", buf, 0x3Eu);
  }

  v12 = dispatch_time(0, (v3 * 1000000000.0));
  v13 = *(a1 + 48);
  v14 = *(v13 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__ICURLSession__finishRequest___block_invoke_64;
  block[3] = &unk_1E7BFA178;
  block[4] = v13;
  v27 = *(a1 + 32);
  v28 = *(a1 + 40);
  dispatch_after(v12, v14, block);

LABEL_12:
  [*(a1 + 48) _processPendingRequests];
  v19 = +[ICDeviceInfo currentDeviceInfo];
  v20 = [v19 isInternalBuild];

  if (v20)
  {
    v21 = +[ICHTTPArchive sharedArchive];
    v22 = *(a1 + 72);
    v23 = [*(a1 + 56) urlResponse];
    v24 = [*(a1 + 56) bodyData];
    v25 = [*(a1 + 56) performanceMetrics];
    [v21 archiveRequest:v22 withResponse:v23 responseData:v24 performanceMetrics:v25];
  }
}

void __31__ICURLSession__finishRequest___block_invoke_64(id *a1)
{
  v2 = *(a1[4] + 1);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__ICURLSession__finishRequest___block_invoke_2_65;
  block[3] = &unk_1E7BFA178;
  v6 = a1[5];
  v3 = a1[6];
  v4 = a1[4];
  v7 = v3;
  v8 = v4;
  dispatch_sync(v2, block);
  [a1[4] _processPendingRequests];
}

uint64_t __31__ICURLSession__finishRequest___block_invoke_2_65(uint64_t a1)
{
  [*(a1 + 32) setError:0];
  v2 = [*(a1 + 32) task];
  [v2 cancel];

  [*(a1 + 32) setTask:0];
  [*(a1 + 32) setCurrentURLRequest:0];
  [*(a1 + 32) setHandlingType:0];
  [*(a1 + 32) setRetryReason:0];
  [*(a1 + 32) _incrementRetryCountForReason:*(a1 + 40)];
  [*(a1 + 32) updateState:0];
  v3 = *(*(a1 + 48) + 40);
  v4 = *(a1 + 32);

  return [v3 addObject:v4];
}

- (void)_processRequest:(id)a3
{
  v4 = a3;
  operationQueue = self->_operationQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__ICURLSession__processRequest___block_invoke;
  v7[3] = &unk_1E7BFA078;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(operationQueue, v7);
}

void __32__ICURLSession__processRequest___block_invoke(int8x16_t *a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __32__ICURLSession__processRequest___block_invoke_2;
  v2[3] = &unk_1E7BF4DA0;
  v1 = a1[2];
  v3 = vextq_s8(v1, v1, 8uLL);
  [v1.i64[0] buildURLRequestWithCompletionHandler:v2];
}

void __32__ICURLSession__processRequest___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 16);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __32__ICURLSession__processRequest___block_invoke_3;
  v12[3] = &unk_1E7BFA1F0;
  v13 = v6;
  v14 = v5;
  v15 = v8;
  v16 = v7;
  v10 = v5;
  v11 = v6;
  dispatch_async(v9, v12);
}

void __32__ICURLSession__processRequest___block_invoke_3(uint64_t a1)
{
  v65 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    goto LABEL_2;
  }

  v10 = *(a1 + 40);
  if (!v10)
  {
    v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7101 userInfo:0];
LABEL_2:
    v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 48);
      v5 = *(a1 + 56);
      *buf = 138543874;
      v52 = v4;
      v53 = 2114;
      v54 = v5;
      v55 = 2114;
      v56 = v2;
      _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_ERROR, "%{public}@ %{public}@ failed to build URL request. err=%{public}@", buf, 0x20u);
    }

    v7 = *(a1 + 48);
    v6 = *(a1 + 56);
    v8 = *(v7 + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __32__ICURLSession__processRequest___block_invoke_61;
    block[3] = &unk_1E7BFA078;
    block[4] = v7;
    v50 = v6;
    dispatch_sync(v8, block);
    v9 = [*(a1 + 56) completionHandler];
    (v9)[2](v9, 0, v2);

    [*(a1 + 56) setCompletionHandler:0];
    goto LABEL_19;
  }

  v11 = [v10 mutableCopy];
  v12 = [*(a1 + 56) requestContext];
  v13 = [v12 networkConstraints];

  if (v13 && ([v13 shouldAllowDataForCellularNetworkTypes] & 1) == 0 && objc_msgSend(v11, "allowsCellularAccess"))
  {
    [v11 setAllowsCellularAccess:0];
  }

  v14 = +[ICDefaults standardDefaults];
  v15 = [v14 requestTimeoutOverride];

  if (v15)
  {
    [v15 doubleValue];
    [v11 setTimeoutInterval:?];
  }

  v16 = *(*(a1 + 48) + 8);
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __32__ICURLSession__processRequest___block_invoke_2_62;
  v45[3] = &unk_1E7BFA178;
  v46 = *(a1 + 56);
  v2 = v11;
  v17 = *(a1 + 48);
  v47 = v2;
  v48 = v17;
  dispatch_sync(v16, v45);
  v18 = +[ICDeviceInfo currentDeviceInfo];
  v19 = [v18 isInternalBuild];

  v20 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
  if (v19)
  {
    if (v21)
    {
      v41 = *(a1 + 48);
      v43 = v13;
      v22 = *(a1 + 56);
      v23 = [v22 task];
      v40 = [*(a1 + 56) retryCount] + 1;
      v24 = [*(a1 + 56) maxRetryCount] + 1;
      v25 = [*(a1 + 56) currentURLRequest];
      v26 = [*(a1 + 56) currentURLRequest];
      v27 = [v26 allHTTPHeaderFields];
      *buf = 138544898;
      v52 = v41;
      v53 = 2114;
      v54 = v22;
      v13 = v43;
      v55 = 2114;
      v56 = v23;
      v57 = 2048;
      v58 = v40;
      v59 = 2048;
      v60 = v24;
      v61 = 2114;
      v62 = v25;
      v63 = 2114;
      v64 = v27;
      _os_log_impl(&dword_1B4491000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ created URL task %{public}@ (attempt %lu/%lu) for request: %{public}@\n%{public}@", buf, 0x48u);
    }
  }

  else if (v21)
  {
    v28 = *(a1 + 56);
    v42 = *(a1 + 48);
    v29 = [v28 task];
    v30 = [*(a1 + 56) retryCount] + 1;
    v31 = [*(a1 + 56) maxRetryCount] + 1;
    [*(a1 + 56) currentURLRequest];
    v32 = v44 = v13;
    *buf = 138544642;
    v52 = v42;
    v53 = 2114;
    v54 = v28;
    v55 = 2114;
    v56 = v29;
    v57 = 2048;
    v58 = v30;
    v59 = 2048;
    v60 = v31;
    v61 = 2114;
    v62 = v32;
    _os_log_impl(&dword_1B4491000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ created URL task %{public}@ (attempt %lu/%lu) for request: %{public}@", buf, 0x3Eu);

    v13 = v44;
  }

  v33 = objc_alloc_init(MEMORY[0x1E695DF88]);
  [*(a1 + 56) setResponseData:v33];

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v35 = v34;
  [*(a1 + 56) setLastUpdateTime:?];
  [*(a1 + 56) setStartTime:v35];
  [*(a1 + 56) updateState:1];
  v36 = [*(a1 + 56) task];
  [v36 resume];

  v37 = *(a1 + 56);
  v38 = [v37 task];
  v39 = [MEMORY[0x1E695DF00] date];
  [v37 _task:v38 didResumeAt:v39];

  [*(a1 + 48) _scheduleNextRequestTimeoutCheck];
LABEL_19:
}

void __32__ICURLSession__processRequest___block_invoke_2_62(uint64_t a1)
{
  [*(a1 + 32) setCurrentURLRequest:*(a1 + 40)];
  v2 = [*(a1 + 48) _createURLSessionTaskForRequest:*(a1 + 32) usingSession:*(*(a1 + 48) + 80)];
  [*(a1 + 32) setTask:v2];
}

- (void)_enqueueRequest:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"ICURLSession.m" lineNumber:541 description:@"_enqueue request called with nil request"];
  }

  v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = +[ICURLRequest _nameForRequestType:](ICURLRequest, "_nameForRequestType:", [v5 type]);
    v8 = [v5 urlRequest];
    v9 = [v8 URL];
    *buf = 138544130;
    v21 = self;
    v22 = 2114;
    v23 = v7;
    v24 = 2114;
    v25 = v5;
    v26 = 2114;
    v27 = v9;
    _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ enqueueing new %{public}@ request %{public}@ with url %{public}@", buf, 0x2Au);
  }

  [v5 updateState:0];
  v10 = [MEMORY[0x1E695DF00] date];
  [v5 _requestWasEnqueuedAt:v10];

  accessQueue = self->_accessQueue;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __32__ICURLSession__enqueueRequest___block_invoke;
  v17 = &unk_1E7BFA078;
  v18 = self;
  v19 = v5;
  v12 = v5;
  dispatch_sync(accessQueue, &v14);
  [(ICURLSession *)self _processPendingRequests:v14];
}

- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5
{
  v7 = a4;
  v8 = a5;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__ICURLSession_URLSession_task_didFinishCollectingMetrics___block_invoke;
  block[3] = &unk_1E7BFA178;
  v13 = v8;
  v14 = self;
  v15 = v7;
  v10 = v7;
  v11 = v8;
  dispatch_sync(accessQueue, block);
}

void __59__ICURLSession_URLSession_task_didFinishCollectingMetrics___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) transactionMetrics];
  v3 = [v2 count];

  if (v3)
  {
    v4 = [*(a1 + 40) _requestForTask:*(a1 + 48)];
    if (v4)
    {
      v12 = v4;
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", *(a1 + 48)];
      v6 = [ICURLPerformanceMetrics alloc];
      v7 = [*(a1 + 32) transactionMetrics];
      v8 = [v7 lastObject];
      v9 = [(ICURLPerformanceMetrics *)v6 initWithTransactionMetrics:v8 request:v12 taskIdentifier:v5];

      v10 = [v12 aggregatedPerformanceMetrics];
      v11 = [ICURLAggregatedPerformanceMetrics aggregatedMetricsFromAggregatedMetrics:v10 addingMetrics:v9];
      [v12 setAggregatedPerformanceMetrics:v11];

      v4 = v12;
    }
  }
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5
{
  v7 = a4;
  v8 = a5;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__ICURLSession_URLSession_downloadTask_didFinishDownloadingToURL___block_invoke;
  block[3] = &unk_1E7BFA178;
  block[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_sync(accessQueue, block);
}

void __66__ICURLSession_URLSession_downloadTask_didFinishDownloadingToURL___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _requestForTask:*(a1 + 40)];
  if (v2)
  {
    v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 48);
      *buf = 138412802;
      v28 = v4;
      v29 = 2114;
      v30 = v2;
      v31 = 2114;
      v32 = v5;
      _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "%@ %{public}@ download task finished. location=%{public}@", buf, 0x20u);
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    [v2 setLastUpdateTime:?];
    v6 = [*(a1 + 40) response];
    v7 = [v6 statusCode];
    v8 = [*(a1 + 40) error];

    if (v8 || v7 < 300)
    {
      v9 = [v2 responseDataURL];
      if (!v9 && !*(a1 + 48))
      {
        v9 = 0;
        goto LABEL_17;
      }

      v13 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        v15 = *(a1 + 48);
        v16 = [v2 responseDataURL];
        *buf = 138413058;
        v28 = v14;
        v29 = 2114;
        v30 = v2;
        v31 = 2114;
        v32 = v15;
        v33 = 2114;
        v34 = v16;
        _os_log_impl(&dword_1B4491000, v13, OS_LOG_TYPE_DEFAULT, "%@ %{public}@ moving download file %{public}@ --> %{public}@", buf, 0x2Au);
      }

      v17 = [MEMORY[0x1E696AC08] defaultManager];
      v18 = *(a1 + 48);
      v19 = [v2 responseDataURL];
      v26 = 0;
      v20 = [v17 moveItemAtURL:v18 toURL:v19 error:&v26];
      v11 = v26;

      if ((v20 & 1) == 0)
      {
        v21 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = *(a1 + 32);
          v23 = *(a1 + 48);
          v24 = [v2 responseDataURL];
          *buf = 138413314;
          v28 = v22;
          v29 = 2114;
          v30 = v2;
          v31 = 2114;
          v32 = v23;
          v33 = 2114;
          v34 = v24;
          v35 = 2114;
          v36 = v11;
          _os_log_impl(&dword_1B4491000, v21, OS_LOG_TYPE_ERROR, "%@ %{public}@ failed to move download file from %{public}@ --> %{public}@. err=%{public}@", buf, 0x34u);
        }

        v25 = [v2 error];

        if (!v25)
        {
          [v2 setError:v11];
        }
      }
    }

    else
    {
      v9 = [v2 error];
      v10 = MEMORY[0x1E696ABC0];
      v11 = ICURLResponseStatusCodeGetExtendedDescription(v7);
      v12 = [v10 msv_errorWithDomain:@"ICError" code:-7004 underlyingError:v9 debugDescription:{@"Download request received HTTP status code %@", v11}];
      [v2 setError:v12];
    }

LABEL_17:
  }
}

- (void)URLSession:(id)a3 avAssetDownloadTask:(id)a4 didReceiveAVAssetDownloadToken:(unint64_t)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543874;
    v14 = self;
    v15 = 2048;
    v16 = a5;
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_ERROR, "%{public}@ Received download token '%llu' for download task %{public}@", buf, 0x20u);
  }

  accessQueue = self->_accessQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__ICURLSession_URLSession_avAssetDownloadTask_didReceiveAVAssetDownloadToken___block_invoke;
  v11[3] = &unk_1E7BFA078;
  v11[4] = self;
  v12 = v7;
  v10 = v7;
  dispatch_sync(accessQueue, v11);
}

void __78__ICURLSession_URLSession_avAssetDownloadTask_didReceiveAVAssetDownloadToken___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _requestForTask:*(a1 + 40)];
  if (v1)
  {
    v2 = v1;
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    [v2 setLastUpdateTime:?];
    v1 = v2;
  }
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v7 = a4;
  v8 = a5;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__ICURLSession_URLSession_dataTask_didReceiveData___block_invoke;
  block[3] = &unk_1E7BFA178;
  block[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_sync(accessQueue, block);
}

void __51__ICURLSession_URLSession_dataTask_didReceiveData___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _requestForTask:*(a1 + 40)];
  if (v2)
  {
    v6 = v2;
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    [v6 setLastUpdateTime:?];
    v3 = [v6 responseData];
    [v3 appendData:*(a1 + 48)];

    v4 = [v6 progress];
    v5 = [v6 responseData];
    [v4 setCompletedUnitCount:{objc_msgSend(v5, "length") + 1}];

    v2 = v6;
  }
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6
{
  v39 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [MEMORY[0x1E695DF00] date];
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__10613;
  v33 = __Block_byref_object_dispose__10614;
  v34 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__ICURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke;
  block[3] = &unk_1E7BF97E8;
  v28 = &v29;
  block[4] = self;
  v16 = v11;
  v27 = v16;
  dispatch_sync(accessQueue, block);
  if (v30[5])
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    [v30[5] setLastUpdateTime:?];
    operationQueue = self->_operationQueue;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __73__ICURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_2;
    v19[3] = &unk_1E7BF4D78;
    v19[4] = self;
    v25 = &v29;
    v20 = v16;
    v21 = v12;
    v22 = v10;
    v24 = v13;
    v23 = v14;
    dispatch_async(operationQueue, v19);
  }

  else
  {
    v18 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v36 = self;
      v37 = 2114;
      v38 = v16;
      _os_log_impl(&dword_1B4491000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ no request for data task %{public}@ - ignoring", buf, 0x16u);
    }

    (*(v13 + 2))(v13, 1);
  }

  _Block_object_dispose(&v29, 8);
}

uint64_t __73__ICURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _requestForTask:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void __73__ICURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_2(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = +[ICDeviceInfo currentDeviceInfo];
  v3 = [v2 isInternalBuild];

  if (v3)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(*(a1 + 80) + 8) + 40);
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      *buf = 138544130;
      v26 = v6;
      v27 = 2114;
      v28 = v5;
      v29 = 2114;
      v30 = v7;
      v31 = 2114;
      v32 = v8;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ received response for task %{public}@: %{public}@", buf, 0x2Au);
    }
  }

  else
  {
    v9 = [*(a1 + 48) statusCode];
    v4 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(*(*(a1 + 80) + 8) + 40);
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v13 = ICURLResponseStatusCodeGetExtendedDescription(v9);
      *buf = 138544130;
      v26 = v11;
      v27 = 2114;
      v28 = v10;
      v29 = 2114;
      v30 = v12;
      v31 = 2114;
      v32 = v13;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ received response for task %{public}@: %{public}@", buf, 0x2Au);
    }
  }

  [*(*(*(a1 + 80) + 8) + 40) setUrlResponse:*(a1 + 48)];
  v14 = [*(a1 + 32) _newResponseForRequest:*(*(*(a1 + 80) + 8) + 40)];
  v15 = [*(*(*(a1 + 80) + 8) + 40) responseHandler];
  v16 = *(a1 + 80);
  v17 = *(*(v16 + 8) + 40);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __73__ICURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_42;
  v19[3] = &unk_1E7BF4D50;
  v20 = v14;
  v24 = v16;
  v21 = *(a1 + 56);
  v22 = *(a1 + 40);
  v23 = *(a1 + 72);
  v18 = v14;
  [v15 processInitialResponse:v18 toRequest:v17 withCompletionHandler:v19];

  [*(*(*(a1 + 80) + 8) + 40) _task:*(a1 + 40) didReceiveInitialResponse:*(a1 + 48) at:*(a1 + 64)];
}

void __73__ICURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_42(uint64_t a1, int a2, uint64_t a3, void *a4, void *a5)
{
  v17 = a4;
  v9 = a5;
  if (!v9)
  {
    v10 = [*(a1 + 32) urlResponse];
    v11 = [v10 expectedContentLength];

    if (v11 >= 1)
    {
      v12 = [*(*(*(a1 + 64) + 8) + 40) progress];
      [v12 setTotalUnitCount:v11 + 1];

      v13 = [*(*(*(a1 + 64) + 8) + 40) progress];
      [v13 setCompletedUnitCount:1];
    }
  }

  [*(*(*(a1 + 64) + 8) + 40) setHandlingType:a3];
  [*(*(*(a1 + 64) + 8) + 40) setRetryReason:v17];
  v14 = [*(a1 + 40) configuration];
  v15 = [v14 _ignoreDidReceiveResponseDisposition];

  if (v15)
  {
    if (a2)
    {
      [*(a1 + 48) cancel];
    }

    v16 = *(*(a1 + 56) + 16);
  }

  else
  {
    v16 = *(*(a1 + 56) + 16);
  }

  v16();
}

- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = [MEMORY[0x1E695DF00] date];
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = __Block_byref_object_copy__10613;
  v34[4] = __Block_byref_object_dispose__10614;
  v35 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__ICURLSession_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke;
  block[3] = &unk_1E7BF97E8;
  v33 = v34;
  block[4] = self;
  v17 = v11;
  v32 = v17;
  dispatch_sync(accessQueue, block);
  operationQueue = self->_operationQueue;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __88__ICURLSession_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke_2;
  v24[3] = &unk_1E7BF4D78;
  v29 = v14;
  v30 = v34;
  v24[4] = self;
  v25 = v12;
  v26 = v13;
  v27 = v17;
  v28 = v15;
  v19 = v15;
  v20 = v17;
  v21 = v13;
  v22 = v12;
  v23 = v14;
  dispatch_async(operationQueue, v24);

  _Block_object_dispose(v34, 8);
}

uint64_t __88__ICURLSession_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _requestForTask:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void __88__ICURLSession_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke_2(uint64_t a1)
{
  v44[1] = *MEMORY[0x1E69E9840];
  if (!*(*(*(a1 + 80) + 8) + 40))
  {
    v10 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 56);
      *buf = 138543618;
      v38 = v11;
      v39 = 2114;
      v40 = v12;
      v13 = "%{public}@ no request for redirected task %{public}@ - ignoring";
      v14 = v10;
      v15 = 22;
LABEL_15:
      _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
    }

LABEL_16:

    v9 = *(*(a1 + 72) + 16);
LABEL_17:
    v9();
    return;
  }

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  [*(*(*(a1 + 80) + 8) + 40) setLastUpdateTime:?];
  if ([*(*(*(a1 + 80) + 8) + 40) redirectCount] >= 0x14)
  {
    v2 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v4 = *(*(*(a1 + 80) + 8) + 40);
      *buf = 138543618;
      v38 = v3;
      v39 = 2114;
      v40 = v4;
      _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ exceeded the redirect limit - aborting", buf, 0x16u);
    }

    v5 = MEMORY[0x1E696ABC0];
    v43 = *MEMORY[0x1E696A278];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Too many redirects (%d)", objc_msgSend(*(*(*(a1 + 80) + 8) + 40), "redirectCount")];
    v44[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
    v8 = [v5 errorWithDomain:@"ICError" code:-7102 userInfo:v7];
    [*(*(*(a1 + 80) + 8) + 40) setError:v8];

    v9 = *(*(a1 + 72) + 16);
    goto LABEL_17;
  }

  if (!*(a1 + 40) || !*(a1 + 48))
  {
    v10 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v31 = *(a1 + 32);
      v32 = *(a1 + 40);
      v33 = *(a1 + 48);
      *buf = 138543874;
      v38 = v31;
      v39 = 2114;
      v40 = v32;
      v41 = 2114;
      v42 = v33;
      v13 = "%{public}@ either response %{public}@ or new request %{public}@ is invalid - ignoring";
      v14 = v10;
      v15 = 32;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v16 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 32);
    v18 = *(*(*(a1 + 80) + 8) + 40);
    v19 = [*(a1 + 48) URL];
    *buf = 138543874;
    v38 = v17;
    v39 = 2114;
    v40 = v18;
    v41 = 2114;
    v42 = v19;
    _os_log_impl(&dword_1B4491000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ handling redirect response --> %{public}@", buf, 0x20u);
  }

  v20 = [*(*(*(a1 + 80) + 8) + 40) currentURLRequest];
  v21 = [v20 mutableCopy];
  v22 = [*(a1 + 48) URL];
  [v21 setURL:v22];

  [*(*(*(a1 + 80) + 8) + 40) setCurrentURLRequest:v21];
  [*(*(*(a1 + 80) + 8) + 40) setRedirectCount:{objc_msgSend(*(*(*(a1 + 80) + 8) + 40), "redirectCount") + 1}];
  v23 = objc_alloc([objc_opt_class() _responseClass]);
  v24 = *(a1 + 40);
  v25 = [*(*(*(a1 + 80) + 8) + 40) aggregatedPerformanceMetrics];
  v26 = [v23 initWithURLResponse:v24 urlRequest:v20 bodyData:0 performanceMetrics:v25];

  v27 = [*(*(*(a1 + 80) + 8) + 40) responseHandler];
  v28 = *(a1 + 72);
  v29 = *(a1 + 80);
  v30 = *(*(v29 + 8) + 40);
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __88__ICURLSession_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke_37;
  v34[3] = &unk_1E7BF4D28;
  v34[4] = *(a1 + 32);
  v36 = v29;
  v35 = v28;
  [v27 processInitialResponse:v26 toRequest:v30 withCompletionHandler:v34];

  [*(*(*(a1 + 80) + 8) + 40) _task:*(a1 + 56) didReceiveInitialResponse:*(a1 + 40) at:*(a1 + 64)];
}

void __88__ICURLSession_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__ICURLSession_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke_2_38;
  block[3] = &unk_1E7BF99D8;
  v13 = v6;
  v14 = v7;
  v11 = *(a1 + 40);
  v9 = v11;
  v15 = v11;
  v10 = v6;
  dispatch_async(v8, block);
}

void __88__ICURLSession_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke_2_38(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1[4])
  {
    v2 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(*(a1[7] + 8) + 40);
      v5 = a1[4];
      v4 = a1[5];
      *buf = 138543874;
      v13 = v4;
      v14 = 2114;
      v15 = v3;
      v16 = 2114;
      v17 = v5;
      _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ Failed to process redirect response. err=%{public}@", buf, 0x20u);
    }

    (*(a1[6] + 16))();
  }

  else
  {
    v6 = a1[6];
    v7 = a1[7];
    v8 = *(*(v7 + 8) + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __88__ICURLSession_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke_39;
    v9[3] = &unk_1E7BF4D00;
    v11 = v7;
    v10 = v6;
    [v8 buildURLRequestWithCompletionHandler:v9];
  }
}

void __88__ICURLSession_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke_39(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(*(*(a1 + 40) + 8) + 40) setCurrentURLRequest:?];
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__10613;
  v30 = __Block_byref_object_dispose__10614;
  v31 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__ICURLSession_URLSession_task_didReceiveChallenge_completionHandler___block_invoke;
  block[3] = &unk_1E7BF97E8;
  v25 = &v26;
  block[4] = self;
  v15 = v11;
  v24 = v15;
  dispatch_sync(accessQueue, block);
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  [v27[5] setLastUpdateTime:?];
  v16 = [v12 protectionSpace];
  v17 = [v16 authenticationMethod];
  if (![v17 isEqualToString:*MEMORY[0x1E695AB40]])
  {
    if ([v17 isEqualToString:*MEMORY[0x1E695AB80]])
    {
      v18 = +[ICDeviceInfo currentDeviceInfo];
      if (![v18 isInternalBuild])
      {
        v19 = 1;
        goto LABEL_3;
      }

      v21 = +[ICDefaults standardDefaults];
      v22 = [v21 ignoreExtendedCertificateValidation];

      if (v22)
      {
        v20 = [MEMORY[0x1E695AC48] credentialForTrust:{objc_msgSend(v16, "serverTrust")}];
        v19 = 0;
        goto LABEL_9;
      }
    }

    v20 = 0;
    v19 = 1;
    goto LABEL_9;
  }

  v18 = [v12 sender];
  v19 = objc_opt_respondsToSelector() & 1;
LABEL_3:

  v20 = 0;
LABEL_9:
  v13[2](v13, v19, v20);

  _Block_object_dispose(&v26, 8);
}

uint64_t __70__ICURLSession_URLSession_task_didReceiveChallenge_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _requestForTask:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [MEMORY[0x1E695DF00] date];
  accessQueue = self->_accessQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __53__ICURLSession_URLSession_task_didCompleteWithError___block_invoke;
  v14[3] = &unk_1E7BFA1F0;
  v14[4] = self;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v11 = v9;
  v12 = v8;
  v13 = v7;
  dispatch_sync(accessQueue, v14);
}

void __53__ICURLSession_URLSession_task_didCompleteWithError___block_invoke(uint64_t a1)
{
  v63[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _requestForTask:*(a1 + 40)];
  if (v2)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    [v2 setLastUpdateTime:?];
    v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 48);
      v46 = 138412802;
      v47 = v4;
      v48 = 2114;
      v49 = v2;
      v50 = 2114;
      v51 = v5;
      _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "%@ %{public}@ task finished. err=%{public}@", &v46, 0x20u);
    }

    if ([v2 type] != 3 && objc_msgSend(v2, "type") != 5)
    {
      v6 = [*(a1 + 40) response];
      [v2 setUrlResponse:v6];
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      v8 = [v7 domain];
      v9 = [v8 isEqualToString:*MEMORY[0x1E696A978]];

      v10 = -7100;
      if (v9)
      {
        v11 = [*(a1 + 48) code];
        if (v11 == -1008 || v11 == -1100)
        {
          v10 = -7104;
        }
      }

      v13 = MEMORY[0x1E696ABC0];
      v14 = *MEMORY[0x1E696AA08];
      v15 = *(a1 + 48);
      v62 = *MEMORY[0x1E696AA08];
      v63[0] = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:&v62 count:1];
      v17 = [v13 errorWithDomain:@"ICError" code:v10 userInfo:v16];

      v18 = [v2 error];
      v19 = v18;
      if (v18)
      {
        v20 = [v18 userInfo];
        if (v20)
        {
          v21 = [v19 userInfo];
          v22 = [v21 mutableCopy];
        }

        else
        {
          v22 = [MEMORY[0x1E695DF90] dictionary];
        }

        [v22 setObject:v17 forKey:v14];
        v26 = MEMORY[0x1E696ABC0];
        v27 = [v19 domain];
        v28 = [v26 errorWithDomain:v27 code:objc_msgSend(v19 userInfo:{"code"), v22}];
        [v2 setError:v28];
      }

      else
      {
        [v2 setError:v17];
      }
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v30 = v29;
    [v2 startTime];
    v32 = v31;
    v33 = [*(a1 + 40) countOfBytesSent];
    v34 = [*(a1 + 40) countOfBytesReceived];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v36 = v35;
    [v2 startTime];
    v38 = v37;
    v39 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = (v33 + v34) / (v36 - v38);
      v42 = *(a1 + 32);
      v41 = *(a1 + 40);
      v43 = [v41 countOfBytesSent];
      v44 = [*(a1 + 40) countOfBytesReceived];
      v45 = [v2 error];
      v46 = 138545154;
      v47 = v42;
      v48 = 2114;
      v49 = v41;
      v50 = 2114;
      v51 = v2;
      v52 = 2048;
      v53 = v43;
      v54 = 2048;
      v55 = v44;
      v56 = 2048;
      v57 = v30 - v32;
      v58 = 2048;
      v59 = v40;
      v60 = 2114;
      v61 = v45;
      _os_log_impl(&dword_1B4491000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@ finished task %{public}@ for request %{public}@ [%lld sent, %lld rcvd in %.3fs (%lld bytes/s)]. err=%{public}@", &v46, 0x52u);
    }

    [*(*(a1 + 32) + 48) removeObject:v2];
    [*(a1 + 32) _finishRequest:v2];
    [v2 _task:*(a1 + 40) didCompleteWithError:*(a1 + 48) at:*(a1 + 56)];
  }

  else
  {
    v23 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(a1 + 32);
      v25 = *(a1 + 40);
      v46 = 138543618;
      v47 = v24;
      v48 = 2114;
      v49 = v25;
      _os_log_impl(&dword_1B4491000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ no request for completed task %{public}@ - ignoring", &v46, 0x16u);
    }
  }
}

- (void)resume
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __22__ICURLSession_resume__block_invoke;
  block[3] = &unk_1E7BFA300;
  block[4] = self;
  dispatch_sync(accessQueue, block);
  [(ICURLSession *)self _processPendingRequests];
}

void __22__ICURLSession_resume__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 64) == 1)
  {
    v2 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      *buf = 138543362;
      v17 = v3;
      _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Resuming...", buf, 0xCu);
    }

    *(*(a1 + 32) + 64) = 0;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = *(*(a1 + 32) + 48);
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          if ([v9 requestState] == 2)
          {
            v10 = [v9 task];
            [v10 resume];

            [v9 setRequestState:1];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }
}

- (void)pause
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __21__ICURLSession_pause__block_invoke;
  block[3] = &unk_1E7BFA300;
  block[4] = self;
  dispatch_sync(accessQueue, block);
}

void __21__ICURLSession_pause__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if ((*(*(a1 + 32) + 64) & 1) == 0)
  {
    v2 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      *buf = 138543362;
      v17 = v3;
      _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Pausing...", buf, 0xCu);
    }

    *(*(a1 + 32) + 64) = 1;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = *(*(a1 + 32) + 48);
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          if (([v9 prioritize] & 1) == 0 && objc_msgSend(v9, "requestState") != 2)
          {
            v10 = [v9 task];
            [v10 suspend];

            [v9 setRequestState:2];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }
}

- (void)cancelPendingRequestsWithError:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__ICURLSession_cancelPendingRequestsWithError___block_invoke;
  v7[3] = &unk_1E7BFA078;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(accessQueue, v7);
}

void __47__ICURLSession_cancelPendingRequestsWithError___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 40) count])
  {
    v2 = [*(*(a1 + 32) + 40) copy];
    [*(*(a1 + 32) + 40) removeAllObjects];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v19 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          v9 = os_log_create("com.apple.amp.iTunesCloud", "Default");
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = *(a1 + 32);
            *buf = 138543618;
            v16 = v10;
            v17 = 2114;
            v18 = v8;
            _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ cancelling request...", buf, 0x16u);
          }

          [v8 setHandlingType:0];
          [v8 setRetryReason:0];
          [v8 setMaxRetryCount:0];
          [v8 setError:*(a1 + 40)];
          [*(a1 + 32) _finishRequest:v8];
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v19 count:16];
      }

      while (v5);
    }
  }
}

- (void)cancelRequest:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__ICURLSession_cancelRequest_withError___block_invoke;
  block[3] = &unk_1E7BFA178;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(accessQueue, block);
}

void __40__ICURLSession_cancelRequest_withError___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v9 = 138543618;
    v10 = v3;
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ cancelling request...", &v9, 0x16u);
  }

  [*(a1 + 40) setHandlingType:0];
  [*(a1 + 40) setRetryReason:0];
  [*(a1 + 40) setMaxRetryCount:0];
  [*(a1 + 40) setError:*(a1 + 48)];
  if ([*(*(a1 + 32) + 48) containsObject:*(a1 + 40)])
  {
    v5 = [*(a1 + 40) task];
    [v5 cancel];
  }

  else if ([*(*(a1 + 32) + 40) containsObject:*(a1 + 40)])
  {
    [*(*(a1 + 32) + 40) removeObject:*(a1 + 40)];
    [*(a1 + 32) _finishRequest:*(a1 + 40)];
  }

  else
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v9 = 138543618;
      v10 = v7;
      v11 = 2114;
      v12 = v8;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ failed to cancel request because it could not be found", &v9, 0x16u);
    }
  }
}

- (void)cancelRequest:(id)a3
{
  v4 = MEMORY[0x1E696ABC0];
  v5 = a3;
  v6 = [v4 errorWithDomain:@"ICError" code:-7004 userInfo:0];
  [(ICURLSession *)self cancelRequest:v5 withError:v6];
}

- (void)resumeRequest:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __30__ICURLSession_resumeRequest___block_invoke;
  v7[3] = &unk_1E7BFA078;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(accessQueue, v7);
}

uint64_t __30__ICURLSession_resumeRequest___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v9 = 138543618;
    v10 = v3;
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ resuming request...", &v9, 0x16u);
  }

  v5 = [*(*(a1 + 32) + 48) containsObject:*(a1 + 40)];
  v6 = *(a1 + 40);
  if (v5)
  {
    result = [v6 requestState];
    if (result == 2)
    {
      v8 = [*(a1 + 40) task];
      [v8 resume];

      return [*(a1 + 40) setRequestState:1];
    }
  }

  else
  {
    [v6 setRequestState:0];
    return [*(a1 + 32) _processPendingRequests];
  }

  return result;
}

- (void)pauseRequest:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __29__ICURLSession_pauseRequest___block_invoke;
  v10 = &unk_1E7BFA078;
  v11 = self;
  v12 = v4;
  v6 = v4;
  dispatch_sync(accessQueue, &v7);
  [(ICURLSession *)self _processPendingRequests:v7];
}

uint64_t __29__ICURLSession_pauseRequest___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = 138543618;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ pausing request...", &v7, 0x16u);
  }

  if ([*(*(a1 + 32) + 48) containsObject:*(a1 + 40)] && objc_msgSend(*(a1 + 40), "requestState") != 2)
  {
    v5 = [*(a1 + 40) task];
    [v5 suspend];
  }

  return [*(a1 + 40) setRequestState:2];
}

- (void)enqueueDownloadRequest:(id)a3 toDestination:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v12 = a3;
  v10 = [v12 resumeData];
  if (v10)
  {
    v11 = 4;
  }

  else
  {
    v11 = 1;
  }

  [v12 setType:v11];

  [v12 setCompletionHandler:v8];
  [v12 setResponseDataURL:v9];

  [(ICURLSession *)self _enqueueRequest:v12];
}

- (void)enqueueDownloadRequest:(id)a3 withCompletionHandler:(id)a4
{
  v6 = MEMORY[0x1E695DFF8];
  v7 = a4;
  v8 = a3;
  v9 = NSTemporaryDirectory();
  v10 = MEMORY[0x1E696AEC0];
  v11 = [MEMORY[0x1E696AFB0] UUID];
  v12 = [v11 UUIDString];
  v13 = [v10 stringWithFormat:@"tmp.%@", v12];
  v14 = [v9 stringByAppendingPathComponent:v13];
  v15 = [v6 fileURLWithPath:v14];

  [(ICURLSession *)self enqueueDownloadRequest:v8 toDestination:v15 withCompletionHandler:v7];
}

- (void)enqueueUploadRequest:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v7 setType:2];
  [v7 setCompletionHandler:v6];

  [(ICURLSession *)self _enqueueRequest:v7];
}

- (void)enqueueDataRequest:(id)a3 withCompletionHandler:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 urlRequest];
  v9 = [v8 URL];

  if (v9 && ([v9 host], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "length"), v10, v11))
  {
    [v6 setType:0];
    [v6 setCompletionHandler:v7];
    [(ICURLSession *)self _enqueueRequest:v6];
  }

  else
  {
    v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v21 = self;
      v22 = 2114;
      v23 = v9;
      _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_ERROR, "%{public}@ Enqueued data request with invalid url '%{public}@'", buf, 0x16u);
    }

    v13 = MEMORY[0x1E69B13D8];
    v14 = *MEMORY[0x1E69B1350];
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Enqueued data request with invalid url '%@'", v9];
    [v13 snapshotWithDomain:v14 type:@"Bug" subType:@"ICURLSession" context:v15 triggerThresholdValues:&stru_1F2C4A680 events:0 completion:0];

    operationQueue = self->_operationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__ICURLSession_enqueueDataRequest_withCompletionHandler___block_invoke;
    block[3] = &unk_1E7BF9EC8;
    v19 = v7;
    v18 = v9;
    dispatch_async(operationQueue, block);
  }
}

void __57__ICURLSession_enqueueDataRequest_withCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-7101 underlyingError:0 debugDescription:{@"Enqueued data request with invalid url '%@'", *(a1 + 32)}];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)dealloc
{
  requestTimeoutTimer = self->_requestTimeoutTimer;
  if (requestTimeoutTimer)
  {
    dispatch_source_cancel(requestTimeoutTimer);
  }

  v4.receiver = self;
  v4.super_class = ICURLSession;
  [(ICURLSession *)&v4 dealloc];
}

- (ICURLSession)initWithConfiguration:(id)a3 maxConcurrentRequests:(unint64_t)a4 qualityOfService:(int64_t)a5
{
  v8 = a3;
  v40.receiver = self;
  v40.super_class = ICURLSession;
  v9 = [(ICURLSession *)&v40 init];
  v10 = v9;
  if (v9)
  {
    v9->_maxConcurrentRequests = a4;
    v11 = dispatch_queue_create("com.apple.iTunesCloud.ICURLSession.access", 0);
    accessQueue = v10->_accessQueue;
    v10->_accessQueue = v11;

    v13 = MEMORY[0x1E69E96A8];
    v14 = MEMORY[0x1E69E96A8];
    if (a5 != -1)
    {
      v15 = __ROR8__(a5 - 9, 3);
      if (v15 >= 4)
      {
        v16 = QOS_CLASS_UNSPECIFIED;
      }

      else
      {
        v16 = 8 * v15 + 9;
      }

      v17 = MEMORY[0x1E69E96A8];
      v13 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], v16, 0);
    }

    v18 = dispatch_queue_create("com.apple.iTunesCloud.ICURLSession.operation", v13);
    operationQueue = v10->_operationQueue;
    v10->_operationQueue = v18;

    v20 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v21 = dispatch_queue_create("com.apple.iTunesCloud.ICURLSession.utility", v20);
    utilityQueue = v10->_utilityQueue;
    v10->_utilityQueue = v21;

    v23 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    pendingRequests = v10->_pendingRequests;
    v10->_pendingRequests = v23;

    v25 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    activeRequests = v10->_activeRequests;
    v10->_activeRequests = v25;

    v10->_paused = 0;
    v27 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v10->_accessQueue);
    requestTimeoutTimer = v10->_requestTimeoutTimer;
    v10->_requestTimeoutTimer = v27;

    objc_initWeak(&location, v10);
    v29 = v10->_requestTimeoutTimer;
    v34 = MEMORY[0x1E69E9820];
    v35 = 3221225472;
    v36 = __77__ICURLSession_initWithConfiguration_maxConcurrentRequests_qualityOfService___block_invoke;
    v37 = &unk_1E7BFA328;
    objc_copyWeak(&v38, &location);
    dispatch_source_set_event_handler(v29, &v34);
    dispatch_source_set_timer(v10->_requestTimeoutTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
    dispatch_resume(v10->_requestTimeoutTimer);
    [v8 timeoutIntervalForRequest];
    if (v30 == 0.0)
    {
      [v8 setTimeoutIntervalForRequest:120.0];
    }

    [v8 set_timingDataOptions:5];
    v31 = [(ICURLSession *)v10 _createURLSessionWithConfiguration:v8];
    urlSession = v10->_urlSession;
    v10->_urlSession = v31;

    objc_destroyWeak(&v38);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __77__ICURLSession_initWithConfiguration_maxConcurrentRequests_qualityOfService___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _checkRequestTimeouts];
    WeakRetained = v2;
  }
}

- (ICURLSession)init
{
  v3 = [MEMORY[0x1E695AC80] ephemeralSessionConfiguration];
  v4 = [(ICURLSession *)self initWithConfiguration:v3];

  return v4;
}

@end
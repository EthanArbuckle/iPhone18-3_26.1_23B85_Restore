@interface _BAURLSessionDelegate
- (_BAURLSessionDelegate)initWithNotifyQueue:(id)a3 withDestinationDirectory:(id)a4 uniqueFileName:(BOOL)a5 inBackground:(BOOL)a6 withAuthenticationHandler:(id)a7 withRedirectResponseHandler:(id)a8 withBytesReceivedHandler:(id)a9 usingBlock:(id)a10;
- (id)_combineExistingError:(id)a3 newError:(id)a4;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4;
- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didResumeAtOffset:(int64_t)a5 expectedTotalBytes:(int64_t)a6;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didWriteData:(int64_t)a5 totalBytesWritten:(int64_t)a6 totalBytesExpectedToWrite:(int64_t)a7;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7;
- (void)URLSession:(id)a3 taskIsWaitingForConnectivity:(id)a4;
- (void)cancel;
- (void)cancelWithResumeData:(id)a3;
- (void)installConnectivityTimerWithTimeout:(double)a3 task:(id)a4;
@end

@implementation _BAURLSessionDelegate

- (_BAURLSessionDelegate)initWithNotifyQueue:(id)a3 withDestinationDirectory:(id)a4 uniqueFileName:(BOOL)a5 inBackground:(BOOL)a6 withAuthenticationHandler:(id)a7 withRedirectResponseHandler:(id)a8 withBytesReceivedHandler:(id)a9 usingBlock:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v39.receiver = self;
  v39.super_class = _BAURLSessionDelegate;
  v22 = [(_BAURLSessionDelegate *)&v39 init];
  if (v22)
  {
    if (v16)
    {
      v23 = v16;
      notifyQueue = v22->_notifyQueue;
      v22->_notifyQueue = v23;
    }

    else
    {
      v25 = qos_class_self();
      notifyQueue = dispatch_queue_attr_make_with_qos_class(0, v25, 0);
      v26 = dispatch_queue_create("com.apple.BackgroundAssets.BAURLSession.DefaultNotifyQueue", notifyQueue);
      v27 = v22->_notifyQueue;
      v22->_notifyQueue = v26;
    }

    v22->_stateLock._os_unfair_lock_opaque = 0;
    v28 = [v17 copy];
    destinationDirectory = v22->_destinationDirectory;
    v22->_destinationDirectory = v28;

    v22->_uniqueFileName = a5;
    v30 = [v21 copy];
    notifyBlock = v22->_notifyBlock;
    v22->_notifyBlock = v30;

    v32 = [v18 copy];
    challengeBlock = v22->_challengeBlock;
    v22->_challengeBlock = v32;

    v34 = [v19 copy];
    redirectResponseBlock = v22->_redirectResponseBlock;
    v22->_redirectResponseBlock = v34;

    v36 = [v20 copy];
    bytesReceivedBlock = v22->_bytesReceivedBlock;
    v22->_bytesReceivedBlock = v36;

    v22->_inBackground = a6;
  }

  return v22;
}

- (void)cancel
{
  os_unfair_lock_lock(&self->_stateLock);
  v3 = [NSError errorWithDomain:NSURLErrorDomain code:-999 userInfo:0];
  [(_BAURLSessionDelegate *)self setMostRecentError:v3];

  os_unfair_lock_unlock(&self->_stateLock);
}

- (void)cancelWithResumeData:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&self->_stateLock);
  v4 = [NSError errorWithDomain:NSURLErrorDomain code:-999 userInfo:0];
  [(_BAURLSessionDelegate *)self setMostRecentError:v4];

  [(_BAURLSessionDelegate *)self setResumeData:v5];
  os_unfair_lock_unlock(&self->_stateLock);
}

- (void)installConnectivityTimerWithTimeout:(double)a3 task:(id)a4
{
  v6 = a4;
  os_unfair_lock_lock(&self->_stateLock);
  v7 = [(_BAURLSessionDelegate *)self awaitingConnectivityTimer];

  if (v7)
  {
    v8 = [(_BAURLSessionDelegate *)self awaitingConnectivityTimer];
    dispatch_source_cancel(v8);

    [(_BAURLSessionDelegate *)self setAwaitingConnectivityTimer:0];
  }

  v9 = dispatch_queue_create("com.apple.BAURLSession.TimeOutQueue", 0);
  v10 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v9);
  v11 = dispatch_time(0, (a3 * 1000000000.0));
  dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_10000CBC0;
  v17 = &unk_100079538;
  v18 = self;
  v19 = v10;
  v20 = v6;
  v21 = a3;
  v12 = v6;
  v13 = v10;
  dispatch_source_set_event_handler(v13, &v14);
  [(_BAURLSessionDelegate *)self setAwaitingConnectivityTimeout:a3, v14, v15, v16, v17, v18];
  [(_BAURLSessionDelegate *)self setAwaitingConnectivityTimer:v13];
  dispatch_resume(v13);
  os_unfair_lock_unlock(&self->_stateLock);
}

- (id)_combineExistingError:(id)a3 newError:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3)
  {
    v7 = a3;
    v8 = [v7 userInfo];
    v9 = [v8 mutableCopy];

    if (v6)
    {
      [v9 setObject:v6 forKeyedSubscript:NSUnderlyingErrorKey];
    }

    v10 = [v7 domain];
    v11 = [v7 code];

    v12 = [v9 copy];
    v13 = [NSError errorWithDomain:v10 code:v11 userInfo:v12];
  }

  else
  {
    v13 = v5;
  }

  return v13;
}

- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4
{
  v27 = a3;
  v6 = a4;
  os_unfair_lock_lock(&self->_stateLock);
  v7 = [(_BAURLSessionDelegate *)self awaitingConnectivityTimer];

  if (v7)
  {
    v8 = [(_BAURLSessionDelegate *)self awaitingConnectivityTimer];
    dispatch_source_cancel(v8);

    [(_BAURLSessionDelegate *)self setAwaitingConnectivityTimer:0];
  }

  v9 = [(_BAURLSessionDelegate *)self mostRecentError];
  if (v6)
  {
    v10 = [(_BAURLSessionDelegate *)self mostRecentError];
    if (v10)
    {
      v11 = [(_BAURLSessionDelegate *)self mostRecentError];
      if (!v11)
      {
LABEL_8:

        goto LABEL_9;
      }

      v12 = [(_BAURLSessionDelegate *)self mostRecentError];
      v13 = [v12 userInfo];
      v14 = [v13 objectForKey:NSUnderlyingErrorKey];

      if (v14)
      {
        goto LABEL_9;
      }
    }

    v10 = [(_BAURLSessionDelegate *)self mostRecentError];
    v15 = [(_BAURLSessionDelegate *)self _combineExistingError:v10 newError:v6];

    v9 = v15;
    goto LABEL_8;
  }

LABEL_9:
  v16 = [(_BAURLSessionDelegate *)self data];
  v17 = [(_BAURLSessionDelegate *)self response];
  v18 = [(_BAURLSessionDelegate *)self resumeData];
  v19 = [(_BAURLSessionDelegate *)self fileHandle];

  if (v19)
  {
    v20 = [(_BAURLSessionDelegate *)self fileHandle];
    v21 = [v20 filePath];
    v22 = [NSURL fileURLWithPath:v21];

    v23 = [(_BAURLSessionDelegate *)self fileHandle];
    v24 = [v23 handle];
    v35 = 0;
    [v24 synchronizeAndReturnError:&v35];
    v25 = v35;

    [(_BAURLSessionDelegate *)self setFileHandle:0];
  }

  else
  {
    v22 = 0;
  }

  if (self->_notifyBlock)
  {
    notifyQueue = self->_notifyQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000D140;
    block[3] = &unk_100079560;
    block[4] = self;
    v30 = v22;
    v31 = v16;
    v32 = v17;
    v33 = v18;
    v34 = v9;
    dispatch_async(notifyQueue, block);
  }

  os_unfair_lock_unlock(&self->_stateLock);
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v17 = a4;
  v8 = a5;
  v9 = a3;
  os_unfair_lock_lock(&self->_stateLock);
  v10 = [v17 response];
  [(_BAURLSessionDelegate *)self setResponse:v10];

  v11 = [(_BAURLSessionDelegate *)self awaitingConnectivityTimer];

  if (v11)
  {
    v12 = [(_BAURLSessionDelegate *)self awaitingConnectivityTimer];
    dispatch_source_cancel(v12);

    [(_BAURLSessionDelegate *)self setAwaitingConnectivityTimer:0];
  }

  if (v8)
  {
    v13 = [(_BAURLSessionDelegate *)self mostRecentError];
    v14 = [(_BAURLSessionDelegate *)self _combineExistingError:v13 newError:v8];
    [(_BAURLSessionDelegate *)self setMostRecentError:v14];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v8 userInfo];
      v16 = [v15 objectForKey:NSURLSessionDownloadTaskResumeData];

      if (v16)
      {
        [(_BAURLSessionDelegate *)self setResumeData:v16];
      }
    }
  }

  os_unfair_lock_unlock(&self->_stateLock);
  [v9 finishTasksAndInvalidate];
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v12;
    v15 = [(NSString *)v14 statusCode];
    if (v15 >= 400)
    {
      v28 = v15;
      os_unfair_lock_lock(&self->_stateLock);
      [(_BAURLSessionDelegate *)self setResponse:v14];
      v45[0] = NSURLErrorFailingURLErrorKey;
      [(NSString *)v14 URL];
      v43 = v10;
      v30 = v29 = v13;
      v31 = [v30 absoluteString];
      v46[0] = v31;
      v45[1] = @"ResponseStatusCode";
      v32 = [NSNumber numberWithInteger:v28];
      v46[1] = v32;
      v45[2] = @"ResponseHTTPHeaders";
      v33 = [(NSString *)v14 allHeaderFields];
      v46[2] = v33;
      v34 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:3];

      v13 = v29;
      v10 = v43;
      v35 = [NSError errorWithDomain:@"BAURLSessionErrorDomain" code:100 userInfo:v34];
      [(_BAURLSessionDelegate *)self setMostRecentError:v35];

      os_unfair_lock_unlock(&self->_stateLock);
      v13[2](v13, 0);

      goto LABEL_20;
    }
  }

  os_unfair_lock_lock(&self->_stateLock);
  [(_BAURLSessionDelegate *)self setResponse:v12];
  -[_BAURLSessionDelegate setFullDownloadSize:](self, "setFullDownloadSize:", [v12 expectedContentLength]);
  v14 = self->_destinationDirectory;
  if (v14)
  {
    v39 = v13;
    v40 = v12;
    v41 = v11;
    v42 = v10;
    v16 = [v11 currentRequest];
    v17 = [v16 URL];
    v18 = [v17 lastPathComponent];
    v19 = v18;
    while (1)
    {
      v20 = [(NSString *)v14 stringByAppendingPathComponent:v18];

      v21 = [(_BAURLSessionDelegate *)self uniqueFileName]? 3586 : 1538;
      v19 = v20;
      v22 = open([v20 fileSystemRepresentation], v21, 420);
      if ((v22 & 0x80000000) == 0)
      {
        break;
      }

      if (*__error() != 17 || ![(_BAURLSessionDelegate *)self uniqueFileName])
      {
        v26 = [NSError errorWithDomain:@"BAURLSessionErrorDomain" code:101 userInfo:0];
        [(_BAURLSessionDelegate *)self setMostRecentError:v26];

        os_unfair_lock_unlock(&self->_stateLock);
        v13 = v39;
        v39[2](v39, 0);
        v10 = v42;
LABEL_14:
        v12 = v40;

        v11 = v41;
        goto LABEL_20;
      }

      v23 = +[NSUUID UUID];
      v24 = [v23 UUIDString];
      v25 = [v24 substringToIndex:8];
      v16 = [NSString stringWithFormat:@"BAUnique-%@", v25];

      v18 = [v16 stringByAppendingPathExtension:@"dat"];
      v17 = v18;
    }

    v36 = v22;
    memset(&v44, 0, sizeof(v44));
    v10 = v42;
    v13 = v39;
    if (fstat(v22, &v44) < 0)
    {
      v38 = [NSError errorWithDomain:@"BAURLSessionErrorDomain" code:102 userInfo:0];
      [(_BAURLSessionDelegate *)self setMostRecentError:v38];

      os_unfair_lock_unlock(&self->_stateLock);
      close(v36);
      v39[2](v39, 0);
      goto LABEL_14;
    }

    v37 = [[BAFileHandle alloc] initWithFileDescriptor:v36 originalPath:v19 closeOnDealloc:1];
    [(_BAURLSessionDelegate *)self setFileHandle:v37];

    v12 = v40;
    v11 = v41;
  }

  else
  {
    v27 = +[NSMutableData data];
    [(_BAURLSessionDelegate *)self setData:v27];
  }

  os_unfair_lock_unlock(&self->_stateLock);
  v13[2](v13, 1);
LABEL_20:
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5
{
  v57 = a3;
  v8 = a4;
  v9 = a5;
  v58 = v8;
  v10 = [v8 response];
  os_unfair_lock_lock(&self->_stateLock);
  [(_BAURLSessionDelegate *)self setResponse:v10];
  v11 = self->_destinationDirectory;
  v12 = [(_BAURLSessionDelegate *)self uniqueFileName];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v10;
    v14 = [v13 statusCode];
    if (v14 >= 400)
    {
      v37 = v14;
      v56 = v11;
      v66[0] = NSURLErrorFailingURLErrorKey;
      v38 = [v13 URL];
      v39 = [v38 absoluteString];
      v67[0] = v39;
      v66[1] = @"ResponseStatusCode";
      v40 = [NSNumber numberWithInteger:v37];
      v67[1] = v40;
      v66[2] = @"ResponseHTTPHeaders";
      v41 = [v13 allHeaderFields];
      v67[2] = v41;
      v42 = [NSDictionary dictionaryWithObjects:v67 forKeys:v66 count:3];

      v43 = [NSError errorWithDomain:@"BAURLSessionErrorDomain" code:100 userInfo:v42];
      [(_BAURLSessionDelegate *)self setMostRecentError:v43];

      os_unfair_lock_unlock(&self->_stateLock);
      goto LABEL_30;
    }
  }

  os_unfair_lock_unlock(&self->_stateLock);
  if (!v9 || !v11)
  {
    if (v9)
    {
      v59 = 0;
      v34 = [NSData dataWithContentsOfURL:v9 options:8 error:&v59];
      v35 = v59;
      if (v34)
      {
        v36 = +[NSFileManager defaultManager];
        [v36 removeItemAtURL:v9 error:0];

        os_unfair_lock_lock(&self->_stateLock);
        [(_BAURLSessionDelegate *)self setData:v34];
      }

      else
      {
        os_unfair_lock_lock(&self->_stateLock);
        [(_BAURLSessionDelegate *)self setMostRecentError:v35];
      }

      os_unfair_lock_unlock(&self->_stateLock);
    }

    else
    {
      os_unfair_lock_lock(&self->_stateLock);
      v51 = [NSError errorWithDomain:@"BAURLSessionErrorDomain" code:105 userInfo:0];
      [(_BAURLSessionDelegate *)self setMostRecentError:v51];

      os_unfair_lock_unlock(&self->_stateLock);
    }

    goto LABEL_31;
  }

  v56 = v11;
  v15 = [v58 currentRequest];
  v16 = [v15 URL];
  v17 = [v16 lastPathComponent];
  v18 = [(NSString *)v11 stringByAppendingPathComponent:v17];

  while (1)
  {
    while (1)
    {
      v19 = +[NSFileManager defaultManager];
      v20 = [v19 fileExistsAtPath:v18];

      if (!v20)
      {
        goto LABEL_11;
      }

      if (!v12)
      {
        break;
      }

      v28 = +[NSUUID UUID];
      v29 = [v28 UUIDString];
      v30 = [v29 substringToIndex:8];
      v31 = [NSString stringWithFormat:@"BAUnique-%@", v30];

      v32 = [v31 stringByAppendingPathExtension:@"dat"];
      v33 = [(NSString *)v11 stringByAppendingPathComponent:v32];

      v18 = v33;
    }

    v21 = +[NSFileManager defaultManager];
    v61 = 0;
    v22 = [v21 removeItemAtPath:v18 error:&v61];
    v23 = v61;

    if ((v22 & 1) == 0)
    {
      os_unfair_lock_lock(&self->_stateLock);
      v64 = NSUnderlyingErrorKey;
      v65 = v23;
      v52 = [NSDictionary dictionaryWithObjects:&v65 forKeys:&v64 count:1];
      v53 = [NSError errorWithDomain:@"BAURLSessionErrorDomain" code:104 userInfo:v52];
      [(_BAURLSessionDelegate *)self setMostRecentError:v53];

      os_unfair_lock_unlock(&self->_stateLock);
      goto LABEL_29;
    }

LABEL_11:
    v24 = v9;
    v25 = [v9 fileSystemRepresentation];
    v26 = v18;
    if (!renamex_np(v25, [v18 fileSystemRepresentation], 4u))
    {
      break;
    }

    v27 = *__error();
    if (v27 != 17)
    {
      os_unfair_lock_lock(&self->_stateLock);
      v48 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v27 userInfo:0];
      v62 = NSUnderlyingErrorKey;
      v63 = v48;
      v49 = [NSDictionary dictionaryWithObjects:&v63 forKeys:&v62 count:1];
      v50 = [NSError errorWithDomain:@"BAURLSessionErrorDomain" code:103 userInfo:v49];
      [(_BAURLSessionDelegate *)self setMostRecentError:v50];

      goto LABEL_28;
    }
  }

  v44 = v18;
  v45 = open([v18 fileSystemRepresentation], 0, 420);
  v46 = v45;
  if ((v45 & 0x80000000) != 0)
  {
    os_unfair_lock_lock(&self->_stateLock);
    v54 = [NSError errorWithDomain:@"BAURLSessionErrorDomain" code:101 userInfo:0];
    [(_BAURLSessionDelegate *)self setMostRecentError:v54];
  }

  else
  {
    memset(&v60, 0, sizeof(v60));
    if ((fstat(v45, &v60) & 0x80000000) == 0)
    {
      os_unfair_lock_lock(&self->_stateLock);
      v47 = [[BAFileHandle alloc] initWithFileDescriptor:v46 originalPath:v18 closeOnDealloc:1];
      [(_BAURLSessionDelegate *)self setFileHandle:v47];

      os_unfair_lock_unlock(&self->_stateLock);
      goto LABEL_30;
    }

    close(v46);
    os_unfair_lock_lock(&self->_stateLock);
    v55 = [NSError errorWithDomain:@"BAURLSessionErrorDomain" code:102 userInfo:0];
    [(_BAURLSessionDelegate *)self setMostRecentError:v55];
  }

LABEL_28:
  os_unfair_lock_unlock(&self->_stateLock);
LABEL_29:

LABEL_30:
  v11 = v56;
LABEL_31:
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v6 = a5;
  os_unfair_lock_lock(&self->_stateLock);
  v7 = [(_BAURLSessionDelegate *)self awaitingConnectivityTimer];

  if (v7)
  {
    v8 = [(_BAURLSessionDelegate *)self awaitingConnectivityTimer];
    dispatch_source_cancel(v8);

    [(_BAURLSessionDelegate *)self setAwaitingConnectivityTimer:0];
  }

  v9 = [v6 length];
  v10 = [(_BAURLSessionDelegate *)self fileHandle];

  if (v10)
  {
    v11 = [(_BAURLSessionDelegate *)self fileHandle];
    v12 = [v11 handle];
    [v12 writeData:v6];

    v13 = [(_BAURLSessionDelegate *)self fileHandle];
    v14 = [v13 handle];
    v15 = [v14 offsetInFile];
  }

  else
  {
    v16 = [(_BAURLSessionDelegate *)self data];
    [v16 appendData:v6];

    v13 = [(_BAURLSessionDelegate *)self data];
    v15 = [v13 length];
  }

  v17 = [(_BAURLSessionDelegate *)self fullDownloadSize];
  os_unfair_lock_unlock(&self->_stateLock);
  if (self->_bytesReceivedBlock)
  {
    notifyQueue = self->_notifyQueue;
    if (notifyQueue)
    {
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10000E0F4;
      v19[3] = &unk_100079588;
      v19[4] = self;
      v19[5] = v9;
      v19[6] = v15;
      v19[7] = v17;
      dispatch_async(notifyQueue, v19);
    }
  }
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didWriteData:(int64_t)a5 totalBytesWritten:(int64_t)a6 totalBytesExpectedToWrite:(int64_t)a7
{
  os_unfair_lock_lock(&self->_stateLock);
  v11 = [(_BAURLSessionDelegate *)self awaitingConnectivityTimer];

  if (v11)
  {
    v12 = [(_BAURLSessionDelegate *)self awaitingConnectivityTimer];
    dispatch_source_cancel(v12);

    [(_BAURLSessionDelegate *)self setAwaitingConnectivityTimer:0];
  }

  os_unfair_lock_unlock(&self->_stateLock);
  if (self->_bytesReceivedBlock)
  {
    notifyQueue = self->_notifyQueue;
    if (notifyQueue)
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10000E240;
      v14[3] = &unk_100079588;
      v14[4] = self;
      v14[5] = a5;
      v14[6] = a6;
      v14[7] = a7;
      dispatch_async(notifyQueue, v14);
    }
  }
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didResumeAtOffset:(int64_t)a5 expectedTotalBytes:(int64_t)a6
{
  if (self->_bytesReceivedBlock)
  {
    notifyQueue = self->_notifyQueue;
    if (notifyQueue)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000E320;
      block[3] = &unk_1000795B0;
      block[4] = self;
      block[5] = a5;
      block[6] = a6;
      dispatch_async(notifyQueue, block);
    }
  }
}

- (void)URLSession:(id)a3 taskIsWaitingForConnectivity:(id)a4
{
  v4 = a4;
  v5 = sub_100010694();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BAURLSession: Task %{public}@ is awaiting connectivity.", &v6, 0xCu);
  }
}

- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  if (!self->_challengeBlock)
  {
    v16 = [v9 protectionSpace];
    v17 = [v16 authenticationMethod];
    if ([v17 isEqualToString:NSURLAuthenticationMethodServerTrust])
    {
      v18 = [v9 previousFailureCount];

      if (!v18)
      {
        v19 = [v9 protectionSpace];
        v20 = +[NSURLCredential credentialForTrust:](NSURLCredential, "credentialForTrust:", [v19 serverTrust]);

        goto LABEL_13;
      }
    }

    else
    {
    }

    if ([v9 previousFailureCount])
    {
      v20 = 0;
      v22 = 1;
LABEL_14:
      v10[2](v10, v22, v20);
      goto LABEL_15;
    }

    v20 = [v9 proposedCredential];
LABEL_13:
    v22 = 0;
    goto LABEL_14;
  }

  os_unfair_lock_lock(&self->_stateLock);
  v12 = [(_BAURLSessionDelegate *)self awaitingConnectivityTimer];

  if (v12)
  {
    v13 = [(_BAURLSessionDelegate *)self awaitingConnectivityTimer];
    dispatch_suspend(v13);

    v12 = [(_BAURLSessionDelegate *)self awaitingConnectivityTimer];
    [(_BAURLSessionDelegate *)self awaitingConnectivityTimeout];
    v15 = v14;
    [(_BAURLSessionDelegate *)self setAwaitingConnectivityTimer:0];
  }

  else
  {
    v15 = 0;
  }

  os_unfair_lock_unlock(&self->_stateLock);
  objc_initWeak(&location, self);
  challengeBlock = self->_challengeBlock;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10000E6C0;
  v23[3] = &unk_1000795D8;
  objc_copyWeak(v26, &location);
  v20 = v12;
  v24 = v20;
  v26[1] = v15;
  v25 = v10;
  challengeBlock[2](challengeBlock, v9, v23);

  objc_destroyWeak(v26);
  objc_destroyWeak(&location);
LABEL_15:

  objc_autoreleasePoolPop(v11);
}

- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = v16;
  if (self->_redirectResponseBlock)
  {
    notifyQueue = self->_notifyQueue;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10000E938;
    v20[3] = &unk_100079600;
    v23 = v16;
    v20[4] = self;
    v21 = v15;
    v22 = v14;
    dispatch_async(notifyQueue, v20);
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    (v17)[2](v17, v15);
    objc_autoreleasePoolPop(v19);
  }
}

@end
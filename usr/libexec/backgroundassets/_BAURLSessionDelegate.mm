@interface _BAURLSessionDelegate
- (_BAURLSessionDelegate)initWithNotifyQueue:(id)queue withDestinationDirectory:(id)directory uniqueFileName:(BOOL)name inBackground:(BOOL)background withAuthenticationHandler:(id)handler withRedirectResponseHandler:(id)responseHandler withBytesReceivedHandler:(id)receivedHandler usingBlock:(id)self0;
- (id)_combineExistingError:(id)error newError:(id)newError;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l;
- (void)URLSession:(id)session downloadTask:(id)task didResumeAtOffset:(int64_t)offset expectedTotalBytes:(int64_t)bytes;
- (void)URLSession:(id)session downloadTask:(id)task didWriteData:(int64_t)data totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
- (void)URLSession:(id)session taskIsWaitingForConnectivity:(id)connectivity;
- (void)cancel;
- (void)cancelWithResumeData:(id)data;
- (void)installConnectivityTimerWithTimeout:(double)timeout task:(id)task;
@end

@implementation _BAURLSessionDelegate

- (_BAURLSessionDelegate)initWithNotifyQueue:(id)queue withDestinationDirectory:(id)directory uniqueFileName:(BOOL)name inBackground:(BOOL)background withAuthenticationHandler:(id)handler withRedirectResponseHandler:(id)responseHandler withBytesReceivedHandler:(id)receivedHandler usingBlock:(id)self0
{
  queueCopy = queue;
  directoryCopy = directory;
  handlerCopy = handler;
  responseHandlerCopy = responseHandler;
  receivedHandlerCopy = receivedHandler;
  blockCopy = block;
  v39.receiver = self;
  v39.super_class = _BAURLSessionDelegate;
  v22 = [(_BAURLSessionDelegate *)&v39 init];
  if (v22)
  {
    if (queueCopy)
    {
      v23 = queueCopy;
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
    v28 = [directoryCopy copy];
    destinationDirectory = v22->_destinationDirectory;
    v22->_destinationDirectory = v28;

    v22->_uniqueFileName = name;
    v30 = [blockCopy copy];
    notifyBlock = v22->_notifyBlock;
    v22->_notifyBlock = v30;

    v32 = [handlerCopy copy];
    challengeBlock = v22->_challengeBlock;
    v22->_challengeBlock = v32;

    v34 = [responseHandlerCopy copy];
    redirectResponseBlock = v22->_redirectResponseBlock;
    v22->_redirectResponseBlock = v34;

    v36 = [receivedHandlerCopy copy];
    bytesReceivedBlock = v22->_bytesReceivedBlock;
    v22->_bytesReceivedBlock = v36;

    v22->_inBackground = background;
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

- (void)cancelWithResumeData:(id)data
{
  dataCopy = data;
  os_unfair_lock_lock(&self->_stateLock);
  v4 = [NSError errorWithDomain:NSURLErrorDomain code:-999 userInfo:0];
  [(_BAURLSessionDelegate *)self setMostRecentError:v4];

  [(_BAURLSessionDelegate *)self setResumeData:dataCopy];
  os_unfair_lock_unlock(&self->_stateLock);
}

- (void)installConnectivityTimerWithTimeout:(double)timeout task:(id)task
{
  taskCopy = task;
  os_unfair_lock_lock(&self->_stateLock);
  awaitingConnectivityTimer = [(_BAURLSessionDelegate *)self awaitingConnectivityTimer];

  if (awaitingConnectivityTimer)
  {
    awaitingConnectivityTimer2 = [(_BAURLSessionDelegate *)self awaitingConnectivityTimer];
    dispatch_source_cancel(awaitingConnectivityTimer2);

    [(_BAURLSessionDelegate *)self setAwaitingConnectivityTimer:0];
  }

  v9 = dispatch_queue_create("com.apple.BAURLSession.TimeOutQueue", 0);
  v10 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v9);
  v11 = dispatch_time(0, (timeout * 1000000000.0));
  dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_10000CBC0;
  v17 = &unk_100079538;
  selfCopy = self;
  v19 = v10;
  v20 = taskCopy;
  timeoutCopy = timeout;
  v12 = taskCopy;
  v13 = v10;
  dispatch_source_set_event_handler(v13, &v14);
  [(_BAURLSessionDelegate *)self setAwaitingConnectivityTimeout:timeout, v14, v15, v16, v17, selfCopy];
  [(_BAURLSessionDelegate *)self setAwaitingConnectivityTimer:v13];
  dispatch_resume(v13);
  os_unfair_lock_unlock(&self->_stateLock);
}

- (id)_combineExistingError:(id)error newError:(id)newError
{
  newErrorCopy = newError;
  v6 = newErrorCopy;
  if (error)
  {
    errorCopy = error;
    userInfo = [errorCopy userInfo];
    v9 = [userInfo mutableCopy];

    if (v6)
    {
      [v9 setObject:v6 forKeyedSubscript:NSUnderlyingErrorKey];
    }

    domain = [errorCopy domain];
    code = [errorCopy code];

    v12 = [v9 copy];
    v13 = [NSError errorWithDomain:domain code:code userInfo:v12];
  }

  else
  {
    v13 = newErrorCopy;
  }

  return v13;
}

- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  os_unfair_lock_lock(&self->_stateLock);
  awaitingConnectivityTimer = [(_BAURLSessionDelegate *)self awaitingConnectivityTimer];

  if (awaitingConnectivityTimer)
  {
    awaitingConnectivityTimer2 = [(_BAURLSessionDelegate *)self awaitingConnectivityTimer];
    dispatch_source_cancel(awaitingConnectivityTimer2);

    [(_BAURLSessionDelegate *)self setAwaitingConnectivityTimer:0];
  }

  mostRecentError = [(_BAURLSessionDelegate *)self mostRecentError];
  if (errorCopy)
  {
    mostRecentError2 = [(_BAURLSessionDelegate *)self mostRecentError];
    if (mostRecentError2)
    {
      mostRecentError3 = [(_BAURLSessionDelegate *)self mostRecentError];
      if (!mostRecentError3)
      {
LABEL_8:

        goto LABEL_9;
      }

      mostRecentError4 = [(_BAURLSessionDelegate *)self mostRecentError];
      userInfo = [mostRecentError4 userInfo];
      v14 = [userInfo objectForKey:NSUnderlyingErrorKey];

      if (v14)
      {
        goto LABEL_9;
      }
    }

    mostRecentError2 = [(_BAURLSessionDelegate *)self mostRecentError];
    v15 = [(_BAURLSessionDelegate *)self _combineExistingError:mostRecentError2 newError:errorCopy];

    mostRecentError = v15;
    goto LABEL_8;
  }

LABEL_9:
  data = [(_BAURLSessionDelegate *)self data];
  response = [(_BAURLSessionDelegate *)self response];
  resumeData = [(_BAURLSessionDelegate *)self resumeData];
  fileHandle = [(_BAURLSessionDelegate *)self fileHandle];

  if (fileHandle)
  {
    fileHandle2 = [(_BAURLSessionDelegate *)self fileHandle];
    filePath = [fileHandle2 filePath];
    v22 = [NSURL fileURLWithPath:filePath];

    fileHandle3 = [(_BAURLSessionDelegate *)self fileHandle];
    handle = [fileHandle3 handle];
    v35 = 0;
    [handle synchronizeAndReturnError:&v35];
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
    v31 = data;
    v32 = response;
    v33 = resumeData;
    v34 = mostRecentError;
    dispatch_async(notifyQueue, block);
  }

  os_unfair_lock_unlock(&self->_stateLock);
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  sessionCopy = session;
  os_unfair_lock_lock(&self->_stateLock);
  response = [taskCopy response];
  [(_BAURLSessionDelegate *)self setResponse:response];

  awaitingConnectivityTimer = [(_BAURLSessionDelegate *)self awaitingConnectivityTimer];

  if (awaitingConnectivityTimer)
  {
    awaitingConnectivityTimer2 = [(_BAURLSessionDelegate *)self awaitingConnectivityTimer];
    dispatch_source_cancel(awaitingConnectivityTimer2);

    [(_BAURLSessionDelegate *)self setAwaitingConnectivityTimer:0];
  }

  if (errorCopy)
  {
    mostRecentError = [(_BAURLSessionDelegate *)self mostRecentError];
    v14 = [(_BAURLSessionDelegate *)self _combineExistingError:mostRecentError newError:errorCopy];
    [(_BAURLSessionDelegate *)self setMostRecentError:v14];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      userInfo = [errorCopy userInfo];
      v16 = [userInfo objectForKey:NSURLSessionDownloadTaskResumeData];

      if (v16)
      {
        [(_BAURLSessionDelegate *)self setResumeData:v16];
      }
    }
  }

  os_unfair_lock_unlock(&self->_stateLock);
  [sessionCopy finishTasksAndInvalidate];
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  sessionCopy = session;
  taskCopy = task;
  responseCopy = response;
  handlerCopy = handler;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = responseCopy;
    statusCode = [(NSString *)v14 statusCode];
    if (statusCode >= 400)
    {
      v28 = statusCode;
      os_unfair_lock_lock(&self->_stateLock);
      [(_BAURLSessionDelegate *)self setResponse:v14];
      v45[0] = NSURLErrorFailingURLErrorKey;
      [(NSString *)v14 URL];
      v43 = sessionCopy;
      v30 = v29 = handlerCopy;
      absoluteString = [v30 absoluteString];
      v46[0] = absoluteString;
      v45[1] = @"ResponseStatusCode";
      v32 = [NSNumber numberWithInteger:v28];
      v46[1] = v32;
      v45[2] = @"ResponseHTTPHeaders";
      allHeaderFields = [(NSString *)v14 allHeaderFields];
      v46[2] = allHeaderFields;
      v34 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:3];

      handlerCopy = v29;
      sessionCopy = v43;
      v35 = [NSError errorWithDomain:@"BAURLSessionErrorDomain" code:100 userInfo:v34];
      [(_BAURLSessionDelegate *)self setMostRecentError:v35];

      os_unfair_lock_unlock(&self->_stateLock);
      handlerCopy[2](handlerCopy, 0);

      goto LABEL_20;
    }
  }

  os_unfair_lock_lock(&self->_stateLock);
  [(_BAURLSessionDelegate *)self setResponse:responseCopy];
  -[_BAURLSessionDelegate setFullDownloadSize:](self, "setFullDownloadSize:", [responseCopy expectedContentLength]);
  v14 = self->_destinationDirectory;
  if (v14)
  {
    v39 = handlerCopy;
    v40 = responseCopy;
    v41 = taskCopy;
    v42 = sessionCopy;
    currentRequest = [taskCopy currentRequest];
    v17 = [currentRequest URL];
    lastPathComponent = [v17 lastPathComponent];
    v19 = lastPathComponent;
    while (1)
    {
      v20 = [(NSString *)v14 stringByAppendingPathComponent:lastPathComponent];

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
        handlerCopy = v39;
        v39[2](v39, 0);
        sessionCopy = v42;
LABEL_14:
        responseCopy = v40;

        taskCopy = v41;
        goto LABEL_20;
      }

      v23 = +[NSUUID UUID];
      uUIDString = [v23 UUIDString];
      v25 = [uUIDString substringToIndex:8];
      currentRequest = [NSString stringWithFormat:@"BAUnique-%@", v25];

      lastPathComponent = [currentRequest stringByAppendingPathExtension:@"dat"];
      v17 = lastPathComponent;
    }

    v36 = v22;
    memset(&v44, 0, sizeof(v44));
    sessionCopy = v42;
    handlerCopy = v39;
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

    responseCopy = v40;
    taskCopy = v41;
  }

  else
  {
    v27 = +[NSMutableData data];
    [(_BAURLSessionDelegate *)self setData:v27];
  }

  os_unfair_lock_unlock(&self->_stateLock);
  handlerCopy[2](handlerCopy, 1);
LABEL_20:
}

- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l
{
  sessionCopy = session;
  taskCopy = task;
  lCopy = l;
  v58 = taskCopy;
  response = [taskCopy response];
  os_unfair_lock_lock(&self->_stateLock);
  [(_BAURLSessionDelegate *)self setResponse:response];
  v11 = self->_destinationDirectory;
  uniqueFileName = [(_BAURLSessionDelegate *)self uniqueFileName];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = response;
    statusCode = [v13 statusCode];
    if (statusCode >= 400)
    {
      v37 = statusCode;
      v56 = v11;
      v66[0] = NSURLErrorFailingURLErrorKey;
      v38 = [v13 URL];
      absoluteString = [v38 absoluteString];
      v67[0] = absoluteString;
      v66[1] = @"ResponseStatusCode";
      v40 = [NSNumber numberWithInteger:v37];
      v67[1] = v40;
      v66[2] = @"ResponseHTTPHeaders";
      allHeaderFields = [v13 allHeaderFields];
      v67[2] = allHeaderFields;
      v42 = [NSDictionary dictionaryWithObjects:v67 forKeys:v66 count:3];

      v43 = [NSError errorWithDomain:@"BAURLSessionErrorDomain" code:100 userInfo:v42];
      [(_BAURLSessionDelegate *)self setMostRecentError:v43];

      os_unfair_lock_unlock(&self->_stateLock);
      goto LABEL_30;
    }
  }

  os_unfair_lock_unlock(&self->_stateLock);
  if (!lCopy || !v11)
  {
    if (lCopy)
    {
      v59 = 0;
      v34 = [NSData dataWithContentsOfURL:lCopy options:8 error:&v59];
      v35 = v59;
      if (v34)
      {
        v36 = +[NSFileManager defaultManager];
        [v36 removeItemAtURL:lCopy error:0];

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
  currentRequest = [v58 currentRequest];
  v16 = [currentRequest URL];
  lastPathComponent = [v16 lastPathComponent];
  v18 = [(NSString *)v11 stringByAppendingPathComponent:lastPathComponent];

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

      if (!uniqueFileName)
      {
        break;
      }

      v28 = +[NSUUID UUID];
      uUIDString = [v28 UUIDString];
      v30 = [uUIDString substringToIndex:8];
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
    v24 = lCopy;
    fileSystemRepresentation = [lCopy fileSystemRepresentation];
    v26 = v18;
    if (!renamex_np(fileSystemRepresentation, [v18 fileSystemRepresentation], 4u))
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

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  dataCopy = data;
  os_unfair_lock_lock(&self->_stateLock);
  awaitingConnectivityTimer = [(_BAURLSessionDelegate *)self awaitingConnectivityTimer];

  if (awaitingConnectivityTimer)
  {
    awaitingConnectivityTimer2 = [(_BAURLSessionDelegate *)self awaitingConnectivityTimer];
    dispatch_source_cancel(awaitingConnectivityTimer2);

    [(_BAURLSessionDelegate *)self setAwaitingConnectivityTimer:0];
  }

  v9 = [dataCopy length];
  fileHandle = [(_BAURLSessionDelegate *)self fileHandle];

  if (fileHandle)
  {
    fileHandle2 = [(_BAURLSessionDelegate *)self fileHandle];
    handle = [fileHandle2 handle];
    [handle writeData:dataCopy];

    fileHandle3 = [(_BAURLSessionDelegate *)self fileHandle];
    handle2 = [fileHandle3 handle];
    offsetInFile = [handle2 offsetInFile];
  }

  else
  {
    data = [(_BAURLSessionDelegate *)self data];
    [data appendData:dataCopy];

    fileHandle3 = [(_BAURLSessionDelegate *)self data];
    offsetInFile = [fileHandle3 length];
  }

  fullDownloadSize = [(_BAURLSessionDelegate *)self fullDownloadSize];
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
      v19[6] = offsetInFile;
      v19[7] = fullDownloadSize;
      dispatch_async(notifyQueue, v19);
    }
  }
}

- (void)URLSession:(id)session downloadTask:(id)task didWriteData:(int64_t)data totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write
{
  os_unfair_lock_lock(&self->_stateLock);
  awaitingConnectivityTimer = [(_BAURLSessionDelegate *)self awaitingConnectivityTimer];

  if (awaitingConnectivityTimer)
  {
    awaitingConnectivityTimer2 = [(_BAURLSessionDelegate *)self awaitingConnectivityTimer];
    dispatch_source_cancel(awaitingConnectivityTimer2);

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
      v14[5] = data;
      v14[6] = written;
      v14[7] = write;
      dispatch_async(notifyQueue, v14);
    }
  }
}

- (void)URLSession:(id)session downloadTask:(id)task didResumeAtOffset:(int64_t)offset expectedTotalBytes:(int64_t)bytes
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
      block[5] = offset;
      block[6] = bytes;
      dispatch_async(notifyQueue, block);
    }
  }
}

- (void)URLSession:(id)session taskIsWaitingForConnectivity:(id)connectivity
{
  connectivityCopy = connectivity;
  v5 = sub_100010694();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = connectivityCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BAURLSession: Task %{public}@ is awaiting connectivity.", &v6, 0xCu);
  }
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  sessionCopy = session;
  challengeCopy = challenge;
  handlerCopy = handler;
  v11 = objc_autoreleasePoolPush();
  if (!self->_challengeBlock)
  {
    protectionSpace = [challengeCopy protectionSpace];
    authenticationMethod = [protectionSpace authenticationMethod];
    if ([authenticationMethod isEqualToString:NSURLAuthenticationMethodServerTrust])
    {
      previousFailureCount = [challengeCopy previousFailureCount];

      if (!previousFailureCount)
      {
        protectionSpace2 = [challengeCopy protectionSpace];
        proposedCredential = +[NSURLCredential credentialForTrust:](NSURLCredential, "credentialForTrust:", [protectionSpace2 serverTrust]);

        goto LABEL_13;
      }
    }

    else
    {
    }

    if ([challengeCopy previousFailureCount])
    {
      proposedCredential = 0;
      v22 = 1;
LABEL_14:
      handlerCopy[2](handlerCopy, v22, proposedCredential);
      goto LABEL_15;
    }

    proposedCredential = [challengeCopy proposedCredential];
LABEL_13:
    v22 = 0;
    goto LABEL_14;
  }

  os_unfair_lock_lock(&self->_stateLock);
  awaitingConnectivityTimer = [(_BAURLSessionDelegate *)self awaitingConnectivityTimer];

  if (awaitingConnectivityTimer)
  {
    awaitingConnectivityTimer2 = [(_BAURLSessionDelegate *)self awaitingConnectivityTimer];
    dispatch_suspend(awaitingConnectivityTimer2);

    awaitingConnectivityTimer = [(_BAURLSessionDelegate *)self awaitingConnectivityTimer];
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
  proposedCredential = awaitingConnectivityTimer;
  v24 = proposedCredential;
  v26[1] = v15;
  v25 = handlerCopy;
  challengeBlock[2](challengeBlock, challengeCopy, v23);

  objc_destroyWeak(v26);
  objc_destroyWeak(&location);
LABEL_15:

  objc_autoreleasePoolPop(v11);
}

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  sessionCopy = session;
  taskCopy = task;
  redirectionCopy = redirection;
  requestCopy = request;
  handlerCopy = handler;
  v17 = handlerCopy;
  if (self->_redirectResponseBlock)
  {
    notifyQueue = self->_notifyQueue;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10000E938;
    v20[3] = &unk_100079600;
    v23 = handlerCopy;
    v20[4] = self;
    v21 = requestCopy;
    v22 = redirectionCopy;
    dispatch_async(notifyQueue, v20);
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    (v17)[2](v17, requestCopy);
    objc_autoreleasePoolPop(v19);
  }
}

@end
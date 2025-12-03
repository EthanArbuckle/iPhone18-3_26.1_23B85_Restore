@interface BAURLSession
- (id)_initWithURLRequest:(id)request withResumeData:(id)data withDestinationDirectory:(id)directory inBackground:(BOOL)background withAuthenticationHandler:(id)handler withRedirectResponseHandler:(id)responseHandler;
- (void)cancel;
- (void)invalidate;
- (void)startAsyncDownloadNotifyingOnQueue:(id)queue sessionConfiguration:(id)configuration extractorFactory:(id)factory bytesReceivedHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation BAURLSession

- (id)_initWithURLRequest:(id)request withResumeData:(id)data withDestinationDirectory:(id)directory inBackground:(BOOL)background withAuthenticationHandler:(id)handler withRedirectResponseHandler:(id)responseHandler
{
  requestCopy = request;
  dataCopy = data;
  directoryCopy = directory;
  handlerCopy = handler;
  responseHandlerCopy = responseHandler;
  v53.receiver = self;
  v53.super_class = BAURLSession;
  v20 = [(BAURLSession *)&v53 init];
  if (v20)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      backgroundCopy = background;
      dataCopy2 = data;
      v49 = dataCopy;
      v50 = requestCopy;
      if (([directoryCopy isFileURL] & 1) == 0)
      {
        v21 = [NSException exceptionWithName:NSInvalidArgumentException reason:@"Destination directory must be a file URL." userInfo:0];
        [v21 raise];
      }

      v52 = 0;
      v22 = +[NSFileManager defaultManager];
      path = [directoryCopy path];
      stringByStandardizingPath = [path stringByStandardizingPath];
      v25 = [v22 fileExistsAtPath:stringByStandardizingPath isDirectory:&v52];
      v26 = v52;

      if (!v25 || (v26 & 1) != 0)
      {
        v28 = +[NSFileManager defaultManager];
        path2 = [directoryCopy path];
        stringByStandardizingPath2 = [path2 stringByStandardizingPath];
        v51 = 0;
        v31 = [v28 createDirectoryAtPath:stringByStandardizingPath2 withIntermediateDirectories:1 attributes:0 error:&v51];
        v46 = v51;

        if (v31)
        {
          path3 = [directoryCopy path];
          stringByStandardizingPath3 = [path3 stringByStandardizingPath];
          destinationDirectory = v20->_destinationDirectory;
          v20->_destinationDirectory = stringByStandardizingPath3;

          dataCopy = v49;
          requestCopy = v50;
          data = dataCopy2;
        }

        else
        {
          v35 = sub_100016048();
          v36 = [v35 stringByAppendingPathComponent:@"BAURLSessionStaging"];
          v37 = v20->_destinationDirectory;
          v20->_destinationDirectory = v36;

          v38 = sub_100010694();
          data = dataCopy2;
          dataCopy = v49;
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            sub_100048C54(v46, v38);
          }

          requestCopy = v50;
        }

        background = backgroundCopy;
        v27 = v46;
      }

      else
      {
        v27 = [NSException exceptionWithName:NSInvalidArgumentException reason:@"Destination directory must exist and be a valid directory." userInfo:0];
        [v27 raise];
        dataCopy = v49;
        requestCopy = v50;
        data = dataCopy2;
        background = backgroundCopy;
      }
    }

    v39 = objc_opt_new();
    connectionLock = v20->_connectionLock;
    v20->_connectionLock = v39;

    objc_storeStrong(&v20->_urlRequest, request);
    v41 = [handlerCopy copy];
    challengeBlock = v20->_challengeBlock;
    v20->_challengeBlock = v41;

    v43 = [responseHandlerCopy copy];
    redirectResponseBlock = v20->_redirectResponseBlock;
    v20->_redirectResponseBlock = v43;

    v20->_inBackground = background;
    objc_storeStrong(&v20->_resumeData, data);
  }

  return v20;
}

- (void)invalidate
{
  connectionLock = [(BAURLSession *)self connectionLock];
  [connectionLock lock];

  urlSession = [(BAURLSession *)self urlSession];
  [urlSession finishTasksAndInvalidate];

  connectionLock2 = [(BAURLSession *)self connectionLock];
  [connectionLock2 unlock];
}

- (void)cancel
{
  connectionLock = [(BAURLSession *)self connectionLock];
  [connectionLock lock];

  downloadTask = [(BAURLSession *)self downloadTask];

  if (downloadTask)
  {
    downloadTask2 = [(BAURLSession *)self downloadTask];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000F05C;
    v8[3] = &unk_100079628;
    v8[4] = self;
    [downloadTask2 cancelByProducingResumeData:v8];
  }

  else
  {
    downloadTask2 = [(BAURLSession *)self baURLSessionDelegate];
    [downloadTask2 cancel];
  }

  urlSession = [(BAURLSession *)self urlSession];
  [urlSession invalidateAndCancel];

  [(BAURLSession *)self setUrlSession:0];
  connectionLock2 = [(BAURLSession *)self connectionLock];
  [connectionLock2 unlock];
}

- (void)startAsyncDownloadNotifyingOnQueue:(id)queue sessionConfiguration:(id)configuration extractorFactory:(id)factory bytesReceivedHandler:(id)handler completionHandler:(id)completionHandler
{
  queueCopy = queue;
  configurationCopy = configuration;
  factoryCopy = factory;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v17 = objc_autoreleasePoolPush();
  v18 = v17;
  if (queueCopy)
  {
    v58 = v17;
    connectionLock = [(BAURLSession *)self connectionLock];
    [connectionLock lock];

    urlSession = [(BAURLSession *)self urlSession];
    [urlSession invalidateAndCancel];

    [(BAURLSession *)self setUrlSession:0];
    [(BAURLSession *)self setBaURLSessionDelegate:0];
    [(BAURLSession *)self setDownloadTask:0];
    v21 = [_BAURLSessionDelegate alloc];
    destinationDirectory = [(BAURLSession *)self destinationDirectory];
    v23 = [(_BAURLSessionDelegate *)v21 initWithNotifyQueue:queueCopy withDestinationDirectory:destinationDirectory uniqueFileName:[(BAURLSession *)self useUniqueFileName] inBackground:self->_inBackground withAuthenticationHandler:self->_challengeBlock withRedirectResponseHandler:self->_redirectResponseBlock withBytesReceivedHandler:handlerCopy usingBlock:completionHandlerCopy];
    baURLSessionDelegate = self->_baURLSessionDelegate;
    self->_baURLSessionDelegate = v23;

    baURLSessionDelegate = [(BAURLSession *)self baURLSessionDelegate];
    v26 = [NSURLSession sessionWithConfiguration:configurationCopy delegate:baURLSessionDelegate delegateQueue:0];
    urlSession = self->_urlSession;
    self->_urlSession = v26;

    urlRequest = [(BAURLSession *)self urlRequest];
    v29 = [urlRequest copy];

    connectionLock2 = [(BAURLSession *)self connectionLock];
    [connectionLock2 unlock];

    v64 = 0;
    v65 = &v64;
    v66 = 0x2020000000;
    v67 = 0;
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_10000F630;
    v59[3] = &unk_100079678;
    v31 = v29;
    v60 = v31;
    v63 = &v64;
    v61 = queueCopy;
    v62 = completionHandlerCopy;
    v32 = objc_retainBlock(v59);
    urlSession2 = [(BAURLSession *)self urlSession];

    if (urlSession2)
    {
      connectionLock3 = [(BAURLSession *)self connectionLock];
      [connectionLock3 lock];
      v56 = configurationCopy;
      v57 = factoryCopy;

      resumeData = [(BAURLSession *)self resumeData];

      if (resumeData)
      {
        urlSession3 = [(BAURLSession *)self urlSession];
        resumeData2 = [(BAURLSession *)self resumeData];
        v38 = [urlSession3 downloadTaskWithResumeData:resumeData2];
        downloadTask = self->_downloadTask;
        self->_downloadTask = v38;

        downloadTask = [(BAURLSession *)self downloadTask];

        if (!downloadTask)
        {
          *(v65 + 24) = 1;
          (v32[2])(v32);
        }

        downloadTask2 = [(BAURLSession *)self downloadTask];
        [(BAURLSession *)self setResumeData:0];
      }

      else if (self->_inBackground || ([(BAURLSession *)self destinationDirectory], v43 = objc_claimAutoreleasedReturnValue(), v43, v43))
      {
        urlSession4 = [(BAURLSession *)self urlSession];
        v45 = [urlSession4 downloadTaskWithRequest:v31];
        v46 = self->_downloadTask;
        self->_downloadTask = v45;

        downloadTask3 = [(BAURLSession *)self downloadTask];

        if (!downloadTask3)
        {
          *(v65 + 24) = 1;
          (v32[2])(v32);
        }

        downloadTask2 = [(BAURLSession *)self downloadTask];
        if (v57)
        {
          v48 = v57[2]();
          [downloadTask2 set_extractor:v48];
        }
      }

      else
      {
        urlSession5 = [(BAURLSession *)self urlSession];
        downloadTask2 = [urlSession5 dataTaskWithRequest:v31];

        if (!downloadTask2)
        {
          *(v65 + 24) = 1;
          (v32[2])(v32);
        }
      }

      [(BAURLSession *)self initialConnectivityTimeout];
      if (v49 >= 0.0)
      {
        urlSession6 = [(BAURLSession *)self urlSession];
        configuration = [urlSession6 configuration];
        waitsForConnectivity = [configuration waitsForConnectivity];

        if (waitsForConnectivity)
        {
          baURLSessionDelegate2 = [(BAURLSession *)self baURLSessionDelegate];
          [(BAURLSession *)self initialConnectivityTimeout];
          [baURLSessionDelegate2 installConnectivityTimerWithTimeout:downloadTask2 task:?];
        }
      }

      [downloadTask2 resume];
      connectionLock4 = [(BAURLSession *)self connectionLock];
      [connectionLock4 unlock];

      configurationCopy = v56;
      factoryCopy = v57;
    }

    else
    {
      [(BAURLSession *)self setBaURLSessionDelegate:0];
      (v32[2])(v32);
    }

    _Block_object_dispose(&v64, 8);
    v18 = v58;
  }

  else
  {
    v42 = [NSException exceptionWithName:NSInvalidArgumentException reason:@"A queue must be passed to _startAsyncDownloadNotifyingOnQueue:" userInfo:0];
    [v42 raise];
  }

  objc_autoreleasePoolPop(v18);
}

@end
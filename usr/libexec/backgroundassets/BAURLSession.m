@interface BAURLSession
- (id)_initWithURLRequest:(id)a3 withResumeData:(id)a4 withDestinationDirectory:(id)a5 inBackground:(BOOL)a6 withAuthenticationHandler:(id)a7 withRedirectResponseHandler:(id)a8;
- (void)cancel;
- (void)invalidate;
- (void)startAsyncDownloadNotifyingOnQueue:(id)a3 sessionConfiguration:(id)a4 extractorFactory:(id)a5 bytesReceivedHandler:(id)a6 completionHandler:(id)a7;
@end

@implementation BAURLSession

- (id)_initWithURLRequest:(id)a3 withResumeData:(id)a4 withDestinationDirectory:(id)a5 inBackground:(BOOL)a6 withAuthenticationHandler:(id)a7 withRedirectResponseHandler:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v19 = a8;
  v53.receiver = self;
  v53.super_class = BAURLSession;
  v20 = [(BAURLSession *)&v53 init];
  if (v20)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = a6;
      v48 = a4;
      v49 = v16;
      v50 = v15;
      if (([v17 isFileURL] & 1) == 0)
      {
        v21 = [NSException exceptionWithName:NSInvalidArgumentException reason:@"Destination directory must be a file URL." userInfo:0];
        [v21 raise];
      }

      v52 = 0;
      v22 = +[NSFileManager defaultManager];
      v23 = [v17 path];
      v24 = [v23 stringByStandardizingPath];
      v25 = [v22 fileExistsAtPath:v24 isDirectory:&v52];
      v26 = v52;

      if (!v25 || (v26 & 1) != 0)
      {
        v28 = +[NSFileManager defaultManager];
        v29 = [v17 path];
        v30 = [v29 stringByStandardizingPath];
        v51 = 0;
        v31 = [v28 createDirectoryAtPath:v30 withIntermediateDirectories:1 attributes:0 error:&v51];
        v46 = v51;

        if (v31)
        {
          v32 = [v17 path];
          v33 = [v32 stringByStandardizingPath];
          destinationDirectory = v20->_destinationDirectory;
          v20->_destinationDirectory = v33;

          v16 = v49;
          v15 = v50;
          a4 = v48;
        }

        else
        {
          v35 = sub_100016048();
          v36 = [v35 stringByAppendingPathComponent:@"BAURLSessionStaging"];
          v37 = v20->_destinationDirectory;
          v20->_destinationDirectory = v36;

          v38 = sub_100010694();
          a4 = v48;
          v16 = v49;
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            sub_100048C54(v46, v38);
          }

          v15 = v50;
        }

        a6 = v47;
        v27 = v46;
      }

      else
      {
        v27 = [NSException exceptionWithName:NSInvalidArgumentException reason:@"Destination directory must exist and be a valid directory." userInfo:0];
        [v27 raise];
        v16 = v49;
        v15 = v50;
        a4 = v48;
        a6 = v47;
      }
    }

    v39 = objc_opt_new();
    connectionLock = v20->_connectionLock;
    v20->_connectionLock = v39;

    objc_storeStrong(&v20->_urlRequest, a3);
    v41 = [v18 copy];
    challengeBlock = v20->_challengeBlock;
    v20->_challengeBlock = v41;

    v43 = [v19 copy];
    redirectResponseBlock = v20->_redirectResponseBlock;
    v20->_redirectResponseBlock = v43;

    v20->_inBackground = a6;
    objc_storeStrong(&v20->_resumeData, a4);
  }

  return v20;
}

- (void)invalidate
{
  v3 = [(BAURLSession *)self connectionLock];
  [v3 lock];

  v4 = [(BAURLSession *)self urlSession];
  [v4 finishTasksAndInvalidate];

  v5 = [(BAURLSession *)self connectionLock];
  [v5 unlock];
}

- (void)cancel
{
  v3 = [(BAURLSession *)self connectionLock];
  [v3 lock];

  v4 = [(BAURLSession *)self downloadTask];

  if (v4)
  {
    v5 = [(BAURLSession *)self downloadTask];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000F05C;
    v8[3] = &unk_100079628;
    v8[4] = self;
    [v5 cancelByProducingResumeData:v8];
  }

  else
  {
    v5 = [(BAURLSession *)self baURLSessionDelegate];
    [v5 cancel];
  }

  v6 = [(BAURLSession *)self urlSession];
  [v6 invalidateAndCancel];

  [(BAURLSession *)self setUrlSession:0];
  v7 = [(BAURLSession *)self connectionLock];
  [v7 unlock];
}

- (void)startAsyncDownloadNotifyingOnQueue:(id)a3 sessionConfiguration:(id)a4 extractorFactory:(id)a5 bytesReceivedHandler:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = objc_autoreleasePoolPush();
  v18 = v17;
  if (v12)
  {
    v58 = v17;
    v19 = [(BAURLSession *)self connectionLock];
    [v19 lock];

    v20 = [(BAURLSession *)self urlSession];
    [v20 invalidateAndCancel];

    [(BAURLSession *)self setUrlSession:0];
    [(BAURLSession *)self setBaURLSessionDelegate:0];
    [(BAURLSession *)self setDownloadTask:0];
    v21 = [_BAURLSessionDelegate alloc];
    v22 = [(BAURLSession *)self destinationDirectory];
    v23 = [(_BAURLSessionDelegate *)v21 initWithNotifyQueue:v12 withDestinationDirectory:v22 uniqueFileName:[(BAURLSession *)self useUniqueFileName] inBackground:self->_inBackground withAuthenticationHandler:self->_challengeBlock withRedirectResponseHandler:self->_redirectResponseBlock withBytesReceivedHandler:v15 usingBlock:v16];
    baURLSessionDelegate = self->_baURLSessionDelegate;
    self->_baURLSessionDelegate = v23;

    v25 = [(BAURLSession *)self baURLSessionDelegate];
    v26 = [NSURLSession sessionWithConfiguration:v13 delegate:v25 delegateQueue:0];
    urlSession = self->_urlSession;
    self->_urlSession = v26;

    v28 = [(BAURLSession *)self urlRequest];
    v29 = [v28 copy];

    v30 = [(BAURLSession *)self connectionLock];
    [v30 unlock];

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
    v61 = v12;
    v62 = v16;
    v32 = objc_retainBlock(v59);
    v33 = [(BAURLSession *)self urlSession];

    if (v33)
    {
      v34 = [(BAURLSession *)self connectionLock];
      [v34 lock];
      v56 = v13;
      v57 = v14;

      v35 = [(BAURLSession *)self resumeData];

      if (v35)
      {
        v36 = [(BAURLSession *)self urlSession];
        v37 = [(BAURLSession *)self resumeData];
        v38 = [v36 downloadTaskWithResumeData:v37];
        downloadTask = self->_downloadTask;
        self->_downloadTask = v38;

        v40 = [(BAURLSession *)self downloadTask];

        if (!v40)
        {
          *(v65 + 24) = 1;
          (v32[2])(v32);
        }

        v41 = [(BAURLSession *)self downloadTask];
        [(BAURLSession *)self setResumeData:0];
      }

      else if (self->_inBackground || ([(BAURLSession *)self destinationDirectory], v43 = objc_claimAutoreleasedReturnValue(), v43, v43))
      {
        v44 = [(BAURLSession *)self urlSession];
        v45 = [v44 downloadTaskWithRequest:v31];
        v46 = self->_downloadTask;
        self->_downloadTask = v45;

        v47 = [(BAURLSession *)self downloadTask];

        if (!v47)
        {
          *(v65 + 24) = 1;
          (v32[2])(v32);
        }

        v41 = [(BAURLSession *)self downloadTask];
        if (v57)
        {
          v48 = v57[2]();
          [v41 set_extractor:v48];
        }
      }

      else
      {
        v55 = [(BAURLSession *)self urlSession];
        v41 = [v55 dataTaskWithRequest:v31];

        if (!v41)
        {
          *(v65 + 24) = 1;
          (v32[2])(v32);
        }
      }

      [(BAURLSession *)self initialConnectivityTimeout];
      if (v49 >= 0.0)
      {
        v50 = [(BAURLSession *)self urlSession];
        v51 = [v50 configuration];
        v52 = [v51 waitsForConnectivity];

        if (v52)
        {
          v53 = [(BAURLSession *)self baURLSessionDelegate];
          [(BAURLSession *)self initialConnectivityTimeout];
          [v53 installConnectivityTimerWithTimeout:v41 task:?];
        }
      }

      [v41 resume];
      v54 = [(BAURLSession *)self connectionLock];
      [v54 unlock];

      v13 = v56;
      v14 = v57;
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
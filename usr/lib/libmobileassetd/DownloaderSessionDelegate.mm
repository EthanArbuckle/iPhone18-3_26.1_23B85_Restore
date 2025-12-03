@interface DownloaderSessionDelegate
- (DownloaderSessionDelegate)initWithDownloadManager:(id)manager;
- (NSOperationQueue)queue;
- (NSString)backgroundSessionID;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l;
- (void)URLSession:(id)session downloadTask:(id)task didResumeAtOffset:(int64_t)offset expectedTotalBytes:(int64_t)bytes;
- (void)URLSession:(id)session downloadTask:(id)task didWriteData:(int64_t)data totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)invalidateStaleBackgroundSessionsIfNeeded;
@end

@implementation DownloaderSessionDelegate

- (DownloaderSessionDelegate)initWithDownloadManager:(id)manager
{
  managerCopy = manager;
  v10.receiver = self;
  v10.super_class = DownloaderSessionDelegate;
  v5 = [(DownloaderSessionDelegate *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_downloadManager = managerCopy;
    v7 = [[MAKeyManagerDownloadSessionDelegate alloc] initWithName:@"DownloadSession" certType:1];
    keyManagerDelegate = v6->_keyManagerDelegate;
    v6->_keyManagerDelegate = v7;
  }

  return v6;
}

- (NSOperationQueue)queue
{
  keyManagerDelegate = [(DownloaderSessionDelegate *)self keyManagerDelegate];
  queue = [keyManagerDelegate queue];

  return queue;
}

- (NSString)backgroundSessionID
{
  allBackgroundSessionIDs = [(DownloaderSessionDelegate *)self allBackgroundSessionIDs];
  lastObject = [allBackgroundSessionIDs lastObject];

  return lastObject;
}

- (void)invalidateStaleBackgroundSessionsIfNeeded
{
  backgroundSessionID = [(DownloaderSessionDelegate *)self backgroundSessionID];
  v4 = _MAPreferencesCopyValue(@"LastUsedBackgroundSessionID");
  if (([v4 isEqual:backgroundSessionID] & 1) == 0)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    allBackgroundSessionIDs = [(DownloaderSessionDelegate *)self allBackgroundSessionIDs];
    v6 = [allBackgroundSessionIDs countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(allBackgroundSessionIDs);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          if (([v10 isEqual:backgroundSessionID] & 1) == 0)
          {
            v11 = _MADLog(@"DownloadSession");
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v20 = v10;
              _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Cancelling stale background session: %{public}@", buf, 0xCu);
            }

            v12 = [NSURLSessionConfiguration backgroundSessionConfigurationWithIdentifier:v10];
            v13 = [NSURLSession sessionWithConfiguration:v12];
            [v13 invalidateAndCancel];
          }
        }

        v7 = [allBackgroundSessionIDs countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v7);
    }

    v14 = [NSString stringWithUTF8String:"[DownloaderSessionDelegate invalidateStaleBackgroundSessionsIfNeeded]"];
    _MAPreferencesSetStringValue(@"LastUsedBackgroundSessionID", backgroundSessionID, v14, @"cancelled old background sessions");
  }
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  handlerCopy = handler;
  challengeCopy = challenge;
  sessionCopy = session;
  keyManagerDelegate = [(DownloaderSessionDelegate *)self keyManagerDelegate];
  [keyManagerDelegate URLSession:sessionCopy didReceiveChallenge:challengeCopy completionHandler:handlerCopy];
}

- (void)URLSession:(id)session downloadTask:(id)task didWriteData:(int64_t)data totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write
{
  sessionCopy = session;
  taskCopy = task;
  v13 = objc_autoreleasePoolPush();
  if (taskCopy)
  {
    downloadManager = self->_downloadManager;
    taskDescription = [taskCopy taskDescription];
    [(DownloadManager *)downloadManager updateProgressIfRequired:taskDescription totalWritten:written totalExpected:write notify:0];
  }

  else
  {
    v16 = _MADLog(@"DownloadSession");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = 138543362;
      v18 = sessionCopy;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "Task was updated but was nil, should never happen! Session %{public}@", &v17, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v13);
}

- (void)URLSession:(id)session downloadTask:(id)task didResumeAtOffset:(int64_t)offset expectedTotalBytes:(int64_t)bytes
{
  sessionCopy = session;
  taskCopy = task;
  v11 = _MADLog(@"DownloadSession");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    _loggableDescription = [taskCopy _loggableDescription];
    v13 = 138413314;
    v14 = _loggableDescription;
    v15 = 2048;
    offsetCopy = offset;
    v17 = 2048;
    bytesCopy = bytes;
    v19 = 2114;
    v20 = sessionCopy;
    v21 = 2114;
    v22 = taskCopy;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%@ Task resumed at offset %lld bytes out of an expected %lld bytes. Session %{public}@ task %{public}@\n", &v13, 0x34u);
  }
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  sessionCopy = session;
  taskCopy = task;
  errorCopy = error;
  v11 = objc_autoreleasePoolPush();
  if (self->_downloadManager)
  {
    v12 = _MADLog(@"DownloadSession");
    v13 = v12;
    if (taskCopy)
    {
      v14 = 16 * (errorCopy != 0);
      if (os_log_type_enabled(v12, v14))
      {
        _loggableDescription = [(__CFString *)taskCopy _loggableDescription];
        response = [(__CFString *)taskCopy response];
        if (errorCopy)
        {
          checkedDescription = [errorCopy checkedDescription];
        }

        else
        {
          checkedDescription = @"N/A";
        }

        *buf = 138412802;
        v36 = _loggableDescription;
        v37 = 2112;
        v38 = response;
        v39 = 2112;
        v40 = checkedDescription;
        _os_log_impl(&dword_0, v13, v14, "%@ Task completed with response %@ and error %@", buf, 0x20u);
        if (errorCopy)
        {
        }
      }

      downloadManager = self->_downloadManager;
      taskDescription = [(__CFString *)taskCopy taskDescription];
      [(DownloadManager *)downloadManager notifyCacheDeleteManagerDownloadFinished:taskDescription];

      _hasSZExtractor = [(__CFString *)taskCopy _hasSZExtractor];
      v23 = _hasSZExtractor;
      if (_hasSZExtractor)
      {
        v24 = [(__CFString *)taskCopy _doesSZExtractorConsumeExtractedData]^ 1;
      }

      else
      {
        v24 = 1;
      }

      HIDWORD(v33) = v24;
      originalRequest = [(__CFString *)taskCopy originalRequest];
      v26 = [originalRequest URL];

      v34 = v11;
      if (v26 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v27 = sessionCopy;
        v28 = v26;
      }

      else
      {
        v27 = sessionCopy;
        v28 = 0;
      }

      response2 = [(__CFString *)taskCopy response];
      v30 = self->_downloadManager;
      taskDescription2 = [(__CFString *)taskCopy taskDescription];
      v32 = [(__CFString *)taskCopy description];
      LOBYTE(v33) = v23;
      [(DownloadManager *)v30 assessDownloadCompletion:response2 originalUrl:v28 taskDescription:taskDescription2 taskId:v32 error:errorCopy moveFile:HIDWORD(v33) extractorExists:v33];

      sessionCopy = v27;
      v11 = v34;
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v36 = sessionCopy;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "Session %{public}@ Task completed but task was nil", buf, 0xCu);
      }

      [(DownloadManager *)self->_downloadManager queryNSUrlSessiondAndUpdateState];
    }
  }

  else
  {
    v18 = _MADLog(@"DownloadSession");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      _loggableDescription2 = [(__CFString *)taskCopy _loggableDescription];
      *buf = 138412802;
      v36 = _loggableDescription2;
      v37 = 2114;
      v38 = sessionCopy;
      v39 = 2114;
      v40 = taskCopy;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%@ Download manager is nil aborting. Session %{public}@ task %{public}@", buf, 0x20u);
    }
  }

  objc_autoreleasePoolPop(v11);
}

- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l
{
  sessionCopy = session;
  taskCopy = task;
  lCopy = l;
  v10 = objc_autoreleasePoolPush();
  _hasSZExtractor = [taskCopy _hasSZExtractor];
  taskDescription = [taskCopy taskDescription];
  if (_hasSZExtractor && [taskCopy _doesSZExtractorConsumeExtractedData])
  {
    v13 = _MADLog(@"DownloadSession");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      _loggableDescription = [taskCopy _loggableDescription];
      *buf = 138412802;
      v33 = _loggableDescription;
      v34 = 2114;
      *v35 = sessionCopy;
      *&v35[8] = 2114;
      *&v35[10] = taskCopy;
      v15 = "%@ Skipping the move due to extractor consuming bytes. Session %{public}@ task %{public}@";
      v16 = v13;
      v17 = 32;
LABEL_15:
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);

      goto LABEL_16;
    }

    goto LABEL_16;
  }

  if (!taskDescription)
  {
    v13 = _MADLog(@"DownloadSession");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      _loggableDescription = [taskCopy _loggableDescription];
      *buf = 138412546;
      v33 = _loggableDescription;
      v34 = 2114;
      *v35 = sessionCopy;
      v15 = "%@ Skipping the move as we do not have a task description. Session %{public}@";
      v16 = v13;
      v17 = 22;
      goto LABEL_15;
    }

LABEL_16:

    v19 = 0;
    v23 = 0;
    v22 = 0;
    v18 = 0;
    goto LABEL_17;
  }

  v29 = v10;
  v18 = getAssetTypeFromTaskDescriptor(taskDescription);
  v19 = repositoryPath(v18);
  v20 = _MADLog(@"DownloadSession");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    _loggableDescription2 = [taskCopy _loggableDescription];
    *buf = 138413570;
    v33 = _loggableDescription2;
    v34 = 1024;
    *v35 = _hasSZExtractor;
    *&v35[4] = 2114;
    *&v35[6] = sessionCopy;
    *&v35[14] = 2114;
    *&v35[16] = taskCopy;
    v36 = 2114;
    v37 = v18;
    v38 = 2114;
    v39 = v19;
    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "%@ Moving file in didFinishDownloadingToURL, extractor: %d. Session %{public}@ task %{public}@ type %{public}@ repository %{public}@", buf, 0x3Au);
  }

  v31 = sessionCopy;

  v22 = getPathToStagedFile(v18, taskDescription, 1);
  v23 = getPathToTempDownloadFile(v18, taskDescription, 0);
  v30 = lCopy;
  v24 = moveTargetToDirectory(lCopy, v22);
  v25 = _MADLog(@"DownloadSession");
  v26 = 16 * (v24 != 0);
  if (os_log_type_enabled(v25, v26))
  {
    _loggableDescription3 = [taskCopy _loggableDescription];
    v28 = stringForMADownloadResult(v24);
    *buf = 138412802;
    v33 = _loggableDescription3;
    v34 = 2112;
    *v35 = v28;
    *&v35[8] = 2112;
    *&v35[10] = v22;
    _os_log_impl(&dword_0, v25, v26, "%@ %@ Attempted to move to staging dir %@", buf, 0x20u);
  }

  if (v23)
  {
    removeItem(v23);
  }

  lCopy = v30;
  sessionCopy = v31;
  v10 = v29;
LABEL_17:

  objc_autoreleasePoolPop(v10);
}

@end
@interface DownloaderSessionDelegate
- (DownloaderSessionDelegate)initWithDownloadManager:(id)a3;
- (NSOperationQueue)queue;
- (NSString)backgroundSessionID;
- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didResumeAtOffset:(int64_t)a5 expectedTotalBytes:(int64_t)a6;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didWriteData:(int64_t)a5 totalBytesWritten:(int64_t)a6 totalBytesExpectedToWrite:(int64_t)a7;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)invalidateStaleBackgroundSessionsIfNeeded;
@end

@implementation DownloaderSessionDelegate

- (DownloaderSessionDelegate)initWithDownloadManager:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = DownloaderSessionDelegate;
  v5 = [(DownloaderSessionDelegate *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_downloadManager = v4;
    v7 = [[MAKeyManagerDownloadSessionDelegate alloc] initWithName:@"DownloadSession" certType:1];
    keyManagerDelegate = v6->_keyManagerDelegate;
    v6->_keyManagerDelegate = v7;
  }

  return v6;
}

- (NSOperationQueue)queue
{
  v2 = [(DownloaderSessionDelegate *)self keyManagerDelegate];
  v3 = [v2 queue];

  return v3;
}

- (NSString)backgroundSessionID
{
  v2 = [(DownloaderSessionDelegate *)self allBackgroundSessionIDs];
  v3 = [v2 lastObject];

  return v3;
}

- (void)invalidateStaleBackgroundSessionsIfNeeded
{
  v3 = [(DownloaderSessionDelegate *)self backgroundSessionID];
  v4 = _MAPreferencesCopyValue(@"LastUsedBackgroundSessionID");
  if (([v4 isEqual:v3] & 1) == 0)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [(DownloaderSessionDelegate *)self allBackgroundSessionIDs];
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          if (([v10 isEqual:v3] & 1) == 0)
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

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v7);
    }

    v14 = [NSString stringWithUTF8String:"[DownloaderSessionDelegate invalidateStaleBackgroundSessionsIfNeeded]"];
    _MAPreferencesSetStringValue(@"LastUsedBackgroundSessionID", v3, v14, @"cancelled old background sessions");
  }
}

- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(DownloaderSessionDelegate *)self keyManagerDelegate];
  [v11 URLSession:v10 didReceiveChallenge:v9 completionHandler:v8];
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didWriteData:(int64_t)a5 totalBytesWritten:(int64_t)a6 totalBytesExpectedToWrite:(int64_t)a7
{
  v11 = a3;
  v12 = a4;
  v13 = objc_autoreleasePoolPush();
  if (v12)
  {
    downloadManager = self->_downloadManager;
    v15 = [v12 taskDescription];
    [(DownloadManager *)downloadManager updateProgressIfRequired:v15 totalWritten:a6 totalExpected:a7 notify:0];
  }

  else
  {
    v16 = _MADLog(@"DownloadSession");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = 138543362;
      v18 = v11;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "Task was updated but was nil, should never happen! Session %{public}@", &v17, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v13);
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didResumeAtOffset:(int64_t)a5 expectedTotalBytes:(int64_t)a6
{
  v9 = a3;
  v10 = a4;
  v11 = _MADLog(@"DownloadSession");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v10 _loggableDescription];
    v13 = 138413314;
    v14 = v12;
    v15 = 2048;
    v16 = a5;
    v17 = 2048;
    v18 = a6;
    v19 = 2114;
    v20 = v9;
    v21 = 2114;
    v22 = v10;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%@ Task resumed at offset %lld bytes out of an expected %lld bytes. Session %{public}@ task %{public}@\n", &v13, 0x34u);
  }
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  if (self->_downloadManager)
  {
    v12 = _MADLog(@"DownloadSession");
    v13 = v12;
    if (v9)
    {
      v14 = 16 * (v10 != 0);
      if (os_log_type_enabled(v12, v14))
      {
        v15 = [(__CFString *)v9 _loggableDescription];
        v16 = [(__CFString *)v9 response];
        if (v10)
        {
          v17 = [v10 checkedDescription];
        }

        else
        {
          v17 = @"N/A";
        }

        *buf = 138412802;
        v36 = v15;
        v37 = 2112;
        v38 = v16;
        v39 = 2112;
        v40 = v17;
        _os_log_impl(&dword_0, v13, v14, "%@ Task completed with response %@ and error %@", buf, 0x20u);
        if (v10)
        {
        }
      }

      downloadManager = self->_downloadManager;
      v21 = [(__CFString *)v9 taskDescription];
      [(DownloadManager *)downloadManager notifyCacheDeleteManagerDownloadFinished:v21];

      v22 = [(__CFString *)v9 _hasSZExtractor];
      v23 = v22;
      if (v22)
      {
        v24 = [(__CFString *)v9 _doesSZExtractorConsumeExtractedData]^ 1;
      }

      else
      {
        v24 = 1;
      }

      HIDWORD(v33) = v24;
      v25 = [(__CFString *)v9 originalRequest];
      v26 = [v25 URL];

      v34 = v11;
      if (v26 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v27 = v8;
        v28 = v26;
      }

      else
      {
        v27 = v8;
        v28 = 0;
      }

      v29 = [(__CFString *)v9 response];
      v30 = self->_downloadManager;
      v31 = [(__CFString *)v9 taskDescription];
      v32 = [(__CFString *)v9 description];
      LOBYTE(v33) = v23;
      [(DownloadManager *)v30 assessDownloadCompletion:v29 originalUrl:v28 taskDescription:v31 taskId:v32 error:v10 moveFile:HIDWORD(v33) extractorExists:v33];

      v8 = v27;
      v11 = v34;
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v36 = v8;
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
      v19 = [(__CFString *)v9 _loggableDescription];
      *buf = 138412802;
      v36 = v19;
      v37 = 2114;
      v38 = v8;
      v39 = 2114;
      v40 = v9;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%@ Download manager is nil aborting. Session %{public}@ task %{public}@", buf, 0x20u);
    }
  }

  objc_autoreleasePoolPop(v11);
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  v11 = [v8 _hasSZExtractor];
  v12 = [v8 taskDescription];
  if (v11 && [v8 _doesSZExtractorConsumeExtractedData])
  {
    v13 = _MADLog(@"DownloadSession");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v8 _loggableDescription];
      *buf = 138412802;
      v33 = v14;
      v34 = 2114;
      *v35 = v7;
      *&v35[8] = 2114;
      *&v35[10] = v8;
      v15 = "%@ Skipping the move due to extractor consuming bytes. Session %{public}@ task %{public}@";
      v16 = v13;
      v17 = 32;
LABEL_15:
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);

      goto LABEL_16;
    }

    goto LABEL_16;
  }

  if (!v12)
  {
    v13 = _MADLog(@"DownloadSession");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v8 _loggableDescription];
      *buf = 138412546;
      v33 = v14;
      v34 = 2114;
      *v35 = v7;
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
  v18 = getAssetTypeFromTaskDescriptor(v12);
  v19 = repositoryPath(v18);
  v20 = _MADLog(@"DownloadSession");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [v8 _loggableDescription];
    *buf = 138413570;
    v33 = v21;
    v34 = 1024;
    *v35 = v11;
    *&v35[4] = 2114;
    *&v35[6] = v7;
    *&v35[14] = 2114;
    *&v35[16] = v8;
    v36 = 2114;
    v37 = v18;
    v38 = 2114;
    v39 = v19;
    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "%@ Moving file in didFinishDownloadingToURL, extractor: %d. Session %{public}@ task %{public}@ type %{public}@ repository %{public}@", buf, 0x3Au);
  }

  v31 = v7;

  v22 = getPathToStagedFile(v18, v12, 1);
  v23 = getPathToTempDownloadFile(v18, v12, 0);
  v30 = v9;
  v24 = moveTargetToDirectory(v9, v22);
  v25 = _MADLog(@"DownloadSession");
  v26 = 16 * (v24 != 0);
  if (os_log_type_enabled(v25, v26))
  {
    v27 = [v8 _loggableDescription];
    v28 = stringForMADownloadResult(v24);
    *buf = 138412802;
    v33 = v27;
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

  v9 = v30;
  v7 = v31;
  v10 = v29;
LABEL_17:

  objc_autoreleasePoolPop(v10);
}

@end
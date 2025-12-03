@interface SplunkSessionDelegate
- (SplunkSessionDelegate)initWithDownloadManager:(id)manager;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
@end

@implementation SplunkSessionDelegate

- (SplunkSessionDelegate)initWithDownloadManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = SplunkSessionDelegate;
  v6 = [(SplunkSessionDelegate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_downloadManager, manager);
  }

  return v7;
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  sessionCopy = session;
  taskCopy = task;
  errorCopy = error;
  v11 = objc_autoreleasePoolPush();
  if (taskCopy)
  {
    taskDescription = [taskCopy taskDescription];
    response = [taskCopy response];
    v14 = response;
    if (response)
    {
      statusCode = [response statusCode];
    }

    else
    {
      statusCode = 0;
    }

    v18 = statusCode != stru_B8.segname && statusCode != &stru_B8.segname[6];
    if (!errorCopy && !v18)
    {
      v19 = 1;
      goto LABEL_20;
    }

    v16 = _MADLog(@"Analytics");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v21 = 134217984;
      v22 = statusCode;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "Network error: %ld", &v21, 0xCu);
    }
  }

  else
  {
    v16 = _MADLog(@"Analytics");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Task completed but task was nil", &v21, 2u);
    }

    v14 = 0;
    statusCode = 0;
    taskDescription = 0;
  }

  v19 = 0;
LABEL_20:
  v20 = _MADLog(@"Analytics");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138544130;
    v22 = taskDescription;
    v23 = 1024;
    v24 = v19;
    v25 = 2048;
    v26 = statusCode;
    v27 = 2114;
    v28 = errorCopy;
    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "Splunk report result for %{public}@: %d, code:%ld error: %{public}@", &v21, 0x26u);
  }

  [(DownloadManager *)self->_downloadManager handleSplunkReportFinished:taskDescription result:v19];
  objc_autoreleasePoolPop(v11);
}

@end
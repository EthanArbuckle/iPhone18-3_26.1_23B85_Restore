@interface SplunkSessionDelegate
- (SplunkSessionDelegate)initWithDownloadManager:(id)a3;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
@end

@implementation SplunkSessionDelegate

- (SplunkSessionDelegate)initWithDownloadManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SplunkSessionDelegate;
  v6 = [(SplunkSessionDelegate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_downloadManager, a3);
  }

  return v7;
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  if (v9)
  {
    v12 = [v9 taskDescription];
    v13 = [v9 response];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 statusCode];
    }

    else
    {
      v15 = 0;
    }

    v18 = v15 != stru_B8.segname && v15 != &stru_B8.segname[6];
    if (!v10 && !v18)
    {
      v19 = 1;
      goto LABEL_20;
    }

    v16 = _MADLog(@"Analytics");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v21 = 134217984;
      v22 = v15;
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
    v15 = 0;
    v12 = 0;
  }

  v19 = 0;
LABEL_20:
  v20 = _MADLog(@"Analytics");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138544130;
    v22 = v12;
    v23 = 1024;
    v24 = v19;
    v25 = 2048;
    v26 = v15;
    v27 = 2114;
    v28 = v10;
    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "Splunk report result for %{public}@: %d, code:%ld error: %{public}@", &v21, 0x26u);
  }

  [(DownloadManager *)self->_downloadManager handleSplunkReportFinished:v12 result:v19];
  objc_autoreleasePoolPop(v11);
}

@end
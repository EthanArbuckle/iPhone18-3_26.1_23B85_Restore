@interface PerformDownloadOperation
- (PerformDownloadOperation)initWithDownloadPipeline:(id)a3 response:(id)a4;
- (void)run;
- (void)signalDownloadCompletion;
@end

@implementation PerformDownloadOperation

- (PerformDownloadOperation)initWithDownloadPipeline:(id)a3 response:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = PerformDownloadOperation;
  v9 = [(PerformDownloadOperation *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_pipeline, a3);
    objc_storeStrong(&v10->_response, a4);
    v11 = dispatch_semaphore_create(0);
    downloadTaskWaitSemaphore = v10->_downloadTaskWaitSemaphore;
    v10->_downloadTaskWaitSemaphore = v11;

    v10->_waitForDownload = 0;
  }

  return v10;
}

- (void)run
{
  [(DownloadPipeline *)self->_pipeline _performDownloadOperation:self];
  if (self->_waitForDownload)
  {
    v3 = +[SSLogConfig sharedDaemonConfig];
    if (!v3)
    {
      v3 = +[SSLogConfig sharedConfig];
    }

    v4 = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      v5 = v4 | 2;
    }

    else
    {
      v5 = v4;
    }

    v6 = [v3 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = v5;
    }

    else
    {
      v7 = v5 & 2;
    }

    if (v7)
    {
      v10[0] = 0;
      LODWORD(v9) = 2;
      v8 = _os_log_send_and_compose_impl();

      if (!v8)
      {
LABEL_14:

        dispatch_semaphore_wait(self->_downloadTaskWaitSemaphore, 0xFFFFFFFFFFFFFFFFLL);
        return;
      }

      v6 = [NSString stringWithCString:v8 encoding:4, v10, v9];
      free(v8);
      SSFileLog();
    }

    goto LABEL_14;
  }
}

- (void)signalDownloadCompletion
{
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v5;
  }

  else
  {
    v7 = v5 & 2;
  }

  if (!v7)
  {
    goto LABEL_12;
  }

  v10[0] = 0;
  LODWORD(v9) = 2;
  v8 = _os_log_send_and_compose_impl();

  if (v8)
  {
    v6 = [NSString stringWithCString:v8 encoding:4, v10, v9];
    free(v8);
    SSFileLog();
LABEL_12:
  }

  dispatch_semaphore_signal(self->_downloadTaskWaitSemaphore);
}

@end
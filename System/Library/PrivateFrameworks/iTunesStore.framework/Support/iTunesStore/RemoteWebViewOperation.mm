@interface RemoteWebViewOperation
- (RemoteWebViewOperation)initWithWebViewRequest:(id)a3;
- (void)_sendActivationWithError:(id)a3;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidActivate:(id)a3;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
- (void)run;
@end

@implementation RemoteWebViewOperation

- (RemoteWebViewOperation)initWithWebViewRequest:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = RemoteWebViewOperation;
  v6 = [(RemoteWebViewOperation *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, a3);
    v8 = dispatch_queue_create("com.apple.itunesstored.RemoteWebView", 0);
    queue = v7->_queue;
    v7->_queue = v8;
  }

  return v7;
}

- (void)run
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
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v5 &= 2u;
  }

  if (v5)
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = [(RemoteWebViewOperation *)self request];
    v10 = [v9 URLString];
    v44 = 138543618;
    v45 = v7;
    v46 = 2114;
    v47 = v10;
    LODWORD(v41) = 22;
    v40 = &v44;
    v11 = _os_log_send_and_compose_impl();

    if (!v11)
    {
      goto LABEL_12;
    }

    v6 = [NSString stringWithCString:v11 encoding:4, &v44, v41];
    free(v11);
    v40 = v6;
    SSFileLog();
  }

LABEL_12:
  v12 = dispatch_semaphore_create(0);
  alertSemaphore = self->_alertSemaphore;
  self->_alertSemaphore = v12;

  v14 = [[SBSRemoteAlertDefinition alloc] initWithServiceName:@"com.apple.ios.StoreKitUIService" viewControllerClassName:@"ServiceWebViewPromptViewController"];
  v15 = objc_alloc_init(SBSRemoteAlertConfigurationContext);
  v42[0] = @"referrer";
  v16 = [(RemoteWebViewOperation *)self request];
  v17 = [v16 referrer];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = &stru_10033CC30;
  }

  v42[1] = @"URLString";
  v43[0] = v19;
  v20 = [(RemoteWebViewOperation *)self request];
  v21 = [v20 URLString];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = &stru_10033CC30;
  }

  v43[1] = v23;
  v24 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:2];
  [v15 setUserInfo:v24];

  v25 = [SBSRemoteAlertHandle newHandleWithDefinition:v14 configurationContext:v15];
  v26 = v25;
  if (v25)
  {
    [v25 addObserver:self];
    [v26 activateWithContext:0];
    v27 = [(RemoteWebViewOperation *)self alertSemaphore];
    dispatch_semaphore_wait(v27, 0xFFFFFFFFFFFFFFFFLL);

LABEL_20:
    v28 = +[SSLogConfig sharedDaemonConfig];
    if (!v28)
    {
      v28 = +[SSLogConfig sharedConfig];
    }

    v29 = [v28 shouldLog];
    if ([v28 shouldLogToDisk])
    {
      v29 |= 2u;
    }

    v30 = [v28 OSLogObject];
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v29 &= 2u;
    }

    if (!v29)
    {
      v34 = 0;
      goto LABEL_41;
    }

    v31 = objc_opt_class();
    v44 = 138543362;
    v45 = v31;
    v32 = v31;
    LODWORD(v41) = 12;
    v33 = _os_log_send_and_compose_impl();

    v34 = 0;
    if (!v33)
    {
      goto LABEL_42;
    }

LABEL_39:
    v30 = [NSString stringWithCString:v33 encoding:4, &v44, v41];
    free(v33);
    SSFileLog();
LABEL_41:

    goto LABEL_42;
  }

  v35 = SSError();
  if (!v35)
  {
    goto LABEL_20;
  }

  v34 = v35;
  v28 = +[SSLogConfig sharedDaemonConfig];
  if (!v28)
  {
    v28 = +[SSLogConfig sharedConfig];
  }

  v36 = [v28 shouldLog];
  if ([v28 shouldLogToDisk])
  {
    v37 = v36 | 2;
  }

  else
  {
    v37 = v36;
  }

  v30 = [v28 OSLogObject];
  if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    v37 &= 2u;
  }

  if (!v37)
  {
    goto LABEL_41;
  }

  v38 = objc_opt_class();
  v44 = 138543618;
  v45 = v38;
  v46 = 2114;
  v47 = v34;
  v39 = v38;
  LODWORD(v41) = 22;
  v33 = _os_log_send_and_compose_impl();

  if (v33)
  {
    goto LABEL_39;
  }

LABEL_42:

  [(RemoteWebViewOperation *)self setError:v34];
  [(RemoteWebViewOperation *)self setSuccess:1];
}

- (void)remoteAlertHandleDidActivate:(id)a3
{
  v4 = +[SSLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v4 OSLogObject];
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_11;
  }

  LODWORD(v11) = 138543362;
  *(&v11 + 4) = objc_opt_class();
  v8 = *(&v11 + 4);
  LODWORD(v10) = 12;
  v9 = _os_log_send_and_compose_impl();

  if (v9)
  {
    v7 = [NSString stringWithCString:v9 encoding:4, &v11, v10, v11];
    free(v9);
    SSFileLog();
LABEL_11:
  }

  [(RemoteWebViewOperation *)self _sendActivationWithError:0];
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  v4 = +[SSLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v4 OSLogObject];
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_11;
  }

  LODWORD(v11) = 138543362;
  *(&v11 + 4) = objc_opt_class();
  v8 = *(&v11 + 4);
  LODWORD(v10) = 12;
  v9 = _os_log_send_and_compose_impl();

  if (v9)
  {
    v7 = [NSString stringWithCString:v9 encoding:4, &v11, v10, v11];
    free(v9);
    SSFileLog();
LABEL_11:
  }

  [(RemoteWebViewOperation *)self _sendActivationWithError:0];
  dispatch_semaphore_signal(self->_alertSemaphore);
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v5 = a4;
  v6 = +[SSLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  v7 = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v8 = v7 | 2;
  }

  else
  {
    v8 = v7;
  }

  v9 = [v6 OSLogObject];
  if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v8 &= 2u;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

  *v13 = 138543618;
  *&v13[4] = objc_opt_class();
  *&v13[12] = 2114;
  *&v13[14] = v5;
  v10 = *&v13[4];
  LODWORD(v12) = 22;
  v11 = _os_log_send_and_compose_impl();

  if (v11)
  {
    v9 = [NSString stringWithCString:v11 encoding:4, v13, v12, *v13, *&v13[16]];
    free(v11);
    SSFileLog();
LABEL_11:
  }

  [(RemoteWebViewOperation *)self _sendActivationWithError:v5];
  dispatch_semaphore_signal(self->_alertSemaphore);
}

- (void)_sendActivationWithError:(id)a3
{
  v4 = [(RemoteWebViewOperation *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E583C;
  block[3] = &unk_100327110;
  block[4] = self;
  dispatch_async(v4, block);
}

@end
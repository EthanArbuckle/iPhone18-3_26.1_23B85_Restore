@interface RemoteWebViewOperation
- (RemoteWebViewOperation)initWithWebViewRequest:(id)request;
- (void)_sendActivationWithError:(id)error;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidActivate:(id)activate;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
- (void)run;
@end

@implementation RemoteWebViewOperation

- (RemoteWebViewOperation)initWithWebViewRequest:(id)request
{
  requestCopy = request;
  v11.receiver = self;
  v11.super_class = RemoteWebViewOperation;
  v6 = [(RemoteWebViewOperation *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, request);
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

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = shouldLog | 2;
  }

  else
  {
    v5 = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v5 &= 2u;
  }

  if (v5)
  {
    v7 = objc_opt_class();
    v8 = v7;
    request = [(RemoteWebViewOperation *)self request];
    uRLString = [request URLString];
    v44 = 138543618;
    v45 = v7;
    v46 = 2114;
    v47 = uRLString;
    LODWORD(v41) = 22;
    v40 = &v44;
    v11 = _os_log_send_and_compose_impl();

    if (!v11)
    {
      goto LABEL_12;
    }

    oSLogObject = [NSString stringWithCString:v11 encoding:4, &v44, v41];
    free(v11);
    v40 = oSLogObject;
    SSFileLog();
  }

LABEL_12:
  v12 = dispatch_semaphore_create(0);
  alertSemaphore = self->_alertSemaphore;
  self->_alertSemaphore = v12;

  v14 = [[SBSRemoteAlertDefinition alloc] initWithServiceName:@"com.apple.ios.StoreKitUIService" viewControllerClassName:@"ServiceWebViewPromptViewController"];
  v15 = objc_alloc_init(SBSRemoteAlertConfigurationContext);
  v42[0] = @"referrer";
  request2 = [(RemoteWebViewOperation *)self request];
  referrer = [request2 referrer];
  v18 = referrer;
  if (referrer)
  {
    v19 = referrer;
  }

  else
  {
    v19 = &stru_10033CC30;
  }

  v42[1] = @"URLString";
  v43[0] = v19;
  request3 = [(RemoteWebViewOperation *)self request];
  uRLString2 = [request3 URLString];
  v22 = uRLString2;
  if (uRLString2)
  {
    v23 = uRLString2;
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
    alertSemaphore = [(RemoteWebViewOperation *)self alertSemaphore];
    dispatch_semaphore_wait(alertSemaphore, 0xFFFFFFFFFFFFFFFFLL);

LABEL_20:
    v28 = +[SSLogConfig sharedDaemonConfig];
    if (!v28)
    {
      v28 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v28 shouldLog];
    if ([v28 shouldLogToDisk])
    {
      shouldLog2 |= 2u;
    }

    oSLogObject2 = [v28 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      shouldLog2 &= 2u;
    }

    if (!shouldLog2)
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
    oSLogObject2 = [NSString stringWithCString:v33 encoding:4, &v44, v41];
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

  shouldLog3 = [v28 shouldLog];
  if ([v28 shouldLogToDisk])
  {
    v37 = shouldLog3 | 2;
  }

  else
  {
    v37 = shouldLog3;
  }

  oSLogObject2 = [v28 OSLogObject];
  if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
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

- (void)remoteAlertHandleDidActivate:(id)activate
{
  v4 = +[SSLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = shouldLog | 2;
  }

  else
  {
    v6 = shouldLog;
  }

  oSLogObject = [v4 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
    oSLogObject = [NSString stringWithCString:v9 encoding:4, &v11, v10, v11];
    free(v9);
    SSFileLog();
LABEL_11:
  }

  [(RemoteWebViewOperation *)self _sendActivationWithError:0];
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  v4 = +[SSLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = shouldLog | 2;
  }

  else
  {
    v6 = shouldLog;
  }

  oSLogObject = [v4 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
    oSLogObject = [NSString stringWithCString:v9 encoding:4, &v11, v10, v11];
    free(v9);
    SSFileLog();
LABEL_11:
  }

  [(RemoteWebViewOperation *)self _sendActivationWithError:0];
  dispatch_semaphore_signal(self->_alertSemaphore);
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  errorCopy = error;
  v6 = +[SSLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v8 = shouldLog | 2;
  }

  else
  {
    v8 = shouldLog;
  }

  oSLogObject = [v6 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
  *&v13[14] = errorCopy;
  v10 = *&v13[4];
  LODWORD(v12) = 22;
  v11 = _os_log_send_and_compose_impl();

  if (v11)
  {
    oSLogObject = [NSString stringWithCString:v11 encoding:4, v13, v12, *v13, *&v13[16]];
    free(v11);
    SSFileLog();
LABEL_11:
  }

  [(RemoteWebViewOperation *)self _sendActivationWithError:errorCopy];
  dispatch_semaphore_signal(self->_alertSemaphore);
}

- (void)_sendActivationWithError:(id)error
{
  queue = [(RemoteWebViewOperation *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E583C;
  block[3] = &unk_100327110;
  block[4] = self;
  dispatch_async(queue, block);
}

@end
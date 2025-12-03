@interface LoadMicroPaymentQueueCountOperation
- (BOOL)_loadCountReturningError:(id *)error;
- (BOOL)_setCountWithResponse:(id)response error:(id *)error;
- (void)dealloc;
- (void)run;
@end

@implementation LoadMicroPaymentQueueCountOperation

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = LoadMicroPaymentQueueCountOperation;
  [(LoadMicroPaymentQueueCountOperation *)&v3 dealloc];
}

- (void)run
{
  v22 = 0;
  request = [(LoadMicroPaymentQueueCountOperation *)self request];
  lastQueueCheckDate = [(LoadMicroPaymentQueueCountOperation *)self lastQueueCheckDate];
  if (lastQueueCheckDate && (v5 = lastQueueCheckDate, -[NSDate timeIntervalSinceNow](lastQueueCheckDate, "timeIntervalSinceNow"), v6 < 2.22044605e-16) && (v7 = [-[LoadMicroPaymentQueueCountOperation loadedURLBagWithContext:returningError:](self loadedURLBagWithContext:+[SSURLBagContext contextWithBagType:](SSURLBagContext returningError:{"contextWithBagType:", -[MicroPaymentQueueRequest URLBagType](request, "URLBagType")), 0), "valueForKey:", @"p2-in-app-download-queue-check-interval"}]) != 0 && (v8 = v7, -[NSDate timeIntervalSinceNow](v5, "timeIntervalSinceNow"), v10 = v9, objc_msgSend(v8, "doubleValue"), v10 >= -v11))
  {
    v14 = +[SSLogConfig sharedDaemonConfig];
    if (!v14)
    {
      v14 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v14 shouldLog];
    if ([v14 shouldLogToDisk])
    {
      v16 = shouldLog | 2;
    }

    else
    {
      v16 = shouldLog;
    }

    if (!os_log_type_enabled([v14 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v16 &= 2u;
    }

    if (v16)
    {
      v23 = 138412546;
      v24 = objc_opt_class();
      v25 = 2112;
      clientIdentity = [(MicroPaymentQueueRequest *)request clientIdentity];
      LODWORD(v21) = 22;
      v20 = &v23;
      v17 = _os_log_send_and_compose_impl();
      if (v17)
      {
        v18 = v17;
        v19 = [NSString stringWithCString:v17 encoding:4, &v23, v21];
        free(v18);
        v20 = v19;
        SSFileLog();
      }
    }

    v13 = SSError();
    v12 = 0;
    v22 = v13;
  }

  else
  {
    v12 = [(LoadMicroPaymentQueueCountOperation *)self _loadCountReturningError:&v22];
    v13 = v22;
  }

  [(LoadMicroPaymentQueueCountOperation *)self setError:v13, v20];
  [(LoadMicroPaymentQueueCountOperation *)self setSuccess:v12];
}

- (BOOL)_loadCountReturningError:(id *)error
{
  v21 = 0;
  request = [(LoadMicroPaymentQueueCountOperation *)self request];
  v6 = [(MicroPaymentQueueRequest *)request newStoreURLOperation:&v21];
  [v6 setDelegate:self];
  if (!v6)
  {
    v17 = 0;
    if (!error)
    {
      return v17;
    }

    goto LABEL_18;
  }

  v7 = objc_alloc_init(DaemonProtocolDataProvider);
  [v6 setDataProvider:v7];
  v8 = [objc_msgSend(v6 "requestProperties")];
  [v8 setURLBagKey:{-[LoadMicroPaymentQueueCountOperation URLBagKey](self, "URLBagKey")}];
  [v6 setRequestProperties:v8];

  v9 = +[SSLogConfig sharedDaemonConfig];
  if (!v9)
  {
    v9 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    v11 = shouldLog | 2;
  }

  else
  {
    v11 = shouldLog;
  }

  if (!os_log_type_enabled([v9 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v11 &= 2u;
  }

  if (v11)
  {
    v12 = objc_opt_class();
    uRLBagKey = [(LoadMicroPaymentQueueCountOperation *)self URLBagKey];
    v22 = 138412802;
    v23 = v12;
    v24 = 2112;
    v25 = uRLBagKey;
    v26 = 2112;
    v27 = request;
    LODWORD(v20) = 32;
    v19 = &v22;
    v14 = _os_log_send_and_compose_impl();
    if (v14)
    {
      v15 = v14;
      v16 = [NSString stringWithCString:v14 encoding:4, &v22, v20];
      free(v15);
      v19 = v16;
      SSFileLog();
    }
  }

  if ([(LoadMicroPaymentQueueCountOperation *)self runSubOperation:v6 returningError:&v21, v19])
  {
    v17 = [(LoadMicroPaymentQueueCountOperation *)self _setCountWithResponse:[(DaemonProtocolDataProvider *)v7 output] error:&v21];
  }

  else
  {
    v17 = 0;
  }

  [v6 setDelegate:0];
  if (error)
  {
LABEL_18:
    *error = v21;
  }

  return v17;
}

- (BOOL)_setCountWithResponse:(id)response error:(id *)error
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v12 = ISError();
    if (!error)
    {
      return isKindOfClass & 1;
    }

    goto LABEL_15;
  }

  v8 = [response objectForKey:@"download-queue-item-count"];
  if (objc_opt_respondsToSelector())
  {
    -[LoadMicroPaymentQueueCountOperation setQueueItemCount:](self, "setQueueItemCount:", [v8 intValue]);
    v9 = +[SSLogConfig sharedDaemonConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v9 shouldLog];
    v11 = [v9 shouldLogToDisk] ? shouldLog | 2 : shouldLog;
    if (!os_log_type_enabled([v9 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v16 = 138412802;
      v17 = objc_opt_class();
      v18 = 2112;
      v19 = v8;
      v20 = 2112;
      uRLBagKey = [(LoadMicroPaymentQueueCountOperation *)self URLBagKey];
      LODWORD(v15) = 32;
      v12 = _os_log_send_and_compose_impl();
      if (!v12)
      {
        goto LABEL_14;
      }

      v13 = v12;
      [NSString stringWithCString:v12 encoding:4, &v16, v15];
      free(v13);
      SSFileLog();
    }
  }

  v12 = 0;
LABEL_14:
  if (error)
  {
LABEL_15:
    *error = v12;
  }

  return isKindOfClass & 1;
}

@end
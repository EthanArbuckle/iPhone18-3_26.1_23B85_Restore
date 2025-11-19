@interface CheckDownloadQueueOperation
- (CheckDownloadQueueOperation)initWithDownloadQueueRequest:(id)a3;
- (StoreDownloadQueueRequest)downloadQueueRequest;
- (id)_account;
- (id)_newURLOperation;
- (int64_t)numberOfAvailableDownloads;
- (void)_runPendingCancelDownloadOperations;
- (void)dealloc;
- (void)run;
@end

@implementation CheckDownloadQueueOperation

- (CheckDownloadQueueOperation)initWithDownloadQueueRequest:(id)a3
{
  if (!a3)
  {
    sub_100272190(a2, self);
  }

  v7.receiver = self;
  v7.super_class = CheckDownloadQueueOperation;
  v5 = [(CheckDownloadQueueOperation *)&v7 init];
  if (v5)
  {
    v5->_request = [a3 copy];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CheckDownloadQueueOperation;
  [(CheckDownloadQueueOperation *)&v3 dealloc];
}

- (StoreDownloadQueueRequest)downloadQueueRequest
{
  v2 = [(StoreDownloadQueueRequest *)self->_request copy];

  return v2;
}

- (int64_t)numberOfAvailableDownloads
{
  [(CheckDownloadQueueOperation *)self lock];
  numberOfAvailableDownloads = self->_numberOfAvailableDownloads;
  [(CheckDownloadQueueOperation *)self unlock];
  return numberOfAvailableDownloads;
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

  if (!os_log_type_enabled([v3 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v5 &= 2u;
  }

  if (v5)
  {
    v6 = objc_opt_class();
    request = self->_request;
    v33 = 138412546;
    v34 = v6;
    v35 = 2112;
    v36 = request;
    LODWORD(v31) = 22;
    v29 = &v33;
    v8 = _os_log_send_and_compose_impl();
    if (v8)
    {
      v9 = v8;
      v10 = [NSString stringWithCString:v8 encoding:4, &v33, v31];
      free(v9);
      v29 = v10;
      SSFileLog();
    }
  }

  [(CheckDownloadQueueOperation *)self _runPendingCancelDownloadOperations];
  v32 = 0;
  v11 = [(CheckDownloadQueueOperation *)self _newURLOperation];
  if (([(CheckDownloadQueueOperation *)self runSubOperation:v11 returningError:&v32]& 1) != 0)
  {
    v12 = [objc_msgSend(objc_msgSend(v11 "dataProvider")];
    if (objc_opt_respondsToSelector())
    {
      v13 = [v12 intValue];
    }

    else
    {
      v13 = 0;
    }

    v21 = +[SSLogConfig sharedDaemonConfig];
    if (!v21)
    {
      v21 = +[SSLogConfig sharedConfig];
    }

    v22 = [v21 shouldLog];
    if ([v21 shouldLogToDisk])
    {
      v23 = v22 | 2;
    }

    else
    {
      v23 = v22;
    }

    if (!os_log_type_enabled([v21 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v23 &= 2u;
    }

    if (v23)
    {
      v24 = objc_opt_class();
      v25 = self->_request;
      v33 = 138412802;
      v34 = v24;
      v35 = 2048;
      v36 = v13;
      v37 = 2112;
      v38 = v25;
      LODWORD(v31) = 32;
      v30 = &v33;
      v26 = _os_log_send_and_compose_impl();
      if (v26)
      {
        v27 = v26;
        v28 = [NSString stringWithCString:v26 encoding:4, &v33, v31];
        free(v27);
        v30 = v28;
        SSFileLog();
      }
    }

    [(CheckDownloadQueueOperation *)self lock];
    self->_numberOfAvailableDownloads = v13;
    [(CheckDownloadQueueOperation *)self unlock];
    [(CheckDownloadQueueOperation *)self setSuccess:1];
  }

  else
  {
    v14 = +[SSLogConfig sharedDaemonConfig];
    if (!v14)
    {
      v14 = +[SSLogConfig sharedConfig];
    }

    v15 = [v14 shouldLog];
    if ([v14 shouldLogToDisk])
    {
      v16 = v15 | 2;
    }

    else
    {
      v16 = v15;
    }

    if (!os_log_type_enabled([v14 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v16 &= 2u;
    }

    if (v16)
    {
      v17 = objc_opt_class();
      v18 = self->_request;
      v33 = 138412802;
      v34 = v17;
      v35 = 2112;
      v36 = v18;
      v37 = 2112;
      v38 = v32;
      LODWORD(v31) = 32;
      v19 = _os_log_send_and_compose_impl();
      if (v19)
      {
        v20 = v19;
        [NSString stringWithCString:v19 encoding:4, &v33, v31];
        free(v20);
        SSFileLog();
      }
    }
  }
}

- (id)_account
{
  v2 = [(StoreDownloadQueueRequest *)self->_request accountIdentifier];
  if (!v2 || (result = [+[SSAccountStore defaultStore](SSAccountStore "defaultStore")]) == 0)
  {
    v4 = +[SSAccountStore defaultStore];

    return [v4 activeAccount];
  }

  return result;
}

- (id)_newURLOperation
{
  v3 = objc_alloc_init(ISStoreURLOperation);
  [v3 setUseUserSpecificURLBag:1];
  v4 = [(CheckDownloadQueueOperation *)self _account];
  v5 = [[SSAuthenticationContext alloc] initWithAccount:v4];
  [v3 setAuthenticationContext:v5];

  v6 = objc_alloc_init(SSMutableURLRequestProperties);
  [v6 setAllowedRetryCount:0];
  [v6 setCachePolicy:1];
  [v6 setURLBagKey:{-[StoreDownloadQueueRequest queueCountURLBagKey](self->_request, "queueCountURLBagKey")}];
  [v4 accountScope];
  [v6 setURLBagType:SSURLBagTypeForAccountScope()];
  [v3 setRequestProperties:v6];

  v7 = objc_alloc_init(DaemonProtocolDataProvider);
  [v3 setDataProvider:v7];

  return v3;
}

- (void)_runPendingCancelDownloadOperations
{
  v3 = objc_alloc_init(FinishDownloadsOperation);
  [(CheckDownloadQueueOperation *)self runSubOperation:v3 returningError:0];
}

@end
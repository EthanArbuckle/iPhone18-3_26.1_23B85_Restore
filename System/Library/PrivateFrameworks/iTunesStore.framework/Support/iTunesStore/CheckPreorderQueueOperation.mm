@interface CheckPreorderQueueOperation
- (CheckPreorderQueueOperation)initWithAccountIdentifier:(id)identifier;
- (NSNumber)accountIdentifier;
- (id)_newURLOperation;
- (int64_t)numberOfPreordersInQueue;
- (void)dealloc;
- (void)run;
@end

@implementation CheckPreorderQueueOperation

- (CheckPreorderQueueOperation)initWithAccountIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = CheckPreorderQueueOperation;
  v4 = [(CheckPreorderQueueOperation *)&v6 init];
  if (v4)
  {
    v4->_accountID = identifier;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CheckPreorderQueueOperation;
  [(CheckPreorderQueueOperation *)&v3 dealloc];
}

- (NSNumber)accountIdentifier
{
  v2 = self->_accountID;

  return v2;
}

- (int64_t)numberOfPreordersInQueue
{
  [(CheckPreorderQueueOperation *)self lock];
  numberOfPreorders = self->_numberOfPreorders;
  [(CheckPreorderQueueOperation *)self unlock];
  return numberOfPreorders;
}

- (void)run
{
  _newURLOperation = [(CheckPreorderQueueOperation *)self _newURLOperation];
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

  if (!os_log_type_enabled([v4 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v6 &= 2u;
  }

  if (v6)
  {
    v31 = 138412290;
    v32 = objc_opt_class();
    LODWORD(v29) = 12;
    v27 = &v31;
    v7 = _os_log_send_and_compose_impl();
    if (v7)
    {
      v8 = v7;
      v9 = [NSString stringWithCString:v7 encoding:4, &v31, v29];
      free(v8);
      v27 = v9;
      SSFileLog();
    }
  }

  v30 = 0;
  v10 = [(CheckPreorderQueueOperation *)self runSubOperation:_newURLOperation returningError:&v30, v27];
  if (v10)
  {
    v11 = [objc_msgSend(_newURLOperation "dataProvider")];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 objectForKey:@"pre-order-queue-count"];
      if (objc_opt_respondsToSelector())
      {
        v13 = +[SSLogConfig sharedDaemonConfig];
        if (!v13)
        {
          v13 = +[SSLogConfig sharedConfig];
        }

        shouldLog2 = [v13 shouldLog];
        if ([v13 shouldLogToDisk])
        {
          v15 = shouldLog2 | 2;
        }

        else
        {
          v15 = shouldLog2;
        }

        if (!os_log_type_enabled([v13 OSLogObject], OS_LOG_TYPE_INFO))
        {
          v15 &= 2u;
        }

        if (v15)
        {
          v16 = objc_opt_class();
          v31 = 138412546;
          v32 = v16;
          v33 = 2112;
          v34 = v12;
          LODWORD(v29) = 22;
          v28 = &v31;
          v17 = _os_log_send_and_compose_impl();
          if (v17)
          {
            v18 = v17;
            v19 = [NSString stringWithCString:v17 encoding:4, &v31, v29];
            free(v18);
            v28 = v19;
            SSFileLog();
          }
        }

        [(CheckPreorderQueueOperation *)self lock];
        self->_numberOfPreorders = [v12 intValue];
        [(CheckPreorderQueueOperation *)self unlock];
      }
    }
  }

  else
  {
    v20 = +[SSLogConfig sharedDaemonConfig];
    if (!v20)
    {
      v20 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v20 shouldLog];
    if ([v20 shouldLogToDisk])
    {
      v22 = shouldLog3 | 2;
    }

    else
    {
      v22 = shouldLog3;
    }

    if (!os_log_type_enabled([v20 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v22 &= 2u;
    }

    if (v22)
    {
      v23 = objc_opt_class();
      v31 = 138412546;
      v32 = v23;
      v33 = 2112;
      v34 = v30;
      LODWORD(v29) = 22;
      v28 = &v31;
      v24 = _os_log_send_and_compose_impl();
      if (v24)
      {
        v25 = v24;
        v26 = [NSString stringWithCString:v24 encoding:4, &v31, v29];
        free(v25);
        v28 = v26;
        SSFileLog();
      }
    }
  }

  [(CheckPreorderQueueOperation *)self setError:v30, v28];
  [(CheckPreorderQueueOperation *)self setSuccess:v10];
}

- (id)_newURLOperation
{
  v3 = objc_alloc_init(ISStoreURLOperation);
  v4 = objc_alloc_init(DaemonProtocolDataProvider);
  [v3 setDataProvider:v4];

  v5 = [[SSAuthenticationContext alloc] initWithAccountIdentifier:self->_accountID];
  [v3 setAuthenticationContext:v5];

  v6 = objc_alloc_init(SSMutableURLRequestProperties);
  [v6 setCachePolicy:1];
  [v6 setURLBagKey:@"p2-check-pre-order-queue"];
  [v3 setRequestProperties:v6];

  return v3;
}

@end
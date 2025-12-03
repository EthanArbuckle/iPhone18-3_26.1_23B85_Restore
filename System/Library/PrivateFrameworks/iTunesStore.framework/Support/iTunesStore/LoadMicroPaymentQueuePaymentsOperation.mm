@interface LoadMicroPaymentQueuePaymentsOperation
- (BOOL)_appendRangeRequestsToResponse:(id)response error:(id *)error;
- (BOOL)_loadResponseReturningError:(id *)error;
- (BOOL)_parsePropertyList:(id)list error:(id *)error;
- (void)dealloc;
- (void)run;
@end

@implementation LoadMicroPaymentQueuePaymentsOperation

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = LoadMicroPaymentQueuePaymentsOperation;
  [(LoadMicroPaymentQueuePaymentsOperation *)&v3 dealloc];
}

- (void)run
{
  v4 = 0;
  v3 = [(LoadMicroPaymentQueuePaymentsOperation *)self _loadResponseReturningError:&v4];
  [(LoadMicroPaymentQueuePaymentsOperation *)self setError:v4];
  [(LoadMicroPaymentQueuePaymentsOperation *)self setSuccess:v3];
}

- (BOOL)_appendRangeRequestsToResponse:(id)response error:(id *)error
{
  v22 = 0;
  request = [(LoadMicroPaymentQueuePaymentsOperation *)self request];
  uRLBagKey = [(LoadMicroPaymentQueuePaymentsOperation *)self URLBagKey];
  responseCopy = response;
  rangesToLoad = [response rangesToLoad];
  v10 = [rangesToLoad count];
  if (v10 < 1)
  {
    LOBYTE(v16) = 1;
    if (!error)
    {
      return v16;
    }

    goto LABEL_11;
  }

  v11 = v10;
  errorCopy = error;
  v12 = 2;
  do
  {
    v13 = objc_alloc_init(NSAutoreleasePool);
    v14 = objc_alloc_init(LoadMicroPaymentQueuePaymentsOperation);
    [(LoadMicroPaymentQueuePaymentsOperation *)v14 setURLBagKey:uRLBagKey];
    v15 = [(MicroPaymentQueueRequest *)request copy];
    [v15 setRangeEndIdentifier:{objc_msgSend(rangesToLoad, "objectAtIndex:", v12 - 1)}];
    [v15 setRangeStartIdentifier:{objc_msgSend(rangesToLoad, "objectAtIndex:", v12 - 2)}];
    [(LoadMicroPaymentQueuePaymentsOperation *)v14 setRequest:v15];
    v16 = [(LoadMicroPaymentQueuePaymentsOperation *)self runSubOperation:v14 returningError:&v22];
    if (v16)
    {
      [responseCopy appendResponse:{-[LoadMicroPaymentQueuePaymentsOperation response](v14, "response")}];
    }

    else
    {
      v17 = v22;
    }

    [v13 drain];
    if (v12 < v11)
    {
      v18 = v16;
    }

    else
    {
      v18 = 0;
    }

    v12 += 2;
  }

  while ((v18 & 1) != 0);
  error = errorCopy;
  if (errorCopy)
  {
LABEL_11:
    *error = v22;
  }

  return v16;
}

- (BOOL)_loadResponseReturningError:(id *)error
{
  v21 = 0;
  request = [(LoadMicroPaymentQueuePaymentsOperation *)self request];
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
  [v8 setURLBagKey:{-[LoadMicroPaymentQueuePaymentsOperation URLBagKey](self, "URLBagKey")}];
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
    uRLBagKey = [(LoadMicroPaymentQueuePaymentsOperation *)self URLBagKey];
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

  if ([(LoadMicroPaymentQueuePaymentsOperation *)self runSubOperation:v6 returningError:&v21, v19])
  {
    v17 = [(LoadMicroPaymentQueuePaymentsOperation *)self _parsePropertyList:[(DaemonProtocolDataProvider *)v7 output] error:&v21];
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

- (BOOL)_parsePropertyList:(id)list error:(id *)error
{
  v34 = 0;
  v7 = objc_alloc_init(MicroPaymentQueueResponse);
  [(MicroPaymentQueueResponse *)v7 setUserIdentifier:[(MicroPaymentQueueRequest *)[(LoadMicroPaymentQueuePaymentsOperation *)self request] userIdentifier]];
  v8 = [(MicroPaymentQueueResponse *)v7 loadFromPropertyList:list];
  v9 = +[SSLogConfig sharedDaemonConfig];
  v10 = v9;
  if (v8)
  {
    if (!v9)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      v12 = shouldLog | 2;
    }

    else
    {
      v12 = shouldLog;
    }

    if (!os_log_type_enabled([v10 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v12 &= 2u;
    }

    if (v12)
    {
      v35 = 138412802;
      v36 = objc_opt_class();
      v37 = 2048;
      *v38 = [(NSArray *)[(MicroPaymentQueueResponse *)v7 payments] count];
      *&v38[8] = 2112;
      *&v38[10] = [(LoadMicroPaymentQueuePaymentsOperation *)self request];
      LODWORD(v33) = 32;
      v31 = &v35;
      v13 = _os_log_send_and_compose_impl();
      if (v13)
      {
        v14 = v13;
        v15 = [NSString stringWithCString:v13 encoding:4, &v35, v33];
        free(v14);
        v31 = v15;
        SSFileLog();
      }
    }

    if ([(LoadMicroPaymentQueuePaymentsOperation *)self _appendRangeRequestsToResponse:v7 error:&v34, v31])
    {
      v16 = +[SSLogConfig sharedDaemonConfig];
      if (!v16)
      {
        v16 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v16 shouldLog];
      if ([v16 shouldLogToDisk])
      {
        v18 = shouldLog2 | 2;
      }

      else
      {
        v18 = shouldLog2;
      }

      if (!os_log_type_enabled([v16 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v18 &= 2u;
      }

      if (v18)
      {
        v19 = objc_opt_class();
        v20 = [(NSData *)[(MicroPaymentQueueResponse *)v7 appReceipt] length];
        bundleIdentifier = [(StoreKitClientIdentity *)[(MicroPaymentQueueRequest *)[(LoadMicroPaymentQueuePaymentsOperation *)self request] clientIdentity] bundleIdentifier];
        v35 = 138412802;
        v36 = v19;
        v37 = 1024;
        *v38 = v20;
        *&v38[4] = 2112;
        *&v38[6] = bundleIdentifier;
        LODWORD(v33) = 28;
        v32 = &v35;
        v22 = _os_log_send_and_compose_impl();
        if (v22)
        {
          v23 = v22;
          v24 = [NSString stringWithCString:v22 encoding:4, &v35, v33];
          free(v23);
          v32 = v24;
          SSFileLog();
        }
      }

      if ([(NSData *)[(MicroPaymentQueueResponse *)v7 appReceipt] length])
      {
        [AppReceipt writeReceipt:[(MicroPaymentQueueResponse *)v7 appReceipt] forStoreKitClient:[(MicroPaymentQueueRequest *)[(LoadMicroPaymentQueuePaymentsOperation *)self request] clientIdentity]];
      }

      [(LoadMicroPaymentQueuePaymentsOperation *)self setResponse:v7];
      v25 = 1;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    if (!v9)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      v27 = shouldLog3 | 2;
    }

    else
    {
      v27 = shouldLog3;
    }

    if (!os_log_type_enabled([v10 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v27 &= 2u;
    }

    if (v27)
    {
      v35 = 138412290;
      v36 = objc_opt_class();
      LODWORD(v33) = 12;
      v28 = _os_log_send_and_compose_impl();
      if (v28)
      {
        v29 = v28;
        [NSString stringWithCString:v28 encoding:4, &v35, v33];
        free(v29);
        SSFileLog();
      }
    }

    v25 = 0;
    v34 = ISError();
  }

  if (error)
  {
    *error = v34;
  }

  return v25;
}

@end
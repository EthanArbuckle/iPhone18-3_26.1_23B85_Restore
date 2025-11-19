@interface LoadMicroPaymentQueuesOperation
- (BOOL)_appendAutoRenewQueueToResponse:(id)a3 error:(id *)a4;
- (BOOL)_appendNormalQueueToResponse:(id)a3 error:(id *)a4;
- (BOOL)_appendToResponse:(id)a3 usingOperation:(id)a4 error:(id *)a5;
- (BOOL)_shouldCheckAutoRenewQueue;
- (NSDate)lastQueueCheckDate;
- (StoreKitClientIdentity)clientIdentity;
- (id)_URLBagContext;
- (void)run;
- (void)setClientIdentity:(id)a3;
- (void)setLastQueueCheckDate:(id)a3;
@end

@implementation LoadMicroPaymentQueuesOperation

- (StoreKitClientIdentity)clientIdentity
{
  [(LoadMicroPaymentQueuesOperation *)self lock];
  v3 = [(StoreKitClientIdentity *)self->_clientIdentity copy];
  [(LoadMicroPaymentQueuesOperation *)self unlock];

  return v3;
}

- (NSDate)lastQueueCheckDate
{
  [(LoadMicroPaymentQueuesOperation *)self lock];
  v3 = [(NSDate *)self->_lastQueueCheckDate copy];
  [(LoadMicroPaymentQueuesOperation *)self unlock];

  return v3;
}

- (void)setClientIdentity:(id)a3
{
  v6 = a3;
  [(LoadMicroPaymentQueuesOperation *)self lock];
  if (self->_clientIdentity != v6)
  {
    v4 = [(StoreKitClientIdentity *)v6 copy];
    clientIdentity = self->_clientIdentity;
    self->_clientIdentity = v4;
  }

  [(LoadMicroPaymentQueuesOperation *)self unlock];
}

- (void)setLastQueueCheckDate:(id)a3
{
  v6 = a3;
  [(LoadMicroPaymentQueuesOperation *)self lock];
  if (self->_lastQueueCheckDate != v6)
  {
    v4 = [(NSDate *)v6 copy];
    lastQueueCheckDate = self->_lastQueueCheckDate;
    self->_lastQueueCheckDate = v4;
  }

  [(LoadMicroPaymentQueuesOperation *)self unlock];
}

- (void)run
{
  v3 = [SSURLBagContext contextWithBagType:0];
  [ISLoadURLBagOperation incrementNetworkCounterForBagContext:v3];

  v4 = objc_alloc_init(MicroPaymentQueueResponse);
  v5 = [ClaimStoreKitClientOperation alloc];
  v6 = [(LoadMicroPaymentQueuesOperation *)self clientIdentity];
  v7 = [(ClaimStoreKitClientOperation *)v5 initWithClientIdentity:v6];

  if ([(LoadMicroPaymentQueuesOperation *)self runSubOperation:v7 returningError:0])
  {
    v8 = [(ClaimStoreKitClientOperation *)v7 clientIdentity];
    [(LoadMicroPaymentQueuesOperation *)self setClientIdentity:v8];
  }

  v43 = 0;
  v9 = [(LoadMicroPaymentQueuesOperation *)self _appendNormalQueueToResponse:v4 error:&v43];
  v10 = v43;
  if (v9)
  {
    if (![(LoadMicroPaymentQueuesOperation *)self _shouldCheckAutoRenewQueue]|| (v42 = v10, v9 = [(LoadMicroPaymentQueuesOperation *)self _appendAutoRenewQueueToResponse:v4 error:&v42], v11 = v42, v10, v10 = v11, v9))
    {
      v12 = +[SSLogConfig sharedDaemonConfig];
      if (!v12)
      {
        v12 = +[SSLogConfig sharedConfig];
      }

      v40 = v10;
      v41 = v7;
      v13 = [v12 shouldLog];
      if ([v12 shouldLogToDisk])
      {
        v14 = v13 | 2;
      }

      else
      {
        v14 = v13;
      }

      v15 = [v12 OSLogObject];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v14;
      }

      else
      {
        v16 = v14 & 2;
      }

      if (v16)
      {
        v17 = objc_opt_class();
        v39 = v17;
        v18 = [(MicroPaymentQueueResponse *)v4 appReceipt];
        v19 = [v18 length];
        v20 = [(LoadMicroPaymentQueuesOperation *)self clientIdentity];
        v21 = [v20 bundleIdentifier];
        v44 = 138412802;
        v45 = v17;
        v46 = 1024;
        LODWORD(v47[0]) = v19;
        WORD2(v47[0]) = 2112;
        *(v47 + 6) = v21;
        LODWORD(v38) = 28;
        v37 = &v44;
        v22 = _os_log_send_and_compose_impl();

        if (!v22)
        {
          goto LABEL_18;
        }

        v15 = [NSString stringWithCString:v22 encoding:4, &v44, v38];
        free(v22);
        v37 = v15;
        SSFileLog();
      }

LABEL_18:
      v23 = [(MicroPaymentQueueResponse *)v4 appReceipt];
      v24 = [v23 length];

      if (v24)
      {
        v25 = [(MicroPaymentQueueResponse *)v4 appReceipt];
        v26 = [(LoadMicroPaymentQueuesOperation *)self clientIdentity];
        [AppReceipt writeReceipt:v25 forStoreKitClient:v26];
      }

      v27 = +[SSLogConfig sharedDaemonConfig];
      if (!v27)
      {
        v27 = +[SSLogConfig sharedConfig];
      }

      v28 = [v27 shouldLog];
      if ([v27 shouldLogToDisk])
      {
        v28 |= 2u;
      }

      v29 = [v27 OSLogObject];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = v28;
      }

      else
      {
        v30 = v28 & 2;
      }

      if (v30)
      {
        v31 = objc_opt_class();
        v32 = v31;
        v33 = [(MicroPaymentQueueResponse *)v4 payments];
        v34 = [v33 count];
        v44 = 138412546;
        v45 = v31;
        v46 = 2048;
        v47[0] = v34;
        LODWORD(v38) = 22;
        v37 = &v44;
        v35 = _os_log_send_and_compose_impl();

        v10 = v40;
        if (!v35)
        {
LABEL_32:

          [(LoadMicroPaymentQueuesOperation *)self setPaymentsResponse:v4];
          v9 = 1;
          v7 = v41;
          goto LABEL_33;
        }

        v29 = [NSString stringWithCString:v35 encoding:4, &v44, v38];
        free(v35);
        v37 = v29;
        SSFileLog();
      }

      else
      {
        v10 = v40;
      }

      goto LABEL_32;
    }
  }

LABEL_33:
  [(LoadMicroPaymentQueuesOperation *)self setError:v10, v37];
  [(LoadMicroPaymentQueuesOperation *)self setSuccess:v9];
  v36 = [SSURLBagContext contextWithBagType:0];
  [ISLoadURLBagOperation decrementNetworkCounterForBagContext:v36];
}

- (BOOL)_appendAutoRenewQueueToResponse:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(LoadMicroPaymentQueueOperation);
  v8 = [(LoadMicroPaymentQueuesOperation *)self lastQueueCheckDate];
  [(LoadMicroPaymentQueueOperation *)v7 setLastQueueCheckDate:v8];

  [(LoadMicroPaymentQueueOperation *)v7 setQueueCountURLBagKey:@"p2-in-app-check-recurring-download-queue"];
  [(LoadMicroPaymentQueueOperation *)v7 setQueuePaymentsURLBagKey:@"p2-in-app-recurring-transactions"];
  v9 = objc_alloc_init(MicroPaymentQueueRequest);
  v10 = [(LoadMicroPaymentQueuesOperation *)self clientIdentity];
  [(MicroPaymentQueueRequest *)v9 setClientIdentity:v10];

  [(LoadMicroPaymentQueueOperation *)v7 setRequest:v9];
  v16 = 0;
  v11 = [(LoadMicroPaymentQueuesOperation *)self _appendToResponse:v6 usingOperation:v7 error:&v16];

  v12 = v16;
  v13 = v12;
  if (a4 && !v11)
  {
    v14 = v12;
    *a4 = v13;
  }

  return v11;
}

- (BOOL)_appendNormalQueueToResponse:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(LoadMicroPaymentQueueOperation);
  v8 = [(LoadMicroPaymentQueuesOperation *)self lastQueueCheckDate];
  [(LoadMicroPaymentQueueOperation *)v7 setLastQueueCheckDate:v8];

  [(LoadMicroPaymentQueueOperation *)v7 setQueueCountURLBagKey:@"p2-in-app-check-download-queue"];
  [(LoadMicroPaymentQueueOperation *)v7 setQueuePaymentsURLBagKey:@"p2-in-app-pending-transactions"];
  v9 = objc_alloc_init(MicroPaymentQueueRequest);
  v10 = [(LoadMicroPaymentQueuesOperation *)self clientIdentity];
  [(MicroPaymentQueueRequest *)v9 setClientIdentity:v10];

  [(LoadMicroPaymentQueueOperation *)v7 setRequest:v9];
  v16 = 0;
  v11 = [(LoadMicroPaymentQueuesOperation *)self _appendToResponse:v6 usingOperation:v7 error:&v16];

  v12 = v16;
  v13 = v12;
  if (a4 && !v11)
  {
    v14 = v12;
    *a4 = v13;
  }

  return v11;
}

- (BOOL)_appendToResponse:(id)a3 usingOperation:(id)a4 error:(id *)a5
{
  v31 = a3;
  v8 = a4;
  v30 = self;
  [(LoadMicroPaymentQueuesOperation *)self userDSIDs];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v9 = v36 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v10)
  {
    v11 = v10;
    v28 = a5;
    obj = v9;
    v12 = 0;
    v13 = *v34;
    while (2)
    {
      v14 = 0;
      v15 = v12;
      do
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v33 + 1) + 8 * v14);
        v17 = objc_autoreleasePoolPush();
        v18 = objc_alloc_init(LoadMicroPaymentQueueOperation);
        -[LoadMicroPaymentQueueOperation setExpectedCount:](v18, "setExpectedCount:", [v8 expectedCount]);
        v19 = [v8 lastQueueCheckDate];
        [(LoadMicroPaymentQueueOperation *)v18 setLastQueueCheckDate:v19];

        v20 = [v8 queueCountURLBagKey];
        [(LoadMicroPaymentQueueOperation *)v18 setQueueCountURLBagKey:v20];

        v21 = [v8 queuePaymentsURLBagKey];
        [(LoadMicroPaymentQueueOperation *)v18 setQueuePaymentsURLBagKey:v21];

        v22 = [v8 request];
        v23 = [v22 copy];

        [v23 setUserIdentifier:v16];
        [(LoadMicroPaymentQueueOperation *)v18 setRequest:v23];
        v32 = v15;
        LODWORD(v22) = [(LoadMicroPaymentQueuesOperation *)v30 runSubOperation:v18 returningError:&v32];
        v12 = v32;

        if (!v22)
        {

          objc_autoreleasePoolPop(v17);
          v9 = obj;

          if (v28)
          {
            v25 = v12;
            v26 = 0;
            *v28 = v12;
          }

          else
          {
            v26 = 0;
          }

          goto LABEL_15;
        }

        v24 = [(LoadMicroPaymentQueueOperation *)v18 response];
        [v31 appendResponse:v24];

        objc_autoreleasePoolPop(v17);
        v14 = v14 + 1;
        v15 = v12;
      }

      while (v11 != v14);
      v9 = obj;
      v11 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = 0;
  }

  v26 = 1;
LABEL_15:

  return v26;
}

- (BOOL)_shouldCheckAutoRenewQueue
{
  v2 = [(LoadMicroPaymentQueuesOperation *)self _URLBagContext];
  v3 = +[ISURLBagCache sharedCache];
  v4 = [v3 URLBagForContext:v2];

  v5 = [v4 urlForKey:@"p2-in-app-check-recurring-download-queue"];
  if (v5)
  {
    v6 = [v4 urlForKey:@"p2-in-app-recurring-transactions"];
    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_URLBagContext
{
  v2 = [(LoadMicroPaymentQueuesOperation *)self clientIdentity];
  v3 = [v2 isSandboxed];

  v4 = [SSURLBagContext contextWithBagType:v3];

  return v4;
}

@end
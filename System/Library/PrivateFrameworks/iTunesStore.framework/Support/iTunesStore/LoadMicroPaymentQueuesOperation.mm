@interface LoadMicroPaymentQueuesOperation
- (BOOL)_appendAutoRenewQueueToResponse:(id)response error:(id *)error;
- (BOOL)_appendNormalQueueToResponse:(id)response error:(id *)error;
- (BOOL)_appendToResponse:(id)response usingOperation:(id)operation error:(id *)error;
- (BOOL)_shouldCheckAutoRenewQueue;
- (NSDate)lastQueueCheckDate;
- (StoreKitClientIdentity)clientIdentity;
- (id)_URLBagContext;
- (void)run;
- (void)setClientIdentity:(id)identity;
- (void)setLastQueueCheckDate:(id)date;
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

- (void)setClientIdentity:(id)identity
{
  identityCopy = identity;
  [(LoadMicroPaymentQueuesOperation *)self lock];
  if (self->_clientIdentity != identityCopy)
  {
    v4 = [(StoreKitClientIdentity *)identityCopy copy];
    clientIdentity = self->_clientIdentity;
    self->_clientIdentity = v4;
  }

  [(LoadMicroPaymentQueuesOperation *)self unlock];
}

- (void)setLastQueueCheckDate:(id)date
{
  dateCopy = date;
  [(LoadMicroPaymentQueuesOperation *)self lock];
  if (self->_lastQueueCheckDate != dateCopy)
  {
    v4 = [(NSDate *)dateCopy copy];
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
  clientIdentity = [(LoadMicroPaymentQueuesOperation *)self clientIdentity];
  v7 = [(ClaimStoreKitClientOperation *)v5 initWithClientIdentity:clientIdentity];

  if ([(LoadMicroPaymentQueuesOperation *)self runSubOperation:v7 returningError:0])
  {
    clientIdentity2 = [(ClaimStoreKitClientOperation *)v7 clientIdentity];
    [(LoadMicroPaymentQueuesOperation *)self setClientIdentity:clientIdentity2];
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
      shouldLog = [v12 shouldLog];
      if ([v12 shouldLogToDisk])
      {
        v14 = shouldLog | 2;
      }

      else
      {
        v14 = shouldLog;
      }

      oSLogObject = [v12 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
        appReceipt = [(MicroPaymentQueueResponse *)v4 appReceipt];
        v19 = [appReceipt length];
        clientIdentity3 = [(LoadMicroPaymentQueuesOperation *)self clientIdentity];
        bundleIdentifier = [clientIdentity3 bundleIdentifier];
        v44 = 138412802;
        v45 = v17;
        v46 = 1024;
        LODWORD(v47[0]) = v19;
        WORD2(v47[0]) = 2112;
        *(v47 + 6) = bundleIdentifier;
        LODWORD(v38) = 28;
        v37 = &v44;
        v22 = _os_log_send_and_compose_impl();

        if (!v22)
        {
          goto LABEL_18;
        }

        oSLogObject = [NSString stringWithCString:v22 encoding:4, &v44, v38];
        free(v22);
        v37 = oSLogObject;
        SSFileLog();
      }

LABEL_18:
      appReceipt2 = [(MicroPaymentQueueResponse *)v4 appReceipt];
      v24 = [appReceipt2 length];

      if (v24)
      {
        appReceipt3 = [(MicroPaymentQueueResponse *)v4 appReceipt];
        clientIdentity4 = [(LoadMicroPaymentQueuesOperation *)self clientIdentity];
        [AppReceipt writeReceipt:appReceipt3 forStoreKitClient:clientIdentity4];
      }

      v27 = +[SSLogConfig sharedDaemonConfig];
      if (!v27)
      {
        v27 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v27 shouldLog];
      if ([v27 shouldLogToDisk])
      {
        shouldLog2 |= 2u;
      }

      oSLogObject2 = [v27 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
      {
        v30 = shouldLog2;
      }

      else
      {
        v30 = shouldLog2 & 2;
      }

      if (v30)
      {
        v31 = objc_opt_class();
        v32 = v31;
        payments = [(MicroPaymentQueueResponse *)v4 payments];
        v34 = [payments count];
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

        oSLogObject2 = [NSString stringWithCString:v35 encoding:4, &v44, v38];
        free(v35);
        v37 = oSLogObject2;
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

- (BOOL)_appendAutoRenewQueueToResponse:(id)response error:(id *)error
{
  responseCopy = response;
  v7 = objc_alloc_init(LoadMicroPaymentQueueOperation);
  lastQueueCheckDate = [(LoadMicroPaymentQueuesOperation *)self lastQueueCheckDate];
  [(LoadMicroPaymentQueueOperation *)v7 setLastQueueCheckDate:lastQueueCheckDate];

  [(LoadMicroPaymentQueueOperation *)v7 setQueueCountURLBagKey:@"p2-in-app-check-recurring-download-queue"];
  [(LoadMicroPaymentQueueOperation *)v7 setQueuePaymentsURLBagKey:@"p2-in-app-recurring-transactions"];
  v9 = objc_alloc_init(MicroPaymentQueueRequest);
  clientIdentity = [(LoadMicroPaymentQueuesOperation *)self clientIdentity];
  [(MicroPaymentQueueRequest *)v9 setClientIdentity:clientIdentity];

  [(LoadMicroPaymentQueueOperation *)v7 setRequest:v9];
  v16 = 0;
  v11 = [(LoadMicroPaymentQueuesOperation *)self _appendToResponse:responseCopy usingOperation:v7 error:&v16];

  v12 = v16;
  v13 = v12;
  if (error && !v11)
  {
    v14 = v12;
    *error = v13;
  }

  return v11;
}

- (BOOL)_appendNormalQueueToResponse:(id)response error:(id *)error
{
  responseCopy = response;
  v7 = objc_alloc_init(LoadMicroPaymentQueueOperation);
  lastQueueCheckDate = [(LoadMicroPaymentQueuesOperation *)self lastQueueCheckDate];
  [(LoadMicroPaymentQueueOperation *)v7 setLastQueueCheckDate:lastQueueCheckDate];

  [(LoadMicroPaymentQueueOperation *)v7 setQueueCountURLBagKey:@"p2-in-app-check-download-queue"];
  [(LoadMicroPaymentQueueOperation *)v7 setQueuePaymentsURLBagKey:@"p2-in-app-pending-transactions"];
  v9 = objc_alloc_init(MicroPaymentQueueRequest);
  clientIdentity = [(LoadMicroPaymentQueuesOperation *)self clientIdentity];
  [(MicroPaymentQueueRequest *)v9 setClientIdentity:clientIdentity];

  [(LoadMicroPaymentQueueOperation *)v7 setRequest:v9];
  v16 = 0;
  v11 = [(LoadMicroPaymentQueuesOperation *)self _appendToResponse:responseCopy usingOperation:v7 error:&v16];

  v12 = v16;
  v13 = v12;
  if (error && !v11)
  {
    v14 = v12;
    *error = v13;
  }

  return v11;
}

- (BOOL)_appendToResponse:(id)response usingOperation:(id)operation error:(id *)error
{
  responseCopy = response;
  operationCopy = operation;
  selfCopy = self;
  [(LoadMicroPaymentQueuesOperation *)self userDSIDs];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v9 = v36 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v10)
  {
    v11 = v10;
    errorCopy = error;
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
        -[LoadMicroPaymentQueueOperation setExpectedCount:](v18, "setExpectedCount:", [operationCopy expectedCount]);
        lastQueueCheckDate = [operationCopy lastQueueCheckDate];
        [(LoadMicroPaymentQueueOperation *)v18 setLastQueueCheckDate:lastQueueCheckDate];

        queueCountURLBagKey = [operationCopy queueCountURLBagKey];
        [(LoadMicroPaymentQueueOperation *)v18 setQueueCountURLBagKey:queueCountURLBagKey];

        queuePaymentsURLBagKey = [operationCopy queuePaymentsURLBagKey];
        [(LoadMicroPaymentQueueOperation *)v18 setQueuePaymentsURLBagKey:queuePaymentsURLBagKey];

        request = [operationCopy request];
        v23 = [request copy];

        [v23 setUserIdentifier:v16];
        [(LoadMicroPaymentQueueOperation *)v18 setRequest:v23];
        v32 = v15;
        LODWORD(request) = [(LoadMicroPaymentQueuesOperation *)selfCopy runSubOperation:v18 returningError:&v32];
        v12 = v32;

        if (!request)
        {

          objc_autoreleasePoolPop(v17);
          v9 = obj;

          if (errorCopy)
          {
            v25 = v12;
            v26 = 0;
            *errorCopy = v12;
          }

          else
          {
            v26 = 0;
          }

          goto LABEL_15;
        }

        response = [(LoadMicroPaymentQueueOperation *)v18 response];
        [responseCopy appendResponse:response];

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
  _URLBagContext = [(LoadMicroPaymentQueuesOperation *)self _URLBagContext];
  v3 = +[ISURLBagCache sharedCache];
  v4 = [v3 URLBagForContext:_URLBagContext];

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
  clientIdentity = [(LoadMicroPaymentQueuesOperation *)self clientIdentity];
  isSandboxed = [clientIdentity isSandboxed];

  v4 = [SSURLBagContext contextWithBagType:isSandboxed];

  return v4;
}

@end
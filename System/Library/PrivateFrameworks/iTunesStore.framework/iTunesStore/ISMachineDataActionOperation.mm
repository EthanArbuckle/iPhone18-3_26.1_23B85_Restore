@interface ISMachineDataActionOperation
- (BOOL)_eraseProvisioning;
- (BOOL)_provisionWithRequest:(id)request error:(id *)error;
- (BOOL)_shouldRetryAfterError:(id)error;
- (BOOL)_syncMachineWithRequest:(id)request error:(id *)error;
- (BOOL)blocksPurchaseRequests;
- (BOOL)hidesServerDrivenDialogs;
- (ISMachineDataActionOperation)initWithMachineDataRequest:(id)request;
- (NSString)syncState;
- (NSString)userAgent;
- (id)resultBlock;
- (id)uniqueKey;
- (void)run;
- (void)setBlocksPurchaseRequests:(BOOL)requests;
- (void)setHidesServerDrivenDialogs:(BOOL)dialogs;
- (void)setResultBlock:(id)block;
- (void)setUserAgent:(id)agent;
@end

@implementation ISMachineDataActionOperation

- (ISMachineDataActionOperation)initWithMachineDataRequest:(id)request
{
  requestCopy = request;
  v8.receiver = self;
  v8.super_class = ISMachineDataActionOperation;
  v6 = [(ISOperation *)&v8 init];
  if (v6)
  {
    *(v6 + 331) = [requestCopy waitsForPurchaseOperations];
    objc_storeStrong(v6 + 42, request);
  }

  return v6;
}

- (BOOL)blocksPurchaseRequests
{
  [(ISOperation *)self lock];
  v3 = *(&self->super._success + 1);
  [(ISOperation *)self unlock];
  return v3;
}

- (BOOL)hidesServerDrivenDialogs
{
  [(ISOperation *)self lock];
  v3 = *(&self->super._success + 2);
  [(ISOperation *)self unlock];
  return v3;
}

- (id)resultBlock
{
  [(ISOperation *)self lock];
  v3 = [(SSMachineDataRequest *)self->_request copy];
  [(ISOperation *)self unlock];
  v4 = MEMORY[0x277C8C270](v3);

  return v4;
}

- (void)setBlocksPurchaseRequests:(BOOL)requests
{
  [(ISOperation *)self lock];
  *(&self->super._success + 1) = requests;

  [(ISOperation *)self unlock];
}

- (void)setHidesServerDrivenDialogs:(BOOL)dialogs
{
  [(ISOperation *)self lock];
  *(&self->super._success + 2) = dialogs;

  [(ISOperation *)self unlock];
}

- (void)setResultBlock:(id)block
{
  blockCopy = block;
  [(ISOperation *)self lock];
  if (self->_request != blockCopy)
  {
    v4 = [(SSMachineDataRequest *)blockCopy copy];
    request = self->_request;
    self->_request = v4;
  }

  [(ISOperation *)self unlock];
}

- (void)setUserAgent:(id)agent
{
  agentCopy = agent;
  [(ISOperation *)self lock];
  if (self->_syncState != agentCopy)
  {
    v4 = [(NSString *)agentCopy copy];
    syncState = self->_syncState;
    self->_syncState = v4;
  }

  [(ISOperation *)self unlock];
}

- (NSString)syncState
{
  [(NSLock *)self->super._lock lock];
  v3 = self->_resultBlock;
  [(NSLock *)self->super._lock unlock];

  return v3;
}

- (NSString)userAgent
{
  [(ISOperation *)self lock];
  v3 = self->_syncState;
  [(ISOperation *)self unlock];

  return v3;
}

- (void)run
{
  v36 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedFairPlayAnisetteConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    v5 = shouldLog | 2;
  }

  else
  {
    v5 = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v5 &= 2u;
  }

  if (v5)
  {
    v7 = objc_opt_class();
    v8 = *&self->_blocksPurchaseRequests;
    v32 = 138543618;
    v33 = v7;
    v34 = 2114;
    v35 = v8;
    v9 = v7;
    LODWORD(v29) = 22;
    v28 = &v32;
    v10 = _os_log_send_and_compose_impl();

    if (!v10)
    {
      goto LABEL_12;
    }

    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v10 encoding:{4, &v32, v29}];
    free(v10);
    v28 = oSLogObject;
    SSFileLog();
  }

LABEL_12:
  actionName = [*&self->_blocksPurchaseRequests actionName];
  if ([actionName isEqualToString:@"SP"])
  {
    v12 = *&self->_blocksPurchaseRequests;
    v31 = 0;
    _eraseProvisioning = [(ISMachineDataActionOperation *)self _provisionWithRequest:v12 error:&v31];
    v14 = v31;
LABEL_16:
    v16 = v14;
    goto LABEL_17;
  }

  if ([actionName isEqualToString:@"SM"])
  {
    v15 = *&self->_blocksPurchaseRequests;
    v30 = 0;
    _eraseProvisioning = [(ISMachineDataActionOperation *)self _syncMachineWithRequest:v15 error:&v30];
    v14 = v30;
    goto LABEL_16;
  }

  if ([actionName isEqualToString:@"RP"])
  {
    _eraseProvisioning = [(ISMachineDataActionOperation *)self _eraseProvisioning];
    v16 = 0;
    goto LABEL_17;
  }

  mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedFairPlayAnisetteConfig];
  if (!mEMORY[0x277D69B38]2)
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
  if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
  {
    v22 = shouldLog2 | 2;
  }

  else
  {
    v22 = shouldLog2;
  }

  oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
  if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
  {
    v22 &= 2u;
  }

  if (!v22)
  {
    goto LABEL_32;
  }

  v24 = objc_opt_class();
  v32 = 138543618;
  v33 = v24;
  v34 = 2114;
  v35 = actionName;
  v25 = v24;
  LODWORD(v29) = 22;
  v28 = &v32;
  v26 = _os_log_send_and_compose_impl();

  if (v26)
  {
    oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v26 encoding:{4, &v32, v29}];
    free(v26);
    v28 = oSLogObject2;
    SSFileLog();
LABEL_32:
  }

  v27 = *MEMORY[0x277D6A110];
  v16 = SSError();
  _eraseProvisioning = 0;
LABEL_17:
  [(ISOperation *)self setError:v16, v28];
  [(ISOperation *)self setSuccess:_eraseProvisioning];
  resultBlock = [(ISMachineDataActionOperation *)self resultBlock];
  if (resultBlock)
  {
    syncState = [(ISMachineDataActionOperation *)self syncState];
    (resultBlock)[2](resultBlock, _eraseProvisioning, v16, syncState);

    [(ISMachineDataActionOperation *)self setResultBlock:0];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)uniqueKey
{
  if ([(ISMachineDataActionOperation *)self blocksPurchaseRequests])
  {
    return @"com.apple.itunesstored.PurchaseOperation";
  }

  else
  {
    return 0;
  }
}

- (BOOL)_eraseProvisioning
{
  v24 = *MEMORY[0x277D85DE8];
  if ([*&self->_blocksPurchaseRequests protocolVersion] == 1)
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedFairPlayAnisetteConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v5 = shouldLog | 2;
    }

    else
    {
      v5 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v5 &= 2u;
    }

    if (v5)
    {
      *v23 = 138543362;
      *&v23[4] = objc_opt_class();
      v7 = *&v23[4];
      LODWORD(v22) = 12;
      v8 = _os_log_send_and_compose_impl();

      if (!v8)
      {
LABEL_13:
        unsignedLongLongValue = -1;
        goto LABEL_25;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:{4, v23, v22, *v23}];
      free(v8);
      SSFileLog();
    }

    goto LABEL_13;
  }

  accountIdentifier = [*&self->_blocksPurchaseRequests accountIdentifier];
  unsignedLongLongValue = [accountIdentifier unsignedLongLongValue];

  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedFairPlayAnisetteConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog2 = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    v12 = shouldLog2 | 2;
  }

  else
  {
    v12 = shouldLog2;
  }

  oSLogObject2 = [mEMORY[0x277D69B38] OSLogObject];
  if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
  {
    v12 &= 2u;
  }

  if (v12)
  {
    v14 = objc_opt_class();
    v15 = MEMORY[0x277CCACA8];
    v16 = v14;
    v17 = [v15 stringWithFormat:@"%llu", unsignedLongLongValue];
    SSHashIfNeeded();
    *v23 = 138543618;
    *&v23[4] = v14;
    *&v23[14] = *&v23[12] = 2114;
    LODWORD(v22) = 22;
    v18 = _os_log_send_and_compose_impl();

    if (v18)
    {
      v19 = [MEMORY[0x277CCACA8] stringWithCString:v18 encoding:{4, v23, v22}];
      free(v18);
      SSFileLog();
    }
  }

  else
  {
  }

LABEL_25:

  result = MEMORY[0x277C8BA50](unsignedLongLongValue) == 0;
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_provisionWithRequest:(id)request error:(id *)error
{
  requestCopy = request;
  accountIdentifier = [requestCopy accountIdentifier];
  unsignedLongLongValue = [accountIdentifier unsignedLongLongValue];

  actionData = [requestCopy actionData];
  hidesServerDrivenDialogs = [(ISMachineDataActionOperation *)self hidesServerDrivenDialogs];
  v10 = 0;
  v11 = 5;
  while (1)
  {
    v12 = [[ISMachineDataProvisioningOperation alloc] initWithAccountIdentifier:unsignedLongLongValue provisioningData:actionData];
    -[ISMachineDataProvisioningOperation setAllowsBootstrapCellularData:](v12, "setAllowsBootstrapCellularData:", [requestCopy allowsBootstrapCellularData]);
    [(ISMachineDataProvisioningOperation *)v12 setHidesServerDrivenDialogs:hidesServerDrivenDialogs];
    -[ISMachineDataProvisioningOperation setProtocolVersion:](v12, "setProtocolVersion:", [requestCopy protocolVersion]);
    userAgent = [(ISMachineDataActionOperation *)self userAgent];
    [(ISMachineDataProvisioningOperation *)v12 setUserAgent:userAgent];

    v19 = 0;
    v14 = [(ISOperation *)self runSubOperation:v12 returningError:&v19];
    v10 = v19;
    if (v14 || ![(ISMachineDataActionOperation *)self _shouldRetryAfterError:v10])
    {
      break;
    }

    if (!--v11)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  if (error)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if ((v15 & 1) == 0)
  {
    v16 = v10;
    *error = v10;
  }

  return v14;
}

- (BOOL)_shouldRetryAfterError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:*MEMORY[0x277CCA738]])
  {
    v5 = 1;
  }

  else if ([domain isEqualToString:*MEMORY[0x277D6A110]])
  {
    v5 = [errorCopy code] == 109;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_syncMachineWithRequest:(id)request error:(id *)error
{
  requestCopy = request;
  accountIdentifier = [requestCopy accountIdentifier];
  unsignedLongLongValue = [accountIdentifier unsignedLongLongValue];

  actionData = [requestCopy actionData];
  hidesServerDrivenDialogs = [(ISMachineDataActionOperation *)self hidesServerDrivenDialogs];
  v10 = 0;
  v11 = 5;
  while (1)
  {
    v12 = [[ISMachineDataSyncOperation alloc] initWithAccountIdentifier:unsignedLongLongValue syncData:actionData];
    [(ISMachineDataSyncOperation *)v12 setHidesServerDrivenDialogs:hidesServerDrivenDialogs];
    -[ISMachineDataSyncOperation setProtocolVersion:](v12, "setProtocolVersion:", [requestCopy protocolVersion]);
    userAgent = [(ISMachineDataActionOperation *)self userAgent];
    [(ISMachineDataSyncOperation *)v12 setUserAgent:userAgent];

    v21 = 0;
    v14 = [(ISOperation *)self runSubOperation:v12 returningError:&v21];
    v10 = v21;
    if (v14)
    {
      break;
    }

    if (![(ISMachineDataActionOperation *)self _shouldRetryAfterError:v10])
    {
      goto LABEL_7;
    }

    if (!--v11)
    {
      goto LABEL_8;
    }
  }

  [(NSLock *)self->super._lock lock];
  syncState = [(ISMachineDataSyncOperation *)v12 syncState];
  resultBlock = self->_resultBlock;
  self->_resultBlock = syncState;

  [(NSLock *)self->super._lock unlock];
LABEL_7:

LABEL_8:
  if (error)
  {
    v17 = v14;
  }

  else
  {
    v17 = 1;
  }

  if ((v17 & 1) == 0)
  {
    v18 = v10;
    *error = v10;
  }

  return v14;
}

@end
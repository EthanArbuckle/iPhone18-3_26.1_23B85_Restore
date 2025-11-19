@interface ISMachineDataActionOperation
- (BOOL)_eraseProvisioning;
- (BOOL)_provisionWithRequest:(id)a3 error:(id *)a4;
- (BOOL)_shouldRetryAfterError:(id)a3;
- (BOOL)_syncMachineWithRequest:(id)a3 error:(id *)a4;
- (BOOL)blocksPurchaseRequests;
- (BOOL)hidesServerDrivenDialogs;
- (ISMachineDataActionOperation)initWithMachineDataRequest:(id)a3;
- (NSString)syncState;
- (NSString)userAgent;
- (id)resultBlock;
- (id)uniqueKey;
- (void)run;
- (void)setBlocksPurchaseRequests:(BOOL)a3;
- (void)setHidesServerDrivenDialogs:(BOOL)a3;
- (void)setResultBlock:(id)a3;
- (void)setUserAgent:(id)a3;
@end

@implementation ISMachineDataActionOperation

- (ISMachineDataActionOperation)initWithMachineDataRequest:(id)a3
{
  v5 = a3;
  v8.receiver = self;
  v8.super_class = ISMachineDataActionOperation;
  v6 = [(ISOperation *)&v8 init];
  if (v6)
  {
    *(v6 + 331) = [v5 waitsForPurchaseOperations];
    objc_storeStrong(v6 + 42, a3);
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

- (void)setBlocksPurchaseRequests:(BOOL)a3
{
  [(ISOperation *)self lock];
  *(&self->super._success + 1) = a3;

  [(ISOperation *)self unlock];
}

- (void)setHidesServerDrivenDialogs:(BOOL)a3
{
  [(ISOperation *)self lock];
  *(&self->super._success + 2) = a3;

  [(ISOperation *)self unlock];
}

- (void)setResultBlock:(id)a3
{
  v6 = a3;
  [(ISOperation *)self lock];
  if (self->_request != v6)
  {
    v4 = [(SSMachineDataRequest *)v6 copy];
    request = self->_request;
    self->_request = v4;
  }

  [(ISOperation *)self unlock];
}

- (void)setUserAgent:(id)a3
{
  v6 = a3;
  [(ISOperation *)self lock];
  if (self->_syncState != v6)
  {
    v4 = [(NSString *)v6 copy];
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
  v3 = [MEMORY[0x277D69B38] sharedFairPlayAnisetteConfig];
  if (!v3)
  {
    v3 = [MEMORY[0x277D69B38] sharedConfig];
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

    v6 = [MEMORY[0x277CCACA8] stringWithCString:v10 encoding:{4, &v32, v29}];
    free(v10);
    v28 = v6;
    SSFileLog();
  }

LABEL_12:
  v11 = [*&self->_blocksPurchaseRequests actionName];
  if ([v11 isEqualToString:@"SP"])
  {
    v12 = *&self->_blocksPurchaseRequests;
    v31 = 0;
    v13 = [(ISMachineDataActionOperation *)self _provisionWithRequest:v12 error:&v31];
    v14 = v31;
LABEL_16:
    v16 = v14;
    goto LABEL_17;
  }

  if ([v11 isEqualToString:@"SM"])
  {
    v15 = *&self->_blocksPurchaseRequests;
    v30 = 0;
    v13 = [(ISMachineDataActionOperation *)self _syncMachineWithRequest:v15 error:&v30];
    v14 = v30;
    goto LABEL_16;
  }

  if ([v11 isEqualToString:@"RP"])
  {
    v13 = [(ISMachineDataActionOperation *)self _eraseProvisioning];
    v16 = 0;
    goto LABEL_17;
  }

  v20 = [MEMORY[0x277D69B38] sharedFairPlayAnisetteConfig];
  if (!v20)
  {
    v20 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v21 = [v20 shouldLog];
  if ([v20 shouldLogToDisk])
  {
    v22 = v21 | 2;
  }

  else
  {
    v22 = v21;
  }

  v23 = [v20 OSLogObject];
  if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
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
  v35 = v11;
  v25 = v24;
  LODWORD(v29) = 22;
  v28 = &v32;
  v26 = _os_log_send_and_compose_impl();

  if (v26)
  {
    v23 = [MEMORY[0x277CCACA8] stringWithCString:v26 encoding:{4, &v32, v29}];
    free(v26);
    v28 = v23;
    SSFileLog();
LABEL_32:
  }

  v27 = *MEMORY[0x277D6A110];
  v16 = SSError();
  v13 = 0;
LABEL_17:
  [(ISOperation *)self setError:v16, v28];
  [(ISOperation *)self setSuccess:v13];
  v17 = [(ISMachineDataActionOperation *)self resultBlock];
  if (v17)
  {
    v18 = [(ISMachineDataActionOperation *)self syncState];
    (v17)[2](v17, v13, v16, v18);

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
    v3 = [MEMORY[0x277D69B38] sharedFairPlayAnisetteConfig];
    if (!v3)
    {
      v3 = [MEMORY[0x277D69B38] sharedConfig];
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
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
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
        v9 = -1;
        goto LABEL_25;
      }

      v6 = [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:{4, v23, v22, *v23}];
      free(v8);
      SSFileLog();
    }

    goto LABEL_13;
  }

  v10 = [*&self->_blocksPurchaseRequests accountIdentifier];
  v9 = [v10 unsignedLongLongValue];

  v3 = [MEMORY[0x277D69B38] sharedFairPlayAnisetteConfig];
  if (!v3)
  {
    v3 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v11 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v12 = v11 | 2;
  }

  else
  {
    v12 = v11;
  }

  v13 = [v3 OSLogObject];
  if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v12 &= 2u;
  }

  if (v12)
  {
    v14 = objc_opt_class();
    v15 = MEMORY[0x277CCACA8];
    v16 = v14;
    v17 = [v15 stringWithFormat:@"%llu", v9];
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

  result = MEMORY[0x277C8BA50](v9) == 0;
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_provisionWithRequest:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 accountIdentifier];
  v7 = [v6 unsignedLongLongValue];

  v8 = [v5 actionData];
  v9 = [(ISMachineDataActionOperation *)self hidesServerDrivenDialogs];
  v10 = 0;
  v11 = 5;
  while (1)
  {
    v12 = [[ISMachineDataProvisioningOperation alloc] initWithAccountIdentifier:v7 provisioningData:v8];
    -[ISMachineDataProvisioningOperation setAllowsBootstrapCellularData:](v12, "setAllowsBootstrapCellularData:", [v5 allowsBootstrapCellularData]);
    [(ISMachineDataProvisioningOperation *)v12 setHidesServerDrivenDialogs:v9];
    -[ISMachineDataProvisioningOperation setProtocolVersion:](v12, "setProtocolVersion:", [v5 protocolVersion]);
    v13 = [(ISMachineDataActionOperation *)self userAgent];
    [(ISMachineDataProvisioningOperation *)v12 setUserAgent:v13];

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
  if (a4)
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
    *a4 = v10;
  }

  return v14;
}

- (BOOL)_shouldRetryAfterError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:*MEMORY[0x277CCA738]])
  {
    v5 = 1;
  }

  else if ([v4 isEqualToString:*MEMORY[0x277D6A110]])
  {
    v5 = [v3 code] == 109;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_syncMachineWithRequest:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 accountIdentifier];
  v7 = [v6 unsignedLongLongValue];

  v8 = [v5 actionData];
  v9 = [(ISMachineDataActionOperation *)self hidesServerDrivenDialogs];
  v10 = 0;
  v11 = 5;
  while (1)
  {
    v12 = [[ISMachineDataSyncOperation alloc] initWithAccountIdentifier:v7 syncData:v8];
    [(ISMachineDataSyncOperation *)v12 setHidesServerDrivenDialogs:v9];
    -[ISMachineDataSyncOperation setProtocolVersion:](v12, "setProtocolVersion:", [v5 protocolVersion]);
    v13 = [(ISMachineDataActionOperation *)self userAgent];
    [(ISMachineDataSyncOperation *)v12 setUserAgent:v13];

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
  v15 = [(ISMachineDataSyncOperation *)v12 syncState];
  resultBlock = self->_resultBlock;
  self->_resultBlock = v15;

  [(NSLock *)self->super._lock unlock];
LABEL_7:

LABEL_8:
  if (a4)
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
    *a4 = v10;
  }

  return v14;
}

@end
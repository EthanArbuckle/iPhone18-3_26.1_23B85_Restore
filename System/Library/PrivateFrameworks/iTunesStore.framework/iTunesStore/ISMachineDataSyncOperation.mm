@interface ISMachineDataSyncOperation
- (BOOL)allowsBootstrapCellularData;
- (BOOL)hidesServerDrivenDialogs;
- (ISMachineDataSyncOperation)initWithAccountIdentifier:(unint64_t)a3 syncData:(id)a4;
- (NSString)syncState;
- (NSString)userAgent;
- (id)_newSyncOperationWithClientData:(id)a3 machineIDData:(id)a4;
- (int64_t)protocolVersion;
- (void)run;
- (void)setAllowsBootstrapCellularData:(BOOL)a3;
- (void)setHidesServerDrivenDialogs:(BOOL)a3;
- (void)setProtocolVersion:(int64_t)a3;
- (void)setUserAgent:(id)a3;
@end

@implementation ISMachineDataSyncOperation

- (ISMachineDataSyncOperation)initWithAccountIdentifier:(unint64_t)a3 syncData:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = ISMachineDataSyncOperation;
  v7 = [(ISOperation *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_accountID = a3;
    v9 = [v6 copy];
    inputData = v8->_inputData;
    v8->_inputData = v9;
  }

  return v8;
}

- (BOOL)allowsBootstrapCellularData
{
  [(ISOperation *)self lock];
  allowsBootstrapCellularData = self->_allowsBootstrapCellularData;
  [(ISOperation *)self unlock];
  return allowsBootstrapCellularData;
}

- (BOOL)hidesServerDrivenDialogs
{
  [(ISOperation *)self lock];
  hidesServerDrivenDialogs = self->_hidesServerDrivenDialogs;
  [(ISOperation *)self unlock];
  return hidesServerDrivenDialogs;
}

- (int64_t)protocolVersion
{
  [(ISOperation *)self lock];
  protocolVersion = self->_protocolVersion;
  [(ISOperation *)self unlock];
  return protocolVersion;
}

- (void)setAllowsBootstrapCellularData:(BOOL)a3
{
  [(ISOperation *)self lock];
  self->_allowsBootstrapCellularData = a3;

  [(ISOperation *)self unlock];
}

- (void)setHidesServerDrivenDialogs:(BOOL)a3
{
  [(ISOperation *)self lock];
  self->_hidesServerDrivenDialogs = a3;

  [(ISOperation *)self unlock];
}

- (void)setProtocolVersion:(int64_t)a3
{
  [(ISOperation *)self lock];
  self->_protocolVersion = a3;

  [(ISOperation *)self unlock];
}

- (void)setUserAgent:(id)a3
{
  v6 = a3;
  [(ISOperation *)self lock];
  if (self->_userAgent != v6)
  {
    v4 = [(NSString *)v6 copy];
    userAgent = self->_userAgent;
    self->_userAgent = v4;
  }

  [(ISOperation *)self unlock];
}

- (NSString)syncState
{
  [(NSLock *)self->super._lock lock];
  v3 = self->_syncState;
  [(NSLock *)self->super._lock unlock];

  return v3;
}

- (NSString)userAgent
{
  [(ISOperation *)self lock];
  v3 = self->_userAgent;
  [(ISOperation *)self unlock];

  return v3;
}

- (void)run
{
  v42 = *MEMORY[0x277D85DE8];
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  if (self->_protocolVersion == 1)
  {
    accountID = -1;
  }

  else
  {
    accountID = self->_accountID;
  }

  inputData = self->_inputData;
  v5 = SSVAnisetteSynchronize();
  v6 = [MEMORY[0x277D69B38] sharedDaemonConfig];
  v7 = v6;
  if (v5)
  {
    if (!v6)
    {
      v7 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v8 |= 2u;
    }

    v9 = [v7 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v8;
    }

    else
    {
      v10 = v8 & 2;
    }

    if (v10)
    {
      v38 = 138412546;
      v39 = objc_opt_class();
      v40 = 2048;
      v41 = v5;
      v11 = v39;
      LODWORD(v32) = 22;
      v31 = &v38;
      v12 = _os_log_send_and_compose_impl();

      if (v12)
      {
        v13 = [MEMORY[0x277CCACA8] stringWithCString:v12 encoding:{4, &v38, v32}];
        free(v12);
        v31 = v13;
        SSFileLog();
      }
    }

    else
    {
    }

    v29 = *MEMORY[0x277D6A5F8];
    v23 = SSError();
    v22 = 0;
    goto LABEL_35;
  }

  if (!v6)
  {
    v7 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v14 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v15 = v14 | 2;
  }

  else
  {
    v15 = v14;
  }

  v16 = [v7 OSLogObject];
  if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v15 &= 2u;
  }

  if (!v15)
  {
    goto LABEL_25;
  }

  v38 = 138412546;
  v39 = objc_opt_class();
  v40 = 2048;
  v41 = accountID;
  v17 = v39;
  LODWORD(v32) = 22;
  v31 = &v38;
  v18 = _os_log_send_and_compose_impl();

  if (v18)
  {
    v16 = [MEMORY[0x277CCACA8] stringWithCString:v18 encoding:{4, &v38, v32}];
    free(v18);
    v31 = v16;
    SSFileLog();
LABEL_25:
  }

  v19 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v35 length:v34 freeWhenDone:0];
  v20 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v37 length:v36 freeWhenDone:0];
  v21 = [(ISMachineDataSyncOperation *)self _newSyncOperationWithClientData:v19 machineIDData:v20];
  v33 = 0;
  v22 = [(ISOperation *)self runSubOperation:v21 returningError:&v33];
  v23 = v33;
  if (v22)
  {
    v24 = [v21 dataProvider];
    v25 = [v24 output];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [v25 objectForKey:@"syncState"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(NSLock *)self->super._lock lock];
        v27 = [v26 copy];
        syncState = self->_syncState;
        self->_syncState = v27;

        [(NSLock *)self->super._lock unlock];
      }
    }
  }

LABEL_35:
  if (v37)
  {
    MEMORY[0x277C8BA80]();
  }

  if (v35)
  {
    MEMORY[0x277C8BA80]();
  }

  [(ISOperation *)self setError:v23, v31];
  [(ISOperation *)self setSuccess:v22];

  v30 = *MEMORY[0x277D85DE8];
}

- (id)_newSyncOperationWithClientData:(id)a3 machineIDData:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(ISStoreURLOperation);
  [(ISStoreURLOperation *)v8 setUseUserSpecificURLBag:1];
  v9 = [(ISMachineDataSyncOperation *)self hidesServerDrivenDialogs];
  v10 = [(ISMachineDataSyncOperation *)self userAgent];
  v11 = +[(ISDataProvider *)ISProtocolDataProvider];
  v12 = !v9;
  [v11 setShouldProcessAuthenticationDialogs:!v9];
  [v11 setShouldProcessDialogs:!v9];
  [(ISURLOperation *)v8 setDataProvider:v11];
  v13 = objc_alloc(MEMORY[0x277D69BC8]);
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_accountID];
  v15 = [v13 initWithAccountIdentifier:v14];

  if (!v12)
  {
    [v15 setPromptStyle:1000];
    [v15 setShouldSuppressDialogs:1];
  }

  [v15 setAllowsBootstrapCellularData:{-[ISMachineDataSyncOperation allowsBootstrapCellularData](self, "allowsBootstrapCellularData")}];
  v16 = *MEMORY[0x277D6A130];
  [v15 setValue:v10 forHTTPHeaderField:*MEMORY[0x277D6A130]];
  [(ISURLOperation *)v8 setAuthenticationContext:v15];
  v17 = objc_alloc_init(MEMORY[0x277D69BD0]);
  [v17 setAllowedRetryCount:0];
  [v17 setAllowsBootstrapCellularData:{-[ISMachineDataSyncOperation allowsBootstrapCellularData](self, "allowsBootstrapCellularData")}];
  [v17 setHTTPMethod:@"POST"];
  [v17 setValue:@"application/x-apple-plist" forHTTPHeaderField:@"Content-Type"];
  [v17 setValue:v10 forHTTPHeaderField:v16];
  v18 = [v7 base64EncodedStringWithOptions:0];

  [v17 setValue:v18 forRequestParameter:@"clientData"];
  v19 = [v6 base64EncodedStringWithOptions:0];

  [v17 setValue:v19 forRequestParameter:@"machineId"];
  v20 = [(ISMachineDataSyncOperation *)self protocolVersion];
  if (v20 == 1)
  {
    [v17 setURLBagKey:@"amd-sync-machine"];
  }

  else if (!v20)
  {
    [v17 setURLBagKey:@"md-sync-machine"];
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_accountID];
    [v17 setValue:v21 forRequestParameter:@"dsId"];
  }

  [(ISURLOperation *)v8 setRequestProperties:v17];

  return v8;
}

@end
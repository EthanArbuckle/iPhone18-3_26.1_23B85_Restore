@interface SSVRefreshStoreQueueDownloadOperation
- (BOOL)_refreshDownloadWithTransactionID:(id)d accountID:(id)iD bagKey:(id)key error:(id *)error;
- (SSVRefreshStoreQueueDownloadOperation)initWithDownloadTransactionIdentifier:(id)identifier accountID:(id)d;
- (void)main;
@end

@implementation SSVRefreshStoreQueueDownloadOperation

- (SSVRefreshStoreQueueDownloadOperation)initWithDownloadTransactionIdentifier:(id)identifier accountID:(id)d
{
  identifierCopy = identifier;
  dCopy = d;
  v14.receiver = self;
  v14.super_class = SSVRefreshStoreQueueDownloadOperation;
  v8 = [(SSVLoadDownloadQueueOperation *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    downloadTransactionID = v8->_downloadTransactionID;
    v8->_downloadTransactionID = v9;

    v11 = [dCopy copy];
    accountID = v8->_accountID;
    v8->_accountID = v11;
  }

  return v8;
}

- (void)main
{
  downloadTransactionID = self->_downloadTransactionID;
  accountID = self->_accountID;
  v7 = 0;
  v5 = [(SSVRefreshStoreQueueDownloadOperation *)self _refreshDownloadWithTransactionID:downloadTransactionID accountID:accountID bagKey:@"pendingApps" error:&v7];
  v6 = v7;
  [(SSVOperation *)self setError:v6];
  [(SSVOperation *)self setSuccess:v5];
}

- (BOOL)_refreshDownloadWithTransactionID:(id)d accountID:(id)iD bagKey:(id)key error:(id *)error
{
  v44 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  keyCopy = key;
  v13 = keyCopy;
  success = 0;
  error = 0;
  if (dCopy && iDCopy && keyCopy)
  {
    errorCopy = error;
    v16 = objc_alloc_init(SSMutableURLRequestProperties);
    [(SSMutableURLRequestProperties *)v16 setURLBagKey:v13];
    [(SSMutableURLRequestProperties *)v16 setValue:dCopy forRequestParameter:@"endId"];
    [(SSMutableURLRequestProperties *)v16 setValue:dCopy forRequestParameter:@"startId"];
    v17 = [[SSVLoadDownloadQueueOperation alloc] initWithRequestProperties:v16];
    [(SSVLoadDownloadQueueOperation *)v17 setAccountIdentifier:iDCopy];
    [(SSVLoadDownloadQueueOperation *)v17 setNeedsAuthentication:0];
    v18 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v18)
    {
      v18 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v18 shouldLog];
    if ([v18 shouldLogToDisk])
    {
      v20 = shouldLog | 2;
    }

    else
    {
      v20 = shouldLog;
    }

    oSLogObject = [v18 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v22 = v20;
    }

    else
    {
      v22 = v20 & 2;
    }

    if (v22)
    {
      v23 = objc_opt_class();
      accountID = self->_accountID;
      v38 = 138412802;
      v39 = v23;
      v40 = 2112;
      v41 = accountID;
      v42 = 2112;
      v43 = dCopy;
      v25 = v23;
      LODWORD(v36) = 32;
      v26 = _os_log_send_and_compose_impl();

      if (v26)
      {
        v27 = [MEMORY[0x1E696AEC0] stringWithCString:v26 encoding:{4, &v38, v36}];
        free(v26);
        SSFileLog(v18, @"%@", v28, v29, v30, v31, v32, v33, v27);
      }
    }

    else
    {
    }

    [(SSVOperation *)self runChildOperation:v17];
    success = [(SSVOperation *)v17 success];
    if (success)
    {
      error = 0;
    }

    else
    {
      error = [(SSVOperation *)v17 error];
    }

    error = errorCopy;
  }

  if (error && !success)
  {
    v34 = error;
    *error = error;
  }

  return success;
}

@end
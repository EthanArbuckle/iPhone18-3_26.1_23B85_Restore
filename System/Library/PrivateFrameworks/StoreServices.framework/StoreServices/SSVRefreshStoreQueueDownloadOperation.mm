@interface SSVRefreshStoreQueueDownloadOperation
- (BOOL)_refreshDownloadWithTransactionID:(id)a3 accountID:(id)a4 bagKey:(id)a5 error:(id *)a6;
- (SSVRefreshStoreQueueDownloadOperation)initWithDownloadTransactionIdentifier:(id)a3 accountID:(id)a4;
- (void)main;
@end

@implementation SSVRefreshStoreQueueDownloadOperation

- (SSVRefreshStoreQueueDownloadOperation)initWithDownloadTransactionIdentifier:(id)a3 accountID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SSVRefreshStoreQueueDownloadOperation;
  v8 = [(SSVLoadDownloadQueueOperation *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    downloadTransactionID = v8->_downloadTransactionID;
    v8->_downloadTransactionID = v9;

    v11 = [v7 copy];
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

- (BOOL)_refreshDownloadWithTransactionID:(id)a3 accountID:(id)a4 bagKey:(id)a5 error:(id *)a6
{
  v44 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  v14 = 0;
  v15 = 0;
  if (v10 && v11 && v12)
  {
    v37 = a6;
    v16 = objc_alloc_init(SSMutableURLRequestProperties);
    [(SSMutableURLRequestProperties *)v16 setURLBagKey:v13];
    [(SSMutableURLRequestProperties *)v16 setValue:v10 forRequestParameter:@"endId"];
    [(SSMutableURLRequestProperties *)v16 setValue:v10 forRequestParameter:@"startId"];
    v17 = [[SSVLoadDownloadQueueOperation alloc] initWithRequestProperties:v16];
    [(SSVLoadDownloadQueueOperation *)v17 setAccountIdentifier:v11];
    [(SSVLoadDownloadQueueOperation *)v17 setNeedsAuthentication:0];
    v18 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v18)
    {
      v18 = +[SSLogConfig sharedConfig];
    }

    v19 = [v18 shouldLog];
    if ([v18 shouldLogToDisk])
    {
      v20 = v19 | 2;
    }

    else
    {
      v20 = v19;
    }

    v21 = [v18 OSLogObject];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
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
      v43 = v10;
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
    v14 = [(SSVOperation *)v17 success];
    if (v14)
    {
      v15 = 0;
    }

    else
    {
      v15 = [(SSVOperation *)v17 error];
    }

    a6 = v37;
  }

  if (a6 && !v14)
  {
    v34 = v15;
    *a6 = v15;
  }

  return v14;
}

@end
@interface ReceiptRefreshOperation
- (BOOL)_isSandboxed;
- (ReceiptRefreshOperation)initWithClient:(id)a3 requestingClientIdentifier:(id)a4 receiptFlags:(unint64_t)a5;
- (id)_postBodyData;
- (id)resultBlock;
- (void)run;
- (void)setResultBlock:(id)a3;
@end

@implementation ReceiptRefreshOperation

- (ReceiptRefreshOperation)initWithClient:(id)a3 requestingClientIdentifier:(id)a4 receiptFlags:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v21.receiver = self;
  v21.super_class = ReceiptRefreshOperation;
  v11 = [(ReceiptRefreshOperation *)&v21 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_client, a3);
    v12->_flags = a5;
    objc_storeStrong(&v12->_requestingClientIdentifier, a4);
    v13 = [v9 receiptDirectoryPath];
    if (v13)
    {
      v14 = [(ReceiptRefreshOperation *)v12 _isSandboxed];
      v15 = [SSPurchaseReceipt alloc];
      if (v14)
      {
        v16 = @"sandboxReceipt";
      }

      else
      {
        v16 = @"receipt";
      }

      v17 = [v13 stringByAppendingPathComponent:v16];
      v18 = [v15 initWithContentsOfFile:v17];
      existingReceipt = v12->_existingReceipt;
      v12->_existingReceipt = v18;
    }
  }

  return v12;
}

- (id)resultBlock
{
  [(ReceiptRefreshOperation *)self lock];
  v3 = [self->_resultBlock copy];
  [(ReceiptRefreshOperation *)self unlock];
  v4 = objc_retainBlock(v3);

  return v4;
}

- (void)setResultBlock:(id)a3
{
  v6 = a3;
  [(ReceiptRefreshOperation *)self lock];
  if (self->_resultBlock != v6)
  {
    v4 = [v6 copy];
    resultBlock = self->_resultBlock;
    self->_resultBlock = v4;
  }

  [(ReceiptRefreshOperation *)self unlock];
}

- (void)run
{
  v3 = [(ReceiptRefreshOperation *)self _postBodyData];
  if (v3)
  {
    v4 = objc_alloc_init(ISStoreURLOperation);
    v5 = +[DaemonProtocolDataProvider provider];
    [v4 setDataProvider:v5];
    v6 = objc_alloc_init(SSMutableURLRequestProperties);
    [v6 setAllowedRetryCount:0];
    v36 = v3;
    [v6 setHTTPBody:v3];
    [v6 setHTTPMethod:@"POST"];
    [v6 setValue:@"application/x-apple-plist" forHTTPHeaderField:@"Content-Type"];
    v7 = ISClientIdentifierForBundleIdentifier();
    [v6 setClientIdentifier:v7];

    v8 = [[AppReceiptRefreshOperationOptions alloc] initWithReceiptFlags:self->_flags];
    v9 = [(AppReceiptRefreshOperationOptions *)v8 URLBagKey];
    [v6 setURLBagKey:v9];

    v10 = [[SSMutableAuthenticationContext alloc] initWithAccountIdentifier:0];
    [v10 setPromptStyle:{-[AppReceiptRefreshOperationOptions authenticationPromptStyle](v8, "authenticationPromptStyle")}];
    if (([(AppReceiptRefreshOperationOptions *)v8 receiptFlags]& 4) != 0)
    {
      [v10 setAccountScope:1];
      [v6 setURLBagType:1];
    }

    v35 = v10;
    [v4 setAuthenticationContext:v10];
    [v4 setRequestProperties:v6];
    v11 = +[SSLogConfig sharedDaemonConfig];
    if (!v11)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    v12 = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v13 = v12 | 2;
    }

    else
    {
      v13 = v12;
    }

    v14 = [v11 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v13;
    }

    else
    {
      v15 = v13 & 2;
    }

    if (v15)
    {
      v16 = objc_opt_class();
      client = self->_client;
      v34 = v8;
      v18 = v5;
      v19 = v4;
      v20 = v16;
      v21 = [(SKPaymentQueueClient *)client bundleIdentifier];
      v38 = 138543618;
      v39 = v16;
      v40 = 2114;
      v41 = v21;
      LODWORD(v33) = 22;
      v32 = &v38;
      v22 = _os_log_send_and_compose_impl();

      v4 = v19;
      v5 = v18;
      v8 = v34;

      if (v22)
      {
        v23 = [NSString stringWithCString:v22 encoding:4, &v38, v33];
        free(v22);
        v32 = v23;
        SSFileLog();
      }
    }

    else
    {
    }

    v37 = 0;
    v26 = [(ReceiptRefreshOperation *)self runSubOperation:v4 returningError:&v37];
    v24 = v37;
    if (v26)
    {
      v27 = [v5 output];
      v28 = [v27 objectForKey:@"receipt"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v29 = objc_alloc_init(StoreKitClientIdentity);
        [(StoreKitClientIdentity *)v29 setValuesWithPaymentQueueClient:self->_client];
        v25 = [AppReceipt writeReceipt:v28 forStoreKitClient:v29];
      }

      else
      {
        v25 = 0;
      }

      v3 = v36;
    }

    else
    {
      v25 = 0;
      v3 = v36;
    }
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  [(ReceiptRefreshOperation *)self setError:v24, v32];
  [(ReceiptRefreshOperation *)self setSuccess:v25];
  v30 = [(ReceiptRefreshOperation *)self resultBlock];
  v31 = v30;
  if (v30)
  {
    (*(v30 + 16))(v30, v25, v24);
    [(ReceiptRefreshOperation *)self setResultBlock:0];
  }
}

- (BOOL)_isSandboxed
{
  v3 = [(SKPaymentQueueClient *)self->_client storeExternalVersion];
  if (v3)
  {
    v4 = [(SKPaymentQueueClient *)self->_client storeItemIdentifier];
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)_postBodyData
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = +[SSAccountStore defaultStore];
  v5 = [v4 activeAccount];
  v6 = [v5 uniqueIdentifier];

  if (v6)
  {
    v7 = [v6 stringValue];
    [v3 setObject:v7 forKey:@"dsid"];
  }

  v8 = +[ISDevice sharedInstance];
  v9 = [v8 guid];

  if (v9)
  {
    [v3 setObject:v9 forKey:@"guid"];
  }

  v10 = [(SKPaymentQueueClient *)self->_client bundleIdentifier];

  if (v10)
  {
    [v3 setObject:v10 forKey:@"bundle-id"];
  }

  v11 = [(SKPaymentQueueClient *)self->_client bundleVersion];

  if (v11)
  {
    [v3 setObject:v11 forKey:@"version-id"];
  }

  v12 = +[ISDevice sharedInstance];
  v13 = [v12 serialNumber];

  if (v13)
  {
    [v3 setObject:v13 forKey:@"serialNumber"];
  }

  flags = self->_flags;
  LOBYTE(v15) = flags;
  if (flags)
  {
    [v3 setObject:&__kCFBooleanTrue forKey:@"want-expired"];
    v15 = self->_flags;
  }

  if ((v15 & 2) != 0)
  {
    [v3 setObject:&__kCFBooleanTrue forKey:@"want-revoked"];
  }

  else if (!(flags & 1 | v15 & 8))
  {
    v16 = 0;
    goto LABEL_18;
  }

  [v3 setObject:&__kCFBooleanTrue forKey:@"want-vpp"];
  v16 = 1;
LABEL_18:
  if ([(SSPurchaseReceipt *)self->_existingReceipt isRevoked])
  {
    [v3 setObject:&__kCFBooleanTrue forKey:@"revoked"];
  }

  v17 = [(SKPaymentQueueClient *)self->_client storeItemIdentifier];

  if (v17)
  {
    v18 = [v17 stringValue];
    if (v16)
    {
      v19 = @"appAdamId";
    }

    else
    {
      v19 = @"adam-id";
    }

    [v3 setObject:v18 forKey:v19];
  }

  v20 = [(SKPaymentQueueClient *)self->_client storeExternalVersion];

  if (v20)
  {
    v21 = [v20 stringValue];
    if (v16)
    {
      v22 = @"appExtVrsId";
    }

    else
    {
      v22 = @"software-version-external-identifier";
    }

    [v3 setObject:v21 forKey:v22];
  }

  v23 = [(SKPaymentQueueClient *)self->_client vendorIdentifier];

  if (v23)
  {
    [v3 setObject:v23 forKey:@"vid"];
  }

  v24 = [NSPropertyListSerialization dataWithPropertyList:v3 format:100 options:0 error:0];

  return v24;
}

@end
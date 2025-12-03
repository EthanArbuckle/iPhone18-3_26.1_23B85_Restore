@interface ReceiptRefreshOperation
- (BOOL)_isSandboxed;
- (ReceiptRefreshOperation)initWithClient:(id)client requestingClientIdentifier:(id)identifier receiptFlags:(unint64_t)flags;
- (id)_postBodyData;
- (id)resultBlock;
- (void)run;
- (void)setResultBlock:(id)block;
@end

@implementation ReceiptRefreshOperation

- (ReceiptRefreshOperation)initWithClient:(id)client requestingClientIdentifier:(id)identifier receiptFlags:(unint64_t)flags
{
  clientCopy = client;
  identifierCopy = identifier;
  v21.receiver = self;
  v21.super_class = ReceiptRefreshOperation;
  v11 = [(ReceiptRefreshOperation *)&v21 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_client, client);
    v12->_flags = flags;
    objc_storeStrong(&v12->_requestingClientIdentifier, identifier);
    receiptDirectoryPath = [clientCopy receiptDirectoryPath];
    if (receiptDirectoryPath)
    {
      _isSandboxed = [(ReceiptRefreshOperation *)v12 _isSandboxed];
      v15 = [SSPurchaseReceipt alloc];
      if (_isSandboxed)
      {
        v16 = @"sandboxReceipt";
      }

      else
      {
        v16 = @"receipt";
      }

      v17 = [receiptDirectoryPath stringByAppendingPathComponent:v16];
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

- (void)setResultBlock:(id)block
{
  blockCopy = block;
  [(ReceiptRefreshOperation *)self lock];
  if (self->_resultBlock != blockCopy)
  {
    v4 = [blockCopy copy];
    resultBlock = self->_resultBlock;
    self->_resultBlock = v4;
  }

  [(ReceiptRefreshOperation *)self unlock];
}

- (void)run
{
  _postBodyData = [(ReceiptRefreshOperation *)self _postBodyData];
  if (_postBodyData)
  {
    v4 = objc_alloc_init(ISStoreURLOperation);
    v5 = +[DaemonProtocolDataProvider provider];
    [v4 setDataProvider:v5];
    v6 = objc_alloc_init(SSMutableURLRequestProperties);
    [v6 setAllowedRetryCount:0];
    v36 = _postBodyData;
    [v6 setHTTPBody:_postBodyData];
    [v6 setHTTPMethod:@"POST"];
    [v6 setValue:@"application/x-apple-plist" forHTTPHeaderField:@"Content-Type"];
    v7 = ISClientIdentifierForBundleIdentifier();
    [v6 setClientIdentifier:v7];

    v8 = [[AppReceiptRefreshOperationOptions alloc] initWithReceiptFlags:self->_flags];
    uRLBagKey = [(AppReceiptRefreshOperationOptions *)v8 URLBagKey];
    [v6 setURLBagKey:uRLBagKey];

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

    shouldLog = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v13 = shouldLog | 2;
    }

    else
    {
      v13 = shouldLog;
    }

    oSLogObject = [v11 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
      bundleIdentifier = [(SKPaymentQueueClient *)client bundleIdentifier];
      v38 = 138543618;
      v39 = v16;
      v40 = 2114;
      v41 = bundleIdentifier;
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
      output = [v5 output];
      v28 = [output objectForKey:@"receipt"];
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

      _postBodyData = v36;
    }

    else
    {
      v25 = 0;
      _postBodyData = v36;
    }
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  [(ReceiptRefreshOperation *)self setError:v24, v32];
  [(ReceiptRefreshOperation *)self setSuccess:v25];
  resultBlock = [(ReceiptRefreshOperation *)self resultBlock];
  v31 = resultBlock;
  if (resultBlock)
  {
    (*(resultBlock + 16))(resultBlock, v25, v24);
    [(ReceiptRefreshOperation *)self setResultBlock:0];
  }
}

- (BOOL)_isSandboxed
{
  storeExternalVersion = [(SKPaymentQueueClient *)self->_client storeExternalVersion];
  if (storeExternalVersion)
  {
    storeItemIdentifier = [(SKPaymentQueueClient *)self->_client storeItemIdentifier];
    v5 = storeItemIdentifier == 0;
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
  activeAccount = [v4 activeAccount];
  uniqueIdentifier = [activeAccount uniqueIdentifier];

  if (uniqueIdentifier)
  {
    stringValue = [uniqueIdentifier stringValue];
    [v3 setObject:stringValue forKey:@"dsid"];
  }

  v8 = +[ISDevice sharedInstance];
  guid = [v8 guid];

  if (guid)
  {
    [v3 setObject:guid forKey:@"guid"];
  }

  bundleIdentifier = [(SKPaymentQueueClient *)self->_client bundleIdentifier];

  if (bundleIdentifier)
  {
    [v3 setObject:bundleIdentifier forKey:@"bundle-id"];
  }

  bundleVersion = [(SKPaymentQueueClient *)self->_client bundleVersion];

  if (bundleVersion)
  {
    [v3 setObject:bundleVersion forKey:@"version-id"];
  }

  v12 = +[ISDevice sharedInstance];
  serialNumber = [v12 serialNumber];

  if (serialNumber)
  {
    [v3 setObject:serialNumber forKey:@"serialNumber"];
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

  storeItemIdentifier = [(SKPaymentQueueClient *)self->_client storeItemIdentifier];

  if (storeItemIdentifier)
  {
    stringValue2 = [storeItemIdentifier stringValue];
    if (v16)
    {
      v19 = @"appAdamId";
    }

    else
    {
      v19 = @"adam-id";
    }

    [v3 setObject:stringValue2 forKey:v19];
  }

  storeExternalVersion = [(SKPaymentQueueClient *)self->_client storeExternalVersion];

  if (storeExternalVersion)
  {
    stringValue3 = [storeExternalVersion stringValue];
    if (v16)
    {
      v22 = @"appExtVrsId";
    }

    else
    {
      v22 = @"software-version-external-identifier";
    }

    [v3 setObject:stringValue3 forKey:v22];
  }

  vendorIdentifier = [(SKPaymentQueueClient *)self->_client vendorIdentifier];

  if (vendorIdentifier)
  {
    [v3 setObject:vendorIdentifier forKey:@"vid"];
  }

  v24 = [NSPropertyListSerialization dataWithPropertyList:v3 format:100 options:0 error:0];

  return v24;
}

@end
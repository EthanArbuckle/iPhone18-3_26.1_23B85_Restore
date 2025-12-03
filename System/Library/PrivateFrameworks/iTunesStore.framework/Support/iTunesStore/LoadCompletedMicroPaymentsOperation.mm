@interface LoadCompletedMicroPaymentsOperation
- (BOOL)isPartialFailure;
- (NSString)applicationUsername;
- (StoreKitClientIdentity)clientIdentity;
- (id)_copyResponseForIdentity:(id)identity startID:(id)d endID:(id)iD returningError:(id *)error;
- (id)_newFetchOperationForIdentity:(id)identity startID:(id)d endID:(id)iD;
- (id)paymentBatchBlock;
- (void)_runForIdentity:(id)identity;
- (void)run;
- (void)setApplicationUsername:(id)username;
- (void)setClientIdentity:(id)identity;
- (void)setPaymentBatchBlock:(id)block;
@end

@implementation LoadCompletedMicroPaymentsOperation

- (NSString)applicationUsername
{
  [(LoadCompletedMicroPaymentsOperation *)self lock];
  v3 = [(NSString *)self->_applicationUsername copy];
  [(LoadCompletedMicroPaymentsOperation *)self unlock];

  return v3;
}

- (StoreKitClientIdentity)clientIdentity
{
  [(LoadCompletedMicroPaymentsOperation *)self lock];
  v3 = [(StoreKitClientIdentity *)self->_clientIdentity copy];
  [(LoadCompletedMicroPaymentsOperation *)self unlock];

  return v3;
}

- (BOOL)isPartialFailure
{
  [(LoadCompletedMicroPaymentsOperation *)self lock];
  partialFailure = self->_partialFailure;
  [(LoadCompletedMicroPaymentsOperation *)self unlock];
  return partialFailure;
}

- (id)paymentBatchBlock
{
  [(LoadCompletedMicroPaymentsOperation *)self lock];
  v3 = [self->_paymentBatchBlock copy];
  [(LoadCompletedMicroPaymentsOperation *)self unlock];
  v4 = objc_retainBlock(v3);

  return v4;
}

- (void)setApplicationUsername:(id)username
{
  usernameCopy = username;
  [(LoadCompletedMicroPaymentsOperation *)self lock];
  if (self->_applicationUsername != usernameCopy)
  {
    v4 = [(NSString *)usernameCopy copy];
    applicationUsername = self->_applicationUsername;
    self->_applicationUsername = v4;
  }

  [(LoadCompletedMicroPaymentsOperation *)self unlock];
}

- (void)setClientIdentity:(id)identity
{
  identityCopy = identity;
  [(LoadCompletedMicroPaymentsOperation *)self lock];
  if (self->_clientIdentity != identityCopy)
  {
    v4 = [(StoreKitClientIdentity *)identityCopy copy];
    clientIdentity = self->_clientIdentity;
    self->_clientIdentity = v4;
  }

  [(LoadCompletedMicroPaymentsOperation *)self unlock];
}

- (void)setPaymentBatchBlock:(id)block
{
  blockCopy = block;
  [(LoadCompletedMicroPaymentsOperation *)self lock];
  if (self->_paymentBatchBlock != blockCopy)
  {
    v4 = [blockCopy copy];
    paymentBatchBlock = self->_paymentBatchBlock;
    self->_paymentBatchBlock = v4;
  }

  [(LoadCompletedMicroPaymentsOperation *)self unlock];
}

- (void)run
{
  clientIdentity = [(LoadCompletedMicroPaymentsOperation *)self clientIdentity];
  if (![clientIdentity usesIdentityAttributes])
  {
    bundleIdentifier = [clientIdentity bundleIdentifier];
    v5 = [LSApplicationProxy applicationProxyForIdentifier:bundleIdentifier];
    appState = [v5 appState];
    isValid = [appState isValid];

    if ((isValid & 1) == 0)
    {
      v8 = [AppExtensionSupport supportedProxyExtensionForBundleIdentifier:bundleIdentifier];

      v5 = v8;
    }

    if (v5)
    {
      itemID = [v5 itemID];
      if ([itemID integerValue])
      {

LABEL_9:
        v12 = [clientIdentity copy];
        [v12 setValuesWithSoftwareApplicationProxy:v5];
        [(LoadCompletedMicroPaymentsOperation *)self _runForIdentity:v12];
LABEL_22:

        goto LABEL_23;
      }

      bundleIdentifier2 = [v5 bundleIdentifier];
      v11 = [bundleIdentifier2 length];

      if (v11)
      {
        goto LABEL_9;
      }
    }

    v13 = +[SSLogConfig sharedDaemonConfig];
    if (!v13)
    {
      v13 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v13 shouldLog];
    if ([v13 shouldLogToDisk])
    {
      v15 = shouldLog | 2;
    }

    else
    {
      v15 = shouldLog;
    }

    oSLogObject = [v13 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v15 &= 2u;
    }

    if (v15)
    {
      *v21 = 138412546;
      *&v21[4] = objc_opt_class();
      *&v21[12] = 2112;
      *&v21[14] = bundleIdentifier;
      v17 = *&v21[4];
      LODWORD(v20) = 22;
      v18 = _os_log_send_and_compose_impl();

      if (!v18)
      {
LABEL_21:

        v12 = sub_1001FA1F0();
        v19 = ISErrorWithDomain();
        [(LoadCompletedMicroPaymentsOperation *)self setError:v19];

        goto LABEL_22;
      }

      oSLogObject = [NSString stringWithCString:v18 encoding:4, v21, v20, *v21, *&v21[16]];
      free(v18);
      SSFileLog();
    }

    goto LABEL_21;
  }

  [(LoadCompletedMicroPaymentsOperation *)self _runForIdentity:clientIdentity];
LABEL_23:
}

- (id)_copyResponseForIdentity:(id)identity startID:(id)d endID:(id)iD returningError:(id *)error
{
  v8 = [(LoadCompletedMicroPaymentsOperation *)self _newFetchOperationForIdentity:identity startID:d endID:iD];
  [v8 setDelegate:self];
  v9 = objc_alloc_init(DaemonProtocolDataProvider);
  [v8 setDataProvider:v9];
  v21 = 0;
  v10 = [(LoadCompletedMicroPaymentsOperation *)self runSubOperation:v8 returningError:&v21];
  v11 = v21;
  if (v10)
  {
    v12 = [[MicroPaymentQueueResponse alloc] initWithRequestType:1];
    authenticatedAccountDSID = [v8 authenticatedAccountDSID];
    if (!authenticatedAccountDSID)
    {
      v14 = +[SSAccountStore defaultStore];
      activeAccount = [v14 activeAccount];
      authenticatedAccountDSID = [activeAccount uniqueIdentifier];
    }

    [(MicroPaymentQueueResponse *)v12 setUserIdentifier:authenticatedAccountDSID];
    output = [(DaemonProtocolDataProvider *)v9 output];
    v17 = [(MicroPaymentQueueResponse *)v12 loadFromPropertyList:output];

    if ((v17 & 1) == 0)
    {
      v18 = ISErrorWithDomain();

      v12 = 0;
      v11 = v18;
    }
  }

  else
  {
    v12 = 0;
  }

  [v8 setDelegate:0];
  if (error && !v12)
  {
    v19 = v11;
    *error = v11;
  }

  return v12;
}

- (id)_newFetchOperationForIdentity:(id)identity startID:(id)d endID:(id)iD
{
  identityCopy = identity;
  iDCopy = iD;
  dCopy = d;
  v11 = objc_alloc_init(ISStoreURLOperation);
  if (![identityCopy isSandboxed])
  {
    ams_activeiTunesAccount = +[SSAccountStore defaultStore];
    activeAccount = [ams_activeiTunesAccount activeAccount];
    goto LABEL_5;
  }

  v12 = [ACAccountStore ams_sharedAccountStoreForMediaType:AMSAccountMediaTypeAppStoreSandbox];
  ams_activeiTunesAccount = [v12 ams_activeiTunesAccount];

  if (ams_activeiTunesAccount)
  {
    activeAccount = [[SSAccount alloc] initWithBackingAccount:ams_activeiTunesAccount];
LABEL_5:
    v15 = activeAccount;
    goto LABEL_6;
  }

  v15 = 0;
LABEL_6:

  v33 = v15;
  v16 = [[SSMutableAuthenticationContext alloc] initWithAccount:v15];
  [v16 setAllowsBootstrapCellularData:{objc_msgSend(identityCopy, "allowsBootstrapCellularData")}];
  [v16 setTokenType:1];
  [v11 setAuthenticationContext:v16];
  v17 = objc_alloc_init(SSMutableURLRequestProperties);
  [v17 setAllowedRetryCount:0];
  [v17 setAllowsBootstrapCellularData:{objc_msgSend(identityCopy, "allowsBootstrapCellularData")}];
  [v17 setCachePolicy:1];
  [v17 setHTTPMethod:@"POST"];
  [v17 setShouldDecodeResponse:0];
  [v17 setURLBagKey:@"p2-in-app-regrant-purchase-history"];
  if ([identityCopy isSandboxed])
  {
    [v17 setURLBagType:1];
  }

  v18 = sub_1000E3A24(identityCopy);
  itemIdentifierValue = [dCopy itemIdentifierValue];

  itemIdentifierValue2 = [iDCopy itemIdentifierValue];
  if (itemIdentifierValue - 1 < itemIdentifierValue2)
  {
    v21 = [NSString stringWithFormat:@"%llu", itemIdentifierValue];
    [v18 setObject:v21 forKey:kISLoadMoreStartIDParameter];

    v22 = [NSString stringWithFormat:@"%llu", itemIdentifierValue2];
    [v18 setObject:v22 forKey:kISLoadMoreEndIDParameter];

    [v16 setPromptStyle:0];
  }

  accountIdentifier = [identityCopy accountIdentifier];
  v24 = accountIdentifier;
  if (accountIdentifier)
  {
    stringValue = [accountIdentifier stringValue];
    [v18 setObject:stringValue forKey:@"appDsid"];
  }

  v26 = +[ISDevice sharedInstance];
  guid = [v26 guid];

  if (guid)
  {
    [v18 setObject:guid forKey:@"guid"];
  }

  v28 = +[ISDevice sharedInstance];
  serialNumber = [v28 serialNumber];

  if (serialNumber)
  {
    [v18 setObject:serialNumber forKey:@"serialNumber"];
  }

  vendorIdentifier = [identityCopy vendorIdentifier];
  if (vendorIdentifier)
  {
    [v18 setObject:vendorIdentifier forKey:@"vid"];
  }

  [(LoadCompletedMicroPaymentsOperation *)self lock];
  applicationUsername = self->_applicationUsername;
  if (applicationUsername)
  {
    [v18 setObject:applicationUsername forKey:@"applicationUsername"];
  }

  [(LoadCompletedMicroPaymentsOperation *)self unlock];
  [v17 setRequestParameters:v18];
  [v11 setRequestProperties:v17];

  return v11;
}

- (void)_runForIdentity:(id)identity
{
  identityCopy = identity;
  v5 = [NSMutableArray alloc];
  v6 = [NSNumber numberWithUnsignedLongLong:0];
  v7 = [NSNumber numberWithUnsignedLongLong:0];
  v8 = [v5 initWithObjects:{v6, v7, 0}];

  paymentBatchBlock = [(LoadCompletedMicroPaymentsOperation *)self paymentBatchBlock];
  v62 = identityCopy;
  v9 = [[ClaimStoreKitClientOperation alloc] initWithClientIdentity:identityCopy];
  v52 = v9;
  if ([(LoadCompletedMicroPaymentsOperation *)self runSubOperation:v9 returningError:0])
  {
    clientIdentity = [(ClaimStoreKitClientOperation *)v9 clientIdentity];

    v62 = clientIdentity;
  }

  if ([v8 count] >= 2)
  {
    v11 = 0;
    v53 = 0;
    v57 = 0;
    v12 = &CFDictionaryGetValue_ptr;
    selfCopy = self;
    v58 = v8;
    while (1)
    {
      if (([(LoadCompletedMicroPaymentsOperation *)self isCancelled:v50]& 1) != 0)
      {
        goto LABEL_56;
      }

      context = objc_autoreleasePoolPush();
      v13 = [v8 objectAtIndex:0];
      v63 = [v8 objectAtIndex:1];
      sharedDaemonConfig = [v12[412] sharedDaemonConfig];
      if (!sharedDaemonConfig)
      {
        sharedDaemonConfig = [v12[412] sharedConfig];
      }

      shouldLog = [sharedDaemonConfig shouldLog];
      if ([sharedDaemonConfig shouldLogToDisk])
      {
        v16 = shouldLog | 2;
      }

      else
      {
        v16 = shouldLog;
      }

      oSLogObject = [sharedDaemonConfig OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
      {
        v18 = v16;
      }

      else
      {
        v18 = v16 & 2;
      }

      if (v18)
      {
        v19 = objc_opt_class();
        v65 = 138412802;
        v66 = v19;
        v67 = 2112;
        *v68 = v13;
        *&v68[8] = 2112;
        v20 = v63;
        *&v68[10] = v63;
        v21 = v19;
        LODWORD(v51) = 32;
        v50 = &v65;
        v22 = _os_log_send_and_compose_impl();

        v12 = &CFDictionaryGetValue_ptr;
        if (!v22)
        {
          goto LABEL_19;
        }

        oSLogObject = [NSString stringWithCString:v22 encoding:4, &v65, v51];
        free(v22);
        v50 = oSLogObject;
        SSFileLog();
      }

      else
      {
        v20 = v63;
      }

LABEL_19:
      v64 = 0;
      v61 = v13;
      v23 = [(LoadCompletedMicroPaymentsOperation *)self _copyResponseForIdentity:v62 startID:v13 endID:v20 returningError:&v64];
      v24 = v64;
      v25 = v24;
      if (v23)
      {
        rangesToLoad = [v23 rangesToLoad];
        if (rangesToLoad)
        {
          [v8 addObjectsFromArray:rangesToLoad];
        }

        v59 = v25;
        sharedDaemonConfig2 = [v12[412] sharedDaemonConfig];
        if (!sharedDaemonConfig2)
        {
          sharedDaemonConfig2 = [v12[412] sharedConfig];
        }

        shouldLog2 = [sharedDaemonConfig2 shouldLog];
        if ([sharedDaemonConfig2 shouldLogToDisk])
        {
          v29 = shouldLog2 | 2;
        }

        else
        {
          v29 = shouldLog2;
        }

        oSLogObject2 = [sharedDaemonConfig2 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
        {
          v31 = v29;
        }

        else
        {
          v31 = v29 & 2;
        }

        if (v31)
        {
          v32 = objc_opt_class();
          v55 = v32;
          appReceipt = [v23 appReceipt];
          v34 = [appReceipt length];
          bundleIdentifier = [v62 bundleIdentifier];
          v65 = 138412802;
          v66 = v32;
          v67 = 1024;
          *v68 = v34;
          *&v68[4] = 2112;
          *&v68[6] = bundleIdentifier;
          LODWORD(v51) = 28;
          v50 = &v65;
          v36 = _os_log_send_and_compose_impl();

          v20 = v63;
          if (v36)
          {
            oSLogObject2 = [NSString stringWithCString:v36 encoding:4, &v65, v51];
            free(v36);
            v50 = oSLogObject2;
            SSFileLog();
            goto LABEL_33;
          }
        }

        else
        {
LABEL_33:
        }

        appReceipt2 = [v23 appReceipt];
        v38 = [appReceipt2 length];

        if (v38)
        {
          appReceipt3 = [v23 appReceipt];
          [AppReceipt writeReceipt:appReceipt3 forStoreKitClient:v62];
        }

        self = selfCopy;
        v8 = v58;
        v12 = &CFDictionaryGetValue_ptr;
        if (paymentBatchBlock)
        {
          paymentBatchBlock[2]();
        }

        v11 = 1;
        v40 = v59;
        goto LABEL_53;
      }

      v41 = v24;
      sharedDaemonConfig3 = [v12[412] sharedDaemonConfig];
      if (!sharedDaemonConfig3)
      {
        sharedDaemonConfig3 = [v12[412] sharedConfig];
      }

      shouldLog3 = [sharedDaemonConfig3 shouldLog];
      if ([sharedDaemonConfig3 shouldLogToDisk])
      {
        v44 = shouldLog3 | 2;
      }

      else
      {
        v44 = shouldLog3;
      }

      oSLogObject3 = [sharedDaemonConfig3 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
      {
        v46 = v44;
      }

      else
      {
        v46 = v44 & 2;
      }

      if (!v46)
      {
        v8 = v58;
        v20 = v63;
        goto LABEL_51;
      }

      v47 = objc_opt_class();
      v65 = 138413058;
      v66 = v47;
      v67 = 2112;
      *v68 = v61;
      *&v68[8] = 2112;
      v20 = v63;
      *&v68[10] = v63;
      v69 = 2112;
      v70 = v41;
      v48 = v47;
      LODWORD(v51) = 42;
      v50 = &v65;
      v49 = _os_log_send_and_compose_impl();

      v8 = v58;
      if (v49)
      {
        oSLogObject3 = [NSString stringWithCString:v49 encoding:4, &v65, v51];
        free(v49);
        v50 = oSLogObject3;
        SSFileLog();
LABEL_51:
      }

      v40 = v41;
      rangesToLoad = v57;
      v53 = 1;
      v57 = [v41 copy];
LABEL_53:

      [v8 removeObjectsInRange:{0, 2}];
      objc_autoreleasePoolPop(context);
      if ([v8 count] <= 1)
      {
        goto LABEL_56;
      }
    }
  }

  v57 = 0;
  v53 = 0;
  v11 = 0;
LABEL_56:
  [(LoadCompletedMicroPaymentsOperation *)self lock];
  self->_partialFailure = v11 & 1 & v53;
  [(LoadCompletedMicroPaymentsOperation *)self unlock];
  [(LoadCompletedMicroPaymentsOperation *)self setError:v57];
  [(LoadCompletedMicroPaymentsOperation *)self setSuccess:v11 & 1];
}

@end
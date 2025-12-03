@interface LoadDownloadQueueOperation
+ (id)newLoadAutomaticDownloadQueueOperation;
- (BOOL)_loadDownloadsFromStart:(id)start toEnd:(id)end;
- (BOOL)_runMachineDataOperationWithRequest:(id)request syncState:(id *)state;
- (BOOL)_shouldSendKeyBagSync;
- (BOOL)needsAuthentication;
- (LoadDownloadQueueOperation)initWithRequestProperties:(id)properties;
- (NSNumber)accountIdentifier;
- (NSOrderedSet)downloads;
- (NSString)requestIdentifier;
- (id)_account;
- (id)_newURLOperationWithStartIdentifier:(id)identifier endIdentifier:(id)endIdentifier;
- (int64_t)reason;
- (void)_handleResponse:(id)response;
- (void)operation:(id)operation finishedWithOutput:(id)output;
- (void)run;
- (void)setAccountIdentifier:(id)identifier;
- (void)setNeedsAuthentication:(BOOL)authentication;
- (void)setReason:(int64_t)reason;
- (void)setRequestIdentifier:(id)identifier;
@end

@implementation LoadDownloadQueueOperation

- (LoadDownloadQueueOperation)initWithRequestProperties:(id)properties
{
  propertiesCopy = properties;
  v10.receiver = self;
  v10.super_class = LoadDownloadQueueOperation;
  v5 = [(LoadDownloadQueueOperation *)&v10 init];
  if (v5)
  {
    if (propertiesCopy)
    {
      v6 = [propertiesCopy copy];
    }

    else
    {
      v6 = objc_alloc_init(SSURLRequestProperties);
    }

    v7 = v6;
    objc_storeStrong(&v5->_requestProperties, v6);

    [(LoadDownloadQueueOperation *)v5 setPowerAssertionIdentifier:@"com.apple.itunesstored.download-queue"];
    uRLBagKey = [(SSURLRequestProperties *)v5->_requestProperties URLBagKey];
    [(LoadDownloadQueueOperation *)v5 setRequestIdentifier:uRLBagKey];
  }

  return v5;
}

+ (id)newLoadAutomaticDownloadQueueOperation
{
  v2 = objc_alloc_init(SSMutableURLRequestProperties);
  [v2 setHTTPMethod:@"POST"];
  [v2 setURLBagURLBlock:&stru_1003275A0];
  v3 = [objc_alloc(objc_opt_class()) initWithRequestProperties:v2];
  [v3 setNeedsAuthentication:0];
  v4 = [NSString stringWithFormat:@"%@.%@", @"automatic-downloads2", @"downloads-url"];
  [v3 setRequestIdentifier:v4];

  return v3;
}

- (NSNumber)accountIdentifier
{
  [(LoadDownloadQueueOperation *)self lock];
  v3 = self->_accountIdentifier;
  [(LoadDownloadQueueOperation *)self unlock];

  return v3;
}

- (NSOrderedSet)downloads
{
  [(LoadDownloadQueueOperation *)self lock];
  v3 = self->_downloads;
  [(LoadDownloadQueueOperation *)self unlock];

  return v3;
}

- (BOOL)needsAuthentication
{
  [(LoadDownloadQueueOperation *)self lock];
  needsAuthentication = self->_needsAuthentication;
  [(LoadDownloadQueueOperation *)self unlock];
  return needsAuthentication;
}

- (int64_t)reason
{
  [(LoadDownloadQueueOperation *)self lock];
  reason = self->_reason;
  [(LoadDownloadQueueOperation *)self unlock];
  return reason;
}

- (NSString)requestIdentifier
{
  [(LoadDownloadQueueOperation *)self lock];
  v3 = self->_requestIdentifier;
  [(LoadDownloadQueueOperation *)self unlock];

  return v3;
}

- (void)setAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(LoadDownloadQueueOperation *)self lock];
  if (self->_accountIdentifier != identifierCopy)
  {
    objc_storeStrong(&self->_accountIdentifier, identifier);
  }

  [(LoadDownloadQueueOperation *)self unlock];
}

- (void)setNeedsAuthentication:(BOOL)authentication
{
  [(LoadDownloadQueueOperation *)self lock];
  self->_needsAuthentication = authentication;

  [(LoadDownloadQueueOperation *)self unlock];
}

- (void)setReason:(int64_t)reason
{
  [(LoadDownloadQueueOperation *)self lock];
  self->_reason = reason;

  [(LoadDownloadQueueOperation *)self unlock];
}

- (void)setRequestIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(LoadDownloadQueueOperation *)self lock];
  if (self->_requestIdentifier != identifierCopy)
  {
    v4 = [(NSString *)identifierCopy copy];
    requestIdentifier = self->_requestIdentifier;
    self->_requestIdentifier = v4;
  }

  [(LoadDownloadQueueOperation *)self unlock];
}

- (void)run
{
  v3 = [SSURLBagContext contextWithBagType:0];
  v36 = 0;
  v4 = [(LoadDownloadQueueOperation *)self loadURLBagWithContext:v3 returningError:&v36];
  v5 = v36;
  v6 = v5;
  if ((v4 & 1) == 0)
  {
    v24 = +[SSLogConfig sharedDaemonConfig];
    if (!v24)
    {
      v24 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v24 shouldLog];
    if ([v24 shouldLogToDisk])
    {
      v26 = shouldLog | 2;
    }

    else
    {
      v26 = shouldLog;
    }

    oSLogObject = [v24 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v28 = v26;
    }

    else
    {
      v28 = v26 & 2;
    }

    if (v28)
    {
      v29 = objc_opt_class();
      v37 = 138412546;
      v38 = v29;
      v39 = 2112;
      v40 = v6;
      v30 = v29;
      LODWORD(v33) = 22;
      v31 = _os_log_send_and_compose_impl();

      if (!v31)
      {
LABEL_33:

        [(LoadDownloadQueueOperation *)self setError:v6];
        goto LABEL_34;
      }

      oSLogObject = [NSString stringWithCString:v31 encoding:4, &v37, v33];
      free(v31);
      SSFileLog();
    }

    goto LABEL_33;
  }

  v35 = v5;
  v7 = [NSMutableArray alloc];
  v8 = [NSNumber numberWithUnsignedLongLong:0];
  v9 = [NSNumber numberWithUnsignedLongLong:0];
  v10 = [v7 initWithObjects:{v8, v9, 0}];
  rangesToLoad = self->_rangesToLoad;
  self->_rangesToLoad = v10;

  if ([(NSMutableArray *)self->_rangesToLoad count]>= 2)
  {
    while (1)
    {
      if (([(LoadDownloadQueueOperation *)self isCancelled]& 1) != 0)
      {
        goto LABEL_20;
      }

      v12 = [(NSMutableArray *)self->_rangesToLoad objectAtIndex:0];
      v13 = [(NSMutableArray *)self->_rangesToLoad objectAtIndex:1];
      if (![(LoadDownloadQueueOperation *)self _loadDownloadsFromStart:v12 toEnd:v13])
      {
        [(NSMutableArray *)self->_rangesToLoad removeAllObjects];
        goto LABEL_19;
      }

      v14 = +[SSLogConfig sharedDaemonConfig];
      if (!v14)
      {
        v14 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v14 shouldLog];
      if ([v14 shouldLogToDisk])
      {
        v16 = shouldLog2 | 2;
      }

      else
      {
        v16 = shouldLog2;
      }

      oSLogObject2 = [v14 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
      {
        v18 = v16;
      }

      else
      {
        v18 = v16 & 2;
      }

      if (!v18)
      {
        goto LABEL_16;
      }

      v19 = objc_opt_class();
      accountIdentifier = self->_accountIdentifier;
      v37 = 138413058;
      v38 = v19;
      v39 = 2112;
      v40 = accountIdentifier;
      v41 = 2112;
      v42 = v12;
      v43 = 2112;
      v44 = v13;
      v21 = v19;
      LODWORD(v34) = 42;
      v32 = &v37;
      v22 = _os_log_send_and_compose_impl();

      if (v22)
      {
        break;
      }

LABEL_17:

      [(NSMutableArray *)self->_rangesToLoad removeObjectsInRange:0, 2];
      [(LoadDownloadQueueOperation *)self setSuccess:[(NSMutableArray *)self->_rangesToLoad count]== 0, v32];
LABEL_19:

      if ([(NSMutableArray *)self->_rangesToLoad count]<= 1)
      {
        goto LABEL_20;
      }
    }

    oSLogObject2 = [NSString stringWithCString:v22 encoding:4, &v37, v34];
    free(v22);
    v32 = oSLogObject2;
    SSFileLog();
LABEL_16:

    goto LABEL_17;
  }

LABEL_20:
  v23 = self->_rangesToLoad;
  self->_rangesToLoad = 0;

  v6 = v35;
LABEL_34:
}

- (void)operation:(id)operation finishedWithOutput:(id)output
{
  outputCopy = output;
  operationCopy = operation;
  v8 = [StoreDownloadQueueResponse alloc];
  authenticatedAccountDSID = [operationCopy authenticatedAccountDSID];

  v10 = [(StoreDownloadQueueResponse *)v8 initWithDictionary:outputCopy userIdentifier:authenticatedAccountDSID];
  keybag = [(StoreDownloadQueueResponse *)v10 keybag];
  if ([keybag length])
  {
    v12 = +[SSLogConfig sharedDaemonConfig];
    if (!v12)
    {
      v12 = +[SSLogConfig sharedConfig];
    }

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
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v14 &= 2u;
    }

    if (v14)
    {
      v16 = objc_opt_class();
      v17 = v16;
      [(LoadDownloadQueueOperation *)self requestIdentifier];
      v20 = 138412546;
      v21 = v16;
      v23 = v22 = 2112;
      LODWORD(v19) = 22;
      v18 = _os_log_send_and_compose_impl();

      if (!v18)
      {
LABEL_13:

        sub_1000B29AC(keybag);
        goto LABEL_14;
      }

      oSLogObject = [NSString stringWithCString:v18 encoding:4, &v20, v19];
      free(v18);
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:
}

- (id)_account
{
  accountIdentifier = [(LoadDownloadQueueOperation *)self accountIdentifier];
  if (!accountIdentifier || (+[SSAccountStore defaultStore](SSAccountStore, "defaultStore"), v3 = objc_claimAutoreleasedReturnValue(), [v3 accountWithUniqueIdentifier:accountIdentifier], activeAccount = objc_claimAutoreleasedReturnValue(), v3, !activeAccount))
  {
    v5 = +[SSAccountStore defaultStore];
    activeAccount = [v5 activeAccount];
  }

  return activeAccount;
}

- (void)_handleResponse:(id)response
{
  responseCopy = response;
  rangesToLoad = [responseCopy rangesToLoad];
  if ([rangesToLoad count])
  {
    [(NSMutableArray *)self->_rangesToLoad addObjectsFromArray:rangesToLoad];
  }

  downloads = [responseCopy downloads];

  if (downloads)
  {
    [(LoadDownloadQueueOperation *)self lock];
    downloads = self->_downloads;
    if (!downloads)
    {
      v7 = objc_alloc_init(NSMutableOrderedSet);
      v8 = self->_downloads;
      self->_downloads = v7;

      downloads = self->_downloads;
    }

    [(NSMutableOrderedSet *)downloads unionOrderedSet:downloads];
    [(LoadDownloadQueueOperation *)self unlock];
  }
}

- (BOOL)_loadDownloadsFromStart:(id)start toEnd:(id)end
{
  startCopy = start;
  endCopy = end;
  v7 = +[SSLogConfig sharedDaemonConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    shouldLog |= 2u;
  }

  oSLogObject = [v7 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v10 = shouldLog;
  }

  else
  {
    v10 = shouldLog & 2;
  }

  if (v10)
  {
    v11 = objc_opt_class();
    v12 = v11;
    requestIdentifier = [(LoadDownloadQueueOperation *)self requestIdentifier];
    v55 = 138413314;
    v56 = v11;
    v57 = 2112;
    v58 = requestIdentifier;
    v59 = 2112;
    v60 = startCopy;
    v61 = 2112;
    v62 = endCopy;
    v63 = 2048;
    reason = [(LoadDownloadQueueOperation *)self reason];
    LODWORD(v48) = 52;
    v46 = &v55;
    v14 = _os_log_send_and_compose_impl();

    if (v14)
    {
      v15 = [NSString stringWithCString:v14 encoding:4, &v55, v48];
      free(v14);
      v46 = v15;
      SSFileLog();
    }
  }

  else
  {
  }

  v16 = 0;
  v17 = 0;
  v18 = 1;
  v49 = startCopy;
  do
  {
    v19 = v17;
    v20 = [(LoadDownloadQueueOperation *)self _newURLOperationWithStartIdentifier:startCopy endIdentifier:endCopy, v46];
    v54 = v17;
    v21 = [(LoadDownloadQueueOperation *)self runSubOperation:v20 returningError:&v54];
    v17 = v54;

    if (!v21)
    {
      v40 = 0;
      goto LABEL_36;
    }

    v50 = v16;
    dataProvider = [v20 dataProvider];
    output = [dataProvider output];

    requestIdentifier2 = [(LoadDownloadQueueOperation *)self requestIdentifier];
    v25 = requestIdentifier2;
    v26 = @"unknown";
    if (requestIdentifier2)
    {
      v26 = requestIdentifier2;
    }

    v51 = v26;

    v27 = +[SSLogConfig sharedWriteToDiskConfig];
    if (!v27)
    {
      v27 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v27 shouldLog];
    if ([v27 shouldLogToDisk])
    {
      v29 = shouldLog2 | 2;
    }

    else
    {
      v29 = shouldLog2;
    }

    oSLogObject2 = [v27 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v29 &= 2u;
    }

    if (!v29)
    {
      goto LABEL_26;
    }

    v31 = objc_opt_class();
    v55 = 138413314;
    v56 = v31;
    v57 = 2112;
    v58 = v51;
    v59 = 2112;
    v60 = startCopy;
    v61 = 2112;
    v62 = endCopy;
    v63 = 2112;
    reason = output;
    v32 = v31;
    LODWORD(v48) = 52;
    v47 = &v55;
    v33 = _os_log_send_and_compose_impl();

    if (v33)
    {
      oSLogObject2 = [NSString stringWithCString:v33 encoding:4, &v55, v48];
      free(v33);
      v47 = oSLogObject2;
      SSFileLog();
LABEL_26:
    }

    v34 = [StoreDownloadQueueResponse alloc];
    authenticatedAccountDSID = [v20 authenticatedAccountDSID];
    v16 = [(StoreDownloadQueueResponse *)v34 initWithDictionary:output userIdentifier:authenticatedAccountDSID];

    error = [(StoreDownloadQueueResponse *)v16 error];

    if (error)
    {
      v37 = [SSMachineDataRequest alloc];
      response = [v20 response];
      v39 = [v37 initWithURLResponse:response];

      if (v39)
      {
        v53 = 0;
        v40 = [(LoadDownloadQueueOperation *)self _runMachineDataOperationWithRequest:v39 syncState:&v53];
        v41 = v53;
        [(LoadDownloadQueueOperation *)self lock];
        v42 = [v41 copy];
        mdSyncState = self->_mdSyncState;
        self->_mdSyncState = v42;

        [(LoadDownloadQueueOperation *)self unlock];
        if (v41)
        {
          v40 = 1;
        }
      }

      else
      {
        v40 = 0;
      }

      startCopy = v49;
    }

    else
    {
      v40 = 0;
      startCopy = v49;
    }

LABEL_36:
    [v20 setDelegate:{0, v47}];

    v44 = v40 & v18;
    v18 = 0;
  }

  while ((v44 & 1) != 0);
  if (v21)
  {
    [(LoadDownloadQueueOperation *)self _handleResponse:v16];
  }

  else
  {
    [(LoadDownloadQueueOperation *)self setError:v17];
  }

  return v21;
}

- (BOOL)_runMachineDataOperationWithRequest:(id)request syncState:(id *)state
{
  requestCopy = request;
  _account = [(LoadDownloadQueueOperation *)self _account];
  uniqueIdentifier = [_account uniqueIdentifier];
  [requestCopy setAccountIdentifier:uniqueIdentifier];

  [requestCopy setWaitsForPurchaseOperations:1];
  v9 = [[ISMachineDataActionOperation alloc] initWithMachineDataRequest:requestCopy];

  v10 = [(LoadDownloadQueueOperation *)self runSubOperation:v9 returningError:0];
  if (state)
  {
    *state = [v9 syncState];
  }

  return v10;
}

- (id)_newURLOperationWithStartIdentifier:(id)identifier endIdentifier:(id)endIdentifier
{
  identifierCopy = identifier;
  endIdentifierCopy = endIdentifier;
  v8 = objc_alloc_init(ISStoreURLOperation);
  [v8 setDelegate:self];
  [v8 setMachineDataStyle:0];
  [v8 setNeedsAuthentication:{-[LoadDownloadQueueOperation needsAuthentication](self, "needsAuthentication")}];
  [v8 setUseUserSpecificURLBag:1];
  v9 = objc_alloc_init(DaemonProtocolDataProvider);
  [v8 setDataProvider:v9];
  _account = [(LoadDownloadQueueOperation *)self _account];
  v11 = [[SSAuthenticationContext alloc] initWithAccount:_account];
  [v8 setAuthenticationContext:v11];
  v12 = [(SSURLRequestProperties *)self->_requestProperties mutableCopy];
  [v12 setAllowedRetryCount:0];
  [v12 setCachePolicy:1];
  [_account accountScope];
  [v12 setURLBagType:SSURLBagTypeForAccountScope()];
  v50 = v12;
  if ([(LoadDownloadQueueOperation *)self reason]!= 1)
  {
    [v12 setHTTPMethod:@"POST"];
    v13 = +[ISDevice sharedInstance];
    [v13 guid];
    v15 = v14 = identifierCopy;
    [v50 setValue:v15 forRequestParameter:@"guid"];

    identifierCopy = v14;
    v12 = v50;
  }

  v16 = +[SSDevice currentDevice];
  thinnedApplicationVariantIdentifier = [v16 thinnedApplicationVariantIdentifier];

  if (thinnedApplicationVariantIdentifier)
  {
    [v12 setValue:thinnedApplicationVariantIdentifier forHTTPHeaderField:SSHTTPHeaderXAppleTADevice];
  }

  [(LoadDownloadQueueOperation *)self lock];
  mdSyncState = self->_mdSyncState;
  if (mdSyncState)
  {
    [v12 setValue:mdSyncState forHTTPHeaderField:SSHTTPHeaderXAppleMDS];
  }

  [(LoadDownloadQueueOperation *)self unlock];
  uniqueIdentifier = [_account uniqueIdentifier];

  if (uniqueIdentifier)
  {
    uniqueIdentifier2 = [_account uniqueIdentifier];
    MachineDataAddHeadersToRequestProperties();
  }

  v21 = identifierCopy;
  itemIdentifierValue = [identifierCopy itemIdentifierValue];
  itemIdentifierValue2 = [endIdentifierCopy itemIdentifierValue];

  if (itemIdentifierValue - 1 < itemIdentifierValue2)
  {
    [NSString stringWithFormat:@"%llu", itemIdentifierValue];
    v24 = v8;
    v25 = thinnedApplicationVariantIdentifier;
    v26 = _account;
    v27 = v11;
    v29 = v28 = v9;
    [v50 setValue:v29 forRequestParameter:kISLoadMoreStartIDParameter];

    v9 = v28;
    v11 = v27;
    _account = v26;
    thinnedApplicationVariantIdentifier = v25;
    v8 = v24;
    v30 = [NSString stringWithFormat:@"%llu", itemIdentifierValue2];
    [v50 setValue:v30 forRequestParameter:kISLoadMoreEndIDParameter];
  }

  if ([(LoadDownloadQueueOperation *)self _shouldSendKeyBagSync])
  {
    v48 = thinnedApplicationVariantIdentifier;
    v49 = v21;
    _account2 = [(LoadDownloadQueueOperation *)self _account];
    uniqueIdentifier3 = [_account2 uniqueIdentifier];
    v33 = sub_1000B18E8([uniqueIdentifier3 unsignedLongLongValue], 1);

    if (![(__CFData *)v33 length])
    {
LABEL_26:

      thinnedApplicationVariantIdentifier = v48;
      v21 = v49;
      goto LABEL_27;
    }

    [(__CFData *)v33 bytes];
    [(__CFData *)v33 length];
    v34 = ISCopyEncodedBase64();
    if (!v34)
    {
LABEL_25:

      goto LABEL_26;
    }

    v47 = v9;
    v35 = +[SSLogConfig sharedDaemonConfig];
    if (!v35)
    {
      v35 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v35 shouldLog];
    if ([v35 shouldLogToDisk])
    {
      shouldLog |= 2u;
    }

    oSLogObject = [v35 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      shouldLog &= 2u;
    }

    if (shouldLog)
    {
      v46 = v34;
      v38 = _account2;
      v39 = objc_opt_class();
      v45 = v39;
      requestIdentifier = [(LoadDownloadQueueOperation *)self requestIdentifier];
      v51 = 138412546;
      v52 = v39;
      _account2 = v38;
      v34 = v46;
      v53 = 2112;
      v54 = requestIdentifier;
      LODWORD(v44) = 22;
      v43 = &v51;
      v41 = _os_log_send_and_compose_impl();

      if (!v41)
      {
LABEL_24:

        [v50 setValue:v34 forRequestParameter:@"kbsync"];
        v9 = v47;
        goto LABEL_25;
      }

      oSLogObject = [NSString stringWithCString:v41 encoding:4, &v51, v44];
      free(v41);
      v43 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_24;
  }

LABEL_27:
  [v8 setRequestProperties:{v50, v43}];

  return v8;
}

- (BOOL)_shouldSendKeyBagSync
{
  accountIdentifier = [(LoadDownloadQueueOperation *)self accountIdentifier];
  if (accountIdentifier)
  {
    v3 = [SSURLBagContext contextWithBagType:0];
    v4 = +[ISURLBagCache sharedCache];
    v5 = [v4 URLBagForContext:v3];

    v6 = [v5 valueForKey:kISURLBagAuthCanPostKey];
    if (v6)
    {
      if (objc_opt_respondsToSelector())
      {
        bOOLValue = [v6 BOOLValue];
      }

      else
      {
        bOOLValue = 0;
      }
    }

    else
    {
      bOOLValue = 1;
    }
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

@end
@interface LoadDownloadQueueOperation
+ (id)newLoadAutomaticDownloadQueueOperation;
- (BOOL)_loadDownloadsFromStart:(id)a3 toEnd:(id)a4;
- (BOOL)_runMachineDataOperationWithRequest:(id)a3 syncState:(id *)a4;
- (BOOL)_shouldSendKeyBagSync;
- (BOOL)needsAuthentication;
- (LoadDownloadQueueOperation)initWithRequestProperties:(id)a3;
- (NSNumber)accountIdentifier;
- (NSOrderedSet)downloads;
- (NSString)requestIdentifier;
- (id)_account;
- (id)_newURLOperationWithStartIdentifier:(id)a3 endIdentifier:(id)a4;
- (int64_t)reason;
- (void)_handleResponse:(id)a3;
- (void)operation:(id)a3 finishedWithOutput:(id)a4;
- (void)run;
- (void)setAccountIdentifier:(id)a3;
- (void)setNeedsAuthentication:(BOOL)a3;
- (void)setReason:(int64_t)a3;
- (void)setRequestIdentifier:(id)a3;
@end

@implementation LoadDownloadQueueOperation

- (LoadDownloadQueueOperation)initWithRequestProperties:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = LoadDownloadQueueOperation;
  v5 = [(LoadDownloadQueueOperation *)&v10 init];
  if (v5)
  {
    if (v4)
    {
      v6 = [v4 copy];
    }

    else
    {
      v6 = objc_alloc_init(SSURLRequestProperties);
    }

    v7 = v6;
    objc_storeStrong(&v5->_requestProperties, v6);

    [(LoadDownloadQueueOperation *)v5 setPowerAssertionIdentifier:@"com.apple.itunesstored.download-queue"];
    v8 = [(SSURLRequestProperties *)v5->_requestProperties URLBagKey];
    [(LoadDownloadQueueOperation *)v5 setRequestIdentifier:v8];
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

- (void)setAccountIdentifier:(id)a3
{
  v5 = a3;
  [(LoadDownloadQueueOperation *)self lock];
  if (self->_accountIdentifier != v5)
  {
    objc_storeStrong(&self->_accountIdentifier, a3);
  }

  [(LoadDownloadQueueOperation *)self unlock];
}

- (void)setNeedsAuthentication:(BOOL)a3
{
  [(LoadDownloadQueueOperation *)self lock];
  self->_needsAuthentication = a3;

  [(LoadDownloadQueueOperation *)self unlock];
}

- (void)setReason:(int64_t)a3
{
  [(LoadDownloadQueueOperation *)self lock];
  self->_reason = a3;

  [(LoadDownloadQueueOperation *)self unlock];
}

- (void)setRequestIdentifier:(id)a3
{
  v6 = a3;
  [(LoadDownloadQueueOperation *)self lock];
  if (self->_requestIdentifier != v6)
  {
    v4 = [(NSString *)v6 copy];
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

    v25 = [v24 shouldLog];
    if ([v24 shouldLogToDisk])
    {
      v26 = v25 | 2;
    }

    else
    {
      v26 = v25;
    }

    v27 = [v24 OSLogObject];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
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

      v27 = [NSString stringWithCString:v31 encoding:4, &v37, v33];
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

      v15 = [v14 shouldLog];
      if ([v14 shouldLogToDisk])
      {
        v16 = v15 | 2;
      }

      else
      {
        v16 = v15;
      }

      v17 = [v14 OSLogObject];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
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

    v17 = [NSString stringWithCString:v22 encoding:4, &v37, v34];
    free(v22);
    v32 = v17;
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

- (void)operation:(id)a3 finishedWithOutput:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [StoreDownloadQueueResponse alloc];
  v9 = [v7 authenticatedAccountDSID];

  v10 = [(StoreDownloadQueueResponse *)v8 initWithDictionary:v6 userIdentifier:v9];
  v11 = [(StoreDownloadQueueResponse *)v10 keybag];
  if ([v11 length])
  {
    v12 = +[SSLogConfig sharedDaemonConfig];
    if (!v12)
    {
      v12 = +[SSLogConfig sharedConfig];
    }

    v13 = [v12 shouldLog];
    if ([v12 shouldLogToDisk])
    {
      v14 = v13 | 2;
    }

    else
    {
      v14 = v13;
    }

    v15 = [v12 OSLogObject];
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
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

        sub_1000B29AC(v11);
        goto LABEL_14;
      }

      v15 = [NSString stringWithCString:v18 encoding:4, &v20, v19];
      free(v18);
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:
}

- (id)_account
{
  v2 = [(LoadDownloadQueueOperation *)self accountIdentifier];
  if (!v2 || (+[SSAccountStore defaultStore](SSAccountStore, "defaultStore"), v3 = objc_claimAutoreleasedReturnValue(), [v3 accountWithUniqueIdentifier:v2], v4 = objc_claimAutoreleasedReturnValue(), v3, !v4))
  {
    v5 = +[SSAccountStore defaultStore];
    v4 = [v5 activeAccount];
  }

  return v4;
}

- (void)_handleResponse:(id)a3
{
  v9 = a3;
  v4 = [v9 rangesToLoad];
  if ([v4 count])
  {
    [(NSMutableArray *)self->_rangesToLoad addObjectsFromArray:v4];
  }

  v5 = [v9 downloads];

  if (v5)
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

    [(NSMutableOrderedSet *)downloads unionOrderedSet:v5];
    [(LoadDownloadQueueOperation *)self unlock];
  }
}

- (BOOL)_loadDownloadsFromStart:(id)a3 toEnd:(id)a4
{
  v6 = a3;
  v52 = a4;
  v7 = +[SSLogConfig sharedDaemonConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  v8 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v8 |= 2u;
  }

  v9 = [v7 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v8;
  }

  else
  {
    v10 = v8 & 2;
  }

  if (v10)
  {
    v11 = objc_opt_class();
    v12 = v11;
    v13 = [(LoadDownloadQueueOperation *)self requestIdentifier];
    v55 = 138413314;
    v56 = v11;
    v57 = 2112;
    v58 = v13;
    v59 = 2112;
    v60 = v6;
    v61 = 2112;
    v62 = v52;
    v63 = 2048;
    v64 = [(LoadDownloadQueueOperation *)self reason];
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
  v49 = v6;
  do
  {
    v19 = v17;
    v20 = [(LoadDownloadQueueOperation *)self _newURLOperationWithStartIdentifier:v6 endIdentifier:v52, v46];
    v54 = v17;
    v21 = [(LoadDownloadQueueOperation *)self runSubOperation:v20 returningError:&v54];
    v17 = v54;

    if (!v21)
    {
      v40 = 0;
      goto LABEL_36;
    }

    v50 = v16;
    v22 = [v20 dataProvider];
    v23 = [v22 output];

    v24 = [(LoadDownloadQueueOperation *)self requestIdentifier];
    v25 = v24;
    v26 = @"unknown";
    if (v24)
    {
      v26 = v24;
    }

    v51 = v26;

    v27 = +[SSLogConfig sharedWriteToDiskConfig];
    if (!v27)
    {
      v27 = +[SSLogConfig sharedConfig];
    }

    v28 = [v27 shouldLog];
    if ([v27 shouldLogToDisk])
    {
      v29 = v28 | 2;
    }

    else
    {
      v29 = v28;
    }

    v30 = [v27 OSLogObject];
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
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
    v60 = v6;
    v61 = 2112;
    v62 = v52;
    v63 = 2112;
    v64 = v23;
    v32 = v31;
    LODWORD(v48) = 52;
    v47 = &v55;
    v33 = _os_log_send_and_compose_impl();

    if (v33)
    {
      v30 = [NSString stringWithCString:v33 encoding:4, &v55, v48];
      free(v33);
      v47 = v30;
      SSFileLog();
LABEL_26:
    }

    v34 = [StoreDownloadQueueResponse alloc];
    v35 = [v20 authenticatedAccountDSID];
    v16 = [(StoreDownloadQueueResponse *)v34 initWithDictionary:v23 userIdentifier:v35];

    v36 = [(StoreDownloadQueueResponse *)v16 error];

    if (v36)
    {
      v37 = [SSMachineDataRequest alloc];
      v38 = [v20 response];
      v39 = [v37 initWithURLResponse:v38];

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

      v6 = v49;
    }

    else
    {
      v40 = 0;
      v6 = v49;
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

- (BOOL)_runMachineDataOperationWithRequest:(id)a3 syncState:(id *)a4
{
  v6 = a3;
  v7 = [(LoadDownloadQueueOperation *)self _account];
  v8 = [v7 uniqueIdentifier];
  [v6 setAccountIdentifier:v8];

  [v6 setWaitsForPurchaseOperations:1];
  v9 = [[ISMachineDataActionOperation alloc] initWithMachineDataRequest:v6];

  v10 = [(LoadDownloadQueueOperation *)self runSubOperation:v9 returningError:0];
  if (a4)
  {
    *a4 = [v9 syncState];
  }

  return v10;
}

- (id)_newURLOperationWithStartIdentifier:(id)a3 endIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(ISStoreURLOperation);
  [v8 setDelegate:self];
  [v8 setMachineDataStyle:0];
  [v8 setNeedsAuthentication:{-[LoadDownloadQueueOperation needsAuthentication](self, "needsAuthentication")}];
  [v8 setUseUserSpecificURLBag:1];
  v9 = objc_alloc_init(DaemonProtocolDataProvider);
  [v8 setDataProvider:v9];
  v10 = [(LoadDownloadQueueOperation *)self _account];
  v11 = [[SSAuthenticationContext alloc] initWithAccount:v10];
  [v8 setAuthenticationContext:v11];
  v12 = [(SSURLRequestProperties *)self->_requestProperties mutableCopy];
  [v12 setAllowedRetryCount:0];
  [v12 setCachePolicy:1];
  [v10 accountScope];
  [v12 setURLBagType:SSURLBagTypeForAccountScope()];
  v50 = v12;
  if ([(LoadDownloadQueueOperation *)self reason]!= 1)
  {
    [v12 setHTTPMethod:@"POST"];
    v13 = +[ISDevice sharedInstance];
    [v13 guid];
    v15 = v14 = v6;
    [v50 setValue:v15 forRequestParameter:@"guid"];

    v6 = v14;
    v12 = v50;
  }

  v16 = +[SSDevice currentDevice];
  v17 = [v16 thinnedApplicationVariantIdentifier];

  if (v17)
  {
    [v12 setValue:v17 forHTTPHeaderField:SSHTTPHeaderXAppleTADevice];
  }

  [(LoadDownloadQueueOperation *)self lock];
  mdSyncState = self->_mdSyncState;
  if (mdSyncState)
  {
    [v12 setValue:mdSyncState forHTTPHeaderField:SSHTTPHeaderXAppleMDS];
  }

  [(LoadDownloadQueueOperation *)self unlock];
  v19 = [v10 uniqueIdentifier];

  if (v19)
  {
    v20 = [v10 uniqueIdentifier];
    MachineDataAddHeadersToRequestProperties();
  }

  v21 = v6;
  v22 = [v6 itemIdentifierValue];
  v23 = [v7 itemIdentifierValue];

  if (v22 - 1 < v23)
  {
    [NSString stringWithFormat:@"%llu", v22];
    v24 = v8;
    v25 = v17;
    v26 = v10;
    v27 = v11;
    v29 = v28 = v9;
    [v50 setValue:v29 forRequestParameter:kISLoadMoreStartIDParameter];

    v9 = v28;
    v11 = v27;
    v10 = v26;
    v17 = v25;
    v8 = v24;
    v30 = [NSString stringWithFormat:@"%llu", v23];
    [v50 setValue:v30 forRequestParameter:kISLoadMoreEndIDParameter];
  }

  if ([(LoadDownloadQueueOperation *)self _shouldSendKeyBagSync])
  {
    v48 = v17;
    v49 = v21;
    v31 = [(LoadDownloadQueueOperation *)self _account];
    v32 = [v31 uniqueIdentifier];
    v33 = sub_1000B18E8([v32 unsignedLongLongValue], 1);

    if (![(__CFData *)v33 length])
    {
LABEL_26:

      v17 = v48;
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

    v36 = [v35 shouldLog];
    if ([v35 shouldLogToDisk])
    {
      v36 |= 2u;
    }

    v37 = [v35 OSLogObject];
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v36 &= 2u;
    }

    if (v36)
    {
      v46 = v34;
      v38 = v31;
      v39 = objc_opt_class();
      v45 = v39;
      v40 = [(LoadDownloadQueueOperation *)self requestIdentifier];
      v51 = 138412546;
      v52 = v39;
      v31 = v38;
      v34 = v46;
      v53 = 2112;
      v54 = v40;
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

      v37 = [NSString stringWithCString:v41 encoding:4, &v51, v44];
      free(v41);
      v43 = v37;
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
  v2 = [(LoadDownloadQueueOperation *)self accountIdentifier];
  if (v2)
  {
    v3 = [SSURLBagContext contextWithBagType:0];
    v4 = +[ISURLBagCache sharedCache];
    v5 = [v4 URLBagForContext:v3];

    v6 = [v5 valueForKey:kISURLBagAuthCanPostKey];
    if (v6)
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [v6 BOOLValue];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end
@interface RestoreDownloadItemsOperation
- (BOOL)_runWithOptions:(id)a3 error:(id *)a4;
- (BOOL)shouldShowTermsAndConditionsDialog;
- (NSArray)responses;
- (RestoreDownloadItemsOperation)initWithDownloadItems:(id)a3 account:(id)a4;
- (id)_newResponseWithItems:(id)a3 error:(id)a4;
- (id)_plistDataWithItems:(id)a3 options:(id)a4 error:(id *)a5;
- (id)_runWithBodyData:(id)a3 contentEncoding:(id)a4 options:(id)a5 error:(id *)a6;
- (id)_runWithItems:(id)a3 options:(id)a4;
- (void)_addResponse:(id)a3;
- (void)_run;
- (void)_showDialogsForResponse:(id)a3;
- (void)setShouldShowTermsAndConditionsDialog:(BOOL)a3;
@end

@implementation RestoreDownloadItemsOperation

- (RestoreDownloadItemsOperation)initWithDownloadItems:(id)a3 account:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = RestoreDownloadItemsOperation;
  v8 = [(RestoreDownloadItemsOperation *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_account, a4);
    v10 = [v6 copy];
    downloadItems = v9->_downloadItems;
    v9->_downloadItems = v10;

    v12 = objc_alloc_init(NSMutableArray);
    responses = v9->_responses;
    v9->_responses = v12;
  }

  return v9;
}

- (NSArray)responses
{
  [(RestoreDownloadItemsOperation *)self lock];
  v3 = [(NSMutableArray *)self->_responses copy];
  [(RestoreDownloadItemsOperation *)self unlock];

  return v3;
}

- (void)setShouldShowTermsAndConditionsDialog:(BOOL)a3
{
  [(RestoreDownloadItemsOperation *)self lock];
  self->_shouldShowTermsAndConditionsDialog = a3;

  [(RestoreDownloadItemsOperation *)self unlock];
}

- (BOOL)shouldShowTermsAndConditionsDialog
{
  [(RestoreDownloadItemsOperation *)self lock];
  shouldShowTermsAndConditionsDialog = self->_shouldShowTermsAndConditionsDialog;
  [(RestoreDownloadItemsOperation *)self unlock];
  return shouldShowTermsAndConditionsDialog;
}

- (void)_addResponse:(id)a3
{
  v8 = a3;
  [(RestoreDownloadItemsOperation *)self lock];
  v4 = OBJC_IVAR___ISOperation__delegate;
  WeakRetained = objc_loadWeakRetained(&self->ISOperation_opaque[OBJC_IVAR___ISOperation__delegate]);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->ISOperation_opaque[v4]);
  }

  else
  {
    v7 = 0;
  }

  [(NSMutableArray *)self->_responses addObject:v8];
  [(RestoreDownloadItemsOperation *)self unlock];
  if (v7)
  {
    [v7 restoreDownloadItemsOperation:self didReceiveResponse:v8];
  }
}

- (id)_newResponseWithItems:(id)a3 error:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(RestoreDownloadItemsResponse);
  v9 = [StoreDownloadQueueResponse alloc];
  v10 = [(SSAccount *)self->_account uniqueIdentifier];
  v11 = [(StoreDownloadQueueResponse *)v9 initWithError:v6 userIdentifier:v10];

  [(RestoreDownloadItemsResponse *)v8 setRequestItems:v7];
  [(RestoreDownloadItemsResponse *)v8 setServerResponse:v11];

  return v8;
}

- (id)_plistDataWithItems:(id)a3 options:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = objc_alloc_init(NSMutableDictionary);
  v9 = +[ISDevice sharedInstance];
  v10 = [v9 deviceName];
  if (v10)
  {
    [v8 setObject:v10 forKey:@"device-name"];
  }

  v11 = [v9 guid];

  if (v11)
  {
    [v8 setObject:v11 forKey:@"guid"];
  }

  v12 = [v9 serialNumber];

  if (v12)
  {
    [v8 setObject:v12 forKey:@"serial-number"];
  }

  v13 = [(SSAccount *)self->_account uniqueIdentifier];
  v14 = sub_1000B18E8([v13 unsignedLongLongValue], 1);

  if ([(__CFData *)v14 length])
  {
    [v8 setObject:v14 forKey:@"kbsync"];
  }

  if (v7)
  {
    v24 = a5;
    v15 = objc_alloc_init(NSMutableArray);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v25 = v7;
    v16 = v7;
    v17 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v27;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v26 + 1) + 8 * i) copyRestoreDictionary];
          if (v21)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v18);
    }

    [v8 setObject:v15 forKey:@"items"];
    a5 = v24;
    v7 = v25;
  }

  v22 = [NSPropertyListSerialization dataWithPropertyList:v8 format:100 options:0 error:a5, v24];

  return v22;
}

- (void)_run
{
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
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
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v5;
  }

  else
  {
    v7 = v5 & 2;
  }

  if (v7)
  {
    v8 = objc_opt_class();
    downloadItems = self->_downloadItems;
    v10 = v8;
    v11 = [(NSArray *)downloadItems componentsJoinedByString:@", "];
    v12 = [(SSAccount *)self->_account uniqueIdentifier];
    [(SSAccount *)self->_account storeFrontIdentifier];
    v48 = 138413058;
    v49 = v8;
    v50 = 2114;
    v51 = v11;
    v52 = 2112;
    v53 = v12;
    v55 = v54 = 2112;
    LODWORD(v43) = 42;
    v13 = _os_log_send_and_compose_impl();

    if (!v13)
    {
      goto LABEL_13;
    }

    v6 = [NSString stringWithCString:v13 encoding:4, &v48, v43];
    free(v13);
    SSFileLog();
  }

LABEL_13:
  v14 = objc_opt_class();
  v15 = [(NSArray *)self->_downloadItems componentsJoinedByString:@", "];
  v45 = [(SSAccount *)self->_account uniqueIdentifier];
  SSDebugLog();

  v16 = [(SSAccount *)self->_account accountName:v14];
  v17 = [v16 length];

  if (v17)
  {
    [(SSAccount *)self->_account accountScope];
    v18 = [SSURLBagContext contextWithBagType:SSURLBagTypeForAccountScope()];
    v19 = [(SSAccount *)self->_account uniqueIdentifier];
    [v18 setUserIdentifier:v19];

    v47 = 0;
    v20 = [(RestoreDownloadItemsOperation *)self loadURLBagWithContext:v18 returningError:&v47];
    v21 = v47;
    if ((v20 & 1) == 0)
    {
      v23 = [(RestoreDownloadItemsOperation *)self _newResponseWithItems:self->_downloadItems error:v21];
      [(RestoreDownloadItemsOperation *)self _addResponse:v23];
      v26 = 0;
LABEL_44:

      goto LABEL_45;
    }

    v22 = +[ISURLBagCache sharedCache];
    v23 = [v22 URLBagForContext:v18];

    v24 = [v23 valueForKey:@"p2-content-restore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [v24 objectForKey:@"url"];

      if (v25)
      {
        v46 = v21;
        v26 = [(RestoreDownloadItemsOperation *)self _runWithOptions:v24 error:&v46];
        v27 = v46;
LABEL_43:

        v21 = v27;
        goto LABEL_44;
      }
    }

    v36 = +[SSLogConfig sharedDaemonConfig];
    if (!v36)
    {
      v36 = +[SSLogConfig sharedConfig];
    }

    v37 = [v36 shouldLog];
    if ([v36 shouldLogToDisk])
    {
      v38 = v37 | 2;
    }

    else
    {
      v38 = v37;
    }

    v39 = [v36 OSLogObject];
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v38 &= 2u;
    }

    if (v38)
    {
      v40 = objc_opt_class();
      v48 = 138412290;
      v49 = v40;
      v41 = v40;
      LODWORD(v44) = 12;
      v42 = _os_log_send_and_compose_impl();

      if (!v42)
      {
LABEL_42:

        v27 = SSError();

        v21 = [(RestoreDownloadItemsOperation *)self _newResponseWithItems:self->_downloadItems error:v27];
        [(RestoreDownloadItemsOperation *)self _addResponse:v21];
        v26 = 1;
        goto LABEL_43;
      }

      v39 = [NSString stringWithCString:v42 encoding:4, &v48, v44];
      free(v42);
      SSFileLog();
    }

    goto LABEL_42;
  }

  v28 = +[SSLogConfig sharedDaemonConfig];
  if (!v28)
  {
    v28 = +[SSLogConfig sharedConfig];
  }

  v29 = [v28 shouldLog];
  if ([v28 shouldLogToDisk])
  {
    v30 = v29 | 2;
  }

  else
  {
    v30 = v29;
  }

  v31 = [v28 OSLogObject];
  if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v30 &= 2u;
  }

  if (!v30)
  {
    goto LABEL_28;
  }

  v32 = objc_opt_class();
  account = self->_account;
  v48 = 138412546;
  v49 = v32;
  v50 = 2112;
  v51 = account;
  v34 = v32;
  LODWORD(v44) = 22;
  v35 = _os_log_send_and_compose_impl();

  if (v35)
  {
    v31 = [NSString stringWithCString:v35 encoding:4, &v48, v44];
    free(v35);
    SSFileLog();
LABEL_28:
  }

  v21 = SSError();
  v18 = [(RestoreDownloadItemsOperation *)self _newResponseWithItems:self->_downloadItems error:v21];
  [(RestoreDownloadItemsOperation *)self _addResponse:v18];
  v26 = 0;
LABEL_45:

  [(RestoreDownloadItemsOperation *)self setError:v21];
  [(RestoreDownloadItemsOperation *)self setSuccess:v26];
}

- (id)_runWithBodyData:(id)a3 contentEncoding:(id)a4 options:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [a5 objectForKey:@"url"];
  v50 = v11;
  if (!v12 || (v13 = [[NSURL alloc] initWithString:v12]) == 0)
  {
    v32 = +[SSLogConfig sharedDaemonConfig];
    if (!v32)
    {
      v32 = +[SSLogConfig sharedConfig];
    }

    v33 = [v32 shouldLog];
    if ([v32 shouldLogToDisk])
    {
      v34 = v33 | 2;
    }

    else
    {
      v34 = v33;
    }

    v35 = [v32 OSLogObject];
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v34 &= 2u;
    }

    if (v34)
    {
      v52 = 138412546;
      v53 = objc_opt_class();
      v54 = 2112;
      v55 = v12;
      v36 = v53;
      LODWORD(v41) = 22;
      v37 = _os_log_send_and_compose_impl();

      if (!v37)
      {
LABEL_28:

        v24 = SSError();
        v14 = 0;
        v27 = 0;
        goto LABEL_31;
      }

      v35 = [NSString stringWithCString:v37 encoding:4, &v52, v41];
      free(v37);
      SSFileLog();
    }

    goto LABEL_28;
  }

  v14 = v13;
  v43 = self;
  v48 = a6;
  v15 = objc_alloc_init(ISStoreURLOperation);
  [v15 setShouldSendXTokenHeader:1];
  [v15 setUseUserSpecificURLBag:1];
  v16 = objc_alloc_init(DaemonProtocolDataProvider);
  [(DaemonProtocolDataProvider *)v16 setShouldProcessDialogs:0];
  v47 = v16;
  [v15 setDataProvider:v16];
  v17 = [[SSMutableURLRequestProperties alloc] initWithURL:v14];
  v18 = objc_alloc_init(NSMutableDictionary);
  v19 = +[ISDevice sharedInstance];
  v20 = [v19 serialNumber];

  if (v20)
  {
    [v18 setObject:v20 forKey:@"serial-number"];
  }

  [v17 setRequestParameters:v18];
  v21 = +[SSDevice currentDevice];
  v22 = [v21 thinnedApplicationVariantIdentifier];

  if (v22)
  {
    [v17 setValue:v22 forHTTPHeaderField:SSHTTPHeaderXAppleTADevice];
  }

  v44 = v22;
  v45 = v20;
  v46 = v18;
  [v17 setCachePolicy:1];
  v49 = v10;
  [v17 setHTTPBody:v10];
  [v17 setHTTPMethod:@"POST"];
  if (v11)
  {
    [v17 setValue:v11 forHTTPHeaderField:@"Content-Encoding"];
  }

  [v17 setValue:@"application/x-apple-plist" forHTTPHeaderField:@"Content-Type"];
  [v15 setRequestProperties:v17];
  v23 = [[SSMutableAuthenticationContext alloc] initWithAccount:v43->_account];
  [v23 setAccountNameEditable:1];
  [v23 setCanCreateNewAccount:0];
  [v23 setPromptStyle:1001];
  [v15 setAuthenticationContext:v23];
  v51 = 0;
  v42 = [(RestoreDownloadItemsOperation *)v43 runSubOperation:v15 returningError:&v51];
  v24 = v51;
  v25 = [v15 dataProvider];
  v26 = [v25 output];

  objc_opt_class();
  v27 = 0;
  if (objc_opt_isKindOfClass())
  {
    v28 = [StoreDownloadQueueResponse alloc];
    v29 = [(SSAccount *)v43->_account uniqueIdentifier];
    v27 = [(StoreDownloadQueueResponse *)v28 initWithDictionary:v26 userIdentifier:v29];

    [(RestoreDownloadItemsOperation *)v43 _showDialogsForResponse:v26];
    v30 = v27 ? v42 : 1;
    if ((v30 & 1) == 0)
    {
      v31 = [(StoreDownloadQueueResponse *)v27 error];

      if (!v31)
      {
        if (v24)
        {
          [(StoreDownloadQueueResponse *)v27 setError:v24];
          [(StoreDownloadQueueResponse *)v27 setShouldCancelPurchaseBatch:ISErrorIsEqual()];
        }

        else
        {
          v38 = SSError();
          [(StoreDownloadQueueResponse *)v27 setError:v38];
        }
      }
    }
  }

  a6 = v48;
  v10 = v49;
LABEL_31:
  if (a6)
  {
    v39 = v24;
    *a6 = v24;
  }

  return v27;
}

- (id)_runWithItems:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v58 = 0;
  v8 = [(RestoreDownloadItemsOperation *)self _plistDataWithItems:v6 options:v7 error:&v58];
  v9 = v58;
  if (!v8)
  {
    v29 = +[SSLogConfig sharedDaemonConfig];
    if (!v29)
    {
      v29 = +[SSLogConfig sharedConfig];
    }

    v30 = [v29 shouldLog];
    if ([v29 shouldLogToDisk])
    {
      v31 = v30 | 2;
    }

    else
    {
      v31 = v30;
    }

    v32 = [v29 OSLogObject];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = v31;
    }

    else
    {
      v33 = v31 & 2;
    }

    if (v33)
    {
      v34 = objc_opt_class();
      v59 = 138412802;
      v60 = v34;
      v61 = 2114;
      v62 = v6;
      v63 = 2114;
      v64 = v9;
      v35 = v34;
      LODWORD(v49) = 32;
      v36 = _os_log_send_and_compose_impl();

      if (!v36)
      {
LABEL_36:

        v12 = 0;
        goto LABEL_38;
      }

      v32 = [NSString stringWithCString:v36 encoding:4, &v59, v49];
      free(v36);
      SSFileLog();
    }

    goto LABEL_36;
  }

  v10 = @"gzip";
  v11 = [v7 objectForKey:@"gzip"];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ![v11 BOOLValue] || ((v12 = ISCopyGzippedDataForData()) != 0 ? (v13 = @"gzip") : (v13 = 0), v14 = v13, !v12))
  {
    v12 = v8;
    v10 = 0;
  }

  v57 = v9;
  v15 = [(RestoreDownloadItemsOperation *)self _runWithBodyData:v12 contentEncoding:v10 options:v7 error:&v57];
  v16 = v57;

  if (v15)
  {
    v17 = [(StoreDownloadQueueResponse *)v15 error];

    v18 = +[SSLogConfig sharedDaemonConfig];
    v19 = v18;
    v55 = v8;
    v56 = v6;
    if (v17)
    {
      if (!v18)
      {
        v19 = +[SSLogConfig sharedConfig];
      }

      v53 = v12;
      v20 = [v19 shouldLog];
      if ([v19 shouldLogToDisk])
      {
        v21 = v20 | 2;
      }

      else
      {
        v21 = v20;
      }

      v22 = [v19 OSLogObject];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = v21;
      }

      else
      {
        v23 = v21 & 2;
      }

      if (v23)
      {
        v24 = objc_opt_class();
        v51 = v24;
        v25 = [v6 componentsJoinedByString:{@", "}];
        v26 = [(StoreDownloadQueueResponse *)v15 error];
        v59 = 138412802;
        v60 = v24;
        v61 = 2114;
        v62 = v25;
        v63 = 2114;
        v64 = v26;
        LODWORD(v49) = 32;
        v27 = _os_log_send_and_compose_impl();

        v6 = v56;
        if (!v27)
        {
LABEL_23:

          objc_opt_class();
          v28 = [v6 componentsJoinedByString:{@", "}];
          v50 = [(StoreDownloadQueueResponse *)v15 error];
          SSDebugLog();

          v8 = v55;
          v6 = v56;
          v12 = v53;
          goto LABEL_41;
        }

        v22 = [NSString stringWithCString:v27 encoding:4, &v59, v49];
        free(v27);
        SSFileLog();
      }

      goto LABEL_23;
    }

    if (!v18)
    {
      v19 = +[SSLogConfig sharedConfig];
    }

    v40 = [v19 shouldLog];
    if ([v19 shouldLogToDisk])
    {
      v40 |= 2u;
    }

    v41 = [v19 OSLogObject];
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = v40;
    }

    else
    {
      v42 = v40 & 2;
    }

    if (v42)
    {
      v43 = objc_opt_class();
      v54 = v43;
      v52 = [(StoreDownloadQueueResponse *)v15 downloads];
      v44 = v12;
      v45 = [v52 count];
      v46 = [v56 componentsJoinedByString:{@", "}];
      v59 = 138412802;
      v60 = v43;
      v61 = 2048;
      v62 = v45;
      v12 = v44;
      v63 = 2114;
      v64 = v46;
      LODWORD(v49) = 32;
      v47 = _os_log_send_and_compose_impl();

      if (!v47)
      {
LABEL_55:

        v48 = [(StoreDownloadQueueResponse *)v15 keybag];
        if ([v48 length])
        {
          sub_1000B29AC(v48);
        }

        v8 = v55;
        v6 = v56;
        goto LABEL_41;
      }

      v41 = [NSString stringWithCString:v47 encoding:4, &v59, v49];
      free(v47);
      SSFileLog();
    }

    goto LABEL_55;
  }

  v9 = v16;
LABEL_38:
  if (!v9)
  {
    v9 = SSError();
  }

  v37 = [StoreDownloadQueueResponse alloc];
  v38 = [(SSAccount *)self->_account uniqueIdentifier];
  v15 = [(StoreDownloadQueueResponse *)v37 initWithError:v9 userIdentifier:v38];

  [(StoreDownloadQueueResponse *)v15 setShouldCancelPurchaseBatch:ISErrorIsEqual()];
  v16 = v9;
LABEL_41:

  return v15;
}

- (BOOL)_runWithOptions:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = [v4 objectForKey:@"allowed-kinds"];

  if (v5)
  {
    v6 = [NSMutableSet alloc];
    v7 = [v4 objectForKey:@"allowed-kinds"];
    v106 = [v6 initWithArray:v7];
  }

  else
  {
    v106 = 0;
  }

  v8 = CFPreferencesCopyAppValue(@"ExtraRestoreKinds", kSSUserDefaultsIdentifier);
  objc_opt_class();
  v105 = v8;
  v117 = v4;
  if (objc_opt_isKindOfClass())
  {
    v9 = +[SSLogConfig sharedDaemonConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    v10 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = v10 | 2;
    }

    else
    {
      v11 = v10;
    }

    v12 = [v9 OSLogObject];
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v135 = 138412546;
      v136 = objc_opt_class();
      v137 = 2112;
      v138 = v105;
      v13 = v136;
      LODWORD(v102) = 22;
      v100 = &v135;
      v14 = _os_log_send_and_compose_impl();

      if (!v14)
      {
LABEL_16:

        [v106 addObjectsFromArray:v105];
        v4 = v117;
        goto LABEL_17;
      }

      v12 = [NSString stringWithCString:v14 encoding:4, &v135, v102];
      free(v14);
      v100 = v12;
      SSFileLog();
    }

    goto LABEL_16;
  }

LABEL_17:
  v15 = [v4 objectForKey:{@"allowed-match-status", v100}];

  v16 = [NSMutableSet alloc];
  if (v15)
  {
    v17 = [v4 objectForKey:@"allowed-match-status"];
    v18 = [v16 initWithArray:v17];
  }

  else
  {
    v17 = [NSNumber numberWithInteger:0];
    v18 = [v16 initWithObjects:{v17, 0}];
  }

  v115 = v18;
  v19 = v106;

  v20 = objc_alloc_init(NSMutableDictionary);
  v109 = objc_alloc_init(NSMutableArray);
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  obj = self->_downloadItems;
  v21 = [(NSArray *)obj countByEnumeratingWithState:&v131 objects:v144 count:16];
  v111 = v20;
  if (v21)
  {
    v22 = v21;
    v23 = *v132;
    v121 = *v132;
    do
    {
      v24 = 0;
      v123 = v22;
      do
      {
        if (*v132 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v131 + 1) + 8 * v24);
        v26 = [v25 downloadKind];
        v27 = [v25 cloudMatchStatus];
        if (v19 && ([v19 containsObject:v26] & 1) == 0)
        {
          v30 = +[SSLogConfig sharedDaemonConfig];
          if (!v30)
          {
            v30 = +[SSLogConfig sharedConfig];
          }

          v31 = [v30 shouldLog];
          if ([v30 shouldLogToDisk])
          {
            v32 = v31 | 2;
          }

          else
          {
            v32 = v31;
          }

          v33 = [v30 OSLogObject];
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = v32;
          }

          else
          {
            v34 = v32 & 2;
          }

          if (v34)
          {
            v35 = objc_opt_class();
            v36 = v35;
            v37 = [v25 storeItemID];
            v135 = 138412802;
            v136 = v35;
            v20 = v111;
            v137 = 2112;
            v138 = v26;
            v139 = 2112;
            v140 = v37;
            LODWORD(v102) = 32;
            v101 = &v135;
            v38 = _os_log_send_and_compose_impl();

            goto LABEL_53;
          }

LABEL_55:
          v23 = v121;
LABEL_56:

LABEL_57:
          [v109 addObject:v25];
          v22 = v123;
          goto LABEL_58;
        }

        if (v115 && v27 && ([v115 containsObject:v27] & 1) == 0)
        {
          v30 = +[SSLogConfig sharedDaemonConfig];
          if (!v30)
          {
            v30 = +[SSLogConfig sharedConfig];
          }

          v39 = [v30 shouldLog];
          if ([v30 shouldLogToDisk])
          {
            v39 |= 2u;
          }

          v33 = [v30 OSLogObject];
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v40 = v39;
          }

          else
          {
            v40 = v39 & 2;
          }

          if (!v40)
          {
            goto LABEL_55;
          }

          v41 = objc_opt_class();
          v36 = v41;
          v42 = [v25 storeItemID];
          v135 = 138412802;
          v136 = v41;
          v137 = 2112;
          v138 = v27;
          v139 = 2112;
          v140 = v42;
          LODWORD(v102) = 32;
          v101 = &v135;
          v38 = _os_log_send_and_compose_impl();

          v20 = v111;
LABEL_53:

          v19 = v106;
          v23 = v121;
          if (v38)
          {
            v33 = [NSString stringWithCString:v38 encoding:4, &v135, v102];
            free(v38);
            v101 = v33;
            SSFileLog();
            goto LABEL_56;
          }

          goto LABEL_57;
        }

        v28 = [v20 objectForKey:v26];
        if (v28)
        {
          v29 = v28;
          [v28 addObject:v25];
        }

        else
        {
          v29 = [[NSMutableArray alloc] initWithObjects:{v25, 0}];
          [v20 setObject:v29 forKey:v26];
        }

LABEL_58:
        v24 = v24 + 1;
      }

      while (v22 != v24);
      v22 = [(NSArray *)obj countByEnumeratingWithState:&v131 objects:v144 count:16];
    }

    while (v22);
  }

  if ([v109 count])
  {
    v43 = SSError();
    v44 = [(RestoreDownloadItemsOperation *)self _newResponseWithItems:v109 error:v43];

    [(RestoreDownloadItemsOperation *)self _addResponse:v44];
  }

  v116 = objc_alloc_init(NSMutableArray);
  v45 = [v20 allKeys];
  v46 = [v45 sortedArrayUsingComparator:&stru_10032A0E0];

  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  v110 = v46;
  v47 = [v110 countByEnumeratingWithState:&v127 objects:v143 count:16];
  if (!v47)
  {
    v49 = 0;
    v124 = 1;
    v51 = v117;
    v52 = &CFDictionaryGetValue_ptr;
    goto LABEL_124;
  }

  v48 = v47;
  v49 = 0;
  v50 = *v128;
  v124 = 1;
  v51 = v117;
  v52 = &CFDictionaryGetValue_ptr;
  v107 = *v128;
  do
  {
    v53 = 0;
    v108 = v48;
    do
    {
      if (*v128 != v50)
      {
        objc_enumerationMutation(v110);
      }

      v54 = *(*(&v127 + 1) + 8 * v53);
      v55 = objc_autoreleasePoolPush();
      v56 = [v20 objectForKey:v54];
      if (v49)
      {
        [v116 addObjectsFromArray:v56];
        goto LABEL_120;
      }

      v118 = v54;
      v57 = objc_alloc_init(NSMutableArray);
      v119 = v56;
      v58 = [v56 count];
      v59 = [v51 objectForKey:@"max-item-count"];
      v120 = v58;
      if (objc_opt_respondsToSelector())
      {
        v120 = [v59 intValue];
      }

      v112 = v59;
      v60 = [v52[412] sharedDaemonConfig];
      if (!v60)
      {
        v60 = [v52[412] sharedConfig];
      }

      v113 = v55;
      v114 = v53;
      v61 = [v60 shouldLog];
      if ([v60 shouldLogToDisk])
      {
        v62 = v61 | 2;
      }

      else
      {
        v62 = v61;
      }

      v63 = [v60 OSLogObject];
      if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
      {
        v64 = v62;
      }

      else
      {
        v64 = v62 & 2;
      }

      if (v64)
      {
        v65 = objc_opt_class();
        v135 = 138413058;
        v136 = v65;
        v137 = 2048;
        v138 = v58;
        v139 = 2112;
        v140 = v118;
        v141 = 2048;
        v66 = v120;
        v142 = v120;
        v67 = v65;
        LODWORD(v102) = 42;
        v101 = &v135;
        v68 = _os_log_send_and_compose_impl();

        v51 = v117;
        if (!v68)
        {
          goto LABEL_84;
        }

        v63 = [NSString stringWithCString:v68 encoding:4, &v135, v102];
        free(v68);
        v101 = v63;
        SSFileLog();
      }

      else
      {
        v51 = v117;
        v66 = v120;
      }

LABEL_84:
      v49 = 0;
      if (v58 >= 1)
      {
        v69 = 0;
        v52 = &CFDictionaryGetValue_ptr;
        v70 = v56;
        while (1)
        {
          v71 = [v70 objectAtIndex:{v69, v101}];
          [v57 addObject:v71];
          if ([v57 count] == v66 || v69 == v58 - 1)
          {
            break;
          }

LABEL_116:

          if (++v69 >= v58)
          {
            goto LABEL_119;
          }
        }

        v72 = objc_alloc_init(RestoreDownloadItemsResponse);
        [(RestoreDownloadItemsResponse *)v72 setRequestItems:v57];
        if (![v57 count])
        {
LABEL_112:
          [(RestoreDownloadItemsOperation *)self _addResponse:v72];
          if (v49 && v69 + 1 < v58)
          {
            v87 = [v70 subarrayWithRange:?];
            [v116 addObjectsFromArray:v87];

            v69 = v58;
          }

          goto LABEL_116;
        }

        v122 = v49;
        v73 = [v52[412] sharedDaemonConfig];
        if (!v73)
        {
          v73 = [v52[412] sharedConfig];
        }

        v74 = [v73 shouldLog];
        if ([v73 shouldLogToDisk])
        {
          v75 = v74 | 2;
        }

        else
        {
          v75 = v74;
        }

        v76 = [v73 OSLogObject];
        if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
        {
          v77 = v75;
        }

        else
        {
          v77 = v75 & 2;
        }

        if (v77)
        {
          v78 = objc_opt_class();
          v79 = v78;
          v80 = [v57 count];
          v135 = 138412802;
          v136 = v78;
          v137 = 2048;
          v138 = v80;
          v139 = 2112;
          v140 = v118;
          LODWORD(v102) = 32;
          v101 = &v135;
          v81 = _os_log_send_and_compose_impl();

          v51 = v117;
          v52 = &CFDictionaryGetValue_ptr;
          if (!v81)
          {
LABEL_102:

            v82 = [(RestoreDownloadItemsOperation *)self _runWithItems:v57 options:v51];
            if ([v82 shouldCancelPurchaseBatch])
            {
              v83 = [v82 error];
              v84 = v83;
              if (v83)
              {
                v85 = v83;
              }

              else
              {
                v85 = SSError();
              }

              v49 = v85;
            }

            else
            {
              v49 = v122;
            }

            v70 = v119;
            if (v124)
            {
              v86 = [v82 error];
              v124 = v86 == 0;
            }

            else
            {
              v124 = 0;
            }

            [(RestoreDownloadItemsResponse *)v72 setServerResponse:v82, v101];
            [v57 removeAllObjects];

            v66 = v120;
            goto LABEL_112;
          }

          v76 = [NSString stringWithCString:v81 encoding:4, &v135, v102];
          free(v81);
          v101 = v76;
          SSFileLog();
        }

        else
        {
          v52 = &CFDictionaryGetValue_ptr;
        }

        goto LABEL_102;
      }

      v52 = &CFDictionaryGetValue_ptr;
      v70 = v56;
LABEL_119:

      v20 = v111;
      v50 = v107;
      v56 = v70;
      v48 = v108;
      v55 = v113;
      v53 = v114;
LABEL_120:

      objc_autoreleasePoolPop(v55);
      v53 = v53 + 1;
    }

    while (v53 != v48);
    v48 = [v110 countByEnumeratingWithState:&v127 objects:v143 count:16];
  }

  while (v48);
LABEL_124:

  if ([v116 count])
  {
    v88 = v49;
    v89 = [v52[412] sharedDaemonConfig];
    if (!v89)
    {
      v89 = [v52[412] sharedConfig];
    }

    v90 = [v89 shouldLog];
    if ([v89 shouldLogToDisk])
    {
      v90 |= 2u;
    }

    v91 = [v89 OSLogObject];
    if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
    {
      v92 = v90;
    }

    else
    {
      v92 = v90 & 2;
    }

    if (v92)
    {
      v93 = objc_opt_class();
      v94 = v93;
      v95 = [v116 componentsJoinedByString:{@", "}];
      v135 = 138412802;
      v136 = v93;
      v137 = 2114;
      v138 = v95;
      v139 = 2114;
      v140 = v88;
      LODWORD(v102) = 32;
      v96 = _os_log_send_and_compose_impl();

      v49 = v88;
      if (v96)
      {
        v91 = [NSString stringWithCString:v96 encoding:4, &v135, v102];
        free(v96);
        SSFileLog();
        goto LABEL_135;
      }
    }

    else
    {
LABEL_135:
    }

    v97 = objc_opt_class();
    v103 = [v116 componentsJoinedByString:{@", "}];
    SSDebugLog();

    v98 = [(RestoreDownloadItemsOperation *)self _newResponseWithItems:v116 error:v49, v97, v103, v49];
    [(RestoreDownloadItemsOperation *)self _addResponse:v98];

    v51 = v117;
  }

  if (a4)
  {
    *a4 = 0;
  }

  return v124;
}

- (void)_showDialogsForResponse:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:kISFailureTypeKey];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v6 = [v4 objectForKey:@"status"];

    v5 = v6;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [v5 intValue] == 3038 && !-[RestoreDownloadItemsOperation shouldShowTermsAndConditionsDialog](self, "shouldShowTermsAndConditionsDialog"))
  {
    v8 = +[SSLogConfig sharedDaemonConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = v9 | 2;
    }

    else
    {
      v10 = v9;
    }

    v11 = [v8 OSLogObject];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v10 &= 2u;
    }

    if (v10)
    {
      LODWORD(v15) = 138412290;
      *(&v15 + 4) = objc_opt_class();
      v12 = *(&v15 + 4);
      LODWORD(v14) = 12;
      v13 = _os_log_send_and_compose_impl();

      if (!v13)
      {
LABEL_19:

        goto LABEL_7;
      }

      v11 = [NSString stringWithCString:v13 encoding:4, &v15, v14, v15];
      free(v13);
      SSFileLog();
    }

    goto LABEL_19;
  }

  v7 = objc_alloc_init(DaemonProtocolDataProvider);
  [(DaemonProtocolDataProvider *)v7 setShouldProcessAuthenticationDialogs:0];
  [(DaemonProtocolDataProvider *)v7 processDialogFromDictionary:v4 error:0];

LABEL_7:
}

@end
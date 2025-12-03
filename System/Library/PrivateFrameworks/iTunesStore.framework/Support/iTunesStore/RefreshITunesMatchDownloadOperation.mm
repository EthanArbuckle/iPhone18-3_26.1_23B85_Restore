@interface RefreshITunesMatchDownloadOperation
- (BOOL)_applyResultsOfOperation:(id)operation toDownload:(id)download error:(id *)error;
- (BOOL)_refreshDownload:(id)download error:(id *)error;
- (RefreshITunesMatchDownloadOperation)initWithDownloadIdentifier:(int64_t)identifier;
- (id)_newPurchaseForDownload:(id)download;
- (void)run;
@end

@implementation RefreshITunesMatchDownloadOperation

- (RefreshITunesMatchDownloadOperation)initWithDownloadIdentifier:(int64_t)identifier
{
  v5.receiver = self;
  v5.super_class = RefreshITunesMatchDownloadOperation;
  result = [(RefreshITunesMatchDownloadOperation *)&v5 init];
  if (result)
  {
    result->_downloadID = identifier;
  }

  return result;
}

- (void)run
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_1002122DC;
  v10 = sub_1002122EC;
  v11 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1002122F8;
  v5[3] = &unk_10032C558;
  v5[4] = self;
  v5[5] = &v6;
  [+[DownloadsDatabase downloadsDatabase](DownloadsDatabase "downloadsDatabase")];
  v4 = 0;
  v3 = [(RefreshITunesMatchDownloadOperation *)self _refreshDownload:v7[5] error:&v4];
  [(RefreshITunesMatchDownloadOperation *)self setError:v4];
  [(RefreshITunesMatchDownloadOperation *)self setSuccess:v3];

  _Block_object_dispose(&v6, 8);
}

- (BOOL)_applyResultsOfOperation:(id)operation toDownload:(id)download error:(id *)error
{
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v7 = -[StoreDownloadQueueResponse initWithDictionary:userIdentifier:preferredAssetFlavor:]([StoreDownloadQueueResponse alloc], "initWithDictionary:userIdentifier:preferredAssetFlavor:", [operation rawOutput], objc_msgSend(download, "valueForProperty:", @"store_account_id"), objc_msgSend(download, "valueForProperty:", @"preferred_asset_flavor"));
  downloads = [(StoreDownloadQueueResponse *)v7 downloads];
  if ([(NSOrderedSet *)downloads count]== 1)
  {
    v9 = [[Download alloc] initWithStoreDownload:[(NSOrderedSet *)downloads objectAtIndex:0]];
    if (v9)
    {
      v10 = +[SSLogConfig sharedDaemonConfig];
      if (!v10)
      {
        v10 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v10 shouldLog];
      shouldLogToDisk = [v10 shouldLogToDisk];
      oSLogObject = [v10 OSLogObject];
      if (shouldLogToDisk)
      {
        shouldLog |= 2u;
      }

      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        shouldLog &= 2u;
      }

      if (shouldLog)
      {
        v14 = objc_opt_class();
        downloadID = self->_downloadID;
        v16 = [(Download *)v9 valueForProperty:@"store_download_key"];
        v39 = 138412802;
        v40 = v14;
        v41 = 2048;
        v42 = downloadID;
        v43 = 2112;
        v44 = v16;
        LODWORD(v33) = 32;
        v32 = &v39;
        v17 = _os_log_send_and_compose_impl();
        if (v17)
        {
          v18 = v17;
          v19 = [NSString stringWithCString:v17 encoding:4, &v39, v33];
          free(v18);
          v32 = v19;
          SSFileLog();
        }
      }

      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_10021286C;
      v34[3] = &unk_10032C580;
      v34[5] = v9;
      v34[6] = &v35;
      v34[4] = self;
      [+[DownloadsDatabase downloadsDatabase](DownloadsDatabase downloadsDatabase];
    }
  }

  else
  {
    v20 = +[SSLogConfig sharedDaemonConfig];
    if (!v20)
    {
      v20 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v20 shouldLog];
    shouldLogToDisk2 = [v20 shouldLogToDisk];
    oSLogObject2 = [v20 OSLogObject];
    if (shouldLogToDisk2)
    {
      shouldLog2 |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      shouldLog2 &= 2u;
    }

    if (shouldLog2)
    {
      v24 = objc_opt_class();
      v25 = self->_downloadID;
      v26 = [(NSOrderedSet *)downloads count];
      v39 = 138412802;
      v40 = v24;
      v41 = 2048;
      v42 = v25;
      v43 = 2048;
      v44 = v26;
      LODWORD(v33) = 32;
      v27 = _os_log_send_and_compose_impl();
      if (v27)
      {
        v28 = v27;
        [NSString stringWithCString:v27 encoding:4, &v39, v33];
        free(v28);
        SSFileLog();
      }
    }
  }

  v29 = v36;
  v30 = *(v36 + 24);
  if (error && (v36[3] & 1) == 0)
  {
    *error = 0;
    v30 = *(v29 + 24);
  }

  _Block_object_dispose(&v35, 8);
  return v30 & 1;
}

- (id)_newPurchaseForDownload:(id)download
{
  v4 = [download valueForProperty:@"store_account_id"];
  v5 = [download valueForProperty:@"store_redownload_parameters"];
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return 0;
  }

  v7 = v5;
  v8 = objc_alloc_init(SSPurchase);
  [v8 setAccountIdentifier:v4];
  [v8 setBuyParameters:v7];
  [v8 setIgnoresForcedPasswordRestriction:1];
  v9 = objc_alloc_init(SSMutableURLRequestProperties);
  [v9 setURLBagKey:@"paidRedownloadProduct"];
  [v8 setRequestProperties:v9];

  return v8;
}

- (BOOL)_refreshDownload:(id)download error:(id *)error
{
  v22 = 0;
  v7 = [(RefreshITunesMatchDownloadOperation *)self _newPurchaseForDownload:?];
  if (!v7)
  {
    v18 = 0;
    if (!error)
    {
      return v18;
    }

    goto LABEL_18;
  }

  v8 = v7;
  v9 = [[PurchaseOperation alloc] initWithPurchase:v7];
  [(PurchaseOperation *)v9 setShouldSendKeyBagSyncData:1];
  v10 = +[SSLogConfig sharedDaemonConfig];
  if (!v10)
  {
    v10 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v10 shouldLog];
  if ([v10 shouldLogToDisk])
  {
    v12 = shouldLog | 2;
  }

  else
  {
    v12 = shouldLog;
  }

  if (!os_log_type_enabled([v10 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v12 &= 2u;
  }

  if (v12)
  {
    v13 = objc_opt_class();
    downloadID = self->_downloadID;
    v23 = 138412802;
    v24 = v13;
    v25 = 2048;
    v26 = downloadID;
    v27 = 2112;
    buyParameters = [v8 buyParameters];
    LODWORD(v21) = 32;
    v20 = &v23;
    v15 = _os_log_send_and_compose_impl();
    if (v15)
    {
      v16 = v15;
      v17 = [NSString stringWithCString:v15 encoding:4, &v23, v21];
      free(v16);
      v20 = v17;
      SSFileLog();
    }
  }

  if ([(RefreshITunesMatchDownloadOperation *)self runSubOperation:v9 returningError:&v22, v20])
  {
    v18 = [(RefreshITunesMatchDownloadOperation *)self _applyResultsOfOperation:v9 toDownload:download error:&v22];
  }

  else
  {
    v18 = 0;
  }

  if (error)
  {
LABEL_18:
    if (!v18)
    {
      *error = v22;
    }
  }

  return v18;
}

@end
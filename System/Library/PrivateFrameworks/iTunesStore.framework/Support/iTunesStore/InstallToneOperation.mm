@interface InstallToneOperation
- (id)_newRingtoneDictionary;
- (id)_ringtoneGUID;
- (int64_t)_performImport;
- (void)run;
@end

@implementation InstallToneOperation

- (void)run
{
  v3 = objc_alloc_init(FinishDownloadResponse);
  [(FinishDownloadResponse *)v3 setResult:4];
  v4 = [(FinishDownloadStepOperation *)self download];
  -[FinishDownloadResponse setDownloadIdentifier:](v3, "setDownloadIdentifier:", [v4 databaseID]);
  v5 = -[DownloadHandle initWithTransactionIdentifier:downloadIdentifier:]([DownloadHandle alloc], "initWithTransactionIdentifier:downloadIdentifier:", [v4 transactionID], objc_msgSend(v4, "databaseID"));
  [(FinishDownloadResponse *)v3 setDownloadHandle:v5];
  v6 = [v4 mediaAsset];
  -[FinishDownloadResponse setMediaAssetIdentifier:](v3, "setMediaAssetIdentifier:", [v6 databaseID]);
  v11 = 0;
  v7 = [(FinishDownloadStepOperation *)self installAsset:v6 error:&v11];
  v8 = v11;
  if (!v7)
  {
    goto LABEL_6;
  }

  v9 = [(InstallToneOperation *)self _performImport];
  if (v9 == 2)
  {
    v10 = SSError();

    v8 = v10;
LABEL_6:
    [(FinishDownloadResponse *)v3 setError:v8];
    [(FinishDownloadResponse *)v3 setResult:0];
    [(FinishDownloadStepOperation *)self rollbackAsset:v6 error:0];
    goto LABEL_7;
  }

  if (v9 == 1)
  {
    [(FinishDownloadStepOperation *)self removeInstalledAsset:v6 error:0];
  }

LABEL_7:
  [(FinishDownloadStepOperation *)self finishWithDownloadResponse:v3];
}

- (id)_newRingtoneDictionary
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = ISWeakLinkedStringConstantForString();
  [v3 setObject:&__kCFBooleanTrue forKey:v4];
  v5 = [(FinishDownloadStepOperation *)self download];
  v6 = ISWeakLinkedStringConstantForString();

  v7 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v5 databaseID]);
  [v3 setObject:v7 forKey:v6];

  v8 = ISWeakLinkedStringConstantForString();

  v9 = [(InstallToneOperation *)self _ringtoneGUID];
  [v3 setObject:v9 forKey:v8];

  v10 = [v5 storeItemIdentifier];
  if (v10)
  {
    v11 = ISWeakLinkedStringConstantForString();

    [v3 setObject:v10 forKey:v11];
    v8 = v11;
  }

  v12 = [v5 storeFrontIdentifier];

  if (v12)
  {
    v13 = ISWeakLinkedStringConstantForString();

    [v3 setObject:v12 forKey:v13];
    v8 = v13;
  }

  v14 = [v5 collectionName];

  if (v14)
  {
    v15 = ISWeakLinkedStringConstantForString();

    [v3 setObject:v14 forKey:v15];
    v8 = v15;
  }

  v16 = [v5 artistName];

  if (v16)
  {
    v17 = ISWeakLinkedStringConstantForString();

    [v3 setObject:v16 forKey:v17];
    v8 = v17;
  }

  v18 = [v5 genreName];

  if (v18)
  {
    v19 = ISWeakLinkedStringConstantForString();

    [v3 setObject:v18 forKey:v19];
    v8 = v19;
  }

  v20 = [v5 title];

  if (v20)
  {
    v21 = ISWeakLinkedStringConstantForString();

    [v3 setObject:v20 forKey:v21];
    v8 = v21;
  }

  v22 = [v5 durationInMilliseconds];

  if (v22)
  {
    v23 = ISWeakLinkedStringConstantForString();

    [v3 setObject:v22 forKey:v23];
    v8 = v23;
  }

  v24 = [v5 downloadKind];

  [v24 isEqualToString:SSDownloadKindTone];
  v25 = ISWeakLinkedStringConstantForString();

  if (v25)
  {
    v26 = ISWeakLinkedStringConstantForString();

    [v3 setObject:v25 forKey:v26];
    v8 = v26;
  }

  return v3;
}

- (id)_ringtoneGUID
{
  v2 = [(FinishDownloadStepOperation *)self download];
  v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llx", [v2 databaseID]);

  return v3;
}

- (int64_t)_performImport
{
  v3 = [(InstallToneOperation *)self _newRingtoneDictionary];
  v4 = [(FinishDownloadStepOperation *)self download];
  v5 = [v4 storeItemIdentifier];
  v6 = SSGetItemIdentifierFromValue();

  v57 = [v4 storeTransactionIdentifier];
  v7 = objc_alloc_init(RingtonePurchaseStore);
  v8 = objc_alloc_init(ISWeakLinkedClassForString());
  v9 = [v4 mediaAsset];
  v10 = [v9 destinationFileName];
  v11 = [v8 _importPurchasedToneWithMetadata:v3 fileName:v10];

  v12 = [v11 statusCode];
  v13 = [v11 toneIdentifier];
  v14 = v13;
  if (v12 == 2)
  {
    v53 = v13;
    v56 = v8;
    v37 = +[SSLogConfig sharedDaemonConfig];
    if (!v37)
    {
      v37 = +[SSLogConfig sharedConfig];
    }

    v38 = [v37 shouldLog];
    if ([v37 shouldLogToDisk])
    {
      v38 |= 2u;
    }

    v39 = [v37 OSLogObject];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = v38;
    }

    else
    {
      v40 = v38 & 2;
    }

    if (v40)
    {
      v41 = objc_opt_class();
      v50 = v41;
      [v4 title];
      v58 = 138543618;
      v59 = v41;
      v61 = v60 = 2114;
      LODWORD(v46) = 22;
      v42 = _os_log_send_and_compose_impl();

      if (v42)
      {
        v43 = [NSString stringWithCString:v42 encoding:4, &v58, v46];
        free(v42);
        SSFileLog();
      }
    }

    else
    {
    }

    v44 = 2;
    v14 = v53;
    v8 = v56;
  }

  else if (v12 == 1)
  {
    v49 = v6;
    v52 = v3;
    v55 = v8;
    v29 = +[SSLogConfig sharedDaemonConfig];
    if (!v29)
    {
      v29 = +[SSLogConfig sharedConfig];
    }

    v30 = [v29 shouldLog];
    if ([v29 shouldLogToDisk])
    {
      v30 |= 2u;
    }

    v31 = [v29 OSLogObject];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = v30;
    }

    else
    {
      v32 = v30 & 2;
    }

    if (v32)
    {
      v33 = objc_opt_class();
      v34 = v33;
      [v4 title];
      v58 = 138543874;
      v59 = v33;
      v61 = v60 = 2114;
      v62 = 2114;
      v63 = v14;
      LODWORD(v46) = 32;
      v35 = _os_log_send_and_compose_impl();

      if (v35)
      {
        v36 = [NSString stringWithCString:v35 encoding:4, &v58, v46];
        free(v35);
        SSFileLog();
      }
    }

    else
    {
    }

    [(RingtonePurchaseStore *)v7 finalizeRingtoneForAdamID:v49 transactionID:v57 toneIdentifier:v14];
    v44 = 1;
    v3 = v52;
    v8 = v55;
  }

  else if (v12)
  {
    v44 = 0;
  }

  else
  {
    v51 = v13;
    v15 = [v4 newITunesMetadataDictionary];
    v16 = v15;
    if (v15)
    {
      v17 = SSDownloadMetadataKeyAdditionalInfo;
      v18 = [v15 objectForKey:SSDownloadMetadataKeyAdditionalInfo];
      if (!v18)
      {
        v18 = objc_alloc_init(NSMutableDictionary);
        [v16 setObject:v18 forKey:v17];
      }

      v19 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v4 databaseID]);
      [v18 setObject:v19 forKey:SSDownloadMetadataKeyTrackPersistentID];

      v20 = [v4 ITunesMetadataDestinationPath];
      [(FinishDownloadStepOperation *)self writeBinaryPropertyList:v16 toPath:v20 error:0];
    }

    v48 = v6;
    v54 = v8;
    [(FinishDownloadStepOperation *)self addPurchaseManifestItem];
    v21 = +[SSLogConfig sharedDaemonConfig];
    if (!v21)
    {
      v21 = +[SSLogConfig sharedConfig];
    }

    v22 = [v21 shouldLog];
    if ([v21 shouldLogToDisk])
    {
      v23 = v22 | 2;
    }

    else
    {
      v23 = v22;
    }

    v24 = [v21 OSLogObject];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = v23;
    }

    else
    {
      v25 = v23 & 2;
    }

    if (v25)
    {
      v26 = objc_opt_class();
      v47 = v26;
      [v4 title];
      v58 = 138543874;
      v59 = v26;
      v61 = v60 = 2114;
      v62 = 2114;
      v63 = v51;
      LODWORD(v46) = 32;
      v27 = _os_log_send_and_compose_impl();

      if (v27)
      {
        v28 = [NSString stringWithCString:v27 encoding:4, &v58, v46];
        free(v27);
        SSFileLog();
      }
    }

    else
    {
    }

    v14 = v51;
    [(RingtonePurchaseStore *)v7 finalizeRingtoneForAdamID:v48 transactionID:v57 toneIdentifier:v51];

    v44 = 0;
    v8 = v54;
  }

  return v44;
}

@end
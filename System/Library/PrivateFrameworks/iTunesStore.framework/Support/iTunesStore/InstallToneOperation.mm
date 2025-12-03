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
  download = [(FinishDownloadStepOperation *)self download];
  -[FinishDownloadResponse setDownloadIdentifier:](v3, "setDownloadIdentifier:", [download databaseID]);
  v5 = -[DownloadHandle initWithTransactionIdentifier:downloadIdentifier:]([DownloadHandle alloc], "initWithTransactionIdentifier:downloadIdentifier:", [download transactionID], objc_msgSend(download, "databaseID"));
  [(FinishDownloadResponse *)v3 setDownloadHandle:v5];
  mediaAsset = [download mediaAsset];
  -[FinishDownloadResponse setMediaAssetIdentifier:](v3, "setMediaAssetIdentifier:", [mediaAsset databaseID]);
  v11 = 0;
  v7 = [(FinishDownloadStepOperation *)self installAsset:mediaAsset error:&v11];
  v8 = v11;
  if (!v7)
  {
    goto LABEL_6;
  }

  _performImport = [(InstallToneOperation *)self _performImport];
  if (_performImport == 2)
  {
    v10 = SSError();

    v8 = v10;
LABEL_6:
    [(FinishDownloadResponse *)v3 setError:v8];
    [(FinishDownloadResponse *)v3 setResult:0];
    [(FinishDownloadStepOperation *)self rollbackAsset:mediaAsset error:0];
    goto LABEL_7;
  }

  if (_performImport == 1)
  {
    [(FinishDownloadStepOperation *)self removeInstalledAsset:mediaAsset error:0];
  }

LABEL_7:
  [(FinishDownloadStepOperation *)self finishWithDownloadResponse:v3];
}

- (id)_newRingtoneDictionary
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = ISWeakLinkedStringConstantForString();
  [v3 setObject:&__kCFBooleanTrue forKey:v4];
  download = [(FinishDownloadStepOperation *)self download];
  v6 = ISWeakLinkedStringConstantForString();

  v7 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [download databaseID]);
  [v3 setObject:v7 forKey:v6];

  v8 = ISWeakLinkedStringConstantForString();

  _ringtoneGUID = [(InstallToneOperation *)self _ringtoneGUID];
  [v3 setObject:_ringtoneGUID forKey:v8];

  storeItemIdentifier = [download storeItemIdentifier];
  if (storeItemIdentifier)
  {
    v11 = ISWeakLinkedStringConstantForString();

    [v3 setObject:storeItemIdentifier forKey:v11];
    v8 = v11;
  }

  storeFrontIdentifier = [download storeFrontIdentifier];

  if (storeFrontIdentifier)
  {
    v13 = ISWeakLinkedStringConstantForString();

    [v3 setObject:storeFrontIdentifier forKey:v13];
    v8 = v13;
  }

  collectionName = [download collectionName];

  if (collectionName)
  {
    v15 = ISWeakLinkedStringConstantForString();

    [v3 setObject:collectionName forKey:v15];
    v8 = v15;
  }

  artistName = [download artistName];

  if (artistName)
  {
    v17 = ISWeakLinkedStringConstantForString();

    [v3 setObject:artistName forKey:v17];
    v8 = v17;
  }

  genreName = [download genreName];

  if (genreName)
  {
    v19 = ISWeakLinkedStringConstantForString();

    [v3 setObject:genreName forKey:v19];
    v8 = v19;
  }

  title = [download title];

  if (title)
  {
    v21 = ISWeakLinkedStringConstantForString();

    [v3 setObject:title forKey:v21];
    v8 = v21;
  }

  durationInMilliseconds = [download durationInMilliseconds];

  if (durationInMilliseconds)
  {
    v23 = ISWeakLinkedStringConstantForString();

    [v3 setObject:durationInMilliseconds forKey:v23];
    v8 = v23;
  }

  downloadKind = [download downloadKind];

  [downloadKind isEqualToString:SSDownloadKindTone];
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
  download = [(FinishDownloadStepOperation *)self download];
  v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llx", [download databaseID]);

  return v3;
}

- (int64_t)_performImport
{
  _newRingtoneDictionary = [(InstallToneOperation *)self _newRingtoneDictionary];
  download = [(FinishDownloadStepOperation *)self download];
  storeItemIdentifier = [download storeItemIdentifier];
  v6 = SSGetItemIdentifierFromValue();

  storeTransactionIdentifier = [download storeTransactionIdentifier];
  v7 = objc_alloc_init(RingtonePurchaseStore);
  v8 = objc_alloc_init(ISWeakLinkedClassForString());
  mediaAsset = [download mediaAsset];
  destinationFileName = [mediaAsset destinationFileName];
  v11 = [v8 _importPurchasedToneWithMetadata:_newRingtoneDictionary fileName:destinationFileName];

  statusCode = [v11 statusCode];
  toneIdentifier = [v11 toneIdentifier];
  v14 = toneIdentifier;
  if (statusCode == 2)
  {
    v53 = toneIdentifier;
    v56 = v8;
    v37 = +[SSLogConfig sharedDaemonConfig];
    if (!v37)
    {
      v37 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v37 shouldLog];
    if ([v37 shouldLogToDisk])
    {
      shouldLog |= 2u;
    }

    oSLogObject = [v37 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v40 = shouldLog;
    }

    else
    {
      v40 = shouldLog & 2;
    }

    if (v40)
    {
      v41 = objc_opt_class();
      v50 = v41;
      [download title];
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

  else if (statusCode == 1)
  {
    v49 = v6;
    v52 = _newRingtoneDictionary;
    v55 = v8;
    v29 = +[SSLogConfig sharedDaemonConfig];
    if (!v29)
    {
      v29 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v29 shouldLog];
    if ([v29 shouldLogToDisk])
    {
      shouldLog2 |= 2u;
    }

    oSLogObject2 = [v29 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v32 = shouldLog2;
    }

    else
    {
      v32 = shouldLog2 & 2;
    }

    if (v32)
    {
      v33 = objc_opt_class();
      v34 = v33;
      [download title];
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

    [(RingtonePurchaseStore *)v7 finalizeRingtoneForAdamID:v49 transactionID:storeTransactionIdentifier toneIdentifier:v14];
    v44 = 1;
    _newRingtoneDictionary = v52;
    v8 = v55;
  }

  else if (statusCode)
  {
    v44 = 0;
  }

  else
  {
    v51 = toneIdentifier;
    newITunesMetadataDictionary = [download newITunesMetadataDictionary];
    v16 = newITunesMetadataDictionary;
    if (newITunesMetadataDictionary)
    {
      v17 = SSDownloadMetadataKeyAdditionalInfo;
      v18 = [newITunesMetadataDictionary objectForKey:SSDownloadMetadataKeyAdditionalInfo];
      if (!v18)
      {
        v18 = objc_alloc_init(NSMutableDictionary);
        [v16 setObject:v18 forKey:v17];
      }

      v19 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [download databaseID]);
      [v18 setObject:v19 forKey:SSDownloadMetadataKeyTrackPersistentID];

      iTunesMetadataDestinationPath = [download ITunesMetadataDestinationPath];
      [(FinishDownloadStepOperation *)self writeBinaryPropertyList:v16 toPath:iTunesMetadataDestinationPath error:0];
    }

    v48 = v6;
    v54 = v8;
    [(FinishDownloadStepOperation *)self addPurchaseManifestItem];
    v21 = +[SSLogConfig sharedDaemonConfig];
    if (!v21)
    {
      v21 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v21 shouldLog];
    if ([v21 shouldLogToDisk])
    {
      v23 = shouldLog3 | 2;
    }

    else
    {
      v23 = shouldLog3;
    }

    oSLogObject3 = [v21 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
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
      [download title];
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
    [(RingtonePurchaseStore *)v7 finalizeRingtoneForAdamID:v48 transactionID:storeTransactionIdentifier toneIdentifier:v51];

    v44 = 0;
    v8 = v54;
  }

  return v44;
}

@end
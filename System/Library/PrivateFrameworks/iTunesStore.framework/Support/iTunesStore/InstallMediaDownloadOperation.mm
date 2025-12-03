@interface InstallMediaDownloadOperation
- (BOOL)_areSourceAndDestinationEqual;
- (BOOL)_installExternalDownload:(id *)download;
- (BOOL)_isDaemonOwned;
- (id)_installDaemonOwnedDownload:(id *)download;
- (id)_newIPodLibraryItem;
- (void)_updateRentalsPlist;
- (void)run;
@end

@implementation InstallMediaDownloadOperation

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
  v7 = [download secondaryAssetForType:SSDownloadAssetTypeArtwork];
  v8 = [download secondaryAssetForType:SSDownloadAssetTypeXMLFeed];
  if (v7)
  {
    v34 = 0;
    v9 = [(FinishDownloadStepOperation *)self downloadAndInstallAsset:v7 error:&v34];
    v10 = v34;
    if ((v9 & 1) == 0)
    {
      isPodcastDownload = [download isPodcastDownload];
      if (!isPodcastDownload)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v10 = 0;
  }

  isPodcastDownload = 1;
LABEL_7:
  if (v8)
  {
    [(FinishDownloadStepOperation *)self downloadAndInstallAsset:v8 error:0];
  }

LABEL_9:
  _areSourceAndDestinationEqual = [(InstallMediaDownloadOperation *)self _areSourceAndDestinationEqual];
  if (!isPodcastDownload || (_areSourceAndDestinationEqual & 1) != 0)
  {
    if (!isPodcastDownload)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v33 = v10;
    v13 = [(FinishDownloadStepOperation *)self installAsset:mediaAsset error:&v33];
    v14 = v33;

    v10 = v14;
    if ((v13 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  if (![(InstallMediaDownloadOperation *)self _isDaemonOwned])
  {
    v32 = v10;
    v19 = [(InstallMediaDownloadOperation *)self _installExternalDownload:&v32];
    v16 = v32;

    v10 = v16;
    if (v19)
    {
      goto LABEL_26;
    }

LABEL_19:
    if (!v7)
    {
LABEL_21:
      if (v8)
      {
        [(FinishDownloadStepOperation *)self rollbackAsset:v8 error:0];
      }

      if (mediaAsset)
      {
        [(FinishDownloadStepOperation *)self rollbackAsset:mediaAsset error:0];
      }

      [(FinishDownloadResponse *)v3 setError:v10];
      [(FinishDownloadResponse *)v3 setResult:0];
      v16 = v10;
      goto LABEL_26;
    }

LABEL_20:
    [(FinishDownloadStepOperation *)self rollbackAsset:v7 error:0];
    goto LABEL_21;
  }

  v31 = v10;
  v15 = [(InstallMediaDownloadOperation *)self _installDaemonOwnedDownload:&v31];
  v16 = v31;

  if (!v15)
  {
    v10 = v16;
    if (!v7)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if ([download isRentalDownload])
  {
    [(InstallMediaDownloadOperation *)self _updateRentalsPlist];
    v17 = +[NSFileManager defaultManager];
    [download ITunesMetadataDestinationPath];
    v18 = v29 = v15;
    [v17 removeItemAtPath:v18 error:0];

    v15 = v29;
  }

  else if ([mediaAsset mediaLibraryProtectionType] == 2 || (objc_msgSend(download, "isHLS") & 1) != 0)
  {
    v30 = v15;
    if (v7)
    {
      v20 = [download destinationDirectoryPathForAsset:v7];
      destinationFileName = [v7 destinationFileName];
      v28 = v20;
      v22 = v20;
      v23 = destinationFileName;
      if ([v22 length] && objc_msgSend(v23, "length"))
      {
        v27 = +[NSFileManager defaultManager];
        v24 = [v28 stringByAppendingPathComponent:v23];
        [v27 removeItemAtPath:v24 error:0];
      }
    }

    v25 = +[NSFileManager defaultManager];
    iTunesMetadataDestinationPath = [download ITunesMetadataDestinationPath];
    [v25 removeItemAtPath:iTunesMetadataDestinationPath error:0];

    v15 = v30;
  }

  else
  {
    [(FinishDownloadStepOperation *)self addPurchaseManifestItemWithLibraryIdentifier:v15];
  }

LABEL_26:
  [(FinishDownloadStepOperation *)self finishWithDownloadResponse:v3];
}

- (BOOL)_areSourceAndDestinationEqual
{
  download = [(FinishDownloadStepOperation *)self download];
  mediaAsset = [download mediaAsset];
  localPath = [mediaAsset localPath];
  v5 = [download destinationDirectoryPathForAsset:mediaAsset];
  destinationFileName = [mediaAsset destinationFileName];
  v7 = destinationFileName;
  v8 = 0;
  v9 = 0;
  if (v5)
  {
    if (destinationFileName)
    {
      v10 = [v5 stringByAppendingPathComponent:destinationFileName];
      v9 = v10;
      v8 = 0;
      if (localPath)
      {
        if (v10)
        {
          v8 = [localPath isEqualToString:v10];
        }
      }
    }
  }

  return v8;
}

- (id)_installDaemonOwnedDownload:(id *)download
{
  download = [(FinishDownloadStepOperation *)self download];
  _newIPodLibraryItem = [(InstallMediaDownloadOperation *)self _newIPodLibraryItem];
  download2 = [(FinishDownloadStepOperation *)self download];
  storeMetadata = [download2 storeMetadata];
  [_newIPodLibraryItem setItemMetadata:storeMetadata];

  v9 = [[AddItemToIPodLibraryOperation alloc] initWithIPodLibraryItem:_newIPodLibraryItem];
  v28 = 0;
  v10 = [(InstallMediaDownloadOperation *)self runSubOperation:v9 returningError:&v28];
  v11 = v28;
  if (v10)
  {
    iPodLibraryItem = [(AddItemToIPodLibraryOperation *)v9 IPodLibraryItem];
    itemMetadata = [iPodLibraryItem itemMetadata];
    [download setStoreMetadata:itemMetadata];

    newITunesMetadataDictionary = [download newITunesMetadataDictionary];
    v15 = SSDownloadMetadataKeyAdditionalInfo;
    oSLogObject = [newITunesMetadataDictionary objectForKey:SSDownloadMetadataKeyAdditionalInfo];
    if (!oSLogObject)
    {
      oSLogObject = objc_alloc_init(NSMutableDictionary);
      [newITunesMetadataDictionary setObject:oSLogObject forKey:v15];
    }

    insertedItemPersistentIdentifier = [(AddItemToIPodLibraryOperation *)v9 insertedItemPersistentIdentifier];
    [oSLogObject setObject:insertedItemPersistentIdentifier forKey:SSDownloadMetadataKeyTrackPersistentID];
    iTunesMetadataDestinationPath = [download ITunesMetadataDestinationPath];
    [(FinishDownloadStepOperation *)self writeBinaryPropertyList:newITunesMetadataDictionary toPath:iTunesMetadataDestinationPath error:0];
  }

  else
  {
    newITunesMetadataDictionary = +[SSLogConfig sharedDaemonConfig];
    if (!newITunesMetadataDictionary)
    {
      newITunesMetadataDictionary = +[SSLogConfig sharedConfig];
    }

    shouldLog = [newITunesMetadataDictionary shouldLog];
    if ([newITunesMetadataDictionary shouldLogToDisk])
    {
      v20 = shouldLog | 2;
    }

    else
    {
      v20 = shouldLog;
    }

    oSLogObject = [newITunesMetadataDictionary OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v20 &= 2u;
    }

    if (v20)
    {
      v21 = objc_opt_class();
      v22 = v21;
      databaseID = [download databaseID];
      v29 = 138412802;
      v30 = v21;
      v31 = 2048;
      v32 = databaseID;
      v33 = 2112;
      v34 = v11;
      LODWORD(v27) = 32;
      v24 = _os_log_send_and_compose_impl();

      if (!v24)
      {
        insertedItemPersistentIdentifier = 0;
        goto LABEL_17;
      }

      oSLogObject = [NSString stringWithCString:v24 encoding:4, &v29, v27];
      free(v24);
      SSFileLog();
    }

    insertedItemPersistentIdentifier = 0;
  }

LABEL_17:
  if (download && !insertedItemPersistentIdentifier)
  {
    v25 = v11;
    *download = v11;
  }

  return insertedItemPersistentIdentifier;
}

- (BOOL)_installExternalDownload:(id *)download
{
  selfCopy = self;
  download = [(FinishDownloadStepOperation *)self download];
  libraryItemIdentifier = [download libraryItemIdentifier];
  if (libraryItemIdentifier)
  {
    v7 = objc_alloc_init(IPodLibraryItem);
    -[IPodLibraryItem setLibraryPersistentIdentifier:](v7, "setLibraryPersistentIdentifier:", [libraryItemIdentifier longLongValue]);
    [(IPodLibraryItem *)v7 setUpdateType:1];
    if ([download isRestoreDownload])
    {
      [(IPodLibraryItem *)v7 setDownloadType:1];
    }

    downloadCopy = download;
    isHLS = [download isHLS];
    mediaAsset = [download mediaAsset];
    localPath = [mediaAsset localPath];
    [(IPodLibraryItem *)v7 setItemMediaPath:localPath];
    -[IPodLibraryItem setProtectionType:](v7, "setProtectionType:", [mediaAsset mediaLibraryProtectionType]);
    [(IPodLibraryItem *)v7 loadPropertiesFromMediaPath:localPath includeTracks:isHLS ^ 1];
    v11 = [download secondaryAssetForType:SSDownloadAssetTypeArtwork];
    localPath2 = [v11 localPath];

    if (localPath2)
    {
      v13 = [[NSData alloc] initWithContentsOfFile:localPath2];
    }

    else
    {
      v13 = 0;
    }

    [(IPodLibraryItem *)v7 setItemArtworkData:v13];
    v21 = [[AddItemToIPodLibraryOperation alloc] initWithIPodLibraryItem:v7];
    v26 = 0;
    LOBYTE(selfCopy) = [selfCopy runSubOperation:v21 returningError:&v26];
    v20 = v26;

    download = downloadCopy;
  }

  else
  {
    v7 = +[SSLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [(IPodLibraryItem *)v7 shouldLog];
    if ([(IPodLibraryItem *)v7 shouldLogToDisk])
    {
      v15 = shouldLog | 2;
    }

    else
    {
      v15 = shouldLog;
    }

    oSLogObject = [(IPodLibraryItem *)v7 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v15;
    }

    else
    {
      v17 = v15 & 2;
    }

    if (v17)
    {
      v18 = objc_opt_class();
      v19 = v18;
      v27 = 138412546;
      v28 = v18;
      v29 = 2048;
      databaseID = [download databaseID];
      LODWORD(v24) = 22;
      selfCopy = _os_log_send_and_compose_impl();

      if (!selfCopy)
      {
        v20 = 0;
        goto LABEL_20;
      }

      oSLogObject = [NSString stringWithCString:selfCopy encoding:4, &v27, v24];
      free(selfCopy);
      SSFileLog();
    }

    v20 = 0;
    LOBYTE(selfCopy) = 0;
  }

LABEL_20:

  if (download && (selfCopy & 1) == 0)
  {
    v22 = v20;
    *download = v20;
  }

  return selfCopy;
}

- (BOOL)_isDaemonOwned
{
  download = [(FinishDownloadStepOperation *)self download];
  if ([download isStoreDownload])
  {
    v3 = 1;
  }

  else
  {
    databaseID = [download databaseID];
    downloadKind = [download downloadKind];
    v6 = [ScratchManager directoryPathForDownloadID:databaseID kind:downloadKind createIfNeeded:1];

    mediaAsset = [download mediaAsset];
    localPath = [mediaAsset localPath];

    v3 = [localPath hasPrefix:v6];
  }

  return v3;
}

- (id)_newIPodLibraryItem
{
  v3 = objc_alloc_init(IPodLibraryItem);
  download = [(FinishDownloadStepOperation *)self download];
  v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lld", [download databaseID]);
  [(IPodLibraryItem *)v3 setItemDownloadIdentifier:v5];

  storeAccountIdentifier = [download storeAccountIdentifier];
  [(IPodLibraryItem *)v3 setValue:storeAccountIdentifier forAdditionalEntityProperty:ML3TrackPropertyStoreAccountID];

  libraryItemIdentifier = [download libraryItemIdentifier];
  v8 = libraryItemIdentifier;
  if (libraryItemIdentifier)
  {
    -[IPodLibraryItem setLibraryPersistentIdentifier:](v3, "setLibraryPersistentIdentifier:", [libraryItemIdentifier longLongValue]);
  }

  if ([download isRestoreDownload])
  {
    [(IPodLibraryItem *)v3 setDownloadType:1];
  }

  mediaAsset = [download mediaAsset];
  -[IPodLibraryItem setProtectionType:](v3, "setProtectionType:", [mediaAsset mediaLibraryProtectionType]);
  isHLS = [download isHLS];
  downloadKind = [download downloadKind];
  v12 = sub_10020F36C(downloadKind);

  destinationFileName = [mediaAsset destinationFileName];
  if (destinationFileName)
  {
    v14 = [v12 stringByAppendingPathComponent:destinationFileName];
    [(IPodLibraryItem *)v3 setItemMediaPath:v14];
    [(IPodLibraryItem *)v3 loadPropertiesFromMediaPath:v14 includeTracks:isHLS ^ 1];
  }

  v15 = [download secondaryAssetForType:SSDownloadAssetTypeArtwork];
  destinationFileName2 = [v15 destinationFileName];

  if (destinationFileName2)
  {
    v17 = [NSData alloc];
    v18 = [v12 stringByAppendingPathComponent:destinationFileName2];
    v19 = [v17 initWithContentsOfFile:v18];

    [(IPodLibraryItem *)v3 setItemArtworkData:v19];
  }

  return v3;
}

- (void)_updateRentalsPlist
{
  v3 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Media"];
  v4 = [[NSArray alloc] initWithObjects:{v3, @"iTunes_Control", @"iTunes", @"Rentals.plist", 0}];
  v5 = [NSString pathWithComponents:v4];
  v6 = [[NSMutableDictionary alloc] initWithContentsOfFile:v5];
  if (v6 || ([v5 stringByDeletingLastPathComponent], v26 = objc_claimAutoreleasedReturnValue(), v27 = +[NSFileManager ensureDirectoryExists:](NSFileManager, "ensureDirectoryExists:", v26), v26, v27) && (v6 = objc_alloc_init(NSMutableDictionary)) != 0)
  {
    v7 = v6;
    v30 = v4;
    download = [(FinishDownloadStepOperation *)self download];
    v9 = objc_alloc_init(NSMutableDictionary);
    title = [download title];
    if (title)
    {
      [v9 setObject:title forKey:@"Name"];
    }

    v31 = title;
    downloadKind = [download downloadKind];
    if (downloadKind)
    {
      [v9 setObject:downloadKind forKey:@"Kind"];
    }

    v12 = sub_10020F36C(downloadKind);
    mediaAsset = [download mediaAsset];
    destinationFileName = [mediaAsset destinationFileName];
    v15 = [v12 stringByAppendingPathComponent:destinationFileName];

    if (v15)
    {
      v16 = [v15 rangeOfString:v3 options:8];
      if (v16 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v18 = [v15 substringFromIndex:&v16[v17]];

        v15 = v18;
      }

      [v9 setObject:v15 forKey:@"Path"];
    }

    v19 = [v7 objectForKey:@"Rentals"];
    if (!v19)
    {
      v19 = objc_alloc_init(NSMutableArray);
      [v7 setObject:v19 forKey:@"Rentals"];
    }

    [v19 addObject:v9];
    if (![v7 writeToFile:v5 atomically:1])
    {
      goto LABEL_24;
    }

    v20 = +[SSLogConfig sharedDaemonConfig];
    if (!v20)
    {
      v20 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v20 shouldLog];
    if ([v20 shouldLogToDisk])
    {
      shouldLog |= 2u;
    }

    oSLogObject = [v20 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      shouldLog &= 2u;
    }

    if (shouldLog)
    {
      v32 = 138412546;
      v33 = objc_opt_class();
      v34 = 2112;
      v35 = v31;
      v29 = v3;
      v23 = v33;
      LODWORD(v28) = 22;
      v24 = _os_log_send_and_compose_impl();

      v3 = v29;
      if (!v24)
      {
LABEL_23:

        v25 = +[DistributedNotificationCenter defaultCenter];
        [v25 postNotificationName:@"com.apple.itunesstored.RentalAdded"];

LABEL_24:
        v4 = v30;
        goto LABEL_27;
      }

      oSLogObject = [NSString stringWithCString:v24 encoding:4, &v32, v28];
      free(v24);
      SSFileLog();
    }

    goto LABEL_23;
  }

LABEL_27:
}

@end
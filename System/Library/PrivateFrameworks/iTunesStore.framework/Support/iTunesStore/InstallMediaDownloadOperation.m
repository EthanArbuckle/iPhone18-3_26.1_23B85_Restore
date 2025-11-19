@interface InstallMediaDownloadOperation
- (BOOL)_areSourceAndDestinationEqual;
- (BOOL)_installExternalDownload:(id *)a3;
- (BOOL)_isDaemonOwned;
- (id)_installDaemonOwnedDownload:(id *)a3;
- (id)_newIPodLibraryItem;
- (void)_updateRentalsPlist;
- (void)run;
@end

@implementation InstallMediaDownloadOperation

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
  v7 = [v4 secondaryAssetForType:SSDownloadAssetTypeArtwork];
  v8 = [v4 secondaryAssetForType:SSDownloadAssetTypeXMLFeed];
  if (v7)
  {
    v34 = 0;
    v9 = [(FinishDownloadStepOperation *)self downloadAndInstallAsset:v7 error:&v34];
    v10 = v34;
    if ((v9 & 1) == 0)
    {
      v11 = [v4 isPodcastDownload];
      if (!v11)
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

  v11 = 1;
LABEL_7:
  if (v8)
  {
    [(FinishDownloadStepOperation *)self downloadAndInstallAsset:v8 error:0];
  }

LABEL_9:
  v12 = [(InstallMediaDownloadOperation *)self _areSourceAndDestinationEqual];
  if (!v11 || (v12 & 1) != 0)
  {
    if (!v11)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v33 = v10;
    v13 = [(FinishDownloadStepOperation *)self installAsset:v6 error:&v33];
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

      if (v6)
      {
        [(FinishDownloadStepOperation *)self rollbackAsset:v6 error:0];
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

  if ([v4 isRentalDownload])
  {
    [(InstallMediaDownloadOperation *)self _updateRentalsPlist];
    v17 = +[NSFileManager defaultManager];
    [v4 ITunesMetadataDestinationPath];
    v18 = v29 = v15;
    [v17 removeItemAtPath:v18 error:0];

    v15 = v29;
  }

  else if ([v6 mediaLibraryProtectionType] == 2 || (objc_msgSend(v4, "isHLS") & 1) != 0)
  {
    v30 = v15;
    if (v7)
    {
      v20 = [v4 destinationDirectoryPathForAsset:v7];
      v21 = [v7 destinationFileName];
      v28 = v20;
      v22 = v20;
      v23 = v21;
      if ([v22 length] && objc_msgSend(v23, "length"))
      {
        v27 = +[NSFileManager defaultManager];
        v24 = [v28 stringByAppendingPathComponent:v23];
        [v27 removeItemAtPath:v24 error:0];
      }
    }

    v25 = +[NSFileManager defaultManager];
    v26 = [v4 ITunesMetadataDestinationPath];
    [v25 removeItemAtPath:v26 error:0];

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
  v2 = [(FinishDownloadStepOperation *)self download];
  v3 = [v2 mediaAsset];
  v4 = [v3 localPath];
  v5 = [v2 destinationDirectoryPathForAsset:v3];
  v6 = [v3 destinationFileName];
  v7 = v6;
  v8 = 0;
  v9 = 0;
  if (v5)
  {
    if (v6)
    {
      v10 = [v5 stringByAppendingPathComponent:v6];
      v9 = v10;
      v8 = 0;
      if (v4)
      {
        if (v10)
        {
          v8 = [v4 isEqualToString:v10];
        }
      }
    }
  }

  return v8;
}

- (id)_installDaemonOwnedDownload:(id *)a3
{
  v5 = [(FinishDownloadStepOperation *)self download];
  v6 = [(InstallMediaDownloadOperation *)self _newIPodLibraryItem];
  v7 = [(FinishDownloadStepOperation *)self download];
  v8 = [v7 storeMetadata];
  [v6 setItemMetadata:v8];

  v9 = [[AddItemToIPodLibraryOperation alloc] initWithIPodLibraryItem:v6];
  v28 = 0;
  v10 = [(InstallMediaDownloadOperation *)self runSubOperation:v9 returningError:&v28];
  v11 = v28;
  if (v10)
  {
    v12 = [(AddItemToIPodLibraryOperation *)v9 IPodLibraryItem];
    v13 = [v12 itemMetadata];
    [v5 setStoreMetadata:v13];

    v14 = [v5 newITunesMetadataDictionary];
    v15 = SSDownloadMetadataKeyAdditionalInfo;
    v16 = [v14 objectForKey:SSDownloadMetadataKeyAdditionalInfo];
    if (!v16)
    {
      v16 = objc_alloc_init(NSMutableDictionary);
      [v14 setObject:v16 forKey:v15];
    }

    v17 = [(AddItemToIPodLibraryOperation *)v9 insertedItemPersistentIdentifier];
    [v16 setObject:v17 forKey:SSDownloadMetadataKeyTrackPersistentID];
    v18 = [v5 ITunesMetadataDestinationPath];
    [(FinishDownloadStepOperation *)self writeBinaryPropertyList:v14 toPath:v18 error:0];
  }

  else
  {
    v14 = +[SSLogConfig sharedDaemonConfig];
    if (!v14)
    {
      v14 = +[SSLogConfig sharedConfig];
    }

    v19 = [v14 shouldLog];
    if ([v14 shouldLogToDisk])
    {
      v20 = v19 | 2;
    }

    else
    {
      v20 = v19;
    }

    v16 = [v14 OSLogObject];
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v20 &= 2u;
    }

    if (v20)
    {
      v21 = objc_opt_class();
      v22 = v21;
      v23 = [v5 databaseID];
      v29 = 138412802;
      v30 = v21;
      v31 = 2048;
      v32 = v23;
      v33 = 2112;
      v34 = v11;
      LODWORD(v27) = 32;
      v24 = _os_log_send_and_compose_impl();

      if (!v24)
      {
        v17 = 0;
        goto LABEL_17;
      }

      v16 = [NSString stringWithCString:v24 encoding:4, &v29, v27];
      free(v24);
      SSFileLog();
    }

    v17 = 0;
  }

LABEL_17:
  if (a3 && !v17)
  {
    v25 = v11;
    *a3 = v11;
  }

  return v17;
}

- (BOOL)_installExternalDownload:(id *)a3
{
  v4 = self;
  v5 = [(FinishDownloadStepOperation *)self download];
  v6 = [v5 libraryItemIdentifier];
  if (v6)
  {
    v7 = objc_alloc_init(IPodLibraryItem);
    -[IPodLibraryItem setLibraryPersistentIdentifier:](v7, "setLibraryPersistentIdentifier:", [v6 longLongValue]);
    [(IPodLibraryItem *)v7 setUpdateType:1];
    if ([v5 isRestoreDownload])
    {
      [(IPodLibraryItem *)v7 setDownloadType:1];
    }

    v25 = a3;
    v8 = [v5 isHLS];
    v9 = [v5 mediaAsset];
    v10 = [v9 localPath];
    [(IPodLibraryItem *)v7 setItemMediaPath:v10];
    -[IPodLibraryItem setProtectionType:](v7, "setProtectionType:", [v9 mediaLibraryProtectionType]);
    [(IPodLibraryItem *)v7 loadPropertiesFromMediaPath:v10 includeTracks:v8 ^ 1];
    v11 = [v5 secondaryAssetForType:SSDownloadAssetTypeArtwork];
    v12 = [v11 localPath];

    if (v12)
    {
      v13 = [[NSData alloc] initWithContentsOfFile:v12];
    }

    else
    {
      v13 = 0;
    }

    [(IPodLibraryItem *)v7 setItemArtworkData:v13];
    v21 = [[AddItemToIPodLibraryOperation alloc] initWithIPodLibraryItem:v7];
    v26 = 0;
    LOBYTE(v4) = [v4 runSubOperation:v21 returningError:&v26];
    v20 = v26;

    a3 = v25;
  }

  else
  {
    v7 = +[SSLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v14 = [(IPodLibraryItem *)v7 shouldLog];
    if ([(IPodLibraryItem *)v7 shouldLogToDisk])
    {
      v15 = v14 | 2;
    }

    else
    {
      v15 = v14;
    }

    v16 = [(IPodLibraryItem *)v7 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
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
      v30 = [v5 databaseID];
      LODWORD(v24) = 22;
      v4 = _os_log_send_and_compose_impl();

      if (!v4)
      {
        v20 = 0;
        goto LABEL_20;
      }

      v16 = [NSString stringWithCString:v4 encoding:4, &v27, v24];
      free(v4);
      SSFileLog();
    }

    v20 = 0;
    LOBYTE(v4) = 0;
  }

LABEL_20:

  if (a3 && (v4 & 1) == 0)
  {
    v22 = v20;
    *a3 = v20;
  }

  return v4;
}

- (BOOL)_isDaemonOwned
{
  v2 = [(FinishDownloadStepOperation *)self download];
  if ([v2 isStoreDownload])
  {
    v3 = 1;
  }

  else
  {
    v4 = [v2 databaseID];
    v5 = [v2 downloadKind];
    v6 = [ScratchManager directoryPathForDownloadID:v4 kind:v5 createIfNeeded:1];

    v7 = [v2 mediaAsset];
    v8 = [v7 localPath];

    v3 = [v8 hasPrefix:v6];
  }

  return v3;
}

- (id)_newIPodLibraryItem
{
  v3 = objc_alloc_init(IPodLibraryItem);
  v4 = [(FinishDownloadStepOperation *)self download];
  v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lld", [v4 databaseID]);
  [(IPodLibraryItem *)v3 setItemDownloadIdentifier:v5];

  v6 = [v4 storeAccountIdentifier];
  [(IPodLibraryItem *)v3 setValue:v6 forAdditionalEntityProperty:ML3TrackPropertyStoreAccountID];

  v7 = [v4 libraryItemIdentifier];
  v8 = v7;
  if (v7)
  {
    -[IPodLibraryItem setLibraryPersistentIdentifier:](v3, "setLibraryPersistentIdentifier:", [v7 longLongValue]);
  }

  if ([v4 isRestoreDownload])
  {
    [(IPodLibraryItem *)v3 setDownloadType:1];
  }

  v9 = [v4 mediaAsset];
  -[IPodLibraryItem setProtectionType:](v3, "setProtectionType:", [v9 mediaLibraryProtectionType]);
  v10 = [v4 isHLS];
  v11 = [v4 downloadKind];
  v12 = sub_10020F36C(v11);

  v13 = [v9 destinationFileName];
  if (v13)
  {
    v14 = [v12 stringByAppendingPathComponent:v13];
    [(IPodLibraryItem *)v3 setItemMediaPath:v14];
    [(IPodLibraryItem *)v3 loadPropertiesFromMediaPath:v14 includeTracks:v10 ^ 1];
  }

  v15 = [v4 secondaryAssetForType:SSDownloadAssetTypeArtwork];
  v16 = [v15 destinationFileName];

  if (v16)
  {
    v17 = [NSData alloc];
    v18 = [v12 stringByAppendingPathComponent:v16];
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
    v8 = [(FinishDownloadStepOperation *)self download];
    v9 = objc_alloc_init(NSMutableDictionary);
    v10 = [v8 title];
    if (v10)
    {
      [v9 setObject:v10 forKey:@"Name"];
    }

    v31 = v10;
    v11 = [v8 downloadKind];
    if (v11)
    {
      [v9 setObject:v11 forKey:@"Kind"];
    }

    v12 = sub_10020F36C(v11);
    v13 = [v8 mediaAsset];
    v14 = [v13 destinationFileName];
    v15 = [v12 stringByAppendingPathComponent:v14];

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

    v21 = [v20 shouldLog];
    if ([v20 shouldLogToDisk])
    {
      v21 |= 2u;
    }

    v22 = [v20 OSLogObject];
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v21 &= 2u;
    }

    if (v21)
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

      v22 = [NSString stringWithCString:v24 encoding:4, &v32, v28];
      free(v24);
      SSFileLog();
    }

    goto LABEL_23;
  }

LABEL_27:
}

@end
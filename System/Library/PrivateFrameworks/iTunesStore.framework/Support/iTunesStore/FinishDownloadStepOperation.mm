@interface FinishDownloadStepOperation
- (BOOL)downloadAndInstallAsset:(id)asset error:(id *)error;
- (BOOL)downloadAsset:(id)asset error:(id *)error;
- (BOOL)installAsset:(id)asset error:(id *)error;
- (BOOL)moveAsset:(id)asset toPath:(id *)path installBehavior:(int64_t)behavior error:(id *)error;
- (BOOL)moveFile:(id)file toPath:(id *)path installBehavior:(int64_t)behavior error:(id *)error;
- (BOOL)removeInstalledAsset:(id)asset error:(id *)error;
- (BOOL)rollbackAsset:(id)asset error:(id *)error;
- (BOOL)unzipAsset:(id)asset unzippedPath:(id *)path error:(id *)error;
- (BOOL)writeBinaryPropertyList:(id)list toPath:(id)path error:(id *)error;
- (FinishDownloadStepOperation)initWithDownload:(id)download;
- (NSString)downloadPhase;
- (double)progressFraction;
- (id)_newURLOperationWithAsset:(id)asset;
- (id)documentsDirectoryPathWithClientIdentifier:(id)identifier downloadKind:(id)kind;
- (id)outputBlock;
- (void)addPurchaseManifestItemWithLibraryIdentifier:(id)identifier;
- (void)finishWithDownloadResponse:(id)response;
- (void)setDownloadPhase:(id)phase;
- (void)setOutputBlock:(id)block;
- (void)setProgressFraction:(double)fraction;
@end

@implementation FinishDownloadStepOperation

- (FinishDownloadStepOperation)initWithDownload:(id)download
{
  downloadCopy = download;
  v9.receiver = self;
  v9.super_class = FinishDownloadStepOperation;
  v6 = [(FinishDownloadStepOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_download, download);
  }

  return v7;
}

- (void)addPurchaseManifestItemWithLibraryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  download = [(FinishDownloadStepOperation *)self download];
  downloadKind = [download downloadKind];
  v6 = [PurchaseManifest sharedManifestForDownloadKind:downloadKind];

  if (v6)
  {
    v7 = objc_alloc_init(PurchaseManifestItem);
    [(PurchaseManifestItem *)v7 setLibraryPersistentIdentifier:identifierCopy];
    mediaAsset = [download mediaAsset];
    destinationFileName = [mediaAsset destinationFileName];
    [(PurchaseManifestItem *)v7 setRelativeMediaAssetPath:destinationFileName];

    iTunesMetadataDestinationPath = [download ITunesMetadataDestinationPath];
    lastPathComponent = [iTunesMetadataDestinationPath lastPathComponent];
    [(PurchaseManifestItem *)v7 setRelativeMetadataPath:lastPathComponent];

    v12 = [download secondaryAssetForType:SSDownloadAssetTypeArtwork];
    v13 = v12;
    if (v12)
    {
      destinationFileName2 = [v12 destinationFileName];
      [(PurchaseManifestItem *)v7 setRelativeArtworkPath:destinationFileName2];
    }

    v15 = [download secondaryAssetForType:SSDownloadAssetTypeXMLFeed];

    if (v15)
    {
      destinationFileName3 = [v15 destinationFileName];
      [(PurchaseManifestItem *)v7 setRelativeFeedAssetPath:destinationFileName3];
    }

    [v6 addCompletedItem:v7];
  }
}

- (NSString)downloadPhase
{
  [(FinishDownloadStepOperation *)self lock];
  v3 = [(NSString *)self->_downloadPhase copy];
  [(FinishDownloadStepOperation *)self unlock];

  return v3;
}

- (id)documentsDirectoryPathWithClientIdentifier:(id)identifier downloadKind:(id)kind
{
  identifierCopy = identifier;
  IsThirdPartyKind = SSDownloadKindIsThirdPartyKind();
  v6 = [NSArray alloc];
  if (IsThirdPartyKind)
  {
    v7 = [v6 initWithObjects:{@"Library", @"Caches", 0}];
  }

  else
  {
    v7 = [v6 initWithObjects:{@"Documents", 0, v21}];
  }

  v8 = v7;
  v9 = [LSApplicationProxy applicationProxyForIdentifier:identifierCopy];
  v10 = v9;
  if (v9 && ([v9 applicationType], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", LSUserApplicationType), v11, v12))
  {
    v13 = [NSMutableArray alloc];
    dataContainerURL = [v10 dataContainerURL];
    path = [dataContainerURL path];
    lastObject = [v13 initWithObjects:{path, 0}];

    [lastObject addObjectsFromArray:v8];
    v17 = [NSString pathWithComponents:lastObject];
  }

  else
  {
    v18 = NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory, 1uLL, 1);
    lastObject = [v18 lastObject];

    v19 = [[NSMutableArray alloc] initWithObjects:{lastObject, @"Containers", identifierCopy, 0}];
    [v19 addObjectsFromArray:v8];
    v17 = [NSString pathWithComponents:v19];
  }

  return v17;
}

- (BOOL)downloadAndInstallAsset:(id)asset error:(id *)error
{
  assetCopy = asset;
  v7 = [(FinishDownloadStepOperation *)self _newURLOperationWithAsset:assetCopy];
  errorCopy = error;
  if (!v7)
  {
    v31 = 0;
    goto LABEL_31;
  }

  v8 = +[SSLogConfig sharedDaemonConfig];
  if (!v8)
  {
    v8 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    v10 = shouldLog | 2;
  }

  else
  {
    v10 = shouldLog;
  }

  oSLogObject = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v12 = v10;
  }

  else
  {
    v12 = v10 & 2;
  }

  if (v12)
  {
    v13 = objc_opt_class();
    v14 = v13;
    databaseID = [assetCopy databaseID];
    databaseID2 = [(FinishDownloadMemoryEntity *)self->_download databaseID];
    v50 = 138412802;
    v51 = v13;
    v52 = 2048;
    v53 = databaseID;
    v54 = 2048;
    v55 = databaseID2;
    LODWORD(v45) = 32;
    v44 = &v50;
    v17 = _os_log_send_and_compose_impl();

    if (!v17)
    {
      goto LABEL_14;
    }

    oSLogObject = [NSString stringWithCString:v17 encoding:4, &v50, v45];
    free(v17);
    v44 = oSLogObject;
    SSFileLog();
  }

LABEL_14:
  v49 = 0;
  v18 = [(FinishDownloadStepOperation *)self runSubOperation:v7 returningError:&v49];
  v19 = v49;
  v20 = v19;
  if (!v18)
  {
    v31 = v19;
    goto LABEL_31;
  }

  v21 = +[SSLogConfig sharedDaemonConfig];
  if (!v21)
  {
    v21 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v21 shouldLog];
  if ([v21 shouldLogToDisk])
  {
    v23 = shouldLog2 | 2;
  }

  else
  {
    v23 = shouldLog2;
  }

  oSLogObject2 = [v21 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
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
    v46 = v26;
    databaseID3 = [assetCopy databaseID];
    databaseID4 = [(FinishDownloadMemoryEntity *)self->_download databaseID];
    v50 = 138412802;
    v51 = v26;
    v52 = 2048;
    v53 = databaseID3;
    v54 = 2048;
    v55 = databaseID4;
    LODWORD(v45) = 32;
    v44 = &v50;
    v29 = _os_log_send_and_compose_impl();

    if (!v29)
    {
      goto LABEL_27;
    }

    oSLogObject2 = [NSString stringWithCString:v29 encoding:4, &v50, v45];
    free(v29);
    v44 = oSLogObject2;
    SSFileLog();
  }

LABEL_27:
  v48 = v20;
  v30 = [(FinishDownloadStepOperation *)self installAsset:assetCopy error:&v48];
  v31 = v48;

  if (v30)
  {
    v32 = 1;
    goto LABEL_45;
  }

LABEL_31:
  v33 = +[SSLogConfig sharedDaemonConfig];
  if (!v33)
  {
    v33 = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [v33 shouldLog];
  if ([v33 shouldLogToDisk])
  {
    shouldLog3 |= 2u;
  }

  oSLogObject3 = [v33 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
  {
    v36 = shouldLog3;
  }

  else
  {
    v36 = shouldLog3 & 2;
  }

  if (v36)
  {
    v37 = objc_opt_class();
    v38 = v37;
    databaseID5 = [assetCopy databaseID];
    databaseID6 = [(FinishDownloadMemoryEntity *)self->_download databaseID];
    v50 = 138412802;
    v51 = v37;
    v52 = 2048;
    v53 = databaseID5;
    v54 = 2048;
    v55 = databaseID6;
    LODWORD(v45) = 32;
    v41 = _os_log_send_and_compose_impl();

    if (!v41)
    {
      goto LABEL_42;
    }

    oSLogObject3 = [NSString stringWithCString:v41 encoding:4, &v50, v45];
    free(v41);
    SSFileLog();
  }

LABEL_42:
  if (errorCopy)
  {
    v42 = v31;
    v32 = 0;
    *errorCopy = v31;
  }

  else
  {
    v32 = 0;
  }

LABEL_45:

  return v32;
}

- (BOOL)downloadAsset:(id)asset error:(id *)error
{
  assetCopy = asset;
  v7 = [(FinishDownloadStepOperation *)self _newURLOperationWithAsset:assetCopy];
  if (!v7)
  {
    v19 = 0;
    v18 = 0;
    if (!error)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v8 = +[SSLogConfig sharedDaemonConfig];
  if (!v8)
  {
    v8 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    v10 = shouldLog | 2;
  }

  else
  {
    v10 = shouldLog;
  }

  oSLogObject = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v12 = v10;
  }

  else
  {
    v12 = v10 & 2;
  }

  if (v12)
  {
    v13 = objc_opt_class();
    v23 = v13;
    databaseID = [assetCopy databaseID];
    assetType = [assetCopy assetType];
    databaseID2 = [(FinishDownloadMemoryEntity *)self->_download databaseID];
    v25 = 138413058;
    v26 = v13;
    v27 = 2048;
    v28 = databaseID;
    v29 = 2112;
    v30 = assetType;
    v31 = 2048;
    v32 = databaseID2;
    LODWORD(v22) = 42;
    v17 = _os_log_send_and_compose_impl();

    if (!v17)
    {
      goto LABEL_14;
    }

    oSLogObject = [NSString stringWithCString:v17 encoding:4, &v25, v22];
    free(v17);
    SSFileLog();
  }

LABEL_14:
  v24 = 0;
  v18 = [(FinishDownloadStepOperation *)self runSubOperation:v7 returningError:&v24];
  v19 = v24;
  if (!error)
  {
    goto LABEL_19;
  }

LABEL_17:
  if ((v18 & 1) == 0)
  {
    v20 = v19;
    *error = v19;
  }

LABEL_19:

  return v18;
}

- (void)finishWithDownloadResponse:(id)response
{
  responseCopy = response;
  error = [responseCopy error];
  [(FinishDownloadStepOperation *)self setError:error];

  -[FinishDownloadStepOperation setSuccess:](self, "setSuccess:", [responseCopy result] == 4);
  outputBlock = [(FinishDownloadStepOperation *)self outputBlock];
  v6 = outputBlock;
  if (outputBlock)
  {
    (*(outputBlock + 16))(outputBlock, responseCopy);
    [(FinishDownloadStepOperation *)self setOutputBlock:0];
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, kSSNotificationDownloadFinished, 0, 0, 1u);
}

- (BOOL)installAsset:(id)asset error:(id *)error
{
  assetCopy = asset;
  v7 = objc_alloc_init(NSFileManager);
  localPath = [assetCopy localPath];
  if (![v7 fileExistsAtPath:localPath])
  {
    v14 = 0;
    v12 = 0;
    if (!error)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v9 = [(FinishDownloadMemoryEntity *)self->_download destinationDirectoryPathForAsset:assetCopy];
  if (v9)
  {
    destinationFileName = [assetCopy destinationFileName];
    v11 = [v9 stringByAppendingPathComponent:destinationFileName];

    v17 = 0;
    v18 = v11;
    v12 = [(FinishDownloadStepOperation *)self moveAsset:assetCopy toPath:&v18 installBehavior:0 error:&v17];
    v13 = v18;

    v14 = v17;
  }

  else
  {
    v14 = 0;
    v12 = 0;
  }

  if (error)
  {
LABEL_8:
    if (!v12)
    {
      v15 = v14;
      *error = v14;
    }
  }

LABEL_10:

  return v12;
}

- (BOOL)moveAsset:(id)asset toPath:(id *)path installBehavior:(int64_t)behavior error:(id *)error
{
  assetCopy = asset;
  localPath = [assetCopy localPath];
  v12 = [(FinishDownloadStepOperation *)self moveFile:localPath toPath:path installBehavior:behavior error:error];

  if (v12)
  {
    fileAttributes = [assetCopy fileAttributes];
    if ([fileAttributes count])
    {
      v14 = objc_alloc_init(NSFileManager);
      [v14 setAttributes:fileAttributes ofItemAtPath:*path error:0];
    }
  }

  return v12;
}

- (BOOL)moveFile:(id)file toPath:(id *)path installBehavior:(int64_t)behavior error:(id *)error
{
  fileCopy = file;
  stringByDeletingLastPathComponent = [*path stringByDeletingLastPathComponent];
  lastPathComponent = [*path lastPathComponent];
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
  pathExtension = [lastPathComponent pathExtension];
  v13 = objc_alloc_init(NSFileManager);
  v14 = v13;
  v67 = stringByDeletingLastPathComponent;
  if (!stringByDeletingLastPathComponent)
  {
    v30 = +[SSLogConfig sharedDaemonConfig];
    if (!v30)
    {
      v30 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v30 shouldLog];
    if ([v30 shouldLogToDisk])
    {
      v32 = shouldLog | 2;
    }

    else
    {
      v32 = shouldLog;
    }

    oSLogObject = [v30 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v34 = v32;
    }

    else
    {
      v34 = v32 & 2;
    }

    if (v34)
    {
      LOWORD(v71) = 0;
      LODWORD(v59) = 2;
      v35 = _os_log_send_and_compose_impl();

      v29 = lastPathComponent;
      if (v35)
      {
        v36 = [NSString stringWithCString:v35 encoding:4, &v71, v59];
        free(v35);
        SSFileLog();
      }
    }

    else
    {

      v29 = lastPathComponent;
    }

    v54 = SSErrorDomain;
    v73 = NSLocalizedDescriptionKey;
    v74 = @"DownloadInstaller: Missing destination path";
    v55 = [NSDictionary dictionaryWithObjects:&v74 forKeys:&v73 count:1];
    v22 = [NSError errorWithDomain:v54 code:137 userInfo:v55];

    v39 = 0;
    v40 = 0;
    goto LABEL_69;
  }

  errorCopy = error;
  v65 = fileCopy;
  v15 = 1;
  [v13 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:0];
  v63 = [[NSURL alloc] initFileURLWithPath:stringByDeletingLastPathComponent isDirectory:1];
  startAccessingSecurityScopedResource = [v63 startAccessingSecurityScopedResource];
  v66 = 0;
  v61 = SSErrorDomain;
LABEL_3:
  v16 = stringByDeletingLastPathComponent;
  do
  {
    v17 = [v14 fileExistsAtPath:*path];
    if (!v17)
    {
      v37 = *path;
      fileCopy = v65;
      v69 = v66;
      v38 = [v14 moveItemAtPath:v65 toPath:v37 error:&v69];
      v22 = v69;

      if (v38)
      {
        v29 = lastPathComponent;
        goto LABEL_35;
      }

      v48 = +[SSLogConfig sharedDaemonConfig];
      if (!v48)
      {
        v48 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v48 shouldLog];
      if ([v48 shouldLogToDisk])
      {
        v50 = shouldLog2 | 2;
      }

      else
      {
        v50 = shouldLog2;
      }

      oSLogObject2 = [v48 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        v52 = v50;
      }

      else
      {
        v52 = v50 & 2;
      }

      error = errorCopy;
      if (v52)
      {
        v71 = 138412290;
        v72 = v22;
        LODWORD(v59) = 12;
        v58 = &v71;
        v53 = _os_log_send_and_compose_impl();

        v29 = lastPathComponent;
        if (!v53)
        {
LABEL_66:

          goto LABEL_67;
        }

        oSLogObject2 = [NSString stringWithCString:v53 encoding:4, &v71, v59];
        free(v53);
        v58 = oSLogObject2;
        SSFileLog();
      }

      else
      {
        v29 = lastPathComponent;
      }

      goto LABEL_66;
    }

    if (behavior != 1)
    {
      v21 = *path;
      v70 = v66;
      v60 = [v14 removeItemAtPath:v21 error:&v70];
      v22 = v70;

      v66 = v22;
      if (v60)
      {
        goto LABEL_3;
      }

      v23 = +[SSLogConfig sharedDaemonConfig];
      if (!v23)
      {
        v23 = +[SSLogConfig sharedConfig];
      }

      shouldLog3 = [v23 shouldLog];
      if ([v23 shouldLogToDisk])
      {
        v25 = shouldLog3 | 2;
      }

      else
      {
        v25 = shouldLog3;
      }

      oSLogObject3 = [v23 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
      {
        v27 = v25;
      }

      else
      {
        v27 = v25 & 2;
      }

      fileCopy = v65;
      if (v27)
      {
        v71 = 138412290;
        v72 = v22;
        LODWORD(v59) = 12;
        v58 = &v71;
        v28 = _os_log_send_and_compose_impl();

        v29 = lastPathComponent;
        if (!v28)
        {
LABEL_75:

LABEL_35:
          v39 = v17 ^ 1;
          v40 = v63;
          error = errorCopy;
          if (!startAccessingSecurityScopedResource)
          {
            goto LABEL_69;
          }

          goto LABEL_68;
        }

        oSLogObject3 = [NSString stringWithCString:v28 encoding:4, &v71, v59];
        free(v28);
        v58 = oSLogObject3;
        SSFileLog();
      }

      else
      {
        v29 = lastPathComponent;
      }

      goto LABEL_75;
    }

    v18 = [NSString stringWithFormat:@"%@-%ld", stringByDeletingPathExtension, v15];
    if ([pathExtension length])
    {
      v19 = [v18 stringByAppendingPathExtension:pathExtension];

      v18 = v19;
      v16 = stringByDeletingLastPathComponent;
    }

    *path = [v16 stringByAppendingPathComponent:v18];
  }

  while (v15++ < 10000);
  v41 = +[SSLogConfig sharedDaemonConfig];
  v42 = v41;
  if (!v41)
  {
    v42 = +[SSLogConfig sharedConfig];
  }

  shouldLog4 = [v42 shouldLog];
  if ([v42 shouldLogToDisk])
  {
    v44 = shouldLog4 | 2;
  }

  else
  {
    v44 = shouldLog4;
  }

  oSLogObject4 = [v42 OSLogObject];
  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
  {
    v46 = v44;
  }

  else
  {
    v46 = v44 & 2;
  }

  error = errorCopy;
  fileCopy = v65;
  if (v46)
  {
    v71 = 138412290;
    v29 = lastPathComponent;
    v72 = lastPathComponent;
    LODWORD(v59) = 12;
    v58 = &v71;
    v47 = _os_log_send_and_compose_impl();

    if (v47)
    {
      oSLogObject4 = [NSString stringWithCString:v47 encoding:4, &v71, v59];
      free(v47);
      v58 = oSLogObject4;
      SSFileLog();
      goto LABEL_62;
    }
  }

  else
  {
    v29 = lastPathComponent;
LABEL_62:
  }

  v22 = [NSError errorWithDomain:v61 code:100 userInfo:0];

LABEL_67:
  v39 = 0;
  v40 = v63;
  if ((startAccessingSecurityScopedResource & 1) == 0)
  {
    goto LABEL_69;
  }

LABEL_68:
  [v40 stopAccessingSecurityScopedResource];
LABEL_69:
  if (error && (v39 & 1) == 0)
  {
    v56 = v22;
    *error = v22;
  }

  return v39;
}

- (BOOL)removeInstalledAsset:(id)asset error:(id *)error
{
  assetCopy = asset;
  v7 = objc_alloc_init(NSFileManager);
  v8 = [(FinishDownloadMemoryEntity *)self->_download destinationDirectoryPathForAsset:assetCopy];
  destinationFileName = [assetCopy destinationFileName];

  v10 = [v8 stringByAppendingPathComponent:destinationFileName];

  if (![v7 fileExistsAtPath:v10])
  {
    v21 = +[SSLogConfig sharedDaemonConfig];
    if (!v21)
    {
      v21 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v21 shouldLog];
    if ([v21 shouldLogToDisk])
    {
      v23 = shouldLog | 2;
    }

    else
    {
      v23 = shouldLog;
    }

    oSLogObject = [v21 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v23 &= 2u;
    }

    if (v23)
    {
      v38 = 138543618;
      v39 = objc_opt_class();
      v40 = 2114;
      v41 = v10;
      v25 = v39;
      LODWORD(v36) = 22;
      v26 = _os_log_send_and_compose_impl();

      if (!v26)
      {
LABEL_26:

        v12 = 0;
        goto LABEL_27;
      }

      oSLogObject = [NSString stringWithCString:v26 encoding:4, &v38, v36];
      free(v26);
      SSFileLog();
    }

    goto LABEL_26;
  }

  v37 = 0;
  v11 = [v7 removeItemAtPath:v10 error:&v37];
  v12 = v37;
  v13 = +[SSLogConfig sharedDaemonConfig];
  v14 = v13;
  if (v11)
  {
    if (!v13)
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
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v16 &= 2u;
    }

    if (v16)
    {
      v18 = objc_opt_class();
      v38 = 138543618;
      v39 = v18;
      v40 = 2114;
      v41 = v10;
      v19 = v18;
      LODWORD(v36) = 22;
      v20 = _os_log_send_and_compose_impl();

      if (!v20)
      {
LABEL_14:

LABEL_27:
        v27 = 1;
        goto LABEL_28;
      }

      oSLogObject2 = [NSString stringWithCString:v20 encoding:4, &v38, v36];
      free(v20);
      SSFileLog();
    }

    goto LABEL_14;
  }

  if (!v13)
  {
    v14 = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [v14 shouldLog];
  if ([v14 shouldLogToDisk])
  {
    v30 = shouldLog3 | 2;
  }

  else
  {
    v30 = shouldLog3;
  }

  oSLogObject3 = [v14 OSLogObject];
  if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
  {
    v30 &= 2u;
  }

  if (v30)
  {
    v32 = objc_opt_class();
    v38 = 138543874;
    v39 = v32;
    v40 = 2114;
    v41 = v10;
    v42 = 2114;
    v43 = v12;
    v33 = v32;
    LODWORD(v36) = 32;
    v34 = _os_log_send_and_compose_impl();

    if (!v34)
    {
      goto LABEL_40;
    }

    oSLogObject3 = [NSString stringWithCString:v34 encoding:4, &v38, v36];
    free(v34);
    SSFileLog();
  }

LABEL_40:
  if (error)
  {
    v35 = v12;
    v27 = 0;
    *error = v12;
  }

  else
  {
    v27 = 0;
  }

LABEL_28:

  return v27;
}

- (id)outputBlock
{
  [(FinishDownloadStepOperation *)self lock];
  v3 = [self->_outputBlock copy];
  [(FinishDownloadStepOperation *)self unlock];
  v4 = objc_retainBlock(v3);

  return v4;
}

- (double)progressFraction
{
  [(FinishDownloadStepOperation *)self lock];
  progressFraction = self->_progressFraction;
  [(FinishDownloadStepOperation *)self unlock];
  return progressFraction;
}

- (BOOL)rollbackAsset:(id)asset error:(id *)error
{
  assetCopy = asset;
  v7 = objc_alloc_init(NSFileManager);
  v8 = [(FinishDownloadMemoryEntity *)self->_download destinationDirectoryPathForAsset:assetCopy];
  destinationFileName = [assetCopy destinationFileName];
  v10 = [v8 stringByAppendingPathComponent:destinationFileName];

  if (![v7 fileExistsAtPath:v10])
  {
    goto LABEL_18;
  }

  errorCopy = error;
  localPath = [assetCopy localPath];
  if (![v7 fileExistsAtPath:localPath])
  {
    v13 = 0;
LABEL_6:
    v35 = v8;
    v15 = +[SSLogConfig sharedDaemonConfig];
    if (!v15)
    {
      v15 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v15 shouldLog];
    if ([v15 shouldLogToDisk])
    {
      shouldLog |= 2u;
    }

    oSLogObject = [v15 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      shouldLog &= 2u;
    }

    if (shouldLog)
    {
      v18 = objc_opt_class();
      v39 = 138412546;
      v40 = v18;
      v41 = 2112;
      v42 = localPath;
      v19 = localPath;
      v20 = v18;
      LODWORD(v33) = 22;
      v32 = &v39;
      v21 = _os_log_send_and_compose_impl();

      localPath = v19;
      v8 = v35;
      if (!v21)
      {
LABEL_16:

        v37 = v13;
        v22 = [v7 moveItemAtPath:v10 toPath:localPath error:&v37];
        v14 = v37;

        if (!v22)
        {
          goto LABEL_19;
        }

LABEL_18:
        v14 = 0;
        v23 = 1;
        goto LABEL_32;
      }

      oSLogObject = [NSString stringWithCString:v21 encoding:4, &v39, v33];
      free(v21);
      v32 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_16;
  }

  v38 = 0;
  v12 = [v7 removeItemAtPath:localPath error:&v38];
  v13 = v38;
  v14 = v13;
  if (v12)
  {
    goto LABEL_6;
  }

LABEL_19:
  v34 = localPath;
  v24 = +[SSLogConfig sharedDaemonConfig];
  if (!v24)
  {
    v24 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v24 shouldLog];
  if ([v24 shouldLogToDisk])
  {
    shouldLog2 |= 2u;
  }

  oSLogObject2 = [v24 OSLogObject];
  if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    shouldLog2 &= 2u;
  }

  if (shouldLog2)
  {
    v27 = objc_opt_class();
    v39 = 138412546;
    v40 = v27;
    v41 = 2112;
    v42 = v14;
    v28 = v27;
    LODWORD(v33) = 22;
    v29 = _os_log_send_and_compose_impl();

    localPath = v34;
    if (!v29)
    {
      goto LABEL_29;
    }

    oSLogObject2 = [NSString stringWithCString:v29 encoding:4, &v39, v33];
    free(v29);
    SSFileLog();
  }

LABEL_29:
  [v7 removeItemAtPath:v10 error:0];

  if (errorCopy)
  {
    v30 = v14;
    v23 = 0;
    *errorCopy = v14;
  }

  else
  {
    v23 = 0;
  }

LABEL_32:

  return v23;
}

- (void)setDownloadPhase:(id)phase
{
  phaseCopy = phase;
  [(FinishDownloadStepOperation *)self lock];
  if (self->_downloadPhase != phaseCopy)
  {
    v4 = [(NSString *)phaseCopy copy];
    downloadPhase = self->_downloadPhase;
    self->_downloadPhase = v4;
  }

  [(FinishDownloadStepOperation *)self unlock];
}

- (void)setOutputBlock:(id)block
{
  blockCopy = block;
  [(FinishDownloadStepOperation *)self lock];
  if (self->_outputBlock != blockCopy)
  {
    v4 = [blockCopy copy];
    outputBlock = self->_outputBlock;
    self->_outputBlock = v4;
  }

  [(FinishDownloadStepOperation *)self unlock];
}

- (void)setProgressFraction:(double)fraction
{
  [(FinishDownloadStepOperation *)self lock];
  self->_progressFraction = fraction;

  [(FinishDownloadStepOperation *)self unlock];
}

- (BOOL)unzipAsset:(id)asset unzippedPath:(id *)path error:(id *)error
{
  assetCopy = asset;
  localPath = [assetCopy localPath];
  v10 = [localPath stringByAppendingPathExtension:@"ext"];
  v11 = objc_alloc_init(ExtractFileOperation);
  [(ExtractFileOperation *)v11 setDestinationFilePath:v10];
  fileAttributes = [assetCopy fileAttributes];

  [(ExtractFileOperation *)v11 setFileAttributes:fileAttributes];
  [(ExtractFileOperation *)v11 setShouldRunWithBackgroundPriority:1];
  [(ExtractFileOperation *)v11 setSourceFilePath:localPath];
  [(ExtractFileOperation *)v11 setSourceFileType:0];
  v17 = 0;
  v13 = [(FinishDownloadStepOperation *)self runSubOperation:v11 returningError:&v17];
  v14 = v17;
  v15 = v14;
  if (v13)
  {
    v14 = v10;
    if (!path)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  path = error;
  if (error)
  {
LABEL_5:
    *path = v14;
  }

LABEL_6:

  return v13;
}

- (BOOL)writeBinaryPropertyList:(id)list toPath:(id)path error:(id *)error
{
  pathCopy = path;
  v31 = 0;
  v8 = [NSPropertyListSerialization dataWithPropertyList:list format:200 options:0 error:&v31];
  v9 = v31;
  v10 = v9;
  if (v8)
  {
    v30 = v9;
    v11 = [v8 writeToFile:pathCopy options:1 error:&v30];
    v12 = v30;

    v13 = +[SSLogConfig sharedDaemonConfig];
    v14 = v13;
    if (v11)
    {
      if (!v13)
      {
        v14 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v14 shouldLog];
      if ([v14 shouldLogToDisk])
      {
        v16 = shouldLog | 2;
      }

      else
      {
        v16 = shouldLog;
      }

      oSLogObject = [v14 OSLogObject];
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
        v32 = 138412290;
        v33 = pathCopy;
        LODWORD(v29) = 12;
        v19 = _os_log_send_and_compose_impl();

        if (!v19)
        {
LABEL_15:

          v20 = 1;
          goto LABEL_41;
        }

        oSLogObject = [NSString stringWithCString:v19 encoding:4, &v32, v29];
        free(v19);
        SSFileLog();
      }

      goto LABEL_15;
    }

    if (!v13)
    {
      v14 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v14 shouldLog];
    if ([v14 shouldLogToDisk])
    {
      shouldLog2 |= 2u;
    }

    oSLogObject2 = [v14 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v26 = shouldLog2;
    }

    else
    {
      v26 = shouldLog2 & 2;
    }

    if (!v26)
    {
      goto LABEL_37;
    }

    v32 = 138412290;
    v33 = v12;
    LODWORD(v29) = 12;
    v24 = _os_log_send_and_compose_impl();

    if (!v24)
    {
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  v14 = +[SSLogConfig sharedDaemonConfig];
  if (!v14)
  {
    v14 = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [v14 shouldLog];
  if ([v14 shouldLogToDisk])
  {
    shouldLog3 |= 2u;
  }

  oSLogObject2 = [v14 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v23 = shouldLog3;
  }

  else
  {
    v23 = shouldLog3 & 2;
  }

  if (!v23)
  {
    v12 = v10;
    goto LABEL_37;
  }

  v32 = 138412290;
  v33 = v10;
  LODWORD(v29) = 12;
  v24 = _os_log_send_and_compose_impl();

  v12 = v10;
  if (v24)
  {
LABEL_35:
    oSLogObject2 = [NSString stringWithCString:v24 encoding:4, &v32, v29];
    free(v24);
    SSFileLog();
LABEL_37:
  }

LABEL_38:

  if (error)
  {
    v27 = v12;
    v20 = 0;
    *error = v12;
  }

  else
  {
    v20 = 0;
  }

LABEL_41:

  return v20;
}

- (id)_newURLOperationWithAsset:(id)asset
{
  assetCopy = asset;
  sourceURLString = [assetCopy sourceURLString];
  if (!sourceURLString)
  {
    v6 = 0;
    goto LABEL_7;
  }

  v6 = [[NSURL alloc] initWithString:sourceURLString];
  if (!v6)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_10;
  }

  v7 = [[SSMutableURLRequestProperties alloc] initWithURL:v6];
  [v7 setAllowedRetryCount:0];
  [v7 setRequiresExtendedValidationCertificates:0];
  if (([assetCopy isExternalAsset] & 1) != 0 || !-[FinishDownloadMemoryEntity isStoreDownload](self->_download, "isStoreDownload"))
  {
    v8 = objc_alloc_init(ISURLOperation);
    [v8 _setUsesPrivateCookieStore:0];
    v9 = 0;
    v10 = 2;
  }

  else
  {
    v8 = objc_alloc_init(ISStoreURLOperation);
    [v8 setCanSendGUIDParameter:0];
    v9 = 1;
    [v8 setUrlKnownToBeTrusted:1];
    v10 = 0;
  }

  [v7 setITunesStoreRequest:v9];
  [v7 setURLBagType:v10];
  [v8 setRequestProperties:v7];
  v11 = objc_alloc_init(ISHashedDownloadProvider);
  localPath = [assetCopy localPath];
  [v11 setLocalFilePath:localPath];

  [v8 setDataProvider:v11];
LABEL_10:

  return v8;
}

@end
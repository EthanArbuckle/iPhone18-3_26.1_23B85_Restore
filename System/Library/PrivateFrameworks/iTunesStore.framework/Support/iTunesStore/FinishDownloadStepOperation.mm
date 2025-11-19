@interface FinishDownloadStepOperation
- (BOOL)downloadAndInstallAsset:(id)a3 error:(id *)a4;
- (BOOL)downloadAsset:(id)a3 error:(id *)a4;
- (BOOL)installAsset:(id)a3 error:(id *)a4;
- (BOOL)moveAsset:(id)a3 toPath:(id *)a4 installBehavior:(int64_t)a5 error:(id *)a6;
- (BOOL)moveFile:(id)a3 toPath:(id *)a4 installBehavior:(int64_t)a5 error:(id *)a6;
- (BOOL)removeInstalledAsset:(id)a3 error:(id *)a4;
- (BOOL)rollbackAsset:(id)a3 error:(id *)a4;
- (BOOL)unzipAsset:(id)a3 unzippedPath:(id *)a4 error:(id *)a5;
- (BOOL)writeBinaryPropertyList:(id)a3 toPath:(id)a4 error:(id *)a5;
- (FinishDownloadStepOperation)initWithDownload:(id)a3;
- (NSString)downloadPhase;
- (double)progressFraction;
- (id)_newURLOperationWithAsset:(id)a3;
- (id)documentsDirectoryPathWithClientIdentifier:(id)a3 downloadKind:(id)a4;
- (id)outputBlock;
- (void)addPurchaseManifestItemWithLibraryIdentifier:(id)a3;
- (void)finishWithDownloadResponse:(id)a3;
- (void)setDownloadPhase:(id)a3;
- (void)setOutputBlock:(id)a3;
- (void)setProgressFraction:(double)a3;
@end

@implementation FinishDownloadStepOperation

- (FinishDownloadStepOperation)initWithDownload:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FinishDownloadStepOperation;
  v6 = [(FinishDownloadStepOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_download, a3);
  }

  return v7;
}

- (void)addPurchaseManifestItemWithLibraryIdentifier:(id)a3
{
  v17 = a3;
  v4 = [(FinishDownloadStepOperation *)self download];
  v5 = [v4 downloadKind];
  v6 = [PurchaseManifest sharedManifestForDownloadKind:v5];

  if (v6)
  {
    v7 = objc_alloc_init(PurchaseManifestItem);
    [(PurchaseManifestItem *)v7 setLibraryPersistentIdentifier:v17];
    v8 = [v4 mediaAsset];
    v9 = [v8 destinationFileName];
    [(PurchaseManifestItem *)v7 setRelativeMediaAssetPath:v9];

    v10 = [v4 ITunesMetadataDestinationPath];
    v11 = [v10 lastPathComponent];
    [(PurchaseManifestItem *)v7 setRelativeMetadataPath:v11];

    v12 = [v4 secondaryAssetForType:SSDownloadAssetTypeArtwork];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 destinationFileName];
      [(PurchaseManifestItem *)v7 setRelativeArtworkPath:v14];
    }

    v15 = [v4 secondaryAssetForType:SSDownloadAssetTypeXMLFeed];

    if (v15)
    {
      v16 = [v15 destinationFileName];
      [(PurchaseManifestItem *)v7 setRelativeFeedAssetPath:v16];
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

- (id)documentsDirectoryPathWithClientIdentifier:(id)a3 downloadKind:(id)a4
{
  v4 = a3;
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
  v9 = [LSApplicationProxy applicationProxyForIdentifier:v4];
  v10 = v9;
  if (v9 && ([v9 applicationType], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", LSUserApplicationType), v11, v12))
  {
    v13 = [NSMutableArray alloc];
    v14 = [v10 dataContainerURL];
    v15 = [v14 path];
    v16 = [v13 initWithObjects:{v15, 0}];

    [v16 addObjectsFromArray:v8];
    v17 = [NSString pathWithComponents:v16];
  }

  else
  {
    v18 = NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory, 1uLL, 1);
    v16 = [v18 lastObject];

    v19 = [[NSMutableArray alloc] initWithObjects:{v16, @"Containers", v4, 0}];
    [v19 addObjectsFromArray:v8];
    v17 = [NSString pathWithComponents:v19];
  }

  return v17;
}

- (BOOL)downloadAndInstallAsset:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(FinishDownloadStepOperation *)self _newURLOperationWithAsset:v6];
  v47 = a4;
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
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
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
    v15 = [v6 databaseID];
    v16 = [(FinishDownloadMemoryEntity *)self->_download databaseID];
    v50 = 138412802;
    v51 = v13;
    v52 = 2048;
    v53 = v15;
    v54 = 2048;
    v55 = v16;
    LODWORD(v45) = 32;
    v44 = &v50;
    v17 = _os_log_send_and_compose_impl();

    if (!v17)
    {
      goto LABEL_14;
    }

    v11 = [NSString stringWithCString:v17 encoding:4, &v50, v45];
    free(v17);
    v44 = v11;
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
    v46 = v26;
    v27 = [v6 databaseID];
    v28 = [(FinishDownloadMemoryEntity *)self->_download databaseID];
    v50 = 138412802;
    v51 = v26;
    v52 = 2048;
    v53 = v27;
    v54 = 2048;
    v55 = v28;
    LODWORD(v45) = 32;
    v44 = &v50;
    v29 = _os_log_send_and_compose_impl();

    if (!v29)
    {
      goto LABEL_27;
    }

    v24 = [NSString stringWithCString:v29 encoding:4, &v50, v45];
    free(v29);
    v44 = v24;
    SSFileLog();
  }

LABEL_27:
  v48 = v20;
  v30 = [(FinishDownloadStepOperation *)self installAsset:v6 error:&v48];
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

  v34 = [v33 shouldLog];
  if ([v33 shouldLogToDisk])
  {
    v34 |= 2u;
  }

  v35 = [v33 OSLogObject];
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = v34;
  }

  else
  {
    v36 = v34 & 2;
  }

  if (v36)
  {
    v37 = objc_opt_class();
    v38 = v37;
    v39 = [v6 databaseID];
    v40 = [(FinishDownloadMemoryEntity *)self->_download databaseID];
    v50 = 138412802;
    v51 = v37;
    v52 = 2048;
    v53 = v39;
    v54 = 2048;
    v55 = v40;
    LODWORD(v45) = 32;
    v41 = _os_log_send_and_compose_impl();

    if (!v41)
    {
      goto LABEL_42;
    }

    v35 = [NSString stringWithCString:v41 encoding:4, &v50, v45];
    free(v41);
    SSFileLog();
  }

LABEL_42:
  if (v47)
  {
    v42 = v31;
    v32 = 0;
    *v47 = v31;
  }

  else
  {
    v32 = 0;
  }

LABEL_45:

  return v32;
}

- (BOOL)downloadAsset:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(FinishDownloadStepOperation *)self _newURLOperationWithAsset:v6];
  if (!v7)
  {
    v19 = 0;
    v18 = 0;
    if (!a4)
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
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
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
    v14 = [v6 databaseID];
    v15 = [v6 assetType];
    v16 = [(FinishDownloadMemoryEntity *)self->_download databaseID];
    v25 = 138413058;
    v26 = v13;
    v27 = 2048;
    v28 = v14;
    v29 = 2112;
    v30 = v15;
    v31 = 2048;
    v32 = v16;
    LODWORD(v22) = 42;
    v17 = _os_log_send_and_compose_impl();

    if (!v17)
    {
      goto LABEL_14;
    }

    v11 = [NSString stringWithCString:v17 encoding:4, &v25, v22];
    free(v17);
    SSFileLog();
  }

LABEL_14:
  v24 = 0;
  v18 = [(FinishDownloadStepOperation *)self runSubOperation:v7 returningError:&v24];
  v19 = v24;
  if (!a4)
  {
    goto LABEL_19;
  }

LABEL_17:
  if ((v18 & 1) == 0)
  {
    v20 = v19;
    *a4 = v19;
  }

LABEL_19:

  return v18;
}

- (void)finishWithDownloadResponse:(id)a3
{
  v8 = a3;
  v4 = [v8 error];
  [(FinishDownloadStepOperation *)self setError:v4];

  -[FinishDownloadStepOperation setSuccess:](self, "setSuccess:", [v8 result] == 4);
  v5 = [(FinishDownloadStepOperation *)self outputBlock];
  v6 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5, v8);
    [(FinishDownloadStepOperation *)self setOutputBlock:0];
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, kSSNotificationDownloadFinished, 0, 0, 1u);
}

- (BOOL)installAsset:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(NSFileManager);
  v8 = [v6 localPath];
  if (![v7 fileExistsAtPath:v8])
  {
    v14 = 0;
    v12 = 0;
    if (!a4)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v9 = [(FinishDownloadMemoryEntity *)self->_download destinationDirectoryPathForAsset:v6];
  if (v9)
  {
    v10 = [v6 destinationFileName];
    v11 = [v9 stringByAppendingPathComponent:v10];

    v17 = 0;
    v18 = v11;
    v12 = [(FinishDownloadStepOperation *)self moveAsset:v6 toPath:&v18 installBehavior:0 error:&v17];
    v13 = v18;

    v14 = v17;
  }

  else
  {
    v14 = 0;
    v12 = 0;
  }

  if (a4)
  {
LABEL_8:
    if (!v12)
    {
      v15 = v14;
      *a4 = v14;
    }
  }

LABEL_10:

  return v12;
}

- (BOOL)moveAsset:(id)a3 toPath:(id *)a4 installBehavior:(int64_t)a5 error:(id *)a6
{
  v10 = a3;
  v11 = [v10 localPath];
  v12 = [(FinishDownloadStepOperation *)self moveFile:v11 toPath:a4 installBehavior:a5 error:a6];

  if (v12)
  {
    v13 = [v10 fileAttributes];
    if ([v13 count])
    {
      v14 = objc_alloc_init(NSFileManager);
      [v14 setAttributes:v13 ofItemAtPath:*a4 error:0];
    }
  }

  return v12;
}

- (BOOL)moveFile:(id)a3 toPath:(id *)a4 installBehavior:(int64_t)a5 error:(id *)a6
{
  v9 = a3;
  v10 = [*a4 stringByDeletingLastPathComponent];
  v11 = [*a4 lastPathComponent];
  v68 = [v11 stringByDeletingPathExtension];
  v12 = [v11 pathExtension];
  v13 = objc_alloc_init(NSFileManager);
  v14 = v13;
  v67 = v10;
  if (!v10)
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
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
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

      v29 = v11;
      if (v35)
      {
        v36 = [NSString stringWithCString:v35 encoding:4, &v71, v59];
        free(v35);
        SSFileLog();
      }
    }

    else
    {

      v29 = v11;
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

  v64 = a6;
  v65 = v9;
  v15 = 1;
  [v13 createDirectoryAtPath:v10 withIntermediateDirectories:1 attributes:0 error:0];
  v63 = [[NSURL alloc] initFileURLWithPath:v10 isDirectory:1];
  v62 = [v63 startAccessingSecurityScopedResource];
  v66 = 0;
  v61 = SSErrorDomain;
LABEL_3:
  v16 = v10;
  do
  {
    v17 = [v14 fileExistsAtPath:*a4];
    if (!v17)
    {
      v37 = *a4;
      v9 = v65;
      v69 = v66;
      v38 = [v14 moveItemAtPath:v65 toPath:v37 error:&v69];
      v22 = v69;

      if (v38)
      {
        v29 = v11;
        goto LABEL_35;
      }

      v48 = +[SSLogConfig sharedDaemonConfig];
      if (!v48)
      {
        v48 = +[SSLogConfig sharedConfig];
      }

      v49 = [v48 shouldLog];
      if ([v48 shouldLogToDisk])
      {
        v50 = v49 | 2;
      }

      else
      {
        v50 = v49;
      }

      v51 = [v48 OSLogObject];
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v52 = v50;
      }

      else
      {
        v52 = v50 & 2;
      }

      a6 = v64;
      if (v52)
      {
        v71 = 138412290;
        v72 = v22;
        LODWORD(v59) = 12;
        v58 = &v71;
        v53 = _os_log_send_and_compose_impl();

        v29 = v11;
        if (!v53)
        {
LABEL_66:

          goto LABEL_67;
        }

        v51 = [NSString stringWithCString:v53 encoding:4, &v71, v59];
        free(v53);
        v58 = v51;
        SSFileLog();
      }

      else
      {
        v29 = v11;
      }

      goto LABEL_66;
    }

    if (a5 != 1)
    {
      v21 = *a4;
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

      v24 = [v23 shouldLog];
      if ([v23 shouldLogToDisk])
      {
        v25 = v24 | 2;
      }

      else
      {
        v25 = v24;
      }

      v26 = [v23 OSLogObject];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = v25;
      }

      else
      {
        v27 = v25 & 2;
      }

      v9 = v65;
      if (v27)
      {
        v71 = 138412290;
        v72 = v22;
        LODWORD(v59) = 12;
        v58 = &v71;
        v28 = _os_log_send_and_compose_impl();

        v29 = v11;
        if (!v28)
        {
LABEL_75:

LABEL_35:
          v39 = v17 ^ 1;
          v40 = v63;
          a6 = v64;
          if (!v62)
          {
            goto LABEL_69;
          }

          goto LABEL_68;
        }

        v26 = [NSString stringWithCString:v28 encoding:4, &v71, v59];
        free(v28);
        v58 = v26;
        SSFileLog();
      }

      else
      {
        v29 = v11;
      }

      goto LABEL_75;
    }

    v18 = [NSString stringWithFormat:@"%@-%ld", v68, v15];
    if ([v12 length])
    {
      v19 = [v18 stringByAppendingPathExtension:v12];

      v18 = v19;
      v16 = v10;
    }

    *a4 = [v16 stringByAppendingPathComponent:v18];
  }

  while (v15++ < 10000);
  v41 = +[SSLogConfig sharedDaemonConfig];
  v42 = v41;
  if (!v41)
  {
    v42 = +[SSLogConfig sharedConfig];
  }

  v43 = [v42 shouldLog];
  if ([v42 shouldLogToDisk])
  {
    v44 = v43 | 2;
  }

  else
  {
    v44 = v43;
  }

  v45 = [v42 OSLogObject];
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    v46 = v44;
  }

  else
  {
    v46 = v44 & 2;
  }

  a6 = v64;
  v9 = v65;
  if (v46)
  {
    v71 = 138412290;
    v29 = v11;
    v72 = v11;
    LODWORD(v59) = 12;
    v58 = &v71;
    v47 = _os_log_send_and_compose_impl();

    if (v47)
    {
      v45 = [NSString stringWithCString:v47 encoding:4, &v71, v59];
      free(v47);
      v58 = v45;
      SSFileLog();
      goto LABEL_62;
    }
  }

  else
  {
    v29 = v11;
LABEL_62:
  }

  v22 = [NSError errorWithDomain:v61 code:100 userInfo:0];

LABEL_67:
  v39 = 0;
  v40 = v63;
  if ((v62 & 1) == 0)
  {
    goto LABEL_69;
  }

LABEL_68:
  [v40 stopAccessingSecurityScopedResource];
LABEL_69:
  if (a6 && (v39 & 1) == 0)
  {
    v56 = v22;
    *a6 = v22;
  }

  return v39;
}

- (BOOL)removeInstalledAsset:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(NSFileManager);
  v8 = [(FinishDownloadMemoryEntity *)self->_download destinationDirectoryPathForAsset:v6];
  v9 = [v6 destinationFileName];

  v10 = [v8 stringByAppendingPathComponent:v9];

  if (![v7 fileExistsAtPath:v10])
  {
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
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
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

      v24 = [NSString stringWithCString:v26 encoding:4, &v38, v36];
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
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
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

      v17 = [NSString stringWithCString:v20 encoding:4, &v38, v36];
      free(v20);
      SSFileLog();
    }

    goto LABEL_14;
  }

  if (!v13)
  {
    v14 = +[SSLogConfig sharedConfig];
  }

  v29 = [v14 shouldLog];
  if ([v14 shouldLogToDisk])
  {
    v30 = v29 | 2;
  }

  else
  {
    v30 = v29;
  }

  v31 = [v14 OSLogObject];
  if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
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

    v31 = [NSString stringWithCString:v34 encoding:4, &v38, v36];
    free(v34);
    SSFileLog();
  }

LABEL_40:
  if (a4)
  {
    v35 = v12;
    v27 = 0;
    *a4 = v12;
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

- (BOOL)rollbackAsset:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(NSFileManager);
  v8 = [(FinishDownloadMemoryEntity *)self->_download destinationDirectoryPathForAsset:v6];
  v9 = [v6 destinationFileName];
  v10 = [v8 stringByAppendingPathComponent:v9];

  if (![v7 fileExistsAtPath:v10])
  {
    goto LABEL_18;
  }

  v36 = a4;
  v11 = [v6 localPath];
  if (![v7 fileExistsAtPath:v11])
  {
    v13 = 0;
LABEL_6:
    v35 = v8;
    v15 = +[SSLogConfig sharedDaemonConfig];
    if (!v15)
    {
      v15 = +[SSLogConfig sharedConfig];
    }

    v16 = [v15 shouldLog];
    if ([v15 shouldLogToDisk])
    {
      v16 |= 2u;
    }

    v17 = [v15 OSLogObject];
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v16 &= 2u;
    }

    if (v16)
    {
      v18 = objc_opt_class();
      v39 = 138412546;
      v40 = v18;
      v41 = 2112;
      v42 = v11;
      v19 = v11;
      v20 = v18;
      LODWORD(v33) = 22;
      v32 = &v39;
      v21 = _os_log_send_and_compose_impl();

      v11 = v19;
      v8 = v35;
      if (!v21)
      {
LABEL_16:

        v37 = v13;
        v22 = [v7 moveItemAtPath:v10 toPath:v11 error:&v37];
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

      v17 = [NSString stringWithCString:v21 encoding:4, &v39, v33];
      free(v21);
      v32 = v17;
      SSFileLog();
    }

    goto LABEL_16;
  }

  v38 = 0;
  v12 = [v7 removeItemAtPath:v11 error:&v38];
  v13 = v38;
  v14 = v13;
  if (v12)
  {
    goto LABEL_6;
  }

LABEL_19:
  v34 = v11;
  v24 = +[SSLogConfig sharedDaemonConfig];
  if (!v24)
  {
    v24 = +[SSLogConfig sharedConfig];
  }

  v25 = [v24 shouldLog];
  if ([v24 shouldLogToDisk])
  {
    v25 |= 2u;
  }

  v26 = [v24 OSLogObject];
  if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v25 &= 2u;
  }

  if (v25)
  {
    v27 = objc_opt_class();
    v39 = 138412546;
    v40 = v27;
    v41 = 2112;
    v42 = v14;
    v28 = v27;
    LODWORD(v33) = 22;
    v29 = _os_log_send_and_compose_impl();

    v11 = v34;
    if (!v29)
    {
      goto LABEL_29;
    }

    v26 = [NSString stringWithCString:v29 encoding:4, &v39, v33];
    free(v29);
    SSFileLog();
  }

LABEL_29:
  [v7 removeItemAtPath:v10 error:0];

  if (v36)
  {
    v30 = v14;
    v23 = 0;
    *v36 = v14;
  }

  else
  {
    v23 = 0;
  }

LABEL_32:

  return v23;
}

- (void)setDownloadPhase:(id)a3
{
  v6 = a3;
  [(FinishDownloadStepOperation *)self lock];
  if (self->_downloadPhase != v6)
  {
    v4 = [(NSString *)v6 copy];
    downloadPhase = self->_downloadPhase;
    self->_downloadPhase = v4;
  }

  [(FinishDownloadStepOperation *)self unlock];
}

- (void)setOutputBlock:(id)a3
{
  v6 = a3;
  [(FinishDownloadStepOperation *)self lock];
  if (self->_outputBlock != v6)
  {
    v4 = [v6 copy];
    outputBlock = self->_outputBlock;
    self->_outputBlock = v4;
  }

  [(FinishDownloadStepOperation *)self unlock];
}

- (void)setProgressFraction:(double)a3
{
  [(FinishDownloadStepOperation *)self lock];
  self->_progressFraction = a3;

  [(FinishDownloadStepOperation *)self unlock];
}

- (BOOL)unzipAsset:(id)a3 unzippedPath:(id *)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [v8 localPath];
  v10 = [v9 stringByAppendingPathExtension:@"ext"];
  v11 = objc_alloc_init(ExtractFileOperation);
  [(ExtractFileOperation *)v11 setDestinationFilePath:v10];
  v12 = [v8 fileAttributes];

  [(ExtractFileOperation *)v11 setFileAttributes:v12];
  [(ExtractFileOperation *)v11 setShouldRunWithBackgroundPriority:1];
  [(ExtractFileOperation *)v11 setSourceFilePath:v9];
  [(ExtractFileOperation *)v11 setSourceFileType:0];
  v17 = 0;
  v13 = [(FinishDownloadStepOperation *)self runSubOperation:v11 returningError:&v17];
  v14 = v17;
  v15 = v14;
  if (v13)
  {
    v14 = v10;
    if (!a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  a4 = a5;
  if (a5)
  {
LABEL_5:
    *a4 = v14;
  }

LABEL_6:

  return v13;
}

- (BOOL)writeBinaryPropertyList:(id)a3 toPath:(id)a4 error:(id *)a5
{
  v7 = a4;
  v31 = 0;
  v8 = [NSPropertyListSerialization dataWithPropertyList:a3 format:200 options:0 error:&v31];
  v9 = v31;
  v10 = v9;
  if (v8)
  {
    v30 = v9;
    v11 = [v8 writeToFile:v7 options:1 error:&v30];
    v12 = v30;

    v13 = +[SSLogConfig sharedDaemonConfig];
    v14 = v13;
    if (v11)
    {
      if (!v13)
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

      if (v18)
      {
        v32 = 138412290;
        v33 = v7;
        LODWORD(v29) = 12;
        v19 = _os_log_send_and_compose_impl();

        if (!v19)
        {
LABEL_15:

          v20 = 1;
          goto LABEL_41;
        }

        v17 = [NSString stringWithCString:v19 encoding:4, &v32, v29];
        free(v19);
        SSFileLog();
      }

      goto LABEL_15;
    }

    if (!v13)
    {
      v14 = +[SSLogConfig sharedConfig];
    }

    v25 = [v14 shouldLog];
    if ([v14 shouldLogToDisk])
    {
      v25 |= 2u;
    }

    v22 = [v14 OSLogObject];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v25;
    }

    else
    {
      v26 = v25 & 2;
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

  v21 = [v14 shouldLog];
  if ([v14 shouldLogToDisk])
  {
    v21 |= 2u;
  }

  v22 = [v14 OSLogObject];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = v21;
  }

  else
  {
    v23 = v21 & 2;
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
    v22 = [NSString stringWithCString:v24 encoding:4, &v32, v29];
    free(v24);
    SSFileLog();
LABEL_37:
  }

LABEL_38:

  if (a5)
  {
    v27 = v12;
    v20 = 0;
    *a5 = v12;
  }

  else
  {
    v20 = 0;
  }

LABEL_41:

  return v20;
}

- (id)_newURLOperationWithAsset:(id)a3
{
  v4 = a3;
  v5 = [v4 sourceURLString];
  if (!v5)
  {
    v6 = 0;
    goto LABEL_7;
  }

  v6 = [[NSURL alloc] initWithString:v5];
  if (!v6)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_10;
  }

  v7 = [[SSMutableURLRequestProperties alloc] initWithURL:v6];
  [v7 setAllowedRetryCount:0];
  [v7 setRequiresExtendedValidationCertificates:0];
  if (([v4 isExternalAsset] & 1) != 0 || !-[FinishDownloadMemoryEntity isStoreDownload](self->_download, "isStoreDownload"))
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
  v12 = [v4 localPath];
  [v11 setLocalFilePath:v12];

  [v8 setDataProvider:v11];
LABEL_10:

  return v8;
}

@end
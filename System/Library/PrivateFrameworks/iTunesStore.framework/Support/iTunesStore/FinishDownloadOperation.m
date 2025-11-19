@interface FinishDownloadOperation
- (BOOL)_needsDRMOperationForDownloadKind:(id)a3;
- (FinishDownloadOperation)initWithDownloadIdentifier:(int64_t)a3 databaseSession:(id)a4;
- (NSString)handlerReleasedDownloadPhase;
- (NSString)initialDownloadPhase;
- (id)_downloadSessionPropertiesWithDownloadPhase:(id)a3;
- (id)_finishResult:(int64_t)a3;
- (id)_stepOperations;
- (id)outputBlock;
- (void)_sendProgressToDelegate:(id)a3;
- (void)operation:(id)a3 updatedProgress:(id)a4;
- (void)run;
- (void)setHandlerReleasedDownloadPhase:(id)a3;
- (void)setInitialDownloadPhase:(id)a3;
- (void)setOutputBlock:(id)a3;
- (void)stopWithFinishResult:(int64_t)a3;
@end

@implementation FinishDownloadOperation

- (FinishDownloadOperation)initWithDownloadIdentifier:(int64_t)a3 databaseSession:(id)a4
{
  v6 = a4;
  v20.receiver = self;
  v20.super_class = FinishDownloadOperation;
  v7 = [(FinishDownloadOperation *)&v20 init];
  if (v7)
  {
    v8 = [DownloadEntity alloc];
    v9 = [v6 database];
    v10 = [(DownloadEntity *)v8 initWithPersistentID:a3 inDatabase:v9];

    v11 = [FinishDownloadMemoryEntity alloc];
    v12 = +[FinishDownloadMemoryEntity defaultProperties];
    v13 = [(FinishDownloadMemoryEntity *)v11 initWithDatabaseEntity:v10 properties:v12];
    download = v7->_download;
    v7->_download = v13;

    [(FinishDownloadMemoryEntity *)v7->_download loadAssetsUsingSession:v6];
    v15 = [(DownloadEntity *)v10 copyStoreDownloadMetadata];
    v16 = [v15 sinfs];

    if (!v16)
    {
      v17 = [(FinishDownloadMemoryEntity *)v7->_download mediaAsset];
      v18 = [v17 SINFs];
      [v15 setSinfs:v18];
    }

    [(FinishDownloadMemoryEntity *)v7->_download setStoreMetadata:v15];
    v7->_stopResult = -1;
  }

  return v7;
}

- (NSString)handlerReleasedDownloadPhase
{
  [(FinishDownloadOperation *)self lock];
  v3 = [(NSString *)self->_handlerReleasedDownloadPhase copy];
  [(FinishDownloadOperation *)self unlock];

  return v3;
}

- (NSString)initialDownloadPhase
{
  [(FinishDownloadOperation *)self lock];
  v3 = [(NSString *)self->_initialDownloadPhase copy];
  [(FinishDownloadOperation *)self unlock];

  return v3;
}

- (id)outputBlock
{
  [(FinishDownloadOperation *)self lock];
  v3 = [self->_outputBlock copy];
  [(FinishDownloadOperation *)self unlock];
  v4 = objc_retainBlock(v3);

  return v4;
}

- (void)setHandlerReleasedDownloadPhase:(id)a3
{
  v6 = a3;
  [(FinishDownloadOperation *)self lock];
  if (self->_handlerReleasedDownloadPhase != v6)
  {
    v4 = [(NSString *)v6 copy];
    handlerReleasedDownloadPhase = self->_handlerReleasedDownloadPhase;
    self->_handlerReleasedDownloadPhase = v4;
  }

  [(FinishDownloadOperation *)self unlock];
}

- (void)setInitialDownloadPhase:(id)a3
{
  v6 = a3;
  [(FinishDownloadOperation *)self lock];
  if (self->_initialDownloadPhase != v6)
  {
    v4 = [(NSString *)v6 copy];
    initialDownloadPhase = self->_initialDownloadPhase;
    self->_initialDownloadPhase = v4;
  }

  [(FinishDownloadOperation *)self unlock];
}

- (void)setOutputBlock:(id)a3
{
  v6 = a3;
  [(FinishDownloadOperation *)self lock];
  if (self->_outputBlock != v6)
  {
    v4 = [v6 copy];
    outputBlock = self->_outputBlock;
    self->_outputBlock = v4;
  }

  [(FinishDownloadOperation *)self unlock];
}

- (void)stopWithFinishResult:(int64_t)a3
{
  [(FinishDownloadOperation *)self lock];
  self->_stopResult = a3;
  [(FinishDownloadOperation *)self unlock];

  [(FinishDownloadOperation *)self cancel];
}

- (void)run
{
  v33 = [(FinishDownloadMemoryEntity *)self->_download databaseID];
  v3 = [(FinishDownloadMemoryEntity *)self->_download transactionID];
  v31 = [(FinishDownloadOperation *)self _stepOperations];
  v4 = [[DownloadHandle alloc] initWithTransactionIdentifier:v3 downloadIdentifier:v33];
  v5 = objc_alloc_init(SSOperationProgress);
  v6 = OBJC_IVAR___ISOperation__progress;
  v7 = *&self->ISOperation_opaque[OBJC_IVAR___ISOperation__progress];
  *&self->ISOperation_opaque[OBJC_IVAR___ISOperation__progress] = v5;

  [*&self->ISOperation_opaque[v6] setCurrentValue:0];
  [*&self->ISOperation_opaque[v6] setMaxValue:1000000];
  v56[0] = SSDownloadPhaseProcessing;
  v56[1] = SSDownloadPhaseDataRestore;
  v56[2] = SSDownloadPhaseInstalling;
  v8 = [NSArray arrayWithObjects:v56 count:3];
  v9 = [(FinishDownloadOperation *)self handlerReleasedDownloadPhase];
  if (v9)
  {
    v10 = [v8 indexOfObject:v9];
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v32 = [(FinishDownloadOperation *)self initialDownloadPhase];
  if (v32)
  {
    v11 = [v8 indexOfObject:?];
  }

  else
  {
    v11 = 0;
  }

  v12 = +[DownloadsDatabase downloadsDatabase];
  v13 = [(FinishDownloadMemoryEntity *)self->_download valueForProperty:@"kind"];
  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x2020000000;
  v51[3] = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = sub_1001EDE98;
  v49 = sub_1001EDEA8;
  v50 = 0;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1001EDEB0;
  v34[3] = &unk_10032BFE0;
  v42 = v11;
  v43 = v10;
  v30 = v8;
  v35 = v30;
  v36 = self;
  v40 = &v45;
  v29 = v4;
  v37 = v29;
  v44 = v33;
  v14 = v12;
  v38 = v14;
  v15 = v13;
  v39 = v15;
  v41 = v51;
  [v31 enumerateObjectsUsingBlock:v34];
  v16 = [(FinishDownloadOperation *)self outputBlock];
  v17 = v16;
  if (v16)
  {
    (*(v16 + 16))(v16, self, v46[5]);
    [(FinishDownloadOperation *)self setOutputBlock:0];
  }

  v18 = +[SSLogConfig sharedDaemonConfig];
  if (!v18)
  {
    v18 = +[SSLogConfig sharedConfig];
  }

  v19 = [v18 shouldLog];
  v20 = [v18 shouldLogToDisk];
  v21 = [v18 OSLogObject];
  v22 = v21;
  if (v20)
  {
    v23 = v19 | 2;
  }

  else
  {
    v23 = v19;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v24 = v23;
  }

  else
  {
    v24 = v23 & 2;
  }

  if (!v24)
  {
    goto LABEL_20;
  }

  v25 = -[FinishDownloadOperation _finishResult:](self, "_finishResult:", [v46[5] result]);
  v52 = 134218242;
  v53 = v33;
  v54 = 2112;
  v55 = v25;
  LODWORD(v27) = 22;
  v26 = _os_log_send_and_compose_impl();

  if (v26)
  {
    v22 = [NSString stringWithCString:v26 encoding:4, &v52, v27];
    free(v26);
    SSFileLog();
LABEL_20:
  }

  objc_opt_class();
  v28 = -[FinishDownloadOperation _finishResult:](self, "_finishResult:", [v46[5] result]);
  SSDebugLog();

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(v51, 8);
}

- (void)operation:(id)a3 updatedProgress:(id)a4
{
  v12 = a4;
  [a3 progressFraction];
  v7 = v6;
  if (v6 > 2.22044605e-16)
  {
    v8 = [v12 currentValue];
    v9 = v8 / [v12 maxValue];
    v10 = OBJC_IVAR___ISOperation__progress;
    v11 = [*&self->ISOperation_opaque[OBJC_IVAR___ISOperation__progress] copy];
    [v11 setCurrentValue:{(objc_msgSend(*&self->ISOperation_opaque[v10], "currentValue") + v7 * v9 * objc_msgSend(*&self->ISOperation_opaque[v10], "maxValue"))}];
    [(FinishDownloadOperation *)self _sendProgressToDelegate:v11];
  }
}

- (id)_downloadSessionPropertiesWithDownloadPhase:(id)a3
{
  v4 = a3;
  v5 = [DownloadSessionProperties alloc];
  v6 = [(FinishDownloadMemoryEntity *)self->_download clientIdentifier];
  v7 = [(FinishDownloadMemoryEntity *)self->_download handlerIdentifier];
  v8 = -[DownloadSessionProperties initWithClientIdentifier:handlerIdentifier:](v5, "initWithClientIdentifier:handlerIdentifier:", v6, [v7 longLongValue]);

  v9 = [(FinishDownloadMemoryEntity *)self->_download mediaAsset];
  -[DownloadSessionProperties setAssetIdentifier:](v8, "setAssetIdentifier:", [v9 databaseID]);

  [(DownloadSessionProperties *)v8 setDownloadIdentifier:[(FinishDownloadMemoryEntity *)self->_download databaseID]];
  [(DownloadSessionProperties *)v8 setDownloadPhase:v4];

  return v8;
}

- (BOOL)_needsDRMOperationForDownloadKind:(id)a3
{
  v3 = a3;
  if (SSDownloadKindIsMediaKind() & 1) != 0 || (SSDownloadKindIsEBookKind() & 1) != 0 || (SSDownloadKindIsToneKind())
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:SSDownloadKindInAppContent];
  }

  return v4;
}

- (void)_sendProgressToDelegate:(id)a3
{
  v5 = a3;
  v4 = [(FinishDownloadOperation *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 operation:self updatedProgress:v5];
  }
}

- (id)_finishResult:(int64_t)a3
{
  if (a3 > 7)
  {
    return @"Unknown";
  }

  else
  {
    return off_10032C000[a3];
  }
}

- (id)_stepOperations
{
  v3 = +[NSMutableArray array];
  v4 = [(FinishDownloadMemoryEntity *)self->_download downloadKind];
  v5 = [(FinishDownloadMemoryEntity *)self->_download mediaAsset];
  if ([v5 isDRMFree])
  {
    v6 = 1;
  }

  else
  {
    v7 = [v5 DPInfoData];
    v6 = v7 != 0;
  }

  v8 = +[NSMutableArray array];
  if ([(FinishDownloadMemoryEntity *)self->_download isRestoreDownload]&& [(FinishDownloadMemoryEntity *)self->_download hasRestoreData]&& SSDownloadKindIsSoftwareKind())
  {
    v9 = [(FinishDownloadStepOperation *)[RestoreDownloadDataOperation alloc] initWithDownload:self->_download];
    [(FinishDownloadStepOperation *)v9 setDownloadPhase:SSDownloadPhaseDataRestore];
  }

  else
  {
    v9 = 0;
  }

  v34 = v4;
  v35 = v3;
  if ([(FinishDownloadMemoryEntity *)self->_download restoreState]== 1)
  {
    if (!v9)
    {
      v10 = 0;
      v11 = 0;
      goto LABEL_33;
    }

    [v3 addObject:v9];
    [v8 addObject:@"Restore Data Hard Fail"];
    v10 = 0;
    v11 = 0;
    goto LABEL_31;
  }

  if (v6 || [(FinishDownloadMemoryEntity *)self->_download isStoreDownload]&& [(FinishDownloadOperation *)self _needsDRMOperationForDownloadKind:v4])
  {
    v12 = +[ApplicationWorkspace defaultWorkspace];
    if ([v12 isMultiUser])
    {
      v13 = [(FinishDownloadMemoryEntity *)self->_download isSharedDownload];

      if (!v13)
      {
        goto LABEL_28;
      }

      v12 = +[EBookManifest sharedPurchasedBookManifest];
      v32 = [(FinishDownloadMemoryEntity *)self->_download valueForProperty:@"store_publication_version"];
      v33 = [(FinishDownloadMemoryEntity *)self->_download valueForProperty:@"store_item_id"];
      v14 = [(FinishDownloadMemoryEntity *)self->_download valueForProperty:@"download_permalink"];
      v15 = [(FinishDownloadMemoryEntity *)self->_download valueForProperty:@"is_from_store"];
      v16 = [v15 BOOLValue];

      if (v16)
      {
        v17 = v32;
        v18 = [v12 bookPathForAdamID:v33 withPublicationVersion:v32];
        goto LABEL_23;
      }

      v17 = v32;
      if ([v14 length])
      {
        v18 = [v12 bookPathPermalink:v14];
LABEL_23:
        v19 = v18;

        v3 = v35;
        if (v19)
        {
          goto LABEL_24;
        }

LABEL_28:
        v10 = [(FinishDownloadStepOperation *)[DownloadDRMOperation alloc] initWithDownload:self->_download];
        [(FinishDownloadStepOperation *)v10 setDownloadPhase:SSDownloadPhaseProcessing];
        [v3 addObject:v10];
        [v8 addObject:@"DRM"];
        if (!v9)
        {
          goto LABEL_30;
        }

        goto LABEL_29;
      }

      v3 = v35;
    }

    goto LABEL_28;
  }

LABEL_24:
  v10 = 0;
  if (v9)
  {
LABEL_29:
    [v3 addObject:v9];
    [v8 addObject:@"Restore Data"];
  }

LABEL_30:
  v11 = [(FinishDownloadStepOperation *)[InstallDownloadOperation alloc] initWithDownload:self->_download];
  [(FinishDownloadStepOperation *)v11 setDownloadPhase:SSDownloadPhaseInstalling];
  [v3 addObject:v11];
  [v8 addObject:@"Install"];
  if (v9)
  {
LABEL_31:
    v20 = 1.0;
    v21 = v9;
LABEL_32:
    [v21 setProgressFraction:v20];
    goto LABEL_33;
  }

  if (v10 && v11)
  {
    [(FinishDownloadStepOperation *)v10 setProgressFraction:1.0];
    if (v6)
    {
      [(FinishDownloadStepOperation *)v10 setProgressFraction:0.5];
      v20 = 0.5;
      v21 = v11;
      goto LABEL_32;
    }
  }

  else
  {
    if (v10)
    {
      v20 = 1.0;
      v21 = v10;
      goto LABEL_32;
    }

    if (v11)
    {
      [(FinishDownloadStepOperation *)v11 setProgressFraction:1.0];
    }

    v10 = 0;
  }

LABEL_33:
  v22 = +[SSLogConfig sharedDaemonConfig];
  if (!v22)
  {
    v22 = +[SSLogConfig sharedConfig];
  }

  v23 = [v22 shouldLog];
  if ([v22 shouldLogToDisk])
  {
    v24 = v23 | 2;
  }

  else
  {
    v24 = v23;
  }

  v25 = [v22 OSLogObject];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = v24;
  }

  else
  {
    v26 = v24 & 2;
  }

  if (v26)
  {
    v27 = [(FinishDownloadOperation *)self downloadIdentifier];
    [v8 componentsJoinedByString:{@", "}];
    v36 = 134218242;
    v37 = v27;
    v39 = v38 = 2112;
    LODWORD(v31) = 22;
    v28 = _os_log_send_and_compose_impl();

    if (v28)
    {
      v29 = [NSString stringWithCString:v28 encoding:4, &v36, v31];
      free(v28);
      SSFileLog();
    }
  }

  else
  {
  }

  return v35;
}

@end
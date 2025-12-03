@interface FinishDownloadOperation
- (BOOL)_needsDRMOperationForDownloadKind:(id)kind;
- (FinishDownloadOperation)initWithDownloadIdentifier:(int64_t)identifier databaseSession:(id)session;
- (NSString)handlerReleasedDownloadPhase;
- (NSString)initialDownloadPhase;
- (id)_downloadSessionPropertiesWithDownloadPhase:(id)phase;
- (id)_finishResult:(int64_t)result;
- (id)_stepOperations;
- (id)outputBlock;
- (void)_sendProgressToDelegate:(id)delegate;
- (void)operation:(id)operation updatedProgress:(id)progress;
- (void)run;
- (void)setHandlerReleasedDownloadPhase:(id)phase;
- (void)setInitialDownloadPhase:(id)phase;
- (void)setOutputBlock:(id)block;
- (void)stopWithFinishResult:(int64_t)result;
@end

@implementation FinishDownloadOperation

- (FinishDownloadOperation)initWithDownloadIdentifier:(int64_t)identifier databaseSession:(id)session
{
  sessionCopy = session;
  v20.receiver = self;
  v20.super_class = FinishDownloadOperation;
  v7 = [(FinishDownloadOperation *)&v20 init];
  if (v7)
  {
    v8 = [DownloadEntity alloc];
    database = [sessionCopy database];
    v10 = [(DownloadEntity *)v8 initWithPersistentID:identifier inDatabase:database];

    v11 = [FinishDownloadMemoryEntity alloc];
    v12 = +[FinishDownloadMemoryEntity defaultProperties];
    v13 = [(FinishDownloadMemoryEntity *)v11 initWithDatabaseEntity:v10 properties:v12];
    download = v7->_download;
    v7->_download = v13;

    [(FinishDownloadMemoryEntity *)v7->_download loadAssetsUsingSession:sessionCopy];
    copyStoreDownloadMetadata = [(DownloadEntity *)v10 copyStoreDownloadMetadata];
    sinfs = [copyStoreDownloadMetadata sinfs];

    if (!sinfs)
    {
      mediaAsset = [(FinishDownloadMemoryEntity *)v7->_download mediaAsset];
      sINFs = [mediaAsset SINFs];
      [copyStoreDownloadMetadata setSinfs:sINFs];
    }

    [(FinishDownloadMemoryEntity *)v7->_download setStoreMetadata:copyStoreDownloadMetadata];
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

- (void)setHandlerReleasedDownloadPhase:(id)phase
{
  phaseCopy = phase;
  [(FinishDownloadOperation *)self lock];
  if (self->_handlerReleasedDownloadPhase != phaseCopy)
  {
    v4 = [(NSString *)phaseCopy copy];
    handlerReleasedDownloadPhase = self->_handlerReleasedDownloadPhase;
    self->_handlerReleasedDownloadPhase = v4;
  }

  [(FinishDownloadOperation *)self unlock];
}

- (void)setInitialDownloadPhase:(id)phase
{
  phaseCopy = phase;
  [(FinishDownloadOperation *)self lock];
  if (self->_initialDownloadPhase != phaseCopy)
  {
    v4 = [(NSString *)phaseCopy copy];
    initialDownloadPhase = self->_initialDownloadPhase;
    self->_initialDownloadPhase = v4;
  }

  [(FinishDownloadOperation *)self unlock];
}

- (void)setOutputBlock:(id)block
{
  blockCopy = block;
  [(FinishDownloadOperation *)self lock];
  if (self->_outputBlock != blockCopy)
  {
    v4 = [blockCopy copy];
    outputBlock = self->_outputBlock;
    self->_outputBlock = v4;
  }

  [(FinishDownloadOperation *)self unlock];
}

- (void)stopWithFinishResult:(int64_t)result
{
  [(FinishDownloadOperation *)self lock];
  self->_stopResult = result;
  [(FinishDownloadOperation *)self unlock];

  [(FinishDownloadOperation *)self cancel];
}

- (void)run
{
  databaseID = [(FinishDownloadMemoryEntity *)self->_download databaseID];
  transactionID = [(FinishDownloadMemoryEntity *)self->_download transactionID];
  _stepOperations = [(FinishDownloadOperation *)self _stepOperations];
  v4 = [[DownloadHandle alloc] initWithTransactionIdentifier:transactionID downloadIdentifier:databaseID];
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
  handlerReleasedDownloadPhase = [(FinishDownloadOperation *)self handlerReleasedDownloadPhase];
  if (handlerReleasedDownloadPhase)
  {
    v10 = [v8 indexOfObject:handlerReleasedDownloadPhase];
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  initialDownloadPhase = [(FinishDownloadOperation *)self initialDownloadPhase];
  if (initialDownloadPhase)
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
  selfCopy = self;
  v40 = &v45;
  v29 = v4;
  v37 = v29;
  v44 = databaseID;
  v14 = v12;
  v38 = v14;
  v15 = v13;
  v39 = v15;
  v41 = v51;
  [_stepOperations enumerateObjectsUsingBlock:v34];
  outputBlock = [(FinishDownloadOperation *)self outputBlock];
  v17 = outputBlock;
  if (outputBlock)
  {
    (*(outputBlock + 16))(outputBlock, self, v46[5]);
    [(FinishDownloadOperation *)self setOutputBlock:0];
  }

  v18 = +[SSLogConfig sharedDaemonConfig];
  if (!v18)
  {
    v18 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v18 shouldLog];
  shouldLogToDisk = [v18 shouldLogToDisk];
  oSLogObject = [v18 OSLogObject];
  v22 = oSLogObject;
  if (shouldLogToDisk)
  {
    v23 = shouldLog | 2;
  }

  else
  {
    v23 = shouldLog;
  }

  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
  v53 = databaseID;
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

- (void)operation:(id)operation updatedProgress:(id)progress
{
  progressCopy = progress;
  [operation progressFraction];
  v7 = v6;
  if (v6 > 2.22044605e-16)
  {
    currentValue = [progressCopy currentValue];
    v9 = currentValue / [progressCopy maxValue];
    v10 = OBJC_IVAR___ISOperation__progress;
    v11 = [*&self->ISOperation_opaque[OBJC_IVAR___ISOperation__progress] copy];
    [v11 setCurrentValue:{(objc_msgSend(*&self->ISOperation_opaque[v10], "currentValue") + v7 * v9 * objc_msgSend(*&self->ISOperation_opaque[v10], "maxValue"))}];
    [(FinishDownloadOperation *)self _sendProgressToDelegate:v11];
  }
}

- (id)_downloadSessionPropertiesWithDownloadPhase:(id)phase
{
  phaseCopy = phase;
  v5 = [DownloadSessionProperties alloc];
  clientIdentifier = [(FinishDownloadMemoryEntity *)self->_download clientIdentifier];
  handlerIdentifier = [(FinishDownloadMemoryEntity *)self->_download handlerIdentifier];
  v8 = -[DownloadSessionProperties initWithClientIdentifier:handlerIdentifier:](v5, "initWithClientIdentifier:handlerIdentifier:", clientIdentifier, [handlerIdentifier longLongValue]);

  mediaAsset = [(FinishDownloadMemoryEntity *)self->_download mediaAsset];
  -[DownloadSessionProperties setAssetIdentifier:](v8, "setAssetIdentifier:", [mediaAsset databaseID]);

  [(DownloadSessionProperties *)v8 setDownloadIdentifier:[(FinishDownloadMemoryEntity *)self->_download databaseID]];
  [(DownloadSessionProperties *)v8 setDownloadPhase:phaseCopy];

  return v8;
}

- (BOOL)_needsDRMOperationForDownloadKind:(id)kind
{
  kindCopy = kind;
  if (SSDownloadKindIsMediaKind() & 1) != 0 || (SSDownloadKindIsEBookKind() & 1) != 0 || (SSDownloadKindIsToneKind())
  {
    v4 = 1;
  }

  else
  {
    v4 = [kindCopy isEqualToString:SSDownloadKindInAppContent];
  }

  return v4;
}

- (void)_sendProgressToDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegate = [(FinishDownloadOperation *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate operation:self updatedProgress:delegateCopy];
  }
}

- (id)_finishResult:(int64_t)result
{
  if (result > 7)
  {
    return @"Unknown";
  }

  else
  {
    return off_10032C000[result];
  }
}

- (id)_stepOperations
{
  v3 = +[NSMutableArray array];
  downloadKind = [(FinishDownloadMemoryEntity *)self->_download downloadKind];
  mediaAsset = [(FinishDownloadMemoryEntity *)self->_download mediaAsset];
  if ([mediaAsset isDRMFree])
  {
    v6 = 1;
  }

  else
  {
    dPInfoData = [mediaAsset DPInfoData];
    v6 = dPInfoData != 0;
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

  v34 = downloadKind;
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

  if (v6 || [(FinishDownloadMemoryEntity *)self->_download isStoreDownload]&& [(FinishDownloadOperation *)self _needsDRMOperationForDownloadKind:downloadKind])
  {
    v12 = +[ApplicationWorkspace defaultWorkspace];
    if ([v12 isMultiUser])
    {
      isSharedDownload = [(FinishDownloadMemoryEntity *)self->_download isSharedDownload];

      if (!isSharedDownload)
      {
        goto LABEL_28;
      }

      v12 = +[EBookManifest sharedPurchasedBookManifest];
      v32 = [(FinishDownloadMemoryEntity *)self->_download valueForProperty:@"store_publication_version"];
      v33 = [(FinishDownloadMemoryEntity *)self->_download valueForProperty:@"store_item_id"];
      v14 = [(FinishDownloadMemoryEntity *)self->_download valueForProperty:@"download_permalink"];
      v15 = [(FinishDownloadMemoryEntity *)self->_download valueForProperty:@"is_from_store"];
      bOOLValue = [v15 BOOLValue];

      if (bOOLValue)
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

  shouldLog = [v22 shouldLog];
  if ([v22 shouldLogToDisk])
  {
    v24 = shouldLog | 2;
  }

  else
  {
    v24 = shouldLog;
  }

  oSLogObject = [v22 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v26 = v24;
  }

  else
  {
    v26 = v24 & 2;
  }

  if (v26)
  {
    downloadIdentifier = [(FinishDownloadOperation *)self downloadIdentifier];
    [v8 componentsJoinedByString:{@", "}];
    v36 = 134218242;
    v37 = downloadIdentifier;
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
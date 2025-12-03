@interface BRCSyncContext
+ (id)_contextIdentifierForMangledID:(id)d metadata:(BOOL)metadata;
+ (id)_createCKContainerForAccountID:(id)d contextIdentifier:(id)identifier;
+ (id)transferContextForServerZone:(id)zone appLibrary:(id)library;
- (BOOL)_cancelBgSystemTaskIfNeededForCKOperation:(id)operation;
- (BOOL)allowsCellularAccess;
- (BOOL)isForeground;
- (BRCSyncContext)initWithSession:(id)session contextIdentifier:(id)identifier isShared:(BOOL)shared;
- (BRCUserDefaults)defaults;
- (CKContainer)ckContainer;
- (id)_buildBGSystemTaskIdentifierForCKOperation:(id)operation;
- (id)_database;
- (id)allDownloadOperations;
- (id)description;
- (id)downloadStreamForKind:(int)kind;
- (id)foregroundClients;
- (int64_t)numberOfSubmittedBGSystemTasks;
- (void)_addCKOperationToCKDatabaseQueue:(id)queue allowsCellularAccess:(id)access ckDatabase:(id)database asCompletionOf:(id)of;
- (void)_addOperation:(id)operation toDatabase:(id)database;
- (void)_armForegroundGraceTimerForClientDescription:(id)description;
- (void)_cancelBGSystemTasks;
- (void)_cancelOperation:(id)operation underlyingError:(id)error;
- (void)_notifyContainerBeingNowForeground;
- (void)_notifyFrameworkContainersMonitorWithState:(BOOL)state;
- (void)_preventConcurrentModifyRecordsOperations:(id)operations nonDiscretionary:(BOOL)discretionary;
- (void)_resumeAllDownloadStreams;
- (void)_setupBGSystemTaskCompletionFor:(id)for;
- (void)_setupCKOperationConfiguration:(id)configuration allowsCellularAccess:(id)access nonDiscretionary:(id)discretionary;
- (void)_updateWifiOnlyBGSystemTaskWithCancelledTaskIdentifiers:(id)identifiers inexpensiveNetworkConnectivity:(BOOL)connectivity;
- (void)addForegroundClient:(id)client;
- (void)addOperation:(id)operation allowsCellularAccess:(id)access nonDiscretionary:(id)discretionary asCompletionOf:(id)of;
- (void)cancel;
- (void)cancelWiFiOnlyOperationsIfNeeded;
- (void)close;
- (void)dealloc;
- (void)didReceiveHandoffRequest;
- (void)dumpToContext:(id)context;
- (void)forceContainerForegroundForDuration:(double)duration;
- (void)removeForegroundClient:(id)client;
- (void)resume;
- (void)setupIfNeeded;
- (void)signalAllDownloadStreams;
@end

@implementation BRCSyncContext

- (BOOL)allowsCellularAccess
{
  v2 = +[BRCContainerCellularSettings containerCellularSettings];
  isCellularEnabled = [v2 isCellularEnabled];

  return isCellularEnabled;
}

- (BOOL)isForeground
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_foregroundState || [(NSMutableSet *)selfCopy->_foregroundClients count]|| selfCopy->_timerForGraceForegroundPeriod != 0;
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)_database
{
  isShared = self->_isShared;
  ckContainer = self->_ckContainer;
  if (isShared)
  {
    [(CKContainer *)ckContainer sharedCloudDatabase];
  }

  else
  {
    [(CKContainer *)ckContainer privateCloudDatabase];
  }
  v4 = ;

  return v4;
}

- (BRCUserDefaults)defaults
{
  if (self->_isShared)
  {
    v2 = +[BRCUserDefaults defaultsForSharedZone];
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x277CFAE60]) initWithAppLibraryName:self->_contextIdentifier];
    v2 = [BRCUserDefaults defaultsForMangledID:v3];
  }

  return v2;
}

- (void)setupIfNeeded
{
  if (!self->_ckContainer)
  {
    clientDB = [(BRCAccountSession *)self->_session clientDB];
    serialQueue = [clientDB serialQueue];

    if (serialQueue)
    {
      clientDB2 = [(BRCAccountSession *)self->_session clientDB];
      serialQueue2 = [clientDB2 serialQueue];
      dispatch_assert_queue_not_V2(serialQueue2);
    }

    mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
    br_currentPersonaID = [mEMORY[0x277D77BF8] br_currentPersonaID];
    personaIdentifier = [(BRCAccountSession *)self->_session personaIdentifier];
    v10 = [br_currentPersonaID isEqualToString:personaIdentifier];

    if ((v10 & 1) == 0)
    {
      [BRCSyncContext setupIfNeeded];
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!self->_ckContainer)
    {
      accountHandler = [(BRCAccountSession *)self->_session accountHandler];
      acAccountID = [accountHandler acAccountID];
      v14 = [BRCSyncContext _createCKContainerForAccountID:acAccountID contextIdentifier:selfCopy->_contextIdentifier];
      ckContainer = self->_ckContainer;
      self->_ckContainer = v14;
    }

    objc_sync_exit(selfCopy);
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  contextIdentifier = self->_contextIdentifier;
  isForeground = [(BRCSyncContext *)self isForeground];
  v7 = @"background";
  if (isForeground)
  {
    v7 = @"foreground";
  }

  return [v3 stringWithFormat:@"<%@: %@ %p %@>", v4, contextIdentifier, self, v7];
}

+ (id)_contextIdentifierForMangledID:(id)d metadata:(BOOL)metadata
{
  metadataCopy = metadata;
  dCopy = d;
  if ([dCopy isShared])
  {
    if (metadataCopy)
    {
      aliasTargetContainerString = *MEMORY[0x277CFADA8];
    }

    else
    {
      aliasTargetContainerString = [dCopy aliasTargetContainerString];
    }
  }

  else
  {
    if (metadataCopy && [dCopy isCloudDocsMangledID])
    {
      v7 = MEMORY[0x277CCACA8];
      appLibraryOrZoneName = [dCopy appLibraryOrZoneName];
      v9 = [v7 stringWithFormat:@"%@-metadata", appLibraryOrZoneName];

      goto LABEL_10;
    }

    aliasTargetContainerString = [dCopy appLibraryOrZoneName];
  }

  v9 = aliasTargetContainerString;
LABEL_10:

  return v9;
}

+ (id)transferContextForServerZone:(id)zone appLibrary:(id)library
{
  zoneCopy = zone;
  libraryCopy = library;
  if ([zoneCopy isSharedZone])
  {
    asSharedZone = [zoneCopy asSharedZone];
    transferSyncContext = [asSharedZone transferSyncContext];
  }

  else
  {
    transferSyncContext = [libraryCopy transferSyncContext];
  }

  return transferSyncContext;
}

- (BRCSyncContext)initWithSession:(id)session contextIdentifier:(id)identifier isShared:(BOOL)shared
{
  v112[4] = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  identifierCopy = identifier;
  v94 = sessionCopy;
  fsUploader = [sessionCopy fsUploader];
  uploadsDeadlineScheduler = [fsUploader uploadsDeadlineScheduler];

  if (!uploadsDeadlineScheduler)
  {
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [BRCSyncContext initWithSession:sessionCopy contextIdentifier:? isShared:?];
    }
  }

  fsDownloader = [sessionCopy fsDownloader];
  downloadsDeadlineScheduler = [fsDownloader downloadsDeadlineScheduler];
  v16 = downloadsDeadlineScheduler == 0;

  if (v16)
  {
    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      [BRCSyncContext initWithSession:v94 contextIdentifier:? isShared:?];
    }
  }

  v110.receiver = self;
  v110.super_class = BRCSyncContext;
  v19 = [(BRCSyncContext *)&v110 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_session, session);
    objc_storeStrong(&v20->_contextIdentifier, identifier);
    v20->_isShared = shared;
    defaults = [(BRCSyncContext *)v20 defaults];
    v22 = [BRCThrottleBase alloc];
    readerThrottleParams = [defaults readerThrottleParams];
    v24 = [(BRCThrottleBase *)v22 initWithName:@"fsreader.coordination.throttle" andParameters:readerThrottleParams];
    readerThrottle = v20->_readerThrottle;
    v20->_readerThrottle = v24;

    v26 = [BRCThrottleBase alloc];
    applyThrottleParams = [defaults applyThrottleParams];
    v28 = [(BRCThrottleBase *)v26 initWithName:@"fswriter.apply.throttle" andParameters:applyThrottleParams];
    applyThrottle = v20->_applyThrottle;
    v20->_applyThrottle = v28;

    v30 = [BRCThrottleBase alloc];
    downloadThrottleParams = [defaults downloadThrottleParams];
    v32 = [(BRCThrottleBase *)v30 initWithName:@"transfer.download.throttle" andParameters:downloadThrottleParams];
    downloadThrottle = v20->_downloadThrottle;
    v20->_downloadThrottle = v32;

    v34 = [BRCThrottleBase alloc];
    uploadThrottleParams = [defaults uploadThrottleParams];
    v36 = [(BRCThrottleBase *)v34 initWithName:@"transfer.upload.throttle" andParameters:uploadThrottleParams];
    uploadThrottle = v20->_uploadThrottle;
    v20->_uploadThrottle = v36;

    v38 = [BRCThrottleBase alloc];
    uploadFileModifiedThrottleParams = [defaults uploadFileModifiedThrottleParams];
    v40 = [(BRCThrottleBase *)v38 initWithName:@"transfer.upload.file-modified.throttle" andParameters:uploadFileModifiedThrottleParams];
    uploadFileModifiedThrottle = v20->_uploadFileModifiedThrottle;
    v20->_uploadFileModifiedThrottle = v40;

    v42 = [BRCThrottleBase alloc];
    perItemSyncUpThrottleParams = [defaults perItemSyncUpThrottleParams];
    v44 = [(BRCThrottleBase *)v42 initWithName:@"transfer.upload.throttle" andParameters:perItemSyncUpThrottleParams];
    perItemSyncUpThrottle = v20->_perItemSyncUpThrottle;
    v20->_perItemSyncUpThrottle = v44;

    v46 = objc_alloc_init(MEMORY[0x277CCABD8]);
    discretionaryRecursiveListOperationQueue = v20->_discretionaryRecursiveListOperationQueue;
    v20->_discretionaryRecursiveListOperationQueue = v46;

    -[NSOperationQueue setMaxConcurrentOperationCount:](v20->_discretionaryRecursiveListOperationQueue, "setMaxConcurrentOperationCount:", [defaults discretionaryRecursiveListMaxOperationCount]);
    v48 = objc_alloc_init(MEMORY[0x277CCABD8]);
    nonDiscretionaryRecursiveListOperationQueue = v20->_nonDiscretionaryRecursiveListOperationQueue;
    v20->_nonDiscretionaryRecursiveListOperationQueue = v48;

    -[NSOperationQueue setMaxConcurrentOperationCount:](v20->_nonDiscretionaryRecursiveListOperationQueue, "setMaxConcurrentOperationCount:", [defaults nonDiscretionaryRecursiveListMaxOperationCount]);
    v50 = objc_opt_new();
    submittedBGSystemTaskIdentifiers = v20->_submittedBGSystemTaskIdentifiers;
    v20->_submittedBGSystemTaskIdentifiers = v50;

    objc_initWeak(&location, v20);
    v52 = [(NSString *)v20->_contextIdentifier stringByAppendingPathComponent:@"uploader"];
    v53 = [BRCTransferStream alloc];
    fsUploader2 = [(BRCAccountSession *)v20->_session fsUploader];
    uploadsDeadlineScheduler2 = [fsUploader2 uploadsDeadlineScheduler];
    v56 = -[BRCTransferStream initWithSyncContext:name:scheduler:maxCountOfBatchesInFlight:](v53, "initWithSyncContext:name:scheduler:maxCountOfBatchesInFlight:", v20, v52, uploadsDeadlineScheduler2, [defaults uploadBatchCount]);
    uploadStream = v20->_uploadStream;
    v20->_uploadStream = v56;

    v105[0] = MEMORY[0x277D85DD0];
    v105[1] = 3221225472;
    v105[2] = __61__BRCSyncContext_initWithSession_contextIdentifier_isShared___block_invoke;
    v105[3] = &unk_278507890;
    objc_copyWeak(&v108, &location);
    v58 = defaults;
    v106 = v58;
    v59 = v94;
    v107 = v59;
    [(BRCTransferStream *)v20->_uploadStream setStreamDidBecomeReadyToTransferRecords:v105];
    v101[0] = MEMORY[0x277D85DD0];
    v101[1] = 3221225472;
    v101[2] = __61__BRCSyncContext_initWithSession_contextIdentifier_isShared___block_invoke_49;
    v101[3] = &unk_2785078B8;
    objc_copyWeak(&v104, &location);
    v93 = v58;
    v102 = v93;
    v103 = v59;
    v60 = MEMORY[0x22AA4A310](v101);
    v61 = [(NSString *)v20->_contextIdentifier stringByAppendingPathComponent:@"downloader"];

    v62 = [BRCTransferStream alloc];
    fsDownloader2 = [(BRCAccountSession *)v20->_session fsDownloader];
    downloadsDeadlineScheduler2 = [fsDownloader2 downloadsDeadlineScheduler];
    v65 = -[BRCTransferStream initWithSyncContext:name:scheduler:maxCountOfBatchesInFlight:](v62, "initWithSyncContext:name:scheduler:maxCountOfBatchesInFlight:", v20, v61, downloadsDeadlineScheduler2, [v93 downloadBatchCount]);

    v66 = objc_opt_new();
    [v66 addIndex:0];
    [v66 addIndex:1];
    [v66 addIndex:2];
    v98[0] = MEMORY[0x277D85DD0];
    v98[1] = 3221225472;
    v98[2] = __61__BRCSyncContext_initWithSession_contextIdentifier_isShared___block_invoke_55;
    v98[3] = &unk_2785078E0;
    v67 = v60;
    v100 = v67;
    v68 = v66;
    v99 = v68;
    [(BRCTransferStream *)v65 setStreamDidBecomeReadyToTransferRecords:v98];
    v69 = [(NSString *)v20->_contextIdentifier stringByAppendingPathComponent:@"speculative-downloader"];

    v70 = [BRCTransferStream alloc];
    fsDownloader3 = [(BRCAccountSession *)v20->_session fsDownloader];
    downloadsDeadlineScheduler3 = [fsDownloader3 downloadsDeadlineScheduler];
    v73 = -[BRCTransferStream initWithSyncContext:name:scheduler:maxCountOfBatchesInFlight:](v70, "initWithSyncContext:name:scheduler:maxCountOfBatchesInFlight:", v20, v69, downloadsDeadlineScheduler3, [v93 downloadBatchCount]);

    v74 = objc_opt_new();
    [v74 addIndex:3];
    v95[0] = MEMORY[0x277D85DD0];
    v95[1] = 3221225472;
    v95[2] = __61__BRCSyncContext_initWithSession_contextIdentifier_isShared___block_invoke_2;
    v95[3] = &unk_2785078E0;
    v75 = v67;
    v97 = v75;
    v76 = v74;
    v96 = v76;
    [(BRCTransferStream *)v73 setStreamDidBecomeReadyToTransferRecords:v95];
    v111[0] = &unk_2837B0520;
    v111[1] = &unk_2837B0538;
    v112[0] = v65;
    v112[1] = v65;
    v111[2] = &unk_2837B0550;
    v111[3] = &unk_2837B0568;
    v112[2] = v65;
    v112[3] = v73;
    v77 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v112 forKeys:v111 count:4];
    downloadKindToDownloadStream = v20->_downloadKindToDownloadStream;
    v20->_downloadKindToDownloadStream = v77;

    v20->_notifyTokenForFramework = -1;
    v79 = objc_alloc_init(MEMORY[0x277CBEB58]);
    foregroundClients = v20->_foregroundClients;
    v20->_foregroundClients = v79;

    v81 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    dispatch_queue_attr_make_with_autorelease_frequency(v81, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v83 = v82 = v69;
    v84 = dispatch_queue_create("com.apple.bird.foreground.state", v83);

    foregroundStateQueue = v20->_foregroundStateQueue;
    v20->_foregroundStateQueue = v84;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    nonDiscretionaryModifyOperations = v20->_nonDiscretionaryModifyOperations;
    v20->_nonDiscretionaryModifyOperations = weakObjectsHashTable;

    weakObjectsHashTable2 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    discretionaryModifyOperations = v20->_discretionaryModifyOperations;
    v20->_discretionaryModifyOperations = weakObjectsHashTable2;

    objc_destroyWeak(&v104);
    objc_destroyWeak(&v108);

    objc_destroyWeak(&location);
  }

  v90 = *MEMORY[0x277D85DE8];
  return v20;
}

void __61__BRCSyncContext_initWithSession_contextIdentifier_isShared___block_invoke(id *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v9 = [a1[4] uploadBatchRecordsCount];
  memset(v16, 0, sizeof(v16));
  __brc_create_section(0, "[BRCSyncContext initWithSession:contextIdentifier:isShared:]_block_invoke", 235, 0, v16);
  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v14 = v16[0];
    v15 = [BRCDumpContext stringFromByteCount:a2 context:0];
    *buf = 134219266;
    v18 = v14;
    v19 = 2112;
    v20 = WeakRetained;
    v21 = 2048;
    v22 = v9;
    v23 = 2112;
    v24 = v15;
    v25 = 2048;
    v26 = a3;
    v27 = 2112;
    v28 = v10;
    _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Uploader: preparing next batch for %@ (max-count:%ld size:%@ priority:%ld)%@", buf, 0x3Eu);
  }

  v12 = [a1[5] fsUploader];
  [v12 transferStreamOfSyncContext:WeakRetained didBecomeReadyWithMaxRecordsCount:v9 sizeHint:a2 priority:a3 completionBlock:v7];

  __brc_leave_section(v16);
  v13 = *MEMORY[0x277D85DE8];
}

void __61__BRCSyncContext_initWithSession_contextIdentifier_isShared___block_invoke_49(id *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v34 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v12 = [a1[4] downloadBatchRecordsCount];
  memset(v19, 0, sizeof(v19));
  __brc_create_section(0, "[BRCSyncContext initWithSession:contextIdentifier:isShared:]_block_invoke", 250, 0, v19);
  v13 = brc_bread_crumbs();
  v14 = brc_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v18 = v19[0];
    v17 = [BRCDumpContext stringFromByteCount:a2 context:0];
    *buf = 134219522;
    v21 = v18;
    v22 = 2112;
    v23 = WeakRetained;
    v24 = 2048;
    v25 = v12;
    v26 = 2112;
    v27 = v17;
    v28 = 2048;
    v29 = a3;
    v30 = 2112;
    v31 = v9;
    v32 = 2112;
    v33 = v13;
    _os_log_debug_impl(&dword_223E7A000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Downloader: preparing next batch for %@ (max-count:%ld size:%@ priority:%ld kinds:%@)%@", buf, 0x48u);
  }

  v15 = [a1[5] fsDownloader];
  [v15 transferStreamOfSyncContext:WeakRetained didBecomeReadyWithMaxRecordsCount:v12 sizeHint:a2 priority:a3 supportedKinds:v9 completionBlock:v10];

  __brc_leave_section(v19);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  notifyTokenForFramework = self->_notifyTokenForFramework;
  if (notifyTokenForFramework != -1)
  {
    notify_cancel(notifyTokenForFramework);
  }

  v4.receiver = self;
  v4.super_class = BRCSyncContext;
  [(BRCSyncContext *)&v4 dealloc];
}

- (id)downloadStreamForKind:(int)kind
{
  downloadKindToDownloadStream = self->_downloadKindToDownloadStream;
  v5 = [MEMORY[0x277CCABB0] numberWithInt:?];
  v6 = [(NSDictionary *)downloadKindToDownloadStream objectForKeyedSubscript:v5];

  if (!v6)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [BRCSyncContext downloadStreamForKind:];
    }

    v6 = [(NSDictionary *)self->_downloadKindToDownloadStream objectForKeyedSubscript:&unk_2837B0520];
  }

  return v6;
}

- (void)signalAllDownloadStreams
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  brc_uniqueValues = [(NSDictionary *)self->_downloadKindToDownloadStream brc_uniqueValues];
  v3 = [brc_uniqueValues countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(brc_uniqueValues);
        }

        [*(*(&v8 + 1) + 8 * v6++) signal];
      }

      while (v4 != v6);
      v4 = [brc_uniqueValues countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)allDownloadOperations
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  brc_uniqueValues = [(NSDictionary *)self->_downloadKindToDownloadStream brc_uniqueValues];
  v5 = [brc_uniqueValues countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(brc_uniqueValues);
        }

        operations = [*(*(&v12 + 1) + 8 * i) operations];
        [v3 addObjectsFromArray:operations];
      }

      v6 = [brc_uniqueValues countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)_resumeAllDownloadStreams
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  brc_uniqueValues = [(NSDictionary *)self->_downloadKindToDownloadStream brc_uniqueValues];
  v3 = [brc_uniqueValues countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(brc_uniqueValues);
        }

        [*(*(&v8 + 1) + 8 * v6++) resume];
      }

      while (v4 != v6);
      v4 = [brc_uniqueValues countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (int64_t)numberOfSubmittedBGSystemTasks
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableDictionary *)selfCopy->_submittedBGSystemTaskIdentifiers count];
  objc_sync_exit(selfCopy);

  return v3;
}

+ (id)_createCKContainerForAccountID:(id)d contextIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = MEMORY[0x277CBC220];
  dCopy = d;
  v8 = [v6 alloc];
  v9 = 1;
  v10 = [v8 initWithContainerIdentifier:*MEMORY[0x277CFAD48] environment:1];
  v11 = objc_opt_new();
  v12 = [objc_alloc(MEMORY[0x277CBC170]) initWithAccountID:dCopy];

  [v11 setAccountOverrideInfo:v12];
  v13 = objc_opt_new();
  v14 = [BRCUserDefaults defaultsForMangledID:0];
  supportsEnhancedDrivePrivacy = [v14 supportsEnhancedDrivePrivacy];

  if (supportsEnhancedDrivePrivacy)
  {
    v16 = objc_alloc(MEMORY[0x277CBC2B0]);
    v17 = [v16 initWithLevel:2 name:*MEMORY[0x277CFAC30] value:*MEMORY[0x277CFAC38]];
    [v13 addObject:v17];

    v9 = 3;
  }

  [v11 setMmcsEncryptionSupport:v9];
  [v11 setSupportedDeviceCapabilities:v13];
  v18 = +[BRCDaemon daemon];
  v19 = [objc_alloc(objc_msgSend(v18 "containerClass"))];

  options = [v19 options];
  [options setCaptureResponseHTTPHeaders:1];

  if (identifierCopy)
  {
    [v19 setSourceApplicationBundleIdentifier:identifierCopy];
  }

  [v19 setSourceApplicationSecondaryIdentifier:*MEMORY[0x277CFAC00]];

  return v19;
}

- (CKContainer)ckContainer
{
  [(BRCSyncContext *)self setupIfNeeded];
  ckContainer = self->_ckContainer;

  return ckContainer;
}

- (void)_preventConcurrentModifyRecordsOperations:(id)operations nonDiscretionary:(BOOL)discretionary
{
  discretionaryCopy = discretionary;
  v44 = *MEMORY[0x277D85DE8];
  operationsCopy = operations;
  selfCopy = self;
  defaults = [(BRCSyncContext *)self defaults];
  preventConcurrentModifyRecordsOperations = [defaults preventConcurrentModifyRecordsOperations];

  if (preventConcurrentModifyRecordsOperations)
  {
    p_nonDiscretionaryModifyOperations = &selfCopy->_nonDiscretionaryModifyOperations;
    obj = selfCopy->_nonDiscretionaryModifyOperations;
    objc_sync_enter(obj);
    if (discretionaryCopy)
    {
      v34 = 0uLL;
      v35 = 0uLL;
      v32 = 0uLL;
      v33 = 0uLL;
      v10 = selfCopy->_discretionaryModifyOperations;
      v11 = [(NSHashTable *)v10 countByEnumeratingWithState:&v32 objects:v43 count:16];
      if (v11)
      {
        v12 = *v33;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v33 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v32 + 1) + 8 * i);
            if (([v14 isFinished] & 1) == 0)
            {
              v15 = brc_bread_crumbs();
              v16 = brc_default_log();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412802;
                v38 = v14;
                v39 = 2112;
                v40 = operationsCopy;
                v41 = 2112;
                v42 = v15;
                _os_log_debug_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] Cancelling discretionary operation %@ to make room for a non discretionary operation %@%@", buf, 0x20u);
              }

              [v14 cancel];
              [operationsCopy addDependency:v14];
            }
          }

          v11 = [(NSHashTable *)v10 countByEnumeratingWithState:&v32 objects:v43 count:16];
        }

        while (v11);
      }
    }

    else
    {
      v30 = 0uLL;
      v31 = 0uLL;
      v28 = 0uLL;
      v29 = 0uLL;
      v17 = *p_nonDiscretionaryModifyOperations;
      v18 = [v17 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v18)
      {
        v19 = *v29;
        do
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v29 != v19)
            {
              objc_enumerationMutation(v17);
            }

            v21 = *(*(&v28 + 1) + 8 * j);
            v22 = brc_bread_crumbs();
            v23 = brc_default_log();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412802;
              v38 = operationsCopy;
              v39 = 2112;
              v40 = v21;
              v41 = 2112;
              v42 = v22;
              _os_log_debug_impl(&dword_223E7A000, v23, OS_LOG_TYPE_DEBUG, "[DEBUG] Blocking discretionary op %@ on %@%@", buf, 0x20u);
            }

            if (([v21 isFinished] & 1) == 0)
            {
              [operationsCopy addDependency:v21];
            }
          }

          v18 = [v17 countByEnumeratingWithState:&v28 objects:v36 count:16];
        }

        while (v18);
      }

      p_nonDiscretionaryModifyOperations = &selfCopy->_discretionaryModifyOperations;
    }

    [*p_nonDiscretionaryModifyOperations addObject:{operationsCopy, obj}];
    objc_sync_exit(obja);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_setupCKOperationConfiguration:(id)configuration allowsCellularAccess:(id)access nonDiscretionary:(id)discretionary
{
  configurationCopy = configuration;
  accessCopy = access;
  discretionaryCopy = discretionary;
  configuration = [configurationCopy configuration];

  if (!configuration)
  {
    v11 = objc_opt_new();
    [configurationCopy setConfiguration:v11];
  }

  defaults = [(BRCSyncContext *)self defaults];
  useBGSTForSchedulingDiscretionaryOperations = [defaults useBGSTForSchedulingDiscretionaryOperations];

  if (useBGSTForSchedulingDiscretionaryOperations)
  {
    bOOLValue = [discretionaryCopy BOOLValue];
    v15 = configurationCopy;
    if ((bOOLValue & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  defaults2 = [(BRCSyncContext *)self defaults];
  if (![defaults2 nsurlsessiondEnabled])
  {

    v15 = configurationCopy;
    goto LABEL_10;
  }

  bOOLValue2 = [discretionaryCopy BOOLValue];

  v15 = configurationCopy;
  if (bOOLValue2)
  {
LABEL_10:
    configuration2 = [v15 configuration];
    [configuration2 setDiscretionaryNetworkBehavior:0];

    configuration3 = [configurationCopy configuration];
    [configuration3 setAutomaticallyRetryNetworkFailures:0];

    v15 = configurationCopy;
  }

LABEL_11:
  ckContainer = self->_ckContainer;
  configuration4 = [v15 configuration];
  [configuration4 setContainer:ckContainer];

  if (accessCopy)
  {
    bOOLValue3 = [accessCopy BOOLValue];
  }

  else
  {
    bOOLValue3 = [(BRCSyncContext *)self allowsCellularAccess];
  }

  v23 = bOOLValue3;
  configuration5 = [configurationCopy configuration];
  [configuration5 setAllowsCellularAccess:v23];

  configuration6 = [configurationCopy configuration];
  discretionaryNetworkBehavior = [configuration6 discretionaryNetworkBehavior];

  if (discretionaryNetworkBehavior)
  {
    if (useBGSTForSchedulingDiscretionaryOperations)
    {
      configuration7 = [configurationCopy configuration];
      [configuration7 setAutomaticallyRetryNetworkFailures:1];

      contextIdentifier = self->_contextIdentifier;
      configuration8 = [configurationCopy configuration];
      [configuration8 setSourceApplicationBundleIdentifier:contextIdentifier];

      v30 = *MEMORY[0x277CFAC00];
      configuration9 = [configurationCopy configuration];
      [configuration9 setSourceApplicationSecondaryIdentifier:v30];
    }

    else
    {
      v33 = self->_contextIdentifier;
      configuration10 = [configurationCopy configuration];
      [configuration10 setSourceApplicationBundleIdentifier:v33];

      v35 = *MEMORY[0x277CFAC00];
      configuration11 = [configurationCopy configuration];
      [configuration11 setSourceApplicationSecondaryIdentifier:v35];

      configuration12 = [configurationCopy configuration];
      [configuration12 setDiscretionaryNetworkBehavior:1];

      configuration9 = [configurationCopy configuration];
      [configuration9 setAutomaticallyRetryNetworkFailures:1];
    }
  }

  else
  {
    v32 = *MEMORY[0x277CFAC00];
    configuration9 = [configurationCopy configuration];
    [configuration9 setSourceApplicationBundleIdentifier:v32];
  }
}

- (id)_buildBGSystemTaskIdentifierForCKOperation:(id)operation
{
  v3 = MEMORY[0x277CCACA8];
  operationID = [operation operationID];
  v5 = [v3 stringWithFormat:@"com.apple.bird.bgst.%@", operationID];

  return v5;
}

- (void)_addOperation:(id)operation toDatabase:(id)database
{
  v23 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  databaseCopy = database;
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    options = [(CKContainer *)self->_ckContainer options];
    accountOverrideInfo = [options accountOverrideInfo];
    accountID = [accountOverrideInfo accountID];
    v15 = 138413058;
    v16 = operationCopy;
    v17 = 2112;
    v18 = databaseCopy;
    v19 = 2112;
    v20 = accountID;
    v21 = 2112;
    v22 = v8;
    _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] scheduling %@ on %@ (account %@)%@", &v15, 0x2Au);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [databaseCopy addOperation:operationCopy];
  }

  else
  {
    operationQueue = [databaseCopy operationQueue];
    [operationQueue addOperation:operationCopy];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_setupBGSystemTaskCompletionFor:(id)for
{
  forCopy = for;
  configuration = [forCopy configuration];
  systemTask = [configuration systemTask];
  identifier = [systemTask identifier];

  if (!identifier)
  {
    [BRCSyncContext _setupBGSystemTaskCompletionFor:];
  }

  objc_initWeak(&location, self);
  configuration2 = [forCopy configuration];
  systemTask2 = [configuration2 systemTask];
  objc_initWeak(&from, systemTask2);

  completionBlock = [forCopy completionBlock];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __50__BRCSyncContext__setupBGSystemTaskCompletionFor___block_invoke;
  v13[3] = &unk_278507908;
  objc_copyWeak(&v16, &location);
  objc_copyWeak(&v17, &from);
  v11 = completionBlock;
  v15 = v11;
  v12 = identifier;
  v14 = v12;
  [forCopy setCompletionBlock:v13];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v16);

  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __50__BRCSyncContext__setupBGSystemTaskCompletionFor___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = objc_loadWeakRetained((a1 + 56));
  (*(*(a1 + 40) + 16))();
  if (!WeakRetained)
  {
LABEL_4:
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __50__BRCSyncContext__setupBGSystemTaskCompletionFor___block_invoke_cold_1(a1);
    }

    goto LABEL_8;
  }

  v4 = WeakRetained;
  objc_sync_enter(v4);
  v5 = [v4[15] objectForKeyedSubscript:*(a1 + 32)];
  v6 = [v5 releaseReference];

  if (v6)
  {
    objc_sync_exit(v4);

    goto LABEL_4;
  }

  [v4[15] removeObjectForKey:*(a1 + 32)];
  objc_sync_exit(v4);

  [v3 setTaskCompleted];
  v9 = [MEMORY[0x277CF0810] sharedScheduler];
  v10 = [v9 deregisterTaskWithIdentifier:*(a1 + 32)];

  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a1 + 32);
    v13 = 138412802;
    v14 = v12;
    v15 = 1024;
    v16 = v10;
    v17 = 2112;
    v18 = v7;
    _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] Marked BGSystemTask with task identifier %@ as completed - deregister result %d%@", &v13, 0x1Cu);
  }

LABEL_8:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_addCKOperationToCKDatabaseQueue:(id)queue allowsCellularAccess:(id)access ckDatabase:(id)database asCompletionOf:(id)of
{
  v79[1] = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  accessCopy = access;
  databaseCopy = database;
  ofCopy = of;
  if (!databaseCopy)
  {
    [BRCSyncContext _addCKOperationToCKDatabaseQueue:allowsCellularAccess:ckDatabase:asCompletionOf:];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    accountWaitOperation = [(BRCAccountSession *)self->_session accountWaitOperation];
    if (accountWaitOperation)
    {
      [queueCopy addDependency:accountWaitOperation];
    }
  }

  configuration = [ofCopy configuration];
  systemTask = [configuration systemTask];

  if (systemTask)
  {
    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      identifier = [systemTask identifier];
      operationID = [queueCopy operationID];
      *buf = 138412802;
      v72 = identifier;
      v73 = 2112;
      v74 = operationID;
      v75 = 2112;
      v76 = v17;
      _os_log_debug_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] Moving ownership of system task %@ to CKOperation with identifier %@%@", buf, 0x20u);
    }

    configuration2 = [queueCopy configuration];
    [configuration2 setSystemTask:systemTask];

    configuration3 = [ofCopy configuration];
    allowsCellularAccess = [configuration3 allowsCellularAccess];
    configuration4 = [queueCopy configuration];
    [configuration4 setAllowsCellularAccess:allowsCellularAccess];

    selfCopy = self;
    objc_sync_enter(selfCopy);
    submittedBGSystemTaskIdentifiers = selfCopy->_submittedBGSystemTaskIdentifiers;
    identifier2 = [systemTask identifier];
    v26 = [(NSMutableDictionary *)submittedBGSystemTaskIdentifiers objectForKeyedSubscript:identifier2];
    [v26 addReference];

    objc_sync_exit(selfCopy);
    [(BRCSyncContext *)selfCopy _setupBGSystemTaskCompletionFor:queueCopy];
    [(BRCSyncContext *)selfCopy _addOperation:queueCopy toDatabase:databaseCopy];
    goto LABEL_17;
  }

  configuration5 = [queueCopy configuration];
  if (![configuration5 discretionaryNetworkBehavior])
  {

    goto LABEL_16;
  }

  defaults = [(BRCSyncContext *)self defaults];
  useBGSTForSchedulingDiscretionaryOperations = [defaults useBGSTForSchedulingDiscretionaryOperations];

  if ((useBGSTForSchedulingDiscretionaryOperations & 1) == 0)
  {
LABEL_16:
    [(BRCSyncContext *)self _addOperation:queueCopy toDatabase:databaseCopy];
    goto LABEL_17;
  }

  if ([queueCopy isCancelled])
  {
    [queueCopy start];
  }

  else
  {
    v31 = [(BRCSyncContext *)self _buildBGSystemTaskIdentifierForCKOperation:queueCopy];
    v32 = [objc_alloc(MEMORY[0x277CF07C8]) initWithIdentifier:v31];
    isForeground = [(BRCSyncContext *)self isForeground];
    defaults2 = [(BRCSyncContext *)self defaults];
    v34 = [defaults2 discretionaryOperationBGSystemTaskConfigWithForegroundState:isForeground];
    [v32 br_applyConfiguration:v34];

    configuration6 = [queueCopy configuration];
    [v32 setRequiresInexpensiveNetworkConnectivity:{objc_msgSend(configuration6, "allowsCellularAccess") ^ 1}];

    v79[0] = self->_contextIdentifier;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:1];
    [v32 setRelatedApplications:v36];

    [v32 setRateLimitConfigurationName:@"BirdConfiguration"];
    personaIdentifier = [(BRCAccountSession *)self->_session personaIdentifier];
    v69[0] = 0;
    v69[1] = v69;
    v69[2] = 0x2020000000;
    v70 = 0;
    objc_initWeak(&location, queueCopy);
    objc_initWeak(&v67, databaseCopy);
    objc_initWeak(&from, self);
    mEMORY[0x277CF0810] = [MEMORY[0x277CF0810] sharedScheduler];
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __98__BRCSyncContext__addCKOperationToCKDatabaseQueue_allowsCellularAccess_ckDatabase_asCompletionOf___block_invoke;
    v58[3] = &unk_278507930;
    v55 = personaIdentifier;
    v59 = v55;
    objc_copyWeak(&v63, &location);
    objc_copyWeak(&v64, &from);
    objc_copyWeak(&v65, &v67);
    v38 = v31;
    v60 = v38;
    v62 = v69;
    v61 = accessCopy;
    LOBYTE(v36) = [mEMORY[0x277CF0810] registerForTaskWithIdentifier:v38 usingQueue:0 launchHandler:v58];

    if (v36)
    {
      [v32 setGroupName:*MEMORY[0x277CFAC00]];
      [v32 setGroupConcurrencyLimit:3];
      mEMORY[0x277CF0810]2 = [MEMORY[0x277CF0810] sharedScheduler];
      v57 = 0;
      v40 = [mEMORY[0x277CF0810]2 submitTaskRequest:v32 error:&v57];
      v53 = v57;

      if (v40)
      {
        v41 = brc_bread_crumbs();
        v42 = brc_default_log();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          v51 = @"background";
          contextIdentifier = self->_contextIdentifier;
          *buf = 138413058;
          if (isForeground)
          {
            v51 = @"foreground";
          }

          v72 = v38;
          v73 = 2112;
          v74 = contextIdentifier;
          v75 = 2112;
          v76 = v51;
          v77 = 2112;
          v78 = v41;
          _os_log_debug_impl(&dword_223E7A000, v42, OS_LOG_TYPE_DEBUG, "[DEBUG] Successfully submitted BGSystemTask %@ in %@, with %@ configuration%@", buf, 0x2Au);
        }

        selfCopy2 = self;
        objc_sync_enter(selfCopy2);
        v44 = -[BRCBGSystemTaskContext initWithOptions:]([BRCBGSystemTaskContext alloc], "initWithOptions:", [v32 requiresInexpensiveNetworkConnectivity]);
        [(NSMutableDictionary *)selfCopy2->_submittedBGSystemTaskIdentifiers setObject:v44 forKeyedSubscript:v38];

        objc_sync_exit(selfCopy2);
      }

      else
      {
        v48 = brc_bread_crumbs();
        v49 = brc_default_log();
        if (os_log_type_enabled(v49, 0x90u))
        {
          *buf = 138412802;
          v72 = v38;
          v73 = 2112;
          v74 = v53;
          v75 = 2112;
          v76 = v48;
          _os_log_error_impl(&dword_223E7A000, v49, 0x90u, "[ERROR] Failed to submit BGSystemTask %@ due to %@%@", buf, 0x20u);
        }

        mEMORY[0x277CF0810]3 = [MEMORY[0x277CF0810] sharedScheduler];
        [mEMORY[0x277CF0810]3 deregisterTaskWithIdentifier:v38];

        [queueCopy cancelWithUnderlyingError:v53];
        [queueCopy start];
      }
    }

    else
    {
      brc_errorCantRegisterBGSystemTask = [MEMORY[0x277CCA9B8] brc_errorCantRegisterBGSystemTask];
      [queueCopy cancelWithUnderlyingError:brc_errorCantRegisterBGSystemTask];

      [queueCopy start];
    }

    objc_destroyWeak(&v65);
    objc_destroyWeak(&v64);
    objc_destroyWeak(&v63);

    objc_destroyWeak(&from);
    objc_destroyWeak(&v67);
    objc_destroyWeak(&location);
    _Block_object_dispose(v69, 8);
  }

LABEL_17:

  v30 = *MEMORY[0x277D85DE8];
}

void __98__BRCSyncContext__addCKOperationToCKDatabaseQueue_allowsCellularAccess_ckDatabase_asCompletionOf___block_invoke(uint64_t a1, void *a2)
{
  v63 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([*(a1 + 32) isEqualToString:@"__defaultPersonaID__"] & 1) != 0 || (v4 = *(a1 + 32)) == 0)
  {
    if (BRCSyncContextDidBecomeForeground_block_invoke___personaOnceToken != -1)
    {
      __98__BRCSyncContext__addCKOperationToCKDatabaseQueue_allowsCellularAccess_ckDatabase_asCompletionOf___block_invoke_cold_1();
    }

    v5 = BRCSyncContextDidBecomeForeground_block_invoke___personalPersona;
    v6 = 1;
  }

  else
  {
    v5 = v4;
    v6 = 0;
  }

  v7 = [MEMORY[0x277D77BF8] sharedManager];
  v46 = [v7 currentPersona];

  v50 = 0;
  v8 = [v46 userPersonaUniqueString];
  v9 = v8;
  if (v8 == v5 || ([v8 isEqualToString:v5] & 1) != 0)
  {
    v10 = 0;
    goto LABEL_10;
  }

  if (voucher_process_can_use_arbitrary_personas())
  {
    v49 = 0;
    v21 = [v46 copyCurrentPersonaContextWithError:&v49];
    v22 = v49;
    v23 = v50;
    v50 = v21;

    if (v22)
    {
      v24 = brc_bread_crumbs();
      v25 = brc_default_log();
      if (os_log_type_enabled(v25, 0x90u))
      {
        [BRCContainerScheduler syncContextDidBecomeForeground:];
      }
    }

    v10 = [v46 br_generateAndRestorePersonaContextWithPersonaUniqueString:v5];

    if (v10)
    {
      v26 = brc_bread_crumbs();
      v27 = brc_default_log();
      if (os_log_type_enabled(v27, 0x90u))
      {
        v28 = *(a1 + 32);
        *buf = 138412802;
        v52 = v28;
        v53 = 2112;
        v54 = v10;
        v55 = 2112;
        v56 = v26;
        _os_log_error_impl(&dword_223E7A000, v27, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
      }

LABEL_50:
    }
  }

  else
  {
    if (v6 && ([v46 isDataSeparatedPersona] & 1) == 0)
    {
      v26 = brc_bread_crumbs();
      v27 = brc_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        [_BRCOperation completedWithResult:error:];
      }

      v10 = 0;
      goto LABEL_50;
    }

    v29 = brc_bread_crumbs();
    v30 = brc_default_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      [_BRCOperation completedWithResult:error:];
    }

    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
  }

LABEL_10:
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v12 = objc_loadWeakRetained((a1 + 72));
  v13 = objc_loadWeakRetained((a1 + 80));
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __98__BRCSyncContext__addCKOperationToCKDatabaseQueue_allowsCellularAccess_ckDatabase_asCompletionOf___block_invoke_96;
  v47[3] = &unk_2784FF450;
  v14 = WeakRetained;
  v48 = v14;
  [v3 setExpirationHandler:v47];
  v15 = brc_bread_crumbs();
  v16 = brc_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v45 = *(a1 + 40);
    v34 = [v14 isFinished];
    v35 = "NO";
    if (v34)
    {
      v35 = "YES";
    }

    v44 = v35;
    v43 = [v14 isExecuting];
    v36 = [v14 isCancelled];
    if (v43)
    {
      v37 = "YES";
    }

    else
    {
      v37 = "NO";
    }

    if (v36)
    {
      v38 = "YES";
    }

    else
    {
      v38 = "NO";
    }

    v39 = atomic_load((*(*(a1 + 56) + 8) + 24));
    if (v39)
    {
      v40 = "YES";
    }

    else
    {
      v40 = "NO";
    }

    *buf = 138413570;
    v52 = v45;
    v53 = 2080;
    v54 = v44;
    v55 = 2080;
    v56 = v37;
    v57 = 2080;
    v58 = v38;
    v59 = 2080;
    v60 = v40;
    v61 = 2112;
    v62 = v15;
    _os_log_debug_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] BGSystemTask with task identifier %@ started to run, operation(finished:%s, executing:%s, cancelled:%s), taskLaunched=%s%@", buf, 0x3Eu);
  }

  if (atomic_fetch_or((*(*(a1 + 56) + 8) + 24), 1u))
  {
    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 40);
      *buf = 138412546;
      v52 = v19;
      v53 = 2112;
      v54 = v17;
      _os_log_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEFAULT, "[WARNING] Another task instance for %@ has been launched.. completing right away.%@", buf, 0x16u);
    }

    goto LABEL_18;
  }

  if (!v14 || ([v14 isFinished] & 1) != 0 || objc_msgSend(v14, "isExecuting"))
  {
LABEL_18:
    [v3 setTaskCompleted];
    goto LABEL_19;
  }

  v31 = [v14 configuration];
  [v31 setSystemTask:v3];

  v32 = *(a1 + 48);
  if (v32)
  {
    v33 = [v32 BOOLValue];
  }

  else
  {
    v33 = [v12 allowsCellularAccess];
  }

  v41 = v33;
  v42 = [v14 configuration];
  [v42 setAllowsCellularAccess:v41];

  [v12 _setupBGSystemTaskCompletionFor:v14];
  [v12 _addOperation:v14 toDatabase:v13];
LABEL_19:

  _BRRestorePersona();
  v20 = *MEMORY[0x277D85DE8];
}

void __98__BRCSyncContext__addCKOperationToCKDatabaseQueue_allowsCellularAccess_ckDatabase_asCompletionOf___block_invoke_2()
{
  v2 = [MEMORY[0x277D77C10] personaAttributesForPersonaType:0];
  v0 = [v2 userPersonaUniqueString];
  v1 = BRCSyncContextDidBecomeForeground_block_invoke___personalPersona;
  BRCSyncContextDidBecomeForeground_block_invoke___personalPersona = v0;
}

- (void)addOperation:(id)operation allowsCellularAccess:(id)access nonDiscretionary:(id)discretionary asCompletionOf:(id)of
{
  v45 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  accessCopy = access;
  discretionaryCopy = discretionary;
  ofCopy = of;
  [(BRCSyncContext *)self setupIfNeeded];
  _database = [(BRCSyncContext *)self _database];
  if (!_database)
  {
    [BRCSyncContext addOperation:allowsCellularAccess:nonDiscretionary:asCompletionOf:];
  }

  defaults = [(BRCSyncContext *)self defaults];
  useBGSTForSchedulingDiscretionaryOperations = [defaults useBGSTForSchedulingDiscretionaryOperations];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [(BRCSyncContext *)self _setupCKOperationConfiguration:operationCopy allowsCellularAccess:accessCopy nonDiscretionary:discretionaryCopy];
  }

  if ((useBGSTForSchedulingDiscretionaryOperations & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = operationCopy;
      configuration = [v18 configuration];
      -[BRCSyncContext _preventConcurrentModifyRecordsOperations:nonDiscretionary:](self, "_preventConcurrentModifyRecordsOperations:nonDiscretionary:", v18, [configuration discretionaryNetworkBehavior] == 0);
    }
  }

  if (self->_isCancelled)
  {
    [operationCopy cancel];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    group = [operationCopy group];
    v21 = group == 0;

    if (v21)
    {
      v22 = brc_bread_crumbs();
      v23 = brc_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        [BRCSyncContext addOperation:allowsCellularAccess:nonDiscretionary:asCompletionOf:];
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    group2 = [operationCopy group];
    v25 = group2 == 0;

    if (v25)
    {
      v26 = brc_bread_crumbs();
      v27 = brc_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        [BRCSyncContext addOperation:allowsCellularAccess:nonDiscretionary:asCompletionOf:];
      }
    }
  }

  if (isKindOfClass)
  {
    [(BRCSyncContext *)self _addCKOperationToCKDatabaseQueue:operationCopy allowsCellularAccess:accessCopy ckDatabase:_database asCompletionOf:ofCopy];
  }

  else
  {
    v28 = brc_bread_crumbs();
    v29 = brc_default_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      options = [(CKContainer *)self->_ckContainer options];
      accountOverrideInfo = [options accountOverrideInfo];
      accountID = [accountOverrideInfo accountID];
      *buf = 138413058;
      v38 = operationCopy;
      v39 = 2112;
      v40 = _database;
      v41 = 2112;
      v42 = accountID;
      v43 = 2112;
      v44 = v28;
      _os_log_debug_impl(&dword_223E7A000, v29, OS_LOG_TYPE_DEBUG, "[DEBUG] scheduling %@ on %@ (account %@)%@", buf, 0x2Au);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      nonDiscretionary = [operationCopy nonDiscretionary];
      v31 = 112;
      if (nonDiscretionary)
      {
        v31 = 104;
      }

      [*(&self->super.isa + v31) addOperation:operationCopy];
    }

    else
    {
      operationQueue = [_database operationQueue];
      [operationQueue addOperation:operationCopy];
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)resume
{
  contextIdentifier = [(BRCSyncContext *)self contextIdentifier];
  if ([contextIdentifier isEqualToString:*MEMORY[0x277CFACE0]])
  {
  }

  else
  {
    contextIdentifier2 = [(BRCSyncContext *)self contextIdentifier];
    v5 = [contextIdentifier2 isEqualToString:*MEMORY[0x277CFAD58]];

    if (!v5)
    {
      goto LABEL_5;
    }
  }

  self->_foregroundState = 2;
  [(BRCSyncContext *)self _notifyFrameworkContainersMonitorWithState:1];
LABEL_5:
  [(BRCTransferStream *)self->_uploadStream resume];

  [(BRCSyncContext *)self _resumeAllDownloadStreams];
}

- (void)_cancelBGSystemTasks
{
  v20 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  submittedBGSystemTaskIdentifiers = [(BRCSyncContext *)selfCopy submittedBGSystemTaskIdentifiers];
  allKeys = [submittedBGSystemTaskIdentifiers allKeys];
  v5 = [allKeys copy];

  v6 = objc_opt_new();
  submittedBGSystemTaskIdentifiers = selfCopy->_submittedBGSystemTaskIdentifiers;
  selfCopy->_submittedBGSystemTaskIdentifiers = v6;

  objc_sync_exit(selfCopy);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        mEMORY[0x277CF0810] = [MEMORY[0x277CF0810] sharedScheduler];
        [mEMORY[0x277CF0810] cancelTaskRequestWithIdentifier:v12 error:0];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_updateWifiOnlyBGSystemTaskWithCancelledTaskIdentifiers:(id)identifiers inexpensiveNetworkConnectivity:(BOOL)connectivity
{
  identifiersCopy = identifiers;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  submittedBGSystemTaskIdentifiers = [(BRCSyncContext *)selfCopy submittedBGSystemTaskIdentifiers];
  v9 = [submittedBGSystemTaskIdentifiers copy];

  objc_sync_exit(selfCopy);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __105__BRCSyncContext__updateWifiOnlyBGSystemTaskWithCancelledTaskIdentifiers_inexpensiveNetworkConnectivity___block_invoke;
  v11[3] = &unk_278507958;
  v12 = identifiersCopy;
  connectivityCopy = connectivity;
  v10 = identifiersCopy;
  [v9 enumerateKeysAndObjectsUsingBlock:v11];
}

void __105__BRCSyncContext__updateWifiOnlyBGSystemTaskWithCancelledTaskIdentifiers_inexpensiveNetworkConnectivity___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (([a3 options] & 1) != 0 && (objc_msgSend(*(a1 + 32), "containsObject:", v5) & 1) == 0)
  {
    v6 = [MEMORY[0x277CF0810] sharedScheduler];
    v7 = [v6 taskRequestForIdentifier:v5];

    if (v7 && *(a1 + 40) != [v7 requiresInexpensiveNetworkConnectivity])
    {
      [v7 setRequiresInexpensiveNetworkConnectivity:?];
      v8 = [MEMORY[0x277CF0810] sharedScheduler];
      v14 = 0;
      v9 = [v8 updateTaskRequest:v7 error:&v14];
      v10 = v14;

      if ((v9 & 1) == 0)
      {
        v11 = brc_bread_crumbs();
        v12 = brc_default_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          v16 = v5;
          v17 = 2112;
          v18 = v10;
          v19 = 2112;
          v20 = v11;
          _os_log_debug_impl(&dword_223E7A000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] Couldn't update the task request %@ - error = %@%@", buf, 0x20u);
        }
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_cancelOperation:(id)operation underlyingError:(id)error
{
  operationCopy = operation;
  errorCopy = error;
  if (([operationCopy isCancelled] & 1) == 0 && (objc_msgSend(operationCopy, "isFinished") & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [operationCopy cancel];
      goto LABEL_13;
    }

    v7 = operationCopy;
    configuration = [v7 configuration];
    if ([configuration discretionaryNetworkBehavior])
    {
      defaults = [(BRCSyncContext *)self defaults];
      useBGSTForSchedulingDiscretionaryOperations = [defaults useBGSTForSchedulingDiscretionaryOperations];

      if ((useBGSTForSchedulingDiscretionaryOperations & 1) != 0 && ![v7 isExecuting])
      {
        v11 = [(BRCSyncContext *)self _cancelBgSystemTaskIfNeededForCKOperation:v7];
        [v7 cancelWithUnderlyingError:errorCopy];
        if (v11)
        {
          [v7 start];
        }

        goto LABEL_12;
      }
    }

    else
    {
    }

    [v7 cancelWithUnderlyingError:errorCopy];
LABEL_12:
  }

LABEL_13:
}

- (BOOL)_cancelBgSystemTaskIfNeededForCKOperation:(id)operation
{
  operationCopy = operation;
  v5 = [BRCUserDefaults defaultsForMangledID:0];
  useBGSTForSchedulingDiscretionaryOperations = [v5 useBGSTForSchedulingDiscretionaryOperations];

  if (useBGSTForSchedulingDiscretionaryOperations)
  {
    v7 = [(BRCSyncContext *)self _buildBGSystemTaskIdentifierForCKOperation:operationCopy];
    mEMORY[0x277CF0810] = [MEMORY[0x277CF0810] sharedScheduler];
    v14 = 0;
    v9 = [mEMORY[0x277CF0810] cancelTaskRequestWithIdentifier:v7 error:&v14];
    v10 = v14;

    if (v10)
    {
      useBGSTForSchedulingDiscretionaryOperations = 0;
    }

    else
    {
      useBGSTForSchedulingDiscretionaryOperations = v9;
    }

    if (useBGSTForSchedulingDiscretionaryOperations == 1)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      [(NSMutableDictionary *)selfCopy->_submittedBGSystemTaskIdentifiers removeObjectForKey:v7];
      objc_sync_exit(selfCopy);

      mEMORY[0x277CF0810]2 = [MEMORY[0x277CF0810] sharedScheduler];
      [mEMORY[0x277CF0810]2 deregisterTaskWithIdentifier:v7];
    }
  }

  return useBGSTForSchedulingDiscretionaryOperations;
}

- (void)cancel
{
  v16 = *MEMORY[0x277D85DE8];
  self->_isCancelled = 1;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  brc_uniqueValues = [(NSDictionary *)self->_downloadKindToDownloadStream brc_uniqueValues];
  v4 = [brc_uniqueValues countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(brc_uniqueValues);
        }

        [*(*(&v11 + 1) + 8 * v7++) cancel];
      }

      while (v5 != v7);
      v5 = [brc_uniqueValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  [(BRCTransferStream *)self->_uploadStream cancel];
  _database = [(BRCSyncContext *)self _database];
  operationQueue = [_database operationQueue];
  [operationQueue cancelAllOperations];

  [(NSOperationQueue *)self->_nonDiscretionaryRecursiveListOperationQueue cancelAllOperations];
  [(NSOperationQueue *)self->_discretionaryRecursiveListOperationQueue cancelAllOperations];
  [(BRCSyncContext *)self _cancelBGSystemTasks];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)close
{
  v20 = *MEMORY[0x277D85DE8];
  if (!self->_isCancelled)
  {
    [BRCSyncContext close];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  notify_cancel(selfCopy->_notifyTokenForFramework);
  selfCopy->_notifyTokenForFramework = -1;
  objc_sync_exit(selfCopy);

  foregroundStateQueue = selfCopy->_foregroundStateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __23__BRCSyncContext_close__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = selfCopy;
  dispatch_sync(foregroundStateQueue, block);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  brc_uniqueValues = [(NSDictionary *)selfCopy->_downloadKindToDownloadStream brc_uniqueValues];
  v6 = [brc_uniqueValues countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(brc_uniqueValues);
        }

        [*(*(&v14 + 1) + 8 * v8++) close];
      }

      while (v6 != v8);
      v6 = [brc_uniqueValues countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v6);
  }

  downloadKindToDownloadStream = selfCopy->_downloadKindToDownloadStream;
  selfCopy->_downloadKindToDownloadStream = 0;

  uploadStream = selfCopy->_uploadStream;
  p_uploadStream = &selfCopy->_uploadStream;
  [(BRCTransferStream *)uploadStream close];
  v12 = *p_uploadStream;
  *p_uploadStream = 0;

  v13 = *MEMORY[0x277D85DE8];
}

void __23__BRCSyncContext_close__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  if (v3)
  {
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 56);
    *(v4 + 56) = 0;

    v2 = *(a1 + 32);
  }

  v6 = *(v2 + 64);
  if (v6)
  {
    dispatch_source_cancel(v6);
    v7 = *(a1 + 32);
    v8 = *(v7 + 64);
    *(v7 + 64) = 0;
  }
}

- (void)dumpToContext:(id)context
{
  v26 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  obj = selfCopy;
  if ([(NSMutableSet *)selfCopy->_foregroundClients count]|| selfCopy->_dateWhenLastForegroundClientLeft)
  {
    [contextCopy writeLineWithFormat:@"+ foreground clients:"];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = selfCopy->_foregroundClients;
    v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v7)
    {
      v8 = *v22;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v21 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            identifier = [v10 identifier];
            br_obfuscatedDotOrTildaSeparatedComponents = [identifier br_obfuscatedDotOrTildaSeparatedComponents];
            [contextCopy writeLineWithFormat:@"   o %@ [zone]", br_obfuscatedDotOrTildaSeparatedComponents];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              identifier = [v10 identifier];
              br_obfuscatedDotOrTildaSeparatedComponents = [identifier br_obfuscatedDotOrTildaSeparatedComponents];
              [contextCopy writeLineWithFormat:@"   o %@ [appLib]", br_obfuscatedDotOrTildaSeparatedComponents];
            }

            else
            {
              identifier = [v10 identifier];
              br_obfuscatedDotOrTildaSeparatedComponents = [identifier br_obfuscatedDotOrTildaSeparatedComponents];
              [contextCopy writeLineWithFormat:@"   o %@", br_obfuscatedDotOrTildaSeparatedComponents];
            }
          }
        }

        v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v7);
    }

    dateWhenLastForegroundClientLeft = selfCopy->_dateWhenLastForegroundClientLeft;
    if (dateWhenLastForegroundClientLeft)
    {
      lastForegroundClientDescription = selfCopy->_lastForegroundClientDescription;
      [(NSDate *)dateWhenLastForegroundClientLeft timeIntervalSinceNow];
      [contextCopy writeLineWithFormat:@"   o %@ [grace period] disconnected %.1fs ago", lastForegroundClientDescription, -v15];
    }
  }

  foregroundState = obj->_foregroundState;
  if (foregroundState == 1)
  {
    v17 = @"   o forced foreground";
    goto LABEL_21;
  }

  if (foregroundState == 2)
  {
    v17 = @"   o always foreground";
LABEL_21:
    [contextCopy writeLineWithFormat:v17];
  }

  allKeys = [(NSMutableDictionary *)obj->_submittedBGSystemTaskIdentifiers allKeys];
  [contextCopy writeLineWithFormat:@"+ Submitted BGSystemTasks: %@", allKeys];

  objc_sync_exit(obj);
  v19 = *MEMORY[0x277D85DE8];
}

- (void)forceContainerForegroundForDuration:(double)duration
{
  foregroundStateQueue = self->_foregroundStateQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__BRCSyncContext_forceContainerForegroundForDuration___block_invoke;
  v4[3] = &unk_278500D50;
  v4[4] = self;
  *&v4[5] = duration;
  dispatch_async(foregroundStateQueue, v4);
}

void __54__BRCSyncContext_forceContainerForegroundForDuration___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v3 = *(a1 + 32);
  if (*(v3 + 80) <= 1uLL)
  {
    if (*(v3 + 64))
    {
      dispatch_source_cancel(*(v3 + 64));
      v4 = *(a1 + 32);
      v5 = *(v4 + 64);
      *(v4 + 64) = 0;

      v3 = *(a1 + 32);
    }

    if (([v3 isForeground] & 1) == 0)
    {
      [*(a1 + 32) _updateSubmittedBGSystemTasksWithState:1];
      [*(a1 + 32) _notifyFrameworkContainersMonitorWithState:1];
    }

    *(*(a1 + 32) + 80) = 1;
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v23 = *(a1 + 32);
      v24 = *(a1 + 40);
      *buf = 138412802;
      v27 = v23;
      v28 = 2048;
      v29 = v24;
      v30 = 2112;
      v31 = v6;
      _os_log_debug_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] beginning forced foreground for %@ for %.1fs%@", buf, 0x20u);
    }

    v8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(*(a1 + 32) + 72));
    v9 = *(a1 + 40);
    v10 = brc_interval_to_nsec();
    v11 = dispatch_time(0, v10);
    dispatch_source_set_timer(v8, v11, 0xFFFFFFFFFFFFFFFFLL, 0);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __54__BRCSyncContext_forceContainerForegroundForDuration___block_invoke_133;
    v25[3] = &unk_2784FF450;
    v25[4] = *(a1 + 32);
    v12 = v8;
    v13 = v25;
    v14 = v12;
    v15 = v13;
    v16 = v15;
    v17 = v15;
    if (*MEMORY[0x277CFB010])
    {
      v17 = (*MEMORY[0x277CFB010])(v15);
    }

    v18 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, v17);
    dispatch_source_set_event_handler(v14, v18);

    v19 = *(a1 + 32);
    v20 = *(v19 + 64);
    *(v19 + 64) = v14;
    v21 = v14;

    dispatch_resume(v21);
  }

  objc_sync_exit(v2);

  v22 = *MEMORY[0x277D85DE8];
}

void __54__BRCSyncContext_forceContainerForegroundForDuration___block_invoke_133(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __54__BRCSyncContext_forceContainerForegroundForDuration___block_invoke_133_cold_1(a1);
  }

  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  v4 = v6;
  if (*(v6 + 80) != 1)
  {
    __54__BRCSyncContext_forceContainerForegroundForDuration___block_invoke_133_cold_2(v5, &v8);
    v4 = v8;
  }

  *(v4 + 80) = 0;
  if (([*v5 isForeground] & 1) == 0)
  {
    [*v5 _notifyFrameworkContainersMonitorWithState:0];
  }

  dispatch_source_cancel(*(*v5 + 64));
  v7 = *(*v5 + 64);
  *(*v5 + 64) = 0;
}

- (void)addForegroundClient:(id)client
{
  v18 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  if (self->_isShared)
  {
    syncContextProvider = [(BRCAccountSession *)self->_session syncContextProvider];
    sideCarSyncContext = [syncContextProvider sideCarSyncContext];
    [sideCarSyncContext addForegroundClient:clientCopy];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [(NSMutableSet *)selfCopy->_foregroundClients count];
  [(NSMutableSet *)selfCopy->_foregroundClients addObject:clientCopy];
  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412802;
    v13 = selfCopy;
    v14 = 2112;
    v15 = clientCopy;
    v16 = 2112;
    v17 = v9;
    _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - Added %@ as a foreground client%@", &v12, 0x20u);
  }

  if (!v8)
  {
    [(BRCSyncContext *)selfCopy _notifyContainerBeingNowForeground];
  }

  objc_sync_exit(selfCopy);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)removeForegroundClient:(id)client
{
  v18 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  v5 = [clientCopy description];
  if (self->_isShared)
  {
    syncContextProvider = [(BRCAccountSession *)self->_session syncContextProvider];
    sideCarSyncContext = [syncContextProvider sideCarSyncContext];
    [sideCarSyncContext removeForegroundClient:clientCopy];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (([(NSMutableSet *)selfCopy->_foregroundClients containsObject:clientCopy]& 1) != 0)
  {
    [(NSMutableSet *)selfCopy->_foregroundClients removeObject:clientCopy];
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138412802;
      v13 = selfCopy;
      v14 = 2112;
      v15 = clientCopy;
      v16 = 2112;
      v17 = v9;
      _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - Removed %@ as a foreground client%@", &v12, 0x20u);
    }

    if (!(selfCopy->_foregroundState | [(NSMutableSet *)selfCopy->_foregroundClients count]))
    {
      [(BRCSyncContext *)selfCopy _armForegroundGraceTimerForClientDescription:v5];
    }
  }

  objc_sync_exit(selfCopy);

  v11 = *MEMORY[0x277D85DE8];
}

- (id)foregroundClients
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableSet *)selfCopy->_foregroundClients copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)didReceiveHandoffRequest
{
  obj = self;
  objc_sync_enter(obj);
  if (![(NSMutableSet *)obj->_foregroundClients count])
  {
    [(BRCSyncContext *)obj _notifyContainerBeingNowForeground];
    [(BRCSyncContext *)obj _armForegroundGraceTimerForClientDescription:@"Handoff request"];
  }

  objc_sync_exit(obj);
}

- (void)_armForegroundGraceTimerForClientDescription:(id)description
{
  descriptionCopy = description;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_storeStrong(&selfCopy->_lastForegroundClientDescription, description);
  date = [MEMORY[0x277CBEAA8] date];
  dateWhenLastForegroundClientLeft = selfCopy->_dateWhenLastForegroundClientLeft;
  selfCopy->_dateWhenLastForegroundClientLeft = date;

  foregroundStateQueue = selfCopy->_foregroundStateQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__BRCSyncContext__armForegroundGraceTimerForClientDescription___block_invoke;
  v11[3] = &unk_2784FF478;
  v11[4] = selfCopy;
  v10 = descriptionCopy;
  v12 = v10;
  dispatch_async_with_logs_11(foregroundStateQueue, v11);

  objc_sync_exit(selfCopy);
}

void __63__BRCSyncContext__armForegroundGraceTimerForClientDescription___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2[7])
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __63__BRCSyncContext__armForegroundGraceTimerForClientDescription___block_invoke_cold_1();
    }

    dispatch_source_cancel(*(*(a1 + 32) + 56));
    v5 = *(*(a1 + 32) + 56);
    *(*(a1 + 32) + 56) = 0;

    v2 = *(a1 + 32);
  }

  v6 = [v2 defaults];
  [v6 foregroundGracePeriod];
  v8 = v7;

  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v25 = *(a1 + 32);
    v26 = *(a1 + 40);
    v27 = v8;
    *location = 138413058;
    *&location[4] = v25;
    v31 = 2112;
    v32 = v26;
    v33 = 2048;
    v34 = v27;
    v35 = 2112;
    v36 = v9;
    _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] beginning foreground grace period for %@ from %@ for %.1fs%@", location, 0x2Au);
  }

  v11 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(*(a1 + 32) + 72));
  v12 = brc_interval_to_nsec();
  v13 = dispatch_time(0, v12);
  dispatch_source_set_timer(v11, v13, 0xFFFFFFFFFFFFFFFFLL, 0);
  objc_initWeak(location, *(a1 + 32));
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __63__BRCSyncContext__armForegroundGraceTimerForClientDescription___block_invoke_138;
  v28[3] = &unk_2784FF400;
  objc_copyWeak(&v29, location);
  v14 = v11;
  v15 = v28;
  v16 = v14;
  v17 = v15;
  v18 = v17;
  v19 = v17;
  if (*MEMORY[0x277CFB010])
  {
    v19 = (*MEMORY[0x277CFB010])(v17);
  }

  v20 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, v19);
  dispatch_source_set_event_handler(v16, v20);

  v21 = *(a1 + 32);
  v22 = *(v21 + 56);
  *(v21 + 56) = v16;
  v23 = v16;

  dispatch_resume(v23);
  objc_destroyWeak(&v29);
  objc_destroyWeak(location);
  v24 = *MEMORY[0x277D85DE8];
}

void __63__BRCSyncContext__armForegroundGraceTimerForClientDescription___block_invoke_138(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = brc_bread_crumbs();
    v3 = brc_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __63__BRCSyncContext__armForegroundGraceTimerForClientDescription___block_invoke_138_cold_1(WeakRetained);
    }

    v4 = WeakRetained;
    objc_sync_enter(v4);
    v5 = v4[5];
    v4[5] = 0;

    v6 = v4[6];
    v4[6] = 0;

    v7 = v4[7];
    v4[7] = 0;

    v8 = v4[10];
    objc_sync_exit(v4);

    if (!v8)
    {
      [v4 _updateSubmittedBGSystemTasksWithState:0];
      [v4 _notifyFrameworkContainersMonitorWithState:0];
      v9 = [MEMORY[0x277CCAB98] defaultCenter];
      v10 = [v4[17] personaIdentifier];
      v11 = BRPersonaSpecificName();
      [v9 postNotificationName:v11 object:v4 userInfo:0];
    }
  }
}

- (void)_notifyFrameworkContainersMonitorWithState:(BOOL)state
{
  v7 = self->_contextIdentifier;
  v4 = BRNotifyNameForForegroundChangeWithContainerID();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_notifyTokenForFramework != -1)
  {
    goto LABEL_2;
  }

  [v4 UTF8String];
  if (!brc_notify_register_check())
  {
    notifyTokenForFramework = selfCopy->_notifyTokenForFramework;
LABEL_2:
    [v4 UTF8String];
    brc_notify_set_state_and_post();
  }

  objc_sync_exit(selfCopy);
}

- (void)_notifyContainerBeingNowForeground
{
  foregroundStateQueue = self->_foregroundStateQueue;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__BRCSyncContext__notifyContainerBeingNowForeground__block_invoke;
  v3[3] = &unk_2784FF450;
  v3[4] = self;
  dispatch_async_with_logs_11(foregroundStateQueue, v3);
}

void __52__BRCSyncContext__notifyContainerBeingNowForeground__block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  if (v1[7])
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __52__BRCSyncContext__notifyContainerBeingNowForeground__block_invoke_cold_1(v2);
    }

    dispatch_source_cancel(*(*v2 + 56));
    v5 = *(*v2 + 56);
    *(*v2 + 56) = 0;

    v1 = *v2;
  }

  v6 = v1;
  objc_sync_enter(v6);
  v7 = *(*v2 + 80);
  objc_sync_exit(v6);

  if (!v7)
  {
    [*v2 _updateSubmittedBGSystemTasksWithState:1];
    [*v2 _notifyFrameworkContainersMonitorWithState:1];
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    v9 = [*(*v2 + 136) personaIdentifier];
    v10 = BRPersonaSpecificName();
    [v8 postNotificationName:v10 object:*v2 userInfo:0];
  }
}

- (void)cancelWiFiOnlyOperationsIfNeeded
{
  v26 = *MEMORY[0x277D85DE8];
  _database = [(BRCSyncContext *)self _database];
  if (_database)
  {
    v18 = _database;
    operationQueue = [_database operationQueue];
    operations = [operationQueue operations];

    v19 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(operations, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = operations;
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      do
      {
        v10 = 0;
        do
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v21 + 1) + 8 * v10);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = v11;
            configuration = [v12 configuration];
            allowsCellularAccess = [configuration allowsCellularAccess];

            if ((allowsCellularAccess & 1) == 0)
            {
              v15 = [(BRCSyncContext *)self _buildBGSystemTaskIdentifierForCKOperation:v12];
              [v19 addObject:v15];

              callbackQueue = [v12 callbackQueue];
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __50__BRCSyncContext_cancelWiFiOnlyOperationsIfNeeded__block_invoke;
              block[3] = &unk_2784FF478;
              block[4] = self;
              block[5] = v12;
              dispatch_async(callbackQueue, block);
            }
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v8);
    }

    [(BRCSyncContext *)self _updateWifiOnlyBGSystemTaskWithCancelledTaskIdentifiers:v19 inexpensiveNetworkConnectivity:0];
    _database = v18;
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __50__BRCSyncContext_cancelWiFiOnlyOperationsIfNeeded__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x277CCA9B8] brc_errorCellularStatusChanged];
  [v1 _cancelOperation:v2 underlyingError:v3];
}

@end
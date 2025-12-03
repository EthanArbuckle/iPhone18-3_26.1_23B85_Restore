@interface BRCFSUploader
- (BOOL)_finishPackageUploadWithRecord:(id)record item:(id)item stageID:(id)d packageChecksummer:(id)checksummer error:(id *)error;
- (BOOL)_handleCollaborationUploadError:(id)error recordID:(id)d clientZone:(id)zone reply:(id)reply;
- (BOOL)_retryUploadForError:(id)error jobID:(id)d recomputeRecord:(BOOL)record syncContext:(id)context;
- (BOOL)_shouldReingestAfterUploadErrorWithItem:(id)item record:(id)record;
- (BOOL)_updatePackageRecord:(id)record item:(id)item stageID:(id)d error:(id *)error;
- (BOOL)hasItemsOverQuotaForOwner:(id)owner;
- (BOOL)hasItemsOverQuotaInZone:(id)zone;
- (BOOL)isUploadingItem:(id)item;
- (BRCFSUploader)initWithAccountSession:(id)session;
- (id)_buildItemTooLargeErrorIfNeeded:(id)needed syncContext:(id)context;
- (id)_documentItemForJobID:(id)d operationID:(id)iD;
- (id)_documentItemForJobID:(id)d stageID:(id)iD;
- (id)_duplicatePackage:(id)package stageID:(id)d stageName:(id)name error:(id *)error;
- (id)descriptionForItem:(id)item context:(id)context;
- (id)quotaAvailableForOwner:(id)owner;
- (id)uploadDocument:(id)document withContents:(id)contents baseVersion:(id)version basedOnOriginalVersion:(BOOL)originalVersion options:(unint64_t)options reply:(id)reply;
- (int)getStateOfDocumentItem:(id)item;
- (int64_t)_rescheduleUploadJobsPendingState:(int)state;
- (unint64_t)_minBatchSize;
- (unint64_t)_thumbnailOperationsMax;
- (void)_cancelJobsMatching:(id)matching;
- (void)_clearUploadErrorForDocument:(id)document;
- (void)_close;
- (void)_computeRecordForJobID:(id)d item:(id)item syncContext:(id)context;
- (void)_finishedUploadingItem:(id)item record:(id)record jobID:(id)d stageID:(id)iD syncContext:(id)context hasPerformedServerSideAssetCopy:(BOOL)copy error:(id)error;
- (void)_globalQuotaStateUpdateForDefaultOwner;
- (void)_handleFileModifiedError:(id)error forItem:(id)item;
- (void)_performServerSideAssetCopyForItem:(id)item transferSize:(unint64_t)size;
- (void)_reportUploadErrorForDocument:(id)document error:(id)error underlyingError:(id)underlyingError;
- (void)_rescheduleJobsOutOfQuotaForDefaultOwnerWithAvailableSize:(int64_t)size;
- (void)_scheduleQuotaFetchForDefaultOwner;
- (void)_scheduleRetries;
- (void)_sendItemNotFoundStatsTelemetryForFileID:(id)d;
- (void)_serializeServerSideAssetCopyPluginFieldsForRecord:(id)record newZone:(id)zone origZone:(id)origZone;
- (void)_transferStreamOfSyncContext:(id)context didBecomeReadyWithMaxRecordsCount:(unint64_t)count sizeHint:(unint64_t)hint priority:(int64_t)priority;
- (void)_updateJobID:(id)d setStageID:(id)iD operationID:(id)operationID;
- (void)_updateRecord:(id)record item:(id)item syncContext:(id)context targetThumbnailURL:(id)l stageID:(id)d;
- (void)_updateRecord:(id)record jobID:(id)d syncContext:(id)context targetThumbnailURL:(id)l stageID:(id)iD;
- (void)_updateRecordInDB:(id)b item:(id)item syncContext:(id)context transferSize:(unint64_t)size stageID:(id)d;
- (void)_willAttemptJobID:(id)d throttle:(id)throttle operationID:(id)iD;
- (void)cancel;
- (void)cancelAndCleanupItemUpload:(id)upload;
- (void)close;
- (void)deleteJobsForZone:(id)zone;
- (void)deleteJobsMatching:(id)matching;
- (void)finishedSyncingUpItem:(id)item withOutOfQuotaError:(id)error;
- (void)forceScheduleQuotaFetchForOwner:(id)owner;
- (void)networkCellularChanged:(BOOL)changed;
- (void)networkReachabilityChanged:(BOOL)changed;
- (void)ownerDidReceiveOutOfQuotaError:(id)error;
- (void)performFirstSchedulingAfterStartupInDB:(id)b;
- (void)recoverAndReportMissingJobsWithCompletion:(id)completion recoveryTask:(id)task;
- (void)rescheduleJobsPendingCellular;
- (void)resetAndRescheduleUploaderConstraintCheckerIfNeeded;
- (void)resume;
- (void)schedule;
- (void)scheduleQuotaFetchIfNeededForOwner:(id)owner;
- (void)scheduleQuotaStateUpdateForOwner:(id)owner;
- (void)screenLockChanged:(BOOL)changed;
- (void)setIsDefaultOwnerOutOfQuota:(BOOL)quota forceSignalContainers:(BOOL)containers;
- (void)setQuotaAvailableForDefaultOwner:(unint64_t)owner;
- (void)setState:(int)state forJobID:(id)d zone:(id)zone;
- (void)suspend;
- (void)transferStreamOfSyncContext:(id)context didBecomeReadyWithMaxRecordsCount:(unint64_t)count sizeHint:(unint64_t)hint priority:(int64_t)priority completionBlock:(id)block;
- (void)uploadItem:(id)item;
- (void)userVerifiedTerms;
@end

@implementation BRCFSUploader

- (unint64_t)_thumbnailOperationsMax
{
  v2 = [BRCUserDefaults defaultsForMangledID:0];
  thumbnailTransferQueueWidth = [v2 thumbnailTransferQueueWidth];

  return thumbnailTransferQueueWidth;
}

- (unint64_t)_minBatchSize
{
  v2 = [BRCUserDefaults defaultsForMangledID:0];
  transferQueueMinBatchSize = [v2 transferQueueMinBatchSize];

  return transferQueueMinBatchSize;
}

- (BRCFSUploader)initWithAccountSession:(id)session
{
  sessionCopy = session;
  v5 = [BRCUserDefaults defaultsForMangledID:0];
  v50.receiver = self;
  v50.super_class = BRCFSUploader;
  v6 = [(BRCFSSchedulerBase *)&v50 initWithSession:sessionCopy name:@"Uploader" tableName:@"client_uploads"];
  if (v6)
  {
    v7 = objc_alloc_init(BRCThumbnailGenerationManager);
    thumbnailGenerationManager = v6->_thumbnailGenerationManager;
    v6->_thumbnailGenerationManager = v7;

    [v5 quotaFetchPacerDelay];
    schedulerWorkloop = v6->super.super._schedulerWorkloop;
    v10 = br_pacer_create();
    quotaPacer = v6->_quotaPacer;
    v6->_quotaPacer = v10;

    v12 = brc_task_tracker_create("upload-thumbnail-tracker");
    thumbnailTracker = v6->_thumbnailTracker;
    v6->_thumbnailTracker = v12;

    objc_initWeak(&location, v6);
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __40__BRCFSUploader_initWithAccountSession___block_invoke;
    v47[3] = &unk_2784FF400;
    objc_copyWeak(&v48, &location);
    [(BRCThumbnailGenerationManager *)v6->_thumbnailGenerationManager setHasThumbnailAvailableSlot:v47];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __40__BRCFSUploader_initWithAccountSession___block_invoke_3;
    v45[3] = &unk_2784FF400;
    objc_copyWeak(&v46, &location);
    [(BRCThumbnailGenerationManager *)v6->_thumbnailGenerationManager setReachedThumbnailMaximumCapacity:v45];
    v14 = v6->_quotaPacer;
    v43[1] = MEMORY[0x277D85DD0];
    v43[2] = 3221225472;
    v43[3] = __40__BRCFSUploader_initWithAccountSession___block_invoke_4;
    v43[4] = &unk_2784FF400;
    objc_copyWeak(&v44, &location);
    br_pacer_set_event_handler();
    clientDB = [sessionCopy clientDB];
    serialQueue = [clientDB serialQueue];
    v17 = br_pacer_create();
    globalQuotaStateUpdatePacer = v6->_globalQuotaStateUpdatePacer;
    v6->_globalQuotaStateUpdatePacer = v17;

    v19 = v6->_globalQuotaStateUpdatePacer;
    v42[1] = MEMORY[0x277D85DD0];
    v42[2] = 3221225472;
    v42[3] = __40__BRCFSUploader_initWithAccountSession___block_invoke_5;
    v42[4] = &unk_2784FF400;
    objc_copyWeak(v43, &location);
    br_pacer_set_event_handler();
    personaIdentifier = [sessionCopy personaIdentifier];
    v21 = BRPersonaSpecificName();

    v22 = dispatch_workloop_create([v21 UTF8String]);
    v23 = [[BRCFairScheduler alloc] initWithWorkloop:v22 name:v21];
    fairScheduler = v6->_fairScheduler;
    v6->_fairScheduler = v23;

    v25 = [[BRCDeadlineScheduler alloc] initWithName:@"com.apple.bird.uploader" fairScheduler:v6->_fairScheduler];
    uploadsDeadlineScheduler = v6->_uploadsDeadlineScheduler;
    v6->_uploadsDeadlineScheduler = v25;

    [(BRCDeadlineScheduler *)v6->_uploadsDeadlineScheduler setCoalescingLeeway:10000000];
    v27 = [BRCDeadlineSource alloc];
    defaultScheduler = [(BRCAccountSession *)v6->super.super._session defaultScheduler];
    v29 = [(BRCDeadlineSource *)v27 initWithScheduler:defaultScheduler name:@"uploader-retry"];
    retryQueueSource = v6->_retryQueueSource;
    v6->_retryQueueSource = v29;

    [(BRCDeadlineSource *)v6->_retryQueueSource setWorkloop:v6->super.super._schedulerWorkloop];
    v31 = v6->_retryQueueSource;
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __40__BRCFSUploader_initWithAccountSession___block_invoke_6;
    v41[3] = &unk_2784FF400;
    objc_copyWeak(v42, &location);
    [(BRCDeadlineSource *)v31 setEventHandler:v41];
    v32 = +[BRCUploadConstraintChecker defaultChecker];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __40__BRCFSUploader_initWithAccountSession___block_invoke_22;
    v39[3] = &unk_2784FF400;
    objc_copyWeak(&v40, &location);
    personaIdentifier2 = [(BRCAccountSession *)v6->super.super._session personaIdentifier];
    [v32 addRescheduleSuspendedJobsBlock:v39 forPersonaID:personaIdentifier2];

    v34 = +[BRCUploadConstraintChecker defaultChecker];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __40__BRCFSUploader_initWithAccountSession___block_invoke_2_23;
    v37[3] = &unk_2785055F0;
    objc_copyWeak(&v38, &location);
    personaIdentifier3 = [(BRCAccountSession *)v6->super.super._session personaIdentifier];
    [v34 addNoSpaceExecutionBlock:v37 forPersonaID:personaIdentifier3];

    objc_destroyWeak(&v38);
    objc_destroyWeak(&v40);
    objc_destroyWeak(v42);

    objc_destroyWeak(v43);
    objc_destroyWeak(&v44);
    objc_destroyWeak(&v46);
    objc_destroyWeak(&v48);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __40__BRCFSUploader_initWithAccountSession___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained[1] clientDB];
  v3 = [v2 serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__BRCFSUploader_initWithAccountSession___block_invoke_2;
  block[3] = &unk_2784FF450;
  v6 = WeakRetained;
  v4 = WeakRetained;
  dispatch_async(v3, block);
}

void __40__BRCFSUploader_initWithAccountSession___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained[2] suspend];
}

void __40__BRCFSUploader_initWithAccountSession___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _scheduleQuotaFetchForDefaultOwner];
}

void __40__BRCFSUploader_initWithAccountSession___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _globalQuotaStateUpdateForDefaultOwner];
}

void __40__BRCFSUploader_initWithAccountSession___block_invoke_6(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  memset(v6, 0, sizeof(v6));
  __brc_create_section(0, "[BRCFSUploader initWithAccountSession:]_block_invoke_6", 174, 0, v6);
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __40__BRCFSUploader_initWithAccountSession___block_invoke_6_cold_1(v6);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _scheduleRetries];

  __brc_leave_section(v6);
  objc_autoreleasePoolPop(v2);
}

void __40__BRCFSUploader_initWithAccountSession___block_invoke_22(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained rescheduleJobsPendingCellular];
    WeakRetained = v2;
  }
}

void __40__BRCFSUploader_initWithAccountSession___block_invoke_2_23(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v4 = [WeakRetained[1] personaIdentifier];
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
    v6 = +[AppTelemetryTimeSeriesEvent newLongEvent:UUID:value:](AppTelemetryTimeSeriesEvent, "newLongEvent:UUID:value:", 44, v4, [v5 br_roundedLongLongValue]);

    v7 = [v8[1] analyticsReporter];
    [v7 postReportForDefaultSubCategoryWithCategory:8 telemetryTimeEvent:v6];

    WeakRetained = v8;
  }
}

- (void)resume
{
  quotaPacer = self->_quotaPacer;
  br_pacer_resume();
  clientState = [(BRCAccountSession *)self->super.super._session clientState];
  v5 = [clientState objectForKeyedSubscript:@"availableQuota"];

  if (!v5)
  {
    v6 = self->_quotaPacer;
    br_pacer_signal();
  }

  globalQuotaStateUpdatePacer = self->_globalQuotaStateUpdatePacer;
  br_pacer_resume();
  [(BRCDeadlineSource *)self->_retryQueueSource signal];
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  session = self->super.super._session;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __23__BRCFSUploader_resume__block_invoke;
  v23[3] = &unk_278505618;
  v10 = v8;
  v24 = v10;
  [(BRCAccountSession *)session enumerateServerZones:v23];
  globalProgress = [(BRCAccountSession *)self->super.super._session globalProgress];
  [globalProgress resumeProgressForZones:v10];

  [(BRCDeadlineScheduler *)self->_uploadsDeadlineScheduler resume];
  [(BRCDeadlineSource *)self->_retryQueueSource resume];
  [(BRCFairScheduler *)self->_fairScheduler resume];
  v12 = [BRCUploadCKRecordProvider alloc];
  stageRegistry = [(BRCAccountSession *)self->super.super._session stageRegistry];
  v14 = MEMORY[0x277CCABB0];
  volume = [(BRCAccountSession *)self->super.super._session volume];
  v16 = [v14 numberWithInt:{objc_msgSend(volume, "deviceID")}];
  v17 = [(BRCUploadCKRecordProvider *)v12 initWithStageRegistry:stageRegistry deviceID:v16];
  uploadCKRecordProvider = self->_uploadCKRecordProvider;
  self->_uploadCKRecordProvider = v17;

  v22.receiver = self;
  v22.super_class = BRCFSUploader;
  [(BRCFSSchedulerBase *)&v22 resume];
  v19 = +[BRCSystemResourcesManager manager];
  [v19 addScreenLockObserver:self];

  v20 = +[BRCSystemResourcesManager manager];
  [v20 addReachabilityObserver:self];

  v21 = +[BRCAccountHandler currentiCloudAccount];
  LOBYTE(stageRegistry) = [v21 br_needsToVerifyTerms];

  if ((stageRegistry & 1) == 0)
  {
    [(BRCFSUploader *)self userVerifiedTerms];
  }
}

uint64_t __23__BRCFSUploader_resume__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 clientZone];
  [v2 addObject:v3];

  return 1;
}

- (void)suspend
{
  [(BRCDeadlineScheduler *)self->_uploadsDeadlineScheduler suspend];
  [(BRCDeadlineSource *)self->_retryQueueSource suspend];
  [(BRCFairScheduler *)self->_fairScheduler suspend];
  v3.receiver = self;
  v3.super_class = BRCFSUploader;
  [(BRCFSSchedulerBase *)&v3 suspend];
}

- (void)close
{
  [(BRCDeadlineScheduler *)self->_uploadsDeadlineScheduler close];
  [(BRCFairScheduler *)self->_fairScheduler close];
  quotaPacer = self->_quotaPacer;
  br_pacer_cancel();
  uploadCKRecordProvider = self->_uploadCKRecordProvider;
  self->_uploadCKRecordProvider = 0;

  v5.receiver = self;
  v5.super_class = BRCFSUploader;
  [(BRCFSSchedulerBase *)&v5 close];
}

- (void)_close
{
  v3.receiver = self;
  v3.super_class = BRCFSUploader;
  [(BRCFSSchedulerBase *)&v3 _close];
  brc_task_tracker_wait(self->_thumbnailTracker);
}

- (void)cancel
{
  v3 = +[BRCSystemResourcesManager manager];
  [v3 removeScreenLockObserver:self];

  v4 = +[BRCSystemResourcesManager manager];
  [v4 removeReachabilityObserver:self];

  [(BRCDeadlineSource *)self->_retryQueueSource cancel];
  v5.receiver = self;
  v5.super_class = BRCFSUploader;
  [(BRCFSSchedulerBase *)&v5 cancel];
  brc_task_tracker_cancel(self->_thumbnailTracker);
}

- (id)descriptionForItem:(id)item context:(id)context
{
  v6 = MEMORY[0x277D82C18];
  contextCopy = context;
  itemCopy = item;
  v9 = [v6 rawInjection:"upload_error" length:12];
  v10 = [(BRCFSSchedulerBase *)self descriptionForJobsMatching:itemCopy ordering:0 additionalColumns:v9 additionalValuesHandler:&__block_literal_global_53 context:contextCopy];

  return v10;
}

void __44__BRCFSUploader_descriptionForItem_context___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, unsigned int a5)
{
  v11 = a2;
  v8 = a3;
  if (a5 >= 2)
  {
    if (_allowedClassesForErrors_once != -1)
    {
      __44__BRCFSUploader_descriptionForItem_context___block_invoke_cold_1();
    }

    v9 = [v8 unarchivedObjectOfClasses:_allowedClassesForErrors_allowedClasses atIndex:a4];
    v10 = v9;
    if (v9)
    {
      [v11 appendFormat:@" upload_error:%@", v9];
    }
  }
}

- (int)getStateOfDocumentItem:(id)item
{
  v4 = -[BRCItemDBRowIDJobIdentifier initWithItemDBRowID:]([BRCItemDBRowIDJobIdentifier alloc], "initWithItemDBRowID:", [item dbRowID]);
  LODWORD(self) = [(BRCFSSchedulerBase *)self jobStateFor:v4];

  return self;
}

- (id)_buildItemTooLargeErrorIfNeeded:(id)needed syncContext:(id)context
{
  neededCopy = needed;
  contextCopy = context;
  currentVersion = [neededCopy currentVersion];
  defaults = [contextCopy defaults];

  if ([currentVersion isPackage])
  {
    uploadMaxPkgFileSize = [defaults uploadMaxPkgFileSize];
  }

  else
  {
    uploadMaxPkgFileSize = [defaults uploadMaxFileSize];
  }

  v10 = uploadMaxPkgFileSize;
  v11 = [currentVersion size];
  if (v11 >= v10)
  {
    v14 = v11;
LABEL_9:
    uploadMaxFileSize = [defaults uploadMaxFileSize];
    uploadMaxInPkgFileSize = [defaults uploadMaxInPkgFileSize];
    if (uploadMaxFileSize >= uploadMaxInPkgFileSize)
    {
      v19 = uploadMaxInPkgFileSize;
    }

    else
    {
      v19 = uploadMaxFileSize;
    }

    v26 = MEMORY[0x277CCA9B8];
    v20 = [neededCopy st];
    filename = [v20 filename];
    v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v23 = [MEMORY[0x277CCACA8] br_newReadableFileSizeStringFromBytesCount:v19];
    v24 = _BRLocalizedStringWithFormat();
    v16 = [v26 brc_errorDocumentWithFilename:filename size:v14 isTooLargeToUpload:v10 localizedDescription:{v24, v23}];

    goto LABEL_13;
  }

  if ([currentVersion isPackage])
  {
    dbRowID = [neededCopy dbRowID];
    session = [neededCopy session];
    v14 = [BRCPackageItem largestPackageItemSizeInItemRowID:dbRowID session:session];

    uploadMaxInPkgFileSize2 = [defaults uploadMaxInPkgFileSize];
    if (v14 >= uploadMaxInPkgFileSize2)
    {
      v10 = uploadMaxInPkgFileSize2;
      goto LABEL_9;
    }
  }

  v16 = 0;
LABEL_13:

  return v16;
}

- (void)_updateJobID:(id)d setStageID:(id)iD operationID:(id)operationID
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  operationIDCopy = operationID;
  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v17 = dCopy;
    v18 = 2112;
    v19 = iDCopy;
    v20 = 2112;
    v21 = v11;
    _os_log_debug_impl(&dword_223E7A000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] Uploader[%@]: upload stage set to: %@%@", buf, 0x20u);
  }

  clientDB = [(BRCAccountSession *)self->super.super._session clientDB];
  matchingJobsWhereSQLClause = [dCopy matchingJobsWhereSQLClause];
  [clientDB execute:{@"UPDATE client_uploads SET transfer_stage = %@, transfer_operation = %@ WHERE %@", iDCopy, operationIDCopy, matchingJobsWhereSQLClause}];

  v15 = *MEMORY[0x277D85DE8];
}

- (id)_documentItemForJobID:(id)d stageID:(id)iD
{
  session = self->super.super._session;
  iDCopy = iD;
  dCopy = d;
  clientDB = [(BRCAccountSession *)session clientDB];
  matchingJobsWhereSQLClause = [dCopy matchingJobsWhereSQLClause];
  v11 = [clientDB numberWithSQL:{@"SELECT zone_rowid FROM client_uploads WHERE %@ AND transfer_stage = %@", matchingJobsWhereSQLClause, iDCopy}];

  v12 = [(BRCAccountSession *)self->super.super._session serverZoneByRowID:v11];
  clientZone = [v12 clientZone];
  itemDBRowID = [dCopy itemDBRowID];

  v15 = [clientZone itemByRowID:itemDBRowID];
  asDocument = [v15 asDocument];

  return asDocument;
}

- (id)_documentItemForJobID:(id)d operationID:(id)iD
{
  session = self->super.super._session;
  iDCopy = iD;
  dCopy = d;
  clientDB = [(BRCAccountSession *)session clientDB];
  matchingJobsWhereSQLClause = [dCopy matchingJobsWhereSQLClause];
  v11 = [clientDB numberWithSQL:{@"SELECT zone_rowid FROM client_uploads WHERE %@ AND transfer_operation = %@", matchingJobsWhereSQLClause, iDCopy}];

  v12 = [(BRCAccountSession *)self->super.super._session serverZoneByRowID:v11];
  clientZone = [v12 clientZone];
  itemDBRowID = [dCopy itemDBRowID];

  v15 = [clientZone itemByRowID:itemDBRowID];
  asDocument = [v15 asDocument];

  return asDocument;
}

- (BOOL)isUploadingItem:(id)item
{
  itemCopy = item;
  if ([itemCopy needsUpload])
  {
    v4 = [itemCopy db];
    v5 = [v4 numberWithSQL:{@"SELECT transfer_operation IS NOT NULL FROM client_uploads WHERE throttle_id = %llu", objc_msgSend(itemCopy, "dbRowID")}];
  }

  else
  {
    v5 = 0;
  }

  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (void)_willAttemptJobID:(id)d throttle:(id)throttle operationID:(id)iD
{
  session = self->super.super._session;
  iDCopy = iD;
  dCopy = d;
  clientDB = [(BRCAccountSession *)session clientDB];
  matchingJobsWhereSQLClause = [dCopy matchingJobsWhereSQLClause];

  [clientDB execute:{@"UPDATE client_uploads SET   throttle_state = 1, transfer_operation = %@ WHERE %@", iDCopy, matchingJobsWhereSQLClause}];
}

- (void)_cancelJobsMatching:(id)matching
{
  session = self->super.super._session;
  matchingCopy = matching;
  clientDB = [(BRCAccountSession *)session clientDB];
  matchingJobsWhereSQLClause = [matchingCopy matchingJobsWhereSQLClause];

  v7 = [clientDB fetch:{@"SELECT throttle_id, transfer_queue, transfer_operation, transfer_stage, app_library_rowid, throttle_state, zone_rowid   FROM client_uploads  WHERE %@ AND throttle_state != 0", matchingJobsWhereSQLClause}];
  [(BRCFSUploader *)self _cancelJobs:v7 state:0 uploadError:0];
}

- (void)deleteJobsMatching:(id)matching
{
  matchingCopy = matching;
  [(BRCFSUploader *)self _cancelJobsMatching:matchingCopy];
  v5.receiver = self;
  v5.super_class = BRCFSUploader;
  [(BRCFSSchedulerBase *)&v5 deleteJobsMatching:matchingCopy];
}

- (void)deleteJobsForZone:(id)zone
{
  session = self->super.super._session;
  zoneCopy = zone;
  clientDB = [(BRCAccountSession *)session clientDB];
  dbRowID = [zoneCopy dbRowID];
  v8 = [clientDB fetch:{@"SELECT throttle_id, transfer_queue, transfer_operation, transfer_stage, app_library_rowid, throttle_state, zone_rowid   FROM client_uploads  WHERE zone_rowid = %@ AND throttle_state != 0", dbRowID}];
  [(BRCFSUploader *)self _cancelJobs:v8 state:0 uploadError:0];

  v9.receiver = self;
  v9.super_class = BRCFSUploader;
  [(BRCFSSchedulerBase *)&v9 deleteJobsMatching:zoneCopy];
}

- (void)cancelAndCleanupItemUpload:(id)upload
{
  v17 = *MEMORY[0x277D85DE8];
  uploadCopy = upload;
  memset(v10, 0, sizeof(v10));
  __brc_create_section(0, "[BRCFSUploader cancelAndCleanupItemUpload:]", 491, 0, v10);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = v10[0];
    jobsDescription = [uploadCopy jobsDescription];
    *buf = 134218498;
    v12 = v8;
    v13 = 2112;
    v14 = jobsDescription;
    v15 = 2112;
    v16 = v5;
    _os_log_debug_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Uploader[%@]: cancel and cleanup item upload%@", buf, 0x20u);
  }

  [(BRCFSUploader *)self _cancelJobsMatching:uploadCopy];
  __brc_leave_section(v10);

  v7 = *MEMORY[0x277D85DE8];
}

- (int64_t)_rescheduleUploadJobsPendingState:(int)state
{
  v23 = *MEMORY[0x277D85DE8];
  if ((state - 35) >= 4)
  {
    v5 = brc_bread_crumbs();
    clientDB = brc_default_log();
    if (os_log_type_enabled(clientDB, OS_LOG_TYPE_FAULT))
    {
      [BRCFSUploader _rescheduleUploadJobsPendingState:];
    }

    goto LABEL_12;
  }

  v5 = [MEMORY[0x277D82C18] rawInjection:-[__CFString UTF8String](off_278505930[state - 35] length:{"UTF8String"), -[__CFString length](off_278505930[v3], "length")}];
  clientDB = [(BRCAccountSession *)self->super.super._session clientDB];
  [clientDB execute:@"UPDATE client_items SET version_upload_error = NULL, item_notifs_rank = bump_notifs_rank_and_trigger_notifs(rowid) WHERE rowid IN (SELECT throttle_id FROM client_uploads WHERE throttle_state = %@)", v5];
  if (![clientDB changes])
  {
LABEL_12:
    changes = 0;
    goto LABEL_13;
  }

  memset(v16, 0, sizeof(v16));
  __brc_create_section(0, "[BRCFSUploader _rescheduleUploadJobsPendingState:]", 524, 0, v16);
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v14 = v16[0];
    v15 = BRCPrettyPrintEnum();
    *buf = 134218498;
    v18 = v14;
    v19 = 2080;
    v20 = v15;
    v21 = 2112;
    v22 = v7;
    _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx re-uploading failed items for %s%@", buf, 0x20u);
  }

  [clientDB execute:@"UPDATE client_uploads SET throttle_state = 1, upload_error = NULL WHERE throttle_state = %@", v5];
  if ([clientDB changes])
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [BRCFSUploader _rescheduleUploadJobsPendingState:];
    }

    [(BRCFSSchedulerBase *)self signal];
  }

  changes = [clientDB changes];
  __brc_leave_section(v16);
LABEL_13:

  v12 = *MEMORY[0x277D85DE8];
  return changes;
}

- (void)rescheduleJobsPendingCellular
{
  personaIdentifier = [(BRCAccountSession *)self->super.super._session personaIdentifier];
  BRPerformWithPersonaAndError();
}

void __46__BRCFSUploader_rescheduleJobsPendingCellular__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __46__BRCFSUploader_rescheduleJobsPendingCellular__block_invoke_cold_1();
    }
  }

  else
  {
    v6 = [*(*(a1 + 32) + 8) clientTruthWorkloop];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__BRCFSUploader_rescheduleJobsPendingCellular__block_invoke_115;
    block[3] = &unk_2784FF450;
    block[4] = *(a1 + 32);
    dispatch_async(v6, block);
  }
}

- (void)setState:(int)state forJobID:(id)d zone:(id)zone
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_fault_impl(&dword_223E7A000, v6, OS_LOG_TYPE_FAULT, "[CRIT] API MISUSE: should call setState:forUploadJobID:zone:%@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __58__BRCFSUploader_setState_forUploadJobID_zone_uploadError___block_invoke(uint64_t a1, sqlite3_context *a2, uint64_t a3, sqlite3_value **a4)
{
  v7 = sqlite3_value_int64(*a4);
  if (sqlite3_value_int(a4[1]))
  {
    [*(a1 + 32) signalWithDeadline:v7];
  }

  else
  {
    v8 = [MEMORY[0x277CCABB0] numberWithLongLong:sqlite3_value_int64(a4[1])];
    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:sqlite3_value_int64(a4[2])];
    v10 = [*(*(a1 + 32) + 8) appLibraryByRowID:v8];
    v11 = [*(*(a1 + 32) + 8) serverZoneByRowID:v9];
    v12 = [BRCSyncContext transferContextForServerZone:v11 appLibrary:v10];
    v13 = [v12 uploadStream];
    [v13 signalWithDeadline:v7];
  }

  sqlite3_result_int(a2, 1);
}

- (void)uploadItem:(id)item
{
  v54 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  memset(v47, 0, sizeof(v47));
  __brc_create_section(0, "[BRCFSUploader uploadItem:]", 636, 0, v47);
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v30 = v47[0];
    jobsDescription = [itemCopy jobsDescription];
    *buf = 134218498;
    v49 = v30;
    v50 = 2112;
    v51 = jobsDescription;
    v52 = 2112;
    v53 = v4;
    _os_log_debug_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Uploader[%@]: uploading%@", buf, 0x20u);
  }

  appLibrary = [itemCopy appLibrary];
  currentVersion = [itemCopy currentVersion];
  uploadError = [currentVersion uploadError];

  syncContextUsedForTransfers = [itemCopy syncContextUsedForTransfers];
  if ([uploadError brc_isCloudKitErrorDataProtectionClass] && !self->_isScreenLocked)
  {

    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      itemID = [itemCopy itemID];
      debugItemIDString = [itemID debugItemIDString];
      *buf = 138412546;
      v49 = debugItemIDString;
      v50 = 2112;
      v51 = v8;
      _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] Screen no longer locked. Try upload item: %@%@", buf, 0x16u);
    }
  }

  else if (uploadError)
  {
    if ([uploadError brc_isCloudKitOutOfQuota])
    {
      v38 = 0;
      v7 = 32;
    }

    else if ([uploadError brc_isCloudKitErrorDataProtectionClass])
    {
      v38 = 0;
      v7 = 35;
    }

    else if ([uploadError brc_isCloudKitErrorNoNetwork] & 1) != 0 || (objc_msgSend(uploadError, "brc_isNetworkUnreachableError"))
    {
      v38 = 0;
      v7 = 36;
    }

    else if ([uploadError brc_isCloudKitErrorRequiresVerifyTerms] && (+[BRCAccountHandler currentiCloudAccount](BRCAccountHandler, "currentiCloudAccount"), v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v32, "br_needsToVerifyTerms"), v32, (v33 & 1) != 0))
    {
      v38 = 0;
      v7 = 37;
    }

    else
    {
      v38 = 0;
      if ([uploadError brc_isNetworkUnreachableDueToCellularError])
      {
        v7 = 38;
      }

      else
      {
        v7 = 33;
      }
    }

    goto LABEL_21;
  }

  syncUpScheduler = [(BRCAccountSession *)self->super.super._session syncUpScheduler];
  v11 = [syncUpScheduler isItemPendingSyncUp:itemCopy];

  if (v11)
  {
    uploadError = 0;
    v38 = 0;
    v7 = 31;
  }

  else
  {
    uploadError = [(BRCFSUploader *)self _buildItemTooLargeErrorIfNeeded:itemCopy syncContext:syncContextUsedForTransfers];
    v38 = uploadError == 0;
    if (uploadError)
    {
      v7 = 34;
    }

    else
    {
      v7 = 1;
    }
  }

LABEL_21:
  v39 = v7;
  currentVersion2 = [itemCopy currentVersion];
  [currentVersion2 setUploadError:uploadError];

  v13 = itemCopy;
  v42 = -[BRCItemDBRowIDJobIdentifier initWithItemDBRowID:]([BRCItemDBRowIDJobIdentifier alloc], "initWithItemDBRowID:", [v13 dbRowID]);

  uploadThrottle = [syncContextUsedForTransfers uploadThrottle];
  v40 = [MEMORY[0x277D82C18] rawInjection:"app_library_rowid length:{transfer_queue, transfer_size, transfer_record, transfer_stage, transfer_operation, upload_priority, zone_rowid", 131}];
  v14 = MEMORY[0x277D82C08];
  dbRowID = [appLibrary dbRowID];
  currentVersion3 = [v13 currentVersion];
  v17 = [currentVersion3 size];
  currentVersion4 = [v13 currentVersion];
  thumbnailSize = [currentVersion4 thumbnailSize];
  serverZone = [v13 serverZone];
  dbRowID2 = [serverZone dbRowID];
  v22 = [v14 formatInjection:{@"%@, %@, %lld, %@, %@, %@, %lld, %@", dbRowID, @"_prepare", thumbnailSize + v17, 0, 0, 0, -1, dbRowID2}];
  v23 = MEMORY[0x277D82C08];
  serverZone2 = [v13 serverZone];
  dbRowID3 = [serverZone2 dbRowID];
  v26 = [v23 formatInjection:{@"zone_rowid = %@", dbRowID3}];
  v36 = [(BRCFSSchedulerBase *)self insertOrUpdateJobID:v42 throttle:uploadThrottle withState:v39 insertedSQLColumn:v40 insertedSQLValues:v22 updatedSQLValues:v26 error:0];
  v37 = v27;

  if (v38)
  {
    [(BRCFSSchedulerBase *)self signalWithDeadline:v37];
  }

  else if (v36 == 1)
  {
    globalProgress = [(BRCAccountSession *)self->super.super._session globalProgress];
    [globalProgress updateUploadThrottleForDocument:v13 toState:v39];
  }

  __brc_leave_section(v47);
  v29 = *MEMORY[0x277D85DE8];
}

- (void)_scheduleRetries
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Uploader: no more jobs to retry%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __33__BRCFSUploader__scheduleRetries__block_invoke(uint64_t a1, sqlite3_context *a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = *(*(a1 + 32) + 8);
  v8 = [MEMORY[0x277CCABB0] newFromSqliteValue:*(a4 + 8)];
  v9 = [v7 appLibraryByRowID:v8];

  v10 = *(*(a1 + 32) + 8);
  v11 = [MEMORY[0x277CCABB0] newFromSqliteValue:*(a4 + 24)];
  v12 = [v10 serverZoneByRowID:v11];

  v13 = [BRCSyncContext transferContextForServerZone:v12 appLibrary:v9];
  v14 = [v13 contextIdentifier];
  v15 = brc_bread_crumbs();
  v16 = brc_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v19 = sqlite3_value_int64(*a4);
    v20 = 134218498;
    v21 = v19;
    v22 = 2112;
    v23 = v14;
    v24 = 2112;
    v25 = v15;
    _os_log_debug_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] Uploader[%lld]: job has been put back in queue %@%@", &v20, 0x20u);
  }

  sqlite3_result_text(a2, [v14 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  v17 = [v13 uploadStream];
  [v17 signalWithDeadline:sqlite3_value_int64(*(a4 + 16))];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)performFirstSchedulingAfterStartupInDB:(id)b
{
  v26 = *MEMORY[0x277D85DE8];
  bCopy = b;
  [bCopy execute:@"UPDATE client_uploads SET transfer_operation = NULL WHERE (transfer_operation >= '')"];
  if ([bCopy changes])
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [BRCFSUploader performFirstSchedulingAfterStartupInDB:];
    }
  }

  v7 = [bCopy fetch:{@"SELECT app_library_rowid, zone_rowid, transfer_queue   FROM client_uploads  WHERE throttle_state = 1 GROUP BY app_library_rowid, zone_rowid, transfer_queue"}];
  if ([v7 next])
  {
    do
    {
      v8 = objc_autoreleasePoolPush();
      session = self->super.super._session;
      v10 = [v7 numberAtIndex:0];
      v11 = [(BRCAccountSession *)session appLibraryByRowID:v10];

      v12 = self->super.super._session;
      v13 = [v7 numberAtIndex:1];
      v14 = [(BRCAccountSession *)v12 serverZoneByRowID:v13];

      v15 = [v7 stringAtIndex:2];
      if (([v15 isEqualToString:@"_prepare"] & 1) == 0 && (objc_msgSend(v15, "isEqualToString:", @"_retry") & 1) == 0)
      {
        v16 = brc_bread_crumbs();
        v17 = brc_default_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v21 = [v7 stringAtIndex:2];
          *buf = 138412546;
          v23 = v21;
          v24 = 2112;
          v25 = v16;
          _os_log_debug_impl(&dword_223E7A000, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] Kicking uploads for %@%@", buf, 0x16u);
        }

        v18 = [BRCSyncContext transferContextForServerZone:v14 appLibrary:v11];
        uploadStream = [v18 uploadStream];
        [uploadStream signal];
      }

      objc_autoreleasePoolPop(v8);
    }

    while (([v7 next] & 1) != 0);
  }

  [(BRCFSUploader *)self setIsDefaultOwnerOutOfQuota:[(BRCFSUploader *)self hasItemsOverQuotaForOwner:*MEMORY[0x277CBBF28]] forceSignalContainers:1];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)schedule
{
  v3 = [BRCUserDefaults defaultsForMangledID:0];
  readerScanBatchSize = [v3 readerScanBatchSize];

  v5 = [MEMORY[0x277D82C08] formatInjection:@"transfer_queue = '_prepare' AND transfer_operation IS NULL"];
  v6 = [MEMORY[0x277D82C18] rawInjection:"throttle_id length:{app_library_rowid, zone_rowid", 42}];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __25__BRCFSUploader_schedule__block_invoke;
  v7[3] = &unk_278502028;
  v7[4] = self;
  [(BRCFSSchedulerBase *)self scheduleWithBatchSize:readerScanBatchSize whereSQLClause:v5 columns:v6 actionHandler:v7];
}

void __25__BRCFSUploader_schedule__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = -[BRCItemDBRowIDJobIdentifier initWithItemDBRowID:]([BRCItemDBRowIDJobIdentifier alloc], "initWithItemDBRowID:", [v5 longLongAtIndex:a3]);
  v7 = [v5 numberAtIndex:(a3 + 1)];
  v8 = [v5 numberAtIndex:(a3 + 2)];
  v9 = [*(*(a1 + 32) + 8) appLibraryByRowID:v7];
  v10 = [*(*(a1 + 32) + 8) serverZoneByRowID:v8];
  v11 = v10;
  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v15 = [*(*(a1 + 32) + 8) itemFetcher];
    v16 = [v15 itemByRowID:{-[BRCItemDBRowIDJobIdentifier itemDBRowID](v6, "itemDBRowID")}];
    v17 = [v16 asDocument];

    v18 = [BRCSyncContext transferContextForServerZone:v11 appLibrary:v9];
    if (v17)
    {
      if (([v17 isDead] & 1) == 0)
      {
        v19 = [v5 db];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __25__BRCFSUploader_schedule__block_invoke_156;
        v22[3] = &unk_278505640;
        v22[4] = *(a1 + 32);
        v23 = v6;
        v24 = v17;
        v25 = v18;
        [v19 groupInBatch:v22];

LABEL_16:
        goto LABEL_17;
      }
    }

    else
    {
      v21 = brc_bread_crumbs();
      v20 = brc_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        __25__BRCFSUploader_schedule__block_invoke_cold_2();
      }
    }

    [*(a1 + 32) deleteJobsMatching:v6];
    goto LABEL_16;
  }

  v13 = brc_bread_crumbs();
  v14 = brc_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    __25__BRCFSUploader_schedule__block_invoke_cold_1();
  }

  [*(a1 + 32) deleteJobsMatching:v6];
LABEL_17:
}

- (BOOL)_updatePackageRecord:(id)record item:(id)item stageID:(id)d error:(id *)error
{
  v138 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  itemCopy = item;
  dCopy = d;
  stageRegistry = [(BRCAccountSession *)self->super.super._session stageRegistry];
  v13 = [stageRegistry createURLForUploadWithStageID:dCopy name:@"brpackage"];
  v116 = [stageRegistry createURLForUploadWithStageID:dCopy name:@"ckpackage"];
  v118 = [recordCopy getAndUpdateBoundaryKeyForItem:itemCopy];
  v14 = brc_bread_crumbs();
  v15 = brc_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [BRCFSUploader _updatePackageRecord:item:stageID:error:];
  }

  v16 = [BRCPackageManifestWriter alloc];
  clientZone = [itemCopy clientZone];
  v18 = [(BRCPackageManifestWriter *)v16 initWithZone:clientZone stageID:dCopy url:v13];

  v119 = v18;
  error = [(BRCPackageManifestWriter *)v18 error];

  if (!error)
  {
    v114 = objc_alloc_init(BRFieldPkgItem);
    v128 = 0;
    v25 = [MEMORY[0x277CBC538] br_packageWithBoundaryKey:v118 error:&v128];
    v26 = v128;
    v27 = v26;
    v109 = v25;
    if (v25)
    {
      v127 = v26;
      v28 = [v25 anchorAtURL:v116 error:&v127];
      v117 = v127;

      if (v28)
      {
        v104 = v13;
        v29 = MEMORY[0x277CCABB0];
        volume = [(BRCAccountSession *)self->super.super._session volume];
        v107 = [v29 numberWithInt:{objc_msgSend(volume, "deviceID")}];

        v31 = [[BRCLazyPackage alloc] initWithRegistry:stageRegistry stageID:dCopy name:@"ckpackage-xattrs" boundaryKey:v118];
        v105 = itemCopy;
        [BRCPackageItem packageItemsForItem:itemCopy order:1];
        v123 = 0u;
        v124 = 0u;
        v125 = 0u;
        obj = v126 = 0u;
        v103 = recordCopy;
        v115 = v31;
        v111 = [obj countByEnumeratingWithState:&v123 objects:v129 count:16];
        if (v111)
        {
          v32 = 0;
          v110 = *v124;
          v24 = v114;
          v102 = dCopy;
          v106 = stageRegistry;
          while (2)
          {
            for (i = 0; i != v111; ++i)
            {
              if (*v124 != v110)
              {
                objc_enumerationMutation(obj);
              }

              v34 = *(*(&v123 + 1) + 8 * i);
              v35 = objc_autoreleasePoolPush();
              if ([v34 isFile])
              {
                v36 = brc_bread_crumbs();
                v37 = brc_default_log();
                if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
                {
                  dbRowID = [v105 dbRowID];
                  longValue = [v107 longValue];
                  fileID = [v34 fileID];
                  *buf = 134218754;
                  v131 = dbRowID;
                  v132 = 2048;
                  v133 = longValue;
                  v134 = 2048;
                  v135 = fileID;
                  v136 = 2112;
                  v137 = v36;
                  _os_log_debug_impl(&dword_223E7A000, v37, OS_LOG_TYPE_DEBUG, "[DEBUG] Uploader[%lld]: adding package item with deviceID 0x%lx fileID %lu%@", buf, 0x2Au);
                }

                v38 = objc_alloc(MEMORY[0x277CBC540]);
                v39 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v34, "fileID")}];
                generationID = [v34 generationID];
                fsGenerationID = [generationID fsGenerationID];
                v42 = [v38 initWithDeviceID:v107 fileID:v39 generationID:fsGenerationID];

                [v42 setPackageIndex:v32];
                pathInPackage = [v34 pathInPackage];
                lastPathComponent = [pathInPackage lastPathComponent];
                br_pathExtension = [lastPathComponent br_pathExtension];
                [v42 setItemTypeHint:br_pathExtension];

                error3 = [v109 addItem:v42];

                if (error3)
                {
                  v73 = v35;
                  v78 = brc_bread_crumbs();
                  v79 = brc_default_log();
                  v24 = v114;
                  if (os_log_type_enabled(v79, 0x90u))
                  {
                    [BRCFSUploader _updatePackageRecord:item:stageID:error:];
                  }

                  v117 = v78;

                  goto LABEL_58;
                }

                v117 = 0;
                ++v32;
                v24 = v114;
              }

              else
              {
                v42 = 0;
              }

              [v24 updateWithPkgItem:v34];
              [v24 setSignature:0];
              xattrSignature = [v34 xattrSignature];

              if (xattrSignature)
              {
                v112 = v35;
                xattrSignature2 = [v34 xattrSignature];
                v49 = [stageRegistry urlForXattrSignature:xattrSignature2];

                v122 = 0;
                LOBYTE(xattrSignature2) = [v49 checkResourceIsReachableAndReturnError:&v122];
                v50 = v122;
                if (xattrSignature2)
                {
                  v51 = [objc_alloc(MEMORY[0x277CBC540]) initWithFileURL:v49];
                  itemCount = [(BRCLazyPackage *)v115 itemCount];
                  [v42 setPackageIndex:itemCount];
                  v53 = brc_bread_crumbs();
                  v54 = brc_default_log();
                  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
                  {
                    dbRowID2 = [v105 dbRowID];
                    pathInPackage2 = [v34 pathInPackage];
                    *buf = 134218754;
                    v131 = dbRowID2;
                    v132 = 2112;
                    v133 = v49;
                    v134 = 2112;
                    v135 = pathInPackage2;
                    v136 = 2112;
                    v137 = v53;
                    _os_log_debug_impl(&dword_223E7A000, v54, OS_LOG_TYPE_DEBUG, "[DEBUG] Uploader[%lld]: adding xattr package item with URL %@ for %@%@", buf, 0x2Au);
                  }

                  v121 = v50;
                  v55 = [(BRCLazyPackage *)v115 addItem:v51 error:&v121];
                  v56 = v121;

                  if (v55)
                  {
                    v57 = itemCount;
                    v24 = v114;
                    [(BRFieldPkgItem *)v114 setXattrIndex:v57];
                    v50 = v56;
                    stageRegistry = v106;
                  }

                  else
                  {
                    v59 = brc_bread_crumbs();
                    v60 = brc_default_log();
                    stageRegistry = v106;
                    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412546;
                      v131 = v56;
                      v132 = 2112;
                      v133 = v59;
                      _os_log_impl(&dword_223E7A000, v60, OS_LOG_TYPE_DEFAULT, "[WARNING] Failed to add xattrs to xattrs package: %@%@", buf, 0x16u);
                    }

                    v50 = v56;
                    v24 = v114;
                  }
                }

                else
                {
                  v51 = brc_bread_crumbs();
                  v58 = brc_default_log();
                  if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
                  {
                    xattrSignature3 = [v34 xattrSignature];
                    *buf = 138412802;
                    v131 = xattrSignature3;
                    v132 = 2112;
                    v133 = v50;
                    v134 = 2112;
                    v135 = v51;
                    _os_log_fault_impl(&dword_223E7A000, v58, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: We're missing a package xattr for signature %@ - %@%@", buf, 0x20u);

                    v24 = v114;
                  }
                }

                v35 = v112;
              }

              if (![(BRCPackageManifestWriter *)v119 addItem:v24])
              {
                v73 = v35;
                v74 = brc_bread_crumbs();
                v75 = brc_default_log();
                if (os_log_type_enabled(v75, 0x90u))
                {
                  path = [v104 path];
                  error2 = [(BRCPackageManifestWriter *)v119 error];
                  *buf = 138412802;
                  v131 = path;
                  v132 = 2112;
                  v133 = error2;
                  v134 = 2112;
                  v135 = v74;
                  _os_log_error_impl(&dword_223E7A000, v75, 0x90u, "[ERROR] failed to create manifest at %@: %@%@", buf, 0x20u);

                  v24 = v114;
                }

                error3 = [(BRCPackageManifestWriter *)v119 error];
LABEL_58:
                recordCopy = v103;
                dCopy = v102;

                objc_autoreleasePoolPop(v73);
                v117 = error3;
                v31 = v115;
                goto LABEL_59;
              }

              [v24 clear];

              objc_autoreleasePoolPop(v35);
              v31 = v115;
            }

            recordCopy = v103;
            dCopy = v102;
            v111 = [obj countByEnumeratingWithState:&v123 objects:v129 count:16];
            if (v111)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v24 = v114;
        }

LABEL_59:

        if (v117)
        {
          v80 = brc_bread_crumbs();
          v81 = brc_default_log();
          itemCopy = v105;
          if (os_log_type_enabled(v81, 0x90u))
          {
            *buf = 138412802;
            v131 = v109;
            v132 = 2112;
            v133 = v117;
            v134 = 2112;
            v135 = v80;
            _os_log_error_impl(&dword_223E7A000, v81, 0x90u, "[ERROR] Fail to performTransactionBlock for package [%@] with error [%@]%@", buf, 0x20u);
          }

          errorCopy2 = error;
          if (error)
          {
            error5 = v117;
LABEL_75:
            v23 = 0;
            v94 = errorCopy2;
            package = *errorCopy2;
            *v94 = error5;
LABEL_76:

LABEL_78:
            v68 = v117;
            v69 = v107;
            v13 = v104;
            goto LABEL_79;
          }
        }

        else
        {
          itemCopy = v105;
          if ([(BRCPackageManifestWriter *)v119 done])
          {
            v84 = v31;
            v85 = stageRegistry;
            v86 = dCopy;
            package = [(BRCLazyPackage *)v84 package];
            if (package)
            {
              [recordCopy setObject:package forKeyedSubscript:@"pkgXattrs"];
            }

            v88 = [MEMORY[0x277CBC190] br_assetWithFileURL:v104 boundaryKey:v118];
            [recordCopy setObject:v109 forKeyedSubscript:@"pkgContent"];
            [recordCopy setObject:v88 forKeyedSubscript:@"pkgManifest"];
            session = [v105 session];
            v120 = 0;
            v23 = [recordCopy validateEnhancedDrivePrivacyFieldsWithSession:session error:&v120];
            v90 = v120;
            v91 = v120;

            if (error && (v23 & 1) == 0)
            {
              objc_storeStrong(error, v90);
            }

            recordCopy = v103;
            dCopy = v86;
            stageRegistry = v85;
            v24 = v114;
            v31 = v115;
            goto LABEL_76;
          }

          v92 = brc_bread_crumbs();
          v93 = brc_default_log();
          if (os_log_type_enabled(v93, 0x90u))
          {
            path2 = [v104 path];
            error4 = [(BRCPackageManifestWriter *)v119 error];
            *buf = 138412802;
            v131 = path2;
            v132 = 2112;
            v133 = error4;
            v134 = 2112;
            v135 = v92;
            _os_log_error_impl(&dword_223E7A000, v93, 0x90u, "[ERROR] failed to create manifest at %@: %@%@", buf, 0x20u);

            v24 = v114;
          }

          errorCopy2 = error;
          if (error)
          {
            error5 = [(BRCPackageManifestWriter *)v119 error];
            goto LABEL_75;
          }
        }

        v23 = 0;
        goto LABEL_78;
      }

      v70 = brc_bread_crumbs();
      v71 = brc_default_log();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        path3 = [v116 path];
        *buf = 138413058;
        v131 = v109;
        v132 = 2112;
        v133 = path3;
        v134 = 2112;
        v135 = v117;
        v136 = 2112;
        v137 = v70;
        _os_log_impl(&dword_223E7A000, v71, OS_LOG_TYPE_DEFAULT, "[WARNING] Failed to anchor package %@ at %@: %@%@", buf, 0x2Au);
      }

      if (error)
      {
        v68 = v117;
        v23 = 0;
        v69 = *error;
        *error = v68;
        goto LABEL_47;
      }

      v23 = 0;
      v27 = v117;
    }

    else
    {
      v66 = brc_bread_crumbs();
      v67 = brc_default_log();
      if (os_log_type_enabled(v67, 0x90u))
      {
        [BRCLazyPackage addItem:error:];
      }

      if (error)
      {
        v68 = v27;
        v23 = 0;
        v69 = *error;
        *error = v68;
LABEL_47:
        v24 = v114;
LABEL_79:

        v27 = v68;
        goto LABEL_80;
      }

      v23 = 0;
    }

    v24 = v114;
LABEL_80:

    goto LABEL_81;
  }

  v20 = brc_bread_crumbs();
  v21 = brc_default_log();
  if (os_log_type_enabled(v21, 0x90u))
  {
    path4 = [v13 path];
    error6 = [(BRCPackageManifestWriter *)v119 error];
    *buf = 138412802;
    v131 = path4;
    v132 = 2112;
    v133 = error6;
    v134 = 2112;
    v135 = v20;
    _os_log_error_impl(&dword_223E7A000, v21, 0x90u, "[ERROR] failed to create manifest at %@: %@%@", buf, 0x20u);
  }

  if (error)
  {
    error7 = [(BRCPackageManifestWriter *)v119 error];
    v23 = 0;
    v24 = *error;
    *error = error7;
LABEL_81:

    goto LABEL_82;
  }

  v23 = 0;
LABEL_82:

  v95 = *MEMORY[0x277D85DE8];
  return v23;
}

- (void)_updateRecordInDB:(id)b item:(id)item syncContext:(id)context transferSize:(unint64_t)size stageID:(id)d
{
  v31 = *MEMORY[0x277D85DE8];
  bCopy = b;
  itemCopy = item;
  contextCopy = context;
  dCopy = d;
  v16 = brc_bread_crumbs();
  v17 = brc_default_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    dbRowID = [itemCopy dbRowID];
    v27 = 2112;
    v28 = bCopy;
    v29 = 2112;
    v30 = v16;
    _os_log_debug_impl(&dword_223E7A000, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] Uploader[%lld]: assets only record generated: %@%@", buf, 0x20u);
  }

  clientDB = [(BRCAccountSession *)self->super.super._session clientDB];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __73__BRCFSUploader__updateRecordInDB_item_syncContext_transferSize_stageID___block_invoke;
  v23[3] = &unk_2784FF870;
  v24 = contextCopy;
  v19 = contextCopy;
  v20 = MEMORY[0x22AA4A310](v23);
  contextIdentifier = [v19 contextIdentifier];
  [clientDB execute:{@"UPDATE client_uploads SET  transfer_queue = call_block(%@, next_retry_stamp, %@), transfer_record = %@, transfer_operation = NULL, transfer_stage = %@, transfer_size = %lld WHERE throttle_id = %lld", v20, contextIdentifier, bCopy, dCopy, size, objc_msgSend(itemCopy, "dbRowID")}];

  v22 = *MEMORY[0x277D85DE8];
}

void __73__BRCFSUploader__updateRecordInDB_item_syncContext_transferSize_stageID___block_invoke(uint64_t a1, sqlite3_context *a2, uint64_t a3, sqlite3_value **a4)
{
  v6 = [*(a1 + 32) uploadStream];
  [v6 signalWithDeadline:sqlite3_value_int64(*a4)];

  v7 = a4[1];

  sqlite3_result_value(a2, v7);
}

- (void)_updateRecord:(id)record item:(id)item syncContext:(id)context targetThumbnailURL:(id)l stageID:(id)d
{
  v89 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  itemCopy = item;
  contextCopy = context;
  lCopy = l;
  dCopy = d;
  currentVersion = [itemCopy currentVersion];
  v73 = [currentVersion size];
  location = 0;
  v75 = [recordCopy getAndUpdateBoundaryKeyForItem:itemCopy];
  if ([itemCopy isFinderBookmark])
  {
    v17 = [itemCopy shouldUseEnhancedDrivePrivacyWhenNeedsPreserving:0];
  }

  else
  {
    v17 = 0;
  }

  if ([itemCopy isDocumentBeingCopiedToNewZone] && (objc_msgSend(itemCopy, "currentVersion"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "contentSignature"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "brc_signatureIsValid"), v19, v18, v20))
  {
    [(BRCFSUploader *)self _updateRecordInDB:recordCopy item:itemCopy syncContext:contextCopy transferSize:v73 stageID:dCopy];
  }

  else
  {
    fileIDForUpload = [itemCopy fileIDForUpload];

    if (fileIDForUpload)
    {
      v71 = contextCopy;
      v72 = lCopy;
      if ([currentVersion isPackage])
      {
        if ([itemCopy isFinderBookmark])
        {
          [BRCFSUploader _updateRecord:item:syncContext:targetThumbnailURL:stageID:];
        }

        v22 = [(BRCFSUploader *)self _updatePackageRecord:recordCopy item:itemCopy stageID:dCopy error:&location];
      }

      else
      {
        v25 = brc_bread_crumbs();
        v26 = brc_default_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          volume = [(BRCAccountSession *)self->super.super._session volume];
          deviceID = [volume deviceID];
          fileIDForUpload2 = [itemCopy fileIDForUpload];
          itemID = [itemCopy itemID];
          *buf = 134218754;
          v82 = deviceID;
          v83 = 2112;
          v84 = fileIDForUpload2;
          v85 = 2112;
          v86 = itemID;
          v87 = 2112;
          v88 = v25;
          _os_log_debug_impl(&dword_223E7A000, v26, OS_LOG_TYPE_DEBUG, "[DEBUG] Adding CKAsset with deviceID 0x%lx fileID %@ to the record for item %@%@", buf, 0x2Au);
        }

        fileIDForUpload3 = [itemCopy fileIDForUpload];
        v70 = currentVersion;
        if (v17)
        {
          brc_generateSaltingKey = [MEMORY[0x277CBEA90] brc_generateSaltingKey];
        }

        else
        {
          brc_generateSaltingKey = v75;
        }

        v29 = MEMORY[0x277CBC190];
        v30 = MEMORY[0x277CCABB0];
        volume2 = [(BRCAccountSession *)self->super.super._session volume];
        v32 = [v30 numberWithInt:{objc_msgSend(volume2, "deviceID")}];
        generationIDForUpload = [itemCopy generationIDForUpload];
        fsGenerationID = [generationIDForUpload fsGenerationID];
        v75 = brc_generateSaltingKey;
        v35 = [v29 br_assetWithDeviceID:v32 fileID:fileIDForUpload3 generationID:fsGenerationID boundaryKey:brc_generateSaltingKey];

        isFinderBookmark = [itemCopy isFinderBookmark];
        v37 = kBRRecordKeyFinderBookmarkContent;
        if (!isFinderBookmark)
        {
          v37 = kBRRecordKeyFileContent;
        }

        [recordCopy setObject:v35 forKeyedSubscript:*v37];
        v38 = [itemCopy st];
        logicalName = [v38 logicalName];
        br_pathExtension = [logicalName br_pathExtension];
        [v35 setItemTypeHint:br_pathExtension];

        v22 = 1;
        currentVersion = v70;
      }

      if (v72 && [itemCopy shouldTransferThumbnail])
      {
        v79 = 0;
        v41 = *MEMORY[0x277CBE838];
        obj = 0;
        v42 = [v72 getResourceValue:&v79 forKey:v41 error:&obj];
        v43 = v79;
        objc_storeStrong(&location, obj);
        if (v42)
        {
          v44 = [MEMORY[0x277CBC190] br_assetWithFileURL:v72 boundaryKey:v75];
          [recordCopy setObject:v44 forKeyedSubscript:@"thumb1024"];
          v45 = brc_bread_crumbs();
          v46 = brc_default_log();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
          {
            [BRCFSUploader _updateRecord:item:syncContext:targetThumbnailURL:stageID:];
          }

          v73 += [v43 unsignedLongLongValue];
        }

        else
        {
          v44 = brc_bread_crumbs();
          v47 = brc_default_log();
          if (os_log_type_enabled(v47, 0x90u))
          {
            path = [v72 path];
            *buf = 138412802;
            v82 = path;
            v83 = 2112;
            v84 = location;
            v85 = 2112;
            v86 = v44;
            _os_log_error_impl(&dword_223E7A000, v47, 0x90u, "[ERROR] Unable to get thumbnail size at '%@' to upload stage: %@%@", buf, 0x20u);
          }
        }
      }

      xattrSignature = [currentVersion xattrSignature];
      if (xattrSignature != 0 && v22)
      {
        session = [itemCopy session];
        xattrStager = [session xattrStager];
        v51 = [xattrStager urlForXattrSignature:xattrSignature];

        v77 = location;
        LODWORD(session) = [v51 checkResourceIsReachableAndReturnError:&v77];
        objc_storeStrong(&location, v77);
        if (session)
        {
          v52 = [MEMORY[0x277CBC190] br_assetWithFileURL:v51 boundaryKey:v75];
          [recordCopy setObject:v52 forKeyedSubscript:@"xattr"];
          if (v75)
          {
            v53 = xattrSignature;
          }

          else
          {
            v53 = 0;
          }

          encryptedValues = [recordCopy encryptedValues];
          [encryptedValues setObject:v53 forKeyedSubscript:@"xattrSignature"];

          v73 += [v52 size];
        }

        else
        {
          v52 = brc_bread_crumbs();
          v55 = brc_default_log();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
          {
            [BRCFSUploader _updateRecord:item:syncContext:targetThumbnailURL:stageID:];
          }
        }
      }

      if (v22 && ([itemCopy session], v56 = objc_claimAutoreleasedReturnValue(), v76 = location, v57 = objc_msgSend(recordCopy, "validateEnhancedDrivePrivacyFieldsWithSession:error:", v56, &v76), objc_storeStrong(&location, v76), v56, (v57 & 1) != 0))
      {
        contextCopy = v71;
        [(BRCFSUploader *)self _updateRecordInDB:recordCopy item:itemCopy syncContext:v71 transferSize:v73 stageID:dCopy];
      }

      else
      {
        v58 = brc_bread_crumbs();
        v59 = brc_default_log();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
        {
          itemID2 = [itemCopy itemID];
          *buf = 138412802;
          v82 = itemID2;
          v83 = 2112;
          v84 = location;
          v85 = 2112;
          v86 = v58;
          _os_log_debug_impl(&dword_223E7A000, v59, OS_LOG_TYPE_DEBUG, "[DEBUG] Creation of record for %@ failed: %@%@", buf, 0x20u);
        }

        stageRegistry = [(BRCAccountSession *)self->super.super._session stageRegistry];
        [stageRegistry cleanupStagedUploadWithID:dCopy];

        [(BRCFSUploader *)self setState:33 forItem:itemCopy];
        [(BRCFSUploader *)self _reportUploadErrorForDocument:itemCopy error:location];
        [(BRCFSUploader *)self _handleFileModifiedError:location forItem:itemCopy];
        v61 = location;
        currentVersion2 = [itemCopy currentVersion];
        [currentVersion2 setUploadError:v61];

        [itemCopy saveToDB];
        contextCopy = v71;
      }

      lCopy = v72;
    }

    else
    {
      v23 = brc_bread_crumbs();
      v24 = brc_default_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        [BRCFSUploader _updateRecord:item:syncContext:targetThumbnailURL:stageID:];
      }

      [itemCopy markNeedsReading];
      [itemCopy saveToDB];
    }
  }

  v63 = *MEMORY[0x277D85DE8];
}

- (void)_updateRecord:(id)record jobID:(id)d syncContext:(id)context targetThumbnailURL:(id)l stageID:(id)iD
{
  v32 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  dCopy = d;
  contextCopy = context;
  lCopy = l;
  iDCopy = iD;
  v17 = [(BRCFSUploader *)self _documentItemForJobID:dCopy stageID:iDCopy];
  if (v17)
  {
    memset(v23, 0, sizeof(v23));
    __brc_create_section(0, "[BRCFSUploader _updateRecord:jobID:syncContext:targetThumbnailURL:stageID:]", 1092, 0, v23);
    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v22 = v23[0];
      itemID = [v17 itemID];
      *buf = 134218754;
      v25 = v22;
      v26 = 2112;
      v27 = dCopy;
      v28 = 2112;
      v29 = itemID;
      v30 = 2112;
      v31 = v18;
      _os_log_debug_impl(&dword_223E7A000, v19, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Uploader[%@]: Done generating thumbnail, building record for %@%@", buf, 0x2Au);
    }

    [(BRCFSUploader *)self _updateRecord:recordCopy item:v17 syncContext:contextCopy targetThumbnailURL:lCopy stageID:iDCopy];
    __brc_leave_section(v23);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_computeRecordForJobID:(id)d item:(id)item syncContext:(id)context
{
  v59 = *MEMORY[0x277D85DE8];
  dCopy = d;
  itemCopy = item;
  contextCopy = context;
  memset(v49, 0, sizeof(v49));
  __brc_create_section(0, "[BRCFSUploader _computeRecordForJobID:item:syncContext:]", 1105, 0, v49);
  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v34 = v49[0];
    itemID = [itemCopy itemID];
    *buf = 134218754;
    v52 = v34;
    v53 = 2112;
    v54 = dCopy;
    v55 = 2112;
    v56 = itemID;
    v57 = 2112;
    v58 = v9;
    _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Uploader[%@]: Preparing record for upload of %@%@", buf, 0x2Au);
  }

  v11 = MEMORY[0x277CCACA8];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v14 = [v11 stringWithFormat:@"upload-%@-%@", dCopy, uUIDString];

  currentVersion = [itemCopy currentVersion];
  ckInfo = [currentVersion ckInfo];
  v17 = [itemCopy baseRecordClearAllFields:ckInfo != 0];

  if ([itemCopy shouldTransferThumbnail])
  {
    v18 = objc_alloc(MEMORY[0x277CCAD78]);
    v50[0] = 0;
    v50[1] = 0;
    v41 = [v18 initWithUUIDBytes:v50];
    v19 = MEMORY[0x277CCACA8];
    volume = [(BRCAccountSession *)self->super.super._session volume];
    deviceID = [volume deviceID];
    fileIDForUpload = [itemCopy fileIDForUpload];
    v40 = [v19 br_pathWithDeviceID:deviceID fileID:{objc_msgSend(fileIDForUpload, "unsignedLongLongValue")}];

    v23 = [MEMORY[0x277CBEBC0] fileURLWithPath:v40];
    [(BRCFSUploader *)self _updateJobID:dCopy setStageID:v14 operationID:v41];
    stageRegistry = [(BRCAccountSession *)self->super.super._session stageRegistry];
    v25 = [stageRegistry createURLForThumbnailUploadWithStageID:v14];

    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __57__BRCFSUploader__computeRecordForJobID_item_syncContext___block_invoke;
    v44[3] = &unk_278505690;
    v44[4] = self;
    v45 = v17;
    v26 = dCopy;
    v46 = v26;
    v27 = contextCopy;
    v47 = v27;
    v48 = v14;
    v28 = MEMORY[0x22AA4A310](v44);
    thumbnailGenerationManager = [(BRCFSUploader *)self thumbnailGenerationManager];
    v30 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v26, "itemDBRowID")}];
    [thumbnailGenerationManager addThumbnailGenerationJobAtURL:v23 targetURL:v25 thumbnailID:v30 syncContext:v27 completionHandler:v28];
  }

  else
  {
    v31 = brc_bread_crumbs();
    v32 = brc_default_log();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      isInDocumentScope = [itemCopy isInDocumentScope];
      shouldHaveThumbnail = [itemCopy shouldHaveThumbnail];
      v38 = "no";
      *buf = 138413058;
      v52 = dCopy;
      if (isInDocumentScope)
      {
        v39 = "yes";
      }

      else
      {
        v39 = "no";
      }

      v53 = 2080;
      v54 = v39;
      if (shouldHaveThumbnail)
      {
        v38 = "yes";
      }

      v55 = 2080;
      v56 = v38;
      v57 = 2112;
      v58 = v31;
      _os_log_debug_impl(&dword_223E7A000, v32, OS_LOG_TYPE_DEBUG, "[DEBUG] Uploader[%@]: skipping thumbnail (inDocumentScope:%s shouldHaveThumbnail:%s shouldTransferThumbnail:no)%@", buf, 0x2Au);
    }

    [(BRCFSUploader *)self _updateRecord:v17 item:itemCopy syncContext:contextCopy targetThumbnailURL:0 stageID:v14];
  }

  __brc_leave_section(v49);
  v33 = *MEMORY[0x277D85DE8];
}

void __57__BRCFSUploader__computeRecordForJobID_item_syncContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = *(a1 + 32);
  v4 = *(v11 + 112);
  v5 = *(v11 + 24);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__BRCFSUploader__computeRecordForJobID_item_syncContext___block_invoke_2;
  v12[3] = &unk_278505668;
  v6 = *(&v11 + 1);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v13 = v11;
  v14 = v9;
  v15 = v3;
  v16 = *(a1 + 64);
  v10 = v3;
  brc_task_tracker_async_with_logs(v4, v5, v12, &__block_literal_global_185);
}

void __57__BRCFSUploader__computeRecordForJobID_item_syncContext___block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) _updateRecord:*(a1 + 40) jobID:*(a1 + 48) syncContext:*(a1 + 56) targetThumbnailURL:*(a1 + 64) stageID:*(a1 + 72)];

  objc_autoreleasePoolPop(v2);
}

- (id)_duplicatePackage:(id)package stageID:(id)d stageName:(id)name error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  dCopy = d;
  nameCopy = name;
  v12 = [MEMORY[0x277CBC538] br_packageWithPackage:package error:error];
  if (v12)
  {
    stageRegistry = [(BRCAccountSession *)self->super.super._session stageRegistry];
    v14 = [stageRegistry createURLForUploadWithStageID:dCopy name:nameCopy];

    if ([v12 anchorAtURL:v14 error:error])
    {
      v15 = v12;
      goto LABEL_16;
    }

    v16 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      path = [(__CFString *)v14 path];
      v20 = path;
      if (error)
      {
        v21 = *error;
      }

      else
      {
        v21 = @"unknown";
      }

      v24 = 138413058;
      v25 = v12;
      v26 = 2112;
      v27 = path;
      v28 = 2112;
      v29 = v21;
      v30 = 2112;
      v31 = v16;
      _os_log_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEFAULT, "[WARNING] can't anchor the package %@ at %@: %@%@", &v24, 0x2Au);
    }
  }

  else
  {
    v14 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      if (error)
      {
        v17 = *error;
      }

      else
      {
        v17 = @"unknown";
      }

      v24 = 138412802;
      v25 = 0;
      v26 = 2112;
      v27 = v17;
      v28 = 2112;
      v29 = v14;
      _os_log_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEFAULT, "[WARNING] can't duplicate the package %@: %@%@", &v24, 0x20u);
    }
  }

  v15 = 0;
LABEL_16:

  v22 = *MEMORY[0x277D85DE8];

  return v15;
}

- (BOOL)_finishPackageUploadWithRecord:(id)record item:(id)item stageID:(id)d packageChecksummer:(id)checksummer error:(id *)error
{
  v75 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  itemCopy = item;
  dCopy = d;
  checksummerCopy = checksummer;
  v13 = objc_alloc_init(BRFieldPkgItem);
  v51 = recordCopy;
  v54 = [recordCopy objectForKeyedSubscript:?];
  dbFacade = [itemCopy dbFacade];
  v53 = [dbFacade getAssetRanksForFileItemsInPackage:itemCopy];
  v50 = itemCopy;
  [BRCPackageItem packageItemsForItem:itemCopy order:2];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = v61 = 0u;
  v14 = [obj countByEnumeratingWithState:&v58 objects:v74 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v59;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v59 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v58 + 1) + 8 * i);
        v20 = objc_autoreleasePoolPush();
        if ([v19 isFile])
        {
          v21 = [v53 countOfIndexesInRange:{0, objc_msgSend(v19, "assetRank")}];
          v57 = v16;
          v22 = [v54 itemAtIndex:v21 error:&v57];
          v23 = v57;

          if (!v22)
          {
            v38 = brc_bread_crumbs();
            v28 = brc_default_log();
            if (os_log_type_enabled(v28, 0x90u))
            {
              assetRank = [v19 assetRank];
              *buf = 134218498;
              v63 = assetRank;
              v64 = 2112;
              v65 = v23;
              v66 = 2112;
              v27 = v38;
              v67 = v38;
              _os_log_error_impl(&dword_223E7A000, v28, 0x90u, "[ERROR] Couldn't get CKPackageItem for index %lld with error %@%@", buf, 0x20u);
              goto LABEL_22;
            }

            v30 = v50;
            v29 = v51;
            v31 = dCopy;
            v27 = v38;
LABEL_30:

            objc_autoreleasePoolPop(v20);
            [checksummerCopy done];
            v36 = v23;
            if (v36)
            {
              v39 = brc_bread_crumbs();
              v40 = brc_default_log();
              if (os_log_type_enabled(v40, 0x90u))
              {
                v45 = "(passed to caller)";
                *buf = 136315906;
                v63 = "[BRCFSUploader _finishPackageUploadWithRecord:item:stageID:packageChecksummer:error:]";
                v64 = 2080;
                if (!error)
                {
                  v45 = "(ignored by caller)";
                }

                v65 = v45;
                v66 = 2112;
                v67 = v36;
                v68 = 2112;
                v69 = v39;
                _os_log_error_impl(&dword_223E7A000, v40, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
              }
            }

            if (error)
            {
              v41 = v36;
              v37 = 0;
              *error = v36;
            }

            else
            {
              v37 = 0;
            }

            v16 = v36;
            goto LABEL_37;
          }

          signature = [v22 signature];

          if (!signature)
          {
            [BRCFSUploader _finishPackageUploadWithRecord:&v73 item:? stageID:? packageChecksummer:? error:?];
          }

          signature2 = [v22 signature];
          [v19 setContentSignature:signature2];
        }

        else
        {
          v23 = v16;
        }

        [(BRFieldPkgItem *)v13 updateWithPkgItem:v19];
        if ([(BRFieldPkgItem *)v13 type]== 2 && ![(BRFieldPkgItem *)v13 hasSignature])
        {
          [BRCFSUploader _finishPackageUploadWithRecord:&v71 item:? stageID:? packageChecksummer:? error:?];
        }

        v56 = v23;
        v26 = [checksummerCopy addItem:v13 error:&v56];
        v16 = v56;

        if ((v26 & 1) == 0)
        {
          v27 = brc_bread_crumbs();
          v28 = brc_default_log();
          if (os_log_type_enabled(v28, 0x90u))
          {
            *buf = 138412802;
            v63 = v13;
            v64 = 2112;
            v65 = v16;
            v66 = 2112;
            v67 = v27;
            _os_log_error_impl(&dword_223E7A000, v28, 0x90u, "[ERROR] Couldn't add %@ to checksummer - error %@%@", buf, 0x20u);
          }

          v23 = v16;
LABEL_22:
          v30 = v50;
          v29 = v51;
          v31 = dCopy;
          goto LABEL_30;
        }

        [(BRFieldPkgItem *)v13 clear];
        objc_autoreleasePoolPop(v20);
      }

      v15 = [obj countByEnumeratingWithState:&v58 objects:v74 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v16 = 0;
  }

  [checksummerCopy done];
  signature3 = [checksummerCopy signature];
  v29 = v51;
  [v51 setObject:signature3 forKeyedSubscript:@"pkgSignature"];

  v31 = dCopy;
  v33 = [(BRCFSUploader *)self _duplicatePackage:v54 stageID:dCopy stageName:@"ckpackage" error:error];

  if (!v33)
  {
    v37 = 0;
    v30 = v50;
    v42 = dbFacade;
    goto LABEL_39;
  }

  [v51 setObject:v33 forKeyedSubscript:@"pkgContent"];
  v34 = [v51 objectForKeyedSubscript:@"pkgXattrs"];
  if (v34)
  {
    v35 = v34;
    v36 = [(BRCFSUploader *)self _duplicatePackage:v34 stageID:dCopy stageName:@"ckpackage-xattrs" error:error];

    v30 = v50;
    if (v36)
    {
      [v51 setObject:v36 forKeyedSubscript:@"pkgXattrs"];
      v37 = 1;
      v54 = v33;
LABEL_37:
      v42 = dbFacade;

      v33 = v54;
      goto LABEL_38;
    }

    v37 = 0;
  }

  else
  {
    v37 = 1;
    v30 = v50;
  }

  v42 = dbFacade;
LABEL_38:

LABEL_39:
  v43 = *MEMORY[0x277D85DE8];
  return v37;
}

- (void)_handleFileModifiedError:(id)error forItem:(id)item
{
  errorCopy = error;
  itemCopy = item;
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [BRCFSUploader _handleFileModifiedError:forItem:];
  }

  asDocument = [itemCopy asDocument];

  [asDocument reIngestFromFileProvider];
}

- (BOOL)_shouldReingestAfterUploadErrorWithItem:(id)item record:(id)record
{
  v74 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  recordCopy = record;
  v8 = MEMORY[0x277CCABB0];
  volume = [(BRCAccountSession *)self->super.super._session volume];
  v57 = [v8 numberWithInt:{objc_msgSend(volume, "deviceID")}];

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  allKeys = [recordCopy allKeys];
  v55 = [allKeys countByEnumeratingWithState:&v62 objects:v73 count:16];
  if (v55)
  {
    v11 = *v63;
    v12 = 0x277CBC000uLL;
    v50 = itemCopy;
    selfCopy = self;
    while (2)
    {
      v13 = 0;
      v14 = v55;
      do
      {
        if (*v63 != v11)
        {
          objc_enumerationMutation(allKeys);
        }

        v15 = *(*(&v62 + 1) + 8 * v13);
        v16 = [recordCopy objectForKeyedSubscript:v15];
        v17 = *(v12 + 400);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          deviceID = [v16 deviceID];
          if (deviceID)
          {
            v19 = deviceID;
            v20 = [deviceID br_isEqualToNumber:v57];

            if ((v20 & 1) == 0)
            {
LABEL_33:
              v42 = brc_bread_crumbs();
              v43 = brc_default_log();
              if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412802;
                v67 = v15;
                v68 = 2112;
                itemCopy = v50;
                v69 = v50;
                v70 = 2112;
                v71 = v42;
                _os_log_impl(&dword_223E7A000, v43, OS_LOG_TYPE_DEFAULT, "[WARNING] CKAsset of key %@ for %@ is pointing to the wrong device ID%@", buf, 0x20u);
              }

              else
              {
                itemCopy = v50;
              }

LABEL_38:

              goto LABEL_42;
            }
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v51 = v15;
            v60 = 0u;
            v61 = 0u;
            v58 = 0u;
            v59 = 0u;
            obj = [v16 itemEnumerator];
            v21 = [obj countByEnumeratingWithState:&v58 objects:v72 count:16];
            if (v21)
            {
              v22 = v21;
              v23 = *v59;
              v52 = recordCopy;
              v53 = v16;
              v54 = allKeys;
              v49 = v11;
              while (2)
              {
                for (i = 0; i != v22; ++i)
                {
                  if (*v59 != v23)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v25 = *(*(&v58 + 1) + 8 * i);
                  deviceID2 = [v25 deviceID];
                  v27 = deviceID2;
                  if (deviceID2 && ([deviceID2 br_isEqualToNumber:v57] & 1) == 0)
                  {

                    recordCopy = v52;
                    v16 = v53;
                    allKeys = v54;
                    v15 = v51;
                    goto LABEL_33;
                  }

                  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
                  fileURL = [v25 fileURL];
                  path = [fileURL path];
                  v31 = [defaultManager fileExistsAtPath:path];

                  if ((v31 & 1) == 0)
                  {
                    v40 = brc_bread_crumbs();
                    v41 = brc_default_log();
                    allKeys = v54;
                    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
                    {
                      [BRCFSUploader _shouldReingestAfterUploadErrorWithItem:record:];
                    }

                    v42 = brc_bread_crumbs();
                    v43 = brc_default_log();
                    itemCopy = v50;
                    v16 = v53;
                    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412802;
                      v67 = v51;
                      v68 = 2112;
                      v69 = v50;
                      v70 = 2112;
                      v71 = v42;
                      _os_log_impl(&dword_223E7A000, v43, OS_LOG_TYPE_DEFAULT, "[WARNING] found a missing file in the package. key %@ item %@%@", buf, 0x20u);
                    }

                    recordCopy = v52;
                    goto LABEL_38;
                  }
                }

                v22 = [obj countByEnumeratingWithState:&v58 objects:v72 count:16];
                recordCopy = v52;
                v16 = v53;
                allKeys = v54;
                v11 = v49;
                v12 = 0x277CBC000;
                if (v22)
                {
                  continue;
                }

                break;
              }
            }

            v14 = v55;
          }
        }

        ++v13;
      }

      while (v13 != v14);
      itemCopy = v50;
      self = selfCopy;
      v55 = [allKeys countByEnumeratingWithState:&v62 objects:v73 count:16];
      if (v55)
      {
        continue;
      }

      break;
    }
  }

  *buf = 0;
  stageRegistry = [(BRCAccountSession *)self->super.super._session stageRegistry];
  fileIDForUpload = [itemCopy fileIDForUpload];
  v34 = [stageRegistry existsInUploadOrLiveItemsStage:objc_msgSend(fileIDForUpload generationID:{"longLongValue"), buf}];

  if (v34)
  {
    v35 = *buf;
    generationIDForUpload = [itemCopy generationIDForUpload];
    fsGenerationID = [generationIDForUpload fsGenerationID];
    unsignedIntValue = [fsGenerationID unsignedIntValue];

    if (v35 == unsignedIntValue)
    {
      v39 = 0;
      goto LABEL_43;
    }

    v44 = brc_bread_crumbs();
    v45 = brc_default_log();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      [BRCFSUploader _shouldReingestAfterUploadErrorWithItem:record:];
    }
  }

  else
  {
    v44 = brc_bread_crumbs();
    v45 = brc_default_log();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      [BRCFSUploader _shouldReingestAfterUploadErrorWithItem:record:];
    }
  }

LABEL_42:
  v39 = 1;
LABEL_43:

  v46 = *MEMORY[0x277D85DE8];
  return v39;
}

- (BOOL)_retryUploadForError:(id)error jobID:(id)d recomputeRecord:(BOOL)record syncContext:(id)context
{
  contextCopy = context;
  session = self->super.super._session;
  dCopy = d;
  errorCopy = error;
  clientDB = [(BRCAccountSession *)session clientDB];
  if (record)
  {
    contextIdentifier = @"_prepare";
  }

  else
  {
    contextIdentifier = [contextCopy contextIdentifier];
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __72__BRCFSUploader__retryUploadForError_jobID_recomputeRecord_syncContext___block_invoke;
  v21[3] = &unk_2784FF870;
  v22 = contextCopy;
  v16 = contextCopy;
  v17 = MEMORY[0x22AA4A310](v21);
  matchingJobsWhereSQLClause = [dCopy matchingJobsWhereSQLClause];

  v19 = [clientDB execute:{@"UPDATE client_uploads SET transfer_queue = %@, transfer_operation = call_block(%@, next_retry_stamp), upload_error = %@ WHERE %@", contextIdentifier, v17, errorCopy, matchingJobsWhereSQLClause}];
  if (!record)
  {
  }

  return v19;
}

void __72__BRCFSUploader__retryUploadForError_jobID_recomputeRecord_syncContext___block_invoke(uint64_t a1, sqlite3_context *a2, uint64_t a3, sqlite3_value **a4)
{
  v6 = sqlite3_value_int64(*a4);
  v7 = [*(a1 + 32) uploadStream];
  [v7 signalWithDeadline:v6];

  sqlite3_result_null(a2);
}

- (void)_sendItemNotFoundStatsTelemetryForFileID:(id)d
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CC6490];
  dCopy = d;
  v6 = [v4 alloc];
  unsignedLongLongValue = [dCopy unsignedLongLongValue];

  v8 = [v6 initWithFileID:unsignedLongLongValue];
  session = self->super.super._session;
  v13[0] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__BRCFSUploader__sendItemNotFoundStatsTelemetryForFileID___block_invoke;
  v12[3] = &unk_2785056B8;
  v12[4] = self;
  [(BRCAccountSession *)session sendFileStatsTelemetryWithDescriptors:v10 perItemSendTelemetryBlock:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __58__BRCFSUploader__sendItemNotFoundStatsTelemetryForFileID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 diagnosticAttributes];
  v5 = [AppTelemetryTimeSeriesEvent newUploadErrorForEventName:@"CA_UPLOAD_ERROR" foundInfo:v3];

  v4 = [*(*(a1 + 32) + 8) analyticsReporter];
  [v4 postReportForDefaultSubCategoryWithCategory:9 telemetryTimeEvent:v5];
}

- (void)_finishedUploadingItem:(id)item record:(id)record jobID:(id)d stageID:(id)iD syncContext:(id)context hasPerformedServerSideAssetCopy:(BOOL)copy error:(id)error
{
  v104 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  recordCopy = record;
  dCopy = d;
  iDCopy = iD;
  contextCopy = context;
  errorCopy = error;
  v87 = itemCopy;
  clientZone = [itemCopy clientZone];
  memset(v93, 0, sizeof(v93));
  __brc_create_section(0, "[BRCFSUploader _finishedUploadingItem:record:jobID:stageID:syncContext:hasPerformedServerSideAssetCopy:error:]", 1364, 0, v93);
  v16 = brc_bread_crumbs();
  v17 = brc_default_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v37 = v93[0];
    digestDescription = [itemCopy digestDescription];
    v39 = digestDescription;
    v40 = @"success";
    *buf = 134219010;
    if (errorCopy)
    {
      v40 = errorCopy;
    }

    v95 = v37;
    v96 = 2112;
    v97 = dCopy;
    v98 = 2112;
    v99 = digestDescription;
    v100 = 2112;
    v101 = v40;
    v102 = 2112;
    v103 = v16;
    _os_log_debug_impl(&dword_223E7A000, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Uploader[%@]: done with %@ (%@)%@", buf, 0x34u);
  }

  [(__CFString *)errorCopy brc_logUnderlineErrorsChain];
  if ([clientZone handleZoneLevelErrorIfNeeded:errorCopy forItemCreation:1])
  {
    goto LABEL_80;
  }

  if (errorCopy)
  {
    goto LABEL_5;
  }

  v18 = [recordCopy objectForKeyedSubscript:@"pkgContent"];
  v19 = !v18 || copy;

  if (!v19)
  {
    v20 = objc_opt_new();
    v92 = 0;
    v21 = [(BRCFSUploader *)self _finishPackageUploadWithRecord:recordCopy item:itemCopy stageID:iDCopy packageChecksummer:v20 error:&v92];
    errorCopy = v92;

    if (!v21)
    {
      if (!errorCopy)
      {
        v77 = brc_bread_crumbs();
        v78 = brc_default_log();
        if (os_log_type_enabled(v78, OS_LOG_TYPE_FAULT))
        {
          [BRCFSUploader _finishedUploadingItem:record:jobID:stageID:syncContext:hasPerformedServerSideAssetCopy:error:];
        }
      }

      v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:512 userInfo:0];

      errorCopy = v22;
    }

    if (errorCopy)
    {
LABEL_5:
      if (([(__CFString *)errorCopy brc_isCloudKitMMCSErrorChunksCouldNotBeRegisteredError]& 1) != 0 && ![(BRCFSUploader *)self _shouldReingestAfterUploadErrorWithItem:itemCopy record:recordCopy])
      {
        v25 = MEMORY[0x277CCACA8];
        volume = [(BRCAccountSession *)self->super.super._session volume];
        deviceID = [volume deviceID];
        fileIDForUpload = [itemCopy fileIDForUpload];
        v29 = [v25 br_pathWithDeviceID:deviceID fileID:{objc_msgSend(fileIDForUpload, "unsignedLongLongValue")}];

        v30 = [MEMORY[0x277CBEBC0] fileURLWithPath:v29];
        v31 = [objc_alloc(MEMORY[0x277CCAC90]) initWithURL:v30 readonly:1];
        v91 = 0;
        v32 = [BRCDocumentSignatureCalculator calculateSignatureForScopedURLWrapper:v31 boundaryKey:0 error:&v91];
        v80 = v91;
        if (([v80 br_isPOSIXErrorCode:2] & 1) != 0 || objc_msgSend(v80, "br_isPOSIXErrorCode:", 34))
        {
          v33 = brc_bread_crumbs();
          v34 = brc_default_log();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            [BRCFSUploader _finishedUploadingItem:record:jobID:stageID:syncContext:hasPerformedServerSideAssetCopy:error:];
          }

          v35 = [MEMORY[0x277CCA9B8] brc_errorDamagedDocumentOnDiskWithUnderlyingError:v80];

          analyticsReporter = [(BRCAccountSession *)self->super.super._session analyticsReporter];
          [analyticsReporter aggregateReportForAppTelemetryIdentifier:215 error:v35];
        }

        else
        {
          v35 = errorCopy;
        }

        errorCopy = v35;
      }

      else
      {
        v80 = 0;
      }

      brc_isCloudKitUnknownItemError = [(__CFString *)errorCopy brc_isCloudKitUnknownItemError];
      if (brc_isCloudKitUnknownItemError)
      {
        v42 = brc_bread_crumbs();
        v43 = brc_default_log();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          [BRCFSUploader _finishedUploadingItem:record:jobID:stageID:syncContext:hasPerformedServerSideAssetCopy:error:];
        }

        [v87 handleUnknownItemError];
        uploadFileModifiedThrottle = 0;
        goto LABEL_41;
      }

      if (([(__CFString *)errorCopy brc_isCloudKitErrorRequiringAssetRecheck]& 1) != 0 || ([(__CFString *)errorCopy brc_isCloudKitErrorRequiringAssetRescan]& 1) != 0 || [(__CFString *)errorCopy br_isCKErrorCode:12])
      {
        if ([(BRCFSUploader *)self _shouldReingestAfterUploadErrorWithItem:v87 record:recordCopy])
        {
          [(BRCFSUploader *)self _handleFileModifiedError:errorCopy forItem:v87];
          uploadFileModifiedThrottle = [contextCopy uploadFileModifiedThrottle];
LABEL_41:
          v79 = 0;
LABEL_42:
          v45 = brc_isCloudKitUnknownItemError ^ 1;
          goto LABEL_43;
        }

        v62 = brc_bread_crumbs();
        v63 = brc_default_log();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
        {
          [BRCFSUploader _finishedUploadingItem:record:jobID:stageID:syncContext:hasPerformedServerSideAssetCopy:error:];
        }

        if ([(__CFString *)errorCopy brc_isCloudKitErrorDataProtectionClass]&& self->_isScreenLocked)
        {
          v64 = brc_bread_crumbs();
          v65 = brc_default_log();
          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
          {
            [BRCFSUploader _finishedUploadingItem:record:jobID:stageID:syncContext:hasPerformedServerSideAssetCopy:error:];
          }

LABEL_85:
          v79 = 0;
LABEL_86:

          uploadFileModifiedThrottle = 0;
          goto LABEL_42;
        }

        v66 = 1;
      }

      else
      {
        if (([(__CFString *)errorCopy brc_isCloudKitErrorNoNetwork]& 1) != 0 || [(__CFString *)errorCopy brc_isNetworkUnreachableError])
        {
          v64 = brc_bread_crumbs();
          v65 = brc_default_log();
          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
          {
            [BRCFSUploader _finishedUploadingItem:record:jobID:stageID:syncContext:hasPerformedServerSideAssetCopy:error:];
          }

          goto LABEL_85;
        }

        if ([(__CFString *)errorCopy brc_isCloudKitErrorRequiresVerifyTerms])
        {
          v71 = +[BRCAccountHandler currentiCloudAccount];
          br_needsToVerifyTerms = [v71 br_needsToVerifyTerms];

          if (br_needsToVerifyTerms)
          {
            v64 = brc_bread_crumbs();
            v65 = brc_default_log();
            if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
            {
              [BRCFSUploader _finishedUploadingItem:record:jobID:stageID:syncContext:hasPerformedServerSideAssetCopy:error:];
            }

            v79 = 1;
            goto LABEL_86;
          }
        }

        if (([(__CFString *)errorCopy brc_isCloudKitErrorServerRejectedRequest]& 1) == 0 && ([(__CFString *)errorCopy brc_isCloudKitCancellationError]& 1) == 0 && ([(__CFString *)errorCopy brc_isCloudKitErrorRequiringAssetReupload]& 1) == 0 && ![(__CFString *)errorCopy brc_isRetriable])
        {
          v64 = brc_bread_crumbs();
          v65 = brc_default_log();
          if (os_log_type_enabled(v65, 0x90u))
          {
            v75 = [v87 st];
            displayName = [v75 displayName];
            *buf = 138412802;
            v95 = displayName;
            v96 = 2112;
            v97 = errorCopy;
            v98 = 2112;
            v99 = v64;
            _os_log_error_impl(&dword_223E7A000, v65, 0x90u, "[ERROR] non recoverable error while uploading %@: %@%@", buf, 0x20u);
          }

          goto LABEL_85;
        }

        v73 = brc_bread_crumbs();
        v74 = brc_default_log();
        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
        {
          [BRCFSUploader _finishedUploadingItem:record:jobID:stageID:syncContext:hasPerformedServerSideAssetCopy:error:];
        }

        v66 = 0;
      }

      [(BRCFSUploader *)self _retryUploadForError:errorCopy jobID:dCopy recomputeRecord:v66 syncContext:contextCopy];
      v45 = 0;
      v79 = 0;
      uploadFileModifiedThrottle = 0;
LABEL_43:
      v46 = brc_bread_crumbs();
      v47 = brc_default_log();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
      {
        [BRCFSUploader _finishedUploadingItem:record:jobID:stageID:syncContext:hasPerformedServerSideAssetCopy:error:];
      }

      uploadThrottle = uploadFileModifiedThrottle;
      if (!uploadFileModifiedThrottle)
      {
        uploadThrottle = [contextCopy uploadThrottle];
      }

      v49 = [(BRCFSSchedulerBase *)self postponeJobID:dCopy withThrottle:uploadThrottle];
      if (!uploadFileModifiedThrottle)
      {
      }

      appLibrary = [v87 appLibrary];
      mangledID = [appLibrary mangledID];
      v52 = [BRCUserDefaults defaultsForMangledID:mangledID];
      uploadRetryCountForFailure = [v52 uploadRetryCountForFailure];

      if (errorCopy)
      {
        if (([(__CFString *)errorCopy brc_isCloudKitMMCSItemNotAvailable]& 1) != 0)
        {
          brc_isCloudKitMMCSItemNotFound = 1;
        }

        else
        {
          brc_isCloudKitMMCSItemNotFound = [(__CFString *)errorCopy brc_isCloudKitMMCSItemNotFound];
        }
      }

      else
      {
        brc_isCloudKitMMCSItemNotFound = 0;
      }

      appLibrary2 = [v87 appLibrary];
      mangledID2 = [appLibrary2 mangledID];
      v57 = [BRCUserDefaults defaultsForMangledID:mangledID2];
      uploadRetryCountForAssetNotFoundFailure = [v57 uploadRetryCountForAssetNotFoundFailure];

      if ((v45 & 1) == 0)
      {
        if (v49 > uploadRetryCountForFailure || ((v49 > uploadRetryCountForAssetNotFoundFailure) & brc_isCloudKitMMCSItemNotFound) != 0)
        {
          [(BRCFSUploader *)self _reportUploadErrorForDocument:v87 error:errorCopy underlyingError:v80];
          if (brc_isCloudKitMMCSItemNotFound)
          {
            fileIDForUpload2 = [v87 fileIDForUpload];
            [(BRCFSUploader *)self _sendItemNotFoundStatsTelemetryForFileID:fileIDForUpload2];
          }
        }

        v61 = v80;
        goto LABEL_79;
      }

      if (([(__CFString *)errorCopy brc_isCloudKitOutOfQuota]& 1) != 0)
      {
        v59 = 32;
      }

      else if (([(__CFString *)errorCopy brc_isCloudKitErrorDataProtectionClass]& 1) != 0)
      {
        v59 = 35;
      }

      else if (([(__CFString *)errorCopy brc_isCloudKitErrorNoNetwork]& 1) != 0 || ([(__CFString *)errorCopy brc_isNetworkUnreachableError]& 1) != 0)
      {
        v59 = 36;
      }

      else if ((v79 & [(__CFString *)errorCopy brc_isCloudKitErrorRequiresVerifyTerms]& 1) != 0)
      {
        v59 = 37;
      }

      else
      {
        if (![(__CFString *)errorCopy brc_isNetworkUnreachableDueToCellularError])
        {
          [(BRCFSUploader *)self setState:33 forItem:v87 uploadError:errorCopy];
          if (([(__CFString *)errorCopy brc_isCloudKitErrorRequiringAssetRescan]& 1) == 0)
          {
            [(BRCFSUploader *)self _reportUploadErrorForDocument:v87 error:errorCopy];
          }

          goto LABEL_76;
        }

        v59 = 38;
      }

      [(BRCFSUploader *)self setState:v59 forItem:v87 uploadError:errorCopy];
LABEL_76:

      goto LABEL_77;
    }
  }

  if ([itemCopy isReadAndUploaded] && (!objc_msgSend(itemCopy, "isDead") || objc_msgSend(itemCopy, "syncUpState") != 4))
  {
    v23 = brc_bread_crumbs();
    v24 = brc_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      [BRCFSUploader _finishedUploadingItem:record:jobID:stageID:syncContext:hasPerformedServerSideAssetCopy:error:];
    }
  }

  [itemCopy markUploadedWithRecord:recordCopy];
  [(BRCFSUploader *)self _clearUploadErrorForDocument:itemCopy];
  errorCopy = 0;
LABEL_77:
  currentVersion = [v87 currentVersion];
  [currentVersion setUploadError:errorCopy];

  [v87 saveToDB];
  if (errorCopy)
  {
    clientDB = [(BRCAccountSession *)self->super.super._session clientDB];
    serialQueue = [clientDB serialQueue];
    v88[0] = MEMORY[0x277D85DD0];
    v88[1] = 3221225472;
    v88[2] = __111__BRCFSUploader__finishedUploadingItem_record_jobID_stageID_syncContext_hasPerformedServerSideAssetCopy_error___block_invoke;
    v88[3] = &unk_2784FF478;
    v89 = clientZone;
    v90 = dCopy;
    dispatch_async_with_logs_8(serialQueue, v88);

    [v87 recoverDamagedDocumentIfNecessaryWithError:errorCopy];
    v61 = v89;
LABEL_79:
  }

LABEL_80:
  __brc_leave_section(v93);

  v70 = *MEMORY[0x277D85DE8];
}

void __111__BRCFSUploader__finishedUploadingItem_record_jobID_stageID_syncContext_hasPerformedServerSideAssetCopy_error___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) itemByRowID:{objc_msgSend(*(a1 + 40), "itemDBRowID")}];
  [v1 triggerNotificationIfNeeded];
}

- (void)_serializeServerSideAssetCopyPluginFieldsForRecord:(id)record newZone:(id)zone origZone:(id)origZone
{
  v19[1] = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  origZoneCopy = origZone;
  recordCopy = record;
  if ([zoneCopy isPrivateZone] && (objc_msgSend(origZoneCopy, "isPrivateZone") & 1) != 0)
  {
    v10 = 1;
  }

  else if ([zoneCopy isSharedZone] && objc_msgSend(origZoneCopy, "isSharedZone"))
  {
    asSharedClientZone = [zoneCopy asSharedClientZone];
    ownerName = [asSharedClientZone ownerName];

    asSharedClientZone2 = [origZoneCopy asSharedClientZone];
    ownerName2 = [asSharedClientZone2 ownerName];

    if (ownerName2)
    {
      if ([ownerName isEqualToString:ownerName2])
      {
        v10 = 1;
      }

      else
      {
        v10 = 2;
      }
    }

    else
    {
      v10 = 2;
    }
  }

  else
  {
    v10 = 2;
  }

  v18 = @"br_assetRereference";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v10];
  v19[0] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  [recordCopy setPluginFields:v16];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_performServerSideAssetCopyForItem:(id)item transferSize:(unint64_t)size
{
  v72[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  currentVersion = [itemCopy currentVersion];
  previousItemGlobalID = [currentVersion previousItemGlobalID];

  dbRowID = [itemCopy dbRowID];
  session = self->super.super._session;
  zoneRowID = [previousItemGlobalID zoneRowID];
  v8 = [(BRCAccountSession *)session serverZoneByRowID:zoneRowID];

  itemID = [previousItemGlobalID itemID];
  zoneID = [v8 zoneID];
  v10 = [itemID contentsRecordIDInZoneID:zoneID];

  baseRecord = [itemCopy baseRecord];
  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = __Block_byref_object_copy__39;
  v69 = __Block_byref_object_dispose__39;
  v70 = 0;
  v12 = [BRCUserDefaults defaultsForMangledID:0];
  LODWORD(session) = [v12 supportsEnhancedDrivePrivacy];

  if (session)
  {
    clientZone = [v8 clientZone];
    v14 = [itemCopy db];
    v15 = [clientZone contentBoundaryKeyForItemID:itemID withDB:v14];
    v16 = v66[5];
    v66[5] = v15;
  }

  v17 = -[BRCItemDBRowIDJobIdentifier initWithItemDBRowID:]([BRCItemDBRowIDJobIdentifier alloc], "initWithItemDBRowID:", [itemCopy dbRowID]);
  clientZone2 = [v8 clientZone];
  v19 = [clientZone2 serverItemByItemID:itemID];

  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke;
  v57[3] = &unk_278505708;
  v46 = v17;
  v58 = v46;
  v45 = v8;
  v59 = v45;
  v20 = itemCopy;
  v60 = v20;
  selfCopy = self;
  v21 = v10;
  v62 = v21;
  v64 = &v65;
  v44 = baseRecord;
  v63 = v44;
  v22 = MEMORY[0x22AA4A310](v57);
  if (v19)
  {
    v23 = v19;
  }

  else
  {
    v23 = v20;
  }

  if ([v23 isPackage])
  {
    v24 = brc_bread_crumbs();
    v25 = brc_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [BRCFSUploader _performServerSideAssetCopyForItem:transferSize:];
    }

    v26 = objc_alloc(MEMORY[0x277CBC3E0]);
    v72[0] = v21;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:1];
    v28 = [v26 initWithRecordIDs:v27];

    [v28 setShouldFetchAssetContent:0];
    v71[0] = @"pkgManifest";
    v71[1] = @"pkgXattrs";
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:2];
    [v28 setDesiredKeys:v29];

    v30 = [BRCUserDefaults defaultsForMangledID:0];
    requestCKCacheAssetClone = [v30 requestCKCacheAssetClone];

    if (requestCKCacheAssetClone)
    {
      [v28 setShouldCloneFileInAssetCache:1];
    }

    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_212;
    v50[3] = &unk_278505758;
    v50[4] = self;
    v56 = dbRowID;
    v32 = v46;
    v51 = v32;
    v52 = v21;
    v33 = v45;
    v53 = v33;
    v34 = itemID;
    v54 = v34;
    v55 = v22;
    [v28 setFetchRecordsCompletionBlock:v50];
    v35 = [BRCFetchRecordsWrapperOperation alloc];
    itemIDString = [v34 itemIDString];
    v37 = [MEMORY[0x277CBC4F8] br_operationGroupWithName:@"FetchRecordsWrapper"];
    v38 = [(BRCFetchRecordsWrapperOperation *)v35 initWithCKFetchRecordsOperation:v28 opName:itemIDString group:v37 serverZone:v33 isUserWaiting:0 sessionContext:self->super.super._session];

    syncContextUsedForTransfers = [v20 syncContextUsedForTransfers];
    uploadThrottle = [syncContextUsedForTransfers uploadThrottle];
    operationID = [(_BRCOperation *)v38 operationID];
    [(BRCFSUploader *)self _willAttemptJobID:v32 throttle:uploadThrottle operationID:operationID];

    [(_BRCOperation *)v38 schedule];
  }

  else
  {
    (v22)[2](v22, v20, v19, 0, 0);
  }

  _Block_object_dispose(&v65, 8);
  v42 = *MEMORY[0x277D85DE8];
}

void __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, char a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = [v9 db];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_2;
  v22[3] = &unk_2785056E0;
  v23 = *(a1 + 32);
  v24 = *(a1 + 40);
  v25 = v10;
  v26 = v9;
  *&v13 = *(a1 + 48);
  *(&v13 + 1) = *(a1 + 56);
  v21 = v13;
  v14 = *(a1 + 64);
  v15 = *(a1 + 72);
  v30 = *(a1 + 80);
  v16 = v15;
  *&v17 = v14;
  *(&v17 + 1) = v16;
  v27 = v21;
  v28 = v17;
  v29 = v11;
  v31 = a5;
  v18 = v11;
  v19 = v9;
  v20 = v10;
  [v12 groupInBatch:v22];
}

void __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_2(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_2_cold_1(a1);
  }

  if ([*(a1 + 40) isSharedZone])
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  v5 = [*(a1 + 48) latestVersion];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [*(a1 + 56) currentVersion];
  }

  v8 = v7;

  v9 = [v8 isPackage];
  v10 = [v8 contentSignature];
  v11 = [*(a1 + 64) isFinderBookmark];
  if ([v10 brc_signatureIsValid])
  {
    if (v9)
    {
      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_2_cold_6();
      }

      if (*(a1 + 112) == 1)
      {
        v14 = *(a1 + 80);
        v15 = *(*(*(a1 + 104) + 8) + 40);
        v85 = 0;
        v16 = [MEMORY[0x277CBC538] br_clonedPackageWithRecordID:v14 databaseScope:v4 fieldName:@"pkgXattrs" boundaryKey:v15 error:&v85];
        v17 = v85;
        [*(a1 + 88) setObject:v16 forKeyedSubscript:@"pkgXattrs"];

        v18 = [*(a1 + 88) objectForKeyedSubscript:@"pkgXattrs"];

        if (!v18 || v17)
        {
          v19 = brc_bread_crumbs();
          v20 = brc_default_log();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_2_cold_7();
          }
        }
      }

      else
      {
        v17 = 0;
      }

      v43 = *(a1 + 80);
      v44 = *(*(*(a1 + 104) + 8) + 40);
      v84 = v17;
      v45 = [MEMORY[0x277CBC538] br_clonedPackageWithRecordID:v43 databaseScope:v4 fieldName:@"pkgContent" boundaryKey:v44 error:&v84];
      v26 = v84;

      [*(a1 + 88) setObject:v45 forKeyedSubscript:@"pkgContent"];
      v46 = [*(a1 + 88) objectForKeyedSubscript:@"pkgContent"];

      if (!v46 || v26)
      {
        v47 = brc_bread_crumbs();
        v48 = brc_default_log();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
        {
          __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_2_cold_8();
        }
      }

      v31 = [objc_alloc(MEMORY[0x277CBC1B0]) initWithExistingRecordID:*(a1 + 80) databaseScope:v4 fieldName:@"pkgManifest" fileSignature:*(a1 + 96)];
      if (v31)
      {
        v49 = [MEMORY[0x277CBC190] br_assetWithAssetReferece:v31 boundaryKey:*(*(*(a1 + 104) + 8) + 40)];
        [*(a1 + 88) setObject:v49 forKeyedSubscript:@"pkgManifest"];

        v50 = [*(a1 + 88) objectForKeyedSubscript:@"pkgManifest"];

        if (v50)
        {
          v51 = [*(a1 + 56) currentVersion];
          v52 = [v51 contentSignature];
          [*(a1 + 88) setObject:v52 forKeyedSubscript:@"pkgSignature"];

          goto LABEL_45;
        }

        v41 = brc_bread_crumbs();
        v42 = brc_default_log();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_2_cold_11();
        }
      }

      else
      {
        v41 = brc_bread_crumbs();
        v42 = brc_default_log();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_2_cold_12();
        }
      }
    }

    else
    {
      v28 = brc_bread_crumbs();
      v29 = brc_default_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_2_cold_3();
      }

      v30 = kBRRecordKeyFinderBookmarkContent;
      if (!v11)
      {
        v30 = kBRRecordKeyFileContent;
      }

      v26 = *v30;
      v31 = [objc_alloc(MEMORY[0x277CBC1B0]) initWithExistingRecordID:*(a1 + 80) databaseScope:v4 fieldName:v26 fileSignature:v10];
      if (!v31)
      {
        v32 = brc_bread_crumbs();
        v33 = brc_default_log();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_2_cold_4();
        }
      }

      if (v11)
      {
        v34 = [*(a1 + 64) clientZone];
        v35 = [v34 enhancedDrivePrivacyEnabled];

        if (v35)
        {
          v36 = [MEMORY[0x277CBEA90] brc_generateSaltingKey];
          v37 = *(*(a1 + 104) + 8);
          v38 = *(v37 + 40);
          *(v37 + 40) = v36;
        }
      }

      v39 = [MEMORY[0x277CBC190] br_assetWithAssetReferece:v31 boundaryKey:*(*(*(a1 + 104) + 8) + 40)];
      [*(a1 + 88) setObject:v39 forKeyedSubscript:v26];

      v40 = [*(a1 + 88) objectForKeyedSubscript:v26];

      if (v40)
      {
LABEL_45:

        if ([v8 hasThumbnail])
        {
          v53 = [v8 thumbnailSignature];
          v54 = [v53 brc_signatureIsValid];

          if (v54)
          {
            v55 = objc_alloc(MEMORY[0x277CBC1B0]);
            v56 = *(a1 + 80);
            v57 = [v8 thumbnailSignature];
            v58 = [v55 initWithExistingRecordID:v56 databaseScope:v4 fieldName:@"thumb1024" fileSignature:v57];

            v59 = [MEMORY[0x277CBC190] br_assetWithAssetReferece:v58 boundaryKey:*(*(*(a1 + 104) + 8) + 40)];
            [*(a1 + 88) setObject:v59 forKeyedSubscript:@"thumb1024"];
          }

          else
          {
            v58 = brc_bread_crumbs();
            v59 = brc_default_log();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_FAULT))
            {
              __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_2_cold_9(a1);
            }
          }
        }

        v60 = [v8 xattrSignature];

        if (!v60)
        {
          goto LABEL_66;
        }

        v61 = [v8 xattrSignature];
        v62 = [v61 brc_signatureIsValid];

        if (v62)
        {
          v63 = objc_alloc(MEMORY[0x277CBC1B0]);
          v64 = *(a1 + 80);
          v65 = [v8 xattrSignature];
          v66 = [v63 initWithExistingRecordID:v64 databaseScope:v4 fieldName:@"xattr" fileSignature:v65];

          v67 = [MEMORY[0x277CBC190] br_assetWithAssetReferece:v66 boundaryKey:*(*(*(a1 + 104) + 8) + 40)];
          [*(a1 + 88) setObject:v67 forKeyedSubscript:@"xattr"];

          v68 = *(*(*(a1 + 104) + 8) + 40);
          if (v68)
          {
            v69 = [v8 xattrSignature];
          }

          else
          {
            v69 = 0;
          }

          v75 = [*(a1 + 88) encryptedValues];
          [v75 setObject:v69 forKeyedSubscript:@"xattrSignature"];

          if (!v68)
          {
            goto LABEL_65;
          }
        }

        else
        {
          v66 = brc_bread_crumbs();
          v69 = brc_default_log();
          if (os_log_type_enabled(v69, OS_LOG_TYPE_FAULT))
          {
            __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_2_cold_10(a1);
          }
        }

LABEL_65:
LABEL_66:
        [*(a1 + 88) serializeContentBoundaryKey:*(*(*(a1 + 104) + 8) + 40)];
        v76 = *(a1 + 72);
        v77 = *(a1 + 88);
        v78 = [*(a1 + 56) clientZone];
        v79 = [*(a1 + 48) clientZone];
        [v76 _serializeServerSideAssetCopyPluginFieldsForRecord:v77 newZone:v78 origZone:v79];

        v80 = *(a1 + 72);
        v81 = *(a1 + 56);
        v82 = *(a1 + 88);
        v83 = *(a1 + 32);
        v26 = [v81 syncContextUsedForTransfers];
        [v80 _finishedUploadingItem:v81 record:v82 jobID:v83 stageID:0 syncContext:v26 hasPerformedServerSideAssetCopy:1 error:0];
        goto LABEL_67;
      }

      v41 = brc_bread_crumbs();
      v42 = brc_default_log();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_2_cold_5();
      }
    }

    v70 = *(a1 + 72);
    v71 = *(a1 + 56);
    v72 = *(a1 + 32);
    v73 = [v71 syncContextUsedForTransfers];
    v74 = [MEMORY[0x277CCA9B8] brc_errorCantCreateAsset];
    [v70 _finishedUploadingItem:v71 record:0 jobID:v72 stageID:0 syncContext:v73 hasPerformedServerSideAssetCopy:1 error:v74];
  }

  else
  {
    v21 = brc_bread_crumbs();
    v22 = brc_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_2_cold_2(a1);
    }

    v23 = *(a1 + 72);
    v24 = *(a1 + 56);
    v25 = *(a1 + 32);
    v26 = [v24 syncContextUsedForTransfers];
    v27 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CBBF50] code:17 userInfo:0];
    [v23 _finishedUploadingItem:v24 record:0 jobID:v25 stageID:0 syncContext:v26 hasPerformedServerSideAssetCopy:1 error:v27];
  }

LABEL_67:
}

void __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_212(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 8) clientTruthWorkloop];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_2_213;
  block[3] = &unk_278505730;
  v23 = *(a1 + 80);
  v8 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v18 = v6;
  v19 = v8;
  v20 = v5;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  *&v13 = v11;
  *(&v13 + 1) = v12;
  *&v14 = v9;
  *(&v14 + 1) = v10;
  v21 = v14;
  v22 = v13;
  v15 = v5;
  v16 = v6;
  dispatch_async(v7, block);
}

void __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_2_213(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 8) itemFetcher];
  v3 = [v2 itemByRowID:*(a1 + 96)];
  v4 = [v3 asDocument];

  if (*(a1 + 40))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);
    v7 = [v4 syncContextUsedForTransfers];
    [v5 _finishedUploadingItem:v4 record:0 jobID:v6 stageID:0 syncContext:v7 hasPerformedServerSideAssetCopy:1 error:*(a1 + 40)];
  }

  else
  {
    v8 = [*(a1 + 56) objectForKeyedSubscript:*(a1 + 64)];
    v9 = [v8 objectForKeyedSubscript:@"pkgManifest"];
    if (v9)
    {
      v10 = v4 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      v11 = brc_bread_crumbs();
      v12 = brc_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412802;
        v29 = v8;
        v30 = 2112;
        v31 = v4;
        v32 = 2112;
        v33 = v11;
        _os_log_fault_impl(&dword_223E7A000, v12, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: No error but also no asset or item with record %@ item %@%@", buf, 0x20u);
      }

      v13 = *(a1 + 32);
      v14 = *(a1 + 48);
      v17 = [v4 syncContextUsedForTransfers];
      v15 = [MEMORY[0x277CCA9B8] brc_errorItemChanged];
      [v13 _finishedUploadingItem:v4 record:0 jobID:v14 stageID:0 syncContext:v17 hasPerformedServerSideAssetCopy:1 error:v15];
    }

    else
    {
      v16 = [*(a1 + 72) clientZone];
      v17 = [v16 serverItemByItemID:*(a1 + 80)];

      v18 = brc_bread_crumbs();
      v19 = brc_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v26 = [*(a1 + 64) recordName];
        v25 = [v9 signature];
        v23 = MEMORY[0x277CCABB0];
        v27 = [v8 objectForKeyedSubscript:@"pkgXattrs"];
        [v23 numberWithInt:v27 != 0];
        *buf = 138413058;
        v29 = v26;
        v30 = 2112;
        v31 = v25;
        v33 = v32 = 2112;
        v24 = v33;
        v34 = 2112;
        v35 = v18;
        _os_log_debug_impl(&dword_223E7A000, v19, OS_LOG_TYPE_DEBUG, "[DEBUG] Record [%@] pkgManifest signature [%@] hasXattrs [%@]%@", buf, 0x2Au);
      }

      v20 = *(a1 + 88);
      v15 = [v9 signature];
      v21 = [v8 objectForKeyedSubscript:@"pkgXattrs"];
      (*(v20 + 16))(v20, v4, v17, v15, v21 != 0);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)resetAndRescheduleUploaderConstraintCheckerIfNeeded
{
  clientDB = [(BRCAccountSession *)self->super.super._session clientDB];
  [clientDB assertOnQueue];
  v2 = +[BRCUploadConstraintChecker defaultChecker];
  [v2 rescheduleAndResetAvailableSizeAndDateIfNeeded];
}

- (void)_transferStreamOfSyncContext:(id)context didBecomeReadyWithMaxRecordsCount:(unint64_t)count sizeHint:(unint64_t)hint priority:(int64_t)priority
{
  v86 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  selfCopy = self;
  clientDB = [(BRCAccountSession *)self->super.super._session clientDB];
  v7 = clientDB;
  [clientDB assertOnQueue];
  v61 = brc_current_date_nsec();
  if ([(BRCFSSchedulerBase *)selfCopy isCancelled])
  {
    goto LABEL_44;
  }

  contextIdentifier = [contextCopy contextIdentifier];
  v9 = [clientDB fetch:{@"  SELECT throttle_id, zone_rowid, transfer_size, transfer_record, next_retry_stamp, transfer_stage     FROM client_uploads    WHERE throttle_state = 1      AND transfer_queue = %@      AND transfer_operation IS NULL ORDER BY upload_priority DESC, transfer_size ASC", contextIdentifier}];

  v63 = 0;
  v57 = 0;
  val = 0;
  v59 = 0;
  v60 = 0x7FFFFFFFFFFFFFFFLL;
  while ([v9 next] && v59 + v63 + -[BRCTransferBatchOperation itemsCount](val, "itemsCount") < count)
  {
    context = objc_autoreleasePoolPush();
    v10 = -[BRCItemDBRowIDJobIdentifier initWithItemDBRowID:]([BRCItemDBRowIDJobIdentifier alloc], "initWithItemDBRowID:", [v9 longLongAtIndex:0]);
    v11 = [v9 numberAtIndex:1];
    v12 = [v9 unsignedIntegerAtIndex:2];
    v69 = [v9 unarchivedObjectOfClass:objc_opt_class() atIndex:3];
    v13 = [v9 longLongAtIndex:4];
    v14 = [v9 stringAtIndex:5];
    if (v13 > v61)
    {
      v15 = v60;
      if (v60 >= v13)
      {
        v15 = v13;
      }

      v60 = v15;
      matchingJobsWhereSQLClause = [(BRCItemDBRowIDJobIdentifier *)v10 matchingJobsWhereSQLClause];
      [clientDB execute:{@"UPDATE client_uploads    SET transfer_queue = '_retry'  WHERE %@", matchingJobsWhereSQLClause}];
      v17 = 0;
      goto LABEL_33;
    }

    matchingJobsWhereSQLClause = [(BRCAccountSession *)selfCopy->super.super._session serverZoneByRowID:v11];
    itemFetcher = [(BRCAccountSession *)selfCopy->super.super._session itemFetcher];
    v70 = [itemFetcher itemByRowID:{-[BRCItemDBRowIDJobIdentifier itemDBRowID](v10, "itemDBRowID")}];

    if (([v70 isDocument] & 1) == 0)
    {
      v24 = brc_bread_crumbs();
      v25 = brc_default_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        *location = 138412546;
        *&location[4] = v70;
        v82 = 2112;
        v83 = v24;
        _os_log_fault_impl(&dword_223E7A000, v25, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: %@ should be a document%@", location, 0x16u);
      }

      goto LABEL_31;
    }

    if ([v70 syncUpState] != 3)
    {
      v26 = brc_bread_crumbs();
      v27 = brc_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        *location = 138412546;
        *&location[4] = v70;
        v82 = 2112;
        v83 = v26;
        _os_log_fault_impl(&dword_223E7A000, v27, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: %@ should be needs-upload%@", location, 0x16u);
      }

      [(BRCFSUploader *)selfCopy cancelAndCleanupItemUpload:v70];
      goto LABEL_31;
    }

    if ([v70 isDocumentBeingCopiedToNewZone])
    {
      currentVersion = [v70 currentVersion];
      contentSignature = [currentVersion contentSignature];
      if ([contentSignature brc_signatureIsValid])
      {
        session = selfCopy->super.super._session;
        currentVersion2 = [v70 currentVersion];
        previousItemGlobalID = [currentVersion2 previousItemGlobalID];
        zoneRowID = [previousItemGlobalID zoneRowID];
        v52 = [(BRCAccountSession *)session serverZoneByRowID:zoneRowID];
        clientZone = [v52 clientZone];
        enhancedDrivePrivacyEnabled = [clientZone enhancedDrivePrivacyEnabled];
        clientZone2 = [v70 clientZone];
        enhancedDrivePrivacyEnabled2 = [clientZone2 enhancedDrivePrivacyEnabled];

        if (((enhancedDrivePrivacyEnabled ^ enhancedDrivePrivacyEnabled2) & 1) == 0)
        {
          [(BRCFSUploader *)selfCopy _performServerSideAssetCopyForItem:v70 transferSize:v12];
          v17 = 0;
          ++v59;
          goto LABEL_32;
        }
      }

      else
      {
      }
    }

    if (!val)
    {
      v29 = [BRCUploadBatchOperation alloc];
      vala = selfCopy->super.super._session;
      clientZone3 = [matchingJobsWhereSQLClause clientZone];
      hasWorkGroup = [(BRCFSSchedulerBase *)selfCopy hasWorkGroup];
      workloop = [(BRCDeadlineScheduler *)selfCopy->_uploadsDeadlineScheduler workloop];
      val = [(BRCUploadBatchOperation *)v29 initWithSyncContext:contextCopy sessionContext:vala clientZone:clientZone3 group:hasWorkGroup callBackQueueTarget:workloop];

      operationID = [(_BRCOperation *)val operationID];

      v76[0] = MEMORY[0x277D85DD0];
      v76[1] = 3221225472;
      v76[2] = __98__BRCFSUploader__transferStreamOfSyncContext_didBecomeReadyWithMaxRecordsCount_sizeHint_priority___block_invoke;
      v76[3] = &unk_2785057A8;
      v77 = clientDB;
      v78 = selfCopy;
      v57 = operationID;
      v79 = v57;
      v80 = contextCopy;
      [(BRCUploadBatchOperation *)val setPerUploadCompletionBlock:v76];
      objc_initWeak(location, val);
      v72[0] = MEMORY[0x277D85DD0];
      v72[1] = 3221225472;
      v72[2] = __98__BRCFSUploader__transferStreamOfSyncContext_didBecomeReadyWithMaxRecordsCount_sizeHint_priority___block_invoke_229;
      v72[3] = &unk_2785057D0;
      objc_copyWeak(&v75, location);
      v73 = v70;
      v74 = selfCopy;
      [(BRCUploadBatchOperation *)val setUploadBatchCompletionBlock:v72];

      objc_destroyWeak(&v75);
      objc_destroyWeak(location);

LABEL_27:
      v34 = +[BRCUploadConstraintChecker defaultChecker];
      itemScope = [v70 itemScope];
      itemID = [v70 itemID];
      v71 = 0;
      LODWORD(itemScope) = [v34 canUploadItemWithSize:v12 itemScope:itemScope itemID:itemID withError:&v71];
      v37 = v71;

      if (itemScope)
      {
        [(BRCUploadBatchOperation *)val addItem:v70 stageID:v14 record:v69 transferSize:v12];
        uploadThrottle = [contextCopy uploadThrottle];
        [(BRCFSUploader *)selfCopy _willAttemptJobID:v10 throttle:uploadThrottle operationID:v57];

        [v70 triggerNotificationIfNeeded];
      }

      else
      {
        v39 = -[BRCItemDBRowIDJobIdentifier initWithItemDBRowID:]([BRCItemDBRowIDJobIdentifier alloc], "initWithItemDBRowID:", [v70 dbRowID]);
        [(BRCFSUploader *)selfCopy _finishedUploadingItem:v70 record:v69 jobID:v39 stageID:v14 syncContext:contextCopy hasPerformedServerSideAssetCopy:0 error:v37];

        ++v63;
        v37 = v39;
      }

LABEL_31:
      v17 = 0;
      goto LABEL_32;
    }

    itemsCount = [(BRCTransferBatchOperation *)val itemsCount];
    if (itemsCount < [(BRCFSUploader *)selfCopy _minBatchSize]|| [(BRCTransferBatchOperation *)val totalSize]+ v12 <= hint)
    {
      goto LABEL_27;
    }

    v17 = 1;
LABEL_32:

LABEL_33:
    objc_autoreleasePoolPop(context);
    if (v17)
    {
      break;
    }
  }

  if (v60 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(BRCDeadlineSource *)selfCopy->_retryQueueSource signalWithDeadline:?];
  }

  if (val && [(BRCTransferBatchOperation *)val itemsCount])
  {
    br_upload = [MEMORY[0x277CBC4F8] br_upload];
    [(_BRCOperation *)val setGroup:br_upload];

    v41 = brc_bread_crumbs();
    v42 = brc_default_log();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      itemsCount2 = [(BRCTransferBatchOperation *)val itemsCount];
      contextIdentifier2 = [contextCopy contextIdentifier];
      *location = 134218498;
      *&location[4] = itemsCount2;
      v82 = 2112;
      v83 = contextIdentifier2;
      v84 = 2112;
      v85 = v41;
      _os_log_impl(&dword_223E7A000, v42, OS_LOG_TYPE_DEFAULT, "[NOTICE] uploading %ld documents in %@%@", location, 0x20u);
    }

    uploadStream = [contextCopy uploadStream];
    [uploadStream addBatchOperation:val];
  }

  contextIdentifier3 = [contextCopy contextIdentifier];
  v47 = [clientDB numberWithSQL:{@"SELECT MIN(next_retry_stamp) FROM client_uploads   WHERE throttle_state = 1     AND transfer_queue = %@      AND transfer_operation IS NULL ", contextIdentifier3}];

  if (v47)
  {
    uploadStream2 = [contextCopy uploadStream];
    [uploadStream2 signalWithDeadline:{objc_msgSend(v47, "longLongValue")}];
  }

  v7 = clientDB;
LABEL_44:

  v49 = *MEMORY[0x277D85DE8];
}

void __98__BRCFSUploader__transferStreamOfSyncContext_didBecomeReadyWithMaxRecordsCount_sizeHint_priority___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __98__BRCFSUploader__transferStreamOfSyncContext_didBecomeReadyWithMaxRecordsCount_sizeHint_priority___block_invoke_2;
  v12[3] = &unk_278505780;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(a1 + 48);
  v13 = v5;
  v14 = v7;
  v15 = v9;
  v16 = *(a1 + 56);
  v17 = v6;
  v10 = v6;
  v11 = v5;
  [v8 groupInBatch:v12];
}

void __98__BRCFSUploader__transferStreamOfSyncContext_didBecomeReadyWithMaxRecordsCount_sizeHint_priority___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) transferID];
  v3 = -[BRCItemDBRowIDJobIdentifier initWithItemDBRowID:]([BRCItemDBRowIDJobIdentifier alloc], "initWithItemDBRowID:", [v2 unsignedLongLongValue]);

  v4 = [*(a1 + 40) _documentItemForJobID:v3 operationID:*(a1 + 48)];
  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) record];
    v7 = [*(a1 + 32) stageID];
    [v5 _finishedUploadingItem:v4 record:v6 jobID:v3 stageID:v7 syncContext:*(a1 + 56) hasPerformedServerSideAssetCopy:0 error:*(a1 + 64)];
  }

  else
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v11 = [*(a1 + 48) UUIDString];
      *buf = 138412802;
      v13 = v3;
      v14 = 2112;
      v15 = v11;
      v16 = 2112;
      v17 = v8;
      _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] Uploader[%@]: throttle for %@ doesn't exist anymore%@", buf, 0x20u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __98__BRCFSUploader__transferStreamOfSyncContext_didBecomeReadyWithMaxRecordsCount_sizeHint_priority___block_invoke_229(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5 && !a3)
  {
    v16 = v5;
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v7 = +[BRCUploadConstraintChecker defaultChecker];
    v8 = [v16 MMCSMetrics];
    v9 = [v8 bytesUploaded];
    v10 = [*(a1 + 32) itemID];
    [v7 updateWithUploadedBytesSize:v9 forItemID:v10];

    if ([WeakRetained totalSize])
    {
      v11 = [WeakRetained operationID];
      v12 = [v11 debugDescription];
      v13 = [v16 MMCSMetrics];
      v14 = +[AppTelemetryTimeSeriesEvent newDoubleEvent:eventGroupUUID:value:](AppTelemetryTimeSeriesEvent, "newDoubleEvent:eventGroupUUID:value:", 45, v12, ([v13 bytesUploaded] / objc_msgSend(WeakRetained, "totalSize")));

      v15 = [*(*(a1 + 40) + 8) analyticsReporter];
      [v15 postReportForDefaultSubCategoryWithCategory:8 telemetryTimeEvent:v14];
    }

    v5 = v16;
  }
}

- (void)transferStreamOfSyncContext:(id)context didBecomeReadyWithMaxRecordsCount:(unint64_t)count sizeHint:(unint64_t)hint priority:(int64_t)priority completionBlock:(id)block
{
  contextCopy = context;
  blockCopy = block;
  clientDB = [(BRCAccountSession *)self->super.super._session clientDB];
  serialQueue = [clientDB serialQueue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __113__BRCFSUploader_transferStreamOfSyncContext_didBecomeReadyWithMaxRecordsCount_sizeHint_priority_completionBlock___block_invoke;
  v18[3] = &unk_2785057F8;
  v18[4] = self;
  v19 = contextCopy;
  hintCopy = hint;
  priorityCopy = priority;
  v20 = blockCopy;
  countCopy = count;
  v16 = blockCopy;
  v17 = contextCopy;
  dispatch_async_with_logs_8(serialQueue, v18);
}

uint64_t __113__BRCFSUploader_transferStreamOfSyncContext_didBecomeReadyWithMaxRecordsCount_sizeHint_priority_completionBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _transferStreamOfSyncContext:*(a1 + 40) didBecomeReadyWithMaxRecordsCount:*(a1 + 56) sizeHint:*(a1 + 64) priority:*(a1 + 72)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)finishedSyncingUpItem:(id)item withOutOfQuotaError:(id)error
{
  v29 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  errorCopy = error;
  dbRowID = [itemCopy dbRowID];
  memset(v18, 0, sizeof(v18));
  __brc_create_section(0, "[BRCFSUploader finishedSyncingUpItem:withOutOfQuotaError:]", 1932, 0, v18);
  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v14 = v18[0];
    digestDescription = [itemCopy digestDescription];
    *buf = 134219010;
    v20 = v14;
    v21 = 2048;
    v22 = dbRowID;
    v23 = 2112;
    v24 = digestDescription;
    v25 = 2112;
    v26 = errorCopy;
    v27 = 2112;
    v28 = v9;
    _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Uploader[%lld]: %@ failed to sync up because it's out of quota: %@%@", buf, 0x34u);
  }

  [itemCopy markOverQuotaWithError:errorCopy];
  [itemCopy saveToDB];
  [(BRCFSUploader *)self setState:32 forItem:itemCopy];
  clientDB = [(BRCAccountSession *)self->super.super._session clientDB];
  v12 = [clientDB changes] == 1;

  if (!v12)
  {
    v16 = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      [BRCFSUploader finishedSyncingUpItem:withOutOfQuotaError:];
    }
  }

  __brc_leave_section(v18);

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasItemsOverQuotaForOwner:(id)owner
{
  ownerCopy = owner;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__39;
  v18 = __Block_byref_object_dispose__39;
  v19 = 0;
  clientDB = [(BRCAccountSession *)self->super.super._session clientDB];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __43__BRCFSUploader_hasItemsOverQuotaForOwner___block_invoke;
  v10[3] = &unk_278500D08;
  v13 = &v14;
  v6 = clientDB;
  v11 = v6;
  v7 = ownerCopy;
  v12 = v7;
  [v6 disableProfilingForQueriesInBlock:v10];
  bOOLValue = [v15[5] BOOLValue];

  _Block_object_dispose(&v14, 8);
  return bOOLValue;
}

uint64_t __43__BRCFSUploader_hasItemsOverQuotaForOwner___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) numberWithSQL:{@"SELECT 1 FROM client_uploads  WHERE throttle_state = 32    AND zone_rowid IN (SELECT rowid FROM client_zones WHERE zone_owner = %@ AND zone_plist IS NOT NULL)  LIMIT 1", *(a1 + 40)}];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)hasItemsOverQuotaInZone:(id)zone
{
  session = self->super.super._session;
  zoneCopy = zone;
  clientDB = [(BRCAccountSession *)session clientDB];
  dbRowID = [zoneCopy dbRowID];

  v7 = [clientDB numberWithSQL:{@"SELECT 1 FROM client_uploads WHERE throttle_state = 32 AND zone_rowid = %@ LIMIT 1", dbRowID}];
  LOBYTE(clientDB) = [v7 BOOLValue];

  return clientDB;
}

- (id)quotaAvailableForOwner:(id)owner
{
  if ([owner isEqualToString:*MEMORY[0x277CBBF28]])
  {
    clientState = [(BRCAccountSession *)self->super.super._session clientState];
    v5 = [clientState objectForKeyedSubscript:@"availableQuota"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_rescheduleJobsOutOfQuotaForDefaultOwnerWithAvailableSize:(int64_t)size
{
  v26 = *MEMORY[0x277D85DE8];
  memset(v19, 0, sizeof(v19));
  __brc_create_section(0, "[BRCFSUploader _rescheduleJobsOutOfQuotaForDefaultOwnerWithAvailableSize:]", 1981, 0, v19);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v17 = v19[0];
    v18 = [BRCDumpContext stringFromByteCount:size context:0];
    *buf = 134218498;
    v21 = v17;
    v22 = 2112;
    v23 = v18;
    v24 = 2112;
    v25 = v5;
    _os_log_debug_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx re-uploading failed items with size less than %@%@", buf, 0x20u);
  }

  v7 = self->super.super._session;
  [(BRCAccountSession *)v7 enumerateClientZones:&__block_literal_global_243];
  clientDB = [(BRCAccountSession *)v7 clientDB];
  v9 = [clientDB fetch:{@"SELECT throttle_id, transfer_size   FROM client_uploads  WHERE throttle_state = 32    AND transfer_size < %lld", size}];
  for (i = 0; ; i = 1)
  {
    next = [v9 next];
    v12 = size > 0 ? next : 0;
    if (v12 != 1)
    {
      break;
    }

    v13 = objc_autoreleasePoolPush();
    v14 = [v9 longLongAtIndex:0];
    v15 = [v9 longLongAtIndex:1];
    [clientDB execute:{@"UPDATE client_items SET version_upload_error = NULL WHERE rowid = %lld", v14}];
    [clientDB execute:{@"UPDATE client_uploads SET throttle_state = 1, upload_error = NULL WHERE throttle_id = %lld", v14}];
    size -= v15;
    objc_autoreleasePoolPop(v13);
  }

  [v9 close];
  if (i)
  {
    [(BRCFSSchedulerBase *)self signal];
  }

  [(BRCFSUploader *)self setIsDefaultOwnerOutOfQuota:[(BRCFSUploader *)self hasItemsOverQuotaForOwner:*MEMORY[0x277CBBF28]]];

  __brc_leave_section(v19);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)setQuotaAvailableForDefaultOwner:(unint64_t)owner
{
  v27 = *MEMORY[0x277D85DE8];
  clientDB = [(BRCAccountSession *)self->super.super._session clientDB];
  [clientDB assertOnQueue];

  v6 = [(BRCFSUploader *)self quotaAvailableForOwner:*MEMORY[0x277CBBF28]];
  unsignedLongLongValue = [v6 unsignedLongLongValue];

  date = [MEMORY[0x277CBEAA8] date];
  clientState = [(BRCAccountSession *)self->super.super._session clientState];
  [clientState setObject:date forKeyedSubscript:@"lastQuotaFetchDate"];

  if (unsignedLongLongValue != owner)
  {
    memset(v18, 0, sizeof(v18));
    __brc_create_section(0, "[BRCFSUploader setQuotaAvailableForDefaultOwner:]", 2034, 0, v18);
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v15 = v18[0];
      v16 = [BRCDumpContext stringFromByteCount:unsignedLongLongValue context:0];
      v17 = [BRCDumpContext stringFromByteCount:owner context:0];
      *buf = 134218754;
      v20 = v15;
      v21 = 2112;
      v22 = v16;
      v23 = 2112;
      v24 = v17;
      v25 = 2112;
      v26 = v10;
      _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx quota changed from %@ to %@%@", buf, 0x2Au);
    }

    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:owner];
    clientState2 = [(BRCAccountSession *)self->super.super._session clientState];
    [clientState2 setObject:v12 forKeyedSubscript:@"availableQuota"];

    if (unsignedLongLongValue < owner)
    {
      [(BRCFSUploader *)self _rescheduleJobsOutOfQuotaForDefaultOwnerWithAvailableSize:owner];
    }

    __brc_leave_section(v18);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_globalQuotaStateUpdateForDefaultOwner
{
  clientDB = [(BRCAccountSession *)self->super.super._session clientDB];
  [clientDB assertOnQueue];

  if ([(BRCFSUploader *)self isDefaultOwnerOutOfQuota])
  {
    v4 = [(BRCFSUploader *)self hasItemsOverQuotaForOwner:*MEMORY[0x277CBBF28]];

    [(BRCFSUploader *)self setIsDefaultOwnerOutOfQuota:v4];
  }
}

- (void)_scheduleQuotaFetchForDefaultOwner
{
  v3 = objc_alloc_init(MEMORY[0x277CBC420]);
  br_quotaUpdateUploader = [MEMORY[0x277CBC4F8] br_quotaUpdateUploader];
  [v3 setGroup:br_quotaUpdateUploader];

  quotaPacer = self->_quotaPacer;
  br_pacer_suspend();
  clientDB = [(BRCAccountSession *)self->super.super._session clientDB];
  serialQueue = [clientDB serialQueue];
  [v3 setCallbackQueue:serialQueue];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __51__BRCFSUploader__scheduleQuotaFetchForDefaultOwner__block_invoke;
  v13[3] = &unk_278505820;
  v13[4] = self;
  [v3 setFetchUserQuotaCompletionBlock:v13];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__BRCFSUploader__scheduleQuotaFetchForDefaultOwner__block_invoke_259;
  v12[3] = &unk_2784FF450;
  v12[4] = self;
  [v3 setCompletionBlock:v12];
  v8 = dispatch_get_global_queue(17, 0);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__BRCFSUploader__scheduleQuotaFetchForDefaultOwner__block_invoke_2;
  v10[3] = &unk_2784FF478;
  v10[4] = self;
  v11 = v3;
  v9 = v3;
  dispatch_async_with_logs_8(v8, v10);
}

void __51__BRCFSUploader__scheduleQuotaFetchForDefaultOwner__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __51__BRCFSUploader__scheduleQuotaFetchForDefaultOwner__block_invoke_cold_1();
  }

  if (v5)
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = v5;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEFAULT, "[WARNING] can't update quota: %@%@", &v12, 0x16u);
    }

    v10 = *(*(a1 + 32) + 88);
    br_pacer_signal();
  }

  else
  {
    [*(a1 + 32) setQuotaAvailableForDefaultOwner:a2];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __51__BRCFSUploader__scheduleQuotaFetchForDefaultOwner__block_invoke_2(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 8) syncContextProvider];
  v2 = [v3 defaultSyncContext];
  [v2 addOperation:*(a1 + 40)];
}

- (void)setIsDefaultOwnerOutOfQuota:(BOOL)quota forceSignalContainers:(BOOL)containers
{
  if (self->_isDefaultOwnerOutOfQuota != quota)
  {
    self->_isDefaultOwnerOutOfQuota = quota;
    if (quota)
    {
      quotaPacer = self->_quotaPacer;
      br_pacer_signal();
    }
  }
}

- (void)ownerDidReceiveOutOfQuotaError:(id)error
{
  if ([error isEqualToString:*MEMORY[0x277CBBF28]])
  {

    [(BRCFSUploader *)self setIsDefaultOwnerOutOfQuota:1];
  }
}

- (void)scheduleQuotaStateUpdateForOwner:(id)owner
{
  if ([owner isEqualToString:*MEMORY[0x277CBBF28]] && -[BRCFSUploader isDefaultOwnerOutOfQuota](self, "isDefaultOwnerOutOfQuota"))
  {
    globalQuotaStateUpdatePacer = self->_globalQuotaStateUpdatePacer;

    br_pacer_signal();
  }
}

- (void)scheduleQuotaFetchIfNeededForOwner:(id)owner
{
  if ([owner isEqualToString:*MEMORY[0x277CBBF28]] && -[BRCFSUploader isDefaultOwnerOutOfQuota](self, "isDefaultOwnerOutOfQuota"))
  {
    quotaPacer = self->_quotaPacer;

    br_pacer_signal();
  }
}

- (void)forceScheduleQuotaFetchForOwner:(id)owner
{
  if ([owner isEqualToString:*MEMORY[0x277CBBF28]])
  {
    quotaPacer = self->_quotaPacer;

    br_pacer_signal();
  }
}

- (void)_reportUploadErrorForDocument:(id)document error:(id)error underlyingError:(id)underlyingError
{
  session = self->super.super._session;
  underlyingErrorCopy = underlyingError;
  errorCopy = error;
  documentCopy = document;
  localItemSyncErrorReporter = [(BRCAccountSession *)session localItemSyncErrorReporter];
  dbRowID = [documentCopy dbRowID];

  [localItemSyncErrorReporter reportUploadErrorForItemWithRowID:dbRowID error:errorCopy underlyingError:underlyingErrorCopy];
}

- (void)_clearUploadErrorForDocument:(id)document
{
  session = self->super.super._session;
  documentCopy = document;
  localItemSyncErrorReporter = [(BRCAccountSession *)session localItemSyncErrorReporter];
  dbRowID = [documentCopy dbRowID];

  [localItemSyncErrorReporter clearUploadErrorForItemWithRowID:dbRowID];
}

- (void)recoverAndReportMissingJobsWithCompletion:(id)completion recoveryTask:(id)task
{
  v54 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  taskCopy = task;
  clientDB = [(BRCAccountSession *)self->super.super._session clientDB];
  v9 = [clientDB fetch:{@"SELECT ci.rowid, ci.zone_rowid, ci.item_id, ci.item_creator_id, ci.item_sharing_options, ci.item_side_car_ckinfo, ci.item_parent_zone_rowid, ci.item_localsyncupstate, ci.item_local_diffs, ci.item_notifs_rank, ci.app_library_rowid, ci.item_min_supported_os_rowid, ci.item_user_visible, ci.item_stat_ckinfo, ci.item_state, ci.item_type, ci.item_mode, ci.item_birthtime, ci.item_lastusedtime, ci.item_favoriterank, ci.item_parent_id, ci.item_filename, ci.item_hidden_ext, ci.item_finder_tags, ci.item_xattr_signature, ci.item_trash_put_back_path, ci.item_trash_put_back_parent_id, ci.item_alias_target, ci.item_creator, ci.item_processing_stamp, ci.item_bouncedname, ci.item_scope, ci.item_local_change_count, ci.item_old_version_identifier, ci.fp_creation_item_identifier, ci.version_name, ci.version_ckinfo, ci.version_mtime, ci.version_size, ci.version_thumb_size, ci.version_thumb_signature, ci.version_content_signature, ci.version_xattr_signature, ci.version_edited_since_shared, ci.version_device, ci.version_conflict_loser_etags, ci.version_quarantine_info, ci.version_uploaded_assets, ci.version_upload_error, ci.version_old_zone_item_id, ci.version_old_zone_rowid, ci.version_local_change_count, ci.version_old_version_identifier, ci.item_live_conflict_loser_etags, ci.item_file_id, ci.item_generation FROM client_items AS ci WHERE ci.item_localsyncupstate = 3 AND ci.item_localsyncupstate != 0 AND NOT EXISTS (SELECT 1 FROM client_uploads AS up WHERE ci.rowid = up.throttle_id AND up.throttle_state != 0)"}];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __72__BRCFSUploader_recoverAndReportMissingJobsWithCompletion_recoveryTask___block_invoke;
  v44[3] = &unk_2784FF910;
  v44[4] = self;
  v10 = [v9 enumerateObjects:v44];
  v11 = [v10 countByEnumeratingWithState:&v45 objects:v53 count:16];
  v12 = v11;
  if (v11)
  {
    v40 = taskCopy;
    v41 = completionCopy;
    v42 = 0;
    v13 = *v46;
    v39 = v11;
    v14 = v11;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v46 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v45 + 1) + 8 * i);
        v17 = objc_autoreleasePoolPush();
        if ([v16 isDocument])
        {
          asDocument = [v16 asDocument];
          [(BRCFSUploader *)self uploadItem:asDocument];
        }

        else
        {
          v19 = brc_bread_crumbs();
          v20 = brc_default_log();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412546;
            v50 = v16;
            v51 = 2112;
            v52 = v19;
            _os_log_fault_impl(&dword_223E7A000, v20, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Item scheduled to upload isn't a document %@%@", buf, 0x16u);
          }

          [v16 markNeedsUploadOrSyncingUp];
          [v16 saveToDB];
        }

        objc_autoreleasePoolPop(v17);
      }

      v42 += v14;
      v14 = [v10 countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v14);

    v21 = brc_bread_crumbs();
    v22 = brc_default_log();
    v23 = v42;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [BRCFSUploader recoverAndReportMissingJobsWithCompletion:recoveryTask:];
    }

    taskCopy = v40;
    completionCopy = v41;
    v12 = v39;
  }

  else
  {

    v23 = 0;
  }

  clientDB2 = [(BRCAccountSession *)self->super.super._session clientDB];
  [clientDB2 execute:@"UPDATE client_uploads SET throttle_state = 1 WHERE throttle_state = 31 AND transfer_operation IS NULL  AND throttle_id NOT IN (SELECT throttle_id FROM client_sync_up WHERE throttle_state != 0)"];

  clientDB3 = [(BRCAccountSession *)self->super.super._session clientDB];
  changes = [clientDB3 changes];

  if (changes)
  {
    v27 = brc_bread_crumbs();
    v28 = brc_default_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      [BRCFSUploader recoverAndReportMissingJobsWithCompletion:recoveryTask:];
    }
  }

  v29 = +[BRCAccountHandler currentiCloudAccount];
  br_needsToVerifyTerms = [v29 br_needsToVerifyTerms];

  if (br_needsToVerifyTerms)
  {
    _rescheduleJobsPendingVerifyTerms = 0;
  }

  else
  {
    _rescheduleJobsPendingVerifyTerms = [(BRCFSUploader *)self _rescheduleJobsPendingVerifyTerms];
    if (_rescheduleJobsPendingVerifyTerms >= 1)
    {
      v43 = v23;
      v32 = v12;
      v33 = brc_bread_crumbs();
      v34 = brc_default_log();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        [BRCFSUploader recoverAndReportMissingJobsWithCompletion:recoveryTask:];
      }

      v12 = v32;
      v23 = v43;
    }
  }

  v35 = changes + v23 + _rescheduleJobsPendingVerifyTerms;
  if (v35)
  {
    [(BRCFSUploader *)self schedule];
  }

  if (v12)
  {
    v36 = [AppTelemetryTimeSeriesEvent newMissingUploaderJobEventWithNumberMissing:v23];
    analyticsReporter = [(BRCAccountSession *)self->super.super._session analyticsReporter];
    [analyticsReporter postReportForDefaultSubCategoryWithCategory:8 telemetryTimeEvent:v36];
  }

  completionCopy[2](completionCopy, v35);

  v38 = *MEMORY[0x277D85DE8];
}

id __72__BRCFSUploader_recoverAndReportMissingJobsWithCompletion_recoveryTask___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = a2;
  v6 = [v4 clientDB];
  v7 = [v4 newLocalItemFromPQLResultSet:v5 db:v6 error:a3];

  return v7;
}

- (BOOL)_handleCollaborationUploadError:(id)error recordID:(id)d clientZone:(id)zone reply:(id)reply
{
  v50 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  dCopy = d;
  zoneCopy = zone;
  replyCopy = reply;
  if (errorCopy)
  {
    domain = [errorCopy domain];
    v15 = *MEMORY[0x277CFADE8];
    v16 = [domain isEqualToString:*MEMORY[0x277CFADE8]];

    if (v16)
    {
      v17 = errorCopy;
LABEL_22:
      replyCopy[2](replyCopy, 0, v17);
      goto LABEL_23;
    }

    v43 = 0;
    v18 = [errorCopy brc_isCloudKitShouldBeUsingEnhancedDrivePrivacyWithFieldName:&v43];
    v19 = v43;
    if (v18)
    {
      v20 = brc_bread_crumbs();
      v21 = brc_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        *&buf[4] = zoneCopy;
        *&buf[12] = 2112;
        *&buf[14] = v19;
        *&buf[22] = 2112;
        v47 = v20;
        _os_log_debug_impl(&dword_223E7A000, v21, OS_LOG_TYPE_DEBUG, "[DEBUG] Enabling server zone %@ to use enhanced drive privacy (field name %@)%@", buf, 0x20u);
      }

      clientTruthWorkloop = [(BRCAccountSession *)self->super.super._session clientTruthWorkloop];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __75__BRCFSUploader__handleCollaborationUploadError_recordID_clientZone_reply___block_invoke;
      block[3] = &unk_2784FF450;
      v42 = zoneCopy;
      dispatch_async_and_wait(clientTruthWorkloop, block);

      v17 = [MEMORY[0x277CCA9B8] br_errorWithDomain:v15 code:1 description:{@"Upload failed, please try again"}];
    }

    else if ([errorCopy brc_isCloudKitValidationKeyMismatchError])
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v47 = __Block_byref_object_copy__39;
      v48 = __Block_byref_object_dispose__39;
      v49 = 0;
      clientTruthWorkloop2 = [(BRCAccountSession *)self->super.super._session clientTruthWorkloop];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __75__BRCFSUploader__handleCollaborationUploadError_recordID_clientZone_reply___block_invoke_2;
      v37[3] = &unk_278500D08;
      v40 = buf;
      v38 = zoneCopy;
      v39 = dCopy;
      dispatch_async_and_wait(clientTruthWorkloop2, v37);

      v24 = *(*&buf[8] + 40);
      if (v24)
      {
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __75__BRCFSUploader__handleCollaborationUploadError_recordID_clientZone_reply___block_invoke_3;
        v35[3] = &unk_278500CB8;
        v36 = replyCopy;
        [v24 addLocateRecordCompletionBlock:v35];

        v17 = 0;
      }

      else
      {
        v17 = [MEMORY[0x277CCA9B8] br_errorWithDomain:v15 code:4 description:&stru_2837504F0];
      }

      _Block_object_dispose(buf, 8);
      if (v24)
      {

LABEL_23:
        goto LABEL_24;
      }
    }

    else if ([errorCopy brc_containsCloudKitErrorCode:14])
    {
      v17 = [MEMORY[0x277CCA9B8] br_errorWithDomain:v15 code:5 description:@"Item conflicted with server"];
    }

    else
    {
      domain2 = [errorCopy domain];
      v26 = [domain2 isEqualToString:*MEMORY[0x277CBBF50]];

      if (!v26)
      {
        goto LABEL_20;
      }

      CKRetryAfterSecondsForError();
      if (v27 == 0.0)
      {
        goto LABEL_20;
      }

      v28 = MEMORY[0x277CCA9B8];
      v44 = *MEMORY[0x277CFADF0];
      v29 = [MEMORY[0x277CCABB0] numberWithDouble:?];
      v45 = v29;
      v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      v17 = [v28 br_errorWithDomain:v15 code:1 userInfo:v30 description:{@"Upload failed, please try again"}];
    }

    if (v17)
    {
LABEL_21:

      goto LABEL_22;
    }

LABEL_20:
    v31 = MEMORY[0x277CCA9B8];
    br_errorDescription = [errorCopy br_errorDescription];
    v17 = [v31 br_errorWithDomain:v15 code:4 userInfo:0 description:{@"%@", br_errorDescription}];

    goto LABEL_21;
  }

LABEL_24:

  v33 = *MEMORY[0x277D85DE8];
  return errorCopy != 0;
}

uint64_t __75__BRCFSUploader__handleCollaborationUploadError_recordID_clientZone_reply___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) locateRecordIfNecessaryForRecordID:*(a1 + 40) isUserWaiting:1];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

void __75__BRCFSUploader__handleCollaborationUploadError_recordID_clientZone_reply___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if ((a2 & 1) == 0)
  {
    v7 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFADE8] code:3 description:@"Item not found"];
    goto LABEL_5;
  }

  if (v5)
  {
    v7 = [v5 brc_wrappedError];
LABEL_5:
    v8 = v7;

    goto LABEL_6;
  }

  v8 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFADE8] code:1 description:{@"Upload failed, please try again"}];
LABEL_6:
  (*(*(a1 + 32) + 16))();
}

- (id)uploadDocument:(id)document withContents:(id)contents baseVersion:(id)version basedOnOriginalVersion:(BOOL)originalVersion options:(unint64_t)options reply:(id)reply
{
  documentCopy = document;
  contentsCopy = contents;
  versionCopy = version;
  replyCopy = reply;
  v17 = MEMORY[0x277CCACA8];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v20 = [v17 stringWithFormat:@"cu-%@", uUIDString];

  v123 = 0;
  v124 = &v123;
  v125 = 0x3032000000;
  v126 = __Block_byref_object_copy__39;
  v127 = __Block_byref_object_dispose__39;
  v78 = documentCopy;
  clientZone = [documentCopy clientZone];
  v117 = 0;
  v118 = &v117;
  v119 = 0x3032000000;
  v120 = __Block_byref_object_copy__39;
  v121 = __Block_byref_object_dispose__39;
  v122 = 0;
  analyticsReporter = [(BRCAccountSession *)self->super.super._session analyticsReporter];
  optionsCopy = options;
  originalVersionCopy = originalVersion;
  mangledID = [v124[5] mangledID];
  v23 = [BRCUserDefaults defaultsForMangledID:mangledID];
  LOBYTE(uUIDString) = [v23 shouldSendTelemetryOnCollaborationAPIs];

  v111[0] = MEMORY[0x277D85DD0];
  v111[1] = 3221225472;
  v111[2] = __94__BRCFSUploader_uploadDocument_withContents_baseVersion_basedOnOriginalVersion_options_reply___block_invoke;
  v111[3] = &unk_278505848;
  v116 = uUIDString;
  v75 = analyticsReporter;
  v112 = v75;
  v114 = &v117;
  v115 = &v123;
  v76 = replyCopy;
  v113 = v76;
  v24 = MEMORY[0x22AA4A310](v111);
  v107 = 0;
  v108 = &v107;
  v109 = 0x2020000000;
  v110 = -1;
  v101[0] = MEMORY[0x277D85DD0];
  v101[1] = 3221225472;
  v101[2] = __94__BRCFSUploader_uploadDocument_withContents_baseVersion_basedOnOriginalVersion_options_reply___block_invoke_2;
  v101[3] = &unk_278505870;
  v104 = &v107;
  v101[4] = self;
  v25 = v20;
  v102 = v25;
  v105 = &v117;
  v106 = &v123;
  v74 = v24;
  v103 = v74;
  v26 = MEMORY[0x22AA4A310](v101);
  v27 = [contentsCopy url];
  v28 = MEMORY[0x277CFAE88];
  _scope = [contentsCopy _scope];
  v100 = 0;
  v30 = [v28 consumeSandboxExtension:_scope error:&v100];
  v31 = v100;
  v108[3] = v30;

  if (v108[3] < 0)
  {
    (v26)[2](v26, 0, v31);
    v64 = 0;
  }

  else
  {
    v99 = 0;
    v32 = *MEMORY[0x277CBE7B0];
    v98 = 0;
    v33 = [v27 getResourceValue:&v99 forKey:v32 error:&v98];
    v34 = v99;
    v35 = v98;

    v73 = v34;
    if (v33)
    {
      [v34 timeIntervalSince1970];
      v37 = v36;
      clientZone2 = [v78 clientZone];
      mangledID2 = [clientZone2 mangledID];
      v40 = [BRCUserDefaults defaultsForMangledID:mangledID2];
      maxXattrBlobSize = [v40 maxXattrBlobSize];

      stageRegistry = [(BRCAccountSession *)self->super.super._session stageRegistry];
      v96 = v35;
      v97 = 0;
      LOBYTE(maxXattrBlobSize) = [stageRegistry saveXattrsForURL:v27 withMaximumSize:maxXattrBlobSize xattrSignature:&v97 error:&v96];
      v70 = v97;
      v43 = v96;

      if (maxXattrBlobSize)
      {
        stageRegistry2 = [(BRCAccountSession *)self->super.super._session stageRegistry];
        liveStageFilename = [v78 liveStageFilename];
        v95 = v43;
        v46 = [stageRegistry2 cloneFileURL:v27 toUploadStageID:v25 liveStageFilename:liveStageFilename error:&v95];
        v47 = v95;

        if (v46)
        {
          v48 = brc_bread_crumbs();
          v49 = brc_default_log();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
          {
            [BRCFSUploader uploadDocument:withContents:baseVersion:basedOnOriginalVersion:options:reply:];
          }

          v94 = 0;
          uploadCKRecordProvider = self->_uploadCKRecordProvider;
          br_contentEtag = [versionCopy br_contentEtag];
          v92 = v47;
          v93 = 0;
          v52 = [(BRCUploadCKRecordProvider *)uploadCKRecordProvider createCKRecordFor:v46 document:v78 stageID:v25 mtime:v37 etag:br_contentEtag xattrSignature:v70 transferSize:&v94 boundaryKey:&v93 error:&v92];
          v69 = v93;
          v53 = v92;

          v54 = v118[5];
          v118[5] = v52;

          if (v118[5])
          {
            v67 = v53;
            syncContextUsedForTransfers = [v78 syncContextUsedForTransfers];
            v56 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:v94];
            [v56 setKind:*MEMORY[0x277CCA648]];
            [v56 setFileOperationKind:*MEMORY[0x277CCA630]];
            objc_initWeak(&location, self);
            v79[0] = MEMORY[0x277D85DD0];
            v79[1] = 3221225472;
            v79[2] = __94__BRCFSUploader_uploadDocument_withContents_baseVersion_basedOnOriginalVersion_options_reply___block_invoke_289;
            v79[3] = &unk_278505910;
            objc_copyWeak(v89, &location);
            v86 = v26;
            v80 = v69;
            v87 = &v117;
            v66 = v56;
            v81 = v66;
            v89[1] = v94;
            v68 = syncContextUsedForTransfers;
            v82 = v68;
            selfCopy = self;
            v89[2] = optionsCopy;
            v88 = &v123;
            v90 = originalVersionCopy;
            v84 = versionCopy;
            v57 = v78;
            v85 = v57;
            v58 = MEMORY[0x22AA4A310](v79);
            if ([v57 shouldTransferThumbnail])
            {
              v59 = v46;
              stageRegistry3 = [(BRCAccountSession *)self->super.super._session stageRegistry];
              v61 = [stageRegistry3 createURLForThumbnailUploadWithStageID:v25];

              v62 = +[BRCThumbnailGenerationManager defaultManager];
              v63 = [BRCUserDefaults defaultsForMangledID:0];
              [v63 thumbnailGenerationForCollaborationUploadTimeout];
              [v62 addOutOfBandThumbnailGenerationJobAtURL:v59 targetURL:v61 timeout:v68 syncContext:v58 completionHandler:?];

              v46 = v59;
            }

            else
            {
              v58[2](v58, 0, 0);
            }

            v64 = v66;

            objc_destroyWeak(v89);
            objc_destroyWeak(&location);

            v47 = v67;
          }

          else
          {
            (v26)[2](v26, 0, v53);
            v64 = 0;
            v47 = v53;
          }
        }

        else
        {
          (v26)[2](v26, 0, v47);
          v64 = 0;
        }

        v43 = v47;
      }

      else
      {
        (v26)[2](v26, 0, v43);
        v64 = 0;
      }

      v35 = v43;
    }

    else
    {
      (v26)[2](v26, 0, v35);
      v64 = 0;
    }

    v31 = v35;
  }

  _Block_object_dispose(&v107, 8);
  _Block_object_dispose(&v117, 8);

  _Block_object_dispose(&v123, 8);

  return v64;
}

void __94__BRCFSUploader_uploadDocument_withContents_baseVersion_basedOnOriginalVersion_options_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (*(a1 + 64) == 1)
  {
    v6 = *(a1 + 32);
    v7 = [*(*(*(a1 + 48) + 8) + 40) recordID];
    v8 = [v7 recordName];
    v9 = [*(*(*(a1 + 56) + 8) + 40) mangledID];
    v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(*(*(a1 + 56) + 8) + 40), "enhancedDrivePrivacyEnabled")}];
    [v6 aggregateReportForAppTelemetryIdentifier:39 itemID:v8 zoneMangledID:v9 enhancedDrivePrivacyEnabled:v10 error:v5];
  }

  (*(*(a1 + 40) + 16))();
}

void __94__BRCFSUploader_uploadDocument_withContents_baseVersion_basedOnOriginalVersion_options_reply___block_invoke_2(void *a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if ((*(*(a1[7] + 8) + 24) & 0x8000000000000000) == 0)
  {
    [MEMORY[0x277CFAE88] releaseSandboxExtensionHandle:?];
  }

  v6 = [*(a1[4] + 8) stageRegistry];
  [v6 cleanupStagedUploadWithID:a1[5]];

  v7 = a1[4];
  v8 = [*(*(a1[8] + 8) + 40) recordID];
  LOBYTE(v7) = [v7 _handleCollaborationUploadError:v5 recordID:v8 clientZone:*(*(a1[9] + 8) + 40) reply:a1[6]];

  if ((v7 & 1) == 0)
  {
    (*(a1[6] + 16))();
  }
}

void __94__BRCFSUploader_uploadDocument_withContents_baseVersion_basedOnOriginalVersion_options_reply___block_invoke_289(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained[1] clientTruthWorkloop];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __94__BRCFSUploader_uploadDocument_withContents_baseVersion_basedOnOriginalVersion_options_reply___block_invoke_2_293;
    block[3] = &unk_2785058E8;
    v20 = v3;
    v7 = *(a1 + 32);
    v8 = *(a1 + 88);
    v21 = v7;
    v27 = v8;
    v9 = *(a1 + 40);
    v29 = *(a1 + 112);
    v22 = v9;
    v23 = v5;
    v26 = *(a1 + 80);
    v10 = *(a1 + 48);
    v11 = *(a1 + 96);
    v30 = *(a1 + 120);
    v28 = v11;
    v31 = *(a1 + 128);
    *&v12 = v10;
    *(&v12 + 1) = *(a1 + 56);
    v18 = v12;
    v13 = *(a1 + 64);
    v14 = *(a1 + 72);
    *&v15 = v13;
    *(&v15 + 1) = v14;
    v24 = v18;
    v25 = v15;
    dispatch_async(v6, block);
  }

  else
  {
    v16 = *(a1 + 80);
    v17 = [MEMORY[0x277CCA9B8] brc_unkownErrorWithDescription:@"Deallocated"];
    (*(v16 + 16))(v16, 0, v17);
  }
}

void __94__BRCFSUploader_uploadDocument_withContents_baseVersion_basedOnOriginalVersion_options_reply___block_invoke_2_293(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (v2)
  {
    v4 = [MEMORY[0x277CBC190] br_assetWithFileURL:v2 boundaryKey:*(a1 + 40)];
    [*(*(*(a1 + 104) + 8) + 40) setObject:v4 forKeyedSubscript:@"thumb1024"];
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __94__BRCFSUploader_uploadDocument_withContents_baseVersion_basedOnOriginalVersion_options_reply___block_invoke_2_293_cold_1(v3);
    }

    [*(a1 + 48) setTotalUnitCount:{objc_msgSend(v4, "size") + *(a1 + 120)}];
  }

  v7 = *(*(*(a1 + 104) + 8) + 40);
  v8 = *(*(a1 + 56) + 8);
  v26 = 0;
  v9 = [v7 validateEnhancedDrivePrivacyFieldsWithSession:v8 error:&v26];
  v10 = v26;
  if (v9)
  {
    v11 = [[BRCCollaborationUploadOperation alloc] initWithRecord:*(*(*(a1 + 104) + 8) + 40) progress:*(a1 + 48) syncContext:*(a1 + 64) sessionContext:*(*(a1 + 72) + 8) options:*(a1 + 128)];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __94__BRCFSUploader_uploadDocument_withContents_baseVersion_basedOnOriginalVersion_options_reply___block_invoke_295;
    v20 = &unk_2785058C0;
    v12 = *(a1 + 96);
    v13 = *(a1 + 112);
    v23 = v12;
    v24 = v13;
    v21 = *(a1 + 56);
    v25 = *(a1 + 136);
    v22 = *(a1 + 80);
    [(BRCCollaborationUploadOperation *)v11 setUploadCompletionBlock:&v17];
    if (v11)
    {
      v14 = [*(a1 + 88) session];
      [v14 addMiscOperation:v11];

      [(_BRCOperation *)v11 schedule];
    }

    else
    {
      v15 = *(a1 + 96);
      v16 = [MEMORY[0x277CCA9B8] brc_unkownErrorWithDescription:{@"Upload operation failed to allocate", v17, v18, v19, v20, v21}];
      (*(v15 + 16))(v15, 0, v16);
    }
  }

  else
  {
    (*(*(a1 + 96) + 16))();
  }
}

void __94__BRCFSUploader_uploadDocument_withContents_baseVersion_basedOnOriginalVersion_options_reply___block_invoke_295(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v24 = 0;
    v25 = 0;
    v7 = [v5 deserializeVersion:&v25 fakeStatInfo:0 contentBoundaryKey:0 clientZone:*(*(*(a1 + 56) + 8) + 40) outOfBandUpload:1 error:&v24];
    v8 = v25;
    v9 = v24;
    if (v7)
    {
      v10 = [*(*(a1 + 32) + 8) clientTruthWorkloop];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __94__BRCFSUploader_uploadDocument_withContents_baseVersion_basedOnOriginalVersion_options_reply___block_invoke_296;
      block[3] = &unk_2785048F0;
      v22 = *(a1 + 56);
      v21 = v6;
      v23 = *(a1 + 64);
      dispatch_async(v10, block);

      v11 = [BRFieldContentSignature alloc];
      v12 = [[BRCLocalVersion alloc] initWithVersion:v8];
      v13 = [(BRFieldContentSignature *)v11 initWithLocalVersion:v12];

      v14 = objc_alloc(MEMORY[0x277CC64A0]);
      v15 = [(BRFieldContentSignature *)v13 data];
      v16 = [*(a1 + 40) metadataVersion];
      v17 = [v14 initWithContentVersion:v15 metadataVersion:v16];

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v18 = brc_bread_crumbs();
      v19 = brc_default_log();
      if (os_log_type_enabled(v19, 0x90u))
      {
        __94__BRCFSUploader_uploadDocument_withContents_baseVersion_basedOnOriginalVersion_options_reply___block_invoke_295_cold_1();
      }

      (*(*(a1 + 48) + 16))();
    }
  }
}

void __94__BRCFSUploader_uploadDocument_withContents_baseVersion_basedOnOriginalVersion_options_reply___block_invoke_296(uint64_t a1)
{
  v2 = [*(*(*(a1 + 40) + 8) + 40) db];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __94__BRCFSUploader_uploadDocument_withContents_baseVersion_basedOnOriginalVersion_options_reply___block_invoke_2_297;
  v5[3] = &unk_278505898;
  v4 = *(a1 + 32);
  v3 = v4;
  v6 = v4;
  v7 = *(a1 + 48);
  [v2 groupInBatch:v5];
}

- (void)screenLockChanged:(BOOL)changed
{
  self->_isScreenLocked = changed;
  if (!changed)
  {
    clientTruthWorkloop = [(BRCAccountSession *)self->super.super._session clientTruthWorkloop];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__BRCFSUploader_screenLockChanged___block_invoke;
    block[3] = &unk_2784FF450;
    block[4] = self;
    dispatch_async(clientTruthWorkloop, block);
  }
}

void __35__BRCFSUploader_screenLockChanged___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 105) & 1) == 0)
  {
    v3 = [*(v1 + 8) personaIdentifier];
    v4 = *(a1 + 32);
    BRPerformWithPersonaAndError();
  }
}

void __35__BRCFSUploader_screenLockChanged___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __46__BRCFSUploader_rescheduleJobsPendingCellular__block_invoke_cold_1();
    }
  }

  else
  {
    [*(a1 + 32) _rescheduleJobsPendingScreenUnlock];
  }
}

- (void)networkReachabilityChanged:(BOOL)changed
{
  self->_isNetworkReachable = changed;
  if (changed)
  {
    clientTruthWorkloop = [(BRCAccountSession *)self->super.super._session clientTruthWorkloop];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__BRCFSUploader_networkReachabilityChanged___block_invoke;
    block[3] = &unk_2784FF450;
    block[4] = self;
    dispatch_async(clientTruthWorkloop, block);
  }
}

void __44__BRCFSUploader_networkReachabilityChanged___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 106) == 1)
  {
    v3 = [*(v1 + 8) personaIdentifier];
    v4 = *(a1 + 32);
    BRPerformWithPersonaAndError();
  }
}

void __44__BRCFSUploader_networkReachabilityChanged___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __46__BRCFSUploader_rescheduleJobsPendingCellular__block_invoke_cold_1();
    }
  }

  else
  {
    [*(a1 + 32) _rescheduleJobsPendingNetwork];
  }
}

- (void)networkCellularChanged:(BOOL)changed
{
  if (!changed)
  {
    [(BRCFSUploader *)self rescheduleJobsPendingCellular];
  }
}

- (void)userVerifiedTerms
{
  clientTruthWorkloop = [(BRCAccountSession *)self->super.super._session clientTruthWorkloop];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__BRCFSUploader_userVerifiedTerms__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = self;
  dispatch_async(clientTruthWorkloop, block);
}

void __40__BRCFSUploader_initWithAccountSession___block_invoke_6_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_rescheduleUploadJobsPendingState:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_rescheduleUploadJobsPendingState:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __46__BRCFSUploader_rescheduleJobsPendingCellular__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)performFirstSchedulingAfterStartupInDB:.cold.1()
{
  OUTLINED_FUNCTION_18();
  v7 = *MEMORY[0x277D85DE8];
  [v0 changes];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __25__BRCFSUploader_schedule__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __25__BRCFSUploader_schedule__block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: upload scheduler is exact we should have an item%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_updatePackageRecord:item:stageID:error:.cold.1()
{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v9 = *MEMORY[0x277D85DE8];
  [v0 dbRowID];
  v2 = [v1 itemID];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_updatePackageRecord:item:stageID:error:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_223E7A000, v0, 0x90u, "[ERROR] Failed to add item to package%@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_updateRecord:item:syncContext:targetThumbnailURL:stageID:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v3 = 138412290;
    v4 = v0;
    _os_log_fault_impl(&dword_223E7A000, v1, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: !item.isFinderBookmark%@", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (void)_updateRecord:item:syncContext:targetThumbnailURL:stageID:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_updateRecord:item:syncContext:targetThumbnailURL:stageID:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_updateRecord:item:syncContext:targetThumbnailURL:stageID:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: can't upload an item without a fileID%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_finishPackageUploadWithRecord:(_DWORD *)a1 item:(void *)a2 stageID:packageChecksummer:error:.cold.1(_DWORD *a1, void *a2)
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    *a1 = 138412290;
    *a2 = v2;
    OUTLINED_FUNCTION_22(&dword_223E7A000, v6, v7, "[CRIT] Assertion failed: cpi.signature%@");
  }
}

- (void)_finishPackageUploadWithRecord:(_DWORD *)a1 item:(void *)a2 stageID:packageChecksummer:error:.cold.2(_DWORD *a1, void *a2)
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    *a1 = 138412290;
    *a2 = v2;
    OUTLINED_FUNCTION_22(&dword_223E7A000, v6, v7, "[CRIT] Assertion failed: pbitem.type != BRFieldPkgItemType_FILE || pbitem.hasSignature%@");
  }
}

- (void)_handleFileModifiedError:forItem:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_shouldReingestAfterUploadErrorWithItem:record:.cold.1()
{
  OUTLINED_FUNCTION_18();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 fileURL];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_shouldReingestAfterUploadErrorWithItem:record:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_shouldReingestAfterUploadErrorWithItem:record:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_finishedUploadingItem:record:jobID:stageID:syncContext:hasPerformedServerSideAssetCopy:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] Assertion failed: error%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_finishedUploadingItem:record:jobID:stageID:syncContext:hasPerformedServerSideAssetCopy:error:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_finishedUploadingItem:record:jobID:stageID:syncContext:hasPerformedServerSideAssetCopy:error:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Error is retriable, putting item back in the queue%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_finishedUploadingItem:record:jobID:stageID:syncContext:hasPerformedServerSideAssetCopy:error:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Suspending for user need to verify terms%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_finishedUploadingItem:record:jobID:stageID:syncContext:hasPerformedServerSideAssetCopy:error:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Suspending for no network%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_finishedUploadingItem:record:jobID:stageID:syncContext:hasPerformedServerSideAssetCopy:error:.cold.6()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] We received an asset unavailable error but it exists in the correct place. Computing new record and retrying upload%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_finishedUploadingItem:record:jobID:stageID:syncContext:hasPerformedServerSideAssetCopy:error:.cold.7()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] failing on CKErrorAssetNotAvailable/CKUnderlyingErrorMMCSItemNotAvailable when screen is locked --> Suspending for data protection class%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_finishedUploadingItem:record:jobID:stageID:syncContext:hasPerformedServerSideAssetCopy:error:.cold.8()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] The error is for an unknown item, check if the zone hasn't been wiped%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_finishedUploadingItem:record:jobID:stageID:syncContext:hasPerformedServerSideAssetCopy:error:.cold.9()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_finishedUploadingItem:record:jobID:stageID:syncContext:hasPerformedServerSideAssetCopy:error:.cold.10()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] Assertion failed: ![item isReadAndUploaded] || (item.isDead && item.syncUpState == BRC_SUS_NEEDS_SYNC_UP)%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_performServerSideAssetCopyForItem:transferSize:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_2_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_2_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 56);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_2_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] duplicate document content%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_2_cold_4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] creating contentAssetReference failed%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_2_cold_5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_2_cold_6()
{
  OUTLINED_FUNCTION_18();
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 96);
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(v0 + 112)];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

void __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_2_cold_7()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_2_cold_8()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_2_cold_9(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 56);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_2_cold_10(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 56);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_2_cold_11()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] creating kBRRecordKeyPackageManifest CKAsset failed%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_2_cold_12()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] creating manifestAssetReference failed%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)finishedSyncingUpItem:withOutOfQuotaError:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] Assertion failed: _session.clientDB.changes == 1%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __51__BRCFSUploader__scheduleQuotaFetchForDefaultOwner__block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CBBF28];
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)recoverAndReportMissingJobsWithCompletion:recoveryTask:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)recoverAndReportMissingJobsWithCompletion:recoveryTask:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)recoverAndReportMissingJobsWithCompletion:recoveryTask:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)uploadDocument:withContents:baseVersion:basedOnOriginalVersion:options:reply:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __94__BRCFSUploader_uploadDocument_withContents_baseVersion_basedOnOriginalVersion_options_reply___block_invoke_2_293_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __94__BRCFSUploader_uploadDocument_withContents_baseVersion_basedOnOriginalVersion_options_reply___block_invoke_295_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6(&dword_223E7A000, v0, v1, "[ERROR] Unable to deserialize record: %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

@end
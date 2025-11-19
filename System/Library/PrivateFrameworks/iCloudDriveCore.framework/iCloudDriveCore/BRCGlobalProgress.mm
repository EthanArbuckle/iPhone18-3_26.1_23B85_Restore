@interface BRCGlobalProgress
+ (id)_keyPathsToObserve;
+ (int64_t)_transferSizeWithVersionSize:(int64_t)a3;
- (BOOL)_isSyncUpSuspendedForDocument:(id)a3;
- (BOOL)_isUploadSuspendedForDocument:(id)a3;
- (BRCAccountSession)session;
- (BRCGlobalProgress)initWithSession:(id)a3;
- (id)description;
- (void)_cancelUploadForObjectID:(id)a3 inState:(unsigned int)a4 willRetryTransfer:(BOOL)a5;
- (void)_createGlobalProgressWithCompletedUnitCount:(int64_t)a3 totalUnitCount:(int64_t)a4;
- (void)_createUploadMetadataWithCompletedUnitCount:(int64_t)a3 totalUnitCount:(int64_t)a4;
- (void)_deleteDocument:(id)a3 reason:(char)a4 sync:(BOOL)a5;
- (void)_destroyProgressInGroup:(id)a3 reason:(char)a4;
- (void)_resumeProgressForZone:(id)a3 startingRowID:(unint64_t)a4 whenDone:(id)a5;
- (void)_startObservingProgress:(id)a3;
- (void)_startTrackingDocumentWithFileObjectID:(id)a3 versionSize:(int64_t)a4 syncUpState:(unsigned int)a5;
- (void)_stopObservingProgress:(id)a3;
- (void)_updateCompletedUnitCountForFileObjectID:(id)a3 newCompletedUnitCount:(int64_t)a4 isFinished:(BOOL)a5;
- (void)_updateDocument:(id)a3;
- (void)addProgress:(id)a3 forDocument:(id)a4 inGroup:(char)a5;
- (void)dealloc;
- (void)didDeleteDocument:(id)a3;
- (void)didUpdateDocument:(id)a3;
- (void)dumpToContext:(id)a3;
- (void)dumpVersionSizesWithMaxCount:(unint64_t)a3 toContext:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)replaceProgressForFileObjectID:(id)a3 inGroup:(char)a4 withProgress:(id)a5;
- (void)resumeProgressForZones:(id)a3;
- (void)stopPublishingProgress;
- (void)updateUnitCount;
- (void)updateUploadThrottleForDocument:(id)a3 toState:(int)a4;
- (void)verifyFutureProgressIsNotFinished;
@end

@implementation BRCGlobalProgress

- (BRCGlobalProgress)initWithSession:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = BRCGlobalProgress;
  v5 = [(BRCGlobalProgress *)&v19 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(v6, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.bird.global-progress", v7);

    queue = v5->_queue;
    v5->_queue = v8;

    v10 = v5->_queue;
    v11 = br_pacer_create();
    updatePacer = v5->_updatePacer;
    v5->_updatePacer = v11;

    objc_initWeak(&location, v5);
    v13 = v5->_updatePacer;
    objc_copyWeak(&v17, &location);
    br_pacer_set_event_handler();
    objc_storeWeak(&v5->_session, v4);
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    transfers = v5->_transfers;
    v5->_transfers = v14;

    v5->_activeTransfersCount = 0;
    v5->_completedTransfersCount = 0;
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v5;
}

uint64_t __37__BRCGlobalProgress_initWithSession___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (WeakRetained[5])
    {
      v3 = WeakRetained;
      [WeakRetained updateUnitCount];
      if ([v3[5] isFinished])
      {
        [v3 _destroyUploadWithReason:0];
      }
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (void)dealloc
{
  updatePacer = self->_updatePacer;
  br_pacer_cancel();
  v4 = self->_updatePacer;
  self->_updatePacer = 0;

  v5.receiver = self;
  v5.super_class = BRCGlobalProgress;
  [(BRCGlobalProgress *)&v5 dealloc];
}

- (void)_createGlobalProgressWithCompletedUnitCount:(int64_t)a3 totalUnitCount:(int64_t)a4
{
  if (self->_progress)
  {
    [BRCGlobalProgress _createGlobalProgressWithCompletedUnitCount:totalUnitCount:];
  }

  v7 = objc_alloc_init(BRCProgress);
  progress = self->_progress;
  self->_progress = v7;

  v9 = self->_progress;
  v10 = [MEMORY[0x277CFAE38] mobileDocumentsURL];
  [(BRCProgress *)v9 setUserInfoObject:v10 forKey:*MEMORY[0x277CCA640]];

  [(BRCProgress *)self->_progress setUserInfoObject:&unk_2837B0250 forKey:*MEMORY[0x277CCA638]];
  [(BRCProgress *)self->_progress setUserInfoObject:*MEMORY[0x277CCA630] forKey:*MEMORY[0x277CCA628]];
  [(BRCProgress *)self->_progress setUserInfoObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CFACF0]];
  [(BRCProgress *)self->_progress setTotalUnitCount:a4];
  [(BRCProgress *)self->_progress setCompletedUnitCount:a3];
  [(BRCProgress *)self->_progress setCancellable:0];
  [(BRCProgress *)self->_progress setKind:*MEMORY[0x277CCA648]];
  self->_completedTransfersCount = 0;
  [(BRCGlobalProgress *)self setSumOfCompletedUnitCountDelta:0];
  [(BRCGlobalProgress *)self setSumOfTotalUnitCountDelta:0];
}

- (void)updateUnitCount
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6_1(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: an unfinished progress should have at least one transfer tracked; %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)verifyFutureProgressIsNotFinished
{
  v8 = *MEMORY[0x277D85DE8];
  LODWORD(v6) = 134218242;
  *(&v6 + 4) = a2;
  OUTLINED_FUNCTION_4_0();
  *v7 = v2;
  OUTLINED_FUNCTION_6_1(&dword_223E7A000, v3, v4, "[CRIT] UNREACHABLE: future progress state isn't valid (unitCount: %lld)%@", v6, DWORD2(v6), *&v7[2], v8);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_updateCompletedUnitCountForFileObjectID:(id)a3 newCompletedUnitCount:(int64_t)a4 isFinished:(BOOL)a5
{
  v5 = a5;
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v9 = [(NSMutableDictionary *)self->_transfers objectForKeyedSubscript:v8];
  v10 = v9;
  if (!v9 || ([v9 progress], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
  {
    v14 = brc_bread_crumbs();
    v15 = brc_notifications_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [BRCGlobalProgress _updateCompletedUnitCountForFileObjectID:newCompletedUnitCount:isFinished:];
    }

    goto LABEL_17;
  }

  if (v5)
  {
    v12 = [v10 versionSize];
    v13 = [v12 longLongValue];
  }

  else
  {
    v16 = a4;
    v17 = [v10 progress];
    v18 = v16 / [v17 totalUnitCount];

    v12 = [v10 versionSize];
    v13 = vcvtmd_s64_f64(v18 * [v12 longLongValue]);
  }

  if ([v10 accumulatedCUCDelta] > v13)
  {
    v19 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138413058;
      v25 = v8;
      v26 = 2048;
      v27 = [v10 accumulatedCUCDelta];
      v28 = 2048;
      v29 = v13;
      v30 = 2112;
      v31 = v19;
      _os_log_impl(&dword_223E7A000, v20, OS_LOG_TYPE_DEFAULT, "[WARNING] Progress: negative delta update for doc with objectID %@; [%lld -> %lld]%@", &v24, 0x2Au);
    }
  }

  v21 = v13 - [v10 accumulatedCUCDelta];
  if (v21)
  {
    [(BRCGlobalProgress *)self setSumOfCompletedUnitCountDelta:[(BRCGlobalProgress *)self sumOfCompletedUnitCountDelta]+ v21];
    [v10 setAccumulatedCUCDelta:{objc_msgSend(v10, "accumulatedCUCDelta") + v21}];
    updatePacer = self->_updatePacer;
    br_pacer_signal();
  }

  if (v5)
  {
    v14 = brc_bread_crumbs();
    v15 = brc_notifications_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [BRCGlobalProgress _updateCompletedUnitCountForFileObjectID:newCompletedUnitCount:isFinished:];
    }

LABEL_17:
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v11;
    v14 = [v13 userInfo];
    v15 = [v14 objectForKeyedSubscript:@"_BRCObjectIDKey"];

    v16 = [MEMORY[0x277CFAE50] fileObjectIDWithString:v15];
    if (v16)
    {
      v17 = [v13 userInfo];
      v18 = [v17 objectForKeyedSubscript:@"_BRCProgressGroupKey"];

      if (v18)
      {
        v19 = [v13 isFinished];
        queue = self->_queue;
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __68__BRCGlobalProgress_observeValueForKeyPath_ofObject_change_context___block_invoke;
        v25[3] = &unk_2785044B0;
        v18 = v18;
        v26 = v18;
        v27 = self;
        v28 = v16;
        v29 = v12;
        v30 = v19;
        dispatch_async_with_logs_6(queue, v25);

        v21 = v26;
      }

      else
      {
        v21 = brc_bread_crumbs();
        v22 = brc_default_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v32 = v21;
          _os_log_impl(&dword_223E7A000, v22, OS_LOG_TYPE_DEFAULT, "[WARNING] Progress: observing a progress that doesn't have a progress group%@", buf, 0xCu);
        }
      }
    }

    else
    {
      v18 = brc_bread_crumbs();
      v21 = brc_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v32 = v18;
        _os_log_impl(&dword_223E7A000, v21, OS_LOG_TYPE_DEFAULT, "[WARNING] Progress: observing a progress that doesn't have an objectID%@", buf, 0xCu);
      }
    }
  }

  else
  {
    v24.receiver = self;
    v24.super_class = BRCGlobalProgress;
    [(BRCGlobalProgress *)&v24 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __68__BRCGlobalProgress_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) shortValue] != 1)
  {
    __68__BRCGlobalProgress_observeValueForKeyPath_ofObject_change_context___block_invoke_cold_1();
  }

  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = [*(a1 + 56) objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
  [v2 _updateCompletedUnitCountForFileObjectID:v3 newCompletedUnitCount:objc_msgSend(v4 isFinished:{"longLongValue"), *(a1 + 64)}];
}

- (void)_resumeProgressForZone:(id)a3 startingRowID:(unint64_t)a4 whenDone:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 mangledID];
  v11 = [BRCUserDefaults defaultsForMangledID:v10];
  v12 = [v11 resumeProgressBatchSize];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__BRCGlobalProgress__resumeProgressForZone_startingRowID_whenDone___block_invoke;
  block[3] = &unk_2785040C8;
  v23 = a4;
  v24 = v12;
  v20 = v8;
  v21 = self;
  v22 = v9;
  v13 = v9;
  v14 = v8;
  v15 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_BACKGROUND, 0, block);
  resumeTracker = self->_resumeTracker;
  WeakRetained = objc_loadWeakRetained(&self->_session);
  v18 = [WeakRetained clientTruthWorkloop];
  brc_task_tracker_async_with_logs(resumeTracker, v18, v15, 0);
}

uint64_t __67__BRCGlobalProgress__resumeProgressForZone_startingRowID_whenDone___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [*(a1 + 32) documentsNotIdleEnumeratorWithStartingRowID:*(a1 + 56) batchSize:{*(a1 + 64), 0}];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v3)
  {

LABEL_11:
    result = (*(*(a1 + 48) + 16))();
    goto LABEL_12;
  }

  v4 = v3;
  v5 = *v13;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v13 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v12 + 1) + 8 * i);
      v8 = objc_autoreleasePoolPush();
      v9 = [v7 dbRowID];
      [*(a1 + 40) didUpdateDocument:v7];
      objc_autoreleasePoolPop(v8);
    }

    v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  }

  while (v4);

  if (v9 == -1)
  {
    goto LABEL_11;
  }

  result = [*(a1 + 40) _resumeProgressForZone:*(a1 + 32) startingRowID:v9 whenDone:*(a1 + 48)];
LABEL_12:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)resumeProgressForZones:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    queue = self->_queue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __44__BRCGlobalProgress_resumeProgressForZones___block_invoke;
    v6[3] = &unk_2784FF478;
    v6[4] = self;
    v7 = v4;
    dispatch_async(queue, v6);
  }
}

void __44__BRCGlobalProgress_resumeProgressForZones___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 24))
  {
    __44__BRCGlobalProgress_resumeProgressForZones___block_invoke_cold_1();
  }

  v2 = brc_task_tracker_create("resume-progress-tracker");
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  v5 = dispatch_group_create();
  v6 = *(a1 + 32);
  v7 = *(v6 + 96);
  *(v6 + 96) = v5;

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = *(a1 + 40);
  v8 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v36;
    do
    {
      v11 = 0;
      do
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v35 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        if ([v12 isSharedZone])
        {
LABEL_9:
          v14 = brc_bread_crumbs();
          v15 = brc_notifications_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v23 = [v12 zoneName];
            *buf = 138412546;
            v40 = v23;
            v41 = 2112;
            v42 = v14;
            _os_log_debug_impl(&dword_223E7A000, v15, OS_LOG_TYPE_DEBUG, "[NOTIF] Progress: resuming global progress for '%@'%@", buf, 0x16u);
          }

          dispatch_group_enter(*(*(a1 + 32) + 96));
          v16 = *(a1 + 32);
          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v34[2] = __44__BRCGlobalProgress_resumeProgressForZones___block_invoke_46;
          v34[3] = &unk_2784FF450;
          v34[4] = v16;
          [v16 _resumeProgressForZone:v12 startingRowID:0 whenDone:v34];
          goto LABEL_18;
        }

        v17 = [v12 asPrivateClientZone];
        v18 = [v17 defaultAppLibrary];

        v19 = [v18 containerMetadata];
        if ([v19 isDocumentScopePublic] && (objc_msgSend(v19, "isCloudSyncTCCDisabled") & 1) == 0)
        {
          v22 = [v18 isiCloudDesktopAppLibrary];

          if ((v22 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        else
        {
        }

        v20 = brc_bread_crumbs();
        v21 = brc_notifications_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          v24 = [v12 zoneName];
          *buf = 138412546;
          v40 = v24;
          v41 = 2112;
          v42 = v20;
          _os_log_debug_impl(&dword_223E7A000, v21, OS_LOG_TYPE_DEBUG, "[NOTIF] Progress: nothing to resume for '%@'%@", buf, 0x16u);
        }

LABEL_18:
        objc_autoreleasePoolPop(v13);
        ++v11;
      }

      while (v9 != v11);
      v25 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
      v9 = v25;
    }

    while (v25);
  }

  v26 = brc_bread_crumbs();
  v27 = brc_notifications_log();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    __44__BRCGlobalProgress_resumeProgressForZones___block_invoke_cold_2();
  }

  v28 = *(a1 + 32);
  v29 = *(v28 + 96);
  v30 = *(v28 + 48);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__BRCGlobalProgress_resumeProgressForZones___block_invoke_48;
  block[3] = &unk_2784FF450;
  block[4] = v28;
  dispatch_group_notify(v29, v30, block);
  v31 = *MEMORY[0x277D85DE8];
}

void __44__BRCGlobalProgress_resumeProgressForZones___block_invoke_48(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_notifications_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __44__BRCGlobalProgress_resumeProgressForZones___block_invoke_48_cold_1();
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 96);
  *(v6 + 96) = 0;
}

- (BOOL)_isUploadSuspendedForDocument:(id)a3
{
  v3 = a3;
  if ([v3 syncUpState] == 3)
  {
    v4 = [v3 session];
    v5 = [v4 fsUploader];
    v6 = [v5 getStateOfDocumentItem:v3] > 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_isSyncUpSuspendedForDocument:(id)a3
{
  v3 = a3;
  if ([v3 syncUpState] == 4)
  {
    v4 = [v3 dbFacade];
    v5 = [v4 item:v3 hasSyncUpJobState:&unk_2837B0C40];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)didUpdateDocument:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || ([v4 isVisibleIniCloudDrive] & 1) == 0)
  {
    v10 = [v5 orig];
    v11 = [v10 asDocument];
    v12 = [v11 isVisibleIniCloudDrive];

    if (!v12)
    {
      goto LABEL_16;
    }

    v13 = brc_bread_crumbs();
    v14 = brc_notifications_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [BRCGlobalProgress didUpdateDocument:];
    }

    v15 = self;
    v16 = v5;
    v17 = 1;
LABEL_22:
    [(BRCGlobalProgress *)v15 _deleteDocument:v16 reason:v17];
    goto LABEL_23;
  }

  if ([v5 isDead])
  {
    v6 = [v5 st];
    v7 = [v6 state];
    v8 = [v5 orig];
    v9 = [v8 st];
    if (v7 == [v9 state])
    {

LABEL_16:
      [(BRCGlobalProgress *)self _deleteDocument:v5 reason:1 sync:0];
      goto LABEL_23;
    }

    v21 = [v5 orig];
    v22 = [v21 syncUpState];

    if (!v22)
    {
      goto LABEL_16;
    }

    v23 = brc_bread_crumbs();
    v24 = brc_notifications_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [BRCGlobalProgress didUpdateDocument:];
    }

    goto LABEL_21;
  }

  v18 = [(BRCGlobalProgress *)self transfers];
  v19 = [v5 fileObjectID];
  v20 = [v18 objectForKeyedSubscript:v19];

  if ([(BRCGlobalProgress *)self _isUploadSuspendedForDocument:v5])
  {
    if (!v20)
    {
      goto LABEL_25;
    }

LABEL_19:
    v23 = brc_bread_crumbs();
    v24 = brc_notifications_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [BRCGlobalProgress didUpdateDocument:];
    }

LABEL_21:

    v15 = self;
    v16 = v5;
    v17 = 0;
    goto LABEL_22;
  }

  v25 = [(BRCGlobalProgress *)self _isSyncUpSuspendedForDocument:v5];
  if (v20 && v25)
  {
    goto LABEL_19;
  }

  if (v25)
  {
LABEL_25:
    v26 = brc_bread_crumbs();
    v27 = brc_notifications_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [BRCGlobalProgress didUpdateDocument:];
    }

    goto LABEL_23;
  }

  if (!v20 || (v28 = [v5 syncUpState], objc_msgSend(v5, "orig"), v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "syncUpState"), v29, v28 != v30))
  {
    if (([v5 isDocumentBeingCopiedToNewZone] & 1) == 0)
    {
      [(BRCGlobalProgress *)self _updateDocument:v5];
    }
  }

LABEL_23:
}

- (void)didDeleteDocument:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [BRCGlobalProgress didDeleteDocument:];
  }

  [(BRCGlobalProgress *)self _deleteDocument:v4 reason:0];
}

- (void)stopPublishingProgress
{
  queue = self->_queue;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __43__BRCGlobalProgress_stopPublishingProgress__block_invoke;
  v3[3] = &unk_2784FF450;
  v3[4] = self;
  dispatch_async_with_logs_6(queue, v3);
}

uint64_t __43__BRCGlobalProgress_stopPublishingProgress__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2[3])
  {
    brc_task_tracker_cancel(v2[3]);
    v3 = *(a1 + 32);
    v4 = *(v3 + 24);
    *(v3 + 24) = 0;

    v2 = *(a1 + 32);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [v2 transfers];
  v6 = [v5 allValues];

  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [v11 progress];

        if (v12)
        {
          v13 = *(a1 + 32);
          v14 = [v11 progress];
          [v13 _stopObservingProgress:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v15 = [*(a1 + 32) transfers];
  [v15 removeAllObjects];

  v16 = brc_bread_crumbs();
  v17 = brc_notifications_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    __43__BRCGlobalProgress_stopPublishingProgress__block_invoke_cold_1();
  }

  result = [*(a1 + 32) _destroyUploadWithReason:2];
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)replaceProgressForFileObjectID:(id)a3 inGroup:(char)a4 withProgress:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (v6 != 1)
  {
    [BRCGlobalProgress replaceProgressForFileObjectID:inGroup:withProgress:];
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_5:
    [BRCGlobalProgress replaceProgressForFileObjectID:inGroup:withProgress:];
    goto LABEL_3;
  }

  if (!v9)
  {
    goto LABEL_5;
  }

LABEL_3:
  queue = self->_queue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __73__BRCGlobalProgress_replaceProgressForFileObjectID_inGroup_withProgress___block_invoke;
  v14[3] = &unk_2785044D8;
  v14[4] = self;
  v15 = v8;
  v16 = v10;
  v17 = v6;
  v12 = v10;
  v13 = v8;
  dispatch_async_with_logs_6(queue, v14);
}

void __73__BRCGlobalProgress_replaceProgressForFileObjectID_inGroup_withProgress___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) transfers];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    v4 = [v3 progress];

    if (v4)
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v5 = *(a1 + 32);
      v6 = [objc_opt_class() _keyPathsToObserve];
      v7 = [v6 countByEnumeratingWithState:&v30 objects:v40 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v31;
        do
        {
          v10 = 0;
          do
          {
            if (*v31 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v30 + 1) + 8 * v10);
            v12 = objc_autoreleasePoolPush();
            v13 = [v3 progress];
            [v13 removeObserver:*(a1 + 32) forKeyPath:v11];

            objc_autoreleasePoolPop(v12);
            ++v10;
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v30 objects:v40 count:16];
        }

        while (v8);
      }
    }

    v14 = [v3 progress];
    if (!v14)
    {
      goto LABEL_19;
    }

    v15 = v14;
    v16 = [v3 progress];
    v17 = [v16 totalUnitCount];
    if (v17 == [*(a1 + 48) totalUnitCount])
    {
      v18 = [v3 progress];
      v19 = [v18 completedUnitCount];
      v20 = [*(a1 + 48) completedUnitCount];

      if (v19 <= v20)
      {
LABEL_19:
        [v3 setProgress:*(a1 + 48)];
        v23 = *(a1 + 48);
        v24 = [*(a1 + 40) asString];
        [v23 setUserInfoObject:v24 forKey:@"_BRCObjectIDKey"];

        v25 = *(a1 + 48);
        v26 = [MEMORY[0x277CCABB0] numberWithChar:*(a1 + 56)];
        [v25 setUserInfoObject:v26 forKey:@"_BRCProgressGroupKey"];

        [*(a1 + 32) _startObservingProgress:*(a1 + 48)];
        goto LABEL_20;
      }
    }

    else
    {
    }

    v21 = brc_bread_crumbs();
    v22 = brc_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      v28 = [v3 progress];
      v29 = *(a1 + 48);
      *buf = 138412802;
      v35 = v28;
      v36 = 2112;
      v37 = v29;
      v38 = 2112;
      v39 = v21;
      _os_log_fault_impl(&dword_223E7A000, v22, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: !transfer.progress || (transfer.progress.totalUnitCount == progress.totalUnitCount && transfer.progress.completedUnitCount <= progress.completedUnitCount) current: %@ vs new: %@%@", buf, 0x20u);
    }

    goto LABEL_19;
  }

LABEL_20:

  v27 = *MEMORY[0x277D85DE8];
}

- (void)addProgress:(id)a3 forDocument:(id)a4 inGroup:(char)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (v5 == 1)
  {
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_10:
    [BRCGlobalProgress addProgress:forDocument:inGroup:];
    if (v9)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  [BRCGlobalProgress addProgress:forDocument:inGroup:];
  if (!v8)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v9)
  {
    goto LABEL_4;
  }

LABEL_11:
  [BRCGlobalProgress addProgress:forDocument:inGroup:];
LABEL_4:
  v10 = [v9 db];
  [v10 assertOnQueue];

  if (([v8 isIndeterminate] & 1) == 0)
  {
    v11 = [v9 syncUpState];
    v12 = [v9 fileObjectID];
    v13 = [(BRCGlobalProgress *)self transfers];
    v14 = [v13 objectForKeyedSubscript:v12];

    if (!v14)
    {
      [(BRCGlobalProgress *)self didUpdateDocument:v9];
    }

    queue = self->_queue;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __53__BRCGlobalProgress_addProgress_forDocument_inGroup___block_invoke;
    v17[3] = &unk_278504500;
    v17[4] = self;
    v18 = v12;
    v20 = v11;
    v19 = v8;
    v21 = v5;
    v16 = v12;
    dispatch_async_with_logs_6(queue, v17);
  }
}

void __53__BRCGlobalProgress_addProgress_forDocument_inGroup___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) transfers];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    v4 = [v3 progress];

    if (v4)
    {
      v5 = brc_bread_crumbs();
      v6 = brc_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 40);
        v20 = 138412546;
        v21 = v7;
        v22 = 2112;
        v23 = v5;
        _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEFAULT, "[WARNING] Progress: attempt to add an upload progress more than once for doc with objectID %@%@", &v20, 0x16u);
      }

      [*(a1 + 32) _cancelUploadForObjectID:*(a1 + 40) inState:*(a1 + 56) willRetryTransfer:1];
    }

    [v3 setProgress:*(a1 + 48)];
    v8 = brc_bread_crumbs();
    v9 = brc_notifications_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v18 = *(a1 + 40);
      v19 = [*(a1 + 48) totalUnitCount];
      v20 = 138412802;
      v21 = v18;
      v22 = 2048;
      v23 = v19;
      v24 = 2112;
      v25 = v8;
      _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[NOTIF] Progress: start tracking upload progress for doc with objectID %@ (progressSize: %lld)%@", &v20, 0x20u);
    }

    v10 = *(a1 + 48);
    v11 = [*(a1 + 40) asString];
    [v10 setUserInfoObject:v11 forKey:@"_BRCObjectIDKey"];

    v12 = *(a1 + 48);
    v13 = [MEMORY[0x277CCABB0] numberWithChar:*(a1 + 60)];
    [v12 setUserInfoObject:v13 forKey:@"_BRCProgressGroupKey"];

    [*(a1 + 32) _startObservingProgress:*(a1 + 48)];
  }

  else
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 40);
      v20 = 138412546;
      v21 = v16;
      v22 = 2112;
      v23 = v14;
      _os_log_impl(&dword_223E7A000, v15, OS_LOG_TYPE_DEFAULT, "[WARNING] Progress: attempt to add an upload progress for doc with objectID %@ which is not tracked%@", &v20, 0x16u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)updateUploadThrottleForDocument:(id)a3 toState:(int)a4
{
  v6 = a3;
  v7 = v6;
  if (v6 && [v6 isVisibleIniCloudDrive] && (objc_msgSend(v7, "isDead") & 1) == 0)
  {
    v8 = [v7 fileObjectID];
    v9 = [v7 syncUpState];
    if (v8)
    {
      v10 = v9;
      queue = self->_queue;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __61__BRCGlobalProgress_updateUploadThrottleForDocument_toState___block_invoke;
      v14[3] = &unk_2785010A0;
      v14[4] = self;
      v15 = v8;
      v16 = a4;
      v17 = v10;
      dispatch_async_with_logs_6(queue, v14);
    }

    else
    {
      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        [BRCGlobalProgress updateUploadThrottleForDocument:toState:];
      }
    }
  }
}

void __61__BRCGlobalProgress_updateUploadThrottleForDocument_toState___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) transfers];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_notifications_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      v14 = 138412802;
      v15 = v12;
      v16 = 2080;
      *v17 = BRCPrettyPrintEnum();
      *&v17[8] = 2112;
      *&v17[10] = v4;
      _os_log_debug_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEBUG, "[NOTIF] Progress: stop tracking upload for doc with objectID %@ because transfer failed (toState: %s)%@", &v14, 0x20u);
    }

    [*(a1 + 32) _cancelUploadForObjectID:*(a1 + 40) inState:*(a1 + 52) willRetryTransfer:*(a1 + 48) > 0];
  }

  else
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v9 = *(a1 + 52);
      v10 = *(a1 + 48);
      v14 = 138413058;
      v15 = v8;
      v16 = 1024;
      *v17 = v9;
      *&v17[4] = 2080;
      *&v17[6] = BRCPrettyPrintEnum();
      *&v17[14] = 2112;
      *&v17[16] = v6;
      _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEFAULT, "[WARNING] Progress: upload failed for doc with objectID %@ without being tracked (syncUpState: %d, toState: %s)%@", &v14, 0x26u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)dumpVersionSizesWithMaxCount:(unint64_t)a3 toContext:(id)a4
{
  v6 = a4;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 0;
  if ([(NSMutableDictionary *)self->_transfers count])
  {
    [v6 writeLineWithFormat:@"{"];
    [v6 pushIndentation];
    transfers = self->_transfers;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __60__BRCGlobalProgress_dumpVersionSizesWithMaxCount_toContext___block_invoke;
    v9[3] = &unk_278504528;
    v8 = v6;
    v10 = v8;
    v11 = v13;
    v12 = a3;
    [(NSMutableDictionary *)transfers enumerateKeysAndObjectsUsingBlock:v9];
    [v8 popIndentation];
    [v8 writeLineWithFormat:@"}"];
  }

  else
  {
    [v6 writeLineWithFormat:@"{}"];
  }

  _Block_object_dispose(v13, 8);
}

void __60__BRCGlobalProgress_dumpVersionSizesWithMaxCount_toContext___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [a3 versionSize];
  [v7 writeLineWithFormat:@"%@ = %@;", v8, v9];

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 24);
  *(v10 + 24) = v11 + 1;
  if (v11 > *(a1 + 48))
  {
    [*(a1 + 32) writeLineWithFormat:@".. truncated .."];
    *a4 = 1;
  }
}

- (id)description
{
  v3 = [(BRCGlobalProgress *)self progress];
  if (v3)
  {
    v16 = MEMORY[0x277CCACA8];
    v15 = objc_opt_class();
    v18 = [(BRCGlobalProgress *)self progress];
    v17 = [v18 userInfo];
    v4 = [v17 objectForKeyedSubscript:*MEMORY[0x277CCA638]];
    v5 = [(BRCGlobalProgress *)self progress];
    v6 = [v5 completedUnitCount];
    v7 = [(BRCGlobalProgress *)self sumOfCompletedUnitCountDelta];
    v8 = [(BRCGlobalProgress *)self progress];
    v9 = [v8 totalUnitCount];
    v10 = [(BRCGlobalProgress *)self sumOfTotalUnitCountDelta];
    v11 = [(BRCGlobalProgress *)self progress];
    [v11 fractionCompleted];
    v13 = [v16 stringWithFormat:@"<%@:%p c:%@ p:%lld(%+lld)/%lld(%+lld) [%.3f%%]>", v15, self, v4, v6, v7, v9, v10, v12 * 100.0];
  }

  else
  {
    v13 = @"{none}";
  }

  return v13;
}

- (void)dumpToContext:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __35__BRCGlobalProgress_dumpToContext___block_invoke;
  v10 = &unk_2784FF478;
  v11 = self;
  v12 = v4;
  v6 = v4;
  dispatch_sync(queue, &v7);
  [v6 popIndentation];
}

uint64_t __35__BRCGlobalProgress_dumpToContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) progress];

  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = [*(a1 + 32) progress];
    v5 = [v4 brc_dumpDescription];
    [v3 writeLineWithFormat:@"global progress {%@}", v5];
  }

  else
  {
    [*(a1 + 40) writeLineWithFormat:@"global progress {none}"];
  }

  [*(a1 + 40) writeLineWithFormat:@"-----------------------------------------------------"];
  [*(a1 + 40) pushIndentation];
  [*(a1 + 40) writeLineWithFormat:@"upload %@", *(a1 + 32)];
  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) transfers];
  [v6 writeLineWithFormat:@"upload version sizes (%lu):", objc_msgSend(v7, "count")];

  [*(a1 + 32) dumpVersionSizesWithMaxCount:1000 toContext:*(a1 + 40)];
  v8 = [*(a1 + 32) transfers];
  v9 = [v8 count];

  if (v9)
  {
    [*(a1 + 40) writeLineWithFormat:@"upload progresses: {"];
    [*(a1 + 40) pushIndentation];
    v10 = [*(a1 + 32) transfers];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __35__BRCGlobalProgress_dumpToContext___block_invoke_2;
    v12[3] = &unk_278504550;
    v13 = *(a1 + 40);
    [v10 enumerateKeysAndObjectsUsingBlock:v12];

    [*(a1 + 40) popIndentation];
    [*(a1 + 40) writeLineWithFormat:@"}"];
  }

  return [*(a1 + 40) writeLineWithFormat:&stru_2837504F0];
}

void __35__BRCGlobalProgress_dumpToContext___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [v5 progress];

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = [v5 progress];
    v9 = [v8 brc_dumpDescription];
    [v7 writeLineWithFormat:@"%@ = %@;", v10, v9];
  }
}

+ (id)_keyPathsToObserve
{
  if (_keyPathsToObserve_onceToken != -1)
  {
    +[BRCGlobalProgress _keyPathsToObserve];
  }

  v3 = _keyPathsToObserve_keyPaths;

  return v3;
}

void __39__BRCGlobalProgress__keyPathsToObserve__block_invoke()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v0 = NSStringFromSelector(sel_completedUnitCount);
  v4[0] = v0;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  v2 = _keyPathsToObserve_keyPaths;
  _keyPathsToObserve_keyPaths = v1;

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_startObservingProgress:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [objc_opt_class() _keyPathsToObserve];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        [v4 addObserver:self forKeyPath:v10 options:5 context:0];
        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_stopObservingProgress:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [objc_opt_class() _keyPathsToObserve];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        [v4 removeObserver:self forKeyPath:v10];
        objc_autoreleasePoolPop(v11);
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v12 = [v4 userInfo];
  v13 = [v12 objectForKeyedSubscript:@"_BRCObjectIDKey"];

  v14 = [MEMORY[0x277CFAE50] fileObjectIDWithString:v13];
  if (!v14)
  {
    [BRCGlobalProgress _stopObservingProgress:];
  }

  v15 = [v4 userInfo];
  v16 = [v15 objectForKeyedSubscript:@"_BRCProgressGroupKey"];

  if (v16)
  {
    if (!v14)
    {
      goto LABEL_15;
    }
  }

  else
  {
    [BRCGlobalProgress _stopObservingProgress:];
    if (!v14)
    {
      goto LABEL_15;
    }
  }

  if ([v16 shortValue] != 1)
  {
    [BRCGlobalProgress _stopObservingProgress:];
  }

  v17 = [(NSMutableDictionary *)self->_transfers objectForKeyedSubscript:v14];
  [v17 setAccumulatedCUCDelta:0];

LABEL_15:
  v18 = *MEMORY[0x277D85DE8];
}

- (void)_createUploadMetadataWithCompletedUnitCount:(int64_t)a3 totalUnitCount:(int64_t)a4
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_progress)
  {
    [BRCGlobalProgress _createUploadMetadataWithCompletedUnitCount:totalUnitCount:];
    if ((a3 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a3 & 0x8000000000000000) == 0)
  {
    goto LABEL_3;
  }

  [BRCGlobalProgress _createUploadMetadataWithCompletedUnitCount:totalUnitCount:];
LABEL_3:
  if (a4 < a3)
  {
    [BRCGlobalProgress _createUploadMetadataWithCompletedUnitCount:totalUnitCount:];
  }

  v7 = brc_bread_crumbs();
  v8 = brc_notifications_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [BRCGlobalProgress _createUploadMetadataWithCompletedUnitCount:totalUnitCount:];
  }

  [(BRCGlobalProgress *)self _createGlobalProgressWithCompletedUnitCount:a3 totalUnitCount:a4];
  if (!self->_lazyInitDone)
  {
    self->_lazyInitDone = 1;
    updatePacer = self->_updatePacer;
    br_pacer_resume();
  }

  v10 = [(BRCGlobalProgress *)self progress];
  [v10 brc_publish];

  v11 = self->_updatePacer;
  br_pacer_signal();
}

- (void)_cancelUploadForObjectID:(id)a3 inState:(unsigned int)a4 willRetryTransfer:(BOOL)a5
{
  v5 = a5;
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (v8)
  {
    v9 = [(NSMutableDictionary *)self->_transfers objectForKeyedSubscript:v8];
    if (!v9)
    {
      [BRCGlobalProgress _cancelUploadForObjectID:inState:willRetryTransfer:];
    }

    v10 = brc_bread_crumbs();
    v11 = brc_notifications_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v19 = [v9 progress];
      *v20 = 138413314;
      *&v20[4] = v8;
      v21 = 1024;
      v22 = a4;
      v23 = 1024;
      v24 = v5;
      v25 = 1024;
      v26 = v19 != 0;
      v27 = 2112;
      v28 = v10;
      _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[NOTIF] Progress: cancelling upload for doc with objectID %@ (syncUpState: %d, willRetry: %d, hasProgress: %d)%@", v20, 0x28u);
    }

    v12 = [v9 progress];

    if (v12)
    {
      v12 = [v9 accumulatedCUCDelta];
      v13 = [v9 progress];
      [(BRCGlobalProgress *)self _stopObservingProgress:v13];
    }

    if (!v5)
    {
      [(NSMutableDictionary *)self->_transfers removeObjectForKey:v8];
    }

    if ([(NSMutableDictionary *)self->_transfers count])
    {
      v14 = [v9 progress];

      if (v14)
      {
        [v9 setProgress:0];
      }

      else if (a4 == 4)
      {
        v15 = [v9 versionSize];
        v12 = [v15 longLongValue];
      }

      else
      {
        v12 = 0;
      }

      [(BRCGlobalProgress *)self setSumOfCompletedUnitCountDelta:[(BRCGlobalProgress *)self sumOfCompletedUnitCountDelta]- v12];
      if (!v5)
      {
        v16 = [v9 versionSize];
        -[BRCGlobalProgress setSumOfTotalUnitCountDelta:](self, "setSumOfTotalUnitCountDelta:", -[BRCGlobalProgress sumOfTotalUnitCountDelta](self, "sumOfTotalUnitCountDelta") - +[BRCGlobalProgress _transferSizeWithVersionSize:](BRCGlobalProgress, "_transferSizeWithVersionSize:", [v16 longLongValue]));

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          [(BRCGlobalProgress *)self verifyFutureProgressIsNotFinished];
        }
      }

      updatePacer = self->_updatePacer;
      br_pacer_signal();
    }

    else
    {
      [(BRCGlobalProgress *)self _destroyUploadWithReason:1];
    }
  }

  else
  {
    [BRCGlobalProgress _cancelUploadForObjectID:v20 inState:? willRetryTransfer:?];
    v9 = *v20;
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_destroyProgressInGroup:(id)a3 reason:(char)a4
{
  v4 = a4;
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if ([v6 shortValue] != 1)
  {
    [BRCGlobalProgress _destroyProgressInGroup:reason:];
  }

  v7 = brc_bread_crumbs();
  v8 = brc_notifications_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    if (v6)
    {
      [v6 integerValue];
      v19 = BRCPrettyPrintEnum();
    }

    else
    {
      v19 = "none";
    }

    *buf = 136315650;
    v26 = v19;
    v27 = 2080;
    v28 = BRCPrettyPrintEnum();
    v29 = 2112;
    v30 = v7;
    _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[NOTIF] Progress: did finish global progress (group: %s, reason: %s)%@", buf, 0x20u);
  }

  if (v4 == 1)
  {
    if ([(NSMutableDictionary *)self->_transfers count])
    {
      [BRCGlobalProgress _destroyProgressInGroup:reason:];
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = [(NSMutableDictionary *)self->_transfers allValues];
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          v15 = [v14 progress];

          if (v15)
          {
            v16 = [v14 progress];
            [(BRCGlobalProgress *)self _stopObservingProgress:v16];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }

    [(NSMutableDictionary *)self->_transfers removeAllObjects];
  }

  else if (!v4)
  {
    if ([(BRCGlobalProgress *)self sumOfCompletedUnitCountDelta])
    {
      [BRCGlobalProgress _destroyProgressInGroup:reason:];
    }

    if ([(BRCGlobalProgress *)self sumOfTotalUnitCountDelta])
    {
      [BRCGlobalProgress _destroyProgressInGroup:reason:];
    }
  }

  if ([(BRCProgress *)self->_progress isPublished])
  {
    [(BRCProgress *)self->_progress brc_unpublish];
  }

  progress = self->_progress;
  self->_progress = 0;

  self->_completedTransfersCount = 0;
  [(BRCGlobalProgress *)self setSumOfCompletedUnitCountDelta:0];
  [(BRCGlobalProgress *)self setSumOfTotalUnitCountDelta:0];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_startTrackingDocumentWithFileObjectID:(id)a3 versionSize:(int64_t)a4 syncUpState:(unsigned int)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (a5 > 7 || ((1 << a5) & 0x98) == 0)
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [BRCGlobalProgress _startTrackingDocumentWithFileObjectID:versionSize:syncUpState:];
    }
  }

  if (a4 <= 0)
  {
    [BRCGlobalProgress _startTrackingDocumentWithFileObjectID:versionSize:syncUpState:];
  }

  v11 = [BRCGlobalProgress _transferSizeWithVersionSize:a4];
  if (a5 == 4)
  {
    v12 = a4;
  }

  else
  {
    v12 = 0;
  }

  if (self->_progress)
  {
    [(BRCGlobalProgress *)self setSumOfCompletedUnitCountDelta:[(BRCGlobalProgress *)self sumOfCompletedUnitCountDelta]+ v12];
    [(BRCGlobalProgress *)self setSumOfTotalUnitCountDelta:[(BRCGlobalProgress *)self sumOfTotalUnitCountDelta]+ v11];
    updatePacer = self->_updatePacer;
    br_pacer_signal();
  }

  else
  {
    [(BRCGlobalProgress *)self _createUploadMetadataWithCompletedUnitCount:v12 totalUnitCount:v11];
  }

  v14 = [_BRCTransferInfo alloc];
  v15 = [MEMORY[0x277CCABB0] numberWithLongLong:a4];
  v16 = [(_BRCTransferInfo *)v14 initWithVersionSize:v15];
  v17 = [(BRCGlobalProgress *)self transfers];
  [v17 setObject:v16 forKeyedSubscript:v8];

  if (a5 == 4)
  {
    v18 = brc_bread_crumbs();
    v19 = brc_notifications_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v22 = 138413058;
      v23 = v8;
      v24 = 2048;
      v25 = a4;
      v26 = 2048;
      v27 = v11;
      v28 = 2112;
      v29 = v18;
      v20 = "[NOTIF] Progress: resume upload for doc with objectID %@ because document is needs-sync-up but not tracked yet (versionSize: %lld, transferSize: %lld)%@";
LABEL_20:
      _os_log_debug_impl(&dword_223E7A000, v19, OS_LOG_TYPE_DEBUG, v20, &v22, 0x2Au);
    }
  }

  else
  {
    v18 = brc_bread_crumbs();
    v19 = brc_notifications_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v22 = 138413058;
      v23 = v8;
      v24 = 2048;
      v25 = a4;
      v26 = 2048;
      v27 = v11;
      v28 = 2112;
      v29 = v18;
      v20 = "[NOTIF] Progress: start tracking upload for doc with objectID %@ because document is needs-upload (versionSize: %lld, transferSize: %lld)%@";
      goto LABEL_20;
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_updateDocument:(id)a3
{
  v4 = a3;
  v5 = [v4 fileObjectID];
  v6 = [v4 orig];
  v7 = [v6 syncUpState];

  v8 = [v4 syncUpState];
  v9 = [v4 currentVersion];
  v10 = [v9 size];

  if (!v10)
  {
    v12 = brc_bread_crumbs();
    v13 = brc_notifications_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [BRCGlobalProgress _updateDocument:];
    }

    goto LABEL_8;
  }

  if (!v5)
  {
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [BRCGlobalProgress _updateDocument:];
    }

LABEL_8:

    goto LABEL_9;
  }

  queue = self->_queue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __37__BRCGlobalProgress__updateDocument___block_invoke;
  v14[3] = &unk_278504578;
  v17 = v8;
  v14[4] = self;
  v18 = v7;
  v15 = v5;
  v16 = v10;
  dispatch_sync(queue, v14);

LABEL_9:
}

void __37__BRCGlobalProgress__updateDocument___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  if (v2 > 3)
  {
    if (v2 == 4)
    {
      v19 = [*(a1 + 32) transfers];
      v5 = [v19 objectForKeyedSubscript:*(a1 + 40)];

      if (v5)
      {
        v20 = [v5 progress];
        if (v20)
        {
          v21 = [v5 accumulatedCUCDelta];
          v22 = [v5 versionSize];
          v23 = [v22 longLongValue];

          if (v21 < v23)
          {
            v24 = brc_bread_crumbs();
            v25 = brc_default_log();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              v26 = *(a1 + 40);
              v41 = 138412802;
              v42 = v26;
              v43 = 2112;
              v44 = v20;
              v45 = 2112;
              v46 = v24;
              _os_log_impl(&dword_223E7A000, v25, OS_LOG_TYPE_DEFAULT, "[WARNING] Object %@ moved to needs-sync-up before its progress got marked as finished --> for it to finish. Progress %@%@", &v41, 0x20u);
            }

            v27 = *(a1 + 32);
            v28 = *(a1 + 40);
            v29 = [v5 progress];
            [v27 _updateCompletedUnitCountForFileObjectID:v28 newCompletedUnitCount:objc_msgSend(v29 isFinished:{"totalUnitCount"), 1}];
          }

          [*(a1 + 32) _stopObservingProgress:v20];
          [v5 setProgress:0];
        }
      }

      else
      {
        [*(a1 + 32) _startTrackingDocumentWithFileObjectID:*(a1 + 40) versionSize:*(a1 + 48) syncUpState:*(a1 + 56)];
      }

      goto LABEL_43;
    }

    if (v2 != 7)
    {
LABEL_4:
      v3 = [*(a1 + 32) transfers];
      v4 = [v3 objectForKeyedSubscript:*(a1 + 40)];
      v5 = [v4 versionSize];

      if (v5)
      {
        if (*(a1 + 60) == 4)
        {
          v6 = +[BRCGlobalProgress _syncUpSizeWithVersionSize:](BRCGlobalProgress, "_syncUpSizeWithVersionSize:", [v5 longLongValue]);
          if (v6 <= 0)
          {
            __37__BRCGlobalProgress__updateDocument___block_invoke_cold_4();
          }

          [*(a1 + 32) setSumOfCompletedUnitCountDelta:{objc_msgSend(*(a1 + 32), "sumOfCompletedUnitCountDelta") + v6}];
          v7 = brc_bread_crumbs();
          v8 = brc_notifications_log();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            v40 = *(a1 + 40);
            v41 = 138412802;
            v42 = v40;
            v43 = 2048;
            v44 = v6;
            v45 = 2112;
            v46 = v7;
            _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[NOTIF] Progress: stop tracking upload for doc with objectID %@ because document is idle (syncUpSize: %lld)%@", &v41, 0x20u);
          }

          v9 = [*(a1 + 32) transfers];
          [v9 removeObjectForKey:*(a1 + 40)];

          if (!*(a1 + 56))
          {
            [*(a1 + 32) setCompletedTransfersCount:{objc_msgSend(*(a1 + 32), "completedTransfersCount") + 1}];
          }

          v10 = *(*(a1 + 32) + 16);
          br_pacer_signal();
        }

        else
        {
          v37 = brc_bread_crumbs();
          v38 = brc_notifications_log();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            __37__BRCGlobalProgress__updateDocument___block_invoke_cold_3((a1 + 40));
          }

          [*(a1 + 32) _cancelUploadForObjectID:*(a1 + 40) inState:*(a1 + 60) willRetryTransfer:0];
        }
      }

LABEL_43:

      goto LABEL_44;
    }
  }

  else
  {
    if (v2 == 2)
    {
      v17 = brc_bread_crumbs();
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        __37__BRCGlobalProgress__updateDocument___block_invoke_cold_2();
      }

LABEL_38:
LABEL_44:
      v39 = *MEMORY[0x277D85DE8];
      return;
    }

    if (v2 != 3)
    {
      goto LABEL_4;
    }
  }

  v11 = [*(a1 + 32) transfers];
  v12 = (a1 + 40);
  v13 = [v11 objectForKeyedSubscript:*(a1 + 40)];

  if (v13)
  {
    v14 = *(a1 + 60);
    if (v14 == 4 || v14 == 7)
    {
      v15 = brc_bread_crumbs();
      v16 = brc_notifications_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        __37__BRCGlobalProgress__updateDocument___block_invoke_cold_1((a1 + 40));
      }

      [*(a1 + 32) _cancelUploadForObjectID:*(a1 + 40) inState:*(a1 + 60) willRetryTransfer:0];
      goto LABEL_44;
    }

    v17 = brc_bread_crumbs();
    v35 = brc_default_log();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = *v12;
      v41 = 138412546;
      v42 = v36;
      v43 = 2112;
      v44 = v17;
      _os_log_impl(&dword_223E7A000, v35, OS_LOG_TYPE_DEFAULT, "[WARNING] Progress: doc with objectID %@ shouldn't be uploading before its status is set to needs-upload%@", &v41, 0x16u);
    }

    goto LABEL_38;
  }

  v30 = *(a1 + 32);
  v31 = *(a1 + 40);
  v32 = *(a1 + 48);
  v33 = *(a1 + 56);
  v34 = *MEMORY[0x277D85DE8];

  [v30 _startTrackingDocumentWithFileObjectID:v31 versionSize:v32 syncUpState:v33];
}

- (void)_deleteDocument:(id)a3 reason:(char)a4 sync:(BOOL)a5
{
  v5 = a5;
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [v8 orig];
  v10 = [v9 fileObjectID];

  v11 = [v8 orig];

  v12 = [v11 syncUpState];
  if (v10 && [v10 rawID])
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __49__BRCGlobalProgress__deleteDocument_reason_sync___block_invoke;
    v18[3] = &unk_2785045A0;
    v18[4] = self;
    v19 = v10;
    v21 = a4;
    v20 = v12;
    v13 = MEMORY[0x22AA4A310](v18);
    queue = self->_queue;
    if (v5)
    {
      dispatch_sync(queue, v13);
    }

    else
    {
      dispatch_async(queue, v13);
    }
  }

  else
  {
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v23 = v10;
      v24 = 2112;
      v25 = v15;
      _os_log_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEFAULT, "[WARNING] Progress: can't delete document from progress without an objectID %@%@", buf, 0x16u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __49__BRCGlobalProgress__deleteDocument_reason_sync___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) transfers];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_notifications_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 40);
      v8 = *(a1 + 52);
      v9 = 138412802;
      v10 = v7;
      v11 = 2080;
      v12 = BRCPrettyPrintEnum();
      v13 = 2112;
      v14 = v4;
      _os_log_debug_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEBUG, "[NOTIF] Progress: stop tracking upload progress of doc with objectID %@ (reason: %s)%@", &v9, 0x20u);
    }

    [*(a1 + 32) _cancelUploadForObjectID:*(a1 + 40) inState:*(a1 + 48)];
  }

  v6 = *MEMORY[0x277D85DE8];
}

+ (int64_t)_transferSizeWithVersionSize:(int64_t)a3
{
  v3 = 105 * a3 / 100;
  if (v3 == a3)
  {
    return v3 + 1;
  }

  else
  {
    return 105 * a3 / 100;
  }
}

- (BRCAccountSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

- (void)_createGlobalProgressWithCompletedUnitCount:totalUnitCount:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: !_progress Progress already allocated%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_updateCompletedUnitCountForFileObjectID:newCompletedUnitCount:isFinished:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[NOTIF] Progress: Upload finished for doc with objectID %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_updateCompletedUnitCountForFileObjectID:newCompletedUnitCount:isFinished:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[NOTIF] Progress: ignore delta update because upload for doc with objectID %@ isn't tracked anymore%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __68__BRCGlobalProgress_observeValueForKeyPath_ofObject_change_context___block_invoke_cold_1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: progressGroup.shortValue == BRCProgressUploadGroup%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __44__BRCGlobalProgress_resumeProgressForZones___block_invoke_cold_1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: !self->_resumeTracker%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __44__BRCGlobalProgress_resumeProgressForZones___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_18();
  v7 = *MEMORY[0x277D85DE8];
  [*v0 count];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __44__BRCGlobalProgress_resumeProgressForZones___block_invoke_48_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[NOTIF] Progress: finished resuming progresses%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)didUpdateDocument:.cold.1()
{
  OUTLINED_FUNCTION_18();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 fileObjectID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)didUpdateDocument:.cold.2()
{
  OUTLINED_FUNCTION_18();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 fileObjectID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)didUpdateDocument:.cold.3()
{
  OUTLINED_FUNCTION_18();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 fileObjectID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)didUpdateDocument:.cold.4()
{
  OUTLINED_FUNCTION_18();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 fileObjectID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)didDeleteDocument:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: item%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __43__BRCGlobalProgress_stopPublishingProgress__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[NOTIF] Progress: stop publishing global progress%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)replaceProgressForFileObjectID:inGroup:withProgress:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: group == BRCProgressUploadGroup%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)replaceProgressForFileObjectID:inGroup:withProgress:.cold.2()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: progress%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)addProgress:forDocument:inGroup:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: group == BRCProgressUploadGroup%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)addProgress:forDocument:inGroup:.cold.2()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: progress%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)addProgress:forDocument:inGroup:.cold.3()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: item%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)updateUploadThrottleForDocument:toState:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = 0;
  OUTLINED_FUNCTION_4_0();
  v5 = v0;
  _os_log_fault_impl(&dword_223E7A000, v1, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: can't update progress for document without an objectID %@%@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_stopObservingProgress:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: objID%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_stopObservingProgress:.cold.2()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: progressGroup%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_stopObservingProgress:.cold.3()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: progressGroup.shortValue == BRCProgressUploadGroup%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_createUploadMetadataWithCompletedUnitCount:totalUnitCount:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: _progress == nil%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_createUploadMetadataWithCompletedUnitCount:totalUnitCount:.cold.2()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: completedUnitCount >= 0%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_createUploadMetadataWithCompletedUnitCount:totalUnitCount:.cold.3()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: totalUnitCount >= completedUnitCount%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_createUploadMetadataWithCompletedUnitCount:totalUnitCount:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[NOTIF] Progress: new global progress to track uploads%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_cancelUploadForObjectID:inState:willRetryTransfer:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: transfer%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_cancelUploadForObjectID:(uint64_t *)a1 inState:willRetryTransfer:.cold.2(uint64_t *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v8 = 138412290;
    v9 = v2;
    OUTLINED_FUNCTION_0_2(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: objectID%@", &v8);
  }

  v5 = brc_bread_crumbs();
  *a1 = v5;
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEFAULT, "[WARNING] Progress: can't proceed to upload cancelation without objectID%@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_destroyProgressInGroup:reason:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: group.shortValue == BRCProgressUploadGroup%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_destroyProgressInGroup:reason:.cold.2()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: _transfers.count == 0%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_destroyProgressInGroup:reason:.cold.3()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: self.sumOfCompletedUnitCountDelta == 0%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_destroyProgressInGroup:reason:.cold.4()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: self.sumOfTotalUnitCountDelta == 0%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_startTrackingDocumentWithFileObjectID:versionSize:syncUpState:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_223E7A000, v0, v1, "[CRIT] Assertion failed: syncUpState == BRC_SUS_NEEDS_FILE_ID || syncUpState == BRC_SUS_NEEDS_UPLOAD || syncUpState == BRC_SUS_NEEDS_SYNC_UP%@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_startTrackingDocumentWithFileObjectID:versionSize:syncUpState:.cold.2()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: versionSize > 0%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_updateDocument:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6_1(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: can't register progress for item without an objectID %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_updateDocument:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[NOTIF] Progress: ignore upload for doc with objectID %@ because its version size is equal to zero.%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __37__BRCGlobalProgress__updateDocument___block_invoke_cold_1(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = *a1;
  OUTLINED_FUNCTION_4_0();
  *v5 = v1;
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[NOTIF] Progress: cancelling upload for doc with objectID %@ because its needs to be uploaded again%@", v4, DWORD2(v4), *&v5[2], v6);
  v3 = *MEMORY[0x277D85DE8];
}

void __37__BRCGlobalProgress__updateDocument___block_invoke_cold_2()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: needs-read no longer applicable on FPFS%@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

void __37__BRCGlobalProgress__updateDocument___block_invoke_cold_3(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = *a1;
  OUTLINED_FUNCTION_4_0();
  *v5 = v1;
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[NOTIF] Progress: cancelling upload for doc with objectID %@ because its wasn't uploaded%@", v4, DWORD2(v4), *&v5[2], v6);
  v3 = *MEMORY[0x277D85DE8];
}

void __37__BRCGlobalProgress__updateDocument___block_invoke_cold_4()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: syncUpSize > 0%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

@end
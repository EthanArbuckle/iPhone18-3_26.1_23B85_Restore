@interface PLSearchIndexingRebuildEngine
+ (BOOL)hasRebuildWorkToDoForLibrary:(id)library identifier:(int64_t)identifier sceneTaxonomyDigests:(id)digests;
+ (BOOL)requiresImmediateDropIndexForLibrary:(id)library reasons:(unint64_t *)reasons;
- (BOOL)_inq_isValidForCoreAnalyticsCaptureWithRebuildReason:(unint64_t)reason;
- (BOOL)_inq_rebuildAnalyticsEventIsValid;
- (PLSearchIndexingRebuildEngine)initWithDelegate:(id)delegate provider:(id)provider;
- (PLSearchIndexingRebuildEngineDelegate)delegate;
- (id)_iteratorForSearchEntity:(unint64_t)entity library:(id)library resumeObjectID:(id)d;
- (id)_resumeObjectID;
- (unint64_t)_currentEntity;
- (unint64_t)_rebuildTypeForLibrary:(id)library entityInProgress:(unint64_t *)progress resumeObjectID:(id *)d rebuildReasons:(unint64_t *)reasons;
- (void)_handleDonationFailureForRebuildWithManagedObjects:(id)objects entity:(unint64_t)entity library:(id)library;
- (void)_inq_rebuildAnalyticsCompletedWithResult:(id)result;
- (void)_inq_rebuildAnalyticsPauseTimer;
- (void)_inq_rebuildAnalyticsSetupAndPublishWithLibrary:(id)library rebuildType:(unint64_t)type rebuildInitiatedBy:(id)by rebuildReasons:(unint64_t)reasons spotlightReasonForReindexingAllItems:(id)items;
- (void)_inq_rebuildAnalyticsSetupDataWithRebuildType:(unint64_t)type rebuildInitiatedBy:(id)by rebuildReasons:(unint64_t)reasons mediaCount:(unint64_t)count uptimeSinceLastRebuild:(double)rebuild spotlightReasonForReindexingAllItems:(id)items;
- (void)_inq_rebuildAnalyticsStartTimer;
- (void)_lock_startPrepareAndRebuildForLibrary:(id)library type:(unint64_t)type calledBy:(id)by rebuildReasons:(unint64_t)reasons spotlightReasonForReindexingAllItems:(id)items;
- (void)_prepareForRebuildForLibrary:(id)library type:(unint64_t)type sceneTaxonomyDigests:(id)digests completion:(id)completion;
- (void)_rebuildAllRemainingEntitiesForLibrary:(id)library queue:(id)queue completion:(id)completion;
- (void)_rebuildManagedObjectsFromIterator:(id)iterator ofEntity:(unint64_t)entity queue:(id)queue library:(id)library completion:(id)completion;
- (void)_startRebuildForLibrary:(id)library;
- (void)fetchRemainingWorkWithLibrary:(id)library completion:(id)completion;
- (void)pauseSearchIndexRebuildWithSourceName:(id)name;
- (void)resumeSearchIndexRebuildIfNeededForLibrary:(id)library calledBy:(id)by completion:(id)completion;
@end

@implementation PLSearchIndexingRebuildEngine

- (PLSearchIndexingRebuildEngineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)_inq_rebuildAnalyticsEventIsValid
{
  if (self->_coreAnalyticsRebuildToken == 0.0)
  {
    return 0;
  }

  analyticsEventManager = [(PLSearchIndexingRebuildEngine *)self analyticsEventManager];
  v4 = [analyticsEventManager hasEventWithName:*MEMORY[0x1E69BFBB8]];

  return v4;
}

- (void)_inq_rebuildAnalyticsCompletedWithResult:(id)result
{
  v59 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  if ([(PLSearchIndexingRebuildEngine *)self _inq_rebuildAnalyticsEventIsValid])
  {
    if ([resultCopy isFailure] && (objc_msgSend(resultCopy, "error"), v5 = objc_claimAutoreleasedReturnValue(), HasDomainAndCode = PLErrorOrUnderlyingErrorHasDomainAndCode(), v5, HasDomainAndCode))
    {
      [(PLSearchIndexingRebuildEngine *)self _inq_rebuildAnalyticsPauseTimer];
      v7 = PLSearchBackendIndexRebuildGetLog();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

      if (v8)
      {
        if (self->_logger)
        {
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          *buf = 0u;
          v28 = 0u;
          v9 = PLSearchBackendIndexRebuildGetLog();
          os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
          LOWORD(v25) = 0;
          LODWORD(v24) = 2;
          v10 = _os_log_send_and_compose_impl();

          [(PLFileBackedLogger *)self->_logger logWithMessage:v10 fromCodeLocation:"PLSearchIndexingRebuildEngine.m" type:925, 0, &v25, v24];
          if (v10 != buf)
          {
            free(v10);
          }
        }

        else
        {
          v23 = PLSearchBackendIndexRebuildGetLog();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_DEFAULT, "Index rebuild paused", buf, 2u);
          }
        }
      }
    }

    else
    {
      analyticsEventManager = [(PLSearchIndexingRebuildEngine *)self analyticsEventManager];
      v12 = *MEMORY[0x1E69BFBB8];
      [analyticsEventManager addRecordingTimedEventSnippetWithToken:*MEMORY[0x1E69BFBA8] forKey:*MEMORY[0x1E69BFBB8] onEventWithName:self->_coreAnalyticsRebuildToken];
      v13 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(resultCopy, "isSuccess")}];
      [analyticsEventManager setPayloadValue:v13 forKey:*MEMORY[0x1E69BFBF0] onEventWithName:v12];

      if ([resultCopy isFailure])
      {
        error = [resultCopy error];
        v15 = PLErrorCodeStringOfTopLevelErrorAndAllUnderlyingErrors();

        [analyticsEventManager setPayloadValue:v15 forKey:*MEMORY[0x1E69BFBB0] onEventWithName:v12];
      }

      v16 = PLSearchBackendIndexRebuildGetLog();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

      if (v17)
      {
        if (self->_logger)
        {
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          *buf = 0u;
          v28 = 0u;
          v18 = PLSearchBackendIndexRebuildGetLog();
          os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
          v19 = [analyticsEventManager descriptionForEventName:v12];
          v25 = 138543362;
          v26 = v19;
          LODWORD(v24) = 12;
          v20 = _os_log_send_and_compose_impl();

          [(PLFileBackedLogger *)self->_logger logWithMessage:v20 fromCodeLocation:"PLSearchIndexingRebuildEngine.m" type:939, 0, &v25, v24];
          if (v20 != buf)
          {
            free(v20);
          }
        }

        else
        {
          v21 = PLSearchBackendIndexRebuildGetLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = [analyticsEventManager descriptionForEventName:v12];
            *buf = 138543362;
            *&buf[4] = v22;
            _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEFAULT, "End index rebuild event: %{public}@", buf, 0xCu);
          }
        }
      }

      [analyticsEventManager publishEventWithName:v12];
    }
  }
}

- (void)_inq_rebuildAnalyticsPauseTimer
{
  if ([(PLSearchIndexingRebuildEngine *)self _inq_rebuildAnalyticsEventIsValid])
  {
    analyticsEventManager = [(PLSearchIndexingRebuildEngine *)self analyticsEventManager];
    v3 = *MEMORY[0x1E69BFBD8];
    v4 = *MEMORY[0x1E69BFBB8];
    v5 = [analyticsEventManager valueForKey:*MEMORY[0x1E69BFBD8] onEventWithName:*MEMORY[0x1E69BFBB8]];
    integerValue = [v5 integerValue];

    v7 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue + 1];
    [analyticsEventManager setPayloadValue:v7 forKey:v3 onEventWithName:v4];
  }
}

- (void)_inq_rebuildAnalyticsStartTimer
{
  analyticsEventManager = [(PLSearchIndexingRebuildEngine *)self analyticsEventManager];
  v4 = [analyticsEventManager hasEventWithName:*MEMORY[0x1E69BFBB8]];

  if (v4 && self->_coreAnalyticsRebuildToken == 0.0)
  {
    analyticsEventManager2 = [(PLSearchIndexingRebuildEngine *)self analyticsEventManager];
    [analyticsEventManager2 startRecordingTimedEventToken];
    self->_coreAnalyticsRebuildToken = v5;
  }
}

- (void)_inq_rebuildAnalyticsSetupDataWithRebuildType:(unint64_t)type rebuildInitiatedBy:(id)by rebuildReasons:(unint64_t)reasons mediaCount:(unint64_t)count uptimeSinceLastRebuild:(double)rebuild spotlightReasonForReindexingAllItems:(id)items
{
  itemsCopy = items;
  byCopy = by;
  analyticsEventManager = [(PLSearchIndexingRebuildEngine *)self analyticsEventManager];
  if (type > 3)
  {
    v17 = @"invalid";
  }

  else
  {
    v17 = *(&off_1E7566768 + type);
  }

  v18 = *MEMORY[0x1E69BFBB8];
  v27 = analyticsEventManager;
  [analyticsEventManager setPayloadValue:v17 forKey:*MEMORY[0x1E69BFC00] onEventWithName:*MEMORY[0x1E69BFBB8]];
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:count];
  [v27 setPayloadValue:v19 forKey:*MEMORY[0x1E69BFBF8] onEventWithName:v18];

  [v27 setPayloadValue:byCopy forKey:*MEMORY[0x1E69BFBD0] onEventWithName:v18];
  v20 = PLSearchIndexRebuildReasonsDescriptionWithSpotlightReason(reasons, itemsCopy);

  [v27 setPayloadValue:v20 forKey:*MEMORY[0x1E69BFBE8] onEventWithName:v18];
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:reasons];
  [v27 setPayloadValue:v21 forKey:*MEMORY[0x1E69BFBE0] onEventWithName:v18];

  v22 = [MEMORY[0x1E696AD98] numberWithDouble:rebuild];
  [v27 setPayloadValue:v22 forKey:*MEMORY[0x1E69BFC08] onEventWithName:v18];

  v23 = MEMORY[0x1E696AD98];
  v24 = PLSearchSemanticSearchIndexingSupported();
  if (_os_feature_enabled_impl())
  {
    v25 = v24 | 2;
  }

  else
  {
    v25 = v24;
  }

  v26 = [v23 numberWithUnsignedChar:v25];
  [v27 setPayloadValue:v26 forKey:*MEMORY[0x1E69BFBC8] onEventWithName:v18];
}

- (BOOL)_inq_isValidForCoreAnalyticsCaptureWithRebuildReason:(unint64_t)reason
{
  if ((reason & 0x109) == 1)
  {
    return 0;
  }

  else
  {
    return MEMORY[0x19EAEE520](self, a2) ^ 1;
  }
}

- (void)_inq_rebuildAnalyticsSetupAndPublishWithLibrary:(id)library rebuildType:(unint64_t)type rebuildInitiatedBy:(id)by rebuildReasons:(unint64_t)reasons spotlightReasonForReindexingAllItems:(id)items
{
  v77 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  byCopy = by;
  itemsCopy = items;
  if (type - 1 <= 1)
  {
    analyticsEventManager = [(PLSearchIndexingRebuildEngine *)self analyticsEventManager];
    v15 = *MEMORY[0x1E69BFBB8];
    [analyticsEventManager removeEventWithName:*MEMORY[0x1E69BFBB8]];
    [analyticsEventManager setAllowEventPublish:{-[PLSearchIndexingRebuildEngine _inq_isValidForCoreAnalyticsCaptureWithRebuildReason:](self, "_inq_isValidForCoreAnalyticsCaptureWithRebuildReason:", reasons)}];
    self->_coreAnalyticsRebuildToken = 0.0;
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v42 = 0;
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0;
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 0;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __164__PLSearchIndexingRebuildEngine__inq_rebuildAnalyticsSetupAndPublishWithLibrary_rebuildType_rebuildInitiatedBy_rebuildReasons_spotlightReasonForReindexingAllItems___block_invoke;
    v26[3] = &unk_1E7574728;
    v27 = libraryCopy;
    v28 = &v39;
    v29 = &v35;
    v30 = &v31;
    [v27 performBlockAndWait:v26];
    [(PLSearchIndexingRebuildEngine *)self _inq_rebuildAnalyticsSetupDataWithRebuildType:type rebuildInitiatedBy:byCopy rebuildReasons:reasons mediaCount:v36[3] + v40[3] uptimeSinceLastRebuild:itemsCopy spotlightReasonForReindexingAllItems:v32[3]];
    v24 = *MEMORY[0x1E69BFBC0];
    [analyticsEventManager setPayloadValue:&unk_1F0FBAF00 forKey:? onEventWithName:?];
    v16 = PLSearchBackendIndexRebuildGetLog();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

    if (v17)
    {
      if (self->_logger)
      {
        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        *buf = 0u;
        v46 = 0u;
        v18 = PLSearchBackendIndexRebuildGetLog();
        os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
        v19 = [analyticsEventManager descriptionForEventName:v15];
        v43 = 138543362;
        v44 = v19;
        LODWORD(v23) = 12;
        v20 = _os_log_send_and_compose_impl();

        [(PLFileBackedLogger *)self->_logger logWithMessage:v20 fromCodeLocation:"PLSearchIndexingRebuildEngine.m" type:849, 0, &v43, v23];
        if (v20 != buf)
        {
          free(v20);
        }
      }

      else
      {
        v21 = PLSearchBackendIndexRebuildGetLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [analyticsEventManager descriptionForEventName:v15];
          *buf = 138543362;
          *&buf[4] = v22;
          _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEFAULT, "Start index rebuild event: %{public}@", buf, 0xCu);
        }
      }
    }

    [analyticsEventManager publishEventWithName:v15];
    [(PLSearchIndexingRebuildEngine *)self _inq_rebuildAnalyticsSetupDataWithRebuildType:type rebuildInitiatedBy:byCopy rebuildReasons:reasons mediaCount:v36[3] + v40[3] uptimeSinceLastRebuild:itemsCopy spotlightReasonForReindexingAllItems:v32[3]];
    [analyticsEventManager setPayloadValue:&unk_1F0FBAF18 forKey:v24 onEventWithName:v15];
    [(PLFileBackedLogger *)self->_logger flush];

    _Block_object_dispose(&v31, 8);
    _Block_object_dispose(&v35, 8);
    _Block_object_dispose(&v39, 8);
  }
}

void __164__PLSearchIndexingRebuildEngine__inq_rebuildAnalyticsSetupAndPublishWithLibrary_rebuildType_rebuildInitiatedBy_rebuildReasons_spotlightReasonForReindexingAllItems___block_invoke(uint64_t a1)
{
  [*(a1 + 32) getPhotoCount:*(*(a1 + 40) + 8) + 24 videoCount:*(*(a1 + 48) + 8) + 24];
  v3 = [*(a1 + 32) globalValues];
  [v3 searchIndexUptimeIsRebuildInProgress:0];
  *(*(*(a1 + 56) + 8) + 24) = v2;
}

- (void)_lock_startPrepareAndRebuildForLibrary:(id)library type:(unint64_t)type calledBy:(id)by rebuildReasons:(unint64_t)reasons spotlightReasonForReindexingAllItems:(id)items
{
  v45 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  byCopy = by;
  itemsCopy = items;
  if (!type)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLSearchIndexingRebuildEngine.m" lineNumber:785 description:{@"Invalid parameter not satisfying: %@", @"rebuildType != PLSearchIndexRebuildTypeNone"}];
  }

  v16 = PLSearchBackendIndexRebuildGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = byCopy;
    _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "Resuming search index rebuild, called by: %{public}@", &buf, 0xCu);
  }

  v17 = dispatch_group_create();
  *&buf = 0;
  *(&buf + 1) = &buf;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__10378;
  v43 = __Block_byref_object_dispose__10379;
  v18 = MEMORY[0x1E69BF2D0];
  null = [MEMORY[0x1E695DFB0] null];
  v20 = [v18 successWithResult:null];

  v44 = v20;
  v21 = self->_lock_currentEntity == 1 && self->_lock_resumeObjectID == 0;
  if (type - 1 < 2 || v21)
  {
    dispatch_group_enter(v17);
    delegate = [(PLSearchIndexingRebuildEngine *)self delegate];
    v23 = [delegate sceneTaxonomyDigestsForSearchIndexingRebuildEngine:self];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __138__PLSearchIndexingRebuildEngine__lock_startPrepareAndRebuildForLibrary_type_calledBy_rebuildReasons_spotlightReasonForReindexingAllItems___block_invoke;
    v37[3] = &unk_1E756B380;
    p_buf = &buf;
    v38 = v17;
    [(PLSearchIndexingRebuildEngine *)self _prepareForRebuildForLibrary:libraryCopy type:type sceneTaxonomyDigests:v23 completion:v37];
  }

  v24 = +[PLConcurrencyLimiter sharedLimiter];
  queue = self->_queue;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __138__PLSearchIndexingRebuildEngine__lock_startPrepareAndRebuildForLibrary_type_calledBy_rebuildReasons_spotlightReasonForReindexingAllItems___block_invoke_2;
  v30[3] = &unk_1E75754C8;
  v35 = &buf;
  v26 = libraryCopy;
  v31 = v26;
  reasonsCopy = reasons;
  v27 = byCopy;
  v32 = v27;
  selfCopy = self;
  v28 = itemsCopy;
  v34 = v28;
  [v24 groupNotify:v17 queue:queue block:v30];

  _Block_object_dispose(&buf, 8);
}

void __138__PLSearchIndexingRebuildEngine__lock_startPrepareAndRebuildForLibrary_type_calledBy_rebuildReasons_spotlightReasonForReindexingAllItems___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __138__PLSearchIndexingRebuildEngine__lock_startPrepareAndRebuildForLibrary_type_calledBy_rebuildReasons_spotlightReasonForReindexingAllItems___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if ([*(*(*(a1 + 64) + 8) + 40) isSuccess])
  {
    v2 = [*(a1 + 32) globalValues];
    v3 = *(a1 + 72) | [v2 unpackedSearchIndexRebuildCoalescedReasons];

    v4 = (v3 << 59 >> 63) & 3;
    if ((v3 & 0xBCD) != 0)
    {
      v4 = 1;
    }

    if ((v3 & 0x22) != 0)
    {
      v5 = 2;
    }

    else
    {
      v5 = v4;
    }

    v6 = PLSearchBackendIndexRebuildGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(&off_1E7566768 + v5);
      v8 = PLSearchIndexRebuildReasonsDescriptionWithSpotlightReason(v3, 0);
      v9 = *(a1 + 40);
      *buf = 138543874;
      v18 = v7;
      v19 = 2114;
      v20 = v8;
      v21 = 2114;
      v22 = v9;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "Rebuild preparation complete, starting reindexing, rebuild type: %{public}@, reasons: %{public}@, called by: %{public}@", buf, 0x20u);
    }

    [*(a1 + 48) _inq_rebuildAnalyticsSetupAndPublishWithLibrary:*(a1 + 32) rebuildType:v5 rebuildInitiatedBy:*(a1 + 40) rebuildReasons:v3 spotlightReasonForReindexingAllItems:*(a1 + 56)];
    v10 = *(a1 + 32);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __138__PLSearchIndexingRebuildEngine__lock_startPrepareAndRebuildForLibrary_type_calledBy_rebuildReasons_spotlightReasonForReindexingAllItems___block_invoke_86;
    v15[3] = &unk_1E75781E8;
    v16 = v10;
    [v16 performTransactionAndWait:v15];
    [*(a1 + 48) _startRebuildForLibrary:*(a1 + 32)];
    v11 = v16;
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v11 setObject:@"Unable to prepare for search index rebuild forKeyedSubscript:{search will be in an inconsistent state", *MEMORY[0x1E696A278]}];
    v12 = [*(*(*(a1 + 64) + 8) + 40) error];
    [v11 setObject:v12 forKeyedSubscript:*MEMORY[0x1E696AA08]];

    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:46502 userInfo:v11];
    v13 = v14;
    PLSafeRunWithUnfairLock();
  }
}

void __138__PLSearchIndexingRebuildEngine__lock_startPrepareAndRebuildForLibrary_type_calledBy_rebuildReasons_spotlightReasonForReindexingAllItems___block_invoke_86(uint64_t a1)
{
  v1 = [*(a1 + 32) globalValues];
  [v1 setSearchIndexRebuildCoalescedReasons:0];
}

void __138__PLSearchIndexingRebuildEngine__lock_startPrepareAndRebuildForLibrary_type_calledBy_rebuildReasons_spotlightReasonForReindexingAllItems___block_invoke_2_90(uint64_t a1)
{
  *(*(a1 + 32) + 48) = 0;
  v2 = [MEMORY[0x1E69BF2D0] failureWithError:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;

  v5 = *(*(a1 + 32) + 56);

  dispatch_group_leave(v5);
}

- (void)_startRebuildForLibrary:(id)library
{
  libraryCopy = library;
  [(PLSearchIndexingRebuildEngine *)self _inq_rebuildAnalyticsStartTimer];
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__PLSearchIndexingRebuildEngine__startRebuildForLibrary___block_invoke;
  v7[3] = &unk_1E756E060;
  v7[4] = self;
  v8 = libraryCopy;
  v6 = libraryCopy;
  [(PLSearchIndexingRebuildEngine *)self _rebuildAllRemainingEntitiesForLibrary:v6 queue:queue completion:v7];
}

void __57__PLSearchIndexingRebuildEngine__startRebuildForLibrary___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__10378;
  v25 = __Block_byref_object_dispose__10379;
  v26 = 0;
  if ([v3 isFailure])
  {
    v4 = [v3 error];
    HasDomainAndCode = PLErrorOrUnderlyingErrorHasDomainAndCode();

    if (HasDomainAndCode)
    {
      goto LABEL_6;
    }

    v6 = [v3 resultByWrappingUnderlyingErrorWithDomain:*MEMORY[0x1E69BFF48] code:46511 debugDescription:@"Search index rebuild failed"];
    v7 = v22[5];
    v22[5] = v6;
  }

  else
  {
    v8 = v22;
    v9 = v3;
    v7 = v8[5];
    v8[5] = v9;
  }

LABEL_6:
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v10 = *(a1 + 32);
  location[1] = MEMORY[0x1E69E9820];
  location[2] = 3221225472;
  location[3] = __57__PLSearchIndexingRebuildEngine__startRebuildForLibrary___block_invoke_2;
  location[4] = &unk_1E7578870;
  location[5] = v10;
  location[6] = &v21;
  location[7] = &v17;
  PLSafeRunWithUnfairLock();
  if (*(v18 + 24) == 1)
  {
    objc_initWeak(location, *(a1 + 32));
    v11 = +[PLConcurrencyLimiter sharedLimiter];
    v12 = *(*(a1 + 32) + 16);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __57__PLSearchIndexingRebuildEngine__startRebuildForLibrary___block_invoke_75;
    v13[3] = &unk_1E75782A8;
    objc_copyWeak(&v15, location);
    v14 = *(a1 + 40);
    [v11 dispatchAsync:v12 block:v13];

    objc_destroyWeak(&v15);
    objc_destroyWeak(location);
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
}

void __57__PLSearchIndexingRebuildEngine__startRebuildForLibrary___block_invoke_2(void *a1)
{
  if (*(a1[4] + 49) == 1 && !*(*(a1[5] + 8) + 40))
  {
    v2 = PLSearchBackendIndexRebuildGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "Paused search index rebuild", v8, 2u);
    }

    v3 = MEMORY[0x1E69BF2D0];
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
    v5 = [v3 failureWithError:v4];
    v6 = *(a1[5] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  if (*(*(a1[5] + 8) + 40))
  {
    *(a1[4] + 48) = 0;
    objc_storeStrong((a1[4] + 64), *(*(a1[5] + 8) + 40));
    dispatch_group_leave(*(a1[4] + 56));
  }

  else
  {
    *(*(a1[6] + 8) + 24) = 1;
  }
}

void __57__PLSearchIndexingRebuildEngine__startRebuildForLibrary___block_invoke_75(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _startRebuildForLibrary:*(a1 + 32)];
}

- (void)_rebuildAllRemainingEntitiesForLibrary:(id)library queue:(id)queue completion:(id)completion
{
  v39 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  queueCopy = queue;
  completionCopy = completion;
  _currentEntity = [(PLSearchIndexingRebuildEngine *)self _currentEntity];
  if (_currentEntity < 0xA)
  {
    v19 = _currentEntity;
    if ((0x105uLL >> _currentEntity))
    {
      v26 = MEMORY[0x1E69E9820];
      PLRunWithUnfairLock();
      [(PLSearchIndexingRebuildEngine *)self _rebuildAllRemainingEntitiesForLibrary:libraryCopy queue:queueCopy completion:completionCopy, v26, 3221225472, __89__PLSearchIndexingRebuildEngine__rebuildAllRemainingEntitiesForLibrary_queue_completion___block_invoke_71, &unk_1E75781E8, self];
    }

    else
    {
      _resumeObjectID = [(PLSearchIndexingRebuildEngine *)self _resumeObjectID];
      v21 = [(PLSearchIndexingRebuildEngine *)self _iteratorForSearchEntity:v19 library:libraryCopy resumeObjectID:_resumeObjectID];

      v22 = PLSearchBackendIndexRebuildGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = off_1E7571300[v19];
        resumeObjectID = [v21 resumeObjectID];
        libraryID = [libraryCopy libraryID];
        *buf = 138543874;
        v34 = v23;
        v35 = 2114;
        v36 = resumeObjectID;
        v37 = 2112;
        v38 = libraryID;
        _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEFAULT, "Resuming search index rebuild from entity: %{public}@ token: %{public}@ for library %@", buf, 0x20u);
      }

      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __89__PLSearchIndexingRebuildEngine__rebuildAllRemainingEntitiesForLibrary_queue_completion___block_invoke;
      v27[3] = &unk_1E7566730;
      v32 = v19;
      v28 = libraryCopy;
      selfCopy = self;
      v30 = queueCopy;
      v31 = completionCopy;
      [(PLSearchIndexingRebuildEngine *)self _rebuildManagedObjectsFromIterator:v21 ofEntity:v19 queue:v30 library:v28 completion:v27];
    }
  }

  else
  {
    v12 = PLSearchBackendIndexRebuildGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      libraryID2 = [libraryCopy libraryID];
      *buf = 138412290;
      v34 = libraryID2;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "Search index rebuild completed for library %@", buf, 0xCu);
    }

    libraryServicesManager = [libraryCopy libraryServicesManager];
    availabilityComputer = [libraryServicesManager availabilityComputer];
    [availabilityComputer didFinishSearchIndexRebuidForPhotoLibrary:libraryCopy error:0];

    v16 = MEMORY[0x1E69BF2D0];
    null = [MEMORY[0x1E695DFB0] null];
    v18 = [v16 successWithResult:null];

    (*(completionCopy + 2))(completionCopy, v18);
  }
}

void __89__PLSearchIndexingRebuildEngine__rebuildAllRemainingEntitiesForLibrary_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 isSuccess])
  {
    v4 = *(a1 + 64);
    if (v4 > 9)
    {
      v5 = 0;
    }

    else
    {
      v5 = qword_19C60FB90[v4];
    }

    v8 = *(a1 + 32);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __89__PLSearchIndexingRebuildEngine__rebuildAllRemainingEntitiesForLibrary_queue_completion___block_invoke_2;
    v9[3] = &unk_1E7577B90;
    v10 = v8;
    v11 = v5;
    [v10 performTransactionAndWait:v9];
    PLRunWithUnfairLock();
    [*(a1 + 40) _rebuildAllRemainingEntitiesForLibrary:*(a1 + 32) queue:*(a1 + 48) completion:*(a1 + 56)];
  }

  else
  {
    v6 = PLSearchBackendIndexRebuildGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [v3 error];
      *buf = 138412290;
      v13 = v7;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Failed to rebuild search index with error: %@", buf, 0xCu);
    }

    (*(*(a1 + 56) + 16))();
  }
}

void __89__PLSearchIndexingRebuildEngine__rebuildAllRemainingEntitiesForLibrary_queue_completion___block_invoke_71(uint64_t a1)
{
  ++*(*(a1 + 32) + 32);
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void __89__PLSearchIndexingRebuildEngine__rebuildAllRemainingEntitiesForLibrary_queue_completion___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) globalValues];
  v3 = [v2 markRebuildPhaseCompleted:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = PLSearchBackendIndexRebuildGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = PLSearchIndexingStatusDescription(*(a1 + 40));
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "Marking rebuild phase (%{public}@) complete failed unexpectedly, status already shows rebuild phase completed", &v6, 0xCu);
    }
  }
}

void __89__PLSearchIndexingRebuildEngine__rebuildAllRemainingEntitiesForLibrary_queue_completion___block_invoke_70(uint64_t a1)
{
  ++*(*(a1 + 32) + 32);
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

- (void)_rebuildManagedObjectsFromIterator:(id)iterator ofEntity:(unint64_t)entity queue:(id)queue library:(id)library completion:(id)completion
{
  v128 = *MEMORY[0x1E69E9840];
  iteratorCopy = iterator;
  queueCopy = queue;
  libraryCopy = library;
  completionCopy = completion;
  v64 = [[PLTimedDispatchGroup alloc] initWithQueue:queueCopy name:@"Rebuild donation"];
  v15 = [(PLTimedDispatchGroup *)v64 enterWithName:@"Rebuild donation"];
  v16 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:0];
  v86 = MEMORY[0x1E69E9820];
  v87 = 3221225472;
  v88 = __102__PLSearchIndexingRebuildEngine__rebuildManagedObjectsFromIterator_ofEntity_queue_library_completion___block_invoke;
  v89 = &unk_1E75666B8;
  selfCopy = self;
  v17 = v15;
  v91 = v17;
  v18 = v16;
  v92 = v18;
  if (PLBoolResultWithUnfairLock())
  {
    [v17 leave];
    v19 = MEMORY[0x1E69BF2D0];
    v20 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
    v21 = [v19 failureWithError:v20];
    completionCopy[2](completionCopy, v21);
    v22 = v64;
    goto LABEL_30;
  }

  v63 = queueCopy;
  v23 = atomic_load(sLocaleDidChange);
  if ((v23 & 1) == 0)
  {
    v20 = [MEMORY[0x1E695DF00] now];
    managedObjectContext = [libraryCopy managedObjectContext];
    v21 = [iteratorCopy nextBatchWithManagedObjectContext:managedObjectContext];

    if (v21)
    {
      if (![v21 isFailure])
      {
        v43 = [(PLSearchIndexingRebuildEngine *)self _rebuildTypeForLibrary:libraryCopy entityInProgress:0 resumeObjectID:0 rebuildReasons:0];
        if (v43 != 3)
        {
          v44 = v43;
          v45 = PLSearchBackendIndexRebuildGetLog();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            if (v44 > 2)
            {
              v46 = @"invalid";
            }

            else
            {
              v46 = *(&off_1E7566750 + v44);
            }

            *buf = 138543362;
            *&buf[4] = v46;
            _os_log_impl(&dword_19BF1F000, v45, OS_LOG_TYPE_DEFAULT, "Rebuild in progress, but required rebuild type is %{public}@", buf, 0xCu);
          }
        }

        managedObjectContext2 = [libraryCopy managedObjectContext];
        v54 = [iteratorCopy countRemainingWithManagedObjectContext:managedObjectContext2 logger:self->_logger];

        v76[0] = MEMORY[0x1E69E9820];
        v76[1] = 3221225472;
        v76[2] = __102__PLSearchIndexingRebuildEngine__rebuildManagedObjectsFromIterator_ofEntity_queue_library_completion___block_invoke_65;
        v76[3] = &unk_1E75666E0;
        v62 = v21;
        v77 = v62;
        v78 = v18;
        v60 = iteratorCopy;
        v79 = v60;
        v59 = v20;
        v80 = v59;
        selfCopy2 = self;
        entityCopy = entity;
        v55 = libraryCopy;
        v82 = v55;
        v58 = v63;
        v83 = v58;
        v56 = v17;
        v84 = v56;
        [v55 performBlock:v76];
        v66[0] = MEMORY[0x1E69E9820];
        v66[1] = 3221225472;
        v66[2] = __102__PLSearchIndexingRebuildEngine__rebuildManagedObjectsFromIterator_ofEntity_queue_library_completion___block_invoke_2;
        v66[3] = &unk_1E7566708;
        v67 = v56;
        v74 = completionCopy;
        v68 = v62;
        v69 = v60;
        v70 = v59;
        v71 = v55;
        selfCopy3 = self;
        entityCopy2 = entity;
        v73 = v58;
        v22 = v64;
        [(PLTimedDispatchGroup *)v64 notify:v66];

        error2 = v77;
        goto LABEL_29;
      }

      [v17 leave];
      v33 = PLSearchBackendIndexRebuildGetLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        entityName = [iteratorCopy entityName];
        error = [v21 error];
        *buf = 138543618;
        *&buf[4] = entityName;
        *&buf[12] = 2112;
        *&buf[14] = error;
        _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_ERROR, "Rebuild failed to enumerate objects of entity: %{public}@, error: %@", buf, 0x16u);
      }

      v36 = MEMORY[0x1E69BF2D0];
      error2 = [v21 error];
      v38 = [v36 failureWithError:error2];
      completionCopy[2](completionCopy, v38);
    }

    else
    {
      [v17 leave];
      v39 = PLSearchBackendIndexRebuildGetLog();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        entityName2 = [iteratorCopy entityName];
        *buf = 138543618;
        *&buf[4] = entityName2;
        *&buf[12] = 2112;
        *&buf[14] = libraryCopy;
        _os_log_impl(&dword_19BF1F000, v39, OS_LOG_TYPE_INFO, "Search rebuild complete for entity: %{public}@ in library: %@", buf, 0x16u);
      }

      v41 = MEMORY[0x1E69BF2D0];
      null = [MEMORY[0x1E695DFB0] null];
      error2 = [v41 successWithResult:null];

      completionCopy[2](completionCopy, error2);
    }

    v22 = v64;
LABEL_29:

    queueCopy = v63;
    goto LABEL_30;
  }

  v61 = iteratorCopy;
  [v17 leave];
  v24 = MEMORY[0x1E696AEC0];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];
  globalValues = [libraryCopy globalValues];
  searchIndexLocaleIdentifier = [globalValues searchIndexLocaleIdentifier];
  v20 = [v24 stringWithFormat:@"Stopping search index rebuild due to system locale change (current locale: %@, search index locale: %@)", localeIdentifier, searchIndexLocaleIdentifier];

  v29 = PLSearchBackendIndexRebuildGetLog();
  LODWORD(globalValues) = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);

  if (globalValues)
  {
    if (self->_logger)
    {
      v126 = 0u;
      v127 = 0u;
      v124 = 0u;
      v125 = 0u;
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v118 = 0u;
      v119 = 0u;
      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      v113 = 0u;
      v110 = 0u;
      v111 = 0u;
      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      memset(buf, 0, sizeof(buf));
      v30 = PLSearchBackendIndexRebuildGetLog();
      os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
      v95 = 138543362;
      v96 = v20;
      LODWORD(v57) = 12;
      v31 = _os_log_send_and_compose_impl();

      [(PLFileBackedLogger *)self->_logger logWithMessage:v31 fromCodeLocation:"PLSearchIndexingRebuildEngine.m" type:622, 16, &v95, v57];
      if (v31 != buf)
      {
        free(v31);
      }
    }

    else
    {
      v47 = PLSearchBackendIndexRebuildGetLog();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v20;
        _os_log_impl(&dword_19BF1F000, v47, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }
    }
  }

  v48 = MEMORY[0x1E69BF2D0];
  v49 = MEMORY[0x1E696ABC0];
  v50 = *MEMORY[0x1E69BFF48];
  v93 = *MEMORY[0x1E696A278];
  v94 = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
  v51 = [v49 errorWithDomain:v50 code:45003 userInfo:v21];
  v52 = [v48 failureWithError:v51];
  completionCopy[2](completionCopy, v52);

  iteratorCopy = v61;
  queueCopy = v63;
  v22 = v64;
LABEL_30:
}

uint64_t __102__PLSearchIndexingRebuildEngine__rebuildManagedObjectsFromIterator_ofEntity_queue_library_completion___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 72), *(a1 + 40));
  objc_storeStrong((*(a1 + 32) + 80), *(a1 + 48));
  return *(*(a1 + 32) + 49);
}

void __102__PLSearchIndexingRebuildEngine__rebuildManagedObjectsFromIterator_ofEntity_queue_library_completion___block_invoke_65(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) result];
  [*(a1 + 40) setTotalUnitCount:{objc_msgSend(v2, "count")}];
  v3 = PLSearchBackendIndexRebuildGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [v2 count];
    v5 = [*(a1 + 48) entityName];
    v6 = [MEMORY[0x1E695DF00] now];
    [v6 timeIntervalSinceDate:*(a1 + 56)];
    *buf = 134218498;
    v18 = v4;
    v19 = 2114;
    v20 = v5;
    v21 = 2048;
    v22 = v7;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_INFO, "Search rebuild donating batch of %tu managed objects (%{public}@), elapsed: %f sec", buf, 0x20u);
  }

  v8 = [*(a1 + 64) delegate];
  v9 = *(a1 + 64);
  v10 = *(a1 + 96);
  v11 = [*(a1 + 48) entityName];
  v12 = *(a1 + 40);
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __102__PLSearchIndexingRebuildEngine__rebuildManagedObjectsFromIterator_ofEntity_queue_library_completion___block_invoke_66;
  v15[3] = &unk_1E756E038;
  v16 = *(a1 + 88);
  [v8 inLibraryPerform_donateForSearchIndexingRebuildEngine:v9 managedObjects:v2 entity:v10 entityName:v11 library:v13 progress:v12 queue:v14 completion:v15];
}

void __102__PLSearchIndexingRebuildEngine__rebuildManagedObjectsFromIterator_ofEntity_queue_library_completion___block_invoke_2(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) wasCancelled])
  {
    v2 = *(a1 + 88);
    v25 = [*(a1 + 32) result];
    (*(v2 + 16))(v2);
  }

  else
  {
    v3 = [*(a1 + 40) result];
    v4 = [*(a1 + 32) result];
    v5 = [*(a1 + 48) resumeObjectID];
    v6 = [v4 isFailure];
    v7 = PLSearchBackendIndexRebuildGetLog();
    v8 = v7;
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = [v3 count];
        v10 = [*(a1 + 48) entityName];
        v11 = [MEMORY[0x1E695DF00] now];
        [v11 timeIntervalSinceDate:*(a1 + 56)];
        v13 = v12;
        v14 = [v4 error];
        *buf = 134219010;
        v35 = v9;
        v36 = 2114;
        v37 = v10;
        v38 = 2114;
        v39 = v5;
        v40 = 2048;
        v41 = v13;
        v42 = 2112;
        v43 = v14;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Search rebuild donation failure, %tu objects (%{public}@), current resume token: %{public}@ elapsed: %f sec, error: %@", buf, 0x34u);
      }

      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __102__PLSearchIndexingRebuildEngine__rebuildManagedObjectsFromIterator_ofEntity_queue_library_completion___block_invoke_67;
      v30[3] = &unk_1E7576168;
      v15 = *(a1 + 64);
      v30[4] = *(a1 + 72);
      v16 = v3;
      v17 = *(a1 + 96);
      v31 = v16;
      v33 = v17;
      v32 = *(a1 + 64);
      [v15 performTransactionAndWait:v30];
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v18 = [v3 count];
        v19 = [*(a1 + 48) entityName];
        v20 = [MEMORY[0x1E695DF00] now];
        [v20 timeIntervalSinceDate:*(a1 + 56)];
        *buf = 134218754;
        v35 = v18;
        v36 = 2114;
        v37 = v19;
        v38 = 2114;
        v39 = v5;
        v40 = 2048;
        v41 = v21;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_INFO, "Search rebuild donation complete, %tu objects (%{public}@), current resume token: %{public}@ elapsed: %f sec", buf, 0x2Au);
      }
    }

    v22 = *(a1 + 64);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __102__PLSearchIndexingRebuildEngine__rebuildManagedObjectsFromIterator_ofEntity_queue_library_completion___block_invoke_68;
    v27[3] = &unk_1E7578848;
    v28 = v22;
    v23 = v5;
    v29 = v23;
    [v28 performTransactionAndWait:v27];
    v26 = v23;
    v24 = v23;
    PLRunWithUnfairLock();
    [*(a1 + 72) _rebuildManagedObjectsFromIterator:*(a1 + 48) ofEntity:*(a1 + 96) queue:*(a1 + 80) library:*(a1 + 64) completion:*(a1 + 88)];
  }
}

void __102__PLSearchIndexingRebuildEngine__rebuildManagedObjectsFromIterator_ofEntity_queue_library_completion___block_invoke_68(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) globalValues];
  [v2 setSearchIndexRebuildResumeObjectID:v1];
}

- (void)_handleDonationFailureForRebuildWithManagedObjects:(id)objects entity:(unint64_t)entity library:(id)library
{
  v26 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  libraryCopy = library;
  if (entity - 1 > 8)
  {
    v9 = 2;
  }

  else
  {
    v9 = qword_19C610090[entity - 1];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = objectsCopy;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      v14 = 0;
      do
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        if (entity <= 4)
        {
          if (entity == 1 || entity == 3 || entity == 4)
          {
            goto LABEL_19;
          }
        }

        else
        {
          if (entity <= 6)
          {
            if (entity == 5)
            {
              goto LABEL_19;
            }

            personUUID = [*(*(&v21 + 1) + 8 * v14) personUUID];
            goto LABEL_20;
          }

          if (entity != 7)
          {
            if (entity != 9)
            {
              goto LABEL_22;
            }

LABEL_19:
            personUUID = [*(*(&v21 + 1) + 8 * v14) uuid];
LABEL_20:
            encodedIdentifierString = personUUID;
            if (!personUUID)
            {
              goto LABEL_22;
            }

LABEL_21:
            v17 = [libraryCopy addBackgroundJobWorkItemWithIdentifier:encodedIdentifierString jobType:3 jobFlags:{v9, v21}];
            v18 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:300.0];
            [v17 setDelayUntilDate:v18];

            goto LABEL_22;
          }

          v19 = [(PLGraphNodeContainer *)PLSearchEntity newNodeContainerWithNode:*(*(&v21 + 1) + 8 * v14), v21];
          encodedIdentifierString = [v19 encodedIdentifierString];

          if (encodedIdentifierString)
          {
            goto LABEL_21;
          }
        }

LABEL_22:
        ++v14;
      }

      while (v12 != v14);
      v20 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      v12 = v20;
    }

    while (v20);
  }
}

- (unint64_t)_rebuildTypeForLibrary:(id)library entityInProgress:(unint64_t *)progress resumeObjectID:(id *)d rebuildReasons:(unint64_t *)reasons
{
  v99 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  delegate = [(PLSearchIndexingRebuildEngine *)self delegate];
  v12 = +[PLSpotlightReindexing shouldReindexAllItemsForLibraryIdentifier:](PLSpotlightReindexing, "shouldReindexAllItemsForLibraryIdentifier:", [delegate wellKnownLibraryIdentifierForSearchIndexingRebuildEngine:self]);

  globalValues = [libraryCopy globalValues];
  delegate2 = [(PLSearchIndexingRebuildEngine *)self delegate];
  v15 = [delegate2 sceneTaxonomyDigestsForSearchIndexingRebuildEngine:self];
  pathManager = [libraryCopy pathManager];
  v17 = [globalValues searchIndexRebuildReasonsWithSceneTaxonomyDigests:v15 spotlightRequestedRebuild:v12 pathManager:pathManager];

  if ((v17 & 0x22) != 0)
  {
    v18 = 2;
LABEL_5:
    searchIndexRebuildStartDate = PLSearchBackendIndexRebuildGetLog();
    if (os_log_type_enabled(searchIndexRebuildStartDate, OS_LOG_TYPE_DEFAULT))
    {
      v20 = @"drop";
      if ((v17 & 0x22) == 0)
      {
        v20 = @"overwrite";
      }

      v21 = v20;
      v22 = PLSearchIndexRebuildReasonsDescriptionWithSpotlightReason(v17, 0);
      *buf = 138543618;
      *&buf[4] = v21;
      *&buf[12] = 2114;
      *&buf[14] = v22;
      _os_log_impl(&dword_19BF1F000, searchIndexRebuildStartDate, OS_LOG_TYPE_DEFAULT, "Detected search index rebuild required, type: %{public}@, reason: %{public}@", buf, 0x16u);
    }

    searchIndexRebuildResumeObjectID = 0;
    searchIndexingEntityToRebuild = 1;
    goto LABEL_10;
  }

  if ((v17 & 0xBCD) != 0)
  {
    v18 = 1;
    goto LABEL_5;
  }

  if ((v17 & 0x10) != 0)
  {
    globalValues2 = [libraryCopy globalValues];
    searchIndexingEntityToRebuild = [globalValues2 searchIndexingEntityToRebuild];

    if (searchIndexingEntityToRebuild)
    {
      globalValues3 = [libraryCopy globalValues];
      searchIndexRebuildResumeObjectID = [globalValues3 searchIndexRebuildResumeObjectID];

      globalValues4 = [libraryCopy globalValues];
      searchIndexRebuildStartDate = [globalValues4 searchIndexRebuildStartDate];

      globalValues5 = [libraryCopy globalValues];
      searchIndexRebuildEndDate = [globalValues5 searchIndexRebuildEndDate];

      globalValues6 = [libraryCopy globalValues];
      isSearchIndexRebuildFinished = [globalValues6 isSearchIndexRebuildFinished];

      v32 = PLSearchBackendIndexRebuildGetLog();
      v54 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);

      if (v54)
      {
        if (self->_logger)
        {
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          v93 = 0u;
          v94 = 0u;
          v91 = 0u;
          v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          v79 = 0u;
          v80 = 0u;
          v77 = 0u;
          v78 = 0u;
          v75 = 0u;
          v76 = 0u;
          v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          memset(buf, 0, sizeof(buf));
          v47 = PLSearchBackendIndexRebuildGetLog();
          os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);
          v33 = @"YES";
          if (isSearchIndexRebuildFinished)
          {
            v33 = @"NO";
          }

          v55 = v33;
          v52 = [(NSISO8601DateFormatter *)self->_loggingDateFormatter stringFromDate:searchIndexRebuildStartDate];
          v49 = [(NSISO8601DateFormatter *)self->_loggingDateFormatter stringFromDate:searchIndexRebuildEndDate];
          if (searchIndexingEntityToRebuild > 9)
          {
            v34 = @"invalid";
          }

          else
          {
            v34 = off_1E7571300[searchIndexingEntityToRebuild];
          }

          log = v34;
          uRIRepresentation = [searchIndexRebuildResumeObjectID URIRepresentation];
          absoluteString = [uRIRepresentation absoluteString];
          v42 = PLSearchIndexRebuildReasonsDescriptionWithSpotlightReason(v17, 0);
          v58 = 138544642;
          v59 = v55;
          v60 = 2114;
          v61 = v52;
          v62 = 2114;
          v63 = v49;
          v64 = 2114;
          v65 = log;
          v66 = 2114;
          v67 = absoluteString;
          v68 = 2114;
          v69 = v42;
          LODWORD(v40) = 62;
          v38 = _os_log_send_and_compose_impl();

          [(PLFileBackedLogger *)self->_logger logWithMessage:v38 fromCodeLocation:"PLSearchIndexingRebuildEngine.m" type:510, 0, &v58, v40];
          if (v38 != buf)
          {
            free(v38);
          }
        }

        else
        {
          v35 = PLSearchBackendIndexRebuildGetLog();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v36 = @"YES";
            if (isSearchIndexRebuildFinished)
            {
              v36 = @"NO";
            }

            v56 = v36;
            v53 = [(NSISO8601DateFormatter *)self->_loggingDateFormatter stringFromDate:searchIndexRebuildStartDate];
            v50 = [(NSISO8601DateFormatter *)self->_loggingDateFormatter stringFromDate:searchIndexRebuildEndDate];
            if (searchIndexingEntityToRebuild > 9)
            {
              v37 = @"invalid";
            }

            else
            {
              v37 = off_1E7571300[searchIndexingEntityToRebuild];
            }

            v45 = v37;
            uRIRepresentation2 = [searchIndexRebuildResumeObjectID URIRepresentation];
            absoluteString2 = [uRIRepresentation2 absoluteString];
            v44 = PLSearchIndexRebuildReasonsDescriptionWithSpotlightReason(v17, 0);
            *buf = 138544642;
            *&buf[4] = v56;
            *&buf[12] = 2114;
            *&buf[14] = v53;
            *&buf[22] = 2114;
            *&buf[24] = v50;
            *&buf[32] = 2114;
            *&buf[34] = v45;
            *&buf[42] = 2114;
            *&buf[44] = absoluteString2;
            *&buf[52] = 2114;
            *&buf[54] = v44;
            _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_DEFAULT, "Detected search index rebuild in progress [%{public}@], start %{public}@ prev end %{public}@, entity: %{public}@, resume objectID: %{public}@ [%{public}@]", buf, 0x3Eu);
          }
        }
      }

      v18 = 3;
    }

    else
    {
      searchIndexRebuildStartDate = PLSearchBackendIndexRebuildGetLog();
      if (os_log_type_enabled(searchIndexRebuildStartDate, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, searchIndexRebuildStartDate, OS_LOG_TYPE_ERROR, "Detected rebuild in progress but no entity to rebuild, will not resume rebuild", buf, 2u);
      }

      searchIndexRebuildResumeObjectID = 0;
      searchIndexingEntityToRebuild = 0;
      v18 = 0;
    }

LABEL_10:

    if (!progress)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  searchIndexRebuildResumeObjectID = 0;
  searchIndexingEntityToRebuild = 0;
  v18 = 0;
  if (progress)
  {
LABEL_11:
    *progress = searchIndexingEntityToRebuild;
  }

LABEL_12:
  if (d)
  {
    v25 = searchIndexRebuildResumeObjectID;
    *d = searchIndexRebuildResumeObjectID;
  }

  if (reasons)
  {
    *reasons = v17;
  }

  return v18;
}

- (void)_prepareForRebuildForLibrary:(id)library type:(unint64_t)type sceneTaxonomyDigests:(id)digests completion:(id)completion
{
  v86 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  digestsCopy = digests;
  completionCopy = completion;
  v13 = PLSearchBackendIndexRebuildGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    libraryID = [libraryCopy libraryID];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = libraryID;
    _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Preparing to rebuild search index for library: %@", &buf, 0xCu);
  }

  v15 = atomic_load(sLocaleDidChange);
  if (v15)
  {
    v16 = MEMORY[0x1E696AEC0];
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    localeIdentifier = [currentLocale localeIdentifier];
    globalValues = [libraryCopy globalValues];
    searchIndexLocaleIdentifier = [globalValues searchIndexLocaleIdentifier];
    v21 = [v16 stringWithFormat:@"Cannot rebuild search index, the device locale has changed since daemon launch (current locale: %@, search index locale: %@)", localeIdentifier, searchIndexLocaleIdentifier];

    v22 = PLSearchBackendIndexRebuildGetLog();
    LODWORD(localeIdentifier) = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);

    if (localeIdentifier)
    {
      if (self->_logger)
      {
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        buf = 0u;
        v55 = 0u;
        v23 = PLSearchBackendIndexRebuildGetLog();
        os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
        *v52 = 138543362;
        v53 = v21;
        LODWORD(v38) = 12;
        v24 = _os_log_send_and_compose_impl();

        [(PLFileBackedLogger *)self->_logger logWithMessage:v24 fromCodeLocation:"PLSearchIndexingRebuildEngine.m" type:422, 16, v52, v38];
        if (v24 != &buf)
        {
          free(v24);
        }
      }

      else
      {
        v32 = PLSearchBackendIndexRebuildGetLog();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v21;
          _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
        }
      }
    }

    v33 = MEMORY[0x1E69BF2D0];
    v34 = MEMORY[0x1E696ABC0];
    v50 = *MEMORY[0x1E696A278];
    v51 = v21;
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
    v36 = [v34 errorWithDomain:*MEMORY[0x1E69BFF48] code:45003 userInfo:v35];
    v37 = [v33 failureWithError:v36];
    completionCopy[2](completionCopy, v37);
  }

  else
  {
    v21 = dispatch_group_create();
    *&buf = 0;
    *(&buf + 1) = &buf;
    *&v55 = 0x3032000000;
    *(&v55 + 1) = __Block_byref_object_copy__10378;
    *&v56 = __Block_byref_object_dispose__10379;
    v25 = MEMORY[0x1E69BF2D0];
    null = [MEMORY[0x1E695DFB0] null];
    v27 = [v25 successWithResult:null];

    *(&v56 + 1) = v27;
    if (type == 2)
    {
      v28 = PLSearchBackendIndexRebuildGetLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *v52 = 138412290;
        v53 = libraryCopy;
        _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_ERROR, "Dropping search index for library %@", v52, 0xCu);
      }

      dispatch_group_enter(v21);
      delegate = [(PLSearchIndexingRebuildEngine *)self delegate];
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __99__PLSearchIndexingRebuildEngine__prepareForRebuildForLibrary_type_sceneTaxonomyDigests_completion___block_invoke;
      v46[3] = &unk_1E756DEA8;
      v47 = libraryCopy;
      p_buf = &buf;
      v48 = v21;
      [delegate dropSearchIndexForSearchIndexingRebuildEngine:self completion:v46];
    }

    v30 = +[PLConcurrencyLimiter sharedLimiter];
    queue = self->_queue;
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __99__PLSearchIndexingRebuildEngine__prepareForRebuildForLibrary_type_sceneTaxonomyDigests_completion___block_invoke_53;
    v39[3] = &unk_1E7566690;
    v43 = &buf;
    v40 = libraryCopy;
    typeCopy = type;
    v41 = digestsCopy;
    v45 = type == 2;
    v42 = completionCopy;
    [v30 groupNotify:v21 queue:queue block:v39];

    _Block_object_dispose(&buf, 8);
  }
}

void __99__PLSearchIndexingRebuildEngine__prepareForRebuildForLibrary_type_sceneTaxonomyDigests_completion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 isFailure])
  {
    v4 = PLSearchBackendIndexRebuildGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = [v3 error];
      v10 = 138412546;
      v11 = v5;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "Aborting attempt to begin search index rebuild for library: %@ due to failure to drop search index, error: %@", &v10, 0x16u);
    }
  }

  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;
  v9 = v3;

  dispatch_group_leave(*(a1 + 40));
}

void __99__PLSearchIndexingRebuildEngine__prepareForRebuildForLibrary_type_sceneTaxonomyDigests_completion___block_invoke_53(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if ([*(*(*(a1 + 56) + 8) + 40) isSuccess])
  {
    v2 = *(a1 + 32);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __99__PLSearchIndexingRebuildEngine__prepareForRebuildForLibrary_type_sceneTaxonomyDigests_completion___block_invoke_2;
    v18[3] = &unk_1E75782F8;
    v21 = *(a1 + 64);
    v19 = v2;
    v20 = *(a1 + 40);
    [v19 performTransactionAndWait:v18];
    if (*(a1 + 72) == 1)
    {
      v3 = PLSearchBackendIndexRebuildGetLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v23 = "[PLSearchIndexingRebuildEngine _prepareForRebuildForLibrary:type:sceneTaxonomyDigests:completion:]_block_invoke";
        _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "%s - Resetting search index availability", buf, 0xCu);
      }

      v4 = [*(a1 + 32) libraryServicesManager];
      v5 = [v4 availabilityComputer];
      v6 = *(a1 + 32);
      v17 = 0;
      v7 = [v5 didDropSearchIndexForPhotoLibrary:v6 error:&v17];
      v8 = v17;

      if ((v7 & 1) == 0)
      {
        v9 = PLSearchBackendIndexRebuildGetLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v23 = v8;
          _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Failed to update feature availability in response to search index rebuild, error: %@", buf, 0xCu);
        }
      }
    }
  }

  v10 = [*(a1 + 32) pathManager];
  v11 = [PLSpotlightReindexing deleteProgressFileWithPathManager:v10];

  if ([v11 isFailure])
  {
    v12 = PLSearchBackendIndexRebuildGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v11 error];
      *buf = 138412290;
      v23 = v13;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Failed to remove spotlight reindexing file with error: %@", buf, 0xCu);
    }
  }

  v14 = *(a1 + 48);
  v15 = [*(*(*(a1 + 56) + 8) + 40) isFailure];
  v16 = v11;
  if (v15)
  {
    v16 = *(*(*(a1 + 56) + 8) + 40);
  }

  (*(v14 + 16))(v14, v16);
}

void __99__PLSearchIndexingRebuildEngine__prepareForRebuildForLibrary_type_sceneTaxonomyDigests_completion___block_invoke_2(uint64_t a1)
{
  if ((*(a1 + 48) - 1) <= 1)
  {
    v2 = [MEMORY[0x1E695DF00] now];
    v3 = [*(a1 + 32) globalValues];
    [v3 setSearchIndexRebuildStartDate:v2];
  }

  v4 = [*(a1 + 32) globalValues];
  [v4 resetSearchIndexRebuildMetadataWithSceneTaxonomyDigests:*(a1 + 40)];

  v6 = [*(a1 + 32) managedObjectContext];
  v5 = [PLBackgroundJobWorkItem deleteAllSearchIndexJobsInManagedObjectContext:v6];
}

- (id)_iteratorForSearchEntity:(unint64_t)entity library:(id)library resumeObjectID:(id)d
{
  v31[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  iteratorsBySearchEntity = self->_iteratorsBySearchEntity;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:entity];
  v10 = [(NSMutableDictionary *)iteratorsBySearchEntity objectForKeyedSubscript:v9];

  if (!v10)
  {
    delegate = [(PLSearchIndexingRebuildEngine *)self delegate];
    v12 = [delegate wellKnownLibraryIdentifierForSearchIndexingRebuildEngine:self];
    v30 = dCopy;
    relationshipKeyPathsToPrefetch = 0;
    if (entity <= 4)
    {
      if (entity == 1)
      {
        v14 = +[PLManagedAsset entityName];
        v21 = [PLManagedAsset isEligibleForSearchIndexingPredicateForLibraryIdentifier:v12];
        v31[0] = v21;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];

        v17 = +[PLManagedAsset propertiesToFetch];
        v19 = PLManagedAsset;
        goto LABEL_19;
      }

      if (entity == 3)
      {
        v14 = +[PLGenericAlbum entityName];
        v24 = [PLGenericAlbum isEligibleForSearchIndexingPredicateForLibraryIdentifier:v12];
        v31[0] = v24;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];

        v17 = +[PLGenericAlbum propertiesToFetch];
        v19 = PLGenericAlbum;
        goto LABEL_19;
      }

      v17 = 0;
      v16 = 0;
      v14 = 0;
      v10 = 0;
      if (entity == 4)
      {
        v14 = +[PLPhotosHighlight entityName];
        v18 = [PLPhotosHighlight isEligibleForSearchIndexingPredicateForLibraryIdentifier:v12];
        v31[0] = v18;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];

        v17 = +[PLPhotosHighlight propertiesToFetch];
        v19 = PLPhotosHighlight;
        goto LABEL_19;
      }
    }

    else
    {
      if (entity <= 6)
      {
        if (entity != 5)
        {
          v14 = +[PLPerson entityName];
          v15 = [PLPerson isEligibleForSearchIndexingPredicateForLibraryIdentifier:v12];
          v31[0] = v15;
          v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];

          v17 = +[PLPerson propertiesToFetch];
          goto LABEL_16;
        }

        v14 = +[PLMemory entityName];
        v22 = [PLMemory isEligibleForSearchIndexingPredicateForLibraryIdentifier:v12];
        v31[0] = v22;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];

        v17 = +[PLMemory propertiesToFetch];
        v19 = PLMemory;
LABEL_19:
        relationshipKeyPathsToPrefetch = [(__objc2_class *)v19 relationshipKeyPathsToPrefetch];
        if (!v14)
        {
          goto LABEL_17;
        }

        goto LABEL_20;
      }

      if (entity == 7)
      {
        v14 = +[PLGraphNode entityName];
        v23 = +[PLSearchEntity predicateForSearchEntitySourceNodes];
        v31[0] = v23;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];

        v17 = 0;
LABEL_16:
        relationshipKeyPathsToPrefetch = 0;
        if (!v14)
        {
LABEL_17:
          v10 = 0;
          goto LABEL_23;
        }

LABEL_20:
        v25 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v16];
        v26 = [PLManagedObjectPagingIterator alloc];
        if (_PLRebuildPagingFetchLimit_onceToken != -1)
        {
          dispatch_once(&_PLRebuildPagingFetchLimit_onceToken, &__block_literal_global_10459);
        }

        v10 = [(PLManagedObjectPagingIterator *)v26 initWithEntityName:v14 resultType:0 resumeObjectID:v30 additionalPredicate:v25 batchSize:_PLRebuildPagingFetchLimit__pagingFetchLimit propertiesToFetch:v17 relationshipKeyPathsToPrefetch:relationshipKeyPathsToPrefetch];

        goto LABEL_23;
      }

      v17 = 0;
      v16 = 0;
      v14 = 0;
      v10 = 0;
      if (entity == 9)
      {
        v14 = +[PLCollectionShare entityName];
        v20 = [PLCollectionShare isEligibleForSearchIndexingPredicateForLibraryIdentifier:v12];
        v31[0] = v20;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];

        v17 = +[PLCollectionShare propertiesToFetch];
        v19 = PLCollectionShare;
        goto LABEL_19;
      }
    }

LABEL_23:

    v27 = self->_iteratorsBySearchEntity;
    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:entity];
    [(NSMutableDictionary *)v27 setObject:v10 forKeyedSubscript:v28];
  }

  return v10;
}

- (id)_resumeObjectID
{
  v2 = PLSafeResultWithUnfairLock();

  return v2;
}

- (unint64_t)_currentEntity
{
  v2 = PLSafeResultWithUnfairLock();
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)fetchRemainingWorkWithLibrary:(id)library completion:(id)completion
{
  libraryCopy = library;
  completionCopy = completion;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__10378;
  v20 = __Block_byref_object_dispose__10379;
  v21 = 0;
  obj[1] = MEMORY[0x1E69E9820];
  obj[2] = 3221225472;
  obj[3] = __74__PLSearchIndexingRebuildEngine_fetchRemainingWorkWithLibrary_completion___block_invoke;
  obj[4] = &unk_1E7566668;
  obj[5] = self;
  obj[6] = &v22;
  obj[7] = &v16;
  if ((PLBoolResultWithUnfairLock() & 1) != 0 || (v8 = v17 + 5, obj[0] = v17[5], v9 = [(PLSearchIndexingRebuildEngine *)self _rebuildTypeForLibrary:libraryCopy entityInProgress:v23 + 3 resumeObjectID:obj rebuildReasons:0], objc_storeStrong(v8, obj[0]), v9))
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __74__PLSearchIndexingRebuildEngine_fetchRemainingWorkWithLibrary_completion___block_invoke_2;
    v10[3] = &unk_1E7571738;
    v14 = &v16;
    v13 = &v22;
    v10[4] = self;
    v11 = libraryCopy;
    v12 = completionCopy;
    [v11 performBlock:v10];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0, 0.0);
  }

  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);
}

uint64_t __74__PLSearchIndexingRebuildEngine_fetchRemainingWorkWithLibrary_completion___block_invoke(void *a1)
{
  *(*(a1[5] + 8) + 24) = *(a1[4] + 32);
  objc_storeStrong((*(a1[6] + 8) + 40), *(a1[4] + 40));
  return *(a1[4] + 48);
}

void __74__PLSearchIndexingRebuildEngine_fetchRemainingWorkWithLibrary_completion___block_invoke_2(uint64_t a1, __n128 a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = *(*(*(a1 + 56) + 8) + 24);
  if (v3 > 9)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    a2.n128_u64[0] = 138543618;
    v16 = a2;
    do
    {
      if (v3 == *(*(*(a1 + 56) + 8) + 24))
      {
        v5 = *(*(*(a1 + 64) + 8) + 40);
      }

      else
      {
        v5 = 0;
      }

      v6 = v5;
      if (v3 <= 9 && ((0x105uLL >> v3) & 1) == 0)
      {
        v7 = [*(a1 + 32) _iteratorForSearchEntity:v3 library:*(a1 + 40) resumeObjectID:v6];
        v8 = [*(a1 + 40) managedObjectContext];
        v9 = [v7 countRemainingWithManagedObjectContext:v8 logger:*(*(a1 + 32) + 112)];

        if ([v9 isSuccess])
        {
          v10 = [v9 result];
          v4 += [v10 unsignedIntegerValue];
        }

        else
        {
          v10 = PLSearchBackendIndexRebuildGetLog();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v11 = [v7 entityName];
            v12 = [v9 error];
            *buf = v16.n128_u32[0];
            v21 = v11;
            v22 = 2112;
            v23 = v12;
            _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Failed to fetch count of remaining work for entity: %{public}@, error: %@", buf, 0x16u);
          }
        }
      }

      ++v3;
    }

    while (v3 != 10);
  }

  v13 = +[PLConcurrencyLimiter sharedLimiter];
  v14 = *(a1 + 32);
  v15 = *(v14 + 16);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __74__PLSearchIndexingRebuildEngine_fetchRemainingWorkWithLibrary_completion___block_invoke_40;
  v17[3] = &unk_1E7575338;
  v17[4] = v14;
  v18 = *(a1 + 48);
  v19 = v4;
  [v13 dispatchAsync:v15 block:v17];
}

uint64_t __74__PLSearchIndexingRebuildEngine_fetchRemainingWorkWithLibrary_completion___block_invoke_2_41(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 48) == 1)
  {
    v2 = *(v1 + 49);
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

- (void)pauseSearchIndexRebuildWithSourceName:(id)name
{
  nameCopy = name;
  v3 = nameCopy;
  PLSafeRunWithUnfairLock();
}

void __71__PLSearchIndexingRebuildEngine_pauseSearchIndexRebuildWithSourceName___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (([*(a1 + 32) isEqualToString:@"Background Job"] & 1) == 0)
  {
    v2 = *(a1 + 40);
    v3 = *(v2 + 88);
    if (v3)
    {
      *(v2 + 88) = v3 - 1;
    }
  }

  v4 = *(a1 + 40);
  if (*(v4 + 48) == 1)
  {
    v5 = *(v4 + 88);
    v6 = PLSearchBackendIndexRebuildGetLog();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        v8 = *(a1 + 32);
        v13 = 138543362;
        v14 = v8;
        _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "Deferring pause search index rebuild for source: %{public}@ because other clients have requested rebuild", &v13, 0xCu);
      }
    }

    else
    {
      if (v7)
      {
        v9 = *(a1 + 32);
        v13 = 138543362;
        v14 = v9;
        _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "Pausing search index rebuild for source: %{public}@", &v13, 0xCu);
      }

      *(*(a1 + 40) + 49) = 1;
      [*(*(a1 + 40) + 72) cancel];
      v10 = *(a1 + 40);
      v11 = *(v10 + 72);
      *(v10 + 72) = 0;

      [*(*(a1 + 40) + 80) cancel];
      v12 = *(a1 + 40);
      v6 = *(v12 + 80);
      *(v12 + 80) = 0;
    }
  }
}

- (void)resumeSearchIndexRebuildIfNeededForLibrary:(id)library calledBy:(id)by completion:(id)completion
{
  libraryCopy = library;
  byCopy = by;
  completionCopy = completion;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v11 = [(PLSearchIndexingRebuildEngine *)self _rebuildTypeForLibrary:libraryCopy entityInProgress:&v25 resumeObjectID:&v23 rebuildReasons:&v24];
  v12 = v23;
  if ((v24 & 7) != 0)
  {
    delegate = [(PLSearchIndexingRebuildEngine *)self delegate];
    v14 = +[PLSpotlightReindexing spotlightReasonForReindexingAllItemsForLibraryIdentifier:](PLSpotlightReindexing, "spotlightReasonForReindexingAllItemsForLibraryIdentifier:", [delegate wellKnownLibraryIdentifierForSearchIndexingRebuildEngine:self]);
  }

  else
  {
    v14 = 0;
  }

  v15 = v12;
  PLRunWithUnfairLock();
  if (v11)
  {
    v19 = libraryCopy;
    v20 = byCopy;
    v21 = v14;
    v22 = completionCopy;
    PLSafeRunWithUnfairLock();
  }

  else
  {
    v16 = MEMORY[0x1E69BF2D0];
    null = [MEMORY[0x1E695DFB0] null];
    v18 = [v16 successWithResult:null];

    (*(completionCopy + 2))(completionCopy, v18, 0);
  }
}

void __96__PLSearchIndexingRebuildEngine_resumeSearchIndexRebuildIfNeededForLibrary_calledBy_completion___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 49) = 0;
  v2 = *(a1 + 32);
  if ((*(v2 + 48) & 1) == 0)
  {
    *(v2 + 48) = 1;
    [*(*(a1 + 32) + 8) removeAllObjects];
    dispatch_group_enter(*(*(a1 + 32) + 56));
    [*(a1 + 32) _lock_startPrepareAndRebuildForLibrary:*(a1 + 40) type:*(a1 + 72) calledBy:*(a1 + 48) rebuildReasons:*(a1 + 80) spotlightReasonForReindexingAllItems:*(a1 + 56)];
    v3 = +[PLConcurrencyLimiter sharedLimiter];
    v4 = *(a1 + 32);
    v5 = *(v4 + 56);
    v6 = *(v4 + 16);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __96__PLSearchIndexingRebuildEngine_resumeSearchIndexRebuildIfNeededForLibrary_calledBy_completion___block_invoke_3;
    v13[3] = &unk_1E75781E8;
    v13[4] = v4;
    [v3 groupNotify:v5 queue:v6 block:v13];
  }

  if (([*(a1 + 48) isEqualToString:@"Background Job"] & 1) == 0)
  {
    ++*(*(a1 + 32) + 88);
  }

  v7 = +[PLConcurrencyLimiter sharedLimiter];
  v8 = *(a1 + 32);
  v9 = *(v8 + 56);
  v10 = *(v8 + 16);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __96__PLSearchIndexingRebuildEngine_resumeSearchIndexRebuildIfNeededForLibrary_calledBy_completion___block_invoke_5;
  v11[3] = &unk_1E7577C08;
  v11[4] = v8;
  v12 = *(a1 + 64);
  [v7 groupNotify:v9 queue:v10 block:v11];
}

void __96__PLSearchIndexingRebuildEngine_resumeSearchIndexRebuildIfNeededForLibrary_calledBy_completion___block_invoke_3(uint64_t a1)
{
  v2 = PLSafeResultWithUnfairLock();
  [*(a1 + 32) _inq_rebuildAnalyticsCompletedWithResult:v2];
}

void __96__PLSearchIndexingRebuildEngine_resumeSearchIndexRebuildIfNeededForLibrary_calledBy_completion___block_invoke_5(uint64_t a1)
{
  v2 = PLSafeResultWithUnfairLock();
  (*(*(a1 + 40) + 16))(*(a1 + 40), v2, [v2 isSuccess]);
}

- (PLSearchIndexingRebuildEngine)initWithDelegate:(id)delegate provider:(id)provider
{
  delegateCopy = delegate;
  providerCopy = provider;
  v38.receiver = self;
  v38.super_class = PLSearchIndexingRebuildEngine;
  v8 = [(PLSearchIndexingRebuildEngine *)&v38 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v11 stringByAppendingString:@".searchIndexRebuildCompletion"];
    uTF8String = [v12 UTF8String];
    v14 = qos_class_self();
    v15 = dispatch_queue_attr_make_with_qos_class(0, v14, 0);
    v16 = dispatch_queue_create(uTF8String, v15);
    queue = v9->_queue;
    v9->_queue = v16;

    v9->_lock._os_unfair_lock_opaque = 0;
    v18 = dispatch_group_create();
    lock_group = v9->_lock_group;
    v9->_lock_group = v18;

    v20 = objc_initWeak(&location, v9);
    v21 = objc_alloc(MEMORY[0x1E69BF270]);
    v32 = MEMORY[0x1E69E9820];
    v33 = 3221225472;
    v34 = __59__PLSearchIndexingRebuildEngine_initWithDelegate_provider___block_invoke;
    v35 = &unk_1E7576828;
    objc_copyWeak(&v36, &location);
    v22 = [v21 initWithBlock:&v32];
    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);
    lazyCoreAnalyticsEventManager = v9->_lazyCoreAnalyticsEventManager;
    v9->_lazyCoreAnalyticsEventManager = v22;

    v9->_coreAnalyticsRebuildToken = 0.0;
    createLogger = [providerCopy createLogger];
    logger = v9->_logger;
    v9->_logger = createLogger;

    v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
    iteratorsBySearchEntity = v9->_iteratorsBySearchEntity;
    v9->_iteratorsBySearchEntity = v26;

    v28 = objc_alloc_init(MEMORY[0x1E696AC80]);
    loggingDateFormatter = v9->_loggingDateFormatter;
    v9->_loggingDateFormatter = v28;

    [(NSISO8601DateFormatter *)v9->_loggingDateFormatter setFormatOptions:1907];
    localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
    [(NSISO8601DateFormatter *)v9->_loggingDateFormatter setTimeZone:localTimeZone];
  }

  return v9;
}

id __59__PLSearchIndexingRebuildEngine_initWithDelegate_provider___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = objc_alloc_init(MEMORY[0x1E69BF1F0]);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (BOOL)requiresImmediateDropIndexForLibrary:(id)library reasons:(unint64_t *)reasons
{
  v18 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  globalValues = [libraryCopy globalValues];
  pathManager = [libraryCopy pathManager];
  v8 = [globalValues searchIndexRebuildReasonsWithSceneTaxonomyDigests:0 spotlightRequestedRebuild:0 pathManager:pathManager];

  v9 = v8 & 0x22;
  if ((v8 & 0x22) != 0)
  {
    v10 = v8 & 0xFFFFFFFFFFFFFFFBLL;
    v11 = PLSearchBackendIndexRebuildGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = PLSearchIndexRebuildReasonsDescriptionWithSpotlightReason(v10, 0);
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = libraryCopy;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Immediate search index drop required for reasons: %{public}@ for library: %@", &v14, 0x16u);
    }

    if (reasons)
    {
      *reasons = v10;
    }
  }

  return v9 != 0;
}

+ (BOOL)hasRebuildWorkToDoForLibrary:(id)library identifier:(int64_t)identifier sceneTaxonomyDigests:(id)digests
{
  v20 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  digestsCopy = digests;
  v9 = [PLSpotlightReindexing shouldReindexAllItemsForLibraryIdentifier:identifier];
  globalValues = [libraryCopy globalValues];
  pathManager = [libraryCopy pathManager];
  v12 = [globalValues searchIndexRebuildReasonsWithSceneTaxonomyDigests:digestsCopy spotlightRequestedRebuild:v9 pathManager:pathManager];

  if (v12)
  {
    v13 = PLSearchBackendIndexRebuildGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = PLSearchIndexRebuildReasonsDescriptionWithSpotlightReason(v12, 0);
      v16 = 138543618;
      v17 = v14;
      v18 = 2112;
      v19 = libraryCopy;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Detected rebuild reasons: %{public}@ for library: %@", &v16, 0x16u);
    }
  }

  return v12 != 0;
}

@end
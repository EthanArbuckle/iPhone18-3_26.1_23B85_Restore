@interface WBSHistoryServiceDatabase
- (BOOL)_addAutocompleteTrigger:(id)a3 forURL:(id)a4 error:(id *)a5;
- (BOOL)_commitPendingItems:(id)a3;
- (BOOL)_commitPendingVisits:(id)a3;
- (BOOL)_isTesting;
- (BOOL)_prepareDatabase:(id *)a3;
- (BOOL)_reopenDatabase:(id *)a3;
- (BOOL)_shouldEmitLegacyTombstones;
- (WBSHistoryServiceDatabase)initWithID:(id)a3 url:(id)a4 options:(id)a5 fileOperationGroup:(id)a6 error:(id *)a7;
- (double)_oldestLatestVisit;
- (id).cxx_construct;
- (id)_clearAllHistoryInsertingTombstoneUpToDate:(id)a3 clearAllSpotlightHistoryForProfile:(BOOL)a4;
- (id)_clearHistoryItems:(id)a3 afterDate:(id)a4 beforeDate:(id)a5 tombstoneMode:(unint64_t)a6;
- (id)_clearHistoryVisitsAddedAfterDate:(id)a3 beforeDate:(id)a4 tombstoneMode:(unint64_t)a5 clearAllSpotlightHistoryForProfile:(BOOL)a6;
- (id)_collectDeletedHighLevelDomainsForPlan:(void *)a3;
- (id)_collectDeletedHighLevelDomainsFromDeletedHostnamesForPlan:(void *)a3;
- (id)_collectDeletedHostnamesForPlan:(void *)a3;
- (id)_collectDeletedURLsForPlan:(void *)a3;
- (id)_convertTombstoneWithGenerationToSecureFormat:(int64_t)a3 lastSyncedGeneration:(int64_t)a4;
- (id)_dateForMetadataKey:(id)a3 error:(id *)a4;
- (id)_deleteOldestItems:(unint64_t)a3 forPlan:(void *)a4;
- (id)_ensureLatestVisitsAreComputed;
- (id)_executePlan:(void *)a3 outDeletedItemCount:(unint64_t *)a4 outDeletedVisitCount:(unint64_t *)a5 clearAllSpotlightHistoryForProfile:(BOOL)a6;
- (id)_expireOldVisits:(double)a3;
- (id)_fetchEventsForListener:(id)a3 error:(id *)a4;
- (id)_fetchListenerNamesFromDatabase:(id *)a3;
- (id)_fetchObjectToTagMappingsWithOptions:(unint64_t)a3 predicate:(id)a4 writeDescriptor:(int)a5;
- (id)_fetchTagsWithOptions:(unint64_t)a3 predicate:(id)a4 writeDescriptor:(int)a5;
- (id)_fetchVisitsWithOptions:(unint64_t)a3 predicate:(id)a4 writeDescriptor:(int)a5;
- (id)_findAllRelatedVisits:(const void *)a3 forPlan:(void *)a4 afterDate:(id)a5 beforeDate:(id)a6;
- (id)_findAllRelatedVisitsToItems:(const void *)a3 forPlan:(void *)a4;
- (id)_findItemIDsForPendingVisitsWithError:(id *)a3;
- (id)_findObsoleteItemsForPlan:(void *)a3;
- (id)_generateDisposedVisitsForPlan:(void *)a3;
- (id)_generateItemsDictionary:(const void *)a3;
- (id)_generateUpdatedLastVisit:(const void *)a3;
- (id)_generateVisitsDictionary:(const void *)a3;
- (id)_insertTombstonesForURLs:(id)a3 afterDate:(id)a4 beforeDate:(id)a5 tombstoneMode:(unint64_t)a6;
- (id)_lastSeenDateForCloudClientVersion:(unint64_t)a3;
- (id)_markEventsAsReceivedByListener:(id)a3 eventIDs:(id)a4;
- (id)_metadataForKey:(id)a3 error:(id *)a4;
- (id)_preparePlan:(void *)a3 ageLimit:(double)a4 itemCountLimit:(unint64_t)a5;
- (id)_preparePlan:(void *)a3 itemsToDelete:(const void *)a4 visitsToDelete:(const void *)a5 afterDate:(id)a6 beforeDate:(id)a7;
- (id)_recomputeItemScores:(void *)a3;
- (id)_recomputeVisitScores:(void *)a3;
- (id)_setMetadataValue:(id)a3 forKey:(id)a4;
- (id)_updateListenerRegistration:(id)a3 lastSeen:(double)a4;
- (int)_migrateToCurrentSchemaVersionIfNeeded;
- (int64_t)_currentGeneration;
- (int64_t)_lastSyncedGeneration;
- (int64_t)_permanentIDsForItemIfAvailable:(int64_t)a3;
- (int64_t)_permanentIDsForVisitIfAvailable:(int64_t)a3;
- (int64_t)_writeEventToDatabase:(id)a3 listeners:(id)a4 error:(id *)a5;
- (int64_t)allocateTemporaryIDRange:(int64_t *)a3;
- (unint64_t)_countOfItems;
- (unint64_t)_pruneTombstonesOnDatabaseQueueWithEndDatePriorToDate:(id)a3 error:(id *)a4;
- (unordered_map<long)_recomputeLatestVisitsForItems:(std:(std:(std:(long long>>> *__return_ptr)retstr :(WBSHistoryServiceDatabase *)self allocator<std:(SEL)a3 :(const void *)a4 pair<const long)long :(id *)a5 equal_to<long)long> :hash<long)long> error:;
- (void)_checkpointWriteAheadLog;
- (void)_clearWBSHistorySQLiteStoreClearHistoryKeys;
- (void)_closeTagController;
- (void)_commitPendingUpdates;
- (void)_dispatchEvent:(id)a3 listenersToIgnore:(id)a4 persistForDelayedDispatching:(BOOL)a5 completionHandler:(id)a6;
- (void)_ensureDatabaseIsSynced;
- (void)_finishedClearingHistory;
- (void)_notifyExecutionOfPlan:(void *)a3;
- (void)_queuePendingUpdates;
- (void)_registerHistoryTagFrecencyScoringFunction;
- (void)_removeSpotlightDonationsForItemURLs:(id)a3;
- (void)_startingClearHistoryOperationForStartDate:(id)a3 endDate:(id)a4;
- (void)_updateItem:(int64_t)a3 visitCountScore:(int64_t)a4 dailyVisitCounts:(id)a5 weeklyVisitCounts:(id)a6 shouldRecomputeDerivedVisitCounts:(BOOL)a7;
- (void)_updateVisitWithIdentifier:(id)a3 removeAttributes:(unint64_t)a4 addAttributes:(unint64_t)a5 pendingVisit:(id)a6;
- (void)addAutocompleteTrigger:(id)a3 forURL:(id)a4 completionHandler:(id)a5;
- (void)addDelegate:(id)a3 listenerName:(id)a4 forConnection:(id)a5;
- (void)assignURLString:(id)a3 toTopicTagsWithIDs:(id)a4 completionHandler:(id)a5;
- (void)checkIfLocalVisitExistsForDatabaseIDs:(id)a3 withCompletion:(id)a4;
- (void)clearAllHistoryInsertingTombstoneUpToDate:(id)a3 clearAllSpotlightHistoryForProfile:(BOOL)a4 completionHandler:(id)a5;
- (void)clearHistoryItems:(id)a3 afterDate:(id)a4 beforeDate:(id)a5 tombstoneMode:(unint64_t)a6 completionHandler:(id)a7;
- (void)clearHistoryVisitsAddedAfterDate:(id)a3 beforeDate:(id)a4 tombstoneMode:(unint64_t)a5 clearAllSpotlightHistoryForProfile:(BOOL)a6 completionHandler:(id)a7;
- (void)convertTombstoneWithGenerationToSecureFormat:(int64_t)a3 lastSyncedGeneration:(int64_t)a4 completionHandler:(id)a5;
- (void)createTagsForIdentifiers:(id)a3 withTitles:(id)a4 type:(unint64_t)a5 level:(int64_t)a6 completionHandler:(id)a7;
- (void)database:(id)a3 hadSevereError:(id)a4;
- (void)dealloc;
- (void)deletionPlanForAgeLimit:(double)a3 itemCountLimit:(unint64_t)a4 completionHandler:(id)a5;
- (void)deletionPlanForItemsToDelete:(id)a3 visitsToDelete:(id)a4 completionHandler:(id)a5;
- (void)dispatchEvent:(id)a3 listenersToIgnore:(id)a4 persistForDelayedDispatching:(BOOL)a5 completionHandler:(id)a6;
- (void)ensureLatestVisitsAreComputed:(id)a3;
- (void)expireOldVisits:(double)a3 completionHandler:(id)a4;
- (void)exportHistory:(id)a3 completionHandler:(id)a4;
- (void)fetchAllTombstonesWithCompletionHandler:(id)a3;
- (void)fetchAutocompleteTriggersForURLString:(id)a3 completionHandler:(id)a4;
- (void)fetchCloudClientVersionTable:(id)a3;
- (void)fetchDomainExpansions:(id)a3;
- (void)fetchEventsForListener:(id)a3 completionHandler:(id)a4;
- (void)fetchMetadataForKeys:(id)a3 completionHandler:(id)a4;
- (void)fetchWithOptions:(unint64_t)a3 predicate:(id)a4 completionHandler:(id)a5;
- (void)finishClearingHistoryIfNecessaryWithCompletionHandler:(id)a3;
- (void)flushWithCompletionHandler:(id)a3;
- (void)forceCloseWithCompletionHandler:(id)a3;
- (void)getHighLevelHTTPFamilyDomainsVisitedAfterDate:(id)a3 beforeDate:(id)a4 onlyFromThisDevice:(BOOL)a5 completionHandler:(id)a6;
- (void)getItemCountBeforeDate:(id)a3 completionHandler:(id)a4;
- (void)getVisitedLinksWithCompletionHandler:(id)a3;
- (void)groupVisitsIntoSessionsBetweenStartDate:(id)a3 endDate:(id)a4 completionHandler:(id)a5;
- (void)importVisits:(id)a3 desiredVisitTimePrecision:(unint64_t)a4 completionHandler:(id)a5;
- (void)lastSeenDateForCloudClientVersion:(unint64_t)a3 completionHandler:(id)a4;
- (void)markEventsAsReceivedByListener:(id)a3 eventIDs:(id)a4 completionHandler:(id)a5;
- (void)performMaintenanceWithAgeLimit:(double)a3 itemCountLimit:(unint64_t)a4 completionHandler:(id)a5;
- (void)pruneTombstonesWithEndDatePriorToDate:(id)a3 completionHandler:(id)a4;
- (void)recomputeItemScoresWithCompletionHandler:(id)a3;
- (void)recordVisitWithIdentifier:(id)a3 sourceVisit:(id)a4 title:(id)a5 wasHTTPNonGet:(BOOL)a6 loadSuccessful:(BOOL)a7 origin:(int64_t)a8 attributes:(unint64_t)a9 statusCode:(int64_t)a10 completionHandler:(id)a11;
- (void)replayAndAddTombstones:(id)a3 completionHandler:(id)a4;
- (void)resetCloudHistoryDataWithCompletionHandler:(id)a3;
- (void)searchForUserTypedString:(id)a3 options:(unint64_t)a4 currentTime:(double)a5 writeHandle:(id)a6 completionHandler:(id)a7;
- (void)setLastSeenDate:(id)a3 forCloudClientVersion:(unint64_t)a4 completionHandler:(id)a5;
- (void)setMetadataValue:(id)a3 forKey:(id)a4 completionHandler:(id)a5;
- (void)setTitle:(id)a3 ofTagWithID:(int64_t)a4 completionHandler:(id)a5;
- (void)startImportHistorySessionWithVisitTimePrecision:(unint64_t)a3 completionHandler:(id)a4;
- (void)updateDatabaseAfterSuccessfulSyncWithGeneration:(int64_t)a3 completionHandler:(id)a4;
- (void)updateVisitWithIdentifier:(id)a3 removeAttributes:(unint64_t)a4 addAttributes:(unint64_t)a5 completionHandler:(id)a6;
- (void)updateVisitWithIdentifier:(id)a3 title:(id)a4 completionHandler:(id)a5;
- (void)vacuumHistoryWithCompletionHandler:(id)a3;
- (void)visitIdentifiersMatchingExistingVisits:(id)a3 desiredVisitTimePrecision:(unint64_t)a4 completionHandler:(id)a5;
- (void)visitsAndTombstonesNeedingSyncWithVisitSyncWindow:(double)a3 completionHandler:(id)a4;
- (void)warmUp;
@end

@implementation WBSHistoryServiceDatabase

- (id).cxx_construct
{
  *(self + 104) = 0u;
  *(self + 88) = 0u;
  *(self + 30) = 1065353216;
  *(self + 136) = 0u;
  *(self + 152) = 0u;
  *(self + 42) = 1065353216;
  *(self + 11) = 0u;
  *(self + 12) = 0u;
  *(self + 52) = 1065353216;
  *(self + 224) = 0;
  return self;
}

- (WBSHistoryServiceDatabase)initWithID:(id)a3 url:(id)a4 options:(id)a5 fileOperationGroup:(id)a6 error:(id *)a7
{
  v56 = *MEMORY[0x1E69E9840];
  v42 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v51.receiver = self;
  v51.super_class = WBSHistoryServiceDatabase;
  v16 = [(WBSHistoryServiceDatabase *)&v51 init];
  if (v16)
  {
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create("com.apple.SafariShared.WBSHistoryServiceDatabase", v17);
    queue = v16->_queue;
    v16->_queue = v18;

    objc_storeStrong(&v16->_fileOperationGroup, a6);
    objc_storeStrong(&v16->_databaseID, a3);
    objc_storeStrong(&v16->_databaseURL, a4);
    objc_storeStrong(&v16->_databaseOptions, a5);
    v16->_currentRangeForTemporaryID = 1;
    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingVisits = v16->_pendingVisits;
    v16->_pendingVisits = v20;

    v22 = [MEMORY[0x1E695DF00] date];
    v23 = objc_alloc_init(WBSHistoryCrypto);
    crypto = v16->_crypto;
    v16->_crypto = v23;

    v25 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [v22 timeIntervalSinceNow];
      [WBSHistoryServiceDatabase initWithID:v26 url:? options:? fileOperationGroup:? error:?];
    }

    v27 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    delegates = v16->_delegates;
    v16->_delegates = v27;

    v29 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    listeners = v16->_listeners;
    v16->_listeners = v29;

    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v50 = 0;
    v31 = [MEMORY[0x1E695DF00] date];
    v32 = v16->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__WBSHistoryServiceDatabase_initWithID_url_options_fileOperationGroup_error___block_invoke;
    block[3] = &unk_1E7FC70F8;
    v45 = &v47;
    v33 = v16;
    v44 = v33;
    v46 = a7;
    dispatch_sync(v32, block);
    if (v48[3])
    {
      v34 = 0;
    }

    else
    {
      v35 = WBS_LOG_CHANNEL_PREFIXHistory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        [v31 timeIntervalSinceNow];
        *buf = 136446466;
        v53 = "database_total_opening";
        v54 = 2048;
        v55 = -v36;
        _os_log_impl(&dword_1BB6F3000, v35, OS_LOG_TYPE_INFO, "#perf - %{public}s: %f", buf, 0x16u);
      }

      v37 = [MEMORY[0x1E696AC08] defaultManager];
      v38 = [v37 safari_settingsDirectoryURL];
      v39 = [v38 URLByAppendingPathComponent:@"ClearHistoryInProgress" isDirectory:0];
      clearHistoryInProgressFileURL = v33->_clearHistoryInProgressFileURL;
      v33->_clearHistoryInProgressFileURL = v39;

      v34 = v33;
    }

    _Block_object_dispose(&v47, 8);
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

uint64_t __77__WBSHistoryServiceDatabase_initWithID_url_options_fileOperationGroup_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _prepareDatabase:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result ^ 1;
  return result;
}

- (void)dealloc
{
  v3 = self->_statements;
  v4 = self->_database;
  queue = self->_queue;
  fileOperationGroup = self->_fileOperationGroup;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__WBSHistoryServiceDatabase_dealloc__block_invoke;
  block[3] = &unk_1E7FB7F10;
  v11 = v3;
  v12 = v4;
  v7 = v4;
  v8 = v3;
  dispatch_group_async(fileOperationGroup, queue, block);

  v9.receiver = self;
  v9.super_class = WBSHistoryServiceDatabase;
  [(WBSHistoryServiceDatabase *)&v9 dealloc];
}

uint64_t __36__WBSHistoryServiceDatabase_dealloc__block_invoke(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(a1 + 40);

  return [v2 close];
}

- (void)forceCloseWithCompletionHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__WBSHistoryServiceDatabase_forceCloseWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7FB6F08;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

uint64_t __61__WBSHistoryServiceDatabase_forceCloseWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _closeTagController];
  [*(*(a1 + 32) + 56) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  *(v2 + 56) = 0;

  [*(*(a1 + 32) + 40) close];
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6 = *(*(a1 + 40) + 16);

  return v6();
}

- (BOOL)_prepareDatabase:(id *)a3
{
  v109 = *MEMORY[0x1E69E9840];
  v5 = [objc_alloc(MEMORY[0x1E69C89E8]) initWithURL:self->_databaseURL queue:self->_queue];
  database = self->_database;
  self->_database = v5;

  v58 = [MEMORY[0x1E695DF00] date];
  if (([(WBSSQLiteDatabase *)self->_database openWithAccessType:3 error:a3]& 1) != 0)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [v58 timeIntervalSinceNow];
      [WBSHistoryServiceDatabase _prepareDatabase:v8];
    }

    if ([(NSDictionary *)self->_databaseOptions safari_BOOLForKey:@"WBSHistoryConnectionOptionCheckIntegrity"])
    {
      v59 = [MEMORY[0x1E695DF00] date];
      v9 = [(WBSSQLiteDatabase *)self->_database checkIntegrity];
      v10 = v9;
      if (v9)
      {
        if (a3)
        {
          v11 = v9;
          *a3 = v10;
        }

        v12 = WBS_LOG_CHANNEL_PREFIXHistory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [v10 safari_privacyPreservingDescription];
          objc_claimAutoreleasedReturnValue();
          [WBSHistoryServiceDatabase _prepareDatabase:];
        }

        [(WBSSQLiteDatabase *)self->_database close];
        v13 = 0;
LABEL_55:

        goto LABEL_56;
      }

      v15 = WBS_LOG_CHANNEL_PREFIXHistory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [v59 timeIntervalSinceNow];
        [WBSHistoryServiceDatabase _prepareDatabase:v16];
      }
    }

    v17 = self->_database;
    v64 = 0;
    v18 = [(WBSSQLiteDatabase *)v17 enableWAL:&v64];
    v59 = v64;
    if (v18)
    {
      [MEMORY[0x1E695DF00] date];
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v57 = v61 = 0u;
      v19 = [&unk_1F3A9B240 countByEnumeratingWithState:&v60 objects:v108 count:16];
      if (v19)
      {
        v20 = *v61;
        while (2)
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v61 != v20)
            {
              objc_enumerationMutation(&unk_1F3A9B240);
            }

            v22 = *(*(&v60 + 1) + 8 * i);
            v23 = [v22 objectAtIndexedSubscript:0];
            v24 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, v23);
            v25 = [v22 objectAtIndexedSubscript:1];
            v26 = v24 == [v25 intValue];

            if (!v26)
            {
              v46 = WBS_LOG_CHANNEL_PREFIXHistory();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
              {
                databaseURL = self->_databaseURL;
                v52 = [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
                *buf = 138544643;
                *&buf[4] = v23;
                *&buf[12] = 2113;
                *v78 = databaseURL;
                *&v78[8] = 1024;
                *v79 = v24;
                *&v79[4] = 2080;
                *&v79[6] = "[WBSHistoryServiceDatabase _prepareDatabase:]";
                *&v79[14] = 2114;
                *&v79[16] = v52;
                *&v79[24] = 1024;
                *&v79[26] = v24;
                _os_log_error_impl(&dword_1BB6F3000, v46, OS_LOG_TYPE_ERROR, "Failed to set pragma %{public}@ for History store at URL: %{private}@ with error: %d: %s %{public}@ (%d)", buf, 0x36u);
              }

              [(WBSSQLiteDatabase *)self->_database close];
              goto LABEL_53;
            }
          }

          v19 = [&unk_1F3A9B240 countByEnumeratingWithState:&v60 objects:v108 count:16];
          if (v19)
          {
            continue;
          }

          break;
        }
      }

      v27 = WBS_LOG_CHANNEL_PREFIXHistory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        [v57 timeIntervalSinceNow];
        [WBSHistoryServiceDatabase _prepareDatabase:v28];
      }

      v23 = [MEMORY[0x1E695DF00] date];
      v29 = 0;
      *buf = "safari_sha512";
      *&buf[8] = 2;
      *&v78[2] = WBSSQLiteSHA512;
      *v79 = 0;
      *&v79[8] = 0;
      *&v79[16] = "safari_domainexpansion";
      *&v79[24] = 1;
      v80 = WBSSQLiteExtractDomainExpansion;
      v81 = 0;
      v82 = 0;
      v83 = "safari_hostname";
      v84 = 1;
      v85 = WBSSQLiteExtractHostname;
      v86 = 0;
      v87 = 0;
      v88 = "safari_high_level_domain";
      v89 = 1;
      v90 = WBSSQLiteExtractHighLevelDomain;
      v91 = 0;
      v92 = 0;
      v93 = "safari_visit_score";
      v94 = 2;
      v95 = WBSSQLiteVisitScore;
      v96 = 0;
      v97 = 0;
      v98 = "safari_compute_daily_visit_counts";
      v99 = 4;
      v100 = 0;
      v101 = WBSSQLiteDailyVisitCountsStep;
      v102 = WBSSQLiteDailyVisitCountsFinal;
      v103 = "safari_compute_weekly_visit_counts";
      v104 = 4;
      v105 = 0;
      v106 = WBSSQLiteWeeklyVisitCountsStep;
      v107 = WBSSQLiteWeeklyVisitCountsFinal;
      while (1)
      {
        v30 = *&buf[v29];
        function_v2 = sqlite3_create_function_v2([(WBSSQLiteDatabase *)self->_database handle], v30, *&buf[v29 + 8], 2049, 0, *&v78[v29 + 2], *&v79[v29], *&v79[v29 + 8], 0);
        if (function_v2)
        {
          break;
        }

        v29 += 40;
        if (v29 == 280)
        {
          v32 = WBS_LOG_CHANNEL_PREFIXHistory();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            [v23 timeIntervalSinceNow];
            [WBSHistoryServiceDatabase _prepareDatabase:v33];
          }

          v34 = [MEMORY[0x1E695DF00] date];
          v35 = [(WBSHistoryServiceDatabase *)self _migrateToCurrentSchemaVersionIfNeeded];
          v13 = v35 == 16;
          if (v35 == 16)
          {
            v36 = WBS_LOG_CHANNEL_PREFIXHistory();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
            {
              [v34 timeIntervalSinceNow];
              [WBSHistoryServiceDatabase _prepareDatabase:v37];
            }

            v38 = objc_alloc_init(WBSHistoryServiceURLCompletion);
            urlCompletion = self->_urlCompletion;
            self->_urlCompletion = v38;

            v40 = [objc_alloc(MEMORY[0x1E69C89F8]) initWithDatabase:self->_database];
            statements = self->_statements;
            self->_statements = v40;

            [(WBSSQLiteDatabase *)self->_database setDelegate:self];
            [(WBSHistoryServiceDatabase *)self _registerHistoryTagFrecencyScoringFunction];
            v42 = [[WBSHistoryTagDatabaseController alloc] initWithDatabase:self->_database];
            tagController = self->_tagController;
            self->_tagController = v42;

            [(WBSHistoryServiceDatabase *)self warmUp];
          }

          else
          {
            v49 = WBS_LOG_CHANNEL_PREFIXHistory();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
            {
              v55 = self->_databaseURL;
              v56 = [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
              *buf = 67110403;
              *&buf[4] = v35;
              *&buf[8] = 1024;
              *&buf[10] = 16;
              *v78 = 2113;
              *&v78[2] = v55;
              *v79 = 2080;
              *&v79[2] = "[WBSHistoryServiceDatabase _prepareDatabase:]";
              *&v79[10] = 2114;
              *&v79[12] = v56;
              *&v79[20] = 1024;
              *&v79[22] = 0;
              _os_log_error_impl(&dword_1BB6F3000, v49, OS_LOG_TYPE_ERROR, "History store schema version (%d) does not match our supported schema version (%d) in store at %{private}@: %s %{public}@ (%d)", buf, 0x32u);
            }

            [(WBSSQLiteDatabase *)self->_database close];
          }

          goto LABEL_54;
        }
      }

      v47 = WBS_LOG_CHANNEL_PREFIXHistory();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v53 = self->_databaseURL;
        v54 = [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
        *v65 = 136447491;
        v66 = v30;
        v67 = 2113;
        v68 = v53;
        v69 = 1024;
        v70 = function_v2;
        v71 = 2080;
        v72 = "[WBSHistoryServiceDatabase _prepareDatabase:]";
        v73 = 2114;
        v74 = v54;
        v75 = 1024;
        v76 = function_v2;
        _os_log_error_impl(&dword_1BB6F3000, v47, OS_LOG_TYPE_ERROR, "Failed to create function: %{public}s for History store at URL: %{private}@ with error: %d: %s %{public}@ (%d)", v65, 0x36u);
      }

      [(WBSSQLiteDatabase *)self->_database close];
LABEL_53:
      v13 = 0;
LABEL_54:

      v10 = v57;
      goto LABEL_55;
    }

    v44 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      [v59 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      [WBSHistoryServiceDatabase _prepareDatabase:];
    }

    if (a3)
    {
      v45 = v59;
      *a3 = v59;
    }

    [(WBSSQLiteDatabase *)self->_database close];
  }

  else
  {
    if (a3)
    {
      v59 = *a3;
    }

    else
    {
      v59 = 0;
    }

    v14 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [v59 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      [WBSHistoryServiceDatabase _prepareDatabase:];
    }

    [(WBSSQLiteDatabase *)self->_database close];
  }

  v13 = 0;
LABEL_56:

  return v13;
}

- (void)_registerHistoryTagFrecencyScoringFunction
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_ERROR, "Failed to create a frecency sorting function with error code: %d", v2, 8u);
}

- (BOOL)_reopenDatabase:(id *)a3
{
  [(WBSSQLiteStatementCache *)self->_statements invalidate];
  statements = self->_statements;
  self->_statements = 0;

  [(WBSSQLiteDatabase *)self->_database close];
  database = self->_database;
  self->_database = 0;

  SafariShared::LatestVisitInformationMap::clear(&self->_latestVisitMap);
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::clear(&self->_temporaryIDToItem.__table_.__bucket_list_.__ptr_);
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::clear(&self->_visitForTemporaryID.__table_.__bucket_list_.__ptr_);
  self->_hasComputedLatestVisit = 0;
  [(WBSHistoryServiceDatabase *)self _closeTagController];

  return [(WBSHistoryServiceDatabase *)self _prepareDatabase:a3];
}

- (int)_migrateToCurrentSchemaVersionIfNeeded
{
  v3 = [WBSHistorySQLiteSchema alloc];
  crypto = self->_crypto;
  database = self->_database;
  v6 = [(NSDictionary *)self->_databaseOptions safari_dateForKey:@"WBSHistoryConnectionOptionLegacyDatabaseImportAfterDate"];
  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x1E695DF00] distantPast];
  }

  v8 = [(WBSHistorySQLiteSchema *)v3 initWithDatabase:database crypto:crypto migrateVisitsAfterDate:v7];
  if (!v6)
  {
  }

  v9 = [(WBSHistorySQLiteSchema *)v8 migrateToCurrentSchemaVersionIfNeeded];
  return v9;
}

- (int64_t)allocateTemporaryIDRange:(int64_t *)a3
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__WBSHistoryServiceDatabase_allocateTemporaryIDRange___block_invoke;
  block[3] = &unk_1E7FC7120;
  block[4] = self;
  block[5] = &v12;
  block[6] = &v8;
  dispatch_sync(queue, block);
  *a3 = v9[3];
  v5 = v13[3];
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v5;
}

void *__54__WBSHistoryServiceDatabase_allocateTemporaryIDRange___block_invoke(void *result)
{
  *(*(result[5] + 8) + 24) = ((*(result[4] + 24))++ << 47) | 0x8000000000000000;
  *(*(result[6] + 8) + 24) = (*(result[4] + 24) << 47) | 0x8000000000000000;
  return result;
}

- (void)addDelegate:(id)a3 listenerName:(id)a4 forConnection:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __68__WBSHistoryServiceDatabase_addDelegate_listenerName_forConnection___block_invoke;
  v15[3] = &unk_1E7FC5D00;
  v15[4] = self;
  v16 = v8;
  v17 = v10;
  v18 = v9;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  dispatch_async(queue, v15);
}

id __68__WBSHistoryServiceDatabase_addDelegate_listenerName_forConnection___block_invoke(void *a1)
{
  result = [*(a1[4] + 64) setObject:a1[5] forKey:a1[6]];
  v3 = a1[7];
  if (v3)
  {
    [*(a1[4] + 72) setObject:v3 forKey:a1[6]];
    v4 = a1[4];
    v5 = a1[7];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    return [v4 _updateListenerRegistration:v5 lastSeen:?];
  }

  return result;
}

- (void)_closeTagController
{
  tagController = self->_tagController;
  self->_tagController = 0;
}

- (void)database:(id)a3 hadSevereError:(id)a4
{
  v5 = a4;
  v6 = v5;
  v7 = 0;
  atomic_compare_exchange_strong(&self->_integrityCheckPending.__a_.__a_value, &v7, 1u);
  if (!v7)
  {
    queue = self->_queue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __53__WBSHistoryServiceDatabase_database_hadSevereError___block_invoke;
    v9[3] = &unk_1E7FB7F10;
    v9[4] = self;
    v10 = v5;
    dispatch_async(queue, v9);
  }
}

void __53__WBSHistoryServiceDatabase_database_hadSevereError___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v1 = (a1 + 32);
  atomic_store(0, (*(a1 + 32) + 224));
  [*(*(a1 + 32) + 40) setDelegate:0];
  v2 = [*(*v1 + 40) checkIntegrity];

  v3 = *v1;
  if (v2)
  {
    [*(v3 + 56) invalidate];
    v4 = *(a1 + 32);
    v5 = *(v4 + 56);
    *(v4 + 56) = 0;

    [*(*(a1 + 32) + 40) close];
    v6 = *(a1 + 32);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;

    [*(a1 + 32) _closeTagController];
    v8 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [*(a1 + 40) safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __53__WBSHistoryServiceDatabase_database_hadSevereError___block_invoke_cold_1();
    }

    v9 = dispatch_group_create();
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v10 = [*(*(a1 + 32) + 64) objectEnumerator];
    v11 = [v10 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v11)
    {
      v12 = *v36;
      do
      {
        v13 = 0;
        do
        {
          if (*v36 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v35 + 1) + 8 * v13);
          dispatch_group_enter(v9);
          v15 = *(a1 + 40);
          v33[0] = MEMORY[0x1E69E9820];
          v33[1] = 3221225472;
          v33[2] = __53__WBSHistoryServiceDatabase_database_hadSevereError___block_invoke_36;
          v33[3] = &unk_1E7FB6F80;
          v34 = v9;
          [v14 reportSevereError:v15 completionHandler:v33];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v10 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v11);
    }

    v16 = dispatch_time(0, 5000000000);
    dispatch_group_wait(v9, v16);
    v17 = *(a1 + 32);
    v32 = 0;
    v18 = [v17 _reopenDatabase:&v32];
    v19 = v32;
    if ((v18 & 1) == 0)
    {
      v20 = WBS_LOG_CHANNEL_PREFIXHistory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [v19 safari_privacyPreservingDescription];
        objc_claimAutoreleasedReturnValue();
        __53__WBSHistoryServiceDatabase_database_hadSevereError___block_invoke_cold_2();
      }

      v21 = WBS_LOG_CHANNEL_PREFIXHistory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BB6F3000, v21, OS_LOG_TYPE_DEFAULT, "Falling back to in-memory database", buf, 2u);
      }

      v22 = WBSHistoryInMemoryDatabaseURL();
      v23 = *(a1 + 32);
      v24 = *(v23 + 264);
      *(v23 + 264) = v22;

      v25 = *(a1 + 32);
      v31 = 0;
      v26 = [v25 _reopenDatabase:&v31];
      v27 = v31;
      if ((v26 & 1) == 0)
      {
        v28 = WBS_LOG_CHANNEL_PREFIXHistory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [v19 safari_privacyPreservingDescription];
          objc_claimAutoreleasedReturnValue();
          __53__WBSHistoryServiceDatabase_database_hadSevereError___block_invoke_cold_3();
        }
      }
    }
  }

  else
  {
    v29 = *(v3 + 40);

    [v29 setDelegate:?];
  }
}

- (void)warmUp
{
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __35__WBSHistoryServiceDatabase_warmUp__block_invoke;
  activity_block[3] = &unk_1E7FB6F80;
  activity_block[4] = self;
  _os_activity_initiate(&dword_1BB6F3000, "Warm Up", OS_ACTIVITY_FLAG_DETACHED, activity_block);
}

void __35__WBSHistoryServiceDatabase_warmUp__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__WBSHistoryServiceDatabase_warmUp__block_invoke_2;
  block[3] = &unk_1E7FB6F80;
  block[4] = v1;
  v3 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, block);
  dispatch_async(v2, v3);
}

- (id)_ensureLatestVisitsAreComputed
{
  if (self->_hasComputedLatestVisit)
  {
    v2 = 0;
  }

  else
  {
    function_v2 = sqlite3_create_function_v2([(WBSSQLiteDatabase *)self->_database handle], "safari_compute_latest_visit_map", 4, 5, &self->_latestVisitMap, 0, WBSSQLiteComputeLatestVisitStep, WBSSQLiteComputeLatestVisitFinal, 0);
    database = self->_database;
    if (function_v2 || (v6 = sqlite3_create_function_v2([(WBSSQLiteDatabase *)database handle], "safari_latest_visit_for", 1, 5, &self->_latestVisitMap, WBSSQLiteLatestVisitFor, 0, 0, 0), database = self->_database, v6))
    {
      v2 = [(WBSSQLiteDatabase *)database lastErrorWithMethodName:"[WBSHistoryServiceDatabase _ensureLatestVisitsAreComputed]"];
    }

    else
    {
      v8 = SafariShared::WBSSQLiteDatabaseFetch<>(database, @"SELECT safari_compute_latest_visit_map(history_item, id, visit_time, synthesized) FROM history_visits");
      v9 = [v8 nextObject];
      if (v9 || [v8 lastResultCode] == 101)
      {
        v2 = 0;
        self->_hasComputedLatestVisit = 1;
      }

      else
      {
        v2 = [(WBSSQLiteDatabase *)self->_database lastErrorWithMethodName:"[WBSHistoryServiceDatabase _ensureLatestVisitsAreComputed]"];
      }
    }
  }

  return v2;
}

- (void)ensureLatestVisitsAreComputed:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_hasComputedLatestVisit)
  {
    (*(v4 + 2))(v4, 0);
  }

  else
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59__WBSHistoryServiceDatabase_ensureLatestVisitsAreComputed___block_invoke;
    v7[3] = &unk_1E7FB6F08;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

void __59__WBSHistoryServiceDatabase_ensureLatestVisitsAreComputed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _ensureLatestVisitsAreComputed];
  v3 = qos_class_self();
  v4 = dispatch_get_global_queue(v3, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__WBSHistoryServiceDatabase_ensureLatestVisitsAreComputed___block_invoke_2;
  v7[3] = &unk_1E7FB6BC0;
  v5 = *(a1 + 40);
  v8 = v2;
  v9 = v5;
  v6 = v2;
  dispatch_async(v4, v7);
}

- (unordered_map<long)_recomputeLatestVisitsForItems:(std:(std:(std:(long long>>> *__return_ptr)retstr :(WBSHistoryServiceDatabase *)self allocator<std:(SEL)a3 :(const void *)a4 pair<const long)long :(id *)a5 equal_to<long)long> :hash<long)long> error:
{
  v26 = *MEMORY[0x1E69E9840];
  if (self->_hasComputedLatestVisit)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *(a4 + 3);
      *buf = 134217984;
      *&buf[4] = v10;
      _os_log_impl(&dword_1BB6F3000, v9, OS_LOG_TYPE_INFO, "Recomputing latest visits for %zu items", buf, 0xCu);
    }

    *buf = 0u;
    v24 = 0u;
    v25 = 1065353216;
    std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__rehash<true>(buf, *(a4 + 3));
    SafariShared::LatestVisitInformationMap::lastVisitsForItems(&self->_latestVisitMap._map.__table_.__bucket_list_.__ptr_, a4, buf);
    SafariShared::LatestVisitInformationMap::removeItems(&self->_latestVisitMap, a4);
    database = self->_database;
    v12 = createQueryWithList(@"SELECT safari_compute_latest_visit_map(history_item, id, visit_time, synthesized) FROM history_visits WHERE history_item IN ("), a4, CFSTR(")");
    v13 = SafariShared::WBSSQLiteDatabaseFetch<>(database, v12);

    v14 = [v13 nextObject];
    if (!v14 && [v13 lastResultCode] != 101)
    {
      if (a5)
      {
        *a5 = [(WBSSQLiteDatabase *)self->_database lastErrorWithMethodName:"[WBSHistoryServiceDatabase _recomputeLatestVisitsForItems:error:]"];
      }

      else
      {
        v17 = WBS_LOG_CHANNEL_PREFIXHistory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [(WBSSQLiteDatabase *)self->_database lastErrorWithMethodName:"[WBSHistoryServiceDatabase _recomputeLatestVisitsForItems:error:]"];
          [objc_claimAutoreleasedReturnValue() safari_privacyPreservingDescription];
          objc_claimAutoreleasedReturnValue();
          [WBSHistoryServiceDatabase _recomputeLatestVisitsForItems:error:];
        }
      }
    }

    retstr->__table_.__bucket_list_ = 0u;
    *&retstr->__table_.__first_node_.__next_ = 0u;
    retstr->__table_.__max_load_factor_ = 1.0;
    for (i = v24; i; i = *i)
    {
      v19 = i[2];
      v20 = i[3];
      VisitID = SafariShared::LatestVisitInformationMap::lastVisitID(&self->_latestVisitMap, v19);
      if (VisitID != v20)
      {
        v22[0] = v19;
        v22[1] = VisitID;
        std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__emplace_unique_key_args<long long,std::pair<long long,long long>>(retstr, v22);
      }
    }

    return std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(buf);
  }

  else
  {
    if (a5)
    {
      *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    }

    v15 = WBS_LOG_CHANNEL_PREFIXHistory();
    result = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (result)
    {
      [WBSHistoryServiceDatabase _recomputeLatestVisitsForItems:error:];
    }

    retstr->__table_.__bucket_list_ = 0u;
    *&retstr->__table_.__first_node_.__next_ = 0u;
    retstr->__table_.__max_load_factor_ = 1.0;
  }

  return result;
}

- (id)_fetchVisitsWithOptions:(unint64_t)a3 predicate:(id)a4 writeDescriptor:(int)a5
{
  v6 = a3;
  v84 = *MEMORY[0x1E69E9840];
  v8 = a4;
  database = self->_database;
  statements = self->_statements;
  v79 = 0;
  v58 = v8;
  v11 = [v8 statementForDatabase:database cache:statements fetchOptions:v6 & 0x2B error:&v79];
  v12 = v79;
  if (!v11)
  {
    v18 = v12;
    goto LABEL_109;
  }

  v56 = v12;
  v78.var0.var0 = 1;
  v77.var0.var0 = 2;
  memset(v75, 0, sizeof(v75));
  v76 = 1065353216;
  memset(v73, 0, sizeof(v73));
  v74 = 1065353216;
  v70 = 0u;
  v71 = 0u;
  v72 = 1065353216;
  v13 = SafariShared::LatestVisitInformationMap::size(&self->_latestVisitMap);
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__rehash<true>(v75, vcvtps_u32_f32(v13 / 1.0));
  v14 = SafariShared::LatestVisitInformationMap::size(&self->_latestVisitMap);
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__rehash<true>(v73, vcvtps_u32_f32(v14 / 1.0));
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  SafariShared::HistoryObjectStreamWriter::HistoryObjectStreamWriter(v69, a5);
  v15 = [v11 handle];
  if (v6)
  {
    v16 = 10;
  }

  else
  {
    v16 = 0;
  }

  if ([v58 conformsToProtocol:{&unk_1F3AE7538, v56}])
  {
    v17 = v58;
  }

  else
  {
    v17 = 0;
  }

  while (sqlite3_step(v15) == 100)
  {
    if (v6)
    {
      v78.var1 = sqlite3_column_int64(v15, 0);
      v78.var6 = sqlite3_column_text(v15, 1);
      v78.var2 = sqlite3_column_int64(v15, 3);
      v78.var7 = sqlite3_column_blob(v15, 4);
      v78.var8 = sqlite3_column_bytes(v15, 4);
      v78.var9 = sqlite3_column_blob(v15, 5);
      v78.var10 = sqlite3_column_bytes(v15, 5);
      v78.var4 = sqlite3_column_int64(v15, 7);
      v78.var3 = sqlite3_column_int64(v15, 8);
      v78.var5 = sqlite3_column_int64(v15, 9);
      if (!v78.var6)
      {
        v19 = WBS_LOG_CHANNEL_PREFIXHistory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
        {
          [WBSHistoryServiceDatabase _fetchVisitsWithOptions:v68 predicate:v19 writeDescriptor:?];
        }
      }

      if (!SafariShared::HistoryObjectStreamWriter::write(v69, &v78))
      {
        v20 = WBS_LOG_CHANNEL_PREFIXHistory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [WBSHistoryServiceDatabase _fetchVisitsWithOptions:predicate:writeDescriptor:];
        }

        break;
      }
    }

    initializeStreamedHistoryVisitFromSQLiteRow(v15, &v77, v16);
    if (!v17 || [v17 evaluateHistoryStreamedVisit:&v77])
    {
      if (!SafariShared::HistoryObjectStreamWriter::write(v69, &v77))
      {
        break;
      }

      std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(v75, &v78.var1);
      std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(v73, &v77.var1);
      std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__erase_unique<long long>(&v70, &v77.var1);
      if ((v6 & 0x10) != 0)
      {
        if (v77.var8 && !std::__hash_table<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>>>::find<long long>(v73, &v77.var8))
        {
          std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(&v70, &v77.var8);
        }

        if (v77.var9)
        {
          if (!std::__hash_table<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>>>::find<long long>(v73, &v77.var9))
          {
            std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(&v70, &v77.var9);
          }
        }
      }
    }
  }

  [v11 reset];
  if ((v6 & 0x10) != 0)
  {
    v21 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:self->_database query:{@"SELECT * FROM history_visits WHERE id IN (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"}];

    if (!v21)
    {
      v55 = WBS_LOG_CHANNEL_PREFIXHistory();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        [(WBSSQLiteDatabase *)self->_database lastErrorWithMethodName:"[WBSHistoryServiceDatabase _fetchVisitsWithOptions:predicate:writeDescriptor:]"];
        [objc_claimAutoreleasedReturnValue() safari_privacyPreservingDescription];
        objc_claimAutoreleasedReturnValue();
        [WBSHistoryServiceDatabase _fetchVisitsWithOptions:predicate:writeDescriptor:];
      }

      v11 = 0;
      v18 = [(WBSSQLiteDatabase *)self->_database lastErrorWithMethodName:"[WBSHistoryServiceDatabase _fetchVisitsWithOptions:predicate:writeDescriptor:]"];
      goto LABEL_108;
    }

    v11 = v21;
    v22 = [v21 handle];
    v81 = 0u;
    v82 = 0u;
    v83 = 1065353216;
    v64 = 0u;
    v65 = 0u;
    v66 = 1065353216;
    v61 = 0u;
    v62 = 0u;
    v63 = 1065353216;
    std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__rehash<true>(&v61, 0x18uLL);
    if (*(&v71 + 1))
    {
      while (1)
      {
        std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::clear(&v61);
        v23 = v71;
        if (!v71)
        {
          break;
        }

        v24 = 0;
        do
        {
          sqlite3_bind_int64(v22, v24 + 1, v23[2]);
          std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(&v61, v23 + 2);
          if (++v24 > 0x17)
          {
            break;
          }

          v23 = *v23;
        }

        while (v23);
        if (v24 < 0x18)
        {
          k = v24 + 1;
          goto LABEL_37;
        }

LABEL_38:
        for (i = 0; ; --i)
        {
          v27 = sqlite3_step(v22);
          if (v27 != 100)
          {
            v28 = i != 0;
            goto LABEL_54;
          }

          v77.var2 = sqlite3_column_int64(v22, 1);
          v77.var1 = sqlite3_column_int64(v22, 0);
          v77.var3 = sqlite3_column_double(v22, 2);
          v77.var13 = sqlite3_column_text(v22, 3);
          v77.var4 = sqlite3_column_int64(v22, 4);
          v77.var5 = sqlite3_column_int64(v22, 5);
          v77.var6 = sqlite3_column_int64(v22, 6);
          v77.var8 = sqlite3_column_int64(v22, 7);
          v77.var9 = sqlite3_column_int64(v22, 8);
          v77.var10 = sqlite3_column_int64(v22, 9);
          v77.var11 = sqlite3_column_int64(v22, 10);
          v77.var12 = sqlite3_column_int64(v22, 11);
          v77.var7 = sqlite3_column_int64(v22, 12);
          if (!SafariShared::HistoryObjectStreamWriter::write(v69, &v77))
          {
            break;
          }

          std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(v73, &v77.var1);
          std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__erase_unique<long long>(&v70, &v77.var1);
          if (v77.var8 && !std::__hash_table<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>>>::find<long long>(v73, &v77.var8))
          {
            std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(&v70, &v77.var8);
          }

          if (v77.var9 && !std::__hash_table<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>>>::find<long long>(v73, &v77.var9))
          {
            std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(&v70, &v77.var9);
          }

          if (!std::__hash_table<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>>>::find<long long>(v75, &v77.var2))
          {
            std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(&v81, &v77.var2);
          }
        }

        v29 = WBS_LOG_CHANNEL_PREFIXHistory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          [WBSHistoryServiceDatabase _fetchVisitsWithOptions:v60 predicate:v29 writeDescriptor:?];
        }

        v28 = 1;
LABEL_54:
        sqlite3_reset(v22);
        v30 = v62;
        if (v62)
        {
          v31 = v28;
        }

        else
        {
          v31 = 1;
        }

        if ((v31 & 1) == 0)
        {
          do
          {
            std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(&v64, v30 + 2);
            v30 = *v30;
          }

          while (v30);
          v32 = v62;
          if (v62)
          {
            do
            {
              std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(v73, v32 + 2);
              v32 = *v32;
            }

            while (v32);
            for (j = v62; j; j = *j)
            {
              v80[0] = j[2];
              std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__erase_unique<long long>(&v70, v80);
            }
          }
        }

        if (!*(&v71 + 1) || v27 == 100)
        {
          goto LABEL_65;
        }
      }

      for (k = 1; k != 25; ++k)
      {
LABEL_37:
        sqlite3_bind_int64(v22, k, -1);
      }

      goto LABEL_38;
    }

LABEL_65:
    [v11 reset];
    if (*(&v82 + 1) | *(&v65 + 1))
    {
      v34 = WBS_LOG_CHANNEL_PREFIXHistory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [WBSHistoryServiceDatabase _fetchVisitsWithOptions:predicate:writeDescriptor:];
      }

      if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"PRAGMA foreign_keys = OFF") != 101)
      {
        v35 = WBS_LOG_CHANNEL_PREFIXHistory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
          objc_claimAutoreleasedReturnValue();
          [WBSHistoryServiceDatabase _fetchVisitsWithOptions:predicate:writeDescriptor:];
        }
      }

      if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"BEGIN TRANSACTION") != 101)
      {
        v36 = WBS_LOG_CHANNEL_PREFIXHistory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
          objc_claimAutoreleasedReturnValue();
          [WBSHistoryServiceDatabase _fetchVisitsWithOptions:predicate:writeDescriptor:];
        }
      }

      if (*(&v82 + 1))
      {
        v37 = self->_database;
        v38 = createQueryWithList(@"UPDATE history_visits SET redirect_source = NULL WHERE redirect_source IN (SELECT id FROM history_visits WHERE history_item IN ("), &v81, CFSTR("))");
        LODWORD(v37) = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(v37, 0, v38);

        if (v37 != 101)
        {
          v39 = WBS_LOG_CHANNEL_PREFIXHistory();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
            objc_claimAutoreleasedReturnValue();
            [WBSHistoryServiceDatabase _fetchVisitsWithOptions:predicate:writeDescriptor:];
          }
        }

        v40 = self->_database;
        v41 = createQueryWithList(@"UPDATE history_visits SET redirect_destination = NULL WHERE redirect_destination IN (SELECT id FROM history_visits WHERE history_item IN ("), &v81, CFSTR("))");
        LODWORD(v40) = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(v40, 0, v41);

        if (v40 != 101)
        {
          v42 = WBS_LOG_CHANNEL_PREFIXHistory();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
            objc_claimAutoreleasedReturnValue();
            [WBSHistoryServiceDatabase _fetchVisitsWithOptions:predicate:writeDescriptor:];
          }
        }

        v43 = self->_database;
        v44 = createQueryWithList(@"DELETE FROM history_visits WHERE history_item IN ("), &v81, CFSTR(")");
        LODWORD(v43) = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(v43, 0, v44);

        if (v43 != 101)
        {
          v45 = WBS_LOG_CHANNEL_PREFIXHistory();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
            objc_claimAutoreleasedReturnValue();
            [WBSHistoryServiceDatabase _fetchVisitsWithOptions:predicate:writeDescriptor:];
          }
        }
      }

      if (*(&v65 + 1))
      {
        v46 = self->_database;
        v47 = createQueryWithList(@"UPDATE history_visits SET redirect_source = NULL WHERE redirect_source IN ("), &v64, CFSTR(")");
        LODWORD(v46) = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(v46, 0, v47);

        if (v46 != 101)
        {
          v48 = WBS_LOG_CHANNEL_PREFIXHistory();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
            objc_claimAutoreleasedReturnValue();
            [WBSHistoryServiceDatabase _fetchVisitsWithOptions:predicate:writeDescriptor:];
          }
        }

        v49 = self->_database;
        v50 = createQueryWithList(@"UPDATE history_visits SET redirect_destination = NULL WHERE redirect_destination IN ("), &v64, CFSTR(")");
        LODWORD(v49) = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(v49, 0, v50);

        if (v49 != 101)
        {
          v51 = WBS_LOG_CHANNEL_PREFIXHistory();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
            objc_claimAutoreleasedReturnValue();
            [WBSHistoryServiceDatabase _fetchVisitsWithOptions:predicate:writeDescriptor:];
          }
        }
      }

      if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"COMMIT TRANSACTION") != 101)
      {
        v52 = WBS_LOG_CHANNEL_PREFIXHistory();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
          objc_claimAutoreleasedReturnValue();
          [WBSHistoryServiceDatabase _fetchVisitsWithOptions:predicate:writeDescriptor:];
        }
      }

      if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"PRAGMA foreign_keys = ON") != 101)
      {
        v53 = WBS_LOG_CHANNEL_PREFIXHistory();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
          objc_claimAutoreleasedReturnValue();
          [WBSHistoryServiceDatabase _fetchVisitsWithOptions:predicate:writeDescriptor:];
        }
      }
    }

    std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(&v61);
    std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(&v64);
    std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(&v81);
  }

  v18 = 0;
LABEL_108:

  SafariShared::HistoryObjectStreamWriter::~HistoryObjectStreamWriter(v69);
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(&v70);
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v73);
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v75);

LABEL_109:

  return v18;
}

- (id)_fetchTagsWithOptions:(unint64_t)a3 predicate:(id)a4 writeDescriptor:(int)a5
{
  v7 = a4;
  database = self->_database;
  statements = self->_statements;
  v22 = 0;
  v10 = [v7 statementForDatabase:database cache:statements fetchOptions:32 error:&v22];
  v11 = v22;
  if (v10)
  {
    LODWORD(v16) = 7;
    SafariShared::HistoryObjectStreamWriter::HistoryObjectStreamWriter(v15, a5);
    v12 = [v10 handle];
    do
    {
      if (sqlite3_step(v12) != 100)
      {
        break;
      }

      *(&v16 + 1) = sqlite3_column_int64(v12, 0);
      v17 = sqlite3_column_int64(v12, 1);
      v18 = sqlite3_column_int64(v12, 2);
      v19 = sqlite3_column_text(v12, 3);
      v20 = sqlite3_column_text(v12, 4);
      v21 = sqlite3_column_double(v12, 5);
    }

    while (SafariShared::HistoryObjectStreamWriter::write(v15, &v16));
    [v10 reset];
    SafariShared::HistoryObjectStreamWriter::~HistoryObjectStreamWriter(v15);
    v13 = v11;
    v11 = 0;
  }

  else
  {
    v13 = 0;
  }

  return v11;
}

- (id)_fetchObjectToTagMappingsWithOptions:(unint64_t)a3 predicate:(id)a4 writeDescriptor:(int)a5
{
  v8 = a4;
  database = self->_database;
  statements = self->_statements;
  v20 = 0;
  v11 = [v8 statementForDatabase:database cache:statements fetchOptions:a3 error:&v20];
  v12 = v20;
  if (v11)
  {
    LODWORD(v17) = 8;
    SafariShared::HistoryObjectStreamWriter::HistoryObjectStreamWriter(v16, a5);
    v13 = [v11 handle];
    do
    {
      if (sqlite3_step(v13) != 100)
      {
        break;
      }

      *(&v17 + 1) = sqlite3_column_int64(v13, 0);
      v18 = sqlite3_column_int64(v13, 1);
      v19 = sqlite3_column_double(v13, 2);
    }

    while (SafariShared::HistoryObjectStreamWriter::write(v16, &v17));
    [v11 reset];
    SafariShared::HistoryObjectStreamWriter::~HistoryObjectStreamWriter(v16);
    v14 = v12;
    v12 = 0;
  }

  else
  {
    v14 = 0;
  }

  return v12;
}

- (void)fetchWithOptions:(unint64_t)a3 predicate:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy__23;
  v15[4] = __Block_byref_object_dispose__23;
  v16 = MEMORY[0x1BFB13CE0](a5);
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__WBSHistoryServiceDatabase_fetchWithOptions_predicate_completionHandler___block_invoke;
  v11[3] = &unk_1E7FC7148;
  v13 = v15;
  v14 = a3;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  dispatch_async(queue, v11);

  _Block_object_dispose(v15, 8);
}

void __74__WBSHistoryServiceDatabase_fetchWithOptions_predicate_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureDatabaseIsSynced];
  v2 = [*(a1 + 32) _ensureLatestVisitsAreComputed];
  if (v2)
  {
    v29 = v2;
    (*(*(*(*(a1 + 48) + 8) + 40) + 16))();
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }

  else
  {
    v33 = 0;
    v34 = 0;
    v5 = SafariShared::HistoryObjectStreamWriter::createPipeHandles(&v34, &v33);
    v6 = v34;
    v7 = v33;
    if (v5)
    {
      (*(*(*(*(a1 + 48) + 8) + 40) + 16))();
      v8 = *(*(a1 + 48) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = 0;
    }

    else if ((*(a1 + 56) & 0xE3) != 0)
    {
      v10 = [WBSScopeTimeoutHandler alloc];
      v11 = [*(a1 + 40) description];
      v5 = [(WBSScopeTimeoutHandler *)v10 initWithTimeout:@"SafariShared" autoBugCaptureDomain:@"com.apple.Safari.History" detectedProcess:v11 context:10.0];

      v12 = [MEMORY[0x1E696AE30] processInfo];
      v13 = [v12 beginActivityWithOptions:0x80000000000 reason:@"-[WBSHistoryServiceDatabase fetchWithOptions:predicate:completionHandler:]"];

      MEMORY[0x1BFB144F0]();
      v14 = objc_alloc_init(MEMORY[0x1E69C8A40]);
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __74__WBSHistoryServiceDatabase_fetchWithOptions_predicate_completionHandler___block_invoke_2;
      v30[3] = &unk_1E7FB7F10;
      v15 = v7;
      v31 = v15;
      v16 = v13;
      v32 = v16;
      [v14 setHandler:v30];
      v17 = *(*(*(a1 + 48) + 8) + 40);
      v18 = SafariShared::LatestVisitInformationMap::size((*(a1 + 32) + 88));
      (*(v17 + 16))(v17, v18, v6, 0);
      v19 = *(*(a1 + 48) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = 0;

      [v6 closeFile];
      v21 = *(a1 + 56);
      if ((v21 & 2) != 0)
      {
        v22 = [*(a1 + 32) _fetchVisitsWithOptions:v21 predicate:*(a1 + 40) writeDescriptor:{objc_msgSend(v15, "fileDescriptor")}];
        v21 = *(a1 + 56);
      }

      if ((v21 & 0x20) != 0)
      {
        v23 = [*(a1 + 32) _fetchTagsWithOptions:v21 predicate:*(a1 + 40) writeDescriptor:{objc_msgSend(v15, "fileDescriptor")}];
        v21 = *(a1 + 56);
      }

      if ((v21 & 0x40) != 0)
      {
        v24 = [*(a1 + 32) _fetchObjectToTagMappingsWithOptions:v21 predicate:*(a1 + 40) writeDescriptor:{objc_msgSend(v15, "fileDescriptor")}];
        v21 = *(a1 + 56);
      }

      if ((v21 & 0x80) != 0)
      {
        v25 = [*(a1 + 32) _fetchObjectToTagMappingsWithOptions:v21 predicate:*(a1 + 40) writeDescriptor:{objc_msgSend(v15, "fileDescriptor")}];
      }
    }

    else
    {
      v26 = *(*(*(a1 + 48) + 8) + 40);
      v27 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
      (*(v26 + 16))(v26, 0, 0, v27);

      v28 = *(*(a1 + 48) + 8);
      v5 = *(v28 + 40);
      *(v28 + 40) = 0;
    }
  }
}

void __74__WBSHistoryServiceDatabase_fetchWithOptions_predicate_completionHandler___block_invoke_2(uint64_t a1)
{
  MEMORY[0x1BFB14500]([*(a1 + 32) closeFile]);
  v2 = [MEMORY[0x1E696AE30] processInfo];
  [v2 endActivity:*(a1 + 40)];
}

- (void)fetchDomainExpansions:(id)a3
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3032000000;
  v6[3] = __Block_byref_object_copy__23;
  v6[4] = __Block_byref_object_dispose__23;
  v7 = MEMORY[0x1BFB13CE0](a3, a2);
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__WBSHistoryServiceDatabase_fetchDomainExpansions___block_invoke;
  v5[3] = &unk_1E7FB87C0;
  v5[4] = self;
  v5[5] = v6;
  dispatch_async(queue, v5);
  _Block_object_dispose(v6, 8);
}

void __51__WBSHistoryServiceDatabase_fetchDomainExpansions___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _ensureDatabaseIsSynced];
  v20 = 0;
  v21 = 0;
  v2 = SafariShared::HistoryObjectStreamWriter::createPipeHandles(&v21, &v20);
  v3 = v21;
  v4 = v20;
  if (v2)
  {
    (*(*(*(*(a1 + 40) + 8) + 40) + 16))();
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AE30] processInfo];
    v8 = [v7 beginActivityWithOptions:0x80000000000 reason:@"-[WBSHistoryServiceDatabase fetchDomainExpansions:]"];

    MEMORY[0x1BFB144F0]();
    v6 = objc_alloc_init(MEMORY[0x1E69C8A40]);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __51__WBSHistoryServiceDatabase_fetchDomainExpansions___block_invoke_2;
    v17[3] = &unk_1E7FB7F10;
    v9 = v4;
    v18 = v9;
    v2 = v8;
    v19 = v2;
    [v6 setHandler:v17];
    (*(*(*(*(a1 + 40) + 8) + 40) + 16))();
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = 0;

    [v3 closeFile];
    v12 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:*(*(a1 + 32) + 40) query:{@"SELECT history_items.domain_expansion, COUNT(*) AS count FROM history_items WHERE domain_expansion IS NOT NULL GROUP BY domain_expansion"}];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 handle];
      v22 = 3;
      SafariShared::HistoryObjectStreamWriter::HistoryObjectStreamWriter(v16, [v9 fileDescriptor]);
      do
      {
        if (sqlite3_step(v14) != 100)
        {
          break;
        }

        v23 = sqlite3_column_text(v14, 0);
        v24 = sqlite3_column_int64(v14, 1);
      }

      while (SafariShared::HistoryObjectStreamWriter::write(v16, &v22));
      SafariShared::HistoryObjectStreamWriter::~HistoryObjectStreamWriter(v16);
    }

    else
    {
      v15 = WBS_LOG_CHANNEL_PREFIXHistory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [*(*(a1 + 32) + 40) lastErrorWithMethodName:"-[WBSHistoryServiceDatabase fetchDomainExpansions:]_block_invoke"];
        [objc_claimAutoreleasedReturnValue() safari_privacyPreservingDescription];
        objc_claimAutoreleasedReturnValue();
        __51__WBSHistoryServiceDatabase_fetchDomainExpansions___block_invoke_cold_1();
      }
    }
  }
}

void __51__WBSHistoryServiceDatabase_fetchDomainExpansions___block_invoke_2(uint64_t a1)
{
  MEMORY[0x1BFB14500]([*(a1 + 32) closeFile]);
  v2 = [MEMORY[0x1E696AE30] processInfo];
  [v2 endActivity:*(a1 + 40)];
}

- (void)getVisitedLinksWithCompletionHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__WBSHistoryServiceDatabase_getVisitedLinksWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7FB6F08;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __66__WBSHistoryServiceDatabase_getVisitedLinksWithCompletionHandler___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _ensureDatabaseIsSynced];
  v2 = SafariShared::WBSSQLiteDatabaseFetch<>(*(*(a1 + 32) + 40), @"SELECT url FROM history_items");
  v3 = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = MEMORY[0x1E695DFF8];
        v9 = [*(*(&v12 + 1) + 8 * v7) stringAtIndex:{0, v12}];
        v10 = [v8 safari_URLWithDataAsString:v9];

        if (v10)
        {
          [v3 addObject:v10];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11 = [v4 statement];
  [v11 invalidate];

  (*(*(a1 + 40) + 16))();
}

- (void)groupVisitsIntoSessionsBetweenStartDate:(id)a3 endDate:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __95__WBSHistoryServiceDatabase_groupVisitsIntoSessionsBetweenStartDate_endDate_completionHandler___block_invoke;
  v15[3] = &unk_1E7FC6910;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

void __95__WBSHistoryServiceDatabase_groupVisitsIntoSessionsBetweenStartDate_endDate_completionHandler___block_invoke(id *a1)
{
  v50 = *MEMORY[0x1E69E9840];
  [a1[4] _ensureDatabaseIsSynced];
  v2 = *(a1[4] + 5);
  [a1[5] timeIntervalSinceReferenceDate];
  v43 = v3;
  v20 = a1;
  [a1[6] timeIntervalSinceReferenceDate];
  v37 = v4;
  v21 = SafariShared::WBSSQLiteDatabaseFetch<double,double>(v2, @"SELECT url, title, visit_time FROM history_items INNER JOIN history_visits ON history_visits.history_item = history_items.id WHERE history_visits.id = safari_latest_visit_for (history_items.id)AND visit_time >= ? AND visit_time <= ? ORDER BY visit_time DESC", &v43, &v37);
  v22 = [MEMORY[0x1E695DEE8] currentCalendar];
  v23 = [MEMORY[0x1E695DF70] array];
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__101;
  v47 = __Block_byref_object_dispose__102;
  v48 = [MEMORY[0x1E695DF70] array];
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__101;
  v41 = __Block_byref_object_dispose__102;
  v42 = 0;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __95__WBSHistoryServiceDatabase_groupVisitsIntoSessionsBetweenStartDate_endDate_completionHandler___block_invoke_103;
  v32[3] = &unk_1E7FC7170;
  v27 = v22;
  v33 = v27;
  v35 = &v37;
  v24 = v23;
  v34 = v24;
  v36 = &v43;
  v25 = MEMORY[0x1BFB13CE0](v32);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v21;
  v5 = [obj countByEnumeratingWithState:&v28 objects:v49 count:16];
  if (v5)
  {
    v6 = *v29;
    do
    {
      v7 = 0;
      do
      {
        if (*v29 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v28 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v10 = MEMORY[0x1E695DF00];
        [v8 doubleAtIndex:2];
        v11 = [v10 dateWithTimeIntervalSinceReferenceDate:?];
        if (v38[5] && ([v27 isDate:v11 inSameDayAsDate:?] & 1) == 0)
        {
          v25[2]();
          [v44[5] removeAllObjects];
        }

        v12 = MEMORY[0x1E695DFF8];
        v13 = [v8 stringAtIndex:0];
        v14 = [v12 safari_URLWithDataAsString:v13];

        v15 = [v8 stringAtIndex:1];
        v16 = v44[5];
        v17 = [[WBSRemoteHistoryItem alloc] initWithURL:v14 title:v15 lastVisitTime:v11];
        [v16 addObject:v17];

        v18 = v38[5];
        v38[5] = v11;

        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v28 objects:v49 count:16];
    }

    while (v5);
  }

  if ([v44[5] count])
  {
    v25[2]();
  }

  v19 = [obj statement];
  [v19 invalidate];

  (*(v20[7] + 2))();
  _Block_object_dispose(&v37, 8);

  _Block_object_dispose(&v43, 8);
}

void __95__WBSHistoryServiceDatabase_groupVisitsIntoSessionsBetweenStartDate_endDate_completionHandler___block_invoke_103(uint64_t a1)
{
  v6 = [*(a1 + 32) startOfDayForDate:*(*(*(a1 + 48) + 8) + 40)];
  v2 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v2 setDay:1];
  v3 = [*(a1 + 32) dateByAddingComponents:v2 toDate:v6 options:4096];
  v4 = *(a1 + 40);
  v5 = [[WBSRemoteHistorySession alloc] initWithStartDate:v6 endDate:v3 items:*(*(*(a1 + 56) + 8) + 40)];
  [v4 addObject:v5];
}

- (void)fetchCloudClientVersionTable:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__WBSHistoryServiceDatabase_fetchCloudClientVersionTable___block_invoke;
  v7[3] = &unk_1E7FB6F08;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __58__WBSHistoryServiceDatabase_fetchCloudClientVersionTable___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = *(*(a1 + 32) + 40);
  v9 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__WBSHistoryServiceDatabase_fetchCloudClientVersionTable___block_invoke_2;
  v6[3] = &unk_1E7FC7198;
  v4 = v2;
  v7 = v4;
  v8 = MEMORY[0x1BFB13CE0](v6);
  SafariShared::WBSSQLiteDatabaseEnumerate<void({block_pointer} {__strong})(int,NSDate *)>(v3, &v9, @"SELECT client_version, last_seen FROM history_client_versions", &v8);
  v5 = v9;

  (*(*(a1 + 40) + 16))();
}

void __58__WBSHistoryServiceDatabase_fetchCloudClientVersionTable___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x1E696AD98] numberWithInt:a2];
  [v5 setObject:v7 forKeyedSubscript:v6];
}

- (id)_lastSeenDateForCloudClientVersion:(unint64_t)a3
{
  v9 = a3;
  v3 = SafariShared::WBSSQLiteDatabaseFetch<unsigned long &>(self->_database, @"SELECT last_seen FROM history_client_versions WHERE client_version = ?", &v9);
  v4 = [v3 nextObject];
  v5 = v4;
  v6 = MEMORY[0x1E695DF00];
  if (v4)
  {
    [v4 doubleAtIndex:0];
    [v6 dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    [MEMORY[0x1E695DF00] distantPast];
  }
  v7 = ;

  return v7;
}

- (void)lastSeenDateForCloudClientVersion:(unint64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__WBSHistoryServiceDatabase_lastSeenDateForCloudClientVersion_completionHandler___block_invoke;
  block[3] = &unk_1E7FC71C0;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(queue, block);
}

void __81__WBSHistoryServiceDatabase_lastSeenDateForCloudClientVersion_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _lastSeenDateForCloudClientVersion:*(a1 + 48)];
  (*(v1 + 16))(v1);
}

- (void)setLastSeenDate:(id)a3 forCloudClientVersion:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    queue = self->_queue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __85__WBSHistoryServiceDatabase_setLastSeenDate_forCloudClientVersion_completionHandler___block_invoke;
    v12[3] = &unk_1E7FC59B0;
    v12[4] = self;
    v15 = a4;
    v13 = v8;
    v14 = v9;
    dispatch_async(queue, v12);
  }

  else
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    (*(v9 + 2))(v9, v11);
  }
}

void __85__WBSHistoryServiceDatabase_setLastSeenDate_forCloudClientVersion_completionHandler___block_invoke(uint64_t a1)
{
  v19[5] = *MEMORY[0x1E69E9840];
  v2 = (a1 + 56);
  v3 = [*(a1 + 32) _lastSeenDateForCloudClientVersion:*(a1 + 56)];
  if (v3 && [*(a1 + 40) compare:v3] != 1)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v4 = *(*(a1 + 32) + 56);
    v18 = 0;
    v5 = [v4 statementForQuery:@"INSERT OR REPLACE INTO history_client_versions (client_version error:{last_seen)VALUES (?, ?)", &v18}];
    v6 = v18;
    if (v5)
    {
      v7 = objc_alloc_init(MEMORY[0x1E69C8A40]);
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __85__WBSHistoryServiceDatabase_setLastSeenDate_forCloudClientVersion_completionHandler___block_invoke_2;
      v16 = &unk_1E7FB6F80;
      v8 = v5;
      v17 = v8;
      [v7 setHandler:&v13];
      [*(a1 + 40) timeIntervalSinceReferenceDate];
      v19[0] = v9;
      SafariShared::_WBSSQLiteStatementBindAllParameters<1,unsigned long const&,double>(v8, v2, v19);
      if ([v8 execute] == 101)
      {
        (*(*(a1 + 48) + 16))();
      }

      else
      {
        v10 = WBS_LOG_CHANNEL_PREFIXHistory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [*(*(a1 + 32) + 40) lastErrorMessage];
          objc_claimAutoreleasedReturnValue();
          __85__WBSHistoryServiceDatabase_setLastSeenDate_forCloudClientVersion_completionHandler___block_invoke_cold_1();
        }

        v11 = *(a1 + 48);
        v12 = [*(*(a1 + 32) + 40) lastErrorWithMethodName:"-[WBSHistoryServiceDatabase setLastSeenDate:forCloudClientVersion:completionHandler:]_block_invoke"];
        (*(v11 + 16))(v11, v12);
      }
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }
  }
}

- (BOOL)_shouldEmitLegacyTombstones
{
  v2 = [(WBSHistoryServiceDatabase *)self _lastSeenDateForCloudClientVersion:1];
  [v2 timeIntervalSinceNow];
  v4 = v3 > -7776000.0;

  return v4;
}

- (id)_metadataForKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(WBSSQLiteStatementCache *)self->_statements statementForQuery:@"SELECT value FROM metadata WHERE key = ?" error:a4];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E69C8A40]);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __51__WBSHistoryServiceDatabase__metadataForKey_error___block_invoke;
    v15[3] = &unk_1E7FB6F80;
    v9 = v7;
    v16 = v9;
    [v8 setHandler:v15];
    [v9 bindString:v6 atParameterIndex:1];
    v10 = [v9 fetch];
    v11 = [v10 nextObject];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 objectAtIndex:0];
    }

    else if (a4 && [v10 lastResultCode] != 101)
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorWithMethodName:"[WBSHistoryServiceDatabase _metadataForKey:error:]"];
      *a4 = v13 = 0;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)fetchMetadataForKeys:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = WBS_LOG_CHANNEL_PREFIXHistory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [WBSHistoryServiceDatabase fetchMetadataForKeys:completionHandler:];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__WBSHistoryServiceDatabase_fetchMetadataForKeys_completionHandler___block_invoke;
  block[3] = &unk_1E7FB7CC0;
  v13 = v6;
  v14 = self;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(queue, block);
}

void __68__WBSHistoryServiceDatabase_fetchMetadataForKeys_completionHandler___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = *(a1 + 32);
  v4 = 0;
  v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = *v15;
    do
    {
      v7 = 0;
      v8 = v4;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v14 + 1) + 8 * v7);
        v10 = *(a1 + 40);
        v13 = v8;
        v11 = [v10 _metadataForKey:v9 error:&v13];
        v4 = v13;

        if (v11)
        {
          v12 = 1;
        }

        else
        {
          v12 = v4 == 0;
        }

        if (!v12)
        {
          (*(*(a1 + 48) + 16))();

          goto LABEL_14;
        }

        [v2 setObject:v11 forKeyedSubscript:v9];

        ++v7;
        v8 = v4;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  (*(*(a1 + 48) + 16))();
LABEL_14:
}

- (id)_setMetadataValue:(id)a3 forKey:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v34 = a4;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      database = self->_database;
      v33 = v6;
      v8 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&,NSData * {__strong}>(database, 0, @"INSERT OR REPLACE INTO metadata (key, value) VALUES (?, ?)", &v34, &v33);

LABEL_25:
      if (v8 == 101)
      {
        goto LABEL_26;
      }

      v28 = WBS_LOG_CHANNEL_PREFIXHistory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v30 = v34;
        v31 = [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
        *buf = 138413058;
        *&buf[4] = v30;
        v36 = 2080;
        v37 = "[WBSHistoryServiceDatabase _setMetadataValue:forKey:]";
        v38 = 2114;
        v39 = v31;
        v40 = 1024;
        v41 = v8;
        _os_log_error_impl(&dword_1BB6F3000, v28, OS_LOG_TYPE_ERROR, "Failed to update metadata value %@: %s %{public}@ (%d)", buf, 0x26u);
      }

      v11 = [(WBSSQLiteDatabase *)self->_database lastErrorWithMethodName:"[WBSHistoryServiceDatabase _setMetadataValue:forKey:]"];
      goto LABEL_30;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = self->_database;
      v32 = v6;
      v8 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&,NSString * {__strong}>(v12, 0, @"INSERT OR REPLACE INTO metadata (key, value) VALUES (?, ?)", &v34, &v32);

      goto LABEL_25;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = self->_database;
      [v6 timeIntervalSinceReferenceDate];
      *buf = v14;
      v8 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&,double>(v13, 0, @"INSERT OR REPLACE INTO metadata (key, value) VALUES (?, ?)", &v34, buf);
      goto LABEL_25;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v20 = WBS_LOG_CHANNEL_PREFIXHistory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = objc_opt_class();
        NSStringFromClass(v21);
        objc_claimAutoreleasedReturnValue();
        [WBSHistoryServiceDatabase _setMetadataValue:forKey:];
      }

      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
      goto LABEL_30;
    }

    v15 = v6;
    v16 = [v15 objCType];
    v17 = *v16;
    if (v17 == 102 || v17 == 100)
    {
      if (!v16[1])
      {
        v25 = self->_database;
        [v15 doubleValue];
        *buf = v26;
        v19 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&,double>(v25, 0, @"INSERT OR REPLACE INTO metadata (key, value) VALUES (?, ?)", &v34, buf);
        goto LABEL_24;
      }
    }

    else if (v17 == 66 && !v16[1])
    {
      v18 = self->_database;
      buf[0] = [v15 BOOLValue];
      v19 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&,BOOL>(v18, 0, @"INSERT OR REPLACE INTO metadata (key, value) VALUES (?, ?)", &v34, buf);
LABEL_24:
      v8 = v19;

      goto LABEL_25;
    }

    v22 = self->_database;
    *buf = [v15 longLongValue];
    v19 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&,long long>(v22, 0, @"INSERT OR REPLACE INTO metadata (key, value) VALUES (?, ?)", &v34, buf);
    goto LABEL_24;
  }

  v9 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&>(self->_database, 0, @"DELETE FROM metadata WHERE key = ?", &v34);
  if (v9 == 101)
  {
LABEL_26:
    v27 = 0;
    goto LABEL_31;
  }

  v10 = WBS_LOG_CHANNEL_PREFIXHistory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v23 = v34;
    v24 = [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
    *buf = 138413058;
    *&buf[4] = v23;
    v36 = 2080;
    v37 = "[WBSHistoryServiceDatabase _setMetadataValue:forKey:]";
    v38 = 2114;
    v39 = v24;
    v40 = 1024;
    v41 = v9;
    _os_log_error_impl(&dword_1BB6F3000, v10, OS_LOG_TYPE_ERROR, "Failed to delete metadata value %@: %s %{public}@ (%d)", buf, 0x26u);
  }

  v11 = [(WBSSQLiteDatabase *)self->_database lastErrorWithMethodName:"[WBSHistoryServiceDatabase _setMetadataValue:forKey:]"];
LABEL_30:
  v27 = v11;
LABEL_31:

  return v27;
}

- (void)setMetadataValue:(id)a3 forKey:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    queue = self->_queue;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __71__WBSHistoryServiceDatabase_setMetadataValue_forKey_completionHandler___block_invoke;
    v14[3] = &unk_1E7FC69B0;
    v17 = v10;
    v14[4] = self;
    v15 = v8;
    v16 = v9;
    dispatch_async(queue, v14);
  }

  else
  {
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    (v11)[2](v11, v13);
  }
}

void __71__WBSHistoryServiceDatabase_setMetadataValue_forKey_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = [*(a1 + 32) _setMetadataValue:*(a1 + 40) forKey:*(a1 + 48)];
  (*(v1 + 16))(v1);
}

- (unint64_t)_pruneTombstonesOnDatabaseQueueWithEndDatePriorToDate:(id)a3 error:(id *)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = WBS_LOG_CHANNEL_PREFIXHistory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [WBSHistoryServiceDatabase _pruneTombstonesOnDatabaseQueueWithEndDatePriorToDate:error:];
  }

  [v6 timeIntervalSinceReferenceDate];
  v9 = v8;
  v10 = [(WBSSQLiteStatementCache *)self->_statements statementForQuery:@"DELETE FROM history_tombstones WHERE end_time < ?" error:a4];
  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x1E69C8A40]);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __89__WBSHistoryServiceDatabase__pruneTombstonesOnDatabaseQueueWithEndDatePriorToDate_error___block_invoke;
    v16[3] = &unk_1E7FB6F80;
    v12 = v10;
    v17 = v12;
    [v11 setHandler:v16];
    [v12 bindDouble:1 atParameterIndex:v9];
    if ([v12 execute] == 101)
    {
      v13 = [(WBSSQLiteDatabase *)self->_database changedRowCount];
    }

    else
    {
      v14 = WBS_LOG_CHANNEL_PREFIXHistory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
        objc_claimAutoreleasedReturnValue();
        [WBSHistoryServiceDatabase _pruneTombstonesOnDatabaseQueueWithEndDatePriorToDate:error:];
      }

      if (a4)
      {
        [(WBSSQLiteDatabase *)self->_database lastErrorWithMethodName:"[WBSHistoryServiceDatabase _pruneTombstonesOnDatabaseQueueWithEndDatePriorToDate:error:]"];
        *a4 = v13 = 0;
      }

      else
      {
        v13 = 0;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)pruneTombstonesWithEndDatePriorToDate:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __85__WBSHistoryServiceDatabase_pruneTombstonesWithEndDatePriorToDate_completionHandler___block_invoke;
    block[3] = &unk_1E7FB7CC0;
    block[4] = self;
    v11 = v6;
    v12 = v7;
    dispatch_async(queue, block);
  }

  else
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    (*(v7 + 2))(v7, 0, v9);
  }
}

void __85__WBSHistoryServiceDatabase_pruneTombstonesWithEndDatePriorToDate_completionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v5 = 0;
  [v2 _pruneTombstonesOnDatabaseQueueWithEndDatePriorToDate:v3 error:&v5];
  v4 = v5;
  (*(a1[6] + 16))();
}

- (id)_convertTombstoneWithGenerationToSecureFormat:(int64_t)a3 lastSyncedGeneration:(int64_t)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v33 = a4;
  v34 = a3;
  v26 = [MEMORY[0x1E695DF90] dictionary];
  SafariShared::WBSSQLiteDatabaseFetch<long long &,long long &>(self->_database, @"SELECT id, url FROM history_tombstones WHERE generation > ? AND generation <= ? AND url IS NOT NULL", &v33, &v34);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  obj = v30 = 0u;
  v4 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v4)
  {
    v5 = *v30;
    v24 = @"url_salt";
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v30 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v29 + 1) + 8 * i);
        v8 = [v7 int64AtIndex:{0, v24}];
        v9 = [v7 dataAtIndex:1];
        v10 = [(WBSHistoryCrypto *)self->_crypto decryptDictionary:v9];
        v11 = [v10 mutableCopy];

        v12 = [v11 objectForKeyedSubscript:@"url"];
        LOBYTE(v10) = v12 == 0;

        if ((v10 & 1) == 0)
        {
          v13 = [v11 objectForKeyedSubscript:@"url_hash"];
          v14 = v13 == 0;

          if (v14)
          {
            v15 = [(WBSHistoryCrypto *)self->_crypto salt];
            v16 = [v11 safari_stringForKey:@"url"];
            v17 = WBSHistorySHA512(v15, v16);
            [v11 setObject:v17 forKeyedSubscript:@"url_hash"];

            [v11 setObject:v15 forKeyedSubscript:v24];
          }

          [v11 removeObjectForKey:@"url"];
          v18 = [MEMORY[0x1E696AD98] numberWithLongLong:v8];
          [v26 setObject:v11 forKeyedSubscript:v18];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v4);
  }

  if (![v26 count])
  {
    goto LABEL_15;
  }

  if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"BEGIN TRANSACTION") == 101)
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __96__WBSHistoryServiceDatabase__convertTombstoneWithGenerationToSecureFormat_lastSyncedGeneration___block_invoke;
    v28[3] = &unk_1E7FC71E8;
    v28[4] = self;
    [v26 enumerateKeysAndObjectsUsingBlock:v28];
    if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"COMMIT TRANSACTION") == 101)
    {
LABEL_15:
      v19 = 0;
      goto LABEL_23;
    }

    v22 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSHistoryServiceDatabase _convertTombstoneWithGenerationToSecureFormat:lastSyncedGeneration:];
    }

    v21 = [(WBSSQLiteDatabase *)self->_database lastErrorWithMethodName:"[WBSHistoryServiceDatabase _convertTombstoneWithGenerationToSecureFormat:lastSyncedGeneration:]"];
  }

  else
  {
    v20 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSHistoryServiceDatabase _convertTombstoneWithGenerationToSecureFormat:lastSyncedGeneration:];
    }

    v21 = [(WBSSQLiteDatabase *)self->_database lastErrorWithMethodName:"[WBSHistoryServiceDatabase _convertTombstoneWithGenerationToSecureFormat:lastSyncedGeneration:]"];
  }

  v19 = v21;
LABEL_23:

  return v19;
}

void __96__WBSHistoryServiceDatabase__convertTombstoneWithGenerationToSecureFormat_lastSyncedGeneration___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 40);
  v12 = [*(v7 + 32) encryptDictionary:v6];
  *buf = [v5 integerValue];
  v9 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSData * {__strong},long>(v8, 0, @"UPDATE history_tombstones SET url = ? WHERE id = ?", &v12, buf);

  if (v9 != 101)
  {
    v10 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [*(*(a1 + 32) + 40) lastErrorMessage];
      *buf = 138413058;
      *&buf[4] = v5;
      v14 = 2080;
      v15 = "[WBSHistoryServiceDatabase _convertTombstoneWithGenerationToSecureFormat:lastSyncedGeneration:]_block_invoke";
      v16 = 2114;
      v17 = v11;
      v18 = 1024;
      v19 = v9;
      _os_log_error_impl(&dword_1BB6F3000, v10, OS_LOG_TYPE_ERROR, "Failed to convert tombstone %@: %s %{public}@ (%d)", buf, 0x26u);
    }
  }
}

- (void)convertTombstoneWithGenerationToSecureFormat:(int64_t)a3 lastSyncedGeneration:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a5;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __113__WBSHistoryServiceDatabase_convertTombstoneWithGenerationToSecureFormat_lastSyncedGeneration_completionHandler___block_invoke;
  v11[3] = &unk_1E7FC7210;
  v11[4] = self;
  v12 = v8;
  v13 = a3;
  v14 = a4;
  v10 = v8;
  dispatch_async(queue, v11);
}

void __113__WBSHistoryServiceDatabase_convertTombstoneWithGenerationToSecureFormat_lastSyncedGeneration_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _convertTombstoneWithGenerationToSecureFormat:*(a1 + 48) lastSyncedGeneration:*(a1 + 56)];
  (*(v1 + 16))(v1);
}

- (void)replayAndAddTombstones:(id)a3 completionHandler:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v23 = a3;
  v25 = a4;
  v22 = dispatch_group_create();
  v5 = qos_class_self();
  v6 = dispatch_queue_attr_make_with_qos_class(0, v5, 0);
  v7 = dispatch_queue_create(0, v6);

  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x3032000000;
  v42[3] = __Block_byref_object_copy__101;
  v42[4] = __Block_byref_object_dispose__102;
  v43 = 0;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __70__WBSHistoryServiceDatabase_replayAndAddTombstones_completionHandler___block_invoke;
  v38[3] = &unk_1E7FC7238;
  queue = v7;
  v39 = queue;
  v41 = v42;
  group = v22;
  v40 = group;
  v29 = MEMORY[0x1BFB13CE0](v38);
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v23;
  v8 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v8)
  {
    v27 = *v35;
    do
    {
      v9 = 0;
      do
      {
        if (*v35 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v34 + 1) + 8 * v9);
        v11 = MEMORY[0x1E695DF00];
        [v10 startTime];
        v12 = [v11 dateWithTimeIntervalSinceReferenceDate:?];
        v13 = MEMORY[0x1E695DF00];
        [v10 endTime];
        v14 = [v13 dateWithTimeIntervalSinceReferenceDate:?];
        v15 = [v10 urlString];
        dispatch_group_enter(group);
        if (v15)
        {
          v16 = [[WBSHistoryServiceURLRepresentation alloc] initWithURLString:v15];
LABEL_10:
          v20 = [MEMORY[0x1E695DFD8] setWithObject:v16];
          [(WBSHistoryServiceDatabase *)self clearHistoryItems:v20 afterDate:v12 beforeDate:v14 tombstoneMode:3 completionHandler:v29];

          goto LABEL_11;
        }

        if ([v10 isSecure])
        {
          v17 = [WBSHistoryServiceURLRepresentation alloc];
          v18 = [v10 urlHash];
          v19 = [v10 urlSalt];
          v16 = [(WBSHistoryServiceURLRepresentation *)v17 initWithURLHash:v18 salt:v19];

          goto LABEL_10;
        }

        [(WBSHistoryServiceDatabase *)self clearHistoryVisitsAddedAfterDate:v12 beforeDate:v14 tombstoneMode:3 clearAllSpotlightHistoryForProfile:0 completionHandler:v29];
LABEL_11:

        ++v9;
      }

      while (v8 != v9);
      v21 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
      v8 = v21;
    }

    while (v21);
  }

  if (v25)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__WBSHistoryServiceDatabase_replayAndAddTombstones_completionHandler___block_invoke_2;
    block[3] = &unk_1E7FC4B78;
    v32 = v25;
    v33 = v42;
    dispatch_group_notify(group, queue, block);
  }

  _Block_object_dispose(v42, 8);
}

void __70__WBSHistoryServiceDatabase_replayAndAddTombstones_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [v3 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __70__WBSHistoryServiceDatabase_replayAndAddTombstones_completionHandler___block_invoke_cold_1();
    }

    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __70__WBSHistoryServiceDatabase_replayAndAddTombstones_completionHandler___block_invoke_143;
    v6[3] = &unk_1E7FB8798;
    v8 = *(a1 + 48);
    v7 = v3;
    dispatch_sync(v5, v6);
  }

  dispatch_group_leave(*(a1 + 40));
}

- (void)fetchAllTombstonesWithCompletionHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__WBSHistoryServiceDatabase_fetchAllTombstonesWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7FB6F08;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __69__WBSHistoryServiceDatabase_fetchAllTombstonesWithCompletionHandler___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = SafariShared::WBSSQLiteDatabaseFetch<>(*(*(a1 + 32) + 40), @"SELECT * FROM history_tombstones");
  v3 = [MEMORY[0x1E695DFA8] set];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = [WBSHistoryTombstone alloc];
        v10 = [(WBSHistoryTombstone *)v9 initWithSQLiteRow:v8 crypto:*(*(a1 + 32) + 32), v11];
        [v3 addObject:v10];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_queuePendingUpdates
{
  if (!self->_pendingVisitsTimeout)
  {
    block[7] = v2;
    block[8] = v3;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__WBSHistoryServiceDatabase__queuePendingUpdates__block_invoke;
    block[3] = &unk_1E7FB6F80;
    block[4] = self;
    v5 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_DETACHED, QOS_CLASS_BACKGROUND, 0, block);
    pendingVisitsTimeout = self->_pendingVisitsTimeout;
    self->_pendingVisitsTimeout = v5;

    v7 = dispatch_time(0, 5000000000);
    dispatch_after(v7, self->_queue, self->_pendingVisitsTimeout);
  }
}

- (void)_commitPendingUpdates
{
  pendingVisitsTimeout = self->_pendingVisitsTimeout;
  self->_pendingVisitsTimeout = 0;

  v4 = objc_autoreleasePoolPush();
  database = self->_database;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__WBSHistoryServiceDatabase__commitPendingUpdates__block_invoke;
  v6[3] = &unk_1E7FC7280;
  v6[4] = self;
  [(WBSSQLiteDatabase *)database tryToPerformTransactionInBlock:v6];
  objc_autoreleasePoolPop(v4);
}

uint64_t __50__WBSHistoryServiceDatabase__commitPendingUpdates__block_invoke(uint64_t a1)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v9[0] = 0;
  v3 = [v2 _findItemIDsForPendingVisitsWithError:v9];
  v4 = v9[0];
  if (!v3)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [v4 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __50__WBSHistoryServiceDatabase__commitPendingUpdates__block_invoke_cold_1();
    }

    goto LABEL_7;
  }

  v5 = [*(*(a1 + 32) + 216) sortedArrayUsingComparator:&__block_literal_global_64];
  if (([*(a1 + 32) _commitPendingItems:v3] & 1) == 0)
  {
LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  v6 = [*(a1 + 32) _commitPendingVisits:v3];
LABEL_8:

  return v6;
}

uint64_t __50__WBSHistoryServiceDatabase__commitPendingUpdates__block_invoke_152(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 visitTime];
  v7 = v6;
  [v5 visitTime];
  if (v7 >= v8)
  {
    [v4 visitTime];
    v11 = v10;
    [v5 visitTime];
    v9 = v11 > v12;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

- (void)_ensureDatabaseIsSynced
{
  pendingVisitsTimeout = self->_pendingVisitsTimeout;
  if (pendingVisitsTimeout)
  {
    dispatch_block_cancel(pendingVisitsTimeout);

    [(WBSHistoryServiceDatabase *)self _commitPendingUpdates];
  }
}

- (id)_findItemIDsForPendingVisitsWithError:(id *)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v17 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSMutableArray count](self->_pendingVisits, "count")}];
  v5 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:self->_database query:@"SELECT id FROM history_items WHERE url = ?" error:a3];
  if (v5)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = self->_pendingVisits;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          v20 = 0;
          v11 = [v10 urlString];
          v18 = &v20;
          v19 = v11;
          v12 = SafariShared::WBSSQLiteDatabaseEnumerate<NSString * {__strong},std::tuple<long long &>>(v5, a3, &v19, &v18);

          if (v12)
          {
            v13 = [MEMORY[0x1E696AD98] numberWithLongLong:v20];
            v14 = [v10 urlString];
            [v17 setObject:v13 forKeyedSubscript:v14];
          }
        }

        v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v7);
    }

    [v5 invalidate];
    v15 = 0;
  }

  else
  {
    v15 = v17;
    v17 = 0;
  }

  return v17;
}

- (BOOL)_commitPendingItems:(id)a3
{
  v96 = *MEMORY[0x1E69E9840];
  v62 = a3;
  v64 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v59 = [MEMORY[0x1E695DFA8] set];
  v60 = [MEMORY[0x1E695DFA8] set];
  v63 = [MEMORY[0x1E695DF90] dictionary];
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v3 = self->_pendingVisits;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v86 objects:v95 count:16];
  if (v4)
  {
    v5 = *v87;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v87 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v86 + 1) + 8 * i);
        if ([v7 operation])
        {
          v8 = MEMORY[0x1E696AD98];
          v9 = [v7 urlString];
          v10 = [v64 objectForKeyedSubscript:v9];
          v11 = [v8 numberWithUnsignedInteger:{objc_msgSend(v7, "visitCount") + objc_msgSend(v10, "unsignedIntValue")}];
          v12 = [v7 urlString];
          [v64 setObject:v11 forKeyedSubscript:v12];
        }

        v13 = [v7 urlString];
        v14 = [v62 objectForKeyedSubscript:v13];
        v15 = v14 == 0;

        v16 = [v7 urlString];
        if (v15)
        {
          [v59 addObject:v16];
        }

        else
        {
          [v60 addObject:v16];
        }

        v17 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v7, "statusCode")}];
        v18 = [v7 urlString];
        [v63 setObject:v17 forKeyedSubscript:v18];
      }

      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v86 objects:v95 count:16];
    }

    while (v4);
  }

  if ([v59 count])
  {
    v19 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = [v60 count];
      *buf = 134217984;
      *&buf[4] = v20;
      _os_log_impl(&dword_1BB6F3000, v19, OS_LOG_TYPE_INFO, "Inserting %zu items", buf, 0xCu);
    }

    v21 = objc_alloc(MEMORY[0x1E69C89F0]);
    database = self->_database;
    v85 = 0;
    v23 = [v21 initWithDatabase:database query:@"INSERT INTO history_items (url error:{visit_count, visit_count_score, daily_visit_counts, weekly_visit_counts, domain_expansion, should_recompute_derived_visit_counts, status_code)VALUES (?, ?, ?, ?, ?, safari_domainexpansion(?1), 0, ?)", &v85}];
    v24 = v85;
    if (!v23)
    {
      v56 = WBS_LOG_CHANNEL_PREFIXHistory();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
      {
        [v24 safari_privacyPreservingDescription];
        objc_claimAutoreleasedReturnValue();
        [WBSHistoryServiceDatabase _commitPendingItems:];
      }

      goto LABEL_51;
    }

    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v25 = v59;
    v26 = [v25 countByEnumeratingWithState:&v81 objects:v94 count:16];
    if (v26)
    {
      v27 = *v82;
      do
      {
        v28 = 0;
        v29 = v24;
        do
        {
          if (*v82 != v27)
          {
            objc_enumerationMutation(v25);
          }

          *buf = *(*(&v81 + 1) + 8 * v28);
          v79 = 0;
          location = 0;
          obj = 0;
          v78 = 0;
          urlCompletion = self->_urlCompletion;
          v76 = 0;
          [WBSHistoryServiceURLCompletion queryVisitCounts:"queryVisitCounts:outVisitCountScore:outDailyVisitCounts:outWeeklyVisitCounts:" outVisitCountScore:? outDailyVisitCounts:? outWeeklyVisitCounts:?];
          objc_storeStrong(&location, obj);
          objc_storeStrong(&v79, v76);
          v31 = [v64 objectForKeyedSubscript:*buf];
          v75 = [v31 unsignedIntegerValue];
          v32 = [v63 objectForKeyedSubscript:*buf];
          v74 = [v32 integerValue];
          SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * const {__strong}&,unsigned long,long long &,NSData * {__strong}&,NSData * {__strong},long>(v23, buf, &v75, &v78, &location, &v79, &v74);

          v73 = v29;
          LOBYTE(v31) = [v23 execute:&v73];
          v24 = v73;

          if (v31)
          {
            v33 = [MEMORY[0x1E696AD98] numberWithInteger:{-[WBSSQLiteDatabase lastInsertRowID](self->_database, "lastInsertRowID")}];
            [v62 setObject:v33 forKeyedSubscript:*buf];

            [v23 reset];
          }

          else
          {
            v34 = WBS_LOG_CHANNEL_PREFIXHistory();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              [v24 safari_privacyPreservingDescription];
              objc_claimAutoreleasedReturnValue();
              [WBSHistoryServiceDatabase _commitPendingItems:];
            }
          }

          ++v28;
          v29 = v24;
        }

        while (v26 != v28);
        v26 = [v25 countByEnumeratingWithState:&v81 objects:v94 count:16];
      }

      while (v26);
    }

    [v23 invalidate];
  }

  if ([v60 count])
  {
    v35 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = [v60 count];
      *buf = 134217984;
      *&buf[4] = v36;
      _os_log_impl(&dword_1BB6F3000, v35, OS_LOG_TYPE_INFO, "Updating %zu items", buf, 0xCu);
    }

    v37 = objc_alloc(MEMORY[0x1E69C89F0]);
    v38 = self->_database;
    v72 = 0;
    v39 = [v37 initWithDatabase:v38 query:@"UPDATE history_items SET visit_count = visit_count + ? error:{visit_count_score = ?, daily_visit_counts = ?, weekly_visit_counts = ?, status_code = ? WHERE id = ?", &v72}];
    v24 = v72;
    if (v39)
    {
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v40 = v60;
      v41 = [v40 countByEnumeratingWithState:&v68 objects:v93 count:16];
      if (v41)
      {
        v43 = *v69;
        *&v42 = 134218242;
        v58 = v42;
        do
        {
          for (j = 0; j != v41; ++j)
          {
            if (*v69 != v43)
            {
              objc_enumerationMutation(v40);
            }

            v45 = *(*(&v68 + 1) + 8 * j);
            v79 = 0;
            location = 0;
            v78 = 0;
            v46 = [v62 objectForKeyedSubscript:{v45, v58}];
            v47 = [v46 longValue];

            v75 = v47;
            v48 = self->_urlCompletion;
            v66 = v79;
            v67 = location;
            [(WBSHistoryServiceURLCompletion *)v48 queryVisitCounts:v45 outVisitCountScore:&v78 outDailyVisitCounts:&v67 outWeeklyVisitCounts:&v66];
            objc_storeStrong(&location, v67);
            objc_storeStrong(&v79, v66);
            v49 = [v64 objectForKeyedSubscript:v45];
            *buf = [v49 unsignedIntegerValue];
            v50 = [v63 objectForKeyedSubscript:v45];
            v74 = [v50 integerValue];
            SafariShared::_WBSSQLiteStatementBindAllParameters<1,unsigned long,long long &,NSData * {__strong}&,NSData * {__strong}&,long,long long &>(v39, buf, &v78, &location, &v79, &v74, &v75);

            v65 = v24;
            LOBYTE(v50) = [v39 execute:&v65];
            v51 = v65;

            v24 = v51;
            if ((v50 & 1) == 0)
            {
              v52 = WBS_LOG_CHANNEL_PREFIXHistory();
              if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
              {
                v53 = v75;
                v54 = [v51 safari_privacyPreservingDescription];
                *buf = v58;
                *&buf[4] = v53;
                v91 = 2114;
                v92 = v54;
                _os_log_error_impl(&dword_1BB6F3000, v52, OS_LOG_TYPE_ERROR, "Failed to update item %lli: %{public}@", buf, 0x16u);
              }
            }

            [v39 reset];
          }

          v41 = [v40 countByEnumeratingWithState:&v68 objects:v93 count:16];
        }

        while (v41);
      }

      [v39 invalidate];
      v55 = 1;
      v56 = v39;
      goto LABEL_52;
    }

    v56 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
    {
      [v24 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      [WBSHistoryServiceDatabase _commitPendingItems:];
    }

LABEL_51:
    v55 = 0;
LABEL_52:

    goto LABEL_53;
  }

  v55 = 1;
LABEL_53:

  return v55;
}

- (BOOL)_commitPendingVisits:(id)a3
{
  v164 = *MEMORY[0x1E69E9840];
  v113 = a3;
  v150 = [(WBSHistoryServiceDatabase *)self _currentGeneration];
  v4 = objc_alloc(MEMORY[0x1E69C89F0]);
  database = self->_database;
  v149 = 0;
  v6 = [v4 initWithDatabase:database query:@"SELECT id FROM history_visits WHERE visit_time = ?" error:&v149];
  v7 = v149;
  v115 = v6;
  if (!v6)
  {
    v116 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v116, OS_LOG_TYPE_FAULT))
    {
      [v7 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      [WBSHistoryServiceDatabase _commitPendingVisits:];
    }

    v106 = 0;
    goto LABEL_100;
  }

  v8 = objc_alloc(MEMORY[0x1E69C89F0]);
  v9 = self->_database;
  v148 = v7;
  v116 = [v8 initWithDatabase:v9 query:@"INSERT INTO history_visits (history_item error:{visit_time, title, load_successful, http_non_get, origin, generation, attributes, score)VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)", &v148}];
  v114 = self;
  v10 = v148;

  if (!v116)
  {
    v111 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v111, OS_LOG_TYPE_FAULT))
    {
      [v10 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      [WBSHistoryServiceDatabase _commitPendingVisits:];
    }

    v106 = 0;
    goto LABEL_99;
  }

  v11 = objc_alloc(MEMORY[0x1E69C89F0]);
  v12 = self->_database;
  v147 = v10;
  v111 = [v11 initWithDatabase:v12 query:@"UPDATE history_visits SET title = ? WHERE id = ?" error:&v147];
  v13 = v147;

  if (!v111)
  {
    v110 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v110, OS_LOG_TYPE_FAULT))
    {
      [v13 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      [WBSHistoryServiceDatabase _commitPendingVisits:];
    }

    v106 = 0;
    goto LABEL_98;
  }

  v14 = objc_alloc(MEMORY[0x1E69C89F0]);
  v15 = self->_database;
  v146 = v13;
  v110 = [v14 initWithDatabase:v15 query:@"UPDATE history_visits SET attributes = ? error:{score = ? WHERE id = ?", &v146}];
  v16 = v146;

  if (!v110)
  {
    v17 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      [v16 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      [WBSHistoryServiceDatabase _commitPendingVisits:];
    }

    v106 = 0;
    goto LABEL_97;
  }

  v17 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSMutableArray count](self->_pendingVisits, "count")}];
  v161 = 0u;
  v162 = 0u;
  v163 = 1065353216;
  v142 = 0u;
  v143 = 0u;
  v144 = 0u;
  v145 = 0u;
  v18 = self->_pendingVisits;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v142 objects:v160 count:16];
  if (v19)
  {
    v20 = *v143;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v143 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v22 = *(*(&v142 + 1) + 8 * i);
        if (([v22 operation] & 1) == 0)
        {
          v141 = 0;
          v133 = v16;
          [v22 visitTime];
          *buf = v23;
          v135 = &v141;
          v24 = SafariShared::WBSSQLiteDatabaseEnumerate<double,std::tuple<long long &>>(v115, &v133, buf, &v135);
          v25 = v133;

          if (v24)
          {
            v26 = [MEMORY[0x1E696AD98] numberWithLongLong:v141];
            v27 = [v22 visitIdentifier];
            [v17 setObject:v26 forKeyedSubscript:v27];

            if (([v22 operation] & 2) == 0)
            {
              goto LABEL_15;
            }

            v132 = [v22 title];
            SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong},long long &>(v111, &v132, &v141);

            v131 = v25;
            v28 = [v111 execute:&v131];
            v29 = v131;

            if (v28)
            {
              v25 = v29;
LABEL_15:
              if (([v22 operation] & 4) == 0)
              {
LABEL_33:
                v16 = v25;
                continue;
              }

              *buf = [v22 attributes];
              v135 = [v22 score];
              SafariShared::_WBSSQLiteStatementBindAllParameters<1,unsigned long,unsigned long,long long &>(v110, buf, &v135, &v141);
              v130 = v25;
              v30 = [v110 execute:&v130];
              v29 = v130;

              if (v30)
              {
                v25 = v29;
                goto LABEL_33;
              }

              v42 = WBS_LOG_CHANNEL_PREFIXHistory();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
              {
                v56 = MEMORY[0x1E695DF00];
                [v22 visitTime];
                v57 = [v56 dateWithTimeIntervalSinceReferenceDate:?];
                v58 = [v22 urlString];
                v59 = [v29 safari_privacyPreservingDescription];
                *buf = 138543875;
                *&buf[4] = v57;
                v156 = 2113;
                v157 = v58;
                v158 = 2114;
                v159 = v59;
                _os_log_error_impl(&dword_1BB6F3000, v42, OS_LOG_TYPE_ERROR, "Failed to update attributes of visit %{public}@ of item %{private}@: %{public}@", buf, 0x20u);
              }
            }

            else
            {
              v42 = WBS_LOG_CHANNEL_PREFIXHistory();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
              {
                v48 = MEMORY[0x1E695DF00];
                [v22 visitTime];
                v49 = [v48 dateWithTimeIntervalSinceReferenceDate:?];
                v50 = [v22 urlString];
                v51 = [v29 safari_privacyPreservingDescription];
                *buf = 138543875;
                *&buf[4] = v49;
                v156 = 2113;
                v157 = v50;
                v158 = 2114;
                v159 = v51;
                _os_log_error_impl(&dword_1BB6F3000, v42, OS_LOG_TYPE_ERROR, "Failed to update title of visit %{public}@ of item %{private}@: %{public}@", buf, 0x20u);
              }
            }

            v25 = v29;
          }

          else
          {
            v42 = WBS_LOG_CHANNEL_PREFIXHistory();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              v43 = MEMORY[0x1E695DF00];
              [v22 visitTime];
              v44 = [v43 dateWithTimeIntervalSinceReferenceDate:?];
              v45 = [v22 urlString];
              v46 = [v25 safari_privacyPreservingDescription];
              *buf = 138543875;
              *&buf[4] = v44;
              v156 = 2117;
              v157 = v45;
              v158 = 2114;
              v159 = v46;
              _os_log_error_impl(&dword_1BB6F3000, v42, OS_LOG_TYPE_ERROR, "Failed to find ID of visit %{public}@ of item %{sensitive}@: %{public}@", buf, 0x20u);
            }
          }

          goto LABEL_33;
        }

        v31 = [v22 urlString];
        v32 = [v113 objectForKeyedSubscript:v31];
        v33 = [v32 longLongValue];

        v141 = v33;
        [v22 visitTime];
        *buf = v34;
        v140 = [v22 title];
        v139 = [v22 loadSuccessful];
        v138 = [v22 wasHTTPNonGet];
        v137 = [v22 origin];
        v136 = [v22 attributes];
        v135 = [v22 score];
        SafariShared::_WBSSQLiteStatementBindAllParameters<1,long long &,double,NSString * {__strong},int,int,int,long &,int,unsigned long>(v116, &v141, buf, &v140, &v139, &v138, &v137, &v150, &v136, &v135);

        v134 = v16;
        LOBYTE(v32) = [v116 execute:&v134];
        v35 = v134;

        v16 = v35;
        if (v32)
        {
          v36 = [(WBSSQLiteDatabase *)v114->_database lastInsertRowID];
          v37 = [MEMORY[0x1E696AD98] numberWithLongLong:v36];
          v38 = [v22 visitIdentifier];
          [v17 setObject:v37 forKeyedSubscript:v38];

          [v116 reset];
          v39 = v141;
          [v22 visitTime];
          if (SafariShared::LatestVisitInformationMap::update(&v114->_latestVisitMap, v39, v36, v40, 0))
          {
            *buf = &v141;
            v41 = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(&v161, &v141);
            if (!v41)
            {
              __break(1u);
            }

            v41[3] = v36;
          }
        }

        else
        {
          v47 = WBS_LOG_CHANNEL_PREFIXHistory();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            v52 = MEMORY[0x1E695DF00];
            [v22 visitTime];
            v53 = [v52 dateWithTimeIntervalSinceReferenceDate:?];
            v54 = [v22 urlString];
            v55 = [v16 safari_privacyPreservingDescription];
            *buf = 138543875;
            *&buf[4] = v53;
            v156 = 2113;
            v157 = v54;
            v158 = 2114;
            v159 = v55;
            _os_log_error_impl(&dword_1BB6F3000, v47, OS_LOG_TYPE_ERROR, "Failed to insert visit %{public}@ of item %{private}@: %{public}@", buf, 0x20u);
          }
        }
      }

      v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v142 objects:v160 count:16];
    }

    while (v19);
  }

  [v116 invalidate];
  [v111 invalidate];
  [v110 invalidate];
  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v60 = v114->_pendingVisits;
  v61 = 0;
  v62 = [(NSMutableArray *)v60 countByEnumeratingWithState:&v126 objects:v154 count:16];
  if (!v62)
  {
    goto LABEL_50;
  }

  v63 = *v127;
  do
  {
    v64 = 0;
    v65 = v16;
    do
    {
      if (*v127 != v63)
      {
        objc_enumerationMutation(v60);
      }

      v66 = [*(*(&v126 + 1) + 8 * v64) sourceVisitIdentifier];
      if (!v66)
      {
        goto LABEL_44;
      }

      v67 = [v17 objectForKeyedSubscript:v66];
      v68 = v67 == 0;

      if (!v68)
      {
        v61 = 1;
LABEL_44:
        v16 = v65;
        goto LABEL_48;
      }

      *buf = 0;
      v125 = v65;
      v141 = buf;
      v69 = SafariShared::WBSSQLiteDatabaseEnumerate<std::tuple<long long &>>(v115, &v125, &v141);
      v16 = v125;

      if (v69)
      {
        v70 = [MEMORY[0x1E696AD98] numberWithLongLong:*buf];
        [v17 setObject:v70 forKeyedSubscript:v66];
      }

      v61 = 1;
LABEL_48:

      ++v64;
      v65 = v16;
    }

    while (v62 != v64);
    v62 = [(NSMutableArray *)v60 countByEnumeratingWithState:&v126 objects:v154 count:16];
  }

  while (v62);
LABEL_50:

  [v115 invalidate];
  if ((v61 & 1) == 0)
  {
    goto LABEL_71;
  }

  v71 = objc_alloc(MEMORY[0x1E69C89F0]);
  v72 = v114->_database;
  v124 = v16;
  v112 = [v71 initWithDatabase:v72 query:@"UPDATE history_visits SET redirect_source = ? where id = ?" error:&v124];
  v73 = v124;

  if (!v112)
  {
    v105 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v105, OS_LOG_TYPE_FAULT))
    {
      [v73 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      [WBSHistoryServiceDatabase _commitPendingVisits:];
    }

    v106 = 0;
LABEL_95:

    v16 = v73;
    goto LABEL_96;
  }

  v74 = objc_alloc(MEMORY[0x1E69C89F0]);
  v75 = v114->_database;
  v123 = v73;
  v76 = [v74 initWithDatabase:v75 query:@"UPDATE history_visits SET redirect_destination = ? where id = ?" error:&v123];
  v16 = v123;

  if (!v76)
  {
    v107 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v107, OS_LOG_TYPE_FAULT))
    {
      [v16 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      [WBSHistoryServiceDatabase _commitPendingVisits:];
    }

    [v112 invalidate];
    v106 = 0;
    v105 = v112;
LABEL_94:
    v73 = v16;
    goto LABEL_95;
  }

  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  obj = v114->_pendingVisits;
  v77 = [(NSMutableArray *)obj countByEnumeratingWithState:&v119 objects:v153 count:16];
  if (v77)
  {
    v78 = *v120;
    do
    {
      for (j = 0; j != v77; ++j)
      {
        if (*v120 != v78)
        {
          objc_enumerationMutation(obj);
        }

        v80 = *(*(&v119 + 1) + 8 * j);
        v81 = [v80 sourceVisitIdentifier];
        if (v81)
        {
          v82 = [v80 visitIdentifier];
          v83 = [v17 objectForKeyedSubscript:v82];
          v84 = [v83 longValue];

          v141 = v84;
          v85 = [v17 objectForKeyedSubscript:v81];
          v86 = [v85 longValue];

          v135 = v86;
          SafariShared::_WBSSQLiteStatementBindAllParameters<1,long long &,long long &>(v112, &v135, &v141);
          v118 = v16;
          LOBYTE(v85) = [v112 execute:&v118];
          v87 = v118;

          v88 = v87;
          if ((v85 & 1) == 0)
          {
            v89 = WBS_LOG_CHANNEL_PREFIXHistory();
            if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
            {
              v93 = v141;
              v94 = [v88 safari_privacyPreservingDescription];
              *buf = 134218242;
              *&buf[4] = v93;
              v156 = 2114;
              v157 = v94;
              _os_log_error_impl(&dword_1BB6F3000, v89, OS_LOG_TYPE_ERROR, "Failed to update source of visit %lli: %{public}@", buf, 0x16u);
            }
          }

          SafariShared::_WBSSQLiteStatementBindAllParameters<1,long long &,long long &>(v76, &v141, &v135);
          v117 = v88;
          v90 = [v76 execute:&v117];
          v91 = v117;

          v16 = v91;
          if ((v90 & 1) == 0)
          {
            v92 = WBS_LOG_CHANNEL_PREFIXHistory();
            if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
            {
              v95 = v141;
              v96 = [v16 safari_privacyPreservingDescription];
              *buf = 134218242;
              *&buf[4] = v95;
              v156 = 2114;
              v157 = v96;
              _os_log_error_impl(&dword_1BB6F3000, v92, OS_LOG_TYPE_ERROR, "Failed to update destionation of visit %lli: %{public}@", buf, 0x16u);
            }
          }

          [v112 reset];
          [v76 reset];
        }
      }

      v77 = [(NSMutableArray *)obj countByEnumeratingWithState:&v119 objects:v153 count:16];
    }

    while (v77);
  }

  [v112 invalidate];
  [v76 invalidate];

LABEL_71:
  v97 = WBS_LOG_CHANNEL_PREFIXHistory();
  if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
  {
    v98 = [(NSMutableArray *)v114->_pendingVisits count];
    *buf = 134217984;
    *&buf[4] = v98;
    _os_log_impl(&dword_1BB6F3000, v97, OS_LOG_TYPE_INFO, "Inserted/Updated %zu visits", buf, 0xCu);
  }

  [(NSMutableArray *)v114->_pendingVisits removeAllObjects];
  if (*(&v162 + 1))
  {
    v99 = [WBSHistoryServiceEvent alloc];
    v100 = [MEMORY[0x1E695DF00] date];
    v151[0] = @"updateLatestVisits";
    v101 = [(WBSHistoryServiceDatabase *)v114 _generateUpdatedLastVisit:&v161];
    v152[0] = v101;
    v151[1] = @"updateItems";
    v102 = [(WBSHistoryServiceDatabase *)v114 _generateItemsDictionary:&v161];
    v152[1] = v102;
    v151[2] = @"updateVisits";
    v103 = [(WBSHistoryServiceDatabase *)v114 _generateVisitsDictionary:&v161];
    v152[2] = v103;
    v104 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v152 forKeys:v151 count:3];
    v105 = [(WBSHistoryServiceEvent *)v99 initWithType:@"update" time:v100 value:v104];

    [(WBSHistoryServiceDatabase *)v114 _dispatchEvent:v105 listenersToIgnore:0 persistForDelayedDispatching:0 completionHandler:&__block_literal_global_186_1];
    v106 = 1;
    goto LABEL_94;
  }

  v106 = 1;
LABEL_96:
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(&v161);
LABEL_97:

  v13 = v16;
LABEL_98:

  v10 = v13;
LABEL_99:

  v7 = v10;
LABEL_100:

  return v106;
}

void __50__WBSHistoryServiceDatabase__commitPendingVisits___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [v3 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __50__WBSHistoryServiceDatabase__commitPendingVisits___block_invoke_cold_1();
    }
  }
}

- (int64_t)_permanentIDsForItemIfAvailable:(int64_t)a3
{
  v6 = a3;
  if (a3 < 0)
  {
    v4 = std::__hash_table<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>>>::find<long long>(&self->_temporaryIDToItem.__table_.__bucket_list_.__ptr_, &v6);
    v3 = v4 + 3;
    if (!v4)
    {
      v3 = &v6;
    }
  }

  else
  {
    v3 = &v6;
  }

  return *v3;
}

- (int64_t)_permanentIDsForVisitIfAvailable:(int64_t)a3
{
  v6 = a3;
  if (a3 < 0)
  {
    v4 = std::__hash_table<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>>>::find<long long>(&self->_visitForTemporaryID.__table_.__bucket_list_.__ptr_, &v6);
    v3 = v4 + 3;
    if (!v4)
    {
      v3 = &v6;
    }
  }

  else
  {
    v3 = &v6;
  }

  return *v3;
}

- (void)_checkpointWriteAheadLog
{
  v3 = os_transaction_create();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__WBSHistoryServiceDatabase__checkpointWriteAheadLog__block_invoke;
  v6[3] = &unk_1E7FB7F10;
  v6[4] = self;
  v7 = v3;
  v4 = v3;
  v5 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_DETACHED, QOS_CLASS_BACKGROUND, 0, v6);
  _os_activity_initiate(&dword_1BB6F3000, "Cleaning WAL", OS_ACTIVITY_FLAG_DETACHED, v5);
}

void __53__WBSHistoryServiceDatabase__checkpointWriteAheadLog__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__WBSHistoryServiceDatabase__checkpointWriteAheadLog__block_invoke_2;
  v4[3] = &unk_1E7FB7F10;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

void __53__WBSHistoryServiceDatabase__checkpointWriteAheadLog__block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = 0;
  if (![*(*(a1 + 32) + 40) checkpointWriteAheadLogWithLogFrameCount:&v2 + 4 checkpointedFrameCount:&v2])
  {
    v1 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      v4 = HIDWORD(v2);
      v5 = 1024;
      v6 = v2;
      _os_log_impl(&dword_1BB6F3000, v1, OS_LOG_TYPE_INFO, "Checkpointed write ahead log. Log frame count: %d, checkpointed frame count: %d", buf, 0xEu);
    }
  }
}

- (BOOL)_addAutocompleteTrigger:(id)a3 forURL:(id)a4 error:(id *)a5
{
  v8 = a3;
  v17 = 0;
  v18 = a4;
  database = self->_database;
  v16 = &v17;
  if (SafariShared::WBSSQLiteDatabaseEnumerate<NSString * {__strong}&,std::tuple<NSData * {__strong}&>>(database, a5, @"SELECT autocomplete_triggers FROM history_items WHERE url = ?", &v18, &v16))
  {
    if (!v17 || (WBSHistoryDecodeAutocompleteTriggers(v17), (v10 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
    }

    if (WBSHistoryAddAutocompleteTriggerToArray(v10, v8) && ([MEMORY[0x1E696AE40] dataWithPropertyList:v10 format:200 options:0 error:a5], v11 = objc_claimAutoreleasedReturnValue(), v12 = v17, v17 = v11, v12, v17) && ((v13 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSData * {__strong}&,NSString * {__strong}&>(self->_database, a5, @"UPDATE history_items SET autocomplete_triggers = ? WHERE url = ?", &v17, &v18), v13 == 101) || !v13))
    {
      [(WBSHistoryServiceURLCompletion *)self->_urlCompletion updateURLString:v18 autocompleteTriggerData:v17];
      v14 = 1;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
    v10 = 0;
  }

  return v14;
}

- (void)addAutocompleteTrigger:(id)a3 forURL:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 && v9)
  {
    queue = self->_queue;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __77__WBSHistoryServiceDatabase_addAutocompleteTrigger_forURL_completionHandler___block_invoke;
    v13[3] = &unk_1E7FC6910;
    v13[4] = self;
    v14 = v8;
    v15 = v9;
    v16 = v10;
    dispatch_async(queue, v13);
  }

  else
  {
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    (*(v10 + 2))(v10, v12);
  }
}

void __77__WBSHistoryServiceDatabase_addAutocompleteTrigger_forURL_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureDatabaseIsSynced];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = 0;
  [v2 _addAutocompleteTrigger:v3 forURL:v4 error:&v6];
  v5 = v6;
  (*(*(a1 + 56) + 16))();
}

- (void)fetchAutocompleteTriggersForURLString:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__WBSHistoryServiceDatabase_fetchAutocompleteTriggersForURLString_completionHandler___block_invoke;
  block[3] = &unk_1E7FB7CC0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __85__WBSHistoryServiceDatabase_fetchAutocompleteTriggersForURLString_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureDatabaseIsSynced];
  v8 = 0;
  v9 = 0;
  v2 = *(*(a1 + 32) + 40);
  v7 = &v9;
  v3 = SafariShared::WBSSQLiteDatabaseEnumerate<NSString * const {__strong}&,std::tuple<NSData * {__strong}&>>(v2, &v8, @"SELECT autocomplete_triggers FROM history_items WHERE url = ?", (a1 + 40), &v7);
  v4 = v8;
  if (v3)
  {
    if (v9)
    {
      v5 = WBSHistoryDecodeAutocompleteTriggers(v9);
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = MEMORY[0x1E695E0F0];
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), 0, v6);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)recordVisitWithIdentifier:(id)a3 sourceVisit:(id)a4 title:(id)a5 wasHTTPNonGet:(BOOL)a6 loadSuccessful:(BOOL)a7 origin:(int64_t)a8 attributes:(unint64_t)a9 statusCode:(int64_t)a10 completionHandler:(id)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a11;
  if (v17)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __149__WBSHistoryServiceDatabase_recordVisitWithIdentifier_sourceVisit_title_wasHTTPNonGet_loadSuccessful_origin_attributes_statusCode_completionHandler___block_invoke;
    block[3] = &unk_1E7FC72C8;
    v29 = a9;
    v24 = v17;
    v25 = self;
    v26 = v18;
    v32 = a6;
    v33 = a7;
    v27 = v19;
    v30 = a8;
    v31 = a10;
    v28 = v20;
    dispatch_async(queue, block);
  }

  else
  {
    v21 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    (*(v20 + 2))(v20, v21);
  }
}

void __149__WBSHistoryServiceDatabase_recordVisitWithIdentifier_sourceVisit_title_wasHTTPNonGet_loadSuccessful_origin_attributes_statusCode_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [[WBSHistoryServicePendingVisit alloc] initWithWithVisitIdentifier:*(a1 + 32)];
  v3 = *(a1 + 72);
  v13 = v2;
  if ((v3 & 0xE) == 0)
  {
    v4 = *(*(a1 + 40) + 272);
    v5 = [*(a1 + 32) urlString];
    [v4 lastVisitTimeForURLString:v5];
    v7 = v6;

    if (v7 <= 0.0)
    {
      goto LABEL_8;
    }

    [*(a1 + 32) visitTime];
    if (v7 >= v8)
    {
      goto LABEL_8;
    }

    [*(a1 + 32) visitTime];
    v10 = (v9 - v7) / 60.0;
    if (v10 < 1.0)
    {
      v3 |= 2uLL;
LABEL_8:
      v2 = v13;
      goto LABEL_9;
    }

    if (v10 < 8.0)
    {
      v3 |= 4uLL;
      goto LABEL_8;
    }

    v2 = v13;
    if (v10 < 60.0)
    {
      v3 |= 8uLL;
    }
  }

LABEL_9:
  [(WBSHistoryServicePendingVisit *)v2 setOperation:1];
  [(WBSHistoryServicePendingVisit *)v13 setSourceVisitIdentifier:*(a1 + 48)];
  [(WBSHistoryServicePendingVisit *)v13 setTitle:*(a1 + 56)];
  [(WBSHistoryServicePendingVisit *)v13 setWasHTTPNonGet:*(a1 + 96)];
  [(WBSHistoryServicePendingVisit *)v13 setLoadSuccessful:*(a1 + 97)];
  [(WBSHistoryServicePendingVisit *)v13 setWasHTTPNonGet:*(a1 + 96)];
  [(WBSHistoryServicePendingVisit *)v13 setOrigin:*(a1 + 80)];
  [(WBSHistoryServicePendingVisit *)v13 setAttributes:v3];
  [(WBSHistoryServicePendingVisit *)v13 setStatusCode:*(a1 + 88)];
  v11 = WBHistoryVisitWeightForAttributesAndOrigin(v3, *(a1 + 80));
  LODWORD(v12) = WBSHistoryVisitScoreForWeightedVisitCount(v11);
  [*(*(a1 + 40) + 272) recordVisit:*(a1 + 32) sourceVisit:*(a1 + 48) title:*(a1 + 56) loadSuccessful:*(a1 + 97) origin:*(a1 + 80) increaseVisitCount:1 score:v12 statusCode:*(a1 + 88)];
  [*(*(a1 + 40) + 216) addObject:v13];
  [*(a1 + 40) _queuePendingUpdates];
  (*(*(a1 + 64) + 16))();
}

- (void)_updateVisitWithIdentifier:(id)a3 removeAttributes:(unint64_t)a4 addAttributes:(unint64_t)a5 pendingVisit:(id)a6
{
  v13 = a3;
  v10 = a6;
  v11 = [v10 score];
  [v10 setAttributes:{objc_msgSend(v10, "attributes") & ~a4}];
  [v10 setAttributes:{objc_msgSend(v10, "attributes") | a5}];
  v12 = [v10 score];
  if (v11 != v12)
  {
    [(WBSHistoryServiceURLCompletion *)self->_urlCompletion updateVisit:v13 oldScore:v11 newScore:v12 completionHandler:&__block_literal_global_198];
  }
}

- (void)updateVisitWithIdentifier:(id)a3 removeAttributes:(unint64_t)a4 addAttributes:(unint64_t)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a6;
  if (v10)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __104__WBSHistoryServiceDatabase_updateVisitWithIdentifier_removeAttributes_addAttributes_completionHandler___block_invoke;
    block[3] = &unk_1E7FC7310;
    block[4] = self;
    v15 = v10;
    v17 = a4;
    v18 = a5;
    v16 = v11;
    dispatch_async(queue, block);
  }

  else
  {
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    (*(v11 + 2))(v11, v13);
  }
}

void __104__WBSHistoryServiceDatabase_updateVisitWithIdentifier_removeAttributes_addAttributes_completionHandler___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = *(*(a1 + 32) + 216);
  v3 = [v2 countByEnumeratingWithState:&v21 objects:v28 count:16];
  if (v3)
  {
    v4 = *v22;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v22 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v21 + 1) + 8 * i);
        v7 = [v6 visitIdentifier];
        v8 = [v7 isEqual:*(a1 + 40)];

        if ((v8 & 1) != 0 && ([v6 operation] & 5) != 0)
        {
          [*(a1 + 32) _updateVisitWithIdentifier:*(a1 + 40) removeAttributes:*(a1 + 56) addAttributes:*(a1 + 64) pendingVisit:v6];
          (*(*(a1 + 48) + 16))();
          goto LABEL_16;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v21 objects:v28 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v19 = 0;
  v20 = 0;
  v9 = *(*(a1 + 32) + 40);
  v18 = [*(a1 + 40) urlString];
  [*(a1 + 40) visitTime];
  v17 = v10;
  *buf = &v20;
  *&buf[8] = &v20 + 4;
  LOBYTE(v9) = SafariShared::WBSSQLiteDatabaseEnumerate<NSString * {__strong},double,std::tuple<int &,int &>>(v9, &v19, @"SELECT origin, attributes FROM history_visits INNER JOIN history_items ON history_visits.history_item = history_items.id WHERE url = ? AND visit_time = ?", &v18, &v17, buf);
  v2 = v19;

  if (v9)
  {
    v11 = [[WBSHistoryServicePendingVisit alloc] initWithWithVisitIdentifier:*(a1 + 40)];
    [(WBSHistoryServicePendingVisit *)v11 setOrigin:v20];
    [(WBSHistoryServicePendingVisit *)v11 setAttributes:SHIDWORD(v20)];
    [*(*(a1 + 32) + 216) addObject:v11];
    [*(a1 + 32) _updateVisitWithIdentifier:*(a1 + 40) removeAttributes:*(a1 + 56) addAttributes:*(a1 + 64) pendingVisit:v11];
    [*(a1 + 32) _queuePendingUpdates];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v12 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [*(a1 + 40) urlString];
      v14 = MEMORY[0x1E695DF00];
      [*(a1 + 40) visitTime];
      v15 = [v14 dateWithTimeIntervalSinceReferenceDate:?];
      v16 = [v2 safari_privacyPreservingDescription];
      *buf = 138740483;
      *&buf[4] = v13;
      *&buf[12] = 2114;
      *&buf[14] = v15;
      v26 = 2113;
      v27 = v16;
      _os_log_error_impl(&dword_1BB6F3000, v12, OS_LOG_TYPE_ERROR, "Unable to determine existing attributes for visit %{sensitive}@ at %{public}@: %{private}@", buf, 0x20u);
    }

    (*(*(a1 + 48) + 16))();
  }

LABEL_16:
}

- (void)updateVisitWithIdentifier:(id)a3 title:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    queue = self->_queue;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __79__WBSHistoryServiceDatabase_updateVisitWithIdentifier_title_completionHandler___block_invoke;
    v13[3] = &unk_1E7FC6910;
    v13[4] = self;
    v14 = v8;
    v15 = v9;
    v16 = v10;
    dispatch_async(queue, v13);
  }

  else
  {
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    (*(v10 + 2))(v10, v12);
  }
}

void __79__WBSHistoryServiceDatabase_updateVisitWithIdentifier_title_completionHandler___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 216);
  v3 = [(WBSHistoryServicePendingVisit *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        v7 = [v6 visitIdentifier];
        v8 = [v7 isEqual:*(a1 + 40)];

        if (v8)
        {
          [v6 setTitle:*(a1 + 48)];
          [*(*(a1 + 32) + 272) updateVisit:*(a1 + 40) title:*(a1 + 48) databaseID:*(*(a1 + 32) + 256)];
          (*(*(a1 + 56) + 16))();
          goto LABEL_11;
        }
      }

      v3 = [(WBSHistoryServicePendingVisit *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v2 = [[WBSHistoryServicePendingVisit alloc] initWithWithVisitIdentifier:*(a1 + 40)];
  [(WBSHistoryServicePendingVisit *)v2 setTitle:*(a1 + 48)];
  [*(*(a1 + 32) + 216) addObject:v2];
  [*(a1 + 32) _queuePendingUpdates];
  (*(*(a1 + 56) + 16))();
LABEL_11:
}

- (void)_updateItem:(int64_t)a3 visitCountScore:(int64_t)a4 dailyVisitCounts:(id)a5 weeklyVisitCounts:(id)a6 shouldRecomputeDerivedVisitCounts:(BOOL)a7
{
  v12 = a5;
  v13 = a6;
  database = self->_database;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __126__WBSHistoryServiceDatabase__updateItem_visitCountScore_dailyVisitCounts_weeklyVisitCounts_shouldRecomputeDerivedVisitCounts___block_invoke;
  v17[3] = &unk_1E7FC7338;
  v22 = a7;
  v20 = a3;
  v21 = a4;
  v17[4] = self;
  v18 = v12;
  v19 = v13;
  v15 = v13;
  v16 = v12;
  [(WBSSQLiteDatabase *)database tryToPerformTransactionInBlock:v17];
}

uint64_t __126__WBSHistoryServiceDatabase__updateItem_visitCountScore_dailyVisitCounts_weeklyVisitCounts_shouldRecomputeDerivedVisitCounts___block_invoke(uint64_t a1)
{
  v13[4] = *MEMORY[0x1E69E9840];
  if (*(a1 + 72) == 1)
  {
    v2 = *(*(a1 + 32) + 40);
    v13[0] = 0;
    v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<long long const&>(v2, v13, @"UPDATE history_items SET should_recompute_derived_visit_counts = 1 WHERE id = ?", (a1 + 56));
    v4 = v13[0];
    v5 = v4;
    if (v3 && v3 != 101)
    {
      v10 = WBS_LOG_CHANNEL_PREFIXHistory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [v5 safari_privacyPreservingDescription];
        objc_claimAutoreleasedReturnValue();
        __126__WBSHistoryServiceDatabase__updateItem_visitCountScore_dailyVisitCounts_weeklyVisitCounts_shouldRecomputeDerivedVisitCounts___block_invoke_cold_2();
      }

      goto LABEL_12;
    }

    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(*(a1 + 32) + 40);
  v12 = v6;
  v8 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<long long const&,NSData * const {__strong}&,NSData * const {__strong},long long const&>(v7, &v12, @"UPDATE history_items SET visit_count_score = ?, daily_visit_counts = ?, weekly_visit_counts = ? WHERE id = ?", (a1 + 64), (a1 + 40), (a1 + 48), (a1 + 56));
  v5 = v12;

  v9 = 1;
  if (v8 && v8 != 101)
  {
    v10 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [v5 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __126__WBSHistoryServiceDatabase__updateItem_visitCountScore_dailyVisitCounts_weeklyVisitCounts_shouldRecomputeDerivedVisitCounts___block_invoke_cold_1();
    }

LABEL_12:

    v9 = 0;
  }

  return v9;
}

- (void)flushWithCompletionHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__WBSHistoryServiceDatabase_flushWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7FB6F08;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

uint64_t __56__WBSHistoryServiceDatabase_flushWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureDatabaseIsSynced];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (int64_t)_currentGeneration
{
  v2 = [(WBSHistoryServiceDatabase *)self _metadataForKey:@"current_generation" error:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)_lastSyncedGeneration
{
  v2 = [(WBSHistoryServiceDatabase *)self _metadataForKey:@"last_synced_generation" error:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_clearAllHistoryInsertingTombstoneUpToDate:(id)a3 clearAllSpotlightHistoryForProfile:(BOOL)a4
{
  v6 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__101;
  v26 = __Block_byref_object_dispose__102;
  v27 = 0;
  v7 = WBS_LOG_CHANNEL_PREFIXHistory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [WBSHistoryServiceDatabase _clearAllHistoryInsertingTombstoneUpToDate:clearAllSpotlightHistoryForProfile:];
  }

  [(WBSHistoryServiceDatabase *)self _startingClearHistoryOperationForStartDate:0 endDate:v6];
  database = self->_database;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __107__WBSHistoryServiceDatabase__clearAllHistoryInsertingTombstoneUpToDate_clearAllSpotlightHistoryForProfile___block_invoke;
  v17 = &unk_1E7FC73B0;
  v18 = self;
  v21 = a4;
  v9 = v6;
  v19 = v9;
  v20 = &v22;
  LOBYTE(database) = [(WBSSQLiteDatabase *)database tryToPerformTransactionInBlock:&v14];
  [(WBSHistoryServiceDatabase *)self _finishedClearingHistory:v14];
  if (database)
  {
    v10 = [WBSHistoryServiceEvent alloc];
    v11 = [(WBSHistoryServiceEvent *)v10 initWithType:@"clear" time:v9 value:MEMORY[0x1E695E0F8]];
    [(WBSHistoryServiceDatabase *)self _dispatchEvent:v11 listenersToIgnore:0 persistForDelayedDispatching:1 completionHandler:0];

    v12 = 0;
  }

  else
  {
    v12 = v23[5];
  }

  _Block_object_dispose(&v22, 8);

  return v12;
}

uint64_t __107__WBSHistoryServiceDatabase__clearAllHistoryInsertingTombstoneUpToDate_clearAllSpotlightHistoryForProfile___block_invoke(uint64_t a1)
{
  v55 = *MEMORY[0x1E69E9840];
  v37 = [*(a1 + 32) _currentGeneration];
  v2 = [MEMORY[0x1E695DF00] distantPast];
  if (*(a1 + 56) == 1)
  {
    v3 = +[WBSSiriIntelligenceDonor sharedInstance];
    [v3 removeAllCoreSpotlightHistoryDataDonatedBySafariForProfileWithIdentifier:*(*(a1 + 32) + 256)];
  }

  else
  {
    v47 = 0;
    v48 = &v47;
    v49 = 0x5812000000;
    v50 = __Block_byref_object_copy__209;
    v51 = __Block_byref_object_dispose__210;
    v52 = "";
    memset(v53, 0, sizeof(v53));
    v54 = 1065353216;
    *v38 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 40);
    v5 = *(*(a1 + 48) + 8);
    obj = *(v5 + 40);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __107__WBSHistoryServiceDatabase__clearAllHistoryInsertingTombstoneUpToDate_clearAllSpotlightHistoryForProfile___block_invoke_215;
    v34[3] = &unk_1E7FC7360;
    v34[4] = &v47;
    v35 = MEMORY[0x1BFB13CE0](v34);
    LODWORD(v4) = SafariShared::WBSSQLiteDatabaseEnumerate<NSDate * {__strong}&,void({block_pointer} {__strong})(long long)>(v4, &obj, @"SELECT id FROM history_visits WHERE visit_time < ?", v38, &v35);
    objc_storeStrong((v5 + 40), obj);

    if (v4)
    {
      v6 = createQueryWithList(@"SELECT history_items.id FROM history_items LEFT JOIN history_visits ON history_visits.history_item = history_items.id AND history_visits.id NOT IN ("), (v48 + 6), CFSTR(") GROUP BY history_items.id HAVING COUNT(history_visits.history_item) = 0");
      *buf = 0;
      v40 = buf;
      v41 = 0x5812000000;
      v42 = __Block_byref_object_copy__209;
      v43 = __Block_byref_object_dispose__210;
      v44 = "";
      memset(v45, 0, sizeof(v45));
      v46 = 1065353216;
      v7 = *(*(a1 + 32) + 40);
      v8 = *(*(a1 + 48) + 8);
      v33 = *(v8 + 40);
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __107__WBSHistoryServiceDatabase__clearAllHistoryInsertingTombstoneUpToDate_clearAllSpotlightHistoryForProfile___block_invoke_2;
      v31[3] = &unk_1E7FC7360;
      v31[4] = buf;
      v32 = MEMORY[0x1BFB13CE0](v31);
      LODWORD(v7) = SafariShared::WBSSQLiteDatabaseEnumerate<void({block_pointer} {__strong})(long long)>(v7, &v33, v6, &v32);
      objc_storeStrong((v8 + 40), v33);

      if (v7)
      {
        v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:*(v40 + 9)];
        v10 = *(*(a1 + 32) + 40);
        v11 = createQueryWithList(@"SELECT id, url FROM history_items WHERE id IN ("), (v40 + 48), CFSTR(")");
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __107__WBSHistoryServiceDatabase__clearAllHistoryInsertingTombstoneUpToDate_clearAllSpotlightHistoryForProfile___block_invoke_3;
        v28[3] = &unk_1E7FC7388;
        v12 = v9;
        v29 = v12;
        v30 = MEMORY[0x1BFB13CE0](v28);
        LODWORD(v10) = SafariShared::WBSSQLiteDatabaseEnumerate<void({block_pointer} {__strong})(long long,NSString *)>(v10, 0, v11, &v30);

        if (v10)
        {
          [*(a1 + 32) _removeSpotlightDonationsForItemURLs:v12];
        }

        else
        {
          v15 = WBS_LOG_CHANNEL_PREFIXHistory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            __107__WBSHistoryServiceDatabase__clearAllHistoryInsertingTombstoneUpToDate_clearAllSpotlightHistoryForProfile___block_invoke_cold_3();
          }
        }
      }

      else
      {
        v14 = WBS_LOG_CHANNEL_PREFIXHistory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          __107__WBSHistoryServiceDatabase__clearAllHistoryInsertingTombstoneUpToDate_clearAllSpotlightHistoryForProfile___block_invoke_cold_2();
        }
      }

      _Block_object_dispose(buf, 8);
      std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v45);
    }

    else
    {
      v13 = WBS_LOG_CHANNEL_PREFIXHistory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __107__WBSHistoryServiceDatabase__clearAllHistoryInsertingTombstoneUpToDate_clearAllSpotlightHistoryForProfile___block_invoke_cold_1();
      }
    }

    _Block_object_dispose(&v47, 8);
    std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v53);
  }

  v16 = *(*(a1 + 32) + 40);
  [v2 timeIntervalSinceReferenceDate];
  v47 = v17;
  [*(a1 + 40) timeIntervalSinceReferenceDate];
  *buf = v18;
  if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<double,double,long &>(v16, 0, @"INSERT INTO history_tombstones (start_time, end_time, generation) VALUES (?,?,?)", &v47, buf, &v37) != 101)
  {
    v23 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
LABEL_38:

      v24 = [*(*(a1 + 32) + 40) lastErrorWithMethodName:"-[WBSHistoryServiceDatabase _clearAllHistoryInsertingTombstoneUpToDate:clearAllSpotlightHistoryForProfile:]_block_invoke"];
      v25 = *(*(a1 + 48) + 8);
      v26 = *(v25 + 40);
      *(v25 + 40) = v24;

      v22 = 0;
      goto LABEL_39;
    }

LABEL_29:
    [*(*(a1 + 32) + 40) lastErrorMessage];
    objc_claimAutoreleasedReturnValue();
    __107__WBSHistoryServiceDatabase__clearAllHistoryInsertingTombstoneUpToDate_clearAllSpotlightHistoryForProfile___block_invoke_cold_4();
    goto LABEL_38;
  }

  v19 = WBS_LOG_CHANNEL_PREFIXHistory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    __107__WBSHistoryServiceDatabase__clearAllHistoryInsertingTombstoneUpToDate_clearAllSpotlightHistoryForProfile___block_invoke_cold_5();
  }

  if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(*(*(a1 + 32) + 40), 0, @"DELETE FROM history_visits") != 101)
  {
    v23 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [*(*(a1 + 32) + 40) lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      __107__WBSHistoryServiceDatabase__clearAllHistoryInsertingTombstoneUpToDate_clearAllSpotlightHistoryForProfile___block_invoke_cold_6();
    }

    goto LABEL_38;
  }

  v20 = WBS_LOG_CHANNEL_PREFIXHistory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    __107__WBSHistoryServiceDatabase__clearAllHistoryInsertingTombstoneUpToDate_clearAllSpotlightHistoryForProfile___block_invoke_cold_7(buf, [*(*(a1 + 32) + 40) changedRowCount], v20);
  }

  if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(*(*(a1 + 32) + 40), 0, @"DELETE FROM history_items") != 101)
  {
    v23 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    goto LABEL_29;
  }

  v21 = WBS_LOG_CHANNEL_PREFIXHistory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    __107__WBSHistoryServiceDatabase__clearAllHistoryInsertingTombstoneUpToDate_clearAllSpotlightHistoryForProfile___block_invoke_cold_9(v38, [*(*(a1 + 32) + 40) changedRowCount], v21);
  }

  if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(*(*(a1 + 32) + 40), 0, @"DELETE FROM history_items_to_tags") != 101)
  {
    v23 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [*(*(a1 + 32) + 40) lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      __107__WBSHistoryServiceDatabase__clearAllHistoryInsertingTombstoneUpToDate_clearAllSpotlightHistoryForProfile___block_invoke_cold_10();
    }

    goto LABEL_38;
  }

  if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(*(*(a1 + 32) + 40), 0, @"DELETE FROM history_tags") != 101)
  {
    v23 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [*(*(a1 + 32) + 40) lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      __107__WBSHistoryServiceDatabase__clearAllHistoryInsertingTombstoneUpToDate_clearAllSpotlightHistoryForProfile___block_invoke_cold_11();
    }

    goto LABEL_38;
  }

  v22 = 1;
LABEL_39:

  return v22;
}

void __107__WBSHistoryServiceDatabase__clearAllHistoryInsertingTombstoneUpToDate_clearAllSpotlightHistoryForProfile___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:a2];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
}

- (void)clearAllHistoryInsertingTombstoneUpToDate:(id)a3 clearAllSpotlightHistoryForProfile:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (v8)
  {
    queue = self->_queue;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __124__WBSHistoryServiceDatabase_clearAllHistoryInsertingTombstoneUpToDate_clearAllSpotlightHistoryForProfile_completionHandler___block_invoke;
    v13[3] = &unk_1E7FC73D8;
    v13[4] = self;
    v15 = v9;
    v14 = v8;
    v16 = a4;
    dispatch_async(queue, v13);
  }

  else
  {
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    (v10)[2](v10, v12);
  }
}

uint64_t __124__WBSHistoryServiceDatabase_clearAllHistoryInsertingTombstoneUpToDate_clearAllSpotlightHistoryForProfile_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureDatabaseIsSynced];
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) _clearAllHistoryInsertingTombstoneUpToDate:*(a1 + 40) clearAllSpotlightHistoryForProfile:*(a1 + 56)];
  (*(v2 + 16))(v2, v3);

  v4 = *(a1 + 32);

  return [v4 _checkpointWriteAheadLog];
}

- (id)_generateDisposedVisitsForPlan:(void *)a3
{
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:*(a3 + 23)];
  for (i = *(a3 + 22); i; i = *i)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:i[2]];
    [v4 addObject:v6];
  }

  return v4;
}

- (id)_generateUpdatedLastVisit:(const void *)a3
{
  if (*(a3 + 3))
  {
    v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:?];
    for (i = *(a3 + 2); i; i = *i)
    {
      v6 = i[2];
      v7 = [MEMORY[0x1E696AD98] numberWithLongLong:i[3]];
      v8 = [MEMORY[0x1E696AD98] numberWithLongLong:v6];
      [v4 setObject:v7 forKeyedSubscript:v8];
    }
  }

  else
  {
    v4 = [MEMORY[0x1E695DF20] dictionary];
  }

  return v4;
}

- (id)_generateItemsDictionary:(const void *)a3
{
  v18[4] = *MEMORY[0x1E69E9840];
  if (*(a3 + 3))
  {
    v5 = objc_alloc(MEMORY[0x1E69C89F0]);
    database = self->_database;
    v18[0] = 0;
    v7 = [v5 initWithDatabase:database query:@"SELECT * FROM history_items WHERE id = ?" error:v18];
    v8 = v18[0];
    if (v7)
    {
      v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:*(a3 + 3)];
      for (i = *(a3 + 2); i; i = *i)
      {
        v11 = i[2];
        [v7 bindInt64:v11 atParameterIndex:1];
        v12 = [v7 fetch];
        v13 = [v12 nextObject];
        if (v13)
        {
          v14 = [[WBSHistoryServiceItem alloc] initWithSQLRow:v13];
          v15 = [MEMORY[0x1E696AD98] numberWithLongLong:v11];
          [v9 setObject:v14 forKeyedSubscript:v15];

          [v7 reset];
        }
      }

      [v7 invalidate];
    }

    else
    {
      v16 = WBS_LOG_CHANNEL_PREFIXHistory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [v8 safari_privacyPreservingDescription];
        objc_claimAutoreleasedReturnValue();
        [WBSHistoryServiceDatabase _generateItemsDictionary:];
      }

      v9 = [MEMORY[0x1E695DF20] dictionary];
    }
  }

  else
  {
    v9 = [MEMORY[0x1E695DF20] dictionary];
  }

  return v9;
}

- (id)_generateVisitsDictionary:(const void *)a3
{
  v26 = *MEMORY[0x1E69E9840];
  if (*(a3 + 3))
  {
    v5 = objc_alloc(MEMORY[0x1E69C89F0]);
    database = self->_database;
    v22 = 0;
    v7 = [v5 initWithDatabase:database query:@"SELECT * FROM history_visits WHERE id = ?" error:&v22];
    v8 = v22;
    if (v7)
    {
      v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:*(a3 + 3)];
      v23 = 0u;
      v24 = 0u;
      v25 = 1065353216;
      memset(v20, 0, sizeof(v20));
      v21 = 1065353216;
      std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__rehash<true>(&v23, *(a3 + 3));
      std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__rehash<true>(v20, vcvtps_u32_f32(*(a3 + 3) / 1.0));
      for (i = *(a3 + 2); i; i = *i)
      {
        v19 = *(i + 1);
        std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(&v23, &v19 + 1);
      }

      while (*(&v24 + 1))
      {
        if (!v24)
        {
          __break(1u);
        }

        *&v19 = *(v24 + 16);
        std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::erase(&v23, v24);
        std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(v20, &v19);
        [v7 bindInt64:v19 atParameterIndex:1];
        v11 = [v7 fetch];
        v12 = [v11 nextObject];
        if (v12)
        {
          v13 = [[WBSHistoryServiceVisit alloc] initWithSQLRow:v12];
          v14 = [MEMORY[0x1E696AD98] numberWithLongLong:v19];
          [v9 setObject:v13 forKeyedSubscript:v14];

          v18 = [(WBSHistoryServiceVisit *)v13 redirectSource];
          if (v18 && !std::__hash_table<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>>>::find<long long>(v20, &v18))
          {
            std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(&v23, &v18);
          }

          v17 = [(WBSHistoryServiceVisit *)v13 redirectDestination];
          if (v17 && !std::__hash_table<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>>>::find<long long>(v20, &v17))
          {
            std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(&v23, &v17);
          }

          [v7 reset];
        }
      }

      [v7 invalidate];
      std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v20);
      std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(&v23);
    }

    else
    {
      v15 = WBS_LOG_CHANNEL_PREFIXHistory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [v8 safari_privacyPreservingDescription];
        objc_claimAutoreleasedReturnValue();
        [WBSHistoryServiceDatabase _generateItemsDictionary:];
      }

      v9 = [MEMORY[0x1E695DF20] dictionary];
    }
  }

  else
  {
    v9 = [MEMORY[0x1E695DF20] dictionary];
  }

  return v9;
}

- (id)_clearHistoryVisitsAddedAfterDate:(id)a3 beforeDate:(id)a4 tombstoneMode:(unint64_t)a5 clearAllSpotlightHistoryForProfile:(BOOL)a6
{
  v62 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = WBS_LOG_CHANNEL_PREFIXHistory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138740483;
    *&buf[4] = v10;
    *&buf[12] = 2117;
    *&buf[14] = v11;
    *&buf[22] = 2048;
    v46 = a5;
    _os_log_debug_impl(&dword_1BB6F3000, v12, OS_LOG_TYPE_DEBUG, "Clearing all history between %{sensitive}@ and  %{sensitive}@; tombstone mode is %zu", buf, 0x20u);
  }

  [(WBSHistoryServiceDatabase *)self _startingClearHistoryOperationForStartDate:v10 endDate:v11];
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__101;
  v41 = __Block_byref_object_dispose__102;
  v42 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x11012000000;
  v46 = __Block_byref_object_copy__251;
  v47 = __Block_byref_object_dispose__252;
  v48 = "/(2";
  memset(v49, 0, sizeof(v49));
  memset(v51, 0, sizeof(v51));
  v50 = 1065353216;
  v52 = 1065353216;
  memset(v53, 0, sizeof(v53));
  memset(v55, 0, sizeof(v55));
  v54 = 1065353216;
  v56 = 1065353216;
  memset(v57, 0, sizeof(v57));
  v58 = 1065353216;
  v60 = 0;
  v61 = 0;
  v59 = 0;
  tagController = self->_tagController;
  obj = 0;
  v14 = [(WBSHistoryTagDatabaseController *)tagController clearTagsFromStartDate:v10 endDate:v11 error:&obj];
  objc_storeStrong(&v42, obj);
  if (v14)
  {
    database = self->_database;
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __123__WBSHistoryServiceDatabase__clearHistoryVisitsAddedAfterDate_beforeDate_tombstoneMode_clearAllSpotlightHistoryForProfile___block_invoke;
    v28 = &unk_1E7FC7400;
    v34 = a5;
    v29 = self;
    v16 = v10;
    v30 = v16;
    v17 = v11;
    v31 = v17;
    v32 = &v37;
    v33 = buf;
    v35 = a6;
    v18 = [(WBSSQLiteDatabase *)database tryToPerformTransactionInBlock:&v25];
    [(WBSHistoryServiceDatabase *)self _finishedClearingHistory:v25];
    if (v18)
    {
      [(WBSHistoryServiceDatabase *)self _notifyExecutionOfPlan:*&buf[8] + 48];
      v19 = [WBSHistoryServiceEvent alloc];
      v20 = [MEMORY[0x1E695DF00] date];
      v43[0] = @"startDate";
      v43[1] = @"endDate";
      v44[0] = v16;
      v44[1] = v17;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:2];
      v22 = [(WBSHistoryServiceEvent *)v19 initWithType:@"clear" time:v20 value:v21];

      [(WBSHistoryServiceDatabase *)self _dispatchEvent:v22 listenersToIgnore:0 persistForDelayedDispatching:1 completionHandler:0];
      v23 = 0;
    }

    else
    {
      v23 = v38[5];
    }
  }

  else
  {
    [(WBSHistoryServiceDatabase *)self _finishedClearingHistory];
    v23 = v38[5];
  }

  _Block_object_dispose(buf, 8);

  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v57);
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v55);
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v53);
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v51);
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v49);
  _Block_object_dispose(&v37, 8);

  return v23;
}

BOOL __123__WBSHistoryServiceDatabase__clearHistoryVisitsAddedAfterDate_beforeDate_tombstoneMode_clearAllSpotlightHistoryForProfile___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 72);
  if (!v2 || (v2 != 3 ? (v3 = [*(a1 + 32) _currentGeneration]) : (v3 = 0), *&v25[0] = v3, v4 = *(*(a1 + 32) + 40), objc_msgSend(*(a1 + 40), "timeIntervalSinceReferenceDate"), v32 = v5, objc_msgSend(*(a1 + 48), "timeIntervalSinceReferenceDate"), v31 = v6, SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<double,double,long long const&>(v4, 0, @"INSERT INTO history_tombstones (start_time, end_time, generation) VALUES (?,?,?)", &v32, &v31, v25) == 101))
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x5812000000;
    v35 = __Block_byref_object_copy__209;
    v36 = __Block_byref_object_dispose__210;
    v37 = "";
    memset(v38, 0, sizeof(v38));
    v39 = 1065353216;
    v31 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(*(a1 + 32) + 40);
    v9 = *(*(a1 + 56) + 8);
    obj = *(v9 + 40);
    v30 = v7;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __123__WBSHistoryServiceDatabase__clearHistoryVisitsAddedAfterDate_beforeDate_tombstoneMode_clearAllSpotlightHistoryForProfile___block_invoke_2;
    v27[3] = &unk_1E7FC7360;
    v27[4] = &v32;
    v28 = MEMORY[0x1BFB13CE0](v27);
    LOBYTE(v8) = SafariShared::WBSSQLiteDatabaseEnumerate<NSDate * {__strong}&,NSDate * {__strong}&,void({block_pointer} {__strong})(long long)>(v8, &obj, @"SELECT id FROM history_visits WHERE visit_time >= ? AND visit_time < ?", &v31, &v30, &v28);
    objc_storeStrong((v9 + 40), obj);

    if (v8)
    {
      if (!v33[9])
      {
        v14 = 1;
        goto LABEL_17;
      }

      v10 = *(*(a1 + 64) + 8);
      memset(v25, 0, sizeof(v25));
      v26 = 1065353216;
      v11 = [*(a1 + 32) _preparePlan:v10 + 48 itemsToDelete:v25 visitsToDelete:v33 + 6 afterDate:*(a1 + 40) beforeDate:*(a1 + 48)];
      v12 = *(*(a1 + 56) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v25);
      if (!v11)
      {
        v24 = 0;
        *&v25[0] = 0;
        v19 = [*(a1 + 32) _executePlan:*(*(a1 + 64) + 8) + 48 outDeletedItemCount:v25 outDeletedVisitCount:&v24 clearAllSpotlightHistoryForProfile:*(a1 + 80)];
        v20 = *(*(a1 + 56) + 8);
        v21 = *(v20 + 40);
        *(v20 + 40) = v19;

        v14 = v19 == 0;
        if (!v19)
        {
          v22 = WBS_LOG_CHANNEL_PREFIXHistory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            __123__WBSHistoryServiceDatabase__clearHistoryVisitsAddedAfterDate_beforeDate_tombstoneMode_clearAllSpotlightHistoryForProfile___block_invoke_cold_2();
          }
        }

        goto LABEL_17;
      }
    }

    v14 = 0;
LABEL_17:

    _Block_object_dispose(&v32, 8);
    std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v38);
    return v14;
  }

  v15 = WBS_LOG_CHANNEL_PREFIXHistory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [*(*(a1 + 32) + 40) lastErrorMessage];
    objc_claimAutoreleasedReturnValue();
    __123__WBSHistoryServiceDatabase__clearHistoryVisitsAddedAfterDate_beforeDate_tombstoneMode_clearAllSpotlightHistoryForProfile___block_invoke_cold_1();
  }

  v16 = [*(*(a1 + 32) + 40) lastErrorWithMethodName:"-[WBSHistoryServiceDatabase _clearHistoryVisitsAddedAfterDate:beforeDate:tombstoneMode:clearAllSpotlightHistoryForProfile:]_block_invoke"];
  v17 = *(*(a1 + 56) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;

  return 0;
}

- (void)_notifyExecutionOfPlan:(void *)a3
{
  v39[3] = *MEMORY[0x1E69E9840];
  if ([*(a3 + 25) count])
  {
    v5 = [WBSHistoryServiceEvent alloc];
    v28 = [MEMORY[0x1E695DF00] date];
    v38[0] = @"disposedURLs";
    v6 = *(a3 + 25);
    v7 = [v6 copy];
    v39[0] = v7;
    v38[1] = @"disposedHighLevelDomains";
    v8 = *(a3 + 26);
    v9 = [v8 copy];
    v39[1] = v9;
    v38[2] = @"disposedHostnames";
    v10 = *(a3 + 27);
    v11 = [v10 copy];
    v39[2] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:3];
    v13 = [(WBSHistoryServiceEvent *)v5 initWithType:@"maintenance" time:v28 value:v12];

    v14 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v23 = *(a3 + 25);
      v24 = [v23 count];
      v25 = *(a3 + 26);
      v26 = [v25 count];
      v27 = [*(a3 + 27) count];
      *buf = 134218496;
      v33 = v24;
      v34 = 2048;
      v35 = v26;
      v36 = 2048;
      v37 = v27;
      _os_log_debug_impl(&dword_1BB6F3000, v14, OS_LOG_TYPE_DEBUG, "Deletion plan deleted %zu urls, %zu high level domains, %zu hostnames", buf, 0x20u);
    }

    [(WBSHistoryServiceDatabase *)self _dispatchEvent:v13 listenersToIgnore:0 persistForDelayedDispatching:1 completionHandler:0];
  }

  if (*(a3 + 23) | *(a3 + 13))
  {
    v15 = [WBSHistoryServiceEvent alloc];
    v29 = [MEMORY[0x1E695DF00] date];
    v30[0] = @"disposedVisits";
    v16 = [(WBSHistoryServiceDatabase *)self _generateDisposedVisitsForPlan:a3];
    v31[0] = v16;
    v30[1] = @"updateLatestVisits";
    v17 = [(WBSHistoryServiceDatabase *)self _generateUpdatedLastVisit:a3 + 120];
    v31[1] = v17;
    v30[2] = @"updateItems";
    v18 = [(WBSHistoryServiceDatabase *)self _generateItemsDictionary:a3 + 120];
    v31[2] = v18;
    v30[3] = @"updateVisits";
    v19 = [(WBSHistoryServiceDatabase *)self _generateVisitsDictionary:a3 + 120];
    v31[3] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:4];
    v21 = [(WBSHistoryServiceEvent *)v15 initWithType:@"maintenance" time:v29 value:v20];

    v22 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [WBSHistoryServiceDatabase _notifyExecutionOfPlan:];
    }

    [(WBSHistoryServiceDatabase *)self _dispatchEvent:v21 listenersToIgnore:0 persistForDelayedDispatching:0 completionHandler:0];
  }
}

- (void)clearHistoryVisitsAddedAfterDate:(id)a3 beforeDate:(id)a4 tombstoneMode:(unint64_t)a5 clearAllSpotlightHistoryForProfile:(BOOL)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  if (v12 && v13)
  {
    MEMORY[0x1BFB144F0]();
    queue = self->_queue;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __140__WBSHistoryServiceDatabase_clearHistoryVisitsAddedAfterDate_beforeDate_tombstoneMode_clearAllSpotlightHistoryForProfile_completionHandler___block_invoke;
    v17[3] = &unk_1E7FC7428;
    v17[4] = self;
    v20 = v14;
    v18 = v12;
    v19 = v13;
    v21 = a5;
    v22 = a6;
    dispatch_async(queue, v17);
  }

  else
  {
    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    (*(v14 + 2))(v14, v16);
  }
}

void __140__WBSHistoryServiceDatabase_clearHistoryVisitsAddedAfterDate_beforeDate_tombstoneMode_clearAllSpotlightHistoryForProfile_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureDatabaseIsSynced];
  v2 = *(a1 + 56);
  v3 = [*(a1 + 32) _clearHistoryVisitsAddedAfterDate:*(a1 + 40) beforeDate:*(a1 + 48) tombstoneMode:*(a1 + 64) clearAllSpotlightHistoryForProfile:*(a1 + 72)];
  (*(v2 + 16))(v2, v3);

  [*(a1 + 32) _checkpointWriteAheadLog];

  JUMPOUT(0x1BFB14500);
}

- (id)_insertTombstonesForURLs:(id)a3 afterDate:(id)a4 beforeDate:(id)a5 tombstoneMode:(unint64_t)a6
{
  v56 = *MEMORY[0x1E69E9840];
  v41 = a3;
  v10 = a4;
  v42 = a5;
  v39 = v10;
  if ((a6 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v43 = [(WBSHistoryServiceDatabase *)self _shouldEmitLegacyTombstones:v10];
    goto LABEL_5;
  }

  v43 = 0;
  if (a6 != 3)
  {
LABEL_5:
    v11 = [(WBSHistoryServiceDatabase *)self _currentGeneration];
    goto LABEL_6;
  }

  v11 = 0;
LABEL_6:
  v54 = v11;
  [v10 timeIntervalSinceReferenceDate];
  v53 = v12;
  [v42 timeIntervalSinceReferenceDate];
  v52 = v13;
  v14 = objc_alloc(MEMORY[0x1E69C89F0]);
  database = self->_database;
  v51 = 0;
  v16 = [v14 initWithDatabase:database query:@"INSERT INTO history_tombstones (url error:{start_time, end_time, generation) VALUES (?, ?, ?, ?)", &v51}];
  v17 = v51;
  if (!v16)
  {
    v18 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [v17 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      [WBSHistoryServiceDatabase _insertTombstonesForURLs:afterDate:beforeDate:tombstoneMode:];
    }

    v36 = 0;
    goto LABEL_30;
  }

  v18 = [MEMORY[0x1E695DF90] dictionary];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v41;
  v19 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (!v19)
  {
    goto LABEL_23;
  }

  v20 = *v48;
  while (2)
  {
    for (i = 0; i != v19; ++i)
    {
      if (*v48 != v20)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(*(&v47 + 1) + 8 * i);
      v23 = [v22 urlHash];
      if (!v23 || ([v22 urlSalt], v24 = objc_claimAutoreleasedReturnValue(), v25 = v24 == 0, v24, v23, v25))
      {
        v28 = [v22 urlString];
        v29 = v28 == 0;

        if (v29)
        {
          continue;
        }

        if (v43)
        {
          v30 = [v22 urlString];
          [v18 setObject:v30 forKeyedSubscript:@"url"];
        }

        v31 = [(WBSHistoryCrypto *)self->_crypto salt];
        v32 = [v22 urlString];
        v33 = WBSHistorySHA512(v31, v32);
        [v18 setObject:v33 forKeyedSubscript:@"url_hash"];

        v27 = [(WBSHistoryCrypto *)self->_crypto salt];
        [v18 setObject:v27 forKeyedSubscript:@"url_salt"];
      }

      else
      {
        v26 = [v22 urlHash];
        [v18 setObject:v26 forKeyedSubscript:@"url_hash"];

        v27 = [v22 urlSalt];
        [v18 setObject:v27 forKeyedSubscript:@"url_salt"];
      }

      v46 = [(WBSHistoryCrypto *)self->_crypto encryptDictionary:v18];
      SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSData * {__strong}&,double const&,double const&,long const&>(v16, &v46, &v53, &v52, &v54);
      v45 = v17;
      v34 = [v16 execute:&v45];
      v35 = v45;

      if ((v34 & 1) == 0)
      {
        v37 = WBS_LOG_CHANNEL_PREFIXHistory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          [v35 safari_privacyPreservingDescription];
          objc_claimAutoreleasedReturnValue();
          [WBSHistoryServiceDatabase _insertTombstonesForURLs:afterDate:beforeDate:tombstoneMode:];
        }

        [v16 invalidate];
        v36 = 0;
        v17 = v35;
        goto LABEL_30;
      }

      [v16 reset];

      v17 = v35;
    }

    v19 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
    if (v19)
    {
      continue;
    }

    break;
  }

LABEL_23:

  [v16 invalidate];
  v36 = v17;
  v17 = 0;
LABEL_30:

  return v17;
}

- (id)_clearHistoryItems:(id)a3 afterDate:(id)a4 beforeDate:(id)a5 tombstoneMode:(unint64_t)a6
{
  v44 = a6;
  v90 = *MEMORY[0x1E69E9840];
  v45 = a3;
  v73 = a4;
  v72 = a5;
  v64 = 0;
  v65 = &v64;
  v66 = 0x5812000000;
  v67 = __Block_byref_object_copy__209;
  v68 = __Block_byref_object_dispose__210;
  v69 = "";
  memset(v70, 0, sizeof(v70));
  v71 = 1065353216;
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __83__WBSHistoryServiceDatabase__clearHistoryItems_afterDate_beforeDate_tombstoneMode___block_invoke;
  v62[3] = &unk_1E7FC7360;
  v62[4] = &v64;
  v63 = MEMORY[0x1BFB13CE0](v62);
  v8 = WBS_LOG_CHANNEL_PREFIXHistory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v41 = [v45 count];
    *buf = 134218755;
    *&buf[4] = v41;
    *&buf[12] = 2117;
    *&buf[14] = v73;
    *&buf[22] = 2117;
    *&buf[24] = v72;
    LOWORD(v77[0]) = 2048;
    *(v77 + 2) = v44;
    _os_log_debug_impl(&dword_1BB6F3000, v8, OS_LOG_TYPE_DEBUG, "Clearing specific %zu URL(s) between %{sensitive}@ and %{sensitive}@; tombstone mode is %zu", buf, 0x2Au);
  }

  v9 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:self->_database query:@"SELECT id FROM history_items WHERE url = ? LIMIT 1"];
  v47 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:self->_database query:{@"SELECT id FROM history_items WHERE safari_sha512(url, ?) = ? LIMIT 1"}];
  v48 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:self->_database query:@"SELECT id FROM history_visits WHERE history_item = ? AND visit_time > ? AND visit_time < ?"];
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v45;
  v10 = [obj countByEnumeratingWithState:&v58 objects:v89 count:16];
  if (v10)
  {
    v11 = *v59;
    do
    {
      v12 = 0;
      do
      {
        if (*v59 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v58 + 1) + 8 * v12);
        *&v74[0] = 0;
        v14 = [v13 urlString];
        v15 = v14 == 0;

        if (!v15)
        {
          v57 = 0;
          v56 = [v13 urlString];
          *buf = v74;
          v16 = SafariShared::WBSSQLiteDatabaseEnumerate<NSString * {__strong},std::tuple<long long &>>(v9, &v57, &v56, buf);
          v17 = v57;

          if ((v16 & 1) == 0)
          {
            v30 = WBS_LOG_CHANNEL_PREFIXHistory();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              v31 = [v17 safari_privacyPreservingDescription];
              *buf = 138543362;
              *&buf[4] = v31;
              _os_log_impl(&dword_1BB6F3000, v30, OS_LOG_TYPE_INFO, "Unable to locate URL in database: %{public}@", buf, 0xCu);
            }

            v21 = WBS_LOG_CHANNEL_PREFIXHistory();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              v32 = [v13 urlString];
              v33 = [v17 safari_privacyPreservingDescription];
              *buf = 138478083;
              *&buf[4] = v32;
              *&buf[12] = 2114;
              *&buf[14] = v33;
              _os_log_debug_impl(&dword_1BB6F3000, v21, OS_LOG_TYPE_DEBUG, "Unable to locate %{private}@ in database: %{public}@", buf, 0x16u);
            }

LABEL_26:

            goto LABEL_27;
          }

          goto LABEL_10;
        }

        v17 = [v13 urlSalt];
        if (!v17)
        {
          goto LABEL_27;
        }

        v24 = [v13 urlHash];
        v25 = v24 == 0;

        if (!v25)
        {
          v55 = 0;
          v54 = [v13 urlSalt];
          v53 = [v13 urlHash];
          *buf = v74;
          v26 = SafariShared::WBSSQLiteDatabaseEnumerate<NSData * {__strong},NSData * {__strong},std::tuple<long long &>>(v47, &v55, &v54, &v53, buf);
          v17 = v55;

          if ((v26 & 1) == 0)
          {
            v27 = WBS_LOG_CHANNEL_PREFIXHistory();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              v28 = [v17 safari_privacyPreservingDescription];
              *buf = 138543362;
              *&buf[4] = v28;
              _os_log_impl(&dword_1BB6F3000, v27, OS_LOG_TYPE_INFO, "Unable to locate URL in database: %{public}@", buf, 0xCu);
            }

            v21 = WBS_LOG_CHANNEL_PREFIXHistory();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              v29 = [v17 safari_privacyPreservingDescription];
              *buf = 138412546;
              *&buf[4] = v13;
              *&buf[12] = 2114;
              *&buf[14] = v29;
              _os_log_debug_impl(&dword_1BB6F3000, v21, OS_LOG_TYPE_DEBUG, "Unable to locate %@ in database: %{public}@", buf, 0x16u);
            }

            goto LABEL_26;
          }

LABEL_10:
          v18 = v17;
          v52 = v17;
          v19 = SafariShared::WBSSQLiteDatabaseEnumerate<long long &,NSDate * {__strong}&,NSDate * {__strong}&,void({block_pointer} {__strong}&)(long long)>(v48, &v52, v74, &v73, &v72, &v63);
          v17 = v52;

          if (v19)
          {
            goto LABEL_27;
          }

          v20 = WBS_LOG_CHANNEL_PREFIXHistory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v34 = *&v74[0];
            v35 = [v17 safari_privacyPreservingDescription];
            *buf = 134218242;
            *&buf[4] = v34;
            *&buf[12] = 2114;
            *&buf[14] = v35;
            _os_log_error_impl(&dword_1BB6F3000, v20, OS_LOG_TYPE_ERROR, "Unable to fetch visits for URL with item ID %lli in database: %{public}@", buf, 0x16u);
          }

          v21 = WBS_LOG_CHANNEL_PREFIXHistory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            v22 = *&v74[0];
            v23 = [v17 safari_privacyPreservingDescription];
            *buf = 138478339;
            *&buf[4] = v13;
            *&buf[12] = 2048;
            *&buf[14] = v22;
            *&buf[22] = 2114;
            *&buf[24] = v23;
            _os_log_debug_impl(&dword_1BB6F3000, v21, OS_LOG_TYPE_DEBUG, "Unable to fetch visits for %{private}@ (%lli) in database: %{public}@", buf, 0x20u);
          }

          goto LABEL_26;
        }

        v17 = 0;
LABEL_27:

        ++v12;
      }

      while (v10 != v12);
      v36 = [obj countByEnumeratingWithState:&v58 objects:v89 count:16];
      v10 = v36;
    }

    while (v36);
  }

  [v9 invalidate];
  [v47 invalidate];
  [v48 invalidate];
  if (!v44 || ([(WBSHistoryServiceDatabase *)self _insertTombstonesForURLs:obj afterDate:v73 beforeDate:v72 tombstoneMode:?], (v37 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if (v65[9])
    {
      memset(buf, 0, sizeof(buf));
      *&v77[1] = 0u;
      v78 = 0u;
      LODWORD(v77[0]) = 1065353216;
      v79 = 1065353216;
      memset(v80, 0, sizeof(v80));
      memset(v82, 0, sizeof(v82));
      v81 = 1065353216;
      v83 = 1065353216;
      memset(v84, 0, sizeof(v84));
      v85 = 1065353216;
      v87 = 0;
      v86 = 0;
      v88 = 0;
      memset(v74, 0, sizeof(v74));
      v75 = 1065353216;
      v37 = [(WBSHistoryServiceDatabase *)self _preparePlan:buf itemsToDelete:v74 visitsToDelete:v65 + 6 afterDate:v73 beforeDate:v72];
      std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v74);
      if (v37)
      {
        v38 = WBS_LOG_CHANNEL_PREFIXHistory();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          [v37 safari_privacyPreservingDescription];
          objc_claimAutoreleasedReturnValue();
          [WBSHistoryServiceDatabase _clearHistoryItems:afterDate:beforeDate:tombstoneMode:];
        }
      }

      else
      {
        v50 = 0;
        v51 = 0;
        v37 = [(WBSHistoryServiceDatabase *)self _executePlan:buf outDeletedItemCount:&v51 outDeletedVisitCount:&v50 clearAllSpotlightHistoryForProfile:0];
        if (v37)
        {
          v40 = WBS_LOG_CHANNEL_PREFIXHistory();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            [v37 safari_privacyPreservingDescription];
            objc_claimAutoreleasedReturnValue();
            [WBSHistoryServiceDatabase _clearHistoryItems:afterDate:beforeDate:tombstoneMode:];
          }
        }

        else
        {
          v42 = WBS_LOG_CHANNEL_PREFIXHistory();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
          {
            __123__WBSHistoryServiceDatabase__clearHistoryVisitsAddedAfterDate_beforeDate_tombstoneMode_clearAllSpotlightHistoryForProfile___block_invoke_cold_2();
          }

          [(WBSHistoryServiceDatabase *)self _notifyExecutionOfPlan:buf, v44];
        }
      }

      std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v84);
      std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v82);
      std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v80);
      std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(&v77[1]);
      std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(buf);
    }

    else
    {
      v39 = WBS_LOG_CHANNEL_PREFIXHistory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        [WBSHistoryServiceDatabase _clearHistoryItems:afterDate:beforeDate:tombstoneMode:];
      }

      v37 = 0;
    }
  }

  _Block_object_dispose(&v64, 8);
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v70);

  return v37;
}

- (void)clearHistoryItems:(id)a3 afterDate:(id)a4 beforeDate:(id)a5 tombstoneMode:(unint64_t)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if ([v12 count])
  {
    if (v13 && v14)
    {
      MEMORY[0x1BFB144F0]();
      queue = self->_queue;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __100__WBSHistoryServiceDatabase_clearHistoryItems_afterDate_beforeDate_tombstoneMode_completionHandler___block_invoke;
      v18[3] = &unk_1E7FC7478;
      v18[4] = self;
      v19 = v12;
      v20 = v13;
      v21 = v14;
      v23 = a6;
      v22 = v15;
      dispatch_async(queue, v18);
    }

    else
    {
      v17 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
      (*(v15 + 2))(v15, v17);
    }
  }

  else
  {
    (*(v15 + 2))(v15, 0);
  }
}

void __100__WBSHistoryServiceDatabase_clearHistoryItems_afterDate_beforeDate_tombstoneMode_completionHandler___block_invoke(uint64_t a1)
{
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = __Block_byref_object_copy__101;
  v14[4] = __Block_byref_object_dispose__102;
  v15 = 0;
  [*(a1 + 32) _ensureDatabaseIsSynced];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __100__WBSHistoryServiceDatabase_clearHistoryItems_afterDate_beforeDate_tombstoneMode_completionHandler___block_invoke_2;
  v9[3] = &unk_1E7FC7450;
  v8 = *(a1 + 32);
  v2 = *(v8 + 40);
  v12 = v14;
  v3 = *(&v8 + 1);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v10 = v8;
  v11 = v6;
  v13 = *(a1 + 72);
  [v2 tryToPerformTransactionInBlock:v9];
  [*(a1 + 32) _checkpointWriteAheadLog];
  v7 = (*(*(a1 + 64) + 16))();
  MEMORY[0x1BFB14500](v7);

  _Block_object_dispose(v14, 8);
}

BOOL __100__WBSHistoryServiceDatabase_clearHistoryItems_afterDate_beforeDate_tombstoneMode_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _clearHistoryItems:*(a1 + 40) afterDate:*(a1 + 48) beforeDate:*(a1 + 56) tombstoneMode:*(a1 + 72)];
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return *(*(*(a1 + 64) + 8) + 40) == 0;
}

- (void)finishClearingHistoryIfNecessaryWithCompletionHandler:(id)a3
{
  v4 = a3;
  MEMORY[0x1BFB144F0]();
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __83__WBSHistoryServiceDatabase_finishClearingHistoryIfNecessaryWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7FB6F08;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __83__WBSHistoryServiceDatabase_finishClearingHistoryIfNecessaryWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v16 = 0;
  v3 = [v2 _dateForMetadataKey:@"clear_history_start_date" error:&v16];
  v4 = v16;
  v5 = v4;
  if (v3)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 == 0;
  }

  if (v6)
  {
    v7 = *(a1 + 32);
    v15 = v5;
    v8 = [v7 _dateForMetadataKey:@"clear_history_end_date" error:&v15];
    v13 = v15;

    if (v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = v13 == 0;
    }

    if (v9)
    {
      if (v8)
      {
        v10 = *(a1 + 32);
        v11 = *(a1 + 40);
        if (v3)
        {
          [v10 _clearHistoryVisitsAddedAfterDate:v3 beforeDate:v8 tombstoneMode:1 clearAllSpotlightHistoryForProfile:0];
        }

        else
        {
          [v10 _clearAllHistoryInsertingTombstoneUpToDate:v8 clearAllSpotlightHistoryForProfile:0];
        }
        v12 = ;
        (*(v11 + 16))(v11, v12);

        MEMORY[0x1BFB14500]();
      }

      else
      {
        v14 = WBS_LOG_CHANNEL_PREFIXHistory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          __83__WBSHistoryServiceDatabase_finishClearingHistoryIfNecessaryWithCompletionHandler___block_invoke_cold_1();
        }

        [*(a1 + 32) _finishedClearingHistory];
        (*(*(a1 + 40) + 16))();
      }
    }

    else
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
    v13 = v5;
  }
}

- (double)_oldestLatestVisit
{
  v2 = SafariShared::WBSSQLiteDatabaseFetch<>(self->_database, @"SELECT MIN(visit_time) FROM history_visits WHERE id = safari_latest_visit_for (history_item) AND history_item IN (SELECT id FROM history_items)");
  v3 = [v2 nextObject];
  [v3 doubleAtIndex:0];
  v5 = v4;

  return v5;
}

- (id)_expireOldVisits:(double)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = WBS_LOG_CHANNEL_PREFIXHistory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v13 = a3;
    _os_log_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_INFO, "Expiring old visits. Interval is %f", buf, 0xCu);
  }

  v6 = [(WBSHistoryServiceDatabase *)self _ensureLatestVisitsAreComputed];
  [(WBSHistoryServiceDatabase *)self _oldestLatestVisit];
  v11 = v7 - a3;
  if (v7 - a3 < 0.0 || SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<double &>(self->_database, 0, @"DELETE FROM history_visits WHERE visit_time < ?", &v11) == 101)
  {
    v8 = 0;
  }

  else
  {
    v9 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSHistoryServiceDatabase _expireOldVisits:];
    }

    v8 = [(WBSSQLiteDatabase *)self->_database lastErrorWithMethodName:"[WBSHistoryServiceDatabase _expireOldVisits:]"];
  }

  return v8;
}

- (void)expireOldVisits:(double)a3 completionHandler:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__WBSHistoryServiceDatabase_expireOldVisits_completionHandler___block_invoke;
  block[3] = &unk_1E7FC74A0;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(queue, block);
}

void __63__WBSHistoryServiceDatabase_expireOldVisits_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureDatabaseIsSynced];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) _expireOldVisits:*(a1 + 48)];
  (*(v2 + 16))(v2);
}

- (id)_recomputeVisitScores:(void *)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = WBS_LOG_CHANNEL_PREFIXHistory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_INFO, "Recomputing visit scores", buf, 2u);
  }

  database = self->_database;
  v21 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __51__WBSHistoryServiceDatabase__recomputeVisitScores___block_invoke;
  v19[3] = &__block_descriptor_40_e8_v16__0q8l;
  v19[4] = a3;
  v20 = MEMORY[0x1BFB13CE0](v19);
  v7 = SafariShared::WBSSQLiteDatabaseEnumerate<void({block_pointer} {__strong})(long long)>(database, &v21, @"SELECT id FROM history_visits WHERE history_item IN (SELECT id FROM history_items WHERE should_recompute_derived_visit_counts <> 0) AND score <> safari_visit_score(attributes, origin)", &v20);
  v8 = v21;

  if (v7)
  {
    if (*(a3 + 3))
    {
      v9 = self->_database;
      v18 = v8;
      v10 = createQueryWithList(@"UPDATE history_visits SET score = safari_visit_score(attributes, origin) WHERE id IN ("), a3, CFSTR(")");
      v11 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(v9, &v18, v10);
      v12 = v18;

      if (v11 && v11 != 101)
      {
        v15 = WBS_LOG_CHANNEL_PREFIXHistory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [v12 safari_privacyPreservingDescription];
          objc_claimAutoreleasedReturnValue();
          [WBSHistoryServiceDatabase _recomputeVisitScores:];
        }

        v8 = v12;
      }

      else
      {
        v13 = WBS_LOG_CHANNEL_PREFIXHistory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = [(WBSSQLiteDatabase *)self->_database changedRowCount];
          *buf = 134217984;
          v23 = v14;
          _os_log_impl(&dword_1BB6F3000, v13, OS_LOG_TYPE_INFO, "Updated score of %zi visits", buf, 0xCu);
        }

        v8 = 0;
        v15 = v12;
      }
    }

    else
    {
      v16 = WBS_LOG_CHANNEL_PREFIXHistory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [WBSHistoryServiceDatabase _recomputeVisitScores:];
      }

      v15 = v8;
      v8 = 0;
    }
  }

  else
  {
    v15 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [v8 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      [WBSHistoryServiceDatabase _recomputeVisitScores:];
    }
  }

  return v8;
}

- (id)_recomputeItemScores:(void *)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = WBS_LOG_CHANNEL_PREFIXHistory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_INFO, "Recomputing item scores", buf, 2u);
  }

  database = self->_database;
  v27 = 0;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __50__WBSHistoryServiceDatabase__recomputeItemScores___block_invoke;
  v25[3] = &__block_descriptor_40_e8_v16__0q8l;
  v25[4] = a3;
  v26 = MEMORY[0x1BFB13CE0](v25);
  v7 = SafariShared::WBSSQLiteDatabaseEnumerate<void({block_pointer} {__strong})(long long)>(database, &v27, @"SELECT id FROM history_items WHERE should_recompute_derived_visit_counts <> 0", &v26);
  v8 = v27;

  if (v7)
  {
    if (!*(a3 + 3))
    {
      v17 = WBS_LOG_CHANNEL_PREFIXHistory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [WBSHistoryServiceDatabase _recomputeItemScores:];
      }

      v9 = v8;
      goto LABEL_21;
    }

    v9 = createQueryWithList(@"WITH view_history_visit_ranges_by_item(id, min, max) AS (SELECT history_item AS id, max(min(visit_time), max(visit_time) - ?) AS min, max(visit_time) AS max FROM history_visits WHERE history_visits.history_item IN ("), a3, CFSTR(") GROUP BY history_visits.history_item), view_history_item_scores(id, visit_count_score, daily_visit_counts, weekly_visit_counts) AS (SELECT history_visits.history_item AS id,sum(score) AS visit_count_score,safari_compute_daily_visit_counts(view_history_visit_ranges_by_item.min, view_history_visit_ranges_by_item.max, visit_time, score) AS daily_visit_counts,safari_compute_weekly_visit_counts(view_history_visit_ranges_by_item.min, view_history_visit_ranges_by_item.max, visit_time, score) AS weekly_visit_counts FROM history_visits INNER JOIN view_history_visit_ranges_by_item ON view_history_visit_ranges_by_item.id = history_visits.history_item WHERE history_visits.visit_time >= view_history_visit_ranges_by_item.min GROUP BY history_visits.history_item) UPDATE history_items SET visit_count_score = (SELECT view_history_item_scores.visit_count_score FROM view_history_item_scores INNER JOIN history_items ON history_items.id = view_history_item_scores.id),daily_visit_counts = (SELECT view_history_item_scores.daily_visit_counts FROM view_history_item_scores INNER JOIN history_items ON history_items.id = view_history_item_scores.id),weekly_visit_counts = (SELECT view_history_item_scores.weekly_visit_counts FROM view_history_item_scores INNER JOIN history_items ON history_items.id = view_history_item_scores.id),should_recompute_derived_visit_counts = 0 WHERE history_items.id IN (SELECT view_history_item_scores.id FROM view_history_item_scores)");
    v24 = 86400.0 * 0x31uLL;
    v10 = self->_database;
    v23 = v8;
    v11 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<double const&>(v10, &v23, v9, &v24);
    v12 = v23;

    v8 = v12;
    if (!v11 || v11 == 101)
    {
      if (![(WBSSQLiteDatabase *)self->_database changedRowCount])
      {
        v13 = createQueryWithList(@"SELECT COUNT(*) FROM history_visits WHERE history_visits.history_item IN ("), a3, CFSTR(")");
        v14 = SafariShared::WBSSQLiteDatabaseFetch<>(self->_database, v13);
        v15 = [v14 nextObject];
        v16 = v15;
        if (v15)
        {
          [v15 int64AtIndex:0];
        }

        v18 = [v14 statement];
        [v18 invalidate];

        v19 = WBS_LOG_CHANNEL_PREFIXHistory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [WBSHistoryServiceDatabase _recomputeItemScores:];
        }
      }

      v20 = WBS_LOG_CHANNEL_PREFIXHistory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = [(WBSSQLiteDatabase *)self->_database changedRowCount];
        *buf = 134217984;
        v29 = v21;
        _os_log_impl(&dword_1BB6F3000, v20, OS_LOG_TYPE_INFO, "Updated score of %zi items", buf, 0xCu);
      }

LABEL_21:
      v8 = 0;
    }
  }

  else
  {
    v9 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [v8 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      [WBSHistoryServiceDatabase _recomputeItemScores:];
    }
  }

  return v8;
}

- (void)recomputeItemScoresWithCompletionHandler:(id)a3
{
  v4 = a3;
  MEMORY[0x1BFB144F0]();
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__WBSHistoryServiceDatabase_recomputeItemScoresWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7FB6F08;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

uint64_t __70__WBSHistoryServiceDatabase_recomputeItemScoresWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureDatabaseIsSynced];
  memset(v7, 0, sizeof(v7));
  v8 = 1065353216;
  v2 = [*(a1 + 32) _recomputeItemScores:v7];
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = (*(v3 + 16))(v3, 0, v2);
  }

  else
  {
    v5 = [[WBSSetInt64 alloc] initWithMovableSet:v7];
    (*(v3 + 16))(v3, v5, 0);
  }

  MEMORY[0x1BFB14500](v4);

  return std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v7);
}

- (id)_findAllRelatedVisits:(const void *)a3 forPlan:(void *)a4 afterDate:(id)a5 beforeDate:(id)a6
{
  v61 = a5;
  v60 = a6;
  v53 = 0;
  v54 = &v53;
  v55 = 0x5812000000;
  v56 = __Block_byref_object_copy__209;
  v57 = __Block_byref_object_dispose__210;
  v58 = "";
  std::unordered_set<long long>::unordered_set(v59, a3);
  v45 = 0;
  v46 = &v45;
  v47 = 0x5812000000;
  v48 = __Block_byref_object_copy__209;
  v49 = __Block_byref_object_dispose__210;
  v50 = "";
  memset(v51, 0, sizeof(v51));
  v52 = 1065353216;
  do
  {
    if (!v54[9])
    {
      goto LABEL_20;
    }

    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v44 = 0;
    v33 = 0;
    v34 = &v33;
    v35 = 0x5812000000;
    v36 = __Block_byref_object_copy__209;
    v37 = __Block_byref_object_dispose__210;
    v38 = "";
    memset(v39, 0, sizeof(v39));
    v40 = 1065353216;
    v10 = createQueryWithList(@"SELECT id, history_item, redirect_source, redirect_destination FROM history_visits WHERE id IN ("), (v54 + 6), CFSTR(")");
    std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__rehash<true>(a4, vcvtps_u32_f32((v54[9] + *(a4 + 3)) / *(a4 + 8)));
    v11 = v54;
    v12 = v54[8];
    if (v12)
    {
      do
      {
        v31 = v12[2];
        v32 = 0;
        std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__emplace_unique_key_args<long long,std::pair<long long,int>>(a4, &v31);
        v12 = *v12;
      }

      while (v12);
      v11 = v54;
    }

    std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::clear(v11 + 6);
    database = self->_database;
    v30 = 0;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __80__WBSHistoryServiceDatabase__findAllRelatedVisits_forPlan_afterDate_beforeDate___block_invoke;
    v28[3] = &unk_1E7FC74E8;
    v28[4] = self;
    v28[5] = &v45;
    v28[9] = a4;
    v28[10] = a4;
    v28[6] = &v33;
    v28[7] = &v53;
    v28[8] = &v41;
    v29 = MEMORY[0x1BFB13CE0](v28);
    v14 = SafariShared::WBSSQLiteDatabaseEnumerate<void({block_pointer} {__strong})(long long,long long,long long,long long)>(database, &v30, v10, &v29);
    v15 = v30;

    if ((v14 & 1) == 0)
    {
      v19 = 0;
      v16 = 1;
      v24 = v15;
      goto LABEL_18;
    }

    if (!v42[3])
    {
      v16 = 3;
LABEL_17:
      v19 = v15;
      goto LABEL_18;
    }

    v16 = 0;
    if (!v34[9] || !v61 || !v60)
    {
      goto LABEL_17;
    }

    v17 = createQueryWithList(@"SELECT id FROM history_visits WHERE history_item IN ("), (v34 + 6), CFSTR(") AND redirect_destination IS NULL AND visit_time > ? AND visit_time < ?");

    v18 = self->_database;
    v27 = v15;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __80__WBSHistoryServiceDatabase__findAllRelatedVisits_forPlan_afterDate_beforeDate___block_invoke_2;
    v25[3] = &unk_1E7FC7510;
    v25[4] = &v53;
    v25[5] = a4;
    v26 = MEMORY[0x1BFB13CE0](v25);
    SafariShared::WBSSQLiteDatabaseEnumerate<NSDate * {__strong}&,NSDate * {__strong}&,void({block_pointer} {__strong})(long long)>(v18, &v27, v17, &v61, &v60, &v26);
    v19 = v27;

    v20 = v34[8];
    if (v20)
    {
      v21 = v46;
      do
      {
        std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(v21 + 6, v20 + 2);
        v20 = *v20;
      }

      while (v20);
    }

    v16 = 0;
    v10 = v17;
LABEL_18:

    _Block_object_dispose(&v33, 8);
    std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v39);
    _Block_object_dispose(&v41, 8);
  }

  while (!v16);
  if (v16 == 3)
  {
LABEL_20:
    v22 = 0;
    goto LABEL_22;
  }

  v22 = v24;
LABEL_22:
  _Block_object_dispose(&v45, 8);
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v51);
  _Block_object_dispose(&v53, 8);
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v59);

  return v22;
}

void *__80__WBSHistoryServiceDatabase__findAllRelatedVisits_forPlan_afterDate_beforeDate___block_invoke(void *a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v14 = a3;
  v15[0] = a2;
  v12 = a5;
  v13 = a4;
  if (!std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>((a1[9] + 40), &v14))
  {
    std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>((a1[9] + 80), &v14);
    std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>((a1[9] + 160), v15);
    if (!std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>((*(a1[5] + 8) + 48), &v14))
    {
      VisitID = SafariShared::LatestVisitInformationMap::lastVisitID((a1[4] + 88), v14);
      if (VisitID == v15[0])
      {
        std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>((*(a1[6] + 8) + 48), &v14);
      }
    }
  }

  v9 = v14;
  v10 = a1[10];
  v15[2] = v15;
  result = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(v10, v15);
  if (result)
  {
    result[3] = v9;
    if (a4)
    {
      result = std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>(a1[10], &v13);
      if (!result)
      {
        result = std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>((*(a1[7] + 8) + 48), &v13);
      }
    }

    if (a5)
    {
      result = std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>(a1[10], &v12);
      if (!result)
      {
        result = std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>((*(a1[7] + 8) + 48), &v12);
      }
    }

    ++*(*(a1[8] + 8) + 24);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *__80__WBSHistoryServiceDatabase__findAllRelatedVisits_forPlan_afterDate_beforeDate___block_invoke_2(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  result = std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>(*(a1 + 40), &v4);
  if (!result)
  {
    return std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>((*(*(a1 + 32) + 8) + 48), &v4);
  }

  return result;
}

- (id)_findAllRelatedVisitsToItems:(const void *)a3 forPlan:(void *)a4
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x5812000000;
  v17 = __Block_byref_object_copy__209;
  v18 = __Block_byref_object_dispose__210;
  v19 = "";
  memset(v20, 0, sizeof(v20));
  v21 = 1065353216;
  database = self->_database;
  v13 = 0;
  v7 = createQueryWithList(@"SELECT id FROM history_visits WHERE history_item IN ("), a3, CFSTR(")");
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__WBSHistoryServiceDatabase__findAllRelatedVisitsToItems_forPlan___block_invoke;
  v11[3] = &unk_1E7FC7360;
  v11[4] = &v14;
  v12 = MEMORY[0x1BFB13CE0](v11);
  LOBYTE(database) = SafariShared::WBSSQLiteDatabaseEnumerate<void({block_pointer} {__strong})(long long)>(database, &v13, v7, &v12);
  v8 = v13;

  if (database)
  {
    [(WBSHistoryServiceDatabase *)self _findAllRelatedVisits:v15 + 6 forPlan:a4 afterDate:0 beforeDate:0];
    v8 = v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v14, 8);
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v20);

  return v8;
}

- (id)_findObsoleteItemsForPlan:(void *)a3
{
  v5 = WBS_LOG_CHANNEL_PREFIXHistory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_INFO, "Searching for obsolete items", buf, 2u);
  }

  if (*(a3 + 23))
  {
    v6 = createQueryWithList(@"SELECT history_items.id FROM history_items LEFT JOIN history_visits ON history_visits.history_item = history_items.id AND history_visits.id NOT IN ("), a3 + 160, CFSTR(") GROUP BY history_items.id HAVING COUNT(history_visits.history_item) = 0");
    database = self->_database;
    v15 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __55__WBSHistoryServiceDatabase__findObsoleteItemsForPlan___block_invoke;
    v13[3] = &__block_descriptor_40_e8_v16__0q8l;
    v13[4] = a3;
    v14 = MEMORY[0x1BFB13CE0](v13);
    v8 = SafariShared::WBSSQLiteDatabaseEnumerate<void({block_pointer} {__strong})(long long)>(database, &v15, v6, &v14);
    v9 = v15;

    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    if (v8)
    {
      v11 = 0;
    }

    else
    {
      v11 = v9;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_preparePlan:(void *)a3 itemsToDelete:(const void *)a4 visitsToDelete:(const void *)a5 afterDate:(id)a6 beforeDate:(id)a7
{
  v27 = *MEMORY[0x1E69E9840];
  v12 = a6;
  v13 = a7;
  v14 = WBS_LOG_CHANNEL_PREFIXHistory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    LOWORD(v23) = 0;
    _os_log_impl(&dword_1BB6F3000, v14, OS_LOG_TYPE_INFO, "Preparing plan", &v23, 2u);
  }

  for (i = *(a4 + 2); i; i = *i)
  {
    std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(a3 + 5, i + 2);
  }

  if (!*(a5 + 3) || ([(WBSHistoryServiceDatabase *)self _findAllRelatedVisits:a5 forPlan:a3 afterDate:v12 beforeDate:v13], (v16 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if (!*(a4 + 3) || ([(WBSHistoryServiceDatabase *)self _findAllRelatedVisitsToItems:a4 forPlan:a3], (v16 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v16 = [(WBSHistoryServiceDatabase *)self _findObsoleteItemsForPlan:a3];
      if (!v16)
      {
        SafariShared::DeletionPlan::sanitizeItemTouched(a3);
        SafariShared::DeletionPlan::sanitizeVisitsToDelete(a3);
        v17 = WBS_LOG_CHANNEL_PREFIXHistory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = *(a3 + 8);
          v19 = *(a3 + 23);
          v23 = 134218240;
          v24 = v18;
          v25 = 2048;
          v26 = v19;
          _os_log_impl(&dword_1BB6F3000, v17, OS_LOG_TYPE_INFO, "Plan will delete %zu items, %zu visits", &v23, 0x16u);
        }

        v20 = WBS_LOG_CHANNEL_PREFIXHistory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = *(a3 + 13);
          v23 = 134217984;
          v24 = v21;
          _os_log_impl(&dword_1BB6F3000, v20, OS_LOG_TYPE_INFO, "Plan will modify %zu items", &v23, 0xCu);
        }

        v16 = 0;
      }
    }
  }

  return v16;
}

- (unint64_t)_countOfItems
{
  database = self->_database;
  v4 = &v5;
  v5 = 0;
  SafariShared::WBSSQLiteDatabaseEnumerate<std::tuple<long long &>>(database, 0, @"SELECT count(*) FROM history_items", &v4);
  return v5;
}

- (id)_deleteOldestItems:(unint64_t)a3 forPlan:(void *)a4
{
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@" GROUP BY history_items.id ORDER BY MAX(visit_time) LIMIT %zu"], a3);
  v7 = createQueryWithList(@"SELECT history_items.id FROM history_items INNER JOIN history_visits ON history_visits.history_item = history_items.id WHERE history_items.id NOT IN ("), a4 + 40, v6;

  v19 = 0;
  v20 = &v19;
  v21 = 0x5812000000;
  v22 = __Block_byref_object_copy__209;
  v23 = __Block_byref_object_dispose__210;
  v24 = "";
  memset(v25, 0, sizeof(v25));
  v26 = 1065353216;
  database = self->_database;
  v18 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __56__WBSHistoryServiceDatabase__deleteOldestItems_forPlan___block_invoke;
  v16[3] = &unk_1E7FC7360;
  v16[4] = &v19;
  v17 = MEMORY[0x1BFB13CE0](v16);
  v9 = SafariShared::WBSSQLiteDatabaseEnumerate<void({block_pointer} {__strong})(long long)>(database, &v18, v7, &v17);
  v10 = v18;

  if (v9)
  {
    v11 = v20;
    v12 = v20[8];
    if (v12)
    {
      do
      {
        v15 = v12[2];
        std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(a4 + 5, &v15);
        v12 = *v12;
      }

      while (v12);
      v11 = v20;
    }

    [(WBSHistoryServiceDatabase *)self _findAllRelatedVisitsToItems:v11 + 6 forPlan:a4];
    v10 = v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  _Block_object_dispose(&v19, 8);
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v25);

  return v10;
}

- (id)_preparePlan:(void *)a3 ageLimit:(double)a4 itemCountLimit:(unint64_t)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v33 = a4;
  v25 = 0;
  v26 = &v25;
  v27 = 0x5812000000;
  v28 = __Block_byref_object_copy__209;
  v29 = __Block_byref_object_dispose__210;
  v30 = "";
  memset(v31, 0, sizeof(v31));
  v32 = 1065353216;
  database = self->_database;
  v24 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __66__WBSHistoryServiceDatabase__preparePlan_ageLimit_itemCountLimit___block_invoke;
  v22[3] = &unk_1E7FC7360;
  v22[4] = &v25;
  v23 = MEMORY[0x1BFB13CE0](v22, a2);
  v9 = SafariShared::WBSSQLiteDatabaseEnumerate<double &,void({block_pointer} {__strong})(long long)>(database, &v24, @"SELECT id FROM history_visits WHERE visit_time < ?", &v33, &v23);
  v10 = v24;

  if (v9)
  {
    memset(buf, 0, sizeof(buf));
    v35 = 1065353216;
    v11 = [(WBSHistoryServiceDatabase *)self _preparePlan:a3 itemsToDelete:buf visitsToDelete:v26 + 6 afterDate:0 beforeDate:0];
    std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(buf);
    v12 = [(WBSHistoryServiceDatabase *)self _countOfItems];
    v13 = *(a3 + 8);
    if (v12 != v13)
    {
      if (v12 - v13 > a5)
      {
        v14 = [(WBSHistoryServiceDatabase *)self _deleteOldestItems:v12 - a5 - v13 forPlan:a3];
        if (v14 || ([(WBSHistoryServiceDatabase *)self _findObsoleteItemsForPlan:a3], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v15 = v10;
          v10 = v14;
          goto LABEL_14;
        }

        SafariShared::DeletionPlan::sanitizeItemTouched(a3);
        SafariShared::DeletionPlan::sanitizeVisitsToDelete(a3);
      }

      v16 = WBS_LOG_CHANNEL_PREFIXHistory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = *(a3 + 8);
        v18 = *(a3 + 23);
        *buf = 134218240;
        *&buf[4] = v17;
        *&buf[12] = 2048;
        *&buf[14] = v18;
        _os_log_impl(&dword_1BB6F3000, v16, OS_LOG_TYPE_INFO, "Plan will delete %zu items, %zu visits", buf, 0x16u);
      }

      v19 = WBS_LOG_CHANNEL_PREFIXHistory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = *(a3 + 13);
        *buf = 134217984;
        *&buf[4] = v20;
        _os_log_impl(&dword_1BB6F3000, v19, OS_LOG_TYPE_INFO, "Plan will modify %zu items", buf, 0xCu);
      }
    }

    v15 = v10;
    v10 = 0;
  }

  else
  {
    v15 = 0;
  }

LABEL_14:
  _Block_object_dispose(&v25, 8);
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v31);

  return v10;
}

- (void)deletionPlanForItemsToDelete:(id)a3 visitsToDelete:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __91__WBSHistoryServiceDatabase_deletionPlanForItemsToDelete_visitsToDelete_completionHandler___block_invoke;
  v15[3] = &unk_1E7FC6910;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

uint64_t __91__WBSHistoryServiceDatabase_deletionPlanForItemsToDelete_visitsToDelete_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureDatabaseIsSynced];
  memset(v8, 0, sizeof(v8));
  LODWORD(v9) = 1065353216;
  memset(v10, 0, sizeof(v10));
  LODWORD(v11) = 1065353216;
  memset(v12, 0, sizeof(v12));
  LODWORD(v13) = 1065353216;
  memset(v14, 0, sizeof(v14));
  LODWORD(v15) = 1065353216;
  memset(v16, 0, sizeof(v16));
  LODWORD(v17) = 1065353216;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v2 = [*(a1 + 32) _preparePlan:v8 itemsToDelete:objc_msgSend(*(a1 + 40) visitsToDelete:"set" afterDate:0 beforeDate:{0, 0, 0, v9, 0, 0, 0, 0, v11, 0, 0, 0, 0, v13, 0, 0, 0, 0, v15, 0, 0, 0, 0, v17), objc_msgSend(*(a1 + 48), "set"), 0, 0}];
  v3 = *(a1 + 56);
  if (v2)
  {
    (*(v3 + 16))(*(a1 + 56), 0, 0, 0, v2);
  }

  else
  {
    v4 = [[WBSSetInt64 alloc] initWithMovableSet:v10];
    v5 = [[WBSSetInt64 alloc] initWithMovableSet:v16];
    v6 = [[WBSSetInt64 alloc] initWithMovableSet:v12];
    (*(v3 + 16))(v3, v4, v5, v6, 0);
  }

  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v16);
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v14);
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v12);
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v10);
  return std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v8);
}

- (void)deletionPlanForAgeLimit:(double)a3 itemCountLimit:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = a5;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __86__WBSHistoryServiceDatabase_deletionPlanForAgeLimit_itemCountLimit_completionHandler___block_invoke;
  v11[3] = &unk_1E7FC7538;
  v13 = a3;
  v14 = a4;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  dispatch_async(queue, v11);
}

uint64_t __86__WBSHistoryServiceDatabase_deletionPlanForAgeLimit_itemCountLimit_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureDatabaseIsSynced];
  memset(v8, 0, sizeof(v8));
  v9 = 1065353216;
  memset(v10, 0, sizeof(v10));
  v11 = 1065353216;
  memset(v12, 0, sizeof(v12));
  v13 = 1065353216;
  memset(v14, 0, sizeof(v14));
  v15 = 1065353216;
  memset(v16, 0, sizeof(v16));
  v17 = 1065353216;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v2 = [*(a1 + 32) _preparePlan:v8 ageLimit:*(a1 + 56) itemCountLimit:*(a1 + 48)];
  v3 = *(a1 + 40);
  if (v2)
  {
    (*(v3 + 16))(*(a1 + 40), 0, 0, 0, v2);
  }

  else
  {
    v4 = [[WBSSetInt64 alloc] initWithMovableSet:v10];
    v5 = [[WBSSetInt64 alloc] initWithMovableSet:v16];
    v6 = [[WBSSetInt64 alloc] initWithMovableSet:v12];
    (*(v3 + 16))(v3, v4, v5, v6, 0);
  }

  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v16);
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v14);
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v12);
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v10);
  return std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v8);
}

- (id)_collectDeletedURLsForPlan:(void *)a3
{
  if (*(a3 + 8))
  {
    v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:?];
    database = self->_database;
    v7 = createQueryWithList(@"SELECT id, url FROM history_items WHERE id IN ("), a3 + 40, CFSTR(")");
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __56__WBSHistoryServiceDatabase__collectDeletedURLsForPlan___block_invoke;
    v10[3] = &unk_1E7FC7388;
    v8 = v5;
    v11 = v8;
    v12 = MEMORY[0x1BFB13CE0](v10);
    SafariShared::WBSSQLiteDatabaseEnumerate<void({block_pointer} {__strong})(long long,NSString *)>(database, 0, v7, &v12);
  }

  else
  {
    v8 = [MEMORY[0x1E695DF20] dictionary];
  }

  return v8;
}

void __56__WBSHistoryServiceDatabase__collectDeletedURLsForPlan___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:a2];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
}

- (id)_collectDeletedHighLevelDomainsForPlan:(void *)a3
{
  if (*(a3 + 8))
  {
    if ([*(a3 + 27) count])
    {
      v5 = [(WBSHistoryServiceDatabase *)self _collectDeletedHighLevelDomainsFromDeletedHostnamesForPlan:a3];
    }

    else
    {
      v6 = createQueryWithList(@"WITH deleted_item_ids AS (SELECT id FROM history_items WHERE id IN ("), a3 + 40, CFSTR(")), deleted_domains_with_counts AS (SELECT safari_high_level_domain(url) AS deleted_domain, COUNT(*) AS deleted_domain_count FROM history_items WHERE id IN (SELECT id FROM deleted_item_ids) GROUP BY deleted_domain) SELECT safari_high_level_domain(url) AS domain FROM history_items WHERE domain IN (SELECT deleted_domain FROM deleted_domains_with_counts) GROUP BY domain HAVING (COUNT(*) - (SELECT deleted_domain_count FROM deleted_domains_with_counts WHERE deleted_domain = safari_high_level_domain(url))) <= 0");
      v7 = [MEMORY[0x1E695DF70] array];
      database = self->_database;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __68__WBSHistoryServiceDatabase__collectDeletedHighLevelDomainsForPlan___block_invoke;
      v10[3] = &unk_1E7FB8118;
      v5 = v7;
      v11 = v5;
      v12 = MEMORY[0x1BFB13CE0](v10);
      SafariShared::WBSSQLiteDatabaseEnumerate<void({block_pointer} {__strong})(NSString *)>(database, 0, v6, &v12);
    }
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (id)_collectDeletedHighLevelDomainsFromDeletedHostnamesForPlan:(void *)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695DFD8];
  v6 = [*(a3 + 27) safari_mapObjectsUsingBlock:&__block_literal_global_331];
  v7 = [v5 setWithArray:v6];
  v31 = [v7 mutableCopy];

  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __88__WBSHistoryServiceDatabase__collectDeletedHighLevelDomainsFromDeletedHostnamesForPlan___block_invoke_2;
  v41[3] = &__block_descriptor_40_e27___NSString_16__0__NSArray_8l;
  v41[4] = a3;
  v30 = MEMORY[0x1BFB13CE0](v41);
  v27 = [MEMORY[0x1E695DF70] array];
  v8 = v31;
  v28 = [MEMORY[0x1E695DF70] array];
  v9 = [MEMORY[0x1E695DF70] array];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __88__WBSHistoryServiceDatabase__collectDeletedHighLevelDomainsFromDeletedHostnamesForPlan___block_invoke_3;
  v36[3] = &unk_1E7FC7580;
  v10 = v9;
  v37 = v10;
  v11 = v27;
  v38 = v11;
  v40 = v30;
  v12 = v28;
  v39 = v12;
  v29 = v10;
  [v31 enumerateObjectsUsingBlock:v36];
  if ([v10 count])
  {
    v13 = (v30)[2](v30, v10);
    [v11 addObject:v13];

    v14 = [v10 copy];
    [v12 addObject:v14];

    v8 = v31;
  }

  v15 = [MEMORY[0x1E695DFA8] set];
  for (i = 0; i < [v11 count]; ++i)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    database = self->_database;
    v18 = [v11 objectAtIndexedSubscript:i];
    v19 = [v12 objectAtIndexedSubscript:i];
    v20 = [(WBSSQLiteDatabase *)database fetchQuery:v18 stringArguments:v19];

    v21 = [v20 countByEnumeratingWithState:&v32 objects:v42 count:16];
    if (v21)
    {
      v22 = *v33;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v33 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = [*(*(&v32 + 1) + 8 * j) stringAtIndex:0];
          [v15 addObject:v24];
        }

        v21 = [v20 countByEnumeratingWithState:&v32 objects:v42 count:16];
      }

      while (v21);
    }

    v8 = v31;
  }

  [v8 minusSet:v15];
  v25 = [v8 allObjects];

  return v25;
}

id __88__WBSHistoryServiceDatabase__collectDeletedHighLevelDomainsFromDeletedHostnamesForPlan___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 safari_highLevelDomainFromHost];

  return v2;
}

id __88__WBSHistoryServiceDatabase__collectDeletedHighLevelDomainsFromDeletedHostnamesForPlan___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [@"?" safari_stringByRepeatingWithCount:objc_msgSend(v3 joinedByString:{"count"), @", "}];
  v5 = objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"SELECT safari_high_level_domain(url) FROM history_items WHERE safari_high_level_domain(url) IN (%@) AND NOT id IN ("), v4;
  v6 = createQueryWithList(v5, *(a1 + 32) + 40, @""));

  return v6;
}

void __88__WBSHistoryServiceDatabase__collectDeletedHighLevelDomainsFromDeletedHostnamesForPlan___block_invoke_3(uint64_t a1, void *a2)
{
  v7 = a2;
  [*(a1 + 32) addObject:?];
  if ([*(a1 + 32) count] >= 0x64)
  {
    v3 = *(a1 + 40);
    v4 = (*(*(a1 + 56) + 16))();
    [v3 addObject:v4];

    v5 = *(a1 + 48);
    v6 = [*(a1 + 32) copy];
    [v5 addObject:v6];

    [*(a1 + 32) removeAllObjects];
  }
}

- (id)_collectDeletedHostnamesForPlan:(void *)a3
{
  if (*(a3 + 8))
  {
    v4 = createQueryWithList(@"WITH deleted_item_ids AS (SELECT id FROM history_items WHERE id IN ("), a3 + 40, CFSTR(")), deleted_hostnames_with_counts AS (SELECT safari_hostname(url) AS deleted_hostname, COUNT(*) AS deleted_hostname_count FROM history_items WHERE id IN (SELECT id FROM deleted_item_ids) GROUP BY deleted_hostname) SELECT safari_hostname(url) AS hostname FROM history_items WHERE hostname IN (SELECT deleted_hostname FROM deleted_hostnames_with_counts) GROUP BY hostname HAVING (COUNT(*) - (SELECT deleted_hostname_count FROM deleted_hostnames_with_counts WHERE deleted_hostname = safari_hostname(url))) <= 0");
    v5 = [MEMORY[0x1E695DF70] array];
    database = self->_database;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __61__WBSHistoryServiceDatabase__collectDeletedHostnamesForPlan___block_invoke;
    v9[3] = &unk_1E7FB8118;
    v7 = v5;
    v10 = v7;
    v11 = MEMORY[0x1BFB13CE0](v9);
    SafariShared::WBSSQLiteDatabaseEnumerate<void({block_pointer} {__strong})(NSString *)>(database, 0, v4, &v11);
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

- (id)_executePlan:(void *)a3 outDeletedItemCount:(unint64_t *)a4 outDeletedVisitCount:(unint64_t *)a5 clearAllSpotlightHistoryForProfile:(BOOL)a6
{
  v6 = a6;
  v43 = *MEMORY[0x1E69E9840];
  if (*(a3 + 23))
  {
    v11 = createQueryWithList(@"WITH view_visit_count_adjustments AS(SELECT history_item AS id, COUNT(*) AS count, TOTAL(score) AS total_score FROM history_visits WHERE history_visits.id IN ("), a3 + 160, CFSTR(") GROUP BY history_item) UPDATE history_items SET visit_count = MAX(1, visit_count - (SELECT view_visit_count_adjustments.count FROM view_visit_count_adjustments WHERE view_visit_count_adjustments.id = history_items.id)), visit_count_score = MAX(0, visit_count_score - (SELECT view_visit_count_adjustments.total_score FROM view_visit_count_adjustments WHERE view_visit_count_adjustments.id = history_items.id)), should_recompute_derived_visit_counts = 1 WHERE history_items.id IN (SELECT view_visit_count_adjustments.id FROM view_visit_count_adjustments)");
    database = self->_database;
    v40 = 0;
    v13 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(database, &v40, v11);
    v14 = v40;
    if (v13 && v13 != 101)
    {

      goto LABEL_30;
    }

    v15 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [(WBSSQLiteDatabase *)self->_database changedRowCount];
      *buf = 67109120;
      LODWORD(v42) = v16;
      _os_log_impl(&dword_1BB6F3000, v15, OS_LOG_TYPE_INFO, "Updated %i visit scores", buf, 8u);
    }
  }

  if (*(a3 + 8))
  {
    v17 = [(WBSHistoryServiceDatabase *)self _collectDeletedURLsForPlan:a3];
    v18 = *(a3 + 25);
    *(a3 + 25) = v17;

    v19 = [(WBSHistoryServiceDatabase *)self _collectDeletedHostnamesForPlan:a3];
    v20 = *(a3 + 27);
    *(a3 + 27) = v19;

    v21 = [(WBSHistoryServiceDatabase *)self _collectDeletedHighLevelDomainsForPlan:a3];
    v22 = *(a3 + 26);
    *(a3 + 26) = v21;

    v23 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = *(a3 + 8);
      *buf = 134217984;
      v42 = v24;
      _os_log_impl(&dword_1BB6F3000, v23, OS_LOG_TYPE_INFO, "Deleting %zu items", buf, 0xCu);
    }

    v25 = self->_database;
    v39 = 0;
    v26 = createQueryWithList(@"DELETE FROM history_items WHERE id IN ("), a3 + 40, CFSTR(")");
    v27 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(v25, &v39, v26);
    v14 = v39;

    if (v27 && v27 != 101)
    {
      goto LABEL_30;
    }

    if (v6)
    {
      v28 = +[WBSSiriIntelligenceDonor sharedInstance];
      [v28 removeAllCoreSpotlightHistoryDataDonatedBySafariForProfileWithIdentifier:self->_databaseID];
    }

    else
    {
      [(WBSHistoryServiceDatabase *)self _removeSpotlightDonationsForItemURLs:*(a3 + 25)];
    }

    if (a4)
    {
      *a4 = [(WBSSQLiteDatabase *)self->_database changedRowCount];
    }

    SafariShared::LatestVisitInformationMap::removeItems(&self->_latestVisitMap, a3 + 40);
    v29 = MEMORY[0x1E695DFD8];
    v30 = [*(a3 + 25) allKeys];
    v31 = [v29 setWithArray:v30];

    [(WBSHistoryServiceURLCompletion *)self->_urlCompletion removeURLStrings:v31];
  }

  if (!*(a3 + 23))
  {
LABEL_27:
    if (*(a3 + 13))
    {
      [(WBSHistoryServiceDatabase *)self _recomputeLatestVisitsForItems:a3 + 80 error:0];
      std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__move_assign(a3 + 120, buf);
      std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(buf);
    }

    v14 = 0;
    goto LABEL_30;
  }

  v32 = WBS_LOG_CHANNEL_PREFIXHistory();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    v33 = *(a3 + 23);
    *buf = 134217984;
    v42 = v33;
    _os_log_impl(&dword_1BB6F3000, v32, OS_LOG_TYPE_INFO, "Deleting %zu visits", buf, 0xCu);
  }

  v34 = self->_database;
  v38 = 0;
  v35 = createQueryWithList(@"DELETE FROM history_visits WHERE id IN ("), a3 + 160, CFSTR(")");
  v36 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(v34, &v38, v35);
  v14 = v38;

  if (!v36 || v36 == 101)
  {
    if (a5)
    {
      *a5 = [(WBSSQLiteDatabase *)self->_database changedRowCount];
    }

    goto LABEL_27;
  }

LABEL_30:

  return v14;
}

- (void)_removeSpotlightDonationsForItemURLs:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v15 = a3;
  if (![(WBSHistoryServiceDatabase *)self _isTesting])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = self->_databaseID;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v15;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:*(*(&v17 + 1) + 8 * i)];
          if (v10)
          {
            v11 = v5 == 0;
          }

          else
          {
            v11 = 1;
          }

          if (v11)
          {
            v12 = WBS_LOG_CHANNEL_PREFIXHistory();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_1BB6F3000, v12, OS_LOG_TYPE_INFO, "URL or Profile ID were malformed when clearing spotlight donation for history items.", buf, 2u);
            }
          }

          else
          {
            v13 = [WBSSiriIntelligenceDonor historyItemIdentifierForURL:v10 profileIdentifier:v5];
            [v4 addObject:v13];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    if ([v4 count])
    {
      v14 = +[WBSSiriIntelligenceDonor sharedInstance];
      [v14 removeCoreSpotlightDataWithIDs:v4 completionHandler:0];
    }
  }
}

- (void)performMaintenanceWithAgeLimit:(double)a3 itemCountLimit:(unint64_t)a4 completionHandler:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = WBS_LOG_CHANNEL_PREFIXHistory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v17 = a3;
    v18 = 2048;
    v19 = a4;
    _os_log_impl(&dword_1BB6F3000, v9, OS_LOG_TYPE_INFO, "Starting maintenance. Age Limit is %f. Item Count Limit is %zu", buf, 0x16u);
  }

  MEMORY[0x1BFB144F0]();
  queue = self->_queue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __93__WBSHistoryServiceDatabase_performMaintenanceWithAgeLimit_itemCountLimit_completionHandler___block_invoke;
  v12[3] = &unk_1E7FC7538;
  v12[4] = self;
  v13 = v8;
  v14 = a3;
  v15 = a4;
  v11 = v8;
  dispatch_async(queue, v12);
}

void __93__WBSHistoryServiceDatabase_performMaintenanceWithAgeLimit_itemCountLimit_completionHandler___block_invoke(uint64_t a1)
{
  v71 = *MEMORY[0x1E69E9840];
  v2 = [[WBSScopeTimeoutHandler alloc] initWithTimeout:@"SafariShared" autoBugCaptureDomain:@"com.apple.Safari.History" detectedProcess:@"Maintenance" context:30.0];
  [*(a1 + 32) _ensureDatabaseIsSynced];
  memset(v47, 0, sizeof(v47));
  v48 = 1065353216;
  memset(v49, 0, sizeof(v49));
  v50 = 1065353216;
  memset(v51, 0, sizeof(v51));
  memset(v53, 0, sizeof(v53));
  v52 = 1065353216;
  v54 = 1065353216;
  v55 = 0u;
  v56 = 0u;
  v57 = 1065353216;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v3 = [*(a1 + 32) _expireOldVisits:86400.0 * 0x31uLL + 86400.0 * 0x31uLL];
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [v3 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __93__WBSHistoryServiceDatabase_performMaintenanceWithAgeLimit_itemCountLimit_completionHandler___block_invoke_cold_1();
    }

    v5 = (*(*(a1 + 40) + 16))();
    MEMORY[0x1BFB14500](v5);
  }

  else
  {
    memset(v69, 0, sizeof(v69));
    v70 = 1065353216;
    v6 = [*(a1 + 32) _recomputeVisitScores:v69];
    if (v6)
    {
      v7 = WBS_LOG_CHANNEL_PREFIXHistory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [v6 safari_privacyPreservingDescription];
        objc_claimAutoreleasedReturnValue();
        __93__WBSHistoryServiceDatabase_performMaintenanceWithAgeLimit_itemCountLimit_completionHandler___block_invoke_cold_2();
      }

      v8 = (*(*(a1 + 40) + 16))();
      MEMORY[0x1BFB14500](v8);
    }

    else
    {
      memset(v67, 0, sizeof(v67));
      v68 = 1065353216;
      v9 = [*(a1 + 32) _recomputeItemScores:v67];
      if (v9)
      {
        v10 = WBS_LOG_CHANNEL_PREFIXHistory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [v9 safari_privacyPreservingDescription];
          objc_claimAutoreleasedReturnValue();
          __93__WBSHistoryServiceDatabase_performMaintenanceWithAgeLimit_itemCountLimit_completionHandler___block_invoke_cold_3();
        }

        v11 = (*(*(a1 + 40) + 16))();
        MEMORY[0x1BFB14500](v11);
      }

      else
      {
        v12 = [*(a1 + 32) _preparePlan:v47 ageLimit:*(a1 + 56) itemCountLimit:*(a1 + 48)];
        if (v12)
        {
          v13 = WBS_LOG_CHANNEL_PREFIXHistory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            [v12 safari_privacyPreservingDescription];
            objc_claimAutoreleasedReturnValue();
            [WBSHistoryServiceDatabase _clearHistoryItems:afterDate:beforeDate:tombstoneMode:];
          }

          v14 = (*(*(a1 + 40) + 16))();
          MEMORY[0x1BFB14500](v14);
        }

        else
        {
          v45 = 0;
          v46 = 0;
          v15 = [*(a1 + 32) _executePlan:v47 outDeletedItemCount:&v46 outDeletedVisitCount:&v45 clearAllSpotlightHistoryForProfile:0];
          if (v15)
          {
            v16 = WBS_LOG_CHANNEL_PREFIXHistory();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              [(WBSHistoryServiceEvent *)v15 safari_privacyPreservingDescription];
              objc_claimAutoreleasedReturnValue();
              [WBSHistoryServiceDatabase _clearHistoryItems:afterDate:beforeDate:tombstoneMode:];
            }

            v17 = (*(*(a1 + 40) + 16))();
            MEMORY[0x1BFB14500](v17);
          }

          else
          {
            v18 = 0x1E695D000uLL;
            if ([v58 count])
            {
              v19 = [WBSHistoryServiceEvent alloc];
              v43 = [MEMORY[0x1E695DF00] date];
              v65[0] = @"disposedURLs";
              v42 = v58;
              v20 = [v42 copy];
              v66[0] = v20;
              v65[1] = @"disposedHighLevelDomains";
              v21 = v59;
              v22 = [v21 copy];
              v66[1] = v22;
              v65[2] = @"disposedHostnames";
              v23 = v60;
              v24 = [v23 copy];
              v66[2] = v24;
              v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:3];
              v26 = [(WBSHistoryServiceEvent *)v19 initWithType:@"maintenance" time:v43 value:v25];

              [*(a1 + 32) _dispatchEvent:v26 listenersToIgnore:0 persistForDelayedDispatching:1 completionHandler:0];
              v18 = 0x1E695D000;
            }

            if (*(&v56 + 1))
            {
              v27 = [MEMORY[0x1E695DF70] arrayWithCapacity:?];
              for (i = v56; i; i = *i)
              {
                v29 = [MEMORY[0x1E696AD98] numberWithLongLong:i[2]];
                [v27 addObject:v29];
              }

              v30 = [WBSHistoryServiceEvent alloc];
              v44 = [MEMORY[0x1E695DF00] date];
              v63[0] = @"disposedVisits";
              v31 = [v27 copy];
              v64[0] = v31;
              v63[1] = @"updateLatestVisits";
              v32 = [*(a1 + 32) _generateUpdatedLastVisit:v53];
              v64[1] = v32;
              v63[2] = @"updateItems";
              v33 = [*(a1 + 32) _generateItemsDictionary:v53];
              v64[2] = v33;
              v63[3] = @"updateVisits";
              v34 = [*(a1 + 32) _generateVisitsDictionary:v53];
              v64[3] = v34;
              v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:4];
              v36 = [(WBSHistoryServiceEvent *)v30 initWithType:@"maintenance" time:v44 value:v35];

              [*(a1 + 32) _dispatchEvent:v36 listenersToIgnore:0 persistForDelayedDispatching:0 completionHandler:0];
              v18 = 0x1E695D000uLL;
            }

            v37 = [WBSHistoryServiceEvent alloc];
            v38 = [*(v18 + 3840) date];
            v61 = @"endDate";
            v39 = [*(v18 + 3840) dateWithTimeIntervalSinceReferenceDate:*(a1 + 48)];
            v62 = v39;
            v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
            v15 = [(WBSHistoryServiceEvent *)v37 initWithType:@"clear" time:v38 value:v40];

            [*(a1 + 32) _dispatchEvent:v15 listenersToIgnore:0 persistForDelayedDispatching:0 completionHandler:0];
            v41 = (*(*(a1 + 40) + 16))();
            MEMORY[0x1BFB14500](v41);
          }
        }
      }

      std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v67);
    }

    std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v69);
  }

  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(&v55);
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v53);
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v51);
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v49);
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v47);
}

- (void)vacuumHistoryWithCompletionHandler:(id)a3
{
  v4 = a3;
  MEMORY[0x1BFB144F0]();
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__WBSHistoryServiceDatabase_vacuumHistoryWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7FB6F08;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __64__WBSHistoryServiceDatabase_vacuumHistoryWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v5 = 0;
  SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(v2, &v5, @"VACUUM");
  v3 = v5;
  v4 = (*(*(a1 + 40) + 16))();
  MEMORY[0x1BFB14500](v4);
}

- (void)checkIfLocalVisitExistsForDatabaseIDs:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__WBSHistoryServiceDatabase_checkIfLocalVisitExistsForDatabaseIDs_withCompletion___block_invoke;
  block[3] = &unk_1E7FB7CC0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __82__WBSHistoryServiceDatabase_checkIfLocalVisitExistsForDatabaseIDs_withCompletion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v3 = MEMORY[0x1E696AEC0];
  v4 = [*(a1 + 40) componentsJoinedByString:{@", "}];
  v5 = [v3 stringWithFormat:@"SELECT origin FROM history_visits WHERE history_item IN (%@) AND origin = ? LIMIT 1", v4];
  v9 = 0;
  v6 = SafariShared::WBSSQLiteDatabaseFetch<WBSHistoryVisitOrigin>(v2, v5, &v9);

  v7 = *(a1 + 48);
  v8 = [v6 allObjects];
  (*(v7 + 16))(v7, [v8 count] != 0);
}

- (void)getHighLevelHTTPFamilyDomainsVisitedAfterDate:(id)a3 beforeDate:(id)a4 onlyFromThisDevice:(BOOL)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __123__WBSHistoryServiceDatabase_getHighLevelHTTPFamilyDomainsVisitedAfterDate_beforeDate_onlyFromThisDevice_completionHandler___block_invoke;
  block[3] = &unk_1E7FC6938;
  v21 = a5;
  block[4] = self;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(queue, block);
}

void __123__WBSHistoryServiceDatabase_getHighLevelHTTPFamilyDomainsVisitedAfterDate_beforeDate_onlyFromThisDevice_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DFA8] set];
  v3 = *(*(a1 + 32) + 40);
  if (*(a1 + 64) == 1)
  {
    v16 = 0;
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ AND origin = ? %@", @"SELECT safari_high_level_domain(url) AS high_level_domain FROM history_items INNER JOIN history_visits ON history_visits.history_item = history_items.id WHERE visit_time > ? AND visit_time < ? AND high_level_domain IS NOT NULL AND (url LIKE 'http://%' OR url LIKE 'https://%')", @" GROUP BY high_level_domain"];
    v15 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __123__WBSHistoryServiceDatabase_getHighLevelHTTPFamilyDomainsVisitedAfterDate_beforeDate_onlyFromThisDevice_completionHandler___block_invoke_2;
    v12[3] = &unk_1E7FB8118;
    v13 = v2;
    v14 = MEMORY[0x1BFB13CE0](v12);
    SafariShared::WBSSQLiteDatabaseEnumerate<NSDate * const {__strong}&,NSDate * const {__strong},int,void({block_pointer} {__strong})(NSString *)>(v3, &v16, v4, (a1 + 40), (a1 + 48), &v15, &v14);
    v5 = &v13;
    v6 = v16;
    v7 = v14;
  }

  else
  {
    v11 = 0;
    v4 = [@"SELECT safari_high_level_domain(url) AS high_level_domain FROM history_items INNER JOIN history_visits ON history_visits.history_item = history_items.id WHERE visit_time > ? AND visit_time < ? AND high_level_domain IS NOT NULL AND (url LIKE 'http://%' OR url LIKE 'https://%')" stringByAppendingString:@" GROUP BY high_level_domain"];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __123__WBSHistoryServiceDatabase_getHighLevelHTTPFamilyDomainsVisitedAfterDate_beforeDate_onlyFromThisDevice_completionHandler___block_invoke_3;
    v8[3] = &unk_1E7FB8118;
    v9 = v2;
    v10 = MEMORY[0x1BFB13CE0](v8);
    SafariShared::WBSSQLiteDatabaseEnumerate<NSDate * const {__strong}&,NSDate * const {__strong},void({block_pointer} {__strong})(NSString *)>(v3, &v11, v4, (a1 + 40), (a1 + 48), &v10);
    v5 = &v9;
    v6 = v11;
    v7 = v10;
  }

  (*(*(a1 + 56) + 16))();
}

- (void)getItemCountBeforeDate:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__WBSHistoryServiceDatabase_getItemCountBeforeDate_completionHandler___block_invoke;
  block[3] = &unk_1E7FB7CC0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __70__WBSHistoryServiceDatabase_getItemCountBeforeDate_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureDatabaseIsSynced];
  v5 = 0;
  v6 = 0;
  v2 = *(*(a1 + 32) + 40);
  v4 = &v6;
  SafariShared::WBSSQLiteDatabaseEnumerate<NSDate * const {__strong}&,std::tuple<long long &>>(v2, &v5, @"SELECT COUNT(history_items.id) FROM history_items INNER JOIN history_visits ON history_visits.history_item = history_items.id WHERE visit_time < ? AND history_visits.id = safari_latest_visit_for (history_item);", (a1 + 40), &v4);
  v3 = v5;
  (*(*(a1 + 48) + 16))();
}

- (void)searchForUserTypedString:(id)a3 options:(unint64_t)a4 currentTime:(double)a5 writeHandle:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  if (v12)
  {
    v15 = dispatch_group_create();
    v16 = dispatch_queue_create("WBSHistoryServiceDatabase.encodeQueue", 0);
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x4812000000;
    v28[3] = __Block_byref_object_copy__381;
    v28[4] = __Block_byref_object_dispose__382;
    v28[5] = "";
    SafariShared::HistoryObjectStreamWriter::HistoryObjectStreamWriter(v29, [v13 fileDescriptor]);
    urlCompletion = self->_urlCompletion;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __104__WBSHistoryServiceDatabase_searchForUserTypedString_options_currentTime_writeHandle_completionHandler___block_invoke;
    v24[3] = &unk_1E7FC75A8;
    v18 = v15;
    v25 = v18;
    v19 = v16;
    v26 = v19;
    v27 = v28;
    [(WBSHistoryServiceURLCompletion *)urlCompletion searchForUserTypedString:v12 options:a4 currentTime:v18 enumerationGroup:v24 enumerationBlock:a5];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __104__WBSHistoryServiceDatabase_searchForUserTypedString_options_currentTime_writeHandle_completionHandler___block_invoke_3;
    block[3] = &unk_1E7FB6F08;
    v22 = v13;
    v23 = v14;
    dispatch_group_notify(v18, v19, block);

    _Block_object_dispose(v28, 8);
    SafariShared::HistoryObjectStreamWriter::~HistoryObjectStreamWriter(v29);
  }

  else
  {
    [v13 closeFile];
    v20 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    (*(v14 + 2))(v14, v20);
  }
}

void __104__WBSHistoryServiceDatabase_searchForUserTypedString_options_currentTime_writeHandle_completionHandler___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __104__WBSHistoryServiceDatabase_searchForUserTypedString_options_currentTime_writeHandle_completionHandler___block_invoke_2;
  v8[3] = &unk_1E7FB87C0;
  v6 = a1[6];
  v9 = v3;
  v10 = v6;
  v7 = v3;
  dispatch_group_async(v4, v5, v8);
}

BOOL __104__WBSHistoryServiceDatabase_searchForUserTypedString_options_currentTime_writeHandle_completionHandler___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(a1 + 32) entries];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        SafariShared::HistoryObjectStreamWriter::write((*(*(a1 + 40) + 8) + 48), [*(*(&v7 + 1) + 8 * v5++) streamData]);
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }

  return SafariShared::HistoryObjectStreamWriter::write((*(*(a1 + 40) + 8) + 48), [*(a1 + 32) streamData]);
}

uint64_t __104__WBSHistoryServiceDatabase_searchForUserTypedString_options_currentTime_writeHandle_completionHandler___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) closeFile];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (id)_fetchListenerNamesFromDatabase:(id *)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [(WBSSQLiteStatementCache *)self->_statements statementForQuery:@"SELECT listener_name FROM history_event_listeners" error:a3];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69C8A40]);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __61__WBSHistoryServiceDatabase__fetchListenerNamesFromDatabase___block_invoke;
    v20[3] = &unk_1E7FB6F80;
    v7 = v5;
    v21 = v7;
    [v6 setHandler:v20];
    v8 = [v7 fetch];
    if (v8)
    {
      v9 = [MEMORY[0x1E695DFA8] set];
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v16 objects:v22 count:16];
      if (v11)
      {
        v12 = *v17;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v17 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = [*(*(&v16 + 1) + 8 * i) stringAtIndex:{0, v16}];
            [v9 addObject:v14];
          }

          v11 = [v10 countByEnumeratingWithState:&v16 objects:v22 count:16];
        }

        while (v11);
      }
    }

    else if (a3)
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorWithMethodName:"[WBSHistoryServiceDatabase _fetchListenerNamesFromDatabase:]"];
      *a3 = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_updateListenerRegistration:(id)a3 lastSeen:(double)a4
{
  v13 = a3;
  v12 = a4;
  statements = self->_statements;
  v11 = 0;
  v7 = [(WBSSQLiteStatementCache *)statements statementForQuery:@"INSERT OR REPLACE INTO history_event_listeners (listener_name error:last_seen) VALUES (?, ?)", &v11];
  v8 = v11;
  if (v7)
  {
    SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong}&,double &>(v7, &v13, &v12);
    if ([v7 execute] == 101)
    {
      [v7 reset];
      [(NSMutableSet *)self->_registeredListeners addObject:v13];
      v9 = v8;
      v8 = 0;
    }

    else
    {
      [v7 reset];
      [(WBSSQLiteDatabase *)self->_database lastErrorWithMethodName:"[WBSHistoryServiceDatabase _updateListenerRegistration:lastSeen:]"];
      v8 = v9 = v8;
    }
  }

  else
  {
    v9 = 0;
  }

  return v8;
}

- (id)_fetchEventsForListener:(id)a3 error:(id *)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v27 = a3;
  v6 = [(WBSSQLiteStatementCache *)self->_statements statementForQuery:@"SELECT id error:event_type, event_time, value FROM history_events WHERE pending_listeners LIKE ('%:' || ? || ':%') ORDER BY event_time", a4];
  v7 = v6;
  v26 = v6;
  if (v6)
  {
    [v6 bindString:v27 atParameterIndex:1];
    v25 = [v7 fetch];
    if (v25)
    {
      v8 = objc_alloc_init(MEMORY[0x1E69C8A40]);
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __59__WBSHistoryServiceDatabase__fetchEventsForListener_error___block_invoke;
      v34[3] = &unk_1E7FB6F80;
      v35 = v26;
      v24 = v8;
      [v8 setHandler:v34];
      v28 = [MEMORY[0x1E695DF70] array];
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      obj = v25;
      v9 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v9)
      {
        v10 = *v31;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v31 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v30 + 1) + 8 * i);
            v13 = [v12 int64AtIndex:0];
            v14 = [v12 stringAtIndex:1];
            [v12 doubleAtIndex:2];
            v16 = v15;
            v17 = [v12 dataAtIndex:3];
            v18 = [(WBSHistoryCrypto *)self->_crypto decryptDictionary:v17];
            if (v18)
            {
              v19 = [WBSHistoryServiceEvent alloc];
              v20 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v16];
              v21 = [(WBSHistoryServiceEvent *)v19 initWithEventID:v13 type:v14 time:v20 value:v18];

              if (v21)
              {
                [v28 addObject:v21];
              }
            }

            else
            {
              v22 = WBS_LOG_CHANNEL_PREFIXHistory();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                *buf = 134217984;
                v37 = v13;
                _os_log_error_impl(&dword_1BB6F3000, v22, OS_LOG_TYPE_ERROR, "Failed to decrypt event %lli", buf, 0xCu);
              }
            }
          }

          v9 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
        }

        while (v9);
      }
    }

    else if (a4)
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorWithMethodName:"[WBSHistoryServiceDatabase _fetchEventsForListener:error:]"];
      *a4 = v28 = 0;
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (void)fetchEventsForListener:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__WBSHistoryServiceDatabase_fetchEventsForListener_completionHandler___block_invoke;
    block[3] = &unk_1E7FB7CC0;
    block[4] = self;
    v11 = v6;
    v12 = v7;
    dispatch_async(queue, block);
  }

  else
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    (*(v7 + 2))(v7, 0, v9);
  }
}

void __70__WBSHistoryServiceDatabase_fetchEventsForListener_completionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v4 = [v2 _updateListenerRegistration:v3 lastSeen:?];
  if (v4)
  {
    v5 = v4;
    (*(a1[6] + 16))();
  }

  else
  {
    v6 = a1[4];
    v7 = a1[5];
    v9 = 0;
    v8 = [v6 _fetchEventsForListener:v7 error:&v9];
    v5 = v9;
    (*(a1[6] + 16))();
  }
}

- (id)_markEventsAsReceivedByListener:(id)a3 eventIDs:(id)a4
{
  v62 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v6 count] && objc_msgSend(v5, "length"))
  {
    v7 = MEMORY[0x1E696AEC0];
    v42 = v6;
    v8 = [v6 commaSeparatedValues];
    v9 = [v7 stringWithFormat:@"SELECT id, pending_listeners FROM history_events WHERE id IN (%@)", v8];

    v41 = v9;
    v43 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:self->_database query:v9];
    if (v43)
    {
      v10 = objc_alloc_init(MEMORY[0x1E69C8A40]);
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __70__WBSHistoryServiceDatabase__markEventsAsReceivedByListener_eventIDs___block_invoke;
      v54[3] = &unk_1E7FB6F80;
      v11 = v43;
      v55 = v11;
      v39 = v10;
      [v10 setHandler:v54];
      v12 = [v11 fetch];
      v40 = v12;
      if (v12)
      {
        memset(buf, 0, sizeof(buf));
        v61 = 1065353216;
        v51 = 0u;
        v52 = 0u;
        v53 = 1065353216;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v13 = v12;
        v14 = [v13 countByEnumeratingWithState:&v47 objects:v59 count:16];
        if (v14)
        {
          v15 = *v48;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v48 != v15)
              {
                objc_enumerationMutation(v13);
              }

              v17 = *(*(&v47 + 1) + 8 * i);
              v56 = [v17 int64AtIndex:0];
              v18 = [v17 stringAtIndex:1];
              v19 = [v18 length];
              v20 = MEMORY[0x1E695DFD8];
              if (v19 > 1)
              {
                v22 = [v18 substringWithRange:{1, objc_msgSend(v18, "length") - 2}];
                v23 = [v22 componentsSeparatedByString:@":"];
                v21 = [v20 setWithArray:v23];
              }

              else
              {
                v21 = [MEMORY[0x1E695DFD8] set];
              }

              if ([v21 containsObject:v5])
              {
                v24 = [v21 mutableCopy];
                [v24 removeObject:v5];
                if ([v24 count])
                {
                  v25 = eventListenerSetToString(v24);
                  v57 = v56;
                  v58 = v25;
                  std::__hash_table<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>>>::__emplace_unique_key_args<long long,std::pair<long long,WBSHistoryItem * {__strong}>>(&v51, &v57);
                }

                else
                {
                  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(buf, &v56);
                }
              }
            }

            v14 = [v13 countByEnumeratingWithState:&v47 objects:v59 count:16];
          }

          while (v14);
        }

        if (*&buf[24] && (v26 = self->_database, v46 = 0, createQueryWithList(@"DELETE FROM history_events WHERE id IN ("), buf, CFSTR(")"), v27 = objc_claimAutoreleasedReturnValue(), SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(v26, &v46, v27), v28 = v46, v27, v28))
        {
          v29 = WBS_LOG_CHANNEL_PREFIXHistory();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            [v28 safari_privacyPreservingDescription];
            objc_claimAutoreleasedReturnValue();
            [WBSHistoryServiceDatabase _markEventsAsReceivedByListener:eventIDs:];
          }
        }

        else if (*(&v52 + 1) && (v31 = v52) != 0)
        {
          while (1)
          {
            v32 = v31[3];
            v57 = v31[2];
            v58 = v32;
            database = self->_database;
            v45 = 0;
            SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&,long long const&>(database, &v45, @"UPDATE history_events SET pending_listeners = ? WHERE id = ?", &v58, &v57);
            v34 = v45;
            if (v34)
            {
              break;
            }

            v31 = *v31;
            if (!v31)
            {
              goto LABEL_33;
            }
          }

          v28 = v34;
          v36 = WBS_LOG_CHANNEL_PREFIXHistory();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            [v28 safari_privacyPreservingDescription];
            objc_claimAutoreleasedReturnValue();
            [WBSHistoryServiceDatabase _markEventsAsReceivedByListener:eventIDs:];
          }
        }

        else
        {
LABEL_33:
          v28 = 0;
        }

        std::__hash_table<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>>>::~__hash_table(&v51);
        std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(buf);
      }

      else
      {
        v28 = [(WBSSQLiteDatabase *)self->_database lastErrorWithMethodName:"[WBSHistoryServiceDatabase _markEventsAsReceivedByListener:eventIDs:]"];
      }
    }

    else
    {
      v30 = WBS_LOG_CHANNEL_PREFIXHistory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v37 = [(WBSSQLiteDatabase *)self->_database lastErrorWithMethodName:"[WBSHistoryServiceDatabase _markEventsAsReceivedByListener:eventIDs:]"];
        v38 = [v37 safari_privacyPreservingDescription];
        *buf = 138412546;
        *&buf[4] = v42;
        *&buf[12] = 2114;
        *&buf[14] = v38;
        _os_log_error_impl(&dword_1BB6F3000, v30, OS_LOG_TYPE_ERROR, "Failed to bless events %@: %{public}@", buf, 0x16u);
      }

      v28 = [(WBSSQLiteDatabase *)self->_database lastErrorWithMethodName:"[WBSHistoryServiceDatabase _markEventsAsReceivedByListener:eventIDs:]"];
    }

    v6 = v42;
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (void)markEventsAsReceivedByListener:(id)a3 eventIDs:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8)
  {
    queue = self->_queue;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __87__WBSHistoryServiceDatabase_markEventsAsReceivedByListener_eventIDs_completionHandler___block_invoke;
    v14[3] = &unk_1E7FC69B0;
    v17 = v10;
    v14[4] = self;
    v15 = v8;
    v16 = v9;
    dispatch_async(queue, v14);
  }

  else
  {
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    (v11)[2](v11, v13);
  }
}

void __87__WBSHistoryServiceDatabase_markEventsAsReceivedByListener_eventIDs_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = [*(a1 + 32) _markEventsAsReceivedByListener:*(a1 + 40) eventIDs:*(a1 + 48)];
  (*(v1 + 16))(v1);
}

- (int64_t)_writeEventToDatabase:(id)a3 listeners:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  crypto = self->_crypto;
  v11 = [v8 value];
  v24 = [(WBSHistoryCrypto *)crypto encryptDictionary:v11];

  if (v24)
  {
    v12 = [(WBSSQLiteStatementCache *)self->_statements statementForQuery:@"INSERT INTO history_events (event_type error:event_time, pending_listeners, value) VALUES (?, ?, ?, ?)", a5];
    if (v12)
    {
      v13 = objc_alloc_init(MEMORY[0x1E69C8A40]);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __67__WBSHistoryServiceDatabase__writeEventToDatabase_listeners_error___block_invoke;
      v22[3] = &unk_1E7FB6F80;
      v14 = v12;
      v23 = v14;
      [v13 setHandler:v22];
      v21 = [v8 eventType];
      v15 = [v8 time];
      [v15 timeIntervalSinceReferenceDate];
      v20 = v16;
      v19 = eventListenerSetToString(v9);
      SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong},double,NSString * {__strong},NSData * {__strong}&>(v14, &v21, &v20, &v19, &v24);

      if ([v14 execute] == 101)
      {
        v17 = [(WBSSQLiteDatabase *)self->_database lastInsertRowID];
      }

      else
      {
        if (a5)
        {
          *a5 = [(WBSSQLiteDatabase *)self->_database lastErrorWithMethodName:"[WBSHistoryServiceDatabase _writeEventToDatabase:listeners:error:]"];
        }

        v17 = -1;
      }
    }

    else
    {
      v17 = -1;
    }
  }

  else
  {
    if (a5)
    {
      *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WBSHistoryErrorDomain" code:2 userInfo:0];
    }

    v17 = -1;
  }

  return v17;
}

- (void)_dispatchEvent:(id)a3 listenersToIgnore:(id)a4 persistForDelayedDispatching:(BOOL)a5 completionHandler:(id)a6
{
  v54 = *MEMORY[0x1E69E9840];
  v29 = a3;
  v9 = a4;
  v28 = a6;
  if (!self->_registeredListeners)
  {
    v10 = [(WBSHistoryServiceDatabase *)self _fetchListenerNamesFromDatabase:0];
    registeredListeners = self->_registeredListeners;
    self->_registeredListeners = v10;
  }

  MEMORY[0x1BFB144F0]();
  v32 = [(NSMutableSet *)self->_registeredListeners mutableCopy];
  group = dispatch_group_create();
  v31 = dispatch_queue_create("WBSHistoryServiceDatabase.dispatchEvent", 0);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v12 = [(NSMapTable *)self->_listeners keyEnumerator];
  v13 = [v12 countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v13)
  {
    v14 = *v49;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v49 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = [(NSMapTable *)self->_listeners objectForKey:*(*(&v48 + 1) + 8 * i)];
        if ([v9 containsObject:v16])
        {
          [v32 removeObject:v16];
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v13);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v17 = [(NSMapTable *)self->_delegates keyEnumerator];
  v18 = [v17 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v18)
  {
    v19 = *v45;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v45 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v44 + 1) + 8 * j);
        v22 = [(NSMapTable *)self->_listeners objectForKey:v21];
        v23 = [(NSMapTable *)self->_delegates objectForKey:v21];
        if (v23 && ([v9 containsObject:v22] & 1) == 0)
        {
          dispatch_group_enter(group);
          v39[0] = MEMORY[0x1E69E9820];
          v39[1] = 3221225472;
          v39[2] = __109__WBSHistoryServiceDatabase__dispatchEvent_listenersToIgnore_persistForDelayedDispatching_completionHandler___block_invoke;
          v39[3] = &unk_1E7FC75D0;
          v40 = v31;
          v41 = v22;
          v42 = v32;
          v43 = group;
          [v23 handleEvent:v29 completionHandler:v39];
        }
      }

      v18 = [v17 countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v18);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __109__WBSHistoryServiceDatabase__dispatchEvent_listenersToIgnore_persistForDelayedDispatching_completionHandler___block_invoke_3;
  block[3] = &unk_1E7FC75F8;
  v38 = a5;
  v34 = v32;
  v35 = self;
  v36 = v29;
  v37 = v28;
  v24 = v29;
  v25 = v28;
  v26 = v32;
  dispatch_group_notify(group, v31, block);
}

void __109__WBSHistoryServiceDatabase__dispatchEvent_listenersToIgnore_persistForDelayedDispatching_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __109__WBSHistoryServiceDatabase__dispatchEvent_listenersToIgnore_persistForDelayedDispatching_completionHandler___block_invoke_2;
  v6[3] = &unk_1E7FC5D00;
  v7 = v3;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v5 = v3;
  dispatch_async(v4, v6);
}

void __109__WBSHistoryServiceDatabase__dispatchEvent_listenersToIgnore_persistForDelayedDispatching_completionHandler___block_invoke_2(uint64_t a1)
{
  if (!*(a1 + 32) && *(a1 + 40))
  {
    [*(a1 + 48) removeObject:?];
  }

  v2 = *(a1 + 56);

  dispatch_group_leave(v2);
}

void __109__WBSHistoryServiceDatabase__dispatchEvent_listenersToIgnore_persistForDelayedDispatching_completionHandler___block_invoke_3(uint64_t a1)
{
  if (![*(a1 + 32) count] || (*(a1 + 64) & 1) == 0)
  {
    v10 = *(a1 + 56);
    if (v10)
    {
      (*(v10 + 16))(v10, 0, 0);
    }

    JUMPOUT(0x1BFB14500);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *(v3 + 8);
  v11[1] = 3221225472;
  v11[2] = __109__WBSHistoryServiceDatabase__dispatchEvent_listenersToIgnore_persistForDelayedDispatching_completionHandler___block_invoke_4;
  v11[3] = &unk_1E7FC6910;
  v5 = v2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v3;
  *(&v9 + 1) = v5;
  v12 = v9;
  v13 = v8;
  dispatch_async(v4, v11);
}

void __109__WBSHistoryServiceDatabase__dispatchEvent_listenersToIgnore_persistForDelayedDispatching_completionHandler___block_invoke_4(void *a1)
{
  v8[4] = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v8[0] = 0;
  [v2 _writeEventToDatabase:v3 listeners:v4 error:v8];
  v5 = v8[0];
  v6 = a1[7];
  if (v6)
  {
    v6 = (*(v6 + 16))(v6, 1, v5);
  }

  else if (v5)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [v5 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __109__WBSHistoryServiceDatabase__dispatchEvent_listenersToIgnore_persistForDelayedDispatching_completionHandler___block_invoke_4_cold_1();
    }
  }

  MEMORY[0x1BFB14500](v6);
}

- (void)dispatchEvent:(id)a3 listenersToIgnore:(id)a4 persistForDelayedDispatching:(BOOL)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (v10)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __108__WBSHistoryServiceDatabase_dispatchEvent_listenersToIgnore_persistForDelayedDispatching_completionHandler___block_invoke;
    block[3] = &unk_1E7FC6938;
    block[4] = self;
    v16 = v10;
    v17 = v11;
    v19 = a5;
    v18 = v12;
    dispatch_async(queue, block);
  }

  else
  {
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    (*(v12 + 2))(v12, 0, v14);
  }
}

- (id)_dateForMetadataKey:(id)a3 error:(id *)a4
{
  v16[4] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v16[0] = 0;
  v7 = [(WBSHistoryServiceDatabase *)self _metadataForKey:v6 error:v16];
  v8 = v16[0];
  v9 = v8;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = MEMORY[0x1E695DF00];
      [v7 doubleValue];
      v11 = [v10 dateWithTimeIntervalSinceReferenceDate:?];
      goto LABEL_13;
    }

    v14 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [WBSHistoryServiceDatabase _dateForMetadataKey:error:];
    }

    [(WBSHistoryServiceDatabase *)self _clearWBSHistorySQLiteStoreClearHistoryKeys];
  }

  else if (v8)
  {
    v12 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [v9 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      [WBSHistoryServiceDatabase _dateForMetadataKey:error:];
    }

    if (a4)
    {
      v13 = v9;
      v11 = 0;
      *a4 = v9;
      goto LABEL_13;
    }
  }

  v11 = 0;
LABEL_13:

  return v11;
}

- (void)_startingClearHistoryOperationForStartDate:(id)a3 endDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WBSHistoryServiceDatabase *)self _setMetadataValue:v6 forKey:@"clear_history_start_date"];
  if (v8)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [v8 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      [WBSHistoryServiceDatabase _startingClearHistoryOperationForStartDate:endDate:];
    }

    [(WBSHistoryServiceDatabase *)self _clearWBSHistorySQLiteStoreClearHistoryKeys];
  }

  else
  {
    v10 = [(WBSHistoryServiceDatabase *)self _setMetadataValue:v7 forKey:@"clear_history_end_date"];
    if (v10)
    {
      v11 = WBS_LOG_CHANNEL_PREFIXHistory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [v10 safari_privacyPreservingDescription];
        objc_claimAutoreleasedReturnValue();
        [WBSHistoryServiceDatabase _startingClearHistoryOperationForStartDate:endDate:];
      }

      v8 = v10;
      [(WBSHistoryServiceDatabase *)self _clearWBSHistorySQLiteStoreClearHistoryKeys];
    }

    else
    {
      if (self->_clearHistoryInProgressFileURL)
      {
        v12 = [MEMORY[0x1E696AC08] defaultManager];
        v13 = [(NSURL *)self->_clearHistoryInProgressFileURL URLByDeletingLastPathComponent];
        v14 = [v12 safari_ensureDirectoryExists:v13];

        if (v14)
        {
          v15 = [(NSURL *)self->_clearHistoryInProgressFileURL path];
          v16 = [v12 createFileAtPath:v15 contents:0 attributes:0];

          if ((v16 & 1) == 0)
          {
            v17 = WBS_LOG_CHANNEL_PREFIXHistory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              [WBSHistoryServiceDatabase _startingClearHistoryOperationForStartDate:endDate:];
            }
          }
        }

        else
        {
          v18 = WBS_LOG_CHANNEL_PREFIXHistory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            [WBSHistoryServiceDatabase _startingClearHistoryOperationForStartDate:endDate:];
          }
        }
      }

      v8 = 0;
    }
  }
}

- (void)_finishedClearingHistory
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to remove file at _clearHistoryInProgressFileURL: %{public}@", v5);
}

- (void)_clearWBSHistorySQLiteStoreClearHistoryKeys
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to clear WBSHistorySQLiteStoreClearHistoryEndDateKey: %{public}@", v5);
}

- (void)visitIdentifiersMatchingExistingVisits:(id)a3 desiredVisitTimePrecision:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (a4)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT COUNT(*) FROM history_items INNER JOIN history_visits ON history_items.id = history_visits.history_item WHERE url = ? AND CAST((visit_time * %1$zu) AS INT) = CAST((? * %1$zu) AS INT)", a4];
  }

  else
  {
    v10 = @"SELECT COUNT(*) FROM history_items INNER JOIN history_visits ON history_items.id = history_visits.history_item WHERE url = ? AND visit_time = ?";
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __112__WBSHistoryServiceDatabase_visitIdentifiersMatchingExistingVisits_desiredVisitTimePrecision_completionHandler___block_invoke;
  block[3] = &unk_1E7FC7620;
  block[4] = self;
  v16 = v10;
  v17 = v8;
  v18 = v9;
  v19 = a4;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  dispatch_async(queue, block);
}

void __112__WBSHistoryServiceDatabase_visitIdentifiersMatchingExistingVisits_desiredVisitTimePrecision_completionHandler___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 56);
  v28 = 0;
  v4 = [v3 statementForQuery:v2 error:&v28];
  v5 = v28;
  if (!v4)
  {
    (*(*(a1 + 56) + 16))();
    goto LABEL_24;
  }

  v6 = [MEMORY[0x1E695DFA8] set];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = *(a1 + 48);
  v7 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (!v7)
  {
    goto LABEL_22;
  }

  v8 = *v25;
  do
  {
    v9 = 0;
    do
    {
      if (*v25 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v24 + 1) + 8 * v9);
      v22 = v5;
      v23 = 0;
      v21 = [v10 urlString];
      [v10 visitTime];
      *buf = v11;
      v19 = &v23;
      v12 = SafariShared::WBSSQLiteDatabaseEnumerate<NSString * {__strong},double,std::tuple<long long &>>(v4, &v22, &v21, buf, &v19);
      v13 = v22;

      v5 = v13;
      if ((v12 & 1) == 0)
      {
        v14 = WBS_LOG_CHANNEL_PREFIXHistory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [v13 safari_privacyPreservingDescription];
          objc_claimAutoreleasedReturnValue();
          __112__WBSHistoryServiceDatabase_visitIdentifiersMatchingExistingVisits_desiredVisitTimePrecision_completionHandler___block_invoke_cold_1();
        }
      }

      v15 = v23;
      if (*(a1 + 64))
      {
        v16 = v6;
        if (!v23)
        {
          goto LABEL_20;
        }

LABEL_19:
        [v16 addObject:v10];
        goto LABEL_20;
      }

      v16 = v6;
      if (v23 >= 2)
      {
        v17 = WBS_LOG_CHANNEL_PREFIXHistory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1BB6F3000, v17, OS_LOG_TYPE_INFO, "Unexpected duplicate visit in database", buf, 2u);
        }

        v15 = v23;
      }

      if (v15)
      {
        goto LABEL_19;
      }

LABEL_20:
      ++v9;
    }

    while (v7 != v9);
    v7 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  }

  while (v7);
LABEL_22:

  (*(*(a1 + 56) + 16))();
LABEL_24:
}

- (void)resetCloudHistoryDataWithCompletionHandler:(id)a3
{
  v4 = a3;
  MEMORY[0x1BFB144F0]();
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__WBSHistoryServiceDatabase_resetCloudHistoryDataWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7FB6F08;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __72__WBSHistoryServiceDatabase_resetCloudHistoryDataWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _currentGeneration];
  v3 = [*(a1 + 32) _setMetadataValue:0 forKey:@"server_change_token"];
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:v2];
  v6 = [v4 _setMetadataValue:v5 forKey:@"last_synced_generation"];

  v7 = *(a1 + 32);
  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:v2 + 1];
  v9 = [v7 _setMetadataValue:v8 forKey:@"current_generation"];

  v10 = *(a1 + 32);
  v11 = [MEMORY[0x1E695DF00] distantFuture];
  v19 = 0;
  [v10 _pruneTombstonesOnDatabaseQueueWithEndDatePriorToDate:v11 error:&v19];
  v12 = v19;

  v13 = [*(a1 + 32) _setMetadataValue:0 forKey:@"push_throttler_data"];
  v14 = [*(a1 + 32) _setMetadataValue:0 forKey:@"fetch_throttler_data"];
  v15 = [*(a1 + 32) _setMetadataValue:0 forKey:@"sync_circle_size_retrieval_throttler_data"];
  v16 = [*(a1 + 32) _setMetadataValue:&unk_1F3A9AEC8 forKey:@"cached_sync_circle_size"];
  v17 = [*(a1 + 32) _setMetadataValue:MEMORY[0x1E695E110] forKey:@"push_notifications_initialized"];
  v18 = (*(*(a1 + 40) + 16))();
  MEMORY[0x1BFB14500](v18);
}

- (void)startImportHistorySessionWithVisitTimePrecision:(unint64_t)a3 completionHandler:(id)a4
{
  v7 = a4;
  v6 = [[WBSHistoryServiceImporter alloc] initWithDatabase:self visitTimePrecision:a3];
  v7[2](v7, v6, 0);
}

- (void)importVisits:(id)a3 desiredVisitTimePrecision:(unint64_t)a4 completionHandler:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [v8 copy];

  v11 = [v10 safari_setByApplyingBlock:&__block_literal_global_418];
  v12 = WBS_LOG_CHANNEL_PREFIXHistory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349056;
    v22 = [v11 count];
    _os_log_impl(&dword_1BB6F3000, v12, OS_LOG_TYPE_DEFAULT, "Importing %{public}zu visits", buf, 0xCu);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __86__WBSHistoryServiceDatabase_importVisits_desiredVisitTimePrecision_completionHandler___block_invoke_419;
  v16[3] = &unk_1E7FC7668;
  v13 = v9;
  v20 = v13;
  v14 = v11;
  v17 = v14;
  v15 = v10;
  v18 = v15;
  v19 = self;
  [(WBSHistoryServiceDatabase *)self visitIdentifiersMatchingExistingVisits:v14 desiredVisitTimePrecision:a4 completionHandler:v16];
}

id __86__WBSHistoryServiceDatabase_importVisits_desiredVisitTimePrecision_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 visitIdentifier];

  return v2;
}

void __86__WBSHistoryServiceDatabase_importVisits_desiredVisitTimePrecision_completionHandler___block_invoke_419(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v33 = a2;
  v29 = a3;
  if (v29)
  {
    v5 = a1;
    v6 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [v29 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __86__WBSHistoryServiceDatabase_importVisits_desiredVisitTimePrecision_completionHandler___block_invoke_419_cold_1();
    }

    (*(*(v5 + 56) + 16))();
  }

  else
  {
    v7 = [*(a1 + 32) count];
    if (v7 == [v33 count])
    {
      v8 = WBS_LOG_CHANNEL_PREFIXHistory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BB6F3000, v8, OS_LOG_TYPE_DEFAULT, "Skipping import: All visits were found in the database", buf, 2u);
      }
    }

    else
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      obj = *(a1 + 40);
      v9 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      v32 = a1;
      if (v9)
      {
        v31 = *v35;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v35 != v31)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v34 + 1) + 8 * i);
            v12 = [v11 visitIdentifier];
            v13 = [v33 containsObject:v12];

            if ((v13 & 1) == 0)
            {
              v14 = [v11 destinationVisitIdentifier];
              if (!v14 || (v15 = *(v32 + 32), [v11 destinationVisitIdentifier], v16 = objc_claimAutoreleasedReturnValue(), LOBYTE(v15) = objc_msgSend(v15, "containsObject:", v16), v16, v14, (v15 & 1) != 0))
              {
                v17 = WBHistoryVisitWeightForAttributesAndOrigin([v11 attributes], objc_msgSend(v11, "origin"));
                v18 = WBSHistoryVisitScoreForWeightedVisitCount(v17);
                v19 = *(*(v32 + 48) + 272);
                v20 = [v11 visitIdentifier];
                v21 = [v11 sourceVisitIdentifier];
                v22 = [v11 title];
                v23 = [v11 loadSuccessful];
                v24 = [v11 origin];
                LODWORD(v28) = v18 * [v11 visitCount];
                [v19 recordVisit:v20 sourceVisit:v21 title:v22 loadSuccessful:v23 origin:v24 increaseVisitCount:1 score:v28 statusCode:0];

                [*(*(v32 + 48) + 216) addObject:v11];
              }
            }
          }

          v9 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
        }

        while (v9);
      }

      v25 = WBS_LOG_CHANNEL_PREFIXHistory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [*(v32 + 32) count];
        v27 = [*(*(v32 + 48) + 216) count];
        *buf = 134349056;
        v40 = v26 - v27;
        _os_log_impl(&dword_1BB6F3000, v25, OS_LOG_TYPE_DEFAULT, "Filtered out %{public}zu visits while importing because they already exist", buf, 0xCu);
      }

      a1 = v32;
      [*(v32 + 48) _commitPendingUpdates];
    }

    (*(*(a1 + 56) + 16))();
  }
}

- (void)exportHistory:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = os_transaction_create();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__WBSHistoryServiceDatabase_exportHistory_completionHandler___block_invoke;
  v13[3] = &unk_1E7FC76B8;
  v13[4] = self;
  v14 = v6;
  v15 = v8;
  v16 = v7;
  v9 = v8;
  v10 = v7;
  v11 = v6;
  v12 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_DETACHED, QOS_CLASS_BACKGROUND, 0, v13);
  _os_activity_initiate(&dword_1BB6F3000, "Export History", OS_ACTIVITY_FLAG_DETACHED, v12);
}

void __61__WBSHistoryServiceDatabase_exportHistory_completionHandler___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  v6 = *(a1 + 32);
  v2 = *(v6 + 8);
  block[1] = 3221225472;
  block[2] = __61__WBSHistoryServiceDatabase_exportHistory_completionHandler___block_invoke_2;
  block[3] = &unk_1E7FC76B8;
  v3 = *(&v6 + 1);
  v4 = *(a1 + 56);
  *&v5 = *(a1 + 48);
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  dispatch_async(v2, block);
}

void __61__WBSHistoryServiceDatabase_exportHistory_completionHandler___block_invoke_2(uint64_t a1)
{
  v9[4] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _ensureDatabaseIsSynced];
  v2 = *(*(a1 + 32) + 40);
  v9[0] = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__WBSHistoryServiceDatabase_exportHistory_completionHandler___block_invoke_3;
  v6[3] = &unk_1E7FC7690;
  v7 = *(a1 + 40);
  v8 = MEMORY[0x1BFB13CE0](v6);
  v3 = SafariShared::WBSSQLiteDatabaseEnumerate<void({block_pointer} {__strong})(NSString *,double,NSString *,int,int,NSString *,double,NSString *,double,long long)>(v2, v9, @"WITH view_visits_identifiers(id, url, visit_time) AS(SELECT history_visits.id, url, visit_time FROM history_visits, history_items WHERE  history_items.id = history_visits.history_item) SELECT history_items.url, history_visits.visit_time, history_visits.title, load_successful, http_non_get, rs.url, rs.visit_time, rd.url, rd.visit_time, visit_count FROM history_visits INNER JOIN history_items ON history_items.id = history_visits.history_item LEFT JOIN view_visits_identifiers rs ON history_visits.redirect_source = rs.id LEFT JOIN view_visits_identifiers rd ON history_visits.redirect_destination = rd.id WHERE history_visits.id = safari_latest_visit_for (history_visits.history_item)", &v8);
  v4 = v9[0];

  if ((v3 & 1) == 0)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [v4 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __61__WBSHistoryServiceDatabase_exportHistory_completionHandler___block_invoke_2_cold_1();
    }
  }

  [*(a1 + 40) finishWithCompletionHandler:*(a1 + 56)];
}

- (void)visitsAndTombstonesNeedingSyncWithVisitSyncWindow:(double)a3 completionHandler:(id)a4
{
  v6 = a4;
  MEMORY[0x1BFB144F0]();
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97__WBSHistoryServiceDatabase_visitsAndTombstonesNeedingSyncWithVisitSyncWindow_completionHandler___block_invoke;
  block[3] = &unk_1E7FC74A0;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(queue, block);
}

void __97__WBSHistoryServiceDatabase_visitsAndTombstonesNeedingSyncWithVisitSyncWindow_completionHandler___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _ensureDatabaseIsSynced];
  v2 = [*(a1 + 32) _currentGeneration];
  v38 = [*(a1 + 32) _lastSyncedGeneration];
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:v2 + 1];
  v5 = [v3 _setMetadataValue:v4 forKey:@"current_generation"];

  v6 = *(*(a1 + 32) + 56);
  v37 = 0;
  v27 = [v6 statementForQuery:@"WITH view_visits_queried(id) AS (SELECT id FROM history_visits WHERE generation > ?1 AND origin = ?2 AND visit_time > ?3 UNION SELECT redirect_source FROM history_visits WHERE generation > ?1 AND origin = ?2 AND visit_time > ?3 AND redirect_source IS NOT NULL UNION SELECT redirect_destination FROM history_visits WHERE generation > ?1 AND origin = ?2 AND visit_time > ?3 AND redirect_destination IS NOT NULL) error:{view_visits_identifiers(id, url, visit_time) AS(SELECT history_visits.id, url, visit_time FROM view_visits_queried, history_visits, history_items WHERE  history_visits.id = view_visits_queried.id AND history_items.id = history_visits.history_item AND history_items.status_code < 400) SELECT vs.url, vs.visit_time, title, load_successful, http_non_get, rs.url, rs.visit_time, rd.url, rd.visit_time FROM history_visits INNER JOIN view_visits_identifiers vs ON history_visits.id = vs.id LEFT JOIN view_visits_identifiers rs ON history_visits.redirect_source = rs.id LEFT JOIN view_visits_identifiers rd ON history_visits.redirect_destination = rd.id", &v37}];
  v7 = v37;
  if (v27)
  {
    v8 = [MEMORY[0x1E695DFA8] set];
    v36 = v7;
    v40[0] = 0;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __97__WBSHistoryServiceDatabase_visitsAndTombstonesNeedingSyncWithVisitSyncWindow_completionHandler___block_invoke_432;
    v33[3] = &unk_1E7FC76E0;
    v25 = v8;
    v34 = v25;
    v35 = MEMORY[0x1BFB13CE0](v33);
    v9 = SafariShared::WBSSQLiteDatabaseEnumerate<long long &,int,double const&,void({block_pointer} {__strong})(NSString *,double,NSString *,int,int,NSString *,double,NSString *,double)>(v27, &v36, &v38, v40, a1 + 48, &v35);
    v10 = v36;

    if (v9)
    {
      v11 = *(*(a1 + 32) + 56);
      v32 = 0;
      v26 = [v11 statementForQuery:@"SELECT * FROM history_tombstones WHERE generation > ?" error:&v32];
      v7 = v32;

      if (v26)
      {
        v12 = [MEMORY[0x1E695DFA8] set];
        [v26 bindInt64:v38 atParameterIndex:1];
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v13 = [v26 fetch];
        v14 = [v13 countByEnumeratingWithState:&v28 objects:v39 count:16];
        if (v14)
        {
          v15 = *v29;
          do
          {
            v16 = 0;
            do
            {
              if (*v29 != v15)
              {
                objc_enumerationMutation(v13);
              }

              v17 = [[WBSHistoryTombstone alloc] initWithSQLiteRow:*(*(&v28 + 1) + 8 * v16) crypto:*(*(a1 + 32) + 32)];
              if (v17)
              {
                [v12 addObject:v17];
              }

              ++v16;
            }

            while (v14 != v16);
            v14 = [v13 countByEnumeratingWithState:&v28 objects:v39 count:16];
          }

          while (v14);
        }

        [v26 reset];
        v18 = (*(*(a1 + 40) + 16))();
        MEMORY[0x1BFB14500](v18);
      }

      else
      {
        v23 = WBS_LOG_CHANNEL_PREFIXHistory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [v7 safari_privacyPreservingDescription];
          objc_claimAutoreleasedReturnValue();
          __97__WBSHistoryServiceDatabase_visitsAndTombstonesNeedingSyncWithVisitSyncWindow_completionHandler___block_invoke_cold_2();
        }

        v24 = (*(*(a1 + 40) + 16))();
        MEMORY[0x1BFB14500](v24);
      }
    }

    else
    {
      v21 = WBS_LOG_CHANNEL_PREFIXHistory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [v10 safari_privacyPreservingDescription];
        objc_claimAutoreleasedReturnValue();
        __97__WBSHistoryServiceDatabase_visitsAndTombstonesNeedingSyncWithVisitSyncWindow_completionHandler___block_invoke_cold_1();
      }

      v22 = (*(*(a1 + 40) + 16))();
      MEMORY[0x1BFB14500](v22);
      v7 = v10;
    }
  }

  else
  {
    v19 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [v7 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __97__WBSHistoryServiceDatabase_visitsAndTombstonesNeedingSyncWithVisitSyncWindow_completionHandler___block_invoke_cold_3();
    }

    v20 = (*(*(a1 + 40) + 16))();
    MEMORY[0x1BFB14500](v20);
  }
}

void __97__WBSHistoryServiceDatabase_visitsAndTombstonesNeedingSyncWithVisitSyncWindow_completionHandler___block_invoke_432(uint64_t a1, void *a2, void *a3, int a4, int a5, void *a6, void *a7, double a8, double a9, double a10)
{
  v19 = a2;
  v20 = a3;
  v21 = a6;
  v22 = a7;
  v23 = v22;
  if (v19)
  {
    v30 = a1;
    if (v21)
    {
      v24 = [[WBSHistoryVisitIdentifier alloc] initWithURLString:v21 visitTime:a9];
      if (v23)
      {
LABEL_4:
        v25 = [[WBSHistoryVisitIdentifier alloc] initWithURLString:v23 visitTime:a10];
LABEL_9:
        v27 = [WBSCloudHistoryVisit alloc];
        v28 = [[WBSHistoryVisitIdentifier alloc] initWithURLString:v19 visitTime:a8];
        v29 = [(WBSCloudHistoryVisit *)v27 initWithVisitIdentifier:v28 title:v20 loadSuccessful:a4 != 0 httpNonGet:a5 != 0 redirectSourceVisitIdentifier:v24 redirectDestinationVisitIdentifier:v25];

        if (v29)
        {
          [*(v30 + 32) addObject:v29];
        }

        goto LABEL_12;
      }
    }

    else
    {
      v24 = 0;
      if (v22)
      {
        goto LABEL_4;
      }
    }

    v25 = 0;
    goto LABEL_9;
  }

  v26 = WBS_LOG_CHANNEL_PREFIXHistory();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    __97__WBSHistoryServiceDatabase_visitsAndTombstonesNeedingSyncWithVisitSyncWindow_completionHandler___block_invoke_432_cold_1();
  }

LABEL_12:
}

- (void)updateDatabaseAfterSuccessfulSyncWithGeneration:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  MEMORY[0x1BFB144F0]();
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__WBSHistoryServiceDatabase_updateDatabaseAfterSuccessfulSyncWithGeneration_completionHandler___block_invoke;
  block[3] = &unk_1E7FC74A0;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(queue, block);
}

uint64_t __95__WBSHistoryServiceDatabase_updateDatabaseAfterSuccessfulSyncWithGeneration_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _lastSyncedGeneration];
  v3 = *(a1 + 48);
  if (v2 <= v3)
  {
    if (v2 != v3)
    {
      v8 = *(a1 + 32);
      v9 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
      v10 = [v8 _setMetadataValue:v9 forKey:@"last_synced_generation"];
    }

    (*(*(a1 + 40) + 16))();

    JUMPOUT(0x1BFB14500);
  }

  v4 = WBS_LOG_CHANNEL_PREFIXHistory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __95__WBSHistoryServiceDatabase_updateDatabaseAfterSuccessfulSyncWithGeneration_completionHandler___block_invoke_cold_1();
  }

  v5 = *(a1 + 40);
  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:14 userInfo:0];
  (*(v5 + 16))(v5, v6);

  return MEMORY[0x1BFB14500]();
}

- (void)createTagsForIdentifiers:(id)a3 withTitles:(id)a4 type:(unint64_t)a5 level:(int64_t)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  queue = self->_queue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __94__WBSHistoryServiceDatabase_createTagsForIdentifiers_withTitles_type_level_completionHandler___block_invoke;
  v19[3] = &unk_1E7FC7708;
  v19[4] = self;
  v20 = v12;
  v23 = a5;
  v24 = a6;
  v21 = v13;
  v22 = v14;
  v16 = v14;
  v17 = v13;
  v18 = v12;
  dispatch_async(queue, v19);
}

void __94__WBSHistoryServiceDatabase_createTagsForIdentifiers_withTitles_type_level_completionHandler___block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = *(a1[4] + 248);
  v4 = a1[6];
  v5 = a1[8];
  v6 = a1[9];
  v9 = 0;
  v7 = [v3 createTagsForIdentifiers:v2 withTitles:v4 type:v5 level:v6 error:&v9];
  v8 = v9;
  (*(a1[7] + 16))();
}

- (void)assignURLString:(id)a3 toTopicTagsWithIDs:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __82__WBSHistoryServiceDatabase_assignURLString_toTopicTagsWithIDs_completionHandler___block_invoke;
  v15[3] = &unk_1E7FC6910;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

void __82__WBSHistoryServiceDatabase_assignURLString_toTopicTagsWithIDs_completionHandler___block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = *(a1[4] + 248);
  v4 = a1[6];
  v6 = 0;
  [v3 assignURLString:v2 toTopicTagsWithIDs:v4 error:&v6];
  v5 = v6;
  (*(a1[7] + 16))();
}

- (void)setTitle:(id)a3 ofTagWithID:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__WBSHistoryServiceDatabase_setTitle_ofTagWithID_completionHandler___block_invoke;
  v13[3] = &unk_1E7FC59B0;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(queue, v13);
}

void __68__WBSHistoryServiceDatabase_setTitle_ofTagWithID_completionHandler___block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = *(a1[4] + 248);
  v4 = a1[7];
  v6 = 0;
  [v3 renameTagWithID:v4 toTitle:v2 error:&v6];
  v5 = v6;
  (*(a1[6] + 16))();
}

- (BOOL)_isTesting
{
  if ([(NSString *)self->_databaseID hasPrefix:@"test"])
  {
    return 1;
  }

  databaseID = self->_databaseID;

  return [(NSString *)databaseID hasPrefix:@"_test"];
}

- (void)initWithID:(double)a1 url:options:fileOperationGroup:error:.cold.1(double a1)
{
  v1 = OUTLINED_FUNCTION_17(a1);
  *v2 = 136446466;
  OUTLINED_FUNCTION_3(v2, "database_acquiring_crypto", v1);
  OUTLINED_FUNCTION_18(&dword_1BB6F3000, v3, v4, "#perf - %{public}s: %f", v5);
}

- (void)_prepareDatabase:.cold.1()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_0_3(v1, v2, v3, 5.8081e-34);
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)_prepareDatabase:(double)a1 .cold.2(double a1)
{
  v1 = OUTLINED_FUNCTION_17(a1);
  *v2 = 136446466;
  OUTLINED_FUNCTION_3(v2, "database_opening", v1);
  OUTLINED_FUNCTION_18(&dword_1BB6F3000, v3, v4, "#perf - %{public}s: %f", v5);
}

- (void)_prepareDatabase:.cold.3()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_0_3(v1, v2, v3, 5.8081e-34);
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)_prepareDatabase:(double)a1 .cold.4(double a1)
{
  v1 = OUTLINED_FUNCTION_17(a1);
  *v2 = 136446466;
  OUTLINED_FUNCTION_3(v2, "database_checking_integrity", v1);
  OUTLINED_FUNCTION_18(&dword_1BB6F3000, v3, v4, "#perf - %{public}s: %f", v5);
}

- (void)_prepareDatabase:.cold.5()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_0_3(v1, v2, v3, 5.8081e-34);
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)_prepareDatabase:(double)a1 .cold.6(double a1)
{
  v1 = OUTLINED_FUNCTION_17(a1);
  *v2 = 136446466;
  OUTLINED_FUNCTION_3(v2, "database_setting_pragmas", v1);
  OUTLINED_FUNCTION_18(&dword_1BB6F3000, v3, v4, "#perf - %{public}s: %f", v5);
}

- (void)_prepareDatabase:(double)a1 .cold.7(double a1)
{
  v1 = OUTLINED_FUNCTION_17(a1);
  *v2 = 136446466;
  OUTLINED_FUNCTION_3(v2, "database_create_methods", v1);
  OUTLINED_FUNCTION_18(&dword_1BB6F3000, v3, v4, "#perf - %{public}s: %f", v5);
}

- (void)_prepareDatabase:(double)a1 .cold.8(double a1)
{
  v1 = OUTLINED_FUNCTION_17(a1);
  *v2 = 136446466;
  OUTLINED_FUNCTION_3(v2, "database_migrate_schema", v1);
  OUTLINED_FUNCTION_18(&dword_1BB6F3000, v3, v4, "#perf - %{public}s: %f", v5);
}

void __53__WBSHistoryServiceDatabase_database_hadSevereError___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "History database failed integrity check: %{public}@", v5);
}

void __53__WBSHistoryServiceDatabase_database_hadSevereError___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_0_3(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void __53__WBSHistoryServiceDatabase_database_hadSevereError___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to fall back to in-memory database: %{public}@", v5);
}

- (void)_recomputeLatestVisitsForItems:error:.cold.2()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_2_1(v2, v3, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v4, v5, "Failed to recompute latest visits: %{public}@", v6);
}

- (void)_fetchVisitsWithOptions:(uint8_t *)buf predicate:(_BYTE *)a2 writeDescriptor:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_fault_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_FAULT, "Invalid database content: NULL url in history_items", buf, 2u);
}

- (void)_fetchVisitsWithOptions:(uint8_t *)buf predicate:(_BYTE *)a2 writeDescriptor:(os_log_t)log .cold.3(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_ERROR, "Encountered write error while fetching redirect chains", buf, 2u);
}

- (void)_fetchVisitsWithOptions:predicate:writeDescriptor:.cold.4()
{
  OUTLINED_FUNCTION_15(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_2();
  HIWORD(v4) = v0;
  OUTLINED_FUNCTION_22(&dword_1BB6F3000, v1, v2, "Inconsistencies found in the history_visits table: %zi invalid items, %zi invalid visits", v3, v4);
}

- (void)_fetchVisitsWithOptions:predicate:writeDescriptor:.cold.5()
{
  OUTLINED_FUNCTION_1_8();
  *v1 = 136315650;
  OUTLINED_FUNCTION_0_13(v2, v1, v3);
  OUTLINED_FUNCTION_8_0(&dword_1BB6F3000, "Failed to disable foreign keys: %s %{public}@ (%d)", v4, v5);
}

- (void)_fetchVisitsWithOptions:predicate:writeDescriptor:.cold.6()
{
  OUTLINED_FUNCTION_1_8();
  *v1 = 136315650;
  OUTLINED_FUNCTION_0_13(v2, v1, v3);
  OUTLINED_FUNCTION_8_0(&dword_1BB6F3000, "Failed to begin transaction: %s %{public}@ (%d)", v4, v5);
}

- (void)_fetchVisitsWithOptions:predicate:writeDescriptor:.cold.7()
{
  OUTLINED_FUNCTION_1_8();
  *v1 = 136315650;
  OUTLINED_FUNCTION_0_13(v2, v1, v3);
  OUTLINED_FUNCTION_8_0(&dword_1BB6F3000, "Failed to delete visits associated with invalid items: %s %{public}@ (%d)", v4, v5);
}

- (void)_fetchVisitsWithOptions:predicate:writeDescriptor:.cold.10()
{
  OUTLINED_FUNCTION_1_8();
  *v1 = 136315650;
  OUTLINED_FUNCTION_0_13(v2, v1, v3);
  OUTLINED_FUNCTION_8_0(&dword_1BB6F3000, "Failed to correct redirect_source: %s %{public}@ (%d)", v4, v5);
}

- (void)_fetchVisitsWithOptions:predicate:writeDescriptor:.cold.11()
{
  OUTLINED_FUNCTION_1_8();
  *v1 = 136315650;
  OUTLINED_FUNCTION_0_13(v2, v1, v3);
  OUTLINED_FUNCTION_8_0(&dword_1BB6F3000, "Failed to correct redirect_destination: %s %{public}@ (%d)", v4, v5);
}

- (void)_fetchVisitsWithOptions:predicate:writeDescriptor:.cold.12()
{
  OUTLINED_FUNCTION_1_8();
  *v1 = 136315650;
  OUTLINED_FUNCTION_0_13(v2, v1, v3);
  OUTLINED_FUNCTION_8_0(&dword_1BB6F3000, "Failed to commit: %s %{public}@ (%d)", v4, v5);
}

- (void)_fetchVisitsWithOptions:predicate:writeDescriptor:.cold.13()
{
  OUTLINED_FUNCTION_1_8();
  *v1 = 136315650;
  OUTLINED_FUNCTION_0_13(v2, v1, v3);
  OUTLINED_FUNCTION_8_0(&dword_1BB6F3000, "Failed to reenable foreign keys: %s %{public}@ (%d)", v4, v5);
}

- (void)_fetchVisitsWithOptions:predicate:writeDescriptor:.cold.14()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_2_1(v2, v3, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v4, v5, "Failed to run load redirection chain query: %{public}@", v6);
}

void __51__WBSHistoryServiceDatabase_fetchDomainExpansions___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_2_1(v2, v3, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v4, v5, "Failed to prepare query for domain expansion: %{public}@", v6);
}

void __85__WBSHistoryServiceDatabase_setLastSeenDate_forCloudClientVersion_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_8();
  *v1 = 136315650;
  OUTLINED_FUNCTION_0_13(v2, v1, v3);
  OUTLINED_FUNCTION_8_0(&dword_1BB6F3000, "Failed to insert or update version information in history_client_versions table: %s %{public}@ (%d)", v4, v5);
}

- (void)fetchMetadataForKeys:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_setMetadataValue:forKey:.cold.1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Invalid object type: %{public}@", v5);
}

- (void)_pruneTombstonesOnDatabaseQueueWithEndDatePriorToDate:error:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_pruneTombstonesOnDatabaseQueueWithEndDatePriorToDate:error:.cold.2()
{
  OUTLINED_FUNCTION_1_8();
  *v1 = 136315650;
  OUTLINED_FUNCTION_0_13(v2, v1, v3);
  OUTLINED_FUNCTION_8_0(&dword_1BB6F3000, "Failed to prune old tombstones: %s %{public}@ (%d)", v4, v5);
}

- (void)_convertTombstoneWithGenerationToSecureFormat:lastSyncedGeneration:.cold.1()
{
  OUTLINED_FUNCTION_1_8();
  *v1 = 136315650;
  OUTLINED_FUNCTION_0_13(v2, v1, v3);
  OUTLINED_FUNCTION_8_0(&dword_1BB6F3000, "Failed to begin transaction: %s %{public}@ (%d)", v4, v5);
}

- (void)_convertTombstoneWithGenerationToSecureFormat:lastSyncedGeneration:.cold.2()
{
  OUTLINED_FUNCTION_1_8();
  *v1 = 136315650;
  OUTLINED_FUNCTION_0_13(v2, v1, v3);
  OUTLINED_FUNCTION_8_0(&dword_1BB6F3000, "Failed to commit transaction: %s %{public}@ (%d)", v4, v5);
}

void __70__WBSHistoryServiceDatabase_replayAndAddTombstones_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to replay tombstone: %{public}@", v5);
}

void __50__WBSHistoryServiceDatabase__commitPendingUpdates__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to retrieve items ID for URLs: %{public}@", v5);
}

- (void)_commitPendingItems:.cold.1()
{
  OUTLINED_FUNCTION_1_8();
  *v1 = 138543362;
  *v3 = v2;
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

- (void)_commitPendingItems:.cold.2()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_13(&dword_1BB6F3000, v3, v4, "Failed to create insert item statement: %{public}@", v5);
}

- (void)_commitPendingItems:.cold.3()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_13(&dword_1BB6F3000, v3, v4, "Failed to create update item statement: %{public}@", v5);
}

- (void)_commitPendingVisits:.cold.1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_13(&dword_1BB6F3000, v3, v4, "Failed to create update visit's destination statement: %{public}@", v5);
}

- (void)_commitPendingVisits:.cold.2()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_13(&dword_1BB6F3000, v3, v4, "Failed to create update visit's source statement: %{public}@", v5);
}

- (void)_commitPendingVisits:.cold.3()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_13(&dword_1BB6F3000, v3, v4, "Failed to create update attributes visit statement: %{public}@", v5);
}

- (void)_commitPendingVisits:.cold.4()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_13(&dword_1BB6F3000, v3, v4, "Failed to create update title visit statement: %{public}@", v5);
}

- (void)_commitPendingVisits:.cold.5()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_13(&dword_1BB6F3000, v3, v4, "Failed to create insert visit statement: %{public}@", v5);
}

- (void)_commitPendingVisits:.cold.6()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_13(&dword_1BB6F3000, v3, v4, "Failed to create find visit statement: %{public}@", v5);
}

void __50__WBSHistoryServiceDatabase__commitPendingVisits___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to dispatch update event: %{public}@", v5);
}

void __126__WBSHistoryServiceDatabase__updateItem_visitCountScore_dailyVisitCounts_weeklyVisitCounts_shouldRecomputeDerivedVisitCounts___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_4(v1, v2, v3, 3.8521e-34);
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void __126__WBSHistoryServiceDatabase__updateItem_visitCountScore_dailyVisitCounts_weeklyVisitCounts_shouldRecomputeDerivedVisitCounts___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_4(v1, v2, v3, 3.8521e-34);
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)_clearAllHistoryInsertingTombstoneUpToDate:clearAllSpotlightHistoryForProfile:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __107__WBSHistoryServiceDatabase__clearAllHistoryInsertingTombstoneUpToDate_clearAllSpotlightHistoryForProfile___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_1_8();
  *v1 = 136315650;
  OUTLINED_FUNCTION_0_13(v2, v1, v3);
  OUTLINED_FUNCTION_8_0(&dword_1BB6F3000, "Failed to delete all items from the history_items table: %s %{public}@ (%d)", v4, v5);
}

void __107__WBSHistoryServiceDatabase__clearAllHistoryInsertingTombstoneUpToDate_clearAllSpotlightHistoryForProfile___block_invoke_cold_6()
{
  OUTLINED_FUNCTION_1_8();
  *v1 = 136315650;
  OUTLINED_FUNCTION_0_13(v2, v1, v3);
  OUTLINED_FUNCTION_8_0(&dword_1BB6F3000, "Failed to delete all visits from the history_visits table: %s %{public}@ (%d)", v4, v5);
}

void __107__WBSHistoryServiceDatabase__clearAllHistoryInsertingTombstoneUpToDate_clearAllSpotlightHistoryForProfile___block_invoke_cold_7(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_debug_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_DEBUG, "Deleted %zi visits", buf, 0xCu);
}

void __107__WBSHistoryServiceDatabase__clearAllHistoryInsertingTombstoneUpToDate_clearAllSpotlightHistoryForProfile___block_invoke_cold_9(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_debug_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_DEBUG, "Deleted %zi items", buf, 0xCu);
}

void __107__WBSHistoryServiceDatabase__clearAllHistoryInsertingTombstoneUpToDate_clearAllSpotlightHistoryForProfile___block_invoke_cold_10()
{
  OUTLINED_FUNCTION_1_8();
  *v1 = 136315650;
  OUTLINED_FUNCTION_0_13(v2, v1, v3);
  OUTLINED_FUNCTION_8_0(&dword_1BB6F3000, "Failed to delete all items from the history_items_to_tags table: %s %{public}@ (%d)", v4, v5);
}

void __107__WBSHistoryServiceDatabase__clearAllHistoryInsertingTombstoneUpToDate_clearAllSpotlightHistoryForProfile___block_invoke_cold_11()
{
  OUTLINED_FUNCTION_1_8();
  *v1 = 136315650;
  OUTLINED_FUNCTION_0_13(v2, v1, v3);
  OUTLINED_FUNCTION_8_0(&dword_1BB6F3000, "Failed to delete all items from the history_tags table: %s %{public}@ (%d)", v4, v5);
}

- (void)_generateItemsDictionary:.cold.1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to create statement: %{public}@", v5);
}

void __123__WBSHistoryServiceDatabase__clearHistoryVisitsAddedAfterDate_beforeDate_tombstoneMode_clearAllSpotlightHistoryForProfile___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_8();
  *v1 = 136315650;
  OUTLINED_FUNCTION_0_13(v2, v1, v3);
  OUTLINED_FUNCTION_8_0(&dword_1BB6F3000, "Failed to insert tombstone: %s %{public}@ (%d)", v4, v5);
}

void __123__WBSHistoryServiceDatabase__clearHistoryVisitsAddedAfterDate_beforeDate_tombstoneMode_clearAllSpotlightHistoryForProfile___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_15(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_2();
  HIWORD(v4) = v0;
  OUTLINED_FUNCTION_2(&dword_1BB6F3000, v1, v2, "Deleted %zi visits, %zi items", v3, v4);
}

- (void)_notifyExecutionOfPlan:.cold.1()
{
  OUTLINED_FUNCTION_15(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_2();
  HIWORD(v4) = v0;
  OUTLINED_FUNCTION_2(&dword_1BB6F3000, v1, v2, "Deletion plan deleted %zu visits, touched %zu items", v3, v4);
}

- (void)_insertTombstonesForURLs:afterDate:beforeDate:tombstoneMode:.cold.1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to insert tombstone: %{public}@", v5);
}

- (void)_insertTombstonesForURLs:afterDate:beforeDate:tombstoneMode:.cold.2()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to prepare insert tombstone statement: %{public}@", v5);
}

- (void)_clearHistoryItems:afterDate:beforeDate:tombstoneMode:.cold.1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to prepare deletion plan: %{public}@", v5);
}

- (void)_clearHistoryItems:afterDate:beforeDate:tombstoneMode:.cold.2()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to execute deletion plan: %{public}@", v5);
}

- (void)_clearHistoryItems:afterDate:beforeDate:tombstoneMode:.cold.4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __83__WBSHistoryServiceDatabase_finishClearingHistoryIfNecessaryWithCompletionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_expireOldVisits:.cold.1()
{
  OUTLINED_FUNCTION_1_8();
  *v1 = 136315650;
  OUTLINED_FUNCTION_0_13(v2, v1, v3);
  OUTLINED_FUNCTION_8_0(&dword_1BB6F3000, "Failed to delete all items from the history_items table: %s %{public}@ (%d)", v4, v5);
}

- (void)_recomputeVisitScores:.cold.1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to determine which visit score should be recomputed: %{public}@", v5);
}

- (void)_recomputeVisitScores:.cold.2()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to update visit score: %{public}@", v5);
}

- (void)_recomputeVisitScores:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_recomputeItemScores:.cold.1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to determine which item score should be recomputed: %{public}@", v5);
}

- (void)_recomputeItemScores:.cold.2()
{
  OUTLINED_FUNCTION_4_2();
  HIWORD(v3) = v0;
  OUTLINED_FUNCTION_22(&dword_1BB6F3000, v0, v1, "Failed to modify rows when recomputing item scores despite finding %lu modified items. %ld history visits reference a modified item", v2, v3);
}

- (void)_recomputeItemScores:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __93__WBSHistoryServiceDatabase_performMaintenanceWithAgeLimit_itemCountLimit_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to expire old visits: %{public}@", v5);
}

void __93__WBSHistoryServiceDatabase_performMaintenanceWithAgeLimit_itemCountLimit_completionHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to recompute visit scores: %{public}@", v5);
}

void __93__WBSHistoryServiceDatabase_performMaintenanceWithAgeLimit_itemCountLimit_completionHandler___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to recompute item scores: %{public}@", v5);
}

- (void)_markEventsAsReceivedByListener:eventIDs:.cold.1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to delete events: %{public}@", v5);
}

void __109__WBSHistoryServiceDatabase__dispatchEvent_listenersToIgnore_persistForDelayedDispatching_completionHandler___block_invoke_4_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to save event to database: %{public}@", v5);
}

- (void)_dateForMetadataKey:error:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(&dword_1BB6F3000, v0, OS_LOG_TYPE_ERROR, "The value of %{public}@ was an unexpected type", v1, 0xCu);
}

- (void)_dateForMetadataKey:error:.cold.2()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_0_3(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)_startingClearHistoryOperationForStartDate:endDate:.cold.1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to set WBSHistoryServiceEventClearStartDateKey: %{public}@", v5);
}

- (void)_startingClearHistoryOperationForStartDate:endDate:.cold.2()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to set WBSHistorySQLiteStoreClearHistoryEndDateKey: %{public}@", v5);
}

void __112__WBSHistoryServiceDatabase_visitIdentifiersMatchingExistingVisits_desiredVisitTimePrecision_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_8();
  *v1 = 138543362;
  *v3 = v2;
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __86__WBSHistoryServiceDatabase_importVisits_desiredVisitTimePrecision_completionHandler___block_invoke_419_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to match existing visits: %{public}@", v5);
}

void __61__WBSHistoryServiceDatabase_exportHistory_completionHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to export history: %{public}@", v5);
}

void __97__WBSHistoryServiceDatabase_visitsAndTombstonesNeedingSyncWithVisitSyncWindow_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to execute visits needing sync query: %{public}@", v5);
}

void __97__WBSHistoryServiceDatabase_visitsAndTombstonesNeedingSyncWithVisitSyncWindow_completionHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to prepare tombstones needing sync query: %{public}@", v5);
}

void __97__WBSHistoryServiceDatabase_visitsAndTombstonesNeedingSyncWithVisitSyncWindow_completionHandler___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to prepare visits needing sync query: %{public}@", v5);
}

@end
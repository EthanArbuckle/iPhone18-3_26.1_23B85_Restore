@interface PPXPCNamedEntityStore
- (BOOL)clearWithError:(id *)error deletedCount:(unint64_t *)count;
- (BOOL)cloudSyncWithError:(id *)error;
- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)id deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)id documentIds:(id)ids deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)id groupId:(id)groupId olderThan:(id)than deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)id groupIds:(id)ids deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)donateLocationNamedEntities:(id)entities bundleId:(id)id groupId:(id)groupId error:(id *)error;
- (BOOL)donateMapItem:(id)item forPlaceName:(id)name error:(id *)error;
- (BOOL)flushDonationsWithError:(id *)error;
- (BOOL)iterNamedEntityRecordsWithQuery:(id)query error:(id *)error block:(id)block;
- (BOOL)iterRankedNamedEntitiesWithQuery:(id)query error:(id *)error block:(id)block;
- (BOOL)loadNamedEntityRecordsAndMonitorChangesWithDelegate:(id)delegate error:(id *)error;
- (BOOL)loadNamedEntityRecordsAndMonitorChangesWithDelegate:(id)delegate query:(id)query error:(id *)error;
- (BOOL)removeMapItemForPlaceName:(id)name error:(id *)error;
- (BOOL)removeMapItemsBeforeCutoffDate:(id)date error:(id *)error;
- (id)_init;
- (id)_lastCallDateForQuery:(id)query;
- (id)_monitoringHelperForQuery:(id)query createIfNeeded:(BOOL)needed;
- (id)_recordGeneratorForQuery:(id)query;
- (id)mapItemForPlaceName:(id)name error:(id *)error;
- (id)namedEntityRecordsWithQuery:(id)query error:(id *)error;
- (id)rankedNamedEntitiesWithQuery:(id)query error:(id *)error;
- (void)_loadNamedEntityRecordsForQuery:(id)query withDelegate:(id)delegate;
- (void)_sendChangesToDelegatesForQuery:(id)query;
- (void)_sendResetToAllDelegatesForQuery:(id)query;
- (void)_setLastCallDateForQuery:(id)query;
- (void)registerFeedback:(id)feedback completion:(id)completion;
- (void)unloadMonitoringDelegate:(id)delegate;
@end

@implementation PPXPCNamedEntityStore

- (id)_init
{
  v10.receiver = self;
  v10.super_class = PPXPCNamedEntityStore;
  _initFromSubclass = [(PPNamedEntityStore *)&v10 _initFromSubclass];
  if (_initFromSubclass)
  {
    v3 = objc_alloc(MEMORY[0x1E69C5D60]);
    v4 = objc_opt_new();
    v5 = [v3 initWithGuardedData:v4];
    v6 = _initFromSubclass[2];
    _initFromSubclass[2] = v5;

    v7 = [[PPClientFeedbackHelper alloc] initWithParentObject:_initFromSubclass];
    v8 = _initFromSubclass[1];
    _initFromSubclass[1] = v7;
  }

  return _initFromSubclass;
}

- (void)registerFeedback:(id)feedback completion:(id)completion
{
  completionCopy = completion;
  feedbackCopy = feedback;
  if ([feedbackCopy isMapped])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPXPCNamedEntityStore.m" lineNumber:435 description:@"You cannot send mapped feedback on named entities. Please use PPFeedback to create the feedback for named entities."];
  }

  clientIdentifier = [(PPXPCNamedEntityStore *)self clientIdentifier];
  v10 = [clientIdentifier length];

  if (!v10)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PPXPCNamedEntityStore.m" lineNumber:436 description:@"The clientIdentifier property must be set on the PPNamedEntityStore in order to send feedback."];
  }

  clientIdentifier2 = [(PPXPCNamedEntityStore *)self clientIdentifier];
  [feedbackCopy setClientIdentifier:clientIdentifier2];

  v12 = +[PPNamedEntityReadOnlyClient sharedInstance];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __53__PPXPCNamedEntityStore_registerFeedback_completion___block_invoke;
  v16[3] = &unk_1E77F7D98;
  v16[4] = self;
  v17 = completionCopy;
  v13 = completionCopy;
  [v12 registerFeedback:feedbackCopy completion:v16];
}

uint64_t __53__PPXPCNamedEntityStore_registerFeedback_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32);
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, a3);
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)unloadMonitoringDelegate:(id)delegate
{
  delegateCopy = delegate;
  monitoringSessionsLock = self->_monitoringSessionsLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__PPXPCNamedEntityStore_unloadMonitoringDelegate___block_invoke;
  v7[3] = &unk_1E77F67B8;
  v8 = delegateCopy;
  v6 = delegateCopy;
  [(_PASLock *)monitoringSessionsLock runWithLockAcquired:v7];
}

void __50__PPXPCNamedEntityStore_unloadMonitoringDelegate___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [a2 objectEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * v7) monitoringHelper];
        [v8 unloadDelegate:*(a1 + 32)];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)loadNamedEntityRecordsAndMonitorChangesWithDelegate:(id)delegate error:(id *)error
{
  delegateCopy = delegate;
  v7 = objc_opt_new();
  LOBYTE(error) = [(PPXPCNamedEntityStore *)self loadNamedEntityRecordsAndMonitorChangesWithDelegate:delegateCopy query:v7 error:error];

  return error;
}

- (BOOL)loadNamedEntityRecordsAndMonitorChangesWithDelegate:(id)delegate query:(id)query error:(id *)error
{
  delegateCopy = delegate;
  queryCopy = query;
  objc_initWeak(&location, self);
  v9 = [(PPXPCNamedEntityStore *)self _monitoringHelperForQuery:queryCopy createIfNeeded:1];
  v10 = [(PPXPCNamedEntityStore *)self _recordGeneratorForQuery:queryCopy];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __89__PPXPCNamedEntityStore_loadNamedEntityRecordsAndMonitorChangesWithDelegate_query_error___block_invoke;
  v14[3] = &unk_1E77F6518;
  objc_copyWeak(&v16, &location);
  v11 = queryCopy;
  v15 = v11;
  v12 = [v9 loadRecordsAndMonitorChangesWithDelegate:delegateCopy recordGenerator:v10 notificationRegistrationBlock:v14];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v12;
}

void __89__PPXPCNamedEntityStore_loadNamedEntityRecordsAndMonitorChangesWithDelegate_query_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __89__PPXPCNamedEntityStore_loadNamedEntityRecordsAndMonitorChangesWithDelegate_query_error___block_invoke_2;
    v6[3] = &unk_1E77F6518;
    objc_copyWeak(&v8, (a1 + 40));
    v7 = *(a1 + 32);
    [PPNotificationManager addPortraitChangeObserverForLifetimeOfObject:WeakRetained block:v6];
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __89__PPXPCNamedEntityStore_loadNamedEntityRecordsAndMonitorChangesWithDelegate_query_error___block_invoke_52;
    v3[3] = &unk_1E77F6518;
    objc_copyWeak(&v5, (a1 + 40));
    v4 = *(a1 + 32);
    [PPNotificationManager addPortraitInvalidationObserverForLifetimeOfObject:WeakRetained block:v3];

    objc_destroyWeak(&v5);
    objc_destroyWeak(&v8);
  }
}

void __89__PPXPCNamedEntityStore_loadNamedEntityRecordsAndMonitorChangesWithDelegate_query_error___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = pp_entities_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1A7FD3000, v3, OS_LOG_TYPE_DEFAULT, "loadNamedEntityRecordsAndMonitorChanges change block being called for query %@", &v6, 0xCu);
  }

  [WeakRetained _sendChangesToDelegatesForQuery:*(a1 + 32)];
  v5 = *MEMORY[0x1E69E9840];
}

void __89__PPXPCNamedEntityStore_loadNamedEntityRecordsAndMonitorChangesWithDelegate_query_error___block_invoke_52(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = pp_entities_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1A7FD3000, v3, OS_LOG_TYPE_DEFAULT, "loadNamedEntityRecordsAndMonitorChanges invalidation block being called for query %@", &v6, 0xCu);
  }

  [WeakRetained _sendResetToAllDelegatesForQuery:*(a1 + 32)];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_loadNamedEntityRecordsForQuery:(id)query withDelegate:(id)delegate
{
  delegateCopy = delegate;
  queryCopy = query;
  v9 = [(PPXPCNamedEntityStore *)self _monitoringHelperForQuery:queryCopy createIfNeeded:1];
  v8 = [(PPXPCNamedEntityStore *)self _recordGeneratorForQuery:queryCopy];

  [v9 loadRecordsWithDelegate:delegateCopy recordGenerator:v8];
}

- (void)_sendChangesToDelegatesForQuery:(id)query
{
  queryCopy = query;
  v5 = [(PPXPCNamedEntityStore *)self _monitoringHelperForQuery:queryCopy createIfNeeded:0];
  if (v5)
  {
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __57__PPXPCNamedEntityStore__sendChangesToDelegatesForQuery___block_invoke;
    v7[3] = &unk_1E77F64F0;
    objc_copyWeak(&v9, &location);
    v8 = queryCopy;
    v6 = [(PPXPCNamedEntityStore *)self _recordGeneratorForQuery:v8];
    [v5 sendChangesToDelegatesWithChangeGenerator:v7 recordGenerator:v6];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

id __57__PPXPCNamedEntityStore__sendChangesToDelegatesForQuery___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_opt_new();
  v4 = +[PPNamedEntityReadOnlyClient sharedInstance];
  v5 = [*(a1 + 32) copyForMonitoring];
  v6 = [v5 limit];
  if (v6 >= 0x1F4)
  {
    v7 = 500;
  }

  else
  {
    v7 = v6;
  }

  [v5 setLimit:v7];
  v8 = [WeakRetained _lastCallDateForQuery:*(a1 + 32)];
  [v5 setFromDate:v8];

  v23 = 0;
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __57__PPXPCNamedEntityStore__sendChangesToDelegatesForQuery___block_invoke_2;
  v21 = &unk_1E77F6DC8;
  v9 = v3;
  v22 = v9;
  v10 = [v4 namedEntityRecordsWithQuery:v5 error:&v23 handleBatch:&v18];
  v11 = v23;

  if (v10)
  {
    [WeakRetained _setLastCallDateForQuery:{*(a1 + 32), v18, v19, v20, v21}];
  }

  else
  {
    v12 = pp_entities_log_handle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 32);
      *buf = 138412546;
      v25 = v17;
      v26 = 2112;
      v27 = v11;
      _os_log_error_impl(&dword_1A7FD3000, v12, OS_LOG_TYPE_ERROR, "namedEntityRecordsWithQuery query: %@, returned error: %@", buf, 0x16u);
    }
  }

  v13 = v22;
  v14 = v9;

  v15 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t __57__PPXPCNamedEntityStore__sendChangesToDelegatesForQuery___block_invoke_2(uint64_t result, uint64_t a2, _BYTE *a3)
{
  if ((*a3 & 1) == 0)
  {
    return [*(result + 32) addObjectsFromArray:a2];
  }

  return result;
}

- (void)_sendResetToAllDelegatesForQuery:(id)query
{
  queryCopy = query;
  v4 = [PPXPCNamedEntityStore _monitoringHelperForQuery:"_monitoringHelperForQuery:createIfNeeded:" createIfNeeded:?];
  if (v4)
  {
    v5 = [(PPXPCNamedEntityStore *)self _recordGeneratorForQuery:queryCopy];
    [v4 sendResetToAllDelegatesWithRecordGenerator:v5];
  }
}

- (id)_recordGeneratorForQuery:(id)query
{
  queryCopy = query;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__PPXPCNamedEntityStore__recordGeneratorForQuery___block_invoke;
  v8[3] = &unk_1E77F64C8;
  v9 = queryCopy;
  v5 = queryCopy;
  objc_copyWeak(&v10, &location);
  v6 = MEMORY[0x1AC568040](v8);
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);

  return v6;
}

id __50__PPXPCNamedEntityStore__recordGeneratorForQuery___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_opt_new();
  v5 = pp_entities_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v14 = *(a1 + 32);
    *buf = 138412546;
    v23 = v3;
    v24 = 2112;
    v25 = v14;
    _os_log_debug_impl(&dword_1A7FD3000, v5, OS_LOG_TYPE_DEBUG, "calling rankedNamedEntitiesWithQuery for delegate %@ and query %@", buf, 0x16u);
  }

  v6 = +[PPNamedEntityReadOnlyClient sharedInstance];
  v7 = [*(a1 + 32) copyForMonitoring];
  v21 = 0;
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __50__PPXPCNamedEntityStore__recordGeneratorForQuery___block_invoke_47;
  v19 = &unk_1E77F6DC8;
  v8 = v4;
  v20 = v8;
  v9 = [v6 rankedNamedEntitiesWithQuery:v7 error:&v21 handleBatch:&v16];
  v10 = v21;

  if (v9)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _setLastCallDateForQuery:*(a1 + 32), v16, v17, v18, v19];
  }

  else
  {
    WeakRetained = pp_entities_log_handle();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      *buf = 138412802;
      v23 = v10;
      v24 = 2112;
      v25 = v3;
      v26 = 2112;
      v27 = v15;
      _os_log_error_impl(&dword_1A7FD3000, WeakRetained, OS_LOG_TYPE_ERROR, "error %@ during rankedNamedEntitiesWithQuery for delegate %@ and query %@", buf, 0x20u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];

  return v8;
}

void __50__PPXPCNamedEntityStore__recordGeneratorForQuery___block_invoke_47(uint64_t a1, void *a2, _BYTE *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if ((*a3 & 1) == 0)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        v11 = 0;
        do
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * v11);
          v13 = objc_autoreleasePoolPush();
          v14 = *(a1 + 32);
          v15 = [v12 item];
          v16 = [v15 mostRelevantRecord];
          [v14 addObject:v16];

          objc_autoreleasePoolPop(v13);
          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)_monitoringHelperForQuery:(id)query createIfNeeded:(BOOL)needed
{
  queryCopy = query;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__1207;
  v19 = __Block_byref_object_dispose__1208;
  v20 = 0;
  monitoringSessionsLock = self->_monitoringSessionsLock;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__PPXPCNamedEntityStore__monitoringHelperForQuery_createIfNeeded___block_invoke;
  v11[3] = &unk_1E77F64A0;
  v8 = queryCopy;
  neededCopy = needed;
  v12 = v8;
  v13 = &v15;
  [(_PASLock *)monitoringSessionsLock runWithLockAcquired:v11];
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __66__PPXPCNamedEntityStore__monitoringHelperForQuery_createIfNeeded___block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [v14 objectForKeyedSubscript:*(a1 + 32)];
  v4 = v3;
  if (*(a1 + 48) == 1 && v3 == 0)
  {
    v9 = [PPRecordMonitoringHelper alloc];
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"NamedEntityStore:%@", *(a1 + 32)];
    v11 = [(PPRecordMonitoringHelper *)v9 initWithName:v10];
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v8 = [[PPXPCNamedEntityStoreQueryMonitorSession alloc] initWithMonitoringHelper:*(*(*(a1 + 40) + 8) + 40)];
    [v14 setObject:v8 forKeyedSubscript:*(a1 + 32)];
  }

  else
  {
    v6 = [v3 monitoringHelper];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

- (void)_setLastCallDateForQuery:(id)query
{
  queryCopy = query;
  monitoringSessionsLock = self->_monitoringSessionsLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__PPXPCNamedEntityStore__setLastCallDateForQuery___block_invoke;
  v7[3] = &unk_1E77F67B8;
  v8 = queryCopy;
  v6 = queryCopy;
  [(_PASLock *)monitoringSessionsLock runWithLockAcquired:v7];
}

void __50__PPXPCNamedEntityStore__setLastCallDateForQuery___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  [v2 setLastCallDate];
}

- (id)_lastCallDateForQuery:(id)query
{
  queryCopy = query;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1207;
  v16 = __Block_byref_object_dispose__1208;
  v17 = 0;
  monitoringSessionsLock = self->_monitoringSessionsLock;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__PPXPCNamedEntityStore__lastCallDateForQuery___block_invoke;
  v9[3] = &unk_1E77F6478;
  v11 = &v12;
  v6 = queryCopy;
  v10 = v6;
  [(_PASLock *)monitoringSessionsLock runWithLockAcquired:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __47__PPXPCNamedEntityStore__lastCallDateForQuery___block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  v3 = [v6 lastCallDate];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (BOOL)donateLocationNamedEntities:(id)entities bundleId:(id)id groupId:(id)groupId error:(id *)error
{
  groupIdCopy = groupId;
  idCopy = id;
  entitiesCopy = entities;
  v12 = +[PPNamedEntityReadWriteClient sharedInstance];
  LOBYTE(error) = [v12 donateLocationNamedEntities:entitiesCopy bundleId:idCopy groupId:groupIdCopy error:error];

  return error;
}

- (BOOL)clearWithError:(id *)error deletedCount:(unint64_t *)count
{
  v6 = +[PPNamedEntityReadWriteClient sharedInstance];
  LOBYTE(count) = [v6 clearWithError:error deletedCount:count];

  return count;
}

- (BOOL)cloudSyncWithError:(id *)error
{
  v4 = +[PPNamedEntityReadWriteClient sharedInstance];
  LOBYTE(error) = [v4 cloudSyncWithError:error];

  return error;
}

- (BOOL)removeMapItemsBeforeCutoffDate:(id)date error:(id *)error
{
  dateCopy = date;
  v6 = +[PPNamedEntityReadWriteClient sharedInstance];
  LOBYTE(error) = [v6 removeMapItemsBeforeDate:dateCopy error:error];

  return error;
}

- (BOOL)removeMapItemForPlaceName:(id)name error:(id *)error
{
  nameCopy = name;
  v6 = +[PPNamedEntityReadWriteClient sharedInstance];
  LOBYTE(error) = [v6 removeMapItemForPlaceName:nameCopy error:error];

  return error;
}

- (id)mapItemForPlaceName:(id)name error:(id *)error
{
  nameCopy = name;
  v6 = +[PPNamedEntityReadOnlyClient sharedInstance];
  v7 = [v6 mapItemForPlaceName:nameCopy error:error];

  return v7;
}

- (BOOL)donateMapItem:(id)item forPlaceName:(id)name error:(id *)error
{
  nameCopy = name;
  itemCopy = item;
  v9 = +[PPNamedEntityReadWriteClient sharedInstance];
  LOBYTE(error) = [v9 donateMapItem:itemCopy forPlaceName:nameCopy error:error];

  return error;
}

- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)id groupId:(id)groupId olderThan:(id)than deletedCount:(unint64_t *)count error:(id *)error
{
  thanCopy = than;
  groupIdCopy = groupId;
  idCopy = id;
  v14 = +[PPNamedEntityReadWriteClient sharedInstance];
  LOBYTE(error) = [v14 deleteAllNamedEntitiesFromSourcesWithBundleId:idCopy groupId:groupIdCopy olderThanDate:thanCopy deletedCount:count error:error];

  return error;
}

- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)id groupIds:(id)ids deletedCount:(unint64_t *)count error:(id *)error
{
  idsCopy = ids;
  idCopy = id;
  v11 = +[PPNamedEntityReadWriteClient sharedInstance];
  LOBYTE(error) = [v11 deleteAllNamedEntitiesFromSourcesWithBundleId:idCopy groupIds:idsCopy deletedCount:count error:error];

  return error;
}

- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)id documentIds:(id)ids deletedCount:(unint64_t *)count error:(id *)error
{
  idsCopy = ids;
  idCopy = id;
  v11 = +[PPNamedEntityReadWriteClient sharedInstance];
  LOBYTE(error) = [v11 deleteAllNamedEntitiesFromSourcesWithBundleId:idCopy documentIds:idsCopy deletedCount:count error:error];

  return error;
}

- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)id deletedCount:(unint64_t *)count error:(id *)error
{
  idCopy = id;
  v8 = +[PPNamedEntityReadWriteClient sharedInstance];
  LOBYTE(error) = [v8 deleteAllNamedEntitiesFromSourcesWithBundleId:idCopy deletedCount:count error:error];

  return error;
}

- (BOOL)flushDonationsWithError:(id *)error
{
  v4 = +[PPNamedEntityReadWriteClient sharedInstance];
  LOBYTE(error) = [v4 flushDonationsWithError:error];

  return error;
}

- (id)namedEntityRecordsWithQuery:(id)query error:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  v6 = objc_opt_new();
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v7 = pp_entities_signpost_handle();
  v8 = os_signpost_id_generate(v7);

  v9 = pp_entities_signpost_handle();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A7FD3000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PPXPCNamedEntityStore.namedEntityRecordsWithQuery", "", buf, 2u);
  }

  v11 = +[PPNamedEntityReadOnlyClient sharedInstance];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __59__PPXPCNamedEntityStore_namedEntityRecordsWithQuery_error___block_invoke;
  v28[3] = &unk_1E77F6748;
  v12 = v6;
  v29 = v12;
  v30 = &v32;
  v13 = [v11 namedEntityRecordsWithQuery:queryCopy error:error handleBatch:v28];

  v14 = pp_entities_signpost_handle();
  v15 = v14;
  if (v8 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A7FD3000, v15, OS_SIGNPOST_INTERVAL_END, v8, "PPXPCNamedEntityStore.namedEntityRecordsWithQuery", "", buf, 2u);
  }

  if (v13)
  {
    v16 = objc_alloc(MEMORY[0x1E695DF70]);
    v17 = [v16 initWithCapacity:v33[3]];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v18 = v12;
    v19 = [v18 countByEnumeratingWithState:&v24 objects:v36 count:16];
    if (v19)
    {
      v20 = *v25;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v25 != v20)
          {
            objc_enumerationMutation(v18);
          }

          [v17 addObjectsFromArray:{*(*(&v24 + 1) + 8 * i), v24}];
        }

        v19 = [v18 countByEnumeratingWithState:&v24 objects:v36 count:16];
      }

      while (v19);
    }
  }

  else
  {
    v17 = 0;
  }

  _Block_object_dispose(&v32, 8);
  v22 = *MEMORY[0x1E69E9840];

  return v17;
}

void __59__PPXPCNamedEntityStore_namedEntityRecordsWithQuery_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 addObject:v4];
  v5 = [v4 count];

  *(*(*(a1 + 40) + 8) + 24) += v5;
}

- (BOOL)iterNamedEntityRecordsWithQuery:(id)query error:(id *)error block:(id)block
{
  blockCopy = block;
  queryCopy = query;
  v9 = pp_entities_signpost_handle();
  v10 = os_signpost_id_generate(v9);

  v11 = pp_entities_signpost_handle();
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A7FD3000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PPXPCNamedEntityStore.iterNamedEntityRecordsWithQuery", "", buf, 2u);
  }

  v13 = +[PPNamedEntityReadOnlyClient sharedInstance];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __69__PPXPCNamedEntityStore_iterNamedEntityRecordsWithQuery_error_block___block_invoke;
  v19[3] = &unk_1E77F7D70;
  v20 = blockCopy;
  v14 = blockCopy;
  v15 = [v13 namedEntityRecordsWithQuery:queryCopy error:error handleBatch:v19];

  v16 = pp_entities_signpost_handle();
  v17 = v16;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A7FD3000, v17, OS_SIGNPOST_INTERVAL_END, v10, "PPXPCNamedEntityStore.iterNamedEntityRecordsWithQuery", "", buf, 2u);
  }

  return v15;
}

void __69__PPXPCNamedEntityStore_iterNamedEntityRecordsWithQuery_error_block___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if ((*a3 & 1) == 0)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        (*(*(a1 + 32) + 16))(*(a1 + 32));
        if (*a3)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)rankedNamedEntitiesWithQuery:(id)query error:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  v6 = objc_opt_new();
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v7 = pp_entities_signpost_handle();
  v8 = os_signpost_id_generate(v7);

  v9 = pp_entities_signpost_handle();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A7FD3000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PPXPCNamedEntityStore.rankedNamedEntitiesWithQuery", "", buf, 2u);
  }

  v11 = +[PPNamedEntityReadOnlyClient sharedInstance];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __60__PPXPCNamedEntityStore_rankedNamedEntitiesWithQuery_error___block_invoke;
  v28[3] = &unk_1E77F6748;
  v12 = v6;
  v29 = v12;
  v30 = &v32;
  v13 = [v11 rankedNamedEntitiesWithQuery:queryCopy error:error handleBatch:v28];

  v14 = pp_entities_signpost_handle();
  v15 = v14;
  if (v8 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A7FD3000, v15, OS_SIGNPOST_INTERVAL_END, v8, "PPXPCNamedEntityStore.rankedNamedEntitiesWithQuery", "", buf, 2u);
  }

  if (v13)
  {
    v16 = objc_alloc(MEMORY[0x1E695DF70]);
    v17 = [v16 initWithCapacity:v33[3]];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v18 = v12;
    v19 = [v18 countByEnumeratingWithState:&v24 objects:v36 count:16];
    if (v19)
    {
      v20 = *v25;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v25 != v20)
          {
            objc_enumerationMutation(v18);
          }

          [v17 addObjectsFromArray:{*(*(&v24 + 1) + 8 * i), v24}];
        }

        v19 = [v18 countByEnumeratingWithState:&v24 objects:v36 count:16];
      }

      while (v19);
    }
  }

  else
  {
    v17 = 0;
  }

  _Block_object_dispose(&v32, 8);
  v22 = *MEMORY[0x1E69E9840];

  return v17;
}

void __60__PPXPCNamedEntityStore_rankedNamedEntitiesWithQuery_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 addObject:v4];
  v5 = [v4 count];

  *(*(*(a1 + 40) + 8) + 24) += v5;
}

- (BOOL)iterRankedNamedEntitiesWithQuery:(id)query error:(id *)error block:(id)block
{
  blockCopy = block;
  queryCopy = query;
  v9 = pp_entities_signpost_handle();
  v10 = os_signpost_id_generate(v9);

  v11 = pp_entities_signpost_handle();
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A7FD3000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PPXPCNamedEntityStore.iterRankedNamedEntitiesWithQuery", "", buf, 2u);
  }

  v13 = +[PPNamedEntityReadOnlyClient sharedInstance];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __70__PPXPCNamedEntityStore_iterRankedNamedEntitiesWithQuery_error_block___block_invoke;
  v19[3] = &unk_1E77F7D70;
  v20 = blockCopy;
  v14 = blockCopy;
  v15 = [v13 rankedNamedEntitiesWithQuery:queryCopy error:error handleBatch:v19];

  v16 = pp_entities_signpost_handle();
  v17 = v16;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A7FD3000, v17, OS_SIGNPOST_INTERVAL_END, v10, "PPXPCNamedEntityStore.iterRankedNamedEntitiesWithQuery", "", buf, 2u);
  }

  return v15;
}

void __70__PPXPCNamedEntityStore_iterRankedNamedEntitiesWithQuery_error_block___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if ((*a3 & 1) == 0)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        (*(*(a1 + 32) + 16))(*(a1 + 32));
        if (*a3)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

@end
@interface PLFakeCPLLibraryManager
+ (id)fakeCPLStatusBaseURLWithBaseURL:(id)a3;
- (CPLLibraryManagerDelegate)delegate;
- (CPLLibraryManagerForceSyncDelegate)forceSyncDelegate;
- (CPLRecordComputeStateDelegate)recordComputeStateDelegate;
- (CPLResourceProgressDelegate)resourceProgressDelegate;
- (PLFakeCPLLibraryManager)initWithClientLibraryBaseURL:(id)a3 cloudLibraryStateStorageURL:(id)a4 cloudLibraryResourceStorageURL:(id)a5 libraryIdentifier:(id)a6 options:(unint64_t)a7;
- (void)acceptSharedScope:(id)a3 completionHandler:(id)a4;
- (void)activateScopeWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)beginDownloadForResource:(id)a3 clientBundleID:(id)a4 highPriority:(BOOL)a5 completionHandler:(id)a6;
- (void)beginDownloadForResource:(id)a3 clientBundleID:(id)a4 options:(id)a5 proposedTaskIdentifier:(id)a6 completionHandler:(id)a7;
- (void)beginInMemoryDownloadOfResource:(id)a3 clientBundleID:(id)a4 completionHandler:(id)a5;
- (void)beginPullChangeSessionWithKnownLibraryVersion:(id)a3 completionHandler:(id)a4;
- (void)beginPushChangeSessionWithKnownLibraryVersion:(id)a3 completionHandler:(id)a4;
- (void)boostPriorityForScopeWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)checkHasBackgroundDownloadOperationsWithCompletionHandler:(id)a3;
- (void)checkResourcesAreSafeToPrune:(id)a3 checkServerIfNecessary:(BOOL)a4 completionHandler:(id)a5;
- (void)createOwnedLibraryShareScopeWithShare:(id)a3 title:(id)a4 completionHandler:(id)a5;
- (void)createScope:(id)a3 completionHandler:(id)a4;
- (void)deactivateWithCompletionHandler:(id)a3;
- (void)deleteResources:(id)a3 checkServerIfNecessary:(BOOL)a4 completionHandler:(id)a5;
- (void)disableMainScopeWithCompletionHandler:(id)a3;
- (void)enableMainScopeWithCompletionHandler:(id)a3;
- (void)fetchSharedScopeFromShareURL:(id)a3 completionHandler:(id)a4;
- (void)forceBackupWithCompletionHandler:(id)a3;
- (void)forceSynchronizingScopeWithIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)getCloudCacheForRecordWithScopedIdentifier:(id)a3 completionHandler:(id)a4;
- (void)getCloudIdentifiersForLocalIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)getCloudScopedIdentifiersForLocalScopedIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)getScopeStatusCountsForScopeWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)getStatusForComponents:(id)a3 completionHandler:(id)a4;
- (void)getStatusForPendingRecordsSharedToScopeWithIdentifier:(id)a3 maximumCount:(unint64_t)a4 completionHandler:(id)a5;
- (void)getStatusForRecordsWithScopedIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)getStreamingURLOrMediaMakerDataForResource:(id)a3 intent:(unint64_t)a4 hints:(id)a5 timeRange:(id *)a6 clientBundleID:(id)a7 completionHandler:(id)a8;
- (void)getSystemBudgetsWithCompletionHandler:(id)a3;
- (void)openWithCompletionHandler:(id)a3;
- (void)queryUserDetailsForShareParticipants:(id)a3 completionHandler:(id)a4;
- (void)removeParticipants:(id)a3 fromSharedScopeWithIdentifier:(id)a4 retentionPolicy:(int64_t)a5 exitSource:(int64_t)a6 completionHandler:(id)a7;
- (void)resolveLocalScopedIdentifiersForCloudScopedIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)sharedLibraryRampCheckWithCompletionHandler:(id)a3;
- (void)startExitFromSharedScopeWithIdentifier:(id)a3 retentionPolicy:(int64_t)a4 exitSource:(int64_t)a5 completionHandler:(id)a6;
- (void)updateShareForScope:(id)a3 completionHandler:(id)a4;
@end

@implementation PLFakeCPLLibraryManager

- (CPLLibraryManagerForceSyncDelegate)forceSyncDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_forceSyncDelegate);

  return WeakRetained;
}

- (CPLRecordComputeStateDelegate)recordComputeStateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_recordComputeStateDelegate);

  return WeakRetained;
}

- (CPLResourceProgressDelegate)resourceProgressDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_resourceProgressDelegate);

  return WeakRetained;
}

- (CPLLibraryManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)getSystemBudgetsWithCompletionHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__PLFakeCPLLibraryManager_getSystemBudgetsWithCompletionHandler___block_invoke;
  block[3] = &unk_1E7576AA0;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);
}

void __65__PLFakeCPLLibraryManager_getSystemBudgetsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E6994AB0];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s does not support this action", "-[PLFakeCPLLibraryManager getSystemBudgetsWithCompletionHandler:]_block_invoke"];
  v3 = [v2 cplErrorWithCode:1002 description:{@"%@", v4}];
  (*(v1 + 16))(v1, 0, v3);
}

- (void)beginInMemoryDownloadOfResource:(id)a3 clientBundleID:(id)a4 completionHandler:(id)a5
{
  v6 = a5;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __92__PLFakeCPLLibraryManager_beginInMemoryDownloadOfResource_clientBundleID_completionHandler___block_invoke;
  block[3] = &unk_1E7576AA0;
  v10 = v6;
  v8 = v6;
  dispatch_async(queue, block);
}

- (void)beginDownloadForResource:(id)a3 clientBundleID:(id)a4 highPriority:(BOOL)a5 completionHandler:(id)a6
{
  v7 = a6;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__PLFakeCPLLibraryManager_beginDownloadForResource_clientBundleID_highPriority_completionHandler___block_invoke;
  block[3] = &unk_1E7576AA0;
  v11 = v7;
  v9 = v7;
  dispatch_async(queue, block);
}

- (void)beginDownloadForResource:(id)a3 clientBundleID:(id)a4 options:(id)a5 proposedTaskIdentifier:(id)a6 completionHandler:(id)a7
{
  v8 = a7;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __116__PLFakeCPLLibraryManager_beginDownloadForResource_clientBundleID_options_proposedTaskIdentifier_completionHandler___block_invoke;
  block[3] = &unk_1E7576AA0;
  v12 = v8;
  v10 = v8;
  dispatch_async(queue, block);
}

- (void)getStreamingURLOrMediaMakerDataForResource:(id)a3 intent:(unint64_t)a4 hints:(id)a5 timeRange:(id *)a6 clientBundleID:(id)a7 completionHandler:(id)a8
{
  v9 = a8;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __126__PLFakeCPLLibraryManager_getStreamingURLOrMediaMakerDataForResource_intent_hints_timeRange_clientBundleID_completionHandler___block_invoke;
  block[3] = &unk_1E7576AA0;
  v13 = v9;
  v11 = v9;
  dispatch_async(queue, block);
}

void __126__PLFakeCPLLibraryManager_getStreamingURLOrMediaMakerDataForResource_intent_hints_timeRange_clientBundleID_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E6994AB0];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s does not support this action", "-[PLFakeCPLLibraryManager getStreamingURLOrMediaMakerDataForResource:intent:hints:timeRange:clientBundleID:completionHandler:]_block_invoke"];
  v3 = [v2 cplErrorWithCode:1002 description:{@"%@", v4}];
  (*(v1 + 16))(v1, 0, 0, 0, 0, v3);
}

- (void)checkResourcesAreSafeToPrune:(id)a3 checkServerIfNecessary:(BOOL)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  queue = self->_queue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __97__PLFakeCPLLibraryManager_checkResourcesAreSafeToPrune_checkServerIfNecessary_completionHandler___block_invoke;
  v12[3] = &unk_1E7577C08;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(queue, v12);
}

void __97__PLFakeCPLLibraryManager_checkResourcesAreSafeToPrune_checkServerIfNecessary_completionHandler___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = MEMORY[0x1E6994AB0];
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s does not support resource prune", "-[PLFakeCPLLibraryManager checkResourcesAreSafeToPrune:checkServerIfNecessary:completionHandler:]_block_invoke"];
        v10 = [v8 cplErrorWithCode:1002 description:{@"%@", v9}];
        [v2 setObject:v10 forKeyedSubscript:v7];
      }

      v4 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  v11 = *(a1 + 40);
  v12 = [v2 copy];
  (*(v11 + 16))(v11, 0, v12);
}

- (void)deleteResources:(id)a3 checkServerIfNecessary:(BOOL)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  queue = self->_queue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __84__PLFakeCPLLibraryManager_deleteResources_checkServerIfNecessary_completionHandler___block_invoke;
  v12[3] = &unk_1E7577C08;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(queue, v12);
}

void __84__PLFakeCPLLibraryManager_deleteResources_checkServerIfNecessary_completionHandler___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = MEMORY[0x1E6994AB0];
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s does not support resource deletions", "-[PLFakeCPLLibraryManager deleteResources:checkServerIfNecessary:completionHandler:]_block_invoke"];
        v10 = [v8 cplErrorWithCode:1002 description:{@"%@", v9}];
        [v2 setObject:v10 forKeyedSubscript:v7];
      }

      v4 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  v11 = *(a1 + 40);
  v12 = [v2 copy];
  (*(v11 + 16))(v11, 0, v12);
}

- (void)checkHasBackgroundDownloadOperationsWithCompletionHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__PLFakeCPLLibraryManager_checkHasBackgroundDownloadOperationsWithCompletionHandler___block_invoke;
  block[3] = &unk_1E7576AA0;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);
}

void __85__PLFakeCPLLibraryManager_checkHasBackgroundDownloadOperationsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E6994AB0];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s does not support this action", "-[PLFakeCPLLibraryManager checkHasBackgroundDownloadOperationsWithCompletionHandler:]_block_invoke"];
  v3 = [v2 cplErrorWithCode:1002 description:{@"%@", v4}];
  (*(v1 + 16))(v1, 0, v3);
}

- (void)resolveLocalScopedIdentifiersForCloudScopedIdentifiers:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__PLFakeCPLLibraryManager_resolveLocalScopedIdentifiersForCloudScopedIdentifiers_completionHandler___block_invoke;
  block[3] = &unk_1E7576AA0;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, block);
}

void __100__PLFakeCPLLibraryManager_resolveLocalScopedIdentifiersForCloudScopedIdentifiers_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E6994AB0];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s does not support this action", "-[PLFakeCPLLibraryManager resolveLocalScopedIdentifiersForCloudScopedIdentifiers:completionHandler:]_block_invoke"];
  v3 = [v2 cplErrorWithCode:1002 description:{@"%@", v4}];
  (*(v1 + 16))(v1, 0, v3);
}

- (void)getCloudScopedIdentifiersForLocalScopedIdentifiers:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96__PLFakeCPLLibraryManager_getCloudScopedIdentifiersForLocalScopedIdentifiers_completionHandler___block_invoke;
  block[3] = &unk_1E7576AA0;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, block);
}

void __96__PLFakeCPLLibraryManager_getCloudScopedIdentifiersForLocalScopedIdentifiers_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E6994AB0];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s does not support this action", "-[PLFakeCPLLibraryManager getCloudScopedIdentifiersForLocalScopedIdentifiers:completionHandler:]_block_invoke"];
  v3 = [v2 cplErrorWithCode:1002 description:{@"%@", v4}];
  (*(v1 + 16))(v1, 0, v3);
}

- (void)getCloudCacheForRecordWithScopedIdentifier:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__PLFakeCPLLibraryManager_getCloudCacheForRecordWithScopedIdentifier_completionHandler___block_invoke;
  block[3] = &unk_1E7576AA0;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, block);
}

void __88__PLFakeCPLLibraryManager_getCloudCacheForRecordWithScopedIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E6994AB0];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s does not support this action", "-[PLFakeCPLLibraryManager getCloudCacheForRecordWithScopedIdentifier:completionHandler:]_block_invoke"];
  v3 = [v2 cplErrorWithCode:1002 description:{@"%@", v4}];
  (*(v1 + 16))(v1, 0, v3);
}

- (void)getStatusForComponents:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__PLFakeCPLLibraryManager_getStatusForComponents_completionHandler___block_invoke;
  block[3] = &unk_1E7576AA0;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, block);
}

void __68__PLFakeCPLLibraryManager_getStatusForComponents_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E6994AB0];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s does not support this action", "-[PLFakeCPLLibraryManager getStatusForComponents:completionHandler:]_block_invoke"];
  v3 = [v2 cplErrorWithCode:1002 description:{@"%@", v4}];
  (*(v1 + 16))(v1, 0, v3);
}

- (void)getCloudIdentifiersForLocalIdentifiers:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__PLFakeCPLLibraryManager_getCloudIdentifiersForLocalIdentifiers_completionHandler___block_invoke;
  block[3] = &unk_1E7576AA0;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, block);
}

void __84__PLFakeCPLLibraryManager_getCloudIdentifiersForLocalIdentifiers_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E6994AB0];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s does not support this action", "-[PLFakeCPLLibraryManager getCloudIdentifiersForLocalIdentifiers:completionHandler:]_block_invoke"];
  v3 = [v2 cplErrorWithCode:1002 description:{@"%@", v4}];
  (*(v1 + 16))(v1, 0, v3);
}

- (void)getStatusForRecordsWithScopedIdentifiers:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __86__PLFakeCPLLibraryManager_getStatusForRecordsWithScopedIdentifiers_completionHandler___block_invoke;
  v11[3] = &unk_1E7577C08;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, v11);
}

void __86__PLFakeCPLLibraryManager_getStatusForRecordsWithScopedIdentifiers_completionHandler___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v14 = a1;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        v9 = objc_alloc(MEMORY[0x1E6994B80]);
        v10 = [MEMORY[0x1E6994B60] newRecordWithScopedIdentifier:v8];
        v11 = [v9 initWithRecord:v10 generation:0];

        [v11 setUploaded:1];
        [v2 setObject:v11 forKey:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v12 = *(v14 + 40);
  v13 = [v2 copy];
  (*(v12 + 16))(v12, v13, 0);
}

- (void)forceBackupWithCompletionHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__PLFakeCPLLibraryManager_forceBackupWithCompletionHandler___block_invoke;
  block[3] = &unk_1E7576AA0;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);
}

- (void)beginPullChangeSessionWithKnownLibraryVersion:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __91__PLFakeCPLLibraryManager_beginPullChangeSessionWithKnownLibraryVersion_completionHandler___block_invoke;
  v8[3] = &unk_1E7577C08;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

void __91__PLFakeCPLLibraryManager_beginPullChangeSessionWithKnownLibraryVersion_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [[PLFakeCPLPullChangeSession alloc] initWithLibraryManager:*(a1 + 32) queue:*(*(a1 + 32) + 8)];
  (*(*(a1 + 40) + 16))();
}

- (void)beginPushChangeSessionWithKnownLibraryVersion:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __91__PLFakeCPLLibraryManager_beginPushChangeSessionWithKnownLibraryVersion_completionHandler___block_invoke;
  v8[3] = &unk_1E7577C08;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

void __91__PLFakeCPLLibraryManager_beginPushChangeSessionWithKnownLibraryVersion_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [[PLFakeCPLPushChangeSession alloc] initWithLibraryManager:*(a1 + 32) queue:*(*(a1 + 32) + 8)];
  (*(*(a1 + 40) + 16))();
}

- (void)queryUserDetailsForShareParticipants:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__PLFakeCPLLibraryManager_queryUserDetailsForShareParticipants_completionHandler___block_invoke;
  block[3] = &unk_1E7576AA0;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, block);
}

void __82__PLFakeCPLLibraryManager_queryUserDetailsForShareParticipants_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E6994AB0];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s does not support this action", "-[PLFakeCPLLibraryManager queryUserDetailsForShareParticipants:completionHandler:]_block_invoke"];
  v3 = [v2 cplErrorWithCode:1002 description:{@"%@", v4}];
  (*(v1 + 16))(v1, 0, v3);
}

- (void)forceSynchronizingScopeWithIdentifiers:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__PLFakeCPLLibraryManager_forceSynchronizingScopeWithIdentifiers_completionHandler___block_invoke;
  block[3] = &unk_1E7576AA0;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, block);
}

- (void)boostPriorityForScopeWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__PLFakeCPLLibraryManager_boostPriorityForScopeWithIdentifier_completionHandler___block_invoke;
  block[3] = &unk_1E7576AA0;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, block);
}

void __81__PLFakeCPLLibraryManager_boostPriorityForScopeWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E6994AB0];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s does not support this action", "-[PLFakeCPLLibraryManager boostPriorityForScopeWithIdentifier:completionHandler:]_block_invoke"];
  v3 = [v2 cplErrorWithCode:1002 description:{@"%@", v4}];
  (*(v1 + 16))(v1, v3);
}

- (void)acceptSharedScope:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__PLFakeCPLLibraryManager_acceptSharedScope_completionHandler___block_invoke;
  block[3] = &unk_1E7576AA0;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, block);
}

void __63__PLFakeCPLLibraryManager_acceptSharedScope_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E6994AB0];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s does not support this action", "-[PLFakeCPLLibraryManager acceptSharedScope:completionHandler:]_block_invoke"];
  v3 = [v2 cplErrorWithCode:1002 description:{@"%@", v4}];
  (*(v1 + 16))(v1, v3);
}

- (void)fetchSharedScopeFromShareURL:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__PLFakeCPLLibraryManager_fetchSharedScopeFromShareURL_completionHandler___block_invoke;
  block[3] = &unk_1E7576AA0;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, block);
}

void __74__PLFakeCPLLibraryManager_fetchSharedScopeFromShareURL_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E6994AB0];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s does not support this action", "-[PLFakeCPLLibraryManager fetchSharedScopeFromShareURL:completionHandler:]_block_invoke"];
  v3 = [v2 cplErrorWithCode:1002 description:{@"%@", v4}];
  (*(v1 + 16))(v1, 0, v3);
}

- (void)getStatusForPendingRecordsSharedToScopeWithIdentifier:(id)a3 maximumCount:(unint64_t)a4 completionHandler:(id)a5
{
  v6 = a5;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __112__PLFakeCPLLibraryManager_getStatusForPendingRecordsSharedToScopeWithIdentifier_maximumCount_completionHandler___block_invoke;
  block[3] = &unk_1E7576AA0;
  v10 = v6;
  v8 = v6;
  dispatch_async(queue, block);
}

void __112__PLFakeCPLLibraryManager_getStatusForPendingRecordsSharedToScopeWithIdentifier_maximumCount_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E6994AB0];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s does not support this action", "-[PLFakeCPLLibraryManager getStatusForPendingRecordsSharedToScopeWithIdentifier:maximumCount:completionHandler:]_block_invoke"];
  v3 = [v2 cplErrorWithCode:1002 description:{@"%@", v4}];
  (*(v1 + 16))(v1, 0, v3);
}

- (void)getScopeStatusCountsForScopeWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__PLFakeCPLLibraryManager_getScopeStatusCountsForScopeWithIdentifier_completionHandler___block_invoke;
  block[3] = &unk_1E7576AA0;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, block);
}

void __88__PLFakeCPLLibraryManager_getScopeStatusCountsForScopeWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E6994AB0];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s does not support this action", "-[PLFakeCPLLibraryManager getScopeStatusCountsForScopeWithIdentifier:completionHandler:]_block_invoke"];
  v3 = [v2 cplErrorWithCode:1002 description:{@"%@", v4}];
  (*(v1 + 16))(v1, 0, v3);
}

- (void)updateShareForScope:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__PLFakeCPLLibraryManager_updateShareForScope_completionHandler___block_invoke;
  block[3] = &unk_1E7576AA0;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, block);
}

void __65__PLFakeCPLLibraryManager_updateShareForScope_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E6994AB0];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s does not support this action", "-[PLFakeCPLLibraryManager updateShareForScope:completionHandler:]_block_invoke"];
  v3 = [v2 cplErrorWithCode:1002 description:{@"%@", v4}];
  (*(v1 + 16))(v1, 0, v3);
}

- (void)createOwnedLibraryShareScopeWithShare:(id)a3 title:(id)a4 completionHandler:(id)a5
{
  v6 = a5;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__PLFakeCPLLibraryManager_createOwnedLibraryShareScopeWithShare_title_completionHandler___block_invoke;
  block[3] = &unk_1E7576AA0;
  v10 = v6;
  v8 = v6;
  dispatch_async(queue, block);
}

void __89__PLFakeCPLLibraryManager_createOwnedLibraryShareScopeWithShare_title_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E6994AB0];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s does not support this action", "-[PLFakeCPLLibraryManager createOwnedLibraryShareScopeWithShare:title:completionHandler:]_block_invoke"];
  v3 = [v2 cplErrorWithCode:1002 description:{@"%@", v4}];
  (*(v1 + 16))(v1, 0, v3);
}

- (void)createScope:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__PLFakeCPLLibraryManager_createScope_completionHandler___block_invoke;
  block[3] = &unk_1E7576AA0;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, block);
}

void __57__PLFakeCPLLibraryManager_createScope_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E6994AB0];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s does not support this action", "-[PLFakeCPLLibraryManager createScope:completionHandler:]_block_invoke"];
  v3 = [v2 cplErrorWithCode:1002 description:{@"%@", v4}];
  (*(v1 + 16))(v1, 0, v3);
}

- (void)sharedLibraryRampCheckWithCompletionHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__PLFakeCPLLibraryManager_sharedLibraryRampCheckWithCompletionHandler___block_invoke;
  block[3] = &unk_1E7576AA0;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);
}

- (void)removeParticipants:(id)a3 fromSharedScopeWithIdentifier:(id)a4 retentionPolicy:(int64_t)a5 exitSource:(int64_t)a6 completionHandler:(id)a7
{
  v8 = a7;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __121__PLFakeCPLLibraryManager_removeParticipants_fromSharedScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke;
  block[3] = &unk_1E7576AA0;
  v12 = v8;
  v10 = v8;
  dispatch_async(queue, block);
}

void __121__PLFakeCPLLibraryManager_removeParticipants_fromSharedScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E6994AB0];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s does not support this action", "-[PLFakeCPLLibraryManager removeParticipants:fromSharedScopeWithIdentifier:retentionPolicy:exitSource:completionHandler:]_block_invoke"];
  v3 = [v2 cplErrorWithCode:1002 description:{@"%@", v4}];
  (*(v1 + 16))(v1, 0, v3);
}

- (void)startExitFromSharedScopeWithIdentifier:(id)a3 retentionPolicy:(int64_t)a4 exitSource:(int64_t)a5 completionHandler:(id)a6
{
  v7 = a6;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __111__PLFakeCPLLibraryManager_startExitFromSharedScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke;
  block[3] = &unk_1E7576AA0;
  v11 = v7;
  v9 = v7;
  dispatch_async(queue, block);
}

void __111__PLFakeCPLLibraryManager_startExitFromSharedScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E6994AB0];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s does not support this action", "-[PLFakeCPLLibraryManager startExitFromSharedScopeWithIdentifier:retentionPolicy:exitSource:completionHandler:]_block_invoke"];
  v3 = [v2 cplErrorWithCode:1002 description:{@"%@", v4}];
  (*(v1 + 16))(v1, 0, v3);
}

- (void)deactivateWithCompletionHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__PLFakeCPLLibraryManager_deactivateWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7577C08;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)activateScopeWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__PLFakeCPLLibraryManager_activateScopeWithIdentifier_completionHandler___block_invoke;
  block[3] = &unk_1E7576AA0;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, block);
}

- (void)disableMainScopeWithCompletionHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__PLFakeCPLLibraryManager_disableMainScopeWithCompletionHandler___block_invoke;
  block[3] = &unk_1E7576AA0;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);
}

- (void)enableMainScopeWithCompletionHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PLFakeCPLLibraryManager_enableMainScopeWithCompletionHandler___block_invoke;
  block[3] = &unk_1E7576AA0;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);
}

- (void)openWithCompletionHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__PLFakeCPLLibraryManager_openWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7577C08;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (PLFakeCPLLibraryManager)initWithClientLibraryBaseURL:(id)a3 cloudLibraryStateStorageURL:(id)a4 cloudLibraryResourceStorageURL:(id)a5 libraryIdentifier:(id)a6 options:(unint64_t)a7
{
  v9 = a3;
  v24.receiver = self;
  v24.super_class = PLFakeCPLLibraryManager;
  v10 = [(PLFakeCPLLibraryManager *)&v24 init];
  if (v10)
  {
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_BACKGROUND, 0);

    v13 = dispatch_queue_create("PLFakeCPLLibraryManager", v12);
    queue = v10->_queue;
    v10->_queue = v13;

    objc_storeStrong(&v10->_baseURL, a3);
    v15 = [objc_opt_class() fakeCPLStatusBaseURLWithBaseURL:v9];
    fakeBaseURL = v10->_fakeBaseURL;
    v10->_fakeBaseURL = v15;

    v10->_state = 0;
    v17 = objc_alloc(MEMORY[0x1E6994BE8]);
    v18 = [objc_opt_class() fakeCPLStatusBaseURLWithBaseURL:v9];
    v19 = [v17 initWithClientLibraryBaseURL:v18];
    syncStatus = v10->_syncStatus;
    v10->_syncStatus = v19;

    v21 = [objc_alloc(MEMORY[0x1E6994AA0]) initWithClientLibraryBaseURL:v9];
    configuration = v10->_configuration;
    v10->_configuration = v21;
  }

  return v10;
}

+ (id)fakeCPLStatusBaseURLWithBaseURL:(id)a3
{
  v3 = [a3 URLByDeletingLastPathComponent];
  v4 = [v3 URLByAppendingPathComponent:@"PLFakeCPLLibraryManager"];

  return v4;
}

@end
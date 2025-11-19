@interface PLSyndicationSyncServiceWrapper
- (BOOL)_hasPendingAttachmentJobs;
- (BOOL)_hasPendingChatJobs;
- (BOOL)_hasPendingDeleteJobs;
- (BOOL)_hasPendingJobsBasedOnLastSyncDate:(id)a3;
- (BOOL)_needsSyndicationFullIndexSync;
- (BOOL)_supportsSyndicationQueryType:(int64_t)a3;
- (BOOL)syncManager:(id)a3 shouldContinueWithLibrary:(id)a4;
- (PLSyndicationSyncServiceWrapper)initWithPhotoLibrary:(id)a3 ingestClient:(unsigned __int8)a4;
- (id)_workItemsBatchedFromDate:(id)a3 type:(int64_t)a4;
- (id)workItemsNeedingProcessing;
- (void)_findSyndicationStartingDate;
- (void)cancelWorkOnCurrentItem;
- (void)executeQueryForSyncManager:(id)a3 type:(int64_t)a4 startDate:(id)a5 endDate:(id)a6 batchHandler:(id)a7 completionHandler:(id)a8;
- (void)executeQueryForSyncManager:(id)a3 type:(int64_t)a4 startDate:(id)a5 endDate:(id)a6 itemHandler:(id)a7 completionHandler:(id)a8;
- (void)performWorkOnItem:(id)a3 completion:(id)a4;
@end

@implementation PLSyndicationSyncServiceWrapper

- (BOOL)syncManager:(id)a3 shouldContinueWithLibrary:(id)a4
{
  v5 = [a4 libraryServicesManager];
  v6 = [v5 databaseContext];
  v7 = [v6 syndicationIngestMutex];
  LOBYTE(self) = [v7 shouldStopUsingSyndicationIngestLibraryWithIdentifier:self->_ingestClientIdentifier];

  return self ^ 1;
}

- (void)executeQueryForSyncManager:(id)a3 type:(int64_t)a4 startDate:(id)a5 endDate:(id)a6 batchHandler:(id)a7 completionHandler:(id)a8
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a7;
  v14 = a8;
  v15 = PLSyndicationSyncQueryWithDates(a5, a6, a4);
  if (v15)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __116__PLSyndicationSyncServiceWrapper_executeQueryForSyncManager_type_startDate_endDate_batchHandler_completionHandler___block_invoke;
    v22[3] = &unk_1E7569FC0;
    v22[4] = self;
    v23 = v13;
    [v15 setFoundItemsHandler:v22];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __116__PLSyndicationSyncServiceWrapper_executeQueryForSyncManager_type_startDate_endDate_batchHandler_completionHandler___block_invoke_77;
    v20[3] = &unk_1E7577430;
    v21 = v14;
    [v15 setCompletionHandler:v20];
    [v15 start];
    os_unfair_lock_lock(&self->_lock);
    if (self->_cancelled)
    {
      os_unfair_lock_unlock(&self->_lock);
      [v15 cancel];
    }

    else
    {
      objc_storeStrong(&self->_currentQuery, v15);
      os_unfair_lock_unlock(&self->_lock);
    }
  }

  else
  {
    v16 = PLSyndicationGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      if ((a4 - 1) > 3)
      {
        v17 = 0;
      }

      else
      {
        v17 = off_1E756A5A8[a4 - 1];
      }

      v18 = v17;
      *buf = 138543362;
      v25 = v18;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "[sync] no valid spotlight search query for query type: %{public}@", buf, 0xCu);
    }

    v19 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:46309 userInfo:0];
    (*(v14 + 2))(v14, v19);
  }
}

void __116__PLSyndicationSyncServiceWrapper_executeQueryForSyncManager_type_startDate_endDate_batchHandler_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLSyndicationGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134349056;
    v8 = [v3 count];
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "[sync] spotlight search query found %{public}lu items, batch processing", &v7, 0xCu);
  }

  os_unfair_lock_lock((*(a1 + 32) + 48));
  v5 = *(a1 + 32);
  v6 = *(v5 + 52);
  os_unfair_lock_unlock((v5 + 48));
  if ((v6 & 1) == 0)
  {
    LOBYTE(v7) = 0;
    (*(*(a1 + 40) + 16))();
    if (v7 == 1)
    {
      [*(a1 + 32) cancelWorkOnCurrentItem];
    }
  }
}

- (void)executeQueryForSyncManager:(id)a3 type:(int64_t)a4 startDate:(id)a5 endDate:(id)a6 itemHandler:(id)a7 completionHandler:(id)a8
{
  location[3] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = PLSyndicationSyncQueryWithDates(v15, v16, a4);
  if (v19)
  {
    objc_initWeak(location, self);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __115__PLSyndicationSyncServiceWrapper_executeQueryForSyncManager_type_startDate_endDate_itemHandler_completionHandler___block_invoke;
    v29[3] = &unk_1E7569F98;
    objc_copyWeak(&v31, location);
    v29[4] = self;
    v30 = v17;
    [v19 setFoundItemsHandler:v29];
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __115__PLSyndicationSyncServiceWrapper_executeQueryForSyncManager_type_startDate_endDate_itemHandler_completionHandler___block_invoke_74;
    v27 = &unk_1E7577430;
    v28 = v18;
    [v19 setCompletionHandler:&v24];
    [v19 start];
    os_unfair_lock_lock(&self->_lock);
    if (self->_cancelled)
    {
      os_unfair_lock_unlock(&self->_lock);
      [v19 cancel];
    }

    else
    {
      objc_storeStrong(&self->_currentQuery, v19);
      os_unfair_lock_unlock(&self->_lock);
    }

    objc_destroyWeak(&v31);
    objc_destroyWeak(location);
  }

  else
  {
    v20 = PLSyndicationGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      if ((a4 - 1) > 3)
      {
        v21 = 0;
      }

      else
      {
        v21 = off_1E756A5A8[a4 - 1];
      }

      v22 = v21;
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v22;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "[sync] no valid spotlight search query for query type: %{public}@", location, 0xCu);
    }

    v23 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:46309 userInfo:0];
    (*(v18 + 2))(v18, v23);
  }
}

void __115__PLSyndicationSyncServiceWrapper_executeQueryForSyncManager_type_startDate_endDate_itemHandler_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = PLSyndicationGetLog();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (WeakRetained)
  {
    if (v6)
    {
      *buf = 134217984;
      v20 = [v3 count];
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "[sync] spotlight search query found %lu items", buf, 0xCu);
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v3;
    v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = objc_autoreleasePoolPush();
          os_unfair_lock_lock((*(a1 + 32) + 48));
          v12 = *(a1 + 32);
          v13 = *(v12 + 52);
          os_unfair_lock_unlock((v12 + 48));
          if (v13)
          {
            goto LABEL_17;
          }

          buf[0] = 0;
          (*(*(a1 + 40) + 16))(*(a1 + 40));
          if (buf[0] == 1)
          {
            [*(a1 + 32) cancelWorkOnCurrentItem];
LABEL_17:
            objc_autoreleasePoolPop(v11);
            goto LABEL_18;
          }

          objc_autoreleasePoolPop(v11);
        }

        v8 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }

  else if (v6)
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "[sync] spotlight search query found stuff but worker is already gone", buf, 2u);
  }

LABEL_18:
}

- (void)_findSyndicationStartingDate
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = self->_photoLibrary;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__25473;
  v18[4] = __Block_byref_object_dispose__25474;
  v19 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:0.0];
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v17 = 0;
  v4 = dispatch_group_create();
  dispatch_group_enter(v4);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __63__PLSyndicationSyncServiceWrapper__findSyndicationStartingDate__block_invoke;
  v15[3] = &unk_1E7569F20;
  v15[4] = self;
  v15[5] = v18;
  v15[6] = v16;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__PLSyndicationSyncServiceWrapper__findSyndicationStartingDate__block_invoke_2;
  v12[3] = &unk_1E7569F48;
  v12[4] = self;
  v14 = v18;
  v5 = v4;
  v13 = v5;
  [PLSyndicationSyncEngine findStartDateForMessagesSpotlightItemsWithBlock:v15 completionHandler:v12];
  v6 = dispatch_time(0, 30000000000);
  if (dispatch_group_wait(v5, v6))
  {
    v7 = PLSyndicationGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "[sync] failed to find syndication start date, timed out", buf, 2u);
    }

    PLSafeRunWithUnfairLock();
  }

  v11 = MEMORY[0x1E69E9820];
  v8 = PLSafeResultWithUnfairLock();
  v9 = PLSyndicationGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = v8;
    _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "[sync] setting syndication start date: %{public}@", buf, 0xCu);
  }

  v10 = [(PLPhotoLibrary *)v3 globalValues:v11];
  [v10 setSyndicationStartDate:v8];

  _Block_object_dispose(v16, 8);
  _Block_object_dispose(v18, 8);
}

void __63__PLSyndicationSyncServiceWrapper__findSyndicationStartingDate__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = PLSyndicationGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v6 = v2;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_INFO, "[sync] searching for syndication start date, current pending date: %@", buf, 0xCu);
    }

    v4 = v2;
    PLSafeRunWithUnfairLock();
  }
}

void __63__PLSyndicationSyncServiceWrapper__findSyndicationStartingDate__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PLSyndicationGetLog();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v11 = v5;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_INFO, "[sync] found syndication start date: %{public}@", buf, 0xCu);
    }

    v9 = v5;
    PLSafeRunWithUnfairLock();
    v8 = v9;
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v11 = v6;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "[sync] failed to find syndication start date, error: %@", buf, 0xCu);
  }

  dispatch_group_leave(*(a1 + 40));
}

void __63__PLSyndicationSyncServiceWrapper__findSyndicationStartingDate__block_invoke_66(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(a1 + 32));
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v2 = *(a1 + 56);
    if (v2)
    {
      *v2 = 1;
    }
  }
}

- (BOOL)_supportsSyndicationQueryType:(int64_t)a3
{
  supportedQueryTypes = self->_supportedQueryTypes;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  LOBYTE(supportedQueryTypes) = [(NSSet *)supportedQueryTypes containsObject:v4];

  return supportedQueryTypes;
}

- (BOOL)_hasPendingDeleteJobs
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = self->_photoLibrary;
  if ([(PLSyndicationSyncServiceWrapper *)self _supportsSyndicationQueryType:3])
  {
    v4 = [(PLPhotoLibrary *)v3 globalValues];
    v5 = [v4 lastDeleteSyndicationSyncDate];

    [v5 timeIntervalSinceNow];
    v7 = v6;
    if (![(PLSyndicationSyncServiceWrapper *)self _hasPendingJobsBasedOnLastSyncDate:v5])
    {
      if (v7 >= -604800.0)
      {
        v10 = 0;
        goto LABEL_10;
      }

      v8 = PLSyndicationGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        name = self->_name;
        v12 = 138412546;
        v13 = name;
        v14 = 2048;
        v15 = 7;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "[sync.delete] %@ has pending delete sync since it has been over %ld days since the previous delete sync", &v12, 0x16u);
      }
    }

    v10 = 1;
LABEL_10:

    goto LABEL_11;
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (BOOL)_hasPendingChatJobs
{
  v3 = self->_photoLibrary;
  if ([(PLSyndicationSyncServiceWrapper *)self _supportsSyndicationQueryType:2])
  {
    v4 = [(PLPhotoLibrary *)v3 globalValues];
    v5 = [v4 lastChatSyndicationSyncDate];

    v6 = [(PLSyndicationSyncServiceWrapper *)self _hasPendingJobsBasedOnLastSyncDate:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_hasPendingAttachmentJobs
{
  v3 = self->_photoLibrary;
  if ([(PLSyndicationSyncServiceWrapper *)self _supportsSyndicationQueryType:1])
  {
    v4 = [(PLPhotoLibrary *)v3 globalValues];
    v5 = [v4 lastAttachmentSyndicationSyncDate];

    v6 = [(PLSyndicationSyncServiceWrapper *)self _hasPendingJobsBasedOnLastSyncDate:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_hasPendingJobsBasedOnLastSyncDate:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = PLSpotlightReceiverLastUpdate();
    if (v4)
    {
      v5 = [v3 compare:v4] != 1;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)_needsSyndicationFullIndexSync
{
  v2 = self->_photoLibrary;
  v3 = [(PLPhotoLibrary *)v2 libraryServicesManager];
  v4 = [v3 wellKnownPhotoLibraryIdentifier];

  if (v4 == 3)
  {
    v5 = [(PLPhotoLibrary *)v2 globalValues];
    v6 = [v5 inProgressFullIndexSyndicationSyncDate];

    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v8 = [(PLPhotoLibrary *)v2 globalValues];
      v9 = [v8 lastDeleteSyndicationSyncDate];

      if (v9)
      {
        v10 = [MEMORY[0x1E695DF00] date];
        [v10 timeIntervalSinceDate:v9];
        v12 = v11;
        v13 = [(PLPhotoLibrary *)v2 globalValues];
        v14 = [v13 lastFullIndexSyndicationSyncStartDate];

        if (v14)
        {
          [v10 timeIntervalSinceDate:v14];
          if (v12 >= v15)
          {
            v12 = v15;
          }
        }

        v7 = v12 > 1209600.0;
      }

      else
      {
        v10 = [(PLPhotoLibrary *)v2 globalValues];
        v14 = [v10 lastFullIndexSyndicationSyncStartDate];
        v7 = v14 == 0;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_workItemsBatchedFromDate:(id)a3 type:(int64_t)a4
{
  v6 = a3;
  v7 = self->_photoLibrary;
  [v6 timeIntervalSinceReferenceDate];
  if (v8 <= 0.0)
  {
    v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:0.0];

    v6 = v9;
  }

  v10 = [(PLPhotoLibrary *)v7 globalValues];
  [v10 syndicationSyncRangeDenominator];
  v12 = v11;

  +[PLSyndicationSyncEngine maxSpotlightQueryTimeInterval];
  v14 = v13 / v12;
  +[PLSyndicationSyncEngine maxSpotlightQueryTimeInterval];
  if (v14 >= v15)
  {
    v14 = v15;
  }

  +[PLSyndicationSyncEngine minSpotlightQueryTimeInterval];
  if (v14 < v16)
  {
    v14 = v16;
  }

  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = v6;
  [v18 timeIntervalSinceNow];
  v19 = v18;
  if (v20 <= 0.0)
  {
    v21 = v18;
    while ([v17 count] <= 0x3E7)
    {
      v19 = [v21 dateByAddingTimeInterval:v14];
      v22 = [[PLSyndicationSyncWorkItem alloc] initWithSyndicationQueryType:a4 startDate:v21 endDate:v19];
      [v17 addObject:v22];

      [v19 timeIntervalSinceNow];
      v21 = v19;
      if (v23 > 0.0)
      {
        goto LABEL_13;
      }
    }

    v19 = v21;
  }

LABEL_13:

  return v17;
}

- (void)cancelWorkOnCurrentItem
{
  os_unfair_lock_lock(&self->_lock);
  currentQuery = self->_currentQuery;
  if (self->_currentWorkItem)
  {
    self->_cancelled = 1;
  }

  v4 = currentQuery;
  os_unfair_lock_unlock(&self->_lock);
  [(CSSearchQuery *)v4 cancel];
}

- (void)performWorkOnItem:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __64__PLSyndicationSyncServiceWrapper_performWorkOnItem_completion___block_invoke;
  v19 = &unk_1E7578848;
  v20 = self;
  v8 = v6;
  v21 = v8;
  PLRunWithUnfairLock();
  if ([v8 shouldFindSyncDate])
  {
    [(PLSyndicationSyncServiceWrapper *)self _findSyndicationStartingDate];
    v7[2](v7, 0);
  }

  else
  {
    syncEngine = self->_syncEngine;
    v10 = [v8 startDate];
    v11 = [v8 endDate];
    v12 = [v8 queryType];
    photoLibrary = self->_photoLibrary;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __64__PLSyndicationSyncServiceWrapper_performWorkOnItem_completion___block_invoke_2;
    v14[3] = &unk_1E7576FF8;
    v14[4] = self;
    v15 = v7;
    [(PLSyndicationSyncEngine *)syncEngine syncSyndicationItemsWithStartDate:v10 endDate:v11 queryType:v12 library:photoLibrary completion:v14];
  }
}

void __64__PLSyndicationSyncServiceWrapper_performWorkOnItem_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  PLRunWithUnfairLock();
  (*(*(a1 + 40) + 16))();
}

void __64__PLSyndicationSyncServiceWrapper_performWorkOnItem_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  *(v2 + 56) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 64);
  *(v4 + 64) = 0;

  *(*(a1 + 32) + 52) = 0;
}

- (id)workItemsNeedingProcessing
{
  v39[1] = *MEMORY[0x1E69E9840];
  v3 = self->_photoLibrary;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [(PLPhotoLibrary *)v3 globalValues];
  v6 = [v5 syndicationStartDate];

  if (!v6)
  {
    v19 = PLSyndicationGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v38 = 0;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEFAULT, "[sync.worker] syndication start date missing, will attempt to find it", v38, 2u);
    }

    v20 = +[PLSyndicationSyncWorkItem workItemForFindingSyncDate];
    v39[0] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
    [v4 addObjectsFromArray:v21];

    goto LABEL_33;
  }

  if ([(PLSyndicationSyncServiceWrapper *)self _needsSyndicationFullIndexSync])
  {
    v7 = PLSyndicationGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v38 = 0;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "[sync.worker] requires full index reset sync", v38, 2u);
    }

    v8 = [(PLPhotoLibrary *)v3 globalValues];
    v9 = [v8 inProgressFullIndexSyndicationSyncDate];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v6;
    }

    v12 = v11;

    v13 = [(PLSyndicationSyncServiceWrapper *)self _workItemsBatchedFromDate:v12 type:4];

    [v4 addObjectsFromArray:v13];
  }

  if ([(PLSyndicationSyncServiceWrapper *)self _hasPendingDeleteJobs])
  {
    v14 = PLSyndicationGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *v38 = 0;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEBUG, "[sync.worker] has delete jobs", v38, 2u);
    }

    v15 = [(PLPhotoLibrary *)v3 globalValues];
    v16 = [v15 lastDeleteSyndicationSyncDate];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-2419200.0];
    }

    v22 = v18;

    v23 = [(PLSyndicationSyncServiceWrapper *)self _workItemsBatchedFromDate:v22 type:3];
    [v4 addObjectsFromArray:v23];
  }

  if ([(PLSyndicationSyncServiceWrapper *)self _hasPendingAttachmentJobs])
  {
    v24 = PLSyndicationGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *v38 = 0;
      _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_DEBUG, "[sync.worker] has attachment jobs", v38, 2u);
    }

    v25 = [(PLPhotoLibrary *)v3 globalValues];
    v26 = [v25 lastAttachmentSyndicationSyncDate];
    v27 = v26;
    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = v6;
    }

    v29 = v28;

    v30 = [(PLSyndicationSyncServiceWrapper *)self _workItemsBatchedFromDate:v29 type:1];

    [v4 addObjectsFromArray:v30];
  }

  if ([(PLSyndicationSyncServiceWrapper *)self _hasPendingChatJobs])
  {
    v31 = PLSyndicationGetLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      *v38 = 0;
      _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_DEBUG, "[sync.worker] has chat jobs", v38, 2u);
    }

    v32 = [(PLPhotoLibrary *)v3 globalValues];
    v33 = [v32 lastChatSyndicationSyncDate];
    v34 = v33;
    if (v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = v6;
    }

    v36 = v35;

    v20 = [(PLSyndicationSyncServiceWrapper *)self _workItemsBatchedFromDate:v36 type:2];

    [v4 addObjectsFromArray:v20];
LABEL_33:
  }

  return v4;
}

- (PLSyndicationSyncServiceWrapper)initWithPhotoLibrary:(id)a3 ingestClient:(unsigned __int8)a4
{
  v4 = a4;
  v8 = a3;
  v31.receiver = self;
  v31.super_class = PLSyndicationSyncServiceWrapper;
  v9 = [(PLSyndicationSyncServiceWrapper *)&v31 init];
  v10 = v9;
  if (v9)
  {
    if (v4)
    {
      v9->_ingestClientIdentifier = v4;
      v11 = PLSyndicationIngestClientStringFromIdentifier(v4);
    }

    else
    {
      v25 = [MEMORY[0x1E696AAA8] currentHandler];
      [v25 handleFailureInMethod:a2 object:v10 file:@"PLSyndicationSyncServiceWrapper.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"clientIdentifier != PLSyndicationIngestClientIdentifierNone"}];

      v10->_ingestClientIdentifier = 0;
      v11 = @"None";
    }

    name = v10->_name;
    v10->_name = &v11->isa;

    objc_storeStrong(&v10->_photoLibrary, a3);
    v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v27 = __69__PLSyndicationSyncServiceWrapper_initWithPhotoLibrary_ingestClient___block_invoke;
    v28 = &unk_1E7569EF8;
    v14 = v10;
    v29 = v14;
    v15 = v13;
    v30 = v15;
    for (i = 1; i != 5; ++i)
    {
      v27(v26, i);
    }

    v17 = [v15 copy];
    supportedQueryTypes = v14->_supportedQueryTypes;
    v14->_supportedQueryTypes = v17;

    v14->_lock._os_unfair_lock_opaque = 0;
    v19 = [(PLPhotoLibrary *)v10->_photoLibrary libraryBundle];
    v20 = [v19 isSystemPhotoLibrary];

    if (v20)
    {
      v21 = [MEMORY[0x1E69BF328] maskForSyndicationSyncWorkerInSystemPhotoLibrary];
    }

    else
    {
      v21 = [MEMORY[0x1E69BF328] maskForSyndicationSyncWorkerInSyndicationLibrary];
    }

    v22 = [[PLSyndicationSyncEngine alloc] initWithQueryTypes:v14->_supportedQueryTypes savedAssetTypeMask:v21 delegate:v14];
    syncEngine = v14->_syncEngine;
    v14->_syncEngine = v22;
  }

  return v10;
}

void __69__PLSyndicationSyncServiceWrapper_initWithPhotoLibrary_ingestClient___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(*(a1 + 32) + 24) libraryBundle];
  Type = PLLibraryBundleSupportsSyndicationQueryType(v4, a2);

  if (Type)
  {
    v6 = *(a1 + 40);
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
    [v6 addObject:v7];
  }
}

@end
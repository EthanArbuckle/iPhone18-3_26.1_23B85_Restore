@interface PLSearchIndexingIncrementalUpdateEngine
- (PLSearchIndexingIncrementalUpdateEngine)initWithDelegate:(id)a3;
- (PLSearchIndexingIncrementalUpdateEngineDelegate)delegate;
- (id)_inPerformBlock_batchFromType:(signed __int16)a3 flags:(int64_t)a4 library:(id)a5;
- (id)processJobObjectIDs:(id)a3 entity:(unint64_t)a4 library:(id)a5 completion:(id)a6;
- (void)_donateBatch:(id)a3 library:(id)a4 progress:(id)a5 completion:(id)a6;
- (void)_handleDonationCompleteWithResult:(id)a3 batch:(id)a4 library:(id)a5;
- (void)_lock_runSingleLoopOfProcessingIncrementalUpdatesWithLibrary:(id)a3;
- (void)_processIncrementalUpdatesWithLibrary:(id)a3 completion:(id)a4;
- (void)fetchRemainingWorkWithLibrary:(id)a3 completion:(id)a4;
- (void)processBatchOfJobsWithType:(signed __int16)a3 flags:(int64_t)a4 library:(id)a5 progress:(id)a6 completion:(id)a7;
- (void)resumeWithLibrary:(id)a3 completion:(id)a4;
@end

@implementation PLSearchIndexingIncrementalUpdateEngine

- (PLSearchIndexingIncrementalUpdateEngineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_donateBatch:(id)a3 library:(id)a4 progress:(id)a5 completion:(id)a6
{
  v36[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a5;
  [v10 inPerformBlock_prepareDonationsWithLibrary:v11];
  if ([v10 hasDonations])
  {
    v14 = [v10 ineligibleIdentifiers];
    if ([v10 targetEntity] == 7)
    {

      v35 = &unk_1F0FBC730;
      v15 = [v10 ineligibleIdentifiers];
      v36[0] = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];

      v27 = 0;
    }

    else
    {
      v16 = 0;
      v27 = v14;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v23 = [v10 eligibleManagedObjects];
    v24 = [v10 partialUpdateMasks];
    v26 = [v10 targetEntity];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __84__PLSearchIndexingIncrementalUpdateEngine__donateBatch_library_progress_completion___block_invoke;
    v31[3] = &unk_1E756BE58;
    v31[4] = self;
    v32 = v10;
    v33 = v11;
    v34 = v12;
    v25 = v11;
    v21 = v10;
    v17 = v27;
    [WeakRetained inLibraryPerform_donateForIncrementalUpdateEngine:self managedObjects:v23 partialUpdateMasks:v24 entity:v26 deleteIdentifiers:v27 identifiersRequiringAdditionalWorkByEntity:v16 library:v25 progress:v13 completion:v31];
  }

  else
  {
    [v13 setCompletedUnitCount:{objc_msgSend(v13, "totalUnitCount")}];

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __84__PLSearchIndexingIncrementalUpdateEngine__donateBatch_library_progress_completion___block_invoke_56;
    v28[3] = &unk_1E7578848;
    v29 = v10;
    v30 = v11;
    v16 = v11;
    v17 = v10;
    [v16 performTransactionAndWait:v28];
    v18 = MEMORY[0x1E69BF2D0];
    v19 = [MEMORY[0x1E695DFB0] null];
    v20 = [v18 successWithResult:v19];

    (*(v12 + 2))(v12, v20);
    v21 = v29;
  }
}

void __84__PLSearchIndexingIncrementalUpdateEngine__donateBatch_library_progress_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 isFailure])
  {
    v4 = PLSearchBackendIndexingEngineGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [v3 error];
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "Donation failed with error: %@", &v7, 0xCu);
    }
  }

  [*(a1 + 32) _handleDonationCompleteWithResult:v3 batch:*(a1 + 40) library:*(a1 + 48)];
  v6 = *(a1 + 56);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

- (id)_inPerformBlock_batchFromType:(signed __int16)a3 flags:(int64_t)a4 library:(id)a5
{
  v6 = a3;
  v7 = a5;
  v8 = PLBatchSizeForJobFlags(a4);
  v9 = [v7 managedObjectContext];

  v10 = [PLBackgroundJobWorkItem searchIndexWorkItemsForIncrementalUpdatesInManagedObjectContext:v9 jobType:v6 jobFlags:a4 fetchLimit:v8];

  if ([v10 isSuccess])
  {
    v11 = [PLSearchIndexingIncrementalUpdateBatch alloc];
    v12 = [v10 result];
    v13 = [(PLSearchIndexingIncrementalUpdateBatch *)v11 initWithWorkItems:v12 flags:a4];

    [MEMORY[0x1E69BF2D0] successWithResult:v13];
  }

  else
  {
    v14 = MEMORY[0x1E69BF2D0];
    v13 = [v10 error];
    [v14 failureWithError:v13];
  }
  v15 = ;

  return v15;
}

- (void)_handleDonationCompleteWithResult:(id)a3 batch:(id)a4 library:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (![v7 isFailure])
  {
    goto LABEL_7;
  }

  v10 = [v7 error];
  v11 = [v10 domain];
  if (([v11 isEqualToString:*MEMORY[0x1E696A250]] & 1) == 0)
  {

    goto LABEL_7;
  }

  v12 = [v7 error];
  v13 = [v12 code];

  if (v13 != 3072)
  {
LABEL_7:
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __91__PLSearchIndexingIncrementalUpdateEngine__handleDonationCompleteWithResult_batch_library___block_invoke;
    v15[3] = &unk_1E75761B8;
    v16 = v7;
    v17 = v8;
    v18 = v9;
    [v18 performTransactionAndWait:v15];

    v14 = v16;
    goto LABEL_8;
  }

  v14 = PLSearchBackendIndexWorkerGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_INFO, "Search indexing was cancelled", buf, 2u);
  }

LABEL_8:
}

uint64_t __91__PLSearchIndexingIncrementalUpdateEngine__handleDonationCompleteWithResult_batch_library___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isFailure])
  {
    v2 = PLSearchBackendIndexWorkerGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = [*(a1 + 32) error];
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_ERROR, "Donation failed with error: %@", &v5, 0xCu);
    }
  }

  return [*(a1 + 40) inPerformTransaction_cleanUpWithSuccess:objc_msgSend(*(a1 + 32) library:{"isSuccess"), *(a1 + 48)}];
}

- (void)_lock_runSingleLoopOfProcessingIncrementalUpdatesWithLibrary:(id)a3
{
  v4 = a3;
  v5 = [[PLTimedDispatchGroup alloc] initWithQueue:self->_queue name:@"Incrmeental donation"];
  v6 = [(PLTimedDispatchGroup *)v5 enterWithName:@"Rebuild donation"];
  objc_storeStrong(&self->_lock_donationInFlightDispatchGroupSession, v6);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __104__PLSearchIndexingIncrementalUpdateEngine__lock_runSingleLoopOfProcessingIncrementalUpdatesWithLibrary___block_invoke;
  v14[3] = &unk_1E756E038;
  v7 = v6;
  v15 = v7;
  [(PLSearchIndexingIncrementalUpdateEngine *)self _processIncrementalUpdatesWithLibrary:v4 completion:v14];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __104__PLSearchIndexingIncrementalUpdateEngine__lock_runSingleLoopOfProcessingIncrementalUpdatesWithLibrary___block_invoke_2;
  v10[3] = &unk_1E75761B8;
  v11 = v7;
  v12 = self;
  v13 = v4;
  v8 = v4;
  v9 = v7;
  [(PLTimedDispatchGroup *)v5 notify:v10];
}

void __104__PLSearchIndexingIncrementalUpdateEngine__lock_runSingleLoopOfProcessingIncrementalUpdatesWithLibrary___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__39652;
  v16 = __Block_byref_object_dispose__39653;
  v17 = 0;
  if (([*(a1 + 32) wasCancelled] & 1) == 0)
  {
    v2 = [*(a1 + 32) result];
    if ([v2 isFailure])
    {
      objc_storeStrong(v13 + 5, v2);
      v3 = PLSearchBackendIndexingEngineGetLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v4 = [v2 error];
        *buf = 138412290;
        v19 = v4;
        _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_ERROR, "Search indexing incremental updates failed with error: %@", buf, 0xCu);
      }
    }

    else
    {
      v5 = [v2 result];
      v6 = [v5 unsignedIntegerValue] == 0;

      if (!v6)
      {
LABEL_10:

        goto LABEL_11;
      }

      v7 = PLSearchBackendIndexingEngineGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Search indexing incremental updates completed", buf, 2u);
      }

      v8 = MEMORY[0x1E69BF2D0];
      v9 = [MEMORY[0x1E695DFB0] null];
      v10 = [v8 successWithResult:v9];

      v3 = v13[5];
      v13[5] = v10;
    }

    goto LABEL_10;
  }

LABEL_11:
  v11 = *(a1 + 48);
  PLSafeRunWithUnfairLock();

  _Block_object_dispose(&v12, 8);
}

void __104__PLSearchIndexingIncrementalUpdateEngine__lock_runSingleLoopOfProcessingIncrementalUpdatesWithLibrary___block_invoke_52(void *a1)
{
  v2 = a1[4];
  if (v2[21] == 1 && !*(*(a1[6] + 8) + 40))
  {
    v3 = PLSearchBackendIndexingEngineGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "Paused unbounded incremental update indexing", v9, 2u);
    }

    v4 = MEMORY[0x1E69BF2D0];
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
    v6 = [v4 failureWithError:v5];
    v7 = *(a1[6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v2 = a1[4];
  }

  if (*(*(a1[6] + 8) + 40))
  {
    v2[20] = 0;
    objc_storeStrong((a1[4] + 32), *(*(a1[6] + 8) + 40));
    dispatch_group_leave(*(a1[4] + 24));
  }

  else
  {
    [v2 _lock_runSingleLoopOfProcessingIncrementalUpdatesWithLibrary:a1[5]];
  }
}

- (void)_processIncrementalUpdatesWithLibrary:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[PLConcurrencyLimiter sharedLimiter];
  queue = self->_queue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __92__PLSearchIndexingIncrementalUpdateEngine__processIncrementalUpdatesWithLibrary_completion___block_invoke;
  v12[3] = &unk_1E7576F38;
  v14 = self;
  v15 = v7;
  v13 = v6;
  v10 = v7;
  v11 = v6;
  [v8 dispatchAsync:queue block:v12];
}

void __92__PLSearchIndexingIncrementalUpdateEngine__processIncrementalUpdatesWithLibrary_completion___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__39652;
  v36 = __Block_byref_object_dispose__39653;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 1;
  v2 = *(a1 + 32);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __92__PLSearchIndexingIncrementalUpdateEngine__processIncrementalUpdatesWithLibrary_completion___block_invoke_43;
  v24[3] = &unk_1E7578870;
  v26 = &v32;
  v25 = v2;
  v27 = &v28;
  [v25 performBlockAndWait:v24];
  if (([v33[5] isFailure] & 1) != 0 || (objc_msgSend(v33[5], "result"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "unsignedIntegerValue") == 0, v3, v4))
  {
    if ([v33[5] isFailure])
    {
      v13 = PLSearchBackendIndexingEngineGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = [v33[5] error];
        *buf = 138412290;
        v39 = v14;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Failed to fetch incremental update work items with error: %@", buf, 0xCu);
      }
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v5 = [v33[5] result];
    v6 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:1];
    v7 = *(a1 + 40);
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __92__PLSearchIndexingIncrementalUpdateEngine__processIncrementalUpdatesWithLibrary_completion___block_invoke_44;
    v21 = &unk_1E7578848;
    v22 = v7;
    v8 = v6;
    v23 = v8;
    PLSafeRunWithUnfairLock();
    v9 = *(a1 + 40);
    v10 = *(v29 + 12);
    v11 = [v5 integerValue];
    v12 = *(a1 + 32);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __92__PLSearchIndexingIncrementalUpdateEngine__processIncrementalUpdatesWithLibrary_completion___block_invoke_2;
    v15[3] = &unk_1E756BE30;
    v16 = *(a1 + 48);
    v17 = &v32;
    [v9 processBatchOfJobsWithType:v10 flags:v11 library:v12 progress:v8 completion:v15];
  }

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);
}

void __92__PLSearchIndexingIncrementalUpdateEngine__processIncrementalUpdatesWithLibrary_completion___block_invoke_43(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [PLBackgroundJobWorkItem nextSearchIndexWorkItemJobFlagsInManagedObjectContext:v2 jobType:*(*(*(a1 + 48) + 8) + 24)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(*(*(a1 + 40) + 8) + 40) result];
  v7 = [v6 unsignedIntegerValue];

  if (!v7)
  {
    *(*(*(a1 + 48) + 8) + 24) = 2;
    v11 = [*(a1 + 32) managedObjectContext];
    v8 = [PLBackgroundJobWorkItem nextSearchIndexWorkItemJobFlagsInManagedObjectContext:v11 jobType:*(*(*(a1 + 48) + 8) + 24)];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

void __92__PLSearchIndexingIncrementalUpdateEngine__processIncrementalUpdatesWithLibrary_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 isSuccess];
  v5 = PLSearchBackendIndexingEngineGetLog();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "Finished processing batch of incremental updates", &v8, 2u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v7 = [v3 error];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Failed to process batch of incremental updates with error: %@", &v8, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __48__PLSearchIndexingIncrementalUpdateEngine_pause__block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 20) == 1)
  {
    v10 = v1;
    v11 = v2;
    v4 = PLSearchBackendIndexingEngineGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Pausing unbounded incremental update indexing", v9, 2u);
    }

    *(*(a1 + 32) + 21) = 1;
    [*(*(a1 + 32) + 40) cancel];
    v5 = *(a1 + 32);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;

    [*(*(a1 + 32) + 48) cancel];
    v7 = *(a1 + 32);
    v8 = *(v7 + 48);
    *(v7 + 48) = 0;
  }
}

- (void)resumeWithLibrary:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v5 = v8;
  v6 = v7;
  PLSafeRunWithUnfairLock();
}

void __72__PLSearchIndexingIncrementalUpdateEngine_resumeWithLibrary_completion___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 21) = 0;
  if ((*(*(a1 + 32) + 20) & 1) == 0)
  {
    v2 = PLSearchBackendIndexingEngineGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "Resuming unbounded incremental update indexing", buf, 2u);
    }

    *(*(a1 + 32) + 20) = 1;
    dispatch_group_enter(*(*(a1 + 32) + 24));
    [*(a1 + 32) _lock_runSingleLoopOfProcessingIncrementalUpdatesWithLibrary:*(a1 + 40)];
  }

  v3 = +[PLConcurrencyLimiter sharedLimiter];
  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  v6 = *(v4 + 8);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__PLSearchIndexingIncrementalUpdateEngine_resumeWithLibrary_completion___block_invoke_41;
  v7[3] = &unk_1E7577C08;
  v7[4] = v4;
  v8 = *(a1 + 48);
  [v3 groupNotify:v5 queue:v6 block:v7];
}

void __72__PLSearchIndexingIncrementalUpdateEngine_resumeWithLibrary_completion___block_invoke_41(uint64_t a1)
{
  v2 = PLSafeResultWithUnfairLock();
  (*(*(a1 + 40) + 16))();
}

- (void)processBatchOfJobsWithType:(signed __int16)a3 flags:(int64_t)a4 library:(id)a5 progress:(id)a6 completion:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __104__PLSearchIndexingIncrementalUpdateEngine_processBatchOfJobsWithType_flags_library_progress_completion___block_invoke;
  v18[3] = &unk_1E756DFE8;
  v23 = a3;
  v21 = v14;
  v22 = a4;
  v18[4] = self;
  v19 = v12;
  v20 = v13;
  v15 = v14;
  v16 = v13;
  v17 = v12;
  [v17 performBlock:v18];
}

void __104__PLSearchIndexingIncrementalUpdateEngine_processBatchOfJobsWithType_flags_library_progress_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _inPerformBlock_batchFromType:*(a1 + 72) flags:*(a1 + 64) library:*(a1 + 40)];
  if ([v2 isSuccess])
  {
    v3 = [v2 result];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __104__PLSearchIndexingIncrementalUpdateEngine_processBatchOfJobsWithType_flags_library_progress_completion___block_invoke_2;
    v7[3] = &unk_1E756E010;
    v8 = v6;
    v9 = *(a1 + 56);
    [v4 _donateBatch:v3 library:v5 progress:v8 completion:v7];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void __104__PLSearchIndexingIncrementalUpdateEngine_processBatchOfJobsWithType_flags_library_progress_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setCompletedUnitCount:{objc_msgSend(v3, "completedUnitCount") + 1}];
  (*(*(a1 + 40) + 16))();
}

- (id)processJobObjectIDs:(id)a3 entity:(unint64_t)a4 library:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:{objc_msgSend(v9, "count")}];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __89__PLSearchIndexingIncrementalUpdateEngine_processJobObjectIDs_entity_library_completion___block_invoke;
  v20[3] = &unk_1E7576EE8;
  v21 = v9;
  v22 = v10;
  v23 = self;
  v13 = v12;
  v24 = v13;
  v25 = v11;
  v14 = v11;
  v15 = v10;
  v16 = v9;
  [v15 performBlock:v20];
  v17 = v25;
  v18 = v13;

  return v13;
}

void __89__PLSearchIndexingIncrementalUpdateEngine_processJobObjectIDs_entity_library_completion___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E695D5E0];
  v3 = +[PLBackgroundJobWorkItem entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", *(a1 + 32)];
  [v4 setPredicate:v5];

  v6 = [*(a1 + 40) managedObjectContext];
  v18 = 0;
  v7 = [v6 executeFetchRequest:v4 error:&v18];
  v8 = v18;

  if (v7)
  {
    v9 = [PLSearchIndexingIncrementalUpdateBatch alloc];
    v10 = [v7 firstObject];
    v11 = -[PLSearchIndexingIncrementalUpdateBatch initWithWorkItems:flags:](v9, "initWithWorkItems:flags:", v7, [v10 jobFlags]);

    v13 = *(a1 + 40);
    v12 = *(a1 + 48);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __89__PLSearchIndexingIncrementalUpdateEngine_processJobObjectIDs_entity_library_completion___block_invoke_2;
    v16[3] = &unk_1E7571990;
    v14 = *(a1 + 56);
    v17 = *(a1 + 64);
    [v12 _donateBatch:v11 library:v13 progress:v14 completion:v16];
  }

  else
  {
    v15 = *(a1 + 64);
    v11 = [MEMORY[0x1E69BF2D0] failureWithError:v8];
    (*(v15 + 16))(v15, v11);
  }
}

- (void)fetchRemainingWorkWithLibrary:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84__PLSearchIndexingIncrementalUpdateEngine_fetchRemainingWorkWithLibrary_completion___block_invoke;
  v10[3] = &unk_1E7576F38;
  v11 = v6;
  v12 = self;
  v13 = v7;
  v8 = v7;
  v9 = v6;
  [v9 performBlock:v10];
}

void __84__PLSearchIndexingIncrementalUpdateEngine_fetchRemainingWorkWithLibrary_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [PLBackgroundJobWorkItem countOfSearchIndexWorkItemsInManagedObjectContext:v2];

  v4 = +[PLConcurrencyLimiter sharedLimiter];
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = *(v6 + 8);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __84__PLSearchIndexingIncrementalUpdateEngine_fetchRemainingWorkWithLibrary_completion___block_invoke_2;
  v9[3] = &unk_1E7576F38;
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v8 = v3;
  [v4 dispatchAsync:v7 block:v9];
}

uint64_t __84__PLSearchIndexingIncrementalUpdateEngine_fetchRemainingWorkWithLibrary_completion___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isSuccess])
  {
    v2 = [*(a1 + 32) result];
    [v2 unsignedIntegerValue];
  }

  else
  {
    v3 = PLSearchBackendIndexingEngineGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [*(a1 + 32) error];
      *buf = 138412290;
      v7 = v4;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_ERROR, "Error counting search background job work items: %@", buf, 0xCu);
    }
  }

  PLBoolResultWithUnfairLock();
  return (*(*(a1 + 48) + 16))(0.0);
}

uint64_t __84__PLSearchIndexingIncrementalUpdateEngine_fetchRemainingWorkWithLibrary_completion___block_invoke_29(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 20) == 1)
  {
    v2 = *(v1 + 21);
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

- (PLSearchIndexingIncrementalUpdateEngine)initWithDelegate:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = PLSearchIndexingIncrementalUpdateEngine;
  v5 = [(PLSearchIndexingIncrementalUpdateEngine *)&v18 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v8 stringByAppendingString:@".searchIndexIncrementalUpdate"];
    v10 = [v9 UTF8String];
    v11 = qos_class_self();
    v12 = dispatch_queue_attr_make_with_qos_class(0, v11, 0);
    v13 = dispatch_queue_create(v10, v12);
    queue = v6->_queue;
    v6->_queue = v13;

    v6->_lock._os_unfair_lock_opaque = 0;
    v15 = dispatch_group_create();
    lock_group = v6->_lock_group;
    v6->_lock_group = v15;
  }

  return v6;
}

@end
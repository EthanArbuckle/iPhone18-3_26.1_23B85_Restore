@interface PLBackgroundJobSyndicationResourceSanitizationWorker
- (PLBackgroundJobSyndicationResourceSanitizationWorker)initWithLibraryBundle:(id)a3;
- (id)downloadThrottlingDateForPrefetchManager:(id)a3;
- (id)requestLocalAvailabilityChangeForPrefetchManager:(id)a3 resource:(id)a4 options:(id)a5 completion:(id)a6;
- (id)resourceIDsForPrefetchWithLibrary:(id)a3;
- (id)workItemsNeedingProcessingInLibrary:(id)a3 validCriterias:(id)a4;
- (void)performTransactionForPrefetchManager:(id)a3 synchronous:(BOOL)a4 block:(id)a5;
- (void)performWorkOnItem:(id)a3 inLibrary:(id)a4 completion:(id)a5;
@end

@implementation PLBackgroundJobSyndicationResourceSanitizationWorker

- (id)requestLocalAvailabilityChangeForPrefetchManager:(id)a3 resource:(id)a4 options:(id)a5 completion:(id)a6
{
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v11 = [v10 dataStore];
  v12 = [v11 requestLocalAvailabilityChange:1 forResource:v10 options:v9 completion:v8];

  return v12;
}

- (void)performTransactionForPrefetchManager:(id)a3 synchronous:(BOOL)a4 block:(id)a5
{
  v5 = a4;
  v7 = a5;
  v8 = v7;
  currentLibrary = self->_currentLibrary;
  if (v5)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __111__PLBackgroundJobSyndicationResourceSanitizationWorker_performTransactionForPrefetchManager_synchronous_block___block_invoke;
    v13[3] = &unk_1E7577C08;
    v10 = &v14;
    v13[4] = self;
    v14 = v7;
    [(PLPhotoLibrary *)currentLibrary performTransactionAndWait:v13];
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __111__PLBackgroundJobSyndicationResourceSanitizationWorker_performTransactionForPrefetchManager_synchronous_block___block_invoke_2;
    v11[3] = &unk_1E7577C08;
    v10 = &v12;
    v11[4] = self;
    v12 = v7;
    [(PLPhotoLibrary *)currentLibrary performTransaction:v11];
  }
}

void __111__PLBackgroundJobSyndicationResourceSanitizationWorker_performTransactionForPrefetchManager_synchronous_block___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(*(a1 + 32) + 112) managedObjectContext];
  (*(v1 + 16))(v1, v2);
}

void __111__PLBackgroundJobSyndicationResourceSanitizationWorker_performTransactionForPrefetchManager_synchronous_block___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(*(a1 + 32) + 112) managedObjectContext];
  (*(v1 + 16))(v1, v2);
}

- (id)downloadThrottlingDateForPrefetchManager:(id)a3
{
  v3 = [(PLPhotoLibrary *)self->_currentLibrary globalValues];
  v4 = [v3 syndicationPrefetchDownloadThrottlingDate];

  return v4;
}

- (void)performWorkOnItem:(id)a3 inLibrary:(id)a4 completion:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (![(PLBackgroundJobSyndicationResourceSanitizationWorker *)self batchSize])
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PLBackgroundJobSyndicationResourceSanitizationWorker.m" lineNumber:117 description:{@"Invalid parameter not satisfying: %@", @"self.batchSize > 0"}];
  }

  if ([(PLBackgroundJobWorker *)self hasEnoughDiskSpaceToContinue:v11])
  {
    objc_storeStrong(&self->_currentLibrary, a4);
    if ([(PLBackgroundJobSyndicationResourceSanitizationWorker *)self batchSize]== 1)
    {
      prefetchManager = self->_prefetchManager;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __95__PLBackgroundJobSyndicationResourceSanitizationWorker_performWorkOnItem_inLibrary_completion___block_invoke;
      v20[3] = &unk_1E7576050;
      v20[4] = self;
      v21 = v11;
      [(PLSyndicationResourcePrefetchEngine *)prefetchManager prefetchResourceWithObjectID:v9 completion:v20];
    }

    else
    {
      v13 = v9;
      v14 = PLSyndicationGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [(PLBackgroundJobWorker *)self workerName];
        *buf = 138412546;
        v23 = v15;
        v24 = 2048;
        v25 = [v13 count];
        _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "[resource.sync] %@ prefetching %lu items", buf, 0x16u);
      }

      v16 = self->_prefetchManager;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __95__PLBackgroundJobSyndicationResourceSanitizationWorker_performWorkOnItem_inLibrary_completion___block_invoke_40;
      v18[3] = &unk_1E7576050;
      v18[4] = self;
      v19 = v11;
      [(PLSyndicationResourcePrefetchEngine *)v16 prefetchResourceWithObjectIDs:v13 completion:v18];
    }
  }
}

void __95__PLBackgroundJobSyndicationResourceSanitizationWorker_performWorkOnItem_inLibrary_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 112);
  *(v3 + 112) = 0;
  v5 = a2;

  (*(*(a1 + 40) + 16))();
}

void __95__PLBackgroundJobSyndicationResourceSanitizationWorker_performWorkOnItem_inLibrary_completion___block_invoke_40(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLSyndicationGetLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(a1 + 32) workerName];
      v13 = 138543618;
      v14 = v6;
      v15 = 2112;
      v16 = v3;
      v7 = "[resource.sync] %{public}@ prefetch failed with error: %@";
      v8 = v5;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 22;
LABEL_6:
      _os_log_impl(&dword_19BF1F000, v8, v9, v7, &v13, v10);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) workerName];
    v13 = 138543362;
    v14 = v6;
    v7 = "[resource.sync] %{public}@ prefetch batch finished";
    v8 = v5;
    v9 = OS_LOG_TYPE_DEFAULT;
    v10 = 12;
    goto LABEL_6;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v3, v11, v12);
}

- (id)workItemsNeedingProcessingInLibrary:(id)a3 validCriterias:(id)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v28 = a3;
  v29 = a4;
  if (![(PLBackgroundJobSyndicationResourceSanitizationWorker *)self batchSize])
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"PLBackgroundJobSyndicationResourceSanitizationWorker.m" lineNumber:72 description:{@"Invalid parameter not satisfying: %@", @"self.batchSize > 0"}];
  }

  v7 = [objc_opt_class() syndicationWorkerCriteria];
  if (([v29 containsObject:v7] & 1) == 0)
  {
    v12 = [[PLBackgroundJobWorkerPendingWorkItems alloc] initWithZeroWorkItemsForValidCriteria];
    goto LABEL_29;
  }

  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__55763;
  v41 = __Block_byref_object_dispose__55764;
  v42 = 0;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __107__PLBackgroundJobSyndicationResourceSanitizationWorker_workItemsNeedingProcessingInLibrary_validCriterias___block_invoke;
  v34[3] = &unk_1E7578820;
  v36 = &v37;
  v34[4] = self;
  v8 = v28;
  v35 = v8;
  [v8 performBlockAndWait:v34];
  if ([v38[5] count])
  {
    if ([(PLBackgroundJobSyndicationResourceSanitizationWorker *)self batchSize]== 1)
    {
      v9 = PLBackgroundJobServiceGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [v38[5] count];
        *buf = 134217984;
        v44 = v10;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_INFO, "[resource.sync]: %tu work items need processing", buf, 0xCu);
      }

      v11 = [PLBackgroundJobWorkerPendingWorkItems alloc];
      v12 = [(PLBackgroundJobWorkerPendingWorkItems *)v11 initWithCriteria:v7 workItemsNeedingProcessing:v38[5]];
      goto LABEL_28;
    }

    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v13 addObject:v14];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v15 = v38[5];
    v16 = [v15 countByEnumeratingWithState:&v30 objects:v47 count:16];
    if (v16)
    {
      v17 = *v31;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v31 != v17)
          {
            objc_enumerationMutation(v15);
          }

          [v14 addObject:*(*(&v30 + 1) + 8 * i)];
          v19 = [v14 count];
          if (v19 == [(PLBackgroundJobSyndicationResourceSanitizationWorker *)self batchSize])
          {
            v20 = objc_alloc_init(MEMORY[0x1E695DF70]);

            [v13 addObject:v20];
            v14 = v20;
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v30 objects:v47 count:16];
      }

      while (v16);
    }

    if (![v14 count])
    {
      [v13 removeLastObject];
    }

    v21 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = [v13 count];
      v23 = [v38[5] count];
      *buf = 134218240;
      v44 = v22;
      v45 = 2048;
      v46 = v23;
      _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_INFO, "[resource.sync]: %tu / %tu work items need processing", buf, 0x16u);
    }

    v24 = [PLBackgroundJobWorkerPendingWorkItems alloc];
    v25 = [v13 copy];
    v12 = [(PLBackgroundJobWorkerPendingWorkItems *)v24 initWithCriteria:v7 workItemsNeedingProcessing:v25];
  }

  else
  {
    v13 = [(PLBackgroundJobSyndicationResourceSanitizationWorker *)self signalAgainDateWithLibrary:v8];
    if (v13)
    {
      v12 = [[PLBackgroundJobWorkerPendingWorkItems alloc] initWithSignalAgainDate:v13];
    }

    else
    {
      v12 = [[PLBackgroundJobWorkerPendingWorkItems alloc] initWithZeroWorkItems];
      v13 = 0;
    }
  }

LABEL_28:
  _Block_object_dispose(&v37, 8);

LABEL_29:

  return v12;
}

void __107__PLBackgroundJobSyndicationResourceSanitizationWorker_workItemsNeedingProcessingInLibrary_validCriterias___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) resourceIDsForPrefetchWithLibrary:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (PLBackgroundJobSyndicationResourceSanitizationWorker)initWithLibraryBundle:(id)a3
{
  v7.receiver = self;
  v7.super_class = PLBackgroundJobSyndicationResourceSanitizationWorker;
  v3 = [(PLBackgroundJobWorker *)&v7 initWithLibraryBundle:a3];
  if (v3)
  {
    v4 = [[PLSyndicationResourcePrefetchEngine alloc] initWithDelegate:v3];
    prefetchManager = v3->_prefetchManager;
    v3->_prefetchManager = v4;
  }

  return v3;
}

- (id)resourceIDsForPrefetchWithLibrary:(id)a3
{
  prefetchManager = self->_prefetchManager;
  v4 = [a3 managedObjectContext];
  v5 = [(PLSyndicationResourcePrefetchEngine *)prefetchManager highPriorityResourcesForPrefetchWithManagedObjectContext:v4];

  return v5;
}

@end
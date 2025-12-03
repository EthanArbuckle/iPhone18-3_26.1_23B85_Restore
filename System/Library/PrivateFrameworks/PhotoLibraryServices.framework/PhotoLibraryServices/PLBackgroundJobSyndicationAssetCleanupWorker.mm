@interface PLBackgroundJobSyndicationAssetCleanupWorker
- (id)workItemsNeedingProcessingInLibrary:(id)library validCriterias:(id)criterias;
- (void)performWorkOnItem:(id)item inLibrary:(id)library completion:(id)completion;
@end

@implementation PLBackgroundJobSyndicationAssetCleanupWorker

- (void)performWorkOnItem:(id)item inLibrary:(id)library completion:(id)completion
{
  itemCopy = item;
  libraryCopy = library;
  completionCopy = completion;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__52880;
  v22 = __Block_byref_object_dispose__52881;
  v23 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __87__PLBackgroundJobSyndicationAssetCleanupWorker_performWorkOnItem_inLibrary_completion___block_invoke;
  v13[3] = &unk_1E75778C0;
  v11 = libraryCopy;
  v14 = v11;
  v12 = itemCopy;
  selfCopy = self;
  v17 = &v18;
  v15 = v12;
  [v11 performTransactionAndWait:v13];
  completionCopy[2](completionCopy, v19[5]);

  _Block_object_dispose(&v18, 8);
}

void __87__PLBackgroundJobSyndicationAssetCleanupWorker_performWorkOnItem_inLibrary_completion___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 56) + 8);
  obj = *(v4 + 40);
  v5 = [v2 existingObjectWithID:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);

  if (v5)
  {
    v6 = PLSyndicationGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 48) workerName];
      v8 = [v5 uuid];
      v9 = [v5 additionalAttributes];
      v10 = [v9 syndicationIdentifier];
      *buf = 138543874;
      v17 = v7;
      v18 = 2114;
      v19 = v8;
      v20 = 2114;
      v21 = v10;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "[sync.worker] %{public}@ deleting asset not found in last full index, uuid: %{public}@, syndicationID: %{public}@", buf, 0x20u);
    }

    v11 = [*(a1 + 32) managedObjectContext];
    [v11 deleteObject:v5];
  }

  else
  {
    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      goto LABEL_6;
    }

    v11 = PLSyndicationGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [*(a1 + 48) workerName];
      v13 = *(a1 + 40);
      v14 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138543874;
      v17 = v12;
      v18 = 2114;
      v19 = v13;
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "[sync.worker] %{public}@ failed to fetch asset for object ID: %{public}@ with error: %@", buf, 0x20u);
    }
  }

LABEL_6:
}

- (id)workItemsNeedingProcessingInLibrary:(id)library validCriterias:(id)criterias
{
  v34 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  criteriasCopy = criterias;
  v8 = +[PLBackgroundJobCriteria criteriaForHubbleWorker];
  if ([criteriasCopy containsObject:v8])
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__52880;
    v26 = __Block_byref_object_dispose__52881;
    v27 = 0;
    globalValues = [libraryCopy globalValues];
    lastFullIndexSyndicationSyncStartDate = [globalValues lastFullIndexSyndicationSyncStartDate];

    if (lastFullIndexSyndicationSyncStartDate)
    {
      v11 = PLSyndicationGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        workerName = [(PLBackgroundJobWorker *)self workerName];
        [lastFullIndexSyndicationSyncStartDate timeIntervalSinceReferenceDate];
        *buf = 138543874;
        v29 = workerName;
        v30 = 2112;
        v31 = lastFullIndexSyndicationSyncStartDate;
        v32 = 2048;
        v33 = v13;
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "[sync.worker] %{public}@ searching for assets that have not been updated since last full index on date: %@ (%f)", buf, 0x20u);
      }

      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __99__PLBackgroundJobSyndicationAssetCleanupWorker_workItemsNeedingProcessingInLibrary_validCriterias___block_invoke;
      v17[3] = &unk_1E75778C0;
      v18 = lastFullIndexSyndicationSyncStartDate;
      v21 = &v22;
      v19 = libraryCopy;
      selfCopy = self;
      [v19 performBlockAndWait:v17];
    }

    v14 = [PLBackgroundJobWorkerPendingWorkItems alloc];
    initWithZeroWorkItemsForValidCriteria = [(PLBackgroundJobWorkerPendingWorkItems *)v14 initWithCriteria:v8 workItemsNeedingProcessing:v23[5]];

    _Block_object_dispose(&v22, 8);
  }

  else
  {
    initWithZeroWorkItemsForValidCriteria = [[PLBackgroundJobWorkerPendingWorkItems alloc] initWithZeroWorkItemsForValidCriteria];
  }

  return initWithZeroWorkItemsForValidCriteria;
}

void __99__PLBackgroundJobSyndicationAssetCleanupWorker_workItemsNeedingProcessingInLibrary_validCriterias___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = +[PLManagedAsset entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K.%K < %@", @"additionalAttributes", @"lastUploadAttemptDate", *(a1 + 32)];
  [v4 setPredicate:v5];

  [v4 setResultType:1];
  [v4 setFetchLimit:100];
  v6 = [*(a1 + 40) managedObjectContext];
  v13 = 0;
  v7 = [v6 executeFetchRequest:v4 error:&v13];
  v8 = v13;
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v11 = PLSyndicationGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [*(a1 + 48) workerName];
      *buf = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "[sync.worker] %{public}@ failed to fetch work items with error: %@", buf, 0x16u);
    }
  }
}

@end
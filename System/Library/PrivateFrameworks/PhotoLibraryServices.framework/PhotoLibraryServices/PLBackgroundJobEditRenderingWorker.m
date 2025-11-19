@interface PLBackgroundJobEditRenderingWorker
+ (id)workerWithLibrary:(id)a3;
- (PLBackgroundJobEditRenderingWorker)initWithLibraryBundle:(id)a3;
- (id)_predicateToFetchDeferredAdjustmentNeededAssets;
- (id)workItemsNeedingProcessingInLibrary:(id)a3 validCriterias:(id)a4;
- (void)dealloc;
- (void)performWorkOnItem:(id)a3 inLibrary:(id)a4 completion:(id)a5;
@end

@implementation PLBackgroundJobEditRenderingWorker

- (void)dealloc
{
  [(PAVideoConversionServiceClient *)self->_videoConversionServiceClient invalidateAfterPendingRequestCompletion];
  v3.receiver = self;
  v3.super_class = PLBackgroundJobEditRenderingWorker;
  [(PLBackgroundJobEditRenderingWorker *)&v3 dealloc];
}

+ (id)workerWithLibrary:(id)a3
{
  v4 = a3;
  v5 = a1;
  v6 = PLAbstractMethodException();
  objc_exception_throw(v6);
}

- (void)performWorkOnItem:(id)a3 inLibrary:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v28 = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = __Block_byref_object_copy__84349;
  v25[4] = __Block_byref_object_dispose__84350;
  v26 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __77__PLBackgroundJobEditRenderingWorker_performWorkOnItem_inLibrary_completion___block_invoke;
  v18[3] = &unk_1E7572F58;
  v11 = v8;
  v19 = v11;
  v12 = v9;
  v20 = v12;
  v21 = self;
  v23 = v27;
  v22 = v10;
  v24 = v25;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __77__PLBackgroundJobEditRenderingWorker_performWorkOnItem_inLibrary_completion___block_invoke_66;
  v14[3] = &unk_1E7575F50;
  v16 = v27;
  v13 = v22;
  v15 = v13;
  v17 = v25;
  [v12 performTransaction:v18 completionHandler:v14];

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(v27, 8);
}

void __77__PLBackgroundJobEditRenderingWorker_performWorkOnItem_inLibrary_completion___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managedObjectContext];
  v40 = 0;
  v4 = [v3 existingObjectWithID:v2 error:&v40];
  v5 = v40;
  v6 = v40;

  if (!v4)
  {
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), v5);
    v16 = PLBackgroundJobServiceGetLog();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 138412546;
    v42 = v2;
    v43 = 2112;
    v44 = v6;
    v30 = "Failed to find existingObjectWithID: %@ %@";
    v31 = v16;
    v32 = OS_LOG_TYPE_DEFAULT;
    v33 = 22;
LABEL_14:
    _os_log_impl(&dword_19BF1F000, v31, v32, v30, buf, v33);
    goto LABEL_15;
  }

  v7 = [*(a1 + 48) _predicateToFetchDeferredAdjustmentNeededAssets];
  v8 = [v7 evaluateWithObject:v4];

  if (!v8)
  {
    v16 = PLBackgroundJobServiceGetLog();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      goto LABEL_15;
    }

    *buf = 138412290;
    v42 = v2;
    v30 = "Skipped edit processing for objectID %@, predicate no longer matches";
    v31 = v16;
    v32 = OS_LOG_TYPE_INFO;
    v33 = 12;
    goto LABEL_14;
  }

  v36 = v6;
  v9 = *(a1 + 48);
  if (!*(v9 + 104))
  {
    v10 = objc_alloc_init(MEMORY[0x1E69AE870]);
    v11 = *(a1 + 48);
    v12 = *(v11 + 104);
    *(v11 + 104) = v10;

    v9 = *(a1 + 48);
  }

  if (!*(v9 + 112))
  {
    v13 = objc_alloc_init(MEMORY[0x1E69AE888]);
    v14 = *(a1 + 48);
    v15 = *(v14 + 112);
    *(v14 + 112) = v13;
  }

  v16 = v4;
  *(*(*(a1 + 64) + 8) + 24) = 1;
  v35 = v2;
  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Background deferred adjustment generation for object ID %@", v2];
  v18 = [*(a1 + 48) workerName];
  v19 = *(a1 + 48);
  v20 = *(v19 + 104);
  v21 = *(v19 + 112);
  v22 = [MEMORY[0x1E696AAE8] mainBundle];
  v23 = [v22 bundleIdentifier];
  LOBYTE(v34) = 0;
  v24 = [PLIntensiveResourceTask taskForGeneratingDeferredAdjustmentForAsset:v16 trackingIdentifier:v18 imageConversionClient:v20 videoConversionClient:v21 reason:v17 clientBundleID:v23 allowCancellationByService:v34];

  v25 = [v16 photoLibrary];
  v26 = [v25 libraryServicesManager];
  v27 = [v26 intensiveResourceTaskManager];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __77__PLBackgroundJobEditRenderingWorker_performWorkOnItem_inLibrary_completion___block_invoke_2;
  v37[3] = &unk_1E7572F30;
  v28 = *(a1 + 56);
  v37[4] = *(a1 + 48);
  v39 = v28;
  v38 = *(a1 + 40);
  v29 = [v27 submitTask:v24 completionHandler:v37];

  if (([v29 isFinished] & 1) == 0)
  {
    [*(*(a1 + 48) + 120) setProgress:v29];
  }

  v6 = v36;
  v2 = v35;
LABEL_15:
}

void *__77__PLBackgroundJobEditRenderingWorker_performWorkOnItem_inLibrary_completion___block_invoke_66(void *result)
{
  if ((*(*(result[5] + 8) + 24) & 1) == 0)
  {
    return (*(result[4] + 16))(result[4], *(*(result[6] + 8) + 40));
  }

  return result;
}

void __77__PLBackgroundJobEditRenderingWorker_performWorkOnItem_inLibrary_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 120);
  v4 = a2;
  [v3 setProgress:0];
  v5 = *(a1 + 48);
  v6 = [v4 error];

  (*(v5 + 16))(v5, v6);
}

- (id)workItemsNeedingProcessingInLibrary:(id)a3 validCriterias:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_opt_class() shouldUseExpectedDurationCriteria];
  if (v8)
  {
    +[PLBackgroundJobCriteria criteriaForDiscretionaryResourceWorkerWithExpectedDuration];
  }

  else
  {
    +[PLBackgroundJobCriteria criteriaForDiscretionaryResourceWorker];
  }
  v9 = ;
  if ([v7 containsObject:v9])
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__84349;
    v25 = __Block_byref_object_dispose__84350;
    v26 = 0;
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __89__PLBackgroundJobEditRenderingWorker_workItemsNeedingProcessingInLibrary_validCriterias___block_invoke;
    v16 = &unk_1E7577898;
    v17 = self;
    v20 = v8;
    v18 = v6;
    v19 = &v21;
    [v18 performBlockAndWait:&v13];
    v10 = [PLBackgroundJobWorkerPendingWorkItems alloc];
    v11 = [(PLBackgroundJobWorkerPendingWorkItems *)v10 initWithCriteria:v9 workItemsNeedingProcessing:v22[5], v13, v14, v15, v16, v17];

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v11 = [[PLBackgroundJobWorkerPendingWorkItems alloc] initWithZeroWorkItemsForValidCriteria];
  }

  return v11;
}

void __89__PLBackgroundJobEditRenderingWorker_workItemsNeedingProcessingInLibrary_validCriterias___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = +[PLManagedAsset entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = [*(a1 + 32) _predicateToFetchDeferredAdjustmentNeededAssets];
  [v4 setPredicate:v5];

  [v4 setFetchBatchSize:100];
  [v4 setResultType:*(a1 + 56) ^ 1];
  v6 = [*(a1 + 40) managedObjectContext];
  v11 = 0;
  v7 = [v6 executeFetchRequest:v4 error:&v11];
  v8 = v11;

  if (!v7)
  {
    v10 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v8;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Failed to fetch deferred adjustment processing needed: %@", buf, 0xCu);
    }

    goto LABEL_8;
  }

  v9 = *(a1 + 56);
  v10 = v7;
  if (v9 == 1)
  {
    v10 = [v7 valueForKey:@"objectID"];
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v10);
  if (v9)
  {
LABEL_8:
  }
}

- (id)_predicateToFetchDeferredAdjustmentNeededAssets
{
  v2 = self;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
}

- (PLBackgroundJobEditRenderingWorker)initWithLibraryBundle:(id)a3
{
  v7.receiver = self;
  v7.super_class = PLBackgroundJobEditRenderingWorker;
  v3 = [(PLBackgroundJobWorker *)&v7 initWithLibraryBundle:a3];
  if (v3)
  {
    v4 = objc_alloc_init(PLAtomicProgressIvar);
    progressContainer = v3->_progressContainer;
    v3->_progressContainer = v4;
  }

  return v3;
}

@end
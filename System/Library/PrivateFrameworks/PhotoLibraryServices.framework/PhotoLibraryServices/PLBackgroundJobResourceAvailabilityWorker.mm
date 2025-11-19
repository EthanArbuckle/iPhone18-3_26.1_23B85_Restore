@interface PLBackgroundJobResourceAvailabilityWorker
- (PLBackgroundJobResourceAvailabilityWorker)initWithLibraryBundle:(id)a3;
- (id)_nextRequestIdentifier;
- (id)deferredPhotoFinalizer;
- (id)imageConversionClient;
- (id)videoConversionClient;
- (id)workItemsNeedingProcessingInLibrary:(id)a3 validCriterias:(id)a4;
- (void)_performWorkOnItem:(id)a3 inLibrary:(id)a4 completion:(id)a5;
- (void)performWorkOnItem:(id)a3 inLibrary:(id)a4 completion:(id)a5;
- (void)workerDidFinishWithDatabaseContext:(id)a3;
@end

@implementation PLBackgroundJobResourceAvailabilityWorker

- (void)workerDidFinishWithDatabaseContext:(id)a3
{
  if (self->_countOfDeferredPhotosProcessed >= 1)
  {
    v5 = [(PLBackgroundJobWorker *)self libraryBundle];
    v4 = [v5 constraintsDirector];
    [v4 informAssetsFinishedDeferredProcessing];
  }
}

- (void)_performWorkOnItem:(id)a3 inLibrary:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 managedObjectContext];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __85__PLBackgroundJobResourceAvailabilityWorker__performWorkOnItem_inLibrary_completion___block_invoke;
  v16[3] = &unk_1E7576EE8;
  v17 = v8;
  v18 = v11;
  v20 = self;
  v21 = v10;
  v19 = v9;
  v12 = v9;
  v13 = v10;
  v14 = v11;
  v15 = v8;
  [v12 performBlockAndWait:v16];
}

void __85__PLBackgroundJobResourceAvailabilityWorker__performWorkOnItem_inLibrary_completion___block_invoke(uint64_t a1)
{
  v70 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v63 = 0;
  v4 = [v3 existingObjectWithID:v2 error:&v63];
  v5 = v63;
  v6 = [v4 asset];
  v7 = [v6 uuid];
  if (v4)
  {
    v8 = +[PLResourceRecipe recipeFromID:](PLResourceRecipe, "recipeFromID:", [v4 recipeID]);
    v9 = [v8 supportedVersionsForLocalResourceGeneration];
    v10 = [v4 isLocallyAvailable];
    v49 = v9;
    v50 = v7;
    if (v8 && (v10 & 1) == 0 && [v4 localAvailabilityTarget] > 0)
    {
      if ([v9 count] == 1)
      {
        v44 = v2;
        v47 = v5;
        v11 = [v8 supportedVersionsForLocalResourceGeneration];
        v12 = [v11 firstObject];
        v45 = [v12 integerValue];

        v43 = [PLResourceRecipeGenerationOptions alloc];
        v13 = [*(a1 + 56) _nextRequestIdentifier];
        v14 = [*(a1 + 56) imageConversionClient];
        v15 = [*(a1 + 56) videoConversionClient];
        v16 = [*(a1 + 56) deferredPhotoFinalizer];
        v17 = [MEMORY[0x1E696AAE8] mainBundle];
        v18 = [v17 bundleIdentifier];
        v46 = [(PLResourceRecipeGenerationOptions *)v43 initWithVersion:v45 taskIdentifier:v13 reason:@"Background job resource availability" imageConversionServiceClient:v14 videoConversionServiceClient:v15 conversionServiceOptions:0 deferredPhotoFinalizer:v16 clientBundleID:v18];

        v58 = 0;
        v51[0] = MEMORY[0x1E69E9820];
        v51[1] = 3221225472;
        v51[2] = __85__PLBackgroundJobResourceAvailabilityWorker__performWorkOnItem_inLibrary_completion___block_invoke_2;
        v51[3] = &unk_1E75665B8;
        v52 = *(a1 + 48);
        v19 = v4;
        v20 = *(a1 + 56);
        v53 = v19;
        v54 = v20;
        v55 = v8;
        v56 = v50;
        v57 = *(a1 + 64);
        [v55 generateAndStoreForAsset:v6 options:v46 progress:&v58 completion:v51];
        v21 = v58;
        if (([v21 isFinished] & 1) == 0)
        {
          [*(*(a1 + 56) + 104) setProgress:v21];
        }

        v5 = v47;
        v22 = v49;
        v2 = v44;
      }

      else
      {
        v32 = PLBackgroundJobServiceGetLog();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = [v6 uuid];
          *buf = 138543618;
          v67 = v8;
          v68 = 2114;
          v69 = v33;
          _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_ERROR, "Availability worker: resource %{public}@ with asset uuid %{public}@ is not supported for local generation, lowering availability... ", buf, 0x16u);
        }

        v34 = *(a1 + 48);
        v59[0] = MEMORY[0x1E69E9820];
        v59[1] = 3221225472;
        v59[2] = __85__PLBackgroundJobResourceAvailabilityWorker__performWorkOnItem_inLibrary_completion___block_invoke_54;
        v59[3] = &unk_1E75781E8;
        v60 = v4;
        [v34 performTransactionAndWait:v59];
        v35 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:47005 userInfo:0];
        (*(*(a1 + 64) + 16))();

        v21 = v60;
        v22 = v49;
      }

      goto LABEL_35;
    }

    v48 = v5;
    if ([v4 isLocallyAvailable])
    {
      v23 = PLBackgroundJobServiceGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = [v6 uuid];
        *buf = 138543618;
        v67 = v8;
        v68 = 2114;
        v69 = v24;
        _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_INFO, "Availability worker: resource %{public}@ with asset uuid %{public}@ has already been made available, skipping", buf, 0x16u);
      }

      if (v8)
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (v8)
      {
        if ([v4 localAvailabilityTarget] <= 0)
        {
          v30 = PLBackgroundJobServiceGetLog();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            v31 = [v6 uuid];
            *buf = 138543618;
            v67 = v8;
            v68 = 2114;
            v69 = v31;
            _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_INFO, "Availability worker: resource %{public}@ with asset uuid %{public}@ availability target has changed, skipping", buf, 0x16u);
          }

          goto LABEL_33;
        }

LABEL_34:
        v39 = MEMORY[0x1E696ABC0];
        v40 = *MEMORY[0x1E69BFF48];
        v64 = *MEMORY[0x1E696A278];
        v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No work needed for object"];
        v65 = v41;
        v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
        v21 = [v39 errorWithDomain:v40 code:50002 userInfo:v42];

        (*(*(a1 + 64) + 16))();
        v5 = v48;
        v22 = v49;
LABEL_35:

        v7 = v50;
        goto LABEL_36;
      }

      v36 = PLBackgroundJobServiceGetLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v37 = [v6 uuid];
        *buf = 138543618;
        v67 = 0;
        v68 = 2114;
        v69 = v37;
        _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_INFO, "Availability worker: resource %{public}@ with asset uuid %{public}@ has no resource recipe, skipping", buf, 0x16u);
      }
    }

    if ([v4 localAvailabilityTarget] >= 1)
    {
      v38 = *(a1 + 48);
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = __85__PLBackgroundJobResourceAvailabilityWorker__performWorkOnItem_inLibrary_completion___block_invoke_48;
      v61[3] = &unk_1E75781E8;
      v62 = v4;
      [v38 performTransactionAndWait:v61];
      v30 = v62;
LABEL_33:

      goto LABEL_34;
    }

    goto LABEL_34;
  }

  if (v5)
  {
    v8 = v5;
    v25 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v67 = v2;
      v68 = 2112;
      v69 = v8;
      v26 = "Failed to fetch existingObjectWithID: %@ %@";
      v27 = v25;
      v28 = OS_LOG_TYPE_ERROR;
      v29 = 22;
LABEL_23:
      _os_log_impl(&dword_19BF1F000, v27, v28, v26, buf, v29);
    }
  }

  else
  {
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:47017 userInfo:0];
    v25 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v67 = v2;
      v26 = "Resource no longer available for objectID: %@";
      v27 = v25;
      v28 = OS_LOG_TYPE_DEFAULT;
      v29 = 12;
      goto LABEL_23;
    }
  }

  (*(*(a1 + 64) + 16))();
LABEL_36:
}

void __85__PLBackgroundJobResourceAvailabilityWorker__performWorkOnItem_inLibrary_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v42 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__9129;
  v38 = __Block_byref_object_dispose__9130;
  v39 = 0;
  if (v12)
  {
    if ([PLDeferredPhotoFinalizer errorIsRecoverable:v12])
    {
      v16 = PLBackgroundJobServiceGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v41 = v12;
        _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "Availability worker: encountered recoverable deferred photo finalizer error %@, will try again later", buf, 0xCu);
      }

      v17 = v35;
      v18 = v12;
      v19 = v17[5];
      v17[5] = v18;
    }

    else
    {
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __85__PLBackgroundJobResourceAvailabilityWorker__performWorkOnItem_inLibrary_completion___block_invoke_60;
      v30[3] = &unk_1E75780D8;
      v23 = *(a1 + 32);
      *&v24 = *(a1 + 40);
      *(&v24 + 1) = *(a1 + 48);
      v28 = v24;
      v25 = *(a1 + 56);
      v26 = *(a1 + 64);
      *&v27 = v25;
      *(&v27 + 1) = v26;
      v31 = v28;
      v32 = v27;
      v33 = &v34;
      [v23 performTransactionAndWait:v30];

      v19 = v31;
    }

LABEL_12:

    goto LABEL_13;
  }

  ++*(*(a1 + 48) + 128);
  if ([v11 hasChanges])
  {
    v29 = 0;
    v20 = [v11 save:&v29];
    v21 = v29;
    v19 = v29;
    if ((v20 & 1) == 0)
    {
      v22 = PLBackgroundJobServiceGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v41 = v19;
        _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "Availability worker failed to save changes for moc with error: %@", buf, 0xCu);
      }

      objc_storeStrong(v35 + 5, v21);
    }

    goto LABEL_12;
  }

LABEL_13:
  [*(*(a1 + 48) + 104) setProgress:{0, v28}];
  (*(*(a1 + 72) + 16))();
  _Block_object_dispose(&v34, 8);
}

void __85__PLBackgroundJobResourceAvailabilityWorker__performWorkOnItem_inLibrary_completion___block_invoke_60(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) isLocallyAvailable];
  v3 = PLBackgroundJobServiceGetLog();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = [*(a1 + 32) objectID];
      if ([*(a1 + 32) isLocallyAvailable])
      {
        v6 = @"Y";
      }

      else
      {
        v6 = @"N";
      }

      v7 = [*(a1 + 40) workerName];
      *buf = 138543874;
      v19 = v5;
      v20 = 2114;
      v21 = v6;
      v22 = 2114;
      v23 = v7;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "Resource %{public}@ (locally available: %{public}@) is no longer valid for worker %{public}@", buf, 0x20u);
    }
  }

  else
  {
    if (v4)
    {
      v8 = *(a1 + 48);
      v9 = *(a1 + 56);
      *buf = 138543618;
      v19 = v8;
      v20 = 2114;
      v21 = v9;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "Availability worker: unable to make recipe: %{public}@ available for asset uuid: %{public}@, lowering availability...", buf, 0x16u);
    }

    [*(a1 + 32) setLocalAvailability:4294934528];
    v10 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E69BFF48];
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Resource was not made available", *MEMORY[0x1E696A278]];
    v17 = v3;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v13 = [v10 errorWithDomain:v11 code:47001 userInfo:v12];
    v14 = *(*(a1 + 64) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }
}

- (void)performWorkOnItem:(id)a3 inLibrary:(id)a4 completion:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = PLBackendGetLog();
  v12 = os_signpost_id_generate(v11);
  v13 = v8;
  v14 = v11;
  v15 = v14;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 138543362;
    v23 = v13;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v12, "backgroundResourceAvailabilityWorkItem", "item:%{public}@", buf, 0xCu);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __84__PLBackgroundJobResourceAvailabilityWorker_performWorkOnItem_inLibrary_completion___block_invoke;
  v18[3] = &unk_1E7566590;
  v19 = v15;
  v20 = v9;
  v21 = v12;
  v16 = v15;
  v17 = v9;
  [(PLBackgroundJobResourceAvailabilityWorker *)self _performWorkOnItem:v13 inLibrary:v10 completion:v18];
}

void __84__PLBackgroundJobResourceAvailabilityWorker_performWorkOnItem_inLibrary_completion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
  v3 = v2;
  v4 = *(a1 + 48);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "backgroundResourceAvailabilityWorkItem", "", v5, 2u);
  }
}

- (id)workItemsNeedingProcessingInLibrary:(id)a3 validCriterias:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[PLBackgroundJobCriteria criteriaForUrgentResourceWorker];
  if ([v6 containsObject:v7])
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__9129;
    v21 = __Block_byref_object_dispose__9130;
    v22 = 0;
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __96__PLBackgroundJobResourceAvailabilityWorker_workItemsNeedingProcessingInLibrary_validCriterias___block_invoke;
    v14 = &unk_1E7578910;
    v15 = v5;
    v16 = &v17;
    [v15 performBlockAndWait:&v11];
    v8 = [PLBackgroundJobWorkerPendingWorkItems alloc];
    v9 = [(PLBackgroundJobWorkerPendingWorkItems *)v8 initWithCriteria:v7 workItemsNeedingProcessing:v18[5], v11, v12, v13, v14];

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v9 = [[PLBackgroundJobWorkerPendingWorkItems alloc] initWithZeroWorkItemsForValidCriteria];
  }

  return v9;
}

void __96__PLBackgroundJobResourceAvailabilityWorker_workItemsNeedingProcessingInLibrary_validCriterias___block_invoke(uint64_t a1)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = +[PLInternalResource entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = +[PLManagedAsset predicateToFetchResourcesAwaitingLocalAvailabilityChange];
  [v4 setPredicate:v5];

  [v4 setResultType:1];
  v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"recipeID" ascending:1];
  v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"objectID" ascending:0];
  v18[0] = v6;
  v18[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  [v4 setSortDescriptors:v8];

  v9 = [*(a1 + 32) managedObjectContext];
  v15 = 0;
  v10 = [v9 executeFetchRequest:v4 error:&v15];
  v11 = v15;

  if (v10)
  {
    v12 = *(*(a1 + 40) + 8);
    v13 = v10;
    v14 = *(v12 + 40);
    *(v12 + 40) = v13;
  }

  else
  {
    v14 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v11;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Failed to fetch deferredProcessingNeeded assets: %@", buf, 0xCu);
    }
  }
}

- (PLBackgroundJobResourceAvailabilityWorker)initWithLibraryBundle:(id)a3
{
  v8.receiver = self;
  v8.super_class = PLBackgroundJobResourceAvailabilityWorker;
  v3 = [(PLBackgroundJobWorker *)&v8 initWithLibraryBundle:a3];
  v4 = v3;
  if (v3)
  {
    v3->_countOfDeferredPhotosProcessed = 0;
    v5 = objc_alloc_init(PLAtomicProgressIvar);
    progressContainer = v4->_progressContainer;
    v4->_progressContainer = v5;
  }

  return v4;
}

- (id)deferredPhotoFinalizer
{
  deferredPhotoFinalizer = self->_deferredPhotoFinalizer;
  if (!deferredPhotoFinalizer)
  {
    v4 = [[PLDeferredPhotoFinalizer alloc] initForUseCase:1];
    v5 = self->_deferredPhotoFinalizer;
    self->_deferredPhotoFinalizer = v4;

    deferredPhotoFinalizer = self->_deferredPhotoFinalizer;
  }

  return deferredPhotoFinalizer;
}

- (id)videoConversionClient
{
  videoConversionClient = self->_videoConversionClient;
  if (!videoConversionClient)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69AE888]);
    v5 = self->_videoConversionClient;
    self->_videoConversionClient = v4;

    videoConversionClient = self->_videoConversionClient;
  }

  return videoConversionClient;
}

- (id)imageConversionClient
{
  imageConversionClient = self->_imageConversionClient;
  if (!imageConversionClient)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69AE870]);
    v5 = self->_imageConversionClient;
    self->_imageConversionClient = v4;

    imageConversionClient = self->_imageConversionClient;
  }

  return imageConversionClient;
}

- (id)_nextRequestIdentifier
{
  v3 = [(PLBackgroundJobWorker *)self workerName];
  v4 = self->_nextRequestID + 1;
  self->_nextRequestID = v4;
  v5 = [v3 stringByAppendingFormat:@"%lu", v4];

  return v5;
}

@end
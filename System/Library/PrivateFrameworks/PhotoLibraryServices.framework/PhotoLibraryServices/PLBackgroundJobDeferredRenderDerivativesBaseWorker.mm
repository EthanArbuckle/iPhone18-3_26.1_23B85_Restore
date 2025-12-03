@interface PLBackgroundJobDeferredRenderDerivativesBaseWorker
+ (id)_criteriaToUse;
- (NSSet)deferredProcessingStatesHandled;
- (PLBackgroundJobDeferredRenderDerivativesBaseWorker)initWithLibraryBundle:(id)bundle;
- (id)_predicateToFetchDeferredAssets;
- (id)imageConversionClient;
- (id)taskIdentifier;
- (id)videoConversionClient;
- (id)workItemsNeedingProcessingInLibrary:(id)library validCriterias:(id)criterias;
- (void)performWorkOnItem:(id)item inLibrary:(id)library completion:(id)completion;
@end

@implementation PLBackgroundJobDeferredRenderDerivativesBaseWorker

+ (id)_criteriaToUse
{
  selfCopy = self;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
}

- (void)performWorkOnItem:(id)item inLibrary:(id)library completion:(id)completion
{
  itemCopy = item;
  libraryCopy = library;
  completionCopy = completion;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v28 = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = __Block_byref_object_copy__9793;
  v25[4] = __Block_byref_object_dispose__9794;
  v26 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __93__PLBackgroundJobDeferredRenderDerivativesBaseWorker_performWorkOnItem_inLibrary_completion___block_invoke;
  v18[3] = &unk_1E7572F58;
  v11 = itemCopy;
  v19 = v11;
  v12 = libraryCopy;
  v20 = v12;
  selfCopy = self;
  v23 = v27;
  v24 = v25;
  v22 = completionCopy;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __93__PLBackgroundJobDeferredRenderDerivativesBaseWorker_performWorkOnItem_inLibrary_completion___block_invoke_77;
  v14[3] = &unk_1E7575F50;
  v16 = v27;
  v13 = v22;
  v15 = v13;
  v17 = v25;
  [v12 performTransaction:v18 completionHandler:v14];

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(v27, 8);
}

void __93__PLBackgroundJobDeferredRenderDerivativesBaseWorker_performWorkOnItem_inLibrary_completion___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managedObjectContext];
  v24 = 0;
  v4 = [v3 existingObjectWithID:v2 error:&v24];
  v5 = v24;
  v6 = v24;

  if (v4)
  {
    v7 = v4;
    *(*(*(a1 + 64) + 8) + 24) = 1;
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = MEMORY[0x1E696AEC0];
    v10 = [*(a1 + 48) taskIdentifier];
    v11 = [v9 stringWithFormat:@"Background job deferred render derivatives task %@", v10];

    v12 = [*(a1 + 48) imageConversionClient];
    v13 = [*(a1 + 48) videoConversionClient];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __93__PLBackgroundJobDeferredRenderDerivativesBaseWorker_performWorkOnItem_inLibrary_completion___block_invoke_74;
    v18[3] = &unk_1E7566618;
    v14 = v7;
    v23 = *(a1 + 72);
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    v19 = v14;
    v20 = v15;
    v22 = v16;
    v21 = *(a1 + 40);
    v17 = [PLResourceGenerator generateAndStoreMissingExpectedLocalResourcesForAsset:v14 versions:&unk_1F0FBF3D0 imageConversionClient:v12 videoConversionClient:v13 conversionServiceOptions:v8 reason:v11 completion:v18];

    if (([v17 isFinished] & 1) == 0)
    {
      [*(*(a1 + 48) + 104) setProgress:v17];
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), v5);
    v14 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v26 = v2;
      v27 = 2112;
      v28 = v6;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Failed to fetch existingObjectWithID: %@ %@", buf, 0x16u);
    }
  }
}

void *__93__PLBackgroundJobDeferredRenderDerivativesBaseWorker_performWorkOnItem_inLibrary_completion___block_invoke_77(void *result)
{
  if ((*(*(result[5] + 8) + 24) & 1) == 0)
  {
    return (*(result[4] + 16))(result[4], *(*(result[6] + 8) + 40));
  }

  return result;
}

void __93__PLBackgroundJobDeferredRenderDerivativesBaseWorker_performWorkOnItem_inLibrary_completion___block_invoke_74(uint64_t a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) managedObjectContext];
  v8 = PLBackgroundJobServiceGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [*(a1 + 32) uuid];
    v10 = [v6 description];
    *buf = 138543618;
    v46 = v9;
    v47 = 2114;
    v48 = v10;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_INFO, "Deferred render derivatives ran on asset uuid: %{public}@, produced recipes: %{public}@", buf, 0x16u);
  }

  if ([v5 count])
  {
    v11 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v46 = v5;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Deferred render derivatives encountered errors: %{public}@", buf, 0xCu);
    }
  }

  v38 = v7;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v12 = v5;
  v13 = [v12 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v41;
    v16 = *MEMORY[0x1E69BFF48];
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v41 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v40 + 1) + 8 * i);
        v19 = [v18 domain];
        v20 = v19;
        if (v19 == v16)
        {
          v21 = [v18 code];

          if (v21 == 47002)
          {
            objc_storeStrong((*(*(a1 + 64) + 8) + 40), v18);

            goto LABEL_20;
          }
        }

        else
        {
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v22 = [*(a1 + 40) deferredProcessingStatesHandled];
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(*(a1 + 32), "deferredProcessingNeeded")}];
  v24 = [v22 containsObject:v23];

  if (v24)
  {
    [*(a1 + 32) setDeferredProcessingNeeded:0];
LABEL_20:
    v25 = v38;
  }

  else
  {
    v26 = PLBackgroundJobServiceGetLog();
    v25 = v38;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = [*(a1 + 32) uuid];
      v28 = [*(a1 + 32) deferredProcessingNeeded];
      if (v28 > 0xA)
      {
        v29 = 0;
      }

      else
      {
        v29 = off_1E7567B18[v28];
      }

      v30 = v29;
      *buf = 138543618;
      v46 = v27;
      v47 = 2112;
      v48 = v30;
      _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_INFO, "Deferred render derivatives finished on asset uuid: %{public}@, but cannot overwrite deferred processing needed '%@'", buf, 0x16u);
    }
  }

  if ([v25 hasChanges])
  {
    v31 = [*(a1 + 32) photoLibrary];
    v32 = [v31 managedObjectContext];
    v39 = 0;
    v33 = [v32 save:&v39];
    v34 = v39;
    v35 = v39;

    if ((v33 & 1) == 0)
    {
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), v34);
      v36 = PLBackgroundJobServiceGetLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = [*(a1 + 32) uuid];
        *buf = 138543618;
        v46 = v37;
        v47 = 2112;
        v48 = v35;
        _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_ERROR, "Deferred render derivatives failed to save changes on asset uuid: %{public}@:, error: %@", buf, 0x16u);
      }
    }
  }

  [*(*(a1 + 40) + 104) setProgress:0];
  (*(*(a1 + 56) + 16))();
}

- (id)workItemsNeedingProcessingInLibrary:(id)library validCriterias:(id)criterias
{
  libraryCopy = library;
  criteriasCopy = criterias;
  _criteriaToUse = [objc_opt_class() _criteriaToUse];
  if ([criteriasCopy containsObject:_criteriaToUse])
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__9793;
    v19 = __Block_byref_object_dispose__9794;
    v20 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __105__PLBackgroundJobDeferredRenderDerivativesBaseWorker_workItemsNeedingProcessingInLibrary_validCriterias___block_invoke;
    v12[3] = &unk_1E7578820;
    v12[4] = self;
    v13 = libraryCopy;
    v14 = &v15;
    [v13 performBlockAndWait:v12];
    v9 = [PLBackgroundJobWorkerPendingWorkItems alloc];
    initWithZeroWorkItemsForValidCriteria = [(PLBackgroundJobWorkerPendingWorkItems *)v9 initWithCriteria:_criteriaToUse workItemsNeedingProcessing:v16[5]];

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    initWithZeroWorkItemsForValidCriteria = [[PLBackgroundJobWorkerPendingWorkItems alloc] initWithZeroWorkItemsForValidCriteria];
  }

  return initWithZeroWorkItemsForValidCriteria;
}

void __105__PLBackgroundJobDeferredRenderDerivativesBaseWorker_workItemsNeedingProcessingInLibrary_validCriterias___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = +[PLManagedAsset entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = [*(a1 + 32) _predicateToFetchDeferredAssets];
  [v4 setPredicate:v5];

  [v4 setFetchBatchSize:100];
  [v4 setResultType:1];
  v6 = [*(a1 + 40) managedObjectContext];
  v12 = 0;
  v7 = [v6 executeFetchRequest:v4 error:&v12];
  v8 = v12;

  if (v7)
  {
    v9 = *(*(a1 + 48) + 8);
    v10 = v7;
    v11 = *(v9 + 40);
    *(v9 + 40) = v10;
  }

  else
  {
    v11 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v8;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Failed to fetch deferredProcessingNeeded assets: %@", buf, 0xCu);
    }
  }
}

- (id)taskIdentifier
{
  selfCopy = self;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
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

- (id)_predicateToFetchDeferredAssets
{
  selfCopy = self;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
}

- (NSSet)deferredProcessingStatesHandled
{
  selfCopy = self;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
}

- (PLBackgroundJobDeferredRenderDerivativesBaseWorker)initWithLibraryBundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = PLBackgroundJobDeferredRenderDerivativesBaseWorker;
  v3 = [(PLBackgroundJobWorker *)&v7 initWithLibraryBundle:bundle];
  if (v3)
  {
    v4 = objc_alloc_init(PLAtomicProgressIvar);
    progressContainer = v3->_progressContainer;
    v3->_progressContainer = v4;
  }

  return v3;
}

@end
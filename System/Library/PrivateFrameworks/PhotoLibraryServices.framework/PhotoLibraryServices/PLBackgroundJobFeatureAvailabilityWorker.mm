@interface PLBackgroundJobFeatureAvailabilityWorker
- (BOOL)_featureAvailabilityIsStale:(id)stale inLibrary:(id)library;
- (id)workItemsNeedingProcessingInLibrary:(id)library validCriterias:(id)criterias;
- (void)performWorkOnItem:(id)item inLibrary:(id)library completion:(id)completion;
- (void)stopWorkingOnItem:(id)item;
@end

@implementation PLBackgroundJobFeatureAvailabilityWorker

- (void)stopWorkingOnItem:(id)item
{
  v7 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    progress = [itemCopy progress];
    [progress cancel];
  }

  else
  {
    progress = PLBackendGetLog();
    if (os_log_type_enabled(progress, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = itemCopy;
      _os_log_impl(&dword_19BF1F000, progress, OS_LOG_TYPE_ERROR, "Unable to stop working on item %@ because it is not a known work item class", &v5, 0xCu);
    }
  }
}

- (void)performWorkOnItem:(id)item inLibrary:(id)library completion:(id)completion
{
  v30[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  libraryCopy = library;
  completionCopy = completion;
  v12 = itemCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLBackgroundJobFeatureAvailabilityWorker.m" lineNumber:153 description:{@"Invalid parameter not satisfying: %@", @"[workItem isKindOfClass:PLBackgroundJobFeatureAvailabilityWorkItem.class]"}];
  }

  progress = [v12 progress];
  isCancelled = [progress isCancelled];

  if (isCancelled)
  {
    v15 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E69BFF48];
    v29 = *MEMORY[0x1E696A278];
    v30[0] = @"Feature Availability worker cancelled";
    availabilityComputer = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v18 = [v15 errorWithDomain:v16 code:41031 userInfo:availabilityComputer];
    completionCopy[2](completionCopy, v18);
  }

  else
  {
    v19 = PLBackendGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEFAULT, "PLBackgroundJobFeatureAvailabilityWorker - starting feature availability computation", buf, 2u);
    }

    libraryServicesManager = [libraryCopy libraryServicesManager];
    availabilityComputer = [libraryServicesManager availabilityComputer];

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __83__PLBackgroundJobFeatureAvailabilityWorker_performWorkOnItem_inLibrary_completion___block_invoke;
    v25[3] = &unk_1E756E010;
    v26 = libraryCopy;
    v27 = completionCopy;
    v21 = [availabilityComputer computeAvailabilityForPhotoLibrary:v26 shouldPersist:1 completionHandler:v25];
    progress2 = [v12 progress];
    progress3 = [v12 progress];
    [progress2 addChild:v21 withPendingUnitCount:{objc_msgSend(progress3, "totalUnitCount")}];

    v18 = v26;
  }
}

void __83__PLBackgroundJobFeatureAvailabilityWorker_performWorkOnItem_inLibrary_completion___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 isSuccess];
  v5 = PLBackendGetLog();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "PLBackgroundJobFeatureAvailabilityWorker - finished feature availability computation", buf, 2u);
    }

    v7 = [*(a1 + 32) globalValues];
    [v7 setFeatureAvailabilityJobDidFail:0];

    v8 = [MEMORY[0x1E695DF00] date];
    v9 = [*(a1 + 32) globalValues];
    [v9 setTimeOfLastFeatureAvailabilityJob:v8];

    v10 = [*(a1 + 32) libraryServicesManager];
    v11 = [v10 searchIndexingEngine];
    v12 = [v3 result];
    v13 = [v12 processingSnapshot];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __83__PLBackgroundJobFeatureAvailabilityWorker_performWorkOnItem_inLibrary_completion___block_invoke_45;
    v21[3] = &unk_1E7571990;
    v14 = *(a1 + 32);
    v22 = *(a1 + 40);
    [v11 reportFeatureProcessingSnapshot:v13 library:v14 completion:v21];

    v15 = v22;
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v16 = [v3 error];
      *buf = 138412290;
      v24 = v16;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "PLBackgroundJobFeatureAvailabilityWorker - failed to compute availability, error: %@", buf, 0xCu);
    }

    v17 = [*(a1 + 32) globalValues];
    [v17 setFeatureAvailabilityJobDidFail:MEMORY[0x1E695E118]];

    v18 = [MEMORY[0x1E695DF00] date];
    v19 = [*(a1 + 32) globalValues];
    [v19 setTimeOfLastFeatureAvailabilityJob:v18];

    v20 = *(a1 + 40);
    v15 = [v3 error];
    (*(v20 + 16))(v20, v15);
  }
}

void __83__PLBackgroundJobFeatureAvailabilityWorker_performWorkOnItem_inLibrary_completion___block_invoke_45(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 isFailure])
  {
    v4 = PLBackendGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [v3 error];
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "PLBackgroundJobFeatureAvailabilityWorker - failed to report progress to spotlight, error: %@", &v8, 0xCu);
    }
  }

  v6 = *(a1 + 32);
  v7 = [v3 error];
  (*(v6 + 16))(v6, v7);
}

- (BOOL)_featureAvailabilityIsStale:(id)stale inLibrary:(id)library
{
  staleCopy = stale;
  libraryCopy = library;
  processingSnapshot = [staleCopy processingSnapshot];
  hasConsistentMediaAnalysisImageVersion = [processingSnapshot hasConsistentMediaAnalysisImageVersion];

  if (hasConsistentMediaAnalysisImageVersion)
  {
    processingSnapshot2 = [staleCopy processingSnapshot];
    dateComputed = [processingSnapshot2 dateComputed];

    if (!dateComputed)
    {
      globalValues = PLBackendGetLog();
      if (os_log_type_enabled(globalValues, OS_LOG_TYPE_ERROR))
      {
        *v27 = 0;
        _os_log_impl(&dword_19BF1F000, globalValues, OS_LOG_TYPE_ERROR, "PLBackgroundJobFeatureAvailabilityWorker - Processing snapshot is missing dateComputed", v27, 2u);
      }

      v21 = 1;
      goto LABEL_27;
    }

    globalValues = [libraryCopy globalValues];
    searchIndexRebuildStartDate = [globalValues searchIndexRebuildStartDate];
    if (searchIndexRebuildStartDate)
    {
      searchIndexRebuildStartDate2 = [globalValues searchIndexRebuildStartDate];
      v14 = [dateComputed compare:searchIndexRebuildStartDate2];

      if (v14 == -1)
      {
        searchIndexRebuildEndDate = PLBackendGetLog();
        if (os_log_type_enabled(searchIndexRebuildEndDate, OS_LOG_TYPE_DEFAULT))
        {
          *v26 = 0;
          _os_log_impl(&dword_19BF1F000, searchIndexRebuildEndDate, OS_LOG_TYPE_DEFAULT, "PLBackgroundJobFeatureAvailabilityWorker - searchIndexRebuildStartDate, reporting stale FA", v26, 2u);
        }

        v21 = 1;
        goto LABEL_26;
      }
    }

    searchIndexRebuildEndDate = [globalValues searchIndexRebuildEndDate];
    if (searchIndexRebuildEndDate && ([globalValues searchIndexRebuildEndDate], v16 = objc_claimAutoreleasedReturnValue(), v17 = [dateComputed compare:v16], v16, v17 == -1))
    {
      dateOfLastExternalAvailabilitySignal = PLBackendGetLog();
      if (os_log_type_enabled(dateOfLastExternalAvailabilitySignal, OS_LOG_TYPE_DEFAULT))
      {
        *v25 = 0;
        _os_log_impl(&dword_19BF1F000, dateOfLastExternalAvailabilitySignal, OS_LOG_TYPE_DEFAULT, "PLBackgroundJobFeatureAvailabilityWorker - searchIndexRebuildEndDate, reporting stale FA", v25, 2u);
      }
    }

    else
    {
      dateOfLastExternalAvailabilitySignal = [globalValues dateOfLastExternalAvailabilitySignal];
      if (!dateOfLastExternalAvailabilitySignal || ([globalValues dateOfLastExternalAvailabilitySignal], v19 = objc_claimAutoreleasedReturnValue(), v20 = [dateComputed compare:v19], v19, v20 != -1))
      {
        v21 = 0;
LABEL_25:

LABEL_26:
LABEL_27:

        goto LABEL_28;
      }

      v22 = PLBackendGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 0;
        _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEFAULT, "PLBackgroundJobFeatureAvailabilityWorker - dateOfLastExternalAvailabilitySignal, reporting stale FA", v24, 2u);
      }
    }

    v21 = 1;
    goto LABEL_25;
  }

  dateComputed = PLBackendGetLog();
  if (os_log_type_enabled(dateComputed, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, dateComputed, OS_LOG_TYPE_DEFAULT, "PLBackgroundJobFeatureAvailabilityWorker - mediaAnalysisImageVersion isn't current, reporting stale FA", buf, 2u);
  }

  v21 = 1;
LABEL_28:

  return v21;
}

- (id)workItemsNeedingProcessingInLibrary:(id)library validCriterias:(id)criterias
{
  v41 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  criteriasCopy = criterias;
  v8 = +[PLBackgroundJobCriteria criteriaForFeatureAvailabilityWorker];
  v9 = [criteriasCopy containsObject:v8];

  if ((v9 & 1) == 0)
  {
    initWithZeroWorkItemsForValidCriteria = [[PLBackgroundJobWorkerPendingWorkItems alloc] initWithZeroWorkItemsForValidCriteria];
    goto LABEL_24;
  }

  globalValues = [libraryCopy globalValues];
  timeOfLastFeatureAvailabilityJob = [globalValues timeOfLastFeatureAvailabilityJob];
  featureAvailabilityJobDidFail = [globalValues featureAvailabilityJobDidFail];
  if (featureAvailabilityJobDidFail)
  {
    v13 = featureAvailabilityJobDidFail;
    featureAvailabilityJobDidFail2 = [globalValues featureAvailabilityJobDidFail];
    bOOLValue = [featureAvailabilityJobDidFail2 BOOLValue];

    v16 = timeOfLastFeatureAvailabilityJob != 0;
    if (bOOLValue && timeOfLastFeatureAvailabilityJob)
    {
      featureAvailability = [MEMORY[0x1E695DF00] now];
      [featureAvailability timeIntervalSinceDate:timeOfLastFeatureAvailabilityJob];
      v19 = v18;
      [objc_opt_class() minimumSecondsBetweenJobs];
      v21 = v20;
      v22 = PLBackendGetLog();
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      if (v19 < v21)
      {
        if (v23)
        {
          *buf = 134217984;
          v40 = v19;
          _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEFAULT, "PLBackgroundJobFeatureAvailabilityWorker - Previous job failed (%f seconds ago), throttling to avoid failure loop", buf, 0xCu);
        }

        initWithZeroWorkItemsForValidCriteria = [[PLBackgroundJobWorkerPendingWorkItems alloc] initWithZeroWorkItems];
        goto LABEL_23;
      }

      if (v23)
      {
        *buf = 134217984;
        v40 = v19;
        _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEFAULT, "PLBackgroundJobFeatureAvailabilityWorker - Previous job failed (%f seconds ago), trying again", buf, 0xCu);
      }

      v26 = objc_alloc_init(PLBackgroundJobFeatureAvailabilityWorkItem);
      v31 = [PLBackgroundJobWorkerPendingWorkItems alloc];
      v38 = v26;
      v32 = MEMORY[0x1E695DEC8];
      v33 = &v38;
      goto LABEL_21;
    }
  }

  else
  {
    v16 = timeOfLastFeatureAvailabilityJob != 0;
  }

  globalValues2 = [libraryCopy globalValues];
  featureAvailability = [globalValues2 featureAvailability];

  if (featureAvailability && v16)
  {
    v26 = [[PLFeatureAvailability alloc] initWithDictionary:featureAvailability];
    if (![(PLBackgroundJobFeatureAvailabilityWorker *)self _featureAvailabilityIsStale:v26 inLibrary:libraryCopy])
    {
      v27 = [MEMORY[0x1E695DF00] now];
      [v27 timeIntervalSinceDate:timeOfLastFeatureAvailabilityJob];
      v29 = v28;
      [objc_opt_class() minimumSecondsBetweenJobs];
      if (v29 < v30)
      {
        v36 = PLBackendGetLog();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v40 = v29;
          _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_DEFAULT, "PLBackgroundJobFeatureAvailabilityWorker - Job ran recently (%f seconds ago), no need to run again", buf, 0xCu);
        }

        initWithZeroWorkItems = [[PLBackgroundJobWorkerPendingWorkItems alloc] initWithZeroWorkItems];
        goto LABEL_22;
      }
    }
  }

  v26 = objc_alloc_init(PLBackgroundJobFeatureAvailabilityWorkItem);
  v31 = [PLBackgroundJobWorkerPendingWorkItems alloc];
  v37 = v26;
  v32 = MEMORY[0x1E695DEC8];
  v33 = &v37;
LABEL_21:
  v27 = [v32 arrayWithObjects:v33 count:{1, v37, v38}];
  initWithZeroWorkItems = [(PLBackgroundJobWorkerPendingWorkItems *)v31 initWithCriteria:v8 workItemsNeedingProcessing:v27];
LABEL_22:
  initWithZeroWorkItemsForValidCriteria = initWithZeroWorkItems;

LABEL_23:
LABEL_24:

  return initWithZeroWorkItemsForValidCriteria;
}

@end
@interface PLBackgroundJobFeatureAvailabilityWorker
- (BOOL)_featureAvailabilityIsStale:(id)a3 inLibrary:(id)a4;
- (id)workItemsNeedingProcessingInLibrary:(id)a3 validCriterias:(id)a4;
- (void)performWorkOnItem:(id)a3 inLibrary:(id)a4 completion:(id)a5;
- (void)stopWorkingOnItem:(id)a3;
@end

@implementation PLBackgroundJobFeatureAvailabilityWorker

- (void)stopWorkingOnItem:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 progress];
    [v4 cancel];
  }

  else
  {
    v4 = PLBackendGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "Unable to stop working on item %@ because it is not a known work item class", &v5, 0xCu);
    }
  }
}

- (void)performWorkOnItem:(id)a3 inLibrary:(id)a4 completion:(id)a5
{
  v30[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v9;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"PLBackgroundJobFeatureAvailabilityWorker.m" lineNumber:153 description:{@"Invalid parameter not satisfying: %@", @"[workItem isKindOfClass:PLBackgroundJobFeatureAvailabilityWorkItem.class]"}];
  }

  v13 = [v12 progress];
  v14 = [v13 isCancelled];

  if (v14)
  {
    v15 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E69BFF48];
    v29 = *MEMORY[0x1E696A278];
    v30[0] = @"Feature Availability worker cancelled";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v18 = [v15 errorWithDomain:v16 code:41031 userInfo:v17];
    v11[2](v11, v18);
  }

  else
  {
    v19 = PLBackendGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEFAULT, "PLBackgroundJobFeatureAvailabilityWorker - starting feature availability computation", buf, 2u);
    }

    v20 = [v10 libraryServicesManager];
    v17 = [v20 availabilityComputer];

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __83__PLBackgroundJobFeatureAvailabilityWorker_performWorkOnItem_inLibrary_completion___block_invoke;
    v25[3] = &unk_1E756E010;
    v26 = v10;
    v27 = v11;
    v21 = [v17 computeAvailabilityForPhotoLibrary:v26 shouldPersist:1 completionHandler:v25];
    v22 = [v12 progress];
    v23 = [v12 progress];
    [v22 addChild:v21 withPendingUnitCount:{objc_msgSend(v23, "totalUnitCount")}];

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

- (BOOL)_featureAvailabilityIsStale:(id)a3 inLibrary:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 processingSnapshot];
  v8 = [v7 hasConsistentMediaAnalysisImageVersion];

  if (v8)
  {
    v9 = [v5 processingSnapshot];
    v10 = [v9 dateComputed];

    if (!v10)
    {
      v11 = PLBackendGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v27 = 0;
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "PLBackgroundJobFeatureAvailabilityWorker - Processing snapshot is missing dateComputed", v27, 2u);
      }

      v21 = 1;
      goto LABEL_27;
    }

    v11 = [v6 globalValues];
    v12 = [v11 searchIndexRebuildStartDate];
    if (v12)
    {
      v13 = [v11 searchIndexRebuildStartDate];
      v14 = [v10 compare:v13];

      if (v14 == -1)
      {
        v15 = PLBackendGetLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *v26 = 0;
          _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "PLBackgroundJobFeatureAvailabilityWorker - searchIndexRebuildStartDate, reporting stale FA", v26, 2u);
        }

        v21 = 1;
        goto LABEL_26;
      }
    }

    v15 = [v11 searchIndexRebuildEndDate];
    if (v15 && ([v11 searchIndexRebuildEndDate], v16 = objc_claimAutoreleasedReturnValue(), v17 = [v10 compare:v16], v16, v17 == -1))
    {
      v18 = PLBackendGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v25 = 0;
        _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "PLBackgroundJobFeatureAvailabilityWorker - searchIndexRebuildEndDate, reporting stale FA", v25, 2u);
      }
    }

    else
    {
      v18 = [v11 dateOfLastExternalAvailabilitySignal];
      if (!v18 || ([v11 dateOfLastExternalAvailabilitySignal], v19 = objc_claimAutoreleasedReturnValue(), v20 = [v10 compare:v19], v19, v20 != -1))
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

  v10 = PLBackendGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "PLBackgroundJobFeatureAvailabilityWorker - mediaAnalysisImageVersion isn't current, reporting stale FA", buf, 2u);
  }

  v21 = 1;
LABEL_28:

  return v21;
}

- (id)workItemsNeedingProcessingInLibrary:(id)a3 validCriterias:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[PLBackgroundJobCriteria criteriaForFeatureAvailabilityWorker];
  v9 = [v7 containsObject:v8];

  if ((v9 & 1) == 0)
  {
    v24 = [[PLBackgroundJobWorkerPendingWorkItems alloc] initWithZeroWorkItemsForValidCriteria];
    goto LABEL_24;
  }

  v10 = [v6 globalValues];
  v11 = [v10 timeOfLastFeatureAvailabilityJob];
  v12 = [v10 featureAvailabilityJobDidFail];
  if (v12)
  {
    v13 = v12;
    v14 = [v10 featureAvailabilityJobDidFail];
    v15 = [v14 BOOLValue];

    v16 = v11 != 0;
    if (v15 && v11)
    {
      v17 = [MEMORY[0x1E695DF00] now];
      [v17 timeIntervalSinceDate:v11];
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

        v24 = [[PLBackgroundJobWorkerPendingWorkItems alloc] initWithZeroWorkItems];
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
    v16 = v11 != 0;
  }

  v25 = [v6 globalValues];
  v17 = [v25 featureAvailability];

  if (v17 && v16)
  {
    v26 = [[PLFeatureAvailability alloc] initWithDictionary:v17];
    if (![(PLBackgroundJobFeatureAvailabilityWorker *)self _featureAvailabilityIsStale:v26 inLibrary:v6])
    {
      v27 = [MEMORY[0x1E695DF00] now];
      [v27 timeIntervalSinceDate:v11];
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

        v34 = [[PLBackgroundJobWorkerPendingWorkItems alloc] initWithZeroWorkItems];
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
  v34 = [(PLBackgroundJobWorkerPendingWorkItems *)v31 initWithCriteria:v8 workItemsNeedingProcessing:v27];
LABEL_22:
  v24 = v34;

LABEL_23:
LABEL_24:

  return v24;
}

@end
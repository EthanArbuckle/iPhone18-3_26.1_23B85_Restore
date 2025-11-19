@interface PLFeatureAvailabilityTransitionDelegate
- (PLFeatureAvailabilityTransitionDelegate)initWithLibraryServicesManager:(id)a3;
- (void)_availability:(id)a3 feature:(id)a4 didTransition:(BOOL)a5;
- (void)availability:(id)a3 feature:(id)a4 didTransition:(BOOL)a5;
- (void)memoriesCreationBecameAvailable:(id)a3;
- (void)searchUIFeatureBecameAvailable:(id)a3;
@end

@implementation PLFeatureAvailabilityTransitionDelegate

- (void)searchUIFeatureBecameAvailable:(id)a3
{
  v11 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_lsm);
  v5 = [WeakRetained databaseContext];
  v6 = [v5 newShortLivedLibraryWithName:"-[PLFeatureAvailabilityTransitionDelegate searchUIFeatureBecameAvailable:]"];
  v7 = [v6 globalValues];

  v8 = [v7 searchFeatureReadyDate];

  if (!v8)
  {
    v9 = [MEMORY[0x1E695DF00] now];
    [v7 setSearchFeatureReadyDate:v9];

    v10 = [v11 fractionForFeature:&unk_1F0FBC178];
    [v7 setSearchFeatureReadyFraction:v10];

    [PLAnalysisCoordinator reportBGSTFeatureAvailable:3];
  }
}

- (void)memoriesCreationBecameAvailable:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_lsm);
  v4 = [WeakRetained databaseContext];
  v5 = [v4 newShortLivedLibraryWithName:"-[PLFeatureAvailabilityTransitionDelegate memoriesCreationBecameAvailable:]"];

  v6 = [v5 globalValues];
  v7 = [v6 memoriesCreationPreviewAvailableDate];

  if (!v7)
  {
    v8 = [MEMORY[0x1E695DF00] now];
    [v6 setMemoriesCreationPreviewAvailableDate:v8];

    [PLAnalysisCoordinator reportBGSTCustomCheckpoint:505 forFeature:1];
  }

  v9 = [v5 photoAnalysisClient];
  v10 = [[PLPhotoAnalysisPhotoLibraryService alloc] initWithServiceProvider:v9];
  v11 = PLBackendGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Memories Creation became available, notifying photoanalysisd", v12, 2u);
  }

  [(PLPhotoAnalysisPhotoLibraryService *)v10 notifyAvailabilityForFeature:1 reply:&__block_literal_global_31129];
}

void __75__PLFeatureAvailabilityTransitionDelegate_memoriesCreationBecameAvailable___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLBackendGetLog();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v2;
      v5 = "Failed to notify photoanalysisd that Memories Creation became available: %@";
      v6 = v4;
      v7 = OS_LOG_TYPE_ERROR;
      v8 = 12;
LABEL_6:
      _os_log_impl(&dword_19BF1F000, v6, v7, v5, &v9, v8);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    v5 = "Successfully notified photoanalysisd that Memories Creation became available.";
    v6 = v4;
    v7 = OS_LOG_TYPE_DEFAULT;
    v8 = 2;
    goto LABEL_6;
  }
}

- (void)_availability:(id)a3 feature:(id)a4 didTransition:(BOOL)a5
{
  v5 = a5;
  v15 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [a4 unsignedIntegerValue];
  v10 = PLBackendGetLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (!v11)
    {
      goto LABEL_7;
    }

    v13 = 67109120;
    v14 = v9;
    v12 = "FeatureAvailability: %u became available";
  }

  else
  {
    if (!v11)
    {
      goto LABEL_7;
    }

    v13 = 67109120;
    v14 = v9;
    v12 = "FeatureAvailability: %u became unavailable";
  }

  _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, v12, &v13, 8u);
LABEL_7:

  if (v9 == 3)
  {
    if (v5)
    {
      [(PLFeatureAvailabilityTransitionDelegate *)self searchUIFeatureBecameAvailable:v8];
    }
  }

  else if (v9 == 1 && v5)
  {
    [(PLFeatureAvailabilityTransitionDelegate *)self memoriesCreationBecameAvailable:v8];
  }
}

- (void)availability:(id)a3 feature:(id)a4 didTransition:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_lsm);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78__PLFeatureAvailabilityTransitionDelegate_availability_feature_didTransition___block_invoke;
  v13[3] = &unk_1E7571F10;
  objc_copyWeak(&v16, &location);
  v11 = v8;
  v14 = v11;
  v12 = v9;
  v15 = v12;
  v17 = a5;
  [WeakRetained enqueueOperationWithName:@"Feature Availability Transition" requiredState:7 executionBlock:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __78__PLFeatureAvailabilityTransitionDelegate_availability_feature_didTransition___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _availability:*(a1 + 32) feature:*(a1 + 40) didTransition:*(a1 + 56)];
}

- (PLFeatureAvailabilityTransitionDelegate)initWithLibraryServicesManager:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PLFeatureAvailabilityTransitionDelegate;
  v5 = [(PLFeatureAvailabilityTransitionDelegate *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_lsm, v4);
    v7 = v6;
  }

  return v6;
}

@end
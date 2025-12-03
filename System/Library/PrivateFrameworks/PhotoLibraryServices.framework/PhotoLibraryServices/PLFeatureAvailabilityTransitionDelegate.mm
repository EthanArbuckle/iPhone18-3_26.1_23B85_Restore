@interface PLFeatureAvailabilityTransitionDelegate
- (PLFeatureAvailabilityTransitionDelegate)initWithLibraryServicesManager:(id)manager;
- (void)_availability:(id)_availability feature:(id)feature didTransition:(BOOL)transition;
- (void)availability:(id)availability feature:(id)feature didTransition:(BOOL)transition;
- (void)memoriesCreationBecameAvailable:(id)available;
- (void)searchUIFeatureBecameAvailable:(id)available;
@end

@implementation PLFeatureAvailabilityTransitionDelegate

- (void)searchUIFeatureBecameAvailable:(id)available
{
  availableCopy = available;
  WeakRetained = objc_loadWeakRetained(&self->_lsm);
  databaseContext = [WeakRetained databaseContext];
  v6 = [databaseContext newShortLivedLibraryWithName:"-[PLFeatureAvailabilityTransitionDelegate searchUIFeatureBecameAvailable:]"];
  globalValues = [v6 globalValues];

  searchFeatureReadyDate = [globalValues searchFeatureReadyDate];

  if (!searchFeatureReadyDate)
  {
    v9 = [MEMORY[0x1E695DF00] now];
    [globalValues setSearchFeatureReadyDate:v9];

    v10 = [availableCopy fractionForFeature:&unk_1F0FBC178];
    [globalValues setSearchFeatureReadyFraction:v10];

    [PLAnalysisCoordinator reportBGSTFeatureAvailable:3];
  }
}

- (void)memoriesCreationBecameAvailable:(id)available
{
  WeakRetained = objc_loadWeakRetained(&self->_lsm);
  databaseContext = [WeakRetained databaseContext];
  v5 = [databaseContext newShortLivedLibraryWithName:"-[PLFeatureAvailabilityTransitionDelegate memoriesCreationBecameAvailable:]"];

  globalValues = [v5 globalValues];
  memoriesCreationPreviewAvailableDate = [globalValues memoriesCreationPreviewAvailableDate];

  if (!memoriesCreationPreviewAvailableDate)
  {
    v8 = [MEMORY[0x1E695DF00] now];
    [globalValues setMemoriesCreationPreviewAvailableDate:v8];

    [PLAnalysisCoordinator reportBGSTCustomCheckpoint:505 forFeature:1];
  }

  photoAnalysisClient = [v5 photoAnalysisClient];
  v10 = [[PLPhotoAnalysisPhotoLibraryService alloc] initWithServiceProvider:photoAnalysisClient];
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

- (void)_availability:(id)_availability feature:(id)feature didTransition:(BOOL)transition
{
  transitionCopy = transition;
  v15 = *MEMORY[0x1E69E9840];
  _availabilityCopy = _availability;
  unsignedIntegerValue = [feature unsignedIntegerValue];
  v10 = PLBackendGetLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (transitionCopy)
  {
    if (!v11)
    {
      goto LABEL_7;
    }

    v13 = 67109120;
    v14 = unsignedIntegerValue;
    v12 = "FeatureAvailability: %u became available";
  }

  else
  {
    if (!v11)
    {
      goto LABEL_7;
    }

    v13 = 67109120;
    v14 = unsignedIntegerValue;
    v12 = "FeatureAvailability: %u became unavailable";
  }

  _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, v12, &v13, 8u);
LABEL_7:

  if (unsignedIntegerValue == 3)
  {
    if (transitionCopy)
    {
      [(PLFeatureAvailabilityTransitionDelegate *)self searchUIFeatureBecameAvailable:_availabilityCopy];
    }
  }

  else if (unsignedIntegerValue == 1 && transitionCopy)
  {
    [(PLFeatureAvailabilityTransitionDelegate *)self memoriesCreationBecameAvailable:_availabilityCopy];
  }
}

- (void)availability:(id)availability feature:(id)feature didTransition:(BOOL)transition
{
  availabilityCopy = availability;
  featureCopy = feature;
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_lsm);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78__PLFeatureAvailabilityTransitionDelegate_availability_feature_didTransition___block_invoke;
  v13[3] = &unk_1E7571F10;
  objc_copyWeak(&v16, &location);
  v11 = availabilityCopy;
  v14 = v11;
  v12 = featureCopy;
  v15 = v12;
  transitionCopy = transition;
  [WeakRetained enqueueOperationWithName:@"Feature Availability Transition" requiredState:7 executionBlock:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __78__PLFeatureAvailabilityTransitionDelegate_availability_feature_didTransition___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _availability:*(a1 + 32) feature:*(a1 + 40) didTransition:*(a1 + 56)];
}

- (PLFeatureAvailabilityTransitionDelegate)initWithLibraryServicesManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = PLFeatureAvailabilityTransitionDelegate;
  v5 = [(PLFeatureAvailabilityTransitionDelegate *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_lsm, managerCopy);
    v7 = v6;
  }

  return v6;
}

@end
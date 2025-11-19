@interface PLReadyForAnalysis
- (BOOL)_lock_isReadyForAnalysisState:(unsigned __int16)a3;
- (BOOL)isReadyForAnalysis;
- (PLReadyForAnalysis)initWithLibraryServicesManager:(id)a3;
- (id)stateCaptureDictionary;
- (void)_lock_checkCPLInitialDownloadStatusForState:(unsigned __int16)a3;
- (void)_lock_checkComputeCacheStatusForState:(unsigned __int16)a3;
- (void)_lock_checkIsReadyForAnalysisForState:(unsigned __int16)a3;
- (void)_lock_checkReadyForCPLStatusForState:(unsigned __int16)a3;
- (void)_lock_logIfPermittedWithString:(id)a3;
- (void)_lock_updateAndLogStatusWithString:(id)a3;
- (void)_lock_updateCheckLevelIfNeeded:(char)a3;
- (void)_lock_updateStateCaptureData;
- (void)dealloc;
@end

@implementation PLReadyForAnalysis

- (BOOL)isReadyForAnalysis
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x2020000000;
  v5 = 0;
  v2 = PLBoolResultWithUnfairLock();
  _Block_object_dispose(v4, 8);
  return v2;
}

uint64_t __40__PLReadyForAnalysis_isReadyForAnalysis__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) _lock_isReadyForAnalysisState:7] & 1) == 0)
  {
    [*(a1 + 32) _lock_checkIsReadyForAnalysisForState:7];
    [*(a1 + 32) _lock_updateCheckLevelIfNeeded:3];
    [*(a1 + 32) _lock_updateStateCaptureData];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v2 = [*(a1 + 32) _lock_isReadyForAnalysisState:7];
  [*(a1 + 32) _lock_logIfPermittedWithString:@"isReadyForAnalysis"];
  return v2;
}

- (void)_lock_updateStateCaptureData
{
  os_unfair_lock_assert_owner(&self->_lock);
  atomic_store(self->_lock_readyState, &self->_atomic_readyState);
  atomic_store(self->_lock_checkLevel, &self->_atomic_checkLevel);
}

- (id)stateCaptureDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = atomic_load(&self->_atomic_readyState);
  v5 = PLStringFromReadyForAnalysisState(v4);
  [v3 setObject:v5 forKeyedSubscript:@"analysisState"];

  v6 = atomic_load(&self->_atomic_checkLevel);
  v7 = PLStringFromReadyForAnalysisCheckLevelShort(v6);
  [v3 setObject:v7 forKeyedSubscript:@"checkLevel"];

  [(PLLibraryServicesManager *)self->_lsm wellKnownPhotoLibraryIdentifier];
  v8 = PLStringFromWellKnownPhotoLibraryIdentifier();
  [v3 setObject:v8 forKeyedSubscript:@"wellKnownIdentifier"];

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", self->_lsm];
  [v3 setObject:v9 forKeyedSubscript:@"LSM"];

  return v3;
}

- (void)_lock_checkComputeCacheStatusForState:(unsigned __int16)a3
{
  v3 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  if ((v3 & 4) != 0)
  {
    if ([(PLReadyForAnalysis *)self _lock_isReadyForAnalysisState:2])
    {
      if (![(PLReadyForAnalysis *)self _lock_isReadyForAnalysisState:4])
      {
        v5 = [(PLLibraryServicesManager *)self->_lsm computeCacheManager];
        v6 = [v5 isReadyForAnalysis];

        if (v6)
        {
          self->_lock_readyState |= 4u;

          [(PLReadyForAnalysis *)self _lock_updateAndLogStatusWithString:@"ComputeCacheCompleted"];
        }
      }
    }
  }
}

- (void)_lock_checkCPLInitialDownloadStatusForState:(unsigned __int16)a3
{
  v3 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  if ((v3 & 2) != 0 && ![(PLReadyForAnalysis *)self _lock_isReadyForAnalysisState:2])
  {
    v5 = [(PLLibraryServicesManager *)self->_lsm cloudPhotoLibraryManager];
    v6 = [v5 isReadyForAnalysis];

    if (v6)
    {
      self->_lock_readyState |= 2u;

      [(PLReadyForAnalysis *)self _lock_updateAndLogStatusWithString:@"CPLDownloadCompleted"];
    }
  }
}

- (void)_lock_checkReadyForCPLStatusForState:(unsigned __int16)a3
{
  v3 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  if ((v3 & 1) != 0 && ![(PLReadyForAnalysis *)self _lock_isReadyForAnalysisState:1])
  {
    v5 = [(PLLibraryServicesManager *)self->_lsm cplReadiness];
    v6 = [v5 isReadyForCloudPhotoLibraryWithStatus:0];

    if (v6)
    {
      self->_lock_readyState |= 1u;

      [(PLReadyForAnalysis *)self _lock_updateAndLogStatusWithString:@"ReadyForCPL"];
    }
  }
}

- (void)_lock_checkIsReadyForAnalysisForState:(unsigned __int16)a3
{
  v3 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  if ((~self->_lock_readyState & 7) != 0)
  {
    [(PLReadyForAnalysis *)self _lock_checkReadyForCPLStatusForState:v3];
    v5 = [(PLReadyForAnalysis *)self _lock_isReadyForAnalysisState:1];
    if ((v3 & 1) == 0 || v5)
    {
      if ([(PLLibraryServicesManager *)self->_lsm isCloudPhotoLibraryEnabled])
      {
        if (v3 == 6)
        {
          if ([(PLReadyForAnalysis *)self _lock_isReadyForAnalysisState:6])
          {
            return;
          }

          v6 = [(PLReadyForAnalysis *)self appPrivateData];
          v7 = [v6 getCachedIsReadyForAnalysisFromSavedState];

          if (v7)
          {
            self->_lock_readyState |= 6u;
            return;
          }
        }

        [(PLReadyForAnalysis *)self _lock_checkCPLInitialDownloadStatusForState:v3];
      }

      else
      {
        self->_lock_readyState |= 2u;
        [(PLReadyForAnalysis *)self _lock_updateAndLogStatusWithString:@"CPLDownloadCompleted (iCPL Disabled)"];
      }

      [(PLReadyForAnalysis *)self _lock_checkComputeCacheStatusForState:v3];
      if ((v3 & 6) != 0)
      {
        v8 = [(PLReadyForAnalysis *)self appPrivateData];
        [v8 saveCachedIsReadyForAnalysis:-[PLReadyForAnalysis _lock_isReadyForAnalysisState:](self libraryServicesManager:{"_lock_isReadyForAnalysisState:", 6), self->_lsm}];
      }
    }
  }
}

- (BOOL)_lock_isReadyForAnalysisState:(unsigned __int16)a3
{
  v3 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  return (v3 & ~self->_lock_readyState) == 0;
}

- (void)_lock_updateCheckLevelIfNeeded:(char)a3
{
  v3 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_lock_checkLevel < v3)
  {
    self->_lock_checkLevel = v3;
  }
}

- (void)_lock_logIfPermittedWithString:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = MEMORY[0x1E696AEC0];
  v6 = [(PLReadyForAnalysis *)self _statusLogPrefix];
  v7 = [v5 stringWithFormat:@"%@: [%@]: %@", v6, v4, self->_lock_status];

  v8 = [MEMORY[0x1E695DF00] now];
  [v8 timeIntervalSinceDate:self->_lock_lastLogDate];
  v10 = v9;

  v11 = PLReadyForAnalysisLogTimerInterval;
  v12 = PLBackendGetLog();
  lock_lastLogDate = v12;
  if (v10 <= v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v16 = v7;
      _os_log_impl(&dword_19BF1F000, &lock_lastLogDate->super, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = v7;
      _os_log_impl(&dword_19BF1F000, &lock_lastLogDate->super, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    v14 = [MEMORY[0x1E695DF00] now];
    lock_lastLogDate = self->_lock_lastLogDate;
    self->_lock_lastLogDate = v14;
  }
}

- (void)_lock_updateAndLogStatusWithString:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PLReadyForAnalysis.m" lineNumber:196 description:{@"Invalid parameter not satisfying: %@", @"status"}];
  }

  if (![(NSString *)self->_lock_status isEqualToString:v6])
  {
    objc_storeStrong(&self->_lock_status, a3);
    v7 = PLBackendGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(PLReadyForAnalysis *)self _statusLogPrefix];
      lock_status = self->_lock_status;
      *buf = 138543618;
      v12 = v8;
      v13 = 2114;
      v14 = lock_status;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", buf, 0x16u);
    }
  }
}

uint64_t __48__PLReadyForAnalysis_resetReadyForAnalysisState__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 28) = 0;
  *(*(a1 + 32) + 30) = 0;
  [*(a1 + 32) _lock_updateStateCaptureData];
  v2 = [*(a1 + 32) appPrivateData];
  [v2 saveCachedIsReadyForAnalysis:0 libraryServicesManager:*(*(a1 + 32) + 8)];

  v3 = *(a1 + 32);

  return [v3 _lock_updateAndLogStatusWithString:@"Reset"];
}

uint64_t __64__PLReadyForAnalysis_isReadyForAnalysisInitialDownloadCompleted__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) _lock_isReadyForAnalysisState:2] & 1) == 0)
  {
    [*(a1 + 32) _lock_checkIsReadyForAnalysisForState:3];
    [*(a1 + 32) _lock_updateCheckLevelIfNeeded:2];
    [*(a1 + 32) _lock_updateStateCaptureData];
  }

  v2 = [*(a1 + 32) _lock_isReadyForAnalysisState:2];
  [*(a1 + 32) _lock_logIfPermittedWithString:@"isReadyForAnalysisInitialDownloadCompleted"];
  return v2;
}

uint64_t __50__PLReadyForAnalysis_isReadyForAnalysisQuickCheck__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) _lock_isReadyForAnalysisState:6] & 1) == 0)
  {
    [*(a1 + 32) _lock_checkIsReadyForAnalysisForState:6];
    [*(a1 + 32) _lock_updateCheckLevelIfNeeded:1];
    [*(a1 + 32) _lock_updateStateCaptureData];
  }

  v2 = [*(a1 + 32) _lock_isReadyForAnalysisState:6];
  [*(a1 + 32) _lock_logIfPermittedWithString:@"isReadyForAnalysisQuickCheck"];
  return v2;
}

- (void)dealloc
{
  [(PLLazyObject *)self->_lazyAppPrivateData invalidate];
  v3.receiver = self;
  v3.super_class = PLReadyForAnalysis;
  [(PLReadyForAnalysis *)&v3 dealloc];
}

- (PLReadyForAnalysis)initWithLibraryServicesManager:(id)a3
{
  v5 = a3;
  v23.receiver = self;
  v23.super_class = PLReadyForAnalysis;
  v6 = [(PLReadyForAnalysis *)&v23 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock_readyState = 0;
    v6->_lock_checkLevel = 0;
    objc_storeStrong(&v6->_lsm, a3);
    v8 = objc_initWeak(&location, v7);

    v9 = objc_alloc(MEMORY[0x1E69BF270]);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __53__PLReadyForAnalysis_initWithLibraryServicesManager___block_invoke;
    v19[3] = &unk_1E7573318;
    objc_copyWeak(&v21, &location);
    v20 = v5;
    v10 = [v9 initWithBlock:v19];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
    lazyAppPrivateData = v7->_lazyAppPrivateData;
    v7->_lazyAppPrivateData = v10;

    v7->_lock._os_unfair_lock_opaque = 0;
    v12 = [MEMORY[0x1E695DF00] now];
    lock_lastLogDate = v7->_lock_lastLogDate;
    v7->_lock_lastLogDate = v12;

    v17 = MEMORY[0x1E69E9820];
    v18 = v7;
    PLRunWithUnfairLock();
    v14 = [objc_alloc(MEMORY[0x1E69BDD80]) initWithProvider:{v18, v17, 3221225472, __53__PLReadyForAnalysis_initWithLibraryServicesManager___block_invoke_2, &unk_1E75781E8}];
    stateCaptureHandler = v18->_stateCaptureHandler;
    v18->_stateCaptureHandler = v14;
  }

  return v7;
}

id __53__PLReadyForAnalysis_initWithLibraryServicesManager___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = MEMORY[0x1E69BF188];
    v4 = [*(a1 + 32) pathManager];
    v5 = [v4 libraryURL];
    v6 = [v3 appPrivateDataForLibraryURL:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end
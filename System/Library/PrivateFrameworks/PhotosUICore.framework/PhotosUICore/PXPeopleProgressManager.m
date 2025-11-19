@interface PXPeopleProgressManager
+ (BOOL)hasSubstantialProcessingRemainingForThreshold:(int64_t)a3 pendingAssetCount:(int64_t)a4 allowedAssetCount:(int64_t)a5 photoLibrary:(id)a6;
+ (id)_progressFooterQueue;
+ (id)statusStringForStatus:(int64_t)a3;
+ (void)shouldCheckProcessedCounts:(BOOL *)a3 hasSubstantialProcessingRemaining:(BOOL *)a4 threshold:(int64_t)a5 featureUnlocked:(BOOL)a6;
- (BOOL)_hasSubstantialProcessingRemainingForThreshold:(int64_t)a3 allowMocking:(BOOL)a4;
- (BOOL)featureUnlocked;
- (PXPeopleProgressManager)initWithPhotoLibrary:(id)a3;
- (int64_t)processingStatus;
- (void)_handleAsyncUpdateIsReadyForAnalysis:(BOOL)a3 processedToAnyVersionProgress:(int64_t)a4 processedToAnyVersionCount:(int64_t)a5;
- (void)_logFaceCounts;
- (void)_scheduleNextUpdate;
- (void)_updateStatusForIsReadyForAnalysis:(BOOL)a3 progress:(double)a4 processCount:(int64_t)a5;
- (void)setMonitoringProgress:(BOOL)a3;
- (void)setUpdateInterval:(double)a3;
- (void)shouldUseProgressFooterWithCompletion:(id)a3;
- (void)updateProgressWithForce:(BOOL)a3;
@end

@implementation PXPeopleProgressManager

- (void)_logFaceCounts
{
  if (PFOSVariantHasInternalUI())
  {
    v3 = dispatch_get_global_queue(9, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__PXPeopleProgressManager__logFaceCounts__block_invoke;
    block[3] = &unk_1E774C648;
    block[4] = self;
    dispatch_async(v3, block);
  }
}

void __41__PXPeopleProgressManager__logFaceCounts__block_invoke(uint64_t a1)
{
  v55 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) dataSource];
  lock._os_unfair_lock_opaque = [*(a1 + 32) progressLock];
  os_unfair_lock_lock(&lock);
  v3 = [*(a1 + 32) monitoringProgress];
  [*(a1 + 32) updateInterval];
  v5 = v4;
  [*(a1 + 32) progress];
  v7 = v6;
  v8 = [*(a1 + 32) featureUnlocked];
  v9 = [*(a1 + 32) shouldUseInterstitial];
  v10 = [*(a1 + 32) processingStatus];
  os_unfair_lock_unlock(&lock);
  v11 = [PXPeopleProgressManager progressComplete:v7];
  v12 = [v2 isReadyForAnalysis];
  v13 = [v2 hasHomePeople];
  v14 = [PXPeopleProgressManager statusStringForStatus:v10];
  v15 = PLUIGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    if (v3)
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    v33 = v14;
    v17 = v16;
    if (v11)
    {
      v18 = @"YES";
    }

    else
    {
      v18 = @"NO";
    }

    v19 = v18;
    v32 = v17;
    if (v8)
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    v21 = v20;
    v31 = v19;
    if (v12)
    {
      v22 = @"YES";
    }

    else
    {
      v22 = @"NO";
    }

    v23 = v22;
    v30 = v21;
    if (v13)
    {
      v24 = @"YES";
    }

    else
    {
      v24 = @"NO";
    }

    v25 = v24;
    v29 = v23;
    if (v9)
    {
      v26 = @"YES";
    }

    else
    {
      v26 = @"NO";
    }

    v27 = v26;
    v28 = v25;
    *buf = 136317442;
    v36 = "[PXPeopleProgressManager _logFaceCounts]_block_invoke";
    v37 = 2112;
    v38 = v17;
    v14 = v33;
    v39 = 2048;
    v40 = v5;
    v41 = 2048;
    v42 = v7;
    v43 = 2112;
    v44 = v19;
    v45 = 2112;
    v46 = v21;
    v47 = 2112;
    v48 = v23;
    v49 = 2112;
    v50 = v25;
    v51 = 2112;
    v52 = v27;
    v53 = 2112;
    v54 = v33;
    _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_INFO, "%s, monitoringProgress: %@, updateInterval: %f, progress: %f, progressComplete: %@, featureUnlocked: %@ ((isReadyForAnalysis: %@) && (hasHomePeople: %@)), shouldUseInterstitial: %@, statusString: %@", buf, 0x66u);
  }

  [*(a1 + 32) shouldUseProgressFooterWithCompletion:&__block_literal_global_26];
}

void __41__PXPeopleProgressManager__logFaceCounts__block_invoke_23(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = PLUIGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = @"NO";
    if (a2)
    {
      v4 = @"YES";
    }

    v5 = v4;
    v6 = 136315394;
    v7 = "[PXPeopleProgressManager _logFaceCounts]_block_invoke";
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_INFO, "%s, shouldUseProgressFooter: %@", &v6, 0x16u);
  }
}

- (void)_handleAsyncUpdateIsReadyForAnalysis:(BOOL)a3 processedToAnyVersionProgress:(int64_t)a4 processedToAnyVersionCount:(int64_t)a5
{
  [(PXPeopleProgressManager *)self _updateStatusForIsReadyForAnalysis:a3 progress:a5 processCount:a4];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __121__PXPeopleProgressManager__handleAsyncUpdateIsReadyForAnalysis_processedToAnyVersionProgress_processedToAnyVersionCount___block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_scheduleNextUpdate
{
  lock._os_unfair_lock_opaque = [(PXPeopleProgressManager *)self progressLock];
  os_unfair_lock_lock(&lock);
  v3 = [(PXPeopleProgressManager *)self statusTimer];
  v4 = [(PXPeopleProgressManager *)self monitoringProgress];
  os_unfair_lock_unlock(&lock);
  if (!v3 && v4)
  {
    objc_initWeak(&location, self);
    v14._os_unfair_lock_opaque = [(PXPeopleProgressManager *)self progressLock];
    os_unfair_lock_lock(&v14);
    v5 = MEMORY[0x1E695DFF0];
    [(PXPeopleProgressManager *)self updateInterval];
    v7 = v6;
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __46__PXPeopleProgressManager__scheduleNextUpdate__block_invoke;
    v12 = &unk_1E7747228;
    objc_copyWeak(&v13, &location);
    v8 = [v5 scheduledTimerWithTimeInterval:1 repeats:&v9 block:v7];
    [(PXPeopleProgressManager *)self setStatusTimer:v8, v9, v10, v11, v12];

    objc_destroyWeak(&v13);
    os_unfair_lock_unlock(&v14);
    objc_destroyWeak(&location);
  }
}

void __46__PXPeopleProgressManager__scheduleNextUpdate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setMockSubstantialProcessingCount:{objc_msgSend(WeakRetained, "mockSubstantialProcessingCount") + 1}];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 updateProgressWithForce:0];
}

- (void)_updateStatusForIsReadyForAnalysis:(BOOL)a3 progress:(double)a4 processCount:(int64_t)a5
{
  v8 = [(PXPeopleProgressManager *)self dataSource:a3];
  v9 = [PXPeopleProgressManager progressComplete:a4];
  v10 = [v8 hasHomePeople];
  v11 = v10;
  v12 = (v10 ^ 1) & v9;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__PXPeopleProgressManager__updateStatusForIsReadyForAnalysis_progress_processCount___block_invoke;
  aBlock[3] = &unk_1E7736D70;
  objc_copyWeak(v21, &location);
  v22 = a3;
  v23 = v11;
  v24 = v9;
  v21[1] = *&a4;
  v13 = _Block_copy(aBlock);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__PXPeopleProgressManager__updateStatusForIsReadyForAnalysis_progress_processCount___block_invoke_2;
  block[3] = &unk_1E7748148;
  v14 = v13;
  v18 = v14;
  v19 = v12;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  if (v12 == 1)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __84__PXPeopleProgressManager__updateStatusForIsReadyForAnalysis_progress_processCount___block_invoke_3;
    v15[3] = &unk_1E7747648;
    v16 = v14;
    [v8 requestPersonPromoterStatusWithCompletionBlock:v15];
  }

  objc_destroyWeak(v21);
  objc_destroyWeak(&location);
}

void __84__PXPeopleProgressManager__updateStatusForIsReadyForAnalysis_progress_processCount___block_invoke(uint64_t a1, int a2, char a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  lock._os_unfair_lock_opaque = [WeakRetained progressLock];
  os_unfair_lock_lock(&lock);
  v7 = +[PXPeopleUISettings sharedInstance];
  v8 = [v7 mockEmptyContentUpdates];

  if (v8)
  {
    v9 = [WeakRetained processingStatus] == 4;
    v10 = 3;
    goto LABEL_3;
  }

  if (*(a1 + 48) == 1)
  {
    if ((*(a1 + 49) & 1) == 0)
    {
      v9 = ((*(a1 + 50) & a3) ^ 1 | a2) == 0;
      v10 = 2;
LABEL_3:
      if (v9)
      {
        v11 = v10;
      }

      else
      {
        v11 = v10 + 1;
      }

      goto LABEL_10;
    }

    v11 = 4;
  }

  else
  {
    v11 = 1;
  }

LABEL_10:
  [WeakRetained setProcessingStatus:v11];
  if ([WeakRetained monitoringProgress])
  {
    [WeakRetained setProgress:*(a1 + 40)];
    os_unfair_lock_unlock(&lock);
    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 postNotificationName:@"PXPeopleProgressDidChangeNotification" object:WeakRetained];
  }

  else
  {
    os_unfair_lock_unlock(&lock);
  }
}

void __84__PXPeopleProgressManager__updateStatusForIsReadyForAnalysis_progress_processCount___block_invoke_3(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __84__PXPeopleProgressManager__updateStatusForIsReadyForAnalysis_progress_processCount___block_invoke_4;
  v3[3] = &unk_1E7748148;
  v4 = *(a1 + 32);
  v5 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

- (BOOL)_hasSubstantialProcessingRemainingForThreshold:(int64_t)a3 allowMocking:(BOOL)a4
{
  v4 = a4;
  v20 = 0;
  [PXPeopleProgressManager shouldCheckProcessedCounts:&v20 + 1 hasSubstantialProcessingRemaining:&v20 threshold:a3 featureUnlocked:[(PXPeopleProgressManager *)self featureUnlocked]];
  if (HIBYTE(v20) == 1)
  {
    v7 = [(PXPeopleProgressManager *)self dataSource];
    objc_initWeak(&location, self);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __87__PXPeopleProgressManager__hasSubstantialProcessingRemainingForThreshold_allowMocking___block_invoke;
    v17[3] = &unk_1E7736D48;
    objc_copyWeak(&v18, &location);
    [v7 updateProgressIfNeededWithReportBlock:v17];
    v8 = [v7 allowedAssetCount];
    if (a3 >= 2)
    {
      if (a3 != 2)
      {
        v10 = 0;
LABEL_8:
        v11 = [(PXPeopleProgressManager *)self dataSource];
        v12 = [v11 photoLibrary];
        LOBYTE(v20) = [PXPeopleProgressManager hasSubstantialProcessingRemainingForThreshold:a3 pendingAssetCount:v10 allowedAssetCount:v8 photoLibrary:v12];

        objc_destroyWeak(&v18);
        objc_destroyWeak(&location);

        goto LABEL_9;
      }

      v9 = [v7 pendingToLatestVersionAssetCount];
    }

    else
    {
      v9 = [v7 pendingToAnyVersionAssetCount];
    }

    v10 = v9;
    goto LABEL_8;
  }

LABEL_9:
  if (v4 && (+[PXPeopleUISettings sharedInstance](PXPeopleUISettings, "sharedInstance"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 mockProcessingUpdates], v13, v14))
  {
    return ([(PXPeopleProgressManager *)self mockSubstantialProcessingCount]& 0x8000000000000001) == 1;
  }

  else
  {
    return v20;
  }
}

void __87__PXPeopleProgressManager__hasSubstantialProcessingRemainingForThreshold_allowMocking___block_invoke(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateStatusForIsReadyForAnalysis:a2 progress:a6 processCount:a4];
}

- (void)updateProgressWithForce:(BOOL)a3
{
  v3 = a3;
  lock._os_unfair_lock_opaque = [(PXPeopleProgressManager *)self progressLock];
  os_unfair_lock_lock(&lock);
  v5 = [(PXPeopleProgressManager *)self monitoringProgress];
  os_unfair_lock_unlock(&lock);
  if (v5 || v3)
  {
    v6 = dispatch_get_global_queue(9, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __51__PXPeopleProgressManager_updateProgressWithForce___block_invoke;
    v7[3] = &unk_1E774C648;
    v7[4] = self;
    dispatch_async(v6, v7);
  }
}

void __51__PXPeopleProgressManager_updateProgressWithForce___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) dataSource];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__PXPeopleProgressManager_updateProgressWithForce___block_invoke_2;
  v3[3] = &unk_1E7736D48;
  objc_copyWeak(&v4, &location);
  [v2 asyncUpdateProgressWithReportBlock:v3];

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __51__PXPeopleProgressManager_updateProgressWithForce___block_invoke_2(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleAsyncUpdateIsReadyForAnalysis:a2 processedToAnyVersionProgress:a4 processedToAnyVersionCount:a6];
}

- (void)shouldUseProgressFooterWithCompletion:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXPeopleProgressManager.m" lineNumber:118 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  v6 = +[PXPeopleProgressManager _progressFooterQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__PXPeopleProgressManager_shouldUseProgressFooterWithCompletion___block_invoke;
  block[3] = &unk_1E774C2F0;
  block[4] = self;
  v10 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

uint64_t __65__PXPeopleProgressManager_shouldUseProgressFooterWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) hasSubstantialProcessingRemainingForThreshold:2];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (int64_t)processingStatus
{
  objc_initWeak(&location, self);
  v3 = [(PXPeopleProgressManager *)self dataSource];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__PXPeopleProgressManager_processingStatus__block_invoke;
  v6[3] = &unk_1E7736D48;
  objc_copyWeak(&v7, &location);
  [v3 updateProgressIfNeededWithReportBlock:v6];

  processingStatus = self->_processingStatus;
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
  return processingStatus;
}

void __43__PXPeopleProgressManager_processingStatus__block_invoke(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateStatusForIsReadyForAnalysis:a2 progress:a6 processCount:a4];
}

- (BOOL)featureUnlocked
{
  v2 = [(PXPeopleProgressManager *)self dataSource];
  v3 = [v2 isReadyForAnalysis];
  v4 = [v2 hasHomePeople];

  return v3 & v4;
}

- (void)setUpdateInterval:(double)a3
{
  lock._os_unfair_lock_opaque = [(PXPeopleProgressManager *)self progressLock];
  os_unfair_lock_lock(&lock);
  if (self->_updateInterval != a3)
  {
    v5 = 1.0;
    if (a3 >= 1.0)
    {
      v5 = a3;
    }

    self->_updateInterval = v5;
  }

  os_unfair_lock_unlock(&lock);
}

- (void)setMonitoringProgress:(BOOL)a3
{
  v3 = a3;
  lock._os_unfair_lock_opaque = [(PXPeopleProgressManager *)self progressLock];
  os_unfair_lock_lock(&lock);
  if (self->_monitoringProgress != v3)
  {
    self->_monitoringProgress = v3;
    if (v3)
    {
      os_unfair_lock_unlock(&lock);
      [(PXPeopleProgressManager *)self updateProgressWithForce:0];
      return;
    }

    if (self->_statusTimer)
    {
      v5 = [(PXPeopleProgressManager *)self statusTimer];
      [v5 invalidate];

      [(PXPeopleProgressManager *)self setStatusTimer:0];
    }
  }

  os_unfair_lock_unlock(&lock);
}

- (PXPeopleProgressManager)initWithPhotoLibrary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PXPeopleProgressManager;
  v5 = [(PXPeopleProgressManager *)&v13 init];
  v6 = v5;
  if (v5)
  {
    v5->_updateInterval = 1.0;
    v5->_processingStatus = 0;
    v7 = [[PXPeopleProgressDataSource alloc] initWithPhotoLibrary:v4];
    dataSource = v6->_dataSource;
    v6->_dataSource = v7;
    v9 = v7;

    [(PXPeopleProgressDataSource *)v9 loadQueryData];
    v6->_progressLock._os_unfair_lock_opaque = 0;
    v10 = *MEMORY[0x1E69DDBA8];
    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 addObserver:v6 selector:sel__logFaceCounts name:v10 object:0];
  }

  return v6;
}

+ (id)statusStringForStatus:(int64_t)a3
{
  if ((a3 - 1) > 3)
  {
    return @"PXPeopleProcessStatusNotAvailable";
  }

  else
  {
    return off_1E7736D90[a3 - 1];
  }
}

+ (id)_progressFooterQueue
{
  if (_progressFooterQueue_onceToken != -1)
  {
    dispatch_once(&_progressFooterQueue_onceToken, &__block_literal_global_89908);
  }

  v3 = _progressFooterQueue_footerQueue;

  return v3;
}

void __47__PXPeopleProgressManager__progressFooterQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("com.apple.photos.people.progressFooter", v2);
  v1 = _progressFooterQueue_footerQueue;
  _progressFooterQueue_footerQueue = v0;
}

+ (void)shouldCheckProcessedCounts:(BOOL *)a3 hasSubstantialProcessingRemaining:(BOOL *)a4 threshold:(int64_t)a5 featureUnlocked:(BOOL)a6
{
  if (a6)
  {
    v8 = [PXPeopleProgressManager shouldCheckProcessedCountsForThreshold:a5];
    v9 = v8;
  }

  else
  {
    v8 = 0;
    v9 = 1;
  }

  *a3 = v8;
  *a4 = v9;
}

+ (BOOL)hasSubstantialProcessingRemainingForThreshold:(int64_t)a3 pendingAssetCount:(int64_t)a4 allowedAssetCount:(int64_t)a5 photoLibrary:(id)a6
{
  v9 = a6;
  v10 = ceil(a5 * 0.05);
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      if (!a4)
      {
        goto LABEL_14;
      }

      if (v10 > 150.0)
      {
        v10 = 150.0;
      }

      if (v10 <= a4)
      {
        LOBYTE(v12) = 1;
      }

      else
      {
LABEL_14:
        v12 = [objc_opt_class() isFaceProcessingFinishedForPhotoLibrary:v9] ^ 1;
      }
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  else
  {
    LOBYTE(v12) = v10 <= a4 && a4 != 0;
  }

  return v12;
}

@end
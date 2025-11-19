@interface PXPeopleProgressDataSource
+ ($DF4FB41D2F0E3F59E20087ACD782DC9D)_invalidProgressReport;
+ (int64_t)pendingCountForAllowedCount:(int64_t)a3 processedCount:(int64_t)a4;
- (BOOL)hasHomePeople;
- (BOOL)isPhotoLibraryReadyForAnalysis;
- (PXPeopleProgressDataSource)initWithPhotoLibrary:(id)a3;
- (id)_fetchPeople;
- (void)_logFaceCounts;
- (void)appWillEnterForeground;
- (void)asyncUpdateProgressWithReportBlock:(id)a3;
- (void)dealloc;
- (void)loadQueryData;
- (void)photoLibraryDidChangeOnMainQueue:(id)a3 withPreparedInfo:(id)a4;
- (void)requestPersonPromoterStatusWithCompletionBlock:(id)a3;
- (void)syncUpdateProgressWithReportBlock:(id)a3;
- (void)updateProgressFromIsReadyForAnalysis:(BOOL)a3 progressReport:(id *)a4;
- (void)updateProgressIfNeededWithReportBlock:(id)a3;
@end

@implementation PXPeopleProgressDataSource

- (void)_logFaceCounts
{
  if (PFOSVariantHasInternalUI())
  {
    v3 = dispatch_get_global_queue(9, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__PXPeopleProgressDataSource__logFaceCounts__block_invoke;
    block[3] = &unk_1E774C648;
    block[4] = self;
    dispatch_async(v3, block);
  }
}

void __44__PXPeopleProgressDataSource__logFaceCounts__block_invoke(uint64_t a1)
{
  v60 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) photoLibrary];
  v3 = [*(a1 + 32) isPhotoLibraryReadyForAnalysis];
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v4 = *(a1 + 32);
  if (v4)
  {
    [v4 progressReportForLibrary:v2];
    v6 = *(&v29 + 1);
    v5 = v29;
    v7 = v30;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v5 = 0;
  }

  v8 = [PXPeopleProgressDataSource pendingCountForAllowedCount:v5 processedCount:v6];
  v27 = [PXPeopleProgressDataSource pendingCountForAllowedCount:v5 processedCount:v7];
  lock._os_unfair_lock_opaque = [*(a1 + 32) progressLock];
  os_unfair_lock_lock(&lock);
  v9 = *(a1 + 32);
  v10 = *(v9 + 8);
  v22 = *(v9 + 24);
  v23 = *(v9 + 32);
  v24 = *(v9 + 40);
  v25 = *(v9 + 48);
  v26 = *(v9 + 56);
  os_unfair_lock_unlock(&lock);
  v11 = [*(a1 + 32) hasHomePeople];
  v12 = PLUIGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v20 = v8;
    if (v3)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    v14 = v13;
    if (v10)
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    v16 = v15;
    v21 = v14;
    if (v11)
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    v18 = v17;
    v19 = v16;
    *buf = 136318466;
    v33 = "[PXPeopleProgressDataSource _logFaceCounts]_block_invoke";
    v34 = 2112;
    v35 = v14;
    v36 = 2048;
    v37 = v5;
    v38 = 2048;
    v39 = v6;
    v40 = 2048;
    v41 = v7;
    v42 = 2048;
    v43 = v20;
    v44 = 2048;
    v45 = v27;
    v46 = 2112;
    v47 = v16;
    v48 = 2048;
    v49 = v22;
    v50 = 2048;
    v51 = v23;
    v52 = 2048;
    v53 = v24;
    v54 = 2048;
    v55 = v25;
    v56 = 2048;
    v57 = v26;
    v58 = 2112;
    v59 = v18;
    _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_INFO, "%s, libraryIsReadyForAnalysis: %@, reportAllowedCount: %ld, reportProcessedToLatestVersionCount: %ld, reportProcessedToAnyVersionCount: %ld, reportPendingToLatestVersionAssetCount: %ld, reportPendingToAnyVersionAssetCount: %ld, cachedIsReadyForAnalysis: %@, cachedAllowedCount: %ld, cachedProcessedToLatestVersionCount: %ld, cachedProcessedToAnyVersionCount: %ld, cachedPendingToLatestVersionCount: %ld, cachedPendingToAnyVersionCount: %ld, hasHomePeople: %@", buf, 0x8Eu);
  }

  [*(a1 + 32) requestPersonPromoterStatusWithCompletionBlock:&__block_literal_global_283_126976];
}

void __44__PXPeopleProgressDataSource__logFaceCounts__block_invoke_280(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLUIGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = @"NO";
    if (a2)
    {
      v6 = @"YES";
    }

    v7 = v6;
    v8 = v7;
    v9 = @"nil";
    v10 = 136315650;
    v11 = "[PXPeopleProgressDataSource _logFaceCounts]_block_invoke";
    v12 = 2112;
    if (v4)
    {
      v9 = v4;
    }

    v13 = v7;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_INFO, "%s, isPersonPromoterDone: %@, error: %@", &v10, 0x20u);
  }
}

- (void)appWillEnterForeground
{
  lock._os_unfair_lock_opaque = [(PXPeopleProgressDataSource *)self progressLock];
  os_unfair_lock_lock(&lock);
  [(PXPeopleProgressDataSource *)self setAllowedAssetCount:0];
  [(PXPeopleProgressDataSource *)self setProcessedToLatestVersionAssetCount:0];
  [(PXPeopleProgressDataSource *)self setProcessedToAnyVersionAssetCount:0];
  [(PXPeopleProgressDataSource *)self setPendingToLatestVersionAssetCount:0];
  [(PXPeopleProgressDataSource *)self setPendingToAnyVersionAssetCount:0];
  [(PXPeopleProgressDataSource *)self setCountCacheValid:0];
  os_unfair_lock_unlock(&lock);
}

- (void)photoLibraryDidChangeOnMainQueue:(id)a3 withPreparedInfo:(id)a4
{
  v5 = a3;
  v6 = [(PXPeopleProgressDataSource *)self homeResult];
  v7 = [v5 changeDetailsForFetchResult:v6];

  if (v7)
  {
    v8 = [v7 fetchResultAfterChanges];
    lock._os_unfair_lock_opaque = [(PXPeopleProgressDataSource *)self progressLock];
    os_unfair_lock_lock(&lock);
    [(PXPeopleProgressDataSource *)self setHomeResult:v8];
    [(PXPeopleProgressDataSource *)self setCountCacheValid:0];
    os_unfair_lock_unlock(&lock);
    if (![v8 count])
    {
      v9 = dispatch_time(0, 200000000);
      dispatch_after(v9, MEMORY[0x1E69E96A0], &__block_literal_global_126986);
    }
  }
}

void __80__PXPeopleProgressDataSource_photoLibraryDidChangeOnMainQueue_withPreparedInfo___block_invoke()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"PXPeopleProgressDidChangeNotification" object:0];
}

- (void)updateProgressFromIsReadyForAnalysis:(BOOL)a3 progressReport:(id *)a4
{
  v4 = a3;
  var0 = a4->var0;
  var1 = a4->var1;
  var2 = a4->var2;
  lock._os_unfair_lock_opaque = [(PXPeopleProgressDataSource *)self progressLock];
  os_unfair_lock_lock(&lock);
  [(PXPeopleProgressDataSource *)self setAllowedAssetCount:var0];
  [(PXPeopleProgressDataSource *)self setProcessedToLatestVersionAssetCount:var1];
  [(PXPeopleProgressDataSource *)self setProcessedToAnyVersionAssetCount:var2];
  [(PXPeopleProgressDataSource *)self setPendingToLatestVersionAssetCount:[PXPeopleProgressDataSource pendingCountForAllowedCount:var0 processedCount:var1]];
  [(PXPeopleProgressDataSource *)self setPendingToAnyVersionAssetCount:[PXPeopleProgressDataSource pendingCountForAllowedCount:var0 processedCount:var2]];
  [(PXPeopleProgressDataSource *)self setIsReadyForAnalysis:v4];
  [(PXPeopleProgressDataSource *)self setCountCacheValid:1];
  os_unfair_lock_unlock(&lock);
}

- (id)_fetchPeople
{
  v2 = [(PXPeopleProgressDataSource *)self photoLibrary];
  v3 = [v2 librarySpecificFetchOptions];

  [v3 setFetchLimit:1];
  [v3 setPersonContext:1];
  v4 = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
  [v3 setIncludedDetectionTypes:v4];

  v5 = [MEMORY[0x1E6978980] fetchPersonsWithOptions:v3];

  return v5;
}

- (BOOL)isPhotoLibraryReadyForAnalysis
{
  v2 = [(PXPeopleProgressDataSource *)self photoLibrary];
  v3 = [v2 isReadyForAnalysis_FOR_UI_USE_ONLY_NON_BLOCKING];

  return v3;
}

- (void)syncUpdateProgressWithReportBlock:(id)a3
{
  v4 = a3;
  v5 = [(PXPeopleProgressDataSource *)self isPhotoLibraryReadyForAnalysis];
  if (v5)
  {
    v6 = [(PXPeopleProgressDataSource *)self photoLibrary];
    [(PXPeopleProgressDataSource *)self progressReportForLibrary:v6];
    v14 = *&lock[0]._os_unfair_lock_opaque;
    v15 = v12;
    v9 = v13;
  }

  else
  {
    +[PXPeopleProgressDataSource _invalidProgressReport];
    v14 = *&lock[0]._os_unfair_lock_opaque;
    v15 = v12;
    v9 = v13;
  }

  *&lock[0]._os_unfair_lock_opaque = v14;
  v12 = v15;
  v13 = v9;
  [(PXPeopleProgressDataSource *)self updateProgressFromIsReadyForAnalysis:v5 progressReport:lock, v9];
  if (v4)
  {
    lock[0]._os_unfair_lock_opaque = [(PXPeopleProgressDataSource *)self progressLock];
    os_unfair_lock_lock(lock);
    v7 = [(PXPeopleProgressDataSource *)self processedToLatestVersionAssetCount];
    v8 = [(PXPeopleProgressDataSource *)self processedToAnyVersionAssetCount];
    os_unfair_lock_unlock(lock);
    v4[2](v4, v5, v7, v8, v10, v10.n128_f64[1]);
  }
}

- (void)requestPersonPromoterStatusWithCompletionBlock:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXPeopleProgressDataSource.m" lineNumber:144 description:{@"Invalid parameter not satisfying: %@", @"completionBlock"}];
  }

  objc_initWeak(&location, self);
  v6 = [(PXPeopleProgressDataSource *)self personPromoterQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__PXPeopleProgressDataSource_requestPersonPromoterStatusWithCompletionBlock___block_invoke;
  block[3] = &unk_1E774AA30;
  objc_copyWeak(&v11, &location);
  v10 = v5;
  v7 = v5;
  dispatch_async(v6, block);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __77__PXPeopleProgressDataSource_requestPersonPromoterStatusWithCompletionBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained photoLibrary];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __77__PXPeopleProgressDataSource_requestPersonPromoterStatusWithCompletionBlock___block_invoke_2;
  v4[3] = &unk_1E774B168;
  v5 = *(a1 + 32);
  [v3 personPromotionProcessingStatusForUserInterface:v4];
}

void __77__PXPeopleProgressDataSource_requestPersonPromoterStatusWithCompletionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:@"status"];
  [v7 BOOLValue];

  (*(*(a1 + 32) + 16))();
  if (v6)
  {
    v8 = PLUIGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315650;
      v10 = "[PXPeopleProgressDataSource requestPersonPromoterStatusWithCompletionBlock:]_block_invoke_2";
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_ERROR, "%s - error checking person promotion status: %@, results: %@", &v9, 0x20u);
    }
  }
}

- (void)asyncUpdateProgressWithReportBlock:(id)a3
{
  v4 = a3;
  v5 = [(PXPeopleProgressDataSource *)self scanningProgressQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__PXPeopleProgressDataSource_asyncUpdateProgressWithReportBlock___block_invoke;
  v7[3] = &unk_1E774C2F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)updateProgressIfNeededWithReportBlock:(id)a3
{
  v4 = a3;
  lock._os_unfair_lock_opaque = [(PXPeopleProgressDataSource *)self progressLock];
  os_unfair_lock_lock(&lock);
  v5 = [(PXPeopleProgressDataSource *)self countCacheValid];
  os_unfair_lock_unlock(&lock);
  if (!v5)
  {
    [(PXPeopleProgressDataSource *)self syncUpdateProgressWithReportBlock:v4];
  }
}

- (void)loadQueryData
{
  v3 = [(PXPeopleProgressDataSource *)self photoLibrary];
  [v3 px_registerChangeObserver:self];

  v4 = [(PXPeopleProgressDataSource *)self _fetchPeople];
  lock._os_unfair_lock_opaque = [(PXPeopleProgressDataSource *)self progressLock];
  os_unfair_lock_lock(&lock);
  [(PXPeopleProgressDataSource *)self setHomeResult:v4];
  os_unfair_lock_unlock(&lock);
}

- (BOOL)hasHomePeople
{
  lock._os_unfair_lock_opaque = [(PXPeopleProgressDataSource *)self progressLock];
  os_unfair_lock_lock(&lock);
  v3 = [(PXPeopleProgressDataSource *)self homeResult];
  os_unfair_lock_unlock(&lock);
  v4 = [v3 count] != 0;

  return v4;
}

- (void)dealloc
{
  [(PHPhotoLibrary *)self->_photoLibrary px_unregisterChangeObserver:self];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PXPeopleProgressDataSource;
  [(PXPeopleProgressDataSource *)&v4 dealloc];
}

- (PXPeopleProgressDataSource)initWithPhotoLibrary:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = PXPeopleProgressDataSource;
  v6 = [(PXPeopleProgressDataSource *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibrary, a3);
    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    v9 = *MEMORY[0x1E69DDBC0];
    [v8 addObserver:v7 selector:sel__logFaceCounts name:*MEMORY[0x1E69DDBA8] object:0];
    [v8 addObserver:v7 selector:sel_appWillEnterForeground name:v9 object:0];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.people.progressDataSource.scanningProgress", v10);
    scanningProgressQueue = v7->_scanningProgressQueue;
    v7->_scanningProgressQueue = v11;

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.people.progressDataSource.personPromoter", v13);
    personPromoterQueue = v7->_personPromoterQueue;
    v7->_personPromoterQueue = v14;

    v7->_progressLock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

+ (int64_t)pendingCountForAllowedCount:(int64_t)a3 processedCount:(int64_t)a4
{
  if (a3 <= a4)
  {
    return 0;
  }

  else
  {
    return a3 - a4;
  }
}

+ ($DF4FB41D2F0E3F59E20087ACD782DC9D)_invalidProgressReport
{
  retstr->var1 = -1;
  retstr->var2 = -1;
  retstr->var0 = -1;
  __asm { FMOV            V0.2D, #-1.0 }

  *&retstr->var3 = _Q0;
  return result;
}

@end
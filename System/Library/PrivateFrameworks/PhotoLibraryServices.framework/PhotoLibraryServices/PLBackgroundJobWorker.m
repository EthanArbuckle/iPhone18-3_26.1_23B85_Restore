@interface PLBackgroundJobWorker
+ (BOOL)supportsWellKnownPhotoLibraryIdentifier:(int64_t)a3;
+ (int64_t)availableDiskSpaceForVolumeURL:(id)a3;
- (BOOL)hasEnoughDiskSpaceToContinue:(id)a3;
- (PLBackgroundJobStatusCenter)statusCenter;
- (PLBackgroundJobWorker)initWithLibraryBundle:(id)a3;
- (id)pendingJobsInLibrary:(id)a3;
- (id)photoLibraryWithDatabaseContext:(id)a3;
- (id)redactedDescription;
- (id)workItemsNeedingProcessingInLibrary:(id)a3;
- (id)workItemsNeedingProcessingInLibrary:(id)a3 validCriterias:(id)a4;
- (unint64_t)type;
- (void)_handleAllJobsCompleteInLibrary:(id)a3 allowOutsideLimiter:(BOOL)a4;
- (void)_processNextManagedObjectInLibrary:(id)a3 continueRunning:(BOOL)a4 allowOutsideLimiter:(BOOL)a5 reportProgressUsingBlock:(id)a6;
- (void)performWorkOnItem:(id)a3 inLibrary:(id)a4 completion:(id)a5;
- (void)startWorkInLibrary:(id)a3 withWorkItemsNeedingProcessing:(id)a4 reportProgressUsingBlock:(id)a5 withCompletion:(id)a6;
- (void)stopAllWork;
- (void)stopWorkingOnItem:(id)a3;
@end

@implementation PLBackgroundJobWorker

- (PLBackgroundJobStatusCenter)statusCenter
{
  WeakRetained = objc_loadWeakRetained(&self->_statusCenter);

  return WeakRetained;
}

- (unint64_t)type
{
  v2 = self;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
}

- (void)stopWorkingOnItem:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = PLAbstractMethodException();
  objc_exception_throw(v6);
}

- (void)performWorkOnItem:(id)a3 inLibrary:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = PLAbstractMethodException();
  objc_exception_throw(v12);
}

- (id)workItemsNeedingProcessingInLibrary:(id)a3 validCriterias:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = PLAbstractMethodException();
  objc_exception_throw(v9);
}

- (id)workItemsNeedingProcessingInLibrary:(id)a3
{
  v4 = a3;
  v5 = +[PLBackgroundJobCriteria allKnownCriteria];
  v6 = [(PLBackgroundJobWorker *)self workItemsNeedingProcessingInLibrary:v4 validCriterias:v5];

  return v6;
}

- (id)photoLibraryWithDatabaseContext:(id)a3
{
  v4 = a3;
  v5 = [(PLBackgroundJobWorker *)self workerName];
  v6 = [v4 newShortLivedLibraryWithName:{objc_msgSend(v5, "UTF8String")}];

  return v6;
}

- (BOOL)hasEnoughDiskSpaceToContinue:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(PLPhotoLibraryBundle *)self->_libraryBundle pathManager];
  v7 = [v6 libraryURL];
  v8 = [v5 availableDiskSpaceForVolumeURL:v7];

  if (v8 <= 2)
  {
    v9 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E69BFF48];
    v14 = *MEMORY[0x1E696A278];
    v15[0] = @"stopping due to low available disk space";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v12 = [v9 errorWithDomain:v10 code:46516 userInfo:v11];
    v4[2](v4, v12);
  }

  return v8 > 2;
}

- (void)stopAllWork
{
  v22 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v3 = PLBackgroundJobServiceGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    workerName = self->_workerName;
    *buf = 138543362;
    v21 = workerName;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_INFO, "%{public}@ worker told to stop all work. Setting _shouldStop flag", buf, 0xCu);
  }

  self->_shouldStop = 1;
  v5 = [(PLBackgroundJobWorker *)self isInterruptible];
  v6 = PLBackgroundJobServiceGetLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      v8 = self->_workerName;
      *buf = 138543362;
      v21 = v8;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_INFO, "%{public}@ IS interruptible, asking it to stop working async", buf, 0xCu);
    }

    v9 = qos_class_self();
    v10 = dispatch_get_global_queue(v9, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __36__PLBackgroundJobWorker_stopAllWork__block_invoke;
    block[3] = &unk_1E75781E8;
    block[4] = self;
    dispatch_async(v10, block);
  }

  else
  {
    if (v7)
    {
      v11 = self->_workerName;
      *buf = 138543362;
      v21 = v11;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_INFO, "%{public}@ is not interruptible", buf, 0xCu);
    }
  }

  objc_initWeak(buf, self);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __36__PLBackgroundJobWorker_stopAllWork__block_invoke_61;
  v17[3] = &unk_1E75788C0;
  objc_copyWeak(&v18, buf);
  v12 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, v17);
  workerForcefullyStopHandler = self->_workerForcefullyStopHandler;
  self->_workerForcefullyStopHandler = v12;

  v14 = dispatch_time(0, 10000000000);
  v15 = qos_class_self();
  v16 = dispatch_get_global_queue(v15, 0);
  dispatch_after(v14, v16, self->_workerForcefullyStopHandler);

  os_unfair_lock_unlock(&self->_lock);
  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);
}

uint64_t __36__PLBackgroundJobWorker_stopAllWork__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __36__PLBackgroundJobWorker_stopAllWork__block_invoke_2;
  v2[3] = &unk_1E75781E8;
  v2[4] = *(a1 + 32);
  return [PLManagedObjectContext _pl_megamoc_runWithPerformWarningsSuppressed:v2];
}

void __36__PLBackgroundJobWorker_stopAllWork__block_invoke_61(uint64_t a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = __36__PLBackgroundJobWorker_stopAllWork__block_invoke_2_62;
  v1[3] = &unk_1E75788C0;
  objc_copyWeak(&v2, (a1 + 32));
  [PLManagedObjectContext _pl_megamoc_runWithPerformWarningsSuppressed:v1];
  objc_destroyWeak(&v2);
}

void __36__PLBackgroundJobWorker_stopAllWork__block_invoke_2_62(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = MEMORY[0x1E696ABC0];
    v3 = *MEMORY[0x1E69BFF48];
    v12 = *MEMORY[0x1E696A578];
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Worker taking too long to stop, completionHandler forcefully called"];
    v13[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v6 = [v2 errorWithDomain:v3 code:50001 userInfo:v5];

    v7 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = WeakRetained[9];
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_INFO, "Worker %{public}@ taking too long to stop, about to forcefully call its completionHandler", &v10, 0xCu);
    }

    v9 = WeakRetained[2];
    if (v9)
    {
      (*(v9 + 16))(v9, v6);
    }
  }

  else
  {
    v6 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_INFO, "Worker already nil-ed out in _workerForcefullyStopHandler, returning", &v10, 2u);
    }
  }
}

void __36__PLBackgroundJobWorker_stopAllWork__block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = PLBackgroundJobServiceGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 72);
    v8 = 138543362;
    v9 = v3;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_INFO, "Going to interrupt %{public}@", &v8, 0xCu);
  }

  os_unfair_lock_lock((*(a1 + 32) + 64));
  v4 = [*(*(a1 + 32) + 48) count];
  v5 = [*(*(a1 + 32) + 48) firstObject];
  os_unfair_lock_unlock((*(a1 + 32) + 64));
  if (v4)
  {
    [*(a1 + 32) stopWorkingOnItem:v5];
    v6 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(*(a1 + 32) + 72);
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_INFO, "%{public}@ interrupted!", &v8, 0xCu);
    }
  }
}

- (void)startWorkInLibrary:(id)a3 withWorkItemsNeedingProcessing:(id)a4 reportProgressUsingBlock:(id)a5 withCompletion:(id)a6
{
  v29 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [a6 copy];
  workerCompleteCompletionHandler = self->_workerCompleteCompletionHandler;
  self->_workerCompleteCompletionHandler = v13;

  os_unfair_lock_lock(&self->_lock);
  if ([v11 count])
  {
    [(NSMutableArray *)self->_pendingJobs addObjectsFromArray:v11];
  }

  self->_totalJobsCount = [(NSMutableArray *)self->_pendingJobs count];
  os_unfair_lock_unlock(&self->_lock);
  v15 = PLBackgroundJobServiceGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    workerName = self->_workerName;
    v17 = [(NSMutableArray *)self->_pendingJobs count];
    *buf = 138543618;
    v26 = workerName;
    v27 = 2048;
    v28 = v17;
    _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_INFO, "%{public}@ worker has %tu pending jobs. Starting on first one", buf, 0x16u);
  }

  v12[2](v12, 2, 0, self->_workerName);
  WeakRetained = objc_loadWeakRetained(&self->_statusCenter);
  [WeakRetained recordStartingWorker:self withJobCount:{-[NSMutableArray count](self->_pendingJobs, "count")}];

  v19 = +[PLConcurrencyLimiter sharedLimiter];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __115__PLBackgroundJobWorker_startWorkInLibrary_withWorkItemsNeedingProcessing_reportProgressUsingBlock_withCompletion___block_invoke;
  v22[3] = &unk_1E7576F38;
  v22[4] = self;
  v23 = v10;
  v24 = v12;
  v20 = v12;
  v21 = v10;
  [v19 async:v22 identifyingBlock:0 library:v21];
}

- (id)pendingJobsInLibrary:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__106846;
  v19 = __Block_byref_object_dispose__106847;
  v20 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__PLBackgroundJobWorker_pendingJobsInLibrary___block_invoke;
  aBlock[3] = &unk_1E7578820;
  v14 = &v15;
  aBlock[4] = self;
  v5 = v4;
  v13 = v5;
  v6 = _Block_copy(aBlock);
  if ([objc_opt_class() usesMultipleLibrariesConcurrently])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __46__PLBackgroundJobWorker_pendingJobsInLibrary___block_invoke_2;
    v10[3] = &unk_1E7576AA0;
    v11 = v6;
    [PLManagedObjectContext _pl_megamoc_runWithPerformWarningsSuppressed:v10];
    v7 = v11;
  }

  else
  {
    v7 = +[PLConcurrencyLimiter sharedLimiter];
    [v7 sync:v6 identifyingBlock:0 library:v5];
  }

  v8 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v8;
}

void __46__PLBackgroundJobWorker_pendingJobsInLibrary___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) workItemsNeedingProcessingInLibrary:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_handleAllJobsCompleteInLibrary:(id)a3 allowOutsideLimiter:(BOOL)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!a4 && !+[PLConcurrencyLimiter isRunningUnderLimiter])
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PLBackgroundJobWorker.m" lineNumber:248 description:@"expected to already be on the limiter"];
  }

  os_unfair_lock_assert_not_owner(&self->_lock);
  v8 = PLBackgroundJobServiceGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    workerName = self->_workerName;
    v12 = 138543362;
    v13 = workerName;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_INFO, "%{public}@ worker finished processing all jobs", &v12, 0xCu);
  }

  (*(self->_workerCompleteCompletionHandler + 2))();
  WeakRetained = objc_loadWeakRetained(&self->_statusCenter);
  [WeakRetained recordFinishingWorker:self];
}

- (void)_processNextManagedObjectInLibrary:(id)a3 continueRunning:(BOOL)a4 allowOutsideLimiter:(BOOL)a5 reportProgressUsingBlock:(id)a6
{
  v55 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a6;
  if (!a5 && !+[PLConcurrencyLimiter isRunningUnderLimiter])
  {
    v36 = [MEMORY[0x1E696AAA8] currentHandler];
    [v36 handleFailureInMethod:a2 object:self file:@"PLBackgroundJobWorker.m" lineNumber:116 description:@"expected to already be on the limiter"];
  }

  os_unfair_lock_lock(&self->_lock);
  v13 = [(NSMutableArray *)self->_pendingJobs count];
  v14 = [(NSMutableArray *)self->_pendingJobs firstObject];
  shouldStop = self->_shouldStop;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __121__PLBackgroundJobWorker__processNextManagedObjectInLibrary_continueRunning_allowOutsideLimiter_reportProgressUsingBlock___block_invoke;
  aBlock[3] = &unk_1E75760C8;
  v16 = v12;
  v47 = v16;
  aBlock[4] = self;
  v48 = a5;
  v17 = v11;
  v46 = v17;
  v18 = _Block_copy(aBlock);
  v19 = v18;
  if (!v17)
  {
    v28 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      libraryBundle = self->_libraryBundle;
      *buf = 138412290;
      v50 = libraryBundle;
      _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_ERROR, "_photoLibrary is nil when processing next object, setting shouldStop to YES to initiate job completion. Bundle %@", buf, 0xCu);
    }

    if (a4)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (!a4)
  {
LABEL_14:
    v30 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      workerName = self->_workerName;
      *buf = 138543362;
      v50 = workerName;
      _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_INFO, "%{public}@ continueRunning set to NO. Setting shouldStop to YES to initiate job completion", buf, 0xCu);
    }

    goto LABEL_17;
  }

  if (!shouldStop)
  {
    if (v13)
    {
      v20 = PLBackgroundJobServiceGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = self->_workerName;
        totalJobsCount = self->_totalJobsCount;
        *buf = 138544130;
        v50 = v21;
        v51 = 1024;
        *v52 = totalJobsCount - v13 + 1;
        *&v52[4] = 2048;
        *&v52[6] = totalJobsCount;
        v53 = 2114;
        v54 = v14;
        _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_INFO, "%{public}@ worker processing object %d of %tu: %{public}@", buf, 0x26u);
      }

      objc_initWeak(buf, self);
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __121__PLBackgroundJobWorker__processNextManagedObjectInLibrary_continueRunning_allowOutsideLimiter_reportProgressUsingBlock___block_invoke_54;
      v40[3] = &unk_1E7575FD0;
      objc_copyWeak(v44, buf);
      v43 = v16;
      v23 = v17;
      v41 = v23;
      v44[1] = v13;
      v24 = v14;
      v42 = v24;
      v25 = _Block_copy(v40);
      currentManagedObjectCompletionHandler = self->_currentManagedObjectCompletionHandler;
      self->_currentManagedObjectCompletionHandler = v25;

      atomic_fetch_add(&self->_workerAtomicCounter, 1uLL);
      v27 = +[PLConcurrencyLimiter sharedLimiter];
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __121__PLBackgroundJobWorker__processNextManagedObjectInLibrary_continueRunning_allowOutsideLimiter_reportProgressUsingBlock___block_invoke_3_60;
      v37[3] = &unk_1E75761B8;
      v37[4] = self;
      v38 = v24;
      v39 = v23;
      [v27 async:v37 identifyingBlock:0 library:v39];

      objc_destroyWeak(v44);
      objc_destroyWeak(buf);
    }

    else
    {
      v18[2](v18);
    }

    goto LABEL_20;
  }

LABEL_17:
  v32 = PLBackgroundJobServiceGetLog();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    v33 = self->_workerName;
    v34 = [(NSMutableArray *)self->_pendingJobs count];
    *buf = 138543618;
    v50 = v33;
    v51 = 2048;
    *v52 = v34;
    _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_INFO, "%{public}@ told to stop halfway! Clearing %tu jobs from _pendingJobs queue", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_statusCenter);
  [WeakRetained recordStoppingWorker:self withRemainingJobCount:{-[NSMutableArray count](self->_pendingJobs, "count")}];

  [(NSMutableArray *)self->_pendingJobs removeAllObjects];
  v19[2](v19);
LABEL_20:
  os_unfair_lock_unlock(&self->_lock);
}

void __121__PLBackgroundJobWorker__processNextManagedObjectInLibrary_continueRunning_allowOutsideLimiter_reportProgressUsingBlock___block_invoke(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  if (*(a1 + 56) == 1)
  {
    v2 = qos_class_self();
    v3 = dispatch_get_global_queue(v2, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __121__PLBackgroundJobWorker__processNextManagedObjectInLibrary_continueRunning_allowOutsideLimiter_reportProgressUsingBlock___block_invoke_2;
    block[3] = &unk_1E7578848;
    v4 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v5 = &v10;
    v10 = v4;
    dispatch_async(v3, block);
  }

  else
  {
    v3 = +[PLConcurrencyLimiter sharedLimiter];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __121__PLBackgroundJobWorker__processNextManagedObjectInLibrary_continueRunning_allowOutsideLimiter_reportProgressUsingBlock___block_invoke_4;
    v7[3] = &unk_1E7578848;
    v6 = *(a1 + 40);
    v7[4] = *(a1 + 32);
    v5 = &v8;
    v8 = v6;
    [v3 async:v7 identifyingBlock:0 library:*(a1 + 40)];
  }
}

void __121__PLBackgroundJobWorker__processNextManagedObjectInLibrary_continueRunning_allowOutsideLimiter_reportProgressUsingBlock___block_invoke_54(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained)
  {
    v11 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v12 = "Worker already nil-ed out in _currentManagedObjectCompletionHandler, returning";
      v13 = v11;
      v14 = 2;
LABEL_12:
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_INFO, v12, buf, v14);
    }

LABEL_13:

    goto LABEL_37;
  }

  if (!v3)
  {
    (*(*(a1 + 48) + 16))();
  }

  os_unfair_lock_assert_not_owner(WeakRetained + 16);
  atomic_fetch_add(WeakRetained + 4, 1uLL);
  v5 = atomic_load(WeakRetained + 4);
  v6 = atomic_load(WeakRetained + 3);
  if (v5 != v6)
  {
    v11 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v15 = *(WeakRetained + 9);
      v16 = atomic_load(WeakRetained + 4);
      v17 = atomic_load(WeakRetained + 3);
      *buf = 138544130;
      v46 = v15;
      v47 = 2048;
      *v48 = v16;
      *&v48[8] = 2048;
      *&v48[10] = v17;
      *&v48[18] = 2114;
      *&v48[20] = v3;
      v12 = "Worker %{public}@ completionHandler called more than once, dropping subsequent call. completionHandlerAtomicCounter: %lld. workerAtomicCounter: %lld. Error: %{public}@";
      v13 = v11;
      v14 = 42;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v7 = PLIsErrorEqualToCode();
  v8 = "PLBackgroundJobAssetResourceUploadJobWorkerError";
  if (v7)
  {
    v9 = *(WeakRetained + 10);
    os_unfair_lock_lock(&_background_job_worker_crashtracer_lock);
    if (v9)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Worker at fault: %@, wait time: %0.1f seconds", v9, 0x4024000000000000];
      [v10 UTF8String];
      __strlcpy_chk();
      qword_1EAFF9EC8 = &_background_job_worker_crashtracer_msg_buffer;
      qword_1EAFF9EF8 = [v9 hash];

      v8 = "PLBackgroundJobAssetResourceUploadJobWorkerError";
    }

    else
    {
      qword_1EAFF9EC8 = 0;
    }

    os_unfair_lock_unlock(&_background_job_worker_crashtracer_lock);

    v19 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      v20 = *(WeakRetained + 9);
      *buf = 138543362;
      v46 = v20;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_FAULT, "Worker %{public}@ had to be forcefully stopped by manually calling its completion handler. See Application Specific Information in generated crash report for more info.", buf, 0xCu);
    }
  }

  else
  {
    v18 = *(a1 + 32);
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __121__PLBackgroundJobWorker__processNextManagedObjectInLibrary_continueRunning_allowOutsideLimiter_reportProgressUsingBlock___block_invoke_55;
    v43[3] = &unk_1E75781E8;
    v44 = v18;
    [v44 performBlockAndWait:v43];
    v19 = v44;
  }

  v21 = PLBackgroundJobServiceGetLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = *(WeakRetained + 9);
    v23 = *(WeakRetained + 7);
    v24 = v23 - *(a1 + 64) + 1;
    v25 = *(a1 + 40);
    *buf = 138544130;
    v46 = v22;
    v47 = 1024;
    *v48 = v24;
    *&v48[4] = 2048;
    *&v48[6] = v23;
    *&v48[14] = 2114;
    *&v48[16] = v25;
    _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_INFO, "%{public}@ worker processed object %d of %tu: %{public}@", buf, 0x26u);
  }

  if (!v3)
  {
    goto LABEL_30;
  }

  v26 = PLBackgroundJobServiceGetLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = *(WeakRetained + 9);
    v28 = *(a1 + 40);
    *buf = 138543874;
    v46 = v27;
    v47 = 2114;
    *v48 = v28;
    *&v48[8] = 2114;
    *&v48[10] = v3;
    _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_ERROR, "%{public}@ worker reports error after processing object %{public}@, error: %{public}@", buf, 0x20u);
  }

  if (PLIsErrorEqualToCode())
  {
    goto LABEL_29;
  }

  if ((PLIsErrorEqualToCode() & 1) == 0 && !PLIsErrorEqualToCode())
  {
LABEL_30:
    v31 = 0;
    goto LABEL_31;
  }

  atomic_store(1u, WeakRetained + 69);
  v29 = PLBackgroundJobServiceGetLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = [WeakRetained workerDetailedName];
    *buf = 138412290;
    v46 = v30;
    _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_INFO, "%@ setting _shouldDeferTask to YES", buf, 0xCu);
  }

LABEL_29:
  v31 = 1;
LABEL_31:
  os_unfair_lock_lock(WeakRetained + 16);
  [*(WeakRetained + 6) removeObject:*(a1 + 40)];
  os_unfair_lock_unlock(WeakRetained + 16);
  v32 = *(WeakRetained + 5);
  if (v32)
  {
    dispatch_block_cancel(v32);
  }

  if (v7)
  {
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = *(v8 + 76);
    v39[2] = __121__PLBackgroundJobWorker__processNextManagedObjectInLibrary_continueRunning_allowOutsideLimiter_reportProgressUsingBlock___block_invoke_57;
    v39[3] = &unk_1E75760C8;
    v39[4] = WeakRetained;
    v40 = *(a1 + 32);
    v42 = v31;
    v41 = *(a1 + 48);
    [PLManagedObjectContext _pl_megamoc_runWithPerformWarningsSuppressed:v39];

    v33 = v40;
  }

  else
  {
    v34 = +[PLConcurrencyLimiter sharedLimiter];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = *(v8 + 76);
    v35[2] = __121__PLBackgroundJobWorker__processNextManagedObjectInLibrary_continueRunning_allowOutsideLimiter_reportProgressUsingBlock___block_invoke_2_58;
    v35[3] = &unk_1E75760C8;
    v35[4] = WeakRetained;
    v36 = *(a1 + 32);
    v38 = v31;
    v37 = *(a1 + 48);
    [v34 async:v35 identifyingBlock:0 library:*(a1 + 32)];

    v33 = v36;
  }

LABEL_37:
}

void __121__PLBackgroundJobWorker__processNextManagedObjectInLibrary_continueRunning_allowOutsideLimiter_reportProgressUsingBlock___block_invoke_55(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) managedObjectContext];
  [v1 reset];
  v2 = [v1 queryGenerationToken];

  if (v2)
  {
    v3 = [MEMORY[0x1E695D6E0] currentQueryGenerationToken];
    v7 = 0;
    v4 = [v1 setQueryGenerationFromToken:v3 error:&v7];
    v5 = v7;

    if ((v4 & 1) == 0)
    {
      v6 = PLBackgroundJobServiceGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v9 = v5;
        _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Unable to reset query generation from PLBackgroundJobWorker, error: %{public}@", buf, 0xCu);
      }
    }
  }
}

void __121__PLBackgroundJobWorker__processNextManagedObjectInLibrary_continueRunning_allowOutsideLimiter_reportProgressUsingBlock___block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __121__PLBackgroundJobWorker__processNextManagedObjectInLibrary_continueRunning_allowOutsideLimiter_reportProgressUsingBlock___block_invoke_3;
  v2[3] = &unk_1E7578848;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  [PLManagedObjectContext _pl_megamoc_runWithPerformWarningsSuppressed:v2];
}

- (id)redactedDescription
{
  v3 = MEMORY[0x1E696AEC0];
  workerName = self->_workerName;
  v5 = [(PLPhotoLibraryBundle *)self->_libraryBundle libraryServicesManager];
  [v5 wellKnownPhotoLibraryIdentifier];
  v6 = PLStringFromWellKnownPhotoLibraryIdentifier();
  v7 = [v3 stringWithFormat:@"%@:%@ - %tu", workerName, v6, -[NSMutableArray count](self->_pendingJobs, "count")];

  return v7;
}

- (PLBackgroundJobWorker)initWithLibraryBundle:(id)a3
{
  v5 = a3;
  v21.receiver = self;
  v21.super_class = PLBackgroundJobWorker;
  v6 = [(PLBackgroundJobWorker *)&v21 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_libraryBundle, a3);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    workerName = v7->_workerName;
    v7->_workerName = v9;

    v11 = MEMORY[0x1E696AEC0];
    v12 = v7->_workerName;
    v13 = [(PLPhotoLibraryBundle *)v7->_libraryBundle pathManager];
    v14 = [v13 libraryURL];
    v15 = [v14 absoluteString];
    v16 = [v11 stringWithFormat:@"%@-@-%@", v12, v15];
    workerDetailedName = v7->_workerDetailedName;
    v7->_workerDetailedName = v16;

    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingJobs = v7->_pendingJobs;
    v7->_pendingJobs = v18;

    v7->_lock._os_unfair_lock_opaque = 0;
    v7->_shouldStop = 0;
  }

  return v7;
}

+ (BOOL)supportsWellKnownPhotoLibraryIdentifier:(int64_t)a3
{
  v3 = a1;
  v4 = PLAbstractMethodException();
  objc_exception_throw(v4);
}

+ (int64_t)availableDiskSpaceForVolumeURL:(id)a3
{
  v9 = 0;
  v3 = [a3 getResourceValue:&v9 forKey:*MEMORY[0x1E695DD60] error:0];
  v4 = v9;
  v5 = v4;
  if (!v3 || ((v6 = [v4 unsignedLongLongValue], !(v6 >> 29)) ? (v7 = 1) : (v7 = 2), v6 >> 30))
  {
    v7 = 3;
  }

  return v7;
}

@end
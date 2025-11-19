@interface PLBackgroundJobWorkerCoordinator
- (BOOL)_isValidWorkerClass:(Class)a3 bundle:(id)a4;
- (PLBackgroundJobWorkerCoordinator)initWithWorkerClassesAsStrings:(id)a3 workerMode:(signed __int16)a4 statusCenter:(id)a5;
- (PLBackgroundJobWorkerCoordinator)initWithWorkerCoordinatorWorkerMode:(signed __int16)a3 statusCenter:(id)a4;
- (PLBackgroundJobWorkerCoordinatorDelegate)delegate;
- (id)_workersForBundle:(id)a3;
- (id)pendingJobsForBundle:(id)a3;
- (id)pendingJobsForBundle:(id)a3 workerTypes:(id)a4;
- (void)_handleAllWorkersCompleted;
- (void)_inq_timerQueue_timerEventHandlerWithTimer:(id)a3 workerType:(unint64_t)a4;
- (void)_processNextWorkerInLibraryBundle:(id)a3 reportProgressUsingBlock:(id)a4;
- (void)_signalWorkerAtDate:(id)a3 workerType:(unint64_t)a4 bundle:(id)a5;
- (void)stopAllBackgroundJobs;
- (void)submitBundleForProcessing:(id)a3 withCriteria:(id)a4 reportProgressUsingBlock:(id)a5;
@end

@implementation PLBackgroundJobWorkerCoordinator

- (PLBackgroundJobWorkerCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_inq_timerQueue_timerEventHandlerWithTimer:(id)a3 workerType:(unint64_t)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLBackgroundJobServiceGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v9 = a4;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "Signal again timer fired for worker type: %lu", buf, 0xCu);
  }

  v7 = v5;
  PLSafeRunWithUnfairLock();
}

void __90__PLBackgroundJobWorkerCoordinator__inq_timerQueue_timerEventHandlerWithTimer_workerType___block_invoke(void *a1)
{
  v2 = *(a1[4] + 72);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1[6]];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = a1[5];

  if (v4 == v5)
  {
    v6 = *(a1[4] + 72);
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1[6]];
    [v6 setObject:0 forKeyedSubscript:v7];
  }
}

- (void)_signalWorkerAtDate:(id)a3 workerType:(unint64_t)a4 bundle:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  if (!v9)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PLBackgroundJobWorkerCoordinator.m" lineNumber:449 description:{@"Invalid parameter not satisfying: %@", @"date"}];
  }

  v11 = v9;
  v16 = v10;
  v12 = v10;
  v13 = PLSafeResultWithUnfairLock();
  if (v13)
  {
    v14 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218242;
      v18 = a4;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEBUG, "Starting signal again timer for worker type: %lu with date: %@", buf, 0x16u);
    }

    [v13 start];
  }
}

PLBackgroundJobWorkerSignalTimer *__74__PLBackgroundJobWorkerCoordinator__signalWorkerAtDate_workerType_bundle___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 56)];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (!v4)
  {
    goto LABEL_4;
  }

  if ([v4 shouldCancelAndRescheduleWithDate:*(a1 + 40)])
  {
    [v4 cancel];
LABEL_4:
    objc_initWeak(&location, *(a1 + 32));
    v5 = [PLBackgroundJobWorkerSignalTimer alloc];
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 32) + 56);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __74__PLBackgroundJobWorkerCoordinator__signalWorkerAtDate_workerType_bundle___block_invoke_2;
    v14[3] = &unk_1E7572528;
    objc_copyWeak(v15, &location);
    v15[1] = *(a1 + 56);
    v10 = [(PLBackgroundJobWorkerSignalTimer *)v5 initWithQueue:v7 bundle:v8 workerType:v9 date:v6 eventHandler:v14];
    v11 = *(*(a1 + 32) + 72);
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 56)];
    [v11 setObject:v10 forKeyedSubscript:v12];

    objc_destroyWeak(v15);
    objc_destroyWeak(&location);
    goto LABEL_6;
  }

  v10 = 0;
LABEL_6:

  return v10;
}

void __74__PLBackgroundJobWorkerCoordinator__signalWorkerAtDate_workerType_bundle___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _inq_timerQueue_timerEventHandlerWithTimer:v3 workerType:*(a1 + 40)];
}

- (void)_handleAllWorkersCompleted
{
  v3 = qos_class_self();
  v4 = dispatch_get_global_queue(v3, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__PLBackgroundJobWorkerCoordinator__handleAllWorkersCompleted__block_invoke;
  block[3] = &unk_1E75781E8;
  block[4] = self;
  dispatch_async(v4, block);
}

void __62__PLBackgroundJobWorkerCoordinator__handleAllWorkersCompleted__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 88));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 88));
    [v4 workerCoordinatorDidFinishAllSubmittedJobsOnBundle:*(a1 + 32)];
  }
}

- (void)_processNextWorkerInLibraryBundle:(id)a3 reportProgressUsingBlock:(id)a4
{
  v65 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  os_unfair_lock_lock(&self->_lock);
  v9 = [(NSMutableArray *)self->_pendingWorkers firstObject];
  currentWorker = self->_currentWorker;
  self->_currentWorker = v9;

  v11 = [(PLBackgroundJobWorkerCriteriaTuple *)self->_currentWorker worker];
  v41 = [(PLBackgroundJobWorkerCriteriaTuple *)self->_currentWorker criteria];
  v12 = [(NSMutableArray *)self->_pendingWorkers count];
  WeakRetained = objc_loadWeakRetained(&self->_statusCenter);
  [v11 setStatusCenter:WeakRetained];

  os_unfair_lock_unlock(&self->_lock);
  if (v12)
  {
    v14 = [v7 libraryServicesManager];
    v15 = [v14 databaseContext];

    v16 = [v11 photoLibraryWithDatabaseContext:v15];
    if (!v16)
    {
      if (MEMORY[0x19EAEE520]())
      {
        v16 = [PLDatabaseContext newShortLivedLibraryWithName:"[PLBackgroundJobWorkerCoordinator _processNextWorkerInLibraryBundle:reportProgressUsingBlock:]" bundle:v7];
      }

      else
      {
        v16 = 0;
      }
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __95__PLBackgroundJobWorkerCoordinator__processNextWorkerInLibraryBundle_reportProgressUsingBlock___block_invoke;
    aBlock[3] = &unk_1E75724D8;
    aBlock[4] = self;
    v54 = a2;
    v40 = v15;
    v53 = v40;
    v17 = _Block_copy(aBlock);
    if (!v16)
    {
      v21 = PLBackgroundJobServiceGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = [v11 workerName];
        workerMode = self->_workerMode;
        *buf = 138543874;
        *&buf[4] = v22;
        *&buf[12] = 2112;
        *&buf[14] = v7;
        *&buf[22] = 1024;
        LODWORD(v62) = workerMode;
        _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "_processNextWorkerInLibraryBundle: library is nil for worker %{public}@ bundle %@. workerCoordinatorMode: %d", buf, 0x1Cu);
      }

      v17[2](v17, v11, 1);
      [(PLBackgroundJobWorkerCoordinator *)self _processNextWorkerInLibraryBundle:v7 reportProgressUsingBlock:v8];
      goto LABEL_28;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v62 = __Block_byref_object_copy__80013;
    v63 = __Block_byref_object_dispose__80014;
    v64 = 0;
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __95__PLBackgroundJobWorkerCoordinator__processNextWorkerInLibraryBundle_reportProgressUsingBlock___block_invoke_129;
    v47[3] = &unk_1E75778C0;
    v51 = buf;
    v18 = v11;
    v48 = v18;
    v19 = v16;
    v49 = v19;
    v20 = v41;
    v50 = v20;
    v39 = _Block_copy(v47);
    if ([objc_opt_class() usesMultipleLibrariesConcurrently])
    {
      [PLManagedObjectContext _pl_megamoc_runWithPerformWarningsSuppressed:v39];
    }

    else
    {
      v24 = +[PLConcurrencyLimiter sharedLimiter];
      [v24 sync:v39 identifyingBlock:0 library:v19];
    }

    v38 = [*(*&buf[8] + 40) workItemsNeedingProcessing];
    if ([*(*&buf[8] + 40) zeroWorkItemsForValidCriteria])
    {
      v25 = PLBackgroundJobServiceGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v26 = [v18 workerDetailedName];
        v27 = [v20 name];
        v28 = self->_workerMode;
        *v55 = 138412802;
        v56 = v26;
        v57 = 2112;
        v58 = v27;
        v59 = 1024;
        v60 = v28;
        _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEBUG, "Worker %@ reports it has no work at current criteria %@; removing it from pending workers queue. workerCoordinatorMode: %d", v55, 0x1Cu);
      }
    }

    else
    {
      if ([v38 count])
      {
        if (!v20 || ([*(*&buf[8] + 40) criteria], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v20, "isEqual:", v29), v29, (v30 & 1) != 0))
        {
          v31 = PLBackgroundJobServiceGetLog();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = self->_workerMode;
            *v55 = 138412546;
            v56 = v18;
            v57 = 1024;
            LODWORD(v58) = v32;
            _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_DEFAULT, "Starting worker %@. workerCoordinatorMode: %d", v55, 0x12u);
          }

          objc_initWeak(v55, v18);
          v42[0] = MEMORY[0x1E69E9820];
          v42[1] = 3221225472;
          v42[2] = __95__PLBackgroundJobWorkerCoordinator__processNextWorkerInLibraryBundle_reportProgressUsingBlock___block_invoke_135;
          v42[3] = &unk_1E7572500;
          objc_copyWeak(&v46, v55);
          v42[4] = self;
          v44 = v17;
          v43 = v7;
          v45 = v8;
          [v18 startWorkInLibrary:v19 withWorkItemsNeedingProcessing:v38 reportProgressUsingBlock:v45 withCompletion:v42];

          objc_destroyWeak(&v46);
          objc_destroyWeak(v55);
          goto LABEL_27;
        }

        v25 = PLBackgroundJobServiceGetLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v36 = [v18 workerDetailedName];
          v37 = self->_workerMode;
          *v55 = 138543618;
          v56 = v36;
          v57 = 1024;
          LODWORD(v58) = v37;
          _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "Worker %{public}@ reports it has work to do with invalid criteria, nonfatal; removing it from pending workers queue. workerCoordinatorMode: %d", v55, 0x12u);
        }

        v35 = 0;
LABEL_26:

        v17[2](v17, v18, v35);
        [(PLBackgroundJobWorkerCoordinator *)self _processNextWorkerInLibraryBundle:v7 reportProgressUsingBlock:v8];
LABEL_27:

        _Block_object_dispose(buf, 8);
LABEL_28:

        goto LABEL_29;
      }

      v25 = PLBackgroundJobServiceGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v33 = [v18 workerDetailedName];
        v34 = self->_workerMode;
        *v55 = 138412546;
        v56 = v33;
        v57 = 1024;
        LODWORD(v58) = v34;
        _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEBUG, "Worker %@ reports it has no work to do; removing it from pending workers queue. workerCoordinatorMode: %d", v55, 0x12u);
      }
    }

    v35 = 1;
    goto LABEL_26;
  }

  [(PLBackgroundJobWorkerCoordinator *)self _handleAllWorkersCompleted];
LABEL_29:
}

void __95__PLBackgroundJobWorkerCoordinator__processNextWorkerInLibraryBundle_reportProgressUsingBlock___block_invoke(void *a1, void *a2, int a3)
{
  v15 = a2;
  os_unfair_lock_lock((a1[4] + 48));
  v5 = [*(a1[4] + 40) worker];

  if (v5 != v15)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a1[6] object:a1[4] file:@"PLBackgroundJobWorkerCoordinator.m" lineNumber:375 description:{@"Invalid parameter not satisfying: %@", @"worker == _currentWorker.worker"}];
  }

  v6 = [*(a1[4] + 40) worker];
  v7 = [v6 shouldDeferTask];

  if (v7)
  {
    atomic_store(1u, (a1[4] + 52));
  }

  [*(a1[4] + 32) removeObject:*(a1[4] + 40)];
  if (a3)
  {
    v8 = a1[4];
    v9 = *(v8 + 80);
    v10 = [*(v8 + 40) worker];
    v11 = [v10 workerDetailedName];
    [v9 removeObjectForKey:v11];
  }

  v12 = a1[4];
  v13 = *(v12 + 40);
  *(v12 + 40) = 0;

  os_unfair_lock_unlock((a1[4] + 48));
  [v15 workerDidFinishWithDatabaseContext:a1[5]];
}

void __95__PLBackgroundJobWorkerCoordinator__processNextWorkerInLibraryBundle_reportProgressUsingBlock___block_invoke_129(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  if (a1[6])
  {
    [MEMORY[0x1E695DFD8] setWithObject:?];
  }

  else
  {
    +[PLBackgroundJobCriteria allKnownCriteria];
  }
  v7 = ;
  v4 = [v2 workItemsNeedingProcessingInLibrary:v3 validCriterias:v7];
  v5 = *(a1[7] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __95__PLBackgroundJobWorkerCoordinator__processNextWorkerInLibraryBundle_reportProgressUsingBlock___block_invoke_135(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = PLBackgroundJobServiceGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(a1 + 32) + 16);
    v5 = 138412546;
    v6 = WeakRetained;
    v7 = 1024;
    v8 = v4;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "Worker %@ finished. workerCoordinatorMode: %d", &v5, 0x12u);
  }

  (*(*(a1 + 48) + 16))();
  [*(a1 + 32) _processNextWorkerInLibraryBundle:*(a1 + 40) reportProgressUsingBlock:*(a1 + 56)];
}

- (void)stopAllBackgroundJobs
{
  v12 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v3 = PLBackgroundJobServiceGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(NSMutableArray *)self->_pendingWorkers count];
    workerMode = self->_workerMode;
    v8 = 134218240;
    v9 = v4;
    v10 = 1024;
    v11 = workerMode;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_INFO, "Clearing %tu workers from _pendingWorkers queue. workerCoordinatorMode: %d", &v8, 0x12u);
  }

  v6 = [(NSMutableArray *)self->_pendingWorkers count];
  [(NSMutableArray *)self->_pendingWorkers removeAllObjects];
  [(NSMutableDictionary *)self->_cachedCriteriaForPendingWorkers removeAllObjects];
  v7 = [(PLBackgroundJobWorkerCriteriaTuple *)self->_currentWorker worker];
  os_unfair_lock_unlock(&self->_lock);
  if (v6)
  {
    [v7 stopAllWork];
  }
}

- (void)submitBundleForProcessing:(id)a3 withCriteria:(id)a4 reportProgressUsingBlock:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = &__block_literal_global_80030;
  }

  v12 = [(PLBackgroundJobWorkerCoordinator *)self _workersForBundle:v8];
  os_unfair_lock_lock(&self->_lock);
  atomic_store(0, &self->_shouldDeferTask);
  v23 = [(NSMutableArray *)self->_pendingWorkers count];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      v17 = 0;
      do
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [[PLBackgroundJobWorkerCriteriaTuple alloc] initWithWorker:*(*(&v24 + 1) + 8 * v17) withCriteria:v9];
        [(NSMutableArray *)self->_pendingWorkers addObject:v18];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v15);
  }

  v19 = self->_currentWorker;
  v20 = [(NSMutableArray *)self->_pendingWorkers count];
  v21 = PLBackgroundJobServiceGetLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    workerMode = self->_workerMode;
    *buf = 67109376;
    v29 = v20 - v23;
    v30 = 1024;
    v31 = workerMode;
    _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_INFO, "Added %d workers to the pending workers queue. workerCoordinatorMode: %d", buf, 0xEu);
  }

  os_unfair_lock_unlock(&self->_lock);
  if (!v19)
  {
    [(PLBackgroundJobWorkerCoordinator *)self _processNextWorkerInLibraryBundle:v8 reportProgressUsingBlock:v11];
  }
}

- (id)pendingJobsForBundle:(id)a3 workerTypes:(id)a4
{
  v85 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(__CFString *)v6 pathManager];
  v9 = [v8 libraryURL];
  v70 = [v9 absoluteString];

  v10 = [(__CFString *)v6 libraryServicesManager];
  v11 = [v10 databaseContext];
  v12 = [v11 newShortLivedLibraryWithName:"-[PLBackgroundJobWorkerCoordinator pendingJobsForBundle:workerTypes:]"];

  v71 = v12;
  if (!v12 && (!MEMORY[0x19EAEE520]() || (v71 = [PLDatabaseContext newShortLivedLibraryWithName:"[PLBackgroundJobWorkerCoordinator pendingJobsForBundle:workerTypes:]" bundle:v6]) == 0))
  {
    v58 = PLBackgroundJobServiceGetLog();
    v71 = v58;
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v80 = v6;
      _os_log_impl(&dword_19BF1F000, v58, OS_LOG_TYPE_ERROR, "pendingJobsForBundle: library is nil for bundle %@", buf, 0xCu);
    }

    goto LABEL_47;
  }

  if (PLIsAssetsd() && [v71 isUnitTesting])
  {
    v13 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v80 = v6;
      v14 = "pendingJobsForBundle: ignoring jobs for unit testing bundle %@";
LABEL_44:
      v15 = v13;
      v16 = OS_LOG_TYPE_INFO;
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  if (PLIsAssetsd() && PLIsConfiguredForUnitTesting())
  {
    v13 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v80 = v6;
      v14 = "pendingJobsForBundle: ignoring background jobs during unit testing for bundle %@";
      v15 = v13;
      v16 = OS_LOG_TYPE_DEFAULT;
LABEL_45:
      _os_log_impl(&dword_19BF1F000, v15, v16, v14, buf, 0xCu);
      goto LABEL_46;
    }

    goto LABEL_46;
  }

  if (([v71 isBackgroundProcessingEnabled] & 1) == 0)
  {
    v13 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v80 = v6;
      v14 = "pendingJobsForBundle: library create options indicate no background jobs for bundle %@";
      goto LABEL_44;
    }

LABEL_46:

LABEL_47:
    v59 = 0;
    goto LABEL_61;
  }

  v17 = objc_alloc(MEMORY[0x1E696AD60]);
  v18 = [(__CFString *)v6 libraryServicesManager];
  [v18 wellKnownPhotoLibraryIdentifier];
  v19 = PLStringFromWellKnownPhotoLibraryIdentifier();
  v73 = [v17 initWithFormat:@"Workers that reported pending jobs on well known library identifier %@:\n", v19];

  v20 = +[PLBackgroundJobWorkerTypes allTypesMask];
  v21 = [v20 isEqual:v7];
  v22 = @"some workers";
  if (v21)
  {
    v22 = @"all workers";
  }

  v23 = v22;

  v24 = PLBackgroundJobServiceGetLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v80 = v23;
    v81 = 2112;
    v82 = v70;
    v83 = 2112;
    v84 = v7;
    _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_DEBUG, "Checking %@ of library %@ for pending jobs with signaled worker types: %@", buf, 0x20u);
  }

  v67 = v23;

  v25 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  os_unfair_lock_lock(&self->_lock);
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v68 = v6;
  obj = [(PLBackgroundJobWorkerCoordinator *)self _workersForBundle:v6];
  v26 = [obj countByEnumeratingWithState:&v74 objects:v78 count:16];
  v27 = v71;
  if (v26)
  {
    v28 = v26;
    v29 = *v75;
    v69 = v7;
    while (2)
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v75 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v31 = *(*(&v74 + 1) + 8 * i);
        cachedCriteriaForPendingWorkers = self->_cachedCriteriaForPendingWorkers;
        v33 = [v31 workerDetailedName];
        v34 = [(NSMutableDictionary *)cachedCriteriaForPendingWorkers objectForKeyedSubscript:v33];

        if (v34)
        {
          v35 = self->_cachedCriteriaForPendingWorkers;
          v36 = [v31 workerDetailedName];
          v37 = [(NSMutableDictionary *)v35 objectForKeyedSubscript:v36];

          [v25 addObject:v37];
          v38 = [v31 workerName];
          v39 = [v37 name];
          [(__CFString *)v73 appendFormat:@"\t W: %@ C: %@ Cache hit: YES\n", v38, v39];
        }

        else
        {
          v40 = [v7 containsWorker:v31];
          os_unfair_lock_unlock(&self->_lock);
          if (v40)
          {
            v41 = PLBackgroundJobServiceGetLog();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
            {
              v42 = [v31 workerName];
              *buf = 138412546;
              v80 = v42;
              v81 = 2112;
              v82 = v70;
              _os_log_impl(&dword_19BF1F000, v41, OS_LOG_TYPE_DEBUG, "Checking pending jobs for %@ for library %@", buf, 0x16u);
            }

            v37 = [v31 pendingJobsInLibrary:v27];
            os_unfair_lock_lock(&self->_lock);
            if (v37)
            {
              v43 = [v37 workItemsNeedingProcessing];
              v44 = [v43 count];

              if (v44)
              {
                v45 = [v31 workerName];
                v46 = [v37 criteria];
                v47 = [v46 name];
                [(__CFString *)v73 appendFormat:@"\t W: %@ C: %@ Cache hit: NO\n", v45, v47];

                v48 = [v37 criteria];
                [v25 addObject:v48];

                v49 = self->_cachedCriteriaForPendingWorkers;
                v50 = [v37 criteria];
                v51 = [v31 workerDetailedName];
                [(NSMutableDictionary *)v49 setObject:v50 forKey:v51];

                WeakRetained = objc_loadWeakRetained(&self->_statusCenter);
                [WeakRetained recordWorkerHasPendingJobs:v31];

                if ([objc_opt_class() avoidCheckingOtherWorkersIfThisWorkerHasPendingWork])
                {
                  v60 = PLBackgroundJobServiceGetLog();
                  v7 = v69;
                  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
                  {
                    v61 = [v31 workerName];
                    *buf = 138543362;
                    v80 = v61;
                    _os_log_impl(&dword_19BF1F000, v60, OS_LOG_TYPE_DEFAULT, "Ignoring all other workers in the pending jobs queue since worker %{public}@ returned YES for avoidCheckingOtherWorkersIfThisWorkerHasPendingWork and has pending work to do", buf, 0xCu);
                  }

                  goto LABEL_51;
                }

                v7 = v69;
              }

              else
              {
                v53 = [v37 signalAgainDate];

                if (v53)
                {
                  v54 = PLBackgroundJobServiceGetLog();
                  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
                  {
                    v55 = [v31 workerName];
                    v56 = [v37 signalAgainDate];
                    *buf = 138543874;
                    v80 = v55;
                    v81 = 2112;
                    v82 = v70;
                    v83 = 2114;
                    v84 = v56;
                    _os_log_impl(&dword_19BF1F000, v54, OS_LOG_TYPE_DEFAULT, "Worker %{public}@ for library %@ has no immediate work items, but wants to be signaled later at %{public}@", buf, 0x20u);

                    v7 = v69;
                  }

                  v57 = [v37 signalAgainDate];
                  -[PLBackgroundJobWorkerCoordinator _signalWorkerAtDate:workerType:bundle:](self, "_signalWorkerAtDate:workerType:bundle:", v57, [v31 type], v68);
                }
              }

              v27 = v71;
            }
          }

          else
          {
            os_unfair_lock_lock(&self->_lock);
            v37 = 0;
          }
        }
      }

      v28 = [obj countByEnumeratingWithState:&v74 objects:v78 count:16];
      if (v28)
      {
        continue;
      }

      break;
    }
  }

LABEL_51:

  os_unfair_lock_unlock(&self->_lock);
  v62 = PLBackgroundJobServiceGetLog();
  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
  {
    v63 = [v25 count];
    v64 = @"YES";
    if (!v63)
    {
      v64 = @"NO";
    }

    *buf = 138412546;
    v80 = v70;
    v81 = 2112;
    v82 = v64;
    _os_log_impl(&dword_19BF1F000, v62, OS_LOG_TYPE_DEBUG, "Checked workers of library %@ for pending jobs. Result: %@", buf, 0x16u);
  }

  if ([v25 count])
  {
    v65 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v80 = v73;
      _os_log_impl(&dword_19BF1F000, v65, OS_LOG_TYPE_INFO, "%{public}@", buf, 0xCu);
    }

    v59 = [v25 copy];
  }

  else
  {
    v59 = 0;
  }

  v6 = v68;

LABEL_61:

  return v59;
}

- (id)pendingJobsForBundle:(id)a3
{
  v4 = a3;
  v5 = +[PLBackgroundJobWorkerTypes allTypesMask];
  v6 = [(PLBackgroundJobWorkerCoordinator *)self pendingJobsForBundle:v4 workerTypes:v5];

  return v6;
}

- (BOOL)_isValidWorkerClass:(Class)a3 bundle:(id)a4
{
  v5 = a4;
  v6 = [v5 libraryServicesManager];
  if (-[objc_class supportsWellKnownPhotoLibraryIdentifier:](a3, "supportsWellKnownPhotoLibraryIdentifier:", [v6 wellKnownPhotoLibraryIdentifier]))
  {
    v7 = [(objc_class *)a3 isEnabledForBundle:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_workersForBundle:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [v4 libraryServicesManager];
  v7 = [v6 readyForAnalysis];
  v8 = [v7 isReadyForAnalysis];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = self->_workerClassesAsStrings;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = NSClassFromString(*(*(&v18 + 1) + 8 * i));
        if ([(PLBackgroundJobWorkerCoordinator *)self _isValidWorkerClass:v14 bundle:v4, v18]&& ((v8 & 1) != 0 || [(objc_class *)v14 allowWorkerToRunDuringCPLInitialSync]))
        {
          v15 = [[v14 alloc] initWithLibraryBundle:v4];
          [v5 addObject:v15];
        }
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v16 = [v5 copy];

  return v16;
}

- (PLBackgroundJobWorkerCoordinator)initWithWorkerClassesAsStrings:(id)a3 workerMode:(signed __int16)a4 statusCenter:(id)a5
{
  v9 = a3;
  v10 = a5;
  v25.receiver = self;
  v25.super_class = PLBackgroundJobWorkerCoordinator;
  v11 = [(PLBackgroundJobWorkerCoordinator *)&v25 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_statusCenter, v10);
    v12->_workerMode = a4;
    objc_storeStrong(&v12->_workerClassesAsStrings, a3);
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingWorkers = v12->_pendingWorkers;
    v12->_pendingWorkers = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    cachedCriteriaForPendingWorkers = v12->_cachedCriteriaForPendingWorkers;
    v12->_cachedCriteriaForPendingWorkers = v15;

    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.photolibraryd.workercoordinator.timer"];
    v18 = [v17 UTF8String];
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create(v18, v19);
    timerQueue = v12->_timerQueue;
    v12->_timerQueue = v20;

    v12->_timerLock._os_unfair_lock_opaque = 0;
    v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
    timerLock_signalAgainTimersByWorkerType = v12->_timerLock_signalAgainTimersByWorkerType;
    v12->_timerLock_signalAgainTimersByWorkerType = v22;
  }

  return v12;
}

- (PLBackgroundJobWorkerCoordinator)initWithWorkerCoordinatorWorkerMode:(signed __int16)a3 statusCenter:(id)a4
{
  v4 = a3;
  v73[5] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E695DF70];
  v7 = a4;
  v8 = objc_alloc_init(v6);
  if (v4)
  {
    if (v4 != 1)
    {
      goto LABEL_8;
    }

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v73[0] = v10;
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v73[1] = v12;
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v73[2] = v14;
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v73[3] = v16;
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v73[4] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:5];
    [v8 addObjectsFromArray:v19];
  }

  else
  {
    v67 = v7;
    v68 = self;
    v20 = objc_opt_class();
    v66 = NSStringFromClass(v20);
    v72[0] = v66;
    v21 = objc_opt_class();
    v65 = NSStringFromClass(v21);
    v72[1] = v65;
    v22 = objc_opt_class();
    v64 = NSStringFromClass(v22);
    v72[2] = v64;
    v23 = objc_opt_class();
    v63 = NSStringFromClass(v23);
    v72[3] = v63;
    v24 = objc_opt_class();
    v62 = NSStringFromClass(v24);
    v72[4] = v62;
    v25 = objc_opt_class();
    v61 = NSStringFromClass(v25);
    v72[5] = v61;
    v26 = objc_opt_class();
    v60 = NSStringFromClass(v26);
    v72[6] = v60;
    v27 = objc_opt_class();
    v59 = NSStringFromClass(v27);
    v72[7] = v59;
    v28 = objc_opt_class();
    v58 = NSStringFromClass(v28);
    v72[8] = v58;
    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    v72[9] = v30;
    v31 = objc_opt_class();
    v32 = NSStringFromClass(v31);
    v72[10] = v32;
    v33 = objc_opt_class();
    v34 = NSStringFromClass(v33);
    v72[11] = v34;
    v35 = objc_opt_class();
    v36 = NSStringFromClass(v35);
    v72[12] = v36;
    v37 = objc_opt_class();
    v38 = NSStringFromClass(v37);
    v72[13] = v38;
    v39 = objc_opt_class();
    v40 = NSStringFromClass(v39);
    v72[14] = v40;
    v41 = objc_opt_class();
    v42 = NSStringFromClass(v41);
    v72[15] = v42;
    v43 = objc_opt_class();
    v44 = NSStringFromClass(v43);
    v72[16] = v44;
    v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:17];
    [v8 addObjectsFromArray:v45];

    if (_os_feature_enabled_impl())
    {
      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      v71[0] = v47;
      v48 = objc_opt_class();
      v49 = NSStringFromClass(v48);
      v71[1] = v49;
      v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:2];
      [v8 addObjectsFromArray:v50];
    }

    v51 = objc_opt_class();
    v10 = NSStringFromClass(v51);
    [v8 addObject:v10];
    v4 = 0;
    v7 = v67;
    self = v68;
  }

LABEL_8:
  v52 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.mobileslideshow"];
  v53 = [v52 objectForKey:@"PLBackgroundJobServiceBlockedWorkersUserDefaultsKey"];
  if ([v53 count])
  {
    [v8 removeObjectsInArray:v53];
    v54 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v70 = v53;
      _os_log_impl(&dword_19BF1F000, v54, OS_LOG_TYPE_DEFAULT, "Blocked workers: %@ Use plphotosctl backgroundjob reset-disable-worker", buf, 0xCu);
    }
  }

  v55 = [v8 copy];
  v56 = [(PLBackgroundJobWorkerCoordinator *)self initWithWorkerClassesAsStrings:v55 workerMode:v4 statusCenter:v7];

  return v56;
}

@end
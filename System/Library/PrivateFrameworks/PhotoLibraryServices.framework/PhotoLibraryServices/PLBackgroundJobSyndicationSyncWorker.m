@interface PLBackgroundJobSyndicationSyncWorker
+ (BOOL)supportsWellKnownPhotoLibraryIdentifier:(int64_t)a3;
- (PLBackgroundJobSyndicationSyncWorker)initWithLibraryBundle:(id)a3;
- (id)_syncManagerWithPhotoLibrary:(id)a3;
- (id)photoLibraryWithDatabaseContext:(id)a3;
- (id)workItemsNeedingProcessingInLibrary:(id)a3 validCriterias:(id)a4;
- (void)performWorkOnItem:(id)a3 inLibrary:(id)a4 completion:(id)a5;
- (void)stopWorkingOnItem:(id)a3;
- (void)workerDidFinishWithDatabaseContext:(id)a3;
@end

@implementation PLBackgroundJobSyndicationSyncWorker

void __59__PLBackgroundJobSyndicationSyncWorker__releaseSyncManager__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 120) = 0;
  v1 = *(a1 + 32);
  v2 = *(v1 + 112);
  *(v1 + 112) = 0;
}

- (id)_syncManagerWithPhotoLibrary:(id)a3
{
  v6 = a3;
  v3 = v6;
  v4 = PLResultWithUnfairLock();

  return v4;
}

id __69__PLBackgroundJobSyndicationSyncWorker__syncManagerWithPhotoLibrary___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 112);
  if (!v3)
  {
    v4 = *(a1 + 40);
    goto LABEL_5;
  }

  v4 = *(a1 + 40);
  if (*(v2 + 120) != v4)
  {
LABEL_5:
    *(v2 + 120) = v4;
    v5 = [[PLSyndicationSyncServiceWrapper alloc] initWithPhotoLibrary:*(a1 + 40) ingestClient:1];
    v6 = *(a1 + 32);
    v7 = *(v6 + 112);
    *(v6 + 112) = v5;

    v3 = *(*(a1 + 32) + 112);
  }

  return v3;
}

- (void)workerDidFinishWithDatabaseContext:(id)a3
{
  v5 = a3;
  v6 = v5;
  databaseContext = self->_databaseContext;
  if (databaseContext)
  {
    if (databaseContext != v5)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:a2 object:self file:@"PLBackgroundJobSyndicationSyncWorker.m" lineNumber:120 description:{@"Invalid parameter not satisfying: %@", @"_databaseContext == databaseContext"}];
    }

    [(PLBackgroundJobSyndicationSyncWorker *)self _releaseSyncManager];
    v8 = [(PLDatabaseContext *)v6 syndicationIngestMutex];
    [v8 stopUsingSyndicationIngestLibraryWithIdentifier:1];

    v9 = self->_databaseContext;
    self->_databaseContext = 0;

    v10 = PLSyndicationGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v15 = 0;
      v11 = "[sync.worker] (MUTEX) stopped using syndication ingest library";
      v12 = &v15;
LABEL_8:
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_INFO, v11, v12, 2u);
    }
  }

  else
  {
    v10 = PLSyndicationGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v11 = "[sync.worker] (MUTEX) finished without having a library (no-op)";
      v12 = buf;
      goto LABEL_8;
    }
  }
}

- (id)photoLibraryWithDatabaseContext:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 syndicationIngestMutex];
  v8 = [v7 tryUsingSyndicationIngestLibraryWithIdentifier:1 forceRetry:0];

  if (v8)
  {
    if (self->_databaseContext)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:a2 object:self file:@"PLBackgroundJobSyndicationSyncWorker.m" lineNumber:110 description:{@"Invalid parameter not satisfying: %@", @"_databaseContext == nil"}];
    }

    objc_storeStrong(&self->_databaseContext, a3);
  }

  else
  {
    v9 = PLSyndicationGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v6 syndicationIngestMutex];
      v11 = [v10 syndicationIngestMutexStateDescription];
      *buf = 138412290;
      v15 = v11;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "[sync.worker] (MUTEX) not allowed to run right now: %@", buf, 0xCu);
    }
  }

  return v8;
}

- (void)stopWorkingOnItem:(id)a3
{
  os_unfair_lock_lock(&self->_lock);
  v4 = self->_lock_syncManager;
  os_unfair_lock_unlock(&self->_lock);
  [(PLSyndicationSyncServiceWrapper *)v4 cancelWorkOnCurrentItem];
}

- (void)performWorkOnItem:(id)a3 inLibrary:(id)a4 completion:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if ([(PLBackgroundJobWorker *)self hasEnoughDiskSpaceToContinue:v9])
  {
    v10 = [(PLBackgroundJobSyndicationSyncWorker *)self _syncManagerWithPhotoLibrary:v8];
    [v10 performWorkOnItem:v11 completion:v9];
  }
}

- (id)workItemsNeedingProcessingInLibrary:(id)a3 validCriterias:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[PLBackgroundJobCriteria criteriaForHubbleWorker];
  v9 = [v7 containsObject:v8];

  if (v9)
  {
    v10 = [(PLBackgroundJobSyndicationSyncWorker *)self _syncManagerWithPhotoLibrary:v6];
    v11 = [v10 workItemsNeedingProcessing];
    v12 = [v11 count];
    v13 = [PLBackgroundJobWorkerPendingWorkItems alloc];
    if (v12)
    {
      v14 = [(PLBackgroundJobWorkerPendingWorkItems *)v13 initWithCriteria:v8 workItemsNeedingProcessing:v11];
    }

    else
    {
      v14 = [(PLBackgroundJobWorkerPendingWorkItems *)v13 initWithZeroWorkItems];
    }

    v15 = v14;
  }

  else
  {
    v15 = [[PLBackgroundJobWorkerPendingWorkItems alloc] initWithZeroWorkItemsForValidCriteria];
  }

  return v15;
}

- (PLBackgroundJobSyndicationSyncWorker)initWithLibraryBundle:(id)a3
{
  v4.receiver = self;
  v4.super_class = PLBackgroundJobSyndicationSyncWorker;
  result = [(PLBackgroundJobWorker *)&v4 initWithLibraryBundle:a3];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

+ (BOOL)supportsWellKnownPhotoLibraryIdentifier:(int64_t)a3
{
  if ((a3 | 2) != 3)
  {
    return 0;
  }

  v8 = v3;
  v9 = v4;
  if (PLSyndicationRuntimeEnabled())
  {
    return 1;
  }

  v6 = PLSyndicationGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_INFO, "Syndication Sync Worker is disabled via internal user defaults", v7, 2u);
  }

  return 0;
}

@end
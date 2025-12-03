@interface PLBackgroundJobSyndicationSyncWorker
+ (BOOL)supportsWellKnownPhotoLibraryIdentifier:(int64_t)identifier;
- (PLBackgroundJobSyndicationSyncWorker)initWithLibraryBundle:(id)bundle;
- (id)_syncManagerWithPhotoLibrary:(id)library;
- (id)photoLibraryWithDatabaseContext:(id)context;
- (id)workItemsNeedingProcessingInLibrary:(id)library validCriterias:(id)criterias;
- (void)performWorkOnItem:(id)item inLibrary:(id)library completion:(id)completion;
- (void)stopWorkingOnItem:(id)item;
- (void)workerDidFinishWithDatabaseContext:(id)context;
@end

@implementation PLBackgroundJobSyndicationSyncWorker

void __59__PLBackgroundJobSyndicationSyncWorker__releaseSyncManager__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 120) = 0;
  v1 = *(a1 + 32);
  v2 = *(v1 + 112);
  *(v1 + 112) = 0;
}

- (id)_syncManagerWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v3 = libraryCopy;
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

- (void)workerDidFinishWithDatabaseContext:(id)context
{
  contextCopy = context;
  v6 = contextCopy;
  databaseContext = self->_databaseContext;
  if (databaseContext)
  {
    if (databaseContext != contextCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PLBackgroundJobSyndicationSyncWorker.m" lineNumber:120 description:{@"Invalid parameter not satisfying: %@", @"_databaseContext == databaseContext"}];
    }

    [(PLBackgroundJobSyndicationSyncWorker *)self _releaseSyncManager];
    syndicationIngestMutex = [(PLDatabaseContext *)v6 syndicationIngestMutex];
    [syndicationIngestMutex stopUsingSyndicationIngestLibraryWithIdentifier:1];

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

- (id)photoLibraryWithDatabaseContext:(id)context
{
  v16 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  syndicationIngestMutex = [contextCopy syndicationIngestMutex];
  v8 = [syndicationIngestMutex tryUsingSyndicationIngestLibraryWithIdentifier:1 forceRetry:0];

  if (v8)
  {
    if (self->_databaseContext)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PLBackgroundJobSyndicationSyncWorker.m" lineNumber:110 description:{@"Invalid parameter not satisfying: %@", @"_databaseContext == nil"}];
    }

    objc_storeStrong(&self->_databaseContext, context);
  }

  else
  {
    v9 = PLSyndicationGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      syndicationIngestMutex2 = [contextCopy syndicationIngestMutex];
      syndicationIngestMutexStateDescription = [syndicationIngestMutex2 syndicationIngestMutexStateDescription];
      *buf = 138412290;
      v15 = syndicationIngestMutexStateDescription;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "[sync.worker] (MUTEX) not allowed to run right now: %@", buf, 0xCu);
    }
  }

  return v8;
}

- (void)stopWorkingOnItem:(id)item
{
  os_unfair_lock_lock(&self->_lock);
  v4 = self->_lock_syncManager;
  os_unfair_lock_unlock(&self->_lock);
  [(PLSyndicationSyncServiceWrapper *)v4 cancelWorkOnCurrentItem];
}

- (void)performWorkOnItem:(id)item inLibrary:(id)library completion:(id)completion
{
  itemCopy = item;
  libraryCopy = library;
  completionCopy = completion;
  if ([(PLBackgroundJobWorker *)self hasEnoughDiskSpaceToContinue:completionCopy])
  {
    v10 = [(PLBackgroundJobSyndicationSyncWorker *)self _syncManagerWithPhotoLibrary:libraryCopy];
    [v10 performWorkOnItem:itemCopy completion:completionCopy];
  }
}

- (id)workItemsNeedingProcessingInLibrary:(id)library validCriterias:(id)criterias
{
  libraryCopy = library;
  criteriasCopy = criterias;
  v8 = +[PLBackgroundJobCriteria criteriaForHubbleWorker];
  v9 = [criteriasCopy containsObject:v8];

  if (v9)
  {
    v10 = [(PLBackgroundJobSyndicationSyncWorker *)self _syncManagerWithPhotoLibrary:libraryCopy];
    workItemsNeedingProcessing = [v10 workItemsNeedingProcessing];
    v12 = [workItemsNeedingProcessing count];
    v13 = [PLBackgroundJobWorkerPendingWorkItems alloc];
    if (v12)
    {
      initWithZeroWorkItems = [(PLBackgroundJobWorkerPendingWorkItems *)v13 initWithCriteria:v8 workItemsNeedingProcessing:workItemsNeedingProcessing];
    }

    else
    {
      initWithZeroWorkItems = [(PLBackgroundJobWorkerPendingWorkItems *)v13 initWithZeroWorkItems];
    }

    initWithZeroWorkItemsForValidCriteria = initWithZeroWorkItems;
  }

  else
  {
    initWithZeroWorkItemsForValidCriteria = [[PLBackgroundJobWorkerPendingWorkItems alloc] initWithZeroWorkItemsForValidCriteria];
  }

  return initWithZeroWorkItemsForValidCriteria;
}

- (PLBackgroundJobSyndicationSyncWorker)initWithLibraryBundle:(id)bundle
{
  v4.receiver = self;
  v4.super_class = PLBackgroundJobSyndicationSyncWorker;
  result = [(PLBackgroundJobWorker *)&v4 initWithLibraryBundle:bundle];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

+ (BOOL)supportsWellKnownPhotoLibraryIdentifier:(int64_t)identifier
{
  if ((identifier | 2) != 3)
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
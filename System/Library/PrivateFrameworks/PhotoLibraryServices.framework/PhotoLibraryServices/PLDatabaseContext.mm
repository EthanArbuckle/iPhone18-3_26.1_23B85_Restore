@interface PLDatabaseContext
+ (id)newShortLivedLibraryWithName:(const char *)a3 libraryRole:(unint64_t)a4 bundle:(id)a5;
- (PLDatabaseContext)initWithLibraryBundle:(id)a3;
- (id)newMomentLibrary;
- (id)newShortLivedComputeSyncApplyLibraryWithNameSuffix:(const char *)a3;
- (id)newShortLivedCplLibraryWithNameSuffix:(const char *)a3;
- (id)newShortLivedLibraryForHistoryPersistenceReadingWithName:(const char *)a3;
- (id)newShortLivedLibraryForOrderKeyManagerWithName:(const char *)a3;
- (id)newShortLivedLibraryWithName:(const char *)a3;
- (id)newShortLivedLibraryWithName:(const char *)a3 libraryRole:(unint64_t)a4;
- (id)newShortLivedMacOpenClientLibraryWithName:(const char *)a3;
- (int64_t)wellKnownPhotoLibraryIdentifier;
- (void)dealloc;
- (void)invalidate;
- (void)perform:(id)a3 withName:(const char *)a4;
- (void)performSync:(id)a3 withName:(const char *)a4;
- (void)performTransaction:(id)a3 withName:(const char *)a4;
- (void)performTransactionSync:(id)a3 withName:(const char *)a4;
@end

@implementation PLDatabaseContext

- (int64_t)wellKnownPhotoLibraryIdentifier
{
  WeakRetained = objc_loadWeakRetained(&self->_libraryBundle);
  v3 = [WeakRetained libraryServicesManager];
  v4 = [v3 wellKnownPhotoLibraryIdentifier];

  return v4;
}

- (id)newMomentLibrary
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [PLDatabaseContextNameMomentLibrary UTF8String];
  v4 = objc_alloc_init(PLPhotoLibraryOptions);
  [(PLPhotoLibraryOptions *)v4 setLibraryRole:1];
  [(PLPhotoLibraryOptions *)v4 setRequiredState:6];
  [(PLPhotoLibraryOptions *)v4 setAutomaticallyPinToFirstFetch:0];
  WeakRetained = objc_loadWeakRetained(&self->_libraryBundle);
  v13 = 0;
  v6 = [PLPhotoLibrary newPhotoLibraryWithName:v3 loadedFromBundle:WeakRetained options:v4 error:&v13];
  v7 = v13;

  if (!v6)
  {
    v8 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_loadWeakRetained(&self->_libraryBundle);
      v10 = [v9 libraryURL];
      *buf = 136446722;
      v15 = v3;
      v16 = 2112;
      v17 = v10;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "failed to load photo library %{public}s with url %@, %@", buf, 0x20u);
    }
  }

  v11 = [v6 managedObjectContext];
  [v11 setChangeSource:1];

  return v6;
}

- (id)newShortLivedComputeSyncApplyLibraryWithNameSuffix:(const char *)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(PLPhotoLibraryOptions);
  [(PLPhotoLibraryOptions *)v5 setRequiredState:6];
  [(PLPhotoLibraryOptions *)v5 setRefreshesAfterSave:0];
  [(PLPhotoLibraryOptions *)v5 setLibraryRole:0];
  [(PLPhotoLibraryOptions *)v5 setRollbackOnErrors:1];
  WeakRetained = objc_loadWeakRetained(&self->_libraryBundle);
  v15 = 0;
  v7 = [PLPhotoLibrary newPhotoLibraryWithName:a3 loadedFromBundle:WeakRetained options:v5 error:&v15];
  v8 = v15;

  if (!v7)
  {
    v9 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_loadWeakRetained(&self->_libraryBundle);
      v11 = [v10 libraryURL];
      *buf = 136446722;
      v17 = a3;
      v18 = 2112;
      v19 = v11;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "failed to load photo library %{public}s with url %@, %@", buf, 0x20u);
    }
  }

  v12 = [v7 managedObjectContext];
  [v12 setChangeSource:1];

  v13 = [v7 managedObjectContext];
  [v13 setLocalOnlyDelete:1];

  return v7;
}

- (id)newShortLivedCplLibraryWithNameSuffix:(const char *)a3
{
  v4 = [PLDatabaseContextNameCPLLibrary stringByAppendingFormat:@": %s", a3];
  v5 = -[PLDatabaseContext newShortLivedLibraryWithName:libraryRole:](self, "newShortLivedLibraryWithName:libraryRole:", [v4 UTF8String], 4);
  v6 = [v5 managedObjectContext];
  [v6 setChangeSource:1];

  v7 = [v5 managedObjectContext];
  [v7 setLocalOnlyDelete:1];

  return v5;
}

- (id)newShortLivedLibraryForOrderKeyManagerWithName:(const char *)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(PLPhotoLibraryOptions);
  [(PLPhotoLibraryOptions *)v5 setRequiredState:6];
  [(PLPhotoLibraryOptions *)v5 setRefreshesAfterSave:1];
  [(PLPhotoLibraryOptions *)v5 setAutomaticallyPinToFirstFetch:0];
  WeakRetained = objc_loadWeakRetained(&self->_libraryBundle);
  v15 = 0;
  v7 = [PLPhotoLibrary newPhotoLibraryWithName:a3 loadedFromBundle:WeakRetained options:v5 error:&v15];
  v8 = v15;

  if (v7)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __68__PLDatabaseContext_newShortLivedLibraryForOrderKeyManagerWithName___block_invoke;
    v13[3] = &unk_1E75781E8;
    v14 = v7;
    [PLManagedObjectContext _pl_megamoc_runWithPerformWarningsSuppressed:v13];
    v9 = v14;
  }

  else
  {
    v9 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_loadWeakRetained(&self->_libraryBundle);
      v11 = [v10 libraryURL];
      *buf = 136446722;
      v17 = a3;
      v18 = 2112;
      v19 = v11;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "failed to load photo library %{public}s with url %@, %@", buf, 0x20u);
    }
  }

  return v7;
}

void __68__PLDatabaseContext_newShortLivedLibraryForOrderKeyManagerWithName___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) managedObjectContext];
  [v1 setStalenessInterval:0.0];
}

- (id)newShortLivedLibraryForHistoryPersistenceReadingWithName:(const char *)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(PLPhotoLibraryOptions);
  [(PLPhotoLibraryOptions *)v5 setRequiredState:6];
  [(PLPhotoLibraryOptions *)v5 setRefreshesAfterSave:0];
  [(PLPhotoLibraryOptions *)v5 setAutomaticallyPinToFirstFetch:0];
  WeakRetained = objc_loadWeakRetained(&self->_libraryBundle);
  v15 = 0;
  v7 = [PLPhotoLibrary newPhotoLibraryWithName:a3 loadedFromBundle:WeakRetained options:v5 error:&v15];
  v8 = v15;

  if (v7)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __78__PLDatabaseContext_newShortLivedLibraryForHistoryPersistenceReadingWithName___block_invoke;
    v13[3] = &unk_1E75781E8;
    v14 = v7;
    [PLManagedObjectContext _pl_megamoc_runWithPerformWarningsSuppressed:v13];
    v9 = v14;
  }

  else
  {
    v9 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_loadWeakRetained(&self->_libraryBundle);
      v11 = [v10 libraryURL];
      *buf = 136446722;
      v17 = a3;
      v18 = 2112;
      v19 = v11;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "failed to load photo library %{public}s with url %@, %@", buf, 0x20u);
    }
  }

  return v7;
}

void __78__PLDatabaseContext_newShortLivedLibraryForHistoryPersistenceReadingWithName___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) managedObjectContext];
  [v1 setStalenessInterval:0.0];
}

- (id)newShortLivedLibraryWithName:(const char *)a3 libraryRole:(unint64_t)a4
{
  v7 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_libraryBundle);
  v9 = [v7 newShortLivedLibraryWithName:a3 libraryRole:a4 bundle:WeakRetained];

  return v9;
}

- (id)newShortLivedLibraryWithName:(const char *)a3
{
  v5 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_libraryBundle);
  v7 = [v5 newShortLivedLibraryWithName:a3 bundle:WeakRetained];

  return v7;
}

- (void)performTransactionSync:(id)a3 withName:(const char *)a4
{
  v6 = a3;
  v7 = [(PLDatabaseContext *)self newShortLivedLibraryWithName:a4];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__PLDatabaseContext_performTransactionSync_withName___block_invoke;
  v10[3] = &unk_1E7577C08;
  v11 = v7;
  v12 = v6;
  v8 = v7;
  v9 = v6;
  [v8 performTransactionAndWait:v10];
}

- (void)performSync:(id)a3 withName:(const char *)a4
{
  v6 = a3;
  v7 = [(PLDatabaseContext *)self newShortLivedLibraryWithName:a4];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__PLDatabaseContext_performSync_withName___block_invoke;
  v10[3] = &unk_1E7577C08;
  v11 = v7;
  v12 = v6;
  v8 = v7;
  v9 = v6;
  [v8 performBlockAndWait:v10];
}

- (void)performTransaction:(id)a3 withName:(const char *)a4
{
  v6 = a3;
  v7 = [(PLDatabaseContext *)self newShortLivedLibraryWithName:a4];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__PLDatabaseContext_performTransaction_withName___block_invoke;
  v10[3] = &unk_1E7577C08;
  v11 = v7;
  v12 = v6;
  v8 = v7;
  v9 = v6;
  [v8 performTransaction:v10];
}

- (void)perform:(id)a3 withName:(const char *)a4
{
  v6 = a3;
  v7 = [(PLDatabaseContext *)self newShortLivedLibraryWithName:a4];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __38__PLDatabaseContext_perform_withName___block_invoke;
  v10[3] = &unk_1E7577C08;
  v11 = v7;
  v12 = v6;
  v8 = v7;
  v9 = v6;
  [v8 performBlock:v10];
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = PLPhotosObjectLifecycleGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v6 = objc_opt_class();
    v7 = 2048;
    v8 = self;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "%@ %p dealloc", buf, 0x16u);
  }

  v4.receiver = self;
  v4.super_class = PLDatabaseContext;
  [(PLDatabaseContext *)&v4 dealloc];
}

- (void)invalidate
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = PLPhotosObjectLifecycleGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = 138412546;
    v5 = objc_opt_class();
    v6 = 2048;
    v7 = self;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "%@ %p invalidate", &v4, 0x16u);
  }

  [(PLSyndicationIngestMutex *)self->_syndicationIngestMutex invalidate];
  [(PLLazyObject *)self->_lazyMomentLibrary invalidate];
}

- (PLDatabaseContext)initWithLibraryBundle:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (PLIsAssetsd())
  {
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PLDatabaseContext.m" lineNumber:36 description:@"Must only be initialized in assetsd"];

    if (v5)
    {
      goto LABEL_3;
    }
  }

  v18 = [MEMORY[0x1E696AAA8] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"PLDatabaseContext.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"libraryBundle != nil"}];

LABEL_3:
  v21.receiver = self;
  v21.super_class = PLDatabaseContext;
  v6 = [(PLDatabaseContext *)&v21 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_libraryBundle, v5);
    v8 = objc_initWeak(location, v7);

    v9 = objc_alloc(MEMORY[0x1E69BF270]);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __43__PLDatabaseContext_initWithLibraryBundle___block_invoke;
    v19[3] = &unk_1E7576828;
    objc_copyWeak(&v20, location);
    v10 = [v9 initWithBlock:v19];
    objc_destroyWeak(&v20);
    objc_destroyWeak(location);
    lazyMomentLibrary = v7->_lazyMomentLibrary;
    v7->_lazyMomentLibrary = v10;

    v12 = [[PLSyndicationIngestMutex alloc] initWithDatabaseContext:v7];
    syndicationIngestMutex = v7->_syndicationIngestMutex;
    v7->_syndicationIngestMutex = v12;
  }

  v14 = PLPhotosObjectLifecycleGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = objc_opt_class();
    *location = 138412802;
    *&location[4] = v15;
    v23 = 2048;
    v24 = v7;
    v25 = 2112;
    v26 = v5;
    _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEBUG, "%@ %p initWithLibraryBundle:%@", location, 0x20u);
  }

  return v7;
}

id __43__PLDatabaseContext_initWithLibraryBundle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained newMomentLibrary];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)newShortLivedLibraryWithName:(const char *)a3 libraryRole:(unint64_t)a4 bundle:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = objc_alloc_init(PLPhotoLibraryOptions);
  [(PLPhotoLibraryOptions *)v8 setRequiredState:6];
  [(PLPhotoLibraryOptions *)v8 setRefreshesAfterSave:0];
  [(PLPhotoLibraryOptions *)v8 setLibraryRole:a4];
  v14 = 0;
  v9 = [PLPhotoLibrary newPhotoLibraryWithName:a3 loadedFromBundle:v7 options:v8 error:&v14];
  v10 = v14;
  if (!v9)
  {
    v11 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v7 libraryURL];
      *buf = 136446722;
      v16 = a3;
      v17 = 2112;
      v18 = v12;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "failed to load photo library %{public}s with url %@, %@", buf, 0x20u);
    }
  }

  return v9;
}

- (id)newShortLivedMacOpenClientLibraryWithName:(const char *)a3
{
  v6 = objc_alloc_init(PLPhotoLibraryOptions);
  [(PLPhotoLibraryOptions *)v6 setRequiredState:4];
  [(PLPhotoLibraryOptions *)v6 setRefreshesAfterSave:0];
  WeakRetained = objc_loadWeakRetained(&self->_libraryBundle);
  v14 = 0;
  v8 = [PLPhotoLibrary newPhotoLibraryWithName:a3 loadedFromBundle:WeakRetained options:v6 error:&v14];
  v9 = v14;

  if (!v8)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_loadWeakRetained(&self->_libraryBundle);
    v13 = [v12 libraryURL];
    [v11 handleFailureInMethod:a2 object:self file:@"PLDatabaseContext.m" lineNumber:231 description:{@"failed to load photo library %s with url %@, %@", a3, v13, v9}];
  }

  return v8;
}

@end
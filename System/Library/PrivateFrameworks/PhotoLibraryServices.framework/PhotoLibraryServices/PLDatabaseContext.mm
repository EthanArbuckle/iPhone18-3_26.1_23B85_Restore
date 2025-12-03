@interface PLDatabaseContext
+ (id)newShortLivedLibraryWithName:(const char *)name libraryRole:(unint64_t)role bundle:(id)bundle;
- (PLDatabaseContext)initWithLibraryBundle:(id)bundle;
- (id)newMomentLibrary;
- (id)newShortLivedComputeSyncApplyLibraryWithNameSuffix:(const char *)suffix;
- (id)newShortLivedCplLibraryWithNameSuffix:(const char *)suffix;
- (id)newShortLivedLibraryForHistoryPersistenceReadingWithName:(const char *)name;
- (id)newShortLivedLibraryForOrderKeyManagerWithName:(const char *)name;
- (id)newShortLivedLibraryWithName:(const char *)name;
- (id)newShortLivedLibraryWithName:(const char *)name libraryRole:(unint64_t)role;
- (id)newShortLivedMacOpenClientLibraryWithName:(const char *)name;
- (int64_t)wellKnownPhotoLibraryIdentifier;
- (void)dealloc;
- (void)invalidate;
- (void)perform:(id)perform withName:(const char *)name;
- (void)performSync:(id)sync withName:(const char *)name;
- (void)performTransaction:(id)transaction withName:(const char *)name;
- (void)performTransactionSync:(id)sync withName:(const char *)name;
@end

@implementation PLDatabaseContext

- (int64_t)wellKnownPhotoLibraryIdentifier
{
  WeakRetained = objc_loadWeakRetained(&self->_libraryBundle);
  libraryServicesManager = [WeakRetained libraryServicesManager];
  wellKnownPhotoLibraryIdentifier = [libraryServicesManager wellKnownPhotoLibraryIdentifier];

  return wellKnownPhotoLibraryIdentifier;
}

- (id)newMomentLibrary
{
  v20 = *MEMORY[0x1E69E9840];
  uTF8String = [PLDatabaseContextNameMomentLibrary UTF8String];
  v4 = objc_alloc_init(PLPhotoLibraryOptions);
  [(PLPhotoLibraryOptions *)v4 setLibraryRole:1];
  [(PLPhotoLibraryOptions *)v4 setRequiredState:6];
  [(PLPhotoLibraryOptions *)v4 setAutomaticallyPinToFirstFetch:0];
  WeakRetained = objc_loadWeakRetained(&self->_libraryBundle);
  v13 = 0;
  v6 = [PLPhotoLibrary newPhotoLibraryWithName:uTF8String loadedFromBundle:WeakRetained options:v4 error:&v13];
  v7 = v13;

  if (!v6)
  {
    v8 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_loadWeakRetained(&self->_libraryBundle);
      libraryURL = [v9 libraryURL];
      *buf = 136446722;
      v15 = uTF8String;
      v16 = 2112;
      v17 = libraryURL;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "failed to load photo library %{public}s with url %@, %@", buf, 0x20u);
    }
  }

  managedObjectContext = [v6 managedObjectContext];
  [managedObjectContext setChangeSource:1];

  return v6;
}

- (id)newShortLivedComputeSyncApplyLibraryWithNameSuffix:(const char *)suffix
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(PLPhotoLibraryOptions);
  [(PLPhotoLibraryOptions *)v5 setRequiredState:6];
  [(PLPhotoLibraryOptions *)v5 setRefreshesAfterSave:0];
  [(PLPhotoLibraryOptions *)v5 setLibraryRole:0];
  [(PLPhotoLibraryOptions *)v5 setRollbackOnErrors:1];
  WeakRetained = objc_loadWeakRetained(&self->_libraryBundle);
  v15 = 0;
  v7 = [PLPhotoLibrary newPhotoLibraryWithName:suffix loadedFromBundle:WeakRetained options:v5 error:&v15];
  v8 = v15;

  if (!v7)
  {
    v9 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_loadWeakRetained(&self->_libraryBundle);
      libraryURL = [v10 libraryURL];
      *buf = 136446722;
      suffixCopy = suffix;
      v18 = 2112;
      v19 = libraryURL;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "failed to load photo library %{public}s with url %@, %@", buf, 0x20u);
    }
  }

  managedObjectContext = [v7 managedObjectContext];
  [managedObjectContext setChangeSource:1];

  managedObjectContext2 = [v7 managedObjectContext];
  [managedObjectContext2 setLocalOnlyDelete:1];

  return v7;
}

- (id)newShortLivedCplLibraryWithNameSuffix:(const char *)suffix
{
  suffix = [PLDatabaseContextNameCPLLibrary stringByAppendingFormat:@": %s", suffix];
  v5 = -[PLDatabaseContext newShortLivedLibraryWithName:libraryRole:](self, "newShortLivedLibraryWithName:libraryRole:", [suffix UTF8String], 4);
  managedObjectContext = [v5 managedObjectContext];
  [managedObjectContext setChangeSource:1];

  managedObjectContext2 = [v5 managedObjectContext];
  [managedObjectContext2 setLocalOnlyDelete:1];

  return v5;
}

- (id)newShortLivedLibraryForOrderKeyManagerWithName:(const char *)name
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(PLPhotoLibraryOptions);
  [(PLPhotoLibraryOptions *)v5 setRequiredState:6];
  [(PLPhotoLibraryOptions *)v5 setRefreshesAfterSave:1];
  [(PLPhotoLibraryOptions *)v5 setAutomaticallyPinToFirstFetch:0];
  WeakRetained = objc_loadWeakRetained(&self->_libraryBundle);
  v15 = 0;
  v7 = [PLPhotoLibrary newPhotoLibraryWithName:name loadedFromBundle:WeakRetained options:v5 error:&v15];
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
      libraryURL = [v10 libraryURL];
      *buf = 136446722;
      nameCopy = name;
      v18 = 2112;
      v19 = libraryURL;
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

- (id)newShortLivedLibraryForHistoryPersistenceReadingWithName:(const char *)name
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(PLPhotoLibraryOptions);
  [(PLPhotoLibraryOptions *)v5 setRequiredState:6];
  [(PLPhotoLibraryOptions *)v5 setRefreshesAfterSave:0];
  [(PLPhotoLibraryOptions *)v5 setAutomaticallyPinToFirstFetch:0];
  WeakRetained = objc_loadWeakRetained(&self->_libraryBundle);
  v15 = 0;
  v7 = [PLPhotoLibrary newPhotoLibraryWithName:name loadedFromBundle:WeakRetained options:v5 error:&v15];
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
      libraryURL = [v10 libraryURL];
      *buf = 136446722;
      nameCopy = name;
      v18 = 2112;
      v19 = libraryURL;
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

- (id)newShortLivedLibraryWithName:(const char *)name libraryRole:(unint64_t)role
{
  v7 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_libraryBundle);
  v9 = [v7 newShortLivedLibraryWithName:name libraryRole:role bundle:WeakRetained];

  return v9;
}

- (id)newShortLivedLibraryWithName:(const char *)name
{
  v5 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_libraryBundle);
  v7 = [v5 newShortLivedLibraryWithName:name bundle:WeakRetained];

  return v7;
}

- (void)performTransactionSync:(id)sync withName:(const char *)name
{
  syncCopy = sync;
  v7 = [(PLDatabaseContext *)self newShortLivedLibraryWithName:name];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__PLDatabaseContext_performTransactionSync_withName___block_invoke;
  v10[3] = &unk_1E7577C08;
  v11 = v7;
  v12 = syncCopy;
  v8 = v7;
  v9 = syncCopy;
  [v8 performTransactionAndWait:v10];
}

- (void)performSync:(id)sync withName:(const char *)name
{
  syncCopy = sync;
  v7 = [(PLDatabaseContext *)self newShortLivedLibraryWithName:name];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__PLDatabaseContext_performSync_withName___block_invoke;
  v10[3] = &unk_1E7577C08;
  v11 = v7;
  v12 = syncCopy;
  v8 = v7;
  v9 = syncCopy;
  [v8 performBlockAndWait:v10];
}

- (void)performTransaction:(id)transaction withName:(const char *)name
{
  transactionCopy = transaction;
  v7 = [(PLDatabaseContext *)self newShortLivedLibraryWithName:name];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__PLDatabaseContext_performTransaction_withName___block_invoke;
  v10[3] = &unk_1E7577C08;
  v11 = v7;
  v12 = transactionCopy;
  v8 = v7;
  v9 = transactionCopy;
  [v8 performTransaction:v10];
}

- (void)perform:(id)perform withName:(const char *)name
{
  performCopy = perform;
  v7 = [(PLDatabaseContext *)self newShortLivedLibraryWithName:name];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __38__PLDatabaseContext_perform_withName___block_invoke;
  v10[3] = &unk_1E7577C08;
  v11 = v7;
  v12 = performCopy;
  v8 = v7;
  v9 = performCopy;
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
    selfCopy = self;
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
    selfCopy = self;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "%@ %p invalidate", &v4, 0x16u);
  }

  [(PLSyndicationIngestMutex *)self->_syndicationIngestMutex invalidate];
  [(PLLazyObject *)self->_lazyMomentLibrary invalidate];
}

- (PLDatabaseContext)initWithLibraryBundle:(id)bundle
{
  v27 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  if (PLIsAssetsd())
  {
    if (bundleCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLDatabaseContext.m" lineNumber:36 description:@"Must only be initialized in assetsd"];

    if (bundleCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLDatabaseContext.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"libraryBundle != nil"}];

LABEL_3:
  v21.receiver = self;
  v21.super_class = PLDatabaseContext;
  v6 = [(PLDatabaseContext *)&v21 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_libraryBundle, bundleCopy);
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
    v26 = bundleCopy;
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

+ (id)newShortLivedLibraryWithName:(const char *)name libraryRole:(unint64_t)role bundle:(id)bundle
{
  v21 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  v8 = objc_alloc_init(PLPhotoLibraryOptions);
  [(PLPhotoLibraryOptions *)v8 setRequiredState:6];
  [(PLPhotoLibraryOptions *)v8 setRefreshesAfterSave:0];
  [(PLPhotoLibraryOptions *)v8 setLibraryRole:role];
  v14 = 0;
  v9 = [PLPhotoLibrary newPhotoLibraryWithName:name loadedFromBundle:bundleCopy options:v8 error:&v14];
  v10 = v14;
  if (!v9)
  {
    v11 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      libraryURL = [bundleCopy libraryURL];
      *buf = 136446722;
      nameCopy = name;
      v17 = 2112;
      v18 = libraryURL;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "failed to load photo library %{public}s with url %@, %@", buf, 0x20u);
    }
  }

  return v9;
}

- (id)newShortLivedMacOpenClientLibraryWithName:(const char *)name
{
  v6 = objc_alloc_init(PLPhotoLibraryOptions);
  [(PLPhotoLibraryOptions *)v6 setRequiredState:4];
  [(PLPhotoLibraryOptions *)v6 setRefreshesAfterSave:0];
  WeakRetained = objc_loadWeakRetained(&self->_libraryBundle);
  v14 = 0;
  v8 = [PLPhotoLibrary newPhotoLibraryWithName:name loadedFromBundle:WeakRetained options:v6 error:&v14];
  v9 = v14;

  if (!v8)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_loadWeakRetained(&self->_libraryBundle);
    libraryURL = [v12 libraryURL];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLDatabaseContext.m" lineNumber:231 description:{@"failed to load photo library %s with url %@, %@", name, libraryURL, v9}];
  }

  return v8;
}

@end
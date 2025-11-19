@interface PLPhotoLibraryBundle
- (BOOL)isShuttingDown;
- (BOOL)isSystemPhotoLibrary;
- (BOOL)registerPLPhotoLibrary:(id)a3;
- (BOOL)sqliteErrorIndicatorFileExists;
- (NSError)shutdownReason;
- (PLPhotoLibraryBundle)initWithLibraryURL:(id)a3 bundleController:(id)a4;
- (PLPhotoLibraryBundleController)bundleController;
- (id)makeChangeHandlingNotificationObserverWithLowPriorityThrottleInterval:(double)a3;
- (id)newChangeHandlingContainer;
- (id)newFileSystemVolumeUnmountMonitor;
- (id)newTimeZoneLookup;
- (id)transferAssets:(id)a3 toBundle:(id)a4 options:(id)a5 completion:(id)a6;
- (id)transferPersons:(id)a3 toBundle:(id)a4 options:(id)a5 completion:(id)a6;
- (int64_t)connectionType;
- (void)_invalidatePersistentContainerWithReason:(id)a3;
- (void)beginObservingChanges;
- (void)closeWithReason:(id)a3;
- (void)dealloc;
- (void)distributeChangesSinceLastCheckpoint;
- (void)endObservingChanges;
- (void)getNilPhotoLibraryReasonAndName:(id)a3;
- (void)initializeChangeHandling;
- (void)setNilPhotoLibraryReason:(id)a3 name:(id)a4;
- (void)shutdownWithReason:(id)a3;
- (void)volumeWillUnmount:(id)a3;
@end

@implementation PLPhotoLibraryBundle

- (id)newFileSystemVolumeUnmountMonitor
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = self->_libraryURL;
  v4 = 0;
  v5 = 0;
  v6 = *MEMORY[0x1E695DEB0];
  while (1)
  {
    v7 = v4;

    v18 = 0;
    v19 = 0;
    v8 = [(NSURL *)v3 getResourceValue:&v19 forKey:v6 error:&v18];
    v4 = v19;

    v5 = v18;
    if (!v8)
    {
      break;
    }

    v9 = [[PLFileSystemVolumeUnmountMonitor alloc] initWithVolumeURL:v4];
    [(PLFileSystemVolumeUnmountMonitor *)v9 addVolumeUnmountObserver:self];
LABEL_6:
    if (v9)
    {
      goto LABEL_11;
    }
  }

  v10 = [(NSURL *)v3 path];
  v11 = [v10 length];

  v12 = [(NSURL *)v3 URLByDeletingLastPathComponent];

  v13 = [(NSURL *)v12 path];
  v14 = [v13 length];

  if (v11 != v14)
  {
    v9 = 0;
    v3 = v12;
    goto LABEL_6;
  }

  v15 = PLLibraryBundleGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    libraryURL = self->_libraryURL;
    *buf = 138412546;
    v21 = libraryURL;
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Error getting volume URL for library URL %@: %@", buf, 0x16u);
  }

  v9 = 0;
  v3 = v12;
LABEL_11:

  return v9;
}

- (BOOL)sqliteErrorIndicatorFileExists
{
  os_unfair_lock_lock(&self->_sqliteErrorIndicatorLock);
  sqliteErrorIndicatorFileExists = self->_sqliteErrorIndicatorFileExists;
  if (sqliteErrorIndicatorFileExists)
  {
    LOBYTE(v4) = [(NSNumber *)sqliteErrorIndicatorFileExists BOOLValue];
  }

  else
  {
    v5 = [(PLPhotoLibraryBundle *)self pathManager];
    v4 = [v5 sqliteErrorIndicatorFileExists];

    v6 = [MEMORY[0x1E696AD98] numberWithBool:v4];
    v7 = self->_sqliteErrorIndicatorFileExists;
    self->_sqliteErrorIndicatorFileExists = v6;
  }

  os_unfair_lock_unlock(&self->_sqliteErrorIndicatorLock);
  return v4;
}

- (id)newChangeHandlingContainer
{
  v14 = *MEMORY[0x1E69E9840];
  if (MEMORY[0x19EAEE520](self, a2) && PLIsAssetsdProxyService())
  {
    v3 = PLLibraryBundleGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_ERROR, "Disabling change handling container for unit test proxy service", buf, 2u);
    }

    v4 = 0;
  }

  else
  {
    v3 = [(PLPhotoLibraryBundle *)self newChangePublisher];
    v5 = [(PLPhotoLibraryBundle *)self libraryServicesManager];
    v6 = [(PLPhotoLibraryBundle *)self persistentContainer];
    v11 = 0;
    v7 = [v6 sharedPersistentStoreCoordinatorWithError:&v11];
    v8 = v11;

    if (v7)
    {
      v4 = [[PLChangeHandlingContainer alloc] initWithLibraryBundle:self changePublisher:v3 libraryServicesManager:v5 persistentStoreCoordinator:v7];
      [(PLChangeHandlingContainer *)v4 start];
    }

    else
    {
      v9 = PLLibraryBundleGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v13 = v8;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Unable to create PLLibraryBundleLogInfo because PSC is nil: %@", buf, 0xCu);
      }

      v4 = 0;
    }
  }

  return v4;
}

- (void)endObservingChanges
{
  v2 = [(PLLazyObject *)self->_lazyChangeHandlingContainer currentObjectValueWithoutForcingEvaluation];
  v3 = v2;
  if (v2)
  {
    [v2 endObservingChanges];
  }

  else
  {
    v4 = PLChangeHandlingGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "API misuse: endObservingChanges called when changeHandlingContainer is nil (never initialized or already invalidated).", v5, 2u);
    }
  }
}

- (void)beginObservingChanges
{
  v2 = [(PLPhotoLibraryBundle *)self changeHandlingContainer];
  [v2 beginObservingChanges];
}

- (BOOL)isSystemPhotoLibrary
{
  v3 = [(PLPhotoLibraryBundle *)self libraryServicesManager];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 isSystemPhotoLibrary];
  }

  else
  {
    v5 = [MEMORY[0x1E69BF2A8] isSystemPhotoLibraryURL:self->_libraryURL];
  }

  v6 = v5;

  return v6;
}

- (PLPhotoLibraryBundleController)bundleController
{
  WeakRetained = objc_loadWeakRetained(&self->_bundleController);

  return WeakRetained;
}

- (BOOL)registerPLPhotoLibrary:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __47__PLPhotoLibraryBundle_registerPLPhotoLibrary___block_invoke;
  v15 = &unk_1E7578910;
  v16 = self;
  v17 = &v18;
  PLRunWithUnfairLock();
  if (v19[3])
  {
    atomicPhotoLibraries = self->_atomicPhotoLibraries;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __47__PLPhotoLibraryBundle_registerPLPhotoLibrary___block_invoke_65;
    v9[3] = &unk_1E7573040;
    v10 = v4;
    v11 = &v18;
    [(PLAtomicObject *)atomicPhotoLibraries atomicallyPerformBlockAndWait:v9];
    v6 = *(v19 + 24);
    v7 = v10;
  }

  else
  {
    v7 = PLBackendGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = self;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Unable to register PLPhotoLibrary with bundle %@", buf, 0xCu);
    }

    v6 = 0;
  }

  _Block_object_dispose(&v18, 8);
  return v6 & 1;
}

uint64_t __47__PLPhotoLibraryBundle_registerPLPhotoLibrary___block_invoke(uint64_t result)
{
  if (!*(*(result + 32) + 16))
  {
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

uint64_t __47__PLPhotoLibraryBundle_registerPLPhotoLibrary___block_invoke_65(uint64_t result, void *a2)
{
  if (a2)
  {
    return [a2 addObject:*(result + 32)];
  }

  *(*(*(result + 40) + 8) + 24) = 0;
  return result;
}

- (void)volumeWillUnmount:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLPhotosObjectLifecycleGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v13 = objc_opt_class();
    v14 = 2048;
    v15 = self;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "%@ %p volumeWillUnmount:%@", buf, 0x20u);
  }

  libraryURL = self->_libraryURL;
  if (libraryURL)
  {
    v10 = *MEMORY[0x1E696A998];
    v11 = libraryURL;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(PLPhotoLibraryBundle *)self bundleController];
  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:46012 userInfo:v7];
  [v8 shutdownBundle:self reason:v9];
}

- (id)transferPersons:(id)a3 toBundle:(id)a4 options:(id)a5 completion:(id)a6
{
  v7 = MEMORY[0x1E696ABC0];
  v8 = *MEMORY[0x1E69BFF48];
  v9 = a6;
  v10 = [v7 errorWithDomain:v8 code:46309 userInfo:0];
  (*(a6 + 2))(v9, v10);

  return 0;
}

- (id)transferAssets:(id)a3 toBundle:(id)a4 options:(id)a5 completion:(id)a6
{
  v7 = MEMORY[0x1E696ABC0];
  v8 = *MEMORY[0x1E69BFF48];
  v9 = a6;
  v10 = [v7 errorWithDomain:v8 code:46309 userInfo:0];
  (*(a6 + 2))(v9, v10);

  return 0;
}

- (void)shutdownWithReason:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLPhotosObjectLifecycleGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v11 = objc_opt_class();
    v12 = 2048;
    v13 = self;
    v14 = 2080;
    v15 = "[PLPhotoLibraryBundle shutdownWithReason:]";
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "%@ %p %s %@", buf, 0x2Au);
  }

  atomicPhotoLibraries = self->_atomicPhotoLibraries;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__PLPhotoLibraryBundle_shutdownWithReason___block_invoke;
  v8[3] = &unk_1E7573018;
  v9 = v4;
  v7 = v4;
  [(PLAtomicObject *)atomicPhotoLibraries invalidateWithHandler:v8];
  [(PLPhotoLibraryBundle *)self closeWithReason:v7];
}

void __43__PLPhotoLibraryBundle_shutdownWithReason___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [a2 allObjects];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) invalidateWithReason:*(a1 + 32)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)closeWithReason:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLPhotosObjectLifecycleGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = objc_opt_class();
    v7 = [(PLPhotoLibraryBundle *)self libraryURL];
    v12 = 138413058;
    v13 = v6;
    v14 = 2048;
    v15 = self;
    v16 = 2080;
    v17 = "[PLPhotoLibraryBundle closeWithReason:]";
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "%@ %p %s %@", &v12, 0x2Au);
  }

  v8 = PLLibraryBundleGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = MEMORY[0x1E69BF220];
    v10 = [(PLPhotoLibraryBundle *)self libraryURL];
    v11 = [v9 descriptionWithFileURL:v10];
    v12 = 138412546;
    v13 = v11;
    v14 = 2114;
    v15 = v4;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "Closing %@ with reason %{public}@", &v12, 0x16u);
  }

  [(PLPhotoLibraryBundle *)self _invalidatePhotoAnalysisServiceClient];
  [(PLPhotoLibraryBundle *)self _invalidateChangeHandlingContainer];
  [(PLPhotoLibraryBundle *)self _invalidatePersistentContainerWithReason:v4];
  [(PLPhotoLibraryBundle *)self _invalidateClientSandboxExtensionCache];
  [(PLPhotoLibraryBundle *)self _invalidateGraphCache];
}

- (void)_invalidatePersistentContainerWithReason:(id)a3
{
  v4 = a3;
  lazyPersistentContainer = self->_lazyPersistentContainer;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__PLPhotoLibraryBundle__invalidatePersistentContainerWithReason___block_invoke;
  v7[3] = &unk_1E7572FF0;
  v8 = v4;
  v6 = v4;
  [(PLLazyObject *)lazyPersistentContainer invalidateWithHandler:v7];
}

- (id)makeChangeHandlingNotificationObserverWithLowPriorityThrottleInterval:(double)a3
{
  v5 = [PLChangeHandlingNotificationObserver alloc];
  v6 = [(PLLazyObject *)self->_lazyChangeHandlingObserverTargetNotifyWorkloop objectValue];
  v7 = [(PLChangeHandlingNotificationObserver *)v5 initWithLowPriorityThrottleInterval:v6 targetWorkloop:a3];

  return v7;
}

- (void)distributeChangesSinceLastCheckpoint
{
  v2 = [(PLLazyObject *)self->_lazyChangeHandlingContainer currentObjectValueWithoutForcingEvaluation];
  if (v2)
  {
    v3 = v2;
    [v2 distributeChangesSinceLastCheckpoint];
    v2 = v3;
  }
}

- (void)initializeChangeHandling
{
  v2 = [(PLPhotoLibraryBundle *)self changeHandlingContainer];
}

- (int64_t)connectionType
{
  v2 = [(PLLazyObject *)self->_lazyPersistentContainer currentObjectValueWithoutForcingEvaluation];
  v3 = v2;
  if (v2)
  {
    if ([v2 didConfigureXPCStore])
    {
      v4 = 1;
    }

    else if ([v3 didConfigurePersistentStore])
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSError)shutdownReason
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__85435;
  v8 = __Block_byref_object_dispose__85436;
  v9 = 0;
  PLRunWithUnfairLock();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void __38__PLPhotoLibraryBundle_shutdownReason__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)isShuttingDown
{
  v2 = [(PLPhotoLibraryBundle *)self shutdownReason];
  v3 = v2 != 0;

  return v3;
}

- (id)newTimeZoneLookup
{
  v2 = objc_alloc_init(MEMORY[0x1E69C08E8]);
  [MEMORY[0x1E69C0718] setDefaultTimeZoneLookup:v2];
  return v2;
}

- (void)getNilPhotoLibraryReasonAndName:(id)a3
{
  v3 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__85435;
  v14 = __Block_byref_object_dispose__85436;
  v15 = 0;
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__85435;
  v8 = __Block_byref_object_dispose__85436;
  v9 = 0;
  PLRunWithUnfairLock();
  v3[2](v3, v5[5], v11[5]);
  _Block_object_dispose(&v4, 8);

  _Block_object_dispose(&v10, 8);
}

void __56__PLPhotoLibraryBundle_getNilPhotoLibraryReasonAndName___block_invoke(void *a1)
{
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 184));
  v2 = *(a1[4] + 192);
  v3 = (*(a1[6] + 8) + 40);

  objc_storeStrong(v3, v2);
}

- (void)setNilPhotoLibraryReason:(id)a3 name:(id)a4
{
  v5 = a3;
  v8 = a4;
  v9 = v5;
  v6 = v5;
  v7 = v8;
  PLRunWithUnfairLock();
}

void __54__PLPhotoLibraryBundle_setNilPhotoLibraryReason_name___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 184);
  *(v3 + 184) = v2;

  v5 = [*(a1 + 48) copy];
  v6 = *(a1 + 32);
  v7 = *(v6 + 192);
  *(v6 + 192) = v5;
}

- (void)dealloc
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = PLPhotosObjectLifecycleGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = objc_opt_class();
    libraryURL = self->_libraryURL;
    *buf = 138412802;
    v8 = v4;
    v9 = 2048;
    v10 = self;
    v11 = 2112;
    v12 = libraryURL;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "%@ %p dealloc %@", buf, 0x20u);
  }

  v6.receiver = self;
  v6.super_class = PLPhotoLibraryBundle;
  [(PLPhotoLibraryBundle *)&v6 dealloc];
}

- (PLPhotoLibraryBundle)initWithLibraryURL:(id)a3 bundleController:(id)a4
{
  v125 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v119.receiver = self;
  v119.super_class = PLPhotoLibraryBundle;
  v8 = [(PLPhotoLibraryBundle *)&v119 init];
  v9 = v8;
  if (v8)
  {
    v8->_lock._os_unfair_lock_opaque = 0;
    v10 = [v6 copy];
    libraryURL = v9->_libraryURL;
    v9->_libraryURL = v10;

    v12 = objc_alloc(MEMORY[0x1E69BF1B0]);
    v13 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v14 = [v12 initWithObject:v13];
    atomicPhotoLibraries = v9->_atomicPhotoLibraries;
    v9->_atomicPhotoLibraries = v14;

    objc_storeWeak(&v9->_bundleController, v7);
    v16 = [objc_alloc(MEMORY[0x1E69BF2A0]) initWithLibraryURL:v6];
    pathManager = v9->_pathManager;
    v9->_pathManager = v16;

    v18 = objc_initWeak(location, v9);
    v19 = objc_alloc(MEMORY[0x1E69BF270]);
    v117[0] = MEMORY[0x1E69E9820];
    v117[1] = 3221225472;
    v117[2] = __60__PLPhotoLibraryBundle_initWithLibraryURL_bundleController___block_invoke;
    v117[3] = &unk_1E7576828;
    objc_copyWeak(&v118, location);
    v20 = [v19 initWithBlock:v117];
    objc_destroyWeak(&v118);
    objc_destroyWeak(location);
    lazyIndicatorFileCoordinator = v9->_lazyIndicatorFileCoordinator;
    v9->_lazyIndicatorFileCoordinator = v20;

    v22 = objc_initWeak(location, v9);
    v23 = objc_alloc(MEMORY[0x1E69BF270]);
    v115[0] = MEMORY[0x1E69E9820];
    v115[1] = 3221225472;
    v115[2] = __60__PLPhotoLibraryBundle_initWithLibraryURL_bundleController___block_invoke_2;
    v115[3] = &unk_1E7576828;
    objc_copyWeak(&v116, location);
    v24 = [v23 initWithRetriableBlock:v115];
    objc_destroyWeak(&v116);
    objc_destroyWeak(location);
    lazyChangeHandlingContainer = v9->_lazyChangeHandlingContainer;
    v9->_lazyChangeHandlingContainer = v24;

    v26 = objc_initWeak(location, v9);
    v27 = objc_alloc(MEMORY[0x1E69BF270]);
    v113[0] = MEMORY[0x1E69E9820];
    v113[1] = 3221225472;
    v113[2] = __60__PLPhotoLibraryBundle_initWithLibraryURL_bundleController___block_invoke_3;
    v113[3] = &unk_1E7576828;
    objc_copyWeak(&v114, location);
    v28 = [v27 initWithBlock:v113];
    objc_destroyWeak(&v114);
    objc_destroyWeak(location);
    lazyAssetsdClient = v9->_lazyAssetsdClient;
    v9->_lazyAssetsdClient = v28;

    v30 = objc_initWeak(location, v9);
    v31 = objc_alloc(MEMORY[0x1E69BF270]);
    v110[0] = MEMORY[0x1E69E9820];
    v110[1] = 3221225472;
    v110[2] = __60__PLPhotoLibraryBundle_initWithLibraryURL_bundleController___block_invoke_4;
    v110[3] = &unk_1E7573318;
    objc_copyWeak(&v112, location);
    v32 = v6;
    v111 = v32;
    v33 = [v31 initWithBlock:v110];

    objc_destroyWeak(&v112);
    objc_destroyWeak(location);
    lazyPersistentContainer = v9->_lazyPersistentContainer;
    v9->_lazyPersistentContainer = v33;

    v35 = objc_initWeak(location, v9);
    v36 = objc_alloc(MEMORY[0x1E69BF270]);
    v108[0] = MEMORY[0x1E69E9820];
    v108[1] = 3221225472;
    v108[2] = __60__PLPhotoLibraryBundle_initWithLibraryURL_bundleController___block_invoke_5;
    v108[3] = &unk_1E7576828;
    objc_copyWeak(&v109, location);
    v37 = [v36 initWithBlock:v108];
    objc_destroyWeak(&v109);
    objc_destroyWeak(location);
    lazyLibraryServicesManager = v9->_lazyLibraryServicesManager;
    v9->_lazyLibraryServicesManager = v37;

    v39 = objc_initWeak(location, v9);
    v40 = objc_alloc(MEMORY[0x1E69BF270]);
    v106[0] = MEMORY[0x1E69E9820];
    v106[1] = 3221225472;
    v106[2] = __60__PLPhotoLibraryBundle_initWithLibraryURL_bundleController___block_invoke_6;
    v106[3] = &unk_1E7576828;
    objc_copyWeak(&v107, location);
    v41 = [v40 initWithBlock:v106];
    objc_destroyWeak(&v107);
    objc_destroyWeak(location);
    lazyVariationCache = v9->_lazyVariationCache;
    v9->_lazyVariationCache = v41;

    v43 = objc_initWeak(location, v9);
    v44 = objc_alloc(MEMORY[0x1E69BF270]);
    v104[0] = MEMORY[0x1E69E9820];
    v104[1] = 3221225472;
    v104[2] = __60__PLPhotoLibraryBundle_initWithLibraryURL_bundleController___block_invoke_7;
    v104[3] = &unk_1E7576828;
    objc_copyWeak(&v105, location);
    v45 = [v44 initWithBlock:v104];
    objc_destroyWeak(&v105);
    objc_destroyWeak(location);
    lazyPersonInfoManager = v9->_lazyPersonInfoManager;
    v9->_lazyPersonInfoManager = v45;

    v47 = objc_initWeak(location, v9);
    v48 = objc_alloc(MEMORY[0x1E69BF270]);
    v102[0] = MEMORY[0x1E69E9820];
    v102[1] = 3221225472;
    v102[2] = __60__PLPhotoLibraryBundle_initWithLibraryURL_bundleController___block_invoke_8;
    v102[3] = &unk_1E7576828;
    objc_copyWeak(&v103, location);
    v49 = [v48 initWithBlock:v102];
    objc_destroyWeak(&v103);
    objc_destroyWeak(location);
    lazyEmailAddressManager = v9->_lazyEmailAddressManager;
    v9->_lazyEmailAddressManager = v49;

    v51 = objc_initWeak(location, v9);
    v52 = objc_alloc(MEMORY[0x1E69BF270]);
    v100[0] = MEMORY[0x1E69E9820];
    v100[1] = 3221225472;
    v100[2] = __60__PLPhotoLibraryBundle_initWithLibraryURL_bundleController___block_invoke_9;
    v100[3] = &unk_1E7576828;
    objc_copyWeak(&v101, location);
    v53 = [v52 initWithBlock:v100];
    objc_destroyWeak(&v101);
    objc_destroyWeak(location);
    lazyBoundAssetsdServicesTable = v9->_lazyBoundAssetsdServicesTable;
    v9->_lazyBoundAssetsdServicesTable = v53;

    v55 = objc_initWeak(location, v9);
    v56 = objc_alloc(MEMORY[0x1E69BF270]);
    v98[0] = MEMORY[0x1E69E9820];
    v98[1] = 3221225472;
    v98[2] = __60__PLPhotoLibraryBundle_initWithLibraryURL_bundleController___block_invoke_10;
    v98[3] = &unk_1E7576828;
    objc_copyWeak(&v99, location);
    v57 = [v56 initWithBlock:v98];
    objc_destroyWeak(&v99);
    objc_destroyWeak(location);
    lazyPhotoAnalysisServiceClient = v9->_lazyPhotoAnalysisServiceClient;
    v9->_lazyPhotoAnalysisServiceClient = v57;

    v59 = objc_initWeak(location, v9);
    v60 = objc_alloc(MEMORY[0x1E69BF270]);
    v96[0] = MEMORY[0x1E69E9820];
    v96[1] = 3221225472;
    v96[2] = __60__PLPhotoLibraryBundle_initWithLibraryURL_bundleController___block_invoke_11;
    v96[3] = &unk_1E7576828;
    objc_copyWeak(&v97, location);
    v61 = [v60 initWithBlock:v96];
    objc_destroyWeak(&v97);
    objc_destroyWeak(location);
    lazyConstraintsDirector = v9->_lazyConstraintsDirector;
    v9->_lazyConstraintsDirector = v61;

    v63 = objc_initWeak(location, v9);
    v64 = objc_alloc(MEMORY[0x1E69BF270]);
    v94[0] = MEMORY[0x1E69E9820];
    v94[1] = 3221225472;
    v94[2] = __60__PLPhotoLibraryBundle_initWithLibraryURL_bundleController___block_invoke_12;
    v94[3] = &unk_1E7576828;
    objc_copyWeak(&v95, location);
    v65 = [v64 initWithBlock:v94];
    objc_destroyWeak(&v95);
    objc_destroyWeak(location);
    lazyTimeZoneLookup = v9->_lazyTimeZoneLookup;
    v9->_lazyTimeZoneLookup = v65;

    v9->_sqliteErrorIndicatorLock._os_unfair_lock_opaque = 0;
    v67 = objc_initWeak(location, v9);

    v68 = objc_alloc(MEMORY[0x1E69BF270]);
    v92[0] = MEMORY[0x1E69E9820];
    v92[1] = 3221225472;
    v92[2] = __60__PLPhotoLibraryBundle_initWithLibraryURL_bundleController___block_invoke_13;
    v92[3] = &unk_1E7576828;
    objc_copyWeak(&v93, location);
    v69 = [v68 initWithBlock:v92];
    objc_destroyWeak(&v93);
    objc_destroyWeak(location);
    lazyFetchRecorder = v9->_lazyFetchRecorder;
    v9->_lazyFetchRecorder = v69;

    v71 = objc_initWeak(location, v9);
    v72 = objc_alloc(MEMORY[0x1E69BF270]);
    v90[0] = MEMORY[0x1E69E9820];
    v90[1] = 3221225472;
    v90[2] = __60__PLPhotoLibraryBundle_initWithLibraryURL_bundleController___block_invoke_14;
    v90[3] = &unk_1E7576828;
    objc_copyWeak(&v91, location);
    v73 = [v72 initWithBlock:v90];
    objc_destroyWeak(&v91);
    objc_destroyWeak(location);
    lazyGraphCache = v9->_lazyGraphCache;
    v9->_lazyGraphCache = v73;

    v75 = objc_initWeak(location, v9);
    v76 = objc_alloc(MEMORY[0x1E69BF270]);
    v85 = MEMORY[0x1E69E9820];
    v86 = 3221225472;
    v87 = __60__PLPhotoLibraryBundle_initWithLibraryURL_bundleController___block_invoke_15;
    v88 = &unk_1E7576828;
    objc_copyWeak(&v89, location);
    v77 = [v76 initWithBlock:&v85];
    objc_destroyWeak(&v89);
    objc_destroyWeak(location);
    lazyChangeHandlingObserverTargetNotifyWorkloop = v9->_lazyChangeHandlingObserverTargetNotifyWorkloop;
    v9->_lazyChangeHandlingObserverTargetNotifyWorkloop = v77;

    v79 = [(PLPhotoLibraryBundle *)v9 newFileSystemVolumeUnmountMonitor:v85];
    volumeUnmountMonitor = v9->_volumeUnmountMonitor;
    v9->_volumeUnmountMonitor = v79;

    v81 = PLPhotosObjectLifecycleGetLog();
    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
    {
      v82 = objc_opt_class();
      *location = 138412802;
      *&location[4] = v82;
      v121 = 2048;
      v122 = v9;
      v123 = 2112;
      v124 = v32;
      _os_log_impl(&dword_19BF1F000, v81, OS_LOG_TYPE_DEBUG, "%@ %p initWithLibraryURL: %@", location, 0x20u);
    }

    v83 = v9;
  }

  return v9;
}

PLIndicatorFileCoordinator *__60__PLPhotoLibraryBundle_initWithLibraryURL_bundleController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [[PLIndicatorFileCoordinator alloc] initWithPathManager:WeakRetained[25]];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id __60__PLPhotoLibraryBundle_initWithLibraryURL_bundleController___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained newChangeHandlingContainer];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __60__PLPhotoLibraryBundle_initWithLibraryURL_bundleController___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained newAssetsdClient];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

PLPersistentContainer *__60__PLPhotoLibraryBundle_initWithLibraryURL_bundleController___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [[PLPersistentContainer alloc] initWithLibraryURL:*(a1 + 32) lazyAssetsdClient:WeakRetained[8]];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __60__PLPhotoLibraryBundle_initWithLibraryURL_bundleController___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained newLibraryServicesManager];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

PLPhotoKitVariationCache *__60__PLPhotoLibraryBundle_initWithLibraryURL_bundleController___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [[PLPhotoKitVariationCache alloc] initWithPathManager:WeakRetained[25]];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

PLPersonInfoManager *__60__PLPhotoLibraryBundle_initWithLibraryURL_bundleController___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [[PLPersonInfoManager alloc] initWithPathManager:WeakRetained[25] lazyAssetsdClient:WeakRetained[8]];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

PLEmailAddressManager *__60__PLPhotoLibraryBundle_initWithLibraryURL_bundleController___block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [[PLEmailAddressManager alloc] initWithPathManager:WeakRetained[25] lazyAssetsdClient:WeakRetained[8]];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id __60__PLPhotoLibraryBundle_initWithLibraryURL_bundleController___block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained newBoundAssetsdServicesTable];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

PLPhotoAnalysisServiceClient *__60__PLPhotoLibraryBundle_initWithLibraryURL_bundleController___block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [[PLPhotoAnalysisServiceClient alloc] initWithLibraryURL:WeakRetained[3]];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

PLConstraintsDirector *__60__PLPhotoLibraryBundle_initWithLibraryURL_bundleController___block_invoke_11(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [[PLConstraintsDirector alloc] initWithPhotoLibraryURL:WeakRetained[3]];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id __60__PLPhotoLibraryBundle_initWithLibraryURL_bundleController___block_invoke_12(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained newTimeZoneLookup];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

PLFetchRecorder *__60__PLPhotoLibraryBundle_initWithLibraryURL_bundleController___block_invoke_13(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = objc_alloc_init(PLFetchRecorder);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

PLGraphCache *__60__PLPhotoLibraryBundle_initWithLibraryURL_bundleController___block_invoke_14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = objc_alloc_init(PLGraphCache);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

dispatch_workloop_t __60__PLPhotoLibraryBundle_initWithLibraryURL_bundleController___block_invoke_15(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = dispatch_workloop_create("com.apple.photos.perBundleSharedChangeHandlingNotificationObserverWorkloop");
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end
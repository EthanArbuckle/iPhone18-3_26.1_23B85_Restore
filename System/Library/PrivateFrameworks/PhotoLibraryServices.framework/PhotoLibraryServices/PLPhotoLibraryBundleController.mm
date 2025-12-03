@interface PLPhotoLibraryBundleController
+ (id)_realPathForLibraryURL:(id)l error:(id *)error;
+ (id)sharedAssetsdClientForPhotoLibraryURL:(id)l;
+ (id)sharedBundleController;
+ (void)resetSharedBundleController;
- (BOOL)bindAssetsdService:(id)service toBundle:(id)bundle error:(id *)error;
- (PLPhotoLibraryBundleController)init;
- (PLPhotoLibraryBundleController)initWithBundleType:(int64_t)type libraryServicesManagerDelegateClass:(Class)class;
- (id)_lookupOrCreateBundleForLibraryURL:(id)l replaceExisting:(BOOL)existing;
- (id)_pathKeyForLibraryURL:(id)l;
- (id)bundleForLibraryURL:(id)l;
- (id)currentLibraryServicesManagers;
- (id)libraryBundlePaths;
- (id)libraryBundles;
- (id)newPhotoLibraryBundleWithLibraryURL:(id)l;
- (id)pauseUntilDateForShutdownReason:(id)reason;
- (void)_unregisterBundle:(id)bundle pauseUntilDate:(id)date;
- (void)removeBundleForRebuildAtLibraryURL:(id)l;
- (void)removeManagedObjectModelIfNeededForShutdownReason:(id)reason;
- (void)shutdownAllBundlesWithReason:(id)reason;
- (void)shutdownBundle:(id)bundle reason:(id)reason;
@end

@implementation PLPhotoLibraryBundleController

+ (id)sharedBundleController
{
  os_unfair_lock_lock(&gSharedBundleControllerLock);
  v2 = gSharedBundleController;
  if (!v2)
  {
    v2 = objc_alloc_init(PLPhotoLibraryBundleController);
    v3 = gSharedBundleController;
    gSharedBundleController = v2;
  }

  os_unfair_lock_unlock(&gSharedBundleControllerLock);

  return v2;
}

- (PLPhotoLibraryBundleController)init
{
  v3 = PLIsAssetsd();
  v4 = +[PLLibraryServicesManager libraryServicesDelegateClass];

  return [(PLPhotoLibraryBundleController *)self initWithBundleType:v3 libraryServicesManagerDelegateClass:v4];
}

- (void)removeBundleForRebuildAtLibraryURL:(id)l
{
  v4 = [(PLPhotoLibraryBundleController *)self _pathKeyForLibraryURL:l];
  v3 = v4;
  PLRunWithUnfairLock();
}

- (BOOL)bindAssetsdService:(id)service toBundle:(id)bundle error:(id *)error
{
  v9 = 0;
  v6 = [bundle bindAssetsdService:service error:&v9];
  v7 = v9;
  if (error && (v6 & 1) == 0)
  {
    v7 = v7;
    *error = v7;
  }

  return v6;
}

- (id)_lookupOrCreateBundleForLibraryURL:(id)l replaceExisting:(BOOL)existing
{
  lCopy = l;
  v6 = [(PLPhotoLibraryBundleController *)self _pathKeyForLibraryURL:lCopy];
  v11 = lCopy;
  v7 = lCopy;
  v8 = v6;
  v9 = PLSafeResultWithUnfairLock();

  return v9;
}

id __85__PLPhotoLibraryBundleController__lookupOrCreateBundleForLibraryURL_replaceExisting___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 56) & 1) != 0 || ([*(*(a1 + 32) + 32) objectForKeyedSubscript:*(a1 + 40)], (v2 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    do
    {
      os_unfair_lock_lock((*(a1 + 32) + 40));
      v3 = *(*(a1 + 32) + 48);
      os_unfair_lock_unlock((*(a1 + 32) + 40));
      [v3 timeIntervalSinceNow];
      if (v4 <= 0.0)
      {
        v2 = [*(a1 + 32) newPhotoLibraryBundleWithLibraryURL:*(a1 + 48)];
        [*(*(a1 + 32) + 32) setObject:v2 forKeyedSubscript:*(a1 + 40)];
      }

      else
      {
        v5 = PLBackendGetLog();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v8 = v3;
          _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "Waiting until %{public}@ before creating new PLPhotoLibraryBundle instance to allow time for volume unmount", buf, 0xCu);
        }

        os_unfair_lock_unlock((*(a1 + 32) + 24));
        [MEMORY[0x1E696AF00] sleepUntilDate:v3];
        os_unfair_lock_lock((*(a1 + 32) + 24));
        if (*(a1 + 56))
        {
          v2 = 0;
        }

        else
        {
          v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:*(a1 + 40)];
        }
      }
    }

    while (!v2);
  }

  return v2;
}

- (id)_pathKeyForLibraryURL:(id)l
{
  v19 = *MEMORY[0x1E69E9840];
  lCopy = l;
  path = [lCopy path];

  if (!path)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryBundleController.m" lineNumber:275 description:{@"Invalid parameter not satisfying: %@", @"libraryURL.path != nil"}];
  }

  v12 = 0;
  path2 = [objc_opt_class() _realPathForLibraryURL:lCopy error:&v12];
  v8 = v12;
  if (!path2)
  {
    path2 = [lCopy path];
    v9 = PLLibraryBundleGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v14 = lCopy;
      v15 = 2112;
      v16 = path2;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "lookupOrCreateBundleForLibraryURL unable to get realpath for %@, using %@ instead, error: %@", buf, 0x20u);
    }
  }

  return path2;
}

- (void)shutdownAllBundlesWithReason:(id)reason
{
  reasonCopy = reason;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__23346;
  v11 = __Block_byref_object_dispose__23347;
  v12 = 0;
  v5 = MEMORY[0x1E69E9820];
  do
  {
    PLRunWithUnfairLock();
    v6 = v8[5];
    if (v6)
    {
      [(PLPhotoLibraryBundleController *)self shutdownBundle:v6 reason:reasonCopy, v5, 3221225472, __63__PLPhotoLibraryBundleController_shutdownAllBundlesWithReason___block_invoke, &unk_1E7578910, self, &v7, v7];
    }
  }

  while (v8[5]);
  _Block_object_dispose(&v7, 8);
}

void __63__PLPhotoLibraryBundleController_shutdownAllBundlesWithReason___block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 32) allValues];
  v2 = [v5 firstObject];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)pauseUntilDateForShutdownReason:(id)reason
{
  v8 = *MEMORY[0x1E69E9840];
  if (PLIsErrorEqualToCode())
  {
    v3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:20.0];
    v4 = PLLibraryBundleGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Delaying bundle creation until %{public}@ to allow time for volume unmount.", &v6, 0xCu);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)removeManagedObjectModelIfNeededForShutdownReason:(id)reason
{
  if (PLIsErrorEqualToCode())
  {
    v3 = PLLibraryBundleGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_ERROR, "Removing managed object model due to unsafe shutdown", v4, 2u);
    }

    +[PLPersistentContainer unsafeRemoveManagedObjectModel];
  }
}

- (void)shutdownBundle:(id)bundle reason:(id)reason
{
  v20 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  reasonCopy = reason;
  if (bundleCopy)
  {
    v9 = bundleCopy;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryBundleController.m" lineNumber:189 description:{@"Invalid parameter not satisfying: %@", @"bundle != nil"}];

    v9 = 0;
  }

  SetPLPhotoLibraryBundleControllerCrashTracerMessage(v9, reasonCopy);
  v10 = PLLibraryBundleGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = MEMORY[0x1E69BF220];
    libraryURL = [bundleCopy libraryURL];
    v13 = [v11 descriptionWithFileURL:libraryURL];
    *buf = 138412546;
    v17 = v13;
    v18 = 2112;
    v19 = reasonCopy;
    _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "Shutting down bundle: %@ for reason: %@", buf, 0x16u);
  }

  [bundleCopy shutdownWithReason:reasonCopy];
  [(PLPhotoLibraryBundleController *)self removeManagedObjectModelIfNeededForShutdownReason:reasonCopy];
  v14 = [(PLPhotoLibraryBundleController *)self pauseUntilDateForShutdownReason:reasonCopy];
  [(PLPhotoLibraryBundleController *)self _unregisterBundle:bundleCopy pauseUntilDate:v14];
  SetPLPhotoLibraryBundleControllerCrashTracerMessage(0, 0);
}

- (void)_unregisterBundle:(id)bundle pauseUntilDate:(id)date
{
  bundleCopy = bundle;
  dateCopy = date;
  v5 = dateCopy;
  v6 = bundleCopy;
  PLSafeRunWithUnfairLock();
}

void __67__PLPhotoLibraryBundleController__unregisterBundle_pauseUntilDate___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__23346;
  v14 = __Block_byref_object_dispose__23347;
  v15 = 0;
  v2 = *(*(a1 + 32) + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__PLPhotoLibraryBundleController__unregisterBundle_pauseUntilDate___block_invoke_2;
  v7[3] = &unk_1E75699A0;
  v8 = *(a1 + 40);
  v9 = &v10;
  [v2 enumerateKeysAndObjectsUsingBlock:v7];
  if (v11[5])
  {
    [*(*(a1 + 32) + 32) setObject:0 forKeyedSubscript:?];
  }

  else
  {
    v3 = PLLibraryBundleGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      *buf = 138412290;
      v17 = v4;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "No registered bundle matches: %@", buf, 0xCu);
    }
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = v5;
    PLRunWithUnfairLock();
  }

  _Block_object_dispose(&v10, 8);
}

void __67__PLPhotoLibraryBundleController__unregisterBundle_pauseUntilDate___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (*(a1 + 32) == a3)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v6 = v7;
  }
}

void __67__PLPhotoLibraryBundleController__unregisterBundle_pauseUntilDate___block_invoke_34(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 48))
  {
    [*(a1 + 40) timeIntervalSinceDate:?];
    if (v3 <= 0.0)
    {
      return;
    }

    v2 = *(a1 + 32);
  }

  objc_storeStrong((v2 + 48), *(a1 + 40));
  v4 = PLBackendGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 48);
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Bundle creation paused until %{public}@", &v6, 0xCu);
  }
}

void __57__PLPhotoLibraryBundleController_handleUnknownMergeEvent__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 changeHandlingContainer];
  [v3 handleUnknownMergeEvent];
}

- (id)currentLibraryServicesManagers
{
  array = [MEMORY[0x1E695DF70] array];
  PLRunWithUnfairLock();
  v2 = array;

  return array;
}

void __64__PLPhotoLibraryBundleController_currentLibraryServicesManagers__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __64__PLPhotoLibraryBundleController_currentLibraryServicesManagers__block_invoke_2;
  v2[3] = &unk_1E7569958;
  v3 = *(a1 + 40);
  [v1 enumerateKeysAndObjectsUsingBlock:v2];
}

void __64__PLPhotoLibraryBundleController_currentLibraryServicesManagers__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 libraryServicesManagerIfExists];
  if (v4)
  {
    v5 = v4;
    [*(a1 + 32) addObject:v4];
    v4 = v5;
  }
}

- (id)newPhotoLibraryBundleWithLibraryURL:(id)l
{
  if (self->_bundleType == 1)
  {
    v4 = [[PLServerPhotoLibraryBundle alloc] initWithLibraryURL:l bundleController:self backgroundJobService:self->_backgroundJobService libraryServicesDelegateClass:self->_libraryServicesDelegateClass];
  }

  else
  {
    v4 = [[PLClientPhotoLibraryBundle alloc] initWithLibraryURL:l bundleController:self];
  }

  v5 = v4;

  return v5;
}

- (id)libraryBundles
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__23346;
  v8 = __Block_byref_object_dispose__23347;
  v9 = 0;
  PLRunWithUnfairLock();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void __48__PLPhotoLibraryBundleController_libraryBundles__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)libraryBundlePaths
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__23346;
  v10 = __Block_byref_object_dispose__23347;
  v11 = 0;
  v4 = MEMORY[0x1E69E9820];
  PLRunWithUnfairLock();
  v2 = [MEMORY[0x1E695DFD8] setWithArray:{v7[5], v4, 3221225472, __52__PLPhotoLibraryBundleController_libraryBundlePaths__block_invoke, &unk_1E7578910, self, &v6}];
  _Block_object_dispose(&v6, 8);

  return v2;
}

void __52__PLPhotoLibraryBundleController_libraryBundlePaths__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) allKeys];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)bundleForLibraryURL:(id)l
{
  v6 = [(PLPhotoLibraryBundleController *)self _pathKeyForLibraryURL:l];
  v3 = v6;
  v4 = PLResultWithUnfairLock();

  return v4;
}

- (PLPhotoLibraryBundleController)initWithBundleType:(int64_t)type libraryServicesManagerDelegateClass:(Class)class
{
  v13.receiver = self;
  v13.super_class = PLPhotoLibraryBundleController;
  v6 = [(PLPhotoLibraryBundleController *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_bundleType = type;
    v6->_libraryServicesDelegateClass = class;
    v6->_bundlesByPathLock._os_unfair_lock_opaque = 0;
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    bundlesByPath = v7->_bundlesByPath;
    v7->_bundlesByPath = v8;

    v7->_bundleCreationPauseLock._os_unfair_lock_opaque = 0;
    bundleCreationPausedUntilDate = v7->_bundleCreationPausedUntilDate;
    v7->_bundleCreationPausedUntilDate = 0;

    v11 = v7;
  }

  return v7;
}

+ (id)sharedAssetsdClientForPhotoLibraryURL:(id)l
{
  lCopy = l;
  sharedBundleController = [self sharedBundleController];
  v6 = [sharedBundleController lookupOrCreateBundleForLibraryURL:lCopy];

  assetsdClient = [v6 assetsdClient];

  return assetsdClient;
}

+ (id)_realPathForLibraryURL:(id)l error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (!lCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryBundleController.m" lineNumber:235 description:{@"Invalid parameter not satisfying: %@", @"libraryURL != nil"}];
  }

  path = [lCopy path];
  pathComponents = [path pathComponents];
  v10 = [pathComponents count];
  v11 = path;
  v12 = v11;
  if (v10)
  {
    v13 = v11;
    while (1)
    {
      v23 = 0;
      stringByDeletingLastPathComponent = [MEMORY[0x1E69BF238] realPathForPath:v13 error:&v23];
      v15 = v23;
      if (stringByDeletingLastPathComponent)
      {

        goto LABEL_11;
      }

      if ((PLIsErrorEqualToCode() & 1) == 0)
      {
        break;
      }

      stringByDeletingLastPathComponent = [v13 stringByDeletingLastPathComponent];

      --v10;
      v13 = stringByDeletingLastPathComponent;
      if (!v10)
      {
        goto LABEL_11;
      }
    }

    if (error)
    {
      v20 = v15;
      *error = v15;
    }

    v19 = 0;
  }

  else
  {
    stringByDeletingLastPathComponent = v11;
LABEL_11:
    if (v10 >= [pathComponents count])
    {
      v17 = stringByDeletingLastPathComponent;
    }

    else
    {
      do
      {
        v16 = [pathComponents objectAtIndexedSubscript:v10];
        v17 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:v16];

        ++v10;
        stringByDeletingLastPathComponent = v17;
      }

      while (v10 < [pathComponents count]);
    }

    if ((PLObjectIsEqual() & 1) == 0 && (PLIsSuppressingLogsForUnitTesting() & 1) == 0)
    {
      v18 = PLLibraryBundleGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v25 = v17;
        v26 = 2112;
        v27 = v12;
        _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEBUG, "Inconsistent URL paths may negatively impact client access performance (original %@ vs. current %@)", buf, 0x16u);
      }
    }

    v13 = v17;
    v19 = v13;
  }

  return v19;
}

+ (void)resetSharedBundleController
{
  os_unfair_lock_lock(&gSharedBundleControllerLock);
  v2 = gSharedBundleController;
  gSharedBundleController = 0;

  os_unfair_lock_unlock(&gSharedBundleControllerLock);
}

@end
@interface PLPhotoLibraryBundleController
+ (id)_realPathForLibraryURL:(id)a3 error:(id *)a4;
+ (id)sharedAssetsdClientForPhotoLibraryURL:(id)a3;
+ (id)sharedBundleController;
+ (void)resetSharedBundleController;
- (BOOL)bindAssetsdService:(id)a3 toBundle:(id)a4 error:(id *)a5;
- (PLPhotoLibraryBundleController)init;
- (PLPhotoLibraryBundleController)initWithBundleType:(int64_t)a3 libraryServicesManagerDelegateClass:(Class)a4;
- (id)_lookupOrCreateBundleForLibraryURL:(id)a3 replaceExisting:(BOOL)a4;
- (id)_pathKeyForLibraryURL:(id)a3;
- (id)bundleForLibraryURL:(id)a3;
- (id)currentLibraryServicesManagers;
- (id)libraryBundlePaths;
- (id)libraryBundles;
- (id)newPhotoLibraryBundleWithLibraryURL:(id)a3;
- (id)pauseUntilDateForShutdownReason:(id)a3;
- (void)_unregisterBundle:(id)a3 pauseUntilDate:(id)a4;
- (void)removeBundleForRebuildAtLibraryURL:(id)a3;
- (void)removeManagedObjectModelIfNeededForShutdownReason:(id)a3;
- (void)shutdownAllBundlesWithReason:(id)a3;
- (void)shutdownBundle:(id)a3 reason:(id)a4;
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

- (void)removeBundleForRebuildAtLibraryURL:(id)a3
{
  v4 = [(PLPhotoLibraryBundleController *)self _pathKeyForLibraryURL:a3];
  v3 = v4;
  PLRunWithUnfairLock();
}

- (BOOL)bindAssetsdService:(id)a3 toBundle:(id)a4 error:(id *)a5
{
  v9 = 0;
  v6 = [a4 bindAssetsdService:a3 error:&v9];
  v7 = v9;
  if (a5 && (v6 & 1) == 0)
  {
    v7 = v7;
    *a5 = v7;
  }

  return v6;
}

- (id)_lookupOrCreateBundleForLibraryURL:(id)a3 replaceExisting:(BOOL)a4
{
  v5 = a3;
  v6 = [(PLPhotoLibraryBundleController *)self _pathKeyForLibraryURL:v5];
  v11 = v5;
  v7 = v5;
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

- (id)_pathKeyForLibraryURL:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 path];

  if (!v6)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryBundleController.m" lineNumber:275 description:{@"Invalid parameter not satisfying: %@", @"libraryURL.path != nil"}];
  }

  v12 = 0;
  v7 = [objc_opt_class() _realPathForLibraryURL:v5 error:&v12];
  v8 = v12;
  if (!v7)
  {
    v7 = [v5 path];
    v9 = PLLibraryBundleGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v14 = v5;
      v15 = 2112;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "lookupOrCreateBundleForLibraryURL unable to get realpath for %@, using %@ instead, error: %@", buf, 0x20u);
    }
  }

  return v7;
}

- (void)shutdownAllBundlesWithReason:(id)a3
{
  v4 = a3;
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
      [(PLPhotoLibraryBundleController *)self shutdownBundle:v6 reason:v4, v5, 3221225472, __63__PLPhotoLibraryBundleController_shutdownAllBundlesWithReason___block_invoke, &unk_1E7578910, self, &v7, v7];
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

- (id)pauseUntilDateForShutdownReason:(id)a3
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

- (void)removeManagedObjectModelIfNeededForShutdownReason:(id)a3
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

- (void)shutdownBundle:(id)a3 reason:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryBundleController.m" lineNumber:189 description:{@"Invalid parameter not satisfying: %@", @"bundle != nil"}];

    v9 = 0;
  }

  SetPLPhotoLibraryBundleControllerCrashTracerMessage(v9, v8);
  v10 = PLLibraryBundleGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = MEMORY[0x1E69BF220];
    v12 = [v7 libraryURL];
    v13 = [v11 descriptionWithFileURL:v12];
    *buf = 138412546;
    v17 = v13;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "Shutting down bundle: %@ for reason: %@", buf, 0x16u);
  }

  [v7 shutdownWithReason:v8];
  [(PLPhotoLibraryBundleController *)self removeManagedObjectModelIfNeededForShutdownReason:v8];
  v14 = [(PLPhotoLibraryBundleController *)self pauseUntilDateForShutdownReason:v8];
  [(PLPhotoLibraryBundleController *)self _unregisterBundle:v7 pauseUntilDate:v14];
  SetPLPhotoLibraryBundleControllerCrashTracerMessage(0, 0);
}

- (void)_unregisterBundle:(id)a3 pauseUntilDate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v5 = v8;
  v6 = v7;
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
  v4 = [MEMORY[0x1E695DF70] array];
  PLRunWithUnfairLock();
  v2 = v4;

  return v4;
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

- (id)newPhotoLibraryBundleWithLibraryURL:(id)a3
{
  if (self->_bundleType == 1)
  {
    v4 = [[PLServerPhotoLibraryBundle alloc] initWithLibraryURL:a3 bundleController:self backgroundJobService:self->_backgroundJobService libraryServicesDelegateClass:self->_libraryServicesDelegateClass];
  }

  else
  {
    v4 = [[PLClientPhotoLibraryBundle alloc] initWithLibraryURL:a3 bundleController:self];
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

- (id)bundleForLibraryURL:(id)a3
{
  v6 = [(PLPhotoLibraryBundleController *)self _pathKeyForLibraryURL:a3];
  v3 = v6;
  v4 = PLResultWithUnfairLock();

  return v4;
}

- (PLPhotoLibraryBundleController)initWithBundleType:(int64_t)a3 libraryServicesManagerDelegateClass:(Class)a4
{
  v13.receiver = self;
  v13.super_class = PLPhotoLibraryBundleController;
  v6 = [(PLPhotoLibraryBundleController *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_bundleType = a3;
    v6->_libraryServicesDelegateClass = a4;
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

+ (id)sharedAssetsdClientForPhotoLibraryURL:(id)a3
{
  v4 = a3;
  v5 = [a1 sharedBundleController];
  v6 = [v5 lookupOrCreateBundleForLibraryURL:v4];

  v7 = [v6 assetsdClient];

  return v7;
}

+ (id)_realPathForLibraryURL:(id)a3 error:(id *)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!v7)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:a1 file:@"PLPhotoLibraryBundleController.m" lineNumber:235 description:{@"Invalid parameter not satisfying: %@", @"libraryURL != nil"}];
  }

  v8 = [v7 path];
  v9 = [v8 pathComponents];
  v10 = [v9 count];
  v11 = v8;
  v12 = v11;
  if (v10)
  {
    v13 = v11;
    while (1)
    {
      v23 = 0;
      v14 = [MEMORY[0x1E69BF238] realPathForPath:v13 error:&v23];
      v15 = v23;
      if (v14)
      {

        goto LABEL_11;
      }

      if ((PLIsErrorEqualToCode() & 1) == 0)
      {
        break;
      }

      v14 = [v13 stringByDeletingLastPathComponent];

      --v10;
      v13 = v14;
      if (!v10)
      {
        goto LABEL_11;
      }
    }

    if (a4)
    {
      v20 = v15;
      *a4 = v15;
    }

    v19 = 0;
  }

  else
  {
    v14 = v11;
LABEL_11:
    if (v10 >= [v9 count])
    {
      v17 = v14;
    }

    else
    {
      do
      {
        v16 = [v9 objectAtIndexedSubscript:v10];
        v17 = [v14 stringByAppendingPathComponent:v16];

        ++v10;
        v14 = v17;
      }

      while (v10 < [v9 count]);
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
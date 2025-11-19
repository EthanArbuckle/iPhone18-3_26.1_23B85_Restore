@interface PLAssetsdCrashRecoverySupport
+ (void)trackPerformChangesRequestInProgressWithBlock:(id)a3;
- (BOOL)isSafeToRecoverAfterCrash;
- (PLAssetsdCrashRecoverySupport)initWithPathManager:(id)a3;
- (void)_enqeueRecoveryJob:(id)a3 date:(id)a4 toImageWriter:(id)a5;
- (void)recoverFromCrashIfNeededWithImageWriter:(id)a3;
@end

@implementation PLAssetsdCrashRecoverySupport

- (void)_enqeueRecoveryJob:(id)a3 date:(id)a4 toImageWriter:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count])
  {
    v11 = PLAssetImportGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = NSStringFromSelector(a2);
      v21 = 138543618;
      v22 = v12;
      v23 = 1024;
      LODWORD(v24) = [v8 count];
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] passed %d incoming files", &v21, 0x12u);
    }

    v13 = v8;
  }

  else
  {
    v11 = [MEMORY[0x1E69BF178] incomingDirectoryPath];
    v14 = [MEMORY[0x1E696AC08] defaultManager];
    v13 = [v14 contentsOfDirectoryAtPath:v11 error:0];

    v15 = PLAssetImportGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = NSStringFromSelector(a2);
      v21 = 138543618;
      v22 = v16;
      v23 = 1024;
      LODWORD(v24) = [v13 count];
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] found %d incoming files", &v21, 0x12u);
    }
  }

  if ([v13 count])
  {
    v17 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
    v18 = *MEMORY[0x1E69C0438];
    [v17 setObject:*MEMORY[0x1E69C0438] forKey:*MEMORY[0x1E69C0410]];
    [v17 setObject:v13 forKey:@"CrashRecoveryFilenamesKey"];
    [v17 setObject:v9 forKey:@"CrashRecoveryJobCreationDateKey"];
    v19 = PLAssetImportGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = NSStringFromSelector(a2);
      v21 = 138412802;
      v22 = v20;
      v23 = 2112;
      v24 = v18;
      v25 = 2112;
      v26 = v13;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEFAULT, "[%@] enqueing existing files recovery job %@ (%@)", &v21, 0x20u);
    }

    [v10 enqueueJob:v17];
  }
}

- (BOOL)isSafeToRecoverAfterCrash
{
  v20[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69BF168] takingVideoIndicatorFilePath];
  v20[0] = v2;
  v3 = [MEMORY[0x1E69BF168] takingPhotoIndicatorFilePath];
  v20[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = open([v10 fileSystemRepresentation], 36);
        v12 = v11;
        if (v11 < 0)
        {
          if (v11 == -1 && *__error() == 35)
          {
            v13 = 0;
            goto LABEL_14;
          }
        }

        else
        {
          flock(v11, 8);
          close(v12);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_14:

  return v13;
}

- (void)recoverFromCrashIfNeededWithImageWriter:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"PLAssetsdCrashRecoverySupport.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"imageWriter"}];
  }

  if ((PLIsAssetsd() & 1) == 0)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"PLAssetsdCrashRecoverySupport.m" lineNumber:66 description:@"recoverFromCrashIfNeededWithImageWriter can only be called from assetsd"];
  }

  v6 = +[PLPhotoLibraryBundleController sharedBundleController];
  v7 = [(PLPhotoLibraryPathManager *)self->_pathManager libraryURL];
  v8 = [v6 openBundleAtLibraryURL:v7];

  v9 = [v8 indicatorFileCoordinator];
  v10 = [MEMORY[0x1E69BF178] incomingDirectoryPath];
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__25199;
  v38 = __Block_byref_object_dispose__25200;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__25199;
  v32 = __Block_byref_object_dispose__25200;
  v33 = 0;
  v11 = PLAssetImportGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = NSStringFromSelector(a2);
    *buf = 138543362;
    v49 = v12;
    _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] checking for crash recovery files", buf, 0xCu);
  }

  v13 = v9;
  v14 = v10;
  PLSafeRunWithUnfairLock();
  if (*(v45 + 24) == 1)
  {
    if (v41[3])
    {
      v15 = PLAssetImportGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = NSStringFromSelector(a2);
        v17 = v29[5];
        *buf = 138543618;
        v49 = v16;
        v50 = 2114;
        v51 = v17;
        _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] enqueing delayed recovery job requested at %{public}@", buf, 0x16u);
      }

      dispatch_time(0, 2000000000);
      v18 = +[PLConcurrencyLimiter sharedLimiter];
      v19 = [v18 sharedUtilityQueue];
      v27 = v5;
      pl_dispatch_after();
    }

    else
    {
      v22 = PLAssetImportGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = NSStringFromSelector(a2);
        v24 = v29[5];
        *buf = 138543618;
        v49 = v23;
        v50 = 2114;
        v51 = v24;
        _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] enqueing recovery job requested at %{public}@", buf, 0x16u);
      }

      [(PLAssetsdCrashRecoverySupport *)self _enqeueRecoveryJob:v35[5] date:v29[5] toImageWriter:v5];
    }
  }

  else
  {
    v20 = PLAssetImportGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = NSStringFromSelector(a2);
      *buf = 138543362;
      v49 = v21;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] no indicator or incoming files found", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);
}

void __73__PLAssetsdCrashRecoverySupport_recoverFromCrashIfNeededWithImageWriter___block_invoke(uint64_t a1)
{
  v2 = 1;
  v3 = [*(a1 + 32) needsRecoveryAfterCrashOptionallyRemoveAllIndicatorFiles:1];
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 24));
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v4 contentsOfDirectoryAtPath:*(a1 + 48) error:0];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if ((v3 & 1) == 0)
  {
    v2 = [*(*(*(a1 + 56) + 8) + 40) count] != 0;
  }

  *(*(*(a1 + 64) + 8) + 24) = v2;
  *(*(*(a1 + 72) + 8) + 24) = WeakRetained != 0 || (v3 & 1) == 0;
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v8 = [MEMORY[0x1E695DF00] date];
    v9 = *(*(a1 + 80) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    objc_storeWeak((*(a1 + 40) + 24), *(*(*(a1 + 80) + 8) + 40));
  }
}

- (PLAssetsdCrashRecoverySupport)initWithPathManager:(id)a3
{
  v6 = a3;
  if (PLIsAssetsd())
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PLAssetsdCrashRecoverySupport.m" lineNumber:54 description:@"Must only be used in assetsd"];

    if (v6)
    {
      goto LABEL_3;
    }
  }

  v11 = [MEMORY[0x1E696AAA8] currentHandler];
  [v11 handleFailureInMethod:a2 object:self file:@"PLAssetsdCrashRecoverySupport.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"pathManager"}];

LABEL_3:
  v12.receiver = self;
  v12.super_class = PLAssetsdCrashRecoverySupport;
  v7 = [(PLAssetsdCrashRecoverySupport *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_pathManager, a3);
    v8->_recoveryIndicatorCheckLock._os_unfair_lock_opaque = 0;
  }

  return v8;
}

+ (void)trackPerformChangesRequestInProgressWithBlock:(id)a3
{
  v4 = a3;
  v3 = v4;
  PLRunWithIncrementedAtomicInt32();
}

@end
@interface PLDeviceRestoreMigrationPostProcessingSupport
+ (BOOL)_writeTokenToPath:(id)a3 withInfo:(id)a4 allowOverwrite:(BOOL)a5 error:(id *)a6;
+ (BOOL)createForegroundRestoreFromCloudBackupCompleteTokenWithPathManager:(id)a3 error:(id *)a4;
+ (id)_readTokenAtPath:(id)a3 allowNotExists:(BOOL)a4 error:(id *)a5;
- (BOOL)foregroundRestoreFromCloudBackupCompleteTokenExists;
- (BOOL)isBackgroundRestorePostProcessingInProgressTokenValid;
- (BOOL)isModelMigrationRestorePostProcessingComplete;
- (BOOL)needsToPrepareForBackgroundRestore;
- (BOOL)writeBackgroundRestorePostProcessingCompleteAndArchiveTokens;
- (BOOL)writeBackgroundRestorePostProcessingInProgressToken;
- (BOOL)writeModelMigrationRestorePostProcessingCompleteToken;
- (PLDeviceRestoreMigrationPostProcessingSupport)initWithModelMigrator:(id)a3;
@end

@implementation PLDeviceRestoreMigrationPostProcessingSupport

- (BOOL)isModelMigrationRestorePostProcessingComplete
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if ([(PLPhotoLibraryPathManager *)self->_pathManager isDeviceRestoreSupported])
  {
    v5 = [(PLPhotoLibraryPathManager *)self->_pathManager modelRestorePostProcessingCompleteTokenPath];
    PLSafeRunWithUnfairLock();
  }

  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __94__PLDeviceRestoreMigrationPostProcessingSupport_isModelMigrationRestorePostProcessingComplete__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  *(*(*(a1 + 40) + 8) + 24) = [v2 fileExistsAtPath:*(a1 + 32) isDirectory:0];
}

- (BOOL)writeModelMigrationRestorePostProcessingCompleteToken
{
  v3 = [(PLPhotoLibraryPathManager *)self->_pathManager modelRestorePostProcessingCompleteTokenPath];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_modelMigrator);
  v5 = [WeakRetained deviceRestoreMigrationSupport];
  v6 = [v5 restoreTypeDescription];
  v7 = v6;
  v8 = @"error";
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  v12 = v9;
  v13 = v3;
  PLSafeRunWithUnfairLock();
  v10 = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return v10;
}

void __102__PLDeviceRestoreMigrationPostProcessingSupport_writeModelMigrationRestorePostProcessingCompleteToken__block_invoke(void *a1)
{
  v23[6] = *MEMORY[0x1E69E9840];
  v22[0] = @"Date";
  v18 = PLCompleteDateFormatter();
  v17 = [MEMORY[0x1E695DF00] date];
  v2 = [v18 stringFromDate:v17];
  v23[0] = v2;
  v22[1] = @"Build";
  v3 = [MEMORY[0x1E69BF1B8] currentBuildVersionString];
  v23[1] = v3;
  v22[2] = @"Process";
  v4 = [MEMORY[0x1E696AE30] processInfo];
  v5 = [v4 processName];
  v23[2] = v5;
  v22[3] = @"PID";
  v6 = MEMORY[0x1E696AD98];
  v7 = [MEMORY[0x1E696AE30] processInfo];
  v8 = [v6 numberWithInt:{objc_msgSend(v7, "processIdentifier")}];
  v9 = a1[4];
  v23[3] = v8;
  v23[4] = v9;
  v22[4] = @"RestoreType";
  v22[5] = @"ModelVersion";
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{+[PLModelMigrator currentModelVersion](PLModelMigrator, "currentModelVersion")}];
  v23[5] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:6];

  v12 = objc_opt_class();
  v13 = a1[6];
  v19 = 0;
  v14 = [v12 _writeTokenToPath:v13 withInfo:v11 allowOverwrite:0 error:&v19];
  v15 = v19;
  *(*(a1[7] + 8) + 24) = v14;
  if ((*(*(a1[7] + 8) + 24) & 1) == 0)
  {
    v16 = PLMigrationGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v15;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "Failed to write ModelRestorePostProcessingCompleteToken %@", buf, 0xCu);
    }
  }
}

- (BOOL)writeBackgroundRestorePostProcessingCompleteAndArchiveTokens
{
  v2 = self;
  v3 = [(PLPhotoLibraryPathManager *)self->_pathManager cloudRestoreForegroundPhaseCompleteTokenPath];
  v4 = [(PLPhotoLibraryPathManager *)v2->_pathManager cloudRestoreBackgroundPhaseInProgressTokenPath];
  v5 = [(PLPhotoLibraryPathManager *)v2->_pathManager cloudRestoreCompleteTokenPath];
  v6 = [MEMORY[0x1E69BF1B8] currentBuildVersionString];
  v7 = [v3 stringByAppendingFormat:@"_%@", v6];

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  v9 = v3;
  v10 = v7;
  v11 = v4;
  v12 = v5;
  PLSafeRunWithUnfairLock();
  LOBYTE(v2) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v2;
}

void __109__PLDeviceRestoreMigrationPostProcessingSupport_writeBackgroundRestorePostProcessingCompleteAndArchiveTokens__block_invoke(void *a1)
{
  v56 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = a1[4];
  v4 = a1[5];
  v49 = 0;
  v5 = [v2 moveItemAtPath:v3 toPath:v4 error:&v49];
  v6 = v49;
  v7 = v6;
  if (v5)
  {
    v8 = v6;
    goto LABEL_12;
  }

  *(*(a1[9] + 8) + 24) = 0;
  v9 = PLMigrationGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = a1[5];
    *buf = 138543618;
    v53 = v10;
    v54 = 2112;
    v55 = v7;
    _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Failed to archive foreground token to %{public}@: %@", buf, 0x16u);
  }

  v11 = a1[4];
  v48 = v7;
  v12 = [v2 removeItemAtPath:v11 error:&v48];
  v8 = v48;

  v13 = PLMigrationGetLog();
  v14 = v13;
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = a1[4];
      *buf = 138543362;
      v53 = v15;
      v16 = "Removed foreground token %{public}@";
      v17 = v14;
      v18 = OS_LOG_TYPE_DEFAULT;
      v19 = 12;
LABEL_10:
      _os_log_impl(&dword_19BF1F000, v17, v18, v16, buf, v19);
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v20 = a1[4];
    *buf = 138543618;
    v53 = v20;
    v54 = 2112;
    v55 = v8;
    v16 = "Failed to remove foreground token %{public}@: %@";
    v17 = v14;
    v18 = OS_LOG_TYPE_ERROR;
    v19 = 22;
    goto LABEL_10;
  }

LABEL_12:
  v21 = a1[6];
  v22 = a1[7];
  v47 = v8;
  v23 = [v2 moveItemAtPath:v21 toPath:v22 error:&v47];
  v24 = v47;

  if ((v23 & 1) == 0)
  {
    *(*(a1[9] + 8) + 24) = 0;
    v25 = PLMigrationGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = a1[7];
      *buf = 138543618;
      v53 = v26;
      v54 = 2112;
      v55 = v24;
      _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "Failed to create restore complete token by archiving in progress to %{public}@: %@", buf, 0x16u);
    }

    if ([v2 fileExistsAtPath:a1[7] isDirectory:0])
    {
      v27 = PLMigrationGetLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_ERROR, "Found existing restore complete token", buf, 2u);
      }

      *(*(a1[9] + 8) + 24) = 1;
    }

    else
    {
      v50[0] = @"Date";
      v45 = PLCompleteDateFormatter();
      v44 = [MEMORY[0x1E695DF00] date];
      v28 = [v45 stringFromDate:v44];
      v51[0] = v28;
      v50[1] = @"Build";
      v29 = [MEMORY[0x1E69BF1B8] currentBuildVersionString];
      v51[1] = v29;
      v50[2] = @"Process";
      v30 = [MEMORY[0x1E696AE30] processInfo];
      v31 = [v30 processName];
      v51[2] = v31;
      v50[3] = @"PID";
      v32 = MEMORY[0x1E696AD98];
      v33 = [MEMORY[0x1E696AE30] processInfo];
      v34 = [v32 numberWithInt:{objc_msgSend(v33, "processIdentifier")}];
      v50[4] = @"InProgressCounter";
      v51[3] = v34;
      v51[4] = &unk_1F0FBC6D0;
      v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:5];

      v36 = PLMigrationGetLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v53 = v35;
        _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_ERROR, "Creating new restore complete token with data %{public}@", buf, 0xCu);
      }

      v37 = objc_opt_class();
      v38 = a1[7];
      v46 = v24;
      v39 = [v37 _writeTokenToPath:v38 withInfo:v35 allowOverwrite:1 error:&v46];
      v40 = v46;

      v41 = PLMigrationGetLog();
      v42 = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);
      if (v39)
      {
        if (v42)
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v41, OS_LOG_TYPE_ERROR, "Created new restore complete token", buf, 2u);
        }

        *(*(a1[9] + 8) + 24) = 1;
      }

      else
      {
        if (v42)
        {
          v43 = a1[7];
          *buf = 138543618;
          v53 = v43;
          v54 = 2112;
          v55 = v40;
          _os_log_impl(&dword_19BF1F000, v41, OS_LOG_TYPE_ERROR, "Failed to create new restore complete token %{public}@: %@", buf, 0x16u);
        }
      }

      v24 = v40;
    }
  }
}

- (BOOL)writeBackgroundRestorePostProcessingInProgressToken
{
  [(PLPhotoLibraryPathManager *)self->_pathManager cloudRestoreBackgroundPhaseInProgressTokenPath];
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy__37479;
  v11[4] = __Block_byref_object_dispose__37480;
  v12 = 0;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v10 = 1;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v4 = v8 = 0;
  PLSafeRunWithUnfairLock();
  v2 = *(v6 + 24);

  _Block_object_dispose(&v5, 8);
  _Block_object_dispose(v9, 8);
  _Block_object_dispose(v11, 8);

  return v2;
}

void __100__PLDeviceRestoreMigrationPostProcessingSupport_writeBackgroundRestorePostProcessingInProgressToken__block_invoke(void *a1)
{
  v31[5] = *MEMORY[0x1E69E9840];
  v1 = [objc_opt_class() _readTokenAtPath:a1[5] allowNotExists:1 error:0];
  v2 = *(a1[6] + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;

  v4 = [*(*(a1[6] + 8) + 40) objectForKeyedSubscript:@"InProgressCounter"];
  *(*(a1[7] + 8) + 24) = [v4 intValue] + 1;

  v30[0] = @"Date";
  v25 = PLCompleteDateFormatter();
  v5 = [MEMORY[0x1E695DF00] date];
  v6 = [v25 stringFromDate:v5];
  v31[0] = v6;
  v30[1] = @"Build";
  v7 = [MEMORY[0x1E69BF1B8] currentBuildVersionString];
  v31[1] = v7;
  v30[2] = @"Process";
  v8 = [MEMORY[0x1E696AE30] processInfo];
  v9 = [v8 processName];
  v31[2] = v9;
  v30[3] = @"PID";
  v10 = MEMORY[0x1E696AD98];
  v11 = [MEMORY[0x1E696AE30] processInfo];
  v12 = [v10 numberWithInt:{objc_msgSend(v11, "processIdentifier")}];
  v31[3] = v12;
  v30[4] = @"InProgressCounter";
  v13 = [MEMORY[0x1E696AD98] numberWithInt:*(*(a1[7] + 8) + 24)];
  v31[4] = v13;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:5];

  if ([*(*(a1[6] + 8) + 40) count])
  {
    v14 = v24;
    v15 = [v24 mutableCopy];
    v16 = [*(*(a1[6] + 8) + 40) mutableCopy];
    [v16 removeObjectForKey:@"History"];
    v17 = [MEMORY[0x1E695DF70] array];
    v18 = [*(*(a1[6] + 8) + 40) objectForKeyedSubscript:@"History"];
    if ([v18 count])
    {
      [v17 addObjectsFromArray:v18];
    }

    [v17 addObject:{v16, v24}];
    [v15 setObject:v17 forKeyedSubscript:@"History"];
  }

  else
  {
    v15 = v24;
  }

  v19 = objc_opt_class();
  v20 = a1[5];
  v27 = 0;
  v21 = [v19 _writeTokenToPath:v20 withInfo:v15 allowOverwrite:1 error:&v27];
  v22 = v27;
  *(*(a1[8] + 8) + 24) = v21;
  if ((*(*(a1[8] + 8) + 24) & 1) == 0)
  {
    v23 = PLMigrationGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v29 = v22;
      _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "Failed to write BackgroundPhaseInProgressToken %@", buf, 0xCu);
    }
  }
}

- (BOOL)isBackgroundRestorePostProcessingInProgressTokenValid
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 1;
  PLSafeRunWithUnfairLock();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

void __102__PLDeviceRestoreMigrationPostProcessingSupport_isBackgroundRestorePostProcessingInProgressTokenValid__block_invoke(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = [*(*(a1 + 32) + 24) cloudRestoreBackgroundPhaseInProgressTokenPath];
  v6 = [v2 _readTokenAtPath:v3 allowNotExists:1 error:0];

  v4 = v6;
  if (v6)
  {
    v5 = [v6 objectForKeyedSubscript:@"InProgressCounter"];
    *(*(*(a1 + 40) + 8) + 24) = [v5 intValue] < 11;

    v4 = v6;
  }
}

- (BOOL)needsToPrepareForBackgroundRestore
{
  v2 = self;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(PLPhotoLibraryPathManager *)self->_pathManager cloudRestoreForegroundPhaseCompleteTokenPath];
  v5 = [(PLPhotoLibraryPathManager *)v2->_pathManager cloudRestoreCompleteTokenPath];
  v6 = v3;
  PLSafeRunWithUnfairLock();
  LOBYTE(v2) = *(v8 + 24);

  _Block_object_dispose(&v7, 8);
  return v2;
}

void __83__PLDeviceRestoreMigrationPostProcessingSupport_needsToPrepareForBackgroundRestore__block_invoke(void *a1)
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  if (([v2 fileExistsAtPath:a1[4] isDirectory:0] & 1) == 0)
  {
    *(*(a1[6] + 8) + 24) = [v2 fileExistsAtPath:a1[5] isDirectory:0];
  }
}

- (BOOL)foregroundRestoreFromCloudBackupCompleteTokenExists
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4 = [(PLPhotoLibraryPathManager *)self->_pathManager cloudRestoreForegroundPhaseCompleteTokenPath];
  PLSafeRunWithUnfairLock();
  v2 = *(v6 + 24);

  _Block_object_dispose(&v5, 8);
  return v2;
}

void __100__PLDeviceRestoreMigrationPostProcessingSupport_foregroundRestoreFromCloudBackupCompleteTokenExists__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  *(*(*(a1 + 40) + 8) + 24) = [v2 fileExistsAtPath:*(a1 + 32) isDirectory:0];
}

- (PLDeviceRestoreMigrationPostProcessingSupport)initWithModelMigrator:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PLDeviceRestoreMigrationPostProcessingSupport;
  v5 = [(PLDeviceRestoreMigrationPostProcessingSupport *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_modelMigrator, v4);
    v7 = [v4 pathManager];
    pathManager = v6->_pathManager;
    v6->_pathManager = v7;

    v6->_tokenLock._os_unfair_lock_opaque = 0;
  }

  return v6;
}

+ (BOOL)_writeTokenToPath:(id)a3 withInfo:(id)a4 allowOverwrite:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v40 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = MEMORY[0x1E69BF238];
  v12 = [v9 stringByDeletingLastPathComponent];
  v33 = 0;
  LOBYTE(v11) = [v11 createDirectoryAtPath:v12 error:&v33];
  v13 = v33;

  if ((v11 & 1) == 0)
  {
    v14 = PLMigrationGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [v9 stringByDeletingLastPathComponent];
      *buf = 138543618;
      v35 = v15;
      v36 = 2112;
      v37 = v13;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Failed to create post processing token directory: %{public}@ %@", buf, 0x16u);
    }
  }

  v32 = 0;
  v16 = [MEMORY[0x1E696AE40] dataWithPropertyList:v10 format:100 options:0 error:&v32];
  v17 = v32;

  if (v16)
  {
    goto LABEL_6;
  }

  v27 = PLMigrationGetLog();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543874;
    v35 = v9;
    v36 = 2114;
    v37 = v10;
    v38 = 2112;
    v39 = v17;
    _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_ERROR, "Failed to encode data for token %{public}@ with info %{public}@: %@", buf, 0x20u);
  }

  if (!a6)
  {
LABEL_6:
    if (v7)
    {
      v18 = 0x40000000;
    }

    else
    {
      v18 = 1073741826;
    }

    v31 = v17;
    v19 = [v16 writeToFile:v9 options:v18 error:&v31];
    v20 = v31;

    if (v19)
    {
      v30 = 0;
      v21 = [MEMORY[0x1E69BF238] changeFileOwnerToMobileAtPath:v9 error:&v30];
      v22 = v30;
      if ((v21 & 1) == 0)
      {
        v23 = PLMigrationGetLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v35 = v9;
          _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "Failed to chown token file %{public}@ to mobile", buf, 0xCu);
        }
      }

      v24 = 1;
    }

    else
    {
      v25 = PLMigrationGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v35 = v9;
        v36 = 2114;
        v37 = v10;
        v38 = 2112;
        v39 = v20;
        _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "Failed to write token %{public}@ with info %{public}@: %@", buf, 0x20u);
      }

      if (a6)
      {
        v26 = v20;
        v24 = 0;
        *a6 = v20;
      }

      else
      {
        v24 = 0;
      }
    }
  }

  else
  {
    v28 = v17;
    v24 = 0;
    *a6 = v17;
    v20 = v17;
  }

  return v24;
}

+ (id)_readTokenAtPath:(id)a3 allowNotExists:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v19 = 0;
  v8 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v7 options:0 error:&v19];
  v9 = v19;
  if ([v8 length])
  {
    v18 = 0;
    v10 = [MEMORY[0x1E696AE40] propertyListWithData:v8 options:0 format:0 error:&v18];
    v11 = v18;

    if (v10)
    {
      goto LABEL_17;
    }

    v12 = PLMigrationGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v21 = v7;
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Failed to extract info from token data %{public}@: %@", buf, 0x16u);
    }

    if (!a5)
    {
      v10 = 0;
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (v6 && (PLUnderlyingPOSIXError(), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 code], v13, v14 == 2))
  {
    v10 = MEMORY[0x1E695E0F8];
  }

  else
  {
    v15 = PLMigrationGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v21 = v7;
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Failed to read data for token %{public}@: %@", buf, 0x16u);
    }

    if (a5)
    {
      v11 = v9;
LABEL_14:
      v16 = v11;
      v10 = 0;
      *a5 = v11;
      goto LABEL_17;
    }

    v10 = 0;
  }

  v11 = v9;
LABEL_17:

  return v10;
}

+ (BOOL)createForegroundRestoreFromCloudBackupCompleteTokenWithPathManager:(id)a3 error:(id *)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = [a3 cloudRestoreForegroundPhaseCompleteTokenPath];
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [v5 fileExistsAtPath:v4 isDirectory:0];

  if (v6)
  {
    v7 = PLMigrationGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v4];
      *buf = 138543362;
      v30 = v8;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_FAULT, "Foreground restore token already exists!  Should only be possible if MobileSlideShow datamigrator plugin has run twice: %{public}@", buf, 0xCu);
    }
  }

  v27[0] = @"Date";
  v9 = PLCompleteDateFormatter();
  v10 = [MEMORY[0x1E695DF00] date];
  v11 = [v9 stringFromDate:v10];
  v28[0] = v11;
  v27[1] = @"Build";
  v12 = [MEMORY[0x1E69BF1B8] currentBuildVersionString];
  v28[1] = v12;
  v27[2] = @"Process";
  v13 = [MEMORY[0x1E696AE30] processInfo];
  v14 = [v13 processName];
  v28[2] = v14;
  v27[3] = @"PID";
  v15 = MEMORY[0x1E696AD98];
  v16 = [MEMORY[0x1E696AE30] processInfo];
  v17 = [v15 numberWithInt:{objc_msgSend(v16, "processIdentifier")}];
  v28[3] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:4];

  v26 = 0;
  v19 = [a1 _writeTokenToPath:v4 withInfo:v18 allowOverwrite:1 error:&v26];
  v20 = v26;
  if ((v19 & 1) == 0)
  {
    v21 = PLMigrationGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v30 = v20;
      _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "Failed to write ForegroundRestoreFromCloudBackupCompleteToken %@", buf, 0xCu);
    }

    if (a4)
    {
      v22 = v20;
      *a4 = v20;
    }
  }

  return v19;
}

@end
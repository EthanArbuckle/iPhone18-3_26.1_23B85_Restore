@interface PLPhotoLibraryPathManager
+ (id)systemLibraryPathManager;
+ (void)assertSingleLibraryMode;
+ (void)enableMultiLibraryMode;
+ (void)throwMultiLibraryAPIMisuse;
+ (void)throwMultiLibraryAPIMisuseForLibraryPath:(id)a3;
- (NSString)description;
- (PLPhotoLibraryPathManager)init;
- (PLPhotoLibraryPathManager)initWithBaseDirectory:(id)a3;
- (PLPhotoLibraryPathManager)initWithLibraryURL:(id)a3 bundleScope:(unsigned __int16)a4 libraryFormat:(unsigned __int8)a5;
- (id)_commonPathsToExcludeFromTimeMachineAndICloudBackups;
- (id)_existingPrivateCacheDirectoriesToExclude;
- (id)_pathsToExcludeFromAllBackups;
- (id)_pathsToExcludeFromICloudBackups;
- (id)_pathsToExcludeFromICloudBackupsWithICPLEnabled;
- (id)_pathsToExcludeFromTimeMachineBackups;
- (id)_pathsToExplicitlyIncludeInAllBackups;
- (id)rebuildHistoryFilePath;
- (id)redactedDescription;
- (id)sqliteErrorIndicatorFilePath;
- (unsigned)_bundleFormatFromLibraryURL:(id)a3 libraryFormat:(unsigned __int8)a4;
- (void)resetBackupExclusionPathsForBackupType:(int64_t)a3;
- (void)setBackupExclusionAttributesForWellKnownLibrariesOrWithCreateOptions:(unint64_t)a3 andBackupType:(int64_t)a4;
- (void)setOrCompareLibraryURL:(id)a3;
- (void)updateBackupExclusionPathsForBackupType:(int64_t)a3;
@end

@implementation PLPhotoLibraryPathManager

+ (void)enableMultiLibraryMode
{
  if ((atomic_exchange(sMultiLibraryMode, 1u) & 1) == 0)
  {
    sMultiLibraryModeEnablingCallStack = [MEMORY[0x1E696AF00] callStackSymbols];

    MEMORY[0x1EEE66BB8]();
  }
}

- (id)sqliteErrorIndicatorFilePath
{
  v2 = [(PLPhotoLibraryPathManager *)self photoDirectoryWithType:2];
  v3 = [v2 stringByAppendingPathComponent:@"sqliteerror"];

  return v3;
}

+ (void)assertSingleLibraryMode
{
  if ([a1 isMultiLibraryModeEnabled])
  {

    [a1 throwMultiLibraryAPIMisuse];
  }
}

+ (id)systemLibraryPathManager
{
  v3 = [PLPhotoLibraryPathManager alloc];
  v4 = [a1 systemLibraryURL];
  v5 = [(PLPhotoLibraryPathManager *)v3 initWithLibraryURL:v4];

  return v5;
}

- (id)rebuildHistoryFilePath
{
  v2 = [(PLPhotoLibraryPathManager *)self photoDirectoryWithType:2];
  v3 = [v2 stringByAppendingPathComponent:@"rebuildHistory"];

  return v3;
}

- (void)setBackupExclusionAttributesForWellKnownLibrariesOrWithCreateOptions:(unint64_t)a3 andBackupType:(int64_t)a4
{
  v5 = a3;
  v27 = *MEMORY[0x1E69E9840];
  if ([(PLPhotoLibraryPathManager *)self isUBF])
  {
    v24 = 0;
    v7 = [(PLPhotoLibraryPathManager *)self createPathsForNewLibrariesWithError:&v24];
    v8 = v24;
    if (!v7)
    {
LABEL_21:

      return;
    }

    v9 = objc_opt_class();
    v10 = [(PLPhotoLibraryPathManager *)self libraryURL];
    v11 = [v9 wellKnownPhotoLibraryIdentifierForURL:v10];

    if (v11)
    {
      if ([PLPhotoLibraryPathManagerCore backupSupportedForWellKnownLibraryIdentifier:v11])
      {
        goto LABEL_15;
      }
    }

    else
    {
      v12 = objc_opt_class();
      v13 = [(PLPhotoLibraryPathManager *)self libraryURL];
      v14 = [v12 isSystemPhotoLibraryURL:v13];

      if ((v5 & 0x20) != 0 || v14)
      {
LABEL_15:
        [(PLPhotoLibraryPathManager *)self resetBackupExclusionPathsForBackupType:a4];
        v19 = [(PLPhotoLibraryPathManager *)self libraryURL];
        v23 = 0;
        v20 = [PLPhotoLibraryPathManagerCore setTimeMachineExclusionAttribute:0 url:v19 error:&v23];
        v17 = v23;

        if (!v20)
        {
          v18 = PLLibraryServicesGetLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v26 = v17;
            goto LABEL_18;
          }

          goto LABEL_19;
        }

        goto LABEL_20;
      }
    }

    v15 = [(PLPhotoLibraryPathManager *)self libraryURL];
    v22 = 0;
    v16 = [PLPhotoLibraryPathManagerCore setTimeMachineExclusionAttribute:1 url:v15 error:&v22];
    v17 = v22;

    if (!v16)
    {
      v18 = PLLibraryServicesGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v26 = v17;
LABEL_18:
        _os_log_impl(&dword_1AA9BD000, v18, OS_LOG_TYPE_ERROR, "Failed to set the backup exclusion marker for the library bundle. Error: %@", buf, 0xCu);
      }

LABEL_19:
    }

LABEL_20:

    goto LABEL_21;
  }

  if (!a4)
  {
    v21 = [(PLPhotoLibraryPathManager *)self _existingPrivateCacheDirectoriesToExclude];
    [v21 enumerateObjectsUsingBlock:&__block_literal_global_7909];
  }
}

void __112__PLPhotoLibraryPathManager_setBackupExclusionAttributesForWellKnownLibrariesOrWithCreateOptions_andBackupType___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:v2 isDirectory:1];
  v7 = 0;
  v4 = [PLPhotoLibraryPathManagerCore setTimeMachineExclusionAttribute:1 url:v3 error:&v7];
  v5 = v7;
  if (!v4)
  {
    v6 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v9 = v2;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_1AA9BD000, v6, OS_LOG_TYPE_ERROR, "Failed to set backup exclusion marker [DCIM private caches], path: %@, error: %@", buf, 0x16u);
    }
  }
}

- (void)updateBackupExclusionPathsForBackupType:(int64_t)a3
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = __Block_byref_object_copy__7914;
  v7[4] = __Block_byref_object_dispose__7915;
  v8 = 0;
  switch(a3)
  {
    case 3:
      v3 = [(PLPhotoLibraryPathManager *)self _pathsToExcludeFromICloudBackupsWithICPLEnabled];
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __69__PLPhotoLibraryPathManager_updateBackupExclusionPathsForBackupType___block_invoke_62;
      v4[3] = &unk_1E7931BC8;
      v4[4] = v7;
      [v3 enumerateObjectsUsingBlock:v4];
      goto LABEL_7;
    case 2:
      v3 = [(PLPhotoLibraryPathManager *)self _pathsToExcludeFromICloudBackups];
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __69__PLPhotoLibraryPathManager_updateBackupExclusionPathsForBackupType___block_invoke_61;
      v5[3] = &unk_1E7931BC8;
      v5[4] = v7;
      [v3 enumerateObjectsUsingBlock:v5];
      goto LABEL_7;
    case 1:
      v3 = [(PLPhotoLibraryPathManager *)self _pathsToExcludeFromTimeMachineBackups];
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __69__PLPhotoLibraryPathManager_updateBackupExclusionPathsForBackupType___block_invoke;
      v6[3] = &unk_1E7931BC8;
      v6[4] = v7;
      [v3 enumerateObjectsUsingBlock:v6];
LABEL_7:

      break;
  }

  _Block_object_dispose(v7, 8);
}

void __69__PLPhotoLibraryPathManager_updateBackupExclusionPathsForBackupType___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3 isDirectory:1];
  v5 = *(*(a1 + 32) + 8);
  obj = *(v5 + 40);
  v6 = [PLPhotoLibraryPathManagerCore setTimeMachineExclusionAttribute:1 url:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (!v6)
  {
    v7 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(*(*(a1 + 32) + 8) + 40);
      *buf = 138412546;
      v11 = v3;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_1AA9BD000, v7, OS_LOG_TYPE_ERROR, "Failed to set backup exclusion marker [time-machine], path: %@, error: %@", buf, 0x16u);
    }
  }
}

void __69__PLPhotoLibraryPathManager_updateBackupExclusionPathsForBackupType___block_invoke_61(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3 isDirectory:1];
  v5 = *(*(a1 + 32) + 8);
  obj = *(v5 + 40);
  v6 = [PLPhotoLibraryPathManagerCore setICloudBackupExclusionAttribute:1 url:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (!v6)
  {
    v7 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(*(*(a1 + 32) + 8) + 40);
      *buf = 138412546;
      v11 = v3;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_1AA9BD000, v7, OS_LOG_TYPE_ERROR, "Failed to set backup exclusion marker [iCloud], path: %@, error: %@", buf, 0x16u);
    }
  }
}

void __69__PLPhotoLibraryPathManager_updateBackupExclusionPathsForBackupType___block_invoke_62(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3 isDirectory:1];
  v5 = *(*(a1 + 32) + 8);
  obj = *(v5 + 40);
  v6 = [PLPhotoLibraryPathManagerCore setICloudBackupExclusionAttribute:1 url:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (!v6)
  {
    v7 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(*(*(a1 + 32) + 8) + 40);
      *buf = 138412546;
      v11 = v3;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_1AA9BD000, v7, OS_LOG_TYPE_ERROR, "Failed to set backup exclusion marker [iCloud-iCPL-enabled], path: %@, error: %@", buf, 0x16u);
    }
  }
}

- (void)resetBackupExclusionPathsForBackupType:(int64_t)a3
{
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy__7914;
  v12[4] = __Block_byref_object_dispose__7915;
  v13 = 0;
  v5 = [(PLPhotoLibraryPathManager *)self _pathsToExcludeFromAllBackups];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__PLPhotoLibraryPathManager_resetBackupExclusionPathsForBackupType___block_invoke;
  v11[3] = &unk_1E7931BC8;
  v11[4] = v12;
  [v5 enumerateObjectsUsingBlock:v11];

  v6 = [(PLPhotoLibraryPathManager *)self _pathsToExplicitlyIncludeInAllBackups];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__PLPhotoLibraryPathManager_resetBackupExclusionPathsForBackupType___block_invoke_58;
  v10[3] = &unk_1E7931BC8;
  v10[4] = v12;
  [v6 enumerateObjectsUsingBlock:v10];

  if (a3 == 2)
  {
    v7 = [(PLPhotoLibraryPathManager *)self _pathsToExcludeFromICloudBackupsWithICPLEnabled];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __68__PLPhotoLibraryPathManager_resetBackupExclusionPathsForBackupType___block_invoke_59;
    v9[3] = &unk_1E7931BC8;
    v9[4] = v12;
    [v7 enumerateObjectsUsingBlock:v9];
    goto LABEL_5;
  }

  if (a3 == 3)
  {
    v7 = [(PLPhotoLibraryPathManager *)self _pathsToExcludeFromICloudBackups];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __68__PLPhotoLibraryPathManager_resetBackupExclusionPathsForBackupType___block_invoke_60;
    v8[3] = &unk_1E7931BC8;
    v8[4] = v12;
    [v7 enumerateObjectsUsingBlock:v8];
LABEL_5:
  }

  [(PLPhotoLibraryPathManager *)self updateBackupExclusionPathsForBackupType:a3];
  _Block_object_dispose(v12, 8);
}

void __68__PLPhotoLibraryPathManager_resetBackupExclusionPathsForBackupType___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3 isDirectory:1];
  v5 = *(*(a1 + 32) + 8);
  obj = *(v5 + 40);
  v6 = [PLPhotoLibraryPathManagerCore setTimeMachineExclusionAttribute:1 url:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (!v6)
  {
    v7 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(*(*(a1 + 32) + 8) + 40);
      *buf = 138412546;
      v11 = v3;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_1AA9BD000, v7, OS_LOG_TYPE_ERROR, "Failed to set backup exclusion marker [all], path: %@, error: %@", buf, 0x16u);
    }
  }
}

void __68__PLPhotoLibraryPathManager_resetBackupExclusionPathsForBackupType___block_invoke_58(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3 isDirectory:1];
  v5 = *(*(a1 + 32) + 8);
  obj = *(v5 + 40);
  v6 = [PLPhotoLibraryPathManagerCore setTimeMachineExclusionAttribute:0 url:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (!v6)
  {
    v7 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(*(*(a1 + 32) + 8) + 40);
      *buf = 138412546;
      v16 = v3;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_1AA9BD000, v7, OS_LOG_TYPE_ERROR, "Failed to clear backup exclusion marker [include], path: %@, error: %@", buf, 0x16u);
    }
  }

  v9 = *(*(a1 + 32) + 8);
  v13 = *(v9 + 40);
  v10 = [PLPhotoLibraryPathManagerCore setICloudBackupExclusionAttribute:0 url:v4 error:&v13];
  objc_storeStrong((v9 + 40), v13);
  if (!v10)
  {
    v11 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(*(*(a1 + 32) + 8) + 40);
      *buf = 138412546;
      v16 = v3;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_1AA9BD000, v11, OS_LOG_TYPE_ERROR, "Failed to clear backup backup exclusion marker [include], path: %@, error: %@", buf, 0x16u);
    }
  }
}

void __68__PLPhotoLibraryPathManager_resetBackupExclusionPathsForBackupType___block_invoke_59(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3 isDirectory:1];
  v5 = *(*(a1 + 32) + 8);
  obj = *(v5 + 40);
  v6 = [PLPhotoLibraryPathManagerCore setICloudBackupExclusionAttribute:0 url:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (!v6)
  {
    v7 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(*(*(a1 + 32) + 8) + 40);
      *buf = 138412546;
      v11 = v3;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_1AA9BD000, v7, OS_LOG_TYPE_ERROR, "Failed to clear backup exclusion marker [iCloud], path: %@, error: %@", buf, 0x16u);
    }
  }
}

void __68__PLPhotoLibraryPathManager_resetBackupExclusionPathsForBackupType___block_invoke_60(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3 isDirectory:1];
  v5 = *(*(a1 + 32) + 8);
  obj = *(v5 + 40);
  v6 = [PLPhotoLibraryPathManagerCore setICloudBackupExclusionAttribute:0 url:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (!v6)
  {
    v7 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(*(*(a1 + 32) + 8) + 40);
      *buf = 138412546;
      v11 = v3;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_1AA9BD000, v7, OS_LOG_TYPE_ERROR, "Failed to clear backup exclusion marker [iCloud-iCPL-enabled], path: %@, error: %@", buf, 0x16u);
    }
  }
}

- (id)_pathsToExplicitlyIncludeInAllBackups
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(PLPhotoLibraryPathManager *)self photoDirectoryWithType:14];
  [v3 addObject:v4];

  return v3;
}

- (id)_pathsToExcludeFromICloudBackupsWithICPLEnabled
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(PLPhotoLibraryPathManager *)self photoDirectoryWithType:2 createIfNeeded:1 error:0];
  [v3 addObject:v4];

  v5 = [(PLPhotoLibraryPathManager *)self photoDirectoryWithType:4 createIfNeeded:1 error:0];
  [v3 addObject:v5];

  v6 = [(PLPhotoLibraryPathManager *)self photoDirectoryWithType:7 createIfNeeded:1 error:0];
  [v3 addObject:v6];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__PLPhotoLibraryPathManager__pathsToExcludeFromICloudBackupsWithICPLEnabled__block_invoke;
  v10[3] = &unk_1E7931BA0;
  v7 = v3;
  v11 = v7;
  v12 = self;
  [(PLPhotoLibraryPathManager *)self enumerateBundleScopesWithBlock:v10];
  v8 = v7;

  return v7;
}

void __76__PLPhotoLibraryPathManager__pathsToExcludeFromICloudBackupsWithICPLEnabled__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) photoDirectoryWithType:a3 createIfNeeded:1 error:0];
    [v4 addObject:v5];
  }
}

- (id)_pathsToExcludeFromICloudBackups
{
  v3 = [(PLPhotoLibraryPathManager *)self _commonPathsToExcludeFromTimeMachineAndICloudBackups];
  v4 = [(PLPhotoLibraryPathManager *)self photoDirectoryWithType:10 createIfNeeded:1 error:0];
  [v3 addObject:v4];

  return v3;
}

- (id)_pathsToExcludeFromTimeMachineBackups
{
  v3 = [(PLPhotoLibraryPathManager *)self _commonPathsToExcludeFromTimeMachineAndICloudBackups];
  v4 = [(PLPhotoLibraryPathManager *)self photoDirectoryWithType:11 createIfNeeded:1 error:0];
  [v3 addObject:v4];

  return v3;
}

- (id)_commonPathsToExcludeFromTimeMachineAndICloudBackups
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(PLPhotoLibraryPathManager *)self photoDirectoryWithType:2 createIfNeeded:1 error:0];
  [v3 addObject:v4];

  v5 = [(PLPhotoLibraryPathManager *)self photoDirectoryWithType:15 createIfNeeded:1 error:0];
  [v3 addObject:v5];

  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __81__PLPhotoLibraryPathManager__commonPathsToExcludeFromTimeMachineAndICloudBackups__block_invoke;
  v15 = &unk_1E7931BA0;
  v16 = self;
  v6 = v3;
  v17 = v6;
  [(PLPhotoLibraryPathManager *)self enumerateBundleScopesWithBlock:&v12];
  v7 = [(PLPhotoLibraryPathManager *)self photoDirectoryWithType:14 leafType:3 createIfNeeded:1 error:0, v12, v13, v14, v15, v16];
  [v6 addObject:v7];

  v8 = [(PLPhotoLibraryPathManager *)self photoDirectoryWithType:14 leafType:2 createIfNeeded:1 error:0];
  [v6 addObject:v8];

  v9 = v17;
  v10 = v6;

  return v6;
}

void __81__PLPhotoLibraryPathManager__commonPathsToExcludeFromTimeMachineAndICloudBackups__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (([objc_opt_class() bundleScopeShouldBePersistedForRebuild:a2] & 1) == 0)
  {
    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) photoDirectoryWithType:a3 createIfNeeded:1 error:0];
    [v5 addObject:v6];
  }
}

- (id)_pathsToExcludeFromAllBackups
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(PLPhotoLibraryPathManager *)self privateCacheDirectoryWithSubType:0 createIfNeeded:1 error:0];
  [v3 addObject:v4];

  v5 = [(PLPhotoLibraryPathManager *)self photoDirectoryWithType:19 createIfNeeded:1 error:0];
  v6 = [v5 stringByDeletingLastPathComponent];
  [v3 addObject:v6];

  v7 = [(PLPhotoLibraryPathManager *)self _existingPrivateCacheDirectoriesToExclude];
  [v3 addObjectsFromArray:v7];

  v8 = [(PLPhotoLibraryPathManager *)self externalDirectoryWithSubType:0 createIfNeeded:1 error:0];
  if (v8)
  {
    [v3 addObject:v8];
  }

  v9 = [(PLPhotoLibraryPathManager *)self photoDirectoryWithType:3 createIfNeeded:1 error:0];
  [v3 addObject:v9];

  v10 = [(PLPhotoLibraryPathManager *)self internalDirectoryWithSubType:6 additionalPathComponents:0 createIfNeeded:1 error:0];
  if (v10)
  {
    [v3 addObject:v10];
  }

  return v3;
}

- (id)_existingPrivateCacheDirectoriesToExclude
{
  v30[2] = *MEMORY[0x1E69E9840];
  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = MEMORY[0x1E695DFF8];
  v4 = [(PLPhotoLibraryPathManagerCore *)self->_internalPathManager basePrivateDirectoryPath];
  v5 = [v3 fileURLWithPath:v4 isDirectory:1];

  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = *MEMORY[0x1E695DB78];
  v30[0] = *MEMORY[0x1E695DC30];
  v30[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v23 = v5;
  v9 = [v6 enumeratorAtURL:v5 includingPropertiesForKeys:v8 options:4 errorHandler:0];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        v15 = [v14 lastPathComponent];
        if ([v15 isEqualToString:@"caches"])
        {
          v16 = [v23 path];
          v17 = [v14 URLByDeletingLastPathComponent];
          v18 = [v17 URLByDeletingLastPathComponent];
          v19 = [v18 path];
          v20 = [v16 isEqualToString:v19];

          if (!v20)
          {
            continue;
          }

          v15 = [v14 path];
          [v22 addObject:v15];
        }
      }

      v11 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }

  return v22;
}

- (void)setOrCompareLibraryURL:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = atomic_load(sMultiLibraryMode);
  if ((v6 & 1) == 0)
  {
    v7 = MEMORY[0x1E695DFF8];
    v8 = [v4 path];
    v17 = [v7 fileURLWithPath:v8 isDirectory:1];

    os_unfair_lock_lock(&sSingletonPhotoLibraryPathLock);
    WeakRetained = objc_loadWeakRetained(&sSingletonPhotoLibraryPath);
    if (WeakRetained)
    {
      v10 = PLIsUBFOnDCIMLibraryURLForSingletonLibraryPath(v17, WeakRetained);
      v11 = [v17 path];
      v12 = [v11 isEqualToString:WeakRetained];

      if ((v12 & 1) == 0 && !v10)
      {
        os_unfair_lock_unlock(&sSingletonPhotoLibraryPathLock);
        v13 = objc_opt_class();
        v14 = [v17 path];
        [v13 throwMultiLibraryAPIMisuseForLibraryPath:v14];

LABEL_9:
        v4 = v17;
        goto LABEL_10;
      }

      objc_storeStrong(&self->_singletonPhotoLibraryPath, WeakRetained);
    }

    else
    {
      v15 = [v17 path];
      singletonPhotoLibraryPath = self->_singletonPhotoLibraryPath;
      self->_singletonPhotoLibraryPath = v15;
    }

    objc_storeWeak(&sSingletonPhotoLibraryPath, self->_singletonPhotoLibraryPath);
    os_unfair_lock_unlock(&sSingletonPhotoLibraryPathLock);
    goto LABEL_9;
  }

LABEL_10:
}

- (id)redactedDescription
{
  v3 = [(PLPhotoLibraryPathManager *)self photoDirectoryWithType:1];
  v4 = [PLFileUtilities redactedDescriptionForPath:v3];

  v5 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = PLPhotoLibraryPathManager;
  v6 = [(PLPhotoLibraryPathManager *)&v10 description];
  v7 = PLStringFromPLPhotoLibraryPathManagerLibraryFormatShort(self->_format);
  v8 = [v5 stringWithFormat:@"%@ [%@] [%@]", v6, v7, v4];

  return v8;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = PLPhotoLibraryPathManager;
  v4 = [(PLPhotoLibraryPathManager *)&v9 description];
  v5 = PLStringFromPLPhotoLibraryPathManagerLibraryFormatShort(self->_format);
  v6 = [(PLPhotoLibraryPathManager *)self photoDirectoryWithType:1];
  v7 = [v3 stringWithFormat:@"%@ [%@] [%@]", v4, v5, v6];

  return v7;
}

- (unsigned)_bundleFormatFromLibraryURL:(id)a3 libraryFormat:(unsigned __int8)a4
{
  v4 = a4;
  v5 = a3;
  if (v4 != 2 && v4 != 1)
  {
    if (v4)
    {
      LOBYTE(v4) = 0;
    }

    else if ([objc_opt_class() isSystemPhotoLibraryURL:v5])
    {
      if (PLMobileSlideShowPhotoLibraryTestingMode_onceToken != -1)
      {
        dispatch_once(&PLMobileSlideShowPhotoLibraryTestingMode_onceToken, &__block_literal_global_3937);
      }

      if (PLMobileSlideShowPhotoLibraryTestingMode_sMobileSlideShowPhotoLibraryTestingMode == 2)
      {
        LOBYTE(v4) = 2;
      }

      else
      {
        LOBYTE(v4) = 1;
      }
    }

    else
    {
      LOBYTE(v4) = 2;
    }
  }

  return v4;
}

- (PLPhotoLibraryPathManager)initWithLibraryURL:(id)a3 bundleScope:(unsigned __int16)a4 libraryFormat:(unsigned __int8)a5
{
  v5 = a5;
  v6 = a4;
  v9 = a3;
  if (!v9)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryPathManagerImpl.m" lineNumber:82 description:{@"Invalid parameter not satisfying: %@", @"libraryURL"}];
  }

  v25.receiver = self;
  v25.super_class = PLPhotoLibraryPathManager;
  v10 = [(PLPhotoLibraryPathManager *)&v25 init];
  v11 = v10;
  if (v10)
  {
    [(PLPhotoLibraryPathManager *)v10 setOrCompareLibraryURL:v9];
    v12 = [(PLPhotoLibraryPathManager *)v11 _bundleFormatFromLibraryURL:v9 libraryFormat:v5];
    v11->_format = v12;
    if (v12 == 2)
    {
      v13 = [[PLPhotoLibraryPathManagerUBF alloc] initWithLibraryURL:v9 bundleScope:0];
      internalPathManager = v11->_internalPathManager;
      v11->_internalPathManager = &v13->super;

      if (!v6)
      {
        goto LABEL_9;
      }

      v15 = [(PLPhotoLibraryPathManager *)v11 photoDirectoryWithType:[(PLPhotoLibraryPathManagerCore *)v11->_internalPathManager photoLibraryPathTypeForBundleScope:v6]];
      v16 = [PLPhotoLibraryPathManagerUBF alloc];
      v17 = [MEMORY[0x1E695DFF8] fileURLWithPath:v15 isDirectory:1];
      v18 = [(PLPhotoLibraryPathManagerUBF *)v16 initWithLibraryURL:v17 bundleScope:v6];
      v19 = v11->_internalPathManager;
      v11->_internalPathManager = v18;
    }

    else
    {
      v20 = [[PLPhotoLibraryPathManagerDCIM alloc] initWithLibraryURL:v9 bundleScope:0];
      v21 = v11->_internalPathManager;
      v11->_internalPathManager = &v20->super;

      v15 = [[PLImportFileManager alloc] initWithPathManager:v11];
      [(PLPhotoLibraryPathManagerCore *)v11->_internalPathManager setImportFileManager:v15];
    }

LABEL_9:
    if (!v11->_internalPathManager)
    {
      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      [v24 handleFailureInMethod:a2 object:v11 file:@"PLPhotoLibraryPathManagerImpl.m" lineNumber:103 description:{@"Failed to create a valid path manager for url: %@", v9}];
    }
  }

  return v11;
}

- (PLPhotoLibraryPathManager)initWithBaseDirectory:(id)a3
{
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:a3 isDirectory:1];
  v5 = [(PLPhotoLibraryPathManager *)self initWithLibraryURL:v4];

  return v5;
}

- (PLPhotoLibraryPathManager)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"Invalid initializer used: %s", "-[PLPhotoLibraryPathManager init]"}];

  return 0;
}

+ (void)throwMultiLibraryAPIMisuse
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = PLBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1AA9BD000, v2, OS_LOG_TYPE_ERROR, "Error: API misuse. Operating in multi library mode but calling single library mode API.", buf, 2u);
  }

  if (PFOSVariantHasInternalDiagnostics())
  {
    v3 = PLBackendGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "File radar with sysdiagnose to component: Photos Backend Storage | all", buf, 2u);
    }

    v4 = PLBackendGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Ask for help in #help-photos-disclosed", buf, 2u);
    }
  }

  v5 = PLBackendGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1AA9BD000, v5, OS_LOG_TYPE_ERROR, "Call stack that enabled multi-library mode:", buf, 2u);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = sMultiLibraryModeEnablingCallStack;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = PLBackendGetLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v27 = v11;
          _os_log_impl(&dword_1AA9BD000, v12, OS_LOG_TYPE_ERROR, "  %@", buf, 0xCu);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v8);
  }

  v13 = sMultiLibraryModeEnablingCallStack;
  if (!sMultiLibraryModeEnablingCallStack)
  {
    v13 = &unk_1F1F912B0;
  }

  v14 = v13;
  v15 = MEMORY[0x1E695DF30];
  v16 = *MEMORY[0x1E695D930];
  v24 = @"EnablingCallStack";
  v25 = v14;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v18 = [v15 exceptionWithName:v16 reason:@"Calling single library mode API while in multi library mode" userInfo:v17];
  v19 = v18;

  objc_exception_throw(v18);
}

+ (void)throwMultiLibraryAPIMisuseForLibraryPath:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = PLBackendGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    WeakRetained = objc_loadWeakRetained(&sSingletonPhotoLibraryPath);
    v7 = 138412546;
    v8 = WeakRetained;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error: API misuse. Operating in single library mode for %@ but a different library was requested: %@", &v7, 0x16u);
  }

  v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Requesting different library while in single library mode" userInfo:0];
  objc_exception_throw(v6);
}

@end
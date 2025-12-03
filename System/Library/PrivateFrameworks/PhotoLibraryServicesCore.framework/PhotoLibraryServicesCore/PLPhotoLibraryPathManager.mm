@interface PLPhotoLibraryPathManager
+ (id)systemLibraryPathManager;
+ (void)assertSingleLibraryMode;
+ (void)enableMultiLibraryMode;
+ (void)throwMultiLibraryAPIMisuse;
+ (void)throwMultiLibraryAPIMisuseForLibraryPath:(id)path;
- (NSString)description;
- (PLPhotoLibraryPathManager)init;
- (PLPhotoLibraryPathManager)initWithBaseDirectory:(id)directory;
- (PLPhotoLibraryPathManager)initWithLibraryURL:(id)l bundleScope:(unsigned __int16)scope libraryFormat:(unsigned __int8)format;
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
- (unsigned)_bundleFormatFromLibraryURL:(id)l libraryFormat:(unsigned __int8)format;
- (void)resetBackupExclusionPathsForBackupType:(int64_t)type;
- (void)setBackupExclusionAttributesForWellKnownLibrariesOrWithCreateOptions:(unint64_t)options andBackupType:(int64_t)type;
- (void)setOrCompareLibraryURL:(id)l;
- (void)updateBackupExclusionPathsForBackupType:(int64_t)type;
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
  if ([self isMultiLibraryModeEnabled])
  {

    [self throwMultiLibraryAPIMisuse];
  }
}

+ (id)systemLibraryPathManager
{
  v3 = [PLPhotoLibraryPathManager alloc];
  systemLibraryURL = [self systemLibraryURL];
  v5 = [(PLPhotoLibraryPathManager *)v3 initWithLibraryURL:systemLibraryURL];

  return v5;
}

- (id)rebuildHistoryFilePath
{
  v2 = [(PLPhotoLibraryPathManager *)self photoDirectoryWithType:2];
  v3 = [v2 stringByAppendingPathComponent:@"rebuildHistory"];

  return v3;
}

- (void)setBackupExclusionAttributesForWellKnownLibrariesOrWithCreateOptions:(unint64_t)options andBackupType:(int64_t)type
{
  optionsCopy = options;
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
    libraryURL = [(PLPhotoLibraryPathManager *)self libraryURL];
    v11 = [v9 wellKnownPhotoLibraryIdentifierForURL:libraryURL];

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
      libraryURL2 = [(PLPhotoLibraryPathManager *)self libraryURL];
      v14 = [v12 isSystemPhotoLibraryURL:libraryURL2];

      if ((optionsCopy & 0x20) != 0 || v14)
      {
LABEL_15:
        [(PLPhotoLibraryPathManager *)self resetBackupExclusionPathsForBackupType:type];
        libraryURL3 = [(PLPhotoLibraryPathManager *)self libraryURL];
        v23 = 0;
        v20 = [PLPhotoLibraryPathManagerCore setTimeMachineExclusionAttribute:0 url:libraryURL3 error:&v23];
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

    libraryURL4 = [(PLPhotoLibraryPathManager *)self libraryURL];
    v22 = 0;
    v16 = [PLPhotoLibraryPathManagerCore setTimeMachineExclusionAttribute:1 url:libraryURL4 error:&v22];
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

  if (!type)
  {
    _existingPrivateCacheDirectoriesToExclude = [(PLPhotoLibraryPathManager *)self _existingPrivateCacheDirectoriesToExclude];
    [_existingPrivateCacheDirectoriesToExclude enumerateObjectsUsingBlock:&__block_literal_global_7909];
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

- (void)updateBackupExclusionPathsForBackupType:(int64_t)type
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = __Block_byref_object_copy__7914;
  v7[4] = __Block_byref_object_dispose__7915;
  v8 = 0;
  switch(type)
  {
    case 3:
      _pathsToExcludeFromICloudBackupsWithICPLEnabled = [(PLPhotoLibraryPathManager *)self _pathsToExcludeFromICloudBackupsWithICPLEnabled];
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __69__PLPhotoLibraryPathManager_updateBackupExclusionPathsForBackupType___block_invoke_62;
      v4[3] = &unk_1E7931BC8;
      v4[4] = v7;
      [_pathsToExcludeFromICloudBackupsWithICPLEnabled enumerateObjectsUsingBlock:v4];
      goto LABEL_7;
    case 2:
      _pathsToExcludeFromICloudBackupsWithICPLEnabled = [(PLPhotoLibraryPathManager *)self _pathsToExcludeFromICloudBackups];
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __69__PLPhotoLibraryPathManager_updateBackupExclusionPathsForBackupType___block_invoke_61;
      v5[3] = &unk_1E7931BC8;
      v5[4] = v7;
      [_pathsToExcludeFromICloudBackupsWithICPLEnabled enumerateObjectsUsingBlock:v5];
      goto LABEL_7;
    case 1:
      _pathsToExcludeFromICloudBackupsWithICPLEnabled = [(PLPhotoLibraryPathManager *)self _pathsToExcludeFromTimeMachineBackups];
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __69__PLPhotoLibraryPathManager_updateBackupExclusionPathsForBackupType___block_invoke;
      v6[3] = &unk_1E7931BC8;
      v6[4] = v7;
      [_pathsToExcludeFromICloudBackupsWithICPLEnabled enumerateObjectsUsingBlock:v6];
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

- (void)resetBackupExclusionPathsForBackupType:(int64_t)type
{
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy__7914;
  v12[4] = __Block_byref_object_dispose__7915;
  v13 = 0;
  _pathsToExcludeFromAllBackups = [(PLPhotoLibraryPathManager *)self _pathsToExcludeFromAllBackups];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__PLPhotoLibraryPathManager_resetBackupExclusionPathsForBackupType___block_invoke;
  v11[3] = &unk_1E7931BC8;
  v11[4] = v12;
  [_pathsToExcludeFromAllBackups enumerateObjectsUsingBlock:v11];

  _pathsToExplicitlyIncludeInAllBackups = [(PLPhotoLibraryPathManager *)self _pathsToExplicitlyIncludeInAllBackups];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__PLPhotoLibraryPathManager_resetBackupExclusionPathsForBackupType___block_invoke_58;
  v10[3] = &unk_1E7931BC8;
  v10[4] = v12;
  [_pathsToExplicitlyIncludeInAllBackups enumerateObjectsUsingBlock:v10];

  if (type == 2)
  {
    _pathsToExcludeFromICloudBackupsWithICPLEnabled = [(PLPhotoLibraryPathManager *)self _pathsToExcludeFromICloudBackupsWithICPLEnabled];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __68__PLPhotoLibraryPathManager_resetBackupExclusionPathsForBackupType___block_invoke_59;
    v9[3] = &unk_1E7931BC8;
    v9[4] = v12;
    [_pathsToExcludeFromICloudBackupsWithICPLEnabled enumerateObjectsUsingBlock:v9];
    goto LABEL_5;
  }

  if (type == 3)
  {
    _pathsToExcludeFromICloudBackupsWithICPLEnabled = [(PLPhotoLibraryPathManager *)self _pathsToExcludeFromICloudBackups];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __68__PLPhotoLibraryPathManager_resetBackupExclusionPathsForBackupType___block_invoke_60;
    v8[3] = &unk_1E7931BC8;
    v8[4] = v12;
    [_pathsToExcludeFromICloudBackupsWithICPLEnabled enumerateObjectsUsingBlock:v8];
LABEL_5:
  }

  [(PLPhotoLibraryPathManager *)self updateBackupExclusionPathsForBackupType:type];
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
  selfCopy = self;
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
  _commonPathsToExcludeFromTimeMachineAndICloudBackups = [(PLPhotoLibraryPathManager *)self _commonPathsToExcludeFromTimeMachineAndICloudBackups];
  v4 = [(PLPhotoLibraryPathManager *)self photoDirectoryWithType:10 createIfNeeded:1 error:0];
  [_commonPathsToExcludeFromTimeMachineAndICloudBackups addObject:v4];

  return _commonPathsToExcludeFromTimeMachineAndICloudBackups;
}

- (id)_pathsToExcludeFromTimeMachineBackups
{
  _commonPathsToExcludeFromTimeMachineAndICloudBackups = [(PLPhotoLibraryPathManager *)self _commonPathsToExcludeFromTimeMachineAndICloudBackups];
  v4 = [(PLPhotoLibraryPathManager *)self photoDirectoryWithType:11 createIfNeeded:1 error:0];
  [_commonPathsToExcludeFromTimeMachineAndICloudBackups addObject:v4];

  return _commonPathsToExcludeFromTimeMachineAndICloudBackups;
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
  selfCopy = self;
  v6 = v3;
  v17 = v6;
  [(PLPhotoLibraryPathManager *)self enumerateBundleScopesWithBlock:&v12];
  selfCopy = [(PLPhotoLibraryPathManager *)self photoDirectoryWithType:14 leafType:3 createIfNeeded:1 error:0, v12, v13, v14, v15, selfCopy];
  [v6 addObject:selfCopy];

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
  stringByDeletingLastPathComponent = [v5 stringByDeletingLastPathComponent];
  [v3 addObject:stringByDeletingLastPathComponent];

  _existingPrivateCacheDirectoriesToExclude = [(PLPhotoLibraryPathManager *)self _existingPrivateCacheDirectoriesToExclude];
  [v3 addObjectsFromArray:_existingPrivateCacheDirectoriesToExclude];

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
  basePrivateDirectoryPath = [(PLPhotoLibraryPathManagerCore *)self->_internalPathManager basePrivateDirectoryPath];
  v5 = [v3 fileURLWithPath:basePrivateDirectoryPath isDirectory:1];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v7 = *MEMORY[0x1E695DB78];
  v30[0] = *MEMORY[0x1E695DC30];
  v30[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v23 = v5;
  v9 = [defaultManager enumeratorAtURL:v5 includingPropertiesForKeys:v8 options:4 errorHandler:0];

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
        lastPathComponent = [v14 lastPathComponent];
        if ([lastPathComponent isEqualToString:@"caches"])
        {
          path = [v23 path];
          uRLByDeletingLastPathComponent = [v14 URLByDeletingLastPathComponent];
          v17URLByDeletingLastPathComponent = [uRLByDeletingLastPathComponent URLByDeletingLastPathComponent];
          path2 = [v17URLByDeletingLastPathComponent path];
          v20 = [path isEqualToString:path2];

          if (!v20)
          {
            continue;
          }

          lastPathComponent = [v14 path];
          [v22 addObject:lastPathComponent];
        }
      }

      v11 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }

  return v22;
}

- (void)setOrCompareLibraryURL:(id)l
{
  lCopy = l;
  v5 = lCopy;
  v6 = atomic_load(sMultiLibraryMode);
  if ((v6 & 1) == 0)
  {
    v7 = MEMORY[0x1E695DFF8];
    path = [lCopy path];
    v17 = [v7 fileURLWithPath:path isDirectory:1];

    os_unfair_lock_lock(&sSingletonPhotoLibraryPathLock);
    WeakRetained = objc_loadWeakRetained(&sSingletonPhotoLibraryPath);
    if (WeakRetained)
    {
      v10 = PLIsUBFOnDCIMLibraryURLForSingletonLibraryPath(v17, WeakRetained);
      path2 = [v17 path];
      v12 = [path2 isEqualToString:WeakRetained];

      if ((v12 & 1) == 0 && !v10)
      {
        os_unfair_lock_unlock(&sSingletonPhotoLibraryPathLock);
        v13 = objc_opt_class();
        path3 = [v17 path];
        [v13 throwMultiLibraryAPIMisuseForLibraryPath:path3];

LABEL_9:
        lCopy = v17;
        goto LABEL_10;
      }

      objc_storeStrong(&self->_singletonPhotoLibraryPath, WeakRetained);
    }

    else
    {
      path4 = [v17 path];
      singletonPhotoLibraryPath = self->_singletonPhotoLibraryPath;
      self->_singletonPhotoLibraryPath = path4;
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

- (unsigned)_bundleFormatFromLibraryURL:(id)l libraryFormat:(unsigned __int8)format
{
  formatCopy = format;
  lCopy = l;
  if (formatCopy != 2 && formatCopy != 1)
  {
    if (formatCopy)
    {
      LOBYTE(formatCopy) = 0;
    }

    else if ([objc_opt_class() isSystemPhotoLibraryURL:lCopy])
    {
      if (PLMobileSlideShowPhotoLibraryTestingMode_onceToken != -1)
      {
        dispatch_once(&PLMobileSlideShowPhotoLibraryTestingMode_onceToken, &__block_literal_global_3937);
      }

      if (PLMobileSlideShowPhotoLibraryTestingMode_sMobileSlideShowPhotoLibraryTestingMode == 2)
      {
        LOBYTE(formatCopy) = 2;
      }

      else
      {
        LOBYTE(formatCopy) = 1;
      }
    }

    else
    {
      LOBYTE(formatCopy) = 2;
    }
  }

  return formatCopy;
}

- (PLPhotoLibraryPathManager)initWithLibraryURL:(id)l bundleScope:(unsigned __int16)scope libraryFormat:(unsigned __int8)format
{
  formatCopy = format;
  scopeCopy = scope;
  lCopy = l;
  if (!lCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryPathManagerImpl.m" lineNumber:82 description:{@"Invalid parameter not satisfying: %@", @"libraryURL"}];
  }

  v25.receiver = self;
  v25.super_class = PLPhotoLibraryPathManager;
  v10 = [(PLPhotoLibraryPathManager *)&v25 init];
  v11 = v10;
  if (v10)
  {
    [(PLPhotoLibraryPathManager *)v10 setOrCompareLibraryURL:lCopy];
    v12 = [(PLPhotoLibraryPathManager *)v11 _bundleFormatFromLibraryURL:lCopy libraryFormat:formatCopy];
    v11->_format = v12;
    if (v12 == 2)
    {
      v13 = [[PLPhotoLibraryPathManagerUBF alloc] initWithLibraryURL:lCopy bundleScope:0];
      internalPathManager = v11->_internalPathManager;
      v11->_internalPathManager = &v13->super;

      if (!scopeCopy)
      {
        goto LABEL_9;
      }

      v15 = [(PLPhotoLibraryPathManager *)v11 photoDirectoryWithType:[(PLPhotoLibraryPathManagerCore *)v11->_internalPathManager photoLibraryPathTypeForBundleScope:scopeCopy]];
      v16 = [PLPhotoLibraryPathManagerUBF alloc];
      v17 = [MEMORY[0x1E695DFF8] fileURLWithPath:v15 isDirectory:1];
      v18 = [(PLPhotoLibraryPathManagerUBF *)v16 initWithLibraryURL:v17 bundleScope:scopeCopy];
      v19 = v11->_internalPathManager;
      v11->_internalPathManager = v18;
    }

    else
    {
      v20 = [[PLPhotoLibraryPathManagerDCIM alloc] initWithLibraryURL:lCopy bundleScope:0];
      v21 = v11->_internalPathManager;
      v11->_internalPathManager = &v20->super;

      v15 = [[PLImportFileManager alloc] initWithPathManager:v11];
      [(PLPhotoLibraryPathManagerCore *)v11->_internalPathManager setImportFileManager:v15];
    }

LABEL_9:
    if (!v11->_internalPathManager)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:v11 file:@"PLPhotoLibraryPathManagerImpl.m" lineNumber:103 description:{@"Failed to create a valid path manager for url: %@", lCopy}];
    }
  }

  return v11;
}

- (PLPhotoLibraryPathManager)initWithBaseDirectory:(id)directory
{
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:directory isDirectory:1];
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

+ (void)throwMultiLibraryAPIMisuseForLibraryPath:(id)path
{
  v11 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v4 = PLBackendGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    WeakRetained = objc_loadWeakRetained(&sSingletonPhotoLibraryPath);
    v7 = 138412546;
    v8 = WeakRetained;
    v9 = 2112;
    v10 = pathCopy;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error: API misuse. Operating in single library mode for %@ but a different library was requested: %@", &v7, 0x16u);
  }

  v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Requesting different library while in single library mode" userInfo:0];
  objc_exception_throw(v6);
}

@end
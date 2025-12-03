@interface PLThumbnailManagerCore
+ (BOOL)_hasTableChangesOnlyFromFormatIDs:(id)ds toFormatIDs:(id)iDs;
+ (BOOL)_hasTableFormatsAndAllAreCompressedForFormatIDs:(id)ds;
+ (BOOL)_isSuppressingTargetConfigComparedToSavedConfigForPathManager:(id)manager;
+ (BOOL)hasThumbnailConfigMismatchWithPathManager:(id)manager comparedToConfigPhase:(int64_t)phase;
+ (BOOL)isMissingThumbnailTablesWithPathManager:(id)manager;
+ (BOOL)isSuppressingTargetConfigDueToPendingThumbMigrationForPathManager:(id)manager;
+ (BOOL)wantsTableOnlyRebuildForThumbnailConfigDict:(id)dict;
+ (id)_configurationThumbnailFormatIDsWithPathManager:(id)manager;
+ (id)_formatIDsForIthmbFilesWithPathManager:(id)manager;
+ (id)_generateTableFormatsFromFormatIDs:(id)ds;
+ (id)_generateUncompressedImageTableSpecificationsForRunningConfigWithPathManager:(id)manager;
+ (id)_thumbnailFormatsFromIDs:(id)ds;
+ (id)supportedThumbnailFormatIDsForDeviceConfiguration:(id)configuration;
+ (id)tableThumbnailFormatsForConfigPhase:(int64_t)phase withPathManager:(id)manager;
+ (id)thumbnailConfigurationDictWithPathManager:(id)manager;
+ (id)thumbnailConfigurationPathWithPathManager:(id)manager;
+ (id)thumbnailFormatIDsForConfigPhase:(int64_t)phase withPathManager:(id)manager;
+ (id)thumbnailFormatsForConfigPhase:(int64_t)phase withPathManager:(id)manager;
+ (int)configurationThumbnailVersionWithPathManager:(id)manager;
+ (int)thumbnailVersionForConfigPhase:(int64_t)phase withPathManager:(id)manager;
+ (int64_t)allocatedFileSizeOfThumbnailTablesWithPathManager:(id)manager;
+ (int64_t)requiredThumbnailResetTypeWithPathManager:(id)manager comparedToConfigPhase:(int64_t)phase;
+ (void)enumerateThumbnailTablesWithPathManager:(id)manager fileManager:(id)fileManager handler:(id)handler;
+ (void)invalidateCachedConfig;
+ (void)invalidateIsSuppressingTargetConfigDueToPendingThumbMigrationForPathManager:(id)manager;
+ (void)removeThumbnailTablesUnsupportedOnly:(BOOL)only withPathManager:(id)manager fileManagerDelegate:(id)delegate;
+ (void)stampThumbnailConfiguration:(id)configuration toFile:(BOOL)file withPathManager:(id)manager;
- (PLThumbnailManagerCore)initWithPhotoLibraryPathManager:(id)manager;
- (id)_thumbManagerForFormatID:(unsigned __int16)d;
- (id)fastThumbPersistenceManagers;
- (id)thumbManagerForFormatID:(unsigned __int16)d thumbFileManagerClass:(Class)class readOnly:(BOOL)only;
- (void)dealloc;
@end

@implementation PLThumbnailManagerCore

- (id)fastThumbPersistenceManagers
{
  v26 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_ivarLock);
  if (!self->_fastImageTables)
  {
    v3 = objc_opt_class();
    pathManager = [(PLThumbnailManagerCore *)self pathManager];
    v5 = [v3 tableThumbnailFormatsForConfigPhase:1 withPathManager:pathManager];

    array = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        v11 = 0;
        do
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = -[PLThumbnailManagerCore _thumbManagerForFormatID:](self, "_thumbManagerForFormatID:", [*(*(&v19 + 1) + 8 * v11) formatID]);
          if (v12)
          {
            [array addObject:v12];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v9);
    }

    v13 = [array copy];
    fastImageTables = self->_fastImageTables;
    self->_fastImageTables = v13;

    v15 = PLThumbnailsGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = self->_fastImageTables;
      *buf = 138412290;
      v24 = v16;
      _os_log_impl(&dword_1AA9BD000, v15, OS_LOG_TYPE_DEBUG, "#### fastThumbPersistenceManagers %@", buf, 0xCu);
    }
  }

  os_unfair_lock_unlock(&self->_ivarLock);
  v17 = self->_fastImageTables;

  return v17;
}

- (id)thumbManagerForFormatID:(unsigned __int16)d thumbFileManagerClass:(Class)class readOnly:(BOOL)only
{
  onlyCopy = only;
  dCopy = d;
  [(NSLock *)self->_thumbManagersLock lock];
  if (self->_lastUsedThumbManagerFormatID != dCopy || (v9 = self->_lastUsedThumbManager) == 0)
  {
    thumbManagersByFormat = [(PLThumbnailManagerCore *)self thumbManagersByFormat];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:dCopy];
    v12 = [thumbManagersByFormat objectForKeyedSubscript:v11];

    null = [MEMORY[0x1E695DFB0] null];

    if (v12 == null)
    {
      v14 = [PLImageFormat formatWithID:dCopy];
      if ([v14 isTable])
      {
        pathManager = [(PLThumbnailManagerCore *)self pathManager];
        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d.%@", dCopy, @"ithmb"];
        v17 = [pathManager photoDirectoryWithType:11 createIfNeeded:1 error:0];
        pathManager2 = [v17 stringByAppendingPathComponent:v16];

        v19 = [v14 createTableWithPath:pathManager2 readOnly:onlyCopy format:v14];
      }

      else
      {
        v20 = [class alloc];
        pathManager2 = [(PLThumbnailManagerCore *)self pathManager];
        v19 = [v20 initWithImageFormat:v14 pathManager:pathManager2];
      }

      v9 = v19;

      if (v9)
      {
        thumbManagersByFormat2 = [(PLThumbnailManagerCore *)self thumbManagersByFormat];
        v22 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:dCopy];
        [thumbManagersByFormat2 setObject:v9 forKeyedSubscript:v22];

        v23 = v9;
      }
    }

    else
    {
      v9 = v12;
    }

    objc_storeStrong(&self->_lastUsedThumbManager, v9);
    self->_lastUsedThumbManagerFormatID = dCopy;
  }

  [(NSLock *)self->_thumbManagersLock unlock];

  return v9;
}

- (void)dealloc
{
  thumbManagersLock = self->_thumbManagersLock;
  self->_thumbManagersLock = 0;

  v4.receiver = self;
  v4.super_class = PLThumbnailManagerCore;
  [(PLThumbnailManagerCore *)&v4 dealloc];
}

- (PLThumbnailManagerCore)initWithPhotoLibraryPathManager:(id)manager
{
  v32 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  if (!managerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLThumbnailManagerCore.m" lineNumber:215 description:{@"Invalid parameter not satisfying: %@", @"pathManager"}];
  }

  v30.receiver = self;
  v30.super_class = PLThumbnailManagerCore;
  v7 = [(PLThumbnailManagerCore *)&v30 init];
  if (v7)
  {
    obj = manager;
    v8 = MEMORY[0x1E695DF20];
    v9 = [PLThumbnailManagerCore thumbnailFormatIDsForConfigPhase:1 withPathManager:managerCopy];
    v10 = [v8 sharedKeySetForKeys:v9];

    v11 = [MEMORY[0x1E695DF90] dictionaryWithSharedKeySet:v10];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v27;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v27 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v26 + 1) + 8 * i);
          null = [MEMORY[0x1E695DFB0] null];
          [(NSMutableDictionary *)v11 setObject:null forKey:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v14);
    }

    thumbManagersByFormat = v7->_thumbManagersByFormat;
    v7->_thumbManagersByFormat = v11;
    v20 = v11;

    objc_storeStrong(&v7->_pathManager, obj);
    v21 = objc_alloc_init(MEMORY[0x1E696AD10]);
    thumbManagersLock = v7->_thumbManagersLock;
    v7->_thumbManagersLock = v21;

    v7->_ivarLock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (id)_thumbManagerForFormatID:(unsigned __int16)d
{
  dCopy = d;
  v5 = objc_opt_class();
  pl_dispatch_once(&PLIsReallyAssetsd_didCheckReadOnly, &__block_literal_global_129_3947);
  v6 = ((PLIsReallyAssetsd_isAssetsd | __PLIsAssetsdProxyService) & 1) == 0;

  return [(PLThumbnailManagerCore *)self thumbManagerForFormatID:dCopy thumbFileManagerClass:v5 readOnly:v6];
}

+ (id)supportedThumbnailFormatIDsForDeviceConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if ([configurationCopy shouldUseNanoThumbnailFormats])
  {
    supportsASTC = [configurationCopy supportsASTC];
    v5 = &unk_1F1F91100;
    v6 = &unk_1F1F910E8;
  }

  else
  {
    if ([configurationCopy isTV])
    {
      v7 = &unk_1F1F91118;
      goto LABEL_10;
    }

    if ([configurationCopy isPad])
    {
      v7 = &unk_1F1F91130;
      goto LABEL_10;
    }

    supportsASTC = [configurationCopy isMac];
    v5 = &unk_1F1F91160;
    v6 = &unk_1F1F91148;
  }

  if (supportsASTC)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

LABEL_10:

  return v7;
}

+ (void)stampThumbnailConfiguration:(id)configuration toFile:(BOOL)file withPathManager:(id)manager
{
  fileCopy = file;
  configurationCopy = configuration;
  managerCopy = manager;
  v9 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(self, "thumbnailVersionForConfigPhase:withPathManager:", 2, managerCopy)}];
  [configurationCopy setObject:v9 forKey:@"PLThumbnailManagerVersionKey"];

  v10 = [self thumbnailFormatIDsForConfigPhase:2 withPathManager:managerCopy];
  firstObject = [v10 firstObject];
  [configurationCopy setObject:firstObject forKey:@"PLThumbnailManagerThumbnailFormatKey"];

  [configurationCopy setObject:v10 forKey:@"PLThumbnailManagerThumbnailFormatsKey"];
  if (fileCopy)
  {
    v12 = [MEMORY[0x1E696AE40] dataWithPropertyList:configurationCopy format:100 options:0 error:0];
    v13 = [self thumbnailConfigurationPathWithPathManager:managerCopy];
    [v12 writeToFile:v13 options:1073741825 error:0];
  }
}

+ (BOOL)hasThumbnailConfigMismatchWithPathManager:(id)manager comparedToConfigPhase:(int64_t)phase
{
  v26[1] = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  v7 = [self thumbnailFormatIDsForConfigPhase:0 withPathManager:managerCopy];
  v8 = [self thumbnailFormatIDsForConfigPhase:phase withPathManager:managerCopy];
  v9 = [self configurationThumbnailVersionWithPathManager:managerCopy];
  if (v9 <= 29)
  {
    if ([v8 count])
    {
      firstObject = [v8 firstObject];
      v26[0] = firstObject;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    }

    else
    {
      v11 = MEMORY[0x1E695E0F0];
    }

    if ([v7 count])
    {
      firstObject2 = [v7 firstObject];
      v25 = firstObject2;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
    }

    else
    {
      v14 = MEMORY[0x1E695E0F0];
    }

    if (v9 == [self thumbnailVersionForConfigPhase:phase withPathManager:managerCopy] && (objc_msgSend(v14, "isEqualToArray:", v11) & 1) != 0)
    {
      v12 = 0;
    }

    else
    {
      v15 = PLThumbnailsGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 67109890;
        v18 = v9;
        v19 = 1024;
        v20 = [self thumbnailVersionForConfigPhase:phase withPathManager:managerCopy];
        v21 = 2114;
        v22 = v7;
        v23 = 2114;
        v24 = v8;
        _os_log_impl(&dword_1AA9BD000, v15, OS_LOG_TYPE_DEFAULT, "hasThumbnailConfigMismatch (legacy) thumbnailVersion %d vs current %d, formats: %{public}@ vs desired: %{public}@", &v17, 0x22u);
      }

      v12 = 1;
    }

LABEL_21:
    goto LABEL_22;
  }

  if (v9 != [self thumbnailVersionForConfigPhase:phase withPathManager:managerCopy] || (objc_msgSend(v7, "isEqualToArray:", v8) & 1) == 0)
  {
    v11 = PLThumbnailsGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 67109890;
      v18 = v9;
      v19 = 1024;
      v20 = [self thumbnailVersionForConfigPhase:phase withPathManager:managerCopy];
      v21 = 2114;
      v22 = v7;
      v23 = 2114;
      v24 = v8;
      _os_log_impl(&dword_1AA9BD000, v11, OS_LOG_TYPE_DEFAULT, "hasThumbnailConfigMismatch (modern) thumbnailVersion %d vs current %d, formats: %{public}@ vs desired: %{public}@", &v17, 0x22u);
    }

    v12 = 1;
    goto LABEL_21;
  }

  v12 = 0;
LABEL_22:

  return v12;
}

+ (int)configurationThumbnailVersionWithPathManager:(id)manager
{
  v3 = [self thumbnailConfigurationDictWithPathManager:manager];
  v4 = [v3 objectForKey:@"PLThumbnailManagerVersionKey"];
  intValue = [v4 intValue];

  return intValue;
}

+ (BOOL)wantsTableOnlyRebuildForThumbnailConfigDict:(id)dict
{
  v3 = [dict objectForKeyedSubscript:@"PLThumbnailManagerRebuildingTablesOnly"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

+ (id)thumbnailConfigurationDictWithPathManager:(id)manager
{
  v4 = MEMORY[0x1E695DF90];
  managerCopy = manager;
  v6 = [v4 alloc];
  v7 = [self thumbnailConfigurationPathWithPathManager:managerCopy];

  v8 = [v6 initWithContentsOfFile:v7];
  if (!v8)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v8;
}

+ (id)thumbnailConfigurationPathWithPathManager:(id)manager
{
  v3 = [manager photoDirectoryWithType:11 createIfNeeded:1 error:0];
  v4 = [v3 stringByAppendingPathComponent:@"thumbnailConfiguration"];

  return v4;
}

+ (void)enumerateThumbnailTablesWithPathManager:(id)manager fileManager:(id)fileManager handler:(id)handler
{
  v37 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  fileManagerCopy = fileManager;
  handlerCopy = handler;
  if (managerCopy)
  {
    if (fileManagerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLThumbnailManagerCore.m" lineNumber:491 description:{@"Invalid parameter not satisfying: %@", @"pathManager"}];

    if (fileManagerCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLThumbnailManagerCore.m" lineNumber:492 description:{@"Invalid parameter not satisfying: %@", @"fileManager"}];

LABEL_3:
  if (!handlerCopy)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PLThumbnailManagerCore.m" lineNumber:493 description:{@"Invalid parameter not satisfying: %@", @"handler"}];
  }

  v10 = managerCopy;
  objc_sync_enter(v10);
  v28 = v10;
  v11 = [v10 photoDirectoryWithType:11 createIfNeeded:1 error:0];
  [fileManagerCopy contentsOfDirectoryAtPath:v11 error:0];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  obj = v33 = 0u;
  v12 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v12)
  {
    v13 = *v33;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v32 + 1) + 8 * i);
        v16 = [v11 stringByAppendingPathComponent:v15];
        v31 = 0;
        if ([fileManagerCopy fileExistsAtPath:v16 isDirectory:&v31])
        {
          if ((v31 & 1) == 0)
          {
            pathExtension = [v15 pathExtension];
            v18 = [pathExtension isEqualToString:@"ithmb"];

            if (v18)
            {
              stringByDeletingPathExtension = [v15 stringByDeletingPathExtension];
              integerValue = [stringByDeletingPathExtension integerValue];
              v21 = [self thumbnailFormatIDsForConfigPhase:1 withPathManager:v28];
              v22 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue];
              v23 = [v21 containsObject:v22];

              handlerCopy[2](handlerCopy, v16, v23 ^ 1u);
            }
          }
        }
      }

      v12 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v12);
  }

  objc_sync_exit(v28);
}

+ (int64_t)allocatedFileSizeOfThumbnailTablesWithPathManager:(id)manager
{
  v17[1] = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  v5 = objc_alloc_init(MEMORY[0x1E696AC08]);
  v17[0] = *MEMORY[0x1E695DC58];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__PLThumbnailManagerCore_allocatedFileSizeOfThumbnailTablesWithPathManager___block_invoke;
  v10[3] = &unk_1E792F950;
  v7 = v6;
  v11 = v7;
  v12 = &v13;
  [self enumerateThumbnailTablesWithPathManager:managerCopy fileManager:v5 handler:v10];
  v8 = v14[3];

  _Block_object_dispose(&v13, 8);
  return v8;
}

void __76__PLThumbnailManagerCore_allocatedFileSizeOfThumbnailTablesWithPathManager___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DFF8];
  v4 = a2;
  v8 = [[v3 alloc] initFileURLWithPath:v4 isDirectory:0];

  v5 = [v8 resourceValuesForKeys:*(a1 + 32) error:0];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E695DC58]];
  v7 = [v6 longLongValue];

  *(*(*(a1 + 40) + 8) + 24) += v7;
}

+ (void)removeThumbnailTablesUnsupportedOnly:(BOOL)only withPathManager:(id)manager fileManagerDelegate:(id)delegate
{
  v8 = MEMORY[0x1E696AC08];
  delegateCopy = delegate;
  managerCopy = manager;
  v11 = objc_alloc_init(v8);
  [v11 setDelegate:delegateCopy];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __99__PLThumbnailManagerCore_removeThumbnailTablesUnsupportedOnly_withPathManager_fileManagerDelegate___block_invoke;
  v13[3] = &unk_1E792F928;
  onlyCopy = only;
  v14 = v11;
  v12 = v11;
  [self enumerateThumbnailTablesWithPathManager:managerCopy fileManager:v12 handler:v13];
}

uint64_t __99__PLThumbnailManagerCore_removeThumbnailTablesUnsupportedOnly_withPathManager_fileManagerDelegate___block_invoke(uint64_t result, uint64_t a2, int a3)
{
  if (*(result + 40) != 1 || a3 != 0)
  {
    return [*(result + 32) removeItemAtPath:a2 error:0];
  }

  return result;
}

+ (BOOL)isMissingThumbnailTablesWithPathManager:(id)manager
{
  v32 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v24 = managerCopy;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = [self thumbnailFormatIDsForConfigPhase:1 withPathManager:managerCopy];
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v11 = +[PLImageFormat formatWithID:](PLImageFormat, "formatWithID:", [v10 intValue]);
        if ([v11 isTable])
        {
          intValue = [v10 intValue];
          v13 = MEMORY[0x1E696AEC0];
          v14 = intValue;
          v15 = v24;
          v16 = [v13 stringWithFormat:@"%d.%@", v14, @"ithmb"];
          v17 = [v15 photoDirectoryWithType:11 createIfNeeded:1 error:0];

          v18 = [v17 stringByAppendingPathComponent:v16];

          LOBYTE(v16) = [defaultManager fileExistsAtPath:v18];
          if ((v16 & 1) == 0)
          {
            v20 = PLThumbnailsGetLog();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              intValue2 = [v10 intValue];
              *buf = 67109120;
              v30 = intValue2;
              _os_log_impl(&dword_1AA9BD000, v20, OS_LOG_TYPE_DEFAULT, "Missing thumbnail table for format %d", buf, 8u);
            }

            v19 = 1;
            goto LABEL_14;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v25 objects:v31 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v19 = 0;
LABEL_14:

  return v19;
}

+ (int64_t)requiredThumbnailResetTypeWithPathManager:(id)manager comparedToConfigPhase:(int64_t)phase
{
  v29 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  if ([self hasThumbnailConfigMismatchWithPathManager:managerCopy comparedToConfigPhase:phase])
  {
    pl_dispatch_once(&PLIsReallyAssetsd_didCheckReadOnly, &__block_literal_global_129_3947);
    if ((PLIsReallyAssetsd_isAssetsd & 1) != 0 || (__PLIsAssetsdProxyService & 1) != 0 || PFProcessIsLaunchedToExecuteTests())
    {
      v7 = [self thumbnailVersionForConfigPhase:0 withPathManager:managerCopy];
      v8 = [self thumbnailVersionForConfigPhase:phase withPathManager:managerCopy];
      v9 = [self thumbnailFormatIDsForConfigPhase:0 withPathManager:managerCopy];
      v10 = [self thumbnailFormatIDsForConfigPhase:phase withPathManager:managerCopy];
      v11 = [self _hasTableChangesOnlyFromFormatIDs:v9 toFormatIDs:v10];
      v12 = v11;
      if (v11)
      {
        LOBYTE(v11) = [self _hasTableFormatsAndAllAreCompressedForFormatIDs:v10];
      }

      v14 = v7 == 30 && v8 > 30;
      v15 = v14 | v11;
      if ((v14 | v11))
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      v17 = PLThumbnailsGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138544386;
        v20 = v9;
        v21 = 2114;
        v22 = v10;
        v23 = 1024;
        v24 = v12;
        v25 = 1024;
        v26 = v15 & 1;
        v27 = 1024;
        v28 = v26 == 0;
        _os_log_impl(&dword_1AA9BD000, v17, OS_LOG_TYPE_DEFAULT, "Detected thumbnail configuration change: from formats: %{public}@ to formats: %{public}@, tableChangesOnly: %d, migrationToCompressedTablesOnly: %d, fullRebuild: %d", &v19, 0x28u);
      }
    }

    else
    {
      v16 = 3;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (BOOL)_hasTableFormatsAndAllAreCompressedForFormatIDs:(id)ds
{
  v3 = MEMORY[0x1E696AE18];
  dsCopy = ds;
  v5 = [v3 predicateWithBlock:&__block_literal_global_44_673];
  v6 = [dsCopy filteredArrayUsingPredicate:v5];

  v7 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_46];
  v8 = [v6 filteredArrayUsingPredicate:v7];

  if ([v6 count])
  {
    v9 = [v8 count];
    v10 = v9 == [v6 count];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

BOOL __74__PLThumbnailManagerCore__hasTableFormatsAndAllAreCompressedForFormatIDs___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = +[PLImageFormat formatWithID:](PLImageFormat, "formatWithID:", [a2 unsignedShortValue]);
  v3 = [v2 thumbnailKind] == 3 || objc_msgSend(v2, "thumbnailKind") == 4;

  return v3;
}

uint64_t __74__PLThumbnailManagerCore__hasTableFormatsAndAllAreCompressedForFormatIDs___block_invoke(uint64_t a1, void *a2)
{
  v2 = +[PLImageFormat formatWithID:](PLImageFormat, "formatWithID:", [a2 unsignedShortValue]);
  v3 = [v2 isTable];

  return v3;
}

+ (BOOL)_hasTableChangesOnlyFromFormatIDs:(id)ds toFormatIDs:(id)iDs
{
  dsCopy = ds;
  iDsCopy = iDs;
  firstObject = [dsCopy firstObject];
  firstObject2 = [iDsCopy firstObject];
  v9 = [firstObject isEqualToNumber:firstObject2];

  if (v9)
  {
    v10 = [dsCopy isEqualToArray:iDsCopy] ^ 1;
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

+ (id)tableThumbnailFormatsForConfigPhase:(int64_t)phase withPathManager:(id)manager
{
  managerCopy = manager;
  if (phase == 2 || (v7 = [self isSuppressingTargetConfigDueToPendingThumbMigrationForPathManager:managerCopy], phase == 1) && (v7 & 1) == 0)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __78__PLThumbnailManagerCore_tableThumbnailFormatsForConfigPhase_withPathManager___block_invoke;
    v11[3] = &unk_1E792F8E0;
    selfCopy = self;
    v12 = managerCopy;
    if (tableThumbnailFormatsForConfigPhase_withPathManager__s_onceToken != -1)
    {
      dispatch_once(&tableThumbnailFormatsForConfigPhase_withPathManager__s_onceToken, v11);
    }

    v8 = tableThumbnailFormatsForConfigPhase_withPathManager__s_cachedFormats;
  }

  else
  {
    v9 = [self thumbnailFormatIDsForConfigPhase:phase withPathManager:managerCopy];
    v8 = [self _generateTableFormatsFromFormatIDs:v9];
  }

  return v8;
}

void __78__PLThumbnailManagerCore_tableThumbnailFormatsForConfigPhase_withPathManager___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v4 = [v1 thumbnailFormatIDsForConfigPhase:2 withPathManager:*(a1 + 32)];
  v2 = [v1 _generateTableFormatsFromFormatIDs:v4];
  v3 = tableThumbnailFormatsForConfigPhase_withPathManager__s_cachedFormats;
  tableThumbnailFormatsForConfigPhase_withPathManager__s_cachedFormats = v2;
}

+ (id)thumbnailFormatsForConfigPhase:(int64_t)phase withPathManager:(id)manager
{
  managerCopy = manager;
  if (phase == 2 || (v7 = [self isSuppressingTargetConfigDueToPendingThumbMigrationForPathManager:managerCopy], phase == 1) && (v7 & 1) == 0)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __73__PLThumbnailManagerCore_thumbnailFormatsForConfigPhase_withPathManager___block_invoke;
    v11[3] = &unk_1E792F8E0;
    selfCopy = self;
    v12 = managerCopy;
    if (thumbnailFormatsForConfigPhase_withPathManager__s_onceToken != -1)
    {
      dispatch_once(&thumbnailFormatsForConfigPhase_withPathManager__s_onceToken, v11);
    }

    v8 = thumbnailFormatsForConfigPhase_withPathManager__s_cachedFormats;
  }

  else
  {
    v9 = [self thumbnailFormatIDsForConfigPhase:phase withPathManager:managerCopy];
    v8 = [self _thumbnailFormatsFromIDs:v9];
  }

  return v8;
}

void __73__PLThumbnailManagerCore_thumbnailFormatsForConfigPhase_withPathManager___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v4 = [v1 thumbnailFormatIDsForConfigPhase:2 withPathManager:*(a1 + 32)];
  v2 = [v1 _thumbnailFormatsFromIDs:v4];
  v3 = thumbnailFormatsForConfigPhase_withPathManager__s_cachedFormats;
  thumbnailFormatsForConfigPhase_withPathManager__s_cachedFormats = v2;
}

+ (id)thumbnailFormatIDsForConfigPhase:(int64_t)phase withPathManager:(id)manager
{
  managerCopy = manager;
  if (phase == 2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__PLThumbnailManagerCore_thumbnailFormatIDsForConfigPhase_withPathManager___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = self;
    if (thumbnailFormatIDsForConfigPhase_withPathManager__s_onceToken != -1)
    {
      dispatch_once(&thumbnailFormatIDsForConfigPhase_withPathManager__s_onceToken, block);
    }

    v7 = thumbnailFormatIDsForConfigPhase_withPathManager__s_cachedTargetFormatIDs;
  }

  else if (phase == 1)
  {
    if ([self isSuppressingTargetConfigDueToPendingThumbMigrationForPathManager:managerCopy])
    {
      selfCopy2 = self;
      v9 = 0;
    }

    else
    {
      selfCopy2 = self;
      v9 = 2;
    }

    v7 = [selfCopy2 thumbnailFormatIDsForConfigPhase:v9 withPathManager:managerCopy];
  }

  else
  {
    if (phase)
    {
      v10 = 0;
      goto LABEL_14;
    }

    v7 = [self _configurationThumbnailFormatIDsWithPathManager:managerCopy];
  }

  v10 = v7;
LABEL_14:

  return v10;
}

void __75__PLThumbnailManagerCore_thumbnailFormatIDsForConfigPhase_withPathManager___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = +[PLDeviceConfiguration defaultDeviceConfiguration];
  v2 = [v1 supportedThumbnailFormatIDsForDeviceConfiguration:v4];
  v3 = thumbnailFormatIDsForConfigPhase_withPathManager__s_cachedTargetFormatIDs;
  thumbnailFormatIDsForConfigPhase_withPathManager__s_cachedTargetFormatIDs = v2;
}

+ (int)thumbnailVersionForConfigPhase:(int64_t)phase withPathManager:(id)manager
{
  managerCopy = manager;
  switch(phase)
  {
    case 2:
      v10 = 31;
      break;
    case 1:
      if ([self isSuppressingTargetConfigDueToPendingThumbMigrationForPathManager:managerCopy])
      {
        selfCopy2 = self;
        v9 = 0;
      }

      else
      {
        selfCopy2 = self;
        v9 = 2;
      }

      v7 = [selfCopy2 thumbnailVersionForConfigPhase:v9 withPathManager:managerCopy];
      goto LABEL_11;
    case 0:
      v7 = [self configurationThumbnailVersionWithPathManager:managerCopy];
LABEL_11:
      v10 = v7;
      break;
    default:
      v10 = 0;
      break;
  }

  return v10;
}

+ (void)invalidateIsSuppressingTargetConfigDueToPendingThumbMigrationForPathManager:(id)manager
{
  v3 = [manager photoDirectoryWithType:1];
  if (v3)
  {
    v4 = v3;
    os_unfair_lock_lock(&s_isSupressingLock);
    [s_isSuppressingTargetConfigByBundleDirectory setObject:0 forKeyedSubscript:v4];
    os_unfair_lock_unlock(&s_isSupressingLock);
    v3 = v4;
  }
}

+ (BOOL)isSuppressingTargetConfigDueToPendingThumbMigrationForPathManager:(id)manager
{
  location[3] = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  v5 = [managerCopy photoDirectoryWithType:1];
  if (v5)
  {
    os_unfair_lock_lock(&s_isSupressingLock);
    v6 = [s_isSuppressingTargetConfigByBundleDirectory objectForKeyedSubscript:v5];
    if (!v6)
    {
      v7 = objc_initWeak(location, self);

      v8 = [PLLazyObject alloc];
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __92__PLThumbnailManagerCore_isSuppressingTargetConfigDueToPendingThumbMigrationForPathManager___block_invoke;
      v18 = &unk_1E792FFC0;
      objc_copyWeak(&v20, location);
      v19 = managerCopy;
      v6 = [(PLLazyObject *)v8 initWithBlock:&v15];

      objc_destroyWeak(&v20);
      objc_destroyWeak(location);
      v9 = s_isSuppressingTargetConfigByBundleDirectory;
      if (!s_isSuppressingTargetConfigByBundleDirectory)
      {
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v11 = s_isSuppressingTargetConfigByBundleDirectory;
        s_isSuppressingTargetConfigByBundleDirectory = dictionary;

        v9 = s_isSuppressingTargetConfigByBundleDirectory;
      }

      [v9 setObject:v6 forKeyedSubscript:{v5, v15, v16, v17, v18}];
    }

    os_unfair_lock_unlock(&s_isSupressingLock);
    objectValue = [v6 objectValue];
    bOOLValue = [objectValue BOOLValue];
  }

  else
  {
    v6 = PLThumbnailsGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = managerCopy;
      _os_log_impl(&dword_1AA9BD000, v6, OS_LOG_TYPE_ERROR, "Unable to determine thumbnail manager target config suppression state, can't determine libraryKey from path manager: %@", location, 0xCu);
    }

    bOOLValue = 0;
  }

  return bOOLValue;
}

id __92__PLThumbnailManagerCore_isSuppressingTargetConfigDueToPendingThumbMigrationForPathManager___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (WeakRetained)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(objc_opt_class(), "_isSuppressingTargetConfigComparedToSavedConfigForPathManager:", *(a1 + 32))}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (void)invalidateCachedConfig
{
  os_unfair_lock_lock(&s_isSupressingLock);
  [s_isSuppressingTargetConfigByBundleDirectory removeAllObjects];

  os_unfair_lock_unlock(&s_isSupressingLock);
}

+ (BOOL)_isSuppressingTargetConfigComparedToSavedConfigForPathManager:(id)manager
{
  managerCopy = manager;
  v5 = [self thumbnailVersionForConfigPhase:0 withPathManager:managerCopy];
  v6 = [self thumbnailFormatIDsForConfigPhase:0 withPathManager:managerCopy];
  v7 = [self thumbnailVersionForConfigPhase:2 withPathManager:managerCopy];
  v8 = [self thumbnailFormatIDsForConfigPhase:2 withPathManager:managerCopy];

  v9 = [self _hasTableChangesOnlyFromFormatIDs:v6 toFormatIDs:v8];
  if (v9)
  {
    LOBYTE(v9) = [self _hasTableFormatsAndAllAreCompressedForFormatIDs:v8];
  }

  v10 = (v5 == 30) & ~v9;
  if (v7 <= 30)
  {
    v10 = 0;
  }

  v11 = v10 | v9;

  return v11 & 1;
}

+ (id)_formatIDsForIthmbFilesWithPathManager:(id)manager
{
  v27 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  array = [MEMORY[0x1E695DF70] array];
  v4 = managerCopy;
  objc_sync_enter(v4);
  obj = v4;
  v5 = objc_alloc_init(MEMORY[0x1E696AC08]);
  v6 = [v4 photoDirectoryWithType:11 createIfNeeded:1 error:0];
  [v5 contentsOfDirectoryAtPath:v6 error:0];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v7 = v23 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = [v6 stringByAppendingPathComponent:v11];
        v21 = 0;
        if ([v5 fileExistsAtPath:v12 isDirectory:&v21])
        {
          if ((v21 & 1) == 0)
          {
            pathExtension = [v11 pathExtension];
            v14 = [pathExtension isEqualToString:@"ithmb"];

            if (v14)
            {
              stringByDeletingPathExtension = [v11 stringByDeletingPathExtension];
              integerValue = [stringByDeletingPathExtension integerValue];
              if (integerValue >= 1)
              {
                v17 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue];
                [array addObject:v17];
              }
            }
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  objc_sync_exit(obj);

  return array;
}

+ (id)_generateUncompressedImageTableSpecificationsForRunningConfigWithPathManager:(id)manager
{
  v19 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [self tableThumbnailFormatsForConfigPhase:1 withPathManager:managerCopy];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 thumbnailKind] == 1)
        {
          thumbnailSpecification = [v11 thumbnailSpecification];
          [v5 addObject:thumbnailSpecification];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

+ (id)_configurationThumbnailFormatIDsWithPathManager:(id)manager
{
  v40 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  if (managerCopy)
  {
    v5 = [objc_opt_class() thumbnailConfigurationDictWithPathManager:managerCopy];
    v6 = [v5 objectForKey:@"PLThumbnailManagerThumbnailFormatsKey"];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v9 = [v5 objectForKey:@"PLThumbnailManagerThumbnailFormatKey"];
      intValue = [v9 intValue];

      array = [MEMORY[0x1E695DF70] array];
      v12 = [PLImageFormat formatWithID:intValue];
      if (v12)
      {
        [array addObject:v12];
      }

      v27 = v12;
      if ((PLIsLimitedLibraryClient() & 1) == 0)
      {
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v13 = [self _formatIDsForIthmbFilesWithPathManager:{managerCopy, v12}];
        v14 = [v13 countByEnumeratingWithState:&v34 objects:v39 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v35;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v35 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = +[PLImageFormat formatWithID:](PLImageFormat, "formatWithID:", [*(*(&v34 + 1) + 8 * i) integerValue]);
              if (v18)
              {
                [array addObject:v18];
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v34 objects:v39 count:16];
          }

          while (v15);
        }
      }

      v29 = v5;
      v19 = [array sortedArrayUsingComparator:{&__block_literal_global_16, v27}];
      v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v19, "count")}];
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v20 = v19;
      v21 = [v20 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v31;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v31 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(*(*(&v30 + 1) + 8 * j), "formatID")}];
            [v8 addObject:v25];
          }

          v22 = [v20 countByEnumeratingWithState:&v30 objects:v38 count:16];
        }

        while (v22);
      }

      v5 = v29;
    }
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

+ (id)_generateTableFormatsFromFormatIDs:(id)ds
{
  v49 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  array = [MEMORY[0x1E695DF70] array];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = dsCopy;
  v6 = [v5 countByEnumeratingWithState:&v35 objects:v48 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v36;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v36 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = +[PLImageFormat formatWithID:](PLImageFormat, "formatWithID:", [*(*(&v35 + 1) + 8 * i) intValue]);
        if ([v10 isTable])
        {
          [array addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v35 objects:v48 count:16];
    }

    while (v7);
  }

  v29 = v5;

  v30 = array;
  v11 = [array sortedArrayUsingComparator:&__block_literal_global_682];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v31 objects:v47 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v32;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v31 + 1) + 8 * j);
        v17 = PLThumbnailsGetLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          shortDescription = [v16 shortDescription];
          [v16 size];
          v20 = v19;
          [v16 size];
          v22 = v21;
          isCropped = [v16 isCropped];
          *buf = 138413058;
          v40 = shortDescription;
          v41 = 1024;
          v42 = v20;
          v43 = 1024;
          v44 = v22;
          v45 = 1024;
          v46 = isCropped;
          _os_log_impl(&dword_1AA9BD000, v17, OS_LOG_TYPE_DEBUG, "#### Format %@ : %d x %d, crop %d", buf, 0x1Eu);
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v31 objects:v47 count:16];
    }

    while (v13);
  }

  v24 = v11;
  v25 = PLThumbnailsGetLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v40 = v24;
    _os_log_impl(&dword_1AA9BD000, v25, OS_LOG_TYPE_DEBUG, "#### fastTableFormats %@", buf, 0xCu);
  }

  v26 = PLThumbnailsGetLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v27 = [v24 count];
    *buf = 134217984;
    v40 = v27;
    _os_log_impl(&dword_1AA9BD000, v26, OS_LOG_TYPE_DEBUG, "#### fastFormatCount %lu", buf, 0xCu);
  }

  return v24;
}

+ (id)_thumbnailFormatsFromIDs:(id)ds
{
  v18 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  array = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = dsCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = +[PLImageFormat formatWithID:](PLImageFormat, "formatWithID:", [*(*(&v13 + 1) + 8 * i) intValue]);
        [array addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [array copy];

  return v11;
}

@end
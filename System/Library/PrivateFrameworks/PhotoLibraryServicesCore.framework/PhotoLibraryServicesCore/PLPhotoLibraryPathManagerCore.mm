@interface PLPhotoLibraryPathManagerCore
+ (BOOL)_persistSystemPhotoLibraryPath:(id)a3 sendChangeNotification:(BOOL)a4;
+ (BOOL)isSupportedFileSystemAtURL:(id)a3;
+ (BOOL)isSystemPhotoLibraryURL:(id)a3;
+ (BOOL)setICloudBackupExclusionAttribute:(BOOL)a3 url:(id)a4 error:(id *)a5;
+ (BOOL)setSystemLibraryURL:(id)a3 options:(unsigned __int16)a4 error:(id *)a5;
+ (BOOL)setTimeMachineExclusionAttribute:(BOOL)a3 url:(id)a4 error:(id *)a5;
+ (id)_constructLegacySystemPhotoLibraryURLFromUnresolvableBookmark:(id)a3;
+ (id)_photosLibrariesDataVaultPathForApplicationLibrariesDomain;
+ (id)_photosLibrariesDataVaultPathForLibraryBundleName:(id)a3;
+ (id)_readSystemPhotoLibraryPath;
+ (id)libraryURLFromDatabaseURL:(id)a3;
+ (id)managedPathWithUuid:(const char *)a3 base:(const char *)a4 fileMarker:(const char *)a5 extension:(const char *)a6;
+ (id)photosDataVaultPath;
+ (id)photosLibrariesDataVaultPath;
+ (id)rootURLForPhotoLibraryDomain:(int64_t)a3;
+ (id)systemLibraryBaseDirectory;
+ (id)systemLibraryURL;
+ (id)wellKnownPhotoLibraryURLForIdentifier:(int64_t)a3;
+ (int64_t)wellKnownPhotoLibraryIdentifierForURL:(id)a3;
+ (unint64_t)libraryCreateOptionsForWellKnownLibraryIdentifier:(int64_t)a3;
+ (void)_updateSystemLibraryURLWithOldValue:(id)a3;
+ (void)initialize;
+ (void)listenForSystemPhotoLibraryURLChanges;
+ (void)recordPrevSystemLibraryPath:(id)a3;
- (BOOL)createDirectoryOnceWithPath:(id)a3 mask:(unsigned __int8)a4 pathType:(unsigned __int8)a5 error:(id *)a6;
- (BOOL)internalValidateCreationRequestWithError:(id *)a3;
- (BOOL)isDataProtectionComplete;
- (BOOL)path:(id)a3 isSubpathOfPhotoDirectoryWithType:(unsigned __int8)a4;
- (BOOL)pathRelativeToBundle:(id)a3 isSubpathOfPhotoDirectoryWithType:(unsigned __int8)a4;
- (BOOL)updateExclusionAttributeWithPath:(id)a3 mask:(unsigned __int8)a4 pathType:(unsigned __int8)a5 error:(id *)a6;
- (BOOL)updateTimeMachineExclusionAttributeForExcludePath:(id)a3 error:(id *)a4;
- (BOOL)validateCreationRequestWithError:(id *)a3;
- (PLFileSystemCapabilities)capabilities;
- (PLPhotoLibraryPathManagerCore)init;
- (PLPhotoLibraryPathManagerCore)initWithLibraryURL:(id)a3 bundleScope:(unsigned __int16)a4;
- (id)assetAbbreviatedMetadataDirectoryForDirectory:(id)a3 rootPath:(id)a4;
- (id)assetAbbreviatedMetadataDirectoryForDirectory:(id)a3 type:(unsigned __int8)a4 bundleScope:(unsigned __int16)a5;
- (id)assetBaseFilenameForAdjustmentFilePath:(id)a3;
- (id)assetMainFilePathWithDirectory:(id)a3 filename:(id)a4 bundleScope:(unsigned __int16)a5;
- (id)clientOwnedDirectoryPathsForClientAccess:(id)a3;
- (id)externalDirectoryWithSubType:(unsigned __int8)a3 leafType:(unsigned __int8)a4 additionalPathComponents:(id)a5;
- (id)externalDirectoryWithSubType:(unsigned __int8)a3 leafType:(unsigned __int8)a4 additionalPathComponents:(id)a5 createIfNeeded:(BOOL)a6 error:(id *)a7;
- (id)internalDirectoryWithSubType:(unsigned __int8)a3 additionalPathComponents:(id)a4;
- (id)internalDirectoryWithSubType:(unsigned __int8)a3 additionalPathComponents:(id)a4 createIfNeeded:(BOOL)a5 error:(id *)a6;
- (id)knownDBPaths;
- (id)pathForCPLStatus;
- (id)pathsForClientAccess:(id)a3;
- (id)pathsForLibraryFilesystemSizeCalculation;
- (id)pathsGroupedByAssetBasePathFromFilePaths:(id)a3 populateInvalidAdjustmentPaths:(id)a4;
- (id)photoDirectoryWithType:(unsigned __int8)a3 leafType:(unsigned __int8)a4 additionalPathComponents:(id)a5;
- (id)photoDirectoryWithType:(unsigned __int8)a3 leafType:(unsigned __int8)a4 additionalPathComponents:(id)a5 createIfNeeded:(BOOL)a6 error:(id *)a7;
- (id)photoMetadataDirectoryForMediaInMainDirectory:(id)a3;
- (id)photosAsideDatabasePath;
- (id)photosCPLDatabasePath;
- (id)privateCacheDirectoryWithSubType:(unsigned __int8)a3 leafType:(unsigned __int8)a4 additionalPathComponents:(id)a5;
- (id)privateCacheDirectoryWithSubType:(unsigned __int8)a3 leafType:(unsigned __int8)a4 additionalPathComponents:(id)a5 createIfNeeded:(BOOL)a6 error:(id *)a7;
- (id)privateDirectoryWithBundleIdentifier:(id)a3 createIfNeeded:(BOOL)a4;
- (id)privateDirectoryWithSubType:(unsigned __int8)a3 leafType:(unsigned __int8)a4 additionalPathComponents:(id)a5;
- (id)privateDirectoryWithSubType:(unsigned __int8)a3 leafType:(unsigned __int8)a4 additionalPathComponents:(id)a5 createIfNeeded:(BOOL)a6 error:(id *)a7;
- (id)purgeableSubdirectoriesWithType:(unsigned __int8)a3 createIfNeeded:(BOOL)a4 error:(id *)a5;
- (id)readOnlyUrlWithIdentifier:(id)a3;
- (id)temporaryDragAndDropDirectoryCreateIfNeeded:(BOOL)a3 error:(id *)a4;
- (id)temporaryFileBackedDebugDirectoryCreateIfNeeded:(BOOL)a3 error:(id *)a4;
- (void)enumerateBundleScopesWithBlock:(id)a3;
- (void)externalDirectoryCreationMaskResetWithSubType:(unsigned __int8)a3;
- (void)internalDirectoryCreationMaskResetWithSubType:(unsigned __int8)a3;
- (void)obtainAccessAndWaitWithFileWithIdentifier:(id)a3 mode:(unsigned __int8)a4 toURLWithHandler:(id)a5;
- (void)photoDirectoryCreationMaskResetWithType:(unsigned __int8)a3;
- (void)postInit;
- (void)privateCacheDirectoryCreationMaskResetWithSubType:(unsigned __int8)a3;
- (void)privateDirectoryCreationMaskResetWithSubType:(unsigned __int8)a3;
- (void)setDataProtectionComplete:(BOOL)a3;
- (void)setExtendedAttributesWithIdentifier:(id)a3;
- (void)setExtendedAttributesWithIdentifier:(id)a3 andURL:(id)a4;
@end

@implementation PLPhotoLibraryPathManagerCore

+ (id)photosLibrariesDataVaultPath
{
  v2 = [a1 photosDataVaultPath];
  v3 = [v2 URLByAppendingPathComponent:@"Libraries" isDirectory:1];

  return v3;
}

+ (id)photosDataVaultPath
{
  v2 = +[PLFileUtilities embeddedHomeDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"Library"];

  v4 = MEMORY[0x1E695DFF8];
  v5 = [v3 stringByAppendingPathComponent:@"Photos"];
  v6 = [v4 fileURLWithPath:v5 isDirectory:1];

  return v6;
}

+ (id)systemLibraryURL
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [a1 systemLibraryURLIfResolvable];
  if (!v3)
  {
    v4 = [a1 _legacySystemLibraryBookmarkData];
    if (v4 && ([a1 _constructLegacySystemPhotoLibraryURLFromUnresolvableBookmark:v4], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v3 = v5;
      v6 = PLBackendGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [v3 path];
        v11 = 138412290;
        v12 = v7;
        v8 = "Constructed legacy SPL URL from unresolvable bookmark: %@";
LABEL_8:
        _os_log_impl(&dword_1AA9BD000, v6, OS_LOG_TYPE_DEFAULT, v8, &v11, 0xCu);
      }
    }

    else
    {
      v3 = +[PLFileUtilities defaultSystemLibraryURL];
      v6 = PLBackendGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [v3 path];
        v11 = 138412290;
        v12 = v7;
        v8 = "Returning default system library path (%@) as SPL";
        goto LABEL_8;
      }
    }

    os_unfair_lock_lock(&splLock);
    v9 = [v3 path];
    [a1 _persistSystemPhotoLibraryPath:v9 sendChangeNotification:0];

    os_unfair_lock_unlock(&splLock);
  }

  return v3;
}

+ (void)initialize
{
  pl_dispatch_once(&PLIsReallyAssetsd_didCheckReadOnly, &__block_literal_global_129_3947);
  if ((PLIsReallyAssetsd_isAssetsd & 1) == 0 && (__PLIsAssetsdProxyService & 1) == 0)
  {

    [a1 listenForSystemPhotoLibraryURLChanges];
  }
}

+ (void)listenForSystemPhotoLibraryURLChanges
{
  v2 = dispatch_get_global_queue(0, 0);
  notify_register_dispatch("com.apple.photos.systemphotolibraryurl", &splURLChangeNotificationToken, v2, &__block_literal_global_10738);
}

- (void)postInit
{
  v3 = [(PLPhotoLibraryPathManagerCore *)self photoDirectoryWithType:34 additionalPathComponents:@"assetUUIDForPath.plist"];
  [(PLPhotoLibraryPathManagerCore *)self setAssetUUIDRecoveryMappingPath:v3];
}

- (id)pathForCPLStatus
{
  v2 = [(PLPhotoLibraryPathManagerCore *)self photoDirectoryWithType:14 leafType:3 createIfNeeded:1 error:0];
  v3 = [v2 stringByAppendingPathComponent:@"syncstatus.plist"];

  return v3;
}

- (id)pathsGroupedByAssetBasePathFromFilePaths:(id)a3 populateInvalidAdjustmentPaths:(id)a4
{
  v5 = a3;
  v6 = a4;
  IsAbstract = _PFThrowMethodIsAbstract();
  return [(PLPhotoLibraryPathManagerCore *)IsAbstract assetBaseFilenameForAdjustmentFilePath:v8, v9];
}

- (id)assetBaseFilenameForAdjustmentFilePath:(id)a3
{
  v3 = a3;
  IsAbstract = _PFThrowMethodIsAbstract();
  return [(PLPhotoLibraryPathManagerCore *)IsAbstract photoMetadataDirectoryForMediaInMainDirectory:v5, v6];
}

- (id)photoMetadataDirectoryForMediaInMainDirectory:(id)a3
{
  v3 = a3;
  IsAbstract = _PFThrowMethodIsAbstract();
  return [(PLPhotoLibraryPathManagerCore *)IsAbstract persistedAlbumDataDirectoryCreateIfNeeded:v5 error:v6, v7];
}

- (id)assetAbbreviatedMetadataDirectoryForDirectory:(id)a3 rootPath:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (([(__CFString *)v5 hasPrefix:v6]& 1) != 0)
  {
    v7 = v5;
    goto LABEL_3;
  }

  if (-[__CFString hasPrefix:](v5, "hasPrefix:", @"/private/") && ([v6 hasPrefix:@"/private/"] & 1) == 0)
  {
    v7 = -[__CFString substringFromIndex:](v5, "substringFromIndex:", [@"/private" length]);
    if (![v7 hasPrefix:v6])
    {
LABEL_10:

      goto LABEL_11;
    }

LABEL_3:
    v8 = [v7 length];
    if (v8 == [v6 length])
    {
      v5 = &stru_1F1F75560;
    }

    else
    {
      v5 = [v7 substringFromIndex:{objc_msgSend(v6, "length") + 1}];
    }

    goto LABEL_10;
  }

LABEL_11:

  return v5;
}

- (id)assetAbbreviatedMetadataDirectoryForDirectory:(id)a3 type:(unsigned __int8)a4 bundleScope:(unsigned __int16)a5
{
  v5 = a3;
  IsAbstract = _PFThrowMethodIsAbstract();
  return [(PLPhotoLibraryPathManagerCore *)IsAbstract ensureFileProviderSyncExclusionAttributeIsSetWithError:v7, v8];
}

- (void)setDataProtectionComplete:(BOOL)a3
{
  v3 = a3;
  v4 = [(PLPhotoLibraryPathManagerCore *)self _dataProtectionIndicatorFilePath];
  PLMakeIndicatorFileExistAtPath(v4, v3);
}

- (BOOL)isDataProtectionComplete
{
  v2 = [(PLPhotoLibraryPathManagerCore *)self _dataProtectionIndicatorFilePath];
  v3 = PLDoesIndicatorFileExistAtPath(v2);

  return v3;
}

- (id)pathsForLibraryFilesystemSizeCalculation
{
  IsAbstract = _PFThrowMethodIsAbstract();
  [(PLPhotoLibraryPathManagerCore *)IsAbstract obtainAccessAndWaitWithFileWithIdentifier:v3 mode:v4 toURLWithHandler:v5, v6];
  return result;
}

- (void)obtainAccessAndWaitWithFileWithIdentifier:(id)a3 mode:(unsigned __int8)a4 toURLWithHandler:(id)a5
{
  v6 = a3;
  v7 = a5;
  IsAbstract = _PFThrowMethodIsAbstract();
  [(PLPhotoLibraryPathManagerCore *)IsAbstract setExtendedAttributesWithIdentifier:v9 andURL:v10, v11];
}

- (void)setExtendedAttributesWithIdentifier:(id)a3 andURL:(id)a4
{
  v5 = a3;
  v6 = a4;
  IsAbstract = _PFThrowMethodIsAbstract();
  [(PLPhotoLibraryPathManagerCore *)IsAbstract setExtendedAttributesWithIdentifier:v8, v9];
}

- (void)setExtendedAttributesWithIdentifier:(id)a3
{
  v3 = a3;
  IsAbstract = _PFThrowMethodIsAbstract();
  [(PLPhotoLibraryPathManagerCore *)IsAbstract readOnlyUrlWithIdentifier:v5, v6];
}

- (id)readOnlyUrlWithIdentifier:(id)a3
{
  v3 = a3;
  IsAbstract = _PFThrowMethodIsAbstract();
  return [(PLPhotoLibraryPathManagerCore *)IsAbstract shouldUseFileIdentifierForBundleScope:v5, v6];
}

- (id)temporaryDragAndDropDirectoryCreateIfNeeded:(BOOL)a3 error:(id *)a4
{
  v5 = a3;
  v21 = *MEMORY[0x1E69E9840];
  v6 = NSTemporaryDirectory();
  v7 = [v6 stringByAppendingPathComponent:@"com.apple.photos.drag-and-drop"];

  if (v5)
  {
    v14 = 0;
    v8 = [PLFileUtilities createDirectoryAtPath:v7 error:&v14];
    v9 = v14;
    v10 = v9;
    if (!v8)
    {
      if (a4)
      {
        v11 = v9;
        *a4 = v10;
      }

      else
      {
        v12 = PLBackendGetLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v16 = "[PLPhotoLibraryPathManagerCore temporaryDragAndDropDirectoryCreateIfNeeded:error:]";
          v17 = 2112;
          v18 = v7;
          v19 = 2112;
          v20 = v10;
          _os_log_impl(&dword_1AA9BD000, v12, OS_LOG_TYPE_ERROR, "%s: failed to create directory: %@ with error: %@", buf, 0x20u);
        }
      }
    }
  }

  return v7;
}

- (id)temporaryFileBackedDebugDirectoryCreateIfNeeded:(BOOL)a3 error:(id *)a4
{
  v5 = a3;
  v21 = *MEMORY[0x1E69E9840];
  v6 = NSTemporaryDirectory();
  v7 = [v6 stringByAppendingPathComponent:@"com.apple.photos.file-backed-datasource"];

  if (v5)
  {
    v14 = 0;
    v8 = [PLFileUtilities createDirectoryAtPath:v7 error:&v14];
    v9 = v14;
    v10 = v9;
    if (!v8)
    {
      if (a4)
      {
        v11 = v9;
        *a4 = v10;
        v12 = v7;
        v7 = 0;
      }

      else
      {
        v12 = PLBackendGetLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v16 = "[PLPhotoLibraryPathManagerCore temporaryFileBackedDebugDirectoryCreateIfNeeded:error:]";
          v17 = 2112;
          v18 = v7;
          v19 = 2112;
          v20 = v10;
          _os_log_impl(&dword_1AA9BD000, v12, OS_LOG_TYPE_ERROR, "%s: failed to create directory: %@ with error: %@", buf, 0x20u);
        }
      }
    }
  }

  return v7;
}

- (id)knownDBPaths
{
  v9[4] = *MEMORY[0x1E69E9840];
  v3 = [(PLPhotoLibraryPathManagerCore *)self photosDatabasePath];
  v9[0] = v3;
  v4 = [(PLPhotoLibraryPathManagerCore *)self photosAsideDatabasePath];
  v9[1] = v4;
  v5 = [(PLPhotoLibraryPathManagerCore *)self privateDirectoryWithSubType:3];
  v9[2] = v5;
  v6 = [(PLPhotoLibraryPathManagerCore *)self photosCPLDatabasePath];
  v9[3] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  return v7;
}

- (id)assetMainFilePathWithDirectory:(id)a3 filename:(id)a4 bundleScope:(unsigned __int16)a5
{
  v6 = a3;
  v7 = a4;
  IsAbstract = _PFThrowMethodIsAbstract();
  return [(PLPhotoLibraryPathManagerCore *)IsAbstract purgeableSubdirectoriesWithType:v9 createIfNeeded:v10 error:v11, v12];
}

- (id)purgeableSubdirectoriesWithType:(unsigned __int8)a3 createIfNeeded:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v7 = a3;
  v22 = *MEMORY[0x1E69E9840];
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = [(PLPhotoLibraryPathManagerCore *)self purgeableSubdirectoryNamesWithType:v7];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [(PLPhotoLibraryPathManagerCore *)self photoDirectoryWithType:v7 leafType:1 additionalPathComponents:*(*(&v17 + 1) + 8 * i) createIfNeeded:v6 error:a5];
        [v9 addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  return v9;
}

- (id)internalDirectoryWithSubType:(unsigned __int8)a3 additionalPathComponents:(id)a4 createIfNeeded:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v8 = a3;
  v10 = a4;
  v11 = [(PLPhotoLibraryPathManagerCore *)self internalDirectoryWithSubType:v8 additionalPathComponents:v10];
  if (v11 && v7)
  {
    if ([v10 length])
    {
      v12 = 1;
    }

    else
    {
      v12 = 6;
    }

    [(PLPhotoLibraryPathManagerCore *)self createDirectoryOnceWithPath:v11 mask:v12 pathType:v8 error:a6];
  }

  return v11;
}

- (id)internalDirectoryWithSubType:(unsigned __int8)a3 additionalPathComponents:(id)a4
{
  v4 = a4;
  IsAbstract = _PFThrowMethodIsAbstract();
  return [(PLPhotoLibraryPathManagerCore *)IsAbstract externalDirectoryWithSubType:v6 leafType:v7 additionalPathComponents:v8 createIfNeeded:v9 error:v10, v11];
}

- (id)externalDirectoryWithSubType:(unsigned __int8)a3 leafType:(unsigned __int8)a4 additionalPathComponents:(id)a5 createIfNeeded:(BOOL)a6 error:(id *)a7
{
  v8 = a6;
  v9 = a4;
  v10 = a3;
  v12 = a5;
  v13 = [(PLPhotoLibraryPathManagerCore *)self externalDirectoryWithSubType:v10 leafType:v9 additionalPathComponents:v12];
  if (v8)
  {
    if (v9 == 1 && [v12 length])
    {
      v14 = 1;
    }

    else if (v9 == 2)
    {
      v14 = 1;
    }

    else
    {
      v14 = 5;
    }

    [(PLPhotoLibraryPathManagerCore *)self createDirectoryOnceWithPath:v13 mask:v14 pathType:v10 error:a7];
  }

  return v13;
}

- (id)externalDirectoryWithSubType:(unsigned __int8)a3 leafType:(unsigned __int8)a4 additionalPathComponents:(id)a5
{
  v5 = a5;
  IsAbstract = _PFThrowMethodIsAbstract();
  return [(PLPhotoLibraryPathManagerCore *)IsAbstract externalDirectoryWithSubType:v7, v8];
}

- (id)privateCacheDirectoryWithSubType:(unsigned __int8)a3 leafType:(unsigned __int8)a4 additionalPathComponents:(id)a5 createIfNeeded:(BOOL)a6 error:(id *)a7
{
  v8 = a6;
  v9 = a4;
  v10 = a3;
  v12 = a5;
  v13 = [(PLPhotoLibraryPathManagerCore *)self privateCacheDirectoryWithSubType:v10 leafType:v9 additionalPathComponents:v12];
  if (v8)
  {
    v14 = 4;
    if (v9 == 1)
    {
      if ([v12 length])
      {
        v14 = 1;
      }

      else
      {
        v14 = 4;
      }
    }

    [(PLPhotoLibraryPathManagerCore *)self createDirectoryOnceWithPath:v13 mask:v14 pathType:v10 error:a7];
  }

  return v13;
}

- (id)privateCacheDirectoryWithSubType:(unsigned __int8)a3 leafType:(unsigned __int8)a4 additionalPathComponents:(id)a5
{
  v5 = a5;
  IsAbstract = _PFThrowMethodIsAbstract();
  return [(PLPhotoLibraryPathManagerCore *)IsAbstract privateCacheDirectoryWithSubType:v7, v8];
}

- (id)privateDirectoryWithSubType:(unsigned __int8)a3 leafType:(unsigned __int8)a4 additionalPathComponents:(id)a5 createIfNeeded:(BOOL)a6 error:(id *)a7
{
  v8 = a6;
  v9 = a4;
  v10 = a3;
  v12 = a5;
  v13 = [(PLPhotoLibraryPathManagerCore *)self privateDirectoryWithSubType:v10 leafType:v9 additionalPathComponents:v12];
  if (v8)
  {
    if (v9 == 1 && [v12 length])
    {
      v14 = 1;
    }

    else if (v9 == 2)
    {
      v14 = 1;
    }

    else
    {
      v14 = 3;
    }

    [(PLPhotoLibraryPathManagerCore *)self createDirectoryOnceWithPath:v13 mask:v14 pathType:v10 error:a7];
  }

  return v13;
}

- (id)privateDirectoryWithSubType:(unsigned __int8)a3 leafType:(unsigned __int8)a4 additionalPathComponents:(id)a5
{
  v5 = a5;
  IsAbstract = _PFThrowMethodIsAbstract();
  return [(PLPhotoLibraryPathManagerCore *)IsAbstract privateDirectoryWithSubType:v7, v8];
}

- (BOOL)pathRelativeToBundle:(id)a3 isSubpathOfPhotoDirectoryWithType:(unsigned __int8)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PLPhotoLibraryPathManagerCore *)self photoDirectoryWithType:1];
  v8 = [v7 stringByAppendingPathComponent:v6];

  LOBYTE(v4) = [(PLPhotoLibraryPathManagerCore *)self path:v8 isSubpathOfPhotoDirectoryWithType:v4];
  return v4;
}

- (BOOL)path:(id)a3 isSubpathOfPhotoDirectoryWithType:(unsigned __int8)a4
{
  v4 = a4;
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PLPhotoLibraryPathManagerCore *)self photoDirectoryWithType:v4];
  v8 = [v7 pathComponents];
  v9 = [v6 pathComponents];
  v10 = [v9 count];
  if (v10 <= [v8 count])
  {
    v19 = 0;
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v21 = v6;
      v14 = 0;
      v15 = *v23;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v22 + 1) + 8 * i);
          v18 = [v9 objectAtIndexedSubscript:v14];
          LODWORD(v17) = [v17 isEqualToString:v18];

          if (!v17)
          {
            v19 = 0;
            goto LABEL_13;
          }

          ++v14;
        }

        v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }

      v19 = 1;
LABEL_13:
      v6 = v21;
    }

    else
    {
      v19 = 1;
    }
  }

  return v19;
}

- (void)enumerateBundleScopesWithBlock:(id)a3
{
  v3 = a3;
  IsAbstract = _PFThrowMethodIsAbstract();
  [(PLPhotoLibraryPathManagerCore *)IsAbstract pathsForExternalWriters];
}

- (id)pathsForClientAccess:(id)a3
{
  v3 = a3;
  IsAbstract = _PFThrowMethodIsAbstract();
  return [(PLPhotoLibraryPathManagerCore *)IsAbstract clientOwnedDirectoryPathsForClientAccess:v5, v6];
}

- (id)clientOwnedDirectoryPathsForClientAccess:(id)a3
{
  v3 = a3;
  IsAbstract = _PFThrowMethodIsAbstract();
  return [(PLPhotoLibraryPathManagerCore *)IsAbstract photoDirectoryWithType:v5 leafType:v6 additionalPathComponents:v7 createIfNeeded:v8 error:v9, v10];
}

- (id)photoDirectoryWithType:(unsigned __int8)a3 leafType:(unsigned __int8)a4 additionalPathComponents:(id)a5 createIfNeeded:(BOOL)a6 error:(id *)a7
{
  v8 = a6;
  v9 = a4;
  v10 = a3;
  v12 = a5;
  v13 = [(PLPhotoLibraryPathManagerCore *)self photoDirectoryWithType:v10 leafType:v9 additionalPathComponents:v12];
  if (v8)
  {
    if (v9 == 1 && [v12 length])
    {
      v14 = 1;
    }

    else if (v9 > 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    [(PLPhotoLibraryPathManagerCore *)self createDirectoryOnceWithPath:v13 mask:v14 pathType:v10 error:a7];
  }

  return v13;
}

- (id)photoDirectoryWithType:(unsigned __int8)a3 leafType:(unsigned __int8)a4 additionalPathComponents:(id)a5
{
  v5 = a5;
  IsAbstract = _PFThrowMethodIsAbstract();
  return [(PLPhotoLibraryPathManagerCore *)IsAbstract photoDirectoryWithType:v7 additionalPathComponents:v8, v9];
}

- (id)photosAsideDatabasePath
{
  v2 = [(PLPhotoLibraryPathManagerCore *)self photosDatabasePath];
  v3 = [v2 stringByAppendingPathExtension:@"aside"];

  return v3;
}

- (id)photosCPLDatabasePath
{
  v7[3] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(PLPhotoLibraryPathManagerCore *)self photoDirectoryWithType:14 leafType:3 additionalPathComponents:0];
  v7[0] = v3;
  v7[1] = @"storage";
  v7[2] = @"store.cloudphotodb";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];
  v5 = [v2 pathWithComponents:v4];

  return v5;
}

- (id)privateDirectoryWithBundleIdentifier:(id)a3 createIfNeeded:(BOOL)a4
{
  v4 = a4;
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = [(PLPhotoLibraryPathManagerCore *)self basePrivateDirectoryPath];
    v8 = [v7 stringByAppendingPathComponent:v6];

    if (v4)
    {
      v13 = 0;
      v9 = [(PLPhotoLibraryPathManagerCore *)self internalValidateCreationRequestWithError:&v13];
      v10 = v13;
      if (v9)
      {
        v11 = [MEMORY[0x1E696AC08] defaultManager];
        [v11 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:0];
      }

      else
      {
        v11 = PLBackendGetLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v15 = "[PLPhotoLibraryPathManagerCore privateDirectoryWithBundleIdentifier:createIfNeeded:]";
          v16 = 2112;
          v17 = v8;
          v18 = 2112;
          v19 = v10;
          _os_log_impl(&dword_1AA9BD000, v11, OS_LOG_TYPE_ERROR, "%{public}s: failed to create directory: %@ with error: %@", buf, 0x20u);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)updateExclusionAttributeWithPath:(id)a3 mask:(unsigned __int8)a4 pathType:(unsigned __int8)a5 error:(id *)a6
{
  v7 = a5;
  v8 = a4;
  v10 = a3;
  v11 = v10;
  if (v8 == 6)
  {
    if ((v7 - 6) < 2)
    {
      goto LABEL_6;
    }

    if (v7 == 8)
    {
      goto LABEL_8;
    }

LABEL_9:
    v13 = 1;
    goto LABEL_10;
  }

  if (v8 != 4)
  {
    goto LABEL_9;
  }

  if ((v7 - 1) >= 0x10)
  {
    if (v7 != 17)
    {
      if (v7)
      {
        goto LABEL_9;
      }

LABEL_6:
      v13 = [(PLPhotoLibraryPathManagerCore *)self updateTimeMachineExclusionAttributeForExcludePath:v10 error:a6];
      goto LABEL_10;
    }

LABEL_8:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"Invalid pathType for exclusion attribute in %s", "-[PLPhotoLibraryPathManagerCore updateExclusionAttributeWithPath:mask:pathType:error:]"}];
    goto LABEL_9;
  }

  v12 = [v10 stringByDeletingLastPathComponent];
  v13 = [(PLPhotoLibraryPathManagerCore *)self updateTimeMachineExclusionAttributeForExcludePath:v12 error:a6];

LABEL_10:
  return v13;
}

- (BOOL)createDirectoryOnceWithPath:(id)a3 mask:(unsigned __int8)a4 pathType:(unsigned __int8)a5 error:(id *)a6
{
  v7 = a5;
  v8 = a4;
  v35 = *MEMORY[0x1E69E9840];
  v11 = a3;
  if (v7 >= 0x3F)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryPathManagerCore.m" lineNumber:314 description:{@"Invalid parameter not satisfying: %@", @"(sizeof(PLExistsMask) * 8 - 1) > pathType"}];
  }

  v28 = 0;
  v12 = [(PLPhotoLibraryPathManagerCore *)self internalValidateCreationRequestWithError:&v28];
  v13 = v28;
  if (v12)
  {
    v27 = 0;
    if (v8 > 3)
    {
      if (v8 > 5)
      {
        if (v8 != 6)
        {
          if (v8 != 7)
          {
            goto LABEL_42;
          }

          p_persistedAlbumDataDirectoryExists = &self->_persistedAlbumDataDirectoryExists;
          if (!v11)
          {
            goto LABEL_42;
          }

          goto LABEL_32;
        }

        p_persistedAlbumDataDirectoryExists = &self->_internalDirectoriesExists;
        if (v11)
        {
          goto LABEL_32;
        }
      }

      else if (v8 == 4)
      {
        p_persistedAlbumDataDirectoryExists = &self->_privateCacheSubDirectoriesExists;
        if (v11)
        {
          goto LABEL_32;
        }
      }

      else
      {
        p_persistedAlbumDataDirectoryExists = &self->_externalDirectoriesExists;
        if (v11)
        {
          goto LABEL_32;
        }
      }
    }

    else if (v8 > 1)
    {
      if (v8 == 2)
      {
        p_persistedAlbumDataDirectoryExists = &self->_photoDirectoriesExists;
        if (v11)
        {
          goto LABEL_32;
        }
      }

      else
      {
        p_persistedAlbumDataDirectoryExists = &self->_privateSubDirectoriesExists;
        if (v11)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      if (v8)
      {
        if (v8 != 1)
        {
          goto LABEL_42;
        }

        p_persistedAlbumDataDirectoryExists = &v27;
        if (!v11)
        {
          goto LABEL_42;
        }

LABEL_32:
        os_unfair_lock_lock(&self->_folderCreationAndCapabilitiesLock);
        if ((*p_persistedAlbumDataDirectoryExists & (1 << v7)) != 0)
        {
          v18 = v13;
        }

        else
        {
          v26 = v13;
          v19 = [PLFileUtilities createDirectoryAtPath:v11 error:&v26];
          v18 = v26;

          if (v19)
          {
            *p_persistedAlbumDataDirectoryExists ^= 1 << v7;
            v25 = v18;
            [(PLPhotoLibraryPathManagerCore *)self updateExclusionAttributeWithPath:v11 mask:v8 pathType:v7 error:&v25];
            v20 = v25;

            v18 = v20;
          }

          else if (a6)
          {
            v21 = v18;
            *a6 = v18;
          }

          else
          {
            v22 = PLBackendGetLog();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446722;
              v30 = "[PLPhotoLibraryPathManagerCore createDirectoryOnceWithPath:mask:pathType:error:]";
              v31 = 2112;
              v32 = v11;
              v33 = 2112;
              v34 = v18;
              _os_log_impl(&dword_1AA9BD000, v22, OS_LOG_TYPE_ERROR, "%{public}s: failed to create directory: %@ with error: %@", buf, 0x20u);
            }
          }
        }

        os_unfair_lock_unlock(&self->_folderCreationAndCapabilitiesLock);
        v13 = v18;
        goto LABEL_42;
      }

      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"Invalid maskType for directory creation in %s", "-[PLPhotoLibraryPathManagerCore createDirectoryOnceWithPath:mask:pathType:error:]"}];
    }

LABEL_42:
    v17 = v13 == 0;
    goto LABEL_43;
  }

  v15 = PLBackendGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v30 = "[PLPhotoLibraryPathManagerCore createDirectoryOnceWithPath:mask:pathType:error:]";
    v31 = 2112;
    v32 = v11;
    v33 = 2112;
    v34 = v13;
    _os_log_impl(&dword_1AA9BD000, v15, OS_LOG_TYPE_ERROR, "%{public}s: failed to create directory: %@ with error: %@", buf, 0x20u);
  }

  if (a6)
  {
    v16 = v13;
    v17 = 0;
    *a6 = v13;
  }

  else
  {
    v17 = 0;
  }

LABEL_43:

  return v17;
}

- (BOOL)updateTimeMachineExclusionAttributeForExcludePath:(id)a3 error:(id *)a4
{
  v4 = a3;
  IsAbstract = _PFThrowMethodIsAbstract();
  [(PLPhotoLibraryPathManagerCore *)IsAbstract internalDirectoryCreationMaskResetWithSubType:v6, v7];
  return result;
}

- (void)internalDirectoryCreationMaskResetWithSubType:(unsigned __int8)a3
{
  os_unfair_lock_lock(&self->_folderCreationAndCapabilitiesLock);
  self->_internalDirectoriesExists &= ~(1 << a3);

  os_unfair_lock_unlock(&self->_folderCreationAndCapabilitiesLock);
}

- (void)externalDirectoryCreationMaskResetWithSubType:(unsigned __int8)a3
{
  os_unfair_lock_lock(&self->_folderCreationAndCapabilitiesLock);
  self->_externalDirectoriesExists &= ~(1 << a3);

  os_unfair_lock_unlock(&self->_folderCreationAndCapabilitiesLock);
}

- (void)privateCacheDirectoryCreationMaskResetWithSubType:(unsigned __int8)a3
{
  os_unfair_lock_lock(&self->_folderCreationAndCapabilitiesLock);
  self->_privateCacheSubDirectoriesExists &= ~(1 << a3);

  os_unfair_lock_unlock(&self->_folderCreationAndCapabilitiesLock);
}

- (void)privateDirectoryCreationMaskResetWithSubType:(unsigned __int8)a3
{
  os_unfair_lock_lock(&self->_folderCreationAndCapabilitiesLock);
  self->_privateSubDirectoriesExists &= ~(1 << a3);

  os_unfair_lock_unlock(&self->_folderCreationAndCapabilitiesLock);
}

- (void)photoDirectoryCreationMaskResetWithType:(unsigned __int8)a3
{
  os_unfair_lock_lock(&self->_folderCreationAndCapabilitiesLock);
  self->_photoDirectoriesExists &= ~(1 << a3);

  os_unfair_lock_unlock(&self->_folderCreationAndCapabilitiesLock);
}

- (BOOL)validateCreationRequestWithError:(id *)a3
{
  v16[3] = *MEMORY[0x1E69E9840];
  v5 = [(PLPhotoLibraryPathManagerCore *)self libraryURL];
  v14 = 0;
  v6 = [v5 checkResourceIsReachableAndReturnError:&v14];
  v7 = v14;

  if ((v6 & 1) == 0)
  {
    v15[0] = *MEMORY[0x1E696A998];
    v8 = [(PLPhotoLibraryPathManagerCore *)self libraryURL];
    v9 = *MEMORY[0x1E696AA08];
    v16[0] = v8;
    v16[1] = v7;
    v10 = *MEMORY[0x1E696A578];
    v15[1] = v9;
    v15[2] = v10;
    v16[2] = @"Bundle root was unreachable";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.photos.error" code:46802 userInfo:v11];
    if (a3)
    {
      v12 = v12;
      *a3 = v12;
    }
  }

  return v6;
}

- (BOOL)internalValidateCreationRequestWithError:(id *)a3
{
  pl_dispatch_once(&PLIsReallyAssetsd_didCheckReadOnly, &__block_literal_global_129_3947);
  if (PLIsReallyAssetsd_isAssetsd & 1) != 0 || (__PLIsAssetsdProxyService)
  {
    return 1;
  }

  return [(PLPhotoLibraryPathManagerCore *)self validateCreationRequestWithError:a3];
}

- (PLFileSystemCapabilities)capabilities
{
  v20 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_folderCreationAndCapabilitiesLock);
  capabilities = self->_capabilities;
  if (!capabilities)
  {
    v4 = objc_alloc_init(PLFileSystemCapabilities);
    v5 = self->_capabilities;
    self->_capabilities = v4;

    v6 = self->_capabilities;
    v7 = [(PLPhotoLibraryPathManagerCore *)self libraryURL];
    v15 = 0;
    v8 = [(PLFileSystemCapabilities *)v6 determineCapabilitiesWithURL:v7 error:&v15];
    v9 = v15;

    if (!v8)
    {
      v10 = PLBackendGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [(PLPhotoLibraryPathManagerCore *)self libraryURL];
        v12 = [PLFilePathDescription descriptionWithFileURL:v11];
        *buf = 138412546;
        v17 = v12;
        v18 = 2112;
        v19 = v9;
        _os_log_impl(&dword_1AA9BD000, v10, OS_LOG_TYPE_ERROR, "Error determining capabilities for %@: %@", buf, 0x16u);
      }
    }

    capabilities = self->_capabilities;
  }

  v13 = capabilities;
  os_unfair_lock_unlock(&self->_folderCreationAndCapabilitiesLock);

  return v13;
}

- (PLPhotoLibraryPathManagerCore)initWithLibraryURL:(id)a3 bundleScope:(unsigned __int16)a4
{
  v4 = a4;
  v7 = a3;
  if (!v7)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryPathManagerCore.m" lineNumber:203 description:{@"Invalid parameter not satisfying: %@", @"libraryURL"}];
  }

  v15.receiver = self;
  v15.super_class = PLPhotoLibraryPathManagerCore;
  v8 = [(PLPhotoLibraryPathManagerCore *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_folderCreationAndCapabilitiesLock._os_unfair_lock_opaque = 0;
    v10 = [v7 copy];
    [(PLPhotoLibraryPathManagerCore *)v9 setLibraryURL:v10];

    v11 = [v7 path];
    v12 = [v11 copy];
    [(PLPhotoLibraryPathManagerCore *)v9 setBaseDirectory:v12];

    [(PLPhotoLibraryPathManagerCore *)v9 setBundleScope:v4];
    *&v9->_privateCacheSubDirectoriesExists = 0u;
    *&v9->_internalDirectoriesExists = 0u;
    *&v9->_photoDirectoriesExists = 0u;
  }

  return v9;
}

- (PLPhotoLibraryPathManagerCore)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"Invalid initializer used: %s", "-[PLPhotoLibraryPathManagerCore init]"}];

  return 0;
}

+ (id)rootURLForPhotoLibraryDomain:(int64_t)a3
{
  if ((a3 - 2) < 2)
  {
    v11 = [a1 _photosLibrariesDataVaultPathForApplicationLibrariesDomain];
LABEL_7:
    v3 = v11;
    goto LABEL_8;
  }

  if (a3 == 1)
  {
    v11 = [a1 photosLibrariesDataVaultPath];
    goto LABEL_7;
  }

  if (!a3)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:a1 file:@"PLPhotoLibraryPathManagerCore.m" lineNumber:1314 description:@"API misuse: requesting URL for unknown domain"];

    v7 = MEMORY[0x1E695DFF8];
    v8 = [MEMORY[0x1E696AFB0] UUID];
    v9 = [v8 UUIDString];
    v10 = [@"/" stringByAppendingPathComponent:v9];
    v3 = [v7 fileURLWithPath:v10];
  }

LABEL_8:

  return v3;
}

+ (unint64_t)libraryCreateOptionsForWellKnownLibraryIdentifier:(int64_t)a3
{
  if (a3 == 3)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if (a3 == 2)
  {
    return 19;
  }

  else
  {
    return v3;
  }
}

+ (int64_t)wellKnownPhotoLibraryIdentifierForURL:(id)a3
{
  v4 = a3;
  v5 = [v4 lastPathComponent];
  v6 = [&unk_1F1F910C0 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [v6 integerValue];
    if (v7 >= 2)
    {
      v8 = [a1 wellKnownPhotoLibraryURLForIdentifier:v7];
      v9 = [PLFileUtilities fileURL:v4 isEqualToFileURL:v8];

      if (!v9)
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)wellKnownPhotoLibraryURLForIdentifier:(int64_t)a3
{
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v6 = @"Messages.photoslibrary";
    }

    else
    {
      if (a3 != 3)
      {
        goto LABEL_12;
      }

      v6 = @"Syndication.photoslibrary";
    }

    v5 = [a1 _photosLibrariesDataVaultPathForLibraryBundleName:v6];
  }

  else
  {
    if (!a3)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a2 object:a1 file:@"PLPhotoLibraryPathManagerCore.m" lineNumber:1215 description:@"API misuse: requesting URL for a non-well-known library"];

      v9 = MEMORY[0x1E695DFF8];
      v10 = [MEMORY[0x1E696AFB0] UUID];
      v11 = [v10 UUIDString];
      v12 = [@"/" stringByAppendingPathComponent:v11];
      v3 = [v9 fileURLWithPath:v12];

      goto LABEL_12;
    }

    if (a3 != 1)
    {
      goto LABEL_12;
    }

    v5 = [a1 systemLibraryURL];
  }

  v3 = v5;
LABEL_12:

  return v3;
}

+ (id)_photosLibrariesDataVaultPathForApplicationLibrariesDomain
{
  v2 = [a1 photosLibrariesDataVaultPath];
  v3 = [v2 URLByAppendingPathComponent:@"Application" isDirectory:1];

  return v3;
}

+ (id)_photosLibrariesDataVaultPathForLibraryBundleName:(id)a3
{
  v4 = a3;
  v5 = [a1 photosLibrariesDataVaultPath];
  v6 = [v5 URLByAppendingPathComponent:v4 isDirectory:1];

  return v6;
}

+ (id)managedPathWithUuid:(const char *)a3 base:(const char *)a4 fileMarker:(const char *)a5 extension:(const char *)a6
{
  v11 = strlen(a4);
  v12 = v11 + strlen(a3) + 4;
  if (a5 && a6)
  {
    v13 = strlen(a5);
    v12 += v13 + strlen(a6) + 2;
    v14 = malloc_type_calloc(1uLL, v12, 0x621EB50CuLL);
    v15 = snprintf(v14, v12, "%s/%c/%s_%s.%s");
  }

  else if (a5)
  {
    v12 += strlen(a5) + 1;
    v14 = malloc_type_calloc(1uLL, v12, 0x6C9F3277uLL);
    v15 = snprintf(v14, v12, "%s/%c/%s_%s");
  }

  else if (a6)
  {
    v12 += strlen(a6) + 1;
    v14 = malloc_type_calloc(1uLL, v12, 0xE96A5B60uLL);
    v15 = snprintf(v14, v12, "%s/%c/%s.%s");
  }

  else
  {
    v14 = malloc_type_calloc(1uLL, v12, 0x6D05B689uLL);
    v15 = snprintf(v14, v12, "%s/%c/%s");
  }

  if (v12 <= v15)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:a1 file:@"PLPhotoLibraryPathManagerCore.m" lineNumber:1162 description:{@"Invalid parameter not satisfying: %@", @"formattedLen < urlStringLen"}];
  }

  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v14];
  free(v14);

  return v16;
}

+ (BOOL)_persistSystemPhotoLibraryPath:(id)a3 sendChangeNotification:(BOOL)a4
{
  v4 = a4;
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  os_unfair_lock_assert_owner(&splLock);
  v7 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"group.com.apple.photolibraryd.private"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (v6)
    {
      v10 = PLBackendGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v17 = 138412290;
        v18 = v12;
        _os_log_impl(&dword_1AA9BD000, v10, OS_LOG_TYPE_ERROR, "object being saved as SPL path is not valid: %@", &v17, 0xCu);
      }
    }

    else
    {
      [v7 removeObjectForKey:@"SystemLibraryPath"];
      v14 = [v7 objectForKey:@"SystemLibraryPath"];

      if (!v14)
      {
        v8 = PLBackendGetLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v17) = 0;
          _os_log_impl(&dword_1AA9BD000, v8, OS_LOG_TYPE_DEFAULT, "Removed SPL path from private group container", &v17, 2u);
        }

        goto LABEL_19;
      }
    }

LABEL_15:
    v15 = 0;
    goto LABEL_16;
  }

  [v7 setObject:v6 forKey:@"SystemLibraryPath"];
  v8 = [v7 objectForKey:@"SystemLibraryPath"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![v8 isEqualToString:v6])
  {
    v13 = PLBackendGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_1AA9BD000, v13, OS_LOG_TYPE_ERROR, "Failed to write SPL path to private group container", &v17, 2u);
    }

    goto LABEL_15;
  }

  v9 = PLBackendGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v6;
    _os_log_impl(&dword_1AA9BD000, v9, OS_LOG_TYPE_DEFAULT, "Successfully wrote SPL path to private group container: %@", &v17, 0xCu);
  }

LABEL_19:
  objc_storeStrong(&sSystemLibraryPath, a3);
  if (v4)
  {
    notify_post("com.apple.photos.systemphotolibraryurl");
  }

  v15 = 1;
LABEL_16:

  return v15;
}

+ (id)_readSystemPhotoLibraryPath
{
  v14 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&splLock);
  v3 = sSystemLibraryPath;
  if (!sSystemLibraryPath)
  {
    v4 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"group.com.apple.photolibraryd.private"];
    v5 = [v4 objectForKey:@"SystemLibraryPath"];
    v6 = sSystemLibraryPath;
    sSystemLibraryPath = v5;

    if (sSystemLibraryPath)
    {
LABEL_13:

      v3 = sSystemLibraryPath;
      goto LABEL_14;
    }

    v7 = [MEMORY[0x1E695E000] standardUserDefaults];
    v8 = [v7 stringForKey:@"SystemLibraryPath"];

    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if (![a1 _persistSystemPhotoLibraryPath:v8 sendChangeNotification:0])
      {
LABEL_12:

        goto LABEL_13;
      }

      v9 = PLBackendGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_1AA9BD000, v9, OS_LOG_TYPE_DEFAULT, "Removing SPL path from NSUserDefaults", &v12, 2u);
      }

      v10 = [MEMORY[0x1E695E000] standardUserDefaults];
      [v10 removeObjectForKey:@"SystemLibraryPath"];
    }

    else
    {
      v10 = PLBackendGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v8;
        _os_log_impl(&dword_1AA9BD000, v10, OS_LOG_TYPE_DEFAULT, "No SPL stored, and SPL from standard defaults was %@", &v12, 0xCu);
      }
    }

    goto LABEL_12;
  }

LABEL_14:

  return v3;
}

+ (void)recordPrevSystemLibraryPath:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x1E695E000];
    v4 = a3;
    v5 = [v3 standardUserDefaults];
    v6 = [v5 objectForKey:@"PrevSystemLibraryPathsByDate"];
    v15 = [v6 mutableCopy];

    v7 = v15;
    if (!v15)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v16 = v7;
    if ([v7 count] >= 0xA)
    {
      v8 = [v16 allKeys];
      v9 = [v8 sortedArrayUsingSelector:sel_compare_];

      v10 = [v9 firstObject];
      [v16 removeObjectForKey:v10];
    }

    if (recordPrevSystemLibraryPath__onceToken != -1)
    {
      dispatch_once(&recordPrevSystemLibraryPath__onceToken, &__block_literal_global_280);
    }

    v11 = recordPrevSystemLibraryPath__formatter;
    v12 = [MEMORY[0x1E695DF00] date];
    v13 = [v11 stringFromDate:v12];

    [v16 setObject:v4 forKey:v13];
    v14 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v14 setObject:v16 forKey:@"PrevSystemLibraryPathsByDate"];
  }
}

void __61__PLPhotoLibraryPathManagerCore_recordPrevSystemLibraryPath___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = recordPrevSystemLibraryPath__formatter;
  recordPrevSystemLibraryPath__formatter = v0;

  [recordPrevSystemLibraryPath__formatter setDateFormat:@"yyyy-MM-dd HH.mm.ss.SSS"];
  v2 = recordPrevSystemLibraryPath__formatter;
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US"];
  [v2 setLocale:v3];
}

+ (BOOL)setSystemLibraryURL:(id)a3 options:(unsigned __int16)a4 error:(id *)a5
{
  v6 = a4;
  v32[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (!v8)
  {
LABEL_4:
    pl_dispatch_once(&PLIsReallyAssetsd_didCheckReadOnly, &__block_literal_global_129_3947);
    if (PLIsReallyAssetsd_isAssetsd == 1)
    {
      os_unfair_lock_lock(&splLock);
      if ((v6 & 2) != 0)
      {
        if (v6)
        {
          v25 = sSystemPhotoLibraryOverridePath;
          sSystemPhotoLibraryOverridePath = 0;

          v23 = 0;
          v15 = 1;
        }

        else
        {
          v24 = PLBackendGetLog();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1AA9BD000, v24, OS_LOG_TYPE_DEFAULT, "Resetting persisted system photo library path", buf, 2u);
          }

          v15 = 1;
          [a1 _persistSystemPhotoLibraryPath:0 sendChangeNotification:1];
          v23 = 0;
        }
      }

      else
      {
        v12 = [v8 path];
        v29 = 0;
        v13 = [PLFileUtilities realPathForPath:v12 error:&v29];
        v14 = v29;

        v15 = v13 != 0;
        if (v13)
        {
          if (v6)
          {
            objc_storeStrong(&sSystemPhotoLibraryOverridePath, v13);
          }

          else
          {
            [a1 _persistSystemPhotoLibraryPath:v13 sendChangeNotification:1];
          }

          v23 = 0;
        }

        else
        {
          v23 = v14;
        }
      }

      os_unfair_lock_unlock(&splLock);
      if (!a5)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v21 = objc_alloc_init(PLNonBindingAssetsdClient);
      v22 = [(PLNonBindingAssetsdClient *)v21 libraryManagementClient];
      v28 = 0;
      v15 = [v22 setSystemPhotoLibraryURL:v8 error:&v28];
      v23 = v28;

      if (!a5)
      {
LABEL_28:

        goto LABEL_29;
      }
    }

    if (v23)
    {
      v26 = v23;
      *a5 = v23;
    }

    goto LABEL_28;
  }

  buf[0] = 0;
  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = [v8 path];
  v11 = [v9 fileExistsAtPath:v10 isDirectory:buf];

  if (!v11)
  {
    v16 = 41015;
    if (!a5)
    {
      goto LABEL_11;
    }

LABEL_10:
    v17 = *MEMORY[0x1E696A998];
    v32[0] = v8;
    v18 = *MEMORY[0x1E696A578];
    v31[0] = v17;
    v31[1] = v18;
    v19 = NSStringFromPLErrorCode(v16);
    v32[1] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];

    *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.photos.error" code:v16 userInfo:v20];

    goto LABEL_11;
  }

  if ([PLPhotoLibraryPathManagerCore isSupportedFileSystemAtURL:v8])
  {
    goto LABEL_4;
  }

  v16 = 46107;
  if (a5)
  {
    goto LABEL_10;
  }

LABEL_11:
  v15 = 0;
LABEL_29:

  return v15;
}

+ (id)_constructLegacySystemPhotoLibraryURLFromUnresolvableBookmark:(id)a3
{
  v23[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = MEMORY[0x1E695DFF8];
  v5 = *MEMORY[0x1E695DC40];
  v23[0] = *MEMORY[0x1E695DC40];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v7 = [v4 resourceValuesForKeys:v6 fromBookmarkData:v3];

  if (v7)
  {
    v8 = [v7 objectForKeyedSubscript:v5];
    if (v8)
    {
      v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8 isDirectory:1];
      v10 = PLBackendGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412290;
        v22 = v9;
        _os_log_impl(&dword_1AA9BD000, v10, OS_LOG_TYPE_DEFAULT, "Constructed legacy SPL URL based on unresolvable bookmark: %@", &v21, 0xCu);
      }

      if (v9)
      {
        v11 = v9;

        goto LABEL_16;
      }
    }

    else
    {
      v12 = PLBackendGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&dword_1AA9BD000, v12, OS_LOG_TYPE_DEFAULT, "No NSURLPathKey available from unresolvable bookmark", &v21, 2u);
      }
    }
  }

  v13 = 0;
  do
  {
    v14 = v13;
    v15 = MEMORY[0x1E695DFF8];
    v16 = [MEMORY[0x1E696AFB0] UUID];
    v17 = [v16 UUIDString];
    v18 = [@"/Volumes/" stringByAppendingPathComponent:v17];
    v13 = [v15 fileURLWithPath:v18 isDirectory:1];
  }

  while (([v13 checkResourceIsReachableAndReturnError:0] & 1) != 0);
  v19 = PLBackendGetLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    v22 = v13;
    _os_log_impl(&dword_1AA9BD000, v19, OS_LOG_TYPE_DEFAULT, "Legacy system photo library URL exists but it is not resolvable. Returning bogus URL: %@", &v21, 0xCu);
  }

  v11 = v13;
LABEL_16:

  return v11;
}

+ (void)_updateSystemLibraryURLWithOldValue:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PLNonBindingAssetsdClient);
  v5 = [(PLNonBindingAssetsdClient *)v4 systemLibraryURLReadOnlyClient];
  v10 = 0;
  v6 = [v5 systemPhotoLibraryURLWithError:&v10];
  v7 = v10;
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    os_unfair_lock_lock(&splLock);
    if (sCurrentSystemPhotoLibraryURL == v3)
    {
      objc_storeStrong(&sCurrentSystemPhotoLibraryURL, v6);
    }

    os_unfair_lock_unlock(&splLock);
  }
}

+ (id)systemLibraryBaseDirectory
{
  v2 = [a1 systemLibraryURL];
  v3 = [v2 path];

  return v3;
}

+ (BOOL)isSupportedFileSystemAtURL:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [PLFileSystemCapabilities capabilitiesWithURL:v3];
  v5 = [v4 isWholeFileLockCapable];
  if ((v5 & 1) == 0)
  {
    v6 = PLBackendGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v4 error];
      v9 = 138412546;
      v10 = v3;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_1AA9BD000, v6, OS_LOG_TYPE_DEFAULT, "Not a valid system library URL because it not a supported filesystem %@: %@", &v9, 0x16u);
    }
  }

  return v5;
}

+ (BOOL)isSystemPhotoLibraryURL:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 systemLibraryURL];
  v6 = [v4 path];
  if (v6)
  {
    v7 = [v5 path];
    v8 = [v7 isEqualToString:v6];

    if (v8)
    {
      v9 = 1;
      goto LABEL_21;
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"libraryURLString cannot be nil"];
  }

  v10 = [v5 path];
  v27 = 0;
  v11 = [PLFileUtilities realPathForPath:v10 error:&v27];
  v12 = v27;

  if (!v11)
  {
    v13 = PLBackendGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v29 = v5;
      v30 = 2112;
      v31 = v12;
      _os_log_impl(&dword_1AA9BD000, v13, OS_LOG_TYPE_DEFAULT, "No realpath for SPL URL %@, %@", buf, 0x16u);
    }

    v14 = [v5 URLByStandardizingPath];
    v11 = [v14 path];
  }

  v26 = v12;
  v15 = [PLFileUtilities realPathForPath:v6 error:&v26];
  v16 = v26;

  if (!v15)
  {
    v17 = PLIsErrorFileNotFound(v16);
    v18 = PLBackendGetLog();
    v19 = v18;
    if (v17)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v29 = v4;
        v30 = 2112;
        v31 = v16;
        v20 = v19;
        v21 = OS_LOG_TYPE_DEBUG;
LABEL_15:
        _os_log_impl(&dword_1AA9BD000, v20, v21, "No realpath for URL %@, %@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v29 = v4;
      v30 = 2112;
      v31 = v16;
      v20 = v19;
      v21 = OS_LOG_TYPE_ERROR;
      goto LABEL_15;
    }

    v22 = [v4 URLByStandardizingPath];
    v15 = [v22 path];
  }

  v9 = 0;
  if (v11 && v15)
  {
    v23 = stringWithoutTrailingSlashes(v11);
    v24 = stringWithoutTrailingSlashes(v15);
    v9 = [v23 isEqualToString:v24];
  }

LABEL_21:
  return v9;
}

void __70__PLPhotoLibraryPathManagerCore_listenForSystemPhotoLibraryURLChanges__block_invoke()
{
  os_unfair_lock_lock(&splLock);
  v0 = sCurrentSystemPhotoLibraryURL;
  sCurrentSystemPhotoLibraryURL = 0;

  os_unfair_lock_unlock(&splLock);
}

+ (id)libraryURLFromDatabaseURL:(id)a3
{
  v3 = [a3 URLByDeletingLastPathComponent];
  v4 = [v3 URLByDeletingLastPathComponent];

  return v4;
}

+ (BOOL)setICloudBackupExclusionAttribute:(BOOL)a3 url:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = MEMORY[0x1E696AD98];
  v8 = a4;
  v9 = [v7 numberWithBool:v6];
  LOBYTE(v7) = [v8 setResourceValue:v9 forKey:*MEMORY[0x1E695E300] error:a5];

  if (v7 & 1) != 0 || (PLIsErrorFileNotFound(0))
  {
    return 1;
  }

  result = 0;
  if (a5)
  {
    *a5 = 0;
  }

  return result;
}

+ (BOOL)setTimeMachineExclusionAttribute:(BOOL)a3 url:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = MEMORY[0x1E696AD98];
  v8 = a4;
  v9 = [v7 numberWithBool:v6];
  v10 = *MEMORY[0x1E695DB80];
  v18 = 0;
  v11 = [v8 setResourceValue:v9 forKey:v10 error:&v18];

  v12 = v18;
  if (v11)
  {
    v13 = v12;
LABEL_4:
    v16 = 1;
    goto LABEL_5;
  }

  v14 = PLIsErrorFileNotFound(v12);
  v15 = v12;
  if (v14)
  {
    goto LABEL_4;
  }

  v16 = 0;
  if (a5)
  {
    *a5 = v15;
  }

LABEL_5:

  return v16;
}

@end
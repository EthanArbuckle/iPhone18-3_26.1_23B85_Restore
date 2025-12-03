@interface PLPhotoLibraryPathManagerCore
+ (BOOL)_persistSystemPhotoLibraryPath:(id)path sendChangeNotification:(BOOL)notification;
+ (BOOL)isSupportedFileSystemAtURL:(id)l;
+ (BOOL)isSystemPhotoLibraryURL:(id)l;
+ (BOOL)setICloudBackupExclusionAttribute:(BOOL)attribute url:(id)url error:(id *)error;
+ (BOOL)setSystemLibraryURL:(id)l options:(unsigned __int16)options error:(id *)error;
+ (BOOL)setTimeMachineExclusionAttribute:(BOOL)attribute url:(id)url error:(id *)error;
+ (id)_constructLegacySystemPhotoLibraryURLFromUnresolvableBookmark:(id)bookmark;
+ (id)_photosLibrariesDataVaultPathForApplicationLibrariesDomain;
+ (id)_photosLibrariesDataVaultPathForLibraryBundleName:(id)name;
+ (id)_readSystemPhotoLibraryPath;
+ (id)libraryURLFromDatabaseURL:(id)l;
+ (id)managedPathWithUuid:(const char *)uuid base:(const char *)base fileMarker:(const char *)marker extension:(const char *)extension;
+ (id)photosDataVaultPath;
+ (id)photosLibrariesDataVaultPath;
+ (id)rootURLForPhotoLibraryDomain:(int64_t)domain;
+ (id)systemLibraryBaseDirectory;
+ (id)systemLibraryURL;
+ (id)wellKnownPhotoLibraryURLForIdentifier:(int64_t)identifier;
+ (int64_t)wellKnownPhotoLibraryIdentifierForURL:(id)l;
+ (unint64_t)libraryCreateOptionsForWellKnownLibraryIdentifier:(int64_t)identifier;
+ (void)_updateSystemLibraryURLWithOldValue:(id)value;
+ (void)initialize;
+ (void)listenForSystemPhotoLibraryURLChanges;
+ (void)recordPrevSystemLibraryPath:(id)path;
- (BOOL)createDirectoryOnceWithPath:(id)path mask:(unsigned __int8)mask pathType:(unsigned __int8)type error:(id *)error;
- (BOOL)internalValidateCreationRequestWithError:(id *)error;
- (BOOL)isDataProtectionComplete;
- (BOOL)path:(id)path isSubpathOfPhotoDirectoryWithType:(unsigned __int8)type;
- (BOOL)pathRelativeToBundle:(id)bundle isSubpathOfPhotoDirectoryWithType:(unsigned __int8)type;
- (BOOL)updateExclusionAttributeWithPath:(id)path mask:(unsigned __int8)mask pathType:(unsigned __int8)type error:(id *)error;
- (BOOL)updateTimeMachineExclusionAttributeForExcludePath:(id)path error:(id *)error;
- (BOOL)validateCreationRequestWithError:(id *)error;
- (PLFileSystemCapabilities)capabilities;
- (PLPhotoLibraryPathManagerCore)init;
- (PLPhotoLibraryPathManagerCore)initWithLibraryURL:(id)l bundleScope:(unsigned __int16)scope;
- (id)assetAbbreviatedMetadataDirectoryForDirectory:(id)directory rootPath:(id)path;
- (id)assetAbbreviatedMetadataDirectoryForDirectory:(id)directory type:(unsigned __int8)type bundleScope:(unsigned __int16)scope;
- (id)assetBaseFilenameForAdjustmentFilePath:(id)path;
- (id)assetMainFilePathWithDirectory:(id)directory filename:(id)filename bundleScope:(unsigned __int16)scope;
- (id)clientOwnedDirectoryPathsForClientAccess:(id)access;
- (id)externalDirectoryWithSubType:(unsigned __int8)type leafType:(unsigned __int8)leafType additionalPathComponents:(id)components;
- (id)externalDirectoryWithSubType:(unsigned __int8)type leafType:(unsigned __int8)leafType additionalPathComponents:(id)components createIfNeeded:(BOOL)needed error:(id *)error;
- (id)internalDirectoryWithSubType:(unsigned __int8)type additionalPathComponents:(id)components;
- (id)internalDirectoryWithSubType:(unsigned __int8)type additionalPathComponents:(id)components createIfNeeded:(BOOL)needed error:(id *)error;
- (id)knownDBPaths;
- (id)pathForCPLStatus;
- (id)pathsForClientAccess:(id)access;
- (id)pathsForLibraryFilesystemSizeCalculation;
- (id)pathsGroupedByAssetBasePathFromFilePaths:(id)paths populateInvalidAdjustmentPaths:(id)adjustmentPaths;
- (id)photoDirectoryWithType:(unsigned __int8)type leafType:(unsigned __int8)leafType additionalPathComponents:(id)components;
- (id)photoDirectoryWithType:(unsigned __int8)type leafType:(unsigned __int8)leafType additionalPathComponents:(id)components createIfNeeded:(BOOL)needed error:(id *)error;
- (id)photoMetadataDirectoryForMediaInMainDirectory:(id)directory;
- (id)photosAsideDatabasePath;
- (id)photosCPLDatabasePath;
- (id)privateCacheDirectoryWithSubType:(unsigned __int8)type leafType:(unsigned __int8)leafType additionalPathComponents:(id)components;
- (id)privateCacheDirectoryWithSubType:(unsigned __int8)type leafType:(unsigned __int8)leafType additionalPathComponents:(id)components createIfNeeded:(BOOL)needed error:(id *)error;
- (id)privateDirectoryWithBundleIdentifier:(id)identifier createIfNeeded:(BOOL)needed;
- (id)privateDirectoryWithSubType:(unsigned __int8)type leafType:(unsigned __int8)leafType additionalPathComponents:(id)components;
- (id)privateDirectoryWithSubType:(unsigned __int8)type leafType:(unsigned __int8)leafType additionalPathComponents:(id)components createIfNeeded:(BOOL)needed error:(id *)error;
- (id)purgeableSubdirectoriesWithType:(unsigned __int8)type createIfNeeded:(BOOL)needed error:(id *)error;
- (id)readOnlyUrlWithIdentifier:(id)identifier;
- (id)temporaryDragAndDropDirectoryCreateIfNeeded:(BOOL)needed error:(id *)error;
- (id)temporaryFileBackedDebugDirectoryCreateIfNeeded:(BOOL)needed error:(id *)error;
- (void)enumerateBundleScopesWithBlock:(id)block;
- (void)externalDirectoryCreationMaskResetWithSubType:(unsigned __int8)type;
- (void)internalDirectoryCreationMaskResetWithSubType:(unsigned __int8)type;
- (void)obtainAccessAndWaitWithFileWithIdentifier:(id)identifier mode:(unsigned __int8)mode toURLWithHandler:(id)handler;
- (void)photoDirectoryCreationMaskResetWithType:(unsigned __int8)type;
- (void)postInit;
- (void)privateCacheDirectoryCreationMaskResetWithSubType:(unsigned __int8)type;
- (void)privateDirectoryCreationMaskResetWithSubType:(unsigned __int8)type;
- (void)setDataProtectionComplete:(BOOL)complete;
- (void)setExtendedAttributesWithIdentifier:(id)identifier;
- (void)setExtendedAttributesWithIdentifier:(id)identifier andURL:(id)l;
@end

@implementation PLPhotoLibraryPathManagerCore

+ (id)photosLibrariesDataVaultPath
{
  photosDataVaultPath = [self photosDataVaultPath];
  v3 = [photosDataVaultPath URLByAppendingPathComponent:@"Libraries" isDirectory:1];

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
  systemLibraryURLIfResolvable = [self systemLibraryURLIfResolvable];
  if (!systemLibraryURLIfResolvable)
  {
    _legacySystemLibraryBookmarkData = [self _legacySystemLibraryBookmarkData];
    if (_legacySystemLibraryBookmarkData && ([self _constructLegacySystemPhotoLibraryURLFromUnresolvableBookmark:_legacySystemLibraryBookmarkData], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      systemLibraryURLIfResolvable = v5;
      v6 = PLBackendGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        path = [systemLibraryURLIfResolvable path];
        v11 = 138412290;
        v12 = path;
        v8 = "Constructed legacy SPL URL from unresolvable bookmark: %@";
LABEL_8:
        _os_log_impl(&dword_1AA9BD000, v6, OS_LOG_TYPE_DEFAULT, v8, &v11, 0xCu);
      }
    }

    else
    {
      systemLibraryURLIfResolvable = +[PLFileUtilities defaultSystemLibraryURL];
      v6 = PLBackendGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        path = [systemLibraryURLIfResolvable path];
        v11 = 138412290;
        v12 = path;
        v8 = "Returning default system library path (%@) as SPL";
        goto LABEL_8;
      }
    }

    os_unfair_lock_lock(&splLock);
    path2 = [systemLibraryURLIfResolvable path];
    [self _persistSystemPhotoLibraryPath:path2 sendChangeNotification:0];

    os_unfair_lock_unlock(&splLock);
  }

  return systemLibraryURLIfResolvable;
}

+ (void)initialize
{
  pl_dispatch_once(&PLIsReallyAssetsd_didCheckReadOnly, &__block_literal_global_129_3947);
  if ((PLIsReallyAssetsd_isAssetsd & 1) == 0 && (__PLIsAssetsdProxyService & 1) == 0)
  {

    [self listenForSystemPhotoLibraryURLChanges];
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

- (id)pathsGroupedByAssetBasePathFromFilePaths:(id)paths populateInvalidAdjustmentPaths:(id)adjustmentPaths
{
  pathsCopy = paths;
  adjustmentPathsCopy = adjustmentPaths;
  IsAbstract = _PFThrowMethodIsAbstract();
  return [(PLPhotoLibraryPathManagerCore *)IsAbstract assetBaseFilenameForAdjustmentFilePath:v8, v9];
}

- (id)assetBaseFilenameForAdjustmentFilePath:(id)path
{
  pathCopy = path;
  IsAbstract = _PFThrowMethodIsAbstract();
  return [(PLPhotoLibraryPathManagerCore *)IsAbstract photoMetadataDirectoryForMediaInMainDirectory:v5, v6];
}

- (id)photoMetadataDirectoryForMediaInMainDirectory:(id)directory
{
  directoryCopy = directory;
  IsAbstract = _PFThrowMethodIsAbstract();
  return [(PLPhotoLibraryPathManagerCore *)IsAbstract persistedAlbumDataDirectoryCreateIfNeeded:v5 error:v6, v7];
}

- (id)assetAbbreviatedMetadataDirectoryForDirectory:(id)directory rootPath:(id)path
{
  directoryCopy = directory;
  pathCopy = path;
  if (([(__CFString *)directoryCopy hasPrefix:pathCopy]& 1) != 0)
  {
    v7 = directoryCopy;
    goto LABEL_3;
  }

  if (-[__CFString hasPrefix:](directoryCopy, "hasPrefix:", @"/private/") && ([pathCopy hasPrefix:@"/private/"] & 1) == 0)
  {
    v7 = -[__CFString substringFromIndex:](directoryCopy, "substringFromIndex:", [@"/private" length]);
    if (![v7 hasPrefix:pathCopy])
    {
LABEL_10:

      goto LABEL_11;
    }

LABEL_3:
    v8 = [v7 length];
    if (v8 == [pathCopy length])
    {
      directoryCopy = &stru_1F1F75560;
    }

    else
    {
      directoryCopy = [v7 substringFromIndex:{objc_msgSend(pathCopy, "length") + 1}];
    }

    goto LABEL_10;
  }

LABEL_11:

  return directoryCopy;
}

- (id)assetAbbreviatedMetadataDirectoryForDirectory:(id)directory type:(unsigned __int8)type bundleScope:(unsigned __int16)scope
{
  directoryCopy = directory;
  IsAbstract = _PFThrowMethodIsAbstract();
  return [(PLPhotoLibraryPathManagerCore *)IsAbstract ensureFileProviderSyncExclusionAttributeIsSetWithError:v7, v8];
}

- (void)setDataProtectionComplete:(BOOL)complete
{
  completeCopy = complete;
  _dataProtectionIndicatorFilePath = [(PLPhotoLibraryPathManagerCore *)self _dataProtectionIndicatorFilePath];
  PLMakeIndicatorFileExistAtPath(_dataProtectionIndicatorFilePath, completeCopy);
}

- (BOOL)isDataProtectionComplete
{
  _dataProtectionIndicatorFilePath = [(PLPhotoLibraryPathManagerCore *)self _dataProtectionIndicatorFilePath];
  v3 = PLDoesIndicatorFileExistAtPath(_dataProtectionIndicatorFilePath);

  return v3;
}

- (id)pathsForLibraryFilesystemSizeCalculation
{
  IsAbstract = _PFThrowMethodIsAbstract();
  [(PLPhotoLibraryPathManagerCore *)IsAbstract obtainAccessAndWaitWithFileWithIdentifier:v3 mode:v4 toURLWithHandler:v5, v6];
  return result;
}

- (void)obtainAccessAndWaitWithFileWithIdentifier:(id)identifier mode:(unsigned __int8)mode toURLWithHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  IsAbstract = _PFThrowMethodIsAbstract();
  [(PLPhotoLibraryPathManagerCore *)IsAbstract setExtendedAttributesWithIdentifier:v9 andURL:v10, v11];
}

- (void)setExtendedAttributesWithIdentifier:(id)identifier andURL:(id)l
{
  identifierCopy = identifier;
  lCopy = l;
  IsAbstract = _PFThrowMethodIsAbstract();
  [(PLPhotoLibraryPathManagerCore *)IsAbstract setExtendedAttributesWithIdentifier:v8, v9];
}

- (void)setExtendedAttributesWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  IsAbstract = _PFThrowMethodIsAbstract();
  [(PLPhotoLibraryPathManagerCore *)IsAbstract readOnlyUrlWithIdentifier:v5, v6];
}

- (id)readOnlyUrlWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  IsAbstract = _PFThrowMethodIsAbstract();
  return [(PLPhotoLibraryPathManagerCore *)IsAbstract shouldUseFileIdentifierForBundleScope:v5, v6];
}

- (id)temporaryDragAndDropDirectoryCreateIfNeeded:(BOOL)needed error:(id *)error
{
  neededCopy = needed;
  v21 = *MEMORY[0x1E69E9840];
  v6 = NSTemporaryDirectory();
  v7 = [v6 stringByAppendingPathComponent:@"com.apple.photos.drag-and-drop"];

  if (neededCopy)
  {
    v14 = 0;
    v8 = [PLFileUtilities createDirectoryAtPath:v7 error:&v14];
    v9 = v14;
    v10 = v9;
    if (!v8)
    {
      if (error)
      {
        v11 = v9;
        *error = v10;
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

- (id)temporaryFileBackedDebugDirectoryCreateIfNeeded:(BOOL)needed error:(id *)error
{
  neededCopy = needed;
  v21 = *MEMORY[0x1E69E9840];
  v6 = NSTemporaryDirectory();
  v7 = [v6 stringByAppendingPathComponent:@"com.apple.photos.file-backed-datasource"];

  if (neededCopy)
  {
    v14 = 0;
    v8 = [PLFileUtilities createDirectoryAtPath:v7 error:&v14];
    v9 = v14;
    v10 = v9;
    if (!v8)
    {
      if (error)
      {
        v11 = v9;
        *error = v10;
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
  photosDatabasePath = [(PLPhotoLibraryPathManagerCore *)self photosDatabasePath];
  v9[0] = photosDatabasePath;
  photosAsideDatabasePath = [(PLPhotoLibraryPathManagerCore *)self photosAsideDatabasePath];
  v9[1] = photosAsideDatabasePath;
  v5 = [(PLPhotoLibraryPathManagerCore *)self privateDirectoryWithSubType:3];
  v9[2] = v5;
  photosCPLDatabasePath = [(PLPhotoLibraryPathManagerCore *)self photosCPLDatabasePath];
  v9[3] = photosCPLDatabasePath;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  return v7;
}

- (id)assetMainFilePathWithDirectory:(id)directory filename:(id)filename bundleScope:(unsigned __int16)scope
{
  directoryCopy = directory;
  filenameCopy = filename;
  IsAbstract = _PFThrowMethodIsAbstract();
  return [(PLPhotoLibraryPathManagerCore *)IsAbstract purgeableSubdirectoriesWithType:v9 createIfNeeded:v10 error:v11, v12];
}

- (id)purgeableSubdirectoriesWithType:(unsigned __int8)type createIfNeeded:(BOOL)needed error:(id *)error
{
  neededCopy = needed;
  typeCopy = type;
  v22 = *MEMORY[0x1E69E9840];
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = [(PLPhotoLibraryPathManagerCore *)self purgeableSubdirectoryNamesWithType:typeCopy];
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

        v15 = [(PLPhotoLibraryPathManagerCore *)self photoDirectoryWithType:typeCopy leafType:1 additionalPathComponents:*(*(&v17 + 1) + 8 * i) createIfNeeded:neededCopy error:error];
        [v9 addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  return v9;
}

- (id)internalDirectoryWithSubType:(unsigned __int8)type additionalPathComponents:(id)components createIfNeeded:(BOOL)needed error:(id *)error
{
  neededCopy = needed;
  typeCopy = type;
  componentsCopy = components;
  v11 = [(PLPhotoLibraryPathManagerCore *)self internalDirectoryWithSubType:typeCopy additionalPathComponents:componentsCopy];
  if (v11 && neededCopy)
  {
    if ([componentsCopy length])
    {
      v12 = 1;
    }

    else
    {
      v12 = 6;
    }

    [(PLPhotoLibraryPathManagerCore *)self createDirectoryOnceWithPath:v11 mask:v12 pathType:typeCopy error:error];
  }

  return v11;
}

- (id)internalDirectoryWithSubType:(unsigned __int8)type additionalPathComponents:(id)components
{
  componentsCopy = components;
  IsAbstract = _PFThrowMethodIsAbstract();
  return [(PLPhotoLibraryPathManagerCore *)IsAbstract externalDirectoryWithSubType:v6 leafType:v7 additionalPathComponents:v8 createIfNeeded:v9 error:v10, v11];
}

- (id)externalDirectoryWithSubType:(unsigned __int8)type leafType:(unsigned __int8)leafType additionalPathComponents:(id)components createIfNeeded:(BOOL)needed error:(id *)error
{
  neededCopy = needed;
  leafTypeCopy = leafType;
  typeCopy = type;
  componentsCopy = components;
  v13 = [(PLPhotoLibraryPathManagerCore *)self externalDirectoryWithSubType:typeCopy leafType:leafTypeCopy additionalPathComponents:componentsCopy];
  if (neededCopy)
  {
    if (leafTypeCopy == 1 && [componentsCopy length])
    {
      v14 = 1;
    }

    else if (leafTypeCopy == 2)
    {
      v14 = 1;
    }

    else
    {
      v14 = 5;
    }

    [(PLPhotoLibraryPathManagerCore *)self createDirectoryOnceWithPath:v13 mask:v14 pathType:typeCopy error:error];
  }

  return v13;
}

- (id)externalDirectoryWithSubType:(unsigned __int8)type leafType:(unsigned __int8)leafType additionalPathComponents:(id)components
{
  componentsCopy = components;
  IsAbstract = _PFThrowMethodIsAbstract();
  return [(PLPhotoLibraryPathManagerCore *)IsAbstract externalDirectoryWithSubType:v7, v8];
}

- (id)privateCacheDirectoryWithSubType:(unsigned __int8)type leafType:(unsigned __int8)leafType additionalPathComponents:(id)components createIfNeeded:(BOOL)needed error:(id *)error
{
  neededCopy = needed;
  leafTypeCopy = leafType;
  typeCopy = type;
  componentsCopy = components;
  v13 = [(PLPhotoLibraryPathManagerCore *)self privateCacheDirectoryWithSubType:typeCopy leafType:leafTypeCopy additionalPathComponents:componentsCopy];
  if (neededCopy)
  {
    v14 = 4;
    if (leafTypeCopy == 1)
    {
      if ([componentsCopy length])
      {
        v14 = 1;
      }

      else
      {
        v14 = 4;
      }
    }

    [(PLPhotoLibraryPathManagerCore *)self createDirectoryOnceWithPath:v13 mask:v14 pathType:typeCopy error:error];
  }

  return v13;
}

- (id)privateCacheDirectoryWithSubType:(unsigned __int8)type leafType:(unsigned __int8)leafType additionalPathComponents:(id)components
{
  componentsCopy = components;
  IsAbstract = _PFThrowMethodIsAbstract();
  return [(PLPhotoLibraryPathManagerCore *)IsAbstract privateCacheDirectoryWithSubType:v7, v8];
}

- (id)privateDirectoryWithSubType:(unsigned __int8)type leafType:(unsigned __int8)leafType additionalPathComponents:(id)components createIfNeeded:(BOOL)needed error:(id *)error
{
  neededCopy = needed;
  leafTypeCopy = leafType;
  typeCopy = type;
  componentsCopy = components;
  v13 = [(PLPhotoLibraryPathManagerCore *)self privateDirectoryWithSubType:typeCopy leafType:leafTypeCopy additionalPathComponents:componentsCopy];
  if (neededCopy)
  {
    if (leafTypeCopy == 1 && [componentsCopy length])
    {
      v14 = 1;
    }

    else if (leafTypeCopy == 2)
    {
      v14 = 1;
    }

    else
    {
      v14 = 3;
    }

    [(PLPhotoLibraryPathManagerCore *)self createDirectoryOnceWithPath:v13 mask:v14 pathType:typeCopy error:error];
  }

  return v13;
}

- (id)privateDirectoryWithSubType:(unsigned __int8)type leafType:(unsigned __int8)leafType additionalPathComponents:(id)components
{
  componentsCopy = components;
  IsAbstract = _PFThrowMethodIsAbstract();
  return [(PLPhotoLibraryPathManagerCore *)IsAbstract privateDirectoryWithSubType:v7, v8];
}

- (BOOL)pathRelativeToBundle:(id)bundle isSubpathOfPhotoDirectoryWithType:(unsigned __int8)type
{
  typeCopy = type;
  bundleCopy = bundle;
  v7 = [(PLPhotoLibraryPathManagerCore *)self photoDirectoryWithType:1];
  v8 = [v7 stringByAppendingPathComponent:bundleCopy];

  LOBYTE(typeCopy) = [(PLPhotoLibraryPathManagerCore *)self path:v8 isSubpathOfPhotoDirectoryWithType:typeCopy];
  return typeCopy;
}

- (BOOL)path:(id)path isSubpathOfPhotoDirectoryWithType:(unsigned __int8)type
{
  typeCopy = type;
  v27 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v7 = [(PLPhotoLibraryPathManagerCore *)self photoDirectoryWithType:typeCopy];
  pathComponents = [v7 pathComponents];
  pathComponents2 = [pathCopy pathComponents];
  v10 = [pathComponents2 count];
  if (v10 <= [pathComponents count])
  {
    v19 = 0;
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = pathComponents;
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v21 = pathCopy;
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
          v18 = [pathComponents2 objectAtIndexedSubscript:v14];
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
      pathCopy = v21;
    }

    else
    {
      v19 = 1;
    }
  }

  return v19;
}

- (void)enumerateBundleScopesWithBlock:(id)block
{
  blockCopy = block;
  IsAbstract = _PFThrowMethodIsAbstract();
  [(PLPhotoLibraryPathManagerCore *)IsAbstract pathsForExternalWriters];
}

- (id)pathsForClientAccess:(id)access
{
  accessCopy = access;
  IsAbstract = _PFThrowMethodIsAbstract();
  return [(PLPhotoLibraryPathManagerCore *)IsAbstract clientOwnedDirectoryPathsForClientAccess:v5, v6];
}

- (id)clientOwnedDirectoryPathsForClientAccess:(id)access
{
  accessCopy = access;
  IsAbstract = _PFThrowMethodIsAbstract();
  return [(PLPhotoLibraryPathManagerCore *)IsAbstract photoDirectoryWithType:v5 leafType:v6 additionalPathComponents:v7 createIfNeeded:v8 error:v9, v10];
}

- (id)photoDirectoryWithType:(unsigned __int8)type leafType:(unsigned __int8)leafType additionalPathComponents:(id)components createIfNeeded:(BOOL)needed error:(id *)error
{
  neededCopy = needed;
  leafTypeCopy = leafType;
  typeCopy = type;
  componentsCopy = components;
  v13 = [(PLPhotoLibraryPathManagerCore *)self photoDirectoryWithType:typeCopy leafType:leafTypeCopy additionalPathComponents:componentsCopy];
  if (neededCopy)
  {
    if (leafTypeCopy == 1 && [componentsCopy length])
    {
      v14 = 1;
    }

    else if (leafTypeCopy > 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    [(PLPhotoLibraryPathManagerCore *)self createDirectoryOnceWithPath:v13 mask:v14 pathType:typeCopy error:error];
  }

  return v13;
}

- (id)photoDirectoryWithType:(unsigned __int8)type leafType:(unsigned __int8)leafType additionalPathComponents:(id)components
{
  componentsCopy = components;
  IsAbstract = _PFThrowMethodIsAbstract();
  return [(PLPhotoLibraryPathManagerCore *)IsAbstract photoDirectoryWithType:v7 additionalPathComponents:v8, v9];
}

- (id)photosAsideDatabasePath
{
  photosDatabasePath = [(PLPhotoLibraryPathManagerCore *)self photosDatabasePath];
  v3 = [photosDatabasePath stringByAppendingPathExtension:@"aside"];

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

- (id)privateDirectoryWithBundleIdentifier:(id)identifier createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    basePrivateDirectoryPath = [(PLPhotoLibraryPathManagerCore *)self basePrivateDirectoryPath];
    v8 = [basePrivateDirectoryPath stringByAppendingPathComponent:identifierCopy];

    if (neededCopy)
    {
      v13 = 0;
      v9 = [(PLPhotoLibraryPathManagerCore *)self internalValidateCreationRequestWithError:&v13];
      v10 = v13;
      if (v9)
      {
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        [defaultManager createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:0];
      }

      else
      {
        defaultManager = PLBackendGetLog();
        if (os_log_type_enabled(defaultManager, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v15 = "[PLPhotoLibraryPathManagerCore privateDirectoryWithBundleIdentifier:createIfNeeded:]";
          v16 = 2112;
          v17 = v8;
          v18 = 2112;
          v19 = v10;
          _os_log_impl(&dword_1AA9BD000, defaultManager, OS_LOG_TYPE_ERROR, "%{public}s: failed to create directory: %@ with error: %@", buf, 0x20u);
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

- (BOOL)updateExclusionAttributeWithPath:(id)path mask:(unsigned __int8)mask pathType:(unsigned __int8)type error:(id *)error
{
  typeCopy = type;
  maskCopy = mask;
  pathCopy = path;
  v11 = pathCopy;
  if (maskCopy == 6)
  {
    if ((typeCopy - 6) < 2)
    {
      goto LABEL_6;
    }

    if (typeCopy == 8)
    {
      goto LABEL_8;
    }

LABEL_9:
    v13 = 1;
    goto LABEL_10;
  }

  if (maskCopy != 4)
  {
    goto LABEL_9;
  }

  if ((typeCopy - 1) >= 0x10)
  {
    if (typeCopy != 17)
    {
      if (typeCopy)
      {
        goto LABEL_9;
      }

LABEL_6:
      v13 = [(PLPhotoLibraryPathManagerCore *)self updateTimeMachineExclusionAttributeForExcludePath:pathCopy error:error];
      goto LABEL_10;
    }

LABEL_8:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"Invalid pathType for exclusion attribute in %s", "-[PLPhotoLibraryPathManagerCore updateExclusionAttributeWithPath:mask:pathType:error:]"}];
    goto LABEL_9;
  }

  stringByDeletingLastPathComponent = [pathCopy stringByDeletingLastPathComponent];
  v13 = [(PLPhotoLibraryPathManagerCore *)self updateTimeMachineExclusionAttributeForExcludePath:stringByDeletingLastPathComponent error:error];

LABEL_10:
  return v13;
}

- (BOOL)createDirectoryOnceWithPath:(id)path mask:(unsigned __int8)mask pathType:(unsigned __int8)type error:(id *)error
{
  typeCopy = type;
  maskCopy = mask;
  v35 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (typeCopy >= 0x3F)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryPathManagerCore.m" lineNumber:314 description:{@"Invalid parameter not satisfying: %@", @"(sizeof(PLExistsMask) * 8 - 1) > pathType"}];
  }

  v28 = 0;
  v12 = [(PLPhotoLibraryPathManagerCore *)self internalValidateCreationRequestWithError:&v28];
  v13 = v28;
  if (v12)
  {
    v27 = 0;
    if (maskCopy > 3)
    {
      if (maskCopy > 5)
      {
        if (maskCopy != 6)
        {
          if (maskCopy != 7)
          {
            goto LABEL_42;
          }

          p_persistedAlbumDataDirectoryExists = &self->_persistedAlbumDataDirectoryExists;
          if (!pathCopy)
          {
            goto LABEL_42;
          }

          goto LABEL_32;
        }

        p_persistedAlbumDataDirectoryExists = &self->_internalDirectoriesExists;
        if (pathCopy)
        {
          goto LABEL_32;
        }
      }

      else if (maskCopy == 4)
      {
        p_persistedAlbumDataDirectoryExists = &self->_privateCacheSubDirectoriesExists;
        if (pathCopy)
        {
          goto LABEL_32;
        }
      }

      else
      {
        p_persistedAlbumDataDirectoryExists = &self->_externalDirectoriesExists;
        if (pathCopy)
        {
          goto LABEL_32;
        }
      }
    }

    else if (maskCopy > 1)
    {
      if (maskCopy == 2)
      {
        p_persistedAlbumDataDirectoryExists = &self->_photoDirectoriesExists;
        if (pathCopy)
        {
          goto LABEL_32;
        }
      }

      else
      {
        p_persistedAlbumDataDirectoryExists = &self->_privateSubDirectoriesExists;
        if (pathCopy)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      if (maskCopy)
      {
        if (maskCopy != 1)
        {
          goto LABEL_42;
        }

        p_persistedAlbumDataDirectoryExists = &v27;
        if (!pathCopy)
        {
          goto LABEL_42;
        }

LABEL_32:
        os_unfair_lock_lock(&self->_folderCreationAndCapabilitiesLock);
        if ((*p_persistedAlbumDataDirectoryExists & (1 << typeCopy)) != 0)
        {
          v18 = v13;
        }

        else
        {
          v26 = v13;
          v19 = [PLFileUtilities createDirectoryAtPath:pathCopy error:&v26];
          v18 = v26;

          if (v19)
          {
            *p_persistedAlbumDataDirectoryExists ^= 1 << typeCopy;
            v25 = v18;
            [(PLPhotoLibraryPathManagerCore *)self updateExclusionAttributeWithPath:pathCopy mask:maskCopy pathType:typeCopy error:&v25];
            v20 = v25;

            v18 = v20;
          }

          else if (error)
          {
            v21 = v18;
            *error = v18;
          }

          else
          {
            v22 = PLBackendGetLog();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446722;
              v30 = "[PLPhotoLibraryPathManagerCore createDirectoryOnceWithPath:mask:pathType:error:]";
              v31 = 2112;
              v32 = pathCopy;
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
    v32 = pathCopy;
    v33 = 2112;
    v34 = v13;
    _os_log_impl(&dword_1AA9BD000, v15, OS_LOG_TYPE_ERROR, "%{public}s: failed to create directory: %@ with error: %@", buf, 0x20u);
  }

  if (error)
  {
    v16 = v13;
    v17 = 0;
    *error = v13;
  }

  else
  {
    v17 = 0;
  }

LABEL_43:

  return v17;
}

- (BOOL)updateTimeMachineExclusionAttributeForExcludePath:(id)path error:(id *)error
{
  pathCopy = path;
  IsAbstract = _PFThrowMethodIsAbstract();
  [(PLPhotoLibraryPathManagerCore *)IsAbstract internalDirectoryCreationMaskResetWithSubType:v6, v7];
  return result;
}

- (void)internalDirectoryCreationMaskResetWithSubType:(unsigned __int8)type
{
  os_unfair_lock_lock(&self->_folderCreationAndCapabilitiesLock);
  self->_internalDirectoriesExists &= ~(1 << type);

  os_unfair_lock_unlock(&self->_folderCreationAndCapabilitiesLock);
}

- (void)externalDirectoryCreationMaskResetWithSubType:(unsigned __int8)type
{
  os_unfair_lock_lock(&self->_folderCreationAndCapabilitiesLock);
  self->_externalDirectoriesExists &= ~(1 << type);

  os_unfair_lock_unlock(&self->_folderCreationAndCapabilitiesLock);
}

- (void)privateCacheDirectoryCreationMaskResetWithSubType:(unsigned __int8)type
{
  os_unfair_lock_lock(&self->_folderCreationAndCapabilitiesLock);
  self->_privateCacheSubDirectoriesExists &= ~(1 << type);

  os_unfair_lock_unlock(&self->_folderCreationAndCapabilitiesLock);
}

- (void)privateDirectoryCreationMaskResetWithSubType:(unsigned __int8)type
{
  os_unfair_lock_lock(&self->_folderCreationAndCapabilitiesLock);
  self->_privateSubDirectoriesExists &= ~(1 << type);

  os_unfair_lock_unlock(&self->_folderCreationAndCapabilitiesLock);
}

- (void)photoDirectoryCreationMaskResetWithType:(unsigned __int8)type
{
  os_unfair_lock_lock(&self->_folderCreationAndCapabilitiesLock);
  self->_photoDirectoriesExists &= ~(1 << type);

  os_unfair_lock_unlock(&self->_folderCreationAndCapabilitiesLock);
}

- (BOOL)validateCreationRequestWithError:(id *)error
{
  v16[3] = *MEMORY[0x1E69E9840];
  libraryURL = [(PLPhotoLibraryPathManagerCore *)self libraryURL];
  v14 = 0;
  v6 = [libraryURL checkResourceIsReachableAndReturnError:&v14];
  v7 = v14;

  if ((v6 & 1) == 0)
  {
    v15[0] = *MEMORY[0x1E696A998];
    libraryURL2 = [(PLPhotoLibraryPathManagerCore *)self libraryURL];
    v9 = *MEMORY[0x1E696AA08];
    v16[0] = libraryURL2;
    v16[1] = v7;
    v10 = *MEMORY[0x1E696A578];
    v15[1] = v9;
    v15[2] = v10;
    v16[2] = @"Bundle root was unreachable";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.photos.error" code:46802 userInfo:v11];
    if (error)
    {
      v12 = v12;
      *error = v12;
    }
  }

  return v6;
}

- (BOOL)internalValidateCreationRequestWithError:(id *)error
{
  pl_dispatch_once(&PLIsReallyAssetsd_didCheckReadOnly, &__block_literal_global_129_3947);
  if (PLIsReallyAssetsd_isAssetsd & 1) != 0 || (__PLIsAssetsdProxyService)
  {
    return 1;
  }

  return [(PLPhotoLibraryPathManagerCore *)self validateCreationRequestWithError:error];
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
    libraryURL = [(PLPhotoLibraryPathManagerCore *)self libraryURL];
    v15 = 0;
    v8 = [(PLFileSystemCapabilities *)v6 determineCapabilitiesWithURL:libraryURL error:&v15];
    v9 = v15;

    if (!v8)
    {
      v10 = PLBackendGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        libraryURL2 = [(PLPhotoLibraryPathManagerCore *)self libraryURL];
        v12 = [PLFilePathDescription descriptionWithFileURL:libraryURL2];
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

- (PLPhotoLibraryPathManagerCore)initWithLibraryURL:(id)l bundleScope:(unsigned __int16)scope
{
  scopeCopy = scope;
  lCopy = l;
  if (!lCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryPathManagerCore.m" lineNumber:203 description:{@"Invalid parameter not satisfying: %@", @"libraryURL"}];
  }

  v15.receiver = self;
  v15.super_class = PLPhotoLibraryPathManagerCore;
  v8 = [(PLPhotoLibraryPathManagerCore *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_folderCreationAndCapabilitiesLock._os_unfair_lock_opaque = 0;
    v10 = [lCopy copy];
    [(PLPhotoLibraryPathManagerCore *)v9 setLibraryURL:v10];

    path = [lCopy path];
    v12 = [path copy];
    [(PLPhotoLibraryPathManagerCore *)v9 setBaseDirectory:v12];

    [(PLPhotoLibraryPathManagerCore *)v9 setBundleScope:scopeCopy];
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

+ (id)rootURLForPhotoLibraryDomain:(int64_t)domain
{
  if ((domain - 2) < 2)
  {
    _photosLibrariesDataVaultPathForApplicationLibrariesDomain = [self _photosLibrariesDataVaultPathForApplicationLibrariesDomain];
LABEL_7:
    v3 = _photosLibrariesDataVaultPathForApplicationLibrariesDomain;
    goto LABEL_8;
  }

  if (domain == 1)
  {
    _photosLibrariesDataVaultPathForApplicationLibrariesDomain = [self photosLibrariesDataVaultPath];
    goto LABEL_7;
  }

  if (!domain)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryPathManagerCore.m" lineNumber:1314 description:@"API misuse: requesting URL for unknown domain"];

    v7 = MEMORY[0x1E695DFF8];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v10 = [@"/" stringByAppendingPathComponent:uUIDString];
    v3 = [v7 fileURLWithPath:v10];
  }

LABEL_8:

  return v3;
}

+ (unint64_t)libraryCreateOptionsForWellKnownLibraryIdentifier:(int64_t)identifier
{
  if (identifier == 3)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if (identifier == 2)
  {
    return 19;
  }

  else
  {
    return v3;
  }
}

+ (int64_t)wellKnownPhotoLibraryIdentifierForURL:(id)l
{
  lCopy = l;
  lastPathComponent = [lCopy lastPathComponent];
  v6 = [&unk_1F1F910C0 objectForKeyedSubscript:lastPathComponent];

  if (v6)
  {
    integerValue = [v6 integerValue];
    if (integerValue >= 2)
    {
      v8 = [self wellKnownPhotoLibraryURLForIdentifier:integerValue];
      v9 = [PLFileUtilities fileURL:lCopy isEqualToFileURL:v8];

      if (!v9)
      {
        integerValue = 0;
      }
    }
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

+ (id)wellKnownPhotoLibraryURLForIdentifier:(int64_t)identifier
{
  if (identifier > 1)
  {
    if (identifier == 2)
    {
      v6 = @"Messages.photoslibrary";
    }

    else
    {
      if (identifier != 3)
      {
        goto LABEL_12;
      }

      v6 = @"Syndication.photoslibrary";
    }

    systemLibraryURL = [self _photosLibrariesDataVaultPathForLibraryBundleName:v6];
  }

  else
  {
    if (!identifier)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryPathManagerCore.m" lineNumber:1215 description:@"API misuse: requesting URL for a non-well-known library"];

      v9 = MEMORY[0x1E695DFF8];
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];
      v12 = [@"/" stringByAppendingPathComponent:uUIDString];
      v3 = [v9 fileURLWithPath:v12];

      goto LABEL_12;
    }

    if (identifier != 1)
    {
      goto LABEL_12;
    }

    systemLibraryURL = [self systemLibraryURL];
  }

  v3 = systemLibraryURL;
LABEL_12:

  return v3;
}

+ (id)_photosLibrariesDataVaultPathForApplicationLibrariesDomain
{
  photosLibrariesDataVaultPath = [self photosLibrariesDataVaultPath];
  v3 = [photosLibrariesDataVaultPath URLByAppendingPathComponent:@"Application" isDirectory:1];

  return v3;
}

+ (id)_photosLibrariesDataVaultPathForLibraryBundleName:(id)name
{
  nameCopy = name;
  photosLibrariesDataVaultPath = [self photosLibrariesDataVaultPath];
  v6 = [photosLibrariesDataVaultPath URLByAppendingPathComponent:nameCopy isDirectory:1];

  return v6;
}

+ (id)managedPathWithUuid:(const char *)uuid base:(const char *)base fileMarker:(const char *)marker extension:(const char *)extension
{
  v11 = strlen(base);
  v12 = v11 + strlen(uuid) + 4;
  if (marker && extension)
  {
    v13 = strlen(marker);
    v12 += v13 + strlen(extension) + 2;
    v14 = malloc_type_calloc(1uLL, v12, 0x621EB50CuLL);
    v15 = snprintf(v14, v12, "%s/%c/%s_%s.%s");
  }

  else if (marker)
  {
    v12 += strlen(marker) + 1;
    v14 = malloc_type_calloc(1uLL, v12, 0x6C9F3277uLL);
    v15 = snprintf(v14, v12, "%s/%c/%s_%s");
  }

  else if (extension)
  {
    v12 += strlen(extension) + 1;
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryPathManagerCore.m" lineNumber:1162 description:{@"Invalid parameter not satisfying: %@", @"formattedLen < urlStringLen"}];
  }

  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v14];
  free(v14);

  return v16;
}

+ (BOOL)_persistSystemPhotoLibraryPath:(id)path sendChangeNotification:(BOOL)notification
{
  notificationCopy = notification;
  v19 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  os_unfair_lock_assert_owner(&splLock);
  v7 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"group.com.apple.photolibraryd.private"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (pathCopy)
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

  [v7 setObject:pathCopy forKey:@"SystemLibraryPath"];
  v8 = [v7 objectForKey:@"SystemLibraryPath"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![v8 isEqualToString:pathCopy])
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
    v18 = pathCopy;
    _os_log_impl(&dword_1AA9BD000, v9, OS_LOG_TYPE_DEFAULT, "Successfully wrote SPL path to private group container: %@", &v17, 0xCu);
  }

LABEL_19:
  objc_storeStrong(&sSystemLibraryPath, path);
  if (notificationCopy)
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

    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v8 = [standardUserDefaults stringForKey:@"SystemLibraryPath"];

    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if (![self _persistSystemPhotoLibraryPath:v8 sendChangeNotification:0])
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

      standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
      [standardUserDefaults2 removeObjectForKey:@"SystemLibraryPath"];
    }

    else
    {
      standardUserDefaults2 = PLBackendGetLog();
      if (os_log_type_enabled(standardUserDefaults2, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v8;
        _os_log_impl(&dword_1AA9BD000, standardUserDefaults2, OS_LOG_TYPE_DEFAULT, "No SPL stored, and SPL from standard defaults was %@", &v12, 0xCu);
      }
    }

    goto LABEL_12;
  }

LABEL_14:

  return v3;
}

+ (void)recordPrevSystemLibraryPath:(id)path
{
  if (path)
  {
    v3 = MEMORY[0x1E695E000];
    pathCopy = path;
    standardUserDefaults = [v3 standardUserDefaults];
    v6 = [standardUserDefaults objectForKey:@"PrevSystemLibraryPathsByDate"];
    v15 = [v6 mutableCopy];

    v7 = v15;
    if (!v15)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v16 = v7;
    if ([v7 count] >= 0xA)
    {
      allKeys = [v16 allKeys];
      v9 = [allKeys sortedArrayUsingSelector:sel_compare_];

      firstObject = [v9 firstObject];
      [v16 removeObjectForKey:firstObject];
    }

    if (recordPrevSystemLibraryPath__onceToken != -1)
    {
      dispatch_once(&recordPrevSystemLibraryPath__onceToken, &__block_literal_global_280);
    }

    v11 = recordPrevSystemLibraryPath__formatter;
    date = [MEMORY[0x1E695DF00] date];
    v13 = [v11 stringFromDate:date];

    [v16 setObject:pathCopy forKey:v13];
    standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults2 setObject:v16 forKey:@"PrevSystemLibraryPathsByDate"];
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

+ (BOOL)setSystemLibraryURL:(id)l options:(unsigned __int16)options error:(id *)error
{
  optionsCopy = options;
  v32[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (!lCopy)
  {
LABEL_4:
    pl_dispatch_once(&PLIsReallyAssetsd_didCheckReadOnly, &__block_literal_global_129_3947);
    if (PLIsReallyAssetsd_isAssetsd == 1)
    {
      os_unfair_lock_lock(&splLock);
      if ((optionsCopy & 2) != 0)
      {
        if (optionsCopy)
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
          [self _persistSystemPhotoLibraryPath:0 sendChangeNotification:1];
          v23 = 0;
        }
      }

      else
      {
        path = [lCopy path];
        v29 = 0;
        v13 = [PLFileUtilities realPathForPath:path error:&v29];
        v14 = v29;

        v15 = v13 != 0;
        if (v13)
        {
          if (optionsCopy)
          {
            objc_storeStrong(&sSystemPhotoLibraryOverridePath, v13);
          }

          else
          {
            [self _persistSystemPhotoLibraryPath:v13 sendChangeNotification:1];
          }

          v23 = 0;
        }

        else
        {
          v23 = v14;
        }
      }

      os_unfair_lock_unlock(&splLock);
      if (!error)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v21 = objc_alloc_init(PLNonBindingAssetsdClient);
      libraryManagementClient = [(PLNonBindingAssetsdClient *)v21 libraryManagementClient];
      v28 = 0;
      v15 = [libraryManagementClient setSystemPhotoLibraryURL:lCopy error:&v28];
      v23 = v28;

      if (!error)
      {
LABEL_28:

        goto LABEL_29;
      }
    }

    if (v23)
    {
      v26 = v23;
      *error = v23;
    }

    goto LABEL_28;
  }

  buf[0] = 0;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path2 = [lCopy path];
  v11 = [defaultManager fileExistsAtPath:path2 isDirectory:buf];

  if (!v11)
  {
    v16 = 41015;
    if (!error)
    {
      goto LABEL_11;
    }

LABEL_10:
    v17 = *MEMORY[0x1E696A998];
    v32[0] = lCopy;
    v18 = *MEMORY[0x1E696A578];
    v31[0] = v17;
    v31[1] = v18;
    v19 = NSStringFromPLErrorCode(v16);
    v32[1] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];

    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.photos.error" code:v16 userInfo:v20];

    goto LABEL_11;
  }

  if ([PLPhotoLibraryPathManagerCore isSupportedFileSystemAtURL:lCopy])
  {
    goto LABEL_4;
  }

  v16 = 46107;
  if (error)
  {
    goto LABEL_10;
  }

LABEL_11:
  v15 = 0;
LABEL_29:

  return v15;
}

+ (id)_constructLegacySystemPhotoLibraryURLFromUnresolvableBookmark:(id)bookmark
{
  v23[1] = *MEMORY[0x1E69E9840];
  bookmarkCopy = bookmark;
  v4 = MEMORY[0x1E695DFF8];
  v5 = *MEMORY[0x1E695DC40];
  v23[0] = *MEMORY[0x1E695DC40];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v7 = [v4 resourceValuesForKeys:v6 fromBookmarkData:bookmarkCopy];

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
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v18 = [@"/Volumes/" stringByAppendingPathComponent:uUIDString];
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

+ (void)_updateSystemLibraryURLWithOldValue:(id)value
{
  valueCopy = value;
  v4 = objc_alloc_init(PLNonBindingAssetsdClient);
  systemLibraryURLReadOnlyClient = [(PLNonBindingAssetsdClient *)v4 systemLibraryURLReadOnlyClient];
  v10 = 0;
  v6 = [systemLibraryURLReadOnlyClient systemPhotoLibraryURLWithError:&v10];
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
    if (sCurrentSystemPhotoLibraryURL == valueCopy)
    {
      objc_storeStrong(&sCurrentSystemPhotoLibraryURL, v6);
    }

    os_unfair_lock_unlock(&splLock);
  }
}

+ (id)systemLibraryBaseDirectory
{
  systemLibraryURL = [self systemLibraryURL];
  path = [systemLibraryURL path];

  return path;
}

+ (BOOL)isSupportedFileSystemAtURL:(id)l
{
  v13 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v4 = [PLFileSystemCapabilities capabilitiesWithURL:lCopy];
  isWholeFileLockCapable = [v4 isWholeFileLockCapable];
  if ((isWholeFileLockCapable & 1) == 0)
  {
    v6 = PLBackendGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      error = [v4 error];
      v9 = 138412546;
      v10 = lCopy;
      v11 = 2112;
      v12 = error;
      _os_log_impl(&dword_1AA9BD000, v6, OS_LOG_TYPE_DEFAULT, "Not a valid system library URL because it not a supported filesystem %@: %@", &v9, 0x16u);
    }
  }

  return isWholeFileLockCapable;
}

+ (BOOL)isSystemPhotoLibraryURL:(id)l
{
  v32 = *MEMORY[0x1E69E9840];
  lCopy = l;
  systemLibraryURL = [self systemLibraryURL];
  path = [lCopy path];
  if (path)
  {
    path2 = [systemLibraryURL path];
    v8 = [path2 isEqualToString:path];

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

  path3 = [systemLibraryURL path];
  v27 = 0;
  path4 = [PLFileUtilities realPathForPath:path3 error:&v27];
  v12 = v27;

  if (!path4)
  {
    v13 = PLBackendGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v29 = systemLibraryURL;
      v30 = 2112;
      v31 = v12;
      _os_log_impl(&dword_1AA9BD000, v13, OS_LOG_TYPE_DEFAULT, "No realpath for SPL URL %@, %@", buf, 0x16u);
    }

    uRLByStandardizingPath = [systemLibraryURL URLByStandardizingPath];
    path4 = [uRLByStandardizingPath path];
  }

  v26 = v12;
  path5 = [PLFileUtilities realPathForPath:path error:&v26];
  v16 = v26;

  if (!path5)
  {
    v17 = PLIsErrorFileNotFound(v16);
    v18 = PLBackendGetLog();
    v19 = v18;
    if (v17)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v29 = lCopy;
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
      v29 = lCopy;
      v30 = 2112;
      v31 = v16;
      v20 = v19;
      v21 = OS_LOG_TYPE_ERROR;
      goto LABEL_15;
    }

    uRLByStandardizingPath2 = [lCopy URLByStandardizingPath];
    path5 = [uRLByStandardizingPath2 path];
  }

  v9 = 0;
  if (path4 && path5)
  {
    v23 = stringWithoutTrailingSlashes(path4);
    v24 = stringWithoutTrailingSlashes(path5);
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

+ (id)libraryURLFromDatabaseURL:(id)l
{
  uRLByDeletingLastPathComponent = [l URLByDeletingLastPathComponent];
  v3URLByDeletingLastPathComponent = [uRLByDeletingLastPathComponent URLByDeletingLastPathComponent];

  return v3URLByDeletingLastPathComponent;
}

+ (BOOL)setICloudBackupExclusionAttribute:(BOOL)attribute url:(id)url error:(id *)error
{
  attributeCopy = attribute;
  v7 = MEMORY[0x1E696AD98];
  urlCopy = url;
  v9 = [v7 numberWithBool:attributeCopy];
  LOBYTE(v7) = [urlCopy setResourceValue:v9 forKey:*MEMORY[0x1E695E300] error:error];

  if (v7 & 1) != 0 || (PLIsErrorFileNotFound(0))
  {
    return 1;
  }

  result = 0;
  if (error)
  {
    *error = 0;
  }

  return result;
}

+ (BOOL)setTimeMachineExclusionAttribute:(BOOL)attribute url:(id)url error:(id *)error
{
  attributeCopy = attribute;
  v7 = MEMORY[0x1E696AD98];
  urlCopy = url;
  v9 = [v7 numberWithBool:attributeCopy];
  v10 = *MEMORY[0x1E695DB80];
  v18 = 0;
  v11 = [urlCopy setResourceValue:v9 forKey:v10 error:&v18];

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
  if (error)
  {
    *error = v15;
  }

LABEL_5:

  return v16;
}

@end
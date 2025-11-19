@interface PLPhotoLibraryPathManagerDCIM
+ (id)allPhotosPathsOnThisDevice;
- (PLPhotoLibraryPathManagerDCIM)initWithLibraryURL:(id)a3 bundleScope:(unsigned __int16)a4;
- (id)_externalDirectoryWithBundleIdentifier:(id)a3 createIfNeeded:(BOOL)a4;
- (id)addToPath:(id)a3 leafType:(unsigned __int8)a4 additionalPathComponents:(id)a5;
- (id)assetAbbreviatedMetadataDirectoryForDirectory:(id)a3 type:(unsigned __int8)a4 bundleScope:(unsigned __int16)a5;
- (id)assetBaseFilenameForAdjustmentFilePath:(id)a3;
- (id)assetMainFilePathWithDirectory:(id)a3 filename:(id)a4 bundleScope:(unsigned __int16)a5;
- (id)basePrivateDirectoryPath;
- (id)captureSessionPathsWithClientAuthorization:(id)a3;
- (id)clientOwnedDirectoryPathsForClientAccess:(id)a3;
- (id)cloudRestoreBackgroundCompletePath;
- (id)cloudRestoreBackgroundPhaseInProgressTokenPath;
- (id)cloudRestoreCompleteTokenPath;
- (id)cloudRestoreContextPath;
- (id)cloudRestoreForegroundPhaseCompleteTokenPath;
- (id)convertPhotoLibraryPathType:(unsigned __int8)a3;
- (id)createPathsForNewLibraries;
- (id)externalDirectoryWithSubType:(unsigned __int8)a3 leafType:(unsigned __int8)a4 additionalPathComponents:(id)a5;
- (id)getImportFileManager;
- (id)iTunesPhotosLastSyncMetadataFilePath;
- (id)iTunesPhotosSyncCurrentLibraryUUIDPath;
- (id)iTunesPhotosSyncDirectory;
- (id)iTunesPhotosSyncMetadataFilePath;
- (id)iTunesSyncedAssetMetadataThumbnailsDirectory;
- (id)iTunesSyncedAssetSmallThumbnailsDirectory;
- (id)iTunesSyncedFaceAlbumThumbnailsDirectory;
- (id)iTunesSyncedFaceDataDirectory;
- (id)internalDirectoryWithSubType:(unsigned __int8)a3 additionalPathComponents:(id)a4;
- (id)modelRestorePostProcessingCompleteTokenPath;
- (id)pathToAssetAlbumOrderStructure;
- (id)pathsForClientAccess:(id)a3;
- (id)pathsForExternalWriters;
- (id)pathsForFinderSyncFilesystemSizeCalculation;
- (id)pathsForLibraryFilesystemSizeCalculation;
- (id)pathsForPermissionCheck;
- (id)pathsGroupedByAssetBasePathFromFilePaths:(id)a3 populateInvalidAdjustmentPaths:(id)a4;
- (id)persistedAlbumDataDirectoryCreateIfNeeded:(BOOL)a3 error:(id *)a4;
- (id)photoDirectoryWithType:(unsigned __int8)a3 leafType:(unsigned __int8)a4 additionalPathComponents:(id)a5;
- (id)photoMetadataDirectoryForMediaInMainDirectory:(id)a3;
- (id)privateCacheDirectoryWithSubType:(unsigned __int8)a3 leafType:(unsigned __int8)a4 additionalPathComponents:(id)a5;
- (id)privateDirectoryWithSubType:(unsigned __int8)a3 leafType:(unsigned __int8)a4 additionalPathComponents:(id)a5;
- (id)readOnlyUrlWithIdentifier:(id)a3;
- (id)simpleDCIMDirectory;
- (id)unlockedCaptureSessionPaths;
- (unsigned)photoLibraryPathTypeForBundleScope:(unsigned __int16)a3;
- (void)enumerateBundleScopesWithBlock:(id)a3;
- (void)obtainAccessAndWaitWithFileWithIdentifier:(id)a3 mode:(unsigned __int8)a4 toURLWithHandler:(id)a5;
- (void)setExtendedAttributesWithIdentifier:(id)a3;
- (void)setExtendedAttributesWithIdentifier:(id)a3 andURL:(id)a4;
@end

@implementation PLPhotoLibraryPathManagerDCIM

- (id)basePrivateDirectoryPath
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v6[0] = self->_photoDataDirectory;
  v6[1] = @"private";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  v4 = [v2 pathWithComponents:v3];

  return v4;
}

- (id)pathsGroupedByAssetBasePathFromFilePaths:(id)a3 populateInvalidAdjustmentPaths:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v25 = a4;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v32;
    *&v8 = 138543618;
    v24 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        v13 = [v12 rangeOfString:{@"Mutations", v24}];
        if (v13 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v12 stringByDeletingPathExtension];
        }

        else
        {
          [(PLPhotoLibraryPathManagerDCIM *)self assetBaseFilenameForAdjustmentFilePath:v12];
        }
        v14 = ;
        if (v14)
        {
          v15 = [v6 objectForKeyedSubscript:v14];
          if (!v15)
          {
            v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
            [v6 setObject:v15 forKeyedSubscript:v14];
          }

          [v15 addObject:v12];
        }

        else
        {
          v16 = PLBackendGetLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = v24;
            v17 = @"adjustment resource";
            if (v13 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v17 = @"original resource";
            }

            v36 = v17;
            v37 = 2112;
            v38 = v12;
            _os_log_impl(&dword_1AA9BD000, v16, OS_LOG_TYPE_ERROR, "Failed to resolve path base from %{public}@ path %@, skipping", buf, 0x16u);
          }

          if (v13 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [v25 addObject:v12];
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v9);
  }

  v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __105__PLPhotoLibraryPathManagerDCIM_pathsGroupedByAssetBasePathFromFilePaths_populateInvalidAdjustmentPaths___block_invoke;
  v28[3] = &unk_1E7930010;
  v19 = v6;
  v29 = v19;
  v30 = v18;
  v20 = v18;
  [v19 enumerateKeysAndObjectsUsingBlock:v28];
  [v19 removeObjectsForKeys:v20];
  v21 = v30;
  v22 = v19;

  return v19;
}

void __105__PLPhotoLibraryPathManagerDCIM_pathsGroupedByAssetBasePathFromFilePaths_populateInvalidAdjustmentPaths___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __105__PLPhotoLibraryPathManagerDCIM_pathsGroupedByAssetBasePathFromFilePaths_populateInvalidAdjustmentPaths___block_invoke_2;
  v10[3] = &unk_1E792FFE8;
  v11 = v5;
  v12 = *(a1 + 32);
  v13 = v6;
  v14 = *(a1 + 40);
  v7 = v6;
  v8 = v5;
  v9 = MEMORY[0x1AC5925C0](v10);
  (v9)[2](v9, @"S");
  (v9)[2](v9, @"D");
  (v9)[2](v9, @"X");
}

void __105__PLPhotoLibraryPathManagerDCIM_pathsGroupedByAssetBasePathFromFilePaths_populateInvalidAdjustmentPaths___block_invoke_2(id *a1, uint64_t a2)
{
  v4 = [a1[4] stringByAppendingString:a2];
  v3 = [a1[5] objectForKeyedSubscript:?];
  if (v3)
  {
    [a1[6] addObjectsFromArray:v3];
    [a1[7] addObject:v4];
  }
}

- (id)assetBaseFilenameForAdjustmentFilePath:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(PLPhotoLibraryPathManagerCore *)self photoDirectoryWithType:9];
  v7 = [v4 rangeOfString:v6];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL || (v9 = v7, v10 = v8, [v4 length] <= (v7 + v8 + 14)))
  {
    v15 = 0;
    goto LABEL_12;
  }

  v11 = [v4 substringFromIndex:v9 + v10 + 1];
  v12 = [v11 rangeOfString:@"Adjustments"];
  if (!v12)
  {
    v16 = PLBackendGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = 138412290;
      v19 = v4;
      _os_log_impl(&dword_1AA9BD000, v16, OS_LOG_TYPE_ERROR, "Found invalid adjustment path %@", &v18, 0xCu);
    }

    goto LABEL_10;
  }

  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_10:
    v15 = 0;
    goto LABEL_11;
  }

  v13 = [v11 substringToIndex:v12 - 1];
  v14 = [(PLPhotoLibraryPathManagerCore *)self photoDirectoryWithType:1];
  v15 = [v14 stringByAppendingPathComponent:v13];

LABEL_11:
LABEL_12:

  objc_autoreleasePoolPop(v5);

  return v15;
}

- (id)persistedAlbumDataDirectoryCreateIfNeeded:(BOOL)a3 error:(id *)a4
{
  v5 = a3;
  v7 = [(NSString *)self->_photoDataDirectory stringByAppendingPathComponent:@"AlbumsMetadata"];
  if (v5)
  {
    [(PLPhotoLibraryPathManagerCore *)self createDirectoryOnceWithPath:v7 mask:7 pathType:0 error:a4];
  }

  return v7;
}

- (id)iTunesPhotosSyncCurrentLibraryUUIDPath
{
  v2 = [(PLPhotoLibraryPathManagerDCIM *)self iTunesPhotosSyncDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"CurrentLibraryUUID.plist"];

  return v3;
}

- (id)iTunesPhotosSyncMetadataFilePath
{
  v2 = [(PLPhotoLibraryPathManagerDCIM *)self iTunesPhotosSyncDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"PhotoLibrary.plist"];

  return v3;
}

- (id)iTunesPhotosLastSyncMetadataFilePath
{
  v2 = [(PLPhotoLibraryPathManagerDCIM *)self iTunesPhotosSyncDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"PhotoLibrary.plist.lastsynced"];

  return v3;
}

- (id)iTunesSyncedAssetSmallThumbnailsDirectory
{
  v6[3] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v6[0] = self->_thumbnailsV2Directory;
  v6[1] = @"PhotoData";
  v6[2] = @"Sync";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:3];
  v4 = [v2 pathWithComponents:v3];

  return v4;
}

- (id)iTunesSyncedAssetMetadataThumbnailsDirectory
{
  v7[3] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(PLPhotoLibraryPathManagerDCIM *)self photoMetadataDirectory];
  v7[0] = v3;
  v7[1] = @"PhotoData";
  v7[2] = @"Sync";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];
  v5 = [v2 pathWithComponents:v4];

  return v5;
}

- (id)iTunesSyncedFaceAlbumThumbnailsDirectory
{
  v2 = [(PLPhotoLibraryPathManagerDCIM *)self iTunesSyncedAssetsDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"FaceAlbumThumbnails"];

  return v3;
}

- (id)iTunesSyncedFaceDataDirectory
{
  v2 = [(PLPhotoLibraryPathManagerDCIM *)self iTunesSyncedAssetsDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"FaceData"];

  return v3;
}

- (id)iTunesPhotosSyncDirectory
{
  v2 = [(PLPhotoLibraryPathManagerCore *)self iTunesPhotosDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"Sync"];

  return v3;
}

- (id)modelRestorePostProcessingCompleteTokenPath
{
  v2 = [(PLPhotoLibraryPathManagerDCIM *)self cloudRestoreInfoDirectoryPath];
  v3 = [v2 stringByAppendingPathComponent:@"ModelRestorePostProcessingComplete"];

  return v3;
}

- (id)cloudRestoreContextPath
{
  v2 = [(PLPhotoLibraryPathManagerDCIM *)self cloudRestoreInfoDirectoryPath];
  v3 = [v2 stringByAppendingPathComponent:@"CloudRestoreContext.plist"];

  return v3;
}

- (id)cloudRestoreCompleteTokenPath
{
  v2 = [(PLPhotoLibraryPathManagerDCIM *)self cloudRestoreInfoDirectoryPath];
  v3 = [v2 stringByAppendingPathComponent:@"CloudRestoreComplete"];

  return v3;
}

- (id)cloudRestoreBackgroundCompletePath
{
  v2 = [(PLPhotoLibraryPathManagerDCIM *)self cloudRestoreInfoDirectoryPath];
  v3 = [v2 stringByAppendingPathComponent:@"CloudRestoreBackgroundComplete"];

  return v3;
}

- (id)cloudRestoreBackgroundPhaseInProgressTokenPath
{
  v2 = [(PLPhotoLibraryPathManagerDCIM *)self cloudRestoreInfoDirectoryPath];
  v3 = [v2 stringByAppendingPathComponent:@"CloudRestoreBackgroundInProgress"];

  return v3;
}

- (id)cloudRestoreForegroundPhaseCompleteTokenPath
{
  v2 = [(PLPhotoLibraryPathManagerDCIM *)self cloudRestoreInfoDirectoryPath];
  v3 = [v2 stringByAppendingPathComponent:@"CloudRestoreForegroundComplete"];

  return v3;
}

- (id)assetMainFilePathWithDirectory:(id)a3 filename:(id)a4 bundleScope:(unsigned __int16)a5
{
  v5 = a5;
  v9 = a3;
  v10 = a4;
  if (!v9)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryPathManagerDCIM.m" lineNumber:751 description:{@"Invalid parameter not satisfying: %@", @"directory"}];
  }

  if ([(PLPhotoLibraryPathManagerCore *)self bundleScope])
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryPathManagerDCIM.m" lineNumber:752 description:@"can only access asset main file path on main bundle scoped path manager"];
  }

  if ([(PLPhotoLibraryPathManagerDCIM *)self shouldUseFileIdentifierForBundleScope:v5])
  {
    v11 = [(PLLazyObject *)self->_lazyPathManagerForUBFOnDCIM objectValue];
    v12 = [v11 assetMainFilePathWithDirectory:v9 filename:v10 bundleScope:v5];
  }

  else
  {
    if (([v9 hasPrefix:@"/"] & 1) == 0)
    {
      v13 = [(PLPhotoLibraryPathManagerCore *)self photoDirectoryWithType:1];
      v14 = [v13 stringByAppendingPathComponent:v9];

      v9 = v14;
    }

    v12 = [v9 stringByAppendingPathComponent:v10];
  }

  return v12;
}

- (id)pathToAssetAlbumOrderStructure
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__PLPhotoLibraryPathManagerDCIM_pathToAssetAlbumOrderStructure__block_invoke;
  block[3] = &unk_1E79329F0;
  block[4] = self;
  if (pathToAssetAlbumOrderStructure_onceToken != -1)
  {
    dispatch_once(&pathToAssetAlbumOrderStructure_onceToken, block);
  }

  return pathToAssetAlbumOrderStructure_path;
}

void __63__PLPhotoLibraryPathManagerDCIM_pathToAssetAlbumOrderStructure__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) iTunesSyncedAssetsDirectory];
  if ((*(*(a1 + 32) + 296) & 1) == 0)
  {
    v2 = [MEMORY[0x1E696AC08] defaultManager];
    [v2 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:0];

    *(*(a1 + 32) + 296) = 1;
  }

  v3 = [v6 stringByAppendingPathComponent:@"assetsAlbumOrder"];
  v4 = [v3 copy];
  v5 = pathToAssetAlbumOrderStructure_path;
  pathToAssetAlbumOrderStructure_path = v4;
}

- (id)assetAbbreviatedMetadataDirectoryForDirectory:(id)a3 type:(unsigned __int8)a4 bundleScope:(unsigned __int16)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  if ([(PLPhotoLibraryPathManagerDCIM *)self shouldUseFileIdentifierForBundleScope:v5])
  {
    v9 = [PLPhotoLibraryPathManager alloc];
    v10 = [(PLLazyObject *)self->_lazyPathManagerForUBFOnDCIM objectValue];
    v11 = [v10 libraryURL];
    v12 = [(PLPhotoLibraryPathManager *)v9 initWithLibraryURL:v11 bundleScope:v5 libraryFormat:2];

    [(PLPhotoLibraryPathManager *)v12 assetAbbreviatedMetadataDirectoryForDirectory:v8 type:v6 bundleScope:v5];
  }

  else
  {
    v12 = [(PLPhotoLibraryPathManagerCore *)self photoDirectoryWithType:v6];
    [(PLPhotoLibraryPathManagerCore *)self assetAbbreviatedMetadataDirectoryForDirectory:v8 rootPath:v12];
  }
  v13 = ;

  return v13;
}

- (id)photoMetadataDirectoryForMediaInMainDirectory:(id)a3
{
  v4 = a3;
  v5 = [(PLPhotoLibraryPathManagerDCIM *)self photoMetadataDirectory];
  v6 = [(PLPhotoLibraryPathManagerDCIM *)self assetAbbreviatedMetadataDirectoryForDirectory:v4 type:32 bundleScope:0];

  v7 = [v5 stringByAppendingPathComponent:v6];

  return v7;
}

- (void)obtainAccessAndWaitWithFileWithIdentifier:(id)a3 mode:(unsigned __int8)a4 toURLWithHandler:(id)a5
{
  v5 = a4;
  lazyPathManagerForUBFOnDCIM = self->_lazyPathManagerForUBFOnDCIM;
  v8 = a5;
  v9 = a3;
  v10 = [(PLLazyObject *)lazyPathManagerForUBFOnDCIM objectValue];
  [v10 obtainAccessAndWaitWithFileWithIdentifier:v9 mode:v5 toURLWithHandler:v8];
}

- (void)setExtendedAttributesWithIdentifier:(id)a3 andURL:(id)a4
{
  lazyPathManagerForUBFOnDCIM = self->_lazyPathManagerForUBFOnDCIM;
  v6 = a4;
  v7 = a3;
  v8 = [(PLLazyObject *)lazyPathManagerForUBFOnDCIM objectValue];
  [v8 setExtendedAttributesWithIdentifier:v7 andURL:v6];
}

- (void)setExtendedAttributesWithIdentifier:(id)a3
{
  lazyPathManagerForUBFOnDCIM = self->_lazyPathManagerForUBFOnDCIM;
  v4 = a3;
  v5 = [(PLLazyObject *)lazyPathManagerForUBFOnDCIM objectValue];
  [v5 setExtendedAttributesWithIdentifier:v4];
}

- (id)readOnlyUrlWithIdentifier:(id)a3
{
  lazyPathManagerForUBFOnDCIM = self->_lazyPathManagerForUBFOnDCIM;
  v4 = a3;
  v5 = [(PLLazyObject *)lazyPathManagerForUBFOnDCIM objectValue];
  v6 = [v5 readOnlyUrlWithIdentifier:v4];

  return v6;
}

- (void)enumerateBundleScopesWithBlock:(id)a3
{
  v13 = a3;
  if ([(PLPhotoLibraryPathManagerCore *)self bundleScope])
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryPathManagerDCIM.m" lineNumber:666 description:@"can only enumerate bundle scopes on main bundle scoped path manager"];
  }

  v5 = 0;
  do
  {
    v6 = objc_autoreleasePoolPush();
    v7 = v5;
    if ([(PLPhotoLibraryPathManagerDCIM *)self shouldUseFileIdentifierForBundleScope:v5])
    {
      v8 = [PLPhotoLibraryPathManager alloc];
      v9 = [(PLLazyObject *)self->_lazyPathManagerForUBFOnDCIM objectValue];
      v10 = [v9 libraryURL];
      v11 = [(PLPhotoLibraryPathManager *)v8 initWithLibraryURL:v10 bundleScope:v5 libraryFormat:2];

      (*(v13 + 2))(v13, v5, [(PLPhotoLibraryPathManagerDCIM *)self photoLibraryPathTypeForBundleScope:v5], v11);
    }

    objc_autoreleasePoolPop(v6);
    ++v5;
  }

  while (v7 < 5);
}

- (unsigned)photoLibraryPathTypeForBundleScope:(unsigned __int16)a3
{
  v3 = 0x1B001C000001uLL >> (8 * a3);
  if (a3 >= 7u)
  {
    LOBYTE(v3) = 0;
  }

  return v3 & 0x1F;
}

- (id)internalDirectoryWithSubType:(unsigned __int8)a3 additionalPathComponents:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = 0;
  if (v4 > 2)
  {
    if (v4 < 6)
    {
      goto LABEL_11;
    }

    if (v4 != 6)
    {
      if (v4 != 7)
      {
        if (v4 != 8)
        {
          goto LABEL_17;
        }

        goto LABEL_12;
      }

LABEL_11:
      internalDirectory = self->_internalDirectory;
      v11 = off_1E79322D8[v4];
      v12 = -[__CFString substringFromIndex:](v11, "substringFromIndex:", [@"PLPhotoLibraryInternalPathType" length]);
      v13 = [v12 lowercaseString];

      v7 = [(NSString *)internalDirectory stringByAppendingPathComponent:v13];

      goto LABEL_17;
    }

    v8 = self->_internalDirectory;
    v9 = @"csutaxonomy";
LABEL_16:
    v7 = [(NSString *)v8 stringByAppendingPathComponent:v9];
    goto LABEL_17;
  }

  if (v4)
  {
    if (v4 == 1)
    {
      goto LABEL_11;
    }

    if (v4 != 2)
    {
      goto LABEL_17;
    }

    v8 = self->_internalDirectory;
    v9 = @"lofr";
    goto LABEL_16;
  }

LABEL_12:
  v14 = PLBackendGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    *v17 = 0;
    _os_log_impl(&dword_1AA9BD000, v14, OS_LOG_TYPE_FAULT, "Invalid subtype for internal location", v17, 2u);
  }

  v7 = 0;
LABEL_17:
  v15 = [(PLPhotoLibraryPathManagerDCIM *)self addToPath:v7 leafType:1 additionalPathComponents:v6];

  return v15;
}

- (id)externalDirectoryWithSubType:(unsigned __int8)a3 leafType:(unsigned __int8)a4 additionalPathComponents:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  if ((v6 - 2) < 2)
  {
    externalDirectory = self->_externalDirectory;
    v10 = off_1E79322B8[v6];
    v11 = -[__CFString substringFromIndex:](v10, "substringFromIndex:", [@"PLPhotoLibraryExternalPathType" length]);
    v12 = [v11 lowercaseString];

    v13 = [(NSString *)externalDirectory stringByAppendingPathComponent:v12];
LABEL_5:

    goto LABEL_7;
  }

  if (v6 == 1)
  {
    v12 = [(PLPhotoLibraryPathManagerDCIM *)self getImportFileManager];
    v14 = [v12 urlForNewDCIMFolderWithFolderNumber:0];
    v13 = [v14 path];

    goto LABEL_5;
  }

  v13 = 0;
LABEL_7:
  v15 = [(PLPhotoLibraryPathManagerDCIM *)self addToPath:v13 leafType:v5 additionalPathComponents:v8];

  return v15;
}

- (id)privateCacheDirectoryWithSubType:(unsigned __int8)a3 leafType:(unsigned __int8)a4 additionalPathComponents:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  p_photoDataCachesDirectory = &self->_photoDataCachesDirectory;
  v10 = self->_photoDataCachesDirectory;
  v11 = @"changes";
  switch(v6)
  {
    case 1:
      goto LABEL_17;
    case 2:
      v11 = @"ClientServerTransactions";
      goto LABEL_17;
    case 3:
      v11 = @"PhotoCloudSharingDataReimportCache";
      goto LABEL_17;
    case 4:
      v11 = @"GraphService";
      goto LABEL_17;
    case 5:
      v11 = @"VisionService";
      goto LABEL_17;
    case 6:
      v11 = @"MiroCache";
      goto LABEL_17;
    case 7:
      v11 = @"VariationCache";
      goto LABEL_17;
    case 8:
      v11 = @"libraryavailable";
      goto LABEL_17;
    case 9:
      v11 = @"streamsupdatingexpired";
      goto LABEL_17;
    case 10:
      v11 = @"StackedImages";
      goto LABEL_17;
    case 11:
      v11 = @"AutoloopCache";
      goto LABEL_17;
    case 12:
      p_photoDataCachesDirectory = &self->_photoDataDirectory;
      v11 = @"Caches/Internal/MemoriesRelated";
      goto LABEL_17;
    case 13:
      p_photoDataCachesDirectory = &self->_photoDataDirectory;
      v11 = @"MISC";
      goto LABEL_17;
    case 14:
      v11 = @"PhotosPickerLogs";
      goto LABEL_17;
    case 15:
      v11 = @"ComputeCache";
      goto LABEL_17;
    case 16:
      v11 = @"StoryMusicCache";
LABEL_17:
      v12 = [(NSString *)*p_photoDataCachesDirectory stringByAppendingPathComponent:v11];

      v10 = v12;
      break;
    default:
      break;
  }

  v13 = [(PLPhotoLibraryPathManagerDCIM *)self addToPath:v10 leafType:v5 additionalPathComponents:v8];

  return v13;
}

- (id)privateDirectoryWithSubType:(unsigned __int8)a3 leafType:(unsigned __int8)a4 additionalPathComponents:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v9 = 0;
  if (v6 <= 5)
  {
    if (v6 <= 2)
    {
      if (v6)
      {
        if (v6 == 1)
        {
          photoDataDirectory = self->_photoDataDirectory;
          v11 = @"imagewriter";
        }

        else
        {
          if (v6 != 2)
          {
            goto LABEL_28;
          }

          photoDataDirectory = self->_photoDataDirectory;
          v11 = @"OutgoingTemp";
        }

        goto LABEL_26;
      }

      goto LABEL_17;
    }

    if (v6 == 3)
    {
      v12 = 264;
      goto LABEL_23;
    }

    photoDataDirectory = self->_photoDataDirectory;
    if (v6 == 4)
    {
      v11 = @"AlbumsMetadata";
    }

    else
    {
      v11 = @"FacesMetadata";
    }

LABEL_26:
    v13 = [(NSString *)photoDataDirectory stringByAppendingPathComponent:v11];
    goto LABEL_27;
  }

  if (v6 <= 8)
  {
    if (v6 == 6)
    {
      photoDataDirectory = self->_dcimDirectory;
      v11 = @"ASSETS";
    }

    else
    {
      if (v6 == 7)
      {
        v12 = 208;
        goto LABEL_23;
      }

      photoDataDirectory = self->_photoDataDirectory;
      v11 = @"CaptureDebug";
    }

    goto LABEL_26;
  }

  if (v6 == 9)
  {
    photoDataDirectory = self->_photoDataDirectory;
    v11 = @"CameraMetadata";
    goto LABEL_26;
  }

  if (v6 == 10)
  {
    photoDataDirectory = self->_privateDirectory;
    v11 = @"computecache";
    goto LABEL_26;
  }

  if (v6 != 11)
  {
    goto LABEL_28;
  }

LABEL_17:
  v12 = 232;
LABEL_23:
  v13 = *(&self->super.super.isa + v12);
LABEL_27:
  v9 = v13;
LABEL_28:
  v14 = [(PLPhotoLibraryPathManagerDCIM *)self addToPath:v9 leafType:v5 additionalPathComponents:v8];

  return v14;
}

- (id)pathsForFinderSyncFilesystemSizeCalculation
{
  v12[4] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v4 = [(PLPhotoLibraryPathManagerCore *)self iTunesPhotosDirectory];
  v12[0] = v4;
  v5 = [(PLPhotoLibraryPathManagerCore *)self iTunesPhotosDirectory];
  v6 = [(PLPhotoLibraryPathManagerDCIM *)self photoMetadataDirectoryForMediaInMainDirectory:v5];
  v12[1] = v6;
  v7 = [(PLPhotoLibraryPathManagerDCIM *)self iTunesSyncedAssetsDirectory];
  v12[2] = v7;
  v8 = [(PLPhotoLibraryPathManagerDCIM *)self iTunesSyncedAssetMetadataThumbnailsDirectory];
  v12[3] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:4];
  v10 = [v3 setWithArray:v9];

  return v10;
}

- (id)pathsForLibraryFilesystemSizeCalculation
{
  v7[3] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v3 = [(PLPhotoLibraryPathManagerCore *)self iTunesPhotosDirectory:self->_photoDataDirectory];
  v7[2] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];
  v5 = [v2 setWithArray:v4];

  return v5;
}

- (id)pathsForExternalWriters
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [(PLPhotoLibraryPathManagerDCIM *)self _externalDirectoryWithBundleIdentifier:0 createIfNeeded:0];
  v4 = [v2 setWithObject:v3];

  return v4;
}

- (id)createPathsForNewLibraries
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFD8]);

  return v2;
}

- (id)pathsForPermissionCheck
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFD8]);

  return v2;
}

- (id)pathsForClientAccess:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([v4 directDatabaseWriteAuthorized])
  {
    if (!self->_photoDataDirectory)
    {
      goto LABEL_8;
    }

    v6 = MEMORY[0x1E695E118];
    goto LABEL_7;
  }

  if ([v4 directDatabaseAccessAuthorized] && self->_photoDataDirectory)
  {
    v6 = MEMORY[0x1E695E110];
LABEL_7:
    [v5 setObject:v6 forKey:?];
  }

LABEL_8:
  v7 = [(PLPhotoLibraryPathManagerDCIM *)self captureSessionPathsWithClientAuthorization:v4];
  [v5 addEntriesFromDictionary:v7];

  v8 = [(PLPhotoLibraryPathManagerDCIM *)self clientOwnedDirectoryPathsForClientAccess:v4];
  [v5 addEntriesFromDictionary:v8];
  v9 = [(PLPhotoLibraryPathManagerCore *)self photoDirectoryWithType:18 createIfNeeded:1 error:0];
  if ([v4 analyticsCacheWriteEntitled])
  {
    if (v9)
    {
      v10 = MEMORY[0x1E695E118];
LABEL_14:
      [v5 setObject:v10 forKey:v9];
    }
  }

  else if ([v4 analyticsCacheReadEntitled] && v9)
  {
    v10 = MEMORY[0x1E695E110];
    goto LABEL_14;
  }

  if (([v4 smartSharingCacheWriteEntitled] & 1) != 0 || objc_msgSend(v4, "smartSharingCacheReadEntitled"))
  {
    v11 = [(PLPhotoLibraryPathManagerCore *)self photoDirectoryWithType:21 createIfNeeded:1 error:0];
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "smartSharingCacheWriteEntitled")}];
    v13 = v12;
    if (v11 && v12)
    {
      [v5 setObject:v12 forKey:v11];
    }
  }

  if ([v4 internalDataReadWriteAuthorized])
  {
    v14 = [(PLPhotoLibraryPathManagerCore *)self internalDirectoryWithSubType:1 additionalPathComponents:0 createIfNeeded:1 error:0];
    if (v14)
    {
      [v5 setObject:MEMORY[0x1E695E118] forKey:v14];
    }

    v15 = [(PLPhotoLibraryPathManagerCore *)self internalDirectoryWithSubType:3 additionalPathComponents:0 createIfNeeded:1 error:0];
    if (v15)
    {
      [v5 setObject:MEMORY[0x1E695E118] forKey:v15];
    }

    v16 = [(PLPhotoLibraryPathManagerCore *)self internalDirectoryWithSubType:4 additionalPathComponents:0 createIfNeeded:1 error:0];
    if (v16)
    {
      [v5 setObject:MEMORY[0x1E695E118] forKey:v16];
    }

    v17 = [(PLPhotoLibraryPathManagerCore *)self internalDirectoryWithSubType:5 additionalPathComponents:0 createIfNeeded:1 error:0];
    if (v17)
    {
      [v5 setObject:MEMORY[0x1E695E118] forKey:v17];
    }
  }

  if ([v4 photosMessagesEntitled])
  {
    v18 = [(PLPhotoLibraryPathManagerCore *)self internalDirectoryWithSubType:7 additionalPathComponents:0 createIfNeeded:1 error:0];
    if (v18)
    {
      [v5 setObject:MEMORY[0x1E695E118] forKey:v18];
    }
  }

  v19 = [(PLPhotoLibraryPathManagerCore *)self pathForCPLStatus];
  if (v19)
  {
    [v5 setObject:MEMORY[0x1E695E110] forKey:v19];
  }

  if (([v4 coreSceneUnderstandingTaxonomyReadAuthorized] & 1) != 0 || objc_msgSend(v4, "coreSceneUnderstandingTaxonomyWriteAuthorized"))
  {
    v20 = [(PLPhotoLibraryPathManagerCore *)self internalDirectoryWithSubType:6 additionalPathComponents:0 createIfNeeded:1 error:0];
    v21 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "coreSceneUnderstandingTaxonomyWriteAuthorized")}];
    v22 = v21;
    if (v20 && v21)
    {
      [v5 setObject:v21 forKey:v20];
    }
  }

  return v5;
}

- (id)unlockedCaptureSessionPaths
{
  v17[9] = *MEMORY[0x1E69E9840];
  v3 = [(PLPhotoLibraryPathManagerCore *)self photoDirectoryWithType:4 createIfNeeded:1 error:0];
  v17[0] = v3;
  v4 = [(PLPhotoLibraryPathManagerCore *)self photoDirectoryWithType:14 createIfNeeded:1 error:0];
  v17[1] = v4;
  v5 = [(PLPhotoLibraryPathManagerDCIM *)self photoMetadataDirectory];
  v17[2] = v5;
  v6 = [(PLPhotoLibraryPathManagerCore *)self photoDirectoryWithType:9 createIfNeeded:1 error:0];
  v17[3] = v6;
  v7 = [(PLPhotoLibraryPathManagerCore *)self photoDirectoryWithType:23 createIfNeeded:1 error:0];
  v17[4] = v7;
  v8 = [(PLPhotoLibraryPathManagerDCIM *)self iTunesPhotosSyncDirectory];
  v17[5] = v8;
  v9 = [(PLPhotoLibraryPathManagerCore *)self photoDirectoryWithType:11 createIfNeeded:1 error:0];
  v17[6] = v9;
  v10 = [(PLPhotoLibraryPathManagerCore *)self photoDirectoryWithType:15 createIfNeeded:1 error:0];
  v17[7] = v10;
  v11 = [(PLPhotoLibraryPathManagerDCIM *)self syncInfoPath];
  v17[8] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:9];

  v13 = PLBackendGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v15 = 138412290;
    v16 = v12;
    _os_log_impl(&dword_1AA9BD000, v13, OS_LOG_TYPE_DEBUG, "Unlocked capture session paths: paths: %@", &v15, 0xCu);
  }

  return v12;
}

- (id)captureSessionPathsWithClientAuthorization:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 captureSessionState];
  if (([v4 limitedLibraryMode] & 1) != 0 || objc_msgSend(v5, "type") != 3)
  {
    v14 = MEMORY[0x1E695E0F8];
  }

  else
  {
    v6 = [(PLPhotoLibraryPathManagerDCIM *)self unlockedCaptureSessionPaths];
    v7 = [MEMORY[0x1E695DF90] dictionary];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      v12 = MEMORY[0x1E695E110];
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [v7 setObject:v12 forKeyedSubscript:{*(*(&v16 + 1) + 8 * i), v16}];
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    v14 = [v7 copy];
  }

  return v14;
}

- (id)clientOwnedDirectoryPathsForClientAccess:(id)a3
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [v5 trustedCallerBundleID];

  v8 = [(PLPhotoLibraryPathManagerDCIM *)self _externalDirectoryWithBundleIdentifier:v7 createIfNeeded:1];
  if (v8)
  {
    [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v8];
  }

  v9 = [(PLPhotoLibraryPathManagerCore *)self privateDirectoryWithBundleIdentifier:v7 createIfNeeded:1];
  if (v9)
  {
    [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v9];
  }

  return v6;
}

- (id)photoDirectoryWithType:(unsigned __int8)a3 leafType:(unsigned __int8)a4 additionalPathComponents:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v9 = [(PLPhotoLibraryPathManagerDCIM *)self convertPhotoLibraryPathType:v6];
  v10 = [(PLPhotoLibraryPathManagerDCIM *)self addToPath:v9 leafType:v5 additionalPathComponents:v8];

  return v10;
}

- (id)_externalDirectoryWithBundleIdentifier:(id)a3 createIfNeeded:(BOOL)a4
{
  v4 = a4;
  v14[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = MEMORY[0x1E696AEC0];
  v14[0] = self->_photoDataDirectory;
  v14[1] = @"external";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v9 = [v7 pathWithComponents:v8];

  if (v6)
  {
    v10 = [v9 stringByAppendingPathComponent:v6];
  }

  else
  {
    v10 = v9;
  }

  v11 = v10;
  if (v4)
  {
    v12 = [MEMORY[0x1E696AC08] defaultManager];
    [v12 createDirectoryAtPath:v11 withIntermediateDirectories:1 attributes:0 error:0];
  }

  return v11;
}

- (id)addToPath:(id)a3 leafType:(unsigned __int8)a4 additionalPathComponents:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = a5;
  v9 = 0;
  if (v6 <= 1)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    if (v6 != 1)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  switch(v6)
  {
    case 2:
      v10 = [v7 stringByAppendingPathComponent:@"derivatives"];
      goto LABEL_11;
    case 3:
LABEL_8:
      v10 = v7;
LABEL_11:
      v9 = v10;
      break;
    case 4:
LABEL_9:
      v9 = v7;
      goto LABEL_14;
  }

LABEL_12:
  if ([v8 length])
  {
    v11 = [v9 stringByAppendingPathComponent:v8];

    v9 = v11;
  }

LABEL_14:

  return v9;
}

- (id)convertPhotoLibraryPathType:(unsigned __int8)a3
{
  v23[3] = *MEMORY[0x1E69E9840];
  switch(a3)
  {
    case 0u:
    case 0x24u:
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"Invalid path type conversion: %s", "-[PLPhotoLibraryPathManagerDCIM convertPhotoLibraryPathType:]"}];
      goto LABEL_39;
    case 1u:
    case 0x20u:
      v4 = [(PLPhotoLibraryPathManagerCore *)self baseDirectory];
      goto LABEL_4;
    case 2u:
    case 0x1Du:
    case 0x21u:
    case 0x22u:
    case 0x23u:
      v3 = 136;
      goto LABEL_3;
    case 3u:
      v3 = 168;
      goto LABEL_3;
    case 4u:
      v3 = 192;
      goto LABEL_3;
    case 5u:
      v3 = 232;
      goto LABEL_3;
    case 6u:
      v3 = 144;
      goto LABEL_3;
    case 7u:
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"Invalid legacy path type: %s", "-[PLPhotoLibraryPathManagerDCIM convertPhotoLibraryPathType:]"}];
      goto LABEL_39;
    case 8u:
      v3 = 216;
      goto LABEL_3;
    case 9u:
      v4 = [(PLPhotoLibraryPathManagerDCIM *)self photoMutationsDirectory];
      goto LABEL_4;
    case 0xAu:
      v4 = [(PLPhotoLibraryPathManagerDCIM *)self photoMetadataDirectory];
      goto LABEL_4;
    case 0xBu:
      v3 = 272;
      goto LABEL_3;
    case 0xCu:
      v3 = 280;
      goto LABEL_3;
    case 0xDu:
      v9 = [(PLLazyObject *)self->_lazyPathManagerForUBFOnDCIM objectValue];
      v10 = v9;
      v11 = 13;
      goto LABEL_19;
    case 0xEu:
      photoDataDirectory = self->_photoDataDirectory;
      v19 = @"CPL";
      goto LABEL_44;
    case 0xFu:
      v10 = [(PLPhotoLibraryPathManagerCore *)self baseDirectory];
      v12 = [v10 stringByAppendingPathComponent:@"PhotoStreamsData"];
      goto LABEL_35;
    case 0x10u:
      v3 = 224;
      goto LABEL_3;
    case 0x11u:
      v6 = MEMORY[0x1E695DF30];
      v7 = *MEMORY[0x1E695D920];
      v8 = @"Invalid projects legacy path type (macOS only)";
      goto LABEL_38;
    case 0x12u:
      v3 = 152;
      goto LABEL_3;
    case 0x13u:
      v3 = 184;
      goto LABEL_3;
    case 0x14u:
      v3 = 248;
      goto LABEL_3;
    case 0x15u:
      v3 = 160;
      goto LABEL_3;
    case 0x16u:
      v6 = MEMORY[0x1E695DF30];
      v7 = *MEMORY[0x1E695D920];
      v8 = @"Invalid cloud shared legacy path type (macOS only)";
      goto LABEL_38;
    case 0x17u:
      photoDataDirectory = self->_photoDataDirectory;
      v19 = @"PhotoCloudSharingData";
LABEL_44:
      v4 = [(NSString *)photoDataDirectory stringByAppendingPathComponent:v19];
      goto LABEL_4;
    case 0x18u:
      v13 = MEMORY[0x1E696AEC0];
      v10 = [(PLPhotoLibraryPathManagerDCIM *)self photoMetadataDirectory];
      v23[0] = v10;
      v23[1] = @"PhotoData";
      v23[2] = @"PhotoCloudSharingData";
      v14 = MEMORY[0x1E695DEC8];
      v15 = v23;
      v16 = 3;
      goto LABEL_31;
    case 0x19u:
      v13 = MEMORY[0x1E696AEC0];
      v10 = [(PLPhotoLibraryPathManagerCore *)self photoDirectoryWithType:23];
      v22[0] = v10;
      v22[1] = @"Caches";
      v14 = MEMORY[0x1E695DEC8];
      v15 = v22;
      v16 = 2;
LABEL_31:
      v17 = [v14 arrayWithObjects:v15 count:v16];
      v5 = [v13 pathWithComponents:v17];

      goto LABEL_36;
    case 0x1Au:
      v6 = MEMORY[0x1E695DF30];
      v7 = *MEMORY[0x1E695D920];
      v8 = @"Invalid moment shared legacy path type (macOS only)";
LABEL_38:
      [v6 raise:v7 format:{v8, v21}];
      goto LABEL_39;
    case 0x1Bu:
      v9 = [(PLLazyObject *)self->_lazyPathManagerForUBFOnDCIM objectValue];
      v10 = v9;
      v11 = 27;
      goto LABEL_19;
    case 0x1Cu:
      v9 = [(PLLazyObject *)self->_lazyPathManagerForUBFOnDCIM objectValue];
      v10 = v9;
      v11 = 28;
LABEL_19:
      v12 = [v9 photoDirectoryWithType:v11];
LABEL_35:
      v5 = v12;
LABEL_36:

      break;
    case 0x1Eu:
      v3 = 200;
      goto LABEL_3;
    case 0x1Fu:
      v3 = 288;
LABEL_3:
      v4 = *(&self->super.super.isa + v3);
LABEL_4:
      v5 = v4;
      break;
    default:
LABEL_39:
      v5 = 0;
      break;
  }

  return v5;
}

- (id)getImportFileManager
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_importFileManager)
  {
    v3 = objc_alloc_init(PLImportFileManager);
    importFileManager = v2->_importFileManager;
    v2->_importFileManager = v3;
  }

  objc_sync_exit(v2);

  v5 = v2->_importFileManager;

  return v5;
}

- (id)simpleDCIMDirectory
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_simpleDCIMDirectory)
  {
    v3 = MEMORY[0x1E695DFF8];
    v4 = [(PLPhotoLibraryPathManagerCore *)v2 photoDirectoryWithType:4];
    v5 = [v3 fileURLWithPath:v4 isDirectory:1];

    v6 = [(PLPhotoLibraryPathManagerCore *)v2 privateCacheDirectoryWithSubType:13 createIfNeeded:1 error:0];
    v7 = +[PLSimpleDCIMDirectory cameraRollPlistName];
    v8 = [v6 stringByAppendingPathComponent:v7];

    if (v5 && v8)
    {
      v9 = [[PLSimpleDCIMDirectory alloc] initWithDirectoryURL:v5 subDirectorySuffix:0 perDirectoryLimit:999 userInfoPath:v8];
      simpleDCIMDirectory = v2->_simpleDCIMDirectory;
      v2->_simpleDCIMDirectory = v9;

      [(PLSimpleDCIMDirectory *)v2->_simpleDCIMDirectory setRepresentsCameraRoll:1];
    }

    else
    {
      v11 = PLBackendGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v14 = 138412546;
        v15 = v5;
        v16 = 2112;
        v17 = v8;
        _os_log_impl(&dword_1AA9BD000, v11, OS_LOG_TYPE_ERROR, "Failed to get either DCIM directory (%@) or user info path (%@)", &v14, 0x16u);
      }
    }
  }

  objc_sync_exit(v2);

  v12 = v2->_simpleDCIMDirectory;

  return v12;
}

- (PLPhotoLibraryPathManagerDCIM)initWithLibraryURL:(id)a3 bundleScope:(unsigned __int16)a4
{
  v4 = a4;
  v6 = a3;
  v70.receiver = self;
  v70.super_class = PLPhotoLibraryPathManagerDCIM;
  v7 = [(PLPhotoLibraryPathManagerCore *)&v70 initWithLibraryURL:v6 bundleScope:v4];
  v8 = v7;
  if (v7)
  {
    v9 = [(PLPhotoLibraryPathManagerCore *)v7 baseDirectory];
    v10 = [v9 stringByAppendingPathComponent:@"PhotoData"];
    photoDataDirectory = v8->_photoDataDirectory;
    v8->_photoDataDirectory = v10;

    v12 = [(NSString *)v8->_photoDataDirectory stringByAppendingPathComponent:@"Caches"];
    photoDataCachesDirectory = v8->_photoDataCachesDirectory;
    v8->_photoDataCachesDirectory = v12;

    v14 = [(NSString *)v8->_photoDataCachesDirectory stringByAppendingPathComponent:@"Analytics"];
    photoDataAnalyticsDirectory = v8->_photoDataAnalyticsDirectory;
    v8->_photoDataAnalyticsDirectory = v14;

    v16 = [(NSString *)v8->_photoDataCachesDirectory stringByAppendingPathComponent:@"SmartSharing"];
    photoDataSmartSharingDirectory = v8->_photoDataSmartSharingDirectory;
    v8->_photoDataSmartSharingDirectory = v16;

    v18 = [(NSString *)v8->_photoDataCachesDirectory stringByAppendingPathComponent:@"search"];
    photoDataSearchDirectory = v8->_photoDataSearchDirectory;
    v8->_photoDataSearchDirectory = v18;

    v20 = [(NSString *)v8->_photoDataCachesDirectory stringByAppendingPathComponent:@"Restore"];
    restoreInfoDirectory = v8->_restoreInfoDirectory;
    v8->_restoreInfoDirectory = v20;

    v22 = [(NSString *)v8->_photoDataCachesDirectory stringByAppendingPathComponent:@"Compute"];
    photoDataComputeDirectory = v8->_photoDataComputeDirectory;
    v8->_photoDataComputeDirectory = v22;

    v24 = [(PLPhotoLibraryPathManagerCore *)v8 baseDirectory];
    v25 = [v24 stringByAppendingPathComponent:@"DCIM"];
    dcimDirectory = v8->_dcimDirectory;
    v8->_dcimDirectory = v25;

    v27 = [(NSString *)v8->_photoDataDirectory stringByAppendingPathComponent:@"CPLAssets"];
    cplAssetsDirectory = v8->_cplAssetsDirectory;
    v8->_cplAssetsDirectory = v27;

    v29 = [(NSString *)v8->_photoDataDirectory stringByAppendingPathComponent:@"CMMAssets"];
    cmmAssetsDirectory = v8->_cmmAssetsDirectory;
    v8->_cmmAssetsDirectory = v29;

    v31 = [(NSString *)v8->_photoDataDirectory stringByAppendingPathComponent:@"Journals"];
    journalsDirectory = v8->_journalsDirectory;
    v8->_journalsDirectory = v31;

    v33 = [(NSString *)v8->_photoDataDirectory stringByAppendingPathComponent:@"Projects"];
    projectsDirectory = v8->_projectsDirectory;
    v8->_projectsDirectory = v33;

    v35 = PLBundleIdentifier();
    v36 = [(PLPhotoLibraryPathManagerCore *)v8 privateDirectoryWithBundleIdentifier:v35 createIfNeeded:0];
    privateDirectory = v8->_privateDirectory;
    v8->_privateDirectory = v36;

    v38 = [(NSString *)v8->_photoDataDirectory stringByAppendingPathComponent:@"resources/partialvideo"];
    partialVideoDirectory = v8->_partialVideoDirectory;
    v8->_partialVideoDirectory = v38;

    v40 = [(NSString *)v8->_photoDataDirectory stringByAppendingPathComponent:@"internal"];
    internalDirectory = v8->_internalDirectory;
    v8->_internalDirectory = v40;

    v42 = PLBundleIdentifier();
    v43 = [(PLPhotoLibraryPathManagerDCIM *)v8 _externalDirectoryWithBundleIdentifier:v42 createIfNeeded:0];
    externalDirectory = v8->_externalDirectory;
    v8->_externalDirectory = v43;

    v45 = [(NSString *)v8->_photoDataDirectory stringByAppendingPathComponent:@"changes"];
    changeStoreDatabasePath = v8->_changeStoreDatabasePath;
    v8->_changeStoreDatabasePath = v45;

    v47 = [(NSString *)v8->_photoDataDirectory stringByAppendingPathComponent:@"Thumbnails"];
    thumbnailsDirectory = v8->_thumbnailsDirectory;
    v8->_thumbnailsDirectory = v47;

    v49 = [(NSString *)v8->_thumbnailsDirectory stringByAppendingPathComponent:@"V2"];
    thumbnailsV2Directory = v8->_thumbnailsV2Directory;
    v8->_thumbnailsV2Directory = v49;

    v51 = [(NSString *)v8->_thumbnailsDirectory stringByAppendingPathComponent:@"VideoKeyFrames"];
    thumbnailsVideoKeyFramesDirectory = v8->_thumbnailsVideoKeyFramesDirectory;
    v8->_thumbnailsVideoKeyFramesDirectory = v51;

    v53 = [(PLPhotoLibraryPathManagerCore *)v8 baseDirectory];
    v54 = [v53 stringByAppendingPathComponent:@"Photos"];
    [(PLPhotoLibraryPathManagerCore *)v8 setITunesPhotosDirectory:v54];

    v55 = [(NSString *)v8->_photoDataDirectory stringByAppendingPathComponent:@"ModelInterest.sqlite"];
    [(PLPhotoLibraryPathManagerCore *)v8 setLegacyModelInterestDatabasePath:v55];

    v56 = [(NSString *)v8->_photoDataDirectory stringByAppendingPathComponent:@"MemoriesRelated"];
    [(PLPhotoLibraryPathManagerCore *)v8 setLegacyMemoriesRelatedSnapshotDirectory:v56];

    v57 = objc_alloc(MEMORY[0x1E695DFF8]);
    v58 = [(NSString *)v8->_photoDataDirectory stringByAppendingPathComponent:@"UBF"];
    v59 = [v57 initFileURLWithPath:v58 isDirectory:1];

    v60 = objc_initWeak(&location, v8);
    v61 = [PLLazyObject alloc];
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __64__PLPhotoLibraryPathManagerDCIM_initWithLibraryURL_bundleScope___block_invoke;
    v66[3] = &unk_1E792FFC0;
    objc_copyWeak(&v68, &location);
    v62 = v59;
    v67 = v62;
    v63 = [(PLLazyObject *)v61 initWithBlock:v66];

    objc_destroyWeak(&v68);
    objc_destroyWeak(&location);
    lazyPathManagerForUBFOnDCIM = v8->_lazyPathManagerForUBFOnDCIM;
    v8->_lazyPathManagerForUBFOnDCIM = v63;

    [(PLPhotoLibraryPathManagerCore *)v8 postInit];
  }

  return v8;
}

PLPhotoLibraryPathManagerUBF *__64__PLPhotoLibraryPathManagerDCIM_initWithLibraryURL_bundleScope___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [[PLPhotoLibraryPathManagerUBF alloc] initWithLibraryURL:*(a1 + 32) bundleScope:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)allPhotosPathsOnThisDevice
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__PLPhotoLibraryPathManagerDCIM_allPhotosPathsOnThisDevice__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (allPhotosPathsOnThisDevice_onceToken_2407 != -1)
  {
    dispatch_once(&allPhotosPathsOnThisDevice_onceToken_2407, block);
  }

  v2 = allPhotosPathsOnThisDevice_bundlePaths_2408;

  return v2;
}

void __59__PLPhotoLibraryPathManagerDCIM_allPhotosPathsOnThisDevice__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = 0;
  while (1)
  {
    if (v3 == 1)
    {
      v4 = [PLPhotoLibraryPathManagerDCIM alloc];
      v5 = [*(a1 + 32) systemLibraryURL];
      v6 = [(PLPhotoLibraryPathManagerDCIM *)v4 initWithLibraryURL:v5 bundleScope:0];

      v7 = [(PLPhotoLibraryPathManagerCore *)v6 photoDirectoryWithType:2];
      [v2 addObject:v7];

      v8 = [(PLPhotoLibraryPathManagerCore *)v6 photoDirectoryWithType:4];
      [v2 addObject:v8];

      v9 = [(PLPhotoLibraryPathManagerCore *)v6 photoDirectoryWithType:15];
      [v2 addObject:v9];

      v10 = [(PLPhotoLibraryPathManagerCore *)v6 iTunesPhotosDirectory];
      [v2 addObject:v10];

      goto LABEL_6;
    }

    if (v3 == 3)
    {
      break;
    }

LABEL_6:
    if (++v3 == 4)
    {
      goto LABEL_11;
    }
  }

  v11 = [PLPhotoLibraryPathManagerCore wellKnownPhotoLibraryURLForIdentifier:3];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 path];
    [v2 addObject:v13];
  }

LABEL_11:
  v14 = allPhotosPathsOnThisDevice_bundlePaths_2408;
  allPhotosPathsOnThisDevice_bundlePaths_2408 = v2;
}

@end
@interface PLCameraPreviewWellManager
+ (BOOL)_asset:(id)_asset sortsGreaterThanAssetInfo:(id)info;
- (BOOL)shouldReconsiderCameraPreviewWellImageForUpdatedAsset:(id)asset thumbnailWasGenerated:(BOOL)generated;
- (PLCameraPreviewWellManager)init;
- (void)_clearPreviewWellAndNotify;
- (void)_fetchPreviewWellAssetUsingContext:(id)context withAssetHandler:(id)handler;
- (void)_updateLinkAndNotifyForAssetInfo:(id)info avoidNotificationIfLinkIsAlreadySet:(BOOL)set;
- (void)refreshPreviewWellImageWithContext:(id)context avoidNotificationIfLinkIsAlreadySet:(BOOL)set;
@end

@implementation PLCameraPreviewWellManager

- (void)refreshPreviewWellImageWithContext:(id)context avoidNotificationIfLinkIsAlreadySet:(BOOL)set
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __101__PLCameraPreviewWellManager_refreshPreviewWellImageWithContext_avoidNotificationIfLinkIsAlreadySet___block_invoke;
  v4[3] = &unk_1E7566640;
  v4[4] = self;
  setCopy = set;
  [(PLCameraPreviewWellManager *)self _fetchPreviewWellAssetUsingContext:context withAssetHandler:v4];
}

void __101__PLCameraPreviewWellManager_refreshPreviewWellImageWithContext_avoidNotificationIfLinkIsAlreadySet___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = [v5 uuid];
    if (v7 && (v8 = v7, [v6 thumbnailIdentifier], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
    {
      v10 = PLThumbnailsGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEBUG, "Camera preview well updating...", buf, 2u);
      }

      [*(a1 + 32) _updateLinkAndNotifyForAssetInfo:v6 avoidNotificationIfLinkIsAlreadySet:*(a1 + 40)];
    }

    else
    {
      v11 = PLThumbnailsGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *v12 = 0;
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEBUG, "Camera preview well clearing...", v12, 2u);
      }

      [*(a1 + 32) _clearPreviewWellAndNotify];
    }
  }
}

- (BOOL)shouldReconsiderCameraPreviewWellImageForUpdatedAsset:(id)asset thumbnailWasGenerated:(BOOL)generated
{
  LODWORD(v4) = generated;
  assetCopy = asset;
  photoLibrary = [assetCopy photoLibrary];
  pathManager = [photoLibrary pathManager];
  if (pathManager)
  {
  }

  else
  {
    v8 = MEMORY[0x19EAEE520]();

    if ((v8 & 1) == 0)
    {
      v4 = PLThumbnailsGetLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "Camera preview well skipping asset with missing path manager", buf, 2u);
      }

      LOBYTE(v4) = 0;
      goto LABEL_19;
    }
  }

  if (![assetCopy isInserted] || v4)
  {
    *buf = 0;
    v22 = buf;
    v23 = 0x2020000000;
    v24 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v9 = assetCopy;
    PLRunWithUnfairLock();
    if (v22[24] == 1)
    {
      if (*(v14 + 24) != 1 || (v4 & 1) != 0)
      {
LABEL_14:
        LOBYTE(v4) = 1;
        goto LABEL_15;
      }
    }

    else
    {
      if (*(v18 + 24) != 1)
      {
        goto LABEL_14;
      }

      if (*(v14 + 24) == 1)
      {
        v10 = _PLAllowedForCameraPreviewWellPredicate();
        v11 = [v10 evaluateWithObject:v9] & (v4 ^ 1);

        if ((v11 & 1) == 0)
        {
          goto LABEL_14;
        }
      }
    }

    LOBYTE(v4) = 0;
LABEL_15:

    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(buf, 8);
  }

LABEL_19:

  return v4;
}

void __106__PLCameraPreviewWellManager_shouldReconsiderCameraPreviewWellImageForUpdatedAsset_thumbnailWasGenerated___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 32) + 16) != 0;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    *(*(*(a1 + 56) + 8) + 24) = [objc_opt_class() _asset:*(a1 + 40) sortsGreaterThanAssetInfo:*(*(a1 + 32) + 16)];
    v4 = [*(a1 + 40) uuid];
    v3 = [*(*(a1 + 32) + 16) uuid];
    *(*(*(a1 + 64) + 8) + 24) = [v4 isEqual:v3];
  }
}

- (PLCameraPreviewWellManager)init
{
  v3.receiver = self;
  v3.super_class = PLCameraPreviewWellManager;
  result = [(PLCameraPreviewWellManager *)&v3 init];
  if (result)
  {
    result->_linkUpdateLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)_updateLinkAndNotifyForAssetInfo:(id)info avoidNotificationIfLinkIsAlreadySet:(BOOL)set
{
  infoCopy = info;
  if ((PLIsAssetsd() & 1) != 0 || MEMORY[0x19EAEE520]())
  {
    v5 = infoCopy;
    PLRunWithUnfairLock();
  }
}

void __99__PLCameraPreviewWellManager__updateLinkAndNotifyForAssetInfo_avoidNotificationIfLinkIsAlreadySet___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = +[PLPrimaryResourceDataStore currentDeviceMasterThumbRecipeID];
  v3 = [MEMORY[0x1E69BF170] cameraPreviewWellImageFileURL];
  v4 = [v3 fileSystemRepresentation];

  v5 = [MEMORY[0x1E69BF168] photoDataMiscDirectory];
  v6 = [v5 stringByAppendingPathComponent:@"PreviewWellImage_temp.jpg"];
  v7 = [v6 fileSystemRepresentation];

  v8 = MEMORY[0x1E69BF308];
  v9 = [*(a1 + 32) thumbnailIdentifier];
  v10 = [*(a1 + 32) pathManager];
  v11 = [v8 thumbnailPathForThumbIdentifier:v9 withPathManager:v10 recipeID:v2 forDelete:0];
  v12 = [v11 fileSystemRepresentation];

  if (readlink(v4, __s1, 0x400uLL) >= 1 && (v13 = strlen(v12), !strncmp(__s1, v12, v13)))
  {
    v23 = PLThumbnailsGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = [*(a1 + 32) uuid];
      v32 = 138412290;
      v33 = v24;
      _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_DEBUG, "Camera preview well link already points to specified asset (%@)", &v32, 0xCu);
    }

    objc_storeStrong((*(a1 + 40) + 16), *(a1 + 32));
    if ((*(a1 + 48) & 1) == 0)
    {
      goto LABEL_19;
    }

    v25 = PLThumbnailsGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v26 = [*(a1 + 32) uuid];
      __s1[0].st_dev = 138412290;
      *&__s1[0].st_mode = v26;
      _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEBUG, "Camera preview well skipping notification because already points to correct asset. (%@)", __s1, 0xCu);
    }
  }

  else
  {
    memset(__s1, 0, 144);
    if (!lstat(v7, __s1))
    {
      unlink(v7);
    }

    if (symlink(v12, v7) == -1)
    {
      v20 = PLThumbnailsGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = __error();
        v22 = strerror(*v21);
        v32 = 136315138;
        v33 = v22;
        _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "Failed to create camera preview well temp symlink with error: %s", &v32, 0xCu);
      }
    }

    else
    {
      v14 = [*(a1 + 32) uuid];

      if (v14)
      {
        v16 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v7 isDirectory:0 relativeToURL:0];
        v17 = MEMORY[0x1E69BF230];
        v18 = [*(a1 + 32) uuid];
        [v17 persistString:v18 forKey:@"com.apple.assetsd.thumbnailCameraPreviewImageAssetID" fileURL:v16];
      }

      rename(v7, v4, v15);
      if (v19 != -1)
      {
        objc_storeStrong((*(a1 + 40) + 16), *(a1 + 32));
LABEL_19:
        v27 = PLThumbnailsGetLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          v28 = [*(a1 + 32) uuid];
          __s1[0].st_dev = 138412290;
          *&__s1[0].st_mode = v28;
          _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_DEBUG, "Posting camera preview well image change notification for asset uuid (%@)", __s1, 0xCu);
        }

        notify_post("cameraPreviewImageWellChanged");
        return;
      }

      v29 = PLThumbnailsGetLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = __error();
        v31 = strerror(*v30);
        v32 = 136315138;
        v33 = v31;
        _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_ERROR, "Camera preview well failed to rename temp link to final link with error: %s", &v32, 0xCu);
      }

      unlink(v7);
    }
  }
}

- (void)_clearPreviewWellAndNotify
{
  v15 = *MEMORY[0x1E69E9840];
  cameraPreviewWellImageFileURL = [MEMORY[0x1E69BF170] cameraPreviewWellImageFileURL];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v12 = 0;
  v4 = [defaultManager removeItemAtURL:cameraPreviewWellImageFileURL error:&v12];
  v5 = v12;

  if ((v4 & 1) == 0)
  {
    userInfo = [v5 userInfo];
    v7 = [userInfo objectForKey:*MEMORY[0x1E696AA08]];

    domain = [v7 domain];
    if ([domain isEqualToString:*MEMORY[0x1E696A798]])
    {
      code = [v7 code];

      if (code == 2)
      {
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
    }

    v10 = PLThumbnailsGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v5;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "failed to remove camera preview image: %@", buf, 0xCu);
    }

    goto LABEL_9;
  }

LABEL_10:
  v11 = PLThumbnailsGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEBUG, "Posting camera preview image change notification for clearing preview", buf, 2u);
  }

  notify_post("cameraPreviewImageWellChanged");
}

- (void)_fetchPreviewWellAssetUsingContext:(id)context withAssetHandler:(id)handler
{
  v45 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  handlerCopy = handler;
  v42 = _PLCameraPreviewWellAssetFetchRequest();
  v7 = [contextCopy executeFetchRequest:? error:?];
  v8 = 0;
  if (v7)
  {
    firstObject = [v7 firstObject];
    v10 = firstObject;
    if (firstObject)
    {
      [firstObject objectForKeyedSubscript:@"uuid"];
      v11 = v39 = v8;
      v12 = [v10 objectForKeyedSubscript:@"directory"];
      v13 = [v10 objectForKeyedSubscript:@"filename"];
      v14 = [v10 objectForKeyedSubscript:@"bundleScope"];
      v40 = v7;
      shortValue = [v14 shortValue];
      [contextCopy pathManager];
      v16 = v41 = contextCopy;
      v17 = [PLThumbnailManager thumbnailIdentifierWithAssetUUID:v11 directory:v12 filename:v13 bundleScope:shortValue pathManager:v16];

      v18 = [PLCameraPreviewWellAssetInfo alloc];
      v36 = [v10 objectForKeyedSubscript:@"uuid"];
      v38 = [v10 objectForKeyedSubscript:@"sortToken"];
      [v38 doubleValue];
      v20 = v19;
      v34 = [v10 objectForKeyedSubscript:@"addedDate"];
      v37 = [v10 objectForKeyedSubscript:@"hidden"];
      bOOLValue = [v37 BOOLValue];
      v35 = [v10 objectForKeyedSubscript:@"visibilityState"];
      longValue = [v35 longValue];
      v32 = [v10 objectForKeyedSubscript:@"trashedState"];
      longValue2 = [v32 longValue];
      v22 = [v10 objectForKeyedSubscript:@"avalanchePickType"];
      longValue3 = [v22 longValue];
      v24 = [v10 objectForKeyedSubscript:@"savedAssetType"];
      longValue4 = [v24 longValue];
      pathManager = [v41 pathManager];
      v27 = longValue2;
      LOWORD(v30) = longValue4;
      v7 = v40;
      v28 = [(PLCameraPreviewWellAssetInfo *)v18 initWithUUID:v36 sortToken:v34 addedDate:bOOLValue hidden:longValue visibilityState:v27 trashedState:longValue3 avalanchePickType:v20 savedAssetType:v30 thumbnailIdentifier:v17 pathManager:pathManager];

      contextCopy = v41;
      v8 = v39;
    }

    else
    {
      v28 = 0;
    }

    handlerCopy[2](handlerCopy, 1, v28);
    handlerCopy = v28;
  }

  else
  {
    v29 = PLThumbnailsGetLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v44 = v8;
      _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_ERROR, "Error fetching assets for camera preview well metadata: %@", buf, 0xCu);
    }

    handlerCopy[2](handlerCopy, 0, 0);
  }
}

+ (BOOL)_asset:(id)_asset sortsGreaterThanAssetInfo:(id)info
{
  v18[2] = *MEMORY[0x1E69E9840];
  _assetCopy = _asset;
  infoCopy = info;
  v9 = infoCopy;
  if (!_assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLCameraPreviewWellManager.m" lineNumber:368 description:{@"Invalid parameter not satisfying: %@", @"assetToTest"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_8:
    v15 = 1;
    goto LABEL_9;
  }

  if (!infoCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  v10 = _PLAllowedForCameraPreviewWellPredicate();
  if ([v10 evaluateWithObject:v9])
  {
    v18[0] = v9;
    v18[1] = _assetCopy;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    v12 = _PLAllowedForCameraPreviewSortDescriptors();
    v13 = [v11 sortedArrayUsingDescriptors:v12];

    firstObject = [v13 firstObject];
    v15 = [firstObject isEqual:_assetCopy];
  }

  else
  {
    v15 = 0;
  }

LABEL_9:
  return v15;
}

@end
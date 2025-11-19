@interface PUWallpaperConfigurationUpdater
- (PUWallpaperConfigurationUpdater)initWithPhotoLibrary:(id)a3 sourceConfiguration:(id)a4 targetAssetDirectory:(id)a5 overrideConfiguration:(id)a6;
- (void)_handleSegmentationItem:(id)a3 error:(id)a4 completionBlock:(id)a5;
- (void)attemptUpdateWithCompletionBlock:(id)a3;
@end

@implementation PUWallpaperConfigurationUpdater

- (void)_handleSegmentationItem:(id)a3 error:(id)a4 completionBlock:(id)a5
{
  v71 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PUWallpaperConfigurationUpdater *)self sourceConfiguration];
  v12 = v11;
  if (v8)
  {
    v61 = v10;
    v13 = [v11 copy];
    v14 = [(PUWallpaperConfigurationUpdater *)self overrideConfiguration];
    v15 = [v12 editConfiguration];
    v16 = [v15 style];

    v17 = [MEMORY[0x1E69BDEC0] defaultOriginalStyle];
    v18 = [v16 kind];
    v19 = [v8 availableStyleOfKind:v18];

    if (v19)
    {
      v20 = [MEMORY[0x1E69BDEE0] styleWithBakedStyle:v16];

      v17 = v20;
    }

    v60 = v16;
    if (([v14 includeBackfillLayers] & 1) != 0 || objc_msgSend(MEMORY[0x1E69C0938], "deviceSupportsLandscapeConfiguration"))
    {
      v21 = 67;
    }

    else
    {
      v21 = 65;
    }

    if ([MEMORY[0x1E69C0938] deviceSupportsLandscapeConfiguration])
    {
      v21 |= 0x20uLL;
    }

    if (PFPosterWantsLowLuminanceContent() && [v14 includeInactiveLayers])
    {
      v21 |= 4uLL;
    }

    v24 = [v12 editConfiguration];
    v25 = [v24 isSpatialPhotoEnabled];

    if (v25)
    {
      v26 = v21 | 0x500;
    }

    else
    {
      v26 = v21;
    }

    v59 = v14;
    v27 = [v14 applySmartCrop];
    v28 = [objc_alloc(MEMORY[0x1E69BDEA0]) initWithSegmentationItem:v8];
    [v28 setResponseQueue:MEMORY[0x1E69E96A0]];
    v29 = [objc_alloc(MEMORY[0x1E69B3C00]) initWithLevel:0];
    [v28 setPriority:v29];

    [v28 setLayerStackOptions:v26];
    [v28 setStyle:v17];
    v30 = [v12 editConfiguration];
    [v28 setSettlingEffectEnabled:{objc_msgSend(v30, "isSettlingEffectEnabled")}];

    [v28 setSpatialPhotoEnabled:v25];
    if ((v27 & 1) == 0)
    {
      v57 = v13;
      v58 = v9;
      if (v25)
      {
        [v8 spatialPhotoLayout];
      }

      else
      {
        [v8 originalLayout];
      }
      v31 = ;
      v32 = [v31 portraitLayout];
      v33 = [v31 landscapeLayout];
      [v32 normalizedVisibleFrame];
      PXSizeGetAspectRatio();
      PXRectWithAspectRatioFittingRect();
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v41 = v40;
      [v33 normalizedVisibleFrame];
      PXSizeGetAspectRatio();
      PXRectWithAspectRatioFittingRect();
      v43 = v42;
      v45 = v44;
      v47 = v46;
      v49 = v48;
      v50 = objc_alloc(MEMORY[0x1E69C0800]);
      v51 = [v32 layoutByUpdatingNormalizedVisibleFrame:{v35, v37, v39, v41}];
      v52 = [v33 layoutByUpdatingNormalizedVisibleFrame:{v43, v45, v47, v49}];
      v53 = [v50 initWithPortraitLayout:v51 landscapeLayout:v52];
      [v28 setLayout:v53];

      [v28 setUpdateClockZPosition:1];
      v13 = v57;
      v9 = v58;
    }

    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __81__PUWallpaperConfigurationUpdater__handleSegmentationItem_error_completionBlock___block_invoke;
    v62[3] = &unk_1E7B80BC8;
    v63 = v13;
    v64 = v59;
    v65 = v17;
    v66 = v12;
    v10 = v61;
    v68 = v61;
    v67 = v8;
    v54 = v17;
    v55 = v59;
    v56 = v13;
    [v28 submit:v62];

    v23 = v60;
  }

  else
  {
    v22 = PLWallpaperGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v70 = v9;
      _os_log_impl(&dword_1B36F3000, v22, OS_LOG_TYPE_ERROR, "Loading segmentation item failed during configuration update: %{public}@", buf, 0xCu);
    }

    v23 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PUWallpaperPosterErrorDomain" code:-1 userInfo:0];
    (*(v10 + 2))(v10, v12, 0, 0, 0, v23);
  }
}

void __81__PUWallpaperConfigurationUpdater__handleSegmentationItem_error_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v45 = 0;
  v3 = [a2 result:&v45];
  v4 = v45;
  v5 = PLWallpaperGetLog();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v3 statistics];
      *buf = 138543362;
      v48 = v7;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEFAULT, "Segmentation stats: %{public}@", buf, 0xCu);
    }

    v8 = [v3 compoundLayerStack];
    v9 = [v8 compoundLayerStackByUpdatingPortraitDepthEnabled:0 landscapeDepthEnabled:0];

    v10 = objc_alloc(MEMORY[0x1E69C0808]);
    v11 = MEMORY[0x1E6978958];
    v12 = [*(a1 + 40) assetIdentifier];
    v13 = [v11 uuidFromLocalIdentifier:v12];
    v14 = [v10 initWithAssetUUID:v13];
    v46 = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
    [*(a1 + 32) setMedia:v15];

    v16 = [v9 portraitLayerStack];
    v17 = [v16 layout];
    [v17 normalizedVisibleFrame];
    PXRectFlippedVertically();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v26 = [*(a1 + 32) editConfiguration];
    [v26 setNormalizedVisibleFrame:{v19, v21, v23, v25}];

    v27 = [v9 landscapeLayerStack];
    v28 = [v27 layout];
    [v28 normalizedVisibleFrame];
    PXRectFlippedVertically();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v37 = [*(a1 + 32) editConfiguration];
    [v37 setNormalizedLandscapeVisibleFrame:{v30, v32, v34, v36}];

    v38 = [*(a1 + 48) bakedStyle];
    v39 = [*(a1 + 32) editConfiguration];
    [v39 setStyle:v38];

    [*(a1 + 32) setOptions:{objc_msgSend(*(a1 + 32), "options") & 0xFFFFFFFFFFFFFFF7}];
    v40 = 32;
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v48 = v4;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "Segmentation failed during configuration update: %{public}@", buf, 0xCu);
    }

    v9 = 0;
    v40 = 56;
  }

  v41 = *(a1 + 72);
  v42 = *(a1 + 48);
  v43 = *(a1 + v40);
  v44 = [v42 bakedStyle];
  (*(v41 + 16))(v41, v43, v9, v44, *(a1 + 64), v4);
}

- (void)attemptUpdateWithCompletionBlock:(id)a3
{
  v27[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(PUWallpaperConfigurationUpdater *)self overrideConfiguration];
  v7 = [v6 assetURL];
  v8 = [v6 assetIdentifier];
  v9 = v8;
  if (!(v7 | v8))
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"PUWallpaperConfigurationUpdater.m" lineNumber:57 description:@"Either asset URL or asset identifier are required to update the configuration."];

    goto LABEL_12;
  }

  if (v7)
  {
    v10 = [objc_alloc(MEMORY[0x1E69BDE78]) initWithFileURL:v7];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_12;
    }

    v11 = MEMORY[0x1E6978630];
    v27[0] = v8;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
    v13 = [(PUWallpaperConfigurationUpdater *)self photoLibrary];
    v14 = [v13 librarySpecificFetchOptions];
    v15 = [v11 fetchAssetsWithLocalIdentifiers:v12 options:v14];
    v16 = [v15 firstObject];

    if (v16)
    {
      v10 = [objc_alloc(MEMORY[0x1E6978B20]) initWithPhotoAsset:v16];
    }

    else
    {
      v10 = 0;
    }
  }

  if (v10)
  {
    v17 = [objc_alloc(MEMORY[0x1E69BDF40]) initWithParallaxAsset:v10];
    objc_initWeak(location, self);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __68__PUWallpaperConfigurationUpdater_attemptUpdateWithCompletionBlock___block_invoke;
    v21[3] = &unk_1E7B80BA0;
    objc_copyWeak(&v23, location);
    v22 = v5;
    [v17 loadSegmentationItemWithCompletion:v21];

    objc_destroyWeak(&v23);
    objc_destroyWeak(location);
    goto LABEL_15;
  }

LABEL_12:
  v19 = PLWallpaperGetLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *location = 138412546;
    *&location[4] = v7;
    v25 = 2112;
    v26 = v9;
    _os_log_impl(&dword_1B36F3000, v19, OS_LOG_TYPE_INFO, "Failed to load asset for configuration update: assetURL: %@, assetIdentifier: %@", location, 0x16u);
  }

  v20 = [(PUWallpaperConfigurationUpdater *)self sourceConfiguration];
  v10 = [v20 copy];

  [v10 setOptions:{objc_msgSend(v10, "options") & 0xFFFFFFFFFFFFFFF7}];
  v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PUWallpaperPosterErrorDomain" code:-1 userInfo:0];
  (*(v5 + 2))(v5, v10, 0, 0, 0, v17);
LABEL_15:
}

void __68__PUWallpaperConfigurationUpdater_attemptUpdateWithCompletionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleSegmentationItem:v6 error:v5 completionBlock:*(a1 + 32)];
}

- (PUWallpaperConfigurationUpdater)initWithPhotoLibrary:(id)a3 sourceConfiguration:(id)a4 targetAssetDirectory:(id)a5 overrideConfiguration:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = PUWallpaperConfigurationUpdater;
  v15 = [(PUWallpaperConfigurationUpdater *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_photoLibrary, a3);
    objc_storeStrong(&v16->_sourceConfiguration, a4);
    objc_storeStrong(&v16->_targetAssetDirectory, a5);
    objc_storeStrong(&v16->_overrideConfiguration, a6);
  }

  return v16;
}

@end
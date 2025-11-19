@interface PUWallpaperShuffleResourceExportOperation
- (BOOL)_canExportFromDirectory;
- (BOOL)_exportFromDirectory;
- (BOOL)_tryExportFromDirectory;
- (void)_handleExportCompletion:(id)a3;
- (void)cancel;
- (void)px_finishIfPossible;
- (void)px_start;
@end

@implementation PUWallpaperShuffleResourceExportOperation

- (void)px_finishIfPossible
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = PLWallpaperGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(PUWallpaperShuffleResourceExportOperation *)self posterMedia];
    v5 = [v4 assetUUID];
    *buf = 138543618;
    v8 = v5;
    v9 = 1024;
    v10 = [(PUWallpaperShuffleResourceExportOperation *)self isCancelled];
    _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_DEFAULT, "Finished export operation for shuffle asset %{public}@ (cancelled: %d)", buf, 0x12u);
  }

  v6.receiver = self;
  v6.super_class = PUWallpaperShuffleResourceExportOperation;
  [(PXAsyncOperation *)&v6 px_finishIfPossible];
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = PUWallpaperShuffleResourceExportOperation;
  [(PXAsyncOperation *)&v4 cancel];
  v3 = [(PUWallpaperShuffleResourceExportOperation *)self exportTask];
  [v3 cancel];
}

- (void)_handleExportCompletion:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLWallpaperGetLog();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = [(PUWallpaperShuffleResourceExportOperation *)self posterMedia];
      v8 = [v7 assetUUID];
      v11 = 138543618;
      v12 = v8;
      v13 = 2114;
      v14 = v4;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "Error while exporting resources for shuffle asset %{public}@: %{public}@", &v11, 0x16u);
    }

    [(PUWallpaperShuffleResourceExportOperation *)self setError:v4];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v9 = [(PUWallpaperShuffleResourceExportOperation *)self posterMedia];
      v10 = [v9 assetUUID];
      v11 = 138543362;
      v12 = v10;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_INFO, "Successfully exported shuffle asset %{public}@", &v11, 0xCu);
    }
  }

  [(PUWallpaperShuffleResourceExportOperation *)self px_finishIfPossible];
}

- (BOOL)_exportFromDirectory
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [(PUWallpaperShuffleResourceExportOperation *)self sourceDirectory];
  v4 = [(PUWallpaperShuffleResourceExportOperation *)self posterMedia];
  v5 = [v4 subpath];
  v6 = [v3 URLByAppendingPathComponent:v5];

  v7 = [(PUWallpaperShuffleResourceExportOperation *)self exportDirectory];
  v8 = [(PUWallpaperShuffleResourceExportOperation *)self posterMedia];
  v9 = [v8 subpath];
  v10 = [v7 URLByAppendingPathComponent:v9];

  v11 = [MEMORY[0x1E696AC08] defaultManager];
  v21 = 0;
  v12 = [v11 copyItemAtURL:v6 toURL:v10 error:&v21];
  v13 = v21;

  v14 = PLWallpaperGetLog();
  v15 = v14;
  if (v12)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = [(PUWallpaperShuffleResourceExportOperation *)self posterMedia];
      v17 = [v16 assetUUID];
      *buf = 138543362;
      v23 = v17;
      _os_log_impl(&dword_1B36F3000, v15, OS_LOG_TYPE_INFO, "Successfully copied existing data for shuffle asset %{public}@", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v18 = [(PUWallpaperShuffleResourceExportOperation *)self posterMedia];
      v19 = [v18 assetUUID];
      *buf = 138543618;
      v23 = v19;
      v24 = 2114;
      v25 = v13;
      _os_log_impl(&dword_1B36F3000, v15, OS_LOG_TYPE_ERROR, "Failed to copy shuffle asset %{public}@, error: %{public}@", buf, 0x16u);
    }

    [(PUWallpaperShuffleResourceExportOperation *)self setError:v13];
  }

  return v12;
}

- (BOOL)_canExportFromDirectory
{
  v3 = [(PUWallpaperShuffleResourceExportOperation *)self sourceDirectory];
  v4 = [(PUWallpaperShuffleResourceExportOperation *)self posterMedia];
  v5 = [v4 subpath];
  v6 = [v3 URLByAppendingPathComponent:v5];

  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [v6 path];
  LODWORD(v5) = [v7 fileExistsAtPath:v8];

  if (v5)
  {
    v9 = [(PUWallpaperShuffleResourceExportOperation *)self posterMedia];
    v10 = [v9 editConfiguration];

    if (v10)
    {
      v11 = [v10 style];
    }

    else
    {
      v13 = [(PUWallpaperShuffleResourceExportOperation *)self persistedStyle];
      v11 = [v13 bakedStyle];
    }

    v14 = [(PUWallpaperShuffleResourceExportOperation *)self style];
    v15 = [v14 bakedStyle];
    v16 = v15;
    if (v11 == v15)
    {
    }

    else
    {
      v17 = [v11 isEqual:v15];

      if ((v17 & 1) == 0)
      {
        LOBYTE(v12) = 0;
LABEL_29:

        goto LABEL_30;
      }
    }

    v18 = [(PUWallpaperShuffleResourceExportOperation *)self editConfiguration];
    if (!v18 || ([v10 normalizedVisibleFrame], objc_msgSend(v18, "normalizedVisibleFrame"), PXRectApproximatelyEqualToRect()) && (objc_msgSend(v10, "normalizedLandscapeVisibleFrame"), objc_msgSend(v18, "normalizedLandscapeVisibleFrame"), PXRectApproximatelyEqualToRect()) && (objc_msgSend(v10, "normalizedAdaptiveVisibleFrame"), objc_msgSend(v18, "normalizedAdaptiveVisibleFrame"), PXRectApproximatelyEqualToRect()) && (objc_msgSend(v10, "normalizedLandscapeAdaptiveVisibleFrame"), objc_msgSend(v18, "normalizedLandscapeAdaptiveVisibleFrame"), PXRectApproximatelyEqualToRect()) && (objc_msgSend(v10, "normalizedAdaptiveTimeFrame"), objc_msgSend(v18, "normalizedAdaptiveTimeFrame"), PXRectApproximatelyEqualToRect()) && (objc_msgSend(v10, "normalizedLandscapeAdaptiveTimeFrame"), objc_msgSend(v18, "normalizedLandscapeAdaptiveTimeFrame"), PXRectApproximatelyEqualToRect()) && (objc_msgSend(v10, "additionalTitleLabelHeight"), objc_msgSend(v18, "additionalTitleLabelHeight"), PXFloatApproximatelyEqualToFloat()) && (objc_msgSend(v10, "userAdjustedTitleLabelHeightOffset"), objc_msgSend(v18, "userAdjustedTitleLabelHeightOffset"), PXFloatApproximatelyEqualToFloat()) && (v19 = objc_msgSend(v10, "userAdjustedVisibleFrame"), v19 == objc_msgSend(v18, "userAdjustedVisibleFrame")) && (v20 = objc_msgSend(v18, "isDepthEnabled"), v20 == objc_msgSend(v10, "isDepthEnabled")) && (v21 = objc_msgSend(v18, "isSpatialPhotoEnabled"), v21 == objc_msgSend(v10, "isSpatialPhotoEnabled")) && (v22 = objc_msgSend(v18, "isPerspectiveZoomEnabled"), v22 == objc_msgSend(v10, "isPerspectiveZoomEnabled")))
    {
      v51 = 0;
      v23 = [MEMORY[0x1E69BDF40] loadCompoundLayerStackFromWallpaperURL:v6 options:0 error:&v51];
      v24 = [v23 portraitLayerStack];

      v25 = [v24 layout];
      [v25 visibleFrame];
      v49 = v27;
      v50 = v26;
      v29 = v28;
      v31 = v30;

      v32 = [v24 layout];
      [v32 inactiveFrame];
      v34 = v33;
      v36 = v35;
      v38 = v37;
      v40 = v39;

      v41 = [v24 layout];
      [v41 imageSize];
      v43 = v42;
      v44 = [v24 layout];
      [v44 imageSize];
      v46 = v45;

      v52.origin.x = 0.0;
      v52.origin.y = 0.0;
      v52.size.width = v43;
      v52.size.height = v46;
      v54.origin.y = v49;
      v54.origin.x = v50;
      v54.size.width = v29;
      v54.size.height = v31;
      LODWORD(v41) = CGRectContainsRect(v52, v54);
      v53.origin.x = 0.0;
      v53.origin.y = 0.0;
      v53.size.width = v43;
      v53.size.height = v46;
      v55.origin.x = v34;
      v55.origin.y = v36;
      v55.size.width = v38;
      v55.size.height = v40;
      if (v41 == CGRectContainsRect(v53, v55))
      {
        v47 = [(PUWallpaperShuffleResourceExportOperation *)self options];
        v12 = [v24 spatialPhotoEnabled] ^ ((v47 & 0x100) == 0);
      }

      else
      {
        LOBYTE(v12) = 0;
      }
    }

    else
    {
      LOBYTE(v12) = 0;
    }

    goto LABEL_29;
  }

  LOBYTE(v12) = 0;
LABEL_30:

  return v12;
}

- (BOOL)_tryExportFromDirectory
{
  v3 = [(PUWallpaperShuffleResourceExportOperation *)self _canExportFromDirectory];
  if (v3)
  {

    LOBYTE(v3) = [(PUWallpaperShuffleResourceExportOperation *)self _exportFromDirectory];
  }

  return v3;
}

- (void)px_start
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = PLWallpaperGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(PUWallpaperShuffleResourceExportOperation *)self posterMedia];
    v6 = [v5 assetUUID];
    *buf = 138543362;
    v41 = v6;
    _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEFAULT, "Started exporting resources for shuffle asset %{public}@.", buf, 0xCu);
  }

  v7 = [(PUWallpaperShuffleResourceExportOperation *)self posterMedia];
  v8 = [(PUWallpaperShuffleResourceExportOperation *)self exportDirectory];
  if (!v7)
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"PUWallpaperShuffleResourceManager.m" lineNumber:941 description:{@"Invalid parameter not satisfying: %@", @"posterMedia != nil"}];
  }

  if (!v8)
  {
    v34 = [MEMORY[0x1E696AAA8] currentHandler];
    [v34 handleFailureInMethod:a2 object:self file:@"PUWallpaperShuffleResourceManager.m" lineNumber:942 description:{@"Invalid parameter not satisfying: %@", @"exportDirectory"}];
  }

  v9 = [(PUWallpaperShuffleResourceExportOperation *)self segmentationItem];
  if (!v9 || [(PUWallpaperShuffleResourceExportOperation *)self _tryExportFromDirectory])
  {
    [(PUWallpaperShuffleResourceExportOperation *)self px_finishIfPossible];
    goto LABEL_24;
  }

  v10 = [(PUWallpaperShuffleResourceExportOperation *)self exportDirectory];
  v11 = [(PUWallpaperShuffleResourceExportOperation *)self posterMedia];
  v12 = [v11 subpath];
  v36 = [v10 URLByAppendingPathComponent:v12];

  v13 = [MEMORY[0x1E696AC08] defaultManager];
  v14 = [v36 path];
  LODWORD(v11) = [v13 fileExistsAtPath:v14];

  if (!v11)
  {
    goto LABEL_14;
  }

  v15 = [MEMORY[0x1E696AC08] defaultManager];
  v39 = 0;
  v16 = [v15 removeItemAtURL:v36 error:&v39];
  v17 = v39;

  if (v16)
  {

LABEL_14:
    v18 = [(PUWallpaperShuffleResourceExportOperation *)self editConfiguration];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v21 = [(PUWallpaperShuffleResourceExportOperation *)self posterMedia];
      v20 = [v21 editConfiguration];
    }

    v22 = [(PUWallpaperShuffleResourceExportOperation *)self style];
    v23 = [v22 bakedStyle];

    v24 = +[PUPosterSettings sharedInstance];
    v25 = [v24 recalculateLayoutProperties];

    objc_initWeak(buf, self);
    v26 = MEMORY[0x1E69BDF40];
    v27 = [(PUWallpaperShuffleResourceExportOperation *)self options];
    if (v20)
    {
      v28 = v25;
    }

    else
    {
      v28 = 0;
    }

    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __53__PUWallpaperShuffleResourceExportOperation_px_start__block_invoke;
    v37[3] = &unk_1E7B7A0C0;
    objc_copyWeak(&v38, buf);
    BYTE1(v35) = 1;
    LOBYTE(v35) = v28;
    v29 = [v26 saveSegmentationItem:v9 layerStackOptions:v27 configuration:v20 style:v23 layout:0 allowedLayoutStrategies:3 shouldRecalculateLayoutProperties:v35 shouldKeepSpecifiedStyle:v36 toWallpaperURL:v37 completion:?];
    [(PUWallpaperShuffleResourceExportOperation *)self setExportTask:v29];

    objc_destroyWeak(&v38);
    objc_destroyWeak(buf);

    goto LABEL_24;
  }

  v30 = PLWallpaperGetLog();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    v31 = [(PUWallpaperShuffleResourceExportOperation *)self posterMedia];
    v32 = [v31 assetUUID];
    *buf = 138543618;
    v41 = v32;
    v42 = 2114;
    v43 = v17;
    _os_log_impl(&dword_1B36F3000, v30, OS_LOG_TYPE_ERROR, "Failed to delete wallpaper directory %{public}@, error: %{public}@", buf, 0x16u);
  }

  [(PUWallpaperShuffleResourceExportOperation *)self _handleExportCompletion:v17];
LABEL_24:
}

void __53__PUWallpaperShuffleResourceExportOperation_px_start__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleExportCompletion:v3];
}

@end
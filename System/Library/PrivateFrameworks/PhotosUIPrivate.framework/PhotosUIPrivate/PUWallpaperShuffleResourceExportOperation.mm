@interface PUWallpaperShuffleResourceExportOperation
- (BOOL)_canExportFromDirectory;
- (BOOL)_exportFromDirectory;
- (BOOL)_tryExportFromDirectory;
- (void)_handleExportCompletion:(id)completion;
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
    posterMedia = [(PUWallpaperShuffleResourceExportOperation *)self posterMedia];
    assetUUID = [posterMedia assetUUID];
    *buf = 138543618;
    v8 = assetUUID;
    v9 = 1024;
    isCancelled = [(PUWallpaperShuffleResourceExportOperation *)self isCancelled];
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
  exportTask = [(PUWallpaperShuffleResourceExportOperation *)self exportTask];
  [exportTask cancel];
}

- (void)_handleExportCompletion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = PLWallpaperGetLog();
  v6 = v5;
  if (completionCopy)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      posterMedia = [(PUWallpaperShuffleResourceExportOperation *)self posterMedia];
      assetUUID = [posterMedia assetUUID];
      v11 = 138543618;
      v12 = assetUUID;
      v13 = 2114;
      v14 = completionCopy;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "Error while exporting resources for shuffle asset %{public}@: %{public}@", &v11, 0x16u);
    }

    [(PUWallpaperShuffleResourceExportOperation *)self setError:completionCopy];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      posterMedia2 = [(PUWallpaperShuffleResourceExportOperation *)self posterMedia];
      assetUUID2 = [posterMedia2 assetUUID];
      v11 = 138543362;
      v12 = assetUUID2;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_INFO, "Successfully exported shuffle asset %{public}@", &v11, 0xCu);
    }
  }

  [(PUWallpaperShuffleResourceExportOperation *)self px_finishIfPossible];
}

- (BOOL)_exportFromDirectory
{
  v26 = *MEMORY[0x1E69E9840];
  sourceDirectory = [(PUWallpaperShuffleResourceExportOperation *)self sourceDirectory];
  posterMedia = [(PUWallpaperShuffleResourceExportOperation *)self posterMedia];
  subpath = [posterMedia subpath];
  v6 = [sourceDirectory URLByAppendingPathComponent:subpath];

  exportDirectory = [(PUWallpaperShuffleResourceExportOperation *)self exportDirectory];
  posterMedia2 = [(PUWallpaperShuffleResourceExportOperation *)self posterMedia];
  subpath2 = [posterMedia2 subpath];
  v10 = [exportDirectory URLByAppendingPathComponent:subpath2];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v21 = 0;
  v12 = [defaultManager copyItemAtURL:v6 toURL:v10 error:&v21];
  v13 = v21;

  v14 = PLWallpaperGetLog();
  v15 = v14;
  if (v12)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      posterMedia3 = [(PUWallpaperShuffleResourceExportOperation *)self posterMedia];
      assetUUID = [posterMedia3 assetUUID];
      *buf = 138543362;
      v23 = assetUUID;
      _os_log_impl(&dword_1B36F3000, v15, OS_LOG_TYPE_INFO, "Successfully copied existing data for shuffle asset %{public}@", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      posterMedia4 = [(PUWallpaperShuffleResourceExportOperation *)self posterMedia];
      assetUUID2 = [posterMedia4 assetUUID];
      *buf = 138543618;
      v23 = assetUUID2;
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
  sourceDirectory = [(PUWallpaperShuffleResourceExportOperation *)self sourceDirectory];
  posterMedia = [(PUWallpaperShuffleResourceExportOperation *)self posterMedia];
  subpath = [posterMedia subpath];
  v6 = [sourceDirectory URLByAppendingPathComponent:subpath];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [v6 path];
  LODWORD(subpath) = [defaultManager fileExistsAtPath:path];

  if (subpath)
  {
    posterMedia2 = [(PUWallpaperShuffleResourceExportOperation *)self posterMedia];
    editConfiguration = [posterMedia2 editConfiguration];

    if (editConfiguration)
    {
      style = [editConfiguration style];
    }

    else
    {
      persistedStyle = [(PUWallpaperShuffleResourceExportOperation *)self persistedStyle];
      style = [persistedStyle bakedStyle];
    }

    style2 = [(PUWallpaperShuffleResourceExportOperation *)self style];
    bakedStyle = [style2 bakedStyle];
    v16 = bakedStyle;
    if (style == bakedStyle)
    {
    }

    else
    {
      v17 = [style isEqual:bakedStyle];

      if ((v17 & 1) == 0)
      {
        LOBYTE(v12) = 0;
LABEL_29:

        goto LABEL_30;
      }
    }

    editConfiguration2 = [(PUWallpaperShuffleResourceExportOperation *)self editConfiguration];
    if (!editConfiguration2 || ([editConfiguration normalizedVisibleFrame], objc_msgSend(editConfiguration2, "normalizedVisibleFrame"), PXRectApproximatelyEqualToRect()) && (objc_msgSend(editConfiguration, "normalizedLandscapeVisibleFrame"), objc_msgSend(editConfiguration2, "normalizedLandscapeVisibleFrame"), PXRectApproximatelyEqualToRect()) && (objc_msgSend(editConfiguration, "normalizedAdaptiveVisibleFrame"), objc_msgSend(editConfiguration2, "normalizedAdaptiveVisibleFrame"), PXRectApproximatelyEqualToRect()) && (objc_msgSend(editConfiguration, "normalizedLandscapeAdaptiveVisibleFrame"), objc_msgSend(editConfiguration2, "normalizedLandscapeAdaptiveVisibleFrame"), PXRectApproximatelyEqualToRect()) && (objc_msgSend(editConfiguration, "normalizedAdaptiveTimeFrame"), objc_msgSend(editConfiguration2, "normalizedAdaptiveTimeFrame"), PXRectApproximatelyEqualToRect()) && (objc_msgSend(editConfiguration, "normalizedLandscapeAdaptiveTimeFrame"), objc_msgSend(editConfiguration2, "normalizedLandscapeAdaptiveTimeFrame"), PXRectApproximatelyEqualToRect()) && (objc_msgSend(editConfiguration, "additionalTitleLabelHeight"), objc_msgSend(editConfiguration2, "additionalTitleLabelHeight"), PXFloatApproximatelyEqualToFloat()) && (objc_msgSend(editConfiguration, "userAdjustedTitleLabelHeightOffset"), objc_msgSend(editConfiguration2, "userAdjustedTitleLabelHeightOffset"), PXFloatApproximatelyEqualToFloat()) && (v19 = objc_msgSend(editConfiguration, "userAdjustedVisibleFrame"), v19 == objc_msgSend(editConfiguration2, "userAdjustedVisibleFrame")) && (v20 = objc_msgSend(editConfiguration2, "isDepthEnabled"), v20 == objc_msgSend(editConfiguration, "isDepthEnabled")) && (v21 = objc_msgSend(editConfiguration2, "isSpatialPhotoEnabled"), v21 == objc_msgSend(editConfiguration, "isSpatialPhotoEnabled")) && (v22 = objc_msgSend(editConfiguration2, "isPerspectiveZoomEnabled"), v22 == objc_msgSend(editConfiguration, "isPerspectiveZoomEnabled")))
    {
      v51 = 0;
      v23 = [MEMORY[0x1E69BDF40] loadCompoundLayerStackFromWallpaperURL:v6 options:0 error:&v51];
      portraitLayerStack = [v23 portraitLayerStack];

      layout = [portraitLayerStack layout];
      [layout visibleFrame];
      v49 = v27;
      v50 = v26;
      v29 = v28;
      v31 = v30;

      layout2 = [portraitLayerStack layout];
      [layout2 inactiveFrame];
      v34 = v33;
      v36 = v35;
      v38 = v37;
      v40 = v39;

      layout3 = [portraitLayerStack layout];
      [layout3 imageSize];
      v43 = v42;
      layout4 = [portraitLayerStack layout];
      [layout4 imageSize];
      v46 = v45;

      v52.origin.x = 0.0;
      v52.origin.y = 0.0;
      v52.size.width = v43;
      v52.size.height = v46;
      v54.origin.y = v49;
      v54.origin.x = v50;
      v54.size.width = v29;
      v54.size.height = v31;
      LODWORD(layout3) = CGRectContainsRect(v52, v54);
      v53.origin.x = 0.0;
      v53.origin.y = 0.0;
      v53.size.width = v43;
      v53.size.height = v46;
      v55.origin.x = v34;
      v55.origin.y = v36;
      v55.size.width = v38;
      v55.size.height = v40;
      if (layout3 == CGRectContainsRect(v53, v55))
      {
        options = [(PUWallpaperShuffleResourceExportOperation *)self options];
        v12 = [portraitLayerStack spatialPhotoEnabled] ^ ((options & 0x100) == 0);
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
  _canExportFromDirectory = [(PUWallpaperShuffleResourceExportOperation *)self _canExportFromDirectory];
  if (_canExportFromDirectory)
  {

    LOBYTE(_canExportFromDirectory) = [(PUWallpaperShuffleResourceExportOperation *)self _exportFromDirectory];
  }

  return _canExportFromDirectory;
}

- (void)px_start
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = PLWallpaperGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    posterMedia = [(PUWallpaperShuffleResourceExportOperation *)self posterMedia];
    assetUUID = [posterMedia assetUUID];
    *buf = 138543362;
    v41 = assetUUID;
    _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEFAULT, "Started exporting resources for shuffle asset %{public}@.", buf, 0xCu);
  }

  posterMedia2 = [(PUWallpaperShuffleResourceExportOperation *)self posterMedia];
  exportDirectory = [(PUWallpaperShuffleResourceExportOperation *)self exportDirectory];
  if (!posterMedia2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUWallpaperShuffleResourceManager.m" lineNumber:941 description:{@"Invalid parameter not satisfying: %@", @"posterMedia != nil"}];
  }

  if (!exportDirectory)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUWallpaperShuffleResourceManager.m" lineNumber:942 description:{@"Invalid parameter not satisfying: %@", @"exportDirectory"}];
  }

  segmentationItem = [(PUWallpaperShuffleResourceExportOperation *)self segmentationItem];
  if (!segmentationItem || [(PUWallpaperShuffleResourceExportOperation *)self _tryExportFromDirectory])
  {
    [(PUWallpaperShuffleResourceExportOperation *)self px_finishIfPossible];
    goto LABEL_24;
  }

  exportDirectory2 = [(PUWallpaperShuffleResourceExportOperation *)self exportDirectory];
  posterMedia3 = [(PUWallpaperShuffleResourceExportOperation *)self posterMedia];
  subpath = [posterMedia3 subpath];
  v36 = [exportDirectory2 URLByAppendingPathComponent:subpath];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [v36 path];
  LODWORD(posterMedia3) = [defaultManager fileExistsAtPath:path];

  if (!posterMedia3)
  {
    goto LABEL_14;
  }

  defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
  v39 = 0;
  v16 = [defaultManager2 removeItemAtURL:v36 error:&v39];
  v17 = v39;

  if (v16)
  {

LABEL_14:
    editConfiguration = [(PUWallpaperShuffleResourceExportOperation *)self editConfiguration];
    v19 = editConfiguration;
    if (editConfiguration)
    {
      editConfiguration2 = editConfiguration;
    }

    else
    {
      posterMedia4 = [(PUWallpaperShuffleResourceExportOperation *)self posterMedia];
      editConfiguration2 = [posterMedia4 editConfiguration];
    }

    style = [(PUWallpaperShuffleResourceExportOperation *)self style];
    bakedStyle = [style bakedStyle];

    v24 = +[PUPosterSettings sharedInstance];
    recalculateLayoutProperties = [v24 recalculateLayoutProperties];

    objc_initWeak(buf, self);
    v26 = MEMORY[0x1E69BDF40];
    options = [(PUWallpaperShuffleResourceExportOperation *)self options];
    if (editConfiguration2)
    {
      v28 = recalculateLayoutProperties;
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
    v29 = [v26 saveSegmentationItem:segmentationItem layerStackOptions:options configuration:editConfiguration2 style:bakedStyle layout:0 allowedLayoutStrategies:3 shouldRecalculateLayoutProperties:v35 shouldKeepSpecifiedStyle:v36 toWallpaperURL:v37 completion:?];
    [(PUWallpaperShuffleResourceExportOperation *)self setExportTask:v29];

    objc_destroyWeak(&v38);
    objc_destroyWeak(buf);

    goto LABEL_24;
  }

  v30 = PLWallpaperGetLog();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    posterMedia5 = [(PUWallpaperShuffleResourceExportOperation *)self posterMedia];
    assetUUID2 = [posterMedia5 assetUUID];
    *buf = 138543618;
    v41 = assetUUID2;
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
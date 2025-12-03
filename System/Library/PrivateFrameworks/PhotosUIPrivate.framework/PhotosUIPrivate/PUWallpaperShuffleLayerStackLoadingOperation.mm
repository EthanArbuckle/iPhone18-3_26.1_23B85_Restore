@interface PUWallpaperShuffleLayerStackLoadingOperation
- (BOOL)_canLoadLayerStackFromDirectory;
- (BOOL)_loadLayerStackFromDirectory;
- (BOOL)tryLoadLayerStackFromDirectory;
- (PUWallpaperShuffleLayerStackLoadingOperation)initWithPosterMedia:(id)media editConfiguration:(id)configuration assetDirectory:(id)directory style:(id)style persistedStyle:(id)persistedStyle allowedLayoutStrategies:(unint64_t)strategies enableSpatialPhoto:(BOOL)photo shuffleType:(int64_t)self0 isPreloading:(BOOL)self1;
- (void)_handleLayerStackResponse:(id)response;
- (void)cancel;
- (void)px_finishIfPossible;
- (void)px_start;
@end

@implementation PUWallpaperShuffleLayerStackLoadingOperation

- (void)px_finishIfPossible
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = PLWallpaperGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    posterMedia = [(PUWallpaperShuffleLayerStackLoadingOperation *)self posterMedia];
    assetUUID = [posterMedia assetUUID];
    *buf = 138543618;
    v8 = assetUUID;
    v9 = 1024;
    isCancelled = [(PUWallpaperShuffleLayerStackLoadingOperation *)self isCancelled];
    _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_DEFAULT, "Finished layer stack loading operation for shuffle asset %{public}@ (cancelled: %d)", buf, 0x12u);
  }

  v6.receiver = self;
  v6.super_class = PUWallpaperShuffleLayerStackLoadingOperation;
  [(PXAsyncOperation *)&v6 px_finishIfPossible];
}

- (void)cancel
{
  v5.receiver = self;
  v5.super_class = PUWallpaperShuffleLayerStackLoadingOperation;
  [(PXAsyncOperation *)&v5 cancel];
  layerStackRequest = [(PUWallpaperShuffleLayerStackLoadingOperation *)self layerStackRequest];
  renderContext = [layerStackRequest renderContext];
  [renderContext cancelAllRequests];
}

- (void)_handleLayerStackResponse:(id)response
{
  v22 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v4 = [response result:&v15];
  v5 = v15;
  if (v4)
  {
    compoundLayerStack = [v4 compoundLayerStack];
    [(PUWallpaperShuffleLayerStackLoadingOperation *)self setLayerStack:compoundLayerStack];

    v7 = PLWallpaperGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      operationType = [(PUWallpaperShuffleLayerStackLoadingOperation *)self operationType];
      posterMedia = [(PUWallpaperShuffleLayerStackLoadingOperation *)self posterMedia];
      assetUUID = [posterMedia assetUUID];
      *buf = 138543618;
      v17 = operationType;
      v18 = 2114;
      v19 = assetUUID;
      v11 = "Finished %{public}@ layer stack for shuffle asset %{public}@";
      v12 = v7;
      v13 = OS_LOG_TYPE_DEFAULT;
      v14 = 22;
LABEL_6:
      _os_log_impl(&dword_1B36F3000, v12, v13, v11, buf, v14);
    }
  }

  else
  {
    [(PUWallpaperShuffleLayerStackLoadingOperation *)self setError:v5];
    v7 = PLWallpaperGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      operationType = [(PUWallpaperShuffleLayerStackLoadingOperation *)self operationType];
      posterMedia = [(PUWallpaperShuffleLayerStackLoadingOperation *)self posterMedia];
      assetUUID = [posterMedia assetUUID];
      *buf = 138543874;
      v17 = operationType;
      v18 = 2114;
      v19 = assetUUID;
      v20 = 2114;
      v21 = v5;
      v11 = "Layer stack %{public}@ failed for shuffle asset %{public}@: %{public}@";
      v12 = v7;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 32;
      goto LABEL_6;
    }
  }

  [(PUWallpaperShuffleLayerStackLoadingOperation *)self px_finishIfPossible];
}

- (BOOL)_loadLayerStackFromDirectory
{
  assetDirectory = [(PUWallpaperShuffleLayerStackLoadingOperation *)self assetDirectory];
  posterMedia = [(PUWallpaperShuffleLayerStackLoadingOperation *)self posterMedia];
  subpath = [posterMedia subpath];
  v6 = [assetDirectory URLByAppendingPathComponent:subpath];

  if (v6)
  {
    v17 = 0;
    v7 = [MEMORY[0x1E69BDF40] loadCompoundLayerStackFromWallpaperURL:v6 options:1283 error:&v17];
    v8 = v17;
    editConfiguration = [(PUWallpaperShuffleLayerStackLoadingOperation *)self editConfiguration];
    v10 = editConfiguration;
    if (editConfiguration)
    {
      v11 = [v7 compoundLayerStackByUpdatingPortraitDepthEnabled:objc_msgSend(editConfiguration landscapeDepthEnabled:{"isDepthEnabled"), objc_msgSend(editConfiguration, "isLandscapeDepthEnabled")}];

      v12 = [v11 compoundLayerStackByUpdatingSpatialPhotoEnabled:{objc_msgSend(v10, "isSpatialPhotoEnabled")}];

      v7 = [v12 compoundLayerStackByUpdatingUserAdjustedVisibleFrame:{objc_msgSend(v10, "userAdjustedVisibleFrame")}];
    }

    if ([(PUWallpaperShuffleLayerStackLoadingOperation *)self enableSpatialPhoto])
    {
      portraitLayerStack = [v7 portraitLayerStack];
      spatialPhotoBackgroundLayer = [portraitLayerStack spatialPhotoBackgroundLayer];

      if (!spatialPhotoBackgroundLayer)
      {

        v7 = 0;
      }
    }

    [(PUWallpaperShuffleLayerStackLoadingOperation *)self setLayerStack:v7];
    [(PUWallpaperShuffleLayerStackLoadingOperation *)self setError:v8];

    v15 = v7 != 0;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)_canLoadLayerStackFromDirectory
{
  assetDirectory = [(PUWallpaperShuffleLayerStackLoadingOperation *)self assetDirectory];

  if (assetDirectory)
  {
    posterMedia = [(PUWallpaperShuffleLayerStackLoadingOperation *)self posterMedia];
    editConfiguration = [posterMedia editConfiguration];

    if (editConfiguration)
    {
      style = [editConfiguration style];
    }

    else
    {
      persistedStyle = [(PUWallpaperShuffleLayerStackLoadingOperation *)self persistedStyle];
      style = [persistedStyle bakedStyle];
    }

    style2 = [(PUWallpaperShuffleLayerStackLoadingOperation *)self style];
    bakedStyle = [style2 bakedStyle];
    v11 = bakedStyle;
    if (style == bakedStyle)
    {
    }

    else
    {
      v12 = [style isEqual:bakedStyle];

      if ((v12 & 1) == 0)
      {
        v7 = 0;
LABEL_15:

        return v7;
      }
    }

    editConfiguration2 = [(PUWallpaperShuffleLayerStackLoadingOperation *)self editConfiguration];
    v7 = 1;
    if (editConfiguration2)
    {
      [editConfiguration normalizedVisibleFrame];
      [editConfiguration2 normalizedVisibleFrame];
      if (!PXRectApproximatelyEqualToRect())
      {
        v7 = 0;
      }
    }

    goto LABEL_15;
  }

  return 0;
}

- (BOOL)tryLoadLayerStackFromDirectory
{
  _canLoadLayerStackFromDirectory = [(PUWallpaperShuffleLayerStackLoadingOperation *)self _canLoadLayerStackFromDirectory];
  if (_canLoadLayerStackFromDirectory)
  {

    LOBYTE(_canLoadLayerStackFromDirectory) = [(PUWallpaperShuffleLayerStackLoadingOperation *)self _loadLayerStackFromDirectory];
  }

  return _canLoadLayerStackFromDirectory;
}

- (void)px_start
{
  v44 = *MEMORY[0x1E69E9840];
  posterMedia = [(PUWallpaperShuffleLayerStackLoadingOperation *)self posterMedia];
  assetDirectory = [(PUWallpaperShuffleLayerStackLoadingOperation *)self assetDirectory];
  enableSpatialPhoto = [(PUWallpaperShuffleLayerStackLoadingOperation *)self enableSpatialPhoto];
  segmentationItem = [(PUWallpaperShuffleLayerStackLoadingOperation *)self segmentationItem];
  v8 = segmentationItem;
  if (assetDirectory)
  {
    v9 = posterMedia == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 && !segmentationItem)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUWallpaperShuffleResourceManager.m" lineNumber:799 description:@"Invalid layer stack inputs"];
  }

  v10 = PLWallpaperGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    operationType = [(PUWallpaperShuffleLayerStackLoadingOperation *)self operationType];
    posterMedia2 = [(PUWallpaperShuffleLayerStackLoadingOperation *)self posterMedia];
    assetUUID = [posterMedia2 assetUUID];
    *buf = 138543618;
    v41 = operationType;
    v42 = 2114;
    v43 = assetUUID;
    _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_DEFAULT, "Started %{public}@ layer stack for shuffle asset %{public}@.", buf, 0x16u);
  }

  if ([(PUWallpaperShuffleLayerStackLoadingOperation *)self tryLoadLayerStackFromDirectory]|| v8 == 0)
  {
    [(PUWallpaperShuffleLayerStackLoadingOperation *)self px_finishIfPossible];
  }

  else
  {
    v14 = [objc_alloc(MEMORY[0x1E69BDEA0]) initWithSegmentationItem:v8];
    [(PUWallpaperShuffleLayerStackLoadingOperation *)self setLayerStackRequest:v14];

    if ([(PUWallpaperShuffleLayerStackLoadingOperation *)self isPreloading])
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }

    v16 = [objc_alloc(MEMORY[0x1E69B3C00]) initWithLevel:v15];
    layerStackRequest = [(PUWallpaperShuffleLayerStackLoadingOperation *)self layerStackRequest];
    [layerStackRequest setPriority:v16];

    style = [(PUWallpaperShuffleLayerStackLoadingOperation *)self style];
    layerStackRequest2 = [(PUWallpaperShuffleLayerStackLoadingOperation *)self layerStackRequest];
    [layerStackRequest2 setStyle:style];

    allowedLayoutStrategies = [(PUWallpaperShuffleLayerStackLoadingOperation *)self allowedLayoutStrategies];
    layerStackRequest3 = [(PUWallpaperShuffleLayerStackLoadingOperation *)self layerStackRequest];
    [layerStackRequest3 setAllowedLayoutStrategies:allowedLayoutStrategies];

    if ([MEMORY[0x1E69C0938] deviceSupportsLandscapeConfiguration])
    {
      v22 = 35;
    }

    else
    {
      v22 = 3;
    }

    if (enableSpatialPhoto)
    {
      [(PUWallpaperShuffleLayerStackLoadingOperation *)self shuffleType];
      IsSmart = PFPosterShuffleTypeIsSmart();
      v24 = 1280;
      if (IsSmart)
      {
        v24 = 256;
      }

      v22 |= v24;
    }

    layerStackRequest4 = [(PUWallpaperShuffleLayerStackLoadingOperation *)self layerStackRequest];
    [layerStackRequest4 setLayerStackOptions:v22];

    layerStackRequest5 = [(PUWallpaperShuffleLayerStackLoadingOperation *)self layerStackRequest];
    [layerStackRequest5 setSpatialPhotoEnabled:enableSpatialPhoto];

    editConfiguration = [(PUWallpaperShuffleLayerStackLoadingOperation *)self editConfiguration];
    v28 = editConfiguration;
    if (editConfiguration)
    {
      editConfiguration2 = editConfiguration;
    }

    else
    {
      editConfiguration2 = [posterMedia editConfiguration];
    }

    v30 = editConfiguration2;

    userAdjustedVisibleFrame = [v30 userAdjustedVisibleFrame];
    layerStackRequest6 = [(PUWallpaperShuffleLayerStackLoadingOperation *)self layerStackRequest];
    [layerStackRequest6 setUserAdjustedVisibleFrame:userAdjustedVisibleFrame];

    if (v30)
    {
      [v30 normalizedVisibleFrame];
      if (!CGRectIsNull(v45))
      {
        v33 = [MEMORY[0x1E69BDF40] effectiveLayoutForSegmentationItem:v8 editConfiguration:v30 layerStackOptions:v22];
        layerStackRequest7 = [(PUWallpaperShuffleLayerStackLoadingOperation *)self layerStackRequest];
        [layerStackRequest7 setLayout:v33];

        layerStackRequest8 = [(PUWallpaperShuffleLayerStackLoadingOperation *)self layerStackRequest];
        [layerStackRequest8 setUpdateClockZPosition:1];
      }
    }

    objc_initWeak(buf, self);
    layerStackRequest9 = [(PUWallpaperShuffleLayerStackLoadingOperation *)self layerStackRequest];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __56__PUWallpaperShuffleLayerStackLoadingOperation_px_start__block_invoke;
    v38[3] = &unk_1E7B7DC10;
    objc_copyWeak(&v39, buf);
    [layerStackRequest9 submit:v38];

    objc_destroyWeak(&v39);
    objc_destroyWeak(buf);
  }
}

void __56__PUWallpaperShuffleLayerStackLoadingOperation_px_start__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleLayerStackResponse:v3];
}

- (PUWallpaperShuffleLayerStackLoadingOperation)initWithPosterMedia:(id)media editConfiguration:(id)configuration assetDirectory:(id)directory style:(id)style persistedStyle:(id)persistedStyle allowedLayoutStrategies:(unint64_t)strategies enableSpatialPhoto:(BOOL)photo shuffleType:(int64_t)self0 isPreloading:(BOOL)self1
{
  mediaCopy = media;
  configurationCopy = configuration;
  directoryCopy = directory;
  styleCopy = style;
  persistedStyleCopy = persistedStyle;
  v29.receiver = self;
  v29.super_class = PUWallpaperShuffleLayerStackLoadingOperation;
  v22 = [(PXAsyncOperation *)&v29 init];
  if (v22)
  {
    v23 = [mediaCopy copy];
    posterMedia = v22->_posterMedia;
    v22->_posterMedia = v23;

    v25 = [configurationCopy copy];
    editConfiguration = v22->_editConfiguration;
    v22->_editConfiguration = v25;

    objc_storeStrong(&v22->_assetDirectory, directory);
    objc_storeStrong(&v22->_style, style);
    objc_storeStrong(&v22->_persistedStyle, persistedStyle);
    v22->_allowedLayoutStrategies = strategies;
    v22->_enableSpatialPhoto = photo;
    v22->_shuffleType = type;
    v22->_isPreloading = preloading;
    if (preloading)
    {
      v27 = @"preloading";
    }

    else
    {
      v27 = @"loading";
    }

    objc_storeStrong(&v22->_operationType, v27);
  }

  return v22;
}

@end
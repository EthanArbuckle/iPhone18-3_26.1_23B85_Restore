@interface PUWallpaperShuffleLayerStackLoadingOperation
- (BOOL)_canLoadLayerStackFromDirectory;
- (BOOL)_loadLayerStackFromDirectory;
- (BOOL)tryLoadLayerStackFromDirectory;
- (PUWallpaperShuffleLayerStackLoadingOperation)initWithPosterMedia:(id)a3 editConfiguration:(id)a4 assetDirectory:(id)a5 style:(id)a6 persistedStyle:(id)a7 allowedLayoutStrategies:(unint64_t)a8 enableSpatialPhoto:(BOOL)a9 shuffleType:(int64_t)a10 isPreloading:(BOOL)a11;
- (void)_handleLayerStackResponse:(id)a3;
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
    v4 = [(PUWallpaperShuffleLayerStackLoadingOperation *)self posterMedia];
    v5 = [v4 assetUUID];
    *buf = 138543618;
    v8 = v5;
    v9 = 1024;
    v10 = [(PUWallpaperShuffleLayerStackLoadingOperation *)self isCancelled];
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
  v3 = [(PUWallpaperShuffleLayerStackLoadingOperation *)self layerStackRequest];
  v4 = [v3 renderContext];
  [v4 cancelAllRequests];
}

- (void)_handleLayerStackResponse:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v4 = [a3 result:&v15];
  v5 = v15;
  if (v4)
  {
    v6 = [v4 compoundLayerStack];
    [(PUWallpaperShuffleLayerStackLoadingOperation *)self setLayerStack:v6];

    v7 = PLWallpaperGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(PUWallpaperShuffleLayerStackLoadingOperation *)self operationType];
      v9 = [(PUWallpaperShuffleLayerStackLoadingOperation *)self posterMedia];
      v10 = [v9 assetUUID];
      *buf = 138543618;
      v17 = v8;
      v18 = 2114;
      v19 = v10;
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
      v8 = [(PUWallpaperShuffleLayerStackLoadingOperation *)self operationType];
      v9 = [(PUWallpaperShuffleLayerStackLoadingOperation *)self posterMedia];
      v10 = [v9 assetUUID];
      *buf = 138543874;
      v17 = v8;
      v18 = 2114;
      v19 = v10;
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
  v3 = [(PUWallpaperShuffleLayerStackLoadingOperation *)self assetDirectory];
  v4 = [(PUWallpaperShuffleLayerStackLoadingOperation *)self posterMedia];
  v5 = [v4 subpath];
  v6 = [v3 URLByAppendingPathComponent:v5];

  if (v6)
  {
    v17 = 0;
    v7 = [MEMORY[0x1E69BDF40] loadCompoundLayerStackFromWallpaperURL:v6 options:1283 error:&v17];
    v8 = v17;
    v9 = [(PUWallpaperShuffleLayerStackLoadingOperation *)self editConfiguration];
    v10 = v9;
    if (v9)
    {
      v11 = [v7 compoundLayerStackByUpdatingPortraitDepthEnabled:objc_msgSend(v9 landscapeDepthEnabled:{"isDepthEnabled"), objc_msgSend(v9, "isLandscapeDepthEnabled")}];

      v12 = [v11 compoundLayerStackByUpdatingSpatialPhotoEnabled:{objc_msgSend(v10, "isSpatialPhotoEnabled")}];

      v7 = [v12 compoundLayerStackByUpdatingUserAdjustedVisibleFrame:{objc_msgSend(v10, "userAdjustedVisibleFrame")}];
    }

    if ([(PUWallpaperShuffleLayerStackLoadingOperation *)self enableSpatialPhoto])
    {
      v13 = [v7 portraitLayerStack];
      v14 = [v13 spatialPhotoBackgroundLayer];

      if (!v14)
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
  v3 = [(PUWallpaperShuffleLayerStackLoadingOperation *)self assetDirectory];

  if (v3)
  {
    v4 = [(PUWallpaperShuffleLayerStackLoadingOperation *)self posterMedia];
    v5 = [v4 editConfiguration];

    if (v5)
    {
      v6 = [v5 style];
    }

    else
    {
      v8 = [(PUWallpaperShuffleLayerStackLoadingOperation *)self persistedStyle];
      v6 = [v8 bakedStyle];
    }

    v9 = [(PUWallpaperShuffleLayerStackLoadingOperation *)self style];
    v10 = [v9 bakedStyle];
    v11 = v10;
    if (v6 == v10)
    {
    }

    else
    {
      v12 = [v6 isEqual:v10];

      if ((v12 & 1) == 0)
      {
        v7 = 0;
LABEL_15:

        return v7;
      }
    }

    v13 = [(PUWallpaperShuffleLayerStackLoadingOperation *)self editConfiguration];
    v7 = 1;
    if (v13)
    {
      [v5 normalizedVisibleFrame];
      [v13 normalizedVisibleFrame];
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
  v3 = [(PUWallpaperShuffleLayerStackLoadingOperation *)self _canLoadLayerStackFromDirectory];
  if (v3)
  {

    LOBYTE(v3) = [(PUWallpaperShuffleLayerStackLoadingOperation *)self _loadLayerStackFromDirectory];
  }

  return v3;
}

- (void)px_start
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = [(PUWallpaperShuffleLayerStackLoadingOperation *)self posterMedia];
  v5 = [(PUWallpaperShuffleLayerStackLoadingOperation *)self assetDirectory];
  v6 = [(PUWallpaperShuffleLayerStackLoadingOperation *)self enableSpatialPhoto];
  v7 = [(PUWallpaperShuffleLayerStackLoadingOperation *)self segmentationItem];
  v8 = v7;
  if (v5)
  {
    v9 = v4 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 && !v7)
  {
    v37 = [MEMORY[0x1E696AAA8] currentHandler];
    [v37 handleFailureInMethod:a2 object:self file:@"PUWallpaperShuffleResourceManager.m" lineNumber:799 description:@"Invalid layer stack inputs"];
  }

  v10 = PLWallpaperGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(PUWallpaperShuffleLayerStackLoadingOperation *)self operationType];
    v12 = [(PUWallpaperShuffleLayerStackLoadingOperation *)self posterMedia];
    v13 = [v12 assetUUID];
    *buf = 138543618;
    v41 = v11;
    v42 = 2114;
    v43 = v13;
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
    v17 = [(PUWallpaperShuffleLayerStackLoadingOperation *)self layerStackRequest];
    [v17 setPriority:v16];

    v18 = [(PUWallpaperShuffleLayerStackLoadingOperation *)self style];
    v19 = [(PUWallpaperShuffleLayerStackLoadingOperation *)self layerStackRequest];
    [v19 setStyle:v18];

    v20 = [(PUWallpaperShuffleLayerStackLoadingOperation *)self allowedLayoutStrategies];
    v21 = [(PUWallpaperShuffleLayerStackLoadingOperation *)self layerStackRequest];
    [v21 setAllowedLayoutStrategies:v20];

    if ([MEMORY[0x1E69C0938] deviceSupportsLandscapeConfiguration])
    {
      v22 = 35;
    }

    else
    {
      v22 = 3;
    }

    if (v6)
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

    v25 = [(PUWallpaperShuffleLayerStackLoadingOperation *)self layerStackRequest];
    [v25 setLayerStackOptions:v22];

    v26 = [(PUWallpaperShuffleLayerStackLoadingOperation *)self layerStackRequest];
    [v26 setSpatialPhotoEnabled:v6];

    v27 = [(PUWallpaperShuffleLayerStackLoadingOperation *)self editConfiguration];
    v28 = v27;
    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = [v4 editConfiguration];
    }

    v30 = v29;

    v31 = [v30 userAdjustedVisibleFrame];
    v32 = [(PUWallpaperShuffleLayerStackLoadingOperation *)self layerStackRequest];
    [v32 setUserAdjustedVisibleFrame:v31];

    if (v30)
    {
      [v30 normalizedVisibleFrame];
      if (!CGRectIsNull(v45))
      {
        v33 = [MEMORY[0x1E69BDF40] effectiveLayoutForSegmentationItem:v8 editConfiguration:v30 layerStackOptions:v22];
        v34 = [(PUWallpaperShuffleLayerStackLoadingOperation *)self layerStackRequest];
        [v34 setLayout:v33];

        v35 = [(PUWallpaperShuffleLayerStackLoadingOperation *)self layerStackRequest];
        [v35 setUpdateClockZPosition:1];
      }
    }

    objc_initWeak(buf, self);
    v36 = [(PUWallpaperShuffleLayerStackLoadingOperation *)self layerStackRequest];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __56__PUWallpaperShuffleLayerStackLoadingOperation_px_start__block_invoke;
    v38[3] = &unk_1E7B7DC10;
    objc_copyWeak(&v39, buf);
    [v36 submit:v38];

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

- (PUWallpaperShuffleLayerStackLoadingOperation)initWithPosterMedia:(id)a3 editConfiguration:(id)a4 assetDirectory:(id)a5 style:(id)a6 persistedStyle:(id)a7 allowedLayoutStrategies:(unint64_t)a8 enableSpatialPhoto:(BOOL)a9 shuffleType:(int64_t)a10 isPreloading:(BOOL)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v29.receiver = self;
  v29.super_class = PUWallpaperShuffleLayerStackLoadingOperation;
  v22 = [(PXAsyncOperation *)&v29 init];
  if (v22)
  {
    v23 = [v17 copy];
    posterMedia = v22->_posterMedia;
    v22->_posterMedia = v23;

    v25 = [v18 copy];
    editConfiguration = v22->_editConfiguration;
    v22->_editConfiguration = v25;

    objc_storeStrong(&v22->_assetDirectory, a5);
    objc_storeStrong(&v22->_style, a6);
    objc_storeStrong(&v22->_persistedStyle, a7);
    v22->_allowedLayoutStrategies = a8;
    v22->_enableSpatialPhoto = a9;
    v22->_shuffleType = a10;
    v22->_isPreloading = a11;
    if (a11)
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
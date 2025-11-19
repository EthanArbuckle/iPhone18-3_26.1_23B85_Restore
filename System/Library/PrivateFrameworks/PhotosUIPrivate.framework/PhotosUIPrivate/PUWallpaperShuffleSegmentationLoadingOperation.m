@interface PUWallpaperShuffleSegmentationLoadingOperation
- (BOOL)tryLoadSegmentationFromDirectory;
- (PUWallpaperShuffleSegmentationLoadingOperation)initWithPosterMedia:(id)a3 assetDirectory:(id)a4 photoLibrary:(id)a5 shuffleType:(int64_t)a6 supportedEffects:(unint64_t)a7 enableSpatialPhoto:(BOOL)a8 isPreloading:(BOOL)a9;
- (void)_handleSegmentationResult:(id)a3 forAssetUUID:(id)a4 loadingError:(id)a5;
- (void)cancel;
- (void)px_finishIfPossible;
- (void)px_start;
@end

@implementation PUWallpaperShuffleSegmentationLoadingOperation

- (void)px_finishIfPossible
{
  v14 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E69BDF28] freeResources];
  v4 = [(PUWallpaperShuffleSegmentationLoadingOperation *)self segmentationItem];
  if (v4 || ([(PUWallpaperShuffleSegmentationLoadingOperation *)self error], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
LABEL_4:

    goto LABEL_5;
  }

  if (([(PUWallpaperShuffleSegmentationLoadingOperation *)self isCancelled]& 1) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PUWallpaperShuffleResourceManager.m" lineNumber:757 description:{@"Operation finished, but has invalid output."}];
    goto LABEL_4;
  }

LABEL_5:
  v6 = PLWallpaperGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(PUWallpaperShuffleSegmentationLoadingOperation *)self posterMedia];
    v8 = [v7 assetUUID];
    *buf = 138543618;
    v11 = v8;
    v12 = 1024;
    v13 = [(PUWallpaperShuffleSegmentationLoadingOperation *)self isCancelled];
    _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEFAULT, "Finished segmentation loading operation for shuffle asset %{public}@ (cancelled: %d)", buf, 0x12u);
  }

  v9.receiver = self;
  v9.super_class = PUWallpaperShuffleSegmentationLoadingOperation;
  [(PXAsyncOperation *)&v9 px_finishIfPossible];
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = PUWallpaperShuffleSegmentationLoadingOperation;
  [(PXAsyncOperation *)&v4 cancel];
  v3 = [(PUWallpaperShuffleSegmentationLoadingOperation *)self loader];
  [v3 cancel];
}

- (void)_handleSegmentationResult:(id)a3 forAssetUUID:(id)a4 loadingError:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v11 = PLWallpaperGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(PUWallpaperShuffleSegmentationLoadingOperation *)self operationType];
      v15 = 138543874;
      v16 = v12;
      v17 = 2114;
      v18 = v9;
      v19 = 2114;
      v20 = v8;
      _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_DEFAULT, "Finished %{public}@ segmentation for shuffle asset %{public}@: %{public}@", &v15, 0x20u);
    }

    [(PUWallpaperShuffleSegmentationLoadingOperation *)self setSegmentationItem:v8];
    [(PUWallpaperShuffleSegmentationLoadingOperation *)self setError:0];
  }

  else
  {
    [(PUWallpaperShuffleSegmentationLoadingOperation *)self setError:v10];
    v13 = PLWallpaperGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [(PUWallpaperShuffleSegmentationLoadingOperation *)self operationType];
      v15 = 138543874;
      v16 = v14;
      v17 = 2114;
      v18 = v9;
      v19 = 2114;
      v20 = v10;
      _os_log_impl(&dword_1B36F3000, v13, OS_LOG_TYPE_ERROR, "Segmentation %{public}@ failed for shuffle asset %{public}@: %{public}@", &v15, 0x20u);
    }
  }

  [(PUWallpaperShuffleSegmentationLoadingOperation *)self px_finishIfPossible];
}

- (BOOL)tryLoadSegmentationFromDirectory
{
  v3 = [(PUWallpaperShuffleSegmentationLoadingOperation *)self assetDirectory];
  v4 = [(PUWallpaperShuffleSegmentationLoadingOperation *)self posterMedia];
  v5 = [v4 subpath];
  v6 = [v3 URLByAppendingPathComponent:v5];

  if (v6)
  {
    v14 = 0;
    v7 = [MEMORY[0x1E69BDF40] loadSegmentationItemFromWallpaperURL:v6 error:&v14];
    v8 = v14;
    if ([(PUWallpaperShuffleSegmentationLoadingOperation *)self shouldSkipSpatialValidation])
    {
      goto LABEL_10;
    }

    if ((-[PUWallpaperShuffleSegmentationLoadingOperation supportedEffects](self, "supportedEffects") & 2) != 0 && ![v7 spatialPhotoStatus])
    {

      v7 = 0;
    }

    if (!-[PUWallpaperShuffleSegmentationLoadingOperation enableSpatialPhoto](self, "enableSpatialPhoto") || ([v7 spatialPhotoLayout], (v9 = objc_claimAutoreleasedReturnValue()) != 0) && (v10 = v9, objc_msgSend(v7, "spatialPhotoNormalizedBounds"), IsEmpty = CGRectIsEmpty(v15), v10, !IsEmpty))
    {
LABEL_10:
      if (v7)
      {
        [(PUWallpaperShuffleSegmentationLoadingOperation *)self setSegmentationItem:v7];

        v12 = 1;
LABEL_14:

        goto LABEL_15;
      }
    }

    else
    {
    }

    [(PUWallpaperShuffleSegmentationLoadingOperation *)self setError:v8];
    v12 = 0;
    goto LABEL_14;
  }

  v12 = 0;
LABEL_15:

  return v12;
}

- (void)px_start
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = [(PUWallpaperShuffleSegmentationLoadingOperation *)self posterMedia];
  if (!v3)
  {
    [(PUWallpaperShuffleSegmentationLoadingOperation *)self px_finishIfPossible];
  }

  [MEMORY[0x1E69BDF28] ensureResources];
  v4 = PLWallpaperGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(PUWallpaperShuffleSegmentationLoadingOperation *)self operationType];
    v6 = [(PUWallpaperShuffleSegmentationLoadingOperation *)self posterMedia];
    v7 = [v6 assetUUID];
    *buf = 138543618;
    v29 = v5;
    v30 = 2114;
    v31 = v7;
    _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEFAULT, "Started %{public}@ segmentation for shuffle asset %{public}@.", buf, 0x16u);
  }

  if ([(PUWallpaperShuffleSegmentationLoadingOperation *)self tryLoadSegmentationFromDirectory])
  {
    [(PUWallpaperShuffleSegmentationLoadingOperation *)self px_finishIfPossible];
  }

  else
  {
    v8 = MEMORY[0x1E6978630];
    v9 = [v3 assetUUID];
    v27 = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
    v11 = [(PUWallpaperShuffleSegmentationLoadingOperation *)self photoLibrary];
    v12 = [v11 librarySpecificFetchOptions];
    v13 = [v8 fetchAssetsWithUUIDs:v10 options:v12];
    v14 = [v13 firstObject];

    if (v14)
    {
      [(PUWallpaperShuffleSegmentationLoadingOperation *)self setError:0];
      v15 = [objc_alloc(MEMORY[0x1E6978B20]) initWithPhotoAsset:v14];
      v16 = [objc_alloc(MEMORY[0x1E69BDF40]) initWithParallaxAsset:v15];
      [v16 setDisableSettlingEffect:1];
      v17 = [(PUWallpaperShuffleSegmentationLoadingOperation *)self downloadProgressHandler];
      [v16 setDownloadProgressHandler:v17];

      v18 = [(PUWallpaperShuffleSegmentationLoadingOperation *)self shuffleType];
      [v16 setDisableSpatialAdaptiveLayout:(v18 > 2) | (v18 & 1)];
      objc_initWeak(buf, self);
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __58__PUWallpaperShuffleSegmentationLoadingOperation_px_start__block_invoke;
      v24[3] = &unk_1E7B76FF8;
      objc_copyWeak(&v26, buf);
      v25 = v14;
      [v16 loadSegmentationItemWithCompletion:v24];
      [(PUWallpaperShuffleSegmentationLoadingOperation *)self setLoader:v16];

      objc_destroyWeak(&v26);
      objc_destroyWeak(buf);
    }

    else
    {
      [(PUWallpaperShuffleSegmentationLoadingOperation *)self setShouldSkipSpatialValidation:1];
      if ([(PUWallpaperShuffleSegmentationLoadingOperation *)self tryLoadSegmentationFromDirectory])
      {
        [(PUWallpaperShuffleSegmentationLoadingOperation *)self setError:0];
        [(PUWallpaperShuffleSegmentationLoadingOperation *)self px_finishIfPossible];
      }

      else
      {
        v19 = PLWallpaperGetLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = [v3 assetUUID];
          *buf = 138543362;
          v29 = v20;
          _os_log_impl(&dword_1B36F3000, v19, OS_LOG_TYPE_ERROR, "Failed to fetch asset %{public}@", buf, 0xCu);
        }

        v21 = [(PUWallpaperShuffleSegmentationLoadingOperation *)self error];
        v22 = v21 == 0;

        if (v22)
        {
          v23 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PUWallpaperPosterErrorDomain" code:-123 userInfo:0];
          [(PUWallpaperShuffleSegmentationLoadingOperation *)self setError:v23];
        }

        [(PUWallpaperShuffleSegmentationLoadingOperation *)self px_finishIfPossible];
      }
    }
  }
}

void __58__PUWallpaperShuffleSegmentationLoadingOperation_px_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [*(a1 + 32) uuid];
  [WeakRetained _handleSegmentationResult:v6 forAssetUUID:v7 loadingError:v5];
}

- (PUWallpaperShuffleSegmentationLoadingOperation)initWithPosterMedia:(id)a3 assetDirectory:(id)a4 photoLibrary:(id)a5 shuffleType:(int64_t)a6 supportedEffects:(unint64_t)a7 enableSpatialPhoto:(BOOL)a8 isPreloading:(BOOL)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v24.receiver = self;
  v24.super_class = PUWallpaperShuffleSegmentationLoadingOperation;
  v18 = [(PXAsyncOperation *)&v24 init];
  v19 = v18;
  if (v18)
  {
    v18->_shuffleType = a6;
    v18->_supportedEffects = a7;
    v18->_enableSpatialPhoto = a8;
    v20 = [v15 copy];
    posterMedia = v19->_posterMedia;
    v19->_posterMedia = v20;

    objc_storeStrong(&v19->_assetDirectory, a4);
    objc_storeStrong(&v19->_photoLibrary, a5);
    v19->_isPreloading = a9;
    if (a9)
    {
      v22 = @"preloading";
    }

    else
    {
      v22 = @"loading";
    }

    objc_storeStrong(&v19->_operationType, v22);
  }

  return v19;
}

@end
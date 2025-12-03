@interface PUWallpaperShuffleSegmentationLoadingOperation
- (BOOL)tryLoadSegmentationFromDirectory;
- (PUWallpaperShuffleSegmentationLoadingOperation)initWithPosterMedia:(id)media assetDirectory:(id)directory photoLibrary:(id)library shuffleType:(int64_t)type supportedEffects:(unint64_t)effects enableSpatialPhoto:(BOOL)photo isPreloading:(BOOL)preloading;
- (void)_handleSegmentationResult:(id)result forAssetUUID:(id)d loadingError:(id)error;
- (void)cancel;
- (void)px_finishIfPossible;
- (void)px_start;
@end

@implementation PUWallpaperShuffleSegmentationLoadingOperation

- (void)px_finishIfPossible
{
  v14 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E69BDF28] freeResources];
  segmentationItem = [(PUWallpaperShuffleSegmentationLoadingOperation *)self segmentationItem];
  if (segmentationItem || ([(PUWallpaperShuffleSegmentationLoadingOperation *)self error], (segmentationItem = objc_claimAutoreleasedReturnValue()) != 0))
  {
    currentHandler = segmentationItem;
LABEL_4:

    goto LABEL_5;
  }

  if (([(PUWallpaperShuffleSegmentationLoadingOperation *)self isCancelled]& 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUWallpaperShuffleResourceManager.m" lineNumber:757 description:{@"Operation finished, but has invalid output."}];
    goto LABEL_4;
  }

LABEL_5:
  v6 = PLWallpaperGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    posterMedia = [(PUWallpaperShuffleSegmentationLoadingOperation *)self posterMedia];
    assetUUID = [posterMedia assetUUID];
    *buf = 138543618;
    v11 = assetUUID;
    v12 = 1024;
    isCancelled = [(PUWallpaperShuffleSegmentationLoadingOperation *)self isCancelled];
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
  loader = [(PUWallpaperShuffleSegmentationLoadingOperation *)self loader];
  [loader cancel];
}

- (void)_handleSegmentationResult:(id)result forAssetUUID:(id)d loadingError:(id)error
{
  v21 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  dCopy = d;
  errorCopy = error;
  if (resultCopy)
  {
    v11 = PLWallpaperGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      operationType = [(PUWallpaperShuffleSegmentationLoadingOperation *)self operationType];
      v15 = 138543874;
      v16 = operationType;
      v17 = 2114;
      v18 = dCopy;
      v19 = 2114;
      v20 = resultCopy;
      _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_DEFAULT, "Finished %{public}@ segmentation for shuffle asset %{public}@: %{public}@", &v15, 0x20u);
    }

    [(PUWallpaperShuffleSegmentationLoadingOperation *)self setSegmentationItem:resultCopy];
    [(PUWallpaperShuffleSegmentationLoadingOperation *)self setError:0];
  }

  else
  {
    [(PUWallpaperShuffleSegmentationLoadingOperation *)self setError:errorCopy];
    v13 = PLWallpaperGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      operationType2 = [(PUWallpaperShuffleSegmentationLoadingOperation *)self operationType];
      v15 = 138543874;
      v16 = operationType2;
      v17 = 2114;
      v18 = dCopy;
      v19 = 2114;
      v20 = errorCopy;
      _os_log_impl(&dword_1B36F3000, v13, OS_LOG_TYPE_ERROR, "Segmentation %{public}@ failed for shuffle asset %{public}@: %{public}@", &v15, 0x20u);
    }
  }

  [(PUWallpaperShuffleSegmentationLoadingOperation *)self px_finishIfPossible];
}

- (BOOL)tryLoadSegmentationFromDirectory
{
  assetDirectory = [(PUWallpaperShuffleSegmentationLoadingOperation *)self assetDirectory];
  posterMedia = [(PUWallpaperShuffleSegmentationLoadingOperation *)self posterMedia];
  subpath = [posterMedia subpath];
  v6 = [assetDirectory URLByAppendingPathComponent:subpath];

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
  posterMedia = [(PUWallpaperShuffleSegmentationLoadingOperation *)self posterMedia];
  if (!posterMedia)
  {
    [(PUWallpaperShuffleSegmentationLoadingOperation *)self px_finishIfPossible];
  }

  [MEMORY[0x1E69BDF28] ensureResources];
  v4 = PLWallpaperGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    operationType = [(PUWallpaperShuffleSegmentationLoadingOperation *)self operationType];
    posterMedia2 = [(PUWallpaperShuffleSegmentationLoadingOperation *)self posterMedia];
    assetUUID = [posterMedia2 assetUUID];
    *buf = 138543618;
    v29 = operationType;
    v30 = 2114;
    v31 = assetUUID;
    _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEFAULT, "Started %{public}@ segmentation for shuffle asset %{public}@.", buf, 0x16u);
  }

  if ([(PUWallpaperShuffleSegmentationLoadingOperation *)self tryLoadSegmentationFromDirectory])
  {
    [(PUWallpaperShuffleSegmentationLoadingOperation *)self px_finishIfPossible];
  }

  else
  {
    v8 = MEMORY[0x1E6978630];
    assetUUID2 = [posterMedia assetUUID];
    v27 = assetUUID2;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
    photoLibrary = [(PUWallpaperShuffleSegmentationLoadingOperation *)self photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
    v13 = [v8 fetchAssetsWithUUIDs:v10 options:librarySpecificFetchOptions];
    firstObject = [v13 firstObject];

    if (firstObject)
    {
      [(PUWallpaperShuffleSegmentationLoadingOperation *)self setError:0];
      v15 = [objc_alloc(MEMORY[0x1E6978B20]) initWithPhotoAsset:firstObject];
      v16 = [objc_alloc(MEMORY[0x1E69BDF40]) initWithParallaxAsset:v15];
      [v16 setDisableSettlingEffect:1];
      downloadProgressHandler = [(PUWallpaperShuffleSegmentationLoadingOperation *)self downloadProgressHandler];
      [v16 setDownloadProgressHandler:downloadProgressHandler];

      shuffleType = [(PUWallpaperShuffleSegmentationLoadingOperation *)self shuffleType];
      [v16 setDisableSpatialAdaptiveLayout:(shuffleType > 2) | (shuffleType & 1)];
      objc_initWeak(buf, self);
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __58__PUWallpaperShuffleSegmentationLoadingOperation_px_start__block_invoke;
      v24[3] = &unk_1E7B76FF8;
      objc_copyWeak(&v26, buf);
      v25 = firstObject;
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
          assetUUID3 = [posterMedia assetUUID];
          *buf = 138543362;
          v29 = assetUUID3;
          _os_log_impl(&dword_1B36F3000, v19, OS_LOG_TYPE_ERROR, "Failed to fetch asset %{public}@", buf, 0xCu);
        }

        error = [(PUWallpaperShuffleSegmentationLoadingOperation *)self error];
        v22 = error == 0;

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

- (PUWallpaperShuffleSegmentationLoadingOperation)initWithPosterMedia:(id)media assetDirectory:(id)directory photoLibrary:(id)library shuffleType:(int64_t)type supportedEffects:(unint64_t)effects enableSpatialPhoto:(BOOL)photo isPreloading:(BOOL)preloading
{
  mediaCopy = media;
  directoryCopy = directory;
  libraryCopy = library;
  v24.receiver = self;
  v24.super_class = PUWallpaperShuffleSegmentationLoadingOperation;
  v18 = [(PXAsyncOperation *)&v24 init];
  v19 = v18;
  if (v18)
  {
    v18->_shuffleType = type;
    v18->_supportedEffects = effects;
    v18->_enableSpatialPhoto = photo;
    v20 = [mediaCopy copy];
    posterMedia = v19->_posterMedia;
    v19->_posterMedia = v20;

    objc_storeStrong(&v19->_assetDirectory, directory);
    objc_storeStrong(&v19->_photoLibrary, library);
    v19->_isPreloading = preloading;
    if (preloading)
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
@interface PUCameraTransientAssetsMediaProvider
- (BOOL)_requestLivePhotoWithSupplementaryImageSourceIfPossibleWithAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler;
- (PUCameraTransientAssetsMediaProvider)initWithTransientImageManager:(id)manager supplementaryLivePhotoImageSource:(id)source;
- (id)_livePhotoRequestWithID:(int)d;
- (id)_playerItemForVideoURL:(id)l;
- (id)_videoCompositionForAVAsset:(id)asset filterName:(id)name;
- (int)_requestLivePhotoForTransientAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler;
- (int)requestAVAssetForVideo:(id)video options:(id)options resultHandler:(id)handler;
- (int)requestImageDataForAsset:(id)asset options:(id)options resultHandler:(id)handler;
- (int)requestImageForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler;
- (int)requestImageURLForAsset:(id)asset options:(id)options resultHandler:(id)handler;
- (int)requestLivePhotoForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler;
- (int)requestPlayerItemForVideo:(id)video options:(id)options resultHandler:(id)handler;
- (void)_handleDelegateImageRequestResultWithImage:(id)image info:(id)info requestID:(int)d;
- (void)_handleLivePhotoPairedVideoRequestResultURL:(id)l filterName:(id)name stillDisplayTime:(id *)time error:(id)error requestID:(int)d;
- (void)_removeLivePhotoRequestWithID:(int)d;
- (void)_requestAVAssetForVideoURL:(id)l resultHandler:(id)handler;
- (void)_setLivePhotoRequest:(id)request forRequestID:(int)d;
- (void)_updateResultForLivePhotoRequestID:(int)d;
@end

@implementation PUCameraTransientAssetsMediaProvider

- (id)_videoCompositionForAVAsset:(id)asset filterName:(id)name
{
  assetCopy = asset;
  if (name)
  {
    v6 = [MEMORY[0x1E695F648] filterWithName:name];
    v7 = v6;
    if (v6)
    {
      v8 = MEMORY[0x1E6988178];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __79__PUCameraTransientAssetsMediaProvider__videoCompositionForAVAsset_filterName___block_invoke;
      v11[3] = &unk_1E7B76240;
      v12 = v6;
      v9 = [v8 videoCompositionWithAsset:assetCopy applyingCIFiltersWithHandler:v11];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __79__PUCameraTransientAssetsMediaProvider__videoCompositionForAVAsset_filterName___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 sourceImage];
  [*(a1 + 32) setValue:v5 forKey:*MEMORY[0x1E695FAB0]];
  v4 = [*(a1 + 32) valueForKey:*MEMORY[0x1E695FB50]];
  [v3 finishWithImage:v4 context:0];
}

- (id)_playerItemForVideoURL:(id)l
{
  lCopy = l;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__18015;
  v29 = __Block_byref_object_dispose__18016;
  v30 = 0;
  v4 = [MEMORY[0x1E6987E28] assetWithURL:lCopy];
  v5 = [MEMORY[0x1E69C0708] tracksWithMediaType:*MEMORY[0x1E6987608] forAsset:v4];
  firstObject = [v5 firstObject];
  [firstObject nominalFrameRate];
  [MEMORY[0x1E69C0910] defaultSlowMotionRateForNominalFrameRate:?];
  v8 = v7;
  if (v7 >= 1.0)
  {
    v12 = [MEMORY[0x1E69880B0] playerItemWithAsset:v4];
    v13 = v26[5];
    v26[5] = v12;
  }

  else
  {
    v23 = 0uLL;
    v24 = 0;
    if (v4)
    {
      [v4 duration];
    }

    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    v17 = v23;
    *&v18 = v24;
    [MEMORY[0x1E69C0910] defaultSlowMotionTimeRangeForDuration:&v17];
    v9 = objc_alloc(MEMORY[0x1E69C0910]);
    v17 = v20;
    v18 = v21;
    v19 = v22;
    v10 = [v9 initWithSlowMotionTimeRange:&v17 rate:{COERCE_DOUBLE(__PAIR64__(DWORD1(v22), LODWORD(v8)))}];
    v11 = [objc_alloc(MEMORY[0x1E69C08F8]) initWithVideoAsset:v4 videoAdjustments:v10];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __63__PUCameraTransientAssetsMediaProvider__playerItemForVideoURL___block_invoke;
    v16[3] = &unk_1E7B76218;
    v16[4] = &v25;
    [v11 requestPlayerItemWithResultHandler:v16];
  }

  v14 = v26[5];

  _Block_object_dispose(&v25, 8);

  return v14;
}

- (void)_requestAVAssetForVideoURL:(id)l resultHandler:(id)handler
{
  v5 = MEMORY[0x1E6987E28];
  handlerCopy = handler;
  v7 = [v5 assetWithURL:l];
  v8 = [MEMORY[0x1E69C0708] tracksWithMediaType:*MEMORY[0x1E6987608] forAsset:v7];
  firstObject = [v8 firstObject];
  [firstObject nominalFrameRate];
  [MEMORY[0x1E69C0910] defaultSlowMotionRateForNominalFrameRate:?];
  v11 = v10;
  if (v10 >= 1.0)
  {
    v13 = 0;
  }

  else
  {
    v21 = 0uLL;
    v22 = 0;
    if (v7)
    {
      [v7 duration];
    }

    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    v15 = v21;
    *&v16 = v22;
    [MEMORY[0x1E69C0910] defaultSlowMotionTimeRangeForDuration:&v15];
    v12 = objc_alloc(MEMORY[0x1E69C0910]);
    v15 = v18;
    v16 = v19;
    v17 = v20;
    v13 = [v12 initWithSlowMotionTimeRange:&v15 rate:{COERCE_DOUBLE(__PAIR64__(DWORD1(v20), LODWORD(v11)))}];
  }

  v14 = [objc_alloc(MEMORY[0x1E69C08F8]) initWithVideoAsset:v7 videoAdjustments:v13];
  [v14 requestAVAssetWithResultHandler:handlerCopy];
}

- (void)_removeLivePhotoRequestWithID:(int)d
{
  _livePhotoRequestQueue = [(PUCameraTransientAssetsMediaProvider *)self _livePhotoRequestQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__PUCameraTransientAssetsMediaProvider__removeLivePhotoRequestWithID___block_invoke;
  v6[3] = &unk_1E7B761F0;
  v6[4] = self;
  dCopy = d;
  dispatch_async(_livePhotoRequestQueue, v6);
}

void __70__PUCameraTransientAssetsMediaProvider__removeLivePhotoRequestWithID___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _livePhotoRequestsByRequestID];
  v2 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 40)];
  [v3 removeObjectForKey:v2];
}

- (void)_setLivePhotoRequest:(id)request forRequestID:(int)d
{
  requestCopy = request;
  _livePhotoRequestQueue = [(PUCameraTransientAssetsMediaProvider *)self _livePhotoRequestQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__PUCameraTransientAssetsMediaProvider__setLivePhotoRequest_forRequestID___block_invoke;
  block[3] = &unk_1E7B761C8;
  dCopy = d;
  block[4] = self;
  v10 = requestCopy;
  v8 = requestCopy;
  dispatch_async(_livePhotoRequestQueue, block);
}

void __74__PUCameraTransientAssetsMediaProvider__setLivePhotoRequest_forRequestID___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _livePhotoRequestsByRequestID];
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 48)];
  [v4 setObject:v2 forKeyedSubscript:v3];
}

- (id)_livePhotoRequestWithID:(int)d
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__18015;
  v14 = __Block_byref_object_dispose__18016;
  v15 = 0;
  _livePhotoRequestQueue = [(PUCameraTransientAssetsMediaProvider *)self _livePhotoRequestQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PUCameraTransientAssetsMediaProvider__livePhotoRequestWithID___block_invoke;
  block[3] = &unk_1E7B77160;
  block[4] = self;
  block[5] = &v10;
  dCopy = d;
  dispatch_sync(_livePhotoRequestQueue, block);

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

void __64__PUCameraTransientAssetsMediaProvider__livePhotoRequestWithID___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) _livePhotoRequestsByRequestID];
  v2 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 48)];
  v3 = [v6 objectForKeyedSubscript:v2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)_updateResultForLivePhotoRequestID:(int)d
{
  v3 = *&d;
  v32[1] = *MEMORY[0x1E69E9840];
  v5 = [(PUCameraTransientAssetsMediaProvider *)self _livePhotoRequestWithID:?];
  resultHandler = [v5 resultHandler];
  if ([v5 imageRequestFinished] && objc_msgSend(v5, "videoRequestFinished"))
  {
    image = [v5 image];
    if (image)
    {
      v8 = image;
      videoURL = [v5 videoURL];
      if (videoURL)
      {
        v10 = videoURL;
        stillDisplayTime = [v5 stillDisplayTime];

        if (stillDisplayTime)
        {
          asset = [v5 asset];
          image2 = [v5 image];
          videoURL2 = [v5 videoURL];
          v14 = [MEMORY[0x1E6987E28] assetWithURL:?];
          v29 = 0uLL;
          v30 = 0;
          stillDisplayTime2 = [v5 stillDisplayTime];
          v16 = stillDisplayTime2;
          if (stillDisplayTime2)
          {
            [stillDisplayTime2 CMTimeValue];
          }

          else
          {
            v29 = 0uLL;
            v30 = 0;
          }

          hasPhotoColorAdjustments = [asset hasPhotoColorAdjustments];
          filterName = [v5 filterName];
          v19 = [(PUCameraTransientAssetsMediaProvider *)self _videoCompositionForAVAsset:v14 filterName:filterName];

          v24 = objc_alloc(MEMORY[0x1E69788C8]);
          cGImage = [image2 CGImage];
          imageOrientation = [image2 imageOrientation];
          uuid = [asset uuid];
          v27 = v29;
          v28 = v30;
          v22 = [v24 initWithImage:cGImage uiOrientation:imageOrientation videoAsset:v14 photoTime:&v27 assetUUID:uuid options:hasPhotoColorAdjustments videoComposition:v19];

          (resultHandler)[2](resultHandler, v22, 0);
LABEL_15:

          [(PUCameraTransientAssetsMediaProvider *)self _removeLivePhotoRequestWithID:v3];
          goto LABEL_16;
        }
      }

      else
      {
      }
    }

    error = [v5 error];
    image2 = error;
    if (error)
    {
      v31 = *MEMORY[0x1E6978DF0];
      v32[0] = error;
      asset = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    }

    else
    {
      asset = 0;
    }

    (resultHandler)[2](resultHandler, 0, asset);
    goto LABEL_15;
  }

LABEL_16:
}

- (void)_handleLivePhotoPairedVideoRequestResultURL:(id)l filterName:(id)name stillDisplayTime:(id *)time error:(id)error requestID:(int)d
{
  v7 = *&d;
  v21 = *MEMORY[0x1E69E9840];
  lCopy = l;
  errorCopy = error;
  nameCopy = name;
  v15 = [(PUCameraTransientAssetsMediaProvider *)self _livePhotoRequestWithID:v7];
  v16 = v15;
  if (lCopy)
  {
    [v15 setVideoURL:lCopy];
  }

  else
  {
    v17 = PLOneUpGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v19) = 138412290;
      *(&v19 + 4) = errorCopy;
      _os_log_impl(&dword_1B36F3000, v17, OS_LOG_TYPE_ERROR, "Failed to load video URL for iris placeholder asse. Error: %@", &v19, 0xCu);
    }
  }

  if (time->var2)
  {
    v19 = *&time->var0;
    var3 = time->var3;
    v18 = [MEMORY[0x1E696B098] valueWithCMTime:&v19];
    [v16 setStillDisplayTime:v18];
  }

  else
  {
    v18 = PLOneUpGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v19) = 138412290;
      *(&v19 + 4) = errorCopy;
      _os_log_impl(&dword_1B36F3000, v18, OS_LOG_TYPE_ERROR, "Failed to load still display time for iris placeholder asset. Error: %@", &v19, 0xCu);
    }
  }

  [v16 setFilterName:nameCopy];
  [v16 setError:errorCopy];
  [v16 setVideoRequestFinished:1];
  [(PUCameraTransientAssetsMediaProvider *)self _updateResultForLivePhotoRequestID:v7];
}

- (void)_handleDelegateImageRequestResultWithImage:(id)image info:(id)info requestID:(int)d
{
  v5 = *&d;
  v16 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  infoCopy = info;
  v10 = [(PUCameraTransientAssetsMediaProvider *)self _livePhotoRequestWithID:v5];
  v11 = v10;
  if (imageCopy)
  {
    [v10 setImage:imageCopy];
  }

  else
  {
    v12 = PLOneUpGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = infoCopy;
      _os_log_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_ERROR, "Failed to load image for iris placeholder asset: %@", &v14, 0xCu);
    }
  }

  v13 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E6978DF0]];
  [v11 setError:v13];

  [v11 setImageRequestFinished:1];
  [(PUCameraTransientAssetsMediaProvider *)self _updateResultForLivePhotoRequestID:v5];
}

- (int)_requestLivePhotoForTransientAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler
{
  v32[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  handlerCopy = handler;
  if (handlerCopy)
  {
    _nextRequestId = [(PUCameraTransientAssetsMediaProvider *)self _nextRequestId];
    v12 = assetCopy;
    placeholderImage = [v12 placeholderImage];
    v14 = objc_alloc(MEMORY[0x1E69788C8]);
    cGImage = [placeholderImage CGImage];
    imageOrientation = [placeholderImage imageOrientation];
    uuid = [v12 uuid];
    v29 = *MEMORY[0x1E6960C70];
    v30 = *(MEMORY[0x1E6960C70] + 16);
    v18 = [v14 initWithImage:cGImage uiOrientation:imageOrientation videoAsset:0 photoTime:&v29 assetUUID:uuid options:0 videoComposition:0];

    v31 = *MEMORY[0x1E6978E50];
    v32[0] = MEMORY[0x1E695E118];
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    handlerCopy[2](handlerCopy, v18, v19);

    _transientImageManager = [(PUCameraTransientAssetsMediaProvider *)self _transientImageManager];
    uuid2 = [v12 uuid];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __120__PUCameraTransientAssetsMediaProvider__requestLivePhotoForTransientAsset_targetSize_contentMode_options_resultHandler___block_invoke;
    v25[3] = &unk_1E7B761A0;
    v25[4] = self;
    v26 = placeholderImage;
    v27 = v12;
    v28 = handlerCopy;
    v22 = v12;
    v23 = placeholderImage;
    [_transientImageManager requestPairedVideoURLForUUID:uuid2 resultHandler:v25];
  }

  else
  {
    _nextRequestId = 0;
  }

  return _nextRequestId;
}

void __120__PUCameraTransientAssetsMediaProvider__requestLivePhotoForTransientAsset_targetSize_contentMode_options_resultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v23 = 0uLL;
  v24 = 0;
  v7 = [v6 objectForKeyedSubscript:@"PUTransientImageManagerInfoKeyStillDisplayTime"];
  v8 = v7;
  if (v7)
  {
    [v7 CMTimeValue];
  }

  else
  {
    v23 = 0uLL;
    v24 = 0;
  }

  if (v5 && (BYTE12(v23) & 1) != 0)
  {
    v12 = [MEMORY[0x1E6987E28] assetWithURL:v5];
    v27 = *MEMORY[0x1E6978E50];
    v28[0] = MEMORY[0x1E695E110];
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v14 = *(a1 + 32);
    v15 = [v6 objectForKeyedSubscript:@"PUTransientImageManagerInfoKeyFilterName"];
    v10 = [v14 _videoCompositionForAVAsset:v12 filterName:v15];

    v16 = objc_alloc(MEMORY[0x1E69788C8]);
    v17 = [*(a1 + 40) CGImage];
    v18 = [*(a1 + 40) imageOrientation];
    v19 = [*(a1 + 48) uuid];
    v21 = v23;
    v22 = v24;
    v20 = [v16 initWithImage:v17 uiOrientation:v18 videoAsset:v12 photoTime:&v21 assetUUID:v19 options:0 videoComposition:v10];
  }

  else
  {
    v9 = [v6 objectForKeyedSubscript:@"PUTransientImageManagerInfoKeyError"];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PUMediaProviderErrorDomain" code:-1 userInfo:0];
    }

    v19 = v11;
    v25 = *MEMORY[0x1E6978DF0];
    v26 = v11;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v20 = 0;
    v12 = 0;
  }

  (*(*(a1 + 56) + 16))();
}

- (BOOL)_requestLivePhotoWithSupplementaryImageSourceIfPossibleWithAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler
{
  height = size.height;
  width = size.width;
  v37 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  optionsCopy = options;
  handlerCopy = handler;
  _nextRequestId = [(PUCameraTransientAssetsMediaProvider *)self _nextRequestId];
  supplementaryLivePhotoImageSource = [(PUCameraTransientAssetsMediaProvider *)self supplementaryLivePhotoImageSource];
  v16 = [[PUCameraPlaceholderLivePhotoRequest alloc] initWithAsset:assetCopy resultHandler:handlerCopy];
  [(PUCameraTransientAssetsMediaProvider *)self _setLivePhotoRequest:v16 forRequestID:_nextRequestId];
  v17 = objc_alloc_init(MEMORY[0x1E6978868]);
  [v17 setNetworkAccessAllowed:{objc_msgSend(optionsCopy, "isNetworkAccessAllowed")}];
  [v17 setDeliveryMode:1];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __150__PUCameraTransientAssetsMediaProvider__requestLivePhotoWithSupplementaryImageSourceIfPossibleWithAsset_targetSize_contentMode_options_resultHandler___block_invoke;
  aBlock[3] = &unk_1E7B76150;
  objc_copyWeak(&v30, &location);
  v31 = _nextRequestId;
  v18 = _Block_copy(aBlock);
  if (supplementaryLivePhotoImageSource && ((supplementaryLivePhotoImageSource)[2](supplementaryLivePhotoImageSource, assetCopy, mode, v17, v18, width, height) & 1) != 0)
  {
    _transientImageManager = [(PUCameraTransientAssetsMediaProvider *)self _transientImageManager];
    uuid = [assetCopy uuid];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __150__PUCameraTransientAssetsMediaProvider__requestLivePhotoWithSupplementaryImageSourceIfPossibleWithAsset_targetSize_contentMode_options_resultHandler___block_invoke_206;
    v26[3] = &unk_1E7B76178;
    objc_copyWeak(&v27, &location);
    v28 = _nextRequestId;
    [_transientImageManager requestPairedVideoURLForUUID:uuid resultHandler:v26];
    objc_destroyWeak(&v27);

    v21 = 1;
  }

  else
  {
    v22 = PLOneUpGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy = self;
      v35 = 2112;
      v36 = assetCopy;
      _os_log_impl(&dword_1B36F3000, v22, OS_LOG_TYPE_ERROR, "%@ cannot provide a live photo for iris placeholder asset %@ because its supplementary source cannot provide an image.", buf, 0x16u);
    }

    [(PUCameraPlaceholderLivePhotoRequest *)v16 setImageRequestFinished:1];
    [(PUCameraTransientAssetsMediaProvider *)self _updateResultForLivePhotoRequestID:_nextRequestId];
    v21 = 0;
  }

  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);

  return v21;
}

void __150__PUCameraTransientAssetsMediaProvider__requestLivePhotoWithSupplementaryImageSourceIfPossibleWithAsset_targetSize_contentMode_options_resultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_copyWeak(&v9, (a1 + 32));
  v7 = v5;
  v8 = v6;
  v10 = *(a1 + 40);
  px_dispatch_on_main_queue();

  objc_destroyWeak(&v9);
}

void __150__PUCameraTransientAssetsMediaProvider__requestLivePhotoWithSupplementaryImageSourceIfPossibleWithAsset_targetSize_contentMode_options_resultHandler___block_invoke_206(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_copyWeak(&v9, (a1 + 32));
  v7 = v5;
  v8 = v6;
  v10 = *(a1 + 40);
  px_dispatch_on_main_queue();

  objc_destroyWeak(&v9);
}

void __150__PUCameraTransientAssetsMediaProvider__requestLivePhotoWithSupplementaryImageSourceIfPossibleWithAsset_targetSize_contentMode_options_resultHandler___block_invoke_2_207(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) objectForKeyedSubscript:@"PUTransientImageManagerInfoKeyFilterName"];
  v5 = [*(a1 + 40) objectForKeyedSubscript:@"PUTransientImageManagerInfoKeyStillDisplayTime"];
  v6 = v5;
  if (v5)
  {
    [v5 CMTimeValue];
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  v7 = [*(a1 + 40) objectForKeyedSubscript:@"PUTransientImageManagerInfoKeyError"];
  [WeakRetained _handleLivePhotoPairedVideoRequestResultURL:v3 filterName:v4 stillDisplayTime:v8 error:v7 requestID:*(a1 + 56)];
}

void __150__PUCameraTransientAssetsMediaProvider__requestLivePhotoWithSupplementaryImageSourceIfPossibleWithAsset_targetSize_contentMode_options_resultHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleDelegateImageRequestResultWithImage:*(a1 + 32) info:*(a1 + 40) requestID:*(a1 + 56)];
}

- (int)requestLivePhotoForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler
{
  height = size.height;
  width = size.width;
  assetCopy = asset;
  optionsCopy = options;
  handlerCopy = handler;
  if ([(PUCameraTransientAssetsMediaProvider *)self _requestLivePhotoWithSupplementaryImageSourceIfPossibleWithAsset:assetCopy targetSize:mode contentMode:optionsCopy options:handlerCopy resultHandler:width, height]|| (objc_opt_respondsToSelector() & 1) == 0)
  {
    height = 0;
  }

  else
  {
    height = [(PUCameraTransientAssetsMediaProvider *)self _requestLivePhotoForTransientAsset:assetCopy targetSize:mode contentMode:optionsCopy options:handlerCopy resultHandler:width, height];
  }

  return height;
}

- (int)requestAVAssetForVideo:(id)video options:(id)options resultHandler:(id)handler
{
  videoCopy = video;
  optionsCopy = options;
  handlerCopy = handler;
  mediaType = [videoCopy mediaType];
  if ([videoCopy canPlayPhotoIris])
  {
    isPhotoIrisPlaceholder = 1;
  }

  else
  {
    isPhotoIrisPlaceholder = [videoCopy isPhotoIrisPlaceholder];
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__18015;
  v32 = __Block_byref_object_dispose__18016;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__18015;
  v26 = __Block_byref_object_dispose__18016;
  v27 = 0;
  if (mediaType == 2)
  {
    _transientImageManager = videoCopy;
    persistenceURL = [_transientImageManager persistenceURL];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __85__PUCameraTransientAssetsMediaProvider_requestAVAssetForVideo_options_resultHandler___block_invoke;
    v21[3] = &unk_1E7B760D8;
    v21[4] = &v28;
    v21[5] = &v22;
    [(PUCameraTransientAssetsMediaProvider *)self _requestAVAssetForVideoURL:persistenceURL resultHandler:v21];
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v29[5], v23[5], 0);
    }

    _nextRequestId = 0;
  }

  else
  {
    if (!isPhotoIrisPlaceholder)
    {
      _nextRequestId = 0;
      goto LABEL_12;
    }

    _transientImageManager = [(PUCameraTransientAssetsMediaProvider *)self _transientImageManager];
    persistenceURL = [videoCopy uuid];
    _nextRequestId = [(PUCameraTransientAssetsMediaProvider *)self _nextRequestId];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __85__PUCameraTransientAssetsMediaProvider_requestAVAssetForVideo_options_resultHandler___block_invoke_2;
    v17[3] = &unk_1E7B76100;
    v17[4] = self;
    v19 = &v28;
    v20 = &v22;
    v18 = handlerCopy;
    [_transientImageManager requestPairedVideoURLForUUID:persistenceURL resultHandler:v17];
  }

LABEL_12:
  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(&v28, 8);
  return _nextRequestId;
}

void __85__PUCameraTransientAssetsMediaProvider_requestAVAssetForVideo_options_resultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void __85__PUCameraTransientAssetsMediaProvider_requestAVAssetForVideo_options_resultHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v20 = 0uLL;
  v21 = 0;
  v7 = [v6 objectForKeyedSubscript:@"PUTransientImageManagerInfoKeyStillDisplayTime"];
  v8 = v7;
  if (v7)
  {
    [v7 CMTimeValue];
  }

  else
  {
    v20 = 0uLL;
    v21 = 0;
  }

  if (v5 && (BYTE12(v20) & 1) != 0)
  {
    v12 = *(a1 + 32);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __85__PUCameraTransientAssetsMediaProvider_requestAVAssetForVideo_options_resultHandler___block_invoke_3;
    v18[3] = &unk_1E7B760D8;
    v19 = *(a1 + 48);
    [v12 _requestAVAssetForVideoURL:v5 resultHandler:v18];
    v24 = @"PUMediaProviderStillDisplayTimeKey";
    v16 = v20;
    v17 = v21;
    v10 = [MEMORY[0x1E696B098] valueWithCMTime:&v16];
    v25[0] = v10;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  }

  else
  {
    v9 = [v6 objectForKeyedSubscript:@"PUTransientImageManagerInfoKeyError"];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PUMediaProviderErrorDomain" code:-1 userInfo:0];
    }

    v14 = v11;
    v22 = *MEMORY[0x1E6978DF0];
    v23 = v11;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  }

  v15 = *(a1 + 40);
  if (v15)
  {
    (*(v15 + 16))(v15, *(*(*(a1 + 48) + 8) + 40), *(*(*(a1 + 56) + 8) + 40), v13);
  }
}

void __85__PUCameraTransientAssetsMediaProvider_requestAVAssetForVideo_options_resultHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (int)requestPlayerItemForVideo:(id)video options:(id)options resultHandler:(id)handler
{
  videoCopy = video;
  handlerCopy = handler;
  mediaType = [videoCopy mediaType];
  if (([videoCopy canPlayPhotoIris] & 1) == 0)
  {
    isPhotoIrisPlaceholder = [videoCopy isPhotoIrisPlaceholder];
    if (mediaType != 2)
    {
      if (!isPhotoIrisPlaceholder)
      {
        _nextRequestId = 0;
        goto LABEL_11;
      }

      goto LABEL_9;
    }

LABEL_5:
    persistenceURL = [videoCopy persistenceURL];
    _transientImageManager = [(PUCameraTransientAssetsMediaProvider *)self _playerItemForVideoURL:persistenceURL];
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, _transientImageManager, 0);
    }

    _nextRequestId = 0;
    goto LABEL_10;
  }

  if (mediaType == 2)
  {
    goto LABEL_5;
  }

LABEL_9:
  _transientImageManager = [(PUCameraTransientAssetsMediaProvider *)self _transientImageManager];
  uuid = [videoCopy uuid];
  _nextRequestId = [(PUCameraTransientAssetsMediaProvider *)self _nextRequestId];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __88__PUCameraTransientAssetsMediaProvider_requestPlayerItemForVideo_options_resultHandler___block_invoke;
  v16[3] = &unk_1E7B7F898;
  v17 = handlerCopy;
  [_transientImageManager requestPairedVideoURLForUUID:uuid resultHandler:v16];

LABEL_10:
LABEL_11:

  return _nextRequestId;
}

void __88__PUCameraTransientAssetsMediaProvider_requestPlayerItemForVideo_options_resultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v18 = 0uLL;
  v19 = 0;
  v7 = [v6 objectForKeyedSubscript:@"PUTransientImageManagerInfoKeyStillDisplayTime"];
  v8 = v7;
  if (v7)
  {
    [v7 CMTimeValue];
  }

  else
  {
    v18 = 0uLL;
    v19 = 0;
  }

  if (v5 && (BYTE12(v18) & 1) != 0)
  {
    v10 = [MEMORY[0x1E6987E28] assetWithURL:v5];
    v12 = [MEMORY[0x1E69880B0] playerItemWithAsset:v10];
    v22 = @"PUMediaProviderStillDisplayTimeKey";
    v16 = v18;
    v17 = v19;
    v13 = [MEMORY[0x1E696B098] valueWithCMTime:&v16];
    v23[0] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  }

  else
  {
    v9 = [v6 objectForKeyedSubscript:@"PUTransientImageManagerInfoKeyError"];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PUMediaProviderErrorDomain" code:-1 userInfo:0];
    }

    v13 = v11;
    v20 = *MEMORY[0x1E6978DF0];
    v21 = v11;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v12 = 0;
  }

  v15 = *(a1 + 32);
  if (v15)
  {
    (*(v15 + 16))(v15, v12, v14);
  }
}

- (int)requestImageURLForAsset:(id)asset options:(id)options resultHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0, 0, options);
  }

  return 0;
}

- (int)requestImageDataForAsset:(id)asset options:(id)options resultHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0, 0, 0, 0);
  }

  return 0;
}

- (int)requestImageForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler
{
  width = size.width;
  assetCopy = asset;
  optionsCopy = options;
  handlerCopy = handler;
  v14 = objc_opt_respondsToSelector();
  if (handlerCopy && (v14 & 1) != 0)
  {
    v15 = assetCopy;
    placeholderImage = [v15 placeholderImage];
    if ([v15 mediaType] != 2 || (objc_msgSend(placeholderImage, "size"), width <= v17) || (v18 = objc_msgSend(optionsCopy, "deliveryMode"), videoFrameGeneratorQueue = self->_videoFrameGeneratorQueue, v21[0] = MEMORY[0x1E69E9820], v21[1] = 3221225472, v21[2] = __106__PUCameraTransientAssetsMediaProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke, v21[3] = &unk_1E7B80B48, v22 = v15, v23 = handlerCopy, dispatch_async(videoFrameGeneratorQueue, v21), v23, v22, v18 != 1))
    {
      if (placeholderImage)
      {
        handlerCopy[2](handlerCopy, placeholderImage, 0);
      }
    }
  }

  return 0;
}

void __106__PUCameraTransientAssetsMediaProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) persistenceURL];
  v3 = [objc_alloc(MEMORY[0x1E6988168]) initWithURL:v2 options:0];
  v4 = [objc_alloc(MEMORY[0x1E6987E68]) initWithAsset:v3];
  [v4 setAppliesPreferredTrackTransform:1];
  v14 = 0;
  *buf = *MEMORY[0x1E6960CC0];
  *&buf[16] = *(MEMORY[0x1E6960CC0] + 16);
  v5 = [MEMORY[0x1E69C0708] copyCGImageFromImageGenerator:v4 atTime:buf actualTime:0 error:&v14];
  v6 = v14;
  if (v5)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:v5];
    CGImageRelease(v5);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __106__PUCameraTransientAssetsMediaProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke_2;
    block[3] = &unk_1E7B80B48;
    v8 = *(a1 + 40);
    v12 = v7;
    v13 = v8;
    v9 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v9 = PLCameraGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      *buf = 138412802;
      *&buf[4] = v3;
      *&buf[12] = 2112;
      *&buf[14] = v10;
      *&buf[22] = 2112;
      v16 = v6;
      _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_ERROR, "Unable to generate image from video asset %@ for transient asset %@. Error: %@", buf, 0x20u);
    }
  }
}

- (PUCameraTransientAssetsMediaProvider)initWithTransientImageManager:(id)manager supplementaryLivePhotoImageSource:(id)source
{
  managerCopy = manager;
  sourceCopy = source;
  v20.receiver = self;
  v20.super_class = PUCameraTransientAssetsMediaProvider;
  v9 = [(PUCameraTransientAssetsMediaProvider *)&v20 init];
  if (v9)
  {
    v10 = [sourceCopy copy];
    supplementaryLivePhotoImageSource = v9->_supplementaryLivePhotoImageSource;
    v9->_supplementaryLivePhotoImageSource = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    livePhotoRequestsByRequestID = v9->__livePhotoRequestsByRequestID;
    v9->__livePhotoRequestsByRequestID = v12;

    v14 = px_dispatch_queue_create_serial();
    livePhotoRequestQueue = v9->__livePhotoRequestQueue;
    v9->__livePhotoRequestQueue = v14;

    v16 = px_dispatch_queue_create_serial();
    videoFrameGeneratorQueue = v9->_videoFrameGeneratorQueue;
    v9->_videoFrameGeneratorQueue = v16;

    objc_storeStrong(&v9->__transientImageManager, manager);
    atomic_store(0x186A0u, &v9->_latestRequestId);
    v18 = v9;
  }

  return v9;
}

@end
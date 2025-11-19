@interface PUCameraTransientAssetsMediaProvider
- (BOOL)_requestLivePhotoWithSupplementaryImageSourceIfPossibleWithAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7;
- (PUCameraTransientAssetsMediaProvider)initWithTransientImageManager:(id)a3 supplementaryLivePhotoImageSource:(id)a4;
- (id)_livePhotoRequestWithID:(int)a3;
- (id)_playerItemForVideoURL:(id)a3;
- (id)_videoCompositionForAVAsset:(id)a3 filterName:(id)a4;
- (int)_requestLivePhotoForTransientAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7;
- (int)requestAVAssetForVideo:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int)requestImageDataForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int)requestImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7;
- (int)requestImageURLForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int)requestLivePhotoForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7;
- (int)requestPlayerItemForVideo:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (void)_handleDelegateImageRequestResultWithImage:(id)a3 info:(id)a4 requestID:(int)a5;
- (void)_handleLivePhotoPairedVideoRequestResultURL:(id)a3 filterName:(id)a4 stillDisplayTime:(id *)a5 error:(id)a6 requestID:(int)a7;
- (void)_removeLivePhotoRequestWithID:(int)a3;
- (void)_requestAVAssetForVideoURL:(id)a3 resultHandler:(id)a4;
- (void)_setLivePhotoRequest:(id)a3 forRequestID:(int)a4;
- (void)_updateResultForLivePhotoRequestID:(int)a3;
@end

@implementation PUCameraTransientAssetsMediaProvider

- (id)_videoCompositionForAVAsset:(id)a3 filterName:(id)a4
{
  v5 = a3;
  if (a4)
  {
    v6 = [MEMORY[0x1E695F648] filterWithName:a4];
    v7 = v6;
    if (v6)
    {
      v8 = MEMORY[0x1E6988178];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __79__PUCameraTransientAssetsMediaProvider__videoCompositionForAVAsset_filterName___block_invoke;
      v11[3] = &unk_1E7B76240;
      v12 = v6;
      v9 = [v8 videoCompositionWithAsset:v5 applyingCIFiltersWithHandler:v11];
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

- (id)_playerItemForVideoURL:(id)a3
{
  v3 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__18015;
  v29 = __Block_byref_object_dispose__18016;
  v30 = 0;
  v4 = [MEMORY[0x1E6987E28] assetWithURL:v3];
  v5 = [MEMORY[0x1E69C0708] tracksWithMediaType:*MEMORY[0x1E6987608] forAsset:v4];
  v6 = [v5 firstObject];
  [v6 nominalFrameRate];
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

- (void)_requestAVAssetForVideoURL:(id)a3 resultHandler:(id)a4
{
  v5 = MEMORY[0x1E6987E28];
  v6 = a4;
  v7 = [v5 assetWithURL:a3];
  v8 = [MEMORY[0x1E69C0708] tracksWithMediaType:*MEMORY[0x1E6987608] forAsset:v7];
  v9 = [v8 firstObject];
  [v9 nominalFrameRate];
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
  [v14 requestAVAssetWithResultHandler:v6];
}

- (void)_removeLivePhotoRequestWithID:(int)a3
{
  v5 = [(PUCameraTransientAssetsMediaProvider *)self _livePhotoRequestQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__PUCameraTransientAssetsMediaProvider__removeLivePhotoRequestWithID___block_invoke;
  v6[3] = &unk_1E7B761F0;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

void __70__PUCameraTransientAssetsMediaProvider__removeLivePhotoRequestWithID___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _livePhotoRequestsByRequestID];
  v2 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 40)];
  [v3 removeObjectForKey:v2];
}

- (void)_setLivePhotoRequest:(id)a3 forRequestID:(int)a4
{
  v6 = a3;
  v7 = [(PUCameraTransientAssetsMediaProvider *)self _livePhotoRequestQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__PUCameraTransientAssetsMediaProvider__setLivePhotoRequest_forRequestID___block_invoke;
  block[3] = &unk_1E7B761C8;
  v11 = a4;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

void __74__PUCameraTransientAssetsMediaProvider__setLivePhotoRequest_forRequestID___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _livePhotoRequestsByRequestID];
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 48)];
  [v4 setObject:v2 forKeyedSubscript:v3];
}

- (id)_livePhotoRequestWithID:(int)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__18015;
  v14 = __Block_byref_object_dispose__18016;
  v15 = 0;
  v5 = [(PUCameraTransientAssetsMediaProvider *)self _livePhotoRequestQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PUCameraTransientAssetsMediaProvider__livePhotoRequestWithID___block_invoke;
  block[3] = &unk_1E7B77160;
  block[4] = self;
  block[5] = &v10;
  v9 = a3;
  dispatch_sync(v5, block);

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

- (void)_updateResultForLivePhotoRequestID:(int)a3
{
  v3 = *&a3;
  v32[1] = *MEMORY[0x1E69E9840];
  v5 = [(PUCameraTransientAssetsMediaProvider *)self _livePhotoRequestWithID:?];
  v6 = [v5 resultHandler];
  if ([v5 imageRequestFinished] && objc_msgSend(v5, "videoRequestFinished"))
  {
    v7 = [v5 image];
    if (v7)
    {
      v8 = v7;
      v9 = [v5 videoURL];
      if (v9)
      {
        v10 = v9;
        v11 = [v5 stillDisplayTime];

        if (v11)
        {
          v12 = [v5 asset];
          v13 = [v5 image];
          v26 = [v5 videoURL];
          v14 = [MEMORY[0x1E6987E28] assetWithURL:?];
          v29 = 0uLL;
          v30 = 0;
          v15 = [v5 stillDisplayTime];
          v16 = v15;
          if (v15)
          {
            [v15 CMTimeValue];
          }

          else
          {
            v29 = 0uLL;
            v30 = 0;
          }

          v25 = [v12 hasPhotoColorAdjustments];
          v18 = [v5 filterName];
          v19 = [(PUCameraTransientAssetsMediaProvider *)self _videoCompositionForAVAsset:v14 filterName:v18];

          v24 = objc_alloc(MEMORY[0x1E69788C8]);
          v23 = [v13 CGImage];
          v20 = [v13 imageOrientation];
          v21 = [v12 uuid];
          v27 = v29;
          v28 = v30;
          v22 = [v24 initWithImage:v23 uiOrientation:v20 videoAsset:v14 photoTime:&v27 assetUUID:v21 options:v25 videoComposition:v19];

          (v6)[2](v6, v22, 0);
LABEL_15:

          [(PUCameraTransientAssetsMediaProvider *)self _removeLivePhotoRequestWithID:v3];
          goto LABEL_16;
        }
      }

      else
      {
      }
    }

    v17 = [v5 error];
    v13 = v17;
    if (v17)
    {
      v31 = *MEMORY[0x1E6978DF0];
      v32[0] = v17;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    }

    else
    {
      v12 = 0;
    }

    (v6)[2](v6, 0, v12);
    goto LABEL_15;
  }

LABEL_16:
}

- (void)_handleLivePhotoPairedVideoRequestResultURL:(id)a3 filterName:(id)a4 stillDisplayTime:(id *)a5 error:(id)a6 requestID:(int)a7
{
  v7 = *&a7;
  v21 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a6;
  v14 = a4;
  v15 = [(PUCameraTransientAssetsMediaProvider *)self _livePhotoRequestWithID:v7];
  v16 = v15;
  if (v12)
  {
    [v15 setVideoURL:v12];
  }

  else
  {
    v17 = PLOneUpGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v19) = 138412290;
      *(&v19 + 4) = v13;
      _os_log_impl(&dword_1B36F3000, v17, OS_LOG_TYPE_ERROR, "Failed to load video URL for iris placeholder asse. Error: %@", &v19, 0xCu);
    }
  }

  if (a5->var2)
  {
    v19 = *&a5->var0;
    var3 = a5->var3;
    v18 = [MEMORY[0x1E696B098] valueWithCMTime:&v19];
    [v16 setStillDisplayTime:v18];
  }

  else
  {
    v18 = PLOneUpGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v19) = 138412290;
      *(&v19 + 4) = v13;
      _os_log_impl(&dword_1B36F3000, v18, OS_LOG_TYPE_ERROR, "Failed to load still display time for iris placeholder asset. Error: %@", &v19, 0xCu);
    }
  }

  [v16 setFilterName:v14];
  [v16 setError:v13];
  [v16 setVideoRequestFinished:1];
  [(PUCameraTransientAssetsMediaProvider *)self _updateResultForLivePhotoRequestID:v7];
}

- (void)_handleDelegateImageRequestResultWithImage:(id)a3 info:(id)a4 requestID:(int)a5
{
  v5 = *&a5;
  v16 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(PUCameraTransientAssetsMediaProvider *)self _livePhotoRequestWithID:v5];
  v11 = v10;
  if (v8)
  {
    [v10 setImage:v8];
  }

  else
  {
    v12 = PLOneUpGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = v9;
      _os_log_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_ERROR, "Failed to load image for iris placeholder asset: %@", &v14, 0xCu);
    }
  }

  v13 = [v9 objectForKeyedSubscript:*MEMORY[0x1E6978DF0]];
  [v11 setError:v13];

  [v11 setImageRequestFinished:1];
  [(PUCameraTransientAssetsMediaProvider *)self _updateResultForLivePhotoRequestID:v5];
}

- (int)_requestLivePhotoForTransientAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7
{
  v32[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a7;
  if (v10)
  {
    v11 = [(PUCameraTransientAssetsMediaProvider *)self _nextRequestId];
    v12 = v9;
    v13 = [v12 placeholderImage];
    v14 = objc_alloc(MEMORY[0x1E69788C8]);
    v15 = [v13 CGImage];
    v16 = [v13 imageOrientation];
    v17 = [v12 uuid];
    v29 = *MEMORY[0x1E6960C70];
    v30 = *(MEMORY[0x1E6960C70] + 16);
    v18 = [v14 initWithImage:v15 uiOrientation:v16 videoAsset:0 photoTime:&v29 assetUUID:v17 options:0 videoComposition:0];

    v31 = *MEMORY[0x1E6978E50];
    v32[0] = MEMORY[0x1E695E118];
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v10[2](v10, v18, v19);

    v20 = [(PUCameraTransientAssetsMediaProvider *)self _transientImageManager];
    v21 = [v12 uuid];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __120__PUCameraTransientAssetsMediaProvider__requestLivePhotoForTransientAsset_targetSize_contentMode_options_resultHandler___block_invoke;
    v25[3] = &unk_1E7B761A0;
    v25[4] = self;
    v26 = v13;
    v27 = v12;
    v28 = v10;
    v22 = v12;
    v23 = v13;
    [v20 requestPairedVideoURLForUUID:v21 resultHandler:v25];
  }

  else
  {
    v11 = 0;
  }

  return v11;
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

- (BOOL)_requestLivePhotoWithSupplementaryImageSourceIfPossibleWithAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7
{
  height = a4.height;
  width = a4.width;
  v37 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v24 = a6;
  v25 = a7;
  v14 = [(PUCameraTransientAssetsMediaProvider *)self _nextRequestId];
  v15 = [(PUCameraTransientAssetsMediaProvider *)self supplementaryLivePhotoImageSource];
  v16 = [[PUCameraPlaceholderLivePhotoRequest alloc] initWithAsset:v13 resultHandler:v25];
  [(PUCameraTransientAssetsMediaProvider *)self _setLivePhotoRequest:v16 forRequestID:v14];
  v17 = objc_alloc_init(MEMORY[0x1E6978868]);
  [v17 setNetworkAccessAllowed:{objc_msgSend(v24, "isNetworkAccessAllowed")}];
  [v17 setDeliveryMode:1];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __150__PUCameraTransientAssetsMediaProvider__requestLivePhotoWithSupplementaryImageSourceIfPossibleWithAsset_targetSize_contentMode_options_resultHandler___block_invoke;
  aBlock[3] = &unk_1E7B76150;
  objc_copyWeak(&v30, &location);
  v31 = v14;
  v18 = _Block_copy(aBlock);
  if (v15 && ((v15)[2](v15, v13, a5, v17, v18, width, height) & 1) != 0)
  {
    v19 = [(PUCameraTransientAssetsMediaProvider *)self _transientImageManager];
    v20 = [v13 uuid];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __150__PUCameraTransientAssetsMediaProvider__requestLivePhotoWithSupplementaryImageSourceIfPossibleWithAsset_targetSize_contentMode_options_resultHandler___block_invoke_206;
    v26[3] = &unk_1E7B76178;
    objc_copyWeak(&v27, &location);
    v28 = v14;
    [v19 requestPairedVideoURLForUUID:v20 resultHandler:v26];
    objc_destroyWeak(&v27);

    v21 = 1;
  }

  else
  {
    v22 = PLOneUpGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v34 = self;
      v35 = 2112;
      v36 = v13;
      _os_log_impl(&dword_1B36F3000, v22, OS_LOG_TYPE_ERROR, "%@ cannot provide a live photo for iris placeholder asset %@ because its supplementary source cannot provide an image.", buf, 0x16u);
    }

    [(PUCameraPlaceholderLivePhotoRequest *)v16 setImageRequestFinished:1];
    [(PUCameraTransientAssetsMediaProvider *)self _updateResultForLivePhotoRequestID:v14];
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

- (int)requestLivePhotoForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7
{
  height = a4.height;
  width = a4.width;
  v13 = a3;
  v14 = a6;
  v15 = a7;
  if ([(PUCameraTransientAssetsMediaProvider *)self _requestLivePhotoWithSupplementaryImageSourceIfPossibleWithAsset:v13 targetSize:a5 contentMode:v14 options:v15 resultHandler:width, height]|| (objc_opt_respondsToSelector() & 1) == 0)
  {
    v16 = 0;
  }

  else
  {
    v16 = [(PUCameraTransientAssetsMediaProvider *)self _requestLivePhotoForTransientAsset:v13 targetSize:a5 contentMode:v14 options:v15 resultHandler:width, height];
  }

  return v16;
}

- (int)requestAVAssetForVideo:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 mediaType];
  if ([v8 canPlayPhotoIris])
  {
    v12 = 1;
  }

  else
  {
    v12 = [v8 isPhotoIrisPlaceholder];
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
  if (v11 == 2)
  {
    v13 = v8;
    v14 = [v13 persistenceURL];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __85__PUCameraTransientAssetsMediaProvider_requestAVAssetForVideo_options_resultHandler___block_invoke;
    v21[3] = &unk_1E7B760D8;
    v21[4] = &v28;
    v21[5] = &v22;
    [(PUCameraTransientAssetsMediaProvider *)self _requestAVAssetForVideoURL:v14 resultHandler:v21];
    if (v10)
    {
      v10[2](v10, v29[5], v23[5], 0);
    }

    v15 = 0;
  }

  else
  {
    if (!v12)
    {
      v15 = 0;
      goto LABEL_12;
    }

    v13 = [(PUCameraTransientAssetsMediaProvider *)self _transientImageManager];
    v14 = [v8 uuid];
    v15 = [(PUCameraTransientAssetsMediaProvider *)self _nextRequestId];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __85__PUCameraTransientAssetsMediaProvider_requestAVAssetForVideo_options_resultHandler___block_invoke_2;
    v17[3] = &unk_1E7B76100;
    v17[4] = self;
    v19 = &v28;
    v20 = &v22;
    v18 = v10;
    [v13 requestPairedVideoURLForUUID:v14 resultHandler:v17];
  }

LABEL_12:
  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(&v28, 8);
  return v15;
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

- (int)requestPlayerItemForVideo:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [v7 mediaType];
  if (([v7 canPlayPhotoIris] & 1) == 0)
  {
    v10 = [v7 isPhotoIrisPlaceholder];
    if (v9 != 2)
    {
      if (!v10)
      {
        v13 = 0;
        goto LABEL_11;
      }

      goto LABEL_9;
    }

LABEL_5:
    v11 = [v7 persistenceURL];
    v12 = [(PUCameraTransientAssetsMediaProvider *)self _playerItemForVideoURL:v11];
    if (v8)
    {
      v8[2](v8, v12, 0);
    }

    v13 = 0;
    goto LABEL_10;
  }

  if (v9 == 2)
  {
    goto LABEL_5;
  }

LABEL_9:
  v12 = [(PUCameraTransientAssetsMediaProvider *)self _transientImageManager];
  v14 = [v7 uuid];
  v13 = [(PUCameraTransientAssetsMediaProvider *)self _nextRequestId];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __88__PUCameraTransientAssetsMediaProvider_requestPlayerItemForVideo_options_resultHandler___block_invoke;
  v16[3] = &unk_1E7B7F898;
  v17 = v8;
  [v12 requestPairedVideoURLForUUID:v14 resultHandler:v16];

LABEL_10:
LABEL_11:

  return v13;
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

- (int)requestImageURLForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  if (a5)
  {
    (*(a5 + 2))(a5, 0, 0, a4);
  }

  return 0;
}

- (int)requestImageDataForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  if (a5)
  {
    (*(a5 + 2))(a5, 0, 0, 0, 0);
  }

  return 0;
}

- (int)requestImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7
{
  width = a4.width;
  v11 = a3;
  v12 = a6;
  v13 = a7;
  v14 = objc_opt_respondsToSelector();
  if (v13 && (v14 & 1) != 0)
  {
    v15 = v11;
    v16 = [v15 placeholderImage];
    if ([v15 mediaType] != 2 || (objc_msgSend(v16, "size"), width <= v17) || (v18 = objc_msgSend(v12, "deliveryMode"), videoFrameGeneratorQueue = self->_videoFrameGeneratorQueue, v21[0] = MEMORY[0x1E69E9820], v21[1] = 3221225472, v21[2] = __106__PUCameraTransientAssetsMediaProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke, v21[3] = &unk_1E7B80B48, v22 = v15, v23 = v13, dispatch_async(videoFrameGeneratorQueue, v21), v23, v22, v18 != 1))
    {
      if (v16)
      {
        v13[2](v13, v16, 0);
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

- (PUCameraTransientAssetsMediaProvider)initWithTransientImageManager:(id)a3 supplementaryLivePhotoImageSource:(id)a4
{
  v7 = a3;
  v8 = a4;
  v20.receiver = self;
  v20.super_class = PUCameraTransientAssetsMediaProvider;
  v9 = [(PUCameraTransientAssetsMediaProvider *)&v20 init];
  if (v9)
  {
    v10 = [v8 copy];
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

    objc_storeStrong(&v9->__transientImageManager, a3);
    atomic_store(0x186A0u, &v9->_latestRequestId);
    v18 = v9;
  }

  return v9;
}

@end
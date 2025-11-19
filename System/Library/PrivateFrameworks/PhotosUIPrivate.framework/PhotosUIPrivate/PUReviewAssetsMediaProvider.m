@interface PUReviewAssetsMediaProvider
- (PUReviewAssetsMediaProvider)init;
- (id)_resizeImageAtURL:(id)a3 imageUTI:(id)a4 targetSize:(CGSize)a5 bakeInOrientation:(BOOL)a6 error:(id *)a7;
- (int)_requestAdjustmentDataForAsset:(id)a3 resultHandler:(id)a4;
- (int)requestAVAssetForVideo:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int)requestAnimatedImageForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int)requestAsynchronousVideoURLForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int)requestImageDataForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int)requestImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7;
- (int)requestImageURLForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int)requestLivePhotoForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7;
- (int)requestPlayerItemForVideo:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (void)cancelImageRequest:(int)a3;
@end

@implementation PUReviewAssetsMediaProvider

- (void)cancelImageRequest:(int)a3
{
  v3 = *&a3;
  v7 = [(PUReviewAssetsMediaProvider *)self _mediaRequests];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  v5 = [v7 objectForKey:v4];

  if (v5)
  {
    [v5 cancelRequest];
    v6 = [MEMORY[0x1E696AD98] numberWithInt:v3];
    [v7 removeObjectForKey:v6];
  }
}

- (int)requestAnimatedImageForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v33[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"PUReviewAssetsMediaProvider.m" lineNumber:663 description:@"PUReviewAssetsMediaProvider only accepts PUReviewAssets"];
  }

  v12 = [(PUReviewAssetsMediaProvider *)self _incrementRequestIdentifier];
  v32 = *MEMORY[0x1E6978E70];
  v13 = [MEMORY[0x1E696AD98] numberWithInt:v12];
  v33[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];

  v15 = v9;
  v16 = [v15 providedImageURLForImageVersion:{objc_msgSend(v10, "version")}];
  v17 = [(PUReviewAssetsMediaProvider *)self _mediaRequests];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v10;
  }

  else
  {
    v18 = objc_alloc_init(MEMORY[0x1E6978620]);
    [v18 setAllowPreCaching:0];
  }

  [v18 setUseSharedImageDecoding:0];
  v19 = MEMORY[0x1E6978618];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __82__PUReviewAssetsMediaProvider_requestAnimatedImageForAsset_options_resultHandler___block_invoke;
  v27[3] = &unk_1E7B7D808;
  v31 = v12;
  v29 = v14;
  v30 = v11;
  v28 = v17;
  v20 = v14;
  v21 = v11;
  v22 = v17;
  v23 = -[PUReviewAssetAnimatedImageMediaRequest initWithAnimatedImageRequestID:]([PUReviewAssetAnimatedImageMediaRequest alloc], "initWithAnimatedImageRequestID:", [v19 requestAnimatedImageWithURL:v16 completion:v27]);
  v24 = [MEMORY[0x1E696AD98] numberWithInt:v12];
  [v22 setObject:v23 forKey:v24];

  return v12;
}

void __82__PUReviewAssetsMediaProvider_requestAnimatedImageForAsset_options_resultHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 56)];
  [v3 removeObjectForKey:v4];

  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))(v5, v6, *(a1 + 40));
  }
}

- (int)requestLivePhotoForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7
{
  height = a4.height;
  width = a4.width;
  v14 = a3;
  v15 = a7;
  v16 = a6;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"PUReviewAssetsMediaProvider.m" lineNumber:615 description:@"PUReviewAssetsMediaProvider only accepts PUReviewAssets"];
  }

  v17 = [(PUReviewAssetsMediaProvider *)self _incrementRequestIdentifier];
  v18 = v14;
  v19 = [v18 providedPreviewImage];
  v20 = [v18 providedImageURLForImageVersion:{objc_msgSend(v16, "version")}];
  v21 = [v16 version];

  v22 = [v18 providedVideoURLForImageVersion:v21];
  v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = v23;
  if (v20)
  {
    [v23 addObject:v20];
  }

  if (v22)
  {
    [v24 addObject:v22];
  }

  v25 = [(PUReviewAssetsMediaProvider *)self _mediaRequests];
  v26 = MEMORY[0x1E69788C8];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __101__PUReviewAssetsMediaProvider_requestLivePhotoForAsset_targetSize_contentMode_options_resultHandler___block_invoke;
  v33[3] = &unk_1E7B7D7E0;
  v36 = v17;
  v34 = v25;
  v35 = v15;
  v27 = v15;
  v28 = v25;
  v29 = -[PUReviewAssetLivePhotoMediaRequest initLivePhotoRequestID:]([PUReviewAssetLivePhotoMediaRequest alloc], "initLivePhotoRequestID:", [v26 requestLivePhotoWithResourceFileURLs:v24 placeholderImage:v19 targetSize:a5 contentMode:v33 resultHandler:{width, height}]);
  v30 = [MEMORY[0x1E696AD98] numberWithInt:v17];
  [v28 setObject:v29 forKey:v30];

  return v17;
}

void __101__PUReviewAssetsMediaProvider_requestLivePhotoForAsset_targetSize_contentMode_options_resultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v20 = *MEMORY[0x1E6978E70];
  v6 = MEMORY[0x1E696AD98];
  v7 = *(a1 + 48);
  v8 = a3;
  v9 = [v6 numberWithInt:v7];
  v21[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v11 = [v10 mutableCopy];

  v12 = [v8 objectForKeyedSubscript:*MEMORY[0x1E6978EA8]];
  v13 = *MEMORY[0x1E6978DF0];
  [v11 setValue:v12 forKey:*MEMORY[0x1E6978DF0]];

  v14 = [v8 objectForKeyedSubscript:*MEMORY[0x1E6978EB0]];

  v15 = *MEMORY[0x1E6978E50];
  [v11 setValue:v14 forKey:*MEMORY[0x1E6978E50]];

  v16 = [v11 objectForKeyedSubscript:v13];
  if (v16)
  {
  }

  else
  {
    v18 = [v11 objectForKeyedSubscript:v13];
    if (v18)
    {
      goto LABEL_5;
    }

    v19 = [v11 objectForKeyedSubscript:v15];

    if (v19)
    {
      goto LABEL_6;
    }
  }

  v17 = *(a1 + 32);
  v18 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 48)];
  [v17 removeObjectForKey:v18];
LABEL_5:

LABEL_6:
  (*(*(a1 + 40) + 16))();
}

- (int)requestAsynchronousVideoURLForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v21[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PUReviewAssetsMediaProvider.m" lineNumber:596 description:@"PUReviewAssetsMediaProvider only accepts PUReviewAssets"];
  }

  v12 = [(PUReviewAssetsMediaProvider *)self _incrementRequestIdentifier];
  v20 = *MEMORY[0x1E6978E70];
  v13 = [MEMORY[0x1E696AD98] numberWithInt:v12];
  v21[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];

  v15 = v9;
  v16 = [v11 version];

  v17 = [v15 providedVideoURLForVideoVersion:v16];
  if (v10)
  {
    v10[2](v10, v17, v14);
  }

  return v12;
}

- (int)requestAVAssetForVideo:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v35[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"PUReviewAssetsMediaProvider.m" lineNumber:558 description:@"PUReviewAssetsMediaProvider only accepts PUReviewAssets"];
  }

  v12 = [(PUReviewAssetsMediaProvider *)self _incrementRequestIdentifier];
  v34 = *MEMORY[0x1E6978E70];
  v13 = [MEMORY[0x1E696AD98] numberWithInt:v12];
  v35[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];

  v15 = v9;
  v16 = [v11 version];

  v17 = [v15 providedVideoURLForVideoVersion:v16];
  v18 = [MEMORY[0x1E6988168] assetWithURL:v17];
  v19 = MEMORY[0x1E69C0910];
  v20 = [v15 assetAdjustments];

  v21 = [v19 videoAdjustmentsFromAssetAdjustmentsIfRecognized:v20];

  v22 = [objc_alloc(MEMORY[0x1E69C08F8]) initWithVideoAsset:v18 videoAdjustments:v21];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __76__PUReviewAssetsMediaProvider_requestAVAssetForVideo_options_resultHandler___block_invoke;
  v30[3] = &unk_1E7B80CB0;
  v31 = v22;
  v32 = v14;
  v33 = v10;
  v23 = v10;
  v24 = v14;
  v25 = v22;
  v26 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v30);
  v27 = dispatch_get_global_queue(21, 0);
  dispatch_async(v27, v26);

  return v12;
}

void __76__PUReviewAssetsMediaProvider_requestAVAssetForVideo_options_resultHandler___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __76__PUReviewAssetsMediaProvider_requestAVAssetForVideo_options_resultHandler___block_invoke_2;
  v3[3] = &unk_1E7B7D7B8;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 requestAVAssetWithResultHandler:v3];
}

void __76__PUReviewAssetsMediaProvider_requestAVAssetForVideo_options_resultHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v6 = *(a1 + 32);
    v7 = a5;
    v8 = [v6 mutableCopy];
    v10 = *MEMORY[0x1E6978DF0];
    v11[0] = v7;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [v8 addEntriesFromDictionary:v9];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))(*(a1 + 40), a2, a3, *(a1 + 32));
    v8 = 0;
  }
}

- (int)requestPlayerItemForVideo:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v35[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"PUReviewAssetsMediaProvider.m" lineNumber:516 description:@"PUReviewAssetsMediaProvider only accepts PUReviewAssets"];
  }

  v12 = [(PUReviewAssetsMediaProvider *)self _incrementRequestIdentifier];
  v34 = *MEMORY[0x1E6978E70];
  v13 = [MEMORY[0x1E696AD98] numberWithInt:v12];
  v35[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];

  v15 = v9;
  v16 = [v11 version];

  v17 = [v15 providedVideoURLForVideoVersion:v16];
  v18 = [MEMORY[0x1E6988168] assetWithURL:v17];
  v19 = MEMORY[0x1E69C0910];
  v20 = [v15 assetAdjustments];

  v21 = [v19 videoAdjustmentsFromAssetAdjustmentsIfRecognized:v20];

  v22 = [objc_alloc(MEMORY[0x1E69C08F8]) initWithVideoAsset:v18 videoAdjustments:v21];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __79__PUReviewAssetsMediaProvider_requestPlayerItemForVideo_options_resultHandler___block_invoke;
  v30[3] = &unk_1E7B80CB0;
  v31 = v22;
  v32 = v14;
  v33 = v10;
  v23 = v10;
  v24 = v14;
  v25 = v22;
  v26 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v30);
  v27 = dispatch_get_global_queue(21, 0);
  dispatch_async(v27, v26);

  return v12;
}

void __79__PUReviewAssetsMediaProvider_requestPlayerItemForVideo_options_resultHandler___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __79__PUReviewAssetsMediaProvider_requestPlayerItemForVideo_options_resultHandler___block_invoke_2;
  v3[3] = &unk_1E7B7D7B8;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 requestAVAssetWithResultHandler:v3];
}

void __79__PUReviewAssetsMediaProvider_requestPlayerItemForVideo_options_resultHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (a5)
  {
    v9 = *(a1 + 32);
    v10 = a5;
    v11 = [v9 mutableCopy];
    v13 = *MEMORY[0x1E6978DF0];
    v14[0] = v10;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    [v11 addEntriesFromDictionary:v12];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v11 = [MEMORY[0x1E69880B0] playerItemWithAsset:a2];
    [v11 setAudioMix:v8];
    (*(*(a1 + 40) + 16))();
  }
}

- (int)requestImageURLForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"PUReviewAssetsMediaProvider.m" lineNumber:469 description:@"PUReviewAssetsMediaProvider only accepts PUReviewAssets"];
  }

  v12 = [(PUReviewAssetsMediaProvider *)self _incrementRequestIdentifier];
  v13 = ([v10 isSynchronous] & 1) != 0 || objc_msgSend(v10, "deliveryMode") == 0;
  v14 = v9;
  v15 = [v10 version];
  v16 = [v14 providedImageURLForImageVersion:v15];
  v17 = [v14 exifOrientationForImageVersion:v15];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__PUReviewAssetsMediaProvider_requestImageURLForAsset_options_resultHandler___block_invoke;
  block[3] = &unk_1E7B7D790;
  v28 = v12;
  v29 = v17;
  v26 = v16;
  v27 = v11;
  v18 = v11;
  v19 = v16;
  v20 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  v21 = v20;
  if (v13)
  {
    (*(v20 + 2))(v20);
  }

  else
  {
    v22 = dispatch_get_global_queue(21, 0);
    dispatch_async(v22, v21);
  }

  return v12;
}

void __77__PUReviewAssetsMediaProvider_requestImageURLForAsset_options_resultHandler___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E695DF90]);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 48)];
  v11 = [v2 initWithObjectsAndKeys:{v3, *MEMORY[0x1E6978E70], 0}];

  v4 = *(a1 + 32);
  if (v4)
  {
    [v11 setObject:v4 forKey:*MEMORY[0x1E6978E20]];
    v5 = MEMORY[0x1E6982C40];
    v6 = [*(a1 + 32) pathExtension];
    v7 = [v5 typeWithFilenameExtension:v6 conformingToType:*MEMORY[0x1E6982E30]];

    if (v7)
    {
      v8 = [v7 identifier];
      [v11 setObject:v8 forKey:*MEMORY[0x1E6978E28]];
    }

    v9 = [MEMORY[0x1E696AD98] numberWithInteger:PLImageOrientationFromExifOrientation()];
    [v11 setObject:v9 forKey:*MEMORY[0x1E6978E10]];
  }

  v10 = [v11 copy];
  (*(*(a1 + 40) + 16))();
}

- (int)requestImageDataForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"PUReviewAssetsMediaProvider.m" lineNumber:412 description:@"PUReviewAssetsMediaProvider only accepts PUReviewAssets"];
  }

  v12 = [(PUReviewAssetsMediaProvider *)self _incrementRequestIdentifier];
  v13 = ([v10 isSynchronous] & 1) != 0 || objc_msgSend(v10, "deliveryMode") == 0;
  v14 = v9;
  v15 = [v10 version];
  v16 = [v14 providedImageURLForImageVersion:v15];
  LODWORD(v15) = [v14 exifOrientationForImageVersion:v15];
  v17 = [v10 loadingMode];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __78__PUReviewAssetsMediaProvider_requestImageDataForAsset_options_resultHandler___block_invoke;
  v25[3] = &unk_1E7B7D768;
  v27 = v11;
  v28 = v17;
  v29 = v12;
  v30 = v15;
  v26 = v16;
  v18 = v11;
  v19 = v16;
  v20 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v25);
  v21 = v20;
  if (v13)
  {
    (*(v20 + 2))(v20);
  }

  else
  {
    v22 = dispatch_get_global_queue(21, 0);
    dispatch_async(v22, v21);
  }

  return v12;
}

void __78__PUReviewAssetsMediaProvider_requestImageDataForAsset_options_resultHandler___block_invoke(uint64_t a1)
{
  v20[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v18 = 0;
  v3 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v2 options:0 error:&v18];
  v4 = v18;
  if (v4)
  {
    v19[0] = *MEMORY[0x1E6978E70];
    v5 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 56)];
    v19[1] = *MEMORY[0x1E6978DF0];
    v20[0] = v5;
    v20[1] = v4;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x1E695DF90]);
    v8 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 56)];
    v5 = [v7 initWithObjectsAndKeys:{v8, *MEMORY[0x1E6978E70], 0}];

    if (*(a1 + 48) == 0x10000)
    {
      v9 = *(a1 + 32);
      if (v9)
      {
        [v5 setObject:v9 forKey:*MEMORY[0x1E6978E20]];
      }
    }

    v6 = [v5 copy];
  }

  v10 = v6;

  v11 = *(a1 + 32);
  if (v11)
  {
    v12 = MEMORY[0x1E6982C40];
    v13 = [v11 pathExtension];
    v14 = [v12 typeWithFilenameExtension:v13 conformingToType:*MEMORY[0x1E6982E30]];
  }

  else
  {
    v14 = 0;
  }

  v15 = PLImageOrientationFromExifOrientation();
  v16 = *(a1 + 40);
  v17 = [v14 identifier];
  (*(v16 + 16))(v16, v3, v17, v15, v10);
}

- (id)_resizeImageAtURL:(id)a3 imageUTI:(id)a4 targetSize:(CGSize)a5 bakeInOrientation:(BOOL)a6 error:(id *)a7
{
  v8 = a6;
  height = a5.height;
  width = a5.width;
  v30[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = v13;
  if (v13)
  {
    v29 = *MEMORY[0x1E696E118];
    v30[0] = v13;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  }

  else
  {
    v15 = 0;
  }

  v16 = CGImageSourceCreateWithURL(v12, v15);
  if (v16)
  {
    v17 = v16;
    if (width >= height)
    {
      v18 = width;
    }

    else
    {
      v18 = height;
    }

    v19 = v18;
    v20 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:10];
    v21 = [MEMORY[0x1E696AD98] numberWithInt:v19];
    [v20 setObject:v21 forKeyedSubscript:*MEMORY[0x1E696E100]];

    v22 = *MEMORY[0x1E695E4D0];
    v23 = *MEMORY[0x1E696DFE8];
    [v20 setObject:*MEMORY[0x1E695E4D0] forKeyedSubscript:*MEMORY[0x1E696DFE8]];
    v24 = [MEMORY[0x1E696AD98] numberWithBool:v8];
    [v20 setObject:v24 forKeyedSubscript:*MEMORY[0x1E696E000]];

    [v20 setObject:v22 forKeyedSubscript:v23];
    ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v17, 0, v20);
    if (ThumbnailAtIndex)
    {
      v26 = ThumbnailAtIndex;
      v27 = [MEMORY[0x1E69DCAB8] imageWithCGImage:ThumbnailAtIndex];
      CGImageRelease(v26);
    }

    else
    {
      v27 = 0;
    }

    CFRelease(v17);

    if (!a7)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v27 = 0;
    if (!a7)
    {
      goto LABEL_16;
    }
  }

  if (!v27)
  {
    *a7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PUReviewAssetsMediaProviderErrorDomain" code:-100 userInfo:0];
  }

LABEL_16:

  return v27;
}

- (int)requestImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7
{
  height = a4.height;
  width = a4.width;
  v90[1] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a6;
  v15 = a7;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E696AAA8] currentHandler];
    v60 = v59 = v15;
    [v60 handleFailureInMethod:a2 object:self file:@"PUReviewAssetsMediaProvider.m" lineNumber:178 description:@"PUReviewAssetsMediaProvider only accepts PUReviewAssets"];

    v15 = v59;
  }

  v16 = v13;
  v17 = [v14 version];
  if (v17 != 16)
  {
    v19 = v17;
    v68 = v15;
    v18 = [(PUReviewAssetsMediaProvider *)self _incrementRequestIdentifier];
    v66 = [v14 deliveryMode];
    v20 = [v14 isSynchronous];
    v69 = [v16 providedImageURLForImageVersion:v19];
    v21 = [v16 providedVideoURLForImageVersion:v19];
    v22 = v21;
    if (([v16 playbackStyle] & 0xFFFFFFFFFFFFFFFELL) == 4)
    {
      v67 = (v21 != 0) & (v20 ^ 1);
    }

    else
    {
      v67 = 0;
    }

    v23 = [v16 providedPreviewImage];
    [v23 scale];
    v25 = v24;
    [v23 size];
    v28 = height <= v25 * v27 && width <= v25 * v26;
    if (v23)
    {
      v29 = [v16 assetAdjustments];
      if (v19)
      {
        v30 = 1;
      }

      else
      {
        v30 = v29 == 0;
      }

      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    if ((v28 & v31 & 1) != 0 || !((v69 != 0) | v67 & 1))
    {
      v15 = v68;
      (v68)[2](v68, v23, 0);
      v38 = v22;
LABEL_46:

      goto LABEL_47;
    }

    v65 = v31;
    v89 = *MEMORY[0x1E6978E70];
    v32 = [MEMORY[0x1E696AD98] numberWithInt:v18];
    v90[0] = v32;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v90 forKeys:&v89 count:1];

    v34 = MEMORY[0x1E69C08F0];
    v35 = [v69 pathExtension];
    v36 = [v34 typeWithFilenameExtension:v35 conformingToType:*MEMORY[0x1E6982E30]];

    if (([v36 conformsToType:*MEMORY[0x1E6982E58]] & 1) != 0 || objc_msgSend(v36, "conformsToType:", *MEMORY[0x1E6982E00]))
    {
      v37 = [[PUCAMReviewAssetsFigDecodeItem alloc] initWithImageURL:v69 targetSize:width, height];
    }

    else
    {
      v37 = 0;
    }

    v38 = v22;
    if (v20)
    {
      v39 = v66;
      v40 = v33;
      if (((v66 == 2) & v65) == 0)
      {
        v62 = v33;
        v64 = v37;
        if (v37)
        {
          v41 = v36;
          v42 = [(PLFigPreheatItem *)v37 cachedImage:0];
          v43 = [v33 mutableCopy];
          v44 = 0;
          v15 = v68;
        }

        else
        {
          v41 = v36;
          v51 = [v36 identifier];
          v86 = 0;
          v42 = [(PUReviewAssetsMediaProvider *)self _resizeImageAtURL:v69 imageUTI:v51 targetSize:1 bakeInOrientation:&v86 error:width, height];
          v44 = v86;

          v52 = [v33 mutableCopy];
          v43 = v52;
          v15 = v68;
          if (v44)
          {
            [v52 setObject:v44 forKeyedSubscript:*MEMORY[0x1E6978DF0]];
          }
        }

        (*(v15 + 2))(v15, v42, v43);

        v40 = v62;
        goto LABEL_44;
      }
    }

    else
    {
      v39 = v66;
      v40 = v33;
      if (v66 <= 1)
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __97__PUReviewAssetsMediaProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke;
        aBlock[3] = &unk_1E7B7D6F0;
        v45 = v37;
        v85 = v68;
        v63 = v40;
        v84 = v40;
        v46 = _Block_copy(aBlock);
        v61 = v36;
        if (v45)
        {
          v47 = [(PUReviewAssetsMediaProvider *)self _mediaRequests];
          v48 = [MEMORY[0x1E696AD98] numberWithInt:v18];
          [v47 setObject:v45 forKey:v48];

          v79[0] = MEMORY[0x1E69E9820];
          v79[1] = 3221225472;
          v79[2] = __97__PUReviewAssetsMediaProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke_4;
          v79[3] = &unk_1E7B7D718;
          v82 = v18;
          v80 = v47;
          v81 = v46;
          v49 = v46;
          v50 = v47;
          [(PLFigPreheatItem *)v45 startPreheatRequestWithCompletionHandler:v79];
        }

        else
        {
          v53 = [v14 resizeMode];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __97__PUReviewAssetsMediaProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke_5;
          block[3] = &unk_1E7B7D740;
          v77 = v53 == 2;
          block[4] = self;
          v71 = v69;
          v75 = width;
          v76 = height;
          v72 = v36;
          v74 = v46;
          v78 = v67;
          v73 = v38;
          v50 = v46;
          v54 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
          v55 = dispatch_get_global_queue(21, 0);
          dispatch_async(v55, v54);
        }

        v36 = v61;
        v40 = v63;
        v37 = v45;
      }
    }

    if ((v39 & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      v56 = 0;
    }

    else
    {
      v56 = v65;
    }

    v15 = v68;
    if (v56 != 1)
    {
      goto LABEL_45;
    }

    v64 = v37;
    v41 = v36;
    v42 = [v40 mutableCopy];
    v87 = *MEMORY[0x1E6978E50];
    v88 = MEMORY[0x1E695E118];
    v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
    [v42 addEntriesFromDictionary:v57];

    (v68)[2](v68, v23, v42);
LABEL_44:

    v36 = v41;
    v37 = v64;
LABEL_45:

    goto LABEL_46;
  }

  LODWORD(v18) = [(PUReviewAssetsMediaProvider *)self _requestAdjustmentDataForAsset:v16 resultHandler:v15];
LABEL_47:

  return v18;
}

void __97__PUReviewAssetsMediaProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke(uint64_t a1, void *a2, char a3, void *a4)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if (v7)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __97__PUReviewAssetsMediaProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke_2;
    block[3] = &unk_1E7B80CB0;
    v19 = *(a1 + 40);
    v17 = v7;
    v18 = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);

    v9 = v19;
LABEL_7:

    goto LABEL_8;
  }

  if ((a3 & 1) == 0)
  {
    v10 = [*(a1 + 32) mutableCopy];
    if (v8)
    {
      v20 = *MEMORY[0x1E6978DF0];
      v21[0] = v8;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      [v10 addEntriesFromDictionary:v11];
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __97__PUReviewAssetsMediaProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke_3;
    v13[3] = &unk_1E7B80B48;
    v12 = *(a1 + 40);
    v14 = v10;
    v15 = v12;
    v9 = v10;
    dispatch_async(MEMORY[0x1E69E96A0], v13);

    goto LABEL_7;
  }

LABEL_8:
}

void __97__PUReviewAssetsMediaProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke_4(uint64_t a1, void *a2, char a3)
{
  v5 = 0;
  v8 = a2;
  if (!v8 && (a3 & 1) == 0)
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PUReviewAssetsMediaProviderErrorDomain" code:-99 userInfo:0];
  }

  v6 = *(a1 + 32);
  v7 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 48)];
  [v6 removeObjectForKey:v7];

  (*(*(a1 + 40) + 16))();
}

void __97__PUReviewAssetsMediaProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke_5(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = [*(a1 + 48) identifier];
    v18 = 0;
    v5 = [v2 _resizeImageAtURL:v3 imageUTI:v4 targetSize:1 bakeInOrientation:&v18 error:{*(a1 + 72), *(a1 + 80)}];
    v6 = v18;

    (*(*(a1 + 64) + 16))();
LABEL_3:

    return;
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = MEMORY[0x1E69DCAB8];
    v9 = [v7 path];
    v14 = [v8 imageWithContentsOfFile:v9];

    v10 = *(*(a1 + 64) + 16);
  }

  else
  {
    if (*(a1 + 89) == 1)
    {
      v5 = [MEMORY[0x1E6988168] assetWithURL:*(a1 + 56)];
      v6 = [MEMORY[0x1E6987E68] assetImageGeneratorWithAsset:v5];
      [v6 setAppliesPreferredTrackTransform:1];
      v17 = 0;
      v15 = *MEMORY[0x1E6960CC0];
      v16 = *(MEMORY[0x1E6960CC0] + 16);
      v11 = [MEMORY[0x1E69C0708] copyCGImageFromImageGenerator:v6 atTime:&v15 actualTime:0 error:&v17];
      v12 = v17;
      if (v11)
      {
        v13 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v11];
        (*(*(a1 + 64) + 16))();
        CGImageRelease(v11);
      }

      else
      {
        (*(*(a1 + 64) + 16))();
      }

      goto LABEL_3;
    }

    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PUReviewAssetsMediaProviderErrorDomain" code:-102 userInfo:0];
    v10 = *(*(a1 + 64) + 16);
  }

  v10();
}

- (int)_requestAdjustmentDataForAsset:(id)a3 resultHandler:(id)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [(PUReviewAssetsMediaProvider *)self _incrementRequestIdentifier];
  v9 = [v7 assetAdjustments];

  if (v9)
  {
    v10 = [v9 phAdjustmentData];
    v14[0] = *MEMORY[0x1E6978E70];
    v11 = [MEMORY[0x1E696AD98] numberWithInt:v8];
    v14[1] = *MEMORY[0x1E6978B30];
    v15[0] = v11;
    v15[1] = v10;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
    v6[2](v6, 0, v12);

    v6 = v12;
  }

  else
  {
    v16 = *MEMORY[0x1E6978E70];
    v10 = [MEMORY[0x1E696AD98] numberWithInt:v8];
    v17[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v6[2](v6, 0, v11);
  }

  return v8;
}

- (PUReviewAssetsMediaProvider)init
{
  v9.receiver = self;
  v9.super_class = PUReviewAssetsMediaProvider;
  v2 = [(PUReviewAssetsMediaProvider *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69DCEB0] mainScreen];
    atomic_store(0, &v2->_nextRequestIdentifier);
    [v3 scale];
    v2->__screenScale = v4;
    v5 = [MEMORY[0x1E6978788] mapTable];
    mediaRequests = v2->__mediaRequests;
    v2->__mediaRequests = v5;

    v7 = v2;
  }

  return v2;
}

@end
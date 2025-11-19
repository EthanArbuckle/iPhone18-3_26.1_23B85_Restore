@interface PUFilmstripMediaProvider
- (PUFilmstripMediaProvider)initWithAVAsset:(id)a3 videoComposition:(id)a4;
- (int)requestImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7;
- (void)_deliverPendingResults;
- (void)_deliverPlaceholderImage;
- (void)_deliverResult:(id)a3;
- (void)_didGenerateImage:(id)a3 error:(id)a4 requestedTime:(id *)a5 actualTime:(id *)a6 generatorResult:(int64_t)a7 forResult:(id)a8;
- (void)_generateImageForResult:(id)a3;
- (void)_handleSourceTimeLoadedForAsset:(id)a3 time:(double)a4 targetSize:(CGSize)a5 contentMode:(int64_t)a6 requestNumber:(int64_t)a7;
- (void)cancelAllRequests;
- (void)cancelImageRequest:(int)a3;
- (void)dealloc;
- (void)setDeliversImagesInOrder:(BOOL)a3;
- (void)setPlaceholderImage:(id)a3;
- (void)setTimeTolerance:(double)a3;
@end

@implementation PUFilmstripMediaProvider

- (void)_deliverPlaceholderImage
{
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0x3032000000;
  v3[3] = __Block_byref_object_copy__25428;
  v3[4] = __Block_byref_object_dispose__25429;
  v4 = 0;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __52__PUFilmstripMediaProvider__deliverPlaceholderImage__block_invoke;
  v2[3] = &unk_1E7B800C8;
  v2[4] = self;
  v2[5] = v3;
  [(PUFilmstripMediaProvider *)self _performIvarRead:v2];
  px_dispatch_on_main_queue();
  _Block_object_dispose(v3, 8);
}

uint64_t __52__PUFilmstripMediaProvider__deliverPlaceholderImage__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void __52__PUFilmstripMediaProvider__deliverPlaceholderImage__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) placeholderImage];
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__PUFilmstripMediaProvider__deliverPlaceholderImage__block_invoke_3;
  v5[3] = &unk_1E7B771D8;
  v6 = v2;
  v4 = v2;
  [v3 enumerateKeysAndObjectsUsingBlock:v5];
}

void __52__PUFilmstripMediaProvider__deliverPlaceholderImage__block_invoke_3(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v10[2] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = *MEMORY[0x1E6978E50];
  v9[0] = @"PHImageResultIsPlaceholderKey";
  v9[1] = v5;
  v10[0] = MEMORY[0x1E695E118];
  v10[1] = MEMORY[0x1E695E118];
  v6 = MEMORY[0x1E695DF20];
  v7 = a3;
  v8 = [v6 dictionaryWithObjects:v10 forKeys:v9 count:2];
  (a3)[2](v7, v4, v8);
}

- (void)_deliverResult:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "requestNumber")}];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__286;
  v20 = __Block_byref_object_dispose__287;
  v21 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __43__PUFilmstripMediaProvider__deliverResult___block_invoke;
  v13[3] = &unk_1E7B7FFC0;
  v15 = &v16;
  v13[4] = self;
  v6 = v5;
  v14 = v6;
  [(PUFilmstripMediaProvider *)self _performIvarRead:v13];
  v7 = v17[5];
  if (v7)
  {
    v8 = [v4 image];
    v9 = [v4 resultInfo];
    (*(v7 + 16))(v7, v8, v9);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __43__PUFilmstripMediaProvider__deliverResult___block_invoke_2;
  v11[3] = &unk_1E7B80C38;
  v11[4] = self;
  v10 = v6;
  v12 = v10;
  [(PUFilmstripMediaProvider *)self _performIvarWrite:v11];

  _Block_object_dispose(&v16, 8);
}

void __43__PUFilmstripMediaProvider__deliverResult___block_invoke(void *a1)
{
  v5 = [*(a1[4] + 40) objectForKeyedSubscript:a1[5]];
  v2 = [v5 copy];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_deliverPendingResults
{
  v27 = *MEMORY[0x1E69E9840];
  if ([(PUFilmstripMediaProvider *)self deliversImagesInOrder])
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__25428;
    v24 = __Block_byref_object_dispose__25429;
    v25 = 0;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __50__PUFilmstripMediaProvider__deliverPendingResults__block_invoke;
    v19[3] = &unk_1E7B800C8;
    v19[4] = self;
    v19[5] = &v20;
    [(PUFilmstripMediaProvider *)self _performIvarRead:v19];
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    while (1)
    {
      v4 = [v21[5] firstObject];
      v5 = [v4 isReadyForDelivery];

      if (!v5)
      {
        break;
      }

      v6 = [v21[5] firstObject];
      [(PUFilmstripMediaProvider *)self _deliverResult:v6];
      [v3 addObject:v6];
      [v21[5] removeObjectAtIndex:0];
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __50__PUFilmstripMediaProvider__deliverPendingResults__block_invoke_2;
    v17[3] = &unk_1E7B80C38;
    v17[4] = self;
    v11 = v3;
    v18 = v11;
    [(PUFilmstripMediaProvider *)self _performIvarWrite:v17];

    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__25428;
    v24 = __Block_byref_object_dispose__25429;
    v25 = 0;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __50__PUFilmstripMediaProvider__deliverPendingResults__block_invoke_3;
    v16[3] = &unk_1E7B800C8;
    v16[4] = self;
    v16[5] = &v20;
    [(PUFilmstripMediaProvider *)self _performIvarWrite:v16];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = v21[5];
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v26 count:16];
    if (v8)
    {
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v7);
          }

          [(PUFilmstripMediaProvider *)self _deliverResult:*(*(&v12 + 1) + 8 * v10++), v12];
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v12 objects:v26 count:16];
      }

      while (v8);
    }

    _Block_object_dispose(&v20, 8);
  }
}

uint64_t __50__PUFilmstripMediaProvider__deliverPendingResults__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) mutableCopy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

uint64_t __50__PUFilmstripMediaProvider__deliverPendingResults__block_invoke_3(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isReadyForDelivery == YES"];
  v4 = [v2 filteredArrayUsingPredicate:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(a1 + 32) + 48);
  v8 = *(*(*(a1 + 40) + 8) + 40);

  return [v7 removeObjectsInArray:v8];
}

- (void)_didGenerateImage:(id)a3 error:(id)a4 requestedTime:(id *)a5 actualTime:(id *)a6 generatorResult:(int64_t)a7 forResult:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a8;
  v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v13)
  {
    imageCache = self->__imageCache;
    v18 = [v15 asset];
    [(NSCache *)imageCache setObject:v13 forKey:v18];
  }

  if (a7 == 2)
  {
    [v16 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6978DE8]];
  }

  else if (!v13 || a7 == 1)
  {
    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v19 setObject:@"AVAssetImageGenerator failed to generate an image for the requested time" forKeyedSubscript:*MEMORY[0x1E696A578]];
    if (v14)
    {
      [v19 setObject:v14 forKeyedSubscript:*MEMORY[0x1E696AA08]];
    }

    v20 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PUFilmstripMediaProviderErrorDomain" code:1 userInfo:v19];
    [v16 setObject:v20 forKeyedSubscript:*MEMORY[0x1E6978DF0]];
  }

  [v15 setImage:v13];
  [v15 setResultInfo:v16];
  v21 = *&a6->var0;
  var3 = a6->var3;
  [v15 setActualTime:&v21];
  [v15 setIsReadyForDelivery:1];
  px_dispatch_on_main_queue();
}

- (void)_generateImageForResult:(id)a3
{
  v4 = a3;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __52__PUFilmstripMediaProvider__generateImageForResult___block_invoke;
  v25[3] = &unk_1E7B80C38;
  v25[4] = self;
  v5 = v4;
  v26 = v5;
  [(PUFilmstripMediaProvider *)self _performIvarWrite:v25];
  v6 = objc_autoreleasePoolPush();
  v7 = [(PUFilmstripMediaProvider *)self _imageGenerator];
  v8 = [MEMORY[0x1E69DCEB0] px_mainScreen];
  [v8 scale];
  v10 = v9;

  [v5 targetSize];
  [v7 setMaximumSize:{v10 * v11, v10 * v12}];
  memset(&v24, 0, sizeof(v24));
  v13 = [v5 asset];
  [v13 sourceTime];
  CMTimeMakeWithSeconds(&v24, v14, 600);

  objc_initWeak(&location, self);
  imageGenerationQueue = self->_imageGenerationQueue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __52__PUFilmstripMediaProvider__generateImageForResult___block_invoke_2;
  v18[3] = &unk_1E7B771B0;
  v19 = v7;
  v22 = v24;
  v16 = v7;
  objc_copyWeak(&v21, &location);
  v17 = v5;
  v20 = v17;
  dispatch_async(imageGenerationQueue, v18);

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
  objc_autoreleasePoolPop(v6);
}

uint64_t __52__PUFilmstripMediaProvider__generateImageForResult___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 48) addObject:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 48);

  return [v2 sortUsingSelector:sel_compare_];
}

void __52__PUFilmstripMediaProvider__generateImageForResult___block_invoke_2(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v10 = *(a1 + 56);
  v11 = *(a1 + 72);
  v3 = [MEMORY[0x1E696B098] valueWithCMTime:&v10];
  v12[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__PUFilmstripMediaProvider__generateImageForResult___block_invoke_3;
  v5[3] = &unk_1E7B77188;
  objc_copyWeak(&v7, (a1 + 48));
  v8 = *(a1 + 56);
  v9 = *(a1 + 72);
  v6 = *(a1 + 40);
  [v2 generateCGImagesAsynchronouslyForTimes:v4 completionHandler:v5];

  objc_destroyWeak(&v7);
}

void __52__PUFilmstripMediaProvider__generateImageForResult___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, void *a6)
{
  v10 = a6;
  v11 = objc_autoreleasePoolPush();
  v12 = 0;
  if (a3 && !v10)
  {
    v12 = [MEMORY[0x1E69DCAB8] imageWithCGImage:a3];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v14 = *(a1 + 32);
  v17 = *(a1 + 48);
  v18 = *(a1 + 64);
  v15 = *a4;
  v16 = *(a4 + 2);
  [WeakRetained _didGenerateImage:v12 error:v10 requestedTime:&v17 actualTime:&v15 generatorResult:a5 forResult:v14];

  objc_autoreleasePoolPop(v11);
}

- (void)dealloc
{
  [(AVAssetImageGenerator *)self->__imageGenerator cancelAllCGImageGeneration];
  v3.receiver = self;
  v3.super_class = PUFilmstripMediaProvider;
  [(PUFilmstripMediaProvider *)&v3 dealloc];
}

- (void)cancelAllRequests
{
  [(AVAssetImageGenerator *)self->__imageGenerator cancelAllCGImageGeneration];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45__PUFilmstripMediaProvider_cancelAllRequests__block_invoke;
  v3[3] = &unk_1E7B80DD0;
  v3[4] = self;
  [(PUFilmstripMediaProvider *)self _performIvarWrite:v3];
}

uint64_t __45__PUFilmstripMediaProvider_cancelAllRequests__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 48) removeAllObjects];
  v2 = *(*(a1 + 32) + 40);

  return [v2 removeAllObjects];
}

- (void)cancelImageRequest:(int)a3
{
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = __Block_byref_object_copy__25428;
  v9[4] = __Block_byref_object_dispose__25429;
  v10 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__PUFilmstripMediaProvider_cancelImageRequest___block_invoke;
  v7[3] = &unk_1E7B77160;
  v7[4] = self;
  v7[5] = v9;
  v8 = a3;
  [(PUFilmstripMediaProvider *)self _performIvarRead:v7];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__PUFilmstripMediaProvider_cancelImageRequest___block_invoke_2;
  v5[3] = &unk_1E7B77160;
  v5[4] = self;
  v5[5] = v9;
  v6 = a3;
  [(PUFilmstripMediaProvider *)self _performIvarWrite:v5];
  [(PUFilmstripMediaProvider *)self _deliverPendingResults];
  _Block_object_dispose(v9, 8);
}

void __47__PUFilmstripMediaProvider_cancelImageRequest___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v6 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 48)];
  v3 = [v2 objectForKeyedSubscript:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __47__PUFilmstripMediaProvider_cancelImageRequest___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 48) removeObject:*(*(*(a1 + 40) + 8) + 40)];
  v2 = *(*(a1 + 32) + 40);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 48)];
  [v2 removeObjectForKey:v3];
}

- (void)_handleSourceTimeLoadedForAsset:(id)a3 time:(double)a4 targetSize:(CGSize)a5 contentMode:(int64_t)a6 requestNumber:(int64_t)a7
{
  height = a5.height;
  width = a5.width;
  v12 = a3;
  v13 = objc_alloc_init(PUFilmstripMediaProviderResult);
  [(PUFilmstripMediaProviderResult *)v13 setAsset:v12];

  if (a6 == 1)
  {
    if (width <= height)
    {
      width = 100000.0;
    }

    else
    {
      height = 100000.0;
    }
  }

  [(PUFilmstripMediaProviderResult *)v13 setTargetSize:width, height];
  [(PUFilmstripMediaProviderResult *)v13 setRequestNumber:a7];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __102__PUFilmstripMediaProvider__handleSourceTimeLoadedForAsset_time_targetSize_contentMode_requestNumber___block_invoke;
  v15[3] = &unk_1E7B7F350;
  v16 = v13;
  v17 = a7;
  v15[4] = self;
  v14 = v13;
  [(PUFilmstripMediaProvider *)self _performIvarWrite:v15];
  [(PUFilmstripMediaProvider *)self _generateImageForResult:v14];
}

void __102__PUFilmstripMediaProvider__handleSourceTimeLoadedForAsset_time_targetSize_contentMode_requestNumber___block_invoke(void *a1)
{
  v1 = a1[5];
  v2 = *(a1[4] + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:a1[6]];
  [v2 setObject:v1 forKeyedSubscript:v3];
}

- (int)requestImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7
{
  height = a4.height;
  width = a4.width;
  v33[2] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a6;
  v15 = a7;
  v16 = v15;
  LODWORD(v17) = 0;
  if (v13 && v15)
  {
    if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
    {
      LODWORD(v17) = 0;
    }

    else
    {
      v19 = [(NSCache *)self->__imageCache objectForKey:v13];
      if (v19)
      {
        (v16)[2](v16, v19, 0);
        LODWORD(v17) = 0;
      }

      else
      {
        v20 = [(PUFilmstripMediaProvider *)self placeholderImage];
        if (v20)
        {
          v21 = *MEMORY[0x1E6978E50];
          v32[0] = @"PHImageResultIsPlaceholderKey";
          v32[1] = v21;
          v33[0] = MEMORY[0x1E695E118];
          v33[1] = MEMORY[0x1E695E118];
          v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];
          (v16)[2](v16, v20, v22);
        }

        v23 = [(PUFilmstripMediaProvider *)self _requestNumber];
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __94__PUFilmstripMediaProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke;
        v29[3] = &unk_1E7B7D790;
        v17 = (v23 + 1);
        v29[4] = self;
        v31 = v23 + 1;
        v30 = v16;
        [(PUFilmstripMediaProvider *)self _performIvarWrite:v29];
        [(PUFilmstripMediaProvider *)self _setRequestNumber:v17];
        objc_initWeak(&location, self);
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __94__PUFilmstripMediaProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke_2;
        v25[3] = &unk_1E7B77138;
        objc_copyWeak(v27, &location);
        v26 = v13;
        v27[1] = *&width;
        v27[2] = *&height;
        v27[3] = a5;
        v27[4] = v17;
        [v26 loadSourceTimeWithCompletionHandler:v25];

        objc_destroyWeak(v27);
        objc_destroyWeak(&location);
      }
    }
  }

  return v17;
}

void __94__PUFilmstripMediaProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 40) copy];
  v2 = _Block_copy(v5);
  v3 = *(*(a1 + 32) + 40);
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
  [v3 setObject:v2 forKeyedSubscript:v4];
}

void __94__PUFilmstripMediaProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke_2(uint64_t a1, int a2, void *a3, double a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _handleSourceTimeLoadedForAsset:*(a1 + 32) time:*(a1 + 64) targetSize:*(a1 + 72) contentMode:a4 requestNumber:*(a1 + 48), *(a1 + 56)];
  }

  else
  {
    WeakRetained = PLUIGetLog();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = 138412546;
      v11 = v9;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&dword_1B36F3000, WeakRetained, OS_LOG_TYPE_ERROR, "Failed to load source time for asset: %@. Error: %@", &v10, 0x16u);
    }
  }
}

- (void)setDeliversImagesInOrder:(BOOL)a3
{
  if (self->_deliversImagesInOrder != a3)
  {
    self->_deliversImagesInOrder = a3;
    if (!a3)
    {
      [(PUFilmstripMediaProvider *)self _deliverPendingResults];
    }
  }
}

- (void)setPlaceholderImage:(id)a3
{
  v5 = a3;
  if (self->_placeholderImage != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_placeholderImage, a3);
    [(PUFilmstripMediaProvider *)self _deliverPlaceholderImage];
    v5 = v6;
  }
}

- (void)setTimeTolerance:(double)a3
{
  self->_timeTolerance = a3;
  imageGenerator = self->__imageGenerator;
  v5 = a3 * 0.5;
  CMTimeMakeWithSeconds(&v7, a3 * 0.5, 100);
  [(AVAssetImageGenerator *)imageGenerator setRequestedTimeToleranceAfter:&v7];
  v6 = self->__imageGenerator;
  CMTimeMakeWithSeconds(&v7, v5, 100);
  [(AVAssetImageGenerator *)v6 setRequestedTimeToleranceBefore:&v7];
}

- (PUFilmstripMediaProvider)initWithAVAsset:(id)a3 videoComposition:(id)a4
{
  v6 = a3;
  v7 = a4;
  v34.receiver = self;
  v34.super_class = PUFilmstripMediaProvider;
  v8 = [(PUFilmstripMediaProvider *)&v34 init];
  if (v8)
  {
    if (v6)
    {
      v9 = [objc_alloc(MEMORY[0x1E6987E68]) initWithAsset:v6];
      imageGenerator = v8->__imageGenerator;
      v8->__imageGenerator = v9;

      [(AVAssetImageGenerator *)v8->__imageGenerator setAppliesPreferredTrackTransform:1];
      v11 = v8->__imageGenerator;
      CMTimeMake(&v33, 1, 2);
      [(AVAssetImageGenerator *)v11 setRequestedTimeToleranceAfter:&v33];
      v12 = v8->__imageGenerator;
      CMTimeMake(&v33, 1, 2);
      [(AVAssetImageGenerator *)v12 setRequestedTimeToleranceBefore:&v33];
      [(AVAssetImageGenerator *)v8->__imageGenerator setVideoComposition:v7];
      v13 = [(AVAssetImageGenerator *)v8->__imageGenerator customVideoCompositor];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v15 = [(AVAssetImageGenerator *)v8->__imageGenerator customVideoCompositor];
        [v15 setLabel:@"PUFilmstripMediaProvider"];
      }
    }

    v16 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_attr_make_with_qos_class(v16, QOS_CLASS_USER_INITIATED, 0);

    v18 = dispatch_queue_create("com.apple.PUFilmstripMediaProvider.ivar", v17);
    ivarQueue = v8->_ivarQueue;
    v8->_ivarQueue = v18;

    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_attr_make_with_qos_class(v20, QOS_CLASS_USER_INITIATED, 0);

    v22 = dispatch_queue_create("com.apple.PUFilmstripMediaProvider.imageGeneration", v21);
    imageGenerationQueue = v8->_imageGenerationQueue;
    v8->_imageGenerationQueue = v22;

    v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
    ivarQueue_completionHandlersByRequestNumber = v8->_ivarQueue_completionHandlersByRequestNumber;
    v8->_ivarQueue_completionHandlersByRequestNumber = v24;

    v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
    ivarQueue_resultsByRequestNumber = v8->_ivarQueue_resultsByRequestNumber;
    v8->_ivarQueue_resultsByRequestNumber = v26;

    v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
    ivarQueue_pendingResults = v8->_ivarQueue_pendingResults;
    v8->_ivarQueue_pendingResults = v28;

    v30 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    imageCache = v8->__imageCache;
    v8->__imageCache = v30;
  }

  return v8;
}

@end
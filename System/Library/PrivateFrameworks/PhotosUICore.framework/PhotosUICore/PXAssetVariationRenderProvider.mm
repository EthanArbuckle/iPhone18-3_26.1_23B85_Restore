@interface PXAssetVariationRenderProvider
+ (NSIndexSet)supportedVariationTypes;
+ (id)_renderingLog;
+ (id)sharedOperationQueue;
+ (void)_performSimulatedWorkWithProgress:(id)progress;
- (BOOL)_hasAllResults;
- (CGSize)targetSize;
- (PXAssetVariationRenderProvider)init;
- (PXAssetVariationRenderProvider)initWithEditSourceLoader:(id)loader targetSize:(CGSize)size desiredVariationTypes:(id)types;
- (id)debugDescription;
- (id)progressForVariationType:(int64_t)type;
- (id)renderResultForVariationType:(int64_t)type;
- (void)_handleAnalysisOperationCompleted:(id)completed;
- (void)_handleCachedAnalysisResult:(id)result;
- (void)_handleRenderingOperationCompleted:(id)completed;
- (void)_setError:(id)error;
- (void)_setProgress:(id)progress forVariationType:(int64_t)type;
- (void)_setStatus:(int64_t)status;
- (void)_setStatusDescription:(id)description;
- (void)_updateAnalysisResult;
- (void)_updateCachedAnalysisResult;
- (void)_updateRenders;
- (void)_updateStatus;
- (void)beginRendering;
- (void)cancelRendering;
- (void)dealloc;
- (void)didPerformChanges;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setAnalysisResult:(id)result;
- (void)setTargetSize:(CGSize)size;
@end

@implementation PXAssetVariationRenderProvider

- (CGSize)targetSize
{
  width = self->_targetSize.width;
  height = self->_targetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AD60];
  v25.receiver = self;
  v25.super_class = PXAssetVariationRenderProvider;
  v4 = [(PXAssetVariationRenderProvider *)&v25 debugDescription];
  v5 = [v3 stringWithFormat:@"%@\n", v4];

  if ([(PXAssetVariationRenderProvider *)self status]== 5)
  {
    [v5 appendString:@"Failed:\n"];
    error = [(PXAssetVariationRenderProvider *)self error];
    v7 = [error description];
    [v5 appendString:v7];
  }

  else
  {
    [v5 appendString:@"Loading Durations\nImage URL: "];
    [v5 appendString:@"\nEdit Source: "];
    _editSourceDuration = [(PXAssetVariationRenderProvider *)self _editSourceDuration];

    if (_editSourceDuration)
    {
      _editSourceDuration2 = [(PXAssetVariationRenderProvider *)self _editSourceDuration];
      [_editSourceDuration2 doubleValue];
      [v5 appendFormat:@"%.2fs", v10];
    }

    [v5 appendString:@"\nRecipes: "];
    _recipeGenerationDuration = [(PXAssetVariationRenderProvider *)self _recipeGenerationDuration];

    if (_recipeGenerationDuration)
    {
      _recipeGenerationDuration2 = [(PXAssetVariationRenderProvider *)self _recipeGenerationDuration];
      [_recipeGenerationDuration2 doubleValue];
      [v5 appendFormat:@"%.2fs", v13];
    }

    else
    {
      analysisResult = [(PXAssetVariationRenderProvider *)self analysisResult];

      if (analysisResult)
      {
        [v5 appendString:@"cached"];
      }
    }

    desiredVariationTypes = [(PXAssetVariationRenderProvider *)self desiredVariationTypes];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __50__PXAssetVariationRenderProvider_debugDescription__block_invoke;
    v22[3] = &unk_1E774A7B8;
    v16 = v5;
    v23 = v16;
    selfCopy = self;
    [desiredVariationTypes enumerateIndexesUsingBlock:v22];

    [v16 appendString:@"\nTotal duration: "];
    totalRenderingDuration = [(PXAssetVariationRenderProvider *)self totalRenderingDuration];

    if (totalRenderingDuration)
    {
      totalRenderingDuration2 = [(PXAssetVariationRenderProvider *)self totalRenderingDuration];
      [totalRenderingDuration2 doubleValue];
      [v16 appendFormat:@"%.2fs", v19];
    }

    error = v23;
  }

  v20 = [v5 copy];

  return v20;
}

void __50__PXAssetVariationRenderProvider_debugDescription__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if ((a2 + 1) > 4)
  {
    v5 = @"Unknown";
  }

  else
  {
    v5 = off_1E77338F0[a2 + 1];
  }

  v6 = v5;
  [v4 appendFormat:@"\n%@: ", v6];

  v7 = [*(a1 + 40) _renderingDurationByVariationType];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  v12 = [v7 objectForKeyedSubscript:v8];

  v9 = v12;
  if (v12)
  {
    v10 = *(a1 + 32);
    [v12 doubleValue];
    [v10 appendFormat:@"%.2fs", v11];
    v9 = v12;
  }
}

- (void)_setError:(id)error
{
  v12 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v6 = errorCopy;
  if (self->_error != errorCopy && ([(NSError *)errorCopy isEqual:?]& 1) == 0)
  {
    if (v6)
    {
      v7 = PLUIGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = 138412546;
        selfCopy = self;
        v10 = 2112;
        v11 = v6;
        _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_ERROR, "%@ encountered error: %@", &v8, 0x16u);
      }
    }

    objc_storeStrong(&self->_error, error);
    [(PXAssetVariationRenderProvider *)self _invalidateStatus];
  }
}

- (void)setAnalysisResult:(id)result
{
  if (self->_analysisResult != result)
  {
    v5 = [result copy];
    analysisResult = self->_analysisResult;
    self->_analysisResult = v5;

    [(PXAssetVariationRenderProvider *)self _invalidateRenders];
    [(PXAssetVariationRenderProvider *)self _invalidateStatus];
    if (result)
    {
      totalUnitCount = [(NSProgress *)self->_recipeGenerationProgress totalUnitCount];
    }

    else
    {
      totalUnitCount = 0;
    }

    [(NSProgress *)self->_recipeGenerationProgress setCompletedUnitCount:totalUnitCount];

    [(PXAssetVariationRenderProvider *)self signalChange:2];
  }
}

- (void)_setStatusDescription:(id)description
{
  descriptionCopy = description;
  v5 = descriptionCopy;
  if (self->_statusDescription != descriptionCopy)
  {
    v9 = descriptionCopy;
    v6 = [(NSString *)descriptionCopy isEqualToString:?];
    v5 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      statusDescription = self->_statusDescription;
      self->_statusDescription = v7;

      [(PXAssetVariationRenderProvider *)self signalChange:16];
      v5 = v9;
    }
  }
}

- (void)_setStatus:(int64_t)status
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (self->_status != status)
  {
    self->_status = status;
    if (status == 5)
    {
      v9 = MEMORY[0x1E6991F28];
      v13 = *MEMORY[0x1E6991E20];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v14[0] = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      [v9 sendEvent:@"com.apple.photos.CPAnalytics.rendering.livePhotoEffectFailed" withPayload:v12];
    }

    else if (status == 4)
    {
      date = [MEMORY[0x1E695DF00] date];
      _beginRenderingDate = [(PXAssetVariationRenderProvider *)self _beginRenderingDate];
      [date timeIntervalSinceDate:_beginRenderingDate];
      v7 = v6;

      v8 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
      [(PXAssetVariationRenderProvider *)self setTotalRenderingDuration:v8];
    }

    [(PXAssetVariationRenderProvider *)self signalChange:4];
  }
}

- (void)_setProgress:(id)progress forVariationType:(int64_t)type
{
  progressCopy = progress;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__PXAssetVariationRenderProvider__setProgress_forVariationType___block_invoke;
  v8[3] = &unk_1E77499B0;
  selfCopy = self;
  typeCopy = type;
  v9 = progressCopy;
  v7 = progressCopy;
  [(PXAssetVariationRenderProvider *)self performChanges:v8];
}

void __64__PXAssetVariationRenderProvider__setProgress_forVariationType___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
  v3 = *(a1 + 32);
  v7 = v2;
  v4 = [*(*(a1 + 40) + 112) objectForKeyedSubscript:?];

  if (v3 != v4)
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 40) + 112);
    if (v5)
    {
      [v6 setObject:v5 forKeyedSubscript:v7];
    }

    else
    {
      [v6 removeObjectForKey:v7];
    }

    [*(a1 + 40) signalChange:2];
  }
}

uint64_t __51__PXAssetVariationRenderProvider__removeAllResults__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__PXAssetVariationRenderProvider__removeAllResults__block_invoke_2;
  v3[3] = &unk_1E774C5F8;
  v3[4] = v1;
  return [v1 performChanges:v3];
}

uint64_t __51__PXAssetVariationRenderProvider__removeAllResults__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 200);
  *(v2 + 200) = 0;

  [*(*(a1 + 32) + 104) removeAllObjects];
  [*(*(a1 + 32) + 112) removeAllObjects];
  [*(a1 + 32) _invalidateStatus];
  [*(a1 + 32) signalChange:1];
  v4 = *(a1 + 32);

  return [v4 signalChange:2];
}

void __62__PXAssetVariationRenderProvider__setResult_forVariationType___block_invoke(void *a1)
{
  v2 = *(a1[4] + 104);
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a1[6]];
  v3 = [v2 objectForKeyedSubscript:?];
  v4 = v3;
  if (v3 == a1[5])
  {
  }

  else
  {
    v5 = [v3 isEqual:?];

    if ((v5 & 1) == 0)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __62__PXAssetVariationRenderProvider__setResult_forVariationType___block_invoke_2;
      v9[3] = &unk_1E77499B0;
      v6 = a1[6];
      v7 = a1[5];
      v10 = a1[4];
      v12 = v6;
      v11 = v7;
      [v10 performChanges:v9];
    }
  }
}

uint64_t __62__PXAssetVariationRenderProvider__setResult_forVariationType___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 104);
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
  [v3 setObject:v2 forKeyedSubscript:v4];

  [*(a1 + 32) _invalidateStatus];
  [*(a1 + 32) signalChange:1];
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);

  return [v5 _setProgress:0 forVariationType:v6];
}

- (void)_handleRenderingOperationCompleted:(id)completed
{
  completedCopy = completed;
  v4 = completedCopy;
  if (completedCopy && ([completedCopy isCancelled] & 1) == 0)
  {
    outputImageURL = [v4 outputImageURL];
    outputVideoURL = [v4 outputVideoURL];
    outputImage = [v4 outputImage];
    v8 = outputImage;
    if (outputImage)
    {
      v9 = outputImage;
    }

    else
    {
      v10 = MEMORY[0x1E69DCAB8];
      path = [outputImageURL path];
      v9 = [v10 imageWithContentsOfFile:path];
    }

    outputAVAsset = [v4 outputAVAsset];
    v13 = outputAVAsset;
    if (outputAVAsset)
    {
      v14 = outputAVAsset;
    }

    else
    {
      v14 = [MEMORY[0x1E6988168] assetWithURL:outputVideoURL];
    }

    v15 = v14;

    v4;
    v16 = v15;
    v17 = v9;
    v18 = outputVideoURL;
    v19 = outputImageURL;
    px_dispatch_on_main_queue();
  }
}

void __69__PXAssetVariationRenderProvider__handleRenderingOperationCompleted___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) variationType];
  v3 = [*(a1 + 32) error];
  v4 = [*(a1 + 32) duration];
  if (v4)
  {
    v5 = [*(a1 + 40) _renderingDurationByVariationType];
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:v2];
    [v5 setObject:v4 forKeyedSubscript:v6];
  }

  v7 = [*(a1 + 40) _renderingOperationsByVariationType];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:v2];
  [v7 removeObjectForKey:v8];

  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    v9 = [*(a1 + 40) renderResultForVariationType:v2];

    if (!v9)
    {
      v10 = [*(a1 + 32) succeeded];
      v11 = [PXAssetVariationRenderResult alloc];
      v12 = v11;
      if (v10)
      {
        v13 = *(a1 + 48);
        v14 = *(a1 + 56);
        v15 = [*(a1 + 32) analysisResult];
        v16 = [*(a1 + 32) adjustedCompositionController];
        v17 = [(PXAssetVariationRenderResult *)v12 initWithVariationType:v2 imageURL:v13 videoURL:v14 analysisResult:v15 compositionController:v16 success:1 error:0];

        [(PXAssetVariationRenderResult *)v17 setImage:*(a1 + 64)];
        [(PXAssetVariationRenderResult *)v17 setVideoAsset:*(a1 + 72)];
        v18 = [*(a1 + 32) outputVideoComposition];
        [(PXAssetVariationRenderResult *)v17 setVideoComposition:v18];

        [(PXAssetVariationRenderResult *)v17 setFullsizeRender:1];
      }

      else
      {
        v17 = [(PXAssetVariationRenderResult *)v11 initWithVariationType:v2 imageURL:0 videoURL:0 analysisResult:0 compositionController:0 success:0 error:v3];
        v19 = PLUIGetLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = *(a1 + 40);
          *buf = 138412802;
          v22 = v20;
          v23 = 2048;
          v24 = v2;
          v25 = 2112;
          v26 = v3;
          _os_log_impl(&dword_1A3C1C000, v19, OS_LOG_TYPE_ERROR, "%@: rendering failed for type: %ld error: %@", buf, 0x20u);
        }
      }

      [*(a1 + 40) _setResult:v17 forVariationType:v2];
    }
  }
}

uint64_t __67__PXAssetVariationRenderProvider__handleRenderingOperationStarted___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __67__PXAssetVariationRenderProvider__handleRenderingOperationStarted___block_invoke_2;
  v3[3] = &unk_1E774C5F8;
  v3[4] = v1;
  return [v1 performChanges:v3];
}

- (void)_updateRenders
{
  v35 = *MEMORY[0x1E69E9840];
  desiredVariationTypes = [(PXAssetVariationRenderProvider *)self desiredVariationTypes];
  analysisResult = [(PXAssetVariationRenderProvider *)self analysisResult];
  editSourceLoader = [(PXAssetVariationRenderProvider *)self editSourceLoader];
  editSource = [editSourceLoader editSource];
  if (!editSource)
  {
    goto LABEL_11;
  }

  compositionController2 = editSource;
  editSourceLoader2 = [(PXAssetVariationRenderProvider *)self editSourceLoader];
  compositionController = [editSourceLoader2 compositionController];
  if (!compositionController)
  {

LABEL_10:
LABEL_11:

    goto LABEL_12;
  }

  v10 = compositionController;
  v11 = [desiredVariationTypes count];

  if (v11 && analysisResult)
  {
    editSourceLoader3 = [(PXAssetVariationRenderProvider *)self editSourceLoader];
    editSourceLoader = [editSourceLoader3 editSource];

    if (editSourceLoader)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v16 = PLUIGetLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          selfCopy = self;
          v33 = 2112;
          v34 = editSourceLoader;
          _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_ERROR, "%@: expected Live Photo Edit Source, but got %@", buf, 0x16u);
        }

        v17 = MEMORY[0x1E696ABC0];
        v29 = *MEMORY[0x1E696A578];
        v30 = @"Expected Live Photo Edit Source";
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
        v19 = [v17 errorWithDomain:@"PXAssetVariationRenderProviderErrorDomain" code:1 userInfo:v18];
        [(PXAssetVariationRenderProvider *)self _setError:v19];

        goto LABEL_11;
      }
    }

    editSourceLoader4 = [(PXAssetVariationRenderProvider *)self editSourceLoader];
    compositionController2 = [editSourceLoader4 compositionController];

    if ([(PXEditSourceLoader *)self->_editSourceLoader baseVersion])
    {
      v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PXEditSourceLoaderErrorDomain" code:0 userInfo:0];
      error = self->_error;
      self->_error = v14;
    }

    else
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __48__PXAssetVariationRenderProvider__updateRenders__block_invoke;
      aBlock[3] = &unk_1E7734CB8;
      v25 = analysisResult;
      v26 = editSourceLoader;
      v27 = compositionController2;
      selfCopy2 = self;
      v20 = _Block_copy(aBlock);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __48__PXAssetVariationRenderProvider__updateRenders__block_invoke_5;
      v22[3] = &unk_1E7734CE0;
      v23 = v20;
      v21 = v20;
      [desiredVariationTypes enumerateIndexesUsingBlock:v22];
    }

    goto LABEL_10;
  }

LABEL_12:
}

void __48__PXAssetVariationRenderProvider__updateRenders__block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2 || *(a1 + 32))
  {
    v4 = [MEMORY[0x1E696AFB0] UUID];
    v5 = [v4 UUIDString];

    v6 = [MEMORY[0x1E695DFF8] px_tempDirectoryFileURLWithFileName:v5 subdirectory:@"PXAssetVariationRenderProvider" fileExtension:@"jpg"];
    v7 = [MEMORY[0x1E695DFF8] px_tempDirectoryFileURLWithFileName:v5 subdirectory:@"PXAssetVariationRenderProvider" fileExtension:@"mov"];
    v8 = [PXAssetVariationRenderingOperation alloc];
    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = *(a1 + 48);
    [*(a1 + 56) targetSize];
    v13 = v12;
    v15 = v14;
    LOBYTE(v25) = [*(a1 + 56) renderAllResources];
    v16 = [(PXAssetVariationRenderingOperation *)v8 initWithEditSource:v9 variationType:a2 analysisResult:v10 baseCompositionController:v11 outputImageURL:v6 outputVideoURL:v7 targetSize:v13 renderAllResources:v15, v25];
    v17 = [*(a1 + 56) _renderingOperationsByVariationType];
    v18 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
    v19 = [v17 objectForKeyedSubscript:v18];
    [v19 cancel];

    v20 = [*(a1 + 56) _renderingOperationsByVariationType];
    v21 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
    [v20 setObject:v16 forKeyedSubscript:v21];

    objc_initWeak(&location, *(a1 + 56));
    objc_initWeak(&from, v16);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __48__PXAssetVariationRenderProvider__updateRenders__block_invoke_2;
    v29[3] = &unk_1E7749C10;
    objc_copyWeak(&v30, &location);
    objc_copyWeak(&v31, &from);
    [(PXAssetVariationRenderingOperation *)v16 setCompletionBlock:v29];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __48__PXAssetVariationRenderProvider__updateRenders__block_invoke_3;
    v26[3] = &unk_1E7749C10;
    objc_copyWeak(&v27, &location);
    objc_copyWeak(&v28, &from);
    [(PXAssetVariationRenderingOperation *)v16 setStartHandler:v26];
    v22 = *(a1 + 56);
    v23 = [(PXAssetVariationRenderingOperation *)v16 progress];
    [v22 _setProgress:v23 forVariationType:a2];

    v24 = [objc_opt_class() sharedOperationQueue];
    [v24 addOperation:v16];

    objc_destroyWeak(&v28);
    objc_destroyWeak(&v27);
    objc_destroyWeak(&v31);
    objc_destroyWeak(&v30);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

void __48__PXAssetVariationRenderProvider__updateRenders__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleRenderingOperationCompleted:v2];
}

void __48__PXAssetVariationRenderProvider__updateRenders__block_invoke_3(uint64_t a1)
{
  objc_copyWeak(&v2, (a1 + 32));
  objc_copyWeak(&v3, (a1 + 40));
  px_dispatch_on_main_queue();
}

void __48__PXAssetVariationRenderProvider__updateRenders__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleRenderingOperationStarted:v2];
}

- (void)_handleAnalysisOperationCompleted:(id)completed
{
  completedCopy = completed;
  v5 = completedCopy;
  if (completedCopy)
  {
    if (([completedCopy isCancelled] & 1) == 0)
    {
      _analysisOperation = [(PXAssetVariationRenderProvider *)self _analysisOperation];

      if (_analysisOperation == v5)
      {
        duration = [v5 duration];
        [(PXAssetVariationRenderProvider *)self _setRecipeGenerationDuration:duration];

        [(PXAssetVariationRenderProvider *)self _setAnalysisOperation:0];
        if (![v5 succeeded])
        {
          v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
          error = [v5 error];

          if (error)
          {
            error2 = [v5 error];
            [v15 setObject:error2 forKeyedSubscript:*MEMORY[0x1E696AA08]];
          }

          [v15 setObject:@"Failed to generate asset variation recipes." forKeyedSubscript:*MEMORY[0x1E696A578]];
          v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PXAssetVariationRenderProviderErrorDomain" code:2 userInfo:v15];
          px_dispatch_on_main_queue();
        }

        analysisResult = [v5 analysisResult];
        editSourceLoader = [(PXAssetVariationRenderProvider *)self editSourceLoader];
        contentIdentifier = [editSourceLoader contentIdentifier];

        _variationSourceType = [(PXAssetVariationRenderProvider *)self _variationSourceType];
        objc_initWeak(&location, self);
        sharedOperationQueue = [objc_opt_class() sharedOperationQueue];
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __68__PXAssetVariationRenderProvider__handleAnalysisOperationCompleted___block_invoke;
        v19[3] = &unk_1E77422A8;
        objc_copyWeak(v22, &location);
        v13 = analysisResult;
        v20 = v13;
        v14 = contentIdentifier;
        v21 = v14;
        v22[1] = _variationSourceType;
        [sharedOperationQueue addOperationWithBlock:v19];

        objc_destroyWeak(v22);
        objc_destroyWeak(&location);
      }
    }
  }
}

void __68__PXAssetVariationRenderProvider__handleAnalysisOperationCompleted___block_invoke(uint64_t a1)
{
  objc_copyWeak(&v2, (a1 + 48));
  *(a1 + 32);
  px_dispatch_on_main_queue();
}

void __68__PXAssetVariationRenderProvider__handleAnalysisOperationCompleted___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __68__PXAssetVariationRenderProvider__handleAnalysisOperationCompleted___block_invoke_5;
  v2[3] = &unk_1E77498F8;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 performChanges:v2];
}

void __68__PXAssetVariationRenderProvider__handleAnalysisOperationCompleted___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __68__PXAssetVariationRenderProvider__handleAnalysisOperationCompleted___block_invoke_3;
  v3[3] = &unk_1E773BAF0;
  objc_copyWeak(&v5, (a1 + 40));
  v4 = *(a1 + 32);
  [WeakRetained performChanges:v3];

  objc_destroyWeak(&v5);
}

void __68__PXAssetVariationRenderProvider__handleAnalysisOperationCompleted___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setAnalysisResult:v1];
}

- (void)_updateAnalysisResult
{
  v29[1] = *MEMORY[0x1E69E9840];
  v3 = +[PXAssetVariationsSettings sharedInstance];
  simulateLoadingFailure = [v3 simulateLoadingFailure];

  if (simulateLoadingFailure)
  {
    v5 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A578];
    v29[0] = @"Simulated Failure";
    activeEditSource = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v7 = [v5 errorWithDomain:@"PXAssetVariationRenderProviderErrorDomain" code:2 userInfo:activeEditSource];
    [(PXAssetVariationRenderProvider *)self _setError:v7];
  }

  else
  {
    editSourceLoader = [(PXAssetVariationRenderProvider *)self editSourceLoader];
    activeEditSource = [editSourceLoader activeEditSource];

    if (activeEditSource)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        analysisResult = [(PXAssetVariationRenderProvider *)self analysisResult];
        if (analysisResult)
        {
        }

        else
        {
          _analysisOperation = [(PXAssetVariationRenderProvider *)self _analysisOperation];

          if (!_analysisOperation)
          {
            v15 = [[PXAutoloopAnalysisOperation alloc] initWithEditSource:activeEditSource];
            objc_initWeak(buf, self);
            objc_initWeak(&location, v15);
            v18[0] = MEMORY[0x1E69E9820];
            v18[1] = 3221225472;
            v18[2] = __55__PXAssetVariationRenderProvider__updateAnalysisResult__block_invoke;
            v18[3] = &unk_1E7749C10;
            objc_copyWeak(&v19, buf);
            objc_copyWeak(&v20, &location);
            [(PXAutoloopAnalysisOperation *)v15 setCompletionBlock:v18];
            [(PXAssetVariationRenderProvider *)self _setAnalysisOperation:v15];
            progress = [(PXAutoloopAnalysisOperation *)v15 progress];
            [(NSProgress *)self->_recipeGenerationProgress setCompletedUnitCount:0];
            [(NSProgress *)self->_recipeGenerationProgress addChild:progress withPendingUnitCount:[(NSProgress *)self->_recipeGenerationProgress totalUnitCount]];
            sharedOperationQueue = [objc_opt_class() sharedOperationQueue];
            [sharedOperationQueue addOperation:v15];

            objc_destroyWeak(&v20);
            objc_destroyWeak(&v19);
            objc_destroyWeak(&location);
            objc_destroyWeak(buf);
          }
        }
      }

      else
      {
        v10 = PLUIGetLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          selfCopy = self;
          v26 = 2112;
          v27 = activeEditSource;
          _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_ERROR, "%@: expected Live Photo Edit Source, but got %@", buf, 0x16u);
        }

        v11 = MEMORY[0x1E696ABC0];
        v22 = *MEMORY[0x1E696A578];
        v23 = @"Expected Live Photo Edit Source";
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
        v13 = [v11 errorWithDomain:@"PXAssetVariationRenderProviderErrorDomain" code:1 userInfo:v12];
        [(PXAssetVariationRenderProvider *)self _setError:v13];
      }
    }
  }
}

void __55__PXAssetVariationRenderProvider__updateAnalysisResult__block_invoke(uint64_t a1)
{
  objc_copyWeak(&v2, (a1 + 32));
  objc_copyWeak(&v3, (a1 + 40));
  px_dispatch_on_main_queue();
}

void __55__PXAssetVariationRenderProvider__updateAnalysisResult__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleAnalysisOperationCompleted:v2];
}

- (void)_handleCachedAnalysisResult:(id)result
{
  resultCopy = result;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__PXAssetVariationRenderProvider__handleCachedAnalysisResult___block_invoke;
  v6[3] = &unk_1E77498F8;
  v6[4] = self;
  v7 = resultCopy;
  v5 = resultCopy;
  [(PXAssetVariationRenderProvider *)self performChanges:v6];
}

void __62__PXAssetVariationRenderProvider__handleCachedAnalysisResult___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) analysisResult];

  if (!v2)
  {
    v3 = *(a1 + 32);
    if (*(a1 + 40))
    {

      [v3 setAnalysisResult:?];
    }

    else
    {
      v4 = [v3 _analysisOperation];

      if (!v4)
      {
        v5 = *(a1 + 32);

        [v5 _invalidateAnalysisResult];
      }
    }
  }
}

- (void)_updateCachedAnalysisResult
{
  if (![(PXAssetVariationRenderProvider *)self _hasAllResults])
  {
    editSourceLoader = [(PXAssetVariationRenderProvider *)self editSourceLoader];
    activeEditSource = [editSourceLoader activeEditSource];

    if (activeEditSource)
    {
      contentIdentifier = [editSourceLoader contentIdentifier];
      _variationSourceType = [(PXAssetVariationRenderProvider *)self _variationSourceType];
      if (contentIdentifier)
      {
        v7 = _variationSourceType;
        px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
        variationCache = [px_deprecated_appPhotoLibrary variationCache];

        objc_initWeak(&location, self);
        sharedOperationQueue = [objc_opt_class() sharedOperationQueue];
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __61__PXAssetVariationRenderProvider__updateCachedAnalysisResult__block_invoke;
        v12[3] = &unk_1E77422A8;
        v11 = variationCache;
        v13 = v11;
        v14 = contentIdentifier;
        v15[1] = v7;
        objc_copyWeak(v15, &location);
        [sharedOperationQueue addOperationWithBlock:v12];

        objc_destroyWeak(v15);
        objc_destroyWeak(&location);
      }

      else
      {
        [(PXAssetVariationRenderProvider *)self _handleCachedAnalysisResult:0];
      }
    }
  }
}

void __61__PXAssetVariationRenderProvider__updateCachedAnalysisResult__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) analysisResultForAssetIdentifier:*(a1 + 40) sourceType:*(a1 + 56)];
  objc_copyWeak(&v3, (a1 + 48));
  v2;
  px_dispatch_on_main_queue();
}

void __61__PXAssetVariationRenderProvider__updateCachedAnalysisResult__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleCachedAnalysisResult:*(a1 + 32)];
}

- (void)_updateStatus
{
  error = [(PXAssetVariationRenderProvider *)self error];

  if (error)
  {
    v4 = @"Failed";
    v5 = 5;
  }

  else if (self->_hasBegunRendering)
  {
    _hasAllResults = [(PXAssetVariationRenderProvider *)self _hasAllResults];
    analysisResult = [(PXAssetVariationRenderProvider *)self analysisResult];

    if (_hasAllResults)
    {
      v4 = @"Finished";
      v5 = 4;
    }

    else
    {
      editSourceLoader = [(PXAssetVariationRenderProvider *)self editSourceLoader];
      editSource = [editSourceLoader editSource];
      if (editSource)
      {
        v11 = editSource;
        editSourceLoader2 = [(PXAssetVariationRenderProvider *)self editSourceLoader];
        compositionController = [editSourceLoader2 compositionController];

        if (compositionController)
        {
          v4 = @"Generating Recipes";
        }

        else
        {
          v4 = @"Loading Resources";
        }

        v5 = 2;
        if (compositionController && analysisResult)
        {
          v24 = 0;
          v25 = &v24;
          v26 = 0x2020000000;
          v27 = -1;
          _renderingOperationsByVariationType = [(PXAssetVariationRenderProvider *)self _renderingOperationsByVariationType];
          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = __47__PXAssetVariationRenderProvider__updateStatus__block_invoke;
          v23[3] = &unk_1E7734C88;
          v23[4] = &v24;
          [_renderingOperationsByVariationType enumerateKeysAndObjectsUsingBlock:v23];

          v15 = v25[3];
          if (v15 == -1)
          {
            v4 = @"Rendering";
          }

          else
          {
            v16 = MEMORY[0x1E696AEC0];
            v17 = v15 + 1;
            if (v17 > 4)
            {
              v18 = @"Unknown";
            }

            else
            {
              v18 = off_1E77338F0[v17];
            }

            v19 = v18;
            v4 = [v16 stringWithFormat:@"Rendering %@", v19];
          }

          _Block_object_dispose(&v24, 8);
          v5 = 3;
        }
      }

      else
      {

        v4 = @"Loading Resources";
        v5 = 2;
      }
    }
  }

  else
  {
    v4 = &stru_1F1741150;
    v5 = 1;
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __47__PXAssetVariationRenderProvider__updateStatus__block_invoke_2;
  v20[3] = &unk_1E77499B0;
  v21 = v4;
  v22 = v5;
  v20[4] = self;
  v8 = v4;
  [(PXAssetVariationRenderProvider *)self performChanges:v20];
}

void __47__PXAssetVariationRenderProvider__updateStatus__block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  if ([a3 isExecuting])
  {
    *(*(*(a1 + 32) + 8) + 24) = [v7 integerValue];
    *a4 = 1;
  }
}

uint64_t __47__PXAssetVariationRenderProvider__updateStatus__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _setStatus:*(a1 + 48)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _setStatusDescription:v3];
}

- (BOOL)_hasAllResults
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  desiredVariationTypes = [(PXAssetVariationRenderProvider *)self desiredVariationTypes];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__PXAssetVariationRenderProvider__hasAllResults__block_invoke;
  v5[3] = &unk_1E773BA28;
  v5[4] = selfCopy;
  v5[5] = &v6;
  [desiredVariationTypes enumerateIndexesUsingBlock:v5];

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void __48__PXAssetVariationRenderProvider__hasAllResults__block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = [*(a1 + 32) renderResultForVariationType:a2];

  if (!v5)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a3 = 1;
  }
}

- (void)didPerformChanges
{
  v2.receiver = self;
  v2.super_class = PXAssetVariationRenderProvider;
  [(PXAssetVariationRenderProvider *)&v2 didPerformChanges];
  px_dispatch_on_main_queue();
}

- (void)setTargetSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (size.width <= 0.0 || size.height <= 0.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetVariationRenderProvider.m" lineNumber:240 description:{@"Invalid parameter not satisfying: %@", @"targetSize.width > 0 && targetSize.height > 0"}];
  }

  if (width != self->_targetSize.width || height != self->_targetSize.height)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __48__PXAssetVariationRenderProvider_setTargetSize___block_invoke;
    v9[3] = &unk_1E7746798;
    v9[4] = self;
    *&v9[5] = width;
    *&v9[6] = height;
    [(PXAssetVariationRenderProvider *)self performChanges:v9];
  }
}

__n128 __48__PXAssetVariationRenderProvider_setTargetSize___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 272) = result;
  return result;
}

- (id)progressForVariationType:(int64_t)type
{
  progressesByVariationType = self->_progressesByVariationType;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v5 = [(NSMutableDictionary *)progressesByVariationType objectForKeyedSubscript:v4];

  return v5;
}

- (void)cancelRendering
{
  self->_hasBegunRendering = 0;
  observedEditSourceLoaderProgress = self->_observedEditSourceLoaderProgress;
  v4 = NSStringFromSelector(sel_completedUnitCount);
  [(NSProgress *)observedEditSourceLoaderProgress removeObserver:self forKeyPath:v4 context:PXEditSourceLoaderProgressObservationContext];

  v5 = self->_observedEditSourceLoaderProgress;
  self->_observedEditSourceLoaderProgress = 0;

  editSourceLoader = [(PXAssetVariationRenderProvider *)self editSourceLoader];
  progress = [editSourceLoader progress];
  [progress cancel];

  _analysisOperation = [(PXAssetVariationRenderProvider *)self _analysisOperation];
  [_analysisOperation cancel];

  [(PXAssetVariationRenderProvider *)self _setAnalysisOperation:0];
  _renderingOperationsByVariationType = [(PXAssetVariationRenderProvider *)self _renderingOperationsByVariationType];
  [_renderingOperationsByVariationType enumerateKeysAndObjectsUsingBlock:&__block_literal_global_230];
}

- (void)beginRendering
{
  if (!self->_hasBegunRendering)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __48__PXAssetVariationRenderProvider_beginRendering__block_invoke;
    v2[3] = &unk_1E774C5F8;
    v2[4] = self;
    [(PXAssetVariationRenderProvider *)self performChanges:v2];
  }
}

uint64_t __48__PXAssetVariationRenderProvider_beginRendering__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) editSourceLoader];
  [v2 beginLoading];

  v3 = [*(a1 + 32) editSourceLoader];
  v4 = [v3 progress];
  v5 = *(a1 + 32);
  v6 = NSStringFromSelector(sel_completedUnitCount);
  [v4 addObserver:v5 forKeyPath:v6 options:4 context:PXEditSourceLoaderProgressObservationContext];

  v7 = [*(a1 + 32) editSourceLoader];
  v8 = [v7 progress];
  v9 = *(a1 + 32);
  v10 = *(v9 + 144);
  *(v9 + 144) = v8;

  v11 = *(a1 + 32);
  if (!v11[30])
  {
    v12 = [MEMORY[0x1E695DF00] date];
    v13 = *(a1 + 32);
    v14 = *(v13 + 240);
    *(v13 + 240) = v12;

    v11 = *(a1 + 32);
  }

  v15 = [v11 analysisResult];

  if (!v15)
  {
    [*(a1 + 32) _invalidateCachedAnalysisResult];
  }

  result = [*(a1 + 32) _hasAllResults];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) _invalidateRenders];
  }

  *(*(a1 + 32) + 136) = 1;
  return result;
}

- (id)renderResultForVariationType:(int64_t)type
{
  resultsByVariationType = self->_resultsByVariationType;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v5 = [(NSMutableDictionary *)resultsByVariationType objectForKeyedSubscript:v4];

  return v5;
}

- (PXAssetVariationRenderProvider)initWithEditSourceLoader:(id)loader targetSize:(CGSize)size desiredVariationTypes:(id)types
{
  height = size.height;
  width = size.width;
  loaderCopy = loader;
  typesCopy = types;
  v32.receiver = self;
  v32.super_class = PXAssetVariationRenderProvider;
  v12 = [(PXAssetVariationRenderProvider *)&v32 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_editSourceLoader, loader);
    v13->_targetSize.width = width;
    v13->_targetSize.height = height;
    if (typesCopy)
    {
      supportedVariationTypes = [typesCopy copy];
    }

    else
    {
      supportedVariationTypes = [objc_opt_class() supportedVariationTypes];
    }

    v15 = supportedVariationTypes;
    objc_storeStrong(&v13->_desiredVariationTypes, supportedVariationTypes);

    v16 = [[off_1E7721940 alloc] initWithTarget:v13];
    updater = v13->_updater;
    v13->_updater = v16;

    [(PXUpdater *)v13->_updater addUpdateSelector:sel__updateCachedAnalysisResult];
    [(PXUpdater *)v13->_updater addUpdateSelector:sel__updateAnalysisResult];
    [(PXUpdater *)v13->_updater addUpdateSelector:sel__updateRenders];
    [(PXUpdater *)v13->_updater addUpdateSelector:sel__updateStatus];
    [(PXUpdater *)v13->_updater setNeedsUpdateOf:sel__updateCachedAnalysisResult];
    [(PXUpdater *)v13->_updater setNeedsUpdateOf:sel__updateRenders];
    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    resultsByVariationType = v13->_resultsByVariationType;
    v13->_resultsByVariationType = v18;

    v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
    progressesByVariationType = v13->_progressesByVariationType;
    v13->_progressesByVariationType = v20;

    v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
    renderingOperationsByVariationType = v13->__renderingOperationsByVariationType;
    v13->__renderingOperationsByVariationType = v22;

    v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
    renderingDurationByVariationType = v13->__renderingDurationByVariationType;
    v13->__renderingDurationByVariationType = v24;

    v26 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:0];
    initialLoadingProgress = v13->_initialLoadingProgress;
    v13->_initialLoadingProgress = v26;

    v13->_status = 1;
    v28 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:100];
    recipeGenerationProgress = v13->_recipeGenerationProgress;
    v13->_recipeGenerationProgress = v28;

    progress = [loaderCopy progress];
    [(NSProgress *)v13->_initialLoadingProgress px_appendChild:progress withPendingUnitCount:100];
    [(NSProgress *)v13->_initialLoadingProgress px_appendChild:v13->_recipeGenerationProgress withPendingUnitCount:50];
    v13->_signpostID = 0;
  }

  return v13;
}

- (void)dealloc
{
  observedEditSourceLoaderProgress = self->_observedEditSourceLoaderProgress;
  v4 = NSStringFromSelector(sel_completedUnitCount);
  [(NSProgress *)observedEditSourceLoaderProgress removeObserver:self forKeyPath:v4 context:PXEditSourceLoaderProgressObservationContext];

  v5 = self->_observedEditSourceLoaderProgress;
  self->_observedEditSourceLoaderProgress = 0;

  progress = [(PXEditSourceLoader *)self->_editSourceLoader progress];
  [progress cancel];

  [(NSOperation *)self->__analysisOperation cancel];
  [(NSMutableDictionary *)self->__renderingOperationsByVariationType enumerateKeysAndObjectsUsingBlock:&__block_literal_global_211];
  v7.receiver = self;
  v7.super_class = PXAssetVariationRenderProvider;
  [(PXAssetVariationRenderProvider *)&v7 dealloc];
}

- (PXAssetVariationRenderProvider)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetVariationRenderProvider.m" lineNumber:109 description:{@"%s is not available as initializer", "-[PXAssetVariationRenderProvider init]"}];

  abort();
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (PXEditSourceLoaderProgressObservationContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetVariationRenderProvider.m" lineNumber:95 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v14 = changeCopy;
  v15 = NSStringFromSelector(sel_completedUnitCount);
  v16 = [pathCopy isEqualToString:v15];

  if (v16)
  {
    px_dispatch_on_main_queue();
  }
}

uint64_t __81__PXAssetVariationRenderProvider_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __81__PXAssetVariationRenderProvider_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
  v3[3] = &unk_1E774C5F8;
  v3[4] = v1;
  return [v1 performChanges:v3];
}

uint64_t __81__PXAssetVariationRenderProvider_observeValueForKeyPath_ofObject_change_context___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _invalidateCachedAnalysisResult];
  [*(a1 + 32) _invalidateStatus];
  [*(a1 + 32) _invalidateAnalysisResult];
  v2 = *(a1 + 32);

  return [v2 _invalidateRenders];
}

+ (void)_performSimulatedWorkWithProgress:(id)progress
{
  progressCopy = progress;
  [progressCopy setCompletedUnitCount:{objc_msgSend(progressCopy, "completedUnitCount") + 1}];
  [progressCopy fractionCompleted];
  if (v5 < 1.0)
  {
    v6 = dispatch_time(0, 250000000);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __68__PXAssetVariationRenderProvider__performSimulatedWorkWithProgress___block_invoke;
    v7[3] = &unk_1E77498A0;
    selfCopy = self;
    v8 = progressCopy;
    dispatch_after(v6, MEMORY[0x1E69E96A0], v7);
  }
}

+ (NSIndexSet)supportedVariationTypes
{
  if (supportedVariationTypes_onceToken != -1)
  {
    dispatch_once(&supportedVariationTypes_onceToken, &__block_literal_global_232);
  }

  v3 = supportedVariationTypes_indexSet;

  return v3;
}

void __57__PXAssetVariationRenderProvider_supportedVariationTypes__block_invoke()
{
  v2 = [MEMORY[0x1E696AD50] indexSet];
  [v2 addIndex:0];
  [v2 addIndex:1];
  [v2 addIndex:2];
  [v2 addIndex:3];
  v0 = [v2 copy];
  v1 = supportedVariationTypes_indexSet;
  supportedVariationTypes_indexSet = v0;
}

+ (id)_renderingLog
{
  if (_renderingLog_onceToken != -1)
  {
    dispatch_once(&_renderingLog_onceToken, &__block_literal_global_203_70457);
  }

  v3 = _renderingLog_renderingLog;

  return v3;
}

void __47__PXAssetVariationRenderProvider__renderingLog__block_invoke()
{
  v0 = os_log_create("com.apple.photos.ui", "AutoLoopGeneration");
  v1 = _renderingLog_renderingLog;
  _renderingLog_renderingLog = v0;
}

+ (id)sharedOperationQueue
{
  if (sharedOperationQueue_onceToken != -1)
  {
    dispatch_once(&sharedOperationQueue_onceToken, &__block_literal_global_70461);
  }

  v3 = sharedOperationQueue_queue;

  return v3;
}

uint64_t __54__PXAssetVariationRenderProvider_sharedOperationQueue__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v1 = sharedOperationQueue_queue;
  sharedOperationQueue_queue = v0;

  [sharedOperationQueue_queue setQualityOfService:25];
  v2 = sharedOperationQueue_queue;

  return [v2 setMaxConcurrentOperationCount:3];
}

@end
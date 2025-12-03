@interface PXMediaAnalysisVideoStabilizationRecipeSource
+ (id)cachedRecipeForAsset:(id)asset;
+ (void)cacheRecipe:(id)recipe forAsset:(id)asset;
- (PXMediaAnalysisVideoStabilizationRecipeSource)initWithAsset:(id)asset videoDimensions:(CGSize)dimensions;
- (id)_loadStabilizationRecipe:(id *)recipe analysisType:(unint64_t *)type;
- (id)analyticsPayload;
@end

@implementation PXMediaAnalysisVideoStabilizationRecipeSource

- (id)_loadStabilizationRecipe:(id *)recipe analysisType:(unint64_t *)type
{
  v56[1] = *MEMORY[0x1E69E9840];
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__168811;
  v52 = __Block_byref_object_dispose__168812;
  v53 = 0;
  localIdentifier = [(PHAsset *)self->_asset localIdentifier];
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  allowedAnalysisTypes = [(PXVideoStabilizationRecipeSource *)self allowedAnalysisTypes];
  if ((allowedAnalysisTypes & 2) != 0)
  {
    [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:{@"GyroStabilization", localIdentifier}];
    [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"AllowOnDemandGyro"];
  }

  if (allowedAnalysisTypes)
  {
    [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"PixelStabilization"];
    if ([(PXVideoStabilizationRecipeSource *)self allowsOnDemandPixelAnalysis])
    {
      [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"AllowOnDemandPixel"];
    }
  }

  mEMORY[0x1E69AE230] = [MEMORY[0x1E69AE230] sharedAnalysisService];
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__168811;
  v46 = __Block_byref_object_dispose__168812;
  v47 = 0;
  v10 = +[PXInlineVideoStabilizationSettings sharedInstance];
  localCacheForMediaAnalysisRecipes = [v10 localCacheForMediaAnalysisRecipes];

  if (localCacheForMediaAnalysisRecipes)
  {
    v12 = [objc_opt_class() cachedRecipeForAsset:self->_asset];
    v13 = v43[5];
    v43[5] = v12;
  }

  v14 = v43[5];
  if (v14)
  {
    goto LABEL_14;
  }

  v15 = dispatch_group_create();
  dispatch_group_enter(v15);
  v56[0] = self->_asset;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:1];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __87__PXMediaAnalysisVideoStabilizationRecipeSource__loadStabilizationRecipe_analysisType___block_invoke;
  v37[3] = &unk_1E773F550;
  v40 = &v48;
  v41 = &v42;
  v38 = v36;
  v17 = v15;
  v39 = v17;
  v18 = [mEMORY[0x1E69AE230] requestVideoStabilizationForAssets:v16 withOptions:v7 progressHandler:0 andCompletionHandler:v37];

  v19 = dispatch_time(0, 5000000000);
  if (dispatch_group_wait(v17, v19))
  {
    [mEMORY[0x1E69AE230] cancelRequest:v18];
    v20 = MEMORY[0x1E69E9C10];
    v21 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      uuid = [(PHAsset *)self->_asset uuid];
      *buf = 138543362;
      v55 = uuid;
      _os_log_error_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Video stabilization request timed out for asset %{public}@", buf, 0xCu);
    }
  }

  [objc_opt_class() cacheRecipe:v43[5] forAsset:self->_asset];

  v14 = v43[5];
  if (v14)
  {
LABEL_14:
    v22 = [v14 mutableCopy];
    [v22 removeObjectsForKeys:&unk_1F1911158];
    v23 = [v22 copy];
    [(PXVideoStabilizationRecipeSource *)self setDebugInfo:v23];

    v24 = ICCreateCorrectionHomographiesWithNewImageCoordinates();
    v25 = 0;
    if (v24)
    {
      v26 = v24;
      v27 = [v43[5] objectForKeyedSubscript:@"gyroStabilization"];
      bOOLValue = [v27 BOOLValue];

      allowedAnalysisTypes2 = [(PXVideoStabilizationRecipeSource *)self allowedAnalysisTypes];
      v30 = 0;
      if (bOOLValue)
      {
        v31 = allowedAnalysisTypes2 & 2;
      }

      else
      {
        v31 = allowedAnalysisTypes2 & 1;
      }
    }

    else
    {
      v30 = [MEMORY[0x1E696ABC0] px_genericErrorWithUnderlyingError:v25 debugDescription:@"Recipe Denormalization Failed"];
      v31 = 0;
    }

    if (type)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v30 = [MEMORY[0x1E696ABC0] px_genericErrorWithUnderlyingError:v49[5] debugDescription:@"No recipe returned by MediaAnalysis"];
    v31 = 0;
    v24 = 0;
    if (type)
    {
LABEL_20:
      *type = v31;
    }
  }

  if (recipe)
  {
    v32 = v30;
    *recipe = v30;
  }

  _Block_object_dispose(&v42, 8);

  _Block_object_dispose(&v48, 8);

  return v24;
}

void __87__PXMediaAnalysisVideoStabilizationRecipeSource__loadStabilizationRecipe_analysisType___block_invoke(uint64_t a1, void *a2, id obj)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v10 = obj;
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:*(a1 + 32)];

  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  dispatch_group_leave(*(a1 + 40));
}

- (id)analyticsPayload
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E6991E18];
  asset = self->_asset;
  v7 = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&asset count:1];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v4;
}

- (PXMediaAnalysisVideoStabilizationRecipeSource)initWithAsset:(id)asset videoDimensions:(CGSize)dimensions
{
  height = dimensions.height;
  width = dimensions.width;
  assetCopy = asset;
  v12.receiver = self;
  v12.super_class = PXMediaAnalysisVideoStabilizationRecipeSource;
  v9 = [(PXVideoStabilizationRecipeSource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_asset, asset);
    v10->_videoDimensions.width = width;
    v10->_videoDimensions.height = height;
  }

  return v10;
}

+ (void)cacheRecipe:(id)recipe forAsset:(id)asset
{
  v15[2] = *MEMORY[0x1E69E9840];
  recipeCopy = recipe;
  assetCopy = asset;
  if (cacheRecipe_forAsset__onceToken != -1)
  {
    dispatch_once(&cacheRecipe_forAsset__onceToken, &__block_literal_global_168888);
    if (recipeCopy)
    {
      goto LABEL_3;
    }

LABEL_9:
    v12 = RecipeCache;
    localIdentifier = [assetCopy localIdentifier];
    [v12 removeObjectForKey:localIdentifier];

    goto LABEL_10;
  }

  if (!recipeCopy)
  {
    goto LABEL_9;
  }

LABEL_3:
  v14[0] = @"AdjustmentDate";
  adjustmentTimestamp = [assetCopy adjustmentTimestamp];
  null = adjustmentTimestamp;
  if (!adjustmentTimestamp)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v14[1] = @"Recipe";
  v15[0] = null;
  v15[1] = recipeCopy;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  if (!adjustmentTimestamp)
  {
  }

  v10 = RecipeCache;
  localIdentifier2 = [assetCopy localIdentifier];
  [v10 setObject:v9 forKey:localIdentifier2];

LABEL_10:
}

uint64_t __70__PXMediaAnalysisVideoStabilizationRecipeSource_cacheRecipe_forAsset___block_invoke()
{
  v0 = objc_alloc_init(PXLRUMemoryCache);
  v1 = RecipeCache;
  RecipeCache = v0;

  v2 = RecipeCache;

  return [v2 setNumberOfSlots:20];
}

+ (id)cachedRecipeForAsset:(id)asset
{
  assetCopy = asset;
  v4 = RecipeCache;
  localIdentifier = [assetCopy localIdentifier];
  v6 = [v4 objectForKey:localIdentifier];

  if (!v6)
  {
    v12 = 0;
    goto LABEL_9;
  }

  v7 = [v6 objectForKeyedSubscript:@"AdjustmentDate"];
  null = [MEMORY[0x1E695DFB0] null];

  adjustmentTimestamp = [assetCopy adjustmentTimestamp];
  v10 = adjustmentTimestamp;
  if (v7 == null)
  {

    if (!v10)
    {
      goto LABEL_4;
    }

LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v11 = [adjustmentTimestamp isEqualToDate:v7];

  if (!v11)
  {
    goto LABEL_7;
  }

LABEL_4:
  v12 = [v6 objectForKeyedSubscript:@"Recipe"];
LABEL_8:

LABEL_9:

  return v12;
}

@end
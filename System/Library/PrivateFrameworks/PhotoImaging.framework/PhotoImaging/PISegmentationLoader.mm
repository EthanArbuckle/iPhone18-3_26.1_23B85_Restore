@interface PISegmentationLoader
+ (BOOL)clientIsMobileSlideShow;
+ (BOOL)currentDeviceSupportsSettlingEffect;
+ (BOOL)saveSegmentationItem:(id)item compoundLayerStack:(id)stack style:(id)style toWallpaperURL:(id)l error:(id *)error;
+ (BOOL)saveSegmentationItem:(id)item toURL:(id)l error:(id *)error;
+ (id)_loadSegmentationItemFromURL:(id)l error:(id *)error;
+ (id)_loadSegmentationItemFromWallpaperURL:(id)l error:(id *)error;
+ (id)effectiveLayoutForSegmentationItem:(id)item editConfiguration:(id)configuration layerStackOptions:(unint64_t)options;
+ (id)generateLayerStackForItem:(id)item style:(id)style layout:(id)layout ignoreOriginalLayout:(BOOL)originalLayout options:(unint64_t)options enableSettlingEffect:(BOOL)effect enableSpatialPhoto:(BOOL)photo allowedLayoutStrategies:(unint64_t)self0 shouldRecalculateLayoutProperties:(BOOL)self1 useLegacyHeadroom:(BOOL)self2 userAdjustedVisibleFrame:(BOOL)self3 completion:(id)self4;
+ (id)livePhotoCompositionForVideoData:(id)data cropRect:(CGRect)rect photoComposition:(id)composition;
+ (id)loadCompoundLayerStackFromWallpaperURL:(id)l options:(unint64_t)options error:(id *)specific;
+ (id)loadSegmentationItemFromURL:(id)l error:(id *)error;
+ (id)loadSegmentationItemFromWallpaperURL:(id)l error:(id *)error;
+ (id)loadStyleFromWallpaperURL:(id)l error:(id *)specific;
+ (id)proxyScalePolicy;
+ (id)reloadSegmentationItemFromWallpaperURL:(id)l asset:(id)asset completion:(id)completion;
+ (id)renderPriorityForResourcePriority:(int64_t)priority;
+ (id)saveSegmentationItem:(id)item layerStackOptions:(unint64_t)options configuration:(id)configuration style:(id)style layout:(id)layout allowedLayoutStrategies:(unint64_t)strategies shouldRecalculateLayoutProperties:(BOOL)properties shouldKeepSpecifiedStyle:(BOOL)self0 toWallpaperURL:(id)self1 completion:(id)self2;
+ (id)segmentationCompositionForAssetResource:(id)resource;
+ (id)segmentationCompositionForImageURL:(id)l fileUTI:(id)i orientation:(int64_t)orientation proxyImage:(CGImage *)image;
+ (id)segmentationCompositionForProxyImage:(CGImage *)image orientation:(int64_t)orientation;
+ (id)segmentationSourceForImageURL:(id)l fileUTI:(id)i orientation:(int64_t)orientation proxyImage:(CGImage *)image;
+ (void)_freeResources;
+ (void)_renderPreviewLayerStackFromWallpaperURL:(id)l styleCategory:(id)category completion:(id)completion;
+ (void)_saveSegmentationItem:(id)item compoundLayerStack:(id)stack style:(id)style toWallpaperURL:(id)l completion:(id)completion;
+ (void)ensureResources;
+ (void)freeResources;
+ (void)initialize;
+ (void)loadSpatialPhotoForSegmentationItem:(id)item asset:(id)asset completion:(id)completion;
+ (void)renderPreviewLayerStackFromWallpaperURL:(id)l styleCategory:(id)category completion:(id)completion;
+ (void)warmUpClassificationDetectors;
+ (void)warmUpResources;
- (BOOL)_isValidSegmentationMatteHistogramForDepth:(id)depth;
- (BOOL)_shouldEnableSegmentationByDefault;
- (BOOL)_shouldEnableSettlingEffectByDefault;
- (BOOL)_shouldEnableSpatialPhotoByDefault;
- (BOOL)_shouldLoadSettlingEffectForItem:(id)item;
- (PISegmentationLoader)initWithParallaxAsset:(id)asset;
- (PISegmentationLoader)initWithSegmentationItem:(id)item parallaxAsset:(id)asset;
- (id)_computeDefaultLayoutForItem:(id)item error:(id *)error;
- (id)_defaultLayoutRequestForItem:(id)item;
- (id)_tryLoadSegmentationItemFromCache:(id)cache;
- (id)currentContextInfo;
- (void)_abort:(id)_abort;
- (void)_analyzeColors:(id)colors completion:(id)completion;
- (void)_cacheSegmentationDataForItem:(id)item;
- (void)_classify:(id)_classify completion:(id)completion;
- (void)_didLoad:(id)load completion:(id)completion;
- (void)_handlePartialItem:(id)item loadingState:(unint64_t)state;
- (void)_load:(id)_load;
- (void)_loadAssetResource:(int64_t)resource allowNetworkAccess:(BOOL)access options:(id)options completion:(id)completion;
- (void)_loadAssetResource:(int64_t)resource options:(id)options completion:(id)completion;
- (void)_loadAssetResourceForLiveOriginalWithCompletion:(id)completion;
- (void)_loadAssetResourceForProxy:(BOOL)proxy completion:(id)completion;
- (void)_loadBackground:(id)background completion:(id)completion;
- (void)_loadFinalResource:(id)resource completion:(id)completion;
- (void)_loadFirstPreferredResource:(id)resource completion:(id)completion;
- (void)_loadFullSizeResource:(id)resource completion:(id)completion;
- (void)_loadHDRGainMap:(id)map completion:(id)completion;
- (void)_loadItem:(id)item completion:(id)completion;
- (void)_loadLiveOriginalResource:(id)resource completion:(id)completion;
- (void)_loadLocalLightData:(id)data completion:(id)completion;
- (void)_loadMotionScore:(id)score completion:(id)completion;
- (void)_loadProxyResource:(id)resource completion:(id)completion;
- (void)_loadRegions:(id)regions completion:(id)completion;
- (void)_loadSegmentationData:(id)data layoutGroup:(id)group completion:(id)completion;
- (void)_loadSettlingEffect:(id)effect layoutGroup:(id)group completion:(id)completion;
- (void)_loadSpatialPhoto:(id)photo layoutGroup:(id)group completion:(id)completion;
- (void)_performLayout:(id)layout completion:(id)completion;
- (void)_performSegmentation:(id)segmentation type:(int64_t)type completion:(id)completion;
- (void)_performSettlingEffectLayout:(id)layout completion:(id)completion;
- (void)_performSpatialPhotoLayout:(id)layout completion:(id)completion;
- (void)_segment:(id)_segment completion:(id)completion;
- (void)_updateItem:(id)item withSettlingEffectGatingFailures:(unint64_t)failures;
- (void)_updateItem:(id)item withSpatialPhotoGatingFailures:(unint64_t)failures;
- (void)cancel;
- (void)loadSegmentationItemWithCompletion:(id)completion;
- (void)refreshSegmentationItem:(id)item completion:(id)completion;
@end

@implementation PISegmentationLoader

- (void)_cacheSegmentationDataForItem:(id)item
{
  itemCopy = item;
  if (itemCopy && !self->_isCancelled && !self->_loadingError)
  {
    v5 = +[PIGlobalSettings globalSettings];
    if ([v5 segmentationDisableCaching])
    {
    }

    else
    {
      disableCache = [(PISegmentationLoader *)self disableCache];

      if (!disableCache)
      {
        segmentationDataURL = [itemCopy segmentationDataURL];

        if (!segmentationDataURL)
        {
          asset = [(PISegmentationLoader *)self asset];
          supportsSegmentationResourceCaching = [asset supportsSegmentationResourceCaching];

          if (supportsSegmentationResourceCaching)
          {
            asset2 = [(PISegmentationLoader *)self asset];
            v11[0] = MEMORY[0x1E69E9820];
            v11[1] = 3221225472;
            v11[2] = __54__PISegmentationLoader__cacheSegmentationDataForItem___block_invoke;
            v11[3] = &unk_1E82AC3E8;
            v12 = itemCopy;
            selfCopy = self;
            [asset2 updateSegmentationResource:v11];
          }
        }
      }
    }
  }
}

uint64_t __54__PISegmentationLoader__cacheSegmentationDataForItem___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = s_log_24360;
  v5 = v4;
  v6 = s_signpost_24361;
  if ((s_signpost_24361 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v6, "PISegmentationLoader.data.write", "", buf, 2u);
  }

  v7 = *(a1 + 32);
  v19 = 0;
  v8 = [v7 saveSegmentationDataToURL:v3 error:&v19];
  v9 = v19;
  v10 = s_log_24360;
  v11 = v10;
  v12 = s_signpost_24361;
  if ((s_signpost_24361 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v11, OS_SIGNPOST_INTERVAL_END, v12, "PISegmentationLoader.data.write", "", buf, 2u);
  }

  if ((v8 & 1) == 0)
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
    }

    v13 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 40);
      v16 = v13;
      v17 = [v15 asset];
      v18 = [v17 localIdentifier];
      *buf = 138543618;
      v21 = v18;
      v22 = 2114;
      v23 = v9;
      _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "Failed to save segmentation data for asset: %{public}@, error:%{public}@", buf, 0x16u);
    }
  }

  return v8;
}

- (id)_tryLoadSegmentationItemFromCache:(id)cache
{
  v62 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  if (!cacheCopy)
  {
    v53 = NUAssertLogger_24364();
    v15 = &qword_1C7845000;
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "currentInfo != nil"];
      *buf = 138543362;
      *v60 = v54;
      _os_log_error_impl(&dword_1C7694000, v53, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v5 = NUAssertLogger_24364();
    v55 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v55)
      {
        specific = dispatch_get_specific(callStackSymbols->super.isa);
        v56 = MEMORY[0x1E696AF00];
        v15 = specific;
        callStackSymbols = [v56 callStackSymbols];
        v57 = [(PIParallaxSegmentationItem *)callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *v60 = specific;
        *&v60[8] = 2114;
        v61 = v57;
        _os_log_error_impl(&dword_1C7694000, v5, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v55)
    {
      specific = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [specific componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *v60 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v5, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
    goto LABEL_63;
  }

  v5 = cacheCopy;
  v6 = +[PIGlobalSettings globalSettings];
  if ([v6 segmentationDisableCaching])
  {

LABEL_5:
    v8 = 0;
    goto LABEL_37;
  }

  disableCache = [(PISegmentationLoader *)self disableCache];

  if (disableCache)
  {
    goto LABEL_5;
  }

  specific = [(PFParallaxAsset *)self->_asset segmentationResourceURL];
  if (specific)
  {
    v10 = s_log_24360;
    v11 = v10;
    signpost = self->_signpost;
    if (signpost - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C7694000, v11, OS_SIGNPOST_INTERVAL_BEGIN, signpost, "PISegmentationLoader.data.read", "", buf, 2u);
    }

    callStackSymbols = objc_alloc_init(PIParallaxSegmentationItem);
    v58 = 0;
    v14 = [(PIParallaxSegmentationItem *)callStackSymbols loadSegmentationDataFromURL:specific error:&v58];
    v15 = v58;
    v16 = s_log_24360;
    v17 = v16;
    v18 = self->_signpost;
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C7694000, v17, OS_SIGNPOST_INTERVAL_END, v18, "PISegmentationLoader.data.read", "", buf, 2u);
    }

    if (v14)
    {
      contextInfo = [(PIParallaxSegmentationItem *)callStackSymbols contextInfo];
      version = [contextInfo version];
      if (version == [v5 version])
      {
        sourceMode = [contextInfo sourceMode];
        if (sourceMode == [v5 sourceMode])
        {
          segmentationDisabled = [contextInfo segmentationDisabled];
          if (segmentationDisabled != [v5 segmentationDisabled])
          {
            v23 = NULogger_24372();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              segmentationDisabled2 = [contextInfo segmentationDisabled];
              segmentationDisabled3 = [v5 segmentationDisabled];
              *buf = 67109376;
              *v60 = segmentationDisabled2;
              *&v60[4] = 1024;
              *&v60[6] = segmentationDisabled3;
              v26 = "Cached segmentation disabled flag mismatch: got %d, expected %d";
              v27 = v23;
              v28 = 14;
LABEL_31:
              _os_log_impl(&dword_1C7694000, v27, OS_LOG_TYPE_INFO, v26, buf, v28);
            }

LABEL_32:

LABEL_33:
            v8 = 0;
LABEL_34:

LABEL_35:
            goto LABEL_36;
          }

          infillAlgorithm = [contextInfo infillAlgorithm];
          if (infillAlgorithm == [v5 infillAlgorithm])
          {
            layoutConfiguration = [contextInfo layoutConfiguration];
            layoutConfiguration2 = [v5 layoutConfiguration];
            v39 = [layoutConfiguration isEqualToLayoutConfiguration:layoutConfiguration2];

            if ((v39 & 1) == 0)
            {
              v23 = NULogger_24372();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
              {
                layoutConfiguration3 = [contextInfo layoutConfiguration];
                layoutConfiguration4 = [v5 layoutConfiguration];
                *buf = 138543618;
                *v60 = layoutConfiguration3;
                *&v60[8] = 2114;
                v61 = layoutConfiguration4;
                _os_log_impl(&dword_1C7694000, v23, OS_LOG_TYPE_INFO, "Cached segmentation layout configuration mismatch: got %{public}@, expected %{public}@", buf, 0x16u);
              }

              goto LABEL_32;
            }

            if ([(PISegmentationLoader *)self classification])
            {
              classification = [(PISegmentationLoader *)self classification];
              if (classification != [(PIParallaxSegmentationItem *)callStackSymbols classification])
              {
                v50 = NULogger_24372();
                if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
                {
                  [(PIParallaxSegmentationItem *)callStackSymbols classification];
                  v51 = PFPosterClassificationName();
                  [(PISegmentationLoader *)self classification];
                  v52 = PFPosterClassificationName();
                  *buf = 138543618;
                  *v60 = v51;
                  *&v60[8] = 2114;
                  v61 = v52;
                  _os_log_impl(&dword_1C7694000, v50, OS_LOG_TYPE_INFO, "Cached segmentation classification mismatch: got %{public}@, expected %{public}@", buf, 0x16u);
                }

                goto LABEL_33;
              }
            }

            role = [v5 role];
            if (role == [contextInfo role])
            {
              v8 = callStackSymbols;
              goto LABEL_34;
            }

            v23 = NULogger_24372();
            if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              goto LABEL_32;
            }

            role2 = [v5 role];
            role3 = [contextInfo role];
            *buf = 134218240;
            *v60 = role2;
            *&v60[8] = 2048;
            v61 = role3;
            v26 = "Cached segmentation role mismatch: got %ld, expected %ld";
          }

          else
          {
            v23 = NULogger_24372();
            if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              goto LABEL_32;
            }

            infillAlgorithm2 = [contextInfo infillAlgorithm];
            infillAlgorithm3 = [v5 infillAlgorithm];
            *buf = 134218240;
            *v60 = infillAlgorithm2;
            *&v60[8] = 2048;
            v61 = infillAlgorithm3;
            v26 = "Cached segmentation infill algorithm mismatch: got %ld, expected %ld";
          }
        }

        else
        {
          v23 = NULogger_24372();
          if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            goto LABEL_32;
          }

          sourceMode2 = [contextInfo sourceMode];
          sourceMode3 = [v5 sourceMode];
          *buf = 134218240;
          *v60 = sourceMode2;
          *&v60[8] = 2048;
          v61 = sourceMode3;
          v26 = "Cached segmentation source mode mismatch: got %ld, expected %ld";
        }
      }

      else
      {
        if (*MEMORY[0x1E69B3D78] != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
        }

        v30 = *MEMORY[0x1E69B3D80];
        if (!os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
        {
          goto LABEL_33;
        }

        v23 = v30;
        version2 = [contextInfo version];
        version3 = [v5 version];
        *buf = 134218240;
        *v60 = version2;
        *&v60[8] = 2048;
        v61 = version3;
        v26 = "Cached segmentation version mismatch: got %ld, expected %ld";
      }

      v27 = v23;
      v28 = 22;
      goto LABEL_31;
    }

    if (*MEMORY[0x1E69B3D78] == -1)
    {
LABEL_21:
      v29 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
      {
        v44 = v29;
        path = [specific path];
        *buf = 138543618;
        *v60 = path;
        *&v60[8] = 2114;
        v61 = v15;
        _os_log_error_impl(&dword_1C7694000, v44, OS_LOG_TYPE_ERROR, "Failed to read cached segmentation data from: %{public}@, error: %{public}@", buf, 0x16u);
      }

      v8 = 0;
      goto LABEL_35;
    }

LABEL_63:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
    goto LABEL_21;
  }

  v8 = 0;
LABEL_36:

LABEL_37:

  return v8;
}

- (void)_loadLocalLightData:(id)data completion:(id)completion
{
  v35 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  completionCopy = completion;
  composition = [dataCopy composition];

  if (!composition)
  {
    v15 = NUAssertLogger_24364();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "item.composition != nil"];
      *buf = 138543362;
      v32 = v16;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v17 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v19 = NUAssertLogger_24364();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v20)
      {
        v23 = dispatch_get_specific(*v17);
        v24 = MEMORY[0x1E696AF00];
        v25 = v23;
        callStackSymbols = [v24 callStackSymbols];
        v27 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v32 = v23;
        v33 = 2114;
        v34 = v27;
        _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v32 = v22;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  localLightData = [dataCopy localLightData];

  if (localLightData || self->_isCancelled || [(PISegmentationLoader *)self disableRendering])
  {
    completionCopy[2](completionCopy);
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x1E69B3AE8]);
    composition2 = [dataCopy composition];
    v12 = [v10 initWithComposition:composition2 dataExtractor:@"CILocalLight" options:0];

    v13 = [objc_alloc(MEMORY[0x1E69B3BE8]) initWithTargetPixelCount:0x40000];
    [v12 setScalePolicy:v13];

    [v12 setSampleMode:1];
    [v12 setResponseQueue:self->_queue];
    [v12 setRenderContext:self->_renderContext];
    v14 = [objc_opt_class() renderPriorityForResourcePriority:{-[PISegmentationLoader priority](self, "priority")}];
    [v12 setPriority:v14];

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __55__PISegmentationLoader__loadLocalLightData_completion___block_invoke;
    v28[3] = &unk_1E82ACC00;
    v29 = dataCopy;
    v30 = completionCopy;
    [v12 submit:v28];
  }
}

void __55__PISegmentationLoader__loadLocalLightData_completion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
  }

  v5 = MEMORY[0x1E69B3D80];
  v6 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = v3;
    _os_log_impl(&dword_1C7694000, v6, OS_LOG_TYPE_DEFAULT, "Local light data response: %{public}@", buf, 0xCu);
  }

  v11 = 0;
  v7 = [v3 result:&v11];
  v8 = v11;
  if (v7)
  {
    v9 = [v7 data];
    [*(a1 + 32) setLocalLightData:v9];
  }

  else
  {
    if (*v4 != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
    }

    v10 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v13 = v8;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Failed to compute local light data: %{public}@", buf, 0xCu);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_updateItem:(id)item withSpatialPhotoGatingFailures:(unint64_t)failures
{
  v13[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  scores = [itemCopy scores];
  v7 = *MEMORY[0x1E69C0D40];
  v8 = [scores objectForKeyedSubscript:*MEMORY[0x1E69C0D40]];

  unsignedIntegerValue = [v8 unsignedIntegerValue];
  v12 = v7;
  failures = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue | failures];
  v13[0] = failures;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  [itemCopy updateScores:v11];
}

- (void)_updateItem:(id)item withSettlingEffectGatingFailures:(unint64_t)failures
{
  v13[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  scores = [itemCopy scores];
  v7 = *MEMORY[0x1E69C0D18];
  v8 = [scores objectForKeyedSubscript:*MEMORY[0x1E69C0D18]];

  unsignedIntegerValue = [v8 unsignedIntegerValue];
  v12 = v7;
  failures = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue | failures];
  v13[0] = failures;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  [itemCopy updateScores:v11];
}

- (void)_performSpatialPhotoLayout:(id)layout completion:(id)completion
{
  layoutCopy = layout;
  completionCopy = completion;
  spatialPhotoLayout = [layoutCopy spatialPhotoLayout];

  if (spatialPhotoLayout || self->_isCancelled)
  {
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v9 = [(PISegmentationLoader *)self _defaultLayoutRequestForItem:layoutCopy];
    [v9 setShouldConsiderHeadroom:!self->_disableHeadroomLayout];
    [v9 setShouldComputeSpatialLayout:1];
    [layoutCopy spatialPhotoNormalizedBounds];
    [v9 setSpatialPadding:?];
    if ([(PISegmentationLoader *)self disableSpatialAdaptiveLayout])
    {
      [v9 setAllowedLayoutStrategies:1];
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62__PISegmentationLoader__performSpatialPhotoLayout_completion___block_invoke;
    v10[3] = &unk_1E82ACC00;
    v11 = layoutCopy;
    v12 = completionCopy;
    [v9 submit:v10];
  }
}

void __62__PISegmentationLoader__performSpatialPhotoLayout_completion___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
  }

  v5 = MEMORY[0x1E69B3D80];
  v6 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = v3;
    _os_log_impl(&dword_1C7694000, v6, OS_LOG_TYPE_DEFAULT, "Poster spatial photo layout response: %{public}@", buf, 0xCu);
  }

  v15 = 0;
  v7 = [v3 result:&v15];
  v8 = v15;
  if (v7)
  {
    v9 = [v7 scores];
    v10 = [v9 objectForKeyedSubscript:*MEMORY[0x1E69C0C98]];

    v11 = *(a1 + 32);
    v16 = *MEMORY[0x1E69C0D48];
    v17 = v10;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    [v11 updateScores:v12];

    v13 = [v7 layout];
    [*(a1 + 32) setSpatialPhotoLayout:v13];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (*v4 != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
    }

    v14 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v19 = v8;
      _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "Failed to layout item: %{public}@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)_performSettlingEffectLayout:(id)layout completion:(id)completion
{
  layoutCopy = layout;
  completionCopy = completion;
  settlingEffectLayout = [layoutCopy settlingEffectLayout];

  if (settlingEffectLayout || self->_isCancelled || [(PISegmentationLoader *)self disableRendering])
  {
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v9 = [(PISegmentationLoader *)self _defaultLayoutRequestForItem:layoutCopy];
    [v9 setShouldComputeAllScores:0];
    [v9 setShouldConstrainLayoutToBounds:1];
    [v9 setHasSettlingEffect:1];
    [layoutCopy settlingEffectNormalizedBounds];
    [v9 setNormalizedLayoutBounds:?];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __64__PISegmentationLoader__performSettlingEffectLayout_completion___block_invoke;
    v10[3] = &unk_1E82ACC00;
    v11 = layoutCopy;
    v12 = completionCopy;
    [v9 submit:v10];
  }
}

void __64__PISegmentationLoader__performSettlingEffectLayout_completion___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
  }

  v5 = MEMORY[0x1E69B3D80];
  v6 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = v3;
    _os_log_impl(&dword_1C7694000, v6, OS_LOG_TYPE_DEFAULT, "Poster settling effect layout response: %{public}@", buf, 0xCu);
  }

  v15 = 0;
  v7 = [v3 result:&v15];
  v8 = v15;
  if (v7)
  {
    v9 = [v7 scores];
    v10 = [v9 objectForKeyedSubscript:*MEMORY[0x1E69C0C98]];

    v11 = *(a1 + 32);
    v16 = *MEMORY[0x1E69C0D20];
    v17 = v10;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    [v11 updateScores:v12];

    v13 = [v7 layout];
    [*(a1 + 32) setSettlingEffectLayout:v13];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (*v4 != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
    }

    v14 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v19 = v8;
      _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "Failed to layout item: %{public}@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)_performLayout:(id)layout completion:(id)completion
{
  layoutCopy = layout;
  completionCopy = completion;
  originalLayout = [layoutCopy originalLayout];

  if (originalLayout || self->_isCancelled)
  {
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v9 = dispatch_group_create();
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x3032000000;
    v20[3] = __Block_byref_object_copy__24387;
    v20[4] = __Block_byref_object_dispose__24388;
    v21 = 0;
    dispatch_group_enter(v9);
    v10 = [(PISegmentationLoader *)self _defaultLayoutRequestForItem:layoutCopy];
    [v10 setShouldConsiderHeadroom:!self->_disableHeadroomLayout];
    [v10 setRole:{-[PISegmentationLoader role](self, "role")}];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __50__PISegmentationLoader__performLayout_completion___block_invoke;
    v16[3] = &unk_1E82AC370;
    v17 = layoutCopy;
    v19 = v20;
    v11 = v9;
    v18 = v11;
    [v10 submit:v16];

    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__PISegmentationLoader__performLayout_completion___block_invoke_171;
    block[3] = &unk_1E82AC398;
    v14 = completionCopy;
    v15 = v20;
    dispatch_group_notify(v11, queue, block);

    _Block_object_dispose(v20, 8);
  }
}

void __50__PISegmentationLoader__performLayout_completion___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
  }

  v5 = MEMORY[0x1E69B3D80];
  v6 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = v3;
    _os_log_impl(&dword_1C7694000, v6, OS_LOG_TYPE_DEFAULT, "Poster original layout response: %{public}@", buf, 0xCu);
  }

  v15 = 0;
  v7 = [v3 result:&v15];
  v8 = v15;
  if (v7)
  {
    v9 = *(a1 + 32);
    v10 = [v7 scores];
    [v9 updateScores:v10];

    v11 = [v7 layout];
    [*(a1 + 32) setOriginalLayout:v11];
  }

  else
  {
    if (*v4 != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
    }

    v12 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v17 = v8;
      _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "Failed to layout item: %{public}@", buf, 0xCu);
    }

    v13 = *(*(a1 + 48) + 8);
    v14 = v8;
    v11 = *(v13 + 40);
    *(v13 + 40) = v14;
  }

  dispatch_group_leave(*(a1 + 40));
}

- (void)refreshSegmentationItem:(id)item completion:(id)completion
{
  v38 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  completionCopy = completion;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = NUAssertLogger_24364();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "[item isKindOfClass:PIParallaxSegmentationItem.class]"];
      *buf = 138543362;
      v35 = v19;
      _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v20 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v22 = NUAssertLogger_24364();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v23)
      {
        v26 = dispatch_get_specific(*v20);
        v27 = MEMORY[0x1E696AF00];
        v28 = v26;
        callStackSymbols = [v27 callStackSymbols];
        v30 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v35 = v26;
        v36 = 2114;
        v37 = v30;
        _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v35 = v25;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  layoutConfiguration = [itemCopy layoutConfiguration];
  layoutConfiguration2 = [(PISegmentationLoader *)self layoutConfiguration];
  v10 = [layoutConfiguration isEqualToLayoutConfiguration:layoutConfiguration2];

  if (v10)
  {
    completionCopy[2](completionCopy, itemCopy);
  }

  else
  {
    v11 = [itemCopy copy];
    v12 = dispatch_group_create();
    [v11 setOriginalLayout:0];
    [v11 setColorAnalysis:0];
    currentContextInfo = [(PISegmentationLoader *)self currentContextInfo];
    [v11 setContextInfo:currentContextInfo];

    v14 = s_log_24360;
    v15 = v14;
    signpost = self->_signpost;
    if (signpost - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C7694000, v15, OS_SIGNPOST_INTERVAL_BEGIN, signpost, "PISegmentationLoader.refresh", "", buf, 2u);
    }

    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __59__PISegmentationLoader_refreshSegmentationItem_completion___block_invoke;
    v31[3] = &unk_1E82ABF90;
    v31[4] = self;
    v32 = v11;
    v33 = completionCopy;
    v17 = v11;
    [(PISegmentationLoader *)self _loadSegmentationData:v17 layoutGroup:v12 completion:v31];
  }
}

uint64_t __59__PISegmentationLoader_refreshSegmentationItem_completion___block_invoke(uint64_t a1)
{
  v2 = s_log_24360;
  v3 = v2;
  v4 = *(*(a1 + 32) + 8);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v3, OS_SIGNPOST_INTERVAL_END, v4, "PISegmentationLoader.refresh", "", v6, 2u);
  }

  return (*(*(a1 + 48) + 16))();
}

- (id)_defaultLayoutRequestForItem:(id)item
{
  v33 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  composition = [itemCopy composition];

  if (!composition)
  {
    v16 = NUAssertLogger_24364();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing composition"];
      v29 = 138543362;
      v30 = v17;
      _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v29, 0xCu);
    }

    v18 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v20 = NUAssertLogger_24364();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v21)
      {
        v24 = dispatch_get_specific(*v18);
        v25 = MEMORY[0x1E696AF00];
        v26 = v24;
        callStackSymbols = [v25 callStackSymbols];
        v28 = [callStackSymbols componentsJoinedByString:@"\n"];
        v29 = 138543618;
        v30 = v24;
        v31 = 2114;
        v32 = v28;
        _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v29, 0x16u);
      }
    }

    else if (v21)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      v29 = 138543362;
      v30 = v23;
      _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v29, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v6 = [PIPosterLayoutRequest alloc];
  composition2 = [itemCopy composition];
  v8 = [(NURenderRequest *)v6 initWithComposition:composition2];

  layoutProvider = [(PISegmentationLoader *)self layoutProvider];
  [(PIPosterLayoutRequest *)v8 setLayoutProvider:layoutProvider];

  layoutConfiguration = [(PISegmentationLoader *)self layoutConfiguration];
  [(PIPosterLayoutRequest *)v8 setLayoutConfiguration:layoutConfiguration];

  regions = [itemCopy regions];
  [(PIPosterLayoutRequest *)v8 setLayoutRegions:regions];

  segmentationMatte = [itemCopy segmentationMatte];
  [(PIPosterLayoutRequest *)v8 setSegmentationMatte:segmentationMatte];

  segmentationConfidenceMap = [itemCopy segmentationConfidenceMap];
  [(PIPosterLayoutRequest *)v8 setSegmentationConfidenceMap:segmentationConfidenceMap];

  -[PIPosterLayoutRequest setSegmentationClassification:](v8, "setSegmentationClassification:", [itemCopy classification]);
  if ([(PISegmentationLoader *)self disableAdaptiveLayout])
  {
    [(PIPosterLayoutRequest *)v8 setAllowedLayoutStrategies:1];
  }

  [(NURenderRequest *)v8 setResponseQueue:self->_queue];
  [(NURenderRequest *)v8 setRenderContext:self->_renderContext];
  v14 = [objc_opt_class() renderPriorityForResourcePriority:{-[PISegmentationLoader priority](self, "priority")}];
  [(NURenderRequest *)v8 setPriority:v14];

  return v8;
}

- (void)_loadRegions:(id)regions completion:(id)completion
{
  v128 = *MEMORY[0x1E69E9840];
  regionsCopy = regions;
  completionCopy = completion;
  regions = [regionsCopy regions];

  if (regions || self->_isCancelled)
  {
    completionCopy[2](completionCopy);
  }

  else
  {
    composition = [regionsCopy composition];

    if (!composition)
    {
      v45 = NUAssertLogger_24364();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing composition"];
        *buf = 138543362;
        *&buf[4] = v46;
        _os_log_error_impl(&dword_1C7694000, v45, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      v47 = MEMORY[0x1E69B38E8];
      specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
      v49 = NUAssertLogger_24364();
      v50 = os_log_type_enabled(v49, OS_LOG_TYPE_ERROR);
      if (specific)
      {
        if (v50)
        {
          v53 = dispatch_get_specific(*v47);
          v54 = MEMORY[0x1E696AF00];
          v55 = v53;
          callStackSymbols = [v54 callStackSymbols];
          v57 = [callStackSymbols componentsJoinedByString:@"\n"];
          *buf = 138543618;
          *&buf[4] = v53;
          *&buf[12] = 2114;
          *&buf[14] = v57;
          _os_log_error_impl(&dword_1C7694000, v49, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v50)
      {
        callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
        v52 = [callStackSymbols2 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        *&buf[4] = v52;
        _os_log_error_impl(&dword_1C7694000, v49, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      _NUAssertFailHandler();
      __break(1u);
    }

    v10 = dispatch_group_create();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x4010000000;
    v125 = &unk_1C788B126;
    v126 = 0u;
    v127 = 0u;
    [(PFParallaxAsset *)self->_asset acceptableCropRect];
    *&v126 = v11;
    *(&v126 + 1) = v12;
    *&v127 = v13;
    *(&v127 + 1) = v14;
    v118 = 0;
    v119 = &v118;
    v120 = 0x4010000000;
    v121 = &unk_1C788B126;
    v122 = 0u;
    v123 = 0u;
    [(PFParallaxAsset *)self->_asset preferredCropRect];
    *&v122 = v15;
    *(&v122 + 1) = v16;
    *&v123 = v17;
    *(&v123 + 1) = v18;
    v115[0] = 0;
    v115[1] = v115;
    v115[2] = 0x4010000000;
    v115[3] = &unk_1C788B126;
    v116 = 0u;
    v117 = 0u;
    v19 = *(*&buf[8] + 48);
    v116 = *(*&buf[8] + 32);
    v117 = v19;
    v112[0] = 0;
    v112[1] = v112;
    v112[2] = 0x4010000000;
    v112[3] = &unk_1C788B126;
    v113 = 0u;
    v114 = 0u;
    v20 = *(v119 + 3);
    v113 = *(v119 + 2);
    v114 = v20;
    v21 = *(*&buf[8] + 32);
    *&v20 = *(*&buf[8] + 40);
    v22 = *(*&buf[8] + 48);
    v23 = *(*&buf[8] + 56);
    if (CGRectIsEmpty(*(&v20 - 8)) || CGRectIsEmpty(*(v119 + 1)))
    {
      dispatch_group_enter(v10);
      asset = self->_asset;
      v108[0] = MEMORY[0x1E69E9820];
      v108[1] = 3221225472;
      v108[2] = __48__PISegmentationLoader__loadRegions_completion___block_invoke;
      v108[3] = &unk_1E82AC2D0;
      v110 = v115;
      v111 = v112;
      v109 = v10;
      [(PFParallaxAsset *)asset loadCropRectsWithResultHandler:v108];
    }

    v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (CGRectIsEmpty(*(*&buf[8] + 32)))
    {
      v58 = objc_alloc_init(MEMORY[0x1E6984568]);
      [v25 addObject:v58];
    }

    else
    {
      v58 = 0;
    }

    if (CGRectIsEmpty(*(v119 + 1)))
    {
      v26 = objc_alloc_init(MEMORY[0x1E6984540]);
      [v25 addObject:v26];
    }

    else
    {
      v26 = 0;
    }

    v102 = 0;
    v103 = &v102;
    v104 = 0x4010000000;
    v105 = &unk_1C788B126;
    v27 = *(MEMORY[0x1E695F050] + 16);
    v106 = *MEMORY[0x1E695F050];
    v107 = v27;
    if ([regionsCopy classification] == 1 && (-[PFParallaxAsset gazeAreaRect](self->_asset, "gazeAreaRect"), v103[1] = v129, CGRectIsNull(v129)))
    {
      v28 = objc_alloc_init(MEMORY[0x1E69844C0]);
      [v25 addObject:v28];
    }

    else
    {
      v28 = 0;
    }

    v96 = 0;
    v97 = &v96;
    v98 = 0x3032000000;
    v99 = __Block_byref_object_copy__24387;
    v100 = __Block_byref_object_dispose__24388;
    v101 = 0;
    if ([regionsCopy classification] == 1 && (-[PFParallaxAsset faceRegions](self->_asset, "faceRegions"), v29 = objc_claimAutoreleasedReturnValue(), v30 = v97[5], v97[5] = v29, v30, !v97[5]))
    {
      v31 = objc_alloc_init(MEMORY[0x1E69844D0]);
      [v25 addObject:v31];
    }

    else
    {
      v31 = 0;
    }

    v90 = 0;
    v91 = &v90;
    v92 = 0x3032000000;
    v93 = __Block_byref_object_copy__24387;
    v94 = __Block_byref_object_dispose__24388;
    v95 = 0;
    v84 = 0;
    v85 = &v84;
    v86 = 0x3032000000;
    v87 = __Block_byref_object_copy__24387;
    v88 = __Block_byref_object_dispose__24388;
    v89 = 0;
    if ([regionsCopy classification] == 2)
    {
      petsRegions = self->_petsRegions;
      if (petsRegions)
      {
        petRegions = self->_petsRegions;
      }

      else
      {
        petRegions = [(PFParallaxAsset *)self->_asset petRegions];
      }

      objc_storeStrong(v91 + 5, petRegions);
      if (!petsRegions)
      {
      }

      petsFaceRegions = self->_petsFaceRegions;
      if (petsFaceRegions)
      {
        faceRegions = self->_petsFaceRegions;
      }

      else
      {
        faceRegions = [(PFParallaxAsset *)self->_asset faceRegions];
      }

      objc_storeStrong(v85 + 5, faceRegions);
      if (!petsFaceRegions)
      {
      }

      if ((!v91[5] || !v85[5]) && ![(PISegmentationLoader *)self disableRendering]&& self->_asset)
      {
        dispatch_group_enter(v10);
        v36 = objc_alloc_init(MEMORY[0x1E69C0738]);
        [v36 setNeedsInProcessHandling:{-[PISegmentationLoader performMediaAnalysisInProcess](self, "performMediaAnalysisInProcess")}];
        v37 = self->_asset;
        v80[0] = MEMORY[0x1E69E9820];
        v80[1] = 3221225472;
        v80[2] = __48__PISegmentationLoader__loadRegions_completion___block_invoke_2;
        v80[3] = &unk_1E82AC2F8;
        v80[4] = self;
        v82 = &v90;
        v83 = &v84;
        v81 = v10;
        self->_petsRequestID = [(PFParallaxAsset *)v37 loadPetsRegionsWithOptions:v36 resultHandler:v80];
      }
    }

    if ([v25 count] && !-[PISegmentationLoader disableRendering](self, "disableRendering"))
    {
      dispatch_group_enter(v10);
      v38 = objc_alloc(MEMORY[0x1E69B3D48]);
      composition2 = [regionsCopy composition];
      v40 = [v38 initWithComposition:composition2];

      [v40 setVisionRequests:v25];
      proxyScalePolicy = [objc_opt_class() proxyScalePolicy];
      [v40 setScalePolicy:proxyScalePolicy];

      v42 = +[PIPhotoEditHelper pipelineFiltersForShowingOriginalWithGeometry];
      [v40 setPipelineFilters:v42];

      [v40 setResponseQueue:self->_queue];
      [v40 setRenderContext:self->_renderContext];
      v43 = [objc_opt_class() renderPriorityForResourcePriority:{-[PISegmentationLoader priority](self, "priority")}];
      [v40 setPriority:v43];

      v70[0] = MEMORY[0x1E69E9820];
      v70[1] = 3221225472;
      v70[2] = __48__PISegmentationLoader__loadRegions_completion___block_invoke_165;
      v70[3] = &unk_1E82AC320;
      v71 = v58;
      v76 = buf;
      v72 = v26;
      v77 = &v118;
      v73 = v31;
      v78 = &v96;
      v74 = v28;
      v79 = &v102;
      v75 = v10;
      [v40 submit:v70];
    }

    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__PISegmentationLoader__loadRegions_completion___block_invoke_168;
    block[3] = &unk_1E82AC348;
    v62 = &v96;
    v63 = &v84;
    v64 = v115;
    v65 = buf;
    v66 = v112;
    v67 = &v118;
    v68 = &v102;
    v69 = &v90;
    v60 = regionsCopy;
    v61 = completionCopy;
    dispatch_group_notify(v10, queue, block);

    _Block_object_dispose(&v84, 8);
    _Block_object_dispose(&v90, 8);

    _Block_object_dispose(&v96, 8);
    _Block_object_dispose(&v102, 8);

    _Block_object_dispose(v112, 8);
    _Block_object_dispose(v115, 8);
    _Block_object_dispose(&v118, 8);
    _Block_object_dispose(buf, 8);
  }
}

void __48__PISegmentationLoader__loadRegions_completion___block_invoke(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  if (!a2)
  {
    v10 = *(*(a1 + 40) + 8);
    v10[4] = a3;
    v10[5] = a4;
    v10[6] = a5;
    v10[7] = a6;
    v11 = *(*(a1 + 48) + 8);
    v11[4] = a7;
    v11[5] = a8;
    v11[6] = a9;
    v11[7] = a10;
  }

  dispatch_group_leave(*(a1 + 32));
}

void __48__PISegmentationLoader__loadRegions_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  *(*(a1 + 32) + 32) = 0;
  v11 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
  }

  v12 = MEMORY[0x1E69B3D80];
  v13 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412802;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&dword_1C7694000, v13, OS_LOG_TYPE_DEFAULT, "MAD pets results: %@, pets face results: %@, error: %@", &v15, 0x20u);
  }

  if (v8 && v9)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  }

  else
  {
    if (*v11 != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
    }

    v14 = *v12;
    if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543362;
      v16 = v10;
      _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "Failed to load pets regions: %{public}@", &v15, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void __48__PISegmentationLoader__loadRegions_completion___block_invoke_165(uint64_t a1, void *a2)
{
  v100 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
  }

  v5 = MEMORY[0x1E69B3D80];
  v6 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v99 = v3;
    _os_log_impl(&dword_1C7694000, v6, OS_LOG_TYPE_DEFAULT, "Vision detection response: %@", buf, 0xCu);
  }

  v93 = 0;
  v7 = [v3 result:&v93];
  v8 = v93;
  if (v7)
  {
    v75 = v3;
    v9 = *(a1 + 32);
    v10 = MEMORY[0x1E695F050];
    if (v9)
    {
      v11 = v8;
      v12 = [v9 results];
      v13 = [v12 firstObject];

      v14 = *(*(a1 + 72) + 8);
      v15 = v10[1];
      *(v14 + 32) = *v10;
      *(v14 + 48) = v15;
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      v92 = 0u;
      v16 = [v13 salientObjects];
      v17 = [v16 countByEnumeratingWithState:&v89 objects:v97 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v90;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v90 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(a1 + 72) + 8);
            [*(*(&v89 + 1) + 8 * i) boundingBox];
            v101.origin.x = v22;
            v101.origin.y = v23;
            v101.size.width = v24;
            v101.size.height = v25;
            *(*(*(a1 + 72) + 8) + 32) = CGRectUnion(v21[1], v101);
          }

          v18 = [v16 countByEnumeratingWithState:&v89 objects:v97 count:16];
        }

        while (v18);
      }

      v8 = v11;
    }

    v26 = *(a1 + 40);
    if (v26)
    {
      v27 = [v26 results];
      v28 = [v27 firstObject];

      v29 = *(*(a1 + 80) + 8);
      v30 = v10[1];
      *(v29 + 32) = *v10;
      *(v29 + 48) = v30;
      v85 = 0u;
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v31 = [v28 salientObjects];
      v32 = [v31 countByEnumeratingWithState:&v85 objects:v96 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v86;
        do
        {
          for (j = 0; j != v33; ++j)
          {
            if (*v86 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = *(*(a1 + 80) + 8);
            [*(*(&v85 + 1) + 8 * j) boundingBox];
            v102.origin.x = v37;
            v102.origin.y = v38;
            v102.size.width = v39;
            v102.size.height = v40;
            *(*(*(a1 + 80) + 8) + 32) = CGRectUnion(v36[1], v102);
          }

          v33 = [v31 countByEnumeratingWithState:&v85 objects:v96 count:16];
        }

        while (v33);
      }
    }

    v41 = *(a1 + 48);
    v3 = v75;
    if (v41)
    {
      v73 = v8;
      v74 = v7;
      v42 = [v41 results];
      v43 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v42, "count")}];
      v81 = 0u;
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      v44 = v42;
      v45 = [v44 countByEnumeratingWithState:&v81 objects:v95 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = *v82;
        do
        {
          for (k = 0; k != v46; ++k)
          {
            if (*v82 != v47)
            {
              objc_enumerationMutation(v44);
            }

            [*(*(&v81 + 1) + 8 * k) boundingBox];
            v80[0] = v49;
            v80[1] = v50;
            v80[2] = v51;
            v80[3] = v52;
            v53 = [MEMORY[0x1E696B098] valueWithBytes:v80 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
            [v43 addObject:v53];
          }

          v46 = [v44 countByEnumeratingWithState:&v81 objects:v95 count:16];
        }

        while (v46);
      }

      v54 = [v43 copy];
      v55 = *(*(a1 + 88) + 8);
      v56 = *(v55 + 40);
      *(v55 + 40) = v54;

      v8 = v73;
      v7 = v74;
    }

    v57 = *(a1 + 56);
    if (v57)
    {
      v58 = [v57 results];
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      v79 = 0u;
      v59 = [v58 countByEnumeratingWithState:&v76 objects:v94 count:16];
      if (v59)
      {
        v60 = v59;
        v61 = *v77;
        do
        {
          for (m = 0; m != v60; ++m)
          {
            if (*v77 != v61)
            {
              objc_enumerationMutation(v58);
            }

            v63 = [*(*(&v76 + 1) + 8 * m) gaze];
            [v63 locationBounds];
            v65 = v64;
            v67 = v66;
            v69 = v68;
            v71 = v70;

            v103.origin.x = v65;
            v103.origin.y = v67;
            v103.size.width = v69;
            v103.size.height = v71;
            *(*(*(a1 + 96) + 8) + 32) = CGRectUnion(*(*(*(a1 + 96) + 8) + 32), v103);
          }

          v60 = [v58 countByEnumeratingWithState:&v76 objects:v94 count:16];
        }

        while (v60);
      }
    }
  }

  else
  {
    if (*v4 != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
    }

    v72 = *v5;
    if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v99 = v8;
      _os_log_error_impl(&dword_1C7694000, v72, OS_LOG_TYPE_ERROR, "Failed to run face/saliency detection: %{public}@", buf, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 64));
}

void __48__PISegmentationLoader__loadRegions_completion___block_invoke_168(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 8);
  v5 = *(v2 + 40);
  v3 = (v2 + 40);
  v4 = v5;
  if (!v5)
  {
    v4 = *(*(*(a1 + 56) + 8) + 40);
  }

  objc_storeStrong(v3, v4);
  IsEmpty = CGRectIsEmpty(*(*(*(a1 + 64) + 8) + 32));
  v7 = 64;
  if (IsEmpty)
  {
    v7 = 72;
  }

  v8 = *(*(a1 + v7) + 8);
  v10 = v8[6];
  v9 = v8[7];
  v11 = v8[4];
  v12 = v8[5];
  v13 = CGRectIsEmpty(*(*(*(a1 + 80) + 8) + 32));
  v14 = 80;
  if (v13)
  {
    v14 = 88;
  }

  v15 = *(*(a1 + v14) + 8);
  v17 = v15[6];
  v16 = v15[7];
  v19 = v15[4];
  v18 = v15[5];
  v20 = [PISegmentationLayoutRegions alloc];
  v21 = *(*(a1 + 96) + 8);
  v22 = [(PISegmentationLayoutRegions *)v20 initWithAcceptableRect:*(*(*(a1 + 48) + 8) + 40) preferredRect:*(*(*(a1 + 104) + 8) + 40) gazeAreaRect:v11 faces:v12 pets:v10, v9, v19, v18, v17, v16, v21[4], v21[5], v21[6], v21[7]];
  [*(a1 + 32) setRegions:v22];
  (*(*(a1 + 40) + 16))();
}

- (void)_loadBackground:(id)background completion:(id)completion
{
  v41 = *MEMORY[0x1E69E9840];
  backgroundCopy = background;
  completionCopy = completion;
  segmentationBackground = [backgroundCopy segmentationBackground];

  if (segmentationBackground || self->_isCancelled || ((+[PIGlobalSettings globalSettings](PIGlobalSettings, "globalSettings"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 segmentationInfillAlgorithm], v9, v10 != 5) ? (v11 = v10 == 0) : (v11 = 1), v11 || (objc_msgSend(backgroundCopy, "segmentationMatte"), v12 = objc_claimAutoreleasedReturnValue(), v12, !v12)))
  {
    completionCopy[2](completionCopy);
  }

  else
  {
    composition = [backgroundCopy composition];

    if (!composition)
    {
      v21 = NUAssertLogger_24364();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing composition"];
        *buf = 138543362;
        v38 = v22;
        _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      v23 = MEMORY[0x1E69B38E8];
      specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
      v25 = NUAssertLogger_24364();
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
      if (specific)
      {
        if (v26)
        {
          v29 = dispatch_get_specific(*v23);
          v30 = MEMORY[0x1E696AF00];
          v31 = v29;
          callStackSymbols = [v30 callStackSymbols];
          v33 = [callStackSymbols componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v38 = v29;
          v39 = 2114;
          v40 = v33;
          _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v26)
      {
        callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
        v28 = [callStackSymbols2 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v38 = v28;
        _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      _NUAssertFailHandler();
    }

    v14 = [PIParallaxInfillRequest alloc];
    composition2 = [backgroundCopy composition];
    v16 = [(NURenderRequest *)v14 initWithComposition:composition2];

    segmentationMatte = [backgroundCopy segmentationMatte];
    [(PIParallaxInfillRequest *)v16 setSegmentationMatte:segmentationMatte];

    v18 = [backgroundCopy classification] == 3 || objc_msgSend(backgroundCopy, "classification") == 4;
    [(PIParallaxInfillRequest *)v16 setShouldInfillForeground:v18];
    proxyScalePolicy = [objc_opt_class() proxyScalePolicy];
    [(PIParallaxInfillRequest *)v16 setScalePolicy:proxyScalePolicy];

    [(NURenderRequest *)v16 setResponseQueue:self->_queue];
    [(NURenderRequest *)v16 setRenderContext:self->_renderContext];
    v20 = [objc_opt_class() renderPriorityForResourcePriority:{-[PISegmentationLoader priority](self, "priority")}];
    [(NURenderRequest *)v16 setPriority:v20];

    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __51__PISegmentationLoader__loadBackground_completion___block_invoke;
    v34[3] = &unk_1E82ACC00;
    v35 = backgroundCopy;
    v36 = completionCopy;
    [(PIParallaxInfillRequest *)v16 submit:v34];
  }
}

void __51__PISegmentationLoader__loadBackground_completion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
  }

  v5 = MEMORY[0x1E69B3D80];
  v6 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v3;
    _os_log_impl(&dword_1C7694000, v6, OS_LOG_TYPE_DEFAULT, "Parallax infill response: %@", buf, 0xCu);
  }

  v11 = 0;
  v7 = [v3 result:&v11];
  v8 = v11;
  if (v7)
  {
    v9 = [v7 infilledImage];
    [*(a1 + 32) setSegmentationBackground:v9];
  }

  else
  {
    if (*v4 != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
    }

    v10 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v13 = v8;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Parallax infill failed: %{public}@", buf, 0xCu);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_loadHDRGainMap:(id)map completion:(id)completion
{
  v34 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  completionCopy = completion;
  hDRGainMap = [mapCopy HDRGainMap];

  if (hDRGainMap || self->_isCancelled)
  {
    completionCopy[2](completionCopy);
  }

  else
  {
    composition = [mapCopy composition];

    if (!composition)
    {
      v14 = NUAssertLogger_24364();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing composition"];
        *buf = 138543362;
        v31 = v15;
        _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      v16 = MEMORY[0x1E69B38E8];
      specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
      v18 = NUAssertLogger_24364();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
      if (specific)
      {
        if (v19)
        {
          v22 = dispatch_get_specific(*v16);
          v23 = MEMORY[0x1E696AF00];
          v24 = v22;
          callStackSymbols = [v23 callStackSymbols];
          v26 = [callStackSymbols componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v31 = v22;
          v32 = 2114;
          v33 = v26;
          _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v19)
      {
        callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
        v21 = [callStackSymbols2 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v31 = v21;
        _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      _NUAssertFailHandler();
    }

    v10 = objc_alloc(MEMORY[0x1E69B3960]);
    composition2 = [mapCopy composition];
    v12 = [v10 initWithComposition:composition2];

    [v12 setAuxiliaryImageType:7];
    [v12 setResponseQueue:self->_queue];
    [v12 setRenderContext:self->_renderContext];
    v13 = [objc_opt_class() renderPriorityForResourcePriority:{-[PISegmentationLoader priority](self, "priority")}];
    [v12 setPriority:v13];

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __51__PISegmentationLoader__loadHDRGainMap_completion___block_invoke;
    v27[3] = &unk_1E82ACC00;
    v28 = mapCopy;
    v29 = completionCopy;
    [v12 submit:v27];
  }
}

void __51__PISegmentationLoader__loadHDRGainMap_completion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
  }

  v5 = MEMORY[0x1E69B3D80];
  v6 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v3;
    _os_log_impl(&dword_1C7694000, v6, OS_LOG_TYPE_DEFAULT, "HDR gain map response: %@", buf, 0xCu);
  }

  v13 = 0;
  v7 = [v3 result:&v13];
  v8 = v13;
  if (v7)
  {
    v9 = objc_alloc(MEMORY[0x1E69B39C0]);
    v10 = [v7 auxiliaryImage];
    v11 = [v9 initWithCVPixelBuffer:{objc_msgSend(v10, "cvPixelBufferRef")}];
    [*(a1 + 32) setHDRGainMap:v11];
  }

  else
  {
    if (*v4 != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
    }

    v12 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v15 = v8;
      _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "HDR gain map: %{public}@", buf, 0xCu);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_analyzeColors:(id)colors completion:(id)completion
{
  v87 = *MEMORY[0x1E69E9840];
  colorsCopy = colors;
  completionCopy = completion;
  colorAnalysis = [colorsCopy colorAnalysis];

  if (colorAnalysis || self->_isCancelled || [(PISegmentationLoader *)self disableRendering])
  {
    completionCopy[2](completionCopy);
    goto LABEL_5;
  }

  composition = [colorsCopy composition];

  if (!composition)
  {
    v50 = NUAssertLogger_24364();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing composition"];
      *buf = 138543362;
      *&buf[4] = v51;
      _os_log_error_impl(&dword_1C7694000, v50, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v52 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v54 = NUAssertLogger_24364();
    v55 = os_log_type_enabled(v54, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v55)
      {
        v63 = dispatch_get_specific(*v52);
        v64 = MEMORY[0x1E696AF00];
        v65 = v63;
        callStackSymbols = [v64 callStackSymbols];
        v67 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v63;
        *&buf[12] = 2114;
        *&buf[14] = v67;
        _os_log_error_impl(&dword_1C7694000, v54, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v55)
    {
LABEL_29:
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v62 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v62;
      _os_log_error_impl(&dword_1C7694000, v54, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

LABEL_35:

    _NUAssertFailHandler();
    __break(1u);
  }

  originalLayout = [colorsCopy originalLayout];

  if (!originalLayout)
  {
    v56 = NUAssertLogger_24364();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing original layout"];
      *buf = 138543362;
      *&buf[4] = v57;
      _os_log_error_impl(&dword_1C7694000, v56, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v58 = MEMORY[0x1E69B38E8];
    v59 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v54 = NUAssertLogger_24364();
    v60 = os_log_type_enabled(v54, OS_LOG_TYPE_ERROR);
    if (!v59)
    {
      if (!v60)
      {
        goto LABEL_35;
      }

      goto LABEL_29;
    }

    if (v60)
    {
      v68 = dispatch_get_specific(*v58);
      v69 = MEMORY[0x1E696AF00];
      v70 = v68;
      callStackSymbols3 = [v69 callStackSymbols];
      v72 = [callStackSymbols3 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      *&buf[4] = v68;
      *&buf[12] = 2114;
      *&buf[14] = v72;
      _os_log_error_impl(&dword_1C7694000, v54, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if (PFPosterIsPortraitHeadroomEnabled())
  {
    v11 = [(PISegmentationLoader *)self disableHeadroomLayout]^ 1;
  }

  else
  {
    v11 = 0;
  }

  originalLayout2 = [colorsCopy originalLayout];
  portraitLayout = [originalLayout2 portraitLayout];

  if (v11)
  {
    [portraitLayout extendedImageSize];
  }

  else
  {
    [portraitLayout imageSize];
  }

  [portraitLayout visibleFrame];
  NURectNormalize();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [portraitLayout visibleFrame];
  NURectNormalize();
  v73 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v84 = __Block_byref_object_copy__24387;
  v85 = __Block_byref_object_dispose__24388;
  v86 = objc_alloc_init(PIParallaxColorAnalysis);
  v29 = [objc_opt_class() renderPriorityForResourcePriority:{-[PISegmentationLoader priority](self, "priority")}];
  [MEMORY[0x1E69B3C60] begin];
  v30 = [PIParallaxColorAnalysisRequest alloc];
  composition2 = [colorsCopy composition];
  v32 = [(NURenderRequest *)v30 initWithComposition:composition2];

  [(PIParallaxColorAnalysisRequest *)v32 setSegmentationMatte:0];
  [(PIParallaxColorAnalysisRequest *)v32 setAnalyzeBackground:1];
  [(PIParallaxColorAnalysisRequest *)v32 setNormalizedClipRect:v15, v17, v19, v21];
  segmentationMatte = [colorsCopy segmentationMatte];
  if (segmentationMatte)
  {
    v34 = 1;
  }

  else
  {
    v34 = 5;
  }

  [(PIParallaxColorAnalysisRequest *)v32 setMaxDominantColors:v34, v73];

  [(PIParallaxColorAnalysisRequest *)v32 setAnalyzeHeadroom:v11];
  [(NURenderRequest *)v32 setResponseQueue:self->_queue];
  [(NURenderRequest *)v32 setRenderContext:self->_renderContext];
  [(NURenderRequest *)v32 setPriority:v29];
  v82[0] = MEMORY[0x1E69E9820];
  v82[1] = 3221225472;
  v82[2] = __50__PISegmentationLoader__analyzeColors_completion___block_invoke;
  v82[3] = &unk_1E82AC5F8;
  v82[4] = buf;
  [(PIParallaxColorAnalysisRequest *)v32 submit:v82];
  segmentationMatte2 = [colorsCopy segmentationMatte];
  v36 = segmentationMatte2 == 0;

  if (!v36)
  {
    v37 = [PIParallaxColorAnalysisRequest alloc];
    composition3 = [colorsCopy composition];
    v39 = [(NURenderRequest *)v37 initWithComposition:composition3];

    segmentationMatte3 = [colorsCopy segmentationMatte];
    [(PIParallaxColorAnalysisRequest *)v39 setSegmentationMatte:segmentationMatte3];

    [(PIParallaxColorAnalysisRequest *)v39 setAnalyzeBackground:0];
    [(PIParallaxColorAnalysisRequest *)v39 setNormalizedClipRect:v15, v17, v19, v21];
    [(PIParallaxColorAnalysisRequest *)v39 setMaxDominantColors:5];
    [(NURenderRequest *)v39 setResponseQueue:self->_queue];
    [(NURenderRequest *)v39 setRenderContext:self->_renderContext];
    [(NURenderRequest *)v39 setPriority:v29];
    v81[0] = MEMORY[0x1E69E9820];
    v81[1] = 3221225472;
    v81[2] = __50__PISegmentationLoader__analyzeColors_completion___block_invoke_147;
    v81[3] = &unk_1E82AC5F8;
    v81[4] = buf;
    [(PIParallaxColorAnalysisRequest *)v39 submit:v81];
    v41 = [PIParallaxColorAnalysisRequest alloc];
    composition4 = [colorsCopy composition];
    v43 = [(NURenderRequest *)v41 initWithComposition:composition4];

    segmentationMatte4 = [colorsCopy segmentationMatte];
    [(PIParallaxColorAnalysisRequest *)v43 setSegmentationMatte:segmentationMatte4];

    [(PIParallaxColorAnalysisRequest *)v43 setAnalyzeBackground:1];
    [(PIParallaxColorAnalysisRequest *)v43 setNormalizedClipRect:v15, v17, v19, v21];
    [(PIParallaxColorAnalysisRequest *)v43 setMaxDominantColors:5];
    [(PIParallaxColorAnalysisRequest *)v43 setAnalyzeHeadroom:v11];
    [(NURenderRequest *)v43 setResponseQueue:self->_queue];
    [(NURenderRequest *)v43 setRenderContext:self->_renderContext];
    [(NURenderRequest *)v43 setPriority:v29];
    v80[0] = MEMORY[0x1E69E9820];
    v80[1] = 3221225472;
    v80[2] = __50__PISegmentationLoader__analyzeColors_completion___block_invoke_148;
    v80[3] = &unk_1E82AC5F8;
    v80[4] = buf;
    [(PIParallaxColorAnalysisRequest *)v43 submit:v80];
  }

  v45 = [PIParallaxColorAnalysisRequest alloc];
  composition5 = [colorsCopy composition];
  v47 = [(NURenderRequest *)v45 initWithComposition:composition5];

  [(PIParallaxColorAnalysisRequest *)v47 setSegmentationMatte:0];
  [(PIParallaxColorAnalysisRequest *)v47 setAnalyzeBackground:1];
  [(PIParallaxColorAnalysisRequest *)v47 setNormalizedClipRect:v74, v24, v26, v28];
  [(PIParallaxColorAnalysisRequest *)v47 setMaxDominantColors:1];
  [(PIParallaxColorAnalysisRequest *)v47 setAnalyzeHeadroom:v11];
  [(NURenderRequest *)v47 setResponseQueue:self->_queue];
  [(NURenderRequest *)v47 setRenderContext:self->_renderContext];
  [(NURenderRequest *)v47 setPriority:v29];
  v79[0] = MEMORY[0x1E69E9820];
  v79[1] = 3221225472;
  v79[2] = __50__PISegmentationLoader__analyzeColors_completion___block_invoke_149;
  v79[3] = &unk_1E82AC5F8;
  v79[4] = buf;
  [(PIParallaxColorAnalysisRequest *)v47 submit:v79];
  v48 = MEMORY[0x1E69B3C60];
  queue = self->_queue;
  v75[0] = MEMORY[0x1E69E9820];
  v75[1] = 3221225472;
  v75[2] = __50__PISegmentationLoader__analyzeColors_completion___block_invoke_150;
  v75[3] = &unk_1E82AC2A8;
  v76 = colorsCopy;
  v78 = buf;
  v77 = completionCopy;
  [v48 commitAndNotifyOnQueue:queue withBlock:v75];

  _Block_object_dispose(buf, 8);
LABEL_5:
}

void __50__PISegmentationLoader__analyzeColors_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
  }

  v5 = MEMORY[0x1E69B3D80];
  v6 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v3;
    _os_log_impl(&dword_1C7694000, v6, OS_LOG_TYPE_DEFAULT, "Full Image color analysis response: %@", buf, 0xCu);
  }

  v12 = 0;
  v7 = [v3 result:&v12];
  v8 = v12;
  if (v7)
  {
    [v7 medianLuminance];
    [*(*(*(a1 + 32) + 8) + 40) setLuminance:?];
    v9 = [v7 dominantColors];
    [*(*(*(a1 + 32) + 8) + 40) setColors:v9];
  }

  else
  {
    if (*v4 != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
    }

    v10 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v8;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Full Image color analysis failed: %{public}@", buf, 0xCu);
    }

    v11 = *(*(a1 + 32) + 8);
    v9 = *(v11 + 40);
    *(v11 + 40) = 0;
  }
}

void __50__PISegmentationLoader__analyzeColors_completion___block_invoke_147(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
  }

  v5 = MEMORY[0x1E69B3D80];
  v6 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v3;
    _os_log_impl(&dword_1C7694000, v6, OS_LOG_TYPE_DEFAULT, "Foreground color analysis response: %@", buf, 0xCu);
  }

  v12 = 0;
  v7 = [v3 result:&v12];
  v8 = v12;
  if (v7)
  {
    [v7 medianLuminance];
    [*(*(*(a1 + 32) + 8) + 40) setForegroundLuminance:?];
    v9 = [v7 dominantColors];
    [*(*(*(a1 + 32) + 8) + 40) setForegroundColors:v9];
  }

  else
  {
    if (*v4 != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
    }

    v10 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v8;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Foreground color analysis failed: %{public}@", buf, 0xCu);
    }

    v11 = *(*(a1 + 32) + 8);
    v9 = *(v11 + 40);
    *(v11 + 40) = 0;
  }
}

void __50__PISegmentationLoader__analyzeColors_completion___block_invoke_148(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
  }

  v5 = MEMORY[0x1E69B3D80];
  v6 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v3;
    _os_log_impl(&dword_1C7694000, v6, OS_LOG_TYPE_DEFAULT, "Background color analysis response: %@", buf, 0xCu);
  }

  v12 = 0;
  v7 = [v3 result:&v12];
  v8 = v12;
  if (v7)
  {
    [v7 medianLuminance];
    [*(*(*(a1 + 32) + 8) + 40) setBackgroundLuminance:?];
    v9 = [v7 dominantColors];
    [*(*(*(a1 + 32) + 8) + 40) setBackgroundColors:v9];
  }

  else
  {
    if (*v4 != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
    }

    v10 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v8;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Background color analysis failed: %{public}@", buf, 0xCu);
    }

    v11 = *(*(a1 + 32) + 8);
    v9 = *(v11 + 40);
    *(v11 + 40) = 0;
  }
}

void __50__PISegmentationLoader__analyzeColors_completion___block_invoke_149(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
  }

  v5 = MEMORY[0x1E69B3D80];
  v6 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v3;
    _os_log_impl(&dword_1C7694000, v6, OS_LOG_TYPE_DEFAULT, "Clock area Image color analysis response: %@", buf, 0xCu);
  }

  v11 = 0;
  v7 = [v3 result:&v11];
  v8 = v11;
  if (v7)
  {
    v9 = [v7 dominantColors];
    [*(*(*(a1 + 32) + 8) + 40) setClockAreaColors:v9];
  }

  else
  {
    if (*v4 != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
    }

    v10 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v13 = v8;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Full Image color analysis failed: %{public}@", buf, 0xCu);
    }
  }
}

uint64_t __50__PISegmentationLoader__analyzeColors_completion___block_invoke_150(uint64_t a1)
{
  v2 = [*(a1 + 32) segmentationMatte];

  if (!v2)
  {
    [*(*(*(a1 + 48) + 8) + 40) luminance];
    [*(*(*(a1 + 48) + 8) + 40) setBackgroundLuminance:?];
    v3 = [*(*(*(a1 + 48) + 8) + 40) colors];
    [*(*(*(a1 + 48) + 8) + 40) setBackgroundColors:v3];

    [*(*(*(a1 + 48) + 8) + 40) backgroundLuminance];
    [*(*(*(a1 + 48) + 8) + 40) setForegroundLuminance:?];
    v4 = [*(*(*(a1 + 48) + 8) + 40) backgroundColors];
    [*(*(*(a1 + 48) + 8) + 40) setForegroundColors:v4];
  }

  [*(a1 + 32) setColorAnalysis:*(*(*(a1 + 48) + 8) + 40)];
  v5 = *(*(a1 + 40) + 16);

  return v5();
}

- (BOOL)_isValidSegmentationMatteHistogramForDepth:(id)depth
{
  [PISegmentationHelper bimodalScoreForHistogram:depth];

  return [PISegmentationGating isValidSegmentationScoreForDepth:?];
}

- (void)_performSegmentation:(id)segmentation type:(int64_t)type completion:(id)completion
{
  v34 = *MEMORY[0x1E69E9840];
  segmentationCopy = segmentation;
  completionCopy = completion;
  if (!segmentationCopy)
  {
    v15 = NUAssertLogger_24364();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "composition != nil"];
      *buf = 138543362;
      v31 = v16;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v17 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v19 = NUAssertLogger_24364();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v20)
      {
        v23 = dispatch_get_specific(*v17);
        v24 = MEMORY[0x1E696AF00];
        v25 = v23;
        callStackSymbols = [v24 callStackSymbols];
        v27 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v31 = v23;
        v32 = 2114;
        v33 = v27;
        _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v31 = v22;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v10 = completionCopy;
  if (self->_isCancelled)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x1E69B3D58]) initWithComposition:segmentationCopy];
    [v11 setSegmentationType:type];
    [v11 setVisionSegmentationPolicy:3];
    proxyScalePolicy = [objc_opt_class() proxyScalePolicy];
    [v11 setScalePolicy:proxyScalePolicy];

    v13 = +[PIPhotoEditHelper pipelineFiltersForShowingOriginalWithGeometry];
    [v11 setPipelineFilters:v13];

    [v11 setResponseQueue:self->_queue];
    [v11 setRenderContext:self->_renderContext];
    v14 = [objc_opt_class() renderPriorityForResourcePriority:{-[PISegmentationLoader priority](self, "priority")}];
    [v11 setPriority:v14];

    [v11 setProduceConfidenceMap:type == 1];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __61__PISegmentationLoader__performSegmentation_type_completion___block_invoke;
    v28[3] = &unk_1E82ACA08;
    v29 = v10;
    [v11 submit:v28];
  }
}

void __61__PISegmentationLoader__performSegmentation_type_completion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
  }

  v5 = MEMORY[0x1E69B3D80];
  v6 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v3;
    _os_log_impl(&dword_1C7694000, v6, OS_LOG_TYPE_DEFAULT, "Image segmentation response: %@", buf, 0xCu);
  }

  v13 = 0;
  v7 = [v3 result:&v13];
  v8 = v13;
  if (v7)
  {
    v9 = *(a1 + 32);
    v10 = [v7 matteImageBuffer];
    v11 = [v7 confidenceMapBuffer];
    (*(v9 + 16))(v9, v10, v11);
  }

  else
  {
    if (*v4 != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
    }

    v12 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v15 = v8;
      _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "Image segmentation failed: %{public}@", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)_segment:(id)_segment completion:(id)completion
{
  v54 = *MEMORY[0x1E69E9840];
  _segmentCopy = _segment;
  completionCopy = completion;
  segmentationMatte = [_segmentCopy segmentationMatte];

  if (segmentationMatte || [_segmentCopy classification] == 5 || self->_isCancelled || -[PISegmentationLoader disableSegmentation](self, "disableSegmentation") || -[PISegmentationLoader disableRendering](self, "disableRendering"))
  {
    completionCopy[2](completionCopy);
  }

  else
  {
    composition = [_segmentCopy composition];

    if (!composition)
    {
      v26 = NUAssertLogger_24364();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing composition"];
        *buf = 138543362;
        v51 = v27;
        _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      v28 = MEMORY[0x1E69B38E8];
      specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
      v30 = NUAssertLogger_24364();
      v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
      if (specific)
      {
        if (v31)
        {
          v34 = dispatch_get_specific(*v28);
          v35 = MEMORY[0x1E696AF00];
          v36 = v34;
          callStackSymbols = [v35 callStackSymbols];
          v38 = [callStackSymbols componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v51 = v34;
          v52 = 2114;
          v53 = v38;
          _os_log_error_impl(&dword_1C7694000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v31)
      {
        callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
        v33 = [callStackSymbols2 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v51 = v33;
        _os_log_error_impl(&dword_1C7694000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      _NUAssertFailHandler();
    }

    classification = [_segmentCopy classification];
    v11 = classification;
    if ((classification - 1) < 2)
    {
      v12 = 0;
      v13 = 1;
    }

    else if ((classification - 3) > 1)
    {
      v11 = 0;
      v13 = 0;
      v12 = 1;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v11 = 3;
    }

    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __44__PISegmentationLoader__segment_completion___block_invoke;
    v47[3] = &unk_1E82AC258;
    v49 = v13;
    v47[4] = self;
    v14 = _segmentCopy;
    v48 = v14;
    v15 = MEMORY[0x1CCA61740](v47);
    composition2 = [v14 composition];
    if (v12)
    {
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __44__PISegmentationLoader__segment_completion___block_invoke_3;
      v39[3] = &unk_1E82AC280;
      v17 = &v41;
      v41 = v15;
      v18 = &v40;
      v40 = v14;
      v19 = &v42;
      v42 = completionCopy;
      v20 = v15;
      v21 = v39;
      selfCopy2 = self;
      v23 = composition2;
      v24 = 3;
    }

    else
    {
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __44__PISegmentationLoader__segment_completion___block_invoke_2;
      v43[3] = &unk_1E82AC280;
      v17 = &v45;
      v45 = v15;
      v18 = &v44;
      v44 = v14;
      v19 = &v46;
      v46 = completionCopy;
      v25 = v15;
      v21 = v43;
      selfCopy2 = self;
      v23 = composition2;
      v24 = v11;
    }

    [(PISegmentationLoader *)selfCopy2 _performSegmentation:v23 type:v24 completion:v21];
  }
}

uint64_t __44__PISegmentationLoader__segment_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E69B3AB8]);
  v8 = [v7 computeHistogramFromMatteBuffer:v5];
  if ([PISegmentationHelper matteHistogramIndicatesSubjectDetected:v8]|| *(a1 + 48) == 1)
  {
    if ([*(a1 + 32) _isValidSegmentationMatteHistogramForDepth:v8])
    {
      [*(a1 + 40) setSegmentationMatte:v5];
      [*(a1 + 40) setSegmentationConfidenceMap:v6];
    }

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __44__PISegmentationLoader__segment_completion___block_invoke_2(void *a1, void *a2, void *a3)
{
  v6 = a1[4];
  v5 = a1[5];
  v7 = a3;
  v8 = a2;
  (*(v5 + 16))(v5, v8, v7, [v6 classification]);

  v9 = *(a1[6] + 16);

  return v9();
}

uint64_t __44__PISegmentationLoader__segment_completion___block_invoke_3(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  v3 = *(a1 + 32);
  if (v2)
  {
    [v3 setClassification:3];
  }

  else
  {
    [v3 setClassification:5];
    [*(a1 + 32) setSegmentationMatte:0];
    [*(a1 + 32) setSegmentationConfidenceMap:0];
  }

  v4 = *(*(a1 + 48) + 16);

  return v4();
}

- (void)_classify:(id)_classify completion:(id)completion
{
  v49 = *MEMORY[0x1E69E9840];
  _classifyCopy = _classify;
  completionCopy = completion;
  classification = [_classifyCopy classification];
  if ((classification - 1) < 4)
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
    }

    v9 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
    {
      v10 = v9;
      [_classifyCopy classification];
      v11 = PFPosterClassificationName();
      *buf = 138543362;
      v46 = v11;
      _os_log_impl(&dword_1C7694000, v10, OS_LOG_TYPE_INFO, "Known classification: %{public}@", buf, 0xCu);
    }

    goto LABEL_18;
  }

  if (classification)
  {
    if (classification == 5)
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
      }

      v12 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1C7694000, v12, OS_LOG_TYPE_INFO, "Previous classification attempt yielded 'other'", buf, 2u);
      }

      goto LABEL_18;
    }
  }

  else
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
    }

    v13 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C7694000, v13, OS_LOG_TYPE_INFO, "Current classification is unspecified", buf, 2u);
    }
  }

  if (self->_isCancelled || [(PISegmentationLoader *)self disableRendering])
  {
LABEL_18:
    completionCopy[2](completionCopy);
    goto LABEL_19;
  }

  composition = [_classifyCopy composition];

  if (!composition)
  {
    v26 = NUAssertLogger_24364();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing composition"];
      *buf = 138543362;
      v46 = v27;
      _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v28 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v30 = NUAssertLogger_24364();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v31)
      {
        v34 = dispatch_get_specific(*v28);
        v35 = MEMORY[0x1E696AF00];
        v36 = v34;
        callStackSymbols = [v35 callStackSymbols];
        v38 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v46 = v34;
        v47 = 2114;
        v48 = v38;
        _os_log_error_impl(&dword_1C7694000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v46 = v33;
      _os_log_error_impl(&dword_1C7694000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v15 = objc_alloc_init(MEMORY[0x1E69844D0]);
  v16 = objc_alloc_init(MEMORY[0x1E6984618]);
  v17 = objc_alloc(MEMORY[0x1E69B3D48]);
  composition2 = [_classifyCopy composition];
  v19 = [v17 initWithComposition:composition2];

  v44[0] = v15;
  v44[1] = v16;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
  [v19 setVisionRequests:v20];

  proxyScalePolicy = [objc_opt_class() proxyScalePolicy];
  [v19 setScalePolicy:proxyScalePolicy];

  v22 = +[PIPhotoEditHelper pipelineFiltersForShowingOriginalWithGeometry];
  [v19 setPipelineFilters:v22];

  [v19 setResponseQueue:self->_queue];
  [v19 setRenderContext:self->_renderContext];
  v23 = [objc_opt_class() renderPriorityForResourcePriority:{-[PISegmentationLoader priority](self, "priority")}];
  [v19 setPriority:v23];

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __45__PISegmentationLoader__classify_completion___block_invoke;
  v39[3] = &unk_1E82AC230;
  v40 = v15;
  v41 = v16;
  v42 = _classifyCopy;
  v43 = completionCopy;
  v24 = v16;
  v25 = v15;
  [v19 submit:v39];

LABEL_19:
}

void __45__PISegmentationLoader__classify_completion___block_invoke(uint64_t a1, void *a2)
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
  }

  v5 = MEMORY[0x1E69B3D80];
  v6 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v55 = v3;
    _os_log_impl(&dword_1C7694000, v6, OS_LOG_TYPE_DEFAULT, "Vision detection response: %@", buf, 0xCu);
  }

  v51 = 0;
  v7 = [v3 result:&v51];
  v8 = v51;
  if (v7)
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v9 = [*(a1 + 32) results];
    v10 = [v9 countByEnumeratingWithState:&v47 objects:v53 count:16];
    v11 = MEMORY[0x1E69BDDB0];
    if (v10)
    {
      v12 = v10;
      v13 = *v48;
      v14 = *MEMORY[0x1E69BDDB0];
      v15 = *(MEMORY[0x1E69BDDB0] + 8);
      v16 = -1.0;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v48 != v13)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v47 + 1) + 8 * i) boundingBox];
          if (v18 == 0.0 || v19 == 0.0 || (v19 == v15 ? (v20 = v18 == v14) : (v20 = 0), v20))
          {
            v21 = 0.0;
          }

          else
          {
            v21 = v18 * v19;
          }

          if (v21 >= v16)
          {
            v16 = v21;
          }
        }

        v12 = [v9 countByEnumeratingWithState:&v47 objects:v53 count:16];
      }

      while (v12);
      v22 = v16 > 0.0;
    }

    else
    {
      v22 = 0;
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v24 = [*(a1 + 40) results];
    v25 = [v24 countByEnumeratingWithState:&v43 objects:v52 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v44;
      v28 = *v11;
      v29 = v11[1];
      v30 = -1.0;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v44 != v27)
          {
            objc_enumerationMutation(v24);
          }

          [*(*(&v43 + 1) + 8 * j) boundingBox];
          if (v32 == 0.0 || v33 == 0.0 || (v33 == v29 ? (v34 = v32 == v28) : (v34 = 0), v34))
          {
            v35 = 0.0;
          }

          else
          {
            v35 = v32 * v33;
          }

          if (v35 >= v30)
          {
            v30 = v35;
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v43 objects:v52 count:16];
      }

      while (v26);

      if (v22)
      {
        v36 = 1;
        v37 = MEMORY[0x1E69B3D80];
      }

      else
      {
        v37 = MEMORY[0x1E69B3D80];
        if (v30 <= 0.0)
        {
          goto LABEL_54;
        }

        v36 = 2;
      }
    }

    else
    {

      v37 = MEMORY[0x1E69B3D80];
      if (!v22)
      {
        goto LABEL_54;
      }

      v36 = 1;
    }

    [*(a1 + 48) setClassification:v36];
LABEL_54:
    if ([*(a1 + 48) classification])
    {
      if (*v4 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
      }

      v38 = *v37;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = *(a1 + 48);
        v40 = v38;
        [v39 classification];
        v41 = PFPosterClassificationName();
        *buf = 138543362;
        v55 = v41;
        _os_log_impl(&dword_1C7694000, v40, OS_LOG_TYPE_INFO, "Classified image as %{public}@", buf, 0xCu);
      }
    }

    else
    {
      if (*v4 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
      }

      v42 = *v37;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1C7694000, v42, OS_LOG_TYPE_INFO, "Detectors failed to classify asset. Falling back to segmentation strategy.", buf, 2u);
      }
    }

    goto LABEL_63;
  }

  if (*v4 != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
  }

  v23 = *v5;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v55 = v8;
    _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "Vision detection failed: %{public}@", buf, 0xCu);
  }

  [*(a1 + 48) setClassification:5];
LABEL_63:
  (*(*(a1 + 56) + 16))();
}

- (void)_loadSpatialPhoto:(id)photo layoutGroup:(id)group completion:(id)completion
{
  v65 = *MEMORY[0x1E69E9840];
  photoCopy = photo;
  groupCopy = group;
  completionCopy = completion;
  asset = [(PISegmentationLoader *)self asset];
  localIdentifier = [asset localIdentifier];

  if ([(PISegmentationLoader *)self _shouldLoadSpatialPhotoForItem:photoCopy])
  {
    if ([(PISegmentationLoader *)self disableSpatialPhoto])
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
      }

      v13 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
      {
        v14 = v13;
        *buf = 138543874;
        *&buf[4] = localIdentifier;
        *&buf[12] = 1024;
        *&buf[14] = [(PISegmentationLoader *)self disableSpatialPhoto];
        *&buf[18] = 1024;
        *&buf[20] = [(PISegmentationLoader *)self disableRendering];
        _os_log_impl(&dword_1C7694000, v14, OS_LOG_TYPE_INFO, "Skipping spatial photo loading for asset %{public}@, disableSpatialPhoto: %d, disableRendering: %d", buf, 0x18u);
      }

      [(PISegmentationLoader *)self _updateItem:photoCopy withSpatialPhotoGatingFailures:1];
      completionCopy[2](completionCopy, 0);
    }

    else
    {
      v16 = +[PIGlobalSettings globalSettings];
      forceEnableSpatialPhoto = [v16 forceEnableSpatialPhoto];

      if (forceEnableSpatialPhoto & 1) != 0 || ([objc_opt_class() currentDeviceSupportsSpatialPhoto])
      {
        v18 = PIParallaxDefaultSpatialPhotoProducer();
        v19 = *MEMORY[0x1E69B3D78];
        v35 = v18;
        if (v18)
        {
          if (v19 != -1)
          {
            dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
          }

          v20 = *MEMORY[0x1E69B3D80];
          if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            *&buf[4] = localIdentifier;
            _os_log_impl(&dword_1C7694000, v20, OS_LOG_TYPE_INFO, "Loading spatial photo for asset %{public}@.", buf, 0xCu);
          }

          [photoCopy resetSpatialPhotoGatingFailure];
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v62 = __Block_byref_object_copy__24387;
          v63 = __Block_byref_object_dispose__24388;
          v64 = 0;
          v59[0] = 0;
          v59[1] = v59;
          v59[2] = 0x3032000000;
          v59[3] = __Block_byref_object_copy__24387;
          v59[4] = __Block_byref_object_dispose__24388;
          v60 = 0;
          v57[0] = 0;
          v57[1] = v57;
          v57[2] = 0x3032000000;
          v57[3] = __Block_byref_object_copy__24387;
          v57[4] = __Block_byref_object_dispose__24388;
          v58 = 0;
          v55[0] = 0;
          v55[1] = v55;
          v55[2] = 0x3032000000;
          v55[3] = __Block_byref_object_copy__24387;
          v55[4] = __Block_byref_object_dispose__24388;
          v56 = 0;
          v21 = dispatch_group_create();
          resource = [photoCopy resource];
          imageFileURL = [resource imageFileURL];

          if (imageFileURL)
          {
            dispatch_group_enter(v21);
            v24 = [[PIParallaxAsset alloc] initWithFileURL:imageFileURL];
            v51[0] = MEMORY[0x1E69E9820];
            v51[1] = 3221225472;
            v51[2] = __65__PISegmentationLoader__loadSpatialPhoto_layoutGroup_completion___block_invoke;
            v51[3] = &unk_1E82AC1B8;
            v53 = buf;
            v54 = v57;
            v52 = v21;
            [(PIParallaxAsset *)v24 loadFocalLengthIn35mm:v51];
          }

          v25 = self->_asset;
          if (v25)
          {
            dispatch_group_enter(v21);
            v47[0] = MEMORY[0x1E69E9820];
            v47[1] = 3221225472;
            v47[2] = __65__PISegmentationLoader__loadSpatialPhoto_layoutGroup_completion___block_invoke_2;
            v47[3] = &unk_1E82AC1E0;
            v47[4] = self;
            v49 = v59;
            v50 = v55;
            v48 = v21;
            self->_loadFocalLengthRequestID = [(PFParallaxAsset *)v25 loadFocalLengthIn35mm:v47];
          }

          v26 = dispatch_group_create();
          dispatch_group_enter(v26);
          v34 = imageFileURL;
          queue = self->_queue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __65__PISegmentationLoader__loadSpatialPhoto_layoutGroup_completion___block_invoke_3;
          block[3] = &unk_1E82AC208;
          v45 = buf;
          v46 = v59;
          v39 = photoCopy;
          v40 = groupCopy;
          selfCopy = self;
          v42 = v35;
          v43 = localIdentifier;
          v44 = v26;
          v28 = v26;
          dispatch_group_notify(v21, queue, block);
          v29 = self->_queue;
          v36[0] = MEMORY[0x1E69E9820];
          v36[1] = 3221225472;
          v36[2] = __65__PISegmentationLoader__loadSpatialPhoto_layoutGroup_completion___block_invoke_130;
          v36[3] = &unk_1E82AC0C8;
          v37 = completionCopy;
          dispatch_group_notify(v28, v29, v36);

          _Block_object_dispose(v55, 8);
          _Block_object_dispose(v57, 8);

          _Block_object_dispose(v59, 8);
          _Block_object_dispose(buf, 8);
        }

        else
        {
          if (v19 != -1)
          {
            dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
          }

          v30 = *MEMORY[0x1E69B3D80];
          if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            *&buf[4] = localIdentifier;
            _os_log_impl(&dword_1C7694000, v30, OS_LOG_TYPE_INFO, "Skipping spatial photo loading for asset %{public}@, PIParallaxDefaultSpatialPhotoProducer() is nil", buf, 0xCu);
          }

          [(PISegmentationLoader *)self _updateItem:photoCopy withSpatialPhotoGatingFailures:8];
          completionCopy[2](completionCopy, 0);
        }
      }

      else
      {
        if (*MEMORY[0x1E69B3D78] != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
        }

        v31 = *MEMORY[0x1E69B3D80];
        if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
        {
          v32 = v31;
          [(PISegmentationLoader *)self spatialPhotoGatingLevel];
          v33 = PFPosterSpatialPhotoGatingLevelDescription();
          *buf = 138543618;
          *&buf[4] = localIdentifier;
          *&buf[12] = 2114;
          *&buf[14] = v33;
          _os_log_impl(&dword_1C7694000, v32, OS_LOG_TYPE_INFO, "Skipping spatial photo loading for asset %{public}@, unsupported device for gating level %{public}@", buf, 0x16u);
        }

        [(PISegmentationLoader *)self _updateItem:photoCopy withSpatialPhotoGatingFailures:4];
        completionCopy[2](completionCopy, 0);
      }
    }
  }

  else
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
    }

    v15 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      *&buf[4] = localIdentifier;
      _os_log_impl(&dword_1C7694000, v15, OS_LOG_TYPE_INFO, "Skipping spatial photo loading for asset %{public}@, cached results are sufficient for the current session", buf, 0xCu);
    }

    completionCopy[2](completionCopy, 0);
  }
}

void __65__PISegmentationLoader__loadSpatialPhoto_layoutGroup_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void __65__PISegmentationLoader__loadSpatialPhoto_layoutGroup_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  *(*(a1 + 32) + 40) = 0;
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 40));
}

void __65__PISegmentationLoader__loadSpatialPhoto_layoutGroup_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(*(*(a1 + 80) + 8) + 40);
  if (!v2)
  {
    v2 = *(*(*(a1 + 88) + 8) + 40);
  }

  v3 = v2;
  [v3 doubleValue];
  [*(a1 + 32) setFocalLengthIn35mm:?];
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 48) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__PISegmentationLoader__loadSpatialPhoto_layoutGroup_completion___block_invoke_4;
  block[3] = &unk_1E82ABF40;
  v9 = *(a1 + 56);
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v10 = v6;
  v11 = v7;
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  dispatch_group_notify(v4, v5, block);
}

void __65__PISegmentationLoader__loadSpatialPhoto_layoutGroup_completion___block_invoke_4(id *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  [a1[4] zoomInPercentage];
  [a1[5] setSpatialPhotoNormalizedBounds:{v2 * 0.5, v2 * 0.5, 1.0 - v2, 1.0 - v2}];
  v3 = [a1[5] defaultLayout];
  [v3 imageSize];
  v5 = v4;
  v7 = v6;

  if (v5 == 0.0 || v7 == 0.0 || (v5 == *MEMORY[0x1E69BDDB0] ? (v8 = v7 == *(MEMORY[0x1E69BDDB0] + 8)) : (v8 = 0), v8 || ([a1[4] isEligibleForSpatialGenerationWithPixelSize:{v5, v7}] & 1) != 0))
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __65__PISegmentationLoader__loadSpatialPhoto_layoutGroup_completion___block_invoke_129;
    v21[3] = &unk_1E82ABF18;
    v9 = a1[6];
    v10 = a1[5];
    *&v11 = v10;
    *(&v11 + 1) = a1[6];
    v20 = v11;
    v12 = a1[7];
    v13 = a1[8];
    *&v14 = v12;
    *(&v14 + 1) = v13;
    v22 = v20;
    v23 = v14;
    [v9 _performSpatialPhotoLayout:v10 completion:v21];
  }

  else
  {
    [a1[5] setSpatialPhotoStatus:1];
    [a1[6] _updateItem:a1[5] withSpatialPhotoGatingFailures:32];
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
    }

    v15 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      v16 = a1[7];
      v17 = MEMORY[0x1E696AEC0];
      v18 = v15;
      v19 = [[v17 alloc] initWithFormat:@"{%.2f, %.2f}", *&v5, *&v7];
      *buf = 138543618;
      v25 = v16;
      v26 = 2114;
      v27 = v19;
      _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "Failed to compute a spatial photo for asset %{public}@, size %{public}@ does not meet criteria.", buf, 0x16u);
    }

    dispatch_group_leave(a1[8]);
  }
}

void __65__PISegmentationLoader__loadSpatialPhoto_layoutGroup_completion___block_invoke_129(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) spatialPhotoLayout];

  v5 = *(a1 + 32);
  if (v4)
  {
    [v5 setSpatialPhotoStatus:3];
  }

  else
  {
    [v5 setSpatialPhotoStatus:1];
    [*(a1 + 40) _updateItem:*(a1 + 32) withSpatialPhotoGatingFailures:16];
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
    }

    v6 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 48);
      v8 = 138543618;
      v9 = v7;
      v10 = 2114;
      v11 = v3;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Failed to compute a spatial photo layout for asset %{public}@: %{public}@", &v8, 0x16u);
    }
  }

  dispatch_group_leave(*(a1 + 56));
}

- (void)_loadMotionScore:(id)score completion:(id)completion
{
  v39 = *MEMORY[0x1E69E9840];
  scoreCopy = score;
  completionCopy = completion;
  asset = [(PISegmentationLoader *)self asset];

  if (!asset)
  {
    v18 = NUAssertLogger_24364();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot load motion score for nil asset"];
      *buf = 138543362;
      v36 = v19;
      _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v20 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v22 = NUAssertLogger_24364();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v23)
      {
        v26 = dispatch_get_specific(*v20);
        v27 = MEMORY[0x1E696AF00];
        v28 = v26;
        callStackSymbols = [v27 callStackSymbols];
        v30 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v36 = v26;
        v37 = 2114;
        v38 = v30;
        _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v36 = v25;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  asset2 = [(PISegmentationLoader *)self asset];
  localIdentifier = [asset2 localIdentifier];

  v11 = s_log_24360;
  v12 = v11;
  signpost = self->_signpost;
  if (signpost - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v12, OS_SIGNPOST_INTERVAL_BEGIN, signpost, "PISegmentationLoader.settlingEffect.motion", "", buf, 2u);
  }

  asset3 = [(PISegmentationLoader *)self asset];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __52__PISegmentationLoader__loadMotionScore_completion___block_invoke;
  v31[3] = &unk_1E82AC190;
  v31[4] = self;
  v32 = scoreCopy;
  v33 = localIdentifier;
  v34 = completionCopy;
  v15 = completionCopy;
  v16 = localIdentifier;
  v17 = scoreCopy;
  self->_loadMotionRequestID = [asset3 loadMotionScore:v31];
}

void __52__PISegmentationLoader__loadMotionScore_completion___block_invoke(void *a1, void *a2, float a3)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v5 = COERCE_DOUBLE(a2);
  v6 = s_log_24360;
  v7 = v6;
  v8 = *(a1[4] + 8);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    LOWORD(v17) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v7, OS_SIGNPOST_INTERVAL_END, v8, "PISegmentationLoader.settlingEffect.motion", "", &v17, 2u);
  }

  if (v5 == 0.0)
  {
    v12 = a1[5];
    v21 = *MEMORY[0x1E69C0D28];
    *&v9 = a3;
    v13 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
    v22[0] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    [v12 updateScores:v14];

    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
    }

    v15 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
    {
      v16 = a1[6];
      v17 = 138543618;
      v18 = v16;
      v19 = 2048;
      v20 = a3;
      _os_log_impl(&dword_1C7694000, v15, OS_LOG_TYPE_INFO, "Loaded motion score for asset %{public}@: %.2f", &v17, 0x16u);
    }
  }

  else
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
    }

    v10 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      v11 = a1[6];
      v17 = 138543618;
      v18 = v11;
      v19 = 2114;
      v20 = v5;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Failed to load motion score for asset %{public}@: %{public}@", &v17, 0x16u);
    }
  }

  (*(a1[7] + 16))();
}

- (void)_loadSettlingEffect:(id)effect layoutGroup:(id)group completion:(id)completion
{
  *&v35[5] = *MEMORY[0x1E69E9840];
  effectCopy = effect;
  groupCopy = group;
  completionCopy = completion;
  asset = [(PISegmentationLoader *)self asset];
  localIdentifier = [asset localIdentifier];

  if (![(PISegmentationLoader *)self _shouldLoadSettlingEffectForItem:effectCopy])
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
    }

    v18 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v33 = localIdentifier;
      _os_log_impl(&dword_1C7694000, v18, OS_LOG_TYPE_INFO, "Skipping settling effect loading for asset %{public}@, cached results are sufficient for the current session", buf, 0xCu);
    }

    goto LABEL_14;
  }

  if ([(PISegmentationLoader *)self disableSettlingEffect]|| [(PISegmentationLoader *)self disableRendering])
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
    }

    v13 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
    {
      v14 = v13;
      *buf = 138543874;
      v33 = localIdentifier;
      v34 = 1024;
      *v35 = [(PISegmentationLoader *)self disableSettlingEffect];
      v35[2] = 1024;
      *&v35[3] = [(PISegmentationLoader *)self disableRendering];
      _os_log_impl(&dword_1C7694000, v14, OS_LOG_TYPE_INFO, "Skipping settling effect loading for asset %{public}@, disableSettlingEffect: %d, disableRendering: %d", buf, 0x18u);
    }

    selfCopy2 = self;
    v16 = effectCopy;
    v17 = 64;
LABEL_9:
    [(PISegmentationLoader *)selfCopy2 _updateItem:v16 withSettlingEffectGatingFailures:v17];
LABEL_14:
    completionCopy[2](completionCopy, 0);
    goto LABEL_15;
  }

  v19 = +[PIGlobalSettings globalSettings];
  forceEnableSettlingEffect = [v19 forceEnableSettlingEffect];

  if ((forceEnableSettlingEffect & 1) == 0 && ([objc_opt_class() currentDeviceSupportsSettlingEffect] & 1) == 0)
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
    }

    v24 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
    {
      v25 = v24;
      [(PISegmentationLoader *)self settlingEffectGatingLevel];
      v26 = PFPosterSettlingEffectGatingLevelDescription();
      *buf = 138543618;
      v33 = localIdentifier;
      v34 = 2114;
      *v35 = v26;
      _os_log_impl(&dword_1C7694000, v25, OS_LOG_TYPE_INFO, "Skipping settling effect loading for asset %{public}@, unsupported device for gating level %{public}@", buf, 0x16u);
    }

    selfCopy2 = self;
    v16 = effectCopy;
    v17 = 2048;
    goto LABEL_9;
  }

  [effectCopy resetSettlingEffectGatingFailure];
  v21 = s_log_24360;
  v22 = v21;
  signpost = self->_signpost;
  if (signpost - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v22, OS_SIGNPOST_INTERVAL_BEGIN, signpost, "PISegmentationLoader.liveOriginal", "", buf, 2u);
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __67__PISegmentationLoader__loadSettlingEffect_layoutGroup_completion___block_invoke;
  v27[3] = &unk_1E82AC168;
  v27[4] = self;
  v28 = effectCopy;
  v29 = localIdentifier;
  v31 = completionCopy;
  v30 = groupCopy;
  [(PISegmentationLoader *)self _loadLiveOriginalResource:v28 completion:v27];

LABEL_15:
}

void __67__PISegmentationLoader__loadSettlingEffect_layoutGroup_completion___block_invoke(id *a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = s_log_24360;
  v5 = v4;
  v6 = *(a1[4] + 1);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v5, OS_SIGNPOST_INTERVAL_END, v6, "PISegmentationLoader.liveOriginal", "", buf, 2u);
  }

  v7 = [a1[5] livePhotoResource];

  if (v7)
  {
    v8 = objc_alloc_init(PIParallaxAssetSettlingEffectOptions);
    -[PIParallaxAssetSettlingEffectOptions setIsInteractiveRequest:](v8, "setIsInteractiveRequest:", [a1[4] shouldUseInteractiveSettlingEffectGating]);
    -[PIParallaxAssetSettlingEffectOptions setNeedsInProcessHandling:](v8, "setNeedsInProcessHandling:", [a1[4] performMediaAnalysisInProcess]);
    v9 = [a1[5] settlingEffectVideoData];
    [(PIParallaxAssetSettlingEffectOptions *)v8 setLoadVideoStatusOnly:v9 != 0];

    v10 = s_log_24360;
    v11 = v10;
    v12 = *(a1[4] + 1);
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C7694000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PISegmentationLoader.settlingEffect.stabilize", "", buf, 2u);
    }

    v13 = [a1[5] livePhotoResource];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __67__PISegmentationLoader__loadSettlingEffect_layoutGroup_completion___block_invoke_109;
    v23[3] = &unk_1E82AC140;
    v22 = a1[4];
    v14 = a1[6];
    v15 = a1[5];
    v27 = a1[8];
    v16 = a1[7];
    *&v17 = v15;
    *(&v17 + 1) = v16;
    *&v18 = v22;
    *(&v18 + 1) = v14;
    v24 = v18;
    v25 = v17;
    v26 = v8;
    v19 = v8;
    *(a1[4] + 11) = [PIPosterSettlingEffectLoader loadCropRectWithResource:v13 options:v19 completion:v23];
  }

  else
  {
    if (v3)
    {
      [a1[4] _updateItem:a1[5] withSettlingEffectGatingFailures:128];
    }

    else
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
      }

      v20 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
      {
        v21 = a1[6];
        *buf = 138543362;
        v29 = v21;
        _os_log_impl(&dword_1C7694000, v20, OS_LOG_TYPE_INFO, "Skipping settling effect loading for asset %{public}@, not a Live Photo", buf, 0xCu);
      }

      [a1[5] setSettlingEffectStatus:1];
    }

    (*(a1[8] + 2))();
  }
}

void __67__PISegmentationLoader__loadSettlingEffect_layoutGroup_completion___block_invoke_109(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v64 = *MEMORY[0x1E69E9840];
  v15 = a4;
  v16 = s_log_24360;
  v17 = v16;
  v18 = *(*(a1 + 32) + 8);
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v17, OS_SIGNPOST_INTERVAL_END, v18, "PISegmentationLoader.settlingEffect.stabilize", "", buf, 2u);
  }

  *(*(a1 + 32) + 44) = 0;
  v19 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
  }

  v20 = MEMORY[0x1E69B3D80];
  v21 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
  {
    v22 = v15;
    v23 = *(a1 + 40);
    v24 = v21;
    if ((a2 - 1) > 4)
    {
      v25 = @"unknown";
    }

    else
    {
      v25 = off_1E82AA108[a2 - 1];
    }

    v26 = v25;
    *buf = 138543618;
    v61 = v23;
    v62 = 2114;
    v63 = v26;
    _os_log_impl(&dword_1C7694000, v24, OS_LOG_TYPE_INFO, "Settling effect status after L1 stabilization for asset %{public}@: %{public}@", buf, 0x16u);

    v15 = v22;
  }

  [*(a1 + 48) setSettlingEffectStatus:a2];
  [*(a1 + 32) _updateItem:*(a1 + 48) withSettlingEffectGatingFailures:a3];
  v65.origin.x = a5;
  v65.origin.y = a6;
  v65.size.width = a7;
  v65.size.height = a8;
  if (CGRectIsNull(v65))
  {
    if (*v19 != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
    }

    v27 = *v20;
    if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
    {
      v43 = *(a1 + 40);
      *buf = 138543618;
      v61 = v43;
      v62 = 2114;
      v63 = v15;
      _os_log_error_impl(&dword_1C7694000, v27, OS_LOG_TYPE_ERROR, "Failed to compute a settling effect crop rect for asset %{public}@: %{public}@", buf, 0x16u);
    }

    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v28 = dispatch_group_create();
    [*(a1 + 48) setSettlingEffectNormalizedBounds:{a5, a6, a7, a8}];
    v29 = *(a1 + 48);
    v58 = *MEMORY[0x1E69C0D30];
    v59 = MEMORY[0x1E695E118];
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
    [v29 updateScores:v30];

    dispatch_group_enter(v28);
    v31 = *(a1 + 32);
    v32 = *(v31 + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__PISegmentationLoader__loadSettlingEffect_layoutGroup_completion___block_invoke_111;
    block[3] = &unk_1E82ABEC8;
    block[4] = v31;
    v33 = *(a1 + 56);
    v55 = *(a1 + 48);
    v56 = *(a1 + 40);
    v34 = v28;
    v57 = v34;
    dispatch_group_notify(v33, v32, block);
    dispatch_group_enter(v34);
    v35 = s_log_24360;
    v36 = v35;
    v37 = *(*(a1 + 32) + 8);
    if (v37 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C7694000, v36, OS_SIGNPOST_INTERVAL_BEGIN, v37, "PISegmentationLoader.settlingEffect.video", "", buf, 2u);
    }

    v38 = [*(a1 + 48) livePhotoResource];
    v39 = *(a1 + 64);
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __67__PISegmentationLoader__loadSettlingEffect_layoutGroup_completion___block_invoke_112;
    v46[3] = &unk_1E82AC118;
    v46[4] = *(a1 + 32);
    v40 = *(a1 + 48);
    v50 = a5;
    v51 = a6;
    v52 = a7;
    v53 = a8;
    v47 = v40;
    v48 = v34;
    v49 = *(a1 + 40);
    v41 = v34;
    *(*(a1 + 32) + 48) = [PIPosterSettlingEffectLoader loadVideoWithResource:v38 options:v39 completion:v46];

    v42 = *(*(a1 + 32) + 16);
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __67__PISegmentationLoader__loadSettlingEffect_layoutGroup_completion___block_invoke_121;
    v44[3] = &unk_1E82AC0C8;
    v45 = *(a1 + 72);
    dispatch_group_notify(v41, v42, v44);
  }
}

void __67__PISegmentationLoader__loadSettlingEffect_layoutGroup_completion___block_invoke_111(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __67__PISegmentationLoader__loadSettlingEffect_layoutGroup_completion___block_invoke_2;
  v4[3] = &unk_1E82AC0F0;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 _performSettlingEffectLayout:v3 completion:v4];
}

void __67__PISegmentationLoader__loadSettlingEffect_layoutGroup_completion___block_invoke_112(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, void *a5)
{
  v58[1] = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a5;
  v11 = s_log_24360;
  v12 = v11;
  v13 = *(*(a1 + 32) + 8);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v12, OS_SIGNPOST_INTERVAL_END, v13, "PISegmentationLoader.settlingEffect.video", "", buf, 2u);
  }

  *(*(a1 + 32) + 48) = 0;
  [*(a1 + 40) setSettlingEffectStatus:a3];
  [*(a1 + 32) _updateItem:*(a1 + 40) withSettlingEffectGatingFailures:a4];
  if (v9)
  {
    v14 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v9];
    if (v14)
    {
      v15 = [MEMORY[0x1E696AC08] defaultManager];
      v52 = 0;
      v16 = [v15 removeItemAtURL:v9 error:&v52];
      v17 = v52;

      if ((v16 & 1) == 0)
      {
        if (*MEMORY[0x1E69B3D78] != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
        }

        v18 = *MEMORY[0x1E69B3D80];
        if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v54 = v17;
          _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "Failed to clean up settling effect video file: %@", buf, 0xCu);
        }
      }

      v19 = [*(a1 + 40) settlingEffectVideoData];

      if (!v19)
      {
        [*(a1 + 40) setSettlingEffectVideoData:v14];
        v20 = [*(a1 + 40) composition];
        v21 = [PISegmentationLoader livePhotoCompositionForVideoData:v14 cropRect:v20 photoComposition:*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)];
        [*(a1 + 40) setComposition:v21];
      }

      v22 = [*(a1 + 32) shouldUseInteractiveSettlingEffectGating];
      v23 = [*(a1 + 40) settlingEffectStatus];
      v24 = v23;
      if (v22)
      {
        v25 = 2;
      }

      else
      {
        v25 = 4;
      }

      v26 = *(a1 + 40);
      v57 = *MEMORY[0x1E69C0D38];
      v27 = [MEMORY[0x1E696AD98] numberWithBool:v23 > v25];
      v58[0] = v27;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:&v57 count:1];
      [v26 updateScores:v28];

      if (v24 > v25)
      {
        dispatch_group_enter(*(a1 + 48));
        v29 = *(a1 + 32);
        v30 = *(a1 + 40);
        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3221225472;
        v50[2] = __67__PISegmentationLoader__loadSettlingEffect_layoutGroup_completion___block_invoke_116;
        v50[3] = &unk_1E82AC670;
        v51 = *(a1 + 48);
        [v29 _loadMotionScore:v30 completion:v50];
      }
    }

    else
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
      }

      v33 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_FAULT))
      {
        v34 = *(a1 + 56);
        v35 = v33;
        v36 = [v9 path];
        *buf = 138543618;
        v54 = v34;
        v55 = 2114;
        v56 = v36;
        _os_log_fault_impl(&dword_1C7694000, v35, OS_LOG_TYPE_FAULT, "Failed to read settling effect video file for asset %{public}@ from path: %{public}@", buf, 0x16u);
      }

      [*(a1 + 40) setSettlingEffectStatus:1];
    }
  }

  else
  {
    if (a3 >= 2)
    {
      v37 = NUAssertLogger_24364();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No video should imply 'unknown' or 'unavailable'"];
        *buf = 138543362;
        v54 = v38;
        _os_log_error_impl(&dword_1C7694000, v37, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      v39 = MEMORY[0x1E69B38E8];
      specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
      v41 = NUAssertLogger_24364();
      v42 = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);
      if (specific)
      {
        if (v42)
        {
          v45 = dispatch_get_specific(*v39);
          v46 = MEMORY[0x1E696AF00];
          v47 = v45;
          v48 = [v46 callStackSymbols];
          v49 = [v48 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v54 = v45;
          v55 = 2114;
          v56 = v49;
          _os_log_error_impl(&dword_1C7694000, v41, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v42)
      {
        v43 = [MEMORY[0x1E696AF00] callStackSymbols];
        v44 = [v43 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v54 = v44;
        _os_log_error_impl(&dword_1C7694000, v41, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      _NUAssertFailHandler();
    }

    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
    }

    v31 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      v32 = *(a1 + 56);
      *buf = 138543618;
      v54 = v32;
      v55 = 2114;
      v56 = v10;
      _os_log_error_impl(&dword_1C7694000, v31, OS_LOG_TYPE_ERROR, "Failed to compute a settling effect for asset %{public}@: %{public}@", buf, 0x16u);
    }
  }

  dispatch_group_leave(*(a1 + 48));
}

void __67__PISegmentationLoader__loadSettlingEffect_layoutGroup_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
    }

    v4 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = 138543618;
      v7 = v5;
      v8 = 2114;
      v9 = v3;
      _os_log_error_impl(&dword_1C7694000, v4, OS_LOG_TYPE_ERROR, "Failed to compute a settling effect layout for asset %{public}@: %{public}@", &v6, 0x16u);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

- (BOOL)_shouldLoadSettlingEffectForItem:(id)item
{
  itemCopy = item;
  if ([itemCopy settlingEffectStatus])
  {
    if ([itemCopy settlingEffectStatus] == 3)
    {
      v5 = ![(PISegmentationLoader *)self shouldUseInteractiveSettlingEffectGating];
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (void)_loadSegmentationData:(id)data layoutGroup:(id)group completion:(id)completion
{
  dataCopy = data;
  groupCopy = group;
  completionCopy = completion;
  v11 = dispatch_group_create();
  dispatch_group_enter(groupCopy);
  v12 = s_log_24360;
  v13 = v12;
  signpost = self->_signpost;
  if (signpost - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v13, OS_SIGNPOST_INTERVAL_BEGIN, signpost, "PISegmentationLoader.classify", "", buf, 2u);
  }

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __69__PISegmentationLoader__loadSegmentationData_layoutGroup_completion___block_invoke;
  v35[3] = &unk_1E82ABEC8;
  v35[4] = self;
  v15 = groupCopy;
  v36 = v15;
  v16 = dataCopy;
  v37 = v16;
  v17 = v11;
  v38 = v17;
  [(PISegmentationLoader *)self _classify:v16 completion:v35];
  dispatch_group_enter(v17);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__PISegmentationLoader__loadSegmentationData_layoutGroup_completion___block_invoke_2;
  block[3] = &unk_1E82AC0A0;
  v19 = v17;
  v32 = v19;
  selfCopy = self;
  v20 = v16;
  v34 = v20;
  dispatch_group_notify(v15, queue, block);
  dispatch_group_enter(v19);
  v21 = s_log_24360;
  v22 = v21;
  v23 = self->_signpost;
  if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v23, "PISegmentationLoader.localLightData", "", buf, 2u);
  }

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __69__PISegmentationLoader__loadSegmentationData_layoutGroup_completion___block_invoke_106;
  v29[3] = &unk_1E82AC4E8;
  v29[4] = self;
  v30 = v19;
  v24 = v19;
  [(PISegmentationLoader *)self _loadLocalLightData:v20 completion:v29];
  v25 = self->_queue;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __69__PISegmentationLoader__loadSegmentationData_layoutGroup_completion___block_invoke_107;
  v27[3] = &unk_1E82AC0C8;
  v28 = completionCopy;
  v26 = completionCopy;
  dispatch_group_notify(v24, v25, v27);
}

void __69__PISegmentationLoader__loadSegmentationData_layoutGroup_completion___block_invoke(uint64_t a1)
{
  v2 = s_log_24360;
  v3 = v2;
  v4 = *(*(a1 + 32) + 8);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v3, OS_SIGNPOST_INTERVAL_END, v4, "PISegmentationLoader.classify", "", buf, 2u);
  }

  dispatch_group_enter(*(a1 + 40));
  v5 = s_log_24360;
  v6 = v5;
  v7 = *(*(a1 + 32) + 8);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v7, "PISegmentationLoader.segment", "", buf, 2u);
  }

  v8 = *(a1 + 48);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __69__PISegmentationLoader__loadSegmentationData_layoutGroup_completion___block_invoke_100;
  v14[3] = &unk_1E82ABEC8;
  v13 = *(a1 + 32);
  v9 = *(&v13 + 1);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  *&v12 = v10;
  *(&v12 + 1) = v11;
  v15 = v13;
  v16 = v12;
  [v13 _segment:v8 completion:v14];
  dispatch_group_leave(*(a1 + 40));
}

void __69__PISegmentationLoader__loadSegmentationData_layoutGroup_completion___block_invoke_2(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = s_log_24360;
  v3 = v2;
  v4 = *(*(a1 + 40) + 8);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, "PISegmentationLoader.layout", "", buf, 2u);
  }

  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__PISegmentationLoader__loadSegmentationData_layoutGroup_completion___block_invoke_104;
  v7[3] = &unk_1E82ABEF0;
  v7[4] = v6;
  v8 = v5;
  v9 = *(a1 + 32);
  [v6 _performLayout:v8 completion:v7];
  dispatch_group_leave(*(a1 + 32));
}

void __69__PISegmentationLoader__loadSegmentationData_layoutGroup_completion___block_invoke_106(uint64_t a1)
{
  v2 = s_log_24360;
  v3 = v2;
  v4 = *(*(a1 + 32) + 8);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v3, OS_SIGNPOST_INTERVAL_END, v4, "PISegmentationLoader.localLightData", "", v5, 2u);
  }

  dispatch_group_leave(*(a1 + 40));
}

void __69__PISegmentationLoader__loadSegmentationData_layoutGroup_completion___block_invoke_104(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = s_log_24360;
  v5 = v4;
  v6 = *(*(a1 + 32) + 8);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v5, OS_SIGNPOST_INTERVAL_END, v6, "PISegmentationLoader.layout", "", buf, 2u);
  }

  v7 = *(a1 + 32);
  if (v3)
  {
    [v7 _abort:v3];
  }

  else
  {
    [v7 _handlePartialItem:*(a1 + 40) loadingState:2];
    dispatch_group_enter(*(a1 + 48));
    v8 = s_log_24360;
    v9 = v8;
    v10 = *(*(a1 + 32) + 8);
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C7694000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PISegmentationLoader.colorAnalysis", "", buf, 2u);
    }

    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __69__PISegmentationLoader__loadSegmentationData_layoutGroup_completion___block_invoke_105;
    v13[3] = &unk_1E82AC4E8;
    v13[4] = v11;
    v14 = *(a1 + 48);
    [v11 _analyzeColors:v12 completion:v13];
  }

  dispatch_group_leave(*(a1 + 48));
}

void __69__PISegmentationLoader__loadSegmentationData_layoutGroup_completion___block_invoke_105(uint64_t a1)
{
  v2 = s_log_24360;
  v3 = v2;
  v4 = *(*(a1 + 32) + 8);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v3, OS_SIGNPOST_INTERVAL_END, v4, "PISegmentationLoader.colorAnalysis", "", v5, 2u);
  }

  dispatch_group_leave(*(a1 + 40));
}

void __69__PISegmentationLoader__loadSegmentationData_layoutGroup_completion___block_invoke_100(uint64_t a1)
{
  v2 = s_log_24360;
  v3 = v2;
  v4 = *(*(a1 + 32) + 8);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v3, OS_SIGNPOST_INTERVAL_END, v4, "PISegmentationLoader.segment", "", buf, 2u);
  }

  dispatch_group_enter(*(a1 + 40));
  v5 = s_log_24360;
  v6 = v5;
  v7 = *(*(a1 + 32) + 8);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v7, "PISegmentationLoader.regions", "", buf, 2u);
  }

  v8 = *(a1 + 32);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __69__PISegmentationLoader__loadSegmentationData_layoutGroup_completion___block_invoke_101;
  v21[3] = &unk_1E82AC4E8;
  v21[4] = v8;
  v9 = *(a1 + 48);
  v22 = *(a1 + 40);
  [v8 _loadRegions:v9 completion:v21];
  dispatch_group_enter(*(a1 + 56));
  v10 = s_log_24360;
  v11 = v10;
  v12 = *(*(a1 + 32) + 8);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PISegmentationLoader.infill", "", buf, 2u);
  }

  v13 = *(a1 + 32);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __69__PISegmentationLoader__loadSegmentationData_layoutGroup_completion___block_invoke_102;
  v19[3] = &unk_1E82AC4E8;
  v19[4] = v13;
  v14 = *(a1 + 48);
  v20 = *(a1 + 56);
  [v13 _loadBackground:v14 completion:v19];
  dispatch_group_enter(*(a1 + 56));
  v15 = *(a1 + 32);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __69__PISegmentationLoader__loadSegmentationData_layoutGroup_completion___block_invoke_103;
  v17[3] = &unk_1E82AC670;
  v16 = *(a1 + 48);
  v18 = *(a1 + 56);
  [v15 _loadHDRGainMap:v16 completion:v17];
  dispatch_group_leave(*(a1 + 40));
}

void __69__PISegmentationLoader__loadSegmentationData_layoutGroup_completion___block_invoke_101(uint64_t a1)
{
  v2 = s_log_24360;
  v3 = v2;
  v4 = *(*(a1 + 32) + 8);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v3, OS_SIGNPOST_INTERVAL_END, v4, "PISegmentationLoader.regions", "", v5, 2u);
  }

  dispatch_group_leave(*(a1 + 40));
}

void __69__PISegmentationLoader__loadSegmentationData_layoutGroup_completion___block_invoke_102(uint64_t a1)
{
  v2 = s_log_24360;
  v3 = v2;
  v4 = *(*(a1 + 32) + 8);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v3, OS_SIGNPOST_INTERVAL_END, v4, "PISegmentationLoader.infill", "", v5, 2u);
  }

  dispatch_group_leave(*(a1 + 40));
}

- (void)_loadAssetResource:(int64_t)resource allowNetworkAccess:(BOOL)access options:(id)options completion:(id)completion
{
  accessCopy = access;
  v30 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  completionCopy = completion;
  [optionsCopy setNetworkAccessAllowed:accessCopy];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
  }

  v12 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
  {
    asset = self->_asset;
    v14 = v12;
    localIdentifier = [(PFParallaxAsset *)asset localIdentifier];
    *buf = 134218498;
    resourceCopy = resource;
    v26 = 2114;
    v27 = localIdentifier;
    v28 = 1024;
    networkAccessAllowed = [optionsCopy networkAccessAllowed];
    _os_log_impl(&dword_1C7694000, v14, OS_LOG_TYPE_INFO, "Loading resource %ld for asset %{public}@, allow download? %d", buf, 0x1Cu);
  }

  v16 = [MEMORY[0x1E695DF00] now];
  v17 = self->_asset;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __81__PISegmentationLoader__loadAssetResource_allowNetworkAccess_options_completion___block_invoke;
  v20[3] = &unk_1E82AC078;
  v20[4] = self;
  v21 = v16;
  v22 = completionCopy;
  resourceCopy2 = resource;
  v18 = completionCopy;
  v19 = v16;
  self->_loadRequestID = [(PFParallaxAsset *)v17 loadParallaxResource:resource options:optionsCopy resultHandler:v20];
}

void __81__PISegmentationLoader__loadAssetResource_allowNetworkAccess_options_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MEMORY[0x1E695DF00];
  v7 = a2;
  v8 = [v6 now];
  *(a1[4] + 28) = 0;
  if (v7)
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
    }

    v9 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
    {
      v10 = a1[7];
      v11 = *(a1[4] + 96);
      v12 = v9;
      v13 = [v11 localIdentifier];
      [v8 timeIntervalSinceDate:a1[5]];
      v25 = 134218498;
      v26 = v10;
      v27 = 2114;
      v28 = v13;
      v29 = 2048;
      v30 = v14;
      v15 = "Successfully loaded resource %ld for asset %{public}@ in %0.3fs";
LABEL_6:
      _os_log_impl(&dword_1C7694000, v12, OS_LOG_TYPE_INFO, v15, &v25, 0x20u);
LABEL_7:
    }
  }

  else
  {
    v16 = *MEMORY[0x1E69B3D78];
    if (v5)
    {
      if (v16 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
      }

      v17 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
      {
        v18 = a1[7];
        v19 = *(a1[4] + 96);
        v12 = v17;
        v13 = [v19 localIdentifier];
        [v8 timeIntervalSinceDate:a1[5]];
        v25 = 134218754;
        v26 = v18;
        v27 = 2114;
        v28 = v13;
        v29 = 2048;
        v30 = v20;
        v31 = 2114;
        v32 = v5;
        _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "Failed to load resource %ld for asset %{public}@ after %0.3fs, error: %{public}@", &v25, 0x2Au);
        goto LABEL_7;
      }
    }

    else
    {
      if (v16 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
      }

      v21 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
      {
        v22 = a1[7];
        v23 = *(a1[4] + 96);
        v12 = v21;
        v13 = [v23 localIdentifier];
        [v8 timeIntervalSinceDate:a1[5]];
        v25 = 134218498;
        v26 = v22;
        v27 = 2114;
        v28 = v13;
        v29 = 2048;
        v30 = v24;
        v15 = "Cancelled loading resource %ld for asset %{public}@ after %0.3fs";
        goto LABEL_6;
      }
    }
  }

  (*(a1[6] + 16))();
}

- (void)_loadAssetResource:(int64_t)resource options:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__PISegmentationLoader__loadAssetResource_options_completion___block_invoke;
  v12[3] = &unk_1E82AC078;
  v12[4] = self;
  v13 = optionsCopy;
  v14 = completionCopy;
  resourceCopy = resource;
  v10 = completionCopy;
  v11 = optionsCopy;
  [(PISegmentationLoader *)self _loadAssetResource:resource allowNetworkAccess:0 options:v11 completion:v12];
}

void __62__PISegmentationLoader__loadAssetResource_options_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5 || ([*(a1 + 32) disableDownload] & 1) != 0)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v7 = [*(a1 + 32) downloadProgressHandler];
    [*(a1 + 40) setDownloadProgressHandler:v7];

    if ([*(a1 + 32) priority])
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
      }

      v8 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
      {
        v9 = *(a1 + 32);
        v10 = v8;
        v11 = [v9 asset];
        v12 = [v11 localIdentifier];
        *buf = 138543362;
        v19 = v12;
        _os_log_impl(&dword_1C7694000, v10, OS_LOG_TYPE_INFO, "Triggering non-foreground user initiated download for asset with local identifier: %{public}@", buf, 0xCu);
      }

      [*(a1 + 40) setPriority:{objc_msgSend(*(a1 + 32), "priority")}];
    }

    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __62__PISegmentationLoader__loadAssetResource_options_completion___block_invoke_98;
    v16[3] = &unk_1E82AC050;
    v15 = *(a1 + 56);
    v17 = *(a1 + 48);
    [v13 _loadAssetResource:v15 allowNetworkAccess:1 options:v14 completion:v16];
  }
}

- (void)_loadAssetResourceForProxy:(BOOL)proxy completion:(id)completion
{
  proxyCopy = proxy;
  v6 = MEMORY[0x1E69C0748];
  completionCopy = completion;
  v8 = objc_alloc_init(v6);
  sourceMode = self->_sourceMode;
  v13 = v8;
  if (sourceMode < 2)
  {
    v10 = proxyCopy;
    v11 = !proxyCopy;
  }

  else
  {
    if (sourceMode != 2)
    {
      if (sourceMode == 3)
      {
        [v8 setCanHandleAdjustmentData:&__block_literal_global_97_24481];
        v10 = 4;
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_13;
    }

    v11 = !proxyCopy;
    if (proxyCopy)
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }
  }

  v12 = 3024.0;
  if (!v11)
  {
    v12 = 1536.0;
  }

  [v8 setImageSize:{v12, v12}];
LABEL_13:
  [v13 setResultHandlerQueue:self->_queue];
  [(PISegmentationLoader *)self _loadAssetResource:v10 options:v13 completion:completionCopy];
}

- (void)_loadAssetResourceForLiveOriginalWithCompletion:(id)completion
{
  v4 = MEMORY[0x1E69C0748];
  completionCopy = completion;
  v6 = objc_alloc_init(v4);
  [v6 setCanHandleAdjustmentData:&__block_literal_global_24484];
  [v6 setResultHandlerQueue:self->_queue];
  [(PISegmentationLoader *)self _loadAssetResource:6 options:v6 completion:completionCopy];
}

- (void)_loadFullSizeResource:(id)resource completion:(id)completion
{
  resourceCopy = resource;
  completionCopy = completion;
  resource = [resourceCopy resource];
  if (resource && (v9 = resource, [resourceCopy resource], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isProxyOnly"), v10, v9, (v11 & 1) == 0) || self->_isCancelled)
  {
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __57__PISegmentationLoader__loadFullSizeResource_completion___block_invoke;
    v12[3] = &unk_1E82AC008;
    v13 = resourceCopy;
    v14 = completionCopy;
    [(PISegmentationLoader *)self _loadAssetResourceForProxy:0 completion:v12];
  }
}

void __57__PISegmentationLoader__loadFullSizeResource_completion___block_invoke(uint64_t a1, void *a2)
{
  v17 = a2;
  if (v17)
  {
    v3 = [*(a1 + 32) resource];
    [v17 setProxyImage:{objc_msgSend(v3, "proxyImage")}];

    v4 = [PISegmentationLoader segmentationCompositionForAssetResource:v17];
    [*(a1 + 32) setResource:v17];
    [*(a1 + 32) setComposition:v4];
    v5 = [*(a1 + 32) settlingEffectVideoData];

    if (v5)
    {
      v6 = [*(a1 + 32) settlingEffectVideoData];
      [*(a1 + 32) settlingEffectNormalizedBounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v15 = [*(a1 + 32) composition];
      v16 = [PISegmentationLoader livePhotoCompositionForVideoData:v6 cropRect:v15 photoComposition:v8, v10, v12, v14];
      [*(a1 + 32) setComposition:v16];
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)_loadProxyResource:(id)resource completion:(id)completion
{
  resourceCopy = resource;
  completionCopy = completion;
  resource = [resourceCopy resource];

  if (resource || self->_isCancelled)
  {
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __54__PISegmentationLoader__loadProxyResource_completion___block_invoke;
    v9[3] = &unk_1E82AC008;
    v10 = resourceCopy;
    v11 = completionCopy;
    [(PISegmentationLoader *)self _loadAssetResourceForProxy:1 completion:v9];
  }
}

void __54__PISegmentationLoader__loadProxyResource_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    [*(a1 + 32) setResource:v4];
    v3 = [PISegmentationLoader segmentationCompositionForAssetResource:v4];
    [*(a1 + 32) setComposition:v3];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_loadFinalResource:(id)resource completion:(id)completion
{
  resourceCopy = resource;
  completionCopy = completion;
  if ([(PISegmentationLoader *)self preferFullResolutionResource])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PISegmentationLoader.m" lineNumber:683 description:@"Item already has full resolution resource loaded."];
  }

  else
  {
    [(PISegmentationLoader *)self _loadFullSizeResource:resourceCopy completion:completionCopy];
  }
}

- (void)_loadFirstPreferredResource:(id)resource completion:(id)completion
{
  completionCopy = completion;
  resourceCopy = resource;
  if ([(PISegmentationLoader *)self preferFullResolutionResource])
  {
    [(PISegmentationLoader *)self _loadFullSizeResource:resourceCopy completion:completionCopy];
  }

  else
  {
    [(PISegmentationLoader *)self _loadProxyResource:resourceCopy completion:completionCopy];
  }
}

- (void)_loadLiveOriginalResource:(id)resource completion:(id)completion
{
  resourceCopy = resource;
  completionCopy = completion;
  livePhotoResource = [resourceCopy livePhotoResource];

  if (livePhotoResource || self->_isCancelled)
  {
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __61__PISegmentationLoader__loadLiveOriginalResource_completion___block_invoke;
    v9[3] = &unk_1E82AC008;
    v10 = resourceCopy;
    v11 = completionCopy;
    [(PISegmentationLoader *)self _loadAssetResourceForLiveOriginalWithCompletion:v9];
  }
}

void __61__PISegmentationLoader__loadLiveOriginalResource_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && [v3 type] == 6)
  {
    [*(a1 + 32) setLivePhotoResource:v4];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_abort:(id)_abort
{
  _abortCopy = _abort;
  p_loadingError = &self->_loadingError;
  if (!self->_loadingError)
  {
    v7 = _abortCopy;
    objc_storeStrong(p_loadingError, _abort);
    if (self->_loadRequestID)
    {
      [(PFParallaxAsset *)self->_asset cancelParallaxResourceRequest:?];
    }

    if (self->_petsRequestID)
    {
      [(PFParallaxAsset *)self->_asset cancelPetsRegionsRequest:?];
    }

    if (self->_loadMotionRequestID)
    {
      [(PFParallaxAsset *)self->_asset cancelMotionScoreRequest:?];
    }

    if (self->_loadFocalLengthRequestID)
    {
      [(PFParallaxAsset *)self->_asset cancelFocalLengthRequest:?];
    }

    if (self->_settlingEffectCropRequestID)
    {
      [PIPosterSettlingEffectLoader cancelRequest:?];
    }

    if (self->_settlingEffectVideoRequestID)
    {
      [PIPosterSettlingEffectLoader cancelRequest:?];
    }

    p_loadingError = [(NURenderContext *)self->_renderContext cancelAllRequests];
    _abortCopy = v7;
  }

  MEMORY[0x1EEE66BB8](p_loadingError, _abortCopy);
}

- (void)cancel
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
  }

  v3 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C7694000, v3, OS_LOG_TYPE_DEFAULT, "Cancelling segmentation loader", buf, 2u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__PISegmentationLoader_cancel__block_invoke;
  block[3] = &unk_1E82AC670;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (id)_computeDefaultLayoutForItem:(id)item error:(id *)error
{
  itemCopy = item;
  v7 = [PIPosterLayoutRequest alloc];
  composition = [itemCopy composition];
  v9 = [(NURenderRequest *)v7 initWithComposition:composition];

  layoutConfiguration = [(PISegmentationLoader *)self layoutConfiguration];
  [(PIPosterLayoutRequest *)v9 setLayoutConfiguration:layoutConfiguration];

  [(PIPosterLayoutRequest *)v9 setLayoutRegions:self->_asset];
  [(PIPosterLayoutRequest *)v9 setSegmentationClassification:[(PISegmentationLoader *)self classification]];
  [(PIPosterLayoutRequest *)v9 setShouldComputeAllScores:0];
  if ([(PISegmentationLoader *)self disableAdaptiveLayout])
  {
    [(PIPosterLayoutRequest *)v9 setAllowedLayoutStrategies:1];
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__24387;
  v30 = __Block_byref_object_dispose__24388;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__24387;
  v24 = __Block_byref_object_dispose__24388;
  v25 = 0;
  v11 = dispatch_group_create();
  dispatch_group_enter(v11);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __59__PISegmentationLoader__computeDefaultLayoutForItem_error___block_invoke;
  v16[3] = &unk_1E82ABFE0;
  v18 = &v26;
  v19 = &v20;
  v12 = v11;
  v17 = v12;
  [(PIPosterLayoutRequest *)v9 submit:v16];
  dispatch_group_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  v13 = v27[5];
  if (!v13)
  {
    *error = v21[5];
    v13 = v27[5];
  }

  v14 = v13;

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v14;
}

void __59__PISegmentationLoader__computeDefaultLayoutForItem_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = 0;
  v3 = [a2 result:&v11];
  v4 = v11;
  v5 = v4;
  if (v3)
  {
    v6 = [v3 layout];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9 = *(*(a1 + 48) + 8);
    v10 = v4;
    v8 = *(v9 + 40);
    *(v9 + 40) = v10;
  }

  dispatch_group_leave(*(a1 + 32));
}

- (void)_handlePartialItem:(id)item loadingState:(unint64_t)state
{
  v30 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  loadingHandler = [(PISegmentationLoader *)self loadingHandler];
  if (loadingHandler)
  {
    loadingState = [itemCopy loadingState];
    v9 = state == 128 ? loadingState | 0x80 : loadingState & 0x80 | state;
    [itemCopy setLoadingState:v9];
    defaultLayout = [itemCopy defaultLayout];

    if (defaultLayout)
    {
      goto LABEL_6;
    }

    v27 = 0;
    v14 = [(PISegmentationLoader *)self _computeDefaultLayoutForItem:itemCopy error:&v27];
    v13 = v27;
    if (!v14)
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
      }

      v20 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v29 = v13;
        _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Failed to compute default layout, error: %{public}@", buf, 0xCu);
      }

      goto LABEL_7;
    }

    v15 = objc_alloc(MEMORY[0x1E69B3AA8]);
    composition = [itemCopy composition];
    v17 = [v15 initWithComposition:composition];

    v26 = 0;
    v18 = [v17 submitSynchronous:&v26];
    v19 = v26;

    if (v18)
    {
      [itemCopy setDefaultLayout:v14];
    }

    else
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
      }

      v21 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v29 = v19;
        _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Failed to compute proxy image size, error: %{public}@", buf, 0xCu);
      }
    }

    if (v18)
    {
LABEL_6:
      v11 = [itemCopy copy];
      loadingHandlerQueue = self->_loadingHandlerQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __56__PISegmentationLoader__handlePartialItem_loadingState___block_invoke;
      block[3] = &unk_1E82ABFB8;
      v23 = v11;
      v24 = loadingHandler;
      v25 = v9;
      v13 = v11;
      dispatch_async(loadingHandlerQueue, block);

LABEL_7:
    }
  }
}

- (void)_loadItem:(id)item completion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  v8 = dispatch_group_create();
  dispatch_group_enter(v8);
  v9 = s_log_24360;
  v10 = v9;
  signpost = self->_signpost;
  if (signpost - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v10, OS_SIGNPOST_INTERVAL_BEGIN, signpost, "PISegmentationLoader.proxy", "", buf, 2u);
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __45__PISegmentationLoader__loadItem_completion___block_invoke;
  v20[3] = &unk_1E82ABEF0;
  v20[4] = self;
  v12 = itemCopy;
  v21 = v12;
  v22 = v8;
  v13 = v8;
  [(PISegmentationLoader *)self _loadFirstPreferredResource:v12 completion:v20];
  queue = self->_queue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __45__PISegmentationLoader__loadItem_completion___block_invoke_79;
  v17[3] = &unk_1E82ABF90;
  v18 = v12;
  v19 = completionCopy;
  v17[4] = self;
  v15 = v12;
  v16 = completionCopy;
  dispatch_group_notify(v13, queue, v17);
}

void __45__PISegmentationLoader__loadItem_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = s_log_24360;
  v5 = v4;
  v6 = *(*(a1 + 32) + 8);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v5, OS_SIGNPOST_INTERVAL_END, v6, "PISegmentationLoader.proxy", "", buf, 2u);
  }

  v7 = [*(a1 + 40) resource];

  v8 = *(a1 + 32);
  if (v7)
  {
    [v8 _handlePartialItem:*(a1 + 40) loadingState:1];
    dispatch_group_enter(*(a1 + 48));
    v9 = dispatch_group_create();
    v10 = dispatch_group_create();
    dispatch_group_enter(v10);
    v11 = s_log_24360;
    v12 = v11;
    v13 = *(*(a1 + 32) + 8);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C7694000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v13, "PISegmentationLoader.properties", "", buf, 2u);
    }

    v15 = *(a1 + 32);
    v14 = *(a1 + 40);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __45__PISegmentationLoader__loadItem_completion___block_invoke_73;
    v27[3] = &unk_1E82ABEC8;
    v27[4] = v15;
    v28 = v14;
    v29 = *(a1 + 48);
    v16 = v10;
    v30 = v16;
    [v15 _loadSegmentationData:v28 layoutGroup:v9 completion:v27];
    if (([*(a1 + 32) loadFirstResourceOnly] & 1) == 0)
    {
      dispatch_group_enter(*(a1 + 48));
      v17 = s_log_24360;
      v18 = v17;
      v19 = *(*(a1 + 32) + 8);
      if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C7694000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v19, "PISegmentationLoader.fullSize", "", buf, 2u);
      }

      v20 = *(a1 + 32);
      v21 = *(a1 + 40);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __45__PISegmentationLoader__loadItem_completion___block_invoke_74;
      v22[3] = &unk_1E82ABF68;
      v22[4] = v20;
      v23 = v16;
      v24 = *(a1 + 40);
      v25 = *(a1 + 48);
      v26 = v9;
      [v20 _loadFinalResource:v21 completion:v22];
    }
  }

  else
  {
    [v8 _abort:v3];
  }

  dispatch_group_leave(*(a1 + 48));
}

uint64_t __45__PISegmentationLoader__loadItem_completion___block_invoke_79(void *a1)
{
  v2 = a1[4];
  if ((*(v2 + 25) & 1) != 0 || *(v2 + 56))
  {
    v3 = *(a1[6] + 16);
  }

  else
  {
    [v2 _cacheSegmentationDataForItem:a1[5]];
    v3 = *(a1[6] + 16);
  }

  return v3();
}

void __45__PISegmentationLoader__loadItem_completion___block_invoke_73(uint64_t a1)
{
  v2 = s_log_24360;
  v3 = v2;
  v4 = *(*(a1 + 32) + 8);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v3, OS_SIGNPOST_INTERVAL_END, v4, "PISegmentationLoader.properties", "", v5, 2u);
  }

  [*(a1 + 32) _handlePartialItem:*(a1 + 40) loadingState:4];
  dispatch_group_leave(*(a1 + 48));
  dispatch_group_leave(*(a1 + 56));
}

void __45__PISegmentationLoader__loadItem_completion___block_invoke_74(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = s_log_24360;
  v5 = v4;
  v6 = *(*(a1 + 32) + 8);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v5, OS_SIGNPOST_INTERVAL_END, v6, "PISegmentationLoader.fullSize", "", buf, 2u);
  }

  v7 = *(a1 + 40);
  v8 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__PISegmentationLoader__loadItem_completion___block_invoke_75;
  block[3] = &unk_1E82ABF40;
  v13 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 32);
  v14 = v9;
  v15 = v10;
  v16 = *(a1 + 64);
  v17 = v3;
  v11 = v3;
  dispatch_group_notify(v7, v8, block);
}

void __45__PISegmentationLoader__loadItem_completion___block_invoke_75(uint64_t a1)
{
  v2 = [*(a1 + 32) resource];

  if (v2)
  {
    dispatch_group_enter(*(a1 + 40));
    v3 = s_log_24360;
    v4 = v3;
    v5 = *(*(a1 + 48) + 8);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C7694000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PISegmentationLoader.spatialPhoto.metadata", "", buf, 2u);
    }

    v7 = *(a1 + 48);
    v6 = *(a1 + 56);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __45__PISegmentationLoader__loadItem_completion___block_invoke_76;
    v13[3] = &unk_1E82ABF18;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 56);
    *&v11 = v9;
    *(&v11 + 1) = v10;
    *&v12 = v7;
    *(&v12 + 1) = v8;
    v14 = v12;
    v15 = v11;
    [v7 _loadSpatialPhoto:v8 layoutGroup:v6 completion:v13];
  }

  else
  {
    [*(a1 + 48) _abort:*(a1 + 64)];
  }

  dispatch_group_leave(*(a1 + 40));
}

void __45__PISegmentationLoader__loadItem_completion___block_invoke_76(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = s_log_24360;
  v5 = v4;
  v6 = *(*(a1 + 32) + 8);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v5, OS_SIGNPOST_INTERVAL_END, v6, "PISegmentationLoader.spatialPhoto.metadata", "", buf, 2u);
  }

  if (v3)
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
    }

    v7 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      v25 = *(a1 + 40);
      v26 = v7;
      v27 = [v25 scores];
      v28 = [v27 objectForKeyedSubscript:*MEMORY[0x1E69C0D40]];
      *buf = 138543618;
      v34 = v3;
      v35 = 2114;
      v36 = v28;
      _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "Failed to load spatial photo: %{public}@ gatingFailures: %{public}@", buf, 0x16u);
    }

    [*(a1 + 32) _abort:v3];
    goto LABEL_26;
  }

  if ([*(a1 + 40) isSpatialPhotoAvailable])
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
    }

    v8 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 40);
      v10 = v8;
      v11 = [v9 spatialPhotoStatus];
      if ((v11 - 1) > 4)
      {
        v12 = @"unknown";
      }

      else
      {
        v12 = off_1E82AA130[v11 - 1];
      }

      v17 = v12;
      *buf = 138543362;
      v34 = v17;
      _os_log_impl(&dword_1C7694000, v10, OS_LOG_TYPE_INFO, "Loaded spatial photo, available status: %{public}@", buf, 0xCu);
LABEL_25:
    }
  }

  else
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
    }

    v13 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 40);
      v10 = v13;
      v15 = [v14 spatialPhotoStatus];
      if ((v15 - 1) > 4)
      {
        v16 = @"unknown";
      }

      else
      {
        v16 = off_1E82AA130[v15 - 1];
      }

      v17 = v16;
      v18 = [*(a1 + 40) scores];
      v19 = [v18 objectForKeyedSubscript:*MEMORY[0x1E69C0D40]];
      *buf = 138543618;
      v34 = v17;
      v35 = 2114;
      v36 = v19;
      _os_log_impl(&dword_1C7694000, v10, OS_LOG_TYPE_INFO, "Loaded spatial photo, unavailable status: %{public}@ gatingFailures: %{public}@", buf, 0x16u);

      goto LABEL_25;
    }
  }

LABEL_26:
  [*(a1 + 32) _handlePartialItem:*(a1 + 40) loadingState:128];
  dispatch_group_enter(*(a1 + 48));
  v21 = *(a1 + 32);
  v20 = *(a1 + 40);
  v22 = *(a1 + 56);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __45__PISegmentationLoader__loadItem_completion___block_invoke_77;
  v29[3] = &unk_1E82ABEF0;
  v23 = v20;
  v24 = *(a1 + 32);
  v30 = v23;
  v31 = v24;
  v32 = *(a1 + 48);
  [v21 _loadSettlingEffect:v23 layoutGroup:v22 completion:v29];
  dispatch_group_leave(*(a1 + 48));
}

void __45__PISegmentationLoader__loadItem_completion___block_invoke_77(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
    }

    v4 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      v11 = 138543362;
      v12 = v3;
      _os_log_error_impl(&dword_1C7694000, v4, OS_LOG_TYPE_ERROR, "Failed to load settling effect: %{public}@", &v11, 0xCu);
    }

    [*(a1 + 40) _abort:v3];
  }

  else
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
    }

    v5 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = v5;
      v8 = [v6 settlingEffectStatus];
      if ((v8 - 1) > 4)
      {
        v9 = @"unknown";
      }

      else
      {
        v9 = off_1E82AA108[v8 - 1];
      }

      v10 = v9;
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&dword_1C7694000, v7, OS_LOG_TYPE_INFO, "Loaded settling effect, status: %@", &v11, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 48));
}

- (id)currentContextInfo
{
  v3 = +[PISegmentationContextInfo currentContextInfo];
  [v3 setSourceMode:{-[PISegmentationLoader sourceMode](self, "sourceMode")}];
  [v3 setSegmentationDisabled:{-[PISegmentationLoader disableSegmentation](self, "disableSegmentation")}];
  layoutConfiguration = [(PISegmentationLoader *)self layoutConfiguration];
  [v3 setLayoutConfiguration:layoutConfiguration];

  [v3 setRole:{-[PISegmentationLoader role](self, "role")}];

  return v3;
}

- (void)_load:(id)_load
{
  v21 = *MEMORY[0x1E69E9840];
  _loadCopy = _load;
  self->_isLoading = 1;
  layoutConfiguration = [(PISegmentationLoader *)self layoutConfiguration];

  if (!layoutConfiguration)
  {
    v6 = +[PIGlobalSettings globalSettings];
    parallaxLayoutConfigurationOverride = [v6 parallaxLayoutConfigurationOverride];

    v8 = MEMORY[0x1E69B3D78];
    if (parallaxLayoutConfigurationOverride)
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
      }

      v9 = MEMORY[0x1E69B3D80];
      v10 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138543362;
        v20 = parallaxLayoutConfigurationOverride;
        _os_log_impl(&dword_1C7694000, v10, OS_LOG_TYPE_DEFAULT, "Warning: PISegmentationLoader layout configuration unspecified! Using override layout configuration '%{public}@'", &v19, 0xCu);
      }

      v11 = [MEMORY[0x1E69C0938] configurationWithDeviceName:parallaxLayoutConfigurationOverride];
      [(PISegmentationLoader *)self setLayoutConfiguration:v11];

      layoutConfiguration2 = [(PISegmentationLoader *)self layoutConfiguration];

      if (layoutConfiguration2)
      {
        goto LABEL_19;
      }

      if (*v8 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
      }

      v13 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138543362;
        v20 = parallaxLayoutConfigurationOverride;
        _os_log_impl(&dword_1C7694000, v13, OS_LOG_TYPE_DEFAULT, "Warning: Override layout configuration '%{public}@' not found, using generic fallback", &v19, 0xCu);
      }

      genericConfiguration = [MEMORY[0x1E69C0938] genericConfiguration];
    }

    else
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
      }

      v15 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_1C7694000, v15, OS_LOG_TYPE_DEFAULT, "Warning: PISegmentationLoader layout configuration unspecified! Using the layout configuration matching this device", &v19, 2u);
      }

      genericConfiguration = [MEMORY[0x1E69C0938] deviceConfiguration];
    }

    v16 = genericConfiguration;
    [(PISegmentationLoader *)self setLayoutConfiguration:genericConfiguration];

LABEL_19:
  }

  v17 = self->_item;
  contextInfo = [(PIParallaxSegmentationItem *)v17 contextInfo];
  if (contextInfo)
  {
    if (v17)
    {
      goto LABEL_26;
    }
  }

  else
  {
    contextInfo = [(PISegmentationLoader *)self currentContextInfo];
    if (v17)
    {
      goto LABEL_26;
    }
  }

  v17 = [(PISegmentationLoader *)self _tryLoadSegmentationItemFromCache:contextInfo];
  if (!v17)
  {
    v17 = objc_alloc_init(PIParallaxSegmentationItem);
    [(PIParallaxSegmentationItem *)v17 setContextInfo:contextInfo];
    [(PIParallaxSegmentationItem *)v17 setClassification:[(PISegmentationLoader *)self classification]];
  }

LABEL_26:
  [(PISegmentationLoader *)self _loadItem:v17 completion:_loadCopy];
}

- (void)_didLoad:(id)load completion:(id)completion
{
  loadCopy = load;
  completionCopy = completion;
  self->_isLoading = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __44__PISegmentationLoader__didLoad_completion___block_invoke;
  v15[3] = &unk_1E82AC908;
  v15[4] = self;
  v8 = completionCopy;
  v16 = v8;
  v9 = MEMORY[0x1CCA61740](v15);
  v12 = v9;
  if (self->_isCancelled)
  {
    v13 = *(v9 + 16);
    v14 = 0;
  }

  else
  {
    if (!loadCopy)
    {
      (*(v9 + 16))(v9, 0, self->_loadingError, v10, v11);
      goto LABEL_6;
    }

    v13 = *(v9 + 16);
    v14 = loadCopy;
  }

  v13(v9, v14, 0, v10, v11);
LABEL_6:
}

void __44__PISegmentationLoader__didLoad_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) loadingHandlerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__PISegmentationLoader__didLoad_completion___block_invoke_2;
  block[3] = &unk_1E82ABF90;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)loadSegmentationItemWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__PISegmentationLoader_loadSegmentationItemWithCompletion___block_invoke;
  v7[3] = &unk_1E82ABEA0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_sync(queue, v7);
}

void __59__PISegmentationLoader_loadSegmentationItemWithCompletion___block_invoke(uint64_t a1)
{
  v2 = s_log_24360;
  v3 = v2;
  v4 = *(*(a1 + 32) + 8);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, "PISegmentationLoader.item", "", buf, 2u);
  }

  v5 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__PISegmentationLoader_loadSegmentationItemWithCompletion___block_invoke_67;
  v6[3] = &unk_1E82ABE78;
  v6[4] = v5;
  v7 = *(a1 + 40);
  [v5 _load:v6];
}

void __59__PISegmentationLoader_loadSegmentationItemWithCompletion___block_invoke_67(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = s_log_24360;
  v5 = v4;
  v6 = *(*(a1 + 32) + 8);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v5, OS_SIGNPOST_INTERVAL_END, v6, "PISegmentationLoader.item", "", v7, 2u);
  }

  [*(a1 + 32) _didLoad:v3 completion:*(a1 + 40)];
}

- (BOOL)_shouldEnableSpatialPhotoByDefault
{
  v2 = +[PIGlobalSettings globalSettings];
  forceEnableSpatialPhoto = [v2 forceEnableSpatialPhoto];

  if (forceEnableSpatialPhoto)
  {
    LOBYTE(IsSpatialPhotoEnabled) = 1;
  }

  else
  {
    IsSpatialPhotoEnabled = PFPosterIsSpatialPhotoEnabled();
    if (IsSpatialPhotoEnabled)
    {

      LOBYTE(IsSpatialPhotoEnabled) = MEMORY[0x1EEE299D0](IsSpatialPhotoEnabled, v5);
    }
  }

  return IsSpatialPhotoEnabled;
}

- (BOOL)_shouldEnableSettlingEffectByDefault
{
  v2 = +[PIGlobalSettings globalSettings];
  forceEnableSettlingEffect = [v2 forceEnableSettlingEffect];

  if (forceEnableSettlingEffect)
  {
    return 1;
  }

  return MEMORY[0x1EEE299E0]();
}

- (BOOL)_shouldEnableSegmentationByDefault
{
  v2 = +[PIGlobalSettings globalSettings];
  forceEnableSegmentation = [v2 forceEnableSegmentation];

  if (forceEnableSegmentation)
  {
    return 1;
  }

  v5 = +[PIGlobalSettings globalSettings];
  disableSegmentation = [v5 disableSegmentation];

  if (disableSegmentation)
  {
    return 0;
  }

  return MEMORY[0x1EEE299C8]();
}

- (PISegmentationLoader)initWithSegmentationItem:(id)item parallaxAsset:(id)asset
{
  v33 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  assetCopy = asset;
  if (!itemCopy)
  {
    v16 = NUAssertLogger_24364();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "item != nil"];
      *buf = 138543362;
      v30 = v17;
      _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v18 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v20 = NUAssertLogger_24364();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v21)
      {
        v24 = dispatch_get_specific(*v18);
        v25 = MEMORY[0x1E696AF00];
        v26 = v24;
        callStackSymbols = [v25 callStackSymbols];
        v28 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v30 = v24;
        v31 = 2114;
        v32 = v28;
        _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v30 = v23;
      _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v9 = assetCopy;
  if (!assetCopy)
  {
    v9 = objc_alloc_init(_PISegmentationNullAsset);
  }

  v10 = [(PISegmentationLoader *)self initWithParallaxAsset:v9];
  [itemCopy setSegmentationDataURL:0];
  objc_storeStrong(&v10->_item, item);
  contextInfo = [itemCopy contextInfo];
  v12 = contextInfo;
  if (contextInfo)
  {
    v10->_sourceMode = [contextInfo sourceMode];
    v10->_disableSegmentation = [v12 segmentationDisabled];
    layoutConfiguration = [v12 layoutConfiguration];
    layoutConfiguration = v10->_layoutConfiguration;
    v10->_layoutConfiguration = layoutConfiguration;
  }

  return v10;
}

- (PISegmentationLoader)initWithParallaxAsset:(id)asset
{
  v36 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  if (!assetCopy)
  {
    v18 = NUAssertLogger_24364();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "asset != nil"];
      *buf = 138543362;
      v33 = v19;
      _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v20 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v22 = NUAssertLogger_24364();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v23)
      {
        v26 = dispatch_get_specific(*v20);
        v27 = MEMORY[0x1E696AF00];
        v28 = v26;
        callStackSymbols = [v27 callStackSymbols];
        v30 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v33 = v26;
        v34 = 2114;
        v35 = v30;
        _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v33 = v25;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v5 = assetCopy;
  v31.receiver = self;
  v31.super_class = PISegmentationLoader;
  v6 = [(PISegmentationLoader *)&v31 init];
  asset = v6->_asset;
  v6->_asset = v5;
  v8 = v5;

  v6->_sourceMode = 1;
  v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v10 = dispatch_queue_create("PISegmentationItemLoader.state", v9);
  queue = v6->_queue;
  v6->_queue = v10;

  v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v13 = dispatch_queue_create("PISegmentationItemLoader.loading", v12);
  loadingHandlerQueue = v6->_loadingHandlerQueue;
  v6->_loadingHandlerQueue = v13;

  v6->_signpost = os_signpost_id_make_with_pointer(s_log_24360, v6);
  v15 = objc_alloc_init(MEMORY[0x1E69B3C18]);
  renderContext = v6->_renderContext;
  v6->_renderContext = v15;

  v6->_disableSegmentation = ![(PISegmentationLoader *)v6 _shouldEnableSegmentationByDefault];
  v6->_disableSettlingEffect = ![(PISegmentationLoader *)v6 _shouldEnableSettlingEffectByDefault];
  v6->_disableSpatialPhoto = ![(PISegmentationLoader *)v6 _shouldEnableSpatialPhotoByDefault];
  v6->_disableHeadroomLayout = ![(PISegmentationLoader *)v6 _shouldEnableHeadroomByDefault];
  return v6;
}

+ (BOOL)currentDeviceSupportsSettlingEffect
{
  currentPlatform = [MEMORY[0x1E69B3BF8] currentPlatform];
  mainDevice = [currentPlatform mainDevice];

  LOBYTE(currentPlatform) = [mainDevice family] > 4;
  return currentPlatform;
}

+ (void)loadSpatialPhotoForSegmentationItem:(id)item asset:(id)asset completion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  assetCopy = asset;
  completionCopy = completion;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = itemCopy;
    v11 = objc_opt_class();
    if (v10)
    {
      if (objc_opt_isKindOfClass())
      {
        v12 = [[PISegmentationLoader alloc] initWithSegmentationItem:v10 parallaxAsset:assetCopy];
        v13 = dispatch_group_create();
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __77__PISegmentationLoader_loadSpatialPhotoForSegmentationItem_asset_completion___block_invoke;
        v19[3] = &unk_1E82AC488;
        v20 = v10;
        v21 = completionCopy;
        v14 = v10;
        [(PISegmentationLoader *)v12 _loadSpatialPhoto:v14 layoutGroup:v13 completion:v19];

        goto LABEL_10;
      }

      v17 = objc_opt_class();
      NSStringFromClass(v17);
      objc_claimAutoreleasedReturnValue();
      v18 = objc_opt_class();
      NSStringFromClass(v18);
      objc_claimAutoreleasedReturnValue();
    }

    else
    {
      NSStringFromClass(v11);
      objc_claimAutoreleasedReturnValue();
    }

    _PFAssertFailHandler();
  }

  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
  }

  v15 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
  {
    v16 = v15;
    *buf = 138543362;
    v23 = objc_opt_class();
    _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "Failed to load spatial photo: segmentationItem is Unsupported class: %{public}@", buf, 0xCu);
  }

  v12 = [MEMORY[0x1E69B3A48] invalidError:@"Unsupported class" object:itemCopy];
  (*(completionCopy + 2))(completionCopy, 0, v12);
LABEL_10:
}

void __77__PISegmentationLoader_loadSpatialPhotoForSegmentationItem_asset_completion___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
    }

    v4 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = v4;
      v7 = [v5 scores];
      v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69C0D40]];
      v21 = 138543618;
      v22 = v3;
      v23 = 2114;
      v24 = v8;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Failed to load spatial photo: %{public}@ gatingFailures: %{public}@", &v21, 0x16u);
    }

    goto LABEL_22;
  }

  if ([*(a1 + 32) isSpatialPhotoAvailable])
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
    }

    v9 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 32);
      v11 = v9;
      v12 = [v10 spatialPhotoStatus];
      if ((v12 - 1) > 4)
      {
        v13 = @"unknown";
      }

      else
      {
        v13 = off_1E82AA130[v12 - 1];
      }

      v18 = v13;
      v21 = 138543362;
      v22 = v18;
      _os_log_impl(&dword_1C7694000, v11, OS_LOG_TYPE_INFO, "Loaded spatial photo, available status: %{public}@", &v21, 0xCu);
LABEL_21:
    }
  }

  else
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
    }

    v14 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 32);
      v11 = v14;
      v16 = [v15 spatialPhotoStatus];
      if ((v16 - 1) > 4)
      {
        v17 = @"unknown";
      }

      else
      {
        v17 = off_1E82AA130[v16 - 1];
      }

      v18 = v17;
      v19 = [*(a1 + 32) scores];
      v20 = [v19 objectForKeyedSubscript:*MEMORY[0x1E69C0D40]];
      v21 = 138543618;
      v22 = v18;
      v23 = 2114;
      v24 = v20;
      _os_log_impl(&dword_1C7694000, v11, OS_LOG_TYPE_INFO, "Loaded spatial photo, unavailable status: %{public}@ gatingFailures: %{public}@", &v21, 0x16u);

      goto LABEL_21;
    }
  }

LABEL_22:
  (*(*(a1 + 40) + 16))();
}

+ (id)reloadSegmentationItemFromWallpaperURL:(id)l asset:(id)asset completion:(id)completion
{
  v35 = *MEMORY[0x1E69E9840];
  lCopy = l;
  specific = asset;
  completionCopy = completion;
  if (!lCopy)
  {
    v22 = NUAssertLogger_24364();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "wallpaperURL != nil"];
      *buf = 138543362;
      v32 = v23;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    lCopy = NUAssertLogger_24364();
    v24 = os_log_type_enabled(lCopy, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v24)
      {
        specific = dispatch_get_specific(*callStackSymbols);
        v25 = MEMORY[0x1E696AF00];
        self = specific;
        callStackSymbols = [v25 callStackSymbols];
        v5 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v32 = specific;
        v33 = 2114;
        v34 = v5;
        _os_log_error_impl(&dword_1C7694000, lCopy, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      specific = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [specific componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v32 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, lCopy, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v26 = "wallpaperURL != nil";
    _NUAssertFailHandler();
    goto LABEL_24;
  }

  callStackSymbols = completionCopy;
  v30 = 0;
  self = [self _loadSegmentationItemFromWallpaperURL:lCopy error:&v30];
  v5 = v30;
  if (!self)
  {
    if (*MEMORY[0x1E69B3D78] == -1)
    {
LABEL_6:
      v13 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v32 = v5;
        _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "Failed to load segmentation item from wallpaper: %{public}@", buf, 0xCu);
      }

      v14 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to load segmentation item from wallpaper" object:lCopy underlyingError:{v5, v26}];
      (*(callStackSymbols + 16))(callStackSymbols, 0, v14);

      goto LABEL_9;
    }

LABEL_24:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
    goto LABEL_6;
  }

  if ([self isComplete])
  {
    (*(callStackSymbols + 16))(callStackSymbols, self, 0);
LABEL_9:
    v15 = 0;
    goto LABEL_13;
  }

  v16 = [[PISegmentationLoader alloc] initWithSegmentationItem:self parallaxAsset:specific];
  if (!specific)
  {
    resource = [self resource];
    -[PISegmentationLoader setLoadFirstResourceOnly:](v16, "setLoadFirstResourceOnly:", [resource isProxyOnly]);

    livePhotoResource = [self livePhotoResource];
    [(PISegmentationLoader *)v16 setDisableSettlingEffect:livePhotoResource == 0];
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __80__PISegmentationLoader_reloadSegmentationItemFromWallpaperURL_asset_completion___block_invoke;
  v27[3] = &unk_1E82AC908;
  v19 = v16;
  v28 = v19;
  v29 = callStackSymbols;
  [(PISegmentationLoader *)v19 loadSegmentationItemWithCompletion:v27];
  v20 = v29;
  v15 = v19;

LABEL_13:

  return v15;
}

+ (void)_renderPreviewLayerStackFromWallpaperURL:(id)l styleCategory:(id)category completion:(id)completion
{
  v35 = *MEMORY[0x1E69E9840];
  lCopy = l;
  categoryCopy = category;
  completionCopy = completion;
  if (!lCopy)
  {
    v14 = NUAssertLogger_24364();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "wallpaperURL != nil"];
      *buf = 138543362;
      v32 = v15;
      _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v16 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v18 = NUAssertLogger_24364();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v19)
      {
        v22 = dispatch_get_specific(*v16);
        v23 = MEMORY[0x1E696AF00];
        v24 = v22;
        callStackSymbols = [v23 callStackSymbols];
        v26 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v32 = v22;
        v33 = 2114;
        v34 = v26;
        _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v32 = v21;
      _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __90__PISegmentationLoader__renderPreviewLayerStackFromWallpaperURL_styleCategory_completion___block_invoke;
  v27[3] = &unk_1E82AC700;
  v29 = completionCopy;
  selfCopy = self;
  v28 = categoryCopy;
  v11 = completionCopy;
  v12 = categoryCopy;
  v13 = [self reloadSegmentationItemFromWallpaperURL:lCopy asset:0 completion:v27];
}

void __90__PISegmentationLoader__renderPreviewLayerStackFromWallpaperURL_styleCategory_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if (*(a1 + 32))
    {
      v7 = [v5 suggestedStyleForCategory:?];
    }

    else
    {
      v7 = 0;
    }

    if ([MEMORY[0x1E69C0938] deviceSupportsLandscapeConfiguration])
    {
      v9 = 136;
    }

    else
    {
      v9 = 8;
    }

    v10 = [v5 isSettlingEffectAvailable];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __90__PISegmentationLoader__renderPreviewLayerStackFromWallpaperURL_styleCategory_completion___block_invoke_2;
    v16[3] = &unk_1E82AC460;
    v11 = *(a1 + 48);
    v19 = *(a1 + 40);
    v17 = v7;
    v18 = v5;
    v12 = v7;
    BYTE2(v15) = 0;
    LOWORD(v15) = 0;
    LOBYTE(v14) = 0;
    v13 = [v11 generateLayerStackForItem:v18 style:v12 layout:0 ignoreOriginalLayout:0 options:v9 enableSettlingEffect:v10 enableSpatialPhoto:v14 allowedLayoutStrategies:3 shouldRecalculateLayoutProperties:v15 useLegacyHeadroom:v16 userAdjustedVisibleFrame:? completion:?];
  }

  else
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
    }

    v8 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = v6;
      _os_log_error_impl(&dword_1C7694000, v8, OS_LOG_TYPE_ERROR, "Failed to reload segmentation item from wallpaper: %{public}@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __90__PISegmentationLoader__renderPreviewLayerStackFromWallpaperURL_styleCategory_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(*(a1 + 48) + 16);
  }

  else
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
    }

    v8 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v6;
      _os_log_error_impl(&dword_1C7694000, v8, OS_LOG_TYPE_ERROR, "Failed to render layer stack: %{public}@", &v9, 0xCu);
    }

    v7 = *(*(a1 + 48) + 16);
  }

  v7();
}

+ (void)renderPreviewLayerStackFromWallpaperURL:(id)l styleCategory:(id)category completion:(id)completion
{
  v33 = *MEMORY[0x1E69E9840];
  lCopy = l;
  categoryCopy = category;
  completionCopy = completion;
  if (!lCopy)
  {
    v13 = NUAssertLogger_24364();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "wallpaperURL != nil"];
      *buf = 138543362;
      v30 = v14;
      _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v15 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v17 = NUAssertLogger_24364();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v18)
      {
        v21 = dispatch_get_specific(*v15);
        v22 = MEMORY[0x1E696AF00];
        v23 = v21;
        callStackSymbols = [v22 callStackSymbols];
        v25 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v30 = v21;
        v31 = 2114;
        v32 = v25;
        _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v30 = v20;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v11 = completionCopy;
  [self ensureResources];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __89__PISegmentationLoader_renderPreviewLayerStackFromWallpaperURL_styleCategory_completion___block_invoke;
  v26[3] = &unk_1E82AC438;
  v27 = v11;
  selfCopy = self;
  v12 = v11;
  [self _renderPreviewLayerStackFromWallpaperURL:lCopy styleCategory:categoryCopy completion:v26];
}

void __89__PISegmentationLoader_renderPreviewLayerStackFromWallpaperURL_styleCategory_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = *(a1 + 40);
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = a2;
  [v9 freeResources];
  (*(*(a1 + 32) + 16))();
}

+ (id)loadStyleFromWallpaperURL:(id)l error:(id *)specific
{
  v32 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (!lCopy)
  {
    v21 = NUAssertLogger_24364();
    v13 = "wallpaperURL != nil";
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "wallpaperURL != nil"];
      *buf = 138543362;
      v29 = v22;
      _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v8 = NUAssertLogger_24364();
    v23 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v23)
      {
        specific = dispatch_get_specific(*callStackSymbols);
        v24 = MEMORY[0x1E696AF00];
        v4 = specific;
        callStackSymbols = [v24 callStackSymbols];
        v5 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v29 = specific;
        v30 = 2114;
        v31 = v5;
        _os_log_error_impl(&dword_1C7694000, v8, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      specific = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [specific componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v8, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v25 = "wallpaperURL != nil";
    _NUAssertFailHandler();
LABEL_30:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
    goto LABEL_14;
  }

  v8 = lCopy;
  v9 = s_log_24360;
  v10 = v9;
  v11 = s_signpost_24361;
  if ((s_signpost_24361 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v11, "PISegmentationLoader.style.read", "", buf, 2u);
  }

  callStackSymbols = [v8 URLByAppendingPathComponent:@"style.plist"];
  v27 = 0;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:callStackSymbols error:&v27];
  v5 = v27;
  if (v4)
  {
    v26 = v5;
    v13 = [MEMORY[0x1E69C0788] styleWithDictionary:v4 error:&v26];
    v14 = v26;

    v5 = v14;
  }

  else
  {
    v13 = 0;
  }

  v15 = s_log_24360;
  v16 = v15;
  v17 = s_signpost_24361;
  if ((s_signpost_24361 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v16, OS_SIGNPOST_INTERVAL_END, v17, "PISegmentationLoader.style.read", "", buf, 2u);
  }

  if (v13)
  {
    v18 = v13;
    goto LABEL_17;
  }

  if (*MEMORY[0x1E69B3D78] != -1)
  {
    goto LABEL_30;
  }

LABEL_14:
  v19 = *MEMORY[0x1E69B3D80];
  if (!os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
  {
    if (!specific)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  *buf = 138543362;
  v29 = v5;
  _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Failed to load style from wallpaper: %{public}@", buf, 0xCu);
  if (specific)
  {
LABEL_16:
    *specific = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to load style from wallpaper" object:v8 underlyingError:{v5, v25}];
  }

LABEL_17:

  return v13;
}

+ (id)loadCompoundLayerStackFromWallpaperURL:(id)l options:(unint64_t)options error:(id *)specific
{
  v31 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (!lCopy)
  {
    v21 = NUAssertLogger_24364();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "wallpaperURL != nil"];
      *buf = 138543362;
      v28 = v22;
      _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v10 = NUAssertLogger_24364();
    v23 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v23)
      {
        specific = dispatch_get_specific(*callStackSymbols);
        v24 = MEMORY[0x1E696AF00];
        v5 = specific;
        callStackSymbols = [v24 callStackSymbols];
        v6 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v28 = specific;
        v29 = 2114;
        v30 = v6;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      specific = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [specific componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v25 = "wallpaperURL != nil";
    _NUAssertFailHandler();
LABEL_27:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
    goto LABEL_11;
  }

  v10 = lCopy;
  v11 = s_log_24360;
  v12 = v11;
  v13 = s_signpost_24361;
  if ((s_signpost_24361 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v13, "PISegmentationLoader.layerStack.read", "", buf, 2u);
  }

  v5 = [v10 URLByAppendingPathComponent:@"output.layerStack"];
  v26 = 0;
  callStackSymbols = [MEMORY[0x1E69C0780] loadCompoundLayerStackFromURL:v5 options:options error:&v26];
  v6 = v26;
  v15 = s_log_24360;
  v16 = v15;
  v17 = s_signpost_24361;
  if ((s_signpost_24361 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v16, OS_SIGNPOST_INTERVAL_END, v17, "PISegmentationLoader.layerStack.read", "", buf, 2u);
  }

  if (callStackSymbols)
  {
    v18 = callStackSymbols;
    goto LABEL_14;
  }

  if (*MEMORY[0x1E69B3D78] != -1)
  {
    goto LABEL_27;
  }

LABEL_11:
  v19 = *MEMORY[0x1E69B3D80];
  if (!os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
  {
    if (!specific)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  *buf = 138543362;
  v28 = v6;
  _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Failed to load layer stack from wallpaper: %{public}@", buf, 0xCu);
  if (specific)
  {
LABEL_13:
    *specific = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to load layer stack from wallpaper" object:v10 underlyingError:{v6, v25}];
  }

LABEL_14:

  return callStackSymbols;
}

+ (id)_loadSegmentationItemFromWallpaperURL:(id)l error:(id *)error
{
  v16 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v7 = [lCopy URLByAppendingPathComponent:@"input.segmentation"];
  v13 = 0;
  v8 = [self _loadSegmentationItemFromURL:v7 error:&v13];
  v9 = v13;
  if (v8)
  {
    v10 = v8;
    goto LABEL_8;
  }

  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
  }

  v11 = *MEMORY[0x1E69B3D80];
  if (!os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
  {
    if (!error)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  *buf = 138543362;
  v15 = v9;
  _os_log_error_impl(&dword_1C7694000, v11, OS_LOG_TYPE_ERROR, "Failed to load segmentation item from wallpaper: %{public}@", buf, 0xCu);
  if (error)
  {
LABEL_7:
    *error = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to load segmentation item from wallpaper" object:lCopy underlyingError:v9];
  }

LABEL_8:

  return v8;
}

+ (id)loadSegmentationItemFromWallpaperURL:(id)l error:(id *)error
{
  v29 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (!lCopy)
  {
    v12 = NUAssertLogger_24364();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "wallpaperURL != nil"];
      *buf = 138543362;
      v26 = v13;
      _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v14 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v16 = NUAssertLogger_24364();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v17)
      {
        v20 = dispatch_get_specific(*v14);
        v21 = MEMORY[0x1E696AF00];
        v22 = v20;
        callStackSymbols = [v21 callStackSymbols];
        v24 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v26 = v20;
        v27 = 2114;
        v28 = v24;
        _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v26 = v19;
      _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v7 = lCopy;
  v8 = [self _loadSegmentationItemFromWallpaperURL:lCopy error:error];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_7;
  }

  if ([v8 isComplete])
  {
    v10 = v9;
    goto LABEL_8;
  }

  if (error)
  {
    [MEMORY[0x1E69B3A48] invalidError:@"Segmentation item from wallpaper is incomplete" object:0];
    *error = v10 = 0;
  }

  else
  {
LABEL_7:
    v10 = 0;
  }

LABEL_8:

  return v10;
}

+ (id)effectiveLayoutForSegmentationItem:(id)item editConfiguration:(id)configuration layerStackOptions:(unint64_t)options
{
  optionsCopy = options;
  itemCopy = item;
  configurationCopy = configuration;
  if (configurationCopy)
  {
    originalLayout = [itemCopy originalLayout];
    if ((optionsCopy & 0x100) != 0 && [itemCopy isSpatialPhotoAvailable] && objc_msgSend(configurationCopy, "isSpatialPhotoEnabled"))
    {
      spatialPhotoLayout = [itemCopy spatialPhotoLayout];

      originalLayout = spatialPhotoLayout;
    }

    [configurationCopy normalizedVisibleFrame];
    if (!CGRectIsNull(v51))
    {
      [configurationCopy normalizedVisibleFrame];
      NURectFlipYOrigin();
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      [configurationCopy normalizedLandscapeVisibleFrame];
      NURectFlipYOrigin();
      v23 = [originalLayout layoutByUpdatingNormalizedPortraitVisibleFrame:v12 landscapeVisibleFrame:{v14, v16, v18, v19, v20, v21, v22}];

      [configurationCopy normalizedAdaptiveVisibleFrame];
      NURectFlipYOrigin();
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v31 = v30;
      [configurationCopy normalizedLandscapeAdaptiveVisibleFrame];
      NURectFlipYOrigin();
      v36 = [v23 layoutByUpdatingNormalizedPortraitAdaptiveVisibleFrame:v25 landscapeAdaptiveVisibleFrame:{v27, v29, v31, v32, v33, v34, v35}];

      [configurationCopy normalizedAdaptiveTimeFrame];
      NURectFlipYOrigin();
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v44 = v43;
      [configurationCopy normalizedLandscapeAdaptiveTimeFrame];
      NURectFlipYOrigin();
      originalLayout = [v36 layoutByUpdatingNormalizedPortraitAdaptiveTimeFrame:v38 landscapeAdaptiveTimeFrame:{v40, v42, v44, v45, v46, v47, v48}];
    }
  }

  else
  {
    originalLayout = 0;
  }

  return originalLayout;
}

+ (BOOL)saveSegmentationItem:(id)item compoundLayerStack:(id)stack style:(id)style toWallpaperURL:(id)l error:(id *)error
{
  v71 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  stackCopy = stack;
  styleCopy = style;
  lCopy = l;
  if (!lCopy)
  {
    v51 = NUAssertLogger_24364();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "wallpaperURL != nil"];
      *buf = 138543362;
      v68 = v52;
      _os_log_error_impl(&dword_1C7694000, v51, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v53 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    itemCopy = NUAssertLogger_24364();
    v54 = os_log_type_enabled(itemCopy, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v54)
      {
        specific = dispatch_get_specific(*v53);
        v56 = MEMORY[0x1E696AF00];
        style = specific;
        callStackSymbols = [v56 callStackSymbols];
        defaultManager = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v68 = specific;
        v69 = 2114;
        v70 = defaultManager;
        _os_log_error_impl(&dword_1C7694000, itemCopy, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v54)
    {
      specific = [MEMORY[0x1E696AF00] callStackSymbols];
      v55 = [specific componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v68 = v55;
      _os_log_error_impl(&dword_1C7694000, itemCopy, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v58 = "wallpaperURL != nil";
    _NUAssertFailHandler();
LABEL_68:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
LABEL_28:
    v42 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v68 = specific;
      _os_log_error_impl(&dword_1C7694000, v42, OS_LOG_TYPE_ERROR, "Failed to create wallpaper directory: %{public}@", buf, 0xCu);
      if (!error)
      {
        goto LABEL_43;
      }
    }

    else if (!error)
    {
LABEL_43:
      v41 = 0;
      goto LABEL_51;
    }

    [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to create wallpaper directory" object:style underlyingError:{specific, v58}];
    *error = v41 = 0;
    goto LABEL_51;
  }

  style = lCopy;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [style path];
  v17 = [defaultManager fileExistsAtPath:path];

  if (v17)
  {
    errorCopy2 = error;
    v18 = 0;
    if (!itemCopy)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v66 = 0;
  v19 = [defaultManager createDirectoryAtURL:style withIntermediateDirectories:0 attributes:0 error:&v66];
  v20 = v66;
  specific = v20;
  if ((v19 & 1) == 0)
  {
    if (*MEMORY[0x1E69B3D78] == -1)
    {
      goto LABEL_28;
    }

    goto LABEL_68;
  }

  errorCopy2 = error;
  v18 = v20;
  if (!itemCopy)
  {
    goto LABEL_9;
  }

LABEL_7:
  v22 = [style URLByAppendingPathComponent:@"input.segmentation"];
  v65 = v18;
  v23 = [PISegmentationLoader saveSegmentationItem:itemCopy toURL:v22 error:&v65];
  specific = v65;

  if (!v23)
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
    }

    v43 = errorCopy2;
    v44 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v68 = specific;
      _os_log_error_impl(&dword_1C7694000, v44, OS_LOG_TYPE_ERROR, "Failed to export segmentation item: %{public}@", buf, 0xCu);
      if (!errorCopy2)
      {
        goto LABEL_42;
      }
    }

    else if (!errorCopy2)
    {
      goto LABEL_42;
    }

    v45 = MEMORY[0x1E69B3A48];
    v46 = @"Failed to export segmentation item";
    v47 = itemCopy;
LABEL_41:
    *v43 = [v45 errorWithCode:1 reason:v46 object:v47 underlyingError:specific];
    goto LABEL_42;
  }

  v18 = specific;
LABEL_9:
  v61 = styleCopy;
  if (!stackCopy)
  {
    goto LABEL_18;
  }

  v24 = s_log_24360;
  v25 = v24;
  v26 = s_signpost_24361;
  if ((s_signpost_24361 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v26, "PISegmentationLoader.layerStack.write", "", buf, 2u);
  }

  v22 = [style URLByAppendingPathComponent:@"output.layerStack"];
  v64 = v18;
  v27 = stackCopy;
  v28 = [MEMORY[0x1E69C0780] saveCompoundLayerStack:stackCopy toURL:v22 options:0xFFFFLL error:&v64];
  specific = v64;

  v29 = s_log_24360;
  v30 = v29;
  v31 = s_signpost_24361;
  if ((s_signpost_24361 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v30, OS_SIGNPOST_INTERVAL_END, v31, "PISegmentationLoader.layerStack.write", "", buf, 2u);
  }

  if ((v28 & 1) == 0)
  {
    styleCopy = v61;
    v43 = errorCopy2;
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
    }

    stackCopy = v27;
    v48 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v68 = specific;
      _os_log_error_impl(&dword_1C7694000, v48, OS_LOG_TYPE_ERROR, "Failed to export layer stack: %{public}@", buf, 0xCu);
      if (!errorCopy2)
      {
        goto LABEL_42;
      }

      goto LABEL_40;
    }

    if (errorCopy2)
    {
LABEL_40:
      v45 = MEMORY[0x1E69B3A48];
      v46 = @"Failed to export layer stack";
      v47 = stackCopy;
      goto LABEL_41;
    }

LABEL_42:

    goto LABEL_43;
  }

  v18 = specific;
  stackCopy = v27;
  styleCopy = v61;
LABEL_18:
  if (!styleCopy)
  {
    v41 = 1;
    specific = v18;
    goto LABEL_51;
  }

  v60 = stackCopy;
  v32 = s_log_24360;
  v33 = v32;
  v34 = s_signpost_24361;
  if ((s_signpost_24361 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v33, OS_SIGNPOST_INTERVAL_BEGIN, v34, "PISegmentationLoader.style.write", "", buf, 2u);
  }

  v35 = [style URLByAppendingPathComponent:@"style.plist"];
  v36 = [MEMORY[0x1E69C0788] dictionaryWithStyle:styleCopy];
  v63 = v18;
  v59 = v35;
  v37 = [v36 writeToURL:v35 error:&v63];
  specific = v63;

  v38 = s_log_24360;
  v39 = v38;
  v40 = s_signpost_24361;
  if ((s_signpost_24361 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v39, OS_SIGNPOST_INTERVAL_END, v40, "PISegmentationLoader.style.write", "", buf, 2u);
  }

  if ((v37 & 1) == 0)
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
    }

    v49 = *MEMORY[0x1E69B3D80];
    styleCopy = v61;
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v68 = specific;
      _os_log_error_impl(&dword_1C7694000, v49, OS_LOG_TYPE_ERROR, "Failed to export style: %{public}@", buf, 0xCu);
      if (!errorCopy2)
      {
        goto LABEL_50;
      }
    }

    else if (!errorCopy2)
    {
LABEL_50:

      v41 = 0;
      stackCopy = v60;
      goto LABEL_51;
    }

    *errorCopy2 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to export style" object:v61 underlyingError:specific];
    goto LABEL_50;
  }

  v41 = 1;
  stackCopy = v60;
  styleCopy = v61;
LABEL_51:

  return v41;
}

+ (void)_saveSegmentationItem:(id)item compoundLayerStack:(id)stack style:(id)style toWallpaperURL:(id)l completion:(id)completion
{
  v31 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  stackCopy = stack;
  styleCopy = style;
  lCopy = l;
  completionCopy = completion;
  v17 = s_log_24360;
  v18 = v17;
  v19 = s_signpost_24361;
  if ((s_signpost_24361 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v19, "PISegmentationLoader.wallpaper.write", "", buf, 2u);
  }

  v28 = 0;
  v20 = [self saveSegmentationItem:itemCopy compoundLayerStack:stackCopy style:styleCopy toWallpaperURL:lCopy error:&v28];
  v21 = v28;
  v22 = s_log_24360;
  v23 = v22;
  v24 = s_signpost_24361;
  if ((s_signpost_24361 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v23, OS_SIGNPOST_INTERVAL_END, v24, "PISegmentationLoader.wallpaper.write", "", buf, 2u);
  }

  if (v20)
  {
    v25 = 0;
  }

  else
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
    }

    v26 = *MEMORY[0x1E69B3D80];
    v27 = os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR);
    v25 = v21;
    if (v27)
    {
      *buf = 138543362;
      v30 = v21;
      _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "Failed to save segmentation item and layer stack to wallpaper URL: %{public}@", buf, 0xCu);
      v25 = v21;
    }
  }

  (completionCopy)[2](completionCopy, v25);
}

+ (id)generateLayerStackForItem:(id)item style:(id)style layout:(id)layout ignoreOriginalLayout:(BOOL)originalLayout options:(unint64_t)options enableSettlingEffect:(BOOL)effect enableSpatialPhoto:(BOOL)photo allowedLayoutStrategies:(unint64_t)self0 shouldRecalculateLayoutProperties:(BOOL)self1 useLegacyHeadroom:(BOOL)self2 userAdjustedVisibleFrame:(BOOL)self3 completion:(id)self4
{
  effectCopy = effect;
  originalLayoutCopy = originalLayout;
  v57 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  styleCopy = style;
  layoutCopy = layout;
  completionCopy = completion;
  if (!itemCopy)
  {
    v36 = NUAssertLogger_24364();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "item != nil"];
      *buf = 138543362;
      v54 = v37;
      _os_log_error_impl(&dword_1C7694000, v36, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v38 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v40 = NUAssertLogger_24364();
    v41 = os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v41)
      {
        v44 = dispatch_get_specific(*v38);
        v45 = MEMORY[0x1E696AF00];
        v46 = v44;
        callStackSymbols = [v45 callStackSymbols];
        v48 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v54 = v44;
        v55 = 2114;
        v56 = v48;
        _os_log_error_impl(&dword_1C7694000, v40, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v41)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v43 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v54 = v43;
      _os_log_error_impl(&dword_1C7694000, v40, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v22 = completionCopy;
  if (!options)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
    v23 = 0;
    goto LABEL_20;
  }

  v49 = completionCopy;
  v23 = [[PIParallaxCompoundLayerStackRequest alloc] initWithSegmentationItem:itemCopy];
  [(PIParallaxCompoundLayerStackRequest *)v23 setSettlingEffectEnabled:effectCopy];
  [(PIParallaxCompoundLayerStackRequest *)v23 setSpatialPhotoEnabled:photo];
  [(PIParallaxCompoundLayerStackRequest *)v23 setForegroundLayerEnabled:(options & 0x200) == 0];
  [(PIParallaxCompoundLayerStackRequest *)v23 setAllowedLayoutStrategies:strategies];
  [(PIParallaxCompoundLayerStackRequest *)v23 setShouldRecalculateLayoutProperties:properties];
  [(PIParallaxCompoundLayerStackRequest *)v23 setUserAdjustedVisibleFrame:frame];
  [(PIParallaxCompoundLayerStackRequest *)v23 setUseLegacyHeadroom:headroom];
  if (styleCopy)
  {
    v24 = [PIParallaxStyle styleWithBakedStyle:styleCopy];
    [(PIParallaxCompoundLayerStackRequest *)v23 setStyle:v24];
  }

  else
  {
    [(PIParallaxCompoundLayerStackRequest *)v23 setStyle:0];
  }

  if (!layoutCopy)
  {
    [(PIParallaxCompoundLayerStackRequest *)v23 setUpdateInactiveFrame:1];
    goto LABEL_16;
  }

  [(PIParallaxCompoundLayerStackRequest *)v23 setLayout:layoutCopy];
  supportsBothOrientations = [layoutCopy supportsBothOrientations];
  portraitLayout = [layoutCopy portraitLayout];
  [portraitLayout inactiveFrame];
  IsNull = CGRectIsNull(v59);
  v28 = IsNull;
  if (supportsBothOrientations)
  {
    if (!IsNull)
    {
      landscapeLayout = [layoutCopy landscapeLayout];
      [landscapeLayout inactiveFrame];
      [(PIParallaxCompoundLayerStackRequest *)v23 setUpdateInactiveFrame:CGRectIsNull(v60)];

      goto LABEL_15;
    }

    v29 = v23;
    v28 = 1;
  }

  else
  {
    v29 = v23;
  }

  [(PIParallaxCompoundLayerStackRequest *)v29 setUpdateInactiveFrame:v28];
LABEL_15:

LABEL_16:
  [(PIParallaxCompoundLayerStackRequest *)v23 setUpdateClockAreaLuminance:1];
  [(PIParallaxCompoundLayerStackRequest *)v23 setUpdateClockZPosition:1];
  [(PIParallaxCompoundLayerStackRequest *)v23 setLayerStackOptions:options];
  [(PIParallaxCompoundLayerStackRequest *)v23 setIgnoreOriginalLayout:originalLayoutCopy];
  v31 = [objc_alloc(MEMORY[0x1E69B3C00]) initWithLevel:1];
  [(NURenderRequest *)v23 setPriority:v31];

  v32 = s_log_24360;
  v33 = v32;
  v34 = s_signpost_24361;
  if ((s_signpost_24361 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v33, OS_SIGNPOST_INTERVAL_BEGIN, v34, "PISegmentationLoader.layerStack.render", "", buf, 2u);
  }

  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __244__PISegmentationLoader_generateLayerStackForItem_style_layout_ignoreOriginalLayout_options_enableSettlingEffect_enableSpatialPhoto_allowedLayoutStrategies_shouldRecalculateLayoutProperties_useLegacyHeadroom_userAdjustedVisibleFrame_completion___block_invoke;
  v51[3] = &unk_1E82ACA08;
  v22 = v49;
  v52 = v49;
  [(PIParallaxCompoundLayerStackRequest *)v23 submit:v51];

LABEL_20:

  return v23;
}

void __244__PISegmentationLoader_generateLayerStackForItem_style_layout_ignoreOriginalLayout_options_enableSettlingEffect_enableSpatialPhoto_allowedLayoutStrategies_shouldRecalculateLayoutProperties_useLegacyHeadroom_userAdjustedVisibleFrame_completion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v3 = [a2 result:&v11];
  v4 = v11;
  v5 = s_log_24360;
  v6 = v5;
  v7 = s_signpost_24361;
  if ((s_signpost_24361 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v6, OS_SIGNPOST_INTERVAL_END, v7, "PISegmentationLoader.layerStack.render", "", buf, 2u);
  }

  if (v3)
  {
    v8 = *(a1 + 32);
    v9 = [v3 compoundLayerStack];
    (*(v8 + 16))(v8, v9, 0);
  }

  else
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
    }

    v10 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v13 = v4;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Failed to render layer stack: %{public}@", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }
}

+ (id)saveSegmentationItem:(id)item layerStackOptions:(unint64_t)options configuration:(id)configuration style:(id)style layout:(id)layout allowedLayoutStrategies:(unint64_t)strategies shouldRecalculateLayoutProperties:(BOOL)properties shouldKeepSpecifiedStyle:(BOOL)self0 toWallpaperURL:(id)self1 completion:(id)self2
{
  v80 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  configurationCopy = configuration;
  styleCopy = style;
  layoutCopy = layout;
  lCopy = l;
  completionCopy = completion;
  if (!itemCopy)
  {
    v37 = NUAssertLogger_24364();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "item != nil"];
      *buf = 138543362;
      v77 = v38;
      _os_log_error_impl(&dword_1C7694000, v37, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v41 = NUAssertLogger_24364();
    v42 = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v42)
      {
        v50 = dispatch_get_specific(*callStackSymbols);
        v51 = MEMORY[0x1E696AF00];
        v52 = v50;
        callStackSymbols = [v51 callStackSymbols];
        v53 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v77 = v50;
        v78 = 2114;
        v79 = v53;
        _os_log_error_impl(&dword_1C7694000, v41, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v42)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v77 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v41, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v47 = _NUAssertFailHandler();
    goto LABEL_40;
  }

  if (!lCopy)
  {
    v44 = NUAssertLogger_24364();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "wallpaperURL != nil"];
      *buf = 138543362;
      v77 = v45;
      _os_log_error_impl(&dword_1C7694000, v44, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v46 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v41 = NUAssertLogger_24364();
    v47 = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);
    if (!v46)
    {
      if (v47)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v49 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v77 = v49;
        _os_log_error_impl(&dword_1C7694000, v41, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v47)
    {
      v54 = dispatch_get_specific(*callStackSymbols);
      v55 = MEMORY[0x1E696AF00];
      v56 = v54;
      callStackSymbols4 = [v55 callStackSymbols];
      v58 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v77 = v54;
      v78 = 2114;
      v79 = v58;
      _os_log_error_impl(&dword_1C7694000, v41, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_42:

    _NUAssertFailHandler();
  }

  v62 = completionCopy;
  if ((options & 0x100) != 0)
  {
    isSpatialPhotoAvailable = [itemCopy isSpatialPhotoAvailable];
    v23 = configurationCopy != 0;
    isSpatialPhotoEnabled = (configurationCopy == 0) & isSpatialPhotoAvailable;
    if (configurationCopy && (isSpatialPhotoAvailable & 1) != 0)
    {
      isSpatialPhotoEnabled = [configurationCopy isSpatialPhotoEnabled];
      v23 = 1;
    }
  }

  else
  {
    isSpatialPhotoEnabled = 0;
    v23 = configurationCopy != 0;
  }

  v64 = isSpatialPhotoEnabled;
  if (!layoutCopy && v23)
  {
    [configurationCopy normalizedVisibleFrame];
    if (CGRectIsNull(v82))
    {
      layoutCopy = 0;
    }

    else
    {
      layoutCopy = [self effectiveLayoutForSegmentationItem:itemCopy editConfiguration:configurationCopy layerStackOptions:options];
    }
  }

  v66 = styleCopy;
  if (styleCopy)
  {
    style = styleCopy;
  }

  else
  {
    style = [configurationCopy style];
  }

  v26 = style;
  if (style && !specifiedStyle)
  {
    v27 = [itemCopy adjustedStyleForHeadroom:style];

    v26 = v27;
  }

  optionsCopy = options;
  if ((options & 0x40) != 0)
  {
    isSettlingEffectAvailable = [itemCopy isSettlingEffectAvailable];
    if (!v23)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  isSettlingEffectAvailable = 0;
  if (v23)
  {
LABEL_23:
    isSettlingEffectAvailable = isSettlingEffectAvailable & [configurationCopy isSettlingEffectEnabled];
  }

LABEL_24:
  v61 = (configurationCopy | layoutCopy) == 0;
  userAdjustedVisibleFrame = [configurationCopy userAdjustedVisibleFrame];
  preserveLegacyHeadroom = [configurationCopy preserveLegacyHeadroom];
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __199__PISegmentationLoader_saveSegmentationItem_layerStackOptions_configuration_style_layout_allowedLayoutStrategies_shouldRecalculateLayoutProperties_shouldKeepSpecifiedStyle_toWallpaperURL_completion___block_invoke;
  v69[3] = &unk_1E82AC410;
  v70 = configurationCopy;
  v71 = itemCopy;
  v72 = v26;
  v73 = lCopy;
  v74 = v62;
  selfCopy = self;
  v63 = v62;
  v31 = lCopy;
  v32 = v26;
  v33 = itemCopy;
  v34 = configurationCopy;
  BYTE2(v60) = userAdjustedVisibleFrame;
  BYTE1(v60) = preserveLegacyHeadroom;
  LOBYTE(v60) = properties;
  LOBYTE(v59) = v64;
  v35 = [self generateLayerStackForItem:v33 style:v32 layout:layoutCopy ignoreOriginalLayout:v61 options:optionsCopy enableSettlingEffect:isSettlingEffectAvailable enableSpatialPhoto:v59 allowedLayoutStrategies:strategies shouldRecalculateLayoutProperties:v60 useLegacyHeadroom:v69 userAdjustedVisibleFrame:? completion:?];

  return v35;
}

void __199__PISegmentationLoader_saveSegmentationItem_layerStackOptions_configuration_style_layout_allowedLayoutStrategies_shouldRecalculateLayoutProperties_shouldKeepSpecifiedStyle_toWallpaperURL_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = [v9 compoundLayerStackByUpdatingPortraitDepthEnabled:objc_msgSend(v6 landscapeDepthEnabled:{"isDepthEnabled"), objc_msgSend(*(a1 + 32), "isLandscapeDepthEnabled")}];

      v8 = v7;
    }

    else
    {
      v8 = v9;
    }

    v9 = v8;
    [*(a1 + 72) _saveSegmentationItem:*(a1 + 40) compoundLayerStack:v8 style:*(a1 + 48) toWallpaperURL:*(a1 + 56) completion:*(a1 + 64)];
  }
}

+ (id)_loadSegmentationItemFromURL:(id)l error:(id *)error
{
  lCopy = l;
  v7 = objc_alloc_init(PIParallaxSegmentationItem);
  v8 = s_log_24360;
  v9 = v8;
  v10 = s_signpost_24361;
  if ((s_signpost_24361 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PISegmentationLoader.archive.read", "", buf, 2u);
  }

  v36 = 0;
  v11 = [(PIParallaxSegmentationItem *)v7 loadFromURL:lCopy error:&v36];

  v12 = v36;
  resource = [(PIParallaxSegmentationItem *)v7 resource];

  if (resource)
  {
    resource2 = [(PIParallaxSegmentationItem *)v7 resource];
    v15 = [self segmentationCompositionForAssetResource:resource2];
    [(PIParallaxSegmentationItem *)v7 setComposition:v15];

    settlingEffectVideoData = [(PIParallaxSegmentationItem *)v7 settlingEffectVideoData];

    if (settlingEffectVideoData)
    {
      settlingEffectVideoData2 = [(PIParallaxSegmentationItem *)v7 settlingEffectVideoData];
      [(PIParallaxSegmentationItem *)v7 settlingEffectNormalizedBounds];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
      composition = [(PIParallaxSegmentationItem *)v7 composition];
      v27 = [self livePhotoCompositionForVideoData:settlingEffectVideoData2 cropRect:composition photoComposition:{v19, v21, v23, v25}];
      [(PIParallaxSegmentationItem *)v7 setComposition:v27];
    }
  }

  v28 = s_log_24360;
  v29 = v28;
  v30 = s_signpost_24361;
  if ((s_signpost_24361 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
  {
    *v35 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v29, OS_SIGNPOST_INTERVAL_BEGIN, v30, "PISegmentationLoader.archive.read", "", v35, 2u);
  }

  if (error)
  {
    v31 = v11;
  }

  else
  {
    v31 = 1;
  }

  if (v31)
  {
    v32 = v7;
  }

  else
  {
    v33 = v12;
    v32 = 0;
    *error = v12;
  }

  return v32;
}

+ (id)loadSegmentationItemFromURL:(id)l error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (!lCopy)
  {
    v11 = NUAssertLogger_24364();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "fileURL != nil"];
      *buf = 138543362;
      v25 = v12;
      _os_log_error_impl(&dword_1C7694000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v13 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v15 = NUAssertLogger_24364();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v19 = dispatch_get_specific(*v13);
        v20 = MEMORY[0x1E696AF00];
        v21 = v19;
        callStackSymbols = [v20 callStackSymbols];
        v23 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v19;
        v26 = 2114;
        v27 = v23;
        _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v18;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v7 = lCopy;
  v8 = [self _loadSegmentationItemFromURL:lCopy error:error];
  if ([v8 isComplete])
  {
    v9 = v8;
  }

  else if (error)
  {
    [MEMORY[0x1E69B3A48] invalidError:@"Segmentation item is incomplete" object:v7];
    *error = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)saveSegmentationItem:(id)item toURL:(id)l error:(id *)error
{
  v53 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  lCopy = l;
  if (!itemCopy)
  {
    v22 = NUAssertLogger_24364();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "item != nil"];
      *buf = 138543362;
      v50 = v23;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v26 = NUAssertLogger_24364();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v27)
      {
        specific = dispatch_get_specific(*callStackSymbols);
        v38 = MEMORY[0x1E696AF00];
        v5 = specific;
        callStackSymbols = [v38 callStackSymbols];
        v39 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v50 = specific;
        v51 = 2114;
        v52 = v39;
        _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v27)
    {
      specific = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [specific componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v50 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v30 = _NUAssertFailHandler();
    goto LABEL_34;
  }

  v10 = lCopy;
  if (!lCopy)
  {
    v28 = NUAssertLogger_24364();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "fileURL != nil"];
      *buf = 138543362;
      v50 = v29;
      _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v26 = NUAssertLogger_24364();
    v30 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (!specific)
    {
      if (v30)
      {
        specific = [MEMORY[0x1E696AF00] callStackSymbols];
        v31 = [specific componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v50 = v31;
        _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_36:

      v35 = _NUAssertFailHandler();
      goto LABEL_37;
    }

LABEL_34:
    if (v30)
    {
      specific = dispatch_get_specific(*callStackSymbols);
      v40 = MEMORY[0x1E696AF00];
      v5 = specific;
      callStackSymbols2 = [v40 callStackSymbols];
      v42 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v50 = specific;
      v51 = 2114;
      v52 = v42;
      _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_36;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v32 = NUAssertLogger_24364();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      itemCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid segmentation item: %@", itemCopy];
      *buf = 138543362;
      v50 = itemCopy;
      _os_log_error_impl(&dword_1C7694000, v32, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v5 = MEMORY[0x1E69B38E8];
    v34 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    specific = NUAssertLogger_24364();
    v35 = os_log_type_enabled(specific, OS_LOG_TYPE_ERROR);
    if (!v34)
    {
      if (v35)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v37 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v50 = v37;
        _os_log_error_impl(&dword_1C7694000, specific, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_39;
    }

LABEL_37:
    if (v35)
    {
      v43 = dispatch_get_specific(*v5);
      v44 = MEMORY[0x1E696AF00];
      v45 = v43;
      callStackSymbols4 = [v44 callStackSymbols];
      v47 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v50 = v43;
      v51 = 2114;
      v52 = v47;
      _os_log_error_impl(&dword_1C7694000, specific, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_39:

    _NUAssertFailHandler();
  }

  v11 = s_log_24360;
  v12 = v11;
  v13 = s_signpost_24361;
  if ((s_signpost_24361 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v13, "PISegmentationLoader.archive.write", "", buf, 2u);
  }

  v48 = 0;
  v14 = [itemCopy saveToURL:v10 error:&v48];
  v15 = v48;
  v16 = s_log_24360;
  v17 = v16;
  v18 = s_signpost_24361;
  if ((s_signpost_24361 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v17, OS_SIGNPOST_INTERVAL_END, v18, "PISegmentationLoader.archive.write", "", buf, 2u);
  }

  if (error)
  {
    v19 = v14;
  }

  else
  {
    v19 = 1;
  }

  if ((v19 & 1) == 0)
  {
    v20 = v15;
    *error = v15;
  }

  return v14;
}

+ (id)segmentationSourceForImageURL:(id)l fileUTI:(id)i orientation:(int64_t)orientation proxyImage:(CGImage *)image
{
  v31 = *MEMORY[0x1E69E9840];
  lCopy = l;
  iCopy = i;
  if (!lCopy)
  {
    v14 = NUAssertLogger_24364();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "imageURL != nil"];
      *buf = 138543362;
      v28 = v15;
      _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v16 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v18 = NUAssertLogger_24364();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v19)
      {
        v22 = dispatch_get_specific(*v16);
        v23 = MEMORY[0x1E696AF00];
        v24 = v22;
        callStackSymbols = [v23 callStackSymbols];
        v26 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v28 = v22;
        v29 = 2114;
        v30 = v26;
        _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v21;
      _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v10 = iCopy;
  if (image)
  {
    v11 = [MEMORY[0x1E695F658] imageWithCGImage:image];
    v12 = [PIPhotoEditHelper imageSourceWithURL:lCopy type:v10 proxyImage:v11 orientation:1 useEmbeddedPreview:1];
  }

  else
  {
    v12 = [PIPhotoEditHelper imageSourceWithURL:lCopy type:iCopy useEmbeddedPreview:0];
  }

  return v12;
}

+ (id)segmentationCompositionForImageURL:(id)l fileUTI:(id)i orientation:(int64_t)orientation proxyImage:(CGImage *)image
{
  v35 = *MEMORY[0x1E69E9840];
  lCopy = l;
  iCopy = i;
  if (!lCopy)
  {
    v25 = NUAssertLogger_24364();
    v16 = "imageURL != nil";
    v14 = &qword_1C7845000;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "imageURL != nil"];
      *buf = 138543362;
      v32 = v26;
      _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    lCopy = NUAssertLogger_24364();
    v27 = os_log_type_enabled(lCopy, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v27)
      {
        specific = dispatch_get_specific(*callStackSymbols);
        v28 = MEMORY[0x1E696AF00];
        v14 = specific;
        callStackSymbols = [v28 callStackSymbols];
        orientation = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v32 = specific;
        v33 = 2114;
        orientationCopy = orientation;
        _os_log_error_impl(&dword_1C7694000, lCopy, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v27)
    {
      specific = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [specific componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v32 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, lCopy, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
LABEL_19:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
    goto LABEL_5;
  }

  specific = iCopy;
  v14 = +[PIPhotoEditHelper newComposition];
  callStackSymbols = [self segmentationSourceForImageURL:lCopy fileUTI:specific orientation:orientation proxyImage:image];
  [v14 setObject:callStackSymbols forKeyedSubscript:@"source"];
  [v14 setMediaType:1];
  orientation = [objc_alloc(MEMORY[0x1E69B3B30]) initWithComposition:v14];
  v30 = 0;
  v16 = [orientation submitSynchronous:&v30];
  v6 = v30;
  if (v16)
  {
    properties = [v16 properties];
    orientation = [properties orientation];

    goto LABEL_8;
  }

  if (*MEMORY[0x1E69B3D78] != -1)
  {
    goto LABEL_19;
  }

LABEL_5:
  v19 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
  {
    v23 = v19;
    path = [lCopy path];
    *buf = 138412546;
    v32 = path;
    v33 = 2114;
    orientationCopy = v6;
    _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "Failed to read orientation for image file: %@, error: %{public}@", buf, 0x16u);
  }

  orientation = 1;
LABEL_8:
  v20 = [[PICompositionController alloc] initWithComposition:v14];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __90__PISegmentationLoader_segmentationCompositionForImageURL_fileUTI_orientation_proxyImage___block_invoke;
  v29[3] = &__block_descriptor_40_e43_v16__0__PIOrientationAdjustmentController_8l;
  v29[4] = orientation;
  [(PICompositionController *)v20 modifyAdjustmentWithKey:@"orientation" modificationBlock:v29];
  composition = [(PICompositionController *)v20 composition];

  return composition;
}

+ (id)livePhotoCompositionForVideoData:(id)data cropRect:(CGRect)rect photoComposition:(id)composition
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v58 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  compositionCopy = composition;
  if (!dataCopy)
  {
    v20 = NUAssertLogger_24364();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "videoData != nil"];
      *buf = 138543362;
      v55 = v21;
      _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v24 = NUAssertLogger_24364();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v25)
      {
        v38 = dispatch_get_specific(*callStackSymbols);
        v39 = MEMORY[0x1E696AF00];
        v40 = v38;
        callStackSymbols = [v39 callStackSymbols];
        v41 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v55 = v38;
        v56 = 2114;
        v57 = v41;
        _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v25)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v55 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v30 = _NUAssertFailHandler();
    goto LABEL_25;
  }

  v12 = compositionCopy;
  if (!compositionCopy)
  {
    v27 = NUAssertLogger_24364();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "composition != nil"];
      *buf = 138543362;
      v55 = v28;
      _os_log_error_impl(&dword_1C7694000, v27, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v29 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v24 = NUAssertLogger_24364();
    v30 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (!v29)
    {
      if (v30)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        callStackSymbols = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v55 = callStackSymbols;
        _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_27:

      v35 = _NUAssertFailHandler();
      goto LABEL_28;
    }

LABEL_25:
    if (v30)
    {
      v42 = dispatch_get_specific(*callStackSymbols);
      v43 = MEMORY[0x1E696AF00];
      v44 = v42;
      callStackSymbols = [v43 callStackSymbols];
      v45 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v55 = v42;
      v56 = 2114;
      v57 = v45;
      _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_27;
  }

  if ([compositionCopy mediaType] != 1)
  {
    v32 = NUAssertLogger_24364();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "composition.mediaType == NUMediaTypeImage"];
      *buf = 138543362;
      v55 = v33;
      _os_log_error_impl(&dword_1C7694000, v32, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v34 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v24 = NUAssertLogger_24364();
    v35 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (!v34)
    {
      if (v35)
      {
        callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
        v37 = [callStackSymbols4 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v55 = v37;
        _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_30;
    }

LABEL_28:
    if (v35)
    {
      v46 = dispatch_get_specific(*callStackSymbols);
      v47 = MEMORY[0x1E696AF00];
      v48 = v46;
      callStackSymbols5 = [v47 callStackSymbols];
      v50 = [callStackSymbols5 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v55 = v46;
      v56 = 2114;
      v57 = v50;
      _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_30:

    _NUAssertFailHandler();
  }

  v13 = [PIPhotoEditHelper videoSourceWithVideoData:dataCopy orientation:1];
  v52 = @"appliedCropRect";
  *v51 = x;
  *&v51[1] = y;
  *&v51[2] = width;
  *&v51[3] = height;
  v14 = [MEMORY[0x1E696B098] valueWithBytes:v51 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  v53 = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
  definition = [v13 definition];
  [definition setSourceOptions:v15];

  v17 = [v12 objectForKeyedSubscript:@"source"];
  v18 = [PIPhotoEditHelper livePhotoSourceWithPhotoSource:v17 videoSource:v13];
  [v12 setObject:v18 forKeyedSubscript:@"source"];
  [v12 setMediaType:3];

  return v12;
}

+ (id)segmentationCompositionForProxyImage:(CGImage *)image orientation:(int64_t)orientation
{
  v31 = *MEMORY[0x1E69E9840];
  if (!image)
  {
    v12 = NUAssertLogger_24364();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "proxyImage != NULL"];
      *buf = 138543362;
      v28 = v13;
      _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v14 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v16 = NUAssertLogger_24364();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v17)
      {
        v20 = dispatch_get_specific(*v14);
        v21 = MEMORY[0x1E696AF00];
        v22 = v20;
        callStackSymbols = [v21 callStackSymbols];
        v24 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v28 = v20;
        v29 = 2114;
        v30 = v24;
        _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v19;
      _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v6 = +[PIPhotoEditHelper newComposition];
  v7 = MEMORY[0x1E695F658];
  v25 = *MEMORY[0x1E695F998];
  v26 = MEMORY[0x1E695E110];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  v9 = [v7 imageWithCGImage:image options:v8];

  v10 = [PIPhotoEditHelper imageSourceWithCIImage:v9 orientation:orientation];
  [v6 setObject:v10 forKeyedSubscript:@"source"];
  [v6 setMediaType:1];

  return v6;
}

+ (id)segmentationCompositionForAssetResource:(id)resource
{
  v46 = *MEMORY[0x1E69E9840];
  resourceCopy = resource;
  if (!resourceCopy)
  {
    v26 = NUAssertLogger_24364();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "resource != nil"];
      *buf = 138543362;
      v43 = v27;
      _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v5 = NUAssertLogger_24364();
    v28 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v28)
      {
        specific = dispatch_get_specific(*callStackSymbols);
        v29 = MEMORY[0x1E696AF00];
        v30 = specific;
        callStackSymbols = [v29 callStackSymbols];
        v31 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v43 = specific;
        v44 = 2114;
        v45 = v31;
        _os_log_error_impl(&dword_1C7694000, v5, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      specific = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [specific componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v43 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v5, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v40 = "resource != nil";
    _NUAssertFailHandler();
    goto LABEL_35;
  }

  v5 = resourceCopy;
  type = [resourceCopy type];
  v7 = 0;
  if (type <= 2)
  {
    if (type)
    {
      if (type == 1)
      {
        goto LABEL_13;
      }

      if (type != 2)
      {
LABEL_14:

        return v7;
      }
    }

    callStackSymbols = [v5 imageFileURL];
    fileType = [v5 fileType];
    v7 = [specific segmentationCompositionForImageURL:callStackSymbols fileUTI:fileType orientation:-[NSObject orientation](v5 proxyImage:{"orientation"), -[NSObject proxyImage](v5, "proxyImage")}];
    goto LABEL_11;
  }

  if (type <= 4)
  {
    if (type != 3)
    {
      adjustmentData = [v5 adjustmentData];
      adjustmentFormat = [v5 adjustmentFormat];
      adjustmentVersion = [v5 adjustmentVersion];
      v41 = 0;
      v7 = [PICompositionSerializer deserializeCompositionFromData:adjustmentData formatIdentifier:adjustmentFormat formatVersion:adjustmentVersion error:&v41];
      callStackSymbols = v41;

      if (v7)
      {
        imageFileURL = [v5 imageFileURL];
        fileType2 = [v5 fileType];
        fileType = [specific segmentationSourceForImageURL:imageFileURL fileUTI:fileType2 orientation:-[NSObject orientation](v5 proxyImage:{"orientation"), -[NSObject proxyImage](v5, "proxyImage")}];

        [v7 setObject:fileType forKeyedSubscript:@"source"];
        [v7 setMediaType:1];
LABEL_11:

        goto LABEL_14;
      }

      if (*MEMORY[0x1E69B3D78] == -1)
      {
LABEL_18:
        v16 = *MEMORY[0x1E69B3D80];
        if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v43 = callStackSymbols;
          _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "Failed to deserialize segmentation adjustment data: %{public}@", buf, 0xCu);
        }

        fileType = [v5 imageFileURL];
        fileType3 = [v5 fileType];
        v7 = [specific segmentationCompositionForImageURL:fileType fileUTI:fileType3 orientation:-[NSObject orientation](v5 proxyImage:{"orientation"), -[NSObject proxyImage](v5, "proxyImage")}];

        goto LABEL_11;
      }

LABEL_35:
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
      goto LABEL_18;
    }

LABEL_13:
    v7 = [specific segmentationCompositionForProxyImage:-[NSObject proxyImage](v5 orientation:{"proxyImage"), 1}];
    goto LABEL_14;
  }

  if (type == 5)
  {
    goto LABEL_13;
  }

  if (type != 6)
  {
    goto LABEL_14;
  }

  v18 = NUAssertLogger_24364();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Composition for Live Original resource not supported"];
    *buf = 138543362;
    v43 = v19;
    _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
  }

  v20 = MEMORY[0x1E69B38E8];
  v21 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
  v22 = NUAssertLogger_24364();
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
  if (v21)
  {
    if (v23)
    {
      v32 = dispatch_get_specific(*v20);
      v33 = MEMORY[0x1E696AF00];
      v34 = v32;
      callStackSymbols2 = [v33 callStackSymbols];
      v36 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v43 = v32;
      v44 = 2114;
      v45 = v36;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }
  }

  else if (v23)
  {
    callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
    v25 = [callStackSymbols3 componentsJoinedByString:@"\n"];
    *buf = 138543362;
    v43 = v25;
    _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
  }

  v37 = _NUAssertFailHandler();
  return [(PISegmentationLoader *)v37 renderPriorityForResourcePriority:v38, v39];
}

+ (id)renderPriorityForResourcePriority:(int64_t)priority
{
  if (priority)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = [objc_alloc(MEMORY[0x1E69B3C00]) initWithLevel:v3];

  return v4;
}

+ (id)proxyScalePolicy
{
  v2 = [objc_alloc(MEMORY[0x1E69B3BE8]) initWithTargetPixelCount:3048192];

  return v2;
}

+ (BOOL)clientIsMobileSlideShow
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  LOBYTE(mainBundle) = [bundleIdentifier isEqualToString:@"com.apple.mobileslideshow"];
  return mainBundle;
}

+ (void)_freeResources
{
  v3 = s_log_24360;
  v4 = v3;
  v5 = s_signpost_24361;
  if ((s_signpost_24361 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PISegmentationLoader.memory.purge", "", buf, 2u);
  }

  if (([self clientIsMobileSlideShow] & 1) == 0)
  {
    [MEMORY[0x1E69B3A58] freeAllResources:1];
  }

  v6 = s_log_24360;
  v7 = v6;
  v8 = s_signpost_24361;
  if ((s_signpost_24361 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v7, OS_SIGNPOST_INTERVAL_END, v8, "PISegmentationLoader.memory.purge", "", v9, 2u);
  }
}

+ (void)freeResources
{
  v9 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&sResourceLock);
  v3 = *MEMORY[0x1E69B3D78];
  if (sResourceCounter == 1)
  {
    if (v3 != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
    }

    v4 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEBUG))
    {
      v7 = 134217984;
      v8 = sResourceCounter;
      _os_log_debug_impl(&dword_1C7694000, v4, OS_LOG_TYPE_DEBUG, "Freeing segmentation loader resources with counter %ld", &v7, 0xCu);
    }

    [self _freeResources];
    v5 = 0;
  }

  else
  {
    if (v3 != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
    }

    v6 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEBUG))
    {
      v7 = 134217984;
      v8 = sResourceCounter;
      _os_log_debug_impl(&dword_1C7694000, v6, OS_LOG_TYPE_DEBUG, "Unnecessary freeResources detected! (%ld)", &v7, 0xCu);
    }

    v5 = sResourceCounter - 1;
  }

  sResourceCounter = v5;
  os_unfair_lock_unlock(&sResourceLock);
}

+ (void)ensureResources
{
  v7 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&sResourceLock);
  if (sResourceCounter)
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
    }

    v3 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEBUG))
    {
      v5 = 134217984;
      v6 = sResourceCounter;
      _os_log_debug_impl(&dword_1C7694000, v3, OS_LOG_TYPE_DEBUG, "Unnecessary ensureResources detected! (%ld)", &v5, 0xCu);
    }
  }

  else
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
    }

    v4 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEBUG))
    {
      v5 = 134217984;
      v6 = sResourceCounter;
      _os_log_debug_impl(&dword_1C7694000, v4, OS_LOG_TYPE_DEBUG, "Ensuring segmentation resources with counter %ld", &v5, 0xCu);
    }

    [self _ensureResources];
  }

  ++sResourceCounter;
  os_unfair_lock_unlock(&sResourceLock);
}

+ (void)warmUpClassificationDetectors
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v2 = objc_alloc_init(MEMORY[0x1E69844D0]);
  [v4 addObject:v2];

  v3 = objc_alloc_init(MEMORY[0x1E6984618]);
  [v4 addObject:v3];

  [MEMORY[0x1E69B3D48] warmUpRequests:v4];
}

+ (void)warmUpResources
{
  v3 = s_log_24360;
  v4 = v3;
  v5 = s_signpost_24361;
  if ((s_signpost_24361 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PISegmentationLoader.memory.warmUp", "", buf, 2u);
  }

  [MEMORY[0x1E69B3D58] warmUp];
  [self warmUpClassificationDetectors];
  v6 = s_log_24360;
  v7 = v6;
  v8 = s_signpost_24361;
  if ((s_signpost_24361 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v7, OS_SIGNPOST_INTERVAL_END, v8, "PISegmentationLoader.memory.warmUp", "", v9, 2u);
  }
}

+ (void)initialize
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__PISegmentationLoader_initialize__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (initialize_onceToken_24731 != -1)
  {
    dispatch_once(&initialize_onceToken_24731, block);
  }
}

os_signpost_id_t __34__PISegmentationLoader_initialize__block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.photos.PhotoImaging", "segmentation");
  v3 = s_log_24360;
  s_log_24360 = v2;

  result = os_signpost_id_make_with_pointer(s_log_24360, *(a1 + 32));
  s_signpost_24361 = result;
  return result;
}

@end
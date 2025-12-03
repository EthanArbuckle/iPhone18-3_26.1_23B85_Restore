@interface PISegmentation
+ ($2753767B6D5E71768FC0A26EE39D5FB2)settlingEffectGatingStatisticsFromScores:(SEL)scores;
+ (BOOL)tryLoadSegmentationForColdAsset:(id)asset;
+ (CGImage)createFullExtentPreviewImageForWallpaperAtURL:(id)l error:(id *)error;
+ (id)_styleFromOptions:(id)options item:(id)item;
+ (id)segmentationLoaderForAsset:(id)asset;
+ (unint64_t)_layerStackOptionsFromOptions:(id)options;
+ (unint64_t)settlingEffectGatingFailuresFromScores:(id)scores;
+ (void)_createReadOnlyCopyOfPosterAtURL:(id)l exportToURL:(id)rL options:(id)options completion:(id)completion;
+ (void)_upgradeFullPosterAtURL:(id)l exportToURL:(id)rL options:(id)options completion:(id)completion;
+ (void)_upgradeWallpaperAtURL:(id)l existingEditConfiguration:(id)configuration exportToURL:(id)rL options:(id)options completion:(id)completion;
+ (void)cancelSegmentationForAsset:(id)asset;
+ (void)computeSegmentationScoresForAsset:(id)asset options:(id)options completion:(id)completion;
+ (void)exportWallpaperForAsset:(id)asset toURL:(id)l options:(id)options completion:(id)completion;
+ (void)loadSegmentationDataForAsset:(id)asset options:(id)options completion:(id)completion;
+ (void)loadSegmentationItemForAsset:(id)asset options:(id)options completion:(id)completion;
+ (void)setSegmentationLoader:(id)loader forAsset:(id)asset;
+ (void)upgradePosterConfiguration:(id)configuration atURL:(id)l exportTo:(id)to options:(id)options completion:(id)completion;
+ (void)upgradeWallpaperAtURL:(id)l exportToURL:(id)rL options:(id)options completion:(id)completion;
@end

@implementation PISegmentation

+ (void)loadSegmentationDataForAsset:(id)asset options:(id)options completion:(id)completion
{
  v42 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  optionsCopy = options;
  completionCopy = completion;
  if (!assetCopy)
  {
    v20 = NUAssertLogger_27086();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "asset != nil"];
      *buf = 138543362;
      v39 = v21;
      _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v22 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v24 = NUAssertLogger_27086();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v25)
      {
        v28 = dispatch_get_specific(*v22);
        v29 = MEMORY[0x1E696AF00];
        v30 = v28;
        callStackSymbols = [v29 callStackSymbols];
        v32 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v39 = v28;
        v40 = 2114;
        v41 = v32;
        _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v25)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v27 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v39 = v27;
      _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v10 = completionCopy;
  v11 = [optionsCopy objectForKeyedSubscript:PISegmentationOptionLayoutConfiguration];
  v12 = [optionsCopy objectForKeyedSubscript:PISegmentationOptionLayoutProvider];
  v13 = [optionsCopy objectForKeyedSubscript:PISegmentationOptionSegmentationData];
  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v17 = MEMORY[0x1E69B3A48];
      v18 = @"Invalid layout configuration option: %@";
      v19 = v11;
LABEL_15:
      v15 = [v17 invalidError:v18 object:v19];
      (v10)[2](v10, 0, v15);
      goto LABEL_18;
    }
  }

  if (v12 && ([v12 conformsToProtocol:&unk_1F47413A0] & 1) == 0)
  {
    v17 = MEMORY[0x1E69B3A48];
    v18 = @"Invalid layout provider option: %@";
    v19 = v12;
    goto LABEL_15;
  }

  if (v13)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v17 = MEMORY[0x1E69B3A48];
      v18 = @"Invalid segmentationData option: %@";
      v19 = v13;
      goto LABEL_15;
    }
  }

  v14 = [[PISegmentationLoader alloc] initWithParallaxAsset:assetCopy];
  v15 = v14;
  if (v11)
  {
    [(PISegmentationLoader *)v14 setLayoutConfiguration:v11];
  }

  [v15 setLayoutProvider:v12];
  [v15 setDisableSettlingEffect:1];
  [v15 setDisableHeadroomLayout:1];
  [v15 setPerformMediaAnalysisInProcess:1];
  if (v13)
  {
    item = [v13 item];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __66__PISegmentation_loadSegmentationDataForAsset_options_completion___block_invoke;
    v36[3] = &unk_1E82AC8E0;
    v37 = v10;
    [v15 refreshSegmentationItem:item completion:v36];
  }

  else
  {
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __66__PISegmentation_loadSegmentationDataForAsset_options_completion___block_invoke_2;
    v33[3] = &unk_1E82AC908;
    v34 = v15;
    v35 = v10;
    [v34 loadSegmentationItemWithCompletion:v33];

    item = v34;
  }

LABEL_18:
}

void __66__PISegmentation_loadSegmentationDataForAsset_options_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PISegmentationData alloc] initWithSegmentationItem:v3];

  (*(*(a1 + 32) + 16))();
}

void __66__PISegmentation_loadSegmentationDataForAsset_options_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __66__PISegmentation_loadSegmentationDataForAsset_options_completion___block_invoke_3;
    v6[3] = &unk_1E82AC8E0;
    v4 = *(a1 + 32);
    v7 = *(a1 + 40);
    [v4 refreshSegmentationItem:a2 completion:v6];
  }

  else
  {
    v5 = *(*(a1 + 40) + 16);

    v5();
  }
}

void __66__PISegmentation_loadSegmentationDataForAsset_options_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PISegmentationData alloc] initWithSegmentationItem:v3];

  (*(*(a1 + 32) + 16))();
}

+ (CGImage)createFullExtentPreviewImageForWallpaperAtURL:(id)l error:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (lCopy)
  {
    if (error)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PISegmentation.m" lineNumber:844 description:{@"Invalid parameter not satisfying: %@", @"sourceURL != nil"}];

    if (error)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PISegmentation.m" lineNumber:845 description:{@"Invalid parameter not satisfying: %@", @"outError != nil"}];

LABEL_3:
  v8 = [PISegmentationLoader loadCompoundLayerStackFromWallpaperURL:lCopy options:2 error:error];
  v9 = v8;
  if (v8)
  {
    portraitLayerStack = [v8 portraitLayerStack];
    backgroundBackfillLayer = [portraitLayerStack backgroundBackfillLayer];
    if (backgroundBackfillLayer)
    {
      v12 = objc_alloc(MEMORY[0x1E695F620]);
      v13 = [v12 initWithOptions:MEMORY[0x1E695E0F8]];
      v14 = [PISegmentationHelper imageFromImageLayer:backgroundBackfillLayer];
      foregroundBackfillLayer = [portraitLayerStack foregroundBackfillLayer];
      if (foregroundBackfillLayer)
      {
        v16 = [PISegmentationHelper imageFromImageLayer:foregroundBackfillLayer];
        v17 = [v16 imageByCompositingOverImage:v14];

        v14 = v17;
      }

      layout = [portraitLayerStack layout];
      [layout imageSize];
      v21 = v19;
      v22 = v20;
      if (v19 == 0.0 || v20 == 0.0 || v19 == *MEMORY[0x1E69BDDB0] && v20 == *(MEMORY[0x1E69BDDB0] + 8))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
        {
          *buf = 134218496;
          v34 = v21;
          v35 = 2048;
          v36 = v22;
          v37 = 2048;
          v38 = 0x3FF0000000000000;
          _os_log_fault_impl(&dword_1C7694000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "PFSizeGetAspectRatio produced an undefined aspect ratio from size {%lf, %lf}. Returning %f. Use PFSizeGetAspectRatioWithDefault() to provide a value for this case.", buf, 0x20u);
        }
      }

      else
      {
        v23 = v19 / v20;
      }

      [backgroundBackfillLayer pixelSize];
      PFSizeWithAspectRatioFittingSize();
      v26 = v25;
      v28 = v27;

      v29 = [v14 imageByCroppingToRect:{0.0, 0.0, v26, v28}];

      [v29 extent];
      v24 = [v13 createCGImage:v29 fromRect:?];
      if (!v24)
      {
        *error = [MEMORY[0x1E69B3A48] failureError:@"Failed to render image" object:lCopy];
      }
    }

    else
    {
      [MEMORY[0x1E69B3A48] missingError:@"Missing required layer in layer stack" object:lCopy];
      *error = v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

+ (void)upgradePosterConfiguration:(id)configuration atURL:(id)l exportTo:(id)to options:(id)options completion:(id)completion
{
  v100 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  lCopy = l;
  toCopy = to;
  optionsCopy = options;
  completionCopy = completion;
  v13 = [optionsCopy mutableCopy];
  v74 = configurationCopy;
  v14 = configurationCopy;
  v15 = v13;
  editConfiguration = [v14 editConfiguration];
  style = [editConfiguration style];

  if (style)
  {
    v18 = [MEMORY[0x1E69C0788] dictionaryWithStyle:style];
    [v15 setObject:v18 forKeyedSubscript:PISegmentationOptionStyle];
  }

  deviceConfiguration = [MEMORY[0x1E69C0938] deviceConfiguration];
  v20 = [optionsCopy objectForKeyedSubscript:PISegmentationOptionLayoutConfiguration];
  if (v20)
  {
    v94 = 0;
    v21 = [MEMORY[0x1E69C0938] compoundDeviceConfigurationFromDictionary:v20 error:&v94];
    v22 = v94;
    if (v21)
    {
      v23 = v21;

      deviceConfiguration = v23;
    }

    else
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_309_27127);
      }

      v24 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v97 = v20;
        v98 = 2114;
        v99 = v22;
        _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "Failed to deserialize layout configuration: %{public}@, error: %{public}@", buf, 0x16u);
      }
    }
  }

  group = dispatch_group_create();
  v25 = [v74 copy];
  media = [v74 media];
  v68 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(media, "count")}];
  v27 = [optionsCopy objectForKeyedSubscript:PISegmentationOptionLayerStackOptions];
  v28 = v27;
  if (v27)
  {
    if (([v27 unsignedIntegerValue] & 4) != 0)
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_309_27127);
      }

      v31 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1C7694000, v31, OS_LOG_TYPE_INFO, "Upgrading poster media: SETTING .hasInactiveContent", buf, 2u);
      }

      v30 = [v25 options] | 4;
    }

    else
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_309_27127);
      }

      v29 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1C7694000, v29, OS_LOG_TYPE_INFO, "Upgrading poster media: CLEARING .hasInactiveContent", buf, 2u);
      }

      v30 = [v25 options] & 0xFFFFFFFFFFFFFFFBLL;
    }

    [v25 setOptions:v30];
  }

  v62 = v20;
  v64 = [optionsCopy objectForKeyedSubscript:PISegmentationOptionAllowedLayoutStrategies];
  if (v64)
  {
    unsignedIntegerValue = [v64 unsignedIntegerValue];
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_309_27127);
    }

    v33 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v97 = unsignedIntegerValue;
      _os_log_impl(&dword_1C7694000, v33, OS_LOG_TYPE_INFO, "Upgrading poster media: Changing allowed layout strategies to %lu", buf, 0xCu);
    }

    [v25 setAllowedLayoutStrategies:unsignedIntegerValue];
  }

  v69 = v25;
  v60 = deviceConfiguration;
  v63 = optionsCopy;
  v34 = MEMORY[0x1E696AD98];
  editConfiguration2 = [v74 editConfiguration];
  v36 = [v34 numberWithBool:{objc_msgSend(editConfiguration2, "preserveLegacyHeadroom")}];
  v75 = v15;
  [v15 setObject:v36 forKeyedSubscript:PISegmentationOptionPreserveLegacyHeadroom];

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  obj = media;
  v37 = [obj countByEnumeratingWithState:&v90 objects:v95 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v91;
    do
    {
      v40 = 0;
      v41 = style;
      do
      {
        if (*v91 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v42 = *(*(&v90 + 1) + 8 * v40);
        dispatch_group_enter(group);
        if (*MEMORY[0x1E69B3D78] != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_309_27127);
        }

        v43 = *MEMORY[0x1E69B3D80];
        if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
        {
          v44 = v43;
          assetUUID = [v42 assetUUID];
          *buf = 138543618;
          v97 = assetUUID;
          v98 = 2114;
          v99 = v75;
          _os_log_impl(&dword_1C7694000, v44, OS_LOG_TYPE_INFO, "Upgrading poster media: %{public}@ with options: %{public}@", buf, 0x16u);
        }

        subpath = [v42 subpath];
        v47 = [lCopy URLByAppendingPathComponent:subpath];

        subpath2 = [v42 subpath];
        v49 = [toCopy URLByAppendingPathComponent:subpath2];

        editConfiguration3 = [v42 editConfiguration];
        style = [editConfiguration3 style];

        if (style)
        {
          v51 = [MEMORY[0x1E69C0788] dictionaryWithStyle:style];
          [v75 setObject:v51 forKeyedSubscript:PISegmentationOptionStyle];
        }

        editConfiguration4 = [v42 editConfiguration];
        v85[0] = MEMORY[0x1E69E9820];
        v85[1] = 3221225472;
        v85[2] = __79__PISegmentation_upgradePosterConfiguration_atURL_exportTo_options_completion___block_invoke;
        v85[3] = &unk_1E82AC890;
        v85[4] = v42;
        v86 = v74;
        v87 = v69;
        v88 = v68;
        v53 = group;
        v89 = v53;
        [self _upgradeWallpaperAtURL:v47 existingEditConfiguration:editConfiguration4 exportToURL:v49 options:v75 completion:v85];

        dispatch_group_wait(v53, 0xFFFFFFFFFFFFFFFFLL);
        ++v40;
        v41 = style;
      }

      while (v38 != v40);
      v38 = [obj countByEnumeratingWithState:&v90 objects:v95 count:16];
    }

    while (v38);
  }

  v54 = dispatch_queue_create("PISegmentation.upgrade", 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__PISegmentation_upgradePosterConfiguration_atURL_exportTo_options_completion___block_invoke_183;
  block[3] = &unk_1E82AC8B8;
  v78 = v68;
  v79 = obj;
  v80 = v69;
  v81 = v60;
  v82 = toCopy;
  v83 = lCopy;
  v84 = completionCopy;
  v73 = lCopy;
  v71 = toCopy;
  v67 = v60;
  v55 = v69;
  v56 = completionCopy;
  v57 = obj;
  v58 = v68;
  dispatch_group_notify(group, v54, block);
}

void __79__PISegmentation_upgradePosterConfiguration_atURL_exportTo_options_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_309_27127);
    }

    v7 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = v7;
      v10 = [v8 assetUUID];
      v17 = 138543362;
      v18 = v10;
      _os_log_impl(&dword_1C7694000, v9, OS_LOG_TYPE_INFO, "Successfully upgraded poster media: %{public}@", &v17, 0xCu);
    }

    v11 = [*(a1 + 32) copy];
    v12 = [*(a1 + 40) configurationType];
    v13 = v11;
    if (v12 != 1)
    {
      v13 = *(a1 + 48);
    }

    [v13 setEditConfiguration:v5];
    [*(a1 + 56) addObject:v11];
    goto LABEL_9;
  }

  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_309_27127);
  }

  v14 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
  {
    v15 = *(a1 + 32);
    v11 = v14;
    v16 = [v15 assetUUID];
    v17 = 138543618;
    v18 = v16;
    v19 = 2114;
    v20 = v6;
    _os_log_error_impl(&dword_1C7694000, v11, OS_LOG_TYPE_ERROR, "Failed to upgraded poster media: %{public}@, error: %{public}@", &v17, 0x16u);

LABEL_9:
  }

  dispatch_group_leave(*(a1 + 64));
}

void __79__PISegmentation_upgradePosterConfiguration_atURL_exportTo_options_completion___block_invoke_183(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) count];
  v3 = [*(a1 + 40) count];
  v4 = MEMORY[0x1E69B3D78];
  v5 = *MEMORY[0x1E69B3D78];
  if (v2 != v3)
  {
    if (v5 != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_309_27127);
    }

    v19 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      v27 = *(a1 + 40);
      v28 = v19;
      v29 = [v27 count];
      v30 = [*(a1 + 32) count];
      *buf = 134217984;
      v36 = v29 - v30;
      _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "Failed to upgrade %lu poster media", buf, 0xCu);
    }

    v20 = *(a1 + 80);
    v21 = MEMORY[0x1E69B3A48];
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "count") - objc_msgSend(*(a1 + 32), "count")}];
    v22 = [v21 failureError:@"Failed to upgrade some poster media" object:v13];
    (*(v20 + 16))(v20, 0, v22);
    goto LABEL_22;
  }

  if (v5 != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_309_27127);
  }

  v6 = MEMORY[0x1E69B3D80];
  v7 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 40);
    v9 = v7;
    *buf = 134217984;
    v36 = [v8 count];
    _os_log_impl(&dword_1C7694000, v9, OS_LOG_TYPE_INFO, "Successfully upgraded %lu poster media", buf, 0xCu);
  }

  [*(a1 + 48) setMedia:*(a1 + 32)];
  [*(a1 + 48) setLayoutConfiguration:*(a1 + 56)];
  v10 = *(a1 + 48);
  v11 = *(a1 + 64);
  v34 = 0;
  v12 = [v10 saveToURL:v11 error:&v34];
  v13 = v34;
  if (!v12)
  {
    if (*v4 != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_309_27127);
    }

    v23 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      v31 = *(a1 + 64);
      v32 = v23;
      v33 = [v31 path];
      *buf = 138543618;
      v36 = v33;
      v37 = 2114;
      v38 = v13;
      _os_log_error_impl(&dword_1C7694000, v32, OS_LOG_TYPE_ERROR, "Failed to save poster configuration to '%{public}@', error: %{public}@", buf, 0x16u);
    }

    v24 = *(a1 + 80);
    v25 = MEMORY[0x1E69B3A48];
    v22 = [*(a1 + 64) path];
    v26 = [v25 errorWithCode:1 reason:@"Failed to save poster configuration" object:v22 underlyingError:v13];
    (*(v24 + 16))(v24, 0, v26);

LABEL_22:
    goto LABEL_23;
  }

  if (*v4 != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_309_27127);
  }

  v14 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 72);
    v16 = v14;
    v17 = [v15 path];
    v18 = [*(a1 + 64) path];
    *buf = 138543618;
    v36 = v17;
    v37 = 2114;
    v38 = v18;
    _os_log_impl(&dword_1C7694000, v16, OS_LOG_TYPE_DEFAULT, "Successfully upgraded poster configuration from '%{public}@' to '%{public}@'", buf, 0x16u);
  }

  (*(*(a1 + 80) + 16))();
LABEL_23:
}

+ (void)_createReadOnlyCopyOfPosterAtURL:(id)l exportToURL:(id)rL options:(id)options completion:(id)completion
{
  v76 = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  completionCopy = completion;
  v70 = 0;
  v11 = [MEMORY[0x1E69C07E8] loadFromURL:lCopy error:&v70];
  v12 = v70;
  if (v11)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [rLCopy path];
    v15 = [defaultManager fileExistsAtPath:path];

    if ((v15 & 1) == 0)
    {
      v69 = v12;
      v16 = [defaultManager createDirectoryAtURL:rLCopy withIntermediateDirectories:1 attributes:0 error:&v69];
      v17 = v69;

      if ((v16 & 1) == 0)
      {
        if (*MEMORY[0x1E69B3D78] != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_309_27127);
        }

        v38 = *MEMORY[0x1E69B3D80];
        if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
        {
          v47 = v38;
          path2 = [rLCopy path];
          *buf = 138543618;
          v73 = path2;
          v74 = 2114;
          v75 = v17;
          _os_log_error_impl(&dword_1C7694000, v47, OS_LOG_TYPE_ERROR, "Failed to create destination: '%{public}@', error: %{public}@", buf, 0x16u);
        }

        obj = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to create destination" object:rLCopy underlyingError:v17];
        completionCopy[2](completionCopy, 0);
LABEL_43:

        v12 = v17;
        goto LABEL_44;
      }

      v12 = v17;
    }

    v56 = defaultManager;
    v57 = completionCopy;
    media = [v11 media];
    v55 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(media, "count")}];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    obj = media;
    v19 = [obj countByEnumeratingWithState:&v65 objects:v71 count:16];
    v58 = v11;
    if (v19)
    {
      v20 = v19;
      v60 = *v66;
      v61 = rLCopy;
      v21 = off_1E82A8000;
LABEL_7:
      v22 = 0;
      while (1)
      {
        if (*v66 != v60)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v65 + 1) + 8 * v22);
        subpath = [v23 subpath];
        v25 = lCopy;
        editConfiguration = [lCopy URLByAppendingPathComponent:subpath];

        subpath2 = [v23 subpath];
        v28 = [v61 URLByAppendingPathComponent:subpath2];

        v29 = v21[149];
        v64 = v12;
        v30 = [(__objc2_class *)v29 loadCompoundLayerStackFromWallpaperURL:editConfiguration options:1 error:&v64];
        v17 = v64;

        if (!v30)
        {
          break;
        }

        v31 = v21;
        v32 = v21[149];
        v63 = v17;
        v33 = [(__objc2_class *)v32 saveSegmentationItem:0 compoundLayerStack:v30 style:0 toWallpaperURL:v28 error:&v63];
        v12 = v63;

        if ((v33 & 1) == 0)
        {
          if (*MEMORY[0x1E69B3D78] != -1)
          {
            dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_309_27127);
          }

          rLCopy = v61;
          v41 = *MEMORY[0x1E69B3D80];
          completionCopy = v57;
          if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
          {
            v51 = v41;
            path3 = [editConfiguration path];
            *buf = 138543618;
            v73 = path3;
            v74 = 2114;
            v75 = v12;
            _os_log_error_impl(&dword_1C7694000, v51, OS_LOG_TYPE_ERROR, "Failed to save layer stack: '%{public}@', error: %{public}@", buf, 0x16u);
          }

          v40 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to save layer stack" object:editConfiguration underlyingError:v12];
          v17 = v12;
LABEL_36:
          (completionCopy[2])(completionCopy, 0, v40);

          v34 = obj;
          v35 = v55;
          goto LABEL_42;
        }

        ++v22;
        lCopy = v25;
        v21 = v31;
        if (v20 == v22)
        {
          v20 = [obj countByEnumeratingWithState:&v65 objects:v71 count:16];
          rLCopy = v61;
          v11 = v58;
          if (v20)
          {
            goto LABEL_7;
          }

          goto LABEL_14;
        }
      }

      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_309_27127);
      }

      rLCopy = v61;
      v39 = *MEMORY[0x1E69B3D80];
      completionCopy = v57;
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
      {
        v49 = v39;
        path4 = [editConfiguration path];
        *buf = 138543618;
        v73 = path4;
        v74 = 2114;
        v75 = v17;
        _os_log_error_impl(&dword_1C7694000, v49, OS_LOG_TYPE_ERROR, "Failed to load layer stack: '%{public}@', error: %{public}@", buf, 0x16u);
      }

      v40 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to load layer stack" object:editConfiguration underlyingError:v17];
      v30 = 0;
      goto LABEL_36;
    }

LABEL_14:

    v34 = [v11 copy];
    v35 = v55;
    [v34 setMedia:v55];
    v62 = v12;
    v36 = [v34 saveToURL:rLCopy error:&v62];
    v17 = v62;

    if (v36)
    {
      v25 = lCopy;
      editConfiguration = [v34 editConfiguration];
      completionCopy = v57;
      (v57[2])(v57, editConfiguration, 0);
    }

    else
    {
      completionCopy = v57;
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_309_27127);
      }

      v25 = lCopy;
      v42 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
      {
        v53 = v42;
        path5 = [rLCopy path];
        *buf = 138543618;
        v73 = path5;
        v74 = 2114;
        v75 = v17;
        _os_log_error_impl(&dword_1C7694000, v53, OS_LOG_TYPE_ERROR, "Failed to save poster configuration to '%{public}@', error: %{public}@", buf, 0x16u);
      }

      v43 = MEMORY[0x1E69B3A48];
      editConfiguration = [rLCopy path];
      v44 = [v43 errorWithCode:1 reason:@"Failed to save poster configuration" object:editConfiguration underlyingError:v17];
      (v57[2])(v57, 0, v44);
    }

LABEL_42:

    lCopy = v25;
    v11 = v58;
    defaultManager = v56;
    goto LABEL_43;
  }

  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_309_27127);
  }

  v37 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
  {
    v45 = v37;
    path6 = [lCopy path];
    *buf = 138543618;
    v73 = path6;
    v74 = 2114;
    v75 = v12;
    _os_log_error_impl(&dword_1C7694000, v45, OS_LOG_TYPE_ERROR, "Failed to load poster configuration from: '%{public}@', error: %{public}@", buf, 0x16u);
  }

  defaultManager = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to load poster configuration from source URL" object:lCopy underlyingError:v12];
  (completionCopy[2])(completionCopy, 0, defaultManager);
LABEL_44:
}

+ (void)_upgradeFullPosterAtURL:(id)l exportToURL:(id)rL options:(id)options completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  optionsCopy = options;
  completionCopy = completion;
  v24 = 0;
  v14 = [MEMORY[0x1E69C07E8] loadFromURL:lCopy error:&v24];
  v15 = v24;
  if (v14)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __73__PISegmentation__upgradeFullPosterAtURL_exportToURL_options_completion___block_invoke;
    v20[3] = &unk_1E82AC868;
    v21 = lCopy;
    v22 = rLCopy;
    v23 = completionCopy;
    [self upgradePosterConfiguration:v14 atURL:v21 exportTo:v22 options:optionsCopy completion:v20];

    v16 = v21;
  }

  else
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_309_27127);
    }

    v17 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      v18 = v17;
      path = [lCopy path];
      *buf = 138543618;
      v26 = path;
      v27 = 2114;
      v28 = v15;
      _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "Failed to load poster configuration from: '%{public}@', error: %{public}@", buf, 0x16u);
    }

    v16 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to load poster configuration from source URL" object:lCopy underlyingError:v15];
    (*(completionCopy + 2))(completionCopy, 0, v16);
  }
}

void __73__PISegmentation__upgradeFullPosterAtURL_exportToURL_options_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_309_27127);
    }

    v7 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = v7;
      v10 = [v8 path];
      v11 = [*(a1 + 40) path];
      v20 = 138543618;
      v21 = v10;
      v22 = 2114;
      v23 = v11;
      _os_log_impl(&dword_1C7694000, v9, OS_LOG_TYPE_DEFAULT, "Successfully upgraded poster configuration from: '%{public}@' to: '%{public}@'", &v20, 0x16u);
    }

    v12 = *(a1 + 48);
    v13 = [v5 editConfiguration];
    (*(v12 + 16))(v12, v13, 0);
  }

  else
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_309_27127);
    }

    v14 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 32);
      v17 = v14;
      v18 = [v16 path];
      v19 = [*(a1 + 40) path];
      v20 = 138543874;
      v21 = v18;
      v22 = 2114;
      v23 = v19;
      v24 = 2114;
      v25 = v6;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Failed to upgrade poster configuration from: '%{public}@' to: '%{public}@', error: %{public}@", &v20, 0x20u);
    }

    v15 = *(a1 + 48);
    v13 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to upgrade poster configuration from source URL" object:*(a1 + 32) underlyingError:v6];
    (*(v15 + 16))(v15, 0, v13);
  }
}

+ (void)_upgradeWallpaperAtURL:(id)l existingEditConfiguration:(id)configuration exportToURL:(id)rL options:(id)options completion:(id)completion
{
  v71 = *MEMORY[0x1E69E9840];
  lCopy = l;
  configurationCopy = configuration;
  rLCopy = rL;
  optionsCopy = options;
  completionCopy = completion;
  v66 = 0;
  v51 = [PISegmentationLoader loadSegmentationItemFromWallpaperURL:lCopy error:&v66];
  v16 = v66;
  if (v51)
  {
    deviceConfiguration = [MEMORY[0x1E69C0938] deviceConfiguration];
    v47 = [optionsCopy objectForKeyedSubscript:PISegmentationOptionLayoutConfiguration];
    if (v47)
    {
      v65 = 0;
      v17 = [MEMORY[0x1E69C0938] compoundDeviceConfigurationFromDictionary:v47 error:&v65];
      v18 = v65;
      if (v17)
      {
        v19 = v17;

        deviceConfiguration = v19;
      }

      else
      {
        if (*MEMORY[0x1E69B3D78] != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_309_27127);
        }

        v20 = *MEMORY[0x1E69B3D80];
        if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          *&buf[4] = v47;
          *&buf[12] = 2114;
          *&buf[14] = v18;
          _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Failed to deserialize layout configuration: %{public}@, error: %{public}@", buf, 0x16u);
        }
      }
    }

    v64 = v16;
    v50 = [PISegmentationLoader loadCompoundLayerStackFromWallpaperURL:lCopy options:0 error:&v64];
    v46 = v64;

    if (!v50)
    {
      completionCopy[2](completionCopy, 0, v46);
LABEL_32:

      v16 = v46;
      goto LABEL_33;
    }

    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __98__PISegmentation__upgradeWallpaperAtURL_existingEditConfiguration_exportToURL_options_completion___block_invoke;
    v59[3] = &unk_1E82AC818;
    v44 = v51;
    v60 = v44;
    v21 = optionsCopy;
    v61 = v21;
    v62 = configurationCopy;
    selfCopy = self;
    v43 = MEMORY[0x1CCA61740](v59);
    portraitLayerStack = [v50 portraitLayerStack];
    if ([portraitLayerStack spatialPhotoEnabled])
    {
      isSpatialPhotoAvailable = [v44 isSpatialPhotoAvailable];

      if (!isSpatialPhotoAvailable)
      {
        v24 = 1;
        goto LABEL_19;
      }

      portraitLayerStack = PIParallaxDefaultSpatialPhotoProducer();
      [portraitLayerStack enableBackgroundDownload];
      v24 = 257;
    }

    else
    {
      v24 = 1;
    }

LABEL_19:
    v42 = [self _layerStackOptionsFromOptions:v21];
    v25 = [v21 objectForKeyedSubscript:PISegmentationOptionAllowedLayoutStrategies];
    v26 = v25;
    if (v25)
    {
      unsignedIntValue = [v25 unsignedIntValue];
      v41 = unsignedIntValue;
      if (PFPosterIsAdaptiveLayoutEnabled())
      {
        v45 = (unsignedIntValue >> 1) & 1;
      }

      else
      {
        LOBYTE(v45) = 0;
      }
    }

    else
    {
      LOBYTE(v45) = 0;
      v41 = 1;
    }

    v28 = [v21 objectForKeyedSubscript:PISegmentationOptionOverrideEditConfiguration];
    bOOLValue = [v28 BOOLValue];

    if (bOOLValue)
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_309_27127);
      }

      v30 = *MEMORY[0x1E69B3D80];
      LOBYTE(v45) = 0;
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C7694000, v30, OS_LOG_TYPE_DEFAULT, "Layout is requested not to be preserved", buf, 2u);
        LOBYTE(v45) = 0;
      }
    }

    v31 = 0;
    v32 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v68 = __Block_byref_object_copy__27181;
    v69 = __Block_byref_object_dispose__27182;
    v70 = 0;
    if ((bOOLValue & 1) == 0)
    {
      layout = [v50 layout];
      v32 = [layout layoutByUpgradingToConfiguration:deviceConfiguration];

      v34 = (v43)[2](v43, v50, v32);
      v35 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v34;

      v31 = *(*&buf[8] + 40);
    }

    v40 = v31;
    style = [v31 style];
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __98__PISegmentation__upgradeWallpaperAtURL_existingEditConfiguration_exportToURL_options_completion___block_invoke_159;
    v52[3] = &unk_1E82AC840;
    v53 = lCopy;
    v54 = rLCopy;
    v58 = bOOLValue ^ 1;
    v55 = completionCopy;
    v57 = buf;
    v37 = v43;
    v56 = v37;
    LOBYTE(v39) = v45;
    v38 = [PISegmentationLoader saveSegmentationItem:v44 layerStackOptions:v42 | v24 configuration:v40 style:style layout:v32 allowedLayoutStrategies:v41 shouldRecalculateLayoutProperties:v39 toWallpaperURL:v54 completion:v52];

    _Block_object_dispose(buf, 8);
    goto LABEL_32;
  }

  completionCopy[2](completionCopy, 0, v16);
LABEL_33:
}

id __98__PISegmentation__upgradeWallpaperAtURL_existingEditConfiguration_exportToURL_options_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E69C07F8];
  v6 = a3;
  v7 = a2;
  v8 = objc_alloc_init(v5);
  v9 = [v6 portraitLayout];
  [v9 normalizedVisibleFrame];
  NURectFlipYOrigin();
  [v8 setNormalizedVisibleFrame:?];

  v10 = [v6 landscapeLayout];
  [v10 normalizedVisibleFrame];
  NURectFlipYOrigin();
  [v8 setNormalizedLandscapeVisibleFrame:?];

  v11 = [v6 portraitLayout];
  [v11 normalizedAdaptiveVisibleFrame];
  NURectFlipYOrigin();
  [v8 setNormalizedAdaptiveVisibleFrame:?];

  v12 = [v6 landscapeLayout];
  [v12 normalizedAdaptiveVisibleFrame];
  NURectFlipYOrigin();
  [v8 setNormalizedLandscapeAdaptiveVisibleFrame:?];

  v13 = [v6 portraitLayout];
  [v13 normalizedAdaptiveTimeFrame];
  NURectFlipYOrigin();
  [v8 setNormalizedAdaptiveTimeFrame:?];

  v14 = [v6 landscapeLayout];

  [v14 normalizedAdaptiveTimeFrame];
  NURectFlipYOrigin();
  [v8 setNormalizedLandscapeAdaptiveTimeFrame:?];

  v15 = [v7 portraitLayerStack];
  [v8 setIsDepthEnabled:{objc_msgSend(v15, "depthEnabled")}];

  v16 = [v7 portraitLayerStack];
  [v8 setIsPerspectiveZoomEnabled:{objc_msgSend(v16, "parallaxDisabled") ^ 1}];

  v17 = [v7 portraitLayerStack];
  [v8 setIsSettlingEffectEnabled:{objc_msgSend(v17, "settlingEffectEnabled")}];

  v18 = [v7 portraitLayerStack];

  [v8 setIsSpatialPhotoEnabled:{objc_msgSend(v18, "spatialPhotoEnabled")}];
  [v8 setIsSpatialPhotoAvailable:{objc_msgSend(a1[4], "isSpatialPhotoAvailable")}];
  v19 = [a1[5] objectForKeyedSubscript:PISegmentationOptionPreserveLegacyHeadroom];
  [v8 setPreserveLegacyHeadroom:{objc_msgSend(v19, "BOOLValue")}];

  [a1[6] additionalTitleLabelHeight];
  [v8 setAdditionalTitleLabelHeight:?];
  [a1[6] landscapeAdditionalTitleLabelHeight];
  [v8 setLandscapeAdditionalTitleLabelHeight:?];
  if ([v8 isSettlingEffectEnabled])
  {
    v20 = +[(PIParallaxStyle *)PIParallaxOriginalStyle];
    v21 = [v20 bakedStyle];
  }

  else
  {
    v21 = [a1[7] _styleFromOptions:a1[5] item:a1[4]];
  }

  [v8 setStyle:v21];

  return v8;
}

void __98__PISegmentation__upgradeWallpaperAtURL_existingEditConfiguration_exportToURL_options_completion___block_invoke_159(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1E69B3D78];
  v5 = *MEMORY[0x1E69B3D78];
  if (v3)
  {
    v6 = v3;
    if (v5 != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_309_27127);
    }

    v7 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      v25 = *(a1 + 32);
      v26 = v7;
      v27 = [v25 path];
      v28 = [*(a1 + 40) path];
      *buf = 138543874;
      v31 = v27;
      v32 = 2114;
      v33 = v28;
      v34 = 2114;
      v35 = v6;
      _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "Failed to export refreshed wallpaper at %{public}@ to %{public}@, error: %{public}@", buf, 0x20u);
    }

    (*(*(a1 + 48) + 16))();

    return;
  }

  if (v5 != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_309_27127);
  }

  v8 = MEMORY[0x1E69B3D80];
  v9 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = v9;
    v12 = [v10 path];
    v13 = [*(a1 + 40) path];
    *buf = 138543618;
    v31 = v12;
    v32 = 2114;
    v33 = v13;
    _os_log_impl(&dword_1C7694000, v11, OS_LOG_TYPE_DEFAULT, "Successfully exported refreshed wallpaper at %{public}@ to %{public}@", buf, 0x16u);
  }

  if (*(a1 + 72))
  {
LABEL_23:
    (*(*(a1 + 48) + 16))();
    return;
  }

  if (*v4 != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_309_27127);
  }

  v14 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C7694000, v14, OS_LOG_TYPE_DEFAULT, "Layout is not preserved, saving new layout into edit configuration", buf, 2u);
  }

  v15 = *(a1 + 40);
  v29 = 0;
  v16 = [PISegmentationLoader loadCompoundLayerStackFromWallpaperURL:v15 options:0 error:&v29];
  v17 = v29;
  if (!v17)
  {
    v20 = *(a1 + 56);
    v21 = [v16 layout];
    v22 = (*(v20 + 16))(v20, v16, v21);
    v23 = *(*(a1 + 64) + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = v22;

    goto LABEL_23;
  }

  v18 = v17;
  if (*v4 != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_309_27127);
  }

  v19 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v31 = v18;
    _os_log_impl(&dword_1C7694000, v19, OS_LOG_TYPE_DEFAULT, "Failed to load upgraded layer stack for writing edit configuration: %{public}@", buf, 0xCu);
  }

  (*(*(a1 + 48) + 16))();
}

+ (void)upgradeWallpaperAtURL:(id)l exportToURL:(id)rL options:(id)options completion:(id)completion
{
  v63 = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  optionsCopy = options;
  completionCopy = completion;
  if (!lCopy)
  {
    v28 = NUAssertLogger_27086();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "sourceURL != nil"];
      *buf = 138543362;
      *&buf[4] = v29;
      _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v30 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v32 = NUAssertLogger_27086();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v33)
      {
        v41 = dispatch_get_specific(*v30);
        v42 = MEMORY[0x1E696AF00];
        v43 = v41;
        callStackSymbols = [v42 callStackSymbols];
        v45 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v41;
        *&buf[12] = 2114;
        *&buf[14] = v45;
        _os_log_error_impl(&dword_1C7694000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v33)
    {
LABEL_28:
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v40 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v40;
      _os_log_error_impl(&dword_1C7694000, v32, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

LABEL_34:

    _NUAssertFailHandler();
    __break(1u);
  }

  if (!rLCopy)
  {
    v34 = NUAssertLogger_27086();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "destinationURL != nil"];
      *buf = 138543362;
      *&buf[4] = v35;
      _os_log_error_impl(&dword_1C7694000, v34, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v36 = MEMORY[0x1E69B38E8];
    v37 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v32 = NUAssertLogger_27086();
    v38 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
    if (!v37)
    {
      if (!v38)
      {
        goto LABEL_34;
      }

      goto LABEL_28;
    }

    if (v38)
    {
      v46 = dispatch_get_specific(*v36);
      v47 = MEMORY[0x1E696AF00];
      v48 = v46;
      callStackSymbols3 = [v47 callStackSymbols];
      v50 = [callStackSymbols3 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      *&buf[4] = v46;
      *&buf[12] = 2114;
      *&buf[14] = v50;
      _os_log_error_impl(&dword_1C7694000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_34;
  }

  v14 = completionCopy;
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_309_27127);
  }

  v15 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    path = [lCopy path];
    path2 = [rLCopy path];
    *buf = 138543874;
    *&buf[4] = path;
    *&buf[12] = 2114;
    *&buf[14] = path2;
    *&buf[22] = 2114;
    v61 = optionsCopy;
    _os_log_impl(&dword_1C7694000, v16, OS_LOG_TYPE_DEFAULT, "Upgrading wallpaper at %{public}@ to %{public}@, options: %{public}@", buf, 0x20u);
  }

  v19 = [optionsCopy objectForKeyedSubscript:PISegmentationOptionOutOfProcess];
  bOOLValue = [v19 BOOLValue];

  if (bOOLValue)
  {
    v21 = [optionsCopy mutableCopy];
    [v21 setObject:0 forKeyedSubscript:PISegmentationOptionOutOfProcess];
    v56 = 0;
    v57 = &v56;
    v58 = 0x2050000000;
    v22 = getVCPMediaAnalysisServiceClass_softClass_27200;
    v59 = getVCPMediaAnalysisServiceClass_softClass_27200;
    if (!getVCPMediaAnalysisServiceClass_softClass_27200)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getVCPMediaAnalysisServiceClass_block_invoke_27201;
      v61 = &unk_1E82AC930;
      v62 = &v56;
      __getVCPMediaAnalysisServiceClass_block_invoke_27201(buf);
      v22 = v57[3];
    }

    v23 = v22;
    _Block_object_dispose(&v56, 8);
    sharedAnalysisService = [v22 sharedAnalysisService];
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __71__PISegmentation_upgradeWallpaperAtURL_exportToURL_options_completion___block_invoke;
    v54[3] = &unk_1E82AC7C8;
    v55 = v14;
    [sharedAnalysisService requestWallpaperUpgradeAtURL:lCopy toDestinationURL:rLCopy withOptions:v21 andCompletionHandler:v54];
  }

  else
  {
    [self ensureResources];
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __71__PISegmentation_upgradeWallpaperAtURL_exportToURL_options_completion___block_invoke_2;
    v51[3] = &unk_1E82AC7F0;
    v52 = v14;
    selfCopy = self;
    v25 = MEMORY[0x1CCA61740](v51);
    v26 = [optionsCopy objectForKeyedSubscript:PISegmentationOptionWallpaperUpgradeMode];
    integerValue = [v26 integerValue];

    switch(integerValue)
    {
      case 2:
        [self _createReadOnlyCopyOfPosterAtURL:lCopy exportToURL:rLCopy options:optionsCopy completion:v25];
        break;
      case 1:
        [self _upgradeFullPosterAtURL:lCopy exportToURL:rLCopy options:optionsCopy completion:v25];
        break;
      case 0:
        [self _upgradeWallpaperAtURL:lCopy existingEditConfiguration:0 exportToURL:rLCopy options:optionsCopy completion:v25];
        break;
    }

    v21 = v52;
  }
}

void __71__PISegmentation_upgradeWallpaperAtURL_exportToURL_options_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 objectForKeyedSubscript:@"WallpaperPosterConfigDataResults"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = v5;
    v7 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v9];
    v8 = v9;

    (*(*(a1 + 32) + 16))();
    v5 = v8;
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

uint64_t __71__PISegmentation_upgradeWallpaperAtURL_exportToURL_options_completion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 40);

  return [v2 freeResources];
}

+ (id)_styleFromOptions:(id)options item:(id)item
{
  v23 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  itemCopy = item;
  v7 = [optionsCopy objectForKeyedSubscript:PISegmentationOptionStyle];
  if (!v7)
  {
    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    availableStyles = [itemCopy availableStyles];
    v17[1] = MEMORY[0x1E69E9820];
    v17[2] = 3221225472;
    v17[3] = __41__PISegmentation__styleFromOptions_item___block_invoke;
    v17[4] = &unk_1E82AC7A0;
    v18 = v8;
    v10 = v8;
    v11 = PFFind();

    if (v11)
    {
      goto LABEL_27;
    }

LABEL_18:
    v12 = [optionsCopy objectForKeyedSubscript:PISegmentationOptionStyleCategory];
    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [itemCopy suggestedStyleForCategory:v12];
        goto LABEL_26;
      }

      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_309_27127);
      }

      v15 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v20 = v12;
        _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Unknown style category option, ignored: %{public}@", buf, 0xCu);
      }
    }

    v11 = 0;
    goto LABEL_26;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v7;
    goto LABEL_27;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_309_27127);
    }

    v14 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v20 = v7;
      _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "Unknown style option, ignored: %{public}@", buf, 0xCu);
    }

    goto LABEL_18;
  }

  v17[0] = 0;
  v11 = [MEMORY[0x1E69C0788] styleWithDictionary:v7 error:v17];
  v12 = v17[0];
  if (!v11)
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_309_27127);
    }

    v13 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v20 = v7;
      v21 = 2114;
      v22 = v12;
      _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "Failed to deserialize style from dictionary: %{public}@, error: %{public}@", buf, 0x16u);
    }

    goto LABEL_18;
  }

LABEL_26:

LABEL_27:

  return v11;
}

uint64_t __41__PISegmentation__styleFromOptions_item___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 kind];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

+ (unint64_t)_layerStackOptionsFromOptions:(id)options
{
  v24 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v4 = [optionsCopy objectForKeyedSubscript:PISegmentationOptionLayerStackOptions];
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = NUAssertLogger_27086();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid additionalLayerOptions: %@", v4];
        *buf = 138543362;
        v21 = v8;
        _os_log_error_impl(&dword_1C7694000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      v9 = MEMORY[0x1E69B38E8];
      specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
      v11 = NUAssertLogger_27086();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
      if (specific)
      {
        if (v12)
        {
          v15 = dispatch_get_specific(*v9);
          v16 = MEMORY[0x1E696AF00];
          v17 = v15;
          callStackSymbols = [v16 callStackSymbols];
          v19 = [callStackSymbols componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v21 = v15;
          v22 = 2114;
          v23 = v19;
          _os_log_error_impl(&dword_1C7694000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v12)
      {
        callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
        v14 = [callStackSymbols2 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v21 = v14;
        _os_log_error_impl(&dword_1C7694000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      _NUAssertFailHandler();
    }

    unsignedIntegerValue = [v4 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 1;
  }

  return unsignedIntegerValue;
}

+ (void)exportWallpaperForAsset:(id)asset toURL:(id)l options:(id)options completion:(id)completion
{
  v56 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  lCopy = l;
  optionsCopy = options;
  completionCopy = completion;
  if (!assetCopy)
  {
    v21 = NUAssertLogger_27086();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "asset != nil"];
      *buf = 138543362;
      v53 = v22;
      _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v25 = NUAssertLogger_27086();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v26)
      {
        v34 = dispatch_get_specific(*callStackSymbols);
        v35 = MEMORY[0x1E696AF00];
        v36 = v34;
        callStackSymbols = [v35 callStackSymbols];
        v37 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v53 = v34;
        v54 = 2114;
        v55 = v37;
        _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v53 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v31 = _NUAssertFailHandler();
    goto LABEL_17;
  }

  if (!lCopy)
  {
    v28 = NUAssertLogger_27086();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "wallpaperURL != nil"];
      *buf = 138543362;
      v53 = v29;
      _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v30 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v25 = NUAssertLogger_27086();
    v31 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (!v30)
    {
      if (v31)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v33 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v53 = v33;
        _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_19;
    }

LABEL_17:
    if (v31)
    {
      v38 = dispatch_get_specific(*callStackSymbols);
      v39 = MEMORY[0x1E696AF00];
      v40 = v38;
      callStackSymbols4 = [v39 callStackSymbols];
      v42 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v53 = v38;
      v54 = 2114;
      v55 = v42;
      _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_19:

    _NUAssertFailHandler();
  }

  v14 = completionCopy;
  [self ensureResources];
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __67__PISegmentation_exportWallpaperForAsset_toURL_options_completion___block_invoke;
  v49[3] = &unk_1E82AC750;
  v50 = v14;
  selfCopy = self;
  v15 = v14;
  v16 = MEMORY[0x1CCA61740](v49);
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __67__PISegmentation_exportWallpaperForAsset_toURL_options_completion___block_invoke_2;
  v43[3] = &unk_1E82AC778;
  v47 = v16;
  selfCopy2 = self;
  v44 = optionsCopy;
  v45 = lCopy;
  v46 = assetCopy;
  v17 = assetCopy;
  v18 = v16;
  v19 = lCopy;
  v20 = optionsCopy;
  [self loadSegmentationItemForAsset:v17 options:v20 completion:v43];
}

uint64_t __67__PISegmentation_exportWallpaperForAsset_toURL_options_completion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 40);

  return [v2 freeResources];
}

void __67__PISegmentation_exportWallpaperForAsset_toURL_options_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  if (v14)
  {
    v6 = [*(a1 + 32) objectForKeyedSubscript:PISegmentationOptionDisableRendering];
    v7 = [v6 BOOLValue];

    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = [*(a1 + 64) _layerStackOptionsFromOptions:*(a1 + 32)];
    }

    v11 = [*(a1 + 64) _styleFromOptions:*(a1 + 32) item:v14];
    LOBYTE(v13) = 0;
    v12 = [PISegmentationLoader saveSegmentationItem:v14 layerStackOptions:v8 configuration:0 style:v11 layout:0 allowedLayoutStrategies:3 shouldRecalculateLayoutProperties:v13 toWallpaperURL:*(a1 + 40) completion:*(a1 + 56)];
  }

  else
  {
    v9 = MEMORY[0x1E69B3A48];
    v10 = [*(a1 + 48) localIdentifier];
    v11 = [v9 errorWithCode:1 reason:@"Segmentation failure" object:v10 underlyingError:v5];

    (*(*(a1 + 56) + 16))();
  }
}

+ (id)segmentationLoaderForAsset:(id)asset
{
  assetCopy = asset;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = s_segmentationLoaderMap;
  localIdentifier = [assetCopy localIdentifier];
  v8 = [v6 objectForKey:localIdentifier];

  objc_sync_exit(selfCopy);

  return v8;
}

+ (void)setSegmentationLoader:(id)loader forAsset:(id)asset
{
  loaderCopy = loader;
  assetCopy = asset;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = s_segmentationLoaderMap;
  if (s_segmentationLoaderMap)
  {
    if (loaderCopy)
    {
LABEL_3:
      localIdentifier = [assetCopy localIdentifier];
      [v8 setObject:loaderCopy forKey:localIdentifier];
      goto LABEL_6;
    }
  }

  else
  {
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v11 = s_segmentationLoaderMap;
    s_segmentationLoaderMap = strongToStrongObjectsMapTable;

    v8 = s_segmentationLoaderMap;
    if (loaderCopy)
    {
      goto LABEL_3;
    }
  }

  localIdentifier = [assetCopy localIdentifier];
  [v8 removeObjectForKey:localIdentifier];
LABEL_6:

  objc_sync_exit(selfCopy);
}

+ (BOOL)tryLoadSegmentationForColdAsset:(id)asset
{
  v31[3] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v30[0] = PISegmentationOptionDisableDownload;
  v30[1] = PISegmentationOptionDisableRendering;
  v31[0] = MEMORY[0x1E695E118];
  v31[1] = MEMORY[0x1E695E118];
  v30[2] = PISegmentationOptionLowResolution;
  v31[2] = MEMORY[0x1E695E110];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:3];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __50__PISegmentation_tryLoadSegmentationForColdAsset___block_invoke;
  v19 = &unk_1E82AC728;
  v21 = &v22;
  v7 = v5;
  v20 = v7;
  [self loadSegmentationItemForAsset:assetCopy options:v6 completion:&v16];
  v8 = dispatch_time(0, 10000000000);
  v9 = dispatch_group_wait(v7, v8);
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_309_27127);
  }

  v10 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    localIdentifier = [assetCopy localIdentifier];
    v12 = localIdentifier;
    if (v9)
    {
      v13 = @"NO (timeout)";
    }

    else if (*(v23 + 24))
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    *buf = 138543618;
    v27 = localIdentifier;
    v28 = 2114;
    v29 = v13;
    _os_log_impl(&dword_1C7694000, v10, OS_LOG_TYPE_INFO, "Can load cold asset? %{public}@ => %{public}@", buf, 0x16u);
  }

  if (v9)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v23 + 24);
  }

  _Block_object_dispose(&v22, 8);
  return v14;
}

+ ($2753767B6D5E71768FC0A26EE39D5FB2)settlingEffectGatingStatisticsFromScores:(SEL)scores
{
  v6 = a4;
  v7 = [a2 settlingEffectGatingFailuresFromScores:v6];
  *&retstr->var0 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var8 = 0u;
  retstr->var12 = 0;
  v8 = [PISegmentation settlingEffectVideoDecisionForSegmentationScores:v6];
  v9 = [PISegmentation settlingEffectLayoutDecisionForSegmentationScores:v6];

  if ((v7 & 0x40) == 0)
  {
    if ((v7 & 0x800) != 0)
    {
      retstr = (retstr + 4);
    }

    else if ((v7 & 0x80) != 0)
    {
      retstr = (retstr + 8);
    }

    else if ((v7 & 0x100) != 0)
    {
      retstr = (retstr + 12);
    }

    else if ((v7 & 0x200) != 0)
    {
      retstr = (retstr + 16);
    }

    else if (v7)
    {
      retstr = (retstr + 20);
    }

    else if ((v7 & 2) != 0)
    {
      retstr = (retstr + 24);
    }

    else if ((v7 & 4) != 0)
    {
      retstr = (retstr + 28);
    }

    else if ((v7 & 8) != 0)
    {
      retstr = (retstr + 32);
    }

    else if ((v7 & 0x10) != 0)
    {
      retstr = (retstr + 36);
    }

    else if (v8)
    {
      if (v9)
      {
        if ((v7 & 0x20) == 0)
        {
          return result;
        }

        retstr = (retstr + 48);
      }

      else
      {
        retstr = (retstr + 44);
      }
    }

    else
    {
      retstr = (retstr + 40);
    }
  }

  retstr->var0 = 1;
  return result;
}

+ (unint64_t)settlingEffectGatingFailuresFromScores:(id)scores
{
  v3 = [scores objectForKeyedSubscript:*MEMORY[0x1E69C0D18]];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

+ (void)cancelSegmentationForAsset:(id)asset
{
  v24 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  if (!assetCopy)
  {
    v6 = NUAssertLogger_27086();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "asset != nil"];
      *buf = 138543362;
      v21 = v7;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v8 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v10 = NUAssertLogger_27086();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(*v8);
        v15 = MEMORY[0x1E696AF00];
        v16 = v14;
        callStackSymbols = [v15 callStackSymbols];
        v18 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v14;
        v22 = 2114;
        v23 = v18;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v13;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v19 = assetCopy;
  v5 = [self segmentationLoaderForAsset:assetCopy];
  [v5 cancel];
}

+ (void)loadSegmentationItemForAsset:(id)asset options:(id)options completion:(id)completion
{
  v74 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  specific = options;
  completionCopy = completion;
  if (!assetCopy)
  {
    v44 = NUAssertLogger_27086();
    v14 = "asset != nil";
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "asset != nil"];
      *buf = 138543362;
      v71 = v45;
      _os_log_error_impl(&dword_1C7694000, v44, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v15 = NUAssertLogger_27086();
    v46 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v46)
      {
        specific = dispatch_get_specific(callStackSymbols->super.isa);
        v50 = MEMORY[0x1E696AF00];
        v5 = specific;
        callStackSymbols = [v50 callStackSymbols];
        v51 = [(PISegmentationLoader *)callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v71 = specific;
        v72 = 2114;
        v73 = v51;
        _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v46)
    {
      specific = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [specific componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v71 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v49 = _NUAssertFailHandler();
    goto LABEL_52;
  }

  v12 = completionCopy;
  callStackSymbols = [[PISegmentationLoader alloc] initWithParallaxAsset:assetCopy];
  [(PISegmentationLoader *)callStackSymbols setSourceMode:1];
  v14 = [specific objectForKeyedSubscript:PISegmentationOptionClassification];
  if (!v14)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v47 = NUAssertLogger_27086();
    v5 = &qword_1C7845000;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid classification option: %@", v14];
      *buf = 138543362;
      v71 = v48;
      _os_log_error_impl(&dword_1C7694000, v47, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v15 = NUAssertLogger_27086();
    v49 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (!specific)
    {
      if (v49)
      {
        specific = [MEMORY[0x1E696AF00] callStackSymbols];
        callStackSymbols = [specific componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v71 = callStackSymbols;
        _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_54:

      v54 = v14;
      _NUAssertFailHandler();
LABEL_55:
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_309_27127);
LABEL_9:
      v16 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v71 = v6;
        v72 = 2114;
        v73 = v5;
        _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "Failed to deserialize layout configuration: %{public}@, error: %{public}@", buf, 0x16u);
      }

      goto LABEL_11;
    }

LABEL_52:
    if (v49)
    {
      specific = dispatch_get_specific(callStackSymbols->super.isa);
      v52 = MEMORY[0x1E696AF00];
      v5 = specific;
      callStackSymbols = [v52 callStackSymbols];
      v53 = [(PISegmentationLoader *)callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v71 = specific;
      v72 = 2114;
      v73 = v53;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_54;
  }

  -[PISegmentationLoader setClassification:](callStackSymbols, "setClassification:", [v14 unsignedIntegerValue]);
LABEL_5:
  v61 = v12;
  v6 = [specific objectForKeyedSubscript:PISegmentationOptionLayoutConfiguration];
  if (!v6)
  {
    goto LABEL_12;
  }

  v69 = 0;
  v15 = [MEMORY[0x1E69C0938] compoundDeviceConfigurationFromDictionary:v6 error:&v69];
  v5 = v69;
  if (!v15)
  {
    if (*MEMORY[0x1E69B3D78] == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_55;
  }

  [(PISegmentationLoader *)callStackSymbols setLayoutConfiguration:v15];
LABEL_11:

LABEL_12:
  v17 = [specific objectForKeyedSubscript:{PISegmentationOptionLowResolution, v54}];
  v18 = v17;
  if (v17)
  {
    -[PISegmentationLoader setLoadFirstResourceOnly:](callStackSymbols, "setLoadFirstResourceOnly:", [v17 BOOLValue]);
  }

  v19 = [specific objectForKeyedSubscript:PISegmentationOptionDisableDownload];
  v20 = v19;
  if (v19)
  {
    -[PISegmentationLoader setDisableDownload:](callStackSymbols, "setDisableDownload:", [v19 BOOLValue]);
  }

  v21 = [specific objectForKeyedSubscript:PISegmentationOptionPriority];
  v22 = v21;
  if (v21)
  {
    -[PISegmentationLoader setPriority:](callStackSymbols, "setPriority:", [v21 integerValue]);
  }

  v23 = [specific objectForKeyedSubscript:PISegmentationOptionDisableSegmentation];
  v24 = v23;
  if (v23)
  {
    -[PISegmentationLoader setDisableSegmentation:](callStackSymbols, "setDisableSegmentation:", [v23 BOOLValue]);
  }

  v25 = [specific objectForKeyedSubscript:PISegmentationOptionDisableRendering];
  v26 = v25;
  if (v25)
  {
    -[PISegmentationLoader setDisableRendering:](callStackSymbols, "setDisableRendering:", [v25 BOOLValue]);
  }

  v27 = [specific objectForKeyedSubscript:PISegmentationOptionEnableSettlingEffect];
  v56 = v27;
  if (v27)
  {
    v28 = [v27 BOOLValue] ^ 1;
  }

  else
  {
    v28 = 1;
  }

  [(PISegmentationLoader *)callStackSymbols setDisableSettlingEffect:v28];
  v29 = [specific objectForKeyedSubscript:PISegmentationOptionSettlingEffectGatingLevel];
  v62 = v6;
  v55 = v29;
  if (v29)
  {
    integerValue = [v29 integerValue];
  }

  else
  {
    integerValue = 2;
  }

  v60 = v18;
  [(PISegmentationLoader *)callStackSymbols setSettlingEffectGatingLevel:integerValue];
  v31 = [specific objectForKeyedSubscript:PISegmentationOptionEnableSpatialPhoto];
  v32 = v31;
  v33 = assetCopy;
  if (v31)
  {
    v34 = [v31 BOOLValue] ^ 1;
  }

  else
  {
    v34 = 1;
  }

  [(PISegmentationLoader *)callStackSymbols setDisableSpatialPhoto:v34];
  v35 = [specific objectForKeyedSubscript:PISegmentationOptionSpatialPhotoGatingLevel];
  v36 = v35;
  v63 = v14;
  if (v35)
  {
    integerValue2 = [v35 integerValue];
  }

  else
  {
    integerValue2 = 2;
  }

  v57 = v24;
  v59 = v20;
  [(PISegmentationLoader *)callStackSymbols setSpatialPhotoGatingLevel:integerValue2];
  v38 = [specific objectForKeyedSubscript:PISegmentationOptionOutOfProcess];
  v39 = v38;
  if (v38)
  {
    -[PISegmentationLoader setPerformMediaAnalysisInProcess:](callStackSymbols, "setPerformMediaAnalysisInProcess:", [v38 BOOLValue] ^ 1);
  }

  v58 = v22;
  v40 = [specific objectForKeyedSubscript:PISegmentationOptionPetsRegions];
  v41 = [specific objectForKeyedSubscript:PISegmentationOptionPetsFaceRegions];
  if (v40 | v41)
  {
    [(PISegmentationLoader *)callStackSymbols setPetsRegions:v40];
    [(PISegmentationLoader *)callStackSymbols setPetsFaceRegions:v41];
  }

  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v65[2] = __66__PISegmentation_loadSegmentationItemForAsset_options_completion___block_invoke;
  v65[3] = &unk_1E82AC700;
  v67 = v61;
  selfCopy = self;
  v66 = v33;
  v42 = v33;
  v43 = v61;
  [(PISegmentationLoader *)callStackSymbols loadSegmentationItemWithCompletion:v65];
  [self setSegmentationLoader:callStackSymbols forAsset:v42];
}

uint64_t __66__PISegmentation_loadSegmentationItemForAsset_options_completion___block_invoke(void *a1)
{
  (*(a1[5] + 16))();
  v2 = a1[6];
  v3 = a1[4];

  return [v2 setSegmentationLoader:0 forAsset:v3];
}

+ (void)computeSegmentationScoresForAsset:(id)asset options:(id)options completion:(id)completion
{
  v46 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  optionsCopy = options;
  completionCopy = completion;
  if (!assetCopy)
  {
    v17 = NUAssertLogger_27086();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "asset != nil"];
      *buf = 138543362;
      v43 = v18;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v21 = NUAssertLogger_27086();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v22)
      {
        v30 = dispatch_get_specific(*callStackSymbols);
        v31 = MEMORY[0x1E696AF00];
        v32 = v30;
        callStackSymbols = [v31 callStackSymbols];
        v33 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v43 = v30;
        v44 = 2114;
        v45 = v33;
        _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v43 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v27 = _NUAssertFailHandler();
    goto LABEL_17;
  }

  if (!optionsCopy)
  {
    v24 = NUAssertLogger_27086();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "options != nil"];
      *buf = 138543362;
      v43 = v25;
      _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v26 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v21 = NUAssertLogger_27086();
    v27 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (!v26)
    {
      if (v27)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v29 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v43 = v29;
        _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_19;
    }

LABEL_17:
    if (v27)
    {
      v34 = dispatch_get_specific(*callStackSymbols);
      v35 = MEMORY[0x1E696AF00];
      v36 = v34;
      callStackSymbols4 = [v35 callStackSymbols];
      v38 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v43 = v34;
      v44 = 2114;
      v45 = v38;
      _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_19:

    _NUAssertFailHandler();
  }

  v11 = completionCopy;
  v12 = [optionsCopy objectForKeyedSubscript:PISegmentationOptionEnableSettlingEffect];
  bOOLValue = [v12 BOOLValue];

  v14 = [optionsCopy mutableCopy];
  v15 = [MEMORY[0x1E696AD98] numberWithInt:bOOLValue ^ 1u];
  [v14 setObject:v15 forKeyedSubscript:PISegmentationOptionLowResolution];

  [self ensureResources];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __71__PISegmentation_computeSegmentationScoresForAsset_options_completion___block_invoke;
  v39[3] = &unk_1E82AC6D8;
  v40 = v11;
  selfCopy = self;
  v16 = v11;
  [self loadSegmentationItemForAsset:assetCopy options:v14 completion:v39];
}

uint64_t __71__PISegmentation_computeSegmentationScoresForAsset_options_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 scores];
  (*(v5 + 16))(v5, v7, v6);

  v8 = *(a1 + 40);

  return [v8 freeResources];
}

@end
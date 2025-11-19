@interface PISegmentation
+ ($2753767B6D5E71768FC0A26EE39D5FB2)settlingEffectGatingStatisticsFromScores:(SEL)a3;
+ (BOOL)tryLoadSegmentationForColdAsset:(id)a3;
+ (CGImage)createFullExtentPreviewImageForWallpaperAtURL:(id)a3 error:(id *)a4;
+ (id)_styleFromOptions:(id)a3 item:(id)a4;
+ (id)segmentationLoaderForAsset:(id)a3;
+ (unint64_t)_layerStackOptionsFromOptions:(id)a3;
+ (unint64_t)settlingEffectGatingFailuresFromScores:(id)a3;
+ (void)_createReadOnlyCopyOfPosterAtURL:(id)a3 exportToURL:(id)a4 options:(id)a5 completion:(id)a6;
+ (void)_upgradeFullPosterAtURL:(id)a3 exportToURL:(id)a4 options:(id)a5 completion:(id)a6;
+ (void)_upgradeWallpaperAtURL:(id)a3 existingEditConfiguration:(id)a4 exportToURL:(id)a5 options:(id)a6 completion:(id)a7;
+ (void)cancelSegmentationForAsset:(id)a3;
+ (void)computeSegmentationScoresForAsset:(id)a3 options:(id)a4 completion:(id)a5;
+ (void)exportWallpaperForAsset:(id)a3 toURL:(id)a4 options:(id)a5 completion:(id)a6;
+ (void)loadSegmentationDataForAsset:(id)a3 options:(id)a4 completion:(id)a5;
+ (void)loadSegmentationItemForAsset:(id)a3 options:(id)a4 completion:(id)a5;
+ (void)setSegmentationLoader:(id)a3 forAsset:(id)a4;
+ (void)upgradePosterConfiguration:(id)a3 atURL:(id)a4 exportTo:(id)a5 options:(id)a6 completion:(id)a7;
+ (void)upgradeWallpaperAtURL:(id)a3 exportToURL:(id)a4 options:(id)a5 completion:(id)a6;
@end

@implementation PISegmentation

+ (void)loadSegmentationDataForAsset:(id)a3 options:(id)a4 completion:(id)a5
{
  v42 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v7)
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
        v31 = [v29 callStackSymbols];
        v32 = [v31 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v39 = v28;
        v40 = 2114;
        v41 = v32;
        _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v25)
    {
      v26 = [MEMORY[0x1E696AF00] callStackSymbols];
      v27 = [v26 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v39 = v27;
      _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v10 = v9;
  v11 = [v8 objectForKeyedSubscript:PISegmentationOptionLayoutConfiguration];
  v12 = [v8 objectForKeyedSubscript:PISegmentationOptionLayoutProvider];
  v13 = [v8 objectForKeyedSubscript:PISegmentationOptionSegmentationData];
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

  v14 = [[PISegmentationLoader alloc] initWithParallaxAsset:v7];
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
    v16 = [v13 item];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __66__PISegmentation_loadSegmentationDataForAsset_options_completion___block_invoke;
    v36[3] = &unk_1E82AC8E0;
    v37 = v10;
    [v15 refreshSegmentationItem:v16 completion:v36];
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

    v16 = v34;
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

+ (CGImage)createFullExtentPreviewImageForWallpaperAtURL:(id)a3 error:(id *)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (v7)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    [v31 handleFailureInMethod:a2 object:a1 file:@"PISegmentation.m" lineNumber:844 description:{@"Invalid parameter not satisfying: %@", @"sourceURL != nil"}];

    if (a4)
    {
      goto LABEL_3;
    }
  }

  v32 = [MEMORY[0x1E696AAA8] currentHandler];
  [v32 handleFailureInMethod:a2 object:a1 file:@"PISegmentation.m" lineNumber:845 description:{@"Invalid parameter not satisfying: %@", @"outError != nil"}];

LABEL_3:
  v8 = [PISegmentationLoader loadCompoundLayerStackFromWallpaperURL:v7 options:2 error:a4];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 portraitLayerStack];
    v11 = [v10 backgroundBackfillLayer];
    if (v11)
    {
      v12 = objc_alloc(MEMORY[0x1E695F620]);
      v13 = [v12 initWithOptions:MEMORY[0x1E695E0F8]];
      v14 = [PISegmentationHelper imageFromImageLayer:v11];
      v15 = [v10 foregroundBackfillLayer];
      if (v15)
      {
        v16 = [PISegmentationHelper imageFromImageLayer:v15];
        v17 = [v16 imageByCompositingOverImage:v14];

        v14 = v17;
      }

      v18 = [v10 layout];
      [v18 imageSize];
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

      [v11 pixelSize];
      PFSizeWithAspectRatioFittingSize();
      v26 = v25;
      v28 = v27;

      v29 = [v14 imageByCroppingToRect:{0.0, 0.0, v26, v28}];

      [v29 extent];
      v24 = [v13 createCGImage:v29 fromRect:?];
      if (!v24)
      {
        *a4 = [MEMORY[0x1E69B3A48] failureError:@"Failed to render image" object:v7];
      }
    }

    else
    {
      [MEMORY[0x1E69B3A48] missingError:@"Missing required layer in layer stack" object:v7];
      *a4 = v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

+ (void)upgradePosterConfiguration:(id)a3 atURL:(id)a4 exportTo:(id)a5 options:(id)a6 completion:(id)a7
{
  v100 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v72 = a4;
  v70 = a5;
  v12 = a6;
  v61 = a7;
  v13 = [v12 mutableCopy];
  v74 = v11;
  v14 = v11;
  v15 = v13;
  v16 = [v14 editConfiguration];
  v17 = [v16 style];

  if (v17)
  {
    v18 = [MEMORY[0x1E69C0788] dictionaryWithStyle:v17];
    [v15 setObject:v18 forKeyedSubscript:PISegmentationOptionStyle];
  }

  v19 = [MEMORY[0x1E69C0938] deviceConfiguration];
  v20 = [v12 objectForKeyedSubscript:PISegmentationOptionLayoutConfiguration];
  if (v20)
  {
    v94 = 0;
    v21 = [MEMORY[0x1E69C0938] compoundDeviceConfigurationFromDictionary:v20 error:&v94];
    v22 = v94;
    if (v21)
    {
      v23 = v21;

      v19 = v23;
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
  v26 = [v74 media];
  v68 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v26, "count")}];
  v27 = [v12 objectForKeyedSubscript:PISegmentationOptionLayerStackOptions];
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
  v64 = [v12 objectForKeyedSubscript:PISegmentationOptionAllowedLayoutStrategies];
  if (v64)
  {
    v32 = [v64 unsignedIntegerValue];
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_309_27127);
    }

    v33 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v97 = v32;
      _os_log_impl(&dword_1C7694000, v33, OS_LOG_TYPE_INFO, "Upgrading poster media: Changing allowed layout strategies to %lu", buf, 0xCu);
    }

    [v25 setAllowedLayoutStrategies:v32];
  }

  v69 = v25;
  v60 = v19;
  v63 = v12;
  v34 = MEMORY[0x1E696AD98];
  v35 = [v74 editConfiguration];
  v36 = [v34 numberWithBool:{objc_msgSend(v35, "preserveLegacyHeadroom")}];
  v75 = v15;
  [v15 setObject:v36 forKeyedSubscript:PISegmentationOptionPreserveLegacyHeadroom];

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  obj = v26;
  v37 = [obj countByEnumeratingWithState:&v90 objects:v95 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v91;
    do
    {
      v40 = 0;
      v41 = v17;
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
          v45 = [v42 assetUUID];
          *buf = 138543618;
          v97 = v45;
          v98 = 2114;
          v99 = v75;
          _os_log_impl(&dword_1C7694000, v44, OS_LOG_TYPE_INFO, "Upgrading poster media: %{public}@ with options: %{public}@", buf, 0x16u);
        }

        v46 = [v42 subpath];
        v47 = [v72 URLByAppendingPathComponent:v46];

        v48 = [v42 subpath];
        v49 = [v70 URLByAppendingPathComponent:v48];

        v50 = [v42 editConfiguration];
        v17 = [v50 style];

        if (v17)
        {
          v51 = [MEMORY[0x1E69C0788] dictionaryWithStyle:v17];
          [v75 setObject:v51 forKeyedSubscript:PISegmentationOptionStyle];
        }

        v52 = [v42 editConfiguration];
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
        [a1 _upgradeWallpaperAtURL:v47 existingEditConfiguration:v52 exportToURL:v49 options:v75 completion:v85];

        dispatch_group_wait(v53, 0xFFFFFFFFFFFFFFFFLL);
        ++v40;
        v41 = v17;
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
  v82 = v70;
  v83 = v72;
  v84 = v61;
  v73 = v72;
  v71 = v70;
  v67 = v60;
  v55 = v69;
  v56 = v61;
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

+ (void)_createReadOnlyCopyOfPosterAtURL:(id)a3 exportToURL:(id)a4 options:(id)a5 completion:(id)a6
{
  v76 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a6;
  v70 = 0;
  v11 = [MEMORY[0x1E69C07E8] loadFromURL:v8 error:&v70];
  v12 = v70;
  if (v11)
  {
    v13 = [MEMORY[0x1E696AC08] defaultManager];
    v14 = [v9 path];
    v15 = [v13 fileExistsAtPath:v14];

    if ((v15 & 1) == 0)
    {
      v69 = v12;
      v16 = [v13 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:&v69];
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
          v48 = [v9 path];
          *buf = 138543618;
          v73 = v48;
          v74 = 2114;
          v75 = v17;
          _os_log_error_impl(&dword_1C7694000, v47, OS_LOG_TYPE_ERROR, "Failed to create destination: '%{public}@', error: %{public}@", buf, 0x16u);
        }

        obj = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to create destination" object:v9 underlyingError:v17];
        v10[2](v10, 0);
LABEL_43:

        v12 = v17;
        goto LABEL_44;
      }

      v12 = v17;
    }

    v56 = v13;
    v57 = v10;
    v18 = [v11 media];
    v55 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v18, "count")}];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    obj = v18;
    v19 = [obj countByEnumeratingWithState:&v65 objects:v71 count:16];
    v58 = v11;
    if (v19)
    {
      v20 = v19;
      v60 = *v66;
      v61 = v9;
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
        v24 = [v23 subpath];
        v25 = v8;
        v26 = [v8 URLByAppendingPathComponent:v24];

        v27 = [v23 subpath];
        v28 = [v61 URLByAppendingPathComponent:v27];

        v29 = v21[149];
        v64 = v12;
        v30 = [(__objc2_class *)v29 loadCompoundLayerStackFromWallpaperURL:v26 options:1 error:&v64];
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

          v9 = v61;
          v41 = *MEMORY[0x1E69B3D80];
          v10 = v57;
          if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
          {
            v51 = v41;
            v52 = [v26 path];
            *buf = 138543618;
            v73 = v52;
            v74 = 2114;
            v75 = v12;
            _os_log_error_impl(&dword_1C7694000, v51, OS_LOG_TYPE_ERROR, "Failed to save layer stack: '%{public}@', error: %{public}@", buf, 0x16u);
          }

          v40 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to save layer stack" object:v26 underlyingError:v12];
          v17 = v12;
LABEL_36:
          (v10[2])(v10, 0, v40);

          v34 = obj;
          v35 = v55;
          goto LABEL_42;
        }

        ++v22;
        v8 = v25;
        v21 = v31;
        if (v20 == v22)
        {
          v20 = [obj countByEnumeratingWithState:&v65 objects:v71 count:16];
          v9 = v61;
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

      v9 = v61;
      v39 = *MEMORY[0x1E69B3D80];
      v10 = v57;
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
      {
        v49 = v39;
        v50 = [v26 path];
        *buf = 138543618;
        v73 = v50;
        v74 = 2114;
        v75 = v17;
        _os_log_error_impl(&dword_1C7694000, v49, OS_LOG_TYPE_ERROR, "Failed to load layer stack: '%{public}@', error: %{public}@", buf, 0x16u);
      }

      v40 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to load layer stack" object:v26 underlyingError:v17];
      v30 = 0;
      goto LABEL_36;
    }

LABEL_14:

    v34 = [v11 copy];
    v35 = v55;
    [v34 setMedia:v55];
    v62 = v12;
    v36 = [v34 saveToURL:v9 error:&v62];
    v17 = v62;

    if (v36)
    {
      v25 = v8;
      v26 = [v34 editConfiguration];
      v10 = v57;
      (v57[2])(v57, v26, 0);
    }

    else
    {
      v10 = v57;
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_309_27127);
      }

      v25 = v8;
      v42 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
      {
        v53 = v42;
        v54 = [v9 path];
        *buf = 138543618;
        v73 = v54;
        v74 = 2114;
        v75 = v17;
        _os_log_error_impl(&dword_1C7694000, v53, OS_LOG_TYPE_ERROR, "Failed to save poster configuration to '%{public}@', error: %{public}@", buf, 0x16u);
      }

      v43 = MEMORY[0x1E69B3A48];
      v26 = [v9 path];
      v44 = [v43 errorWithCode:1 reason:@"Failed to save poster configuration" object:v26 underlyingError:v17];
      (v57[2])(v57, 0, v44);
    }

LABEL_42:

    v8 = v25;
    v11 = v58;
    v13 = v56;
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
    v46 = [v8 path];
    *buf = 138543618;
    v73 = v46;
    v74 = 2114;
    v75 = v12;
    _os_log_error_impl(&dword_1C7694000, v45, OS_LOG_TYPE_ERROR, "Failed to load poster configuration from: '%{public}@', error: %{public}@", buf, 0x16u);
  }

  v13 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to load poster configuration from source URL" object:v8 underlyingError:v12];
  (v10[2])(v10, 0, v13);
LABEL_44:
}

+ (void)_upgradeFullPosterAtURL:(id)a3 exportToURL:(id)a4 options:(id)a5 completion:(id)a6
{
  v29 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24 = 0;
  v14 = [MEMORY[0x1E69C07E8] loadFromURL:v10 error:&v24];
  v15 = v24;
  if (v14)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __73__PISegmentation__upgradeFullPosterAtURL_exportToURL_options_completion___block_invoke;
    v20[3] = &unk_1E82AC868;
    v21 = v10;
    v22 = v11;
    v23 = v13;
    [a1 upgradePosterConfiguration:v14 atURL:v21 exportTo:v22 options:v12 completion:v20];

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
      v19 = [v10 path];
      *buf = 138543618;
      v26 = v19;
      v27 = 2114;
      v28 = v15;
      _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "Failed to load poster configuration from: '%{public}@', error: %{public}@", buf, 0x16u);
    }

    v16 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to load poster configuration from source URL" object:v10 underlyingError:v15];
    (*(v13 + 2))(v13, 0, v16);
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

+ (void)_upgradeWallpaperAtURL:(id)a3 existingEditConfiguration:(id)a4 exportToURL:(id)a5 options:(id)a6 completion:(id)a7
{
  v71 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v49 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v66 = 0;
  v51 = [PISegmentationLoader loadSegmentationItemFromWallpaperURL:v12 error:&v66];
  v16 = v66;
  if (v51)
  {
    v48 = [MEMORY[0x1E69C0938] deviceConfiguration];
    v47 = [v14 objectForKeyedSubscript:PISegmentationOptionLayoutConfiguration];
    if (v47)
    {
      v65 = 0;
      v17 = [MEMORY[0x1E69C0938] compoundDeviceConfigurationFromDictionary:v47 error:&v65];
      v18 = v65;
      if (v17)
      {
        v19 = v17;

        v48 = v19;
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
    v50 = [PISegmentationLoader loadCompoundLayerStackFromWallpaperURL:v12 options:0 error:&v64];
    v46 = v64;

    if (!v50)
    {
      v15[2](v15, 0, v46);
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
    v21 = v14;
    v61 = v21;
    v62 = v49;
    v63 = a1;
    v43 = MEMORY[0x1CCA61740](v59);
    v22 = [v50 portraitLayerStack];
    if ([v22 spatialPhotoEnabled])
    {
      v23 = [v44 isSpatialPhotoAvailable];

      if (!v23)
      {
        v24 = 1;
        goto LABEL_19;
      }

      v22 = PIParallaxDefaultSpatialPhotoProducer();
      [v22 enableBackgroundDownload];
      v24 = 257;
    }

    else
    {
      v24 = 1;
    }

LABEL_19:
    v42 = [a1 _layerStackOptionsFromOptions:v21];
    v25 = [v21 objectForKeyedSubscript:PISegmentationOptionAllowedLayoutStrategies];
    v26 = v25;
    if (v25)
    {
      v27 = [v25 unsignedIntValue];
      v41 = v27;
      if (PFPosterIsAdaptiveLayoutEnabled())
      {
        v45 = (v27 >> 1) & 1;
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
    v29 = [v28 BOOLValue];

    if (v29)
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
    if ((v29 & 1) == 0)
    {
      v33 = [v50 layout];
      v32 = [v33 layoutByUpgradingToConfiguration:v48];

      v34 = (v43)[2](v43, v50, v32);
      v35 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v34;

      v31 = *(*&buf[8] + 40);
    }

    v40 = v31;
    v36 = [v31 style];
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __98__PISegmentation__upgradeWallpaperAtURL_existingEditConfiguration_exportToURL_options_completion___block_invoke_159;
    v52[3] = &unk_1E82AC840;
    v53 = v12;
    v54 = v13;
    v58 = v29 ^ 1;
    v55 = v15;
    v57 = buf;
    v37 = v43;
    v56 = v37;
    LOBYTE(v39) = v45;
    v38 = [PISegmentationLoader saveSegmentationItem:v44 layerStackOptions:v42 | v24 configuration:v40 style:v36 layout:v32 allowedLayoutStrategies:v41 shouldRecalculateLayoutProperties:v39 toWallpaperURL:v54 completion:v52];

    _Block_object_dispose(buf, 8);
    goto LABEL_32;
  }

  v15[2](v15, 0, v16);
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

+ (void)upgradeWallpaperAtURL:(id)a3 exportToURL:(id)a4 options:(id)a5 completion:(id)a6
{
  v63 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
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
        v44 = [v42 callStackSymbols];
        v45 = [v44 componentsJoinedByString:@"\n"];
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
      v39 = [MEMORY[0x1E696AF00] callStackSymbols];
      v40 = [v39 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v40;
      _os_log_error_impl(&dword_1C7694000, v32, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

LABEL_34:

    _NUAssertFailHandler();
    __break(1u);
  }

  if (!v11)
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
      v49 = [v47 callStackSymbols];
      v50 = [v49 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      *&buf[4] = v46;
      *&buf[12] = 2114;
      *&buf[14] = v50;
      _os_log_error_impl(&dword_1C7694000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_34;
  }

  v14 = v13;
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_309_27127);
  }

  v15 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    v17 = [v10 path];
    v18 = [v11 path];
    *buf = 138543874;
    *&buf[4] = v17;
    *&buf[12] = 2114;
    *&buf[14] = v18;
    *&buf[22] = 2114;
    v61 = v12;
    _os_log_impl(&dword_1C7694000, v16, OS_LOG_TYPE_DEFAULT, "Upgrading wallpaper at %{public}@ to %{public}@, options: %{public}@", buf, 0x20u);
  }

  v19 = [v12 objectForKeyedSubscript:PISegmentationOptionOutOfProcess];
  v20 = [v19 BOOLValue];

  if (v20)
  {
    v21 = [v12 mutableCopy];
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
    v24 = [v22 sharedAnalysisService];
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __71__PISegmentation_upgradeWallpaperAtURL_exportToURL_options_completion___block_invoke;
    v54[3] = &unk_1E82AC7C8;
    v55 = v14;
    [v24 requestWallpaperUpgradeAtURL:v10 toDestinationURL:v11 withOptions:v21 andCompletionHandler:v54];
  }

  else
  {
    [a1 ensureResources];
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __71__PISegmentation_upgradeWallpaperAtURL_exportToURL_options_completion___block_invoke_2;
    v51[3] = &unk_1E82AC7F0;
    v52 = v14;
    v53 = a1;
    v25 = MEMORY[0x1CCA61740](v51);
    v26 = [v12 objectForKeyedSubscript:PISegmentationOptionWallpaperUpgradeMode];
    v27 = [v26 integerValue];

    switch(v27)
    {
      case 2:
        [a1 _createReadOnlyCopyOfPosterAtURL:v10 exportToURL:v11 options:v12 completion:v25];
        break;
      case 1:
        [a1 _upgradeFullPosterAtURL:v10 exportToURL:v11 options:v12 completion:v25];
        break;
      case 0:
        [a1 _upgradeWallpaperAtURL:v10 existingEditConfiguration:0 exportToURL:v11 options:v12 completion:v25];
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

+ (id)_styleFromOptions:(id)a3 item:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKeyedSubscript:PISegmentationOptionStyle];
  if (!v7)
  {
    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v9 = [v6 availableStyles];
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
    v12 = [v5 objectForKeyedSubscript:PISegmentationOptionStyleCategory];
    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v6 suggestedStyleForCategory:v12];
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

+ (unint64_t)_layerStackOptionsFromOptions:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:PISegmentationOptionLayerStackOptions];
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
          v18 = [v16 callStackSymbols];
          v19 = [v18 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v21 = v15;
          v22 = 2114;
          v23 = v19;
          _os_log_error_impl(&dword_1C7694000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v12)
      {
        v13 = [MEMORY[0x1E696AF00] callStackSymbols];
        v14 = [v13 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v21 = v14;
        _os_log_error_impl(&dword_1C7694000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      _NUAssertFailHandler();
    }

    v5 = [v4 unsignedIntegerValue];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

+ (void)exportWallpaperForAsset:(id)a3 toURL:(id)a4 options:(id)a5 completion:(id)a6
{
  v56 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    v21 = NUAssertLogger_27086();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "asset != nil"];
      *buf = 138543362;
      v53 = v22;
      _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v23 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v25 = NUAssertLogger_27086();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v26)
      {
        v34 = dispatch_get_specific(*v23);
        v35 = MEMORY[0x1E696AF00];
        v36 = v34;
        v23 = [v35 callStackSymbols];
        v37 = [v23 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v53 = v34;
        v54 = 2114;
        v55 = v37;
        _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      v27 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [v27 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v53 = v23;
      _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v31 = _NUAssertFailHandler();
    goto LABEL_17;
  }

  if (!v11)
  {
    v28 = NUAssertLogger_27086();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "wallpaperURL != nil"];
      *buf = 138543362;
      v53 = v29;
      _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v23 = MEMORY[0x1E69B38E8];
    v30 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v25 = NUAssertLogger_27086();
    v31 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (!v30)
    {
      if (v31)
      {
        v32 = [MEMORY[0x1E696AF00] callStackSymbols];
        v33 = [v32 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v53 = v33;
        _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_19;
    }

LABEL_17:
    if (v31)
    {
      v38 = dispatch_get_specific(*v23);
      v39 = MEMORY[0x1E696AF00];
      v40 = v38;
      v41 = [v39 callStackSymbols];
      v42 = [v41 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v53 = v38;
      v54 = 2114;
      v55 = v42;
      _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_19:

    _NUAssertFailHandler();
  }

  v14 = v13;
  [a1 ensureResources];
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __67__PISegmentation_exportWallpaperForAsset_toURL_options_completion___block_invoke;
  v49[3] = &unk_1E82AC750;
  v50 = v14;
  v51 = a1;
  v15 = v14;
  v16 = MEMORY[0x1CCA61740](v49);
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __67__PISegmentation_exportWallpaperForAsset_toURL_options_completion___block_invoke_2;
  v43[3] = &unk_1E82AC778;
  v47 = v16;
  v48 = a1;
  v44 = v12;
  v45 = v11;
  v46 = v10;
  v17 = v10;
  v18 = v16;
  v19 = v11;
  v20 = v12;
  [a1 loadSegmentationItemForAsset:v17 options:v20 completion:v43];
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

+ (id)segmentationLoaderForAsset:(id)a3
{
  v4 = a3;
  v5 = a1;
  objc_sync_enter(v5);
  v6 = s_segmentationLoaderMap;
  v7 = [v4 localIdentifier];
  v8 = [v6 objectForKey:v7];

  objc_sync_exit(v5);

  return v8;
}

+ (void)setSegmentationLoader:(id)a3 forAsset:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = a1;
  objc_sync_enter(v7);
  v8 = s_segmentationLoaderMap;
  if (s_segmentationLoaderMap)
  {
    if (v12)
    {
LABEL_3:
      v9 = [v6 localIdentifier];
      [v8 setObject:v12 forKey:v9];
      goto LABEL_6;
    }
  }

  else
  {
    v10 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v11 = s_segmentationLoaderMap;
    s_segmentationLoaderMap = v10;

    v8 = s_segmentationLoaderMap;
    if (v12)
    {
      goto LABEL_3;
    }
  }

  v9 = [v6 localIdentifier];
  [v8 removeObjectForKey:v9];
LABEL_6:

  objc_sync_exit(v7);
}

+ (BOOL)tryLoadSegmentationForColdAsset:(id)a3
{
  v31[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
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
  [a1 loadSegmentationItemForAsset:v4 options:v6 completion:&v16];
  v8 = dispatch_time(0, 10000000000);
  v9 = dispatch_group_wait(v7, v8);
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_309_27127);
  }

  v10 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [v4 localIdentifier];
    v12 = v11;
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
    v27 = v11;
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

+ ($2753767B6D5E71768FC0A26EE39D5FB2)settlingEffectGatingStatisticsFromScores:(SEL)a3
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

+ (unint64_t)settlingEffectGatingFailuresFromScores:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:*MEMORY[0x1E69C0D18]];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

+ (void)cancelSegmentationForAsset:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
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
        v17 = [v15 callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v14;
        v22 = 2114;
        v23 = v18;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v13;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v19 = v4;
  v5 = [a1 segmentationLoaderForAsset:v4];
  [v5 cancel];
}

+ (void)loadSegmentationItemForAsset:(id)a3 options:(id)a4 completion:(id)a5
{
  v74 = *MEMORY[0x1E69E9840];
  v9 = a3;
  specific = a4;
  v11 = a5;
  if (!v9)
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

    v13 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v15 = NUAssertLogger_27086();
    v46 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v46)
      {
        specific = dispatch_get_specific(v13->super.isa);
        v50 = MEMORY[0x1E696AF00];
        v5 = specific;
        v13 = [v50 callStackSymbols];
        v51 = [(PISegmentationLoader *)v13 componentsJoinedByString:@"\n"];
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
      v13 = [specific componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v71 = v13;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v49 = _NUAssertFailHandler();
    goto LABEL_52;
  }

  v12 = v11;
  v13 = [[PISegmentationLoader alloc] initWithParallaxAsset:v9];
  [(PISegmentationLoader *)v13 setSourceMode:1];
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

    v13 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v15 = NUAssertLogger_27086();
    v49 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (!specific)
    {
      if (v49)
      {
        specific = [MEMORY[0x1E696AF00] callStackSymbols];
        v13 = [specific componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v71 = v13;
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
      specific = dispatch_get_specific(v13->super.isa);
      v52 = MEMORY[0x1E696AF00];
      v5 = specific;
      v13 = [v52 callStackSymbols];
      v53 = [(PISegmentationLoader *)v13 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v71 = specific;
      v72 = 2114;
      v73 = v53;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_54;
  }

  -[PISegmentationLoader setClassification:](v13, "setClassification:", [v14 unsignedIntegerValue]);
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

  [(PISegmentationLoader *)v13 setLayoutConfiguration:v15];
LABEL_11:

LABEL_12:
  v17 = [specific objectForKeyedSubscript:{PISegmentationOptionLowResolution, v54}];
  v18 = v17;
  if (v17)
  {
    -[PISegmentationLoader setLoadFirstResourceOnly:](v13, "setLoadFirstResourceOnly:", [v17 BOOLValue]);
  }

  v19 = [specific objectForKeyedSubscript:PISegmentationOptionDisableDownload];
  v20 = v19;
  if (v19)
  {
    -[PISegmentationLoader setDisableDownload:](v13, "setDisableDownload:", [v19 BOOLValue]);
  }

  v21 = [specific objectForKeyedSubscript:PISegmentationOptionPriority];
  v22 = v21;
  if (v21)
  {
    -[PISegmentationLoader setPriority:](v13, "setPriority:", [v21 integerValue]);
  }

  v23 = [specific objectForKeyedSubscript:PISegmentationOptionDisableSegmentation];
  v24 = v23;
  if (v23)
  {
    -[PISegmentationLoader setDisableSegmentation:](v13, "setDisableSegmentation:", [v23 BOOLValue]);
  }

  v25 = [specific objectForKeyedSubscript:PISegmentationOptionDisableRendering];
  v26 = v25;
  if (v25)
  {
    -[PISegmentationLoader setDisableRendering:](v13, "setDisableRendering:", [v25 BOOLValue]);
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

  [(PISegmentationLoader *)v13 setDisableSettlingEffect:v28];
  v29 = [specific objectForKeyedSubscript:PISegmentationOptionSettlingEffectGatingLevel];
  v62 = v6;
  v55 = v29;
  if (v29)
  {
    v30 = [v29 integerValue];
  }

  else
  {
    v30 = 2;
  }

  v60 = v18;
  [(PISegmentationLoader *)v13 setSettlingEffectGatingLevel:v30];
  v31 = [specific objectForKeyedSubscript:PISegmentationOptionEnableSpatialPhoto];
  v32 = v31;
  v33 = v9;
  if (v31)
  {
    v34 = [v31 BOOLValue] ^ 1;
  }

  else
  {
    v34 = 1;
  }

  [(PISegmentationLoader *)v13 setDisableSpatialPhoto:v34];
  v35 = [specific objectForKeyedSubscript:PISegmentationOptionSpatialPhotoGatingLevel];
  v36 = v35;
  v63 = v14;
  if (v35)
  {
    v37 = [v35 integerValue];
  }

  else
  {
    v37 = 2;
  }

  v57 = v24;
  v59 = v20;
  [(PISegmentationLoader *)v13 setSpatialPhotoGatingLevel:v37];
  v38 = [specific objectForKeyedSubscript:PISegmentationOptionOutOfProcess];
  v39 = v38;
  if (v38)
  {
    -[PISegmentationLoader setPerformMediaAnalysisInProcess:](v13, "setPerformMediaAnalysisInProcess:", [v38 BOOLValue] ^ 1);
  }

  v58 = v22;
  v40 = [specific objectForKeyedSubscript:PISegmentationOptionPetsRegions];
  v41 = [specific objectForKeyedSubscript:PISegmentationOptionPetsFaceRegions];
  if (v40 | v41)
  {
    [(PISegmentationLoader *)v13 setPetsRegions:v40];
    [(PISegmentationLoader *)v13 setPetsFaceRegions:v41];
  }

  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v65[2] = __66__PISegmentation_loadSegmentationItemForAsset_options_completion___block_invoke;
  v65[3] = &unk_1E82AC700;
  v67 = v61;
  v68 = a1;
  v66 = v33;
  v42 = v33;
  v43 = v61;
  [(PISegmentationLoader *)v13 loadSegmentationItemWithCompletion:v65];
  [a1 setSegmentationLoader:v13 forAsset:v42];
}

uint64_t __66__PISegmentation_loadSegmentationItemForAsset_options_completion___block_invoke(void *a1)
{
  (*(a1[5] + 16))();
  v2 = a1[6];
  v3 = a1[4];

  return [v2 setSegmentationLoader:0 forAsset:v3];
}

+ (void)computeSegmentationScoresForAsset:(id)a3 options:(id)a4 completion:(id)a5
{
  v46 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    v17 = NUAssertLogger_27086();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "asset != nil"];
      *buf = 138543362;
      v43 = v18;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v19 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v21 = NUAssertLogger_27086();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v22)
      {
        v30 = dispatch_get_specific(*v19);
        v31 = MEMORY[0x1E696AF00];
        v32 = v30;
        v19 = [v31 callStackSymbols];
        v33 = [v19 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v43 = v30;
        v44 = 2114;
        v45 = v33;
        _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      v23 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [v23 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v43 = v19;
      _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v27 = _NUAssertFailHandler();
    goto LABEL_17;
  }

  if (!v9)
  {
    v24 = NUAssertLogger_27086();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "options != nil"];
      *buf = 138543362;
      v43 = v25;
      _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v19 = MEMORY[0x1E69B38E8];
    v26 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v21 = NUAssertLogger_27086();
    v27 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (!v26)
    {
      if (v27)
      {
        v28 = [MEMORY[0x1E696AF00] callStackSymbols];
        v29 = [v28 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v43 = v29;
        _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_19;
    }

LABEL_17:
    if (v27)
    {
      v34 = dispatch_get_specific(*v19);
      v35 = MEMORY[0x1E696AF00];
      v36 = v34;
      v37 = [v35 callStackSymbols];
      v38 = [v37 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v43 = v34;
      v44 = 2114;
      v45 = v38;
      _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_19:

    _NUAssertFailHandler();
  }

  v11 = v10;
  v12 = [v9 objectForKeyedSubscript:PISegmentationOptionEnableSettlingEffect];
  v13 = [v12 BOOLValue];

  v14 = [v9 mutableCopy];
  v15 = [MEMORY[0x1E696AD98] numberWithInt:v13 ^ 1u];
  [v14 setObject:v15 forKeyedSubscript:PISegmentationOptionLowResolution];

  [a1 ensureResources];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __71__PISegmentation_computeSegmentationScoresForAsset_options_completion___block_invoke;
  v39[3] = &unk_1E82AC6D8;
  v40 = v11;
  v41 = a1;
  v16 = v11;
  [a1 loadSegmentationItemForAsset:v8 options:v14 completion:v39];
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
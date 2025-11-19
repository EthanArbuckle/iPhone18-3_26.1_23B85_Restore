@interface PIDepthEffectNode
- (BOOL)canPropagateOriginalAuxiliaryData:(int64_t)a3;
- (PIDepthEffectNode)initWithInput:(id)a3 blurMap:(id)a4 settings:(id)a5;
- (PIDepthEffectNode)initWithSettings:(id)a3 inputs:(id)a4;
- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5;
@end

@implementation PIDepthEffectNode

- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5
{
  v91 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!a5)
  {
    v61 = NUAssertLogger_16450();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      v62 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v88 = v62;
      _os_log_error_impl(&dword_1C7694000, v61, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v63 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v65 = NUAssertLogger_16450();
    v66 = os_log_type_enabled(v65, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v66)
      {
        v69 = dispatch_get_specific(*v63);
        v70 = MEMORY[0x1E696AF00];
        v71 = v69;
        v72 = [v70 callStackSymbols];
        v73 = [v72 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v88 = v69;
        v89 = 2114;
        v90 = v73;
        _os_log_error_impl(&dword_1C7694000, v65, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v66)
    {
      v67 = [MEMORY[0x1E696AF00] callStackSymbols];
      v68 = [v67 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v88 = v68;
      _os_log_error_impl(&dword_1C7694000, v65, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v10 = v9;
  if ([v9 evaluationMode] != 1)
  {
    [MEMORY[0x1E69B3A48] unsupportedError:@"Depth Effect only applies to images" object:0];
    *a5 = v15 = 0;
    goto LABEL_40;
  }

  v11 = [(PIPortraitNode *)self input];
  v12 = [v11 imageProperties:a5];

  if (v12)
  {
    v13 = [v12 flexRangeProperties];
    if (v13)
    {
      v14 = 1;
    }

    else
    {
      v16 = [v12 meteorPlusGainMapVersion];
      v14 = [v16 major] > 1;
    }

    if ([v10 auxiliaryImageType] == 1 || objc_msgSend(v10, "auxiliaryImageType") == 7 && v14)
    {
      v17 = [(PIPortraitNode *)self input];
      v18 = [v17 nodeByReplayingAgainstCache:v8 pipelineState:v10 error:a5];

      if (!v18)
      {
        v15 = 0;
LABEL_38:

        goto LABEL_39;
      }

      v80 = v14;
      v19 = [v10 copy];
      [v19 setAuxiliaryImageType:1];
      v20 = [(PIPortraitNode *)self blurMap];
      v86 = 0;
      v21 = [v20 nodeByReplayingAgainstCache:v8 pipelineState:v19 error:&v86];
      v22 = v86;

      if (!v21)
      {
        v31 = MEMORY[0x1E69B3A48];
        v32 = [(PIPortraitNode *)self blurMap];
        v33 = v31;
        v34 = v32;
        [v33 errorWithCode:1 reason:@"Failed to evaluate blur map" object:v32 underlyingError:v22];
        *a5 = v15 = 0;
LABEL_37:

        goto LABEL_38;
      }

      v82 = v21;
      v83 = v22;
      v23 = [v12 auxiliaryImagePropertiesForType:7];
      v81 = v19;
      if (v23)
      {
        [v19 setAuxiliaryImageType:7];
        [v12 size];
        [v23 size];
        v24 = NUScaleToFillSizeInSize();
        [v19 setScale:{v24, v25}];
        v26 = [(PIPortraitNode *)self input];
        v85 = 0;
        v27 = [v26 nodeByReplayingAgainstCache:v8 pipelineState:v19 error:&v85];
        v28 = v85;

        if (!v27)
        {
          v56 = MEMORY[0x1E69B3A48];
          v57 = [(PIPortraitNode *)self input];
          [v56 errorWithCode:1 reason:@"Failed to evaluate gain map" object:v57 underlyingError:v28];
          *a5 = v15 = 0;
          v58 = v23;
          v22 = v28;
          v34 = v58;
          v21 = v82;
LABEL_36:

          v19 = v81;
          goto LABEL_37;
        }

        v83 = v28;
        v29 = v27;
      }

      else
      {
        v29 = 0;
      }

      v35 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v35 setObject:v18 forKeyedSubscript:@"inputImage"];
      [v35 setObject:v82 forKeyedSubscript:@"inputBlurMap"];
      v78 = v29;
      [v35 setObject:v29 forKeyedSubscript:@"inputGainMap"];
      v36 = [v12 auxiliaryImagePropertiesForType:3];

      v77 = v36;
      if (v36)
      {
        [v81 setAuxiliaryImageType:3];
        [v12 size];
        [v36 size];
        v37 = NUScaleToFillSizeInSize();
        [v81 setScale:{v37, v38}];
        v39 = [(PIPortraitNode *)self input];
        v84 = 0;
        v36 = [v39 nodeByReplayingAgainstCache:v8 pipelineState:v81 error:&v84];
        v40 = v84;

        if (!v36)
        {
          v59 = MEMORY[0x1E69B3A48];
          v55 = [(PIPortraitNode *)self input];
          [v59 errorWithCode:1 reason:@"Failed to evaluate portrait effect matte" object:v55 underlyingError:v40];
          *a5 = v15 = 0;
          v22 = v40;
LABEL_35:

          v21 = v82;
          v34 = v77;
          v57 = v78;
          goto LABEL_36;
        }

        v76 = v18;
        v83 = v40;
      }

      else
      {
        v76 = v18;
      }

      v75 = v36;
      [v35 setObject:v36 forKeyedSubscript:@"inputMatte"];
      v41 = [MEMORY[0x1E695DF90] dictionary];
      v42 = [(NURenderNode *)self settings];
      v43 = [v42 objectForKeyedSubscript:@"depthInfo"];

      v79 = v43;
      v44 = [v43 objectForKeyedSubscript:@"lumaNoiseScale"];
      [v41 setObject:v44 forKeyedSubscript:@"inputLumaNoiseScale"];

      v45 = MEMORY[0x1E696AD98];
      [v10 scale];
      NUScaleToDouble();
      v46 = [v45 numberWithDouble:?];
      [v41 setObject:v46 forKeyedSubscript:@"inputScale"];

      v74 = [v12 auxiliaryImagePropertiesForType:2];
      [v41 setObject:objc_msgSend(v74 forKeyedSubscript:{"auxiliaryDataInfoMetadata"), @"inputDepthMetadata"}];
      v47 = [v12 auxiliaryImagePropertiesForType:7];
      [v41 setObject:objc_msgSend(v47 forKeyedSubscript:{"auxiliaryDataInfoMetadata"), @"inputGainMapMetadata"}];
      v48 = [v47 auxiliaryImageTypeCGIdentifier];
      LODWORD(v43) = [v48 isEqualToString:*MEMORY[0x1E696D280]];

      if (v43)
      {
        [v41 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"inputGainMapIsLinear"];
        [v41 setObject:objc_msgSend(v47 forKeyedSubscript:{"compatibilityMetadata"), @"inputGainMapMetadata"}];
      }

      v49 = [v79 objectForKeyedSubscript:@"shape"];
      [v41 setObject:v49 forKeyedSubscript:@"inputShape"];

      v50 = [(NURenderNode *)self settings];
      v51 = [v50 objectForKeyedSubscript:@"aperture"];
      [v41 setObject:v51 forKeyedSubscript:@"inputAperture"];

      v52 = [(NURenderNode *)self settings];
      v53 = [v52 objectForKeyedSubscript:@"portraitEffect"];

      if (v53 && ([objc_opt_class() isPortraitStageEffect:v53] & 1) != 0 || objc_msgSend(v10, "auxiliaryImageType") == 7)
      {
        [v41 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"inputBestHairQuality"];
      }

      if (v80)
      {
        [v41 setObject:&unk_1F471EDA8 forKeyedSubscript:@"__gainMapMode"];
      }

      v54 = [objc_alloc(MEMORY[0x1E69B3A70]) initWithFilterName:@"PIDepthEffectFilter" settings:v41 inputs:v35];
      v15 = [v54 resolvedNodeWithCachedInputs:v35 cache:v8 pipelineState:v10 error:a5];

      v55 = v75;
      v18 = v76;
      v22 = v83;
      goto LABEL_35;
    }

    v30 = [(PIPortraitNode *)self input];
    v15 = [v30 nodeByReplayingAgainstCache:v8 pipelineState:v10 error:a5];
  }

  else
  {
    v15 = 0;
  }

LABEL_39:

LABEL_40:

  return v15;
}

- (BOOL)canPropagateOriginalAuxiliaryData:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = PIDepthEffectNode;
  result = [(PIPortraitNode *)&v5 canPropagateOriginalAuxiliaryData:?];
  if (a3 == 7)
  {
    return 0;
  }

  return result;
}

- (PIDepthEffectNode)initWithInput:(id)a3 blurMap:(id)a4 settings:(id)a5
{
  v44 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    v15 = NUAssertLogger_16450();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "input != nil"];
      *buf = 138543362;
      v41 = v16;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v17 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v19 = NUAssertLogger_16450();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v20)
      {
        v28 = dispatch_get_specific(*v17);
        v29 = MEMORY[0x1E696AF00];
        v30 = v28;
        v17 = [v29 callStackSymbols];
        v31 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v41 = v28;
        v42 = 2114;
        v43 = v31;
        _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      v21 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [v21 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v41 = v17;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v25 = _NUAssertFailHandler();
    goto LABEL_17;
  }

  if (!v9)
  {
    v22 = NUAssertLogger_16450();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "blurMap != nil"];
      *buf = 138543362;
      v41 = v23;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v17 = MEMORY[0x1E69B38E8];
    v24 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v19 = NUAssertLogger_16450();
    v25 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (!v24)
    {
      if (v25)
      {
        v26 = [MEMORY[0x1E696AF00] callStackSymbols];
        v27 = [v26 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v41 = v27;
        _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_19;
    }

LABEL_17:
    if (v25)
    {
      v32 = dispatch_get_specific(*v17);
      v33 = MEMORY[0x1E696AF00];
      v34 = v32;
      v35 = [v33 callStackSymbols];
      v36 = [v35 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v41 = v32;
      v42 = 2114;
      v43 = v36;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_19:

    _NUAssertFailHandler();
  }

  v11 = v10;
  v38[0] = @"inputImage";
  v38[1] = @"inputBlurMap";
  v39[0] = v8;
  v39[1] = v9;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:2];
  v37.receiver = self;
  v37.super_class = PIDepthEffectNode;
  v13 = [(NURenderNode *)&v37 initWithSettings:v11 inputs:v12];

  return v13;
}

- (PIDepthEffectNode)initWithSettings:(id)a3 inputs:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = MEMORY[0x1E69B3D70];
    v10 = *MEMORY[0x1E69B3D70];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_ERROR))
    {
      v11 = MEMORY[0x1E696AEC0];
      v12 = v10;
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = NSStringFromSelector(a2);
      v16 = [v11 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v14, v15];
      *buf = 138543362;
      v32 = v16;
      _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

      v17 = *v8;
      if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
      {
        if (v17 != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_16587);
        }

LABEL_11:
        v23 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
        {
          specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
          v25 = MEMORY[0x1E696AF00];
          v26 = specific;
          v27 = v23;
          v28 = [v25 callStackSymbols];
          v29 = [v28 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v32 = specific;
          v33 = 2114;
          v34 = v29;
          _os_log_error_impl(&dword_1C7694000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }

        goto LABEL_13;
      }

      if (v17 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_16587);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
    {
      goto LABEL_11;
    }

    v18 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      v19 = MEMORY[0x1E696AF00];
      v20 = v18;
      v21 = [v19 callStackSymbols];
      v22 = [v21 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v32 = v22;
      _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

LABEL_13:
    v30 = objc_opt_class();
    NSStringFromClass(v30);
    objc_claimAutoreleasedReturnValue();
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    _NUAssertFailHandler();
LABEL_14:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_16587);
  }
}

@end
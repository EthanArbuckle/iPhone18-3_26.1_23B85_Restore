@interface PIDepthEffectNode
- (BOOL)canPropagateOriginalAuxiliaryData:(int64_t)data;
- (PIDepthEffectNode)initWithInput:(id)input blurMap:(id)map settings:(id)settings;
- (PIDepthEffectNode)initWithSettings:(id)settings inputs:(id)inputs;
- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error;
@end

@implementation PIDepthEffectNode

- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error
{
  v91 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  stateCopy = state;
  if (!error)
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
        callStackSymbols = [v70 callStackSymbols];
        v73 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v88 = v69;
        v89 = 2114;
        v90 = v73;
        _os_log_error_impl(&dword_1C7694000, v65, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v66)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v68 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v88 = v68;
      _os_log_error_impl(&dword_1C7694000, v65, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v10 = stateCopy;
  if ([stateCopy evaluationMode] != 1)
  {
    [MEMORY[0x1E69B3A48] unsupportedError:@"Depth Effect only applies to images" object:0];
    *error = v15 = 0;
    goto LABEL_40;
  }

  input = [(PIPortraitNode *)self input];
  v12 = [input imageProperties:error];

  if (v12)
  {
    flexRangeProperties = [v12 flexRangeProperties];
    if (flexRangeProperties)
    {
      v14 = 1;
    }

    else
    {
      meteorPlusGainMapVersion = [v12 meteorPlusGainMapVersion];
      v14 = [meteorPlusGainMapVersion major] > 1;
    }

    if ([v10 auxiliaryImageType] == 1 || objc_msgSend(v10, "auxiliaryImageType") == 7 && v14)
    {
      input2 = [(PIPortraitNode *)self input];
      v18 = [input2 nodeByReplayingAgainstCache:cacheCopy pipelineState:v10 error:error];

      if (!v18)
      {
        v15 = 0;
LABEL_38:

        goto LABEL_39;
      }

      v80 = v14;
      v19 = [v10 copy];
      [v19 setAuxiliaryImageType:1];
      blurMap = [(PIPortraitNode *)self blurMap];
      v86 = 0;
      v21 = [blurMap nodeByReplayingAgainstCache:cacheCopy pipelineState:v19 error:&v86];
      v22 = v86;

      if (!v21)
      {
        v31 = MEMORY[0x1E69B3A48];
        blurMap2 = [(PIPortraitNode *)self blurMap];
        v33 = v31;
        v34 = blurMap2;
        [v33 errorWithCode:1 reason:@"Failed to evaluate blur map" object:blurMap2 underlyingError:v22];
        *error = v15 = 0;
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
        input3 = [(PIPortraitNode *)self input];
        v85 = 0;
        v27 = [input3 nodeByReplayingAgainstCache:cacheCopy pipelineState:v19 error:&v85];
        v28 = v85;

        if (!v27)
        {
          v56 = MEMORY[0x1E69B3A48];
          input4 = [(PIPortraitNode *)self input];
          [v56 errorWithCode:1 reason:@"Failed to evaluate gain map" object:input4 underlyingError:v28];
          *error = v15 = 0;
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
        input5 = [(PIPortraitNode *)self input];
        v84 = 0;
        v36 = [input5 nodeByReplayingAgainstCache:cacheCopy pipelineState:v81 error:&v84];
        v40 = v84;

        if (!v36)
        {
          v59 = MEMORY[0x1E69B3A48];
          input6 = [(PIPortraitNode *)self input];
          [v59 errorWithCode:1 reason:@"Failed to evaluate portrait effect matte" object:input6 underlyingError:v40];
          *error = v15 = 0;
          v22 = v40;
LABEL_35:

          v21 = v82;
          v34 = v77;
          input4 = v78;
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
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      settings = [(NURenderNode *)self settings];
      v43 = [settings objectForKeyedSubscript:@"depthInfo"];

      v79 = v43;
      v44 = [v43 objectForKeyedSubscript:@"lumaNoiseScale"];
      [dictionary setObject:v44 forKeyedSubscript:@"inputLumaNoiseScale"];

      v45 = MEMORY[0x1E696AD98];
      [v10 scale];
      NUScaleToDouble();
      v46 = [v45 numberWithDouble:?];
      [dictionary setObject:v46 forKeyedSubscript:@"inputScale"];

      v74 = [v12 auxiliaryImagePropertiesForType:2];
      [dictionary setObject:objc_msgSend(v74 forKeyedSubscript:{"auxiliaryDataInfoMetadata"), @"inputDepthMetadata"}];
      v47 = [v12 auxiliaryImagePropertiesForType:7];
      [dictionary setObject:objc_msgSend(v47 forKeyedSubscript:{"auxiliaryDataInfoMetadata"), @"inputGainMapMetadata"}];
      auxiliaryImageTypeCGIdentifier = [v47 auxiliaryImageTypeCGIdentifier];
      LODWORD(v43) = [auxiliaryImageTypeCGIdentifier isEqualToString:*MEMORY[0x1E696D280]];

      if (v43)
      {
        [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"inputGainMapIsLinear"];
        [dictionary setObject:objc_msgSend(v47 forKeyedSubscript:{"compatibilityMetadata"), @"inputGainMapMetadata"}];
      }

      v49 = [v79 objectForKeyedSubscript:@"shape"];
      [dictionary setObject:v49 forKeyedSubscript:@"inputShape"];

      settings2 = [(NURenderNode *)self settings];
      v51 = [settings2 objectForKeyedSubscript:@"aperture"];
      [dictionary setObject:v51 forKeyedSubscript:@"inputAperture"];

      settings3 = [(NURenderNode *)self settings];
      v53 = [settings3 objectForKeyedSubscript:@"portraitEffect"];

      if (v53 && ([objc_opt_class() isPortraitStageEffect:v53] & 1) != 0 || objc_msgSend(v10, "auxiliaryImageType") == 7)
      {
        [dictionary setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"inputBestHairQuality"];
      }

      if (v80)
      {
        [dictionary setObject:&unk_1F471EDA8 forKeyedSubscript:@"__gainMapMode"];
      }

      v54 = [objc_alloc(MEMORY[0x1E69B3A70]) initWithFilterName:@"PIDepthEffectFilter" settings:dictionary inputs:v35];
      v15 = [v54 resolvedNodeWithCachedInputs:v35 cache:cacheCopy pipelineState:v10 error:error];

      input6 = v75;
      v18 = v76;
      v22 = v83;
      goto LABEL_35;
    }

    input7 = [(PIPortraitNode *)self input];
    v15 = [input7 nodeByReplayingAgainstCache:cacheCopy pipelineState:v10 error:error];
  }

  else
  {
    v15 = 0;
  }

LABEL_39:

LABEL_40:

  return v15;
}

- (BOOL)canPropagateOriginalAuxiliaryData:(int64_t)data
{
  v5.receiver = self;
  v5.super_class = PIDepthEffectNode;
  result = [(PIPortraitNode *)&v5 canPropagateOriginalAuxiliaryData:?];
  if (data == 7)
  {
    return 0;
  }

  return result;
}

- (PIDepthEffectNode)initWithInput:(id)input blurMap:(id)map settings:(id)settings
{
  v44 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  mapCopy = map;
  settingsCopy = settings;
  if (!inputCopy)
  {
    v15 = NUAssertLogger_16450();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "input != nil"];
      *buf = 138543362;
      v41 = v16;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v19 = NUAssertLogger_16450();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v20)
      {
        v28 = dispatch_get_specific(*callStackSymbols);
        v29 = MEMORY[0x1E696AF00];
        v30 = v28;
        callStackSymbols = [v29 callStackSymbols];
        v31 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v41 = v28;
        v42 = 2114;
        v43 = v31;
        _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v41 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v25 = _NUAssertFailHandler();
    goto LABEL_17;
  }

  if (!mapCopy)
  {
    v22 = NUAssertLogger_16450();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "blurMap != nil"];
      *buf = 138543362;
      v41 = v23;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v24 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v19 = NUAssertLogger_16450();
    v25 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (!v24)
    {
      if (v25)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v27 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v41 = v27;
        _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_19;
    }

LABEL_17:
    if (v25)
    {
      v32 = dispatch_get_specific(*callStackSymbols);
      v33 = MEMORY[0x1E696AF00];
      v34 = v32;
      callStackSymbols4 = [v33 callStackSymbols];
      v36 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v41 = v32;
      v42 = 2114;
      v43 = v36;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_19:

    _NUAssertFailHandler();
  }

  v11 = settingsCopy;
  v38[0] = @"inputImage";
  v38[1] = @"inputBlurMap";
  v39[0] = inputCopy;
  v39[1] = mapCopy;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:2];
  v37.receiver = self;
  v37.super_class = PIDepthEffectNode;
  v13 = [(NURenderNode *)&v37 initWithSettings:v11 inputs:v12];

  return v13;
}

- (PIDepthEffectNode)initWithSettings:(id)settings inputs:(id)inputs
{
  v35 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  inputsCopy = inputs;
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
          callStackSymbols = [v25 callStackSymbols];
          v29 = [callStackSymbols componentsJoinedByString:@"\n"];
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
      callStackSymbols2 = [v19 callStackSymbols];
      v22 = [callStackSymbols2 componentsJoinedByString:@"\n"];
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
@interface PIPhotoEffect3DNode
- (PIPhotoEffect3DNode)initWithInput:(id)input blurMap:(id)map settings:(id)settings;
- (PIPhotoEffect3DNode)initWithSettings:(id)settings inputs:(id)inputs;
- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error;
@end

@implementation PIPhotoEffect3DNode

- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error
{
  v45 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  stateCopy = state;
  if (!error)
  {
    v27 = NUAssertLogger_16450();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v42 = v28;
      _os_log_error_impl(&dword_1C7694000, v27, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v29 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v31 = NUAssertLogger_16450();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v32)
      {
        v35 = dispatch_get_specific(*v29);
        v36 = MEMORY[0x1E696AF00];
        v37 = v35;
        callStackSymbols = [v36 callStackSymbols];
        v39 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v42 = v35;
        v43 = 2114;
        v44 = v39;
        _os_log_error_impl(&dword_1C7694000, v31, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v32)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v34 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v42 = v34;
      _os_log_error_impl(&dword_1C7694000, v31, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v10 = stateCopy;
  auxiliaryImageType = [stateCopy auxiliaryImageType];
  input = [(PIPortraitNode *)self input];
  v13 = [input nodeByReplayingAgainstCache:cacheCopy pipelineState:v10 error:error];

  if (auxiliaryImageType == 1)
  {
    if (v13)
    {
      v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v14 setObject:v13 forKeyedSubscript:@"inputImage"];
      blurMap = [(PIPortraitNode *)self blurMap];
      v40 = 0;
      v16 = [blurMap nodeByReplayingAgainstCache:cacheCopy pipelineState:v10 error:&v40];

      if (v16)
      {
        [v14 setObject:v16 forKeyedSubscript:@"inputBlurMap"];
      }

      dictionary = [MEMORY[0x1E695DF90] dictionary];
      settings = [(NURenderNode *)self settings];
      v19 = [settings objectForKeyedSubscript:@"kind"];
      [dictionary setObject:v19 forKeyedSubscript:@"inputKind"];

      settings2 = [(NURenderNode *)self settings];
      v21 = [settings2 objectForKeyedSubscript:@"intensity"];
      [dictionary setObject:v21 forKeyedSubscript:@"inputIntensity"];

      settings3 = [(NURenderNode *)self settings];
      v23 = [settings3 objectForKeyedSubscript:@"isHDR"];
      [dictionary setObject:v23 forKeyedSubscript:@"inputIsHDR"];

      v24 = [objc_alloc(MEMORY[0x1E69B3A70]) initWithFilterName:@"PIPhotoEffect3DFilter" settings:dictionary inputs:v14];
      v25 = [v24 resolvedNodeWithCachedInputs:v14 cache:cacheCopy pipelineState:v10 error:error];
    }

    else
    {
      v25 = 0;
    }

    v13 = v25;
  }

  return v13;
}

- (PIPhotoEffect3DNode)initWithInput:(id)input blurMap:(id)map settings:(id)settings
{
  v41 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  mapCopy = map;
  settingsCopy = settings;
  if (!inputCopy)
  {
    v19 = NUAssertLogger_16450();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "input != nil"];
      *buf = 138543362;
      v38 = v20;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v21 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v23 = NUAssertLogger_16450();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v24)
      {
        v27 = dispatch_get_specific(*v21);
        v28 = MEMORY[0x1E696AF00];
        v29 = v27;
        callStackSymbols = [v28 callStackSymbols];
        v31 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v38 = v27;
        v39 = 2114;
        v40 = v31;
        _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v38 = v26;
      _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v11 = settingsCopy;
  if (mapCopy)
  {
    v35[0] = @"inputImage";
    v35[1] = @"inputBlurMap";
    v36[0] = inputCopy;
    v36[1] = mapCopy;
    v12 = MEMORY[0x1E695DF20];
    v13 = v36;
    v14 = v35;
    v15 = 2;
  }

  else
  {
    v33 = @"inputImage";
    v34 = inputCopy;
    v12 = MEMORY[0x1E695DF20];
    v13 = &v34;
    v14 = &v33;
    v15 = 1;
  }

  v16 = [v12 dictionaryWithObjects:v13 forKeys:v14 count:v15];
  v32.receiver = self;
  v32.super_class = PIPhotoEffect3DNode;
  v17 = [(NURenderNode *)&v32 initWithSettings:v11 inputs:v16];

  return v17;
}

- (PIPhotoEffect3DNode)initWithSettings:(id)settings inputs:(id)inputs
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
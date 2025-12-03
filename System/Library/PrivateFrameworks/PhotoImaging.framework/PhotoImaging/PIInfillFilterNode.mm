@interface PIInfillFilterNode
- (PIInfillFilterNode)initWithInputImage:(id)image inputMatte:(id)matte infillAlgorithm:(int64_t)algorithm;
- (PIInfillFilterNode)initWithSettings:(id)settings inputs:(id)inputs;
- (id)_evaluateImage:(id *)image;
- (id)inputImage;
- (id)inputMatteImage;
- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error;
- (int64_t)infillAlgorithm;
@end

@implementation PIInfillFilterNode

- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error
{
  v8.receiver = self;
  v8.super_class = PIInfillFilterNode;
  v6 = [(NURenderNode *)&v8 resolvedNodeWithCachedInputs:inputs settings:settings pipelineState:state error:error];

  return v6;
}

- (id)_evaluateImage:(id *)image
{
  v36 = *MEMORY[0x1E69E9840];
  if (!image)
  {
    v17 = NUAssertLogger_6299();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v33 = v18;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v19 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v21 = NUAssertLogger_6299();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v22)
      {
        v25 = dispatch_get_specific(*v19);
        v26 = MEMORY[0x1E696AF00];
        v27 = v25;
        callStackSymbols = [v26 callStackSymbols];
        v29 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v33 = v25;
        v34 = 2114;
        v35 = v29;
        _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v33 = v24;
      _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v5 = objc_alloc_init(PISegmentationInfillFilter);
  [(PISegmentationInfillFilter *)v5 setInfillAlgorithm:[(PIInfillFilterNode *)self infillAlgorithm]];
  inputImage = [(PIInfillFilterNode *)self inputImage];
  v31 = 0;
  v7 = [inputImage outputImage:&v31];
  v8 = v31;

  if (v7)
  {
    [(PISegmentationInfillFilter *)v5 setInputImage:v7];
    inputMatteImage = [(PIInfillFilterNode *)self inputMatteImage];
    v30 = 0;
    inputImage2 = [inputMatteImage outputImage:&v30];
    v11 = v30;

    if (inputImage2)
    {
      [(PISegmentationInfillFilter *)v5 setInputMatteImage:inputImage2];
      outputImage = [(PISegmentationInfillFilter *)v5 outputImage];
    }

    else
    {
      v14 = MEMORY[0x1E69B3A48];
      inputMatteImage2 = [(PIInfillFilterNode *)self inputMatteImage];
      *image = [v14 errorWithCode:2 reason:@"Cannot evaluate input matte" object:inputMatteImage2 underlyingError:v11];

      outputImage = 0;
    }

    v8 = v11;
  }

  else
  {
    v13 = MEMORY[0x1E69B3A48];
    inputImage2 = [(PIInfillFilterNode *)self inputImage];
    [v13 errorWithCode:2 reason:@"Cannot evaluate input" object:inputImage2 underlyingError:v8];
    *image = outputImage = 0;
  }

  return outputImage;
}

- (int64_t)infillAlgorithm
{
  settings = [(NURenderNode *)self settings];
  v3 = [settings objectForKeyedSubscript:@"infillAlgorithm"];

  integerValue = [v3 integerValue];
  return integerValue;
}

- (id)inputMatteImage
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [(NURenderNode *)self inputForKey:@"inputMatteImage"];
  if (!v2)
  {
    v4 = NUAssertLogger_6299();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing input matte image"];
      v17 = 138543362;
      v18 = v5;
      _os_log_error_impl(&dword_1C7694000, v4, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v17, 0xCu);
    }

    v6 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v8 = NUAssertLogger_6299();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v9)
      {
        v12 = dispatch_get_specific(*v6);
        v13 = MEMORY[0x1E696AF00];
        v14 = v12;
        callStackSymbols = [v13 callStackSymbols];
        v16 = [callStackSymbols componentsJoinedByString:@"\n"];
        v17 = 138543618;
        v18 = v12;
        v19 = 2114;
        v20 = v16;
        _os_log_error_impl(&dword_1C7694000, v8, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v17, 0x16u);
      }
    }

    else if (v9)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v11 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      v17 = 138543362;
      v18 = v11;
      _os_log_error_impl(&dword_1C7694000, v8, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v17, 0xCu);
    }

    _NUAssertFailHandler();
  }

  return v2;
}

- (id)inputImage
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [(NURenderNode *)self inputForKey:@"inputImage"];
  if (!v2)
  {
    v4 = NUAssertLogger_6299();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing input image"];
      v17 = 138543362;
      v18 = v5;
      _os_log_error_impl(&dword_1C7694000, v4, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v17, 0xCu);
    }

    v6 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v8 = NUAssertLogger_6299();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v9)
      {
        v12 = dispatch_get_specific(*v6);
        v13 = MEMORY[0x1E696AF00];
        v14 = v12;
        callStackSymbols = [v13 callStackSymbols];
        v16 = [callStackSymbols componentsJoinedByString:@"\n"];
        v17 = 138543618;
        v18 = v12;
        v19 = 2114;
        v20 = v16;
        _os_log_error_impl(&dword_1C7694000, v8, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v17, 0x16u);
      }
    }

    else if (v9)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v11 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      v17 = 138543362;
      v18 = v11;
      _os_log_error_impl(&dword_1C7694000, v8, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v17, 0xCu);
    }

    _NUAssertFailHandler();
  }

  return v2;
}

- (PIInfillFilterNode)initWithInputImage:(id)image inputMatte:(id)matte infillAlgorithm:(int64_t)algorithm
{
  v45 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  matteCopy = matte;
  if (!imageCopy)
  {
    v16 = NUAssertLogger_6299();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "inputImage != nil"];
      *buf = 138543362;
      v42 = v17;
      _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v20 = NUAssertLogger_6299();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v21)
      {
        v29 = dispatch_get_specific(*callStackSymbols);
        v30 = MEMORY[0x1E696AF00];
        v31 = v29;
        callStackSymbols = [v30 callStackSymbols];
        v32 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v42 = v29;
        v43 = 2114;
        v44 = v32;
        _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v42 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v26 = _NUAssertFailHandler();
    goto LABEL_17;
  }

  v10 = matteCopy;
  if (!matteCopy)
  {
    v23 = NUAssertLogger_6299();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "inputMatte != nil"];
      *buf = 138543362;
      v42 = v24;
      _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v25 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v20 = NUAssertLogger_6299();
    v26 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (!v25)
    {
      if (v26)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v28 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v42 = v28;
        _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_19;
    }

LABEL_17:
    if (v26)
    {
      v33 = dispatch_get_specific(*callStackSymbols);
      v34 = MEMORY[0x1E696AF00];
      v35 = v33;
      callStackSymbols4 = [v34 callStackSymbols];
      v37 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v42 = v33;
      v43 = 2114;
      v44 = v37;
      _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_19:

    _NUAssertFailHandler();
  }

  v39[0] = @"infillAlgorithm";
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:algorithm];
  v39[1] = @"__dominantInputSettingsKey";
  v40[0] = v11;
  v40[1] = @"inputImage";
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];

  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v13 setObject:imageCopy forKeyedSubscript:@"inputImage"];
  [v13 setObject:v10 forKeyedSubscript:@"inputMatteImage"];
  v38.receiver = self;
  v38.super_class = PIInfillFilterNode;
  v14 = [(NURenderNode *)&v38 initWithSettings:v12 inputs:v13];

  return v14;
}

- (PIInfillFilterNode)initWithSettings:(id)settings inputs:(id)inputs
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
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_198_6335);
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
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_198_6335);
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
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_198_6335);
  }
}

@end
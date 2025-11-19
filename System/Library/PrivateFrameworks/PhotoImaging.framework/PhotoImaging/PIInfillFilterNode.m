@interface PIInfillFilterNode
- (PIInfillFilterNode)initWithInputImage:(id)a3 inputMatte:(id)a4 infillAlgorithm:(int64_t)a5;
- (PIInfillFilterNode)initWithSettings:(id)a3 inputs:(id)a4;
- (id)_evaluateImage:(id *)a3;
- (id)inputImage;
- (id)inputMatteImage;
- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6;
- (int64_t)infillAlgorithm;
@end

@implementation PIInfillFilterNode

- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6
{
  v8.receiver = self;
  v8.super_class = PIInfillFilterNode;
  v6 = [(NURenderNode *)&v8 resolvedNodeWithCachedInputs:a3 settings:a4 pipelineState:a5 error:a6];

  return v6;
}

- (id)_evaluateImage:(id *)a3
{
  v36 = *MEMORY[0x1E69E9840];
  if (!a3)
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
        v28 = [v26 callStackSymbols];
        v29 = [v28 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v33 = v25;
        v34 = 2114;
        v35 = v29;
        _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      v23 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [v23 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v33 = v24;
      _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v5 = objc_alloc_init(PISegmentationInfillFilter);
  [(PISegmentationInfillFilter *)v5 setInfillAlgorithm:[(PIInfillFilterNode *)self infillAlgorithm]];
  v6 = [(PIInfillFilterNode *)self inputImage];
  v31 = 0;
  v7 = [v6 outputImage:&v31];
  v8 = v31;

  if (v7)
  {
    [(PISegmentationInfillFilter *)v5 setInputImage:v7];
    v9 = [(PIInfillFilterNode *)self inputMatteImage];
    v30 = 0;
    v10 = [v9 outputImage:&v30];
    v11 = v30;

    if (v10)
    {
      [(PISegmentationInfillFilter *)v5 setInputMatteImage:v10];
      v12 = [(PISegmentationInfillFilter *)v5 outputImage];
    }

    else
    {
      v14 = MEMORY[0x1E69B3A48];
      v15 = [(PIInfillFilterNode *)self inputMatteImage];
      *a3 = [v14 errorWithCode:2 reason:@"Cannot evaluate input matte" object:v15 underlyingError:v11];

      v12 = 0;
    }

    v8 = v11;
  }

  else
  {
    v13 = MEMORY[0x1E69B3A48];
    v10 = [(PIInfillFilterNode *)self inputImage];
    [v13 errorWithCode:2 reason:@"Cannot evaluate input" object:v10 underlyingError:v8];
    *a3 = v12 = 0;
  }

  return v12;
}

- (int64_t)infillAlgorithm
{
  v2 = [(NURenderNode *)self settings];
  v3 = [v2 objectForKeyedSubscript:@"infillAlgorithm"];

  v4 = [v3 integerValue];
  return v4;
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
        v15 = [v13 callStackSymbols];
        v16 = [v15 componentsJoinedByString:@"\n"];
        v17 = 138543618;
        v18 = v12;
        v19 = 2114;
        v20 = v16;
        _os_log_error_impl(&dword_1C7694000, v8, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v17, 0x16u);
      }
    }

    else if (v9)
    {
      v10 = [MEMORY[0x1E696AF00] callStackSymbols];
      v11 = [v10 componentsJoinedByString:@"\n"];
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
        v15 = [v13 callStackSymbols];
        v16 = [v15 componentsJoinedByString:@"\n"];
        v17 = 138543618;
        v18 = v12;
        v19 = 2114;
        v20 = v16;
        _os_log_error_impl(&dword_1C7694000, v8, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v17, 0x16u);
      }
    }

    else if (v9)
    {
      v10 = [MEMORY[0x1E696AF00] callStackSymbols];
      v11 = [v10 componentsJoinedByString:@"\n"];
      v17 = 138543362;
      v18 = v11;
      _os_log_error_impl(&dword_1C7694000, v8, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v17, 0xCu);
    }

    _NUAssertFailHandler();
  }

  return v2;
}

- (PIInfillFilterNode)initWithInputImage:(id)a3 inputMatte:(id)a4 infillAlgorithm:(int64_t)a5
{
  v45 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v16 = NUAssertLogger_6299();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "inputImage != nil"];
      *buf = 138543362;
      v42 = v17;
      _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v18 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v20 = NUAssertLogger_6299();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v21)
      {
        v29 = dispatch_get_specific(*v18);
        v30 = MEMORY[0x1E696AF00];
        v31 = v29;
        v18 = [v30 callStackSymbols];
        v32 = [v18 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v42 = v29;
        v43 = 2114;
        v44 = v32;
        _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      v22 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v22 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v42 = v18;
      _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v26 = _NUAssertFailHandler();
    goto LABEL_17;
  }

  v10 = v9;
  if (!v9)
  {
    v23 = NUAssertLogger_6299();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "inputMatte != nil"];
      *buf = 138543362;
      v42 = v24;
      _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v18 = MEMORY[0x1E69B38E8];
    v25 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v20 = NUAssertLogger_6299();
    v26 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (!v25)
    {
      if (v26)
      {
        v27 = [MEMORY[0x1E696AF00] callStackSymbols];
        v28 = [v27 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v42 = v28;
        _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_19;
    }

LABEL_17:
    if (v26)
    {
      v33 = dispatch_get_specific(*v18);
      v34 = MEMORY[0x1E696AF00];
      v35 = v33;
      v36 = [v34 callStackSymbols];
      v37 = [v36 componentsJoinedByString:@"\n"];
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
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
  v39[1] = @"__dominantInputSettingsKey";
  v40[0] = v11;
  v40[1] = @"inputImage";
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];

  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v13 setObject:v8 forKeyedSubscript:@"inputImage"];
  [v13 setObject:v10 forKeyedSubscript:@"inputMatteImage"];
  v38.receiver = self;
  v38.super_class = PIInfillFilterNode;
  v14 = [(NURenderNode *)&v38 initWithSettings:v12 inputs:v13];

  return v14;
}

- (PIInfillFilterNode)initWithSettings:(id)a3 inputs:(id)a4
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
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_198_6335);
  }
}

@end
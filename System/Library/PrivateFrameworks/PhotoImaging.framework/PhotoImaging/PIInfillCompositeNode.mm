@interface PIInfillCompositeNode
+ (id)applyDeltaKernel;
+ (id)computeDeltaKernel;
- (PIInfillCompositeNode)initWithInput:(id)input background:(id)background matte:(id)matte settings:(id)settings;
- (PIInfillCompositeNode)initWithSettings:(id)settings inputs:(id)inputs;
- (id)_evaluateImage:(id *)image;
- (id)backgroundNode;
- (id)inputNode;
- (id)matteNode;
- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error;
@end

@implementation PIInfillCompositeNode

- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error
{
  v8.receiver = self;
  v8.super_class = PIInfillCompositeNode;
  v6 = [(NURenderNode *)&v8 resolvedNodeWithCachedInputs:inputs settings:settings pipelineState:state error:error];

  return v6;
}

- (id)_evaluateImage:(id *)image
{
  v69 = *MEMORY[0x1E69E9840];
  if (!image)
  {
    v46 = NUAssertLogger_6299();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v66 = v47;
      _os_log_error_impl(&dword_1C7694000, v46, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v48 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v50 = NUAssertLogger_6299();
    v51 = os_log_type_enabled(v50, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v51)
      {
        v54 = dispatch_get_specific(*v48);
        v55 = MEMORY[0x1E696AF00];
        v56 = v54;
        callStackSymbols = [v55 callStackSymbols];
        v58 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v66 = v54;
        v67 = 2114;
        v68 = v58;
        _os_log_error_impl(&dword_1C7694000, v50, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v51)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v53 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v66 = v53;
      _os_log_error_impl(&dword_1C7694000, v50, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  blendWithRedMaskFilter = [MEMORY[0x1E695F648] blendWithRedMaskFilter];
  inputNode = [(PIInfillCompositeNode *)self inputNode];
  v62 = 0;
  v7 = [inputNode outputImage:&v62];
  v8 = v62;

  if (v7)
  {
    [blendWithRedMaskFilter setInputImage:v7];
    matteNode = [(PIInfillCompositeNode *)self matteNode];
    v61 = 0;
    inputNode2 = [matteNode outputImage:&v61];
    v11 = v61;

    if (inputNode2)
    {
      [blendWithRedMaskFilter setMaskImage:inputNode2];
      backgroundNode = [(PIInfillCompositeNode *)self backgroundNode];
      v60 = 0;
      matteNode2 = [backgroundNode outputImage:&v60];
      v8 = v60;

      if (matteNode2)
      {
        [blendWithRedMaskFilter setBackgroundImage:matteNode2];
        settings = [(NURenderNode *)self settings];
        v15 = [settings objectForKeyedSubscript:@"seamlessCompositing"];
        bOOLValue = [v15 BOOLValue];

        if (bOOLValue)
        {
          computeDeltaKernel = [objc_opt_class() computeDeltaKernel];
          [v7 extent];
          v19 = v18;
          v21 = v20;
          v23 = v22;
          v25 = v24;
          v64[0] = v7;
          v64[1] = matteNode2;
          v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:2];
          v59 = [computeDeltaKernel applyWithExtent:v26 arguments:{v19, v21, v23, v25}];

          v27 = objc_alloc_init(PISegmentationInfillFilter);
          [(PISegmentationInfillFilter *)v27 setInfillAlgorithm:4];
          [(PISegmentationInfillFilter *)v27 setInputImage:v59];
          [(PISegmentationInfillFilter *)v27 setInputMatteImage:inputNode2];
          outputImage = [(PISegmentationInfillFilter *)v27 outputImage];
          applyDeltaKernel = [objc_opt_class() applyDeltaKernel];
          [v7 extent];
          v31 = v30;
          v33 = v32;
          v35 = v34;
          v37 = v36;
          v63[0] = v7;
          v63[1] = outputImage;
          v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:2];
          v39 = [applyDeltaKernel applyWithExtent:v38 arguments:{v31, v33, v35, v37}];

          [blendWithRedMaskFilter setInputImage:v39];
        }

        outputImage2 = [blendWithRedMaskFilter outputImage];
      }

      else
      {
        v43 = MEMORY[0x1E69B3A48];
        backgroundNode2 = [(PIInfillCompositeNode *)self backgroundNode];
        *image = [v43 errorWithCode:2 reason:@"Cannot evaluate background image" object:backgroundNode2 underlyingError:v8];

        matteNode2 = 0;
        outputImage2 = 0;
      }
    }

    else
    {
      v42 = MEMORY[0x1E69B3A48];
      matteNode2 = [(PIInfillCompositeNode *)self matteNode];
      [v42 errorWithCode:2 reason:@"Cannot evaluate input matte" object:matteNode2 underlyingError:v11];
      *image = outputImage2 = 0;
      v8 = v11;
    }
  }

  else
  {
    v41 = MEMORY[0x1E69B3A48];
    inputNode2 = [(PIInfillCompositeNode *)self inputNode];
    [v41 errorWithCode:2 reason:@"Cannot evaluate input" object:inputNode2 underlyingError:v8];
    *image = outputImage2 = 0;
  }

  return outputImage2;
}

- (id)matteNode
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [(NURenderNode *)self inputForKey:@"matte"];
  if (!v2)
  {
    v4 = NUAssertLogger_6299();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing matte node"];
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

- (id)backgroundNode
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [(NURenderNode *)self inputForKey:@"background"];
  if (!v2)
  {
    v4 = NUAssertLogger_6299();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing background node"];
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

- (id)inputNode
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [(NURenderNode *)self inputForKey:@"input"];
  if (!v2)
  {
    v4 = NUAssertLogger_6299();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing input node"];
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

- (PIInfillCompositeNode)initWithInput:(id)input background:(id)background matte:(id)matte settings:(id)settings
{
  v64 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  backgroundCopy = background;
  matteCopy = matte;
  settingsCopy = settings;
  if (!inputCopy)
  {
    v19 = NUAssertLogger_6299();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "input != nil"];
      *buf = 138543362;
      v61 = v20;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v23 = NUAssertLogger_6299();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v24)
      {
        v42 = dispatch_get_specific(*callStackSymbols);
        v43 = MEMORY[0x1E696AF00];
        v44 = v42;
        callStackSymbols = [v43 callStackSymbols];
        v45 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v61 = v42;
        v62 = 2114;
        v63 = v45;
        _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v61 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v29 = _NUAssertFailHandler();
    goto LABEL_29;
  }

  if (!backgroundCopy)
  {
    v26 = NUAssertLogger_6299();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "background != nil"];
      *buf = 138543362;
      v61 = v27;
      _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v28 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v23 = NUAssertLogger_6299();
    v29 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (!v28)
    {
      if (v29)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        callStackSymbols = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v61 = callStackSymbols;
        _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_31:

      v34 = _NUAssertFailHandler();
      goto LABEL_32;
    }

LABEL_29:
    if (v29)
    {
      v46 = dispatch_get_specific(*callStackSymbols);
      v47 = MEMORY[0x1E696AF00];
      v48 = v46;
      callStackSymbols = [v47 callStackSymbols];
      v49 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v61 = v46;
      v62 = 2114;
      v63 = v49;
      _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_31;
  }

  if (!matteCopy)
  {
    v31 = NUAssertLogger_6299();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "matte != nil"];
      *buf = 138543362;
      v61 = v32;
      _os_log_error_impl(&dword_1C7694000, v31, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v33 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v23 = NUAssertLogger_6299();
    v34 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (!v33)
    {
      if (v34)
      {
        callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
        callStackSymbols = [callStackSymbols4 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v61 = callStackSymbols;
        _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_34:

      v39 = _NUAssertFailHandler();
      goto LABEL_35;
    }

LABEL_32:
    if (v34)
    {
      v50 = dispatch_get_specific(*callStackSymbols);
      v51 = MEMORY[0x1E696AF00];
      v52 = v50;
      callStackSymbols = [v51 callStackSymbols];
      v53 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v61 = v50;
      v62 = 2114;
      v63 = v53;
      _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_34;
  }

  v14 = settingsCopy;
  if (!settingsCopy)
  {
    v36 = NUAssertLogger_6299();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "settings != nil"];
      *buf = 138543362;
      v61 = v37;
      _os_log_error_impl(&dword_1C7694000, v36, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v38 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v23 = NUAssertLogger_6299();
    v39 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (!v38)
    {
      if (v39)
      {
        callStackSymbols5 = [MEMORY[0x1E696AF00] callStackSymbols];
        v41 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v61 = v41;
        _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_37;
    }

LABEL_35:
    if (v39)
    {
      v54 = dispatch_get_specific(*callStackSymbols);
      v55 = MEMORY[0x1E696AF00];
      v56 = v54;
      callStackSymbols6 = [v55 callStackSymbols];
      v58 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v61 = v54;
      v62 = 2114;
      v63 = v58;
      _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_37:

    _NUAssertFailHandler();
  }

  v15 = [settingsCopy mutableCopy];
  [v15 setObject:@"background" forKeyedSubscript:@"__dominantInputSettingsKey"];
  v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v16 setObject:inputCopy forKeyedSubscript:@"input"];
  [v16 setObject:backgroundCopy forKeyedSubscript:@"background"];
  [v16 setObject:matteCopy forKeyedSubscript:@"matte"];
  v59.receiver = self;
  v59.super_class = PIInfillCompositeNode;
  v17 = [(NURenderNode *)&v59 initWithSettings:v15 inputs:v16];

  return v17;
}

- (PIInfillCompositeNode)initWithSettings:(id)settings inputs:(id)inputs
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

+ (id)applyDeltaKernel
{
  if (applyDeltaKernel_once != -1)
  {
    dispatch_once(&applyDeltaKernel_once, &__block_literal_global_135);
  }

  v3 = applyDeltaKernel_s_applyDeltaKernel;

  return v3;
}

uint64_t __41__PIInfillCompositeNode_applyDeltaKernel__block_invoke()
{
  v0 = [MEMORY[0x1E695F618] kernelWithString:{@"kernel vec4 applyDelta(__sample a, __sample d) \n{ \n  float4 b = (a + d) - 0.5\n  return float4(b.rgb, 1.0); \n}\n"}];;
  v1 = applyDeltaKernel_s_applyDeltaKernel;
  applyDeltaKernel_s_applyDeltaKernel = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)computeDeltaKernel
{
  if (computeDeltaKernel_once != -1)
  {
    dispatch_once(&computeDeltaKernel_once, &__block_literal_global_6490);
  }

  v3 = computeDeltaKernel_s_computeDeltaKernel;

  return v3;
}

uint64_t __43__PIInfillCompositeNode_computeDeltaKernel__block_invoke()
{
  v0 = [MEMORY[0x1E695F618] kernelWithString:{@"kernel vec4 computeDelta(__sample a, __sample b) \n{ \n  float4 delta = (b - a) + 0.5\n  return float4(delta.rgb, 1.0); \n}\n"}];;
  v1 = computeDeltaKernel_s_computeDeltaKernel;
  computeDeltaKernel_s_computeDeltaKernel = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end
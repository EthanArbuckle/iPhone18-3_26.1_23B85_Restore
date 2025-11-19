@interface PIInfillCompositeNode
+ (id)applyDeltaKernel;
+ (id)computeDeltaKernel;
- (PIInfillCompositeNode)initWithInput:(id)a3 background:(id)a4 matte:(id)a5 settings:(id)a6;
- (PIInfillCompositeNode)initWithSettings:(id)a3 inputs:(id)a4;
- (id)_evaluateImage:(id *)a3;
- (id)backgroundNode;
- (id)inputNode;
- (id)matteNode;
- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6;
@end

@implementation PIInfillCompositeNode

- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6
{
  v8.receiver = self;
  v8.super_class = PIInfillCompositeNode;
  v6 = [(NURenderNode *)&v8 resolvedNodeWithCachedInputs:a3 settings:a4 pipelineState:a5 error:a6];

  return v6;
}

- (id)_evaluateImage:(id *)a3
{
  v69 = *MEMORY[0x1E69E9840];
  if (!a3)
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
        v57 = [v55 callStackSymbols];
        v58 = [v57 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v66 = v54;
        v67 = 2114;
        v68 = v58;
        _os_log_error_impl(&dword_1C7694000, v50, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v51)
    {
      v52 = [MEMORY[0x1E696AF00] callStackSymbols];
      v53 = [v52 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v66 = v53;
      _os_log_error_impl(&dword_1C7694000, v50, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v5 = [MEMORY[0x1E695F648] blendWithRedMaskFilter];
  v6 = [(PIInfillCompositeNode *)self inputNode];
  v62 = 0;
  v7 = [v6 outputImage:&v62];
  v8 = v62;

  if (v7)
  {
    [v5 setInputImage:v7];
    v9 = [(PIInfillCompositeNode *)self matteNode];
    v61 = 0;
    v10 = [v9 outputImage:&v61];
    v11 = v61;

    if (v10)
    {
      [v5 setMaskImage:v10];
      v12 = [(PIInfillCompositeNode *)self backgroundNode];
      v60 = 0;
      v13 = [v12 outputImage:&v60];
      v8 = v60;

      if (v13)
      {
        [v5 setBackgroundImage:v13];
        v14 = [(NURenderNode *)self settings];
        v15 = [v14 objectForKeyedSubscript:@"seamlessCompositing"];
        v16 = [v15 BOOLValue];

        if (v16)
        {
          v17 = [objc_opt_class() computeDeltaKernel];
          [v7 extent];
          v19 = v18;
          v21 = v20;
          v23 = v22;
          v25 = v24;
          v64[0] = v7;
          v64[1] = v13;
          v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:2];
          v59 = [v17 applyWithExtent:v26 arguments:{v19, v21, v23, v25}];

          v27 = objc_alloc_init(PISegmentationInfillFilter);
          [(PISegmentationInfillFilter *)v27 setInfillAlgorithm:4];
          [(PISegmentationInfillFilter *)v27 setInputImage:v59];
          [(PISegmentationInfillFilter *)v27 setInputMatteImage:v10];
          v28 = [(PISegmentationInfillFilter *)v27 outputImage];
          v29 = [objc_opt_class() applyDeltaKernel];
          [v7 extent];
          v31 = v30;
          v33 = v32;
          v35 = v34;
          v37 = v36;
          v63[0] = v7;
          v63[1] = v28;
          v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:2];
          v39 = [v29 applyWithExtent:v38 arguments:{v31, v33, v35, v37}];

          [v5 setInputImage:v39];
        }

        v40 = [v5 outputImage];
      }

      else
      {
        v43 = MEMORY[0x1E69B3A48];
        v44 = [(PIInfillCompositeNode *)self backgroundNode];
        *a3 = [v43 errorWithCode:2 reason:@"Cannot evaluate background image" object:v44 underlyingError:v8];

        v13 = 0;
        v40 = 0;
      }
    }

    else
    {
      v42 = MEMORY[0x1E69B3A48];
      v13 = [(PIInfillCompositeNode *)self matteNode];
      [v42 errorWithCode:2 reason:@"Cannot evaluate input matte" object:v13 underlyingError:v11];
      *a3 = v40 = 0;
      v8 = v11;
    }
  }

  else
  {
    v41 = MEMORY[0x1E69B3A48];
    v10 = [(PIInfillCompositeNode *)self inputNode];
    [v41 errorWithCode:2 reason:@"Cannot evaluate input" object:v10 underlyingError:v8];
    *a3 = v40 = 0;
  }

  return v40;
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

- (PIInfillCompositeNode)initWithInput:(id)a3 background:(id)a4 matte:(id)a5 settings:(id)a6
{
  v64 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    v19 = NUAssertLogger_6299();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "input != nil"];
      *buf = 138543362;
      v61 = v20;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v21 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v23 = NUAssertLogger_6299();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v24)
      {
        v42 = dispatch_get_specific(*v21);
        v43 = MEMORY[0x1E696AF00];
        v44 = v42;
        v21 = [v43 callStackSymbols];
        v45 = [v21 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v61 = v42;
        v62 = 2114;
        v63 = v45;
        _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      v25 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v61 = v21;
      _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v29 = _NUAssertFailHandler();
    goto LABEL_29;
  }

  if (!v11)
  {
    v26 = NUAssertLogger_6299();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "background != nil"];
      *buf = 138543362;
      v61 = v27;
      _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v21 = MEMORY[0x1E69B38E8];
    v28 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v23 = NUAssertLogger_6299();
    v29 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (!v28)
    {
      if (v29)
      {
        v30 = [MEMORY[0x1E696AF00] callStackSymbols];
        v21 = [v30 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v61 = v21;
        _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_31:

      v34 = _NUAssertFailHandler();
      goto LABEL_32;
    }

LABEL_29:
    if (v29)
    {
      v46 = dispatch_get_specific(*v21);
      v47 = MEMORY[0x1E696AF00];
      v48 = v46;
      v21 = [v47 callStackSymbols];
      v49 = [v21 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v61 = v46;
      v62 = 2114;
      v63 = v49;
      _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_31;
  }

  if (!v12)
  {
    v31 = NUAssertLogger_6299();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "matte != nil"];
      *buf = 138543362;
      v61 = v32;
      _os_log_error_impl(&dword_1C7694000, v31, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v21 = MEMORY[0x1E69B38E8];
    v33 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v23 = NUAssertLogger_6299();
    v34 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (!v33)
    {
      if (v34)
      {
        v35 = [MEMORY[0x1E696AF00] callStackSymbols];
        v21 = [v35 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v61 = v21;
        _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_34:

      v39 = _NUAssertFailHandler();
      goto LABEL_35;
    }

LABEL_32:
    if (v34)
    {
      v50 = dispatch_get_specific(*v21);
      v51 = MEMORY[0x1E696AF00];
      v52 = v50;
      v21 = [v51 callStackSymbols];
      v53 = [v21 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v61 = v50;
      v62 = 2114;
      v63 = v53;
      _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_34;
  }

  v14 = v13;
  if (!v13)
  {
    v36 = NUAssertLogger_6299();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "settings != nil"];
      *buf = 138543362;
      v61 = v37;
      _os_log_error_impl(&dword_1C7694000, v36, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v21 = MEMORY[0x1E69B38E8];
    v38 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v23 = NUAssertLogger_6299();
    v39 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (!v38)
    {
      if (v39)
      {
        v40 = [MEMORY[0x1E696AF00] callStackSymbols];
        v41 = [v40 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v61 = v41;
        _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_37;
    }

LABEL_35:
    if (v39)
    {
      v54 = dispatch_get_specific(*v21);
      v55 = MEMORY[0x1E696AF00];
      v56 = v54;
      v57 = [v55 callStackSymbols];
      v58 = [v57 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v61 = v54;
      v62 = 2114;
      v63 = v58;
      _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_37:

    _NUAssertFailHandler();
  }

  v15 = [v13 mutableCopy];
  [v15 setObject:@"background" forKeyedSubscript:@"__dominantInputSettingsKey"];
  v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v16 setObject:v10 forKeyedSubscript:@"input"];
  [v16 setObject:v11 forKeyedSubscript:@"background"];
  [v16 setObject:v12 forKeyedSubscript:@"matte"];
  v59.receiver = self;
  v59.super_class = PIInfillCompositeNode;
  v17 = [(NURenderNode *)&v59 initWithSettings:v15 inputs:v16];

  return v17;
}

- (PIInfillCompositeNode)initWithSettings:(id)a3 inputs:(id)a4
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
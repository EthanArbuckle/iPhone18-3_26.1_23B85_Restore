@interface PIAutoLoopAutoCalculator
+ (id)pipelineFilterForRevertedOriginal;
+ (id)pipelineFilterForUnRevertedOriginal;
- (PIAutoLoopAutoCalculator)initWithComposition:(id)composition;
- (PIAutoLoopAutoCalculator)initWithMedia:(id)media;
- (PIAutoLoopAutoCalculator)initWithRequest:(id)request;
- (void)submit:(id)submit;
@end

@implementation PIAutoLoopAutoCalculator

- (void)submit:(id)submit
{
  v40 = *MEMORY[0x1E69E9840];
  submitCopy = submit;
  if (!submitCopy)
  {
    v20 = NUAssertLogger_6863();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "completion != nil"];
      *buf = 138543362;
      v37 = v21;
      _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v22 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v24 = NUAssertLogger_6863();
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
        v37 = v28;
        v38 = 2114;
        v39 = v32;
        _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v25)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v27 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v37 = v27;
      _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v5 = submitCopy;
  composition = [(NURenderRequest *)self composition];
  if ([composition mediaType] == 3)
  {
  }

  else
  {
    composition2 = [(NURenderRequest *)self composition];
    mediaType = [composition2 mediaType];

    if (mediaType != 2)
    {
      v18 = MEMORY[0x1E69B3A48];
      v19 = [(PIAutoLoopAutoCalculator *)self copy];
      v10 = [v18 invalidError:@"PIAutoLoopAutoCalculator requires a video" object:v19];

      v16 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:v10];
      (v5)[2](v5, v16);
      goto LABEL_10;
    }
  }

  composition3 = [(NURenderRequest *)self composition];
  v10 = [composition3 objectForKeyedSubscript:@"autoLoop"];

  if (!v10 || ([v10 objectForKeyedSubscript:@"recipe"], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
  {
    v15 = [(NURenderRequest *)[PIAutoLoopAnalysisRequest alloc] initWithRequest:self];
    [(PIAutoLoopAnalysisRequest *)v15 setFlavor:[(PIAutoLoopAutoCalculator *)self flavor]];
    v16 = [objc_alloc(MEMORY[0x1E69B3D28]) initWithRequest:self];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __35__PIAutoLoopAutoCalculator_submit___block_invoke;
    v33[3] = &unk_1E82ACC00;
    v34 = v15;
    v35 = v5;
    v17 = v15;
    [v16 submit:v33];

LABEL_10:
    goto LABEL_11;
  }

  v12 = objc_alloc(MEMORY[0x1E69B3C78]);
  v13 = [v10 objectForKeyedSubscript:@"recipe"];
  v14 = [v12 initWithResult:v13];
  (v5)[2](v5, v14);

LABEL_11:
}

void __35__PIAutoLoopAutoCalculator_submit___block_invoke(uint64_t a1, void *a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v17 = 0;
  v3 = [a2 result:&v17];
  v4 = v17;
  if (v3)
  {
    v5 = [v3 properties];
    v6 = [v5 videoCorruptionInfo];
    v7 = PFExists();

    if (v7)
    {
      v8 = [v5 videoCorruptionInfo];
      v9 = PFExists();

      if (v9)
      {
        v10 = +[PIAutoLoopAutoCalculator pipelineFilterForUnRevertedOriginal];
        v19[0] = v10;
        v11 = v19;
      }

      else
      {
        v10 = +[PIAutoLoopAutoCalculator pipelineFilterForRevertedOriginal];
        v18 = v10;
        v11 = &v18;
      }

      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
      [*(a1 + 32) setPipelineFilters:v13];
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __35__PIAutoLoopAutoCalculator_submit___block_invoke_4;
    v15[3] = &unk_1E82ACA08;
    v14 = *(a1 + 32);
    v16 = *(a1 + 40);
    [v14 submit:v15];
    v12 = v16;
  }

  else
  {
    v5 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to get video properties" object:0 underlyingError:v4];
    v12 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:v5];
    (*(*(a1 + 40) + 16))();
  }
}

void __35__PIAutoLoopAutoCalculator_submit___block_invoke_4(uint64_t a1, void *a2)
{
  v9 = 0;
  v3 = [a2 result:&v9];
  v4 = v9;
  v5 = objc_alloc(MEMORY[0x1E69B3C78]);
  v6 = v5;
  if (v3)
  {
    v7 = [v3 recipe];
    v8 = [v6 initWithResult:v7];
  }

  else
  {
    v8 = [v5 initWithError:v4];
  }

  (*(*(a1 + 32) + 16))();
}

BOOL __35__PIAutoLoopAutoCalculator_submit___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 type] == 1 || objc_msgSend(v2, "type") == 2;

  return v3;
}

- (PIAutoLoopAutoCalculator)initWithMedia:(id)media
{
  v32 = *MEMORY[0x1E69E9840];
  mediaCopy = media;
  v5 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v6 = MEMORY[0x1E69B3D70];
    v7 = *MEMORY[0x1E69B3D70];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_ERROR))
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = v7;
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(a2);
      v13 = [v8 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v11, v12];
      *buf = 138543362;
      v29 = v13;
      _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

      v14 = *v5;
      if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
      {
        if (v14 != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_63);
        }

LABEL_11:
        v20 = *v6;
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
        {
          specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
          v22 = MEMORY[0x1E696AF00];
          v23 = specific;
          v24 = v20;
          callStackSymbols = [v22 callStackSymbols];
          v26 = [callStackSymbols componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v29 = specific;
          v30 = 2114;
          v31 = v26;
          _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }

        goto LABEL_13;
      }

      if (v14 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_63);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
    {
      goto LABEL_11;
    }

    v15 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      v16 = MEMORY[0x1E696AF00];
      v17 = v15;
      callStackSymbols2 = [v16 callStackSymbols];
      v19 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v19;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

LABEL_13:
    v27 = objc_opt_class();
    NSStringFromClass(v27);
    objc_claimAutoreleasedReturnValue();
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    _NUAssertFailHandler();
LABEL_14:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_63);
  }
}

- (PIAutoLoopAutoCalculator)initWithRequest:(id)request
{
  v32 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v6 = MEMORY[0x1E69B3D70];
    v7 = *MEMORY[0x1E69B3D70];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_ERROR))
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = v7;
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(a2);
      v13 = [v8 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v11, v12];
      *buf = 138543362;
      v29 = v13;
      _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

      v14 = *v5;
      if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
      {
        if (v14 != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_63);
        }

LABEL_11:
        v20 = *v6;
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
        {
          specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
          v22 = MEMORY[0x1E696AF00];
          v23 = specific;
          v24 = v20;
          callStackSymbols = [v22 callStackSymbols];
          v26 = [callStackSymbols componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v29 = specific;
          v30 = 2114;
          v31 = v26;
          _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }

        goto LABEL_13;
      }

      if (v14 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_63);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
    {
      goto LABEL_11;
    }

    v15 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      v16 = MEMORY[0x1E696AF00];
      v17 = v15;
      callStackSymbols2 = [v16 callStackSymbols];
      v19 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v19;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

LABEL_13:
    v27 = objc_opt_class();
    NSStringFromClass(v27);
    objc_claimAutoreleasedReturnValue();
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    _NUAssertFailHandler();
LABEL_14:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_63);
  }
}

- (PIAutoLoopAutoCalculator)initWithComposition:(id)composition
{
  v4.receiver = self;
  v4.super_class = PIAutoLoopAutoCalculator;
  result = [(NURenderRequest *)&v4 initWithComposition:composition];
  result->_flavor = 1;
  return result;
}

+ (id)pipelineFilterForUnRevertedOriginal
{
  v2 = [objc_alloc(MEMORY[0x1E69B3C30]) initWithBlock:&__block_literal_global_15_6917];

  return v2;
}

id __63__PIAutoLoopAutoCalculator_pipelineFilterForUnRevertedOriginal__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2;
  v7 = [v6 getTagWithPath:@"/ShowOriginalSource" error:a5];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 input];
    v10 = [v6 cacheNode:v9 type:@"Video" settings:MEMORY[0x1E695E0F8] error:a5];

    if (v10)
    {
      [v8 setInput:v10];
      v11 = v8;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)pipelineFilterForRevertedOriginal
{
  v2 = [objc_alloc(MEMORY[0x1E69B3C30]) initWithBlock:&__block_literal_global_6926];

  return v2;
}

id __61__PIAutoLoopAutoCalculator_pipelineFilterForRevertedOriginal__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2;
  v7 = [v6 getTagWithPath:@"/pre-SemanticStyle" error:a5];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 input];
    v10 = [v6 cacheNode:v9 type:@"Video" settings:MEMORY[0x1E695E0F8] error:a5];

    if (v10)
    {
      [v8 setInput:v10];
      v11 = v8;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end
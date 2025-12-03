@interface PIColorNormalizationAutoCalculator
+ (id)autoCalculatorWithImageData:(id)data orientation:(int64_t)orientation;
- (PIColorNormalizationAutoCalculator)initWithComposition:(id)composition;
- (PIColorNormalizationAutoCalculator)initWithMedia:(id)media;
- (PIColorNormalizationAutoCalculator)initWithRequest:(id)request;
- (void)setTime:(id *)time;
- (void)submit:(id)submit;
@end

@implementation PIColorNormalizationAutoCalculator

- (void)setTime:(id *)time
{
  var3 = time->var3;
  *&self->time.value = *&time->var0;
  self->time.epoch = var3;
}

- (void)submit:(id)submit
{
  v31 = *MEMORY[0x1E69E9840];
  submitCopy = submit;
  if (!submitCopy)
  {
    v11 = NUAssertLogger_2471();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "completion != nil"];
      *buf = 138543362;
      v28 = v12;
      _os_log_error_impl(&dword_1C7694000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v13 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v15 = NUAssertLogger_2471();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v19 = dispatch_get_specific(*v13);
        v20 = MEMORY[0x1E696AF00];
        v21 = v19;
        callStackSymbols = [v20 callStackSymbols];
        v23 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v28 = v19;
        v29 = 2114;
        v30 = v23;
        _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v18;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v5 = submitCopy;
  v6 = objc_alloc_init(MEMORY[0x1E69843E0]);
  [v6 setRevision:1];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E69B3D48]) initWithRequest:self];
    v26 = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
    [v7 setVisionRequests:v8];

    v9 = [objc_alloc(MEMORY[0x1E69B3BE8]) initWithTargetPixelCount:0x400000];
    [v7 setScalePolicy:v9];

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __45__PIColorNormalizationAutoCalculator_submit___block_invoke;
    v24[3] = &unk_1E82ACA08;
    v25 = v5;
    [v7 submit:v24];
  }

  else
  {
    v7 = [MEMORY[0x1E69B3A48] unsupportedError:@"Feature Unavailable" object:0];
    v10 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:v7];
    (v5)[2](v5, v10);
  }
}

void __45__PIColorNormalizationAutoCalculator_submit___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v3 = [a2 result:&v25];
  v4 = v25;
  if (v3)
  {
    v5 = [v3 observations];
    v6 = [v5 firstObject];

    if (v6)
    {
      v20 = a1;
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v8 = [v6 adjustmentKeys];
      v9 = [v8 countByEnumeratingWithState:&v21 objects:v28 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v22;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v22 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v21 + 1) + 8 * i);
            v14 = [v6 adjustmentValuesForKey:v13];
            [v7 setObject:v14 forKeyedSubscript:v13];
          }

          v10 = [v8 countByEnumeratingWithState:&v21 objects:v28 count:16];
        }

        while (v10);
      }

      v15 = objc_alloc(MEMORY[0x1E69B3C78]);
      v26[0] = @"version";
      v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v6, "requestRevision")}];
      v27[0] = v16;
      v27[1] = v7;
      v26[1] = @"adjustments";
      v26[2] = @"score";
      v27[2] = &unk_1F471F380;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:3];
      v18 = [v15 initWithResult:v17];

      a1 = v20;
    }

    else
    {
      v19 = objc_alloc(MEMORY[0x1E69B3C78]);
      v7 = [MEMORY[0x1E69B3A48] missingError:@"No color normalization available" object:0];
      v18 = [v19 initWithError:v7];
    }
  }

  else
  {
    v18 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:v4];
  }

  (*(*(a1 + 32) + 16))();
}

- (PIColorNormalizationAutoCalculator)initWithMedia:(id)media
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
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_2499);
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
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_2499);
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
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_2499);
  }
}

- (PIColorNormalizationAutoCalculator)initWithRequest:(id)request
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
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_2499);
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
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_2499);
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
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_2499);
  }
}

- (PIColorNormalizationAutoCalculator)initWithComposition:(id)composition
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = PIColorNormalizationAutoCalculator;
  v3 = [(NURenderRequest *)&v9 initWithComposition:composition];
  v4 = [PIPipelineFilters stopAtTagIncludeOrientationFilter:@"/Master/Source"];
  v10[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  [(NURenderRequest *)v3 setPipelineFilters:v5];

  [(NURenderRequest *)v3 setSampleMode:2];
  v7 = *MEMORY[0x1E6960CC0];
  v8 = *(MEMORY[0x1E6960CC0] + 16);
  [(PIColorNormalizationAutoCalculator *)v3 setTime:&v7];
  return v3;
}

+ (id)autoCalculatorWithImageData:(id)data orientation:(int64_t)orientation
{
  v32 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (!dataCopy)
  {
    v15 = NUAssertLogger_2471();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "data != nil"];
      *buf = 138543362;
      v29 = v16;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v17 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v19 = NUAssertLogger_2471();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v20)
      {
        v23 = dispatch_get_specific(*v17);
        v24 = MEMORY[0x1E696AF00];
        v25 = v23;
        callStackSymbols = [v24 callStackSymbols];
        v27 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v29 = v23;
        v30 = 2114;
        v31 = v27;
        _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v22;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v6 = dataCopy;
  v7 = [MEMORY[0x1E695F658] imageWithData:dataCopy];
  if (v7)
  {
    v8 = [PIPhotoEditHelper imageSourceWithCIImage:v7 orientation:orientation];
    v9 = +[PIPhotoEditHelper newComposition];
    v10 = [PIPhotoEditHelper newCompositionControllerWithComposition:v9];

    [v10 setSource:v8 mediaType:1];
    v11 = [PIColorNormalizationAutoCalculator alloc];
    composition = [v10 composition];
    v13 = [(PIColorNormalizationAutoCalculator *)v11 initWithComposition:composition];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end
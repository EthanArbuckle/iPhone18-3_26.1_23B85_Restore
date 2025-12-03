@interface PIDepthEffectApertureAutoCalculator
- (void)submit:(id)submit;
@end

@implementation PIDepthEffectApertureAutoCalculator

- (void)submit:(id)submit
{
  v33 = *MEMORY[0x1E69E9840];
  submitCopy = submit;
  if (!submitCopy)
  {
    v13 = NUAssertLogger_27584();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "completion != nil"];
      *buf = 138543362;
      v30 = v14;
      _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v15 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v17 = NUAssertLogger_27584();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v18)
      {
        v21 = dispatch_get_specific(*v15);
        v22 = MEMORY[0x1E696AF00];
        v23 = v21;
        callStackSymbols = [v22 callStackSymbols];
        v25 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v30 = v21;
        v31 = 2114;
        v32 = v25;
        _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v30 = v20;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v5 = submitCopy;
  v6 = objc_alloc(MEMORY[0x1E69B3B30]);
  composition = [(NURenderRequest *)self composition];
  v8 = [v6 initWithComposition:composition];

  responseQueue = [(NURenderRequest *)self responseQueue];
  [v8 setResponseQueue:responseQueue];

  [v8 setName:@"PIDepthEffectApertureAutoCalculator-getValuesAtCapture-imageProperties"];
  v10 = [MEMORY[0x1E69B3C30] stopAtTagFilter:@"pre-Adjustments"];
  v28 = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
  [v8 setPipelineFilters:v11];

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __46__PIDepthEffectApertureAutoCalculator_submit___block_invoke;
  v26[3] = &unk_1E82ACA08;
  v27 = v5;
  v12 = v5;
  [v8 submit:v26];
}

void __46__PIDepthEffectApertureAutoCalculator_submit___block_invoke(uint64_t a1, void *a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v17 = 0;
  v3 = [a2 result:&v17];
  v4 = v17;
  if (v3)
  {
    v5 = [v3 properties];
    v16 = 0;
    v6 = [PIValuesAtCapture valuesAtCaptureFromImageProperties:v5 error:&v16];
    v7 = v16;

    if (v6)
    {
      v18 = @"aperture";
      v8 = MEMORY[0x1E696AD98];
      [v6 aperture];
      v9 = [v8 numberWithFloat:?];
      v19[0] = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];

      v11 = *(a1 + 32);
      v12 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithResult:v10];
      (*(v11 + 16))(v11, v12);
    }

    else
    {
      v14 = *(a1 + 32);
      v15 = objc_alloc(MEMORY[0x1E69B3C78]);
      v10 = [v15 initWithResult:MEMORY[0x1E695E0F8]];
      (*(v14 + 16))(v14, v10);
    }

    v4 = v7;
  }

  else
  {
    v13 = *(a1 + 32);
    v5 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:v4];
    (*(v13 + 16))(v13, v5);
  }
}

@end
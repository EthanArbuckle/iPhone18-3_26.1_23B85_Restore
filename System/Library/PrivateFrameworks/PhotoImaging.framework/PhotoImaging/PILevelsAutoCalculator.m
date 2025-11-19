@interface PILevelsAutoCalculator
- (id)calculateSettingsForImageHistogram:(id)a3;
- (id)calculateSettingsForSingleChannelHistogram:(id)a3 suffix:(id)a4;
- (void)submit:(id)a3;
@end

@implementation PILevelsAutoCalculator

- (id)calculateSettingsForSingleChannelHistogram:(id)a3 suffix:(id)a4
{
  v30[10] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  [v6 percentile:0.001];
  v8 = v7;
  [v6 percentile:0.999];
  v10 = v9;

  v11 = (v8 + v10) * 0.5;
  v28 = [@"blackSrc" stringByAppendingString:v5];
  v29[0] = v28;
  v27 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
  v30[0] = v27;
  v26 = [@"blackDst" stringByAppendingString:v5];
  v29[1] = v26;
  v30[1] = &unk_1F471F8E0;
  v25 = [@"shadowSrc" stringByAppendingString:v5];
  v29[2] = v25;
  v24 = [MEMORY[0x1E696AD98] numberWithDouble:(v8 + v11) * 0.5];
  v30[2] = v24;
  v23 = [@"shadowDst" stringByAppendingString:v5];
  v29[3] = v23;
  v30[3] = &unk_1F471F8F0;
  v12 = [@"midSrc" stringByAppendingString:v5];
  v29[4] = v12;
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
  v30[4] = v13;
  v14 = [@"midDst" stringByAppendingString:v5];
  v29[5] = v14;
  v30[5] = &unk_1F471F900;
  v15 = [@"hilightSrc" stringByAppendingString:v5];
  v29[6] = v15;
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:(v10 + v11) * 0.5];
  v30[6] = v16;
  v17 = [@"hilightDst" stringByAppendingString:v5];
  v29[7] = v17;
  v30[7] = &unk_1F471F910;
  v18 = [@"whiteSrc" stringByAppendingString:v5];
  v29[8] = v18;
  v19 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
  v30[8] = v19;
  v20 = [@"whiteDst" stringByAppendingString:v5];

  v29[9] = v20;
  v30[9] = &unk_1F471F920;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:10];

  return v21;
}

- (id)calculateSettingsForImageHistogram:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v5 = MEMORY[0x1E69B3D70];
    v6 = *MEMORY[0x1E69B3D70];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_ERROR))
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = v6;
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [v7 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v10];
      *buf = 138543362;
      v26 = v11;
      _os_log_error_impl(&dword_1C7694000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

      v12 = *v4;
      if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
      {
        if (v12 != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_21835);
        }

LABEL_11:
        v18 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
        {
          specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
          v20 = MEMORY[0x1E696AF00];
          v21 = specific;
          v22 = v18;
          v23 = [v20 callStackSymbols];
          v4 = [v23 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v26 = specific;
          v27 = 2114;
          v28 = v4;
          _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }

        goto LABEL_13;
      }

      if (v12 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_21835);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
    {
      goto LABEL_11;
    }

    v13 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      v14 = MEMORY[0x1E696AF00];
      v15 = v13;
      v16 = [v14 callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v26 = v17;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

LABEL_13:
    v24 = objc_opt_class();
    NSStringFromClass(v24);
    objc_claimAutoreleasedReturnValue();
    _NUAssertFailHandler();
LABEL_14:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_21835);
  }
}

- (void)submit:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v14 = NUAssertLogger_21851();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "completion != nil"];
      *buf = 138543362;
      v31 = v15;
      _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v16 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v18 = NUAssertLogger_21851();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v19)
      {
        v22 = dispatch_get_specific(*v16);
        v23 = MEMORY[0x1E696AF00];
        v24 = v22;
        v25 = [v23 callStackSymbols];
        v26 = [v25 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v31 = v22;
        v32 = 2114;
        v33 = v26;
        _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      v20 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [v20 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v31 = v21;
      _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v5 = v4;
  v6 = [objc_alloc(MEMORY[0x1E69B3AC8]) initWithRequest:self];
  [v6 setName:@"PILevelsAutoCalculator-histogram"];
  v7 = [PIPipelineFilters stopAtTagIncludeGeometryFilter:@"pre-Levels"];
  v29[0] = v7;
  v8 = +[PIPipelineFilters histogramOptimizationFilter];
  v29[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  [v6 setPipelineFilters:v9];

  [v6 setSampleMode:2];
  v10 = [v6 histogramCalculationColorSpace];
  v11 = [MEMORY[0x1E69B3A10] itur2100HLGColorSpace];
  LOBYTE(v9) = [v10 isEqual:v11];

  if ((v9 & 1) == 0)
  {
    v12 = [MEMORY[0x1E69B3A10] displayP3ColorSpace];
    [v6 setHistogramCalculationColorSpace:v12];
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __33__PILevelsAutoCalculator_submit___block_invoke;
  v27[3] = &unk_1E82ACC00;
  v27[4] = self;
  v28 = v5;
  v13 = v5;
  [v6 submit:v27];
}

void __33__PILevelsAutoCalculator_submit___block_invoke(uint64_t a1, void *a2)
{
  v10 = 0;
  v3 = [a2 result:&v10];
  v4 = v10;
  v5 = [v3 histogram];

  v6 = objc_alloc(MEMORY[0x1E69B3C78]);
  v7 = v6;
  if (v5)
  {
    v8 = [*(a1 + 32) calculateSettingsForImageHistogram:v5];
    v9 = [v7 initWithResult:v8];
  }

  else
  {
    v9 = [v6 initWithError:v4];
  }

  (*(*(a1 + 40) + 16))();
}

@end
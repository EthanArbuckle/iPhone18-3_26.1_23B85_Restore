@interface PISmartColorAutoCalculator
- (id)submitSynchronous:(id *)a3;
- (void)submit:(id)a3;
@end

@implementation PISmartColorAutoCalculator

- (void)submit:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v13 = NUAssertLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "completion != nil"];
      *buf = 138543362;
      v28 = v14;
      _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v15 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v17 = NUAssertLogger();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v18)
      {
        v21 = dispatch_get_specific(*v15);
        v22 = [MEMORY[0x1E696AF00] callStackSymbols];
        v23 = [v22 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v28 = v21;
        v29 = 2114;
        v30 = v23;
        _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      v19 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [v19 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v20;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
    __break(1u);
  }

  v5 = MEMORY[0x1E69B3A18];
  v6 = [(NURenderRequest *)self composition];
  LODWORD(v5) = [v5 isHDRComposition:v6];

  if (v5)
  {
    v7 = [PIPhotosPipelineHDRFilters HDRFilterForSDRFilter:@"CISmartColor"];
  }

  else
  {
    v7 = @"CISmartColor";
  }

  v8 = [objc_alloc(MEMORY[0x1E69B3AE8]) initWithRequest:self dataExtractor:v7 options:0];
  v9 = [PIPipelineFilters stopAtTagIncludeGeometryFilter:@"pre-Adjustments"];
  v26 = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
  [v8 setPipelineFilters:v10];

  v11 = [objc_alloc(MEMORY[0x1E69B3BE8]) initWithTargetPixelCount:0x40000];
  [v8 setScalePolicy:v11];

  [v8 setSampleMode:1];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __37__PISmartColorAutoCalculator_submit___block_invoke;
  v24[3] = &unk_1E82ACA08;
  v12 = v4;
  v25 = v12;
  [v8 submit:v24];
}

void __37__PISmartColorAutoCalculator_submit___block_invoke(uint64_t a1, void *a2)
{
  v8 = 0;
  v3 = [a2 result:&v8];
  v4 = v8;
  v5 = [v3 data];

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithResult:v5];
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:v4];
  }

  v7 = v6;
  (*(*(a1 + 32) + 16))();
}

- (id)submitSynchronous:(id *)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69B3A18];
  v6 = [(NURenderRequest *)self composition];
  LODWORD(v5) = [v5 isHDRComposition:v6];

  if (v5)
  {
    v7 = [PIPhotosPipelineHDRFilters HDRFilterForSDRFilter:@"CISmartColor"];
  }

  else
  {
    v7 = @"CISmartColor";
  }

  v8 = [objc_alloc(MEMORY[0x1E69B3AE8]) initWithRequest:self dataExtractor:v7 options:0];
  v9 = [PIPipelineFilters stopAtTagIncludeGeometryFilter:@"pre-Adjustments"];
  v15[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  [v8 setPipelineFilters:v10];

  v11 = [objc_alloc(MEMORY[0x1E69B3BE8]) initWithTargetPixelCount:0x40000];
  [v8 setScalePolicy:v11];

  [v8 setSampleMode:1];
  v12 = [v8 submitGenericSynchronous:a3];
  v13 = [v12 data];

  return v13;
}

@end
@interface PIRedEyeAutoCalculator
- (id)_options;
- (void)_configureRequest:(id)a3;
- (void)submit:(id)a3;
@end

@implementation PIRedEyeAutoCalculator

- (void)submit:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v15 = NUAssertLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "completion != nil"];
      *buf = 138543362;
      v33 = v16;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v17 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v19 = NUAssertLogger();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v20)
      {
        v23 = dispatch_get_specific(*v17);
        v24 = [MEMORY[0x1E696AF00] callStackSymbols];
        v25 = [v24 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v33 = v23;
        v34 = 2114;
        v35 = v25;
        _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      v21 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [v21 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v33 = v22;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
    __break(1u);
  }

  v5 = [(PIRedEyeAutoCalculator *)self force];
  v6 = [(PIRedEyeAutoCalculator *)self _options];
  v7 = [objc_alloc(MEMORY[0x1E69B3C08]) initWithRequest:self options:v6];
  v8 = [(NURenderRequest *)self internalComposition];
  v9 = [v8 objectForKeyedSubscript:@"raw"];

  if (v9)
  {
    v10 = +[PIPipelineFilters sourceFilterNoOrientation];
    v31 = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
    [v7 setPipelineFilters:v11];
  }

  else
  {
    v10 = [MEMORY[0x1E69B3C30] stopAtTagFilter:@"/ShowOriginalSource"];
    v30 = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
    [v7 setPipelineFilters:v11];
  }

  [(PIRedEyeAutoCalculator *)self _configureRequest:v7];
  v12 = [objc_alloc(MEMORY[0x1E69B3B30]) initWithRequest:self];
  [v12 setName:@"PIRedEyeAutoCalculator-getLensInfo"];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __33__PIRedEyeAutoCalculator_submit___block_invoke;
  v26[3] = &unk_1E82AC648;
  v13 = v7;
  v27 = v13;
  v29 = v5;
  v14 = v4;
  v28 = v14;
  [v12 submit:v26];
}

void __33__PIRedEyeAutoCalculator_submit___block_invoke(uint64_t a1, void *a2)
{
  v22 = 0;
  v3 = [a2 result:&v22];
  v4 = v22;
  if (v3 && ((v19 = v4, [v3 properties], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "metadata"), v6 = objc_claimAutoreleasedReturnValue(), v5, objc_msgSend(v6, "objectForKeyedSubscript:", *MEMORY[0x1E696D9B0]), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "objectForKeyedSubscript:", *MEMORY[0x1E696DA50]), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "objectForKeyedSubscript:", *MEMORY[0x1E696DA58]), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "lowercaseString"), v10 = objc_claimAutoreleasedReturnValue(), v9, !objc_msgSend(v8, "isEqualToString:", @"Apple")) || !objc_msgSend(v10, "containsString:", @"front") ? (v11 = 0) : (v11 = objc_msgSend(v10, "containsString:", @"camera")), v12 = flashFired(v7), objc_msgSend(*(a1 + 32), "options"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "mutableCopy"), v13, objc_msgSend(v14, "setObject:forKeyedSubscript:", v6, @"properties"), objc_msgSend(*(a1 + 32), "setOptions:", v14), v14, v10, v8, v7, v6, v4 = v19, ((*(a1 + 48) | v12 & (v11 ^ 1)) & 1) == 0))
  {
    v17 = *(a1 + 40);
    v18 = objc_alloc(MEMORY[0x1E69B3C78]);
    v16 = [v18 initWithResult:MEMORY[0x1E695E0F8]];
    (*(v17 + 16))(v17, v16);
  }

  else
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __33__PIRedEyeAutoCalculator_submit___block_invoke_2;
    v20[3] = &unk_1E82ACA08;
    v15 = *(a1 + 32);
    v21 = *(a1 + 40);
    [v15 submit:v20];
    v16 = v21;
  }
}

void __33__PIRedEyeAutoCalculator_submit___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = 0;
  v3 = [a2 result:&v10];
  v4 = v10;
  v5 = [v3 data];

  if (v5)
  {
    v6 = [v5 objectForKeyedSubscript:@"inputCorrectionInfo"];
    if ([v6 count])
    {
      v7 = objc_alloc(MEMORY[0x1E69B3C78]);
      v8 = v5;
    }

    else
    {
      v7 = objc_alloc(MEMORY[0x1E69B3C78]);
      v8 = MEMORY[0x1E695E0F8];
    }

    v9 = [v7 initWithResult:v8];
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:v4];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_configureRequest:(id)a3
{
  v4 = a3;
  [v4 setSampleMode:2];
  v3 = [objc_alloc(MEMORY[0x1E69B3BE8]) initWithTargetPixelCount:0x100000];
  [v4 setScalePolicy:v3];
}

- (id)_options
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = [(NURenderRequest *)self composition];
  v3 = [v2 objectForKeyedSubscript:@"orientation"];
  v4 = [v3 objectForKeyedSubscript:@"value"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 integerValue];
  }

  else
  {
    v6 = 1;
  }

  v10 = @"orientation";
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
  v11[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  return v8;
}

@end
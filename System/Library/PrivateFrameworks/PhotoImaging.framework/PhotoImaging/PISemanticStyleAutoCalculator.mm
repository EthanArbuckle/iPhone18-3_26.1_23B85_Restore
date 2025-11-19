@interface PISemanticStyleAutoCalculator
+ (BOOL)canRenderStylesOnComposition:(id)a3;
+ (BOOL)isStylableFromImageProperties:(id)a3 error:(id *)a4;
- (id)_resultFromImageProperties:(id)a3 error:(id *)a4;
- (id)submitSynchronous:(id *)a3;
- (void)submit:(id)a3;
@end

@implementation PISemanticStyleAutoCalculator

- (id)submitSynchronous:(id *)a3
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v11 = NUAssertLogger_1658();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v26 = v12;
      _os_log_error_impl(&dword_1C7694000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v13 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v15 = NUAssertLogger_1658();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v19 = dispatch_get_specific(*v13);
        v20 = MEMORY[0x1E696AF00];
        v21 = v19;
        v22 = [v20 callStackSymbols];
        v23 = [v22 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v26 = v19;
        v27 = 2114;
        v28 = v23;
        _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v26 = v18;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  if (PISemanticStyleIsRenderSupported())
  {
    v5 = [objc_alloc(MEMORY[0x1E69B3B30]) initWithRequest:self];
    v24 = 0;
    v6 = [v5 submitSynchronous:&v24];
    v7 = v24;
    v8 = [v6 properties];

    if (v8)
    {
      v9 = [(PISemanticStyleAutoCalculator *)self _resultFromImageProperties:v8 error:a3];
    }

    else
    {
      [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Properties request failed" object:0 underlyingError:v7];
      *a3 = v9 = 0;
    }
  }

  else
  {
    [MEMORY[0x1E69B3A48] unsupportedError:@"Styles not supported on current platform" object:0];
    *a3 = v9 = 0;
  }

  return v9;
}

- (id)_resultFromImageProperties:(id)a3 error:(id *)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v17 = NUAssertLogger_1658();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "properties != nil"];
      *buf = 138543362;
      v31 = v18;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v19 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v21 = NUAssertLogger_1658();
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
        v31 = v25;
        v32 = 2114;
        v33 = v29;
        _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      v23 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [v23 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v31 = v24;
      _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v6 = v5;
  if ([objc_opt_class() isStylableFromImageProperties:v5 error:a4])
  {
    v7 = [v6 metadata];
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E696DE30]];

    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E6986850]];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v10 = PISemanticStyleSettingsFromMakerNoteProperties(v9);
      v11 = [v10 objectForKeyedSubscript:@"version"];
      v12 = [v11 integerValue];

      v13 = [objc_alloc(MEMORY[0x1E69B3CF0]) initWithMajor:1 minor:0];
      v14 = [v13 major];

      if (v12 <= v14)
      {
        v15 = v10;
      }

      else
      {
        [MEMORY[0x1E69B3A48] unsupportedError:@"Unsupported style rendering version" object:v10];
        *a4 = v15 = 0;
      }
    }

    else
    {
      [MEMORY[0x1E69B3A48] invalidError:@"Invalid MakerNote Style dictionary" object:v9];
      *a4 = v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)submit:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v9 = NUAssertLogger_1658();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "completion != nil"];
      *buf = 138543362;
      v25 = v10;
      _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v11 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v13 = NUAssertLogger_1658();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v14)
      {
        v17 = dispatch_get_specific(*v11);
        v18 = MEMORY[0x1E696AF00];
        v19 = v17;
        v20 = [v18 callStackSymbols];
        v21 = [v20 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v17;
        v26 = 2114;
        v27 = v21;
        _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      v15 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v16;
      _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v5 = v4;
  if (PISemanticStyleIsRenderSupported())
  {
    v6 = [objc_alloc(MEMORY[0x1E69B3B30]) initWithRequest:self];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __40__PISemanticStyleAutoCalculator_submit___block_invoke;
    v22[3] = &unk_1E82ACC00;
    v22[4] = self;
    v23 = v5;
    [v6 submit:v22];
  }

  else
  {
    v7 = [MEMORY[0x1E69B3A48] unsupportedError:@"Styles not supported on current platform" object:0];
    v8 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:v7];
    (v5)[2](v5, v8);
  }
}

void __40__PISemanticStyleAutoCalculator_submit___block_invoke(uint64_t a1, void *a2)
{
  v14 = 0;
  v3 = [a2 result:&v14];
  v4 = v14;
  v5 = [v3 properties];

  if (v5)
  {
    v6 = *(a1 + 32);
    v13 = 0;
    v7 = [v6 _resultFromImageProperties:v5 error:&v13];
    v8 = v13;

    v9 = *(a1 + 40);
    v10 = objc_alloc(MEMORY[0x1E69B3C78]);
    if (v7)
    {
      v11 = [v10 initWithResult:v7];
    }

    else
    {
      v11 = [v10 initWithError:v8];
    }

    v12 = v11;
    (*(v9 + 16))(v9, v11);
  }

  else
  {
    v7 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Properties request failed" object:0 underlyingError:v4];
    v12 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:v7];
    (*(*(a1 + 40) + 16))();
    v8 = v4;
  }
}

+ (BOOL)canRenderStylesOnComposition:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v16 = NUAssertLogger_1658();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "composition != nil"];
      *buf = 138543362;
      v23 = v17;
      _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v8 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v5 = NUAssertLogger_1658();
    v18 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v18)
      {
        specific = dispatch_get_specific(*v8);
        v19 = MEMORY[0x1E696AF00];
        v3 = specific;
        v8 = [v19 callStackSymbols];
        v20 = [v8 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v23 = specific;
        v24 = 2114;
        v25 = v20;
        _os_log_error_impl(&dword_1C7694000, v5, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      specific = [MEMORY[0x1E696AF00] callStackSymbols];
      v8 = [(PISemanticStyleAutoCalculator *)specific componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v23 = v8;
      _os_log_error_impl(&dword_1C7694000, v5, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
LABEL_20:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_1707);
LABEL_5:
    v11 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
    {
      v12 = v11;
      v13 = [v8 description];
      *buf = 138543362;
      v23 = v13;
      _os_log_impl(&dword_1C7694000, v12, OS_LOG_TYPE_INFO, "PISemanticStyleAutoCalculator - not supported: %{public}@", buf, 0xCu);
    }

    goto LABEL_11;
  }

  v5 = v4;
  specific = [(NURenderRequest *)[PISemanticStyleAutoCalculator alloc] initWithComposition:v4];
  v21 = 0;
  v3 = [(PISemanticStyleAutoCalculator *)specific submitSynchronous:&v21];
  v7 = v21;
  v8 = v7;
  if (v3)
  {
    goto LABEL_11;
  }

  v9 = [v7 code];
  v10 = *MEMORY[0x1E69B3D78];
  if (v9 == 9)
  {
    if (v10 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

  if (v10 != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_1707);
  }

  v14 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v23 = v8;
    _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "PISemanticStyleAutoCalculator - error: %{public}@", buf, 0xCu);
  }

LABEL_11:

  return v3 != 0;
}

+ (BOOL)isStylableFromImageProperties:(id)a3 error:(id *)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([MEMORY[0x1E69B3AB0] shouldEnableStylesForProRaw] && (objc_msgSend(v5, "rawProperties"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = 1;
  }

  else
  {
    v8 = [v5 semanticStyleProperties];
    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x1E69B3CF0]) initWithMajor:2 minor:15];
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_1707);
      }

      v10 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
      {
        v11 = v10;
        v12 = [v8 version];
        v17 = 138543618;
        v18 = v9;
        v19 = 2114;
        v20 = v12;
        _os_log_impl(&dword_1C7694000, v11, OS_LOG_TYPE_INFO, "PISemanticStyleAutoCalculator - Check metadata version: Photos supported version: %{public}@ - Asset metadata version: %{public}@", &v17, 0x16u);
      }

      v13 = [v8 version];
      v7 = [v13 isCompatibleWithVersion:v9];

      if ((v7 & 1) == 0)
      {
        v14 = MEMORY[0x1E69B3A48];
        v15 = [v8 version];
        *a4 = [v14 unsupportedError:@"Unsupported style metadata version" object:v15];
      }
    }

    else
    {
      [MEMORY[0x1E69B3A48] unsupportedError:@"Asset is not stylable" object:0];
      *a4 = v7 = 0;
    }
  }

  return v7;
}

@end
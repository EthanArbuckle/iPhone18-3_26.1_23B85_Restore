@interface PISemanticStyleAutoCalculator
+ (BOOL)canRenderStylesOnComposition:(id)composition;
+ (BOOL)isStylableFromImageProperties:(id)properties error:(id *)error;
- (id)_resultFromImageProperties:(id)properties error:(id *)error;
- (id)submitSynchronous:(id *)synchronous;
- (void)submit:(id)submit;
@end

@implementation PISemanticStyleAutoCalculator

- (id)submitSynchronous:(id *)synchronous
{
  v29 = *MEMORY[0x1E69E9840];
  if (!synchronous)
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
        callStackSymbols = [v20 callStackSymbols];
        v23 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v26 = v19;
        v27 = 2114;
        v28 = v23;
        _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [callStackSymbols2 componentsJoinedByString:@"\n"];
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
    properties = [v6 properties];

    if (properties)
    {
      v9 = [(PISemanticStyleAutoCalculator *)self _resultFromImageProperties:properties error:synchronous];
    }

    else
    {
      [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Properties request failed" object:0 underlyingError:v7];
      *synchronous = v9 = 0;
    }
  }

  else
  {
    [MEMORY[0x1E69B3A48] unsupportedError:@"Styles not supported on current platform" object:0];
    *synchronous = v9 = 0;
  }

  return v9;
}

- (id)_resultFromImageProperties:(id)properties error:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  if (!propertiesCopy)
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
        callStackSymbols = [v26 callStackSymbols];
        v29 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v31 = v25;
        v32 = 2114;
        v33 = v29;
        _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v31 = v24;
      _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v6 = propertiesCopy;
  if ([objc_opt_class() isStylableFromImageProperties:propertiesCopy error:error])
  {
    metadata = [v6 metadata];
    v8 = [metadata objectForKeyedSubscript:*MEMORY[0x1E696DE30]];

    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E6986850]];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v10 = PISemanticStyleSettingsFromMakerNoteProperties(v9);
      v11 = [v10 objectForKeyedSubscript:@"version"];
      integerValue = [v11 integerValue];

      v13 = [objc_alloc(MEMORY[0x1E69B3CF0]) initWithMajor:1 minor:0];
      major = [v13 major];

      if (integerValue <= major)
      {
        v15 = v10;
      }

      else
      {
        [MEMORY[0x1E69B3A48] unsupportedError:@"Unsupported style rendering version" object:v10];
        *error = v15 = 0;
      }
    }

    else
    {
      [MEMORY[0x1E69B3A48] invalidError:@"Invalid MakerNote Style dictionary" object:v9];
      *error = v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)submit:(id)submit
{
  v28 = *MEMORY[0x1E69E9840];
  submitCopy = submit;
  if (!submitCopy)
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
        callStackSymbols = [v18 callStackSymbols];
        v21 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v17;
        v26 = 2114;
        v27 = v21;
        _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v16;
      _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v5 = submitCopy;
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

+ (BOOL)canRenderStylesOnComposition:(id)composition
{
  v26 = *MEMORY[0x1E69E9840];
  compositionCopy = composition;
  if (!compositionCopy)
  {
    v16 = NUAssertLogger_1658();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "composition != nil"];
      *buf = 138543362;
      v23 = v17;
      _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v5 = NUAssertLogger_1658();
    v18 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v18)
      {
        specific = dispatch_get_specific(*callStackSymbols);
        v19 = MEMORY[0x1E696AF00];
        v3 = specific;
        callStackSymbols = [v19 callStackSymbols];
        v20 = [callStackSymbols componentsJoinedByString:@"\n"];
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
      callStackSymbols = [(PISemanticStyleAutoCalculator *)specific componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v23 = callStackSymbols;
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
      v13 = [callStackSymbols description];
      *buf = 138543362;
      v23 = v13;
      _os_log_impl(&dword_1C7694000, v12, OS_LOG_TYPE_INFO, "PISemanticStyleAutoCalculator - not supported: %{public}@", buf, 0xCu);
    }

    goto LABEL_11;
  }

  v5 = compositionCopy;
  specific = [(NURenderRequest *)[PISemanticStyleAutoCalculator alloc] initWithComposition:compositionCopy];
  v21 = 0;
  v3 = [(PISemanticStyleAutoCalculator *)specific submitSynchronous:&v21];
  v7 = v21;
  callStackSymbols = v7;
  if (v3)
  {
    goto LABEL_11;
  }

  code = [v7 code];
  v10 = *MEMORY[0x1E69B3D78];
  if (code == 9)
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
    v23 = callStackSymbols;
    _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "PISemanticStyleAutoCalculator - error: %{public}@", buf, 0xCu);
  }

LABEL_11:

  return v3 != 0;
}

+ (BOOL)isStylableFromImageProperties:(id)properties error:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  if ([MEMORY[0x1E69B3AB0] shouldEnableStylesForProRaw] && (objc_msgSend(propertiesCopy, "rawProperties"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = 1;
  }

  else
  {
    semanticStyleProperties = [propertiesCopy semanticStyleProperties];
    if (semanticStyleProperties)
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
        version = [semanticStyleProperties version];
        v17 = 138543618;
        v18 = v9;
        v19 = 2114;
        v20 = version;
        _os_log_impl(&dword_1C7694000, v11, OS_LOG_TYPE_INFO, "PISemanticStyleAutoCalculator - Check metadata version: Photos supported version: %{public}@ - Asset metadata version: %{public}@", &v17, 0x16u);
      }

      version2 = [semanticStyleProperties version];
      v7 = [version2 isCompatibleWithVersion:v9];

      if ((v7 & 1) == 0)
      {
        v14 = MEMORY[0x1E69B3A48];
        version3 = [semanticStyleProperties version];
        *error = [v14 unsupportedError:@"Unsupported style metadata version" object:version3];
      }
    }

    else
    {
      [MEMORY[0x1E69B3A48] unsupportedError:@"Asset is not stylable" object:0];
      *error = v7 = 0;
    }
  }

  return v7;
}

@end
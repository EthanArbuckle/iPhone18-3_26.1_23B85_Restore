@interface _PISensitiveContentAnalysisResult
- (NSString)description;
- (_PISensitiveContentAnalysisResult)initWithSanitization:(id)sanitization;
- (double)sensitivityScore;
@end

@implementation _PISensitiveContentAnalysisResult

- (NSString)description
{
  v34 = *MEMORY[0x1E69E9840];
  v32.receiver = self;
  v32.super_class = _PISensitiveContentAnalysisResult;
  v3 = [(_PISensitiveContentAnalysisResult *)&v32 description];
  sanitization = [(_PISensitiveContentAnalysisResult *)self sanitization];
  safe = [sanitization safe];
  v6 = @"NO";
  if (safe)
  {
    v6 = @"YES";
  }

  v7 = [v3 stringByAppendingFormat:@"\n   isSafe: %@", v6];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  sanitization2 = [(_PISensitiveContentAnalysisResult *)self sanitization];
  signals = [sanitization2 signals];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __48___PISensitiveContentAnalysisResult_description__block_invoke;
  v30[3] = &unk_1E82A9C30;
  v11 = dictionary;
  v31 = v11;
  [signals enumerateKeysAndObjectsUsingBlock:v30];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  allKeys = [v11 allKeys];
  v13 = [allKeys sortedArrayUsingComparator:&__block_literal_global_143];

  obj = v13;
  v14 = [v13 countByEnumeratingWithState:&v26 objects:v33 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    do
    {
      v17 = 0;
      v18 = v7;
      do
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v26 + 1) + 8 * v17);
        v20 = [v11 objectForKeyedSubscript:v19];
        if ([v20 safe])
        {
          v21 = @"safe";
        }

        else
        {
          v21 = @"UNSAFE";
        }

        score = [v20 score];
        [score doubleValue];
        v7 = [v18 stringByAppendingFormat:@"\n        %@: %@ (%f)", v19, v21, v23];

        ++v17;
        v18 = v7;
      }

      while (v15 != v17);
      v15 = [obj countByEnumeratingWithState:&v26 objects:v33 count:16];
    }

    while (v15);
  }

  return v7;
}

- (double)sensitivityScore
{
  v43 = *MEMORY[0x1E69E9840];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults BOOLForKey:@"PI_FORCE_SAFETY_CHECK_FAIL"];

  if ((v4 & 1) == 0)
  {
    Helper_x8__OBJC_CLASS___SCMLImageLabelCoder = gotLoadHelper_x8__OBJC_CLASS___SCMLImageLabelCoder(v5);
    instance = [*(v8 + 1824) instance];
    v10 = [instance encodeToP1:@"ivs.nsfw_explicit"];

    signals = [(SCMLImageSanitization *)self->_sanitization signals];
    v12 = [signals objectForKeyedSubscript:v10];

    if (v12)
    {
LABEL_18:
      score = [v12 score];
      [score doubleValue];
      v6 = v31;

      return v6;
    }

    v13 = MEMORY[0x1E69B3D78];
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_184_160);
    }

    v14 = MEMORY[0x1E69B3D70];
    v15 = *MEMORY[0x1E69B3D70];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_DEFAULT))
    {
      v16 = MEMORY[0x1E696AEC0];
      sanitization = self->_sanitization;
      v18 = v15;
      signals2 = [(SCMLImageSanitization *)sanitization signals];
      v20 = [v16 stringWithFormat:@"Did not get the expected signal. Expected %@, got %@", v10, signals2];
      *buf = 138543362;
      v40 = v20;
      _os_log_impl(&dword_1C7694000, v18, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", buf, 0xCu);

      v21 = *v13;
      if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
      {
        if (v21 != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_184_160);
        }

        goto LABEL_11;
      }

      if (v21 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_184_160);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
    {
LABEL_11:
      v22 = *v14;
      if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
      {
        specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
        v24 = MEMORY[0x1E696AF00];
        v25 = specific;
        v26 = v22;
        callStackSymbols = [v24 callStackSymbols];
        v28 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v40 = specific;
        v41 = 2114;
        v42 = v28;
        _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }

LABEL_17:
      [(SCMLImageSanitization *)self->_sanitization signals];
      v38 = v37 = v10;
      _NUAssertContinueHandler();

      goto LABEL_18;
    }

    v29 = *v14;
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      v33 = MEMORY[0x1E696AF00];
      v34 = v29;
      callStackSymbols2 = [v33 callStackSymbols];
      v36 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v40 = v36;
      _os_log_error_impl(&dword_1C7694000, v34, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_17;
  }

  return 0.999;
}

- (_PISensitiveContentAnalysisResult)initWithSanitization:(id)sanitization
{
  sanitizationCopy = sanitization;
  v8.receiver = self;
  v8.super_class = _PISensitiveContentAnalysisResult;
  v5 = [(_PISensitiveContentAnalysisResult *)&v8 init];
  sanitization = v5->_sanitization;
  v5->_sanitization = sanitizationCopy;

  return v5;
}

@end
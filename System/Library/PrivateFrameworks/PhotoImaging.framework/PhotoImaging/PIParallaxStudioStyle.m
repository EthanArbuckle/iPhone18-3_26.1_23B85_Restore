@interface PIParallaxStudioStyle
+ (id)styleWithColorAnalysis:(id)a3;
+ (id)styleWithParameters:(id)a3 colorSuggestions:(id)a4;
- (id)parameters;
- (id)recipeIdentifier;
@end

@implementation PIParallaxStudioStyle

- (id)recipeIdentifier
{
  if ([(PIParallaxStudioStyle *)self tonality]== 3)
  {
    v2 = @"StudioBright";
  }

  else
  {
    v2 = @"StudioDark";
  }

  return v2;
}

- (id)parameters
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = *MEMORY[0x1E69C0B48];
  v3 = [(PIParallaxStyle *)self clockColor];
  v8[0] = v3;
  v7[1] = *MEMORY[0x1E69C0B80];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PIParallaxStudioStyle tonality](self, "tonality")}];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

+ (id)styleWithParameters:(id)a3 colorSuggestions:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v19 = NUAssertLogger_4208();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "parameters != nil"];
      *buf = 138543362;
      v33 = v20;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v21 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v23 = NUAssertLogger_4208();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v24)
      {
        v27 = dispatch_get_specific(*v21);
        v28 = MEMORY[0x1E696AF00];
        v29 = v27;
        v30 = [v28 callStackSymbols];
        v31 = [v30 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v33 = v27;
        v34 = 2114;
        v35 = v31;
        _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      v25 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v33 = v26;
      _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v8 = v7;
  v9 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69C0B48]];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [MEMORY[0x1E69C0750] whiteColor];
  }

  v12 = v11;

  v13 = *MEMORY[0x1E69C0B80];
  v14 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69C0B80]];

  if (v14)
  {
    v15 = [v6 objectForKeyedSubscript:v13];
    v16 = [v15 integerValue];
  }

  else
  {
    v16 = 3;
  }

  v17 = [[a1 alloc] initWithClockColor:v12 colorSuggestions:v8];
  [v17 setTonality:v16];

  return v17;
}

+ (id)styleWithColorAnalysis:(id)a3
{
  [a3 backgroundLuminance];
  if (v4 < 0.35)
  {
    v5 = [MEMORY[0x1E69C0750] whiteColor];
    v6 = 1;
  }

  else
  {
    v5 = [MEMORY[0x1E69C0750] blackColor];
    v6 = 3;
  }

  v7 = [a1 alloc];
  v8 = [v7 initWithClockColor:v5 colorSuggestions:MEMORY[0x1E695E0F0]];
  [v8 setTonality:v6];

  return v8;
}

@end
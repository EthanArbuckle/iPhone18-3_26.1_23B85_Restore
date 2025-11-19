@interface PIParallaxBlackWhiteMonoStyle
+ (id)styleWithColorAnalysis:(id)a3;
+ (id)styleWithParameters:(id)a3 colorSuggestions:(id)a4;
- (id)defaultDominantColorWithAnalysis:(id)a3;
- (id)parameters;
@end

@implementation PIParallaxBlackWhiteMonoStyle

- (id)defaultDominantColorWithAnalysis:(id)a3
{
  [a3 luminance];
  v4 = [objc_alloc(MEMORY[0x1E69C0750]) initWithRed:v3 green:v3 blue:v3];

  return v4;
}

- (id)parameters
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = *MEMORY[0x1E69C0B48];
  v3 = [(PIParallaxStyle *)self clockColor];
  v8[0] = v3;
  v7[1] = *MEMORY[0x1E69C0B68];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PIParallaxBlackWhiteMonoStyle headroomLook](self, "headroomLook")}];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

+ (id)styleWithParameters:(id)a3 colorSuggestions:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v20 = NUAssertLogger_4208();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "parameters != nil"];
      *buf = 138543362;
      v34 = v21;
      _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v22 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v24 = NUAssertLogger_4208();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v25)
      {
        v28 = dispatch_get_specific(*v22);
        v29 = MEMORY[0x1E696AF00];
        v30 = v28;
        v31 = [v29 callStackSymbols];
        v32 = [v31 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v34 = v28;
        v35 = 2114;
        v36 = v32;
        _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v25)
    {
      v26 = [MEMORY[0x1E696AF00] callStackSymbols];
      v27 = [v26 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v34 = v27;
      _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
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

  v13 = [a1 alloc];
  v14 = [v13 initWithClockColor:v12 colorSuggestions:MEMORY[0x1E695E0F0]];
  v15 = *MEMORY[0x1E69C0B68];
  v16 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69C0B68]];

  if (v16)
  {
    v17 = [v6 objectForKeyedSubscript:v15];
    v18 = [v17 integerValue];
  }

  else
  {
    v18 = 1;
  }

  [v14 setHeadroomLook:v18];

  return v14;
}

+ (id)styleWithColorAnalysis:(id)a3
{
  [a3 backgroundLuminance];
  if (v4 < 0.35)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = [a1 alloc];
  v7 = [MEMORY[0x1E69C0750] whiteColor];
  v8 = [v6 initWithClockColor:v7 colorSuggestions:MEMORY[0x1E695E0F0]];

  [v8 setHeadroomLook:v5];

  return v8;
}

@end
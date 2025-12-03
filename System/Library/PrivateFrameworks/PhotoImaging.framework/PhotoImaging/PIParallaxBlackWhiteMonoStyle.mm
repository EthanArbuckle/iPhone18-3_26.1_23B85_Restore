@interface PIParallaxBlackWhiteMonoStyle
+ (id)styleWithColorAnalysis:(id)analysis;
+ (id)styleWithParameters:(id)parameters colorSuggestions:(id)suggestions;
- (id)defaultDominantColorWithAnalysis:(id)analysis;
- (id)parameters;
@end

@implementation PIParallaxBlackWhiteMonoStyle

- (id)defaultDominantColorWithAnalysis:(id)analysis
{
  [analysis luminance];
  v4 = [objc_alloc(MEMORY[0x1E69C0750]) initWithRed:v3 green:v3 blue:v3];

  return v4;
}

- (id)parameters
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = *MEMORY[0x1E69C0B48];
  clockColor = [(PIParallaxStyle *)self clockColor];
  v8[0] = clockColor;
  v7[1] = *MEMORY[0x1E69C0B68];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PIParallaxBlackWhiteMonoStyle headroomLook](self, "headroomLook")}];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

+ (id)styleWithParameters:(id)parameters colorSuggestions:(id)suggestions
{
  v37 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  suggestionsCopy = suggestions;
  if (!parametersCopy)
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
        callStackSymbols = [v29 callStackSymbols];
        v32 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v34 = v28;
        v35 = 2114;
        v36 = v32;
        _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v25)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v27 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v34 = v27;
      _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v8 = suggestionsCopy;
  v9 = [parametersCopy objectForKeyedSubscript:*MEMORY[0x1E69C0B48]];
  v10 = v9;
  if (v9)
  {
    whiteColor = v9;
  }

  else
  {
    whiteColor = [MEMORY[0x1E69C0750] whiteColor];
  }

  v12 = whiteColor;

  v13 = [self alloc];
  v14 = [v13 initWithClockColor:v12 colorSuggestions:MEMORY[0x1E695E0F0]];
  v15 = *MEMORY[0x1E69C0B68];
  v16 = [parametersCopy objectForKeyedSubscript:*MEMORY[0x1E69C0B68]];

  if (v16)
  {
    v17 = [parametersCopy objectForKeyedSubscript:v15];
    integerValue = [v17 integerValue];
  }

  else
  {
    integerValue = 1;
  }

  [v14 setHeadroomLook:integerValue];

  return v14;
}

+ (id)styleWithColorAnalysis:(id)analysis
{
  [analysis backgroundLuminance];
  if (v4 < 0.35)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = [self alloc];
  whiteColor = [MEMORY[0x1E69C0750] whiteColor];
  v8 = [v6 initWithClockColor:whiteColor colorSuggestions:MEMORY[0x1E695E0F0]];

  [v8 setHeadroomLook:v5];

  return v8;
}

@end
@interface PIParallaxOriginalStyle
+ (id)styleWithColorAnalysis:(id)analysis;
+ (id)styleWithParameters:(id)parameters colorSuggestions:(id)suggestions;
- (BOOL)configureForCategory:(id)category;
- (PIParallaxOriginalStyle)initWithColorAnalysis:(id)analysis;
- (id)parameters;
@end

@implementation PIParallaxOriginalStyle

- (BOOL)configureForCategory:(id)category
{
  categoryCopy = category;
  if ([categoryCopy isEqualToString:*MEMORY[0x1E69C0BE8]])
  {
    v4 = 1;
  }

  else
  {
    v4 = [categoryCopy isEqualToString:*MEMORY[0x1E69C0BE0]];
  }

  return v4;
}

- (id)parameters
{
  v10[3] = *MEMORY[0x1E69E9840];
  v9[0] = *MEMORY[0x1E69C0B48];
  clockColor = [(PIParallaxStyle *)self clockColor];
  v10[0] = clockColor;
  v9[1] = *MEMORY[0x1E69C0B58];
  v4 = MEMORY[0x1E696AD98];
  [(PIParallaxStyle *)self clockVibrancy];
  v5 = [v4 numberWithDouble:?];
  v10[1] = v5;
  v9[2] = *MEMORY[0x1E69C0B68];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PIParallaxOriginalStyle headroomLook](self, "headroomLook")}];
  v10[2] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];

  return v7;
}

- (PIParallaxOriginalStyle)initWithColorAnalysis:(id)analysis
{
  analysisCopy = analysis;
  v5 = [objc_opt_class() styleWithColorAnalysis:analysisCopy];

  return v5;
}

+ (id)styleWithParameters:(id)parameters colorSuggestions:(id)suggestions
{
  v43 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  suggestionsCopy = suggestions;
  if (!parametersCopy)
  {
    v26 = NUAssertLogger_4208();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "parameters != nil"];
      *buf = 138543362;
      v40 = v27;
      _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v28 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v30 = NUAssertLogger_4208();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v31)
      {
        v34 = dispatch_get_specific(*v28);
        v35 = MEMORY[0x1E696AF00];
        v36 = v34;
        callStackSymbols = [v35 callStackSymbols];
        v38 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v40 = v34;
        v41 = 2114;
        v42 = v38;
        _os_log_error_impl(&dword_1C7694000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v40 = v33;
      _os_log_error_impl(&dword_1C7694000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
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

  v13 = [parametersCopy objectForKeyedSubscript:*MEMORY[0x1E69C0B58]];
  v14 = v13;
  v15 = &unk_1F471F3D0;
  if (v13)
  {
    v15 = v13;
  }

  v16 = v15;

  v17 = [self alloc];
  [v16 doubleValue];
  v19 = v18;

  v20 = [v17 initWithClockColor:v12 vibrancy:v8 colorSuggestions:v19];
  v21 = *MEMORY[0x1E69C0B68];
  v22 = [parametersCopy objectForKeyedSubscript:*MEMORY[0x1E69C0B68]];

  if (v22)
  {
    v23 = [parametersCopy objectForKeyedSubscript:v21];
    integerValue = [v23 integerValue];
  }

  else
  {
    integerValue = 1;
  }

  [v20 setHeadroomLook:integerValue];

  return v20;
}

+ (id)styleWithColorAnalysis:(id)analysis
{
  analysisCopy = analysis;
  [analysisCopy backgroundLuminance];
  if (v5 < 0.35)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  v7 = [self alloc];
  whiteColor = [MEMORY[0x1E69C0750] whiteColor];
  v9 = [v7 initWithClockColor:whiteColor colorSuggestions:MEMORY[0x1E695E0F0]];

  [v9 setHeadroomLook:v6];
  if (PFPosterEnableSmartTextColor())
  {
    foregroundColors = [analysisCopy foregroundColors];
    v11 = PFFilter();

    if ([v11 count])
    {
      clockAreaColors = [analysisCopy clockAreaColors];
      firstObject = [clockAreaColors firstObject];

      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __50__PIParallaxOriginalStyle_styleWithColorAnalysis___block_invoke_2;
      v24[3] = &unk_1E82A9F98;
      v14 = firstObject;
      v25 = v14;
      v15 = [v11 sortedArrayUsingComparator:v24];

      firstObject2 = [v15 firstObject];
      v17 = firstObject2;
      if (v14)
      {
        [firstObject2 deltaE94DistanceToColor:v14];
        v19 = 0.0;
        if (v18 >= 2.0)
        {
          if (v18 >= 4.0)
          {
            if (v18 >= 30.0)
            {
              [v17 luma];
              if (v23 >= 0.5)
              {
                v19 = 0.85;
              }

              else
              {
                v19 = 1.0;
              }
            }

            else
            {
              v19 = 0.6;
            }
          }

          else
          {
            v19 = 0.1;
          }
        }
      }

      else
      {
        v19 = 0.8;
      }

      v21 = [self alloc];
      v20 = [v21 initWithClockColor:v17 vibrancy:MEMORY[0x1E695E0F0] colorSuggestions:v19];
      [v20 setHeadroomLook:v6];

      v11 = v15;
    }

    else
    {
      v20 = v9;
    }
  }

  else
  {
    v20 = v9;
  }

  return v20;
}

uint64_t __50__PIParallaxOriginalStyle_styleWithColorAnalysis___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [a2 deltaE94DistanceToColor:v5];
  v8 = v7;
  [v6 deltaE94DistanceToColor:*(a1 + 32)];
  v10 = v9;

  if (v8 > v10)
  {
    return -1;
  }

  else
  {
    return v8 < v10;
  }
}

BOOL __50__PIParallaxOriginalStyle_styleWithColorAnalysis___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 hue];
  if (v3 >= 30.0)
  {
    [v2 hue];
    v4 = v5 > 100.0;
  }

  else
  {
    v4 = 1;
  }

  [v2 chroma];
  v7 = v6;
  [v2 luma];
  v9 = v7 > 0.3 && v4;
  v10 = v8 > 0.25 && v9;

  return v10;
}

@end
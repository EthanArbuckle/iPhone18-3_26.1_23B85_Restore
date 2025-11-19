@interface PIParallaxColorWashSingleStyle
+ (id)styleWithColorAnalysis:(id)a3;
+ (id)styleWithParameters:(id)a3 colorSuggestions:(id)a4;
- (BOOL)configureForCategory:(id)a3;
- (PIParallaxColorWashSingleStyle)initWithColor:(id)a3 background:(BOOL)a4 clockColor:(id)a5 suggestions:(id)a6;
- (id)parameters;
@end

@implementation PIParallaxColorWashSingleStyle

- (BOOL)configureForCategory:(id)a3
{
  v4 = [(PIParallaxStyle *)self colorSuggestionForCategory:a3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 primaryColor];
    [(PIParallaxColorWashSingleStyle *)self setColor:v6];
  }

  return v5 != 0;
}

- (id)parameters
{
  v10[3] = *MEMORY[0x1E69E9840];
  v9[0] = *MEMORY[0x1E69C0B60];
  v3 = [(PIParallaxColorWashSingleStyle *)self color];
  v10[0] = v3;
  v9[1] = *MEMORY[0x1E69C0B48];
  v4 = [(PIParallaxStyle *)self clockColor];
  v10[1] = v4;
  v9[2] = *MEMORY[0x1E69C0B40];
  v5 = [(PIParallaxColorWashSingleStyle *)self showsBackground];
  v6 = &unk_1F471F3F0;
  if (v5)
  {
    v6 = &unk_1F471F3E0;
  }

  v10[2] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];

  return v7;
}

- (PIParallaxColorWashSingleStyle)initWithColor:(id)a3 background:(BOOL)a4 clockColor:(id)a5 suggestions:(id)a6
{
  v35 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (!v10)
  {
    v17 = NUAssertLogger_4208();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "color != nil"];
      *buf = 138543362;
      v32 = v18;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v19 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v21 = NUAssertLogger_4208();
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
        v32 = v25;
        v33 = 2114;
        v34 = v29;
        _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      v23 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [v23 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v32 = v24;
      _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v13 = v12;
  v30.receiver = self;
  v30.super_class = PIParallaxColorWashSingleStyle;
  v14 = [(PIParallaxStyle *)&v30 initWithClockColor:v11 colorSuggestions:v12];
  color = v14->_color;
  v14->_color = v10;

  v14->_showsBackground = a4;
  return v14;
}

+ (id)styleWithParameters:(id)a3 colorSuggestions:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v17 = NUAssertLogger_4208();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "parameters != nil"];
      *buf = 138543362;
      v31 = v18;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v19 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v21 = NUAssertLogger_4208();
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

  v8 = v7;
  v9 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69C0B60]];
  v10 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69C0B48]];
  v11 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69C0B40]];
  v12 = v11;
  if (v11)
  {
    [v11 doubleValue];
    v14 = v13 < 1.0;
  }

  else
  {
    v14 = 1;
  }

  v15 = [[a1 alloc] initWithColor:v9 background:v14 clockColor:v10 suggestions:v8];

  return v15;
}

+ (id)styleWithColorAnalysis:(id)a3
{
  v4 = a3;
  v5 = [[PIParallaxColorSuggester alloc] initWithColorAnalysis:v4];
  [(PIParallaxColorSuggester *)v5 addRuleWithHueMin:&__block_literal_global_256 hueMax:50.0 suggestion:110.0];
  v6 = [v4 backgroundColors];

  v7 = +[PIGlobalSettings globalSettings];
  v8 = [v7 parallaxStyleAvoidColorWashBrownOverride];

  if (v8)
  {
    v9 = PFMap();

    v6 = v9;
  }

  v10 = +[PIParallaxColorPalette colorWashSinglePalette];
  v11 = [(PIParallaxColorSuggester *)v5 suggestedColorsForColors:v6 fromColorPalette:v10];

  v12 = PFMap();
  v13 = [a1 alloc];
  v14 = [v11 firstObject];
  v15 = [MEMORY[0x1E69C0750] whiteColor];
  v16 = [v13 initWithColor:v14 background:1 clockColor:v15 suggestions:v12];

  return v16;
}

id __57__PIParallaxColorWashSingleStyle_styleWithColorAnalysis___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69C07B0];
  v3 = a2;
  v4 = [[v2 alloc] initWithPrimaryColor:v3 secondaryColor:0];

  return v4;
}

id __57__PIParallaxColorWashSingleStyle_styleWithColorAnalysis___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69C0750];
  v3 = a2;
  v4 = [v2 alloc];
  [v3 luma];
  v6 = v5;
  [v3 hue];
  v8 = v7 + -30.0;
  [v3 chroma];
  v10 = v9;

  v11 = [v4 initWithLuma:v6 hue:v8 chroma:v10];

  return v11;
}

id __57__PIParallaxColorWashSingleStyle_styleWithColorAnalysis___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  [a3 foregroundLuminance];
  if (v5 < 0.67)
  {
    [v4 hue];
    v7 = v6;
    [v4 hue];
    v9 = 30.0;
    if (v7 < 80.0)
    {
      v9 = -30.0;
    }

    v10 = v8 + v9;
    v11 = objc_alloc(MEMORY[0x1E69C0750]);
    [v4 luma];
    v13 = v12;
    [v4 chroma];
    v15 = [v11 initWithLuma:v13 hue:v10 chroma:v14];

    v4 = v15;
  }

  return v4;
}

@end
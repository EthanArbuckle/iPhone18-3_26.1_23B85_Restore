@interface PIParallaxColorWashSingleStyle
+ (id)styleWithColorAnalysis:(id)analysis;
+ (id)styleWithParameters:(id)parameters colorSuggestions:(id)suggestions;
- (BOOL)configureForCategory:(id)category;
- (PIParallaxColorWashSingleStyle)initWithColor:(id)color background:(BOOL)background clockColor:(id)clockColor suggestions:(id)suggestions;
- (id)parameters;
@end

@implementation PIParallaxColorWashSingleStyle

- (BOOL)configureForCategory:(id)category
{
  v4 = [(PIParallaxStyle *)self colorSuggestionForCategory:category];
  v5 = v4;
  if (v4)
  {
    primaryColor = [v4 primaryColor];
    [(PIParallaxColorWashSingleStyle *)self setColor:primaryColor];
  }

  return v5 != 0;
}

- (id)parameters
{
  v10[3] = *MEMORY[0x1E69E9840];
  v9[0] = *MEMORY[0x1E69C0B60];
  color = [(PIParallaxColorWashSingleStyle *)self color];
  v10[0] = color;
  v9[1] = *MEMORY[0x1E69C0B48];
  clockColor = [(PIParallaxStyle *)self clockColor];
  v10[1] = clockColor;
  v9[2] = *MEMORY[0x1E69C0B40];
  showsBackground = [(PIParallaxColorWashSingleStyle *)self showsBackground];
  v6 = &unk_1F471F3F0;
  if (showsBackground)
  {
    v6 = &unk_1F471F3E0;
  }

  v10[2] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];

  return v7;
}

- (PIParallaxColorWashSingleStyle)initWithColor:(id)color background:(BOOL)background clockColor:(id)clockColor suggestions:(id)suggestions
{
  v35 = *MEMORY[0x1E69E9840];
  colorCopy = color;
  clockColorCopy = clockColor;
  suggestionsCopy = suggestions;
  if (!colorCopy)
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
        callStackSymbols = [v26 callStackSymbols];
        v29 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v32 = v25;
        v33 = 2114;
        v34 = v29;
        _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v32 = v24;
      _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v13 = suggestionsCopy;
  v30.receiver = self;
  v30.super_class = PIParallaxColorWashSingleStyle;
  v14 = [(PIParallaxStyle *)&v30 initWithClockColor:clockColorCopy colorSuggestions:suggestionsCopy];
  color = v14->_color;
  v14->_color = colorCopy;

  v14->_showsBackground = background;
  return v14;
}

+ (id)styleWithParameters:(id)parameters colorSuggestions:(id)suggestions
{
  v34 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  suggestionsCopy = suggestions;
  if (!parametersCopy)
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

  v8 = suggestionsCopy;
  v9 = [parametersCopy objectForKeyedSubscript:*MEMORY[0x1E69C0B60]];
  v10 = [parametersCopy objectForKeyedSubscript:*MEMORY[0x1E69C0B48]];
  v11 = [parametersCopy objectForKeyedSubscript:*MEMORY[0x1E69C0B40]];
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

  v15 = [[self alloc] initWithColor:v9 background:v14 clockColor:v10 suggestions:v8];

  return v15;
}

+ (id)styleWithColorAnalysis:(id)analysis
{
  analysisCopy = analysis;
  v5 = [[PIParallaxColorSuggester alloc] initWithColorAnalysis:analysisCopy];
  [(PIParallaxColorSuggester *)v5 addRuleWithHueMin:&__block_literal_global_256 hueMax:50.0 suggestion:110.0];
  backgroundColors = [analysisCopy backgroundColors];

  v7 = +[PIGlobalSettings globalSettings];
  parallaxStyleAvoidColorWashBrownOverride = [v7 parallaxStyleAvoidColorWashBrownOverride];

  if (parallaxStyleAvoidColorWashBrownOverride)
  {
    v9 = PFMap();

    backgroundColors = v9;
  }

  v10 = +[PIParallaxColorPalette colorWashSinglePalette];
  v11 = [(PIParallaxColorSuggester *)v5 suggestedColorsForColors:backgroundColors fromColorPalette:v10];

  v12 = PFMap();
  v13 = [self alloc];
  firstObject = [v11 firstObject];
  whiteColor = [MEMORY[0x1E69C0750] whiteColor];
  v16 = [v13 initWithColor:firstObject background:1 clockColor:whiteColor suggestions:v12];

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
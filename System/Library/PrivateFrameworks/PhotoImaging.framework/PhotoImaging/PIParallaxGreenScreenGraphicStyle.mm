@interface PIParallaxGreenScreenGraphicStyle
+ (id)styleWithColorAnalysis:(id)analysis;
+ (id)styleWithParameters:(id)parameters colorSuggestions:(id)suggestions;
- (BOOL)configureForCategory:(id)category;
- (PIParallaxGreenScreenGraphicStyle)initWithColor:(id)color clockColor:(id)clockColor colorSuggestions:(id)suggestions;
- (id)parameters;
@end

@implementation PIParallaxGreenScreenGraphicStyle

- (BOOL)configureForCategory:(id)category
{
  v4 = [(PIParallaxStyle *)self colorSuggestionForCategory:category];
  v5 = v4;
  if (v4)
  {
    primaryColor = [v4 primaryColor];
    [(PIParallaxGreenScreenGraphicStyle *)self setColor:primaryColor];
  }

  return v5 != 0;
}

- (id)parameters
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = *MEMORY[0x1E69C0B48];
  clockColor = [(PIParallaxStyle *)self clockColor];
  v8[0] = clockColor;
  v7[1] = *MEMORY[0x1E69C0B60];
  color = [(PIParallaxGreenScreenGraphicStyle *)self color];
  v8[1] = color;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (PIParallaxGreenScreenGraphicStyle)initWithColor:(id)color clockColor:(id)clockColor colorSuggestions:(id)suggestions
{
  v33 = *MEMORY[0x1E69E9840];
  colorCopy = color;
  clockColorCopy = clockColor;
  suggestionsCopy = suggestions;
  if (!colorCopy)
  {
    v15 = NUAssertLogger_4208();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "color != nil"];
      *buf = 138543362;
      v30 = v16;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v17 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v19 = NUAssertLogger_4208();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v20)
      {
        v23 = dispatch_get_specific(*v17);
        v24 = MEMORY[0x1E696AF00];
        v25 = v23;
        callStackSymbols = [v24 callStackSymbols];
        v27 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v30 = v23;
        v31 = 2114;
        v32 = v27;
        _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v30 = v22;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v11 = suggestionsCopy;
  v28.receiver = self;
  v28.super_class = PIParallaxGreenScreenGraphicStyle;
  v12 = [(PIParallaxStyle *)&v28 initWithClockColor:clockColorCopy colorSuggestions:suggestionsCopy];
  color = v12->_color;
  v12->_color = colorCopy;

  return v12;
}

+ (id)styleWithParameters:(id)parameters colorSuggestions:(id)suggestions
{
  v6 = *MEMORY[0x1E69C0B60];
  suggestionsCopy = suggestions;
  parametersCopy = parameters;
  v9 = [parametersCopy objectForKeyedSubscript:v6];
  v10 = [parametersCopy objectForKeyedSubscript:*MEMORY[0x1E69C0B48]];

  if (v10)
  {
    blackColor = v10;
  }

  else
  {
    blackColor = [MEMORY[0x1E69C0750] blackColor];
  }

  v12 = blackColor;

  v13 = [[self alloc] initWithColor:v9 clockColor:v12 colorSuggestions:suggestionsCopy];

  return v13;
}

+ (id)styleWithColorAnalysis:(id)analysis
{
  analysisCopy = analysis;
  v5 = [[PIParallaxColorSuggester alloc] initWithColorAnalysis:analysisCopy];
  backgroundColors = [analysisCopy backgroundColors];

  v7 = +[PIParallaxColorPalette greenScreenVibrantPalette];
  v8 = [(PIParallaxColorSuggester *)v5 suggestedColorsForColors:backgroundColors fromColorPalette:v7];

  v9 = PFMap();
  firstObject = [v9 firstObject];
  primaryColor = [firstObject primaryColor];

  v12 = objc_alloc(MEMORY[0x1E69C0750]);
  [primaryColor hue];
  v14 = v13;
  [primaryColor chroma];
  v16 = [v12 initWithLuma:0.75 hue:v14 chroma:v15];
  v17 = [self alloc];
  blackColor = [MEMORY[0x1E69C0750] blackColor];
  v19 = [v17 initWithColor:v16 clockColor:blackColor colorSuggestions:MEMORY[0x1E695E0F0]];

  return v19;
}

id __60__PIParallaxGreenScreenGraphicStyle_styleWithColorAnalysis___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69C07B0];
  v3 = a2;
  v4 = [[v2 alloc] initWithPrimaryColor:v3 secondaryColor:0];

  return v4;
}

@end
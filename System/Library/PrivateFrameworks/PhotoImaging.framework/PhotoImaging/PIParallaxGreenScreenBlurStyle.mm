@interface PIParallaxGreenScreenBlurStyle
+ (id)styleWithColorAnalysis:(id)analysis;
+ (id)styleWithParameters:(id)parameters colorSuggestions:(id)suggestions;
- (BOOL)configureForCategory:(id)category;
- (PIParallaxGreenScreenBlurStyle)initWithColor:(id)color clockColor:(id)clockColor colorSuggestions:(id)suggestions;
- (id)parameters;
@end

@implementation PIParallaxGreenScreenBlurStyle

- (BOOL)configureForCategory:(id)category
{
  v4 = [(PIParallaxStyle *)self colorSuggestionForCategory:category];
  v5 = v4;
  if (v4)
  {
    primaryColor = [v4 primaryColor];
    [(PIParallaxGreenScreenBlurStyle *)self setColor:primaryColor];
  }

  return v5 != 0;
}

- (id)parameters
{
  v18[4] = *MEMORY[0x1E69E9840];
  color = [(PIParallaxGreenScreenBlurStyle *)self color];
  color2 = [(PIParallaxGreenScreenBlurStyle *)self color];
  [color2 luma];
  v6 = v5;

  v7 = (v6 + -0.2) / 0.6;
  v8 = fmin(fmax(v7 * -2.0 + 1.0, 0.0), 1.0);
  v9 = fmin(fmax(v7 * 2.0 + -1.0, 0.0), 1.0);
  v17[0] = *MEMORY[0x1E69C0B48];
  clockColor = [(PIParallaxStyle *)self clockColor];
  v11 = *MEMORY[0x1E69C0B60];
  v18[0] = clockColor;
  v18[1] = color;
  v12 = *MEMORY[0x1E69C0B78];
  v17[1] = v11;
  v17[2] = v12;
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
  v18[2] = v13;
  v17[3] = *MEMORY[0x1E69C0B70];
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
  v18[3] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];

  return v15;
}

- (PIParallaxGreenScreenBlurStyle)initWithColor:(id)color clockColor:(id)clockColor colorSuggestions:(id)suggestions
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
  v28.super_class = PIParallaxGreenScreenBlurStyle;
  v12 = [(PIParallaxStyle *)&v28 initWithClockColor:clockColorCopy colorSuggestions:suggestionsCopy];
  color = v12->_color;
  v12->_color = colorCopy;

  return v12;
}

+ (id)styleWithParameters:(id)parameters colorSuggestions:(id)suggestions
{
  v6 = *MEMORY[0x1E69C0B78];
  suggestionsCopy = suggestions;
  parametersCopy = parameters;
  v9 = [parametersCopy objectForKeyedSubscript:v6];
  [v9 doubleValue];
  v11 = v10;

  v12 = [parametersCopy objectForKeyedSubscript:*MEMORY[0x1E69C0B70]];
  [v12 doubleValue];
  v14 = v13;

  v15 = -v11;
  if (v14 > 0.0)
  {
    v15 = v14;
  }

  v16 = (v15 + 1.0) * 0.5 * 0.6 + 0.2;
  v17 = [parametersCopy objectForKeyedSubscript:*MEMORY[0x1E69C0B60]];
  v18 = objc_alloc(MEMORY[0x1E69C0750]);
  [v17 hue];
  v20 = v19;
  [v17 chroma];
  v22 = [v18 initWithLuma:v16 hue:v20 chroma:v21];
  v23 = [parametersCopy objectForKeyedSubscript:*MEMORY[0x1E69C0B48]];

  if (v23)
  {
    whiteColor = v23;
  }

  else
  {
    whiteColor = [MEMORY[0x1E69C0750] whiteColor];
  }

  v25 = whiteColor;

  v26 = [[self alloc] initWithColor:v22 clockColor:v25 colorSuggestions:suggestionsCopy];

  return v26;
}

+ (id)styleWithColorAnalysis:(id)analysis
{
  backgroundColors = [analysis backgroundColors];
  firstObject = [backgroundColors firstObject];

  v6 = objc_alloc(MEMORY[0x1E69C0750]);
  [firstObject hue];
  v8 = v7;
  [firstObject chroma];
  v10 = [v6 initWithLuma:0.5 hue:v8 chroma:v9];
  v11 = [self alloc];
  whiteColor = [MEMORY[0x1E69C0750] whiteColor];
  v13 = [v11 initWithColor:v10 clockColor:whiteColor colorSuggestions:MEMORY[0x1E695E0F0]];

  return v13;
}

@end
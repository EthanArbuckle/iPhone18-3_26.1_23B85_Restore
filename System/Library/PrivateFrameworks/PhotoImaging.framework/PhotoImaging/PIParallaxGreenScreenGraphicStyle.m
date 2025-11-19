@interface PIParallaxGreenScreenGraphicStyle
+ (id)styleWithColorAnalysis:(id)a3;
+ (id)styleWithParameters:(id)a3 colorSuggestions:(id)a4;
- (BOOL)configureForCategory:(id)a3;
- (PIParallaxGreenScreenGraphicStyle)initWithColor:(id)a3 clockColor:(id)a4 colorSuggestions:(id)a5;
- (id)parameters;
@end

@implementation PIParallaxGreenScreenGraphicStyle

- (BOOL)configureForCategory:(id)a3
{
  v4 = [(PIParallaxStyle *)self colorSuggestionForCategory:a3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 primaryColor];
    [(PIParallaxGreenScreenGraphicStyle *)self setColor:v6];
  }

  return v5 != 0;
}

- (id)parameters
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = *MEMORY[0x1E69C0B48];
  v3 = [(PIParallaxStyle *)self clockColor];
  v8[0] = v3;
  v7[1] = *MEMORY[0x1E69C0B60];
  v4 = [(PIParallaxGreenScreenGraphicStyle *)self color];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (PIParallaxGreenScreenGraphicStyle)initWithColor:(id)a3 clockColor:(id)a4 colorSuggestions:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
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
        v26 = [v24 callStackSymbols];
        v27 = [v26 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v30 = v23;
        v31 = 2114;
        v32 = v27;
        _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      v21 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [v21 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v30 = v22;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v11 = v10;
  v28.receiver = self;
  v28.super_class = PIParallaxGreenScreenGraphicStyle;
  v12 = [(PIParallaxStyle *)&v28 initWithClockColor:v9 colorSuggestions:v10];
  color = v12->_color;
  v12->_color = v8;

  return v12;
}

+ (id)styleWithParameters:(id)a3 colorSuggestions:(id)a4
{
  v6 = *MEMORY[0x1E69C0B60];
  v7 = a4;
  v8 = a3;
  v9 = [v8 objectForKeyedSubscript:v6];
  v10 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69C0B48]];

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = [MEMORY[0x1E69C0750] blackColor];
  }

  v12 = v11;

  v13 = [[a1 alloc] initWithColor:v9 clockColor:v12 colorSuggestions:v7];

  return v13;
}

+ (id)styleWithColorAnalysis:(id)a3
{
  v4 = a3;
  v5 = [[PIParallaxColorSuggester alloc] initWithColorAnalysis:v4];
  v6 = [v4 backgroundColors];

  v7 = +[PIParallaxColorPalette greenScreenVibrantPalette];
  v8 = [(PIParallaxColorSuggester *)v5 suggestedColorsForColors:v6 fromColorPalette:v7];

  v9 = PFMap();
  v10 = [v9 firstObject];
  v11 = [v10 primaryColor];

  v12 = objc_alloc(MEMORY[0x1E69C0750]);
  [v11 hue];
  v14 = v13;
  [v11 chroma];
  v16 = [v12 initWithLuma:0.75 hue:v14 chroma:v15];
  v17 = [a1 alloc];
  v18 = [MEMORY[0x1E69C0750] blackColor];
  v19 = [v17 initWithColor:v16 clockColor:v18 colorSuggestions:MEMORY[0x1E695E0F0]];

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
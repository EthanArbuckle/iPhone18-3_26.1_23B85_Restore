@interface PIParallaxColorBGStandardStyle
+ (id)styleWithColorAnalysis:(id)a3;
+ (id)styleWithParameters:(id)a3 colorSuggestions:(id)a4;
- (BOOL)configureForCategory:(id)a3;
- (PIParallaxColorBGStandardStyle)initWithColor:(id)a3 background:(BOOL)a4 clockColor:(id)a5 colorSuggestions:(id)a6;
- (id)parameters;
@end

@implementation PIParallaxColorBGStandardStyle

- (BOOL)configureForCategory:(id)a3
{
  v4 = [(PIParallaxStyle *)self colorSuggestionForCategory:a3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 primaryColor];
    [(PIParallaxColorBGStandardStyle *)self setColor:v6];
  }

  return v5 != 0;
}

- (id)parameters
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69C0750]);
  v4 = [(PIParallaxColorBGStandardStyle *)self color];
  [v4 hue];
  v5 = [v3 initWithHue:? tone:?];

  v6 = [(PIParallaxColorBGStandardStyle *)self color];
  [v6 tone];
  v8 = v7;

  v9 = (v8 + -0.2) / 0.6;
  v10 = fmax(v9 * -2.0 + 1.0, 0.0);
  v11 = fmax(v9 * 2.0 + -1.0, 0.0);
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_357);
  }

  v12 = fmin(v10, 1.0);
  v13 = fmin(v11, 1.0);
  v14 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEBUG))
  {
    v24 = v14;
    v25 = [(PIParallaxColorBGStandardStyle *)self color];
    *buf = 138413058;
    v29 = v25;
    v30 = 2112;
    v31 = v5;
    v32 = 2048;
    v33 = v12;
    v34 = 2048;
    v35 = v13;
    _os_log_debug_impl(&dword_1C7694000, v24, OS_LOG_TYPE_DEBUG, "ColorBG color: %@ -> neutral: %@ lowKey: %0.3f highKey: %0.3f", buf, 0x2Au);
  }

  v15 = [(PIParallaxStyle *)self clockColor];
  v16 = *MEMORY[0x1E69C0B60];
  v27[0] = v15;
  v27[1] = v5;
  v17 = *MEMORY[0x1E69C0B78];
  v26[1] = v16;
  v26[2] = v17;
  v18 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
  v27[2] = v18;
  v26[3] = *MEMORY[0x1E69C0B70];
  v19 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
  v27[3] = v19;
  v26[4] = *MEMORY[0x1E69C0B40];
  v20 = [(PIParallaxColorBGStandardStyle *)self showsBackground];
  v21 = &unk_1F471F3F0;
  if (v20)
  {
    v21 = &unk_1F471F3E0;
  }

  v27[4] = v21;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:5];

  return v22;
}

- (PIParallaxColorBGStandardStyle)initWithColor:(id)a3 background:(BOOL)a4 clockColor:(id)a5 colorSuggestions:(id)a6
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
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "backgroundColor != nil"];
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
  v30.super_class = PIParallaxColorBGStandardStyle;
  v14 = [(PIParallaxStyle *)&v30 initWithClockColor:v11 colorSuggestions:v12];
  color = v14->_color;
  v14->_color = v10;

  v14->_showsBackground = a4;
  return v14;
}

+ (id)styleWithParameters:(id)a3 colorSuggestions:(id)a4
{
  v6 = a3;
  v7 = *MEMORY[0x1E69C0B60];
  v8 = a4;
  v9 = [v6 objectForKeyedSubscript:v7];
  v10 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69C0B78]];
  [v10 doubleValue];
  v12 = v11;

  v13 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69C0B70]];
  [v13 doubleValue];
  v15 = v14;

  v16 = -v12;
  if (v15 > 0.0)
  {
    v16 = v15;
  }

  v17 = (v16 + 1.0) * 0.5 * 0.6 + 0.2;
  [v9 hue];
  v19 = [objc_alloc(MEMORY[0x1E69C0750]) initWithHue:v18 tone:v17];
  v20 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69C0B48]];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = [MEMORY[0x1E69C0750] whiteColor];
  }

  v23 = v22;

  v24 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69C0B40]];
  v25 = v24;
  if (v24)
  {
    [v24 doubleValue];
    v27 = v26 < 1.0;
  }

  else
  {
    v27 = 1;
  }

  v28 = [[a1 alloc] initWithColor:v19 background:v27 clockColor:v23 colorSuggestions:v8];

  return v28;
}

+ (id)styleWithColorAnalysis:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[PIGlobalSettings globalSettings];
  v6 = [v5 parallaxStyleKeyLevelOverride];

  if (!v6)
  {
    [v4 backgroundLuminance];
    v8 = 3;
    if (v7 < 0.67)
    {
      v8 = 2;
    }

    if (v7 < 0.33)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_357);
    }

    v10 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v22 = off_1E82AA060[v9 - 1];
      [v4 backgroundLuminance];
      *buf = 138412546;
      v25 = v22;
      v26 = 2048;
      v27 = v23;
      _os_log_debug_impl(&dword_1C7694000, v10, OS_LOG_TYPE_DEBUG, "ColorBGStandard: suggested %@ for background luminance of %.2f", buf, 0x16u);
    }
  }

  v11 = [[PIParallaxColorSuggester alloc] initWithColorAnalysis:v4];
  v12 = [v4 backgroundColors];
  v13 = +[PIParallaxColorPalette greenScreenVibrantPalette];
  v14 = [(PIParallaxColorSuggester *)v11 suggestedColorsForColors:v12 fromColorPalette:v13];

  v15 = PFMap();
  v16 = [v15 firstObject];
  v17 = [v16 primaryColor];

  v18 = [a1 alloc];
  v19 = [MEMORY[0x1E69C0750] whiteColor];
  v20 = [v18 initWithColor:v17 background:1 clockColor:v19 colorSuggestions:v15];

  return v20;
}

id __57__PIParallaxColorBGStandardStyle_styleWithColorAnalysis___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69C0750];
  v4 = a2;
  v5 = [v3 alloc];
  [v4 hue];
  v7 = v6;

  v8 = [v5 initWithHue:v7 tone:*(a1 + 32)];
  v9 = [objc_alloc(MEMORY[0x1E69C07B0]) initWithPrimaryColor:v8 secondaryColor:0];

  return v9;
}

@end
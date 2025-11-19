@interface PIParallaxColorWashDuotoneStyle
+ (id)styleWithColorAnalysis:(id)a3;
+ (id)styleWithParameters:(id)a3 colorSuggestions:(id)a4;
- (BOOL)configureForCategory:(id)a3;
- (PIParallaxColorWashDuotoneStyle)initWithPrimaryColor:(id)a3 secondaryColor:(id)a4 background:(BOOL)a5 clockColor:(id)a6 colorSuggestions:(id)a7;
- (id)parameters;
@end

@implementation PIParallaxColorWashDuotoneStyle

- (BOOL)configureForCategory:(id)a3
{
  v4 = [(PIParallaxStyle *)self colorSuggestionForCategory:a3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 primaryColor];
    [(PIParallaxColorWashDuotoneStyle *)self setPrimaryColor:v6];

    v7 = [v5 secondaryColor];
    [(PIParallaxColorWashDuotoneStyle *)self setSecondaryColor:v7];
  }

  return v5 != 0;
}

- (id)parameters
{
  v11[4] = *MEMORY[0x1E69E9840];
  v10[0] = *MEMORY[0x1E69C0B88];
  v3 = [(PIParallaxColorWashDuotoneStyle *)self primaryColor];
  v11[0] = v3;
  v10[1] = *MEMORY[0x1E69C0B90];
  v4 = [(PIParallaxColorWashDuotoneStyle *)self secondaryColor];
  v11[1] = v4;
  v10[2] = *MEMORY[0x1E69C0B48];
  v5 = [(PIParallaxStyle *)self clockColor];
  v11[2] = v5;
  v10[3] = *MEMORY[0x1E69C0B40];
  v6 = [(PIParallaxColorWashDuotoneStyle *)self showsBackground];
  v7 = &unk_1F471F3F0;
  if (v6)
  {
    v7 = &unk_1F471F3E0;
  }

  v11[3] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];

  return v8;
}

- (PIParallaxColorWashDuotoneStyle)initWithPrimaryColor:(id)a3 secondaryColor:(id)a4 background:(BOOL)a5 clockColor:(id)a6 colorSuggestions:(id)a7
{
  v49 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if (!v12)
  {
    v22 = NUAssertLogger_4208();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "primaryColor != nil"];
      *buf = 138543362;
      v46 = v23;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v24 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v26 = NUAssertLogger_4208();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v27)
      {
        v35 = dispatch_get_specific(*v24);
        v36 = MEMORY[0x1E696AF00];
        v37 = v35;
        v24 = [v36 callStackSymbols];
        v38 = [v24 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v46 = v35;
        v47 = 2114;
        v48 = v38;
        _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v27)
    {
      v28 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [v28 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v46 = v24;
      _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v32 = _NUAssertFailHandler();
    goto LABEL_17;
  }

  if (!v13)
  {
    v29 = NUAssertLogger_4208();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "secondaryColor != nil"];
      *buf = 138543362;
      v46 = v30;
      _os_log_error_impl(&dword_1C7694000, v29, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v24 = MEMORY[0x1E69B38E8];
    v31 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v26 = NUAssertLogger_4208();
    v32 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (!v31)
    {
      if (v32)
      {
        v33 = [MEMORY[0x1E696AF00] callStackSymbols];
        v34 = [v33 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v46 = v34;
        _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_19;
    }

LABEL_17:
    if (v32)
    {
      v39 = dispatch_get_specific(*v24);
      v40 = MEMORY[0x1E696AF00];
      v41 = v39;
      v42 = [v40 callStackSymbols];
      v43 = [v42 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v46 = v39;
      v47 = 2114;
      v48 = v43;
      _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_19:

    _NUAssertFailHandler();
  }

  v16 = v15;
  v44.receiver = self;
  v44.super_class = PIParallaxColorWashDuotoneStyle;
  v17 = [(PIParallaxStyle *)&v44 initWithClockColor:v14 colorSuggestions:v15];
  primaryColor = v17->_primaryColor;
  v17->_primaryColor = v12;
  v19 = v12;

  secondaryColor = v17->_secondaryColor;
  v17->_secondaryColor = v13;

  v17->_showsBackground = a5;
  return v17;
}

+ (id)styleWithParameters:(id)a3 colorSuggestions:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v18 = NUAssertLogger_4208();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "parameters != nil"];
      *buf = 138543362;
      v32 = v19;
      _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v20 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v22 = NUAssertLogger_4208();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v23)
      {
        v26 = dispatch_get_specific(*v20);
        v27 = MEMORY[0x1E696AF00];
        v28 = v26;
        v29 = [v27 callStackSymbols];
        v30 = [v29 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v32 = v26;
        v33 = 2114;
        v34 = v30;
        _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      v24 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [v24 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v32 = v25;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v8 = v7;
  v9 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69C0B48]];
  v10 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69C0B88]];
  v11 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69C0B90]];
  v12 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69C0B40]];
  v13 = v12;
  if (v12)
  {
    [v12 doubleValue];
    v15 = v14 < 1.0;
  }

  else
  {
    v15 = 1;
  }

  v16 = [[a1 alloc] initWithPrimaryColor:v10 secondaryColor:v11 background:v15 clockColor:v9 colorSuggestions:v8];

  return v16;
}

+ (id)styleWithColorAnalysis:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [[PIParallaxColorSuggester alloc] initWithColorAnalysis:v4];
  v6 = [v4 backgroundColors];
  v7 = PFMap();

  v8 = +[PIParallaxColorPalette colorWashDuotonePalette];
  v9 = [(PIParallaxColorSuggester *)v5 suggestedColorsForColors:v7 fromColorPalette:v8];
  v10 = v8;
  v11 = PFMap();
  v12 = [v11 firstObject];
  v13 = [v12 primaryColor];
  v14 = [v12 secondaryColor];
  if (!v14)
  {
    v21 = NUAssertLogger_4208();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to retrieve secondary color from palette"];
      *buf = 138543362;
      v36 = v22;
      _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v23 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v25 = NUAssertLogger_4208();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v26)
      {
        v29 = dispatch_get_specific(*v23);
        v30 = MEMORY[0x1E696AF00];
        v31 = v29;
        v32 = [v30 callStackSymbols];
        v33 = [v32 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v36 = v29;
        v37 = 2114;
        v38 = v33;
        _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      v27 = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [v27 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v36 = v28;
      _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v15 = v14;
  v16 = [a1 alloc];
  [MEMORY[0x1E69C0750] whiteColor];
  v34 = v4;
  v18 = v17 = v5;
  v19 = [v16 initWithPrimaryColor:v13 secondaryColor:v15 background:1 clockColor:v18 colorSuggestions:v11];

  return v19;
}

id __58__PIParallaxColorWashDuotoneStyle_styleWithColorAnalysis___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69C0750];
  v3 = a2;
  v4 = [v2 alloc];
  [v3 luma];
  v6 = v5;
  [v3 hue];
  v8 = v7 + 30.0;
  [v3 chroma];
  v10 = v9;

  v11 = [v4 initWithLuma:v6 hue:v8 chroma:v10];

  return v11;
}

@end
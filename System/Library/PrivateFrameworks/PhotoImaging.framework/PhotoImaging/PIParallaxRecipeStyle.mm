@interface PIParallaxRecipeStyle
- (BOOL)isEqual:(id)a3;
- (PIParallaxRecipeStyle)initWithIdentifier:(id)a3 recipe:(id)a4;
- (id)clockFont;
- (id)filter;
@end

@implementation PIParallaxRecipeStyle

- (id)filter
{
  v2 = [[PIParallaxRecipeFilter alloc] initWithRecipe:self->_recipe];

  return v2;
}

- (id)clockFont
{
  v2 = [(PIParallaxRecipeStyle *)self recipe];
  v3 = [v2 parameters];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69C0B50]];

  v5 = [v4 type];
  LODWORD(v3) = [v5 isEqualToString:@"mode"];

  if (v3)
  {
    v6 = [v4 modeValue];
  }

  else
  {
    v6 = @"SF Soft Time";
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PIParallaxRecipeStyle *)self recipe];
      v7 = [(PIParallaxRecipeStyle *)v5 recipe];

      v8 = [v6 isEqual:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (PIParallaxRecipeStyle)initWithIdentifier:(id)a3 recipe:(id)a4
{
  v56 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v29 = NUAssertLogger_4208();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "identifier != nil"];
      *buf = 138543362;
      v53 = v30;
      _os_log_error_impl(&dword_1C7694000, v29, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v31 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v33 = NUAssertLogger_4208();
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v34)
      {
        v42 = dispatch_get_specific(*v31);
        v43 = MEMORY[0x1E696AF00];
        v44 = v42;
        v31 = [v43 callStackSymbols];
        v45 = [v31 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v53 = v42;
        v54 = 2114;
        v55 = v45;
        _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v34)
    {
      v35 = [MEMORY[0x1E696AF00] callStackSymbols];
      v31 = [v35 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v53 = v31;
      _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v39 = _NUAssertFailHandler();
    goto LABEL_19;
  }

  v8 = v7;
  if (!v7)
  {
    v36 = NUAssertLogger_4208();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "recipe != nil"];
      *buf = 138543362;
      v53 = v37;
      _os_log_error_impl(&dword_1C7694000, v36, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v31 = MEMORY[0x1E69B38E8];
    v38 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v33 = NUAssertLogger_4208();
    v39 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
    if (!v38)
    {
      if (v39)
      {
        v40 = [MEMORY[0x1E696AF00] callStackSymbols];
        v41 = [v40 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v53 = v41;
        _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_21;
    }

LABEL_19:
    if (v39)
    {
      v46 = dispatch_get_specific(*v31);
      v47 = MEMORY[0x1E696AF00];
      v48 = v46;
      v49 = [v47 callStackSymbols];
      v50 = [v49 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v53 = v46;
      v54 = 2114;
      v55 = v50;
      _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_21:

    _NUAssertFailHandler();
  }

  v9 = [MEMORY[0x1E69C0750] whiteColor];
  v10 = [(PIParallaxStyleRecipe *)v8 parameters];
  v11 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69C0B48]];

  v12 = [v11 type];
  v13 = [v12 isEqualToString:@"color"];

  if (v13)
  {
    v14 = [v11 redValue];
    v15 = [v11 greenValue];
    v16 = [v11 blueValue];
    v17 = objc_alloc(MEMORY[0x1E69C0750]);
    [v14 doubleValue];
    v19 = v18;
    [v15 doubleValue];
    v21 = v20;
    [v16 doubleValue];
    v23 = [v17 initWithRed:v19 green:v21 blue:v22];

    v9 = v23;
  }

  v51.receiver = self;
  v51.super_class = PIParallaxRecipeStyle;
  v24 = [(PIParallaxStyle *)&v51 initWithClockColor:v9 colorSuggestions:MEMORY[0x1E695E0F0]];
  v25 = [v6 copy];
  identifier = v24->_identifier;
  v24->_identifier = v25;

  recipe = v24->_recipe;
  v24->_recipe = v8;

  return v24;
}

@end
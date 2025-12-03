@interface PIParallaxRecipeStyle
- (BOOL)isEqual:(id)equal;
- (PIParallaxRecipeStyle)initWithIdentifier:(id)identifier recipe:(id)recipe;
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
  recipe = [(PIParallaxRecipeStyle *)self recipe];
  parameters = [recipe parameters];
  v4 = [parameters objectForKeyedSubscript:*MEMORY[0x1E69C0B50]];

  type = [v4 type];
  LODWORD(parameters) = [type isEqualToString:@"mode"];

  if (parameters)
  {
    modeValue = [v4 modeValue];
  }

  else
  {
    modeValue = @"SF Soft Time";
  }

  return modeValue;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      recipe = [(PIParallaxRecipeStyle *)self recipe];
      recipe2 = [(PIParallaxRecipeStyle *)v5 recipe];

      v8 = [recipe isEqual:recipe2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (PIParallaxRecipeStyle)initWithIdentifier:(id)identifier recipe:(id)recipe
{
  v56 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  recipeCopy = recipe;
  if (!identifierCopy)
  {
    v29 = NUAssertLogger_4208();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "identifier != nil"];
      *buf = 138543362;
      v53 = v30;
      _os_log_error_impl(&dword_1C7694000, v29, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v33 = NUAssertLogger_4208();
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v34)
      {
        v42 = dispatch_get_specific(*callStackSymbols);
        v43 = MEMORY[0x1E696AF00];
        v44 = v42;
        callStackSymbols = [v43 callStackSymbols];
        v45 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v53 = v42;
        v54 = 2114;
        v55 = v45;
        _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v34)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v53 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v39 = _NUAssertFailHandler();
    goto LABEL_19;
  }

  v8 = recipeCopy;
  if (!recipeCopy)
  {
    v36 = NUAssertLogger_4208();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "recipe != nil"];
      *buf = 138543362;
      v53 = v37;
      _os_log_error_impl(&dword_1C7694000, v36, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v38 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v33 = NUAssertLogger_4208();
    v39 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
    if (!v38)
    {
      if (v39)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v41 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v53 = v41;
        _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_21;
    }

LABEL_19:
    if (v39)
    {
      v46 = dispatch_get_specific(*callStackSymbols);
      v47 = MEMORY[0x1E696AF00];
      v48 = v46;
      callStackSymbols4 = [v47 callStackSymbols];
      v50 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v53 = v46;
      v54 = 2114;
      v55 = v50;
      _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_21:

    _NUAssertFailHandler();
  }

  whiteColor = [MEMORY[0x1E69C0750] whiteColor];
  parameters = [(PIParallaxStyleRecipe *)v8 parameters];
  v11 = [parameters objectForKeyedSubscript:*MEMORY[0x1E69C0B48]];

  type = [v11 type];
  v13 = [type isEqualToString:@"color"];

  if (v13)
  {
    redValue = [v11 redValue];
    greenValue = [v11 greenValue];
    blueValue = [v11 blueValue];
    v17 = objc_alloc(MEMORY[0x1E69C0750]);
    [redValue doubleValue];
    v19 = v18;
    [greenValue doubleValue];
    v21 = v20;
    [blueValue doubleValue];
    v23 = [v17 initWithRed:v19 green:v21 blue:v22];

    whiteColor = v23;
  }

  v51.receiver = self;
  v51.super_class = PIParallaxRecipeStyle;
  v24 = [(PIParallaxStyle *)&v51 initWithClockColor:whiteColor colorSuggestions:MEMORY[0x1E695E0F0]];
  v25 = [identifierCopy copy];
  identifier = v24->_identifier;
  v24->_identifier = v25;

  recipe = v24->_recipe;
  v24->_recipe = v8;

  return v24;
}

@end
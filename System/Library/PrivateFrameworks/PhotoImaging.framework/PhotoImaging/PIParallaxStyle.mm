@interface PIParallaxStyle
+ (PIParallaxStyle)styleWithBakedStyle:(id)style;
+ (PIParallaxStyle)styleWithColorAnalysis:(id)analysis;
+ (PIParallaxStyle)styleWithParameters:(id)parameters colorSuggestions:(id)suggestions;
+ (id)_filterForRecipeIdentifier:(id)identifier;
+ (id)colorPaletteWithStyleKind:(id)kind;
+ (id)defaultOriginalStyle;
+ (id)defaultStyleForKind:(id)kind colorAnalysis:(id)analysis;
- (BOOL)configureForCategory:(id)category;
- (BOOL)isEqual:(id)equal;
- (BOOL)isSegmented;
- (NSDictionary)parameters;
- (NSString)clockFont;
- (NSString)inactiveRecipeIdentifier;
- (NSString)kind;
- (NSString)recipeIdentifier;
- (PIParallaxStyle)init;
- (PIParallaxStyle)initWithClockColor:(id)color colorSuggestions:(id)suggestions;
- (PIParallaxStyle)initWithClockColor:(id)color vibrancy:(double)vibrancy colorSuggestions:(id)suggestions;
- (PIParallaxStyleRecipe)recipe;
- (id)bakedStyle;
- (id)colorSuggestionForCategory:(id)category;
- (id)defaultDominantColorWithAnalysis:(id)analysis;
- (id)description;
- (id)filter;
- (id)inactiveFilter;
- (unint64_t)hash;
@end

@implementation PIParallaxStyle

- (id)defaultDominantColorWithAnalysis:(id)analysis
{
  colors = [analysis colors];
  firstObject = [colors firstObject];

  return firstObject;
}

- (BOOL)configureForCategory:(id)category
{
  v29 = *MEMORY[0x1E69E9840];
  categoryCopy = category;
  v4 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v5 = MEMORY[0x1E69B3D70];
    v6 = *MEMORY[0x1E69B3D70];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_ERROR))
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = v6;
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [v7 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v10];
      *buf = 138543362;
      v26 = v11;
      _os_log_error_impl(&dword_1C7694000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

      v12 = *v4;
      if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
      {
        if (v12 != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_355_4148);
        }

LABEL_11:
        v18 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
        {
          specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
          v20 = MEMORY[0x1E696AF00];
          v21 = specific;
          v22 = v18;
          callStackSymbols = [v20 callStackSymbols];
          v4 = [callStackSymbols componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v26 = specific;
          v27 = 2114;
          v28 = v4;
          _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }

        goto LABEL_13;
      }

      if (v12 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_355_4148);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
    {
      goto LABEL_11;
    }

    v13 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      v14 = MEMORY[0x1E696AF00];
      v15 = v13;
      callStackSymbols2 = [v14 callStackSymbols];
      v17 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v26 = v17;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

LABEL_13:
    v24 = objc_opt_class();
    NSStringFromClass(v24);
    objc_claimAutoreleasedReturnValue();
    _NUAssertFailHandler();
LABEL_14:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_355_4148);
  }
}

- (id)colorSuggestionForCategory:(id)category
{
  categoryCopy = category;
  if (([categoryCopy isEqualToString:*MEMORY[0x1E69C0BF0]] & 1) != 0 || objc_msgSend(categoryCopy, "isEqualToString:", *MEMORY[0x1E69C0BD8]))
  {
    colorSuggestions = [(PIParallaxStyle *)self colorSuggestions];
    v6 = PFFind();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __46__PIParallaxStyle_colorSuggestionForCategory___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 primaryColor];
  v3 = [v2 isCool];

  return v3;
}

uint64_t __46__PIParallaxStyle_colorSuggestionForCategory___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 primaryColor];
  v3 = [v2 isWarm];

  return v3;
}

- (PIParallaxStyleRecipe)recipe
{
  recipeIdentifier = [(PIParallaxStyle *)self recipeIdentifier];
  v3 = [PIParallaxStyleRecipeRegistry recipeForIdentifier:recipeIdentifier];

  if (!v3)
  {
    v3 = objc_alloc_init(PIParallaxStyleRecipe);
  }

  return v3;
}

- (id)inactiveFilter
{
  inactiveRecipeIdentifier = [(PIParallaxStyle *)self inactiveRecipeIdentifier];
  v4 = [PIParallaxStyle _filterForRecipeIdentifier:inactiveRecipeIdentifier];

  parameters = [(PIParallaxStyle *)self parameters];
  [v4 setParameters:parameters];

  return v4;
}

- (id)filter
{
  recipeIdentifier = [(PIParallaxStyle *)self recipeIdentifier];
  v4 = [PIParallaxStyle _filterForRecipeIdentifier:recipeIdentifier];

  parameters = [(PIParallaxStyle *)self parameters];
  [v4 setParameters:parameters];

  return v4;
}

- (BOOL)isSegmented
{
  v2 = MEMORY[0x1E69C0788];
  kind = [(PIParallaxStyle *)self kind];
  LOBYTE(v2) = [v2 isSegmentedStyle:kind];

  return v2;
}

- (NSString)clockFont
{
  kind = [(PIParallaxStyle *)self kind];
  v3 = PIParallaxStyleClockFontForKind(kind);

  return v3;
}

- (NSString)inactiveRecipeIdentifier
{
  recipeIdentifier = [(PIParallaxStyle *)self recipeIdentifier];
  v3 = [recipeIdentifier stringByAppendingString:@"-Inactive"];

  return v3;
}

- (NSString)recipeIdentifier
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v3 = MEMORY[0x1E69B3D70];
    v4 = *MEMORY[0x1E69B3D70];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_ERROR))
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = v4;
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = [v5 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v8];
      *buf = 138543362;
      v24 = v9;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

      v10 = *v2;
      if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
      {
        if (v10 != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_355_4148);
        }

LABEL_11:
        v16 = *v3;
        if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
        {
          specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
          v18 = MEMORY[0x1E696AF00];
          v19 = specific;
          v20 = v16;
          callStackSymbols = [v18 callStackSymbols];
          v2 = [callStackSymbols componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v24 = specific;
          v25 = 2114;
          v26 = v2;
          _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }

        goto LABEL_13;
      }

      if (v10 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_355_4148);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
    {
      goto LABEL_11;
    }

    v11 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      v12 = MEMORY[0x1E696AF00];
      v13 = v11;
      callStackSymbols2 = [v12 callStackSymbols];
      v15 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v24 = v15;
      _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

LABEL_13:
    v22 = objc_opt_class();
    NSStringFromClass(v22);
    objc_claimAutoreleasedReturnValue();
    _NUAssertFailHandler();
LABEL_14:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_355_4148);
  }
}

- (NSString)kind
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v3 = MEMORY[0x1E69B3D70];
    v4 = *MEMORY[0x1E69B3D70];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_ERROR))
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = v4;
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = [v5 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v8];
      *buf = 138543362;
      v24 = v9;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

      v10 = *v2;
      if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
      {
        if (v10 != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_355_4148);
        }

LABEL_11:
        v16 = *v3;
        if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
        {
          specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
          v18 = MEMORY[0x1E696AF00];
          v19 = specific;
          v20 = v16;
          callStackSymbols = [v18 callStackSymbols];
          v2 = [callStackSymbols componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v24 = specific;
          v25 = 2114;
          v26 = v2;
          _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }

        goto LABEL_13;
      }

      if (v10 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_355_4148);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
    {
      goto LABEL_11;
    }

    v11 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      v12 = MEMORY[0x1E696AF00];
      v13 = v11;
      callStackSymbols2 = [v12 callStackSymbols];
      v15 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v24 = v15;
      _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

LABEL_13:
    v22 = objc_opt_class();
    NSStringFromClass(v22);
    objc_claimAutoreleasedReturnValue();
    _NUAssertFailHandler();
LABEL_14:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_355_4148);
  }
}

- (NSDictionary)parameters
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v3 = MEMORY[0x1E69B3D70];
    v4 = *MEMORY[0x1E69B3D70];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_ERROR))
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = v4;
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = [v5 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v8];
      *buf = 138543362;
      v24 = v9;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

      v10 = *v2;
      if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
      {
        if (v10 != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_355_4148);
        }

LABEL_11:
        v16 = *v3;
        if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
        {
          specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
          v18 = MEMORY[0x1E696AF00];
          v19 = specific;
          v20 = v16;
          callStackSymbols = [v18 callStackSymbols];
          v2 = [callStackSymbols componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v24 = specific;
          v25 = 2114;
          v26 = v2;
          _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }

        goto LABEL_13;
      }

      if (v10 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_355_4148);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
    {
      goto LABEL_11;
    }

    v11 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      v12 = MEMORY[0x1E696AF00];
      v13 = v11;
      callStackSymbols2 = [v12 callStackSymbols];
      v15 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v24 = v15;
      _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

LABEL_13:
    v22 = objc_opt_class();
    NSStringFromClass(v22);
    objc_claimAutoreleasedReturnValue();
    _NUAssertFailHandler();
LABEL_14:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_355_4148);
  }
}

- (id)bakedStyle
{
  v3 = objc_alloc(MEMORY[0x1E69C0788]);
  kind = [(PIParallaxStyle *)self kind];
  parameters = [(PIParallaxStyle *)self parameters];
  colorSuggestions = [(PIParallaxStyle *)self colorSuggestions];
  v7 = [v3 initWithKind:kind parameters:parameters colorSuggestions:colorSuggestions];

  return v7;
}

- (unint64_t)hash
{
  kind = [(PIParallaxStyle *)self kind];
  v3 = [kind hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      kind = [(PIParallaxStyle *)self kind];
      kind2 = [(PIParallaxStyle *)v5 kind];
      v8 = [kind isEqualToString:kind2];

      if (v8)
      {
        bakedStyle = [(PIParallaxStyle *)self bakedStyle];
        bakedStyle2 = [(PIParallaxStyle *)v5 bakedStyle];
        v11 = [bakedStyle isEqual:bakedStyle2];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  parameters = [(PIParallaxStyle *)self parameters];
  v6 = [v3 stringWithFormat:@"<%@: %p parameters = %@>", v4, self, parameters];;

  return v6;
}

- (PIParallaxStyle)initWithClockColor:(id)color vibrancy:(double)vibrancy colorSuggestions:(id)suggestions
{
  result = [(PIParallaxStyle *)self initWithClockColor:color colorSuggestions:suggestions];
  result->_clockVibrancy = vibrancy;
  return result;
}

- (PIParallaxStyle)initWithClockColor:(id)color colorSuggestions:(id)suggestions
{
  v42 = *MEMORY[0x1E69E9840];
  colorCopy = color;
  suggestionsCopy = suggestions;
  if (!colorCopy)
  {
    v15 = NUAssertLogger_4208();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "clockColor != nil"];
      *buf = 138543362;
      v39 = v16;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v19 = NUAssertLogger_4208();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v20)
      {
        v28 = dispatch_get_specific(*callStackSymbols);
        v29 = MEMORY[0x1E696AF00];
        v30 = v28;
        callStackSymbols = [v29 callStackSymbols];
        v31 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v39 = v28;
        v40 = 2114;
        v41 = v31;
        _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v39 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v25 = _NUAssertFailHandler();
    goto LABEL_17;
  }

  v8 = suggestionsCopy;
  if (!suggestionsCopy)
  {
    v22 = NUAssertLogger_4208();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "suggestions != nil"];
      *buf = 138543362;
      v39 = v23;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v24 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v19 = NUAssertLogger_4208();
    v25 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (!v24)
    {
      if (v25)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v27 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v39 = v27;
        _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_19;
    }

LABEL_17:
    if (v25)
    {
      v32 = dispatch_get_specific(*callStackSymbols);
      v33 = MEMORY[0x1E696AF00];
      v34 = v32;
      callStackSymbols4 = [v33 callStackSymbols];
      v36 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v39 = v32;
      v40 = 2114;
      v41 = v36;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_19:

    _NUAssertFailHandler();
  }

  v37.receiver = self;
  v37.super_class = PIParallaxStyle;
  v9 = [(PIParallaxStyle *)&v37 init];
  clockColor = v9->_clockColor;
  v9->_clockColor = colorCopy;
  v11 = colorCopy;

  v12 = [v8 copy];
  colorSuggestions = v9->_colorSuggestions;
  v9->_colorSuggestions = v12;

  v9->_clockVibrancy = 0.0;
  return v9;
}

- (PIParallaxStyle)init
{
  whiteColor = [MEMORY[0x1E69C0750] whiteColor];
  v4 = [(PIParallaxStyle *)self initWithClockColor:whiteColor colorSuggestions:MEMORY[0x1E695E0F0]];

  return v4;
}

+ (id)defaultOriginalStyle
{
  v2 = [self alloc];
  whiteColor = [MEMORY[0x1E69C0750] whiteColor];
  v4 = [v2 initWithClockColor:whiteColor colorSuggestions:MEMORY[0x1E695E0F0]];

  return v4;
}

+ (id)colorPaletteWithStyleKind:(id)kind
{
  kindCopy = kind;
  if ([kindCopy isEqualToString:*MEMORY[0x1E69C0AF0]])
  {
    goto LABEL_2;
  }

  if ([kindCopy isEqualToString:*MEMORY[0x1E69C0B00]])
  {
    v4 = +[PIParallaxColorPalette colorWashSinglePalette];
    goto LABEL_9;
  }

  if ([kindCopy isEqualToString:*MEMORY[0x1E69C0AF8]])
  {
    v4 = +[PIParallaxColorPalette colorWashDuotonePalette];
    goto LABEL_9;
  }

  if ([kindCopy isEqualToString:*MEMORY[0x1E69C0B08]])
  {
    v4 = +[PIParallaxColorPalette greenScreenMutedPalette];
    goto LABEL_9;
  }

  if ([kindCopy isEqualToString:*MEMORY[0x1E69C0B20]] || objc_msgSend(kindCopy, "isEqualToString:", *MEMORY[0x1E69C0B18]))
  {
LABEL_2:
    v4 = +[PIParallaxColorPalette greenScreenVibrantPalette];
LABEL_9:
    v5 = v4;
    goto LABEL_10;
  }

  v5 = 0;
LABEL_10:

  return v5;
}

+ (PIParallaxStyle)styleWithBakedStyle:(id)style
{
  v29 = *MEMORY[0x1E69E9840];
  styleCopy = style;
  kind = [styleCopy kind];
  parameters = [styleCopy parameters];
  colorSuggestions = [styleCopy colorSuggestions];
  if ([kind isEqualToString:*MEMORY[0x1E69C0B28]])
  {
    v7 = off_1E82A8238;
LABEL_12:
    v8 = [(__objc2_class *)*v7 styleWithParameters:parameters colorSuggestions:colorSuggestions];

    return v8;
  }

  if ([kind isEqualToString:*MEMORY[0x1E69C0B30]])
  {
LABEL_4:
    v7 = off_1E82A8258;
    goto LABEL_12;
  }

  if ([kind isEqualToString:*MEMORY[0x1E69C0AE0]])
  {
    goto LABEL_6;
  }

  if ([kind isEqualToString:*MEMORY[0x1E69C0AD8]])
  {
    v7 = off_1E82A8178;
    goto LABEL_12;
  }

  if ([kind isEqualToString:*MEMORY[0x1E69C0AF0]] & 1) != 0 || (objc_msgSend(kind, "isEqualToString:", *MEMORY[0x1E69C0AE8]))
  {
    v7 = off_1E82A81A8;
    goto LABEL_12;
  }

  if ([kind isEqualToString:*MEMORY[0x1E69C0B00]])
  {
    v7 = off_1E82A81C8;
    goto LABEL_12;
  }

  if ([kind isEqualToString:*MEMORY[0x1E69C0AF8]])
  {
    v7 = off_1E82A81C0;
    goto LABEL_12;
  }

  if ([kind isEqualToString:*MEMORY[0x1E69C0B08]])
  {
    v7 = off_1E82A81F0;
    goto LABEL_12;
  }

  if ([kind isEqualToString:*MEMORY[0x1E69C0B20]])
  {
    v7 = off_1E82A81E8;
    goto LABEL_12;
  }

  if ([kind isEqualToString:*MEMORY[0x1E69C0B10]])
  {
    v7 = off_1E82A81D8;
    goto LABEL_12;
  }

  if ([kind isEqualToString:*MEMORY[0x1E69C0B18]])
  {
    v7 = off_1E82A81E0;
    goto LABEL_12;
  }

  if ([kind isEqualToString:@"StudioBright"] & 1) != 0 || (objc_msgSend(kind, "isEqualToString:", @"StudioDark"))
  {
    goto LABEL_4;
  }

  if ([kind isEqualToString:@"BlackWhiteHighKey"] & 1) != 0 || (objc_msgSend(kind, "isEqualToString:", @"BlackWhiteStage"))
  {
LABEL_6:
    v7 = off_1E82A8180;
    goto LABEL_12;
  }

  v10 = NUAssertLogger_4208();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown style kind: %@", kind];
    *buf = 138543362;
    v26 = v11;
    _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
  }

  v12 = MEMORY[0x1E69B38E8];
  specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
  v14 = NUAssertLogger_4208();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
  if (specific)
  {
    if (v15)
    {
      v18 = dispatch_get_specific(*v12);
      v19 = MEMORY[0x1E696AF00];
      v20 = v18;
      callStackSymbols = [v19 callStackSymbols];
      v22 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v26 = v18;
      v27 = 2114;
      v28 = v22;
      _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }
  }

  else if (v15)
  {
    callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
    v17 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *buf = 138543362;
    v26 = v17;
    _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
  }

  v23 = _NUAssertFailHandler();
  [(PIParallaxGreenScreenGraphicStyle *)v23 .cxx_destruct];
  return result;
}

+ (PIParallaxStyle)styleWithParameters:(id)parameters colorSuggestions:(id)suggestions
{
  v32 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  suggestionsCopy = suggestions;
  v7 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v8 = MEMORY[0x1E69B3D70];
    v9 = *MEMORY[0x1E69B3D70];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_ERROR))
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = v9;
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = [v10 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v13];
      *buf = 138543362;
      v29 = v14;
      _os_log_error_impl(&dword_1C7694000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

      v15 = *v7;
      if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
      {
        if (v15 != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_355_4148);
        }

LABEL_11:
        v21 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
        {
          specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
          v23 = MEMORY[0x1E696AF00];
          v24 = specific;
          v25 = v21;
          callStackSymbols = [v23 callStackSymbols];
          v7 = [callStackSymbols componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v29 = specific;
          v30 = 2114;
          v31 = v7;
          _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }

        goto LABEL_13;
      }

      if (v15 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_355_4148);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
    {
      goto LABEL_11;
    }

    v16 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      v17 = MEMORY[0x1E696AF00];
      v18 = v16;
      callStackSymbols2 = [v17 callStackSymbols];
      v20 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v20;
      _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

LABEL_13:
    v27 = objc_opt_class();
    NSStringFromClass(v27);
    objc_claimAutoreleasedReturnValue();
    _NUAssertFailHandler();
LABEL_14:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_355_4148);
  }
}

+ (id)defaultStyleForKind:(id)kind colorAnalysis:(id)analysis
{
  v30 = *MEMORY[0x1E69E9840];
  kindCopy = kind;
  analysisCopy = analysis;
  if ([kindCopy isEqualToString:*MEMORY[0x1E69C0B28]])
  {
    v7 = off_1E82A8238;
LABEL_12:
    v8 = [(__objc2_class *)*v7 styleWithColorAnalysis:analysisCopy];

    return v8;
  }

  if ([kindCopy isEqualToString:*MEMORY[0x1E69C0B30]])
  {
    v7 = off_1E82A8258;
    goto LABEL_12;
  }

  if ([kindCopy isEqualToString:*MEMORY[0x1E69C0AE0]])
  {
    v7 = off_1E82A8180;
    goto LABEL_12;
  }

  if ([kindCopy isEqualToString:*MEMORY[0x1E69C0AD8]])
  {
    v7 = off_1E82A8178;
    goto LABEL_12;
  }

  if ([kindCopy isEqualToString:*MEMORY[0x1E69C0AF0]] & 1) != 0 || (objc_msgSend(kindCopy, "isEqualToString:", *MEMORY[0x1E69C0AE8]))
  {
    v7 = off_1E82A81A8;
    goto LABEL_12;
  }

  if ([kindCopy isEqualToString:*MEMORY[0x1E69C0B00]])
  {
    v7 = off_1E82A81C8;
    goto LABEL_12;
  }

  if ([kindCopy isEqualToString:*MEMORY[0x1E69C0AF8]])
  {
    v7 = off_1E82A81C0;
    goto LABEL_12;
  }

  if ([kindCopy isEqualToString:*MEMORY[0x1E69C0B08]])
  {
    v7 = off_1E82A81F0;
    goto LABEL_12;
  }

  if ([kindCopy isEqualToString:*MEMORY[0x1E69C0B20]])
  {
    v7 = off_1E82A81E8;
    goto LABEL_12;
  }

  if ([kindCopy isEqualToString:*MEMORY[0x1E69C0B10]])
  {
    v7 = off_1E82A81D8;
    goto LABEL_12;
  }

  if ([kindCopy isEqualToString:*MEMORY[0x1E69C0B18]])
  {
    v7 = off_1E82A81E0;
    goto LABEL_12;
  }

  v10 = NUAssertLogger_4208();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    kindCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown style kind: %@", kindCopy];
    *buf = 138543362;
    v27 = kindCopy;
    _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
  }

  v12 = MEMORY[0x1E69B38E8];
  specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
  v14 = NUAssertLogger_4208();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
  if (specific)
  {
    if (v15)
    {
      v18 = dispatch_get_specific(*v12);
      v19 = MEMORY[0x1E696AF00];
      v20 = v18;
      callStackSymbols = [v19 callStackSymbols];
      v22 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v27 = v18;
      v28 = 2114;
      v29 = v22;
      _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }
  }

  else if (v15)
  {
    callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
    v17 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *buf = 138543362;
    v27 = v17;
    _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
  }

  v23 = _NUAssertFailHandler();
  return [(PIParallaxStyle *)v23 _filterForRecipeIdentifier:v24, v25];
}

+ (id)_filterForRecipeIdentifier:(id)identifier
{
  v3 = [PIParallaxStyleRecipeRegistry recipeForIdentifier:identifier];
  if (v3)
  {
    v4 = [[PIParallaxRecipeFilter alloc] initWithRecipe:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (PIParallaxStyle)styleWithColorAnalysis:(id)analysis
{
  v29 = *MEMORY[0x1E69E9840];
  analysisCopy = analysis;
  v4 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v5 = MEMORY[0x1E69B3D70];
    v6 = *MEMORY[0x1E69B3D70];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_ERROR))
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = v6;
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [v7 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v10];
      *buf = 138543362;
      v26 = v11;
      _os_log_error_impl(&dword_1C7694000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

      v12 = *v4;
      if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
      {
        if (v12 != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_355_4148);
        }

LABEL_11:
        v18 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
        {
          specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
          v20 = MEMORY[0x1E696AF00];
          v21 = specific;
          v22 = v18;
          callStackSymbols = [v20 callStackSymbols];
          v4 = [callStackSymbols componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v26 = specific;
          v27 = 2114;
          v28 = v4;
          _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }

        goto LABEL_13;
      }

      if (v12 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_355_4148);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
    {
      goto LABEL_11;
    }

    v13 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      v14 = MEMORY[0x1E696AF00];
      v15 = v13;
      callStackSymbols2 = [v14 callStackSymbols];
      v17 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v26 = v17;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

LABEL_13:
    v24 = objc_opt_class();
    NSStringFromClass(v24);
    objc_claimAutoreleasedReturnValue();
    _NUAssertFailHandler();
LABEL_14:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_355_4148);
  }
}

@end
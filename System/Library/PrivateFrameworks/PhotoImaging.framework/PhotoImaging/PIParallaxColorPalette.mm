@interface PIParallaxColorPalette
+ (id)_loadColorsFromValues:(id)a3 mode:(id)a4 space:(id)a5 error:(id *)a6;
+ (id)_paletteWithConfigurationDictionary:(id)a3 error:(id *)a4;
+ (id)_serializeColors:(id)a3 mode:(id)a4;
+ (id)colorBGPalette;
+ (id)colorWashDuotonePalette;
+ (id)colorWashSinglePalette;
+ (id)customPalette;
+ (id)greenScreenMutedPalette;
+ (id)greenScreenVibrantPalette;
+ (id)loadPaletteFromURL:(id)a3 error:(id *)a4;
+ (id)loadPaletteWithName:(id)a3;
- (BOOL)writeToURL:(id)a3 mode:(id)a4 space:(id)a5 error:(id *)a6;
- (PIParallaxColorPalette)initWithPrimaryColors:(id)a3 secondaryColors:(id)a4;
- (PIParallaxColorPalette)initWithPrimaryColors:(id)a3 secondaryColors:(id)a4 suggestionIndices:(id)a5;
- (id)paletteColorForColor:(id)a3;
- (id)suggestionAtIndex:(unint64_t)a3;
- (id)suggestionForColor:(id)a3;
- (unint64_t)_lookupColor:(id)a3 withPredicate:(id)a4;
@end

@implementation PIParallaxColorPalette

- (id)suggestionAtIndex:(unint64_t)a3
{
  v5 = [(PIParallaxColorPalette *)self primaryColors];
  v6 = [v5 objectAtIndexedSubscript:a3];

  v7 = [(PIParallaxColorPalette *)self secondaryColors];
  if ([v7 count] <= a3)
  {
    v9 = 0;
  }

  else
  {
    v8 = [(PIParallaxColorPalette *)self secondaryColors];
    v9 = [v8 objectAtIndexedSubscript:a3];
  }

  v10 = [objc_alloc(MEMORY[0x1E69C07B0]) initWithPrimaryColor:v6 secondaryColor:v9];

  return v10;
}

- (id)paletteColorForColor:(id)a3
{
  v4 = [(PIParallaxColorPalette *)self indexOfColor:a3];
  v5 = [(PIParallaxColorPalette *)self primaryColors];
  v6 = [v5 objectAtIndexedSubscript:v4];

  return v6;
}

- (unint64_t)_lookupColor:(id)a3 withPredicate:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(PIParallaxColorPalette *)self primaryColors];
  if ([v8 count])
  {
    if ([v8 count])
    {
      v9 = 0;
      v10 = 0x7FFFFFFFFFFFFFFFLL;
      v11 = 1.79769313e308;
      do
      {
        if (v7[2](v7, v9))
        {
          v12 = [v8 objectAtIndexedSubscript:v9];
          [v12 distanceToColor:v6];
          if (v11 > v13)
          {
            v11 = v13;
            v10 = v9;
          }
        }

        ++v9;
      }

      while (v9 < [v8 count]);
      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {

        return v10;
      }
    }
  }

  else
  {
    v15 = NUAssertLogger_1509();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The palette can't be empty"];
      v41 = 138543362;
      v42 = v16;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v41, 0xCu);
    }

    v17 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v19 = NUAssertLogger_1509();
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
        v41 = 138543618;
        v42 = v23;
        v43 = 2114;
        v44 = v27;
        _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v41, 0x16u);
      }
    }

    else if (v20)
    {
      v21 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [v21 componentsJoinedByString:@"\n"];
      v41 = 138543362;
      v42 = v22;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v41, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v28 = NUAssertLogger_1509();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to find a nearest color"];
    v41 = 138543362;
    v42 = v29;
    _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v41, 0xCu);
  }

  v30 = MEMORY[0x1E69B38E8];
  v31 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
  v32 = NUAssertLogger_1509();
  v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
  if (v31)
  {
    if (v33)
    {
      v36 = dispatch_get_specific(*v30);
      v37 = MEMORY[0x1E696AF00];
      v38 = v36;
      v39 = [v37 callStackSymbols];
      v40 = [v39 componentsJoinedByString:@"\n"];
      v41 = 138543618;
      v42 = v36;
      v43 = 2114;
      v44 = v40;
      _os_log_error_impl(&dword_1C7694000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v41, 0x16u);
    }
  }

  else if (v33)
  {
    v34 = [MEMORY[0x1E696AF00] callStackSymbols];
    v35 = [v34 componentsJoinedByString:@"\n"];
    v41 = 138543362;
    v42 = v35;
    _os_log_error_impl(&dword_1C7694000, v32, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v41, 0xCu);
  }

  _NUAssertFailHandler();
  return NUAssertLogger_1509();
}

- (id)suggestionForColor:(id)a3
{
  v4 = a3;
  v5 = [(PIParallaxColorPalette *)self suggestionIndices];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __45__PIParallaxColorPalette_suggestionForColor___block_invoke;
  v10[3] = &unk_1E82A9D88;
  v11 = v5;
  v6 = v5;
  v7 = [(PIParallaxColorPalette *)self _lookupColor:v4 withPredicate:v10];

  v8 = [(PIParallaxColorPalette *)self suggestionAtIndex:v7];

  return v8;
}

- (PIParallaxColorPalette)initWithPrimaryColors:(id)a3 secondaryColors:(id)a4 suggestionIndices:(id)a5
{
  v76 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    v22 = NUAssertLogger_1509();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "primaryColors != nil"];
      *buf = 138543362;
      v73 = v23;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v24 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v26 = NUAssertLogger_1509();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v27)
      {
        v50 = dispatch_get_specific(*v24);
        v51 = MEMORY[0x1E696AF00];
        v52 = v50;
        v24 = [v51 callStackSymbols];
        v53 = [v24 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v73 = v50;
        v74 = 2114;
        v75 = v53;
        _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v27)
    {
      v28 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [v28 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v73 = v24;
      _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v32 = _NUAssertFailHandler();
    goto LABEL_36;
  }

  if (!v9)
  {
    v29 = NUAssertLogger_1509();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "secondaryColors != nil"];
      *buf = 138543362;
      v73 = v30;
      _os_log_error_impl(&dword_1C7694000, v29, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v24 = MEMORY[0x1E69B38E8];
    v31 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v26 = NUAssertLogger_1509();
    v32 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (!v31)
    {
      if (v32)
      {
        v33 = [MEMORY[0x1E696AF00] callStackSymbols];
        v24 = [v33 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v73 = v24;
        _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_38:

      v37 = _NUAssertFailHandler();
      goto LABEL_39;
    }

LABEL_36:
    if (v32)
    {
      v54 = dispatch_get_specific(*v24);
      v55 = MEMORY[0x1E696AF00];
      v56 = v54;
      v24 = [v55 callStackSymbols];
      v57 = [v24 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v73 = v54;
      v74 = 2114;
      v75 = v57;
      _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_38;
  }

  v11 = v10;
  if (!v10)
  {
    v34 = NUAssertLogger_1509();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "suggestionIndices != nil"];
      *buf = 138543362;
      v73 = v35;
      _os_log_error_impl(&dword_1C7694000, v34, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v24 = MEMORY[0x1E69B38E8];
    v36 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v26 = NUAssertLogger_1509();
    v37 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (!v36)
    {
      if (v37)
      {
        v38 = [MEMORY[0x1E696AF00] callStackSymbols];
        v24 = [v38 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v73 = v24;
        _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_41:

      v42 = _NUAssertFailHandler();
      goto LABEL_42;
    }

LABEL_39:
    if (v37)
    {
      v58 = dispatch_get_specific(*v24);
      v59 = MEMORY[0x1E696AF00];
      v60 = v58;
      v24 = [v59 callStackSymbols];
      v61 = [v24 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v73 = v58;
      v74 = 2114;
      v75 = v61;
      _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_41;
  }

  v12 = [v10 lastIndex];
  if (v12 >= [v8 count])
  {
    v39 = NUAssertLogger_1509();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "suggestionIndices.lastIndex < primaryColors.count"];
      *buf = 138543362;
      v73 = v40;
      _os_log_error_impl(&dword_1C7694000, v39, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v24 = MEMORY[0x1E69B38E8];
    v41 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v26 = NUAssertLogger_1509();
    v42 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (!v41)
    {
      if (v42)
      {
        v43 = [MEMORY[0x1E696AF00] callStackSymbols];
        v24 = [v43 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v73 = v24;
        _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_44:

      v47 = _NUAssertFailHandler();
      goto LABEL_45;
    }

LABEL_42:
    if (v42)
    {
      v62 = dispatch_get_specific(*v24);
      v63 = MEMORY[0x1E696AF00];
      v64 = v62;
      v24 = [v63 callStackSymbols];
      v65 = [v24 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v73 = v62;
      v74 = 2114;
      v75 = v65;
      _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_44;
  }

  if ([v9 count])
  {
    v13 = [v9 count];
    if (v13 != [v8 count])
    {
      v44 = NUAssertLogger_1509();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Secondary color palette should be empty or equal in size to the primary palette"];
        *buf = 138543362;
        v73 = v45;
        _os_log_error_impl(&dword_1C7694000, v44, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      v24 = MEMORY[0x1E69B38E8];
      v46 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
      v26 = NUAssertLogger_1509();
      v47 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
      if (!v46)
      {
        if (v47)
        {
          v48 = [MEMORY[0x1E696AF00] callStackSymbols];
          v49 = [v48 componentsJoinedByString:@"\n"];
          *buf = 138543362;
          v73 = v49;
          _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
        }

        goto LABEL_47;
      }

LABEL_45:
      if (v47)
      {
        v66 = dispatch_get_specific(*v24);
        v67 = MEMORY[0x1E696AF00];
        v68 = v66;
        v69 = [v67 callStackSymbols];
        v70 = [v69 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v73 = v66;
        v74 = 2114;
        v75 = v70;
        _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }

LABEL_47:

      _NUAssertFailHandler();
    }
  }

  v71.receiver = self;
  v71.super_class = PIParallaxColorPalette;
  v14 = [(PIParallaxColorPalette *)&v71 init];
  v15 = [v8 copy];
  primaryColors = v14->_primaryColors;
  v14->_primaryColors = v15;

  v17 = [v9 copy];
  secondaryColors = v14->_secondaryColors;
  v14->_secondaryColors = v17;

  v19 = [v11 copy];
  suggestionIndices = v14->_suggestionIndices;
  v14->_suggestionIndices = v19;

  return v14;
}

- (PIParallaxColorPalette)initWithPrimaryColors:(id)a3 secondaryColors:(id)a4
{
  v6 = MEMORY[0x1E696AC90];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithIndexesInRange:{0, objc_msgSend(v8, "count")}];
  v10 = [(PIParallaxColorPalette *)self initWithPrimaryColors:v8 secondaryColors:v7 suggestionIndices:v9];

  return v10;
}

- (BOOL)writeToURL:(id)a3 mode:(id)a4 space:(id)a5 error:(id *)a6
{
  v31[6] = *MEMORY[0x1E69E9840];
  v10 = MEMORY[0x1E695DF70];
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v10 alloc];
  v15 = [(PIParallaxColorPalette *)self suggestionIndices];
  v16 = [v14 initWithCapacity:{objc_msgSend(v15, "count")}];

  v17 = [(PIParallaxColorPalette *)self suggestionIndices];
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __54__PIParallaxColorPalette_writeToURL_mode_space_error___block_invoke;
  v28 = &unk_1E82A9D60;
  v29 = v16;
  v18 = v16;
  [v17 enumerateIndexesUsingBlock:&v25];

  v30[0] = @"version";
  v30[1] = @"mode";
  v31[0] = &unk_1F471E8F8;
  v31[1] = v12;
  v31[2] = v11;
  v30[2] = @"space";
  v30[3] = @"primaryColors";
  v19 = [(PIParallaxColorPalette *)self primaryColors:v25];
  v20 = [PIParallaxColorPalette _serializeColors:v19 mode:v12];
  v31[3] = v20;
  v30[4] = @"secondaryColors";
  v21 = [(PIParallaxColorPalette *)self secondaryColors];
  v22 = [PIParallaxColorPalette _serializeColors:v21 mode:v12];
  v30[5] = @"suggestionIndices";
  v31[4] = v22;
  v31[5] = v18;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:6];

  LOBYTE(a6) = [v23 writeToURL:v13 error:a6];
  return a6;
}

void __54__PIParallaxColorPalette_writeToURL_mode_space_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  [v2 addObject:v3];
}

+ (id)customPalette
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (i = 0; i != 10; ++i)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    for (j = 0; j != 12; ++j)
    {
      v7 = [objc_alloc(MEMORY[0x1E69C0750]) initWithHue:j * 30.0 tone:i / 10.0];
      [v5 addObject:v7];
    }

    NSLog(&cfstr_TonalColors.isa, v5);
    [v3 addObjectsFromArray:v5];
  }

  v8 = [a1 alloc];
  v9 = [v8 initWithPrimaryColors:v3 secondaryColors:MEMORY[0x1E695E0F0]];

  return v9;
}

+ (id)loadPaletteWithName:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[PIGlobalSettings globalSettings];
  v5 = [v4 useStyleRecipeConfigDirectory];

  v6 = off_1E82A8000;
  if (!v5)
  {
    goto LABEL_8;
  }

  v7 = +[PIGlobalSettings globalSettings];
  v8 = [v7 styleRecipeConfigDirectoryPath];

  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8];
  v10 = [v9 URLByAppendingPathComponent:v3];
  v11 = [v10 URLByAppendingPathExtension:@"plist"];

  v26 = 0;
  v12 = [PIParallaxColorPalette loadPaletteFromURL:v11 error:&v26];
  v13 = v26;
  if (!v12)
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      goto LABEL_20;
    }

    while (1)
    {
      v14 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v28 = v3;
        v29 = 2112;
        v30 = v13;
        _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "Failed to load user palette '%@', error: %@", buf, 0x16u);
      }

LABEL_8:
      v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v11 = [v8 URLForResource:v3 withExtension:@"plist"];
      v15 = v6[54];
      v25 = 0;
      v12 = [(__objc2_class *)v15 loadPaletteFromURL:v11 error:&v25];
      v13 = v25;
      if (v12)
      {
        break;
      }

      v17 = NUAssertLogger_1509();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load color palette '%@', error: %@", v3, v13];
        *buf = 138543362;
        v28 = v18;
        _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      v11 = MEMORY[0x1E69B38E8];
      specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
      v8 = NUAssertLogger_1509();
      v20 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
      if (specific)
      {
        if (v20)
        {
          v22 = dispatch_get_specific(*v11);
          v23 = MEMORY[0x1E696AF00];
          v24 = v22;
          v11 = [v23 callStackSymbols];
          v6 = [v11 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v28 = v22;
          v29 = 2114;
          v30 = v6;
          _os_log_error_impl(&dword_1C7694000, v8, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v20)
      {
        v21 = [MEMORY[0x1E696AF00] callStackSymbols];
        v11 = [v21 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v28 = v11;
        _os_log_error_impl(&dword_1C7694000, v8, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      _NUAssertFailHandler();
LABEL_20:
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_193);
    }
  }

  return v12;
}

+ (id)greenScreenVibrantPalette
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__PIParallaxColorPalette_greenScreenVibrantPalette__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (greenScreenVibrantPalette_onceToken != -1)
  {
    dispatch_once(&greenScreenVibrantPalette_onceToken, block);
  }

  v2 = greenScreenVibrantPalette_palette;

  return v2;
}

uint64_t __51__PIParallaxColorPalette_greenScreenVibrantPalette__block_invoke(uint64_t a1)
{
  greenScreenVibrantPalette_palette = [*(a1 + 32) loadPaletteWithName:@"GreenScreenVibrantPalette"];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)greenScreenMutedPalette
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__PIParallaxColorPalette_greenScreenMutedPalette__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (greenScreenMutedPalette_onceToken != -1)
  {
    dispatch_once(&greenScreenMutedPalette_onceToken, block);
  }

  v2 = greenScreenMutedPalette_palette;

  return v2;
}

uint64_t __49__PIParallaxColorPalette_greenScreenMutedPalette__block_invoke(uint64_t a1)
{
  greenScreenMutedPalette_palette = [*(a1 + 32) loadPaletteWithName:@"GreenScreenMutedPalette"];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)colorWashDuotonePalette
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__PIParallaxColorPalette_colorWashDuotonePalette__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (colorWashDuotonePalette_onceToken != -1)
  {
    dispatch_once(&colorWashDuotonePalette_onceToken, block);
  }

  v2 = colorWashDuotonePalette_palette;

  return v2;
}

uint64_t __49__PIParallaxColorPalette_colorWashDuotonePalette__block_invoke(uint64_t a1)
{
  colorWashDuotonePalette_palette = [*(a1 + 32) loadPaletteWithName:@"ColorWashDuotonePalette"];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)colorWashSinglePalette
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__PIParallaxColorPalette_colorWashSinglePalette__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (colorWashSinglePalette_onceToken != -1)
  {
    dispatch_once(&colorWashSinglePalette_onceToken, block);
  }

  v2 = colorWashSinglePalette_palette;

  return v2;
}

uint64_t __48__PIParallaxColorPalette_colorWashSinglePalette__block_invoke(uint64_t a1)
{
  colorWashSinglePalette_palette = [*(a1 + 32) loadPaletteWithName:@"ColorWashSinglePalette"];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)colorBGPalette
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__PIParallaxColorPalette_colorBGPalette__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (colorBGPalette_onceToken != -1)
  {
    dispatch_once(&colorBGPalette_onceToken, block);
  }

  v2 = colorBGPalette_palette;

  return v2;
}

uint64_t __40__PIParallaxColorPalette_colorBGPalette__block_invoke(uint64_t a1)
{
  colorBGPalette_palette = [*(a1 + 32) loadPaletteWithName:@"ColorBGPalette"];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_loadColorsFromValues:(id)a3 mode:(id)a4 space:(id)a5 error:(id *)a6
{
  v96 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v53 = NUAssertLogger_1509();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "colorValues != nil"];
      *components = 138543362;
      *&components[4] = v54;
      _os_log_error_impl(&dword_1C7694000, v53, OS_LOG_TYPE_ERROR, "Fail: %{public}@", components, 0xCu);
    }

    v55 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v57 = NUAssertLogger_1509();
    v58 = os_log_type_enabled(v57, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v58)
      {
        v66 = dispatch_get_specific(*v55);
        v67 = MEMORY[0x1E696AF00];
        v68 = v66;
        v55 = [v67 callStackSymbols];
        v69 = [v55 componentsJoinedByString:@"\n"];
        *components = 138543618;
        *&components[4] = v66;
        *&components[12] = 2114;
        *&components[14] = v69;
        _os_log_error_impl(&dword_1C7694000, v57, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", components, 0x16u);
      }
    }

    else if (v58)
    {
      v59 = [MEMORY[0x1E696AF00] callStackSymbols];
      v55 = [v59 componentsJoinedByString:@"\n"];
      *components = 138543362;
      *&components[4] = v55;
      _os_log_error_impl(&dword_1C7694000, v57, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", components, 0xCu);
    }

    v63 = _NUAssertFailHandler();
    goto LABEL_59;
  }

  if (!a6)
  {
    v60 = NUAssertLogger_1509();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *components = 138543362;
      *&components[4] = v61;
      _os_log_error_impl(&dword_1C7694000, v60, OS_LOG_TYPE_ERROR, "Fail: %{public}@", components, 0xCu);
    }

    v55 = MEMORY[0x1E69B38E8];
    v62 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v57 = NUAssertLogger_1509();
    v63 = os_log_type_enabled(v57, OS_LOG_TYPE_ERROR);
    if (!v62)
    {
      if (v63)
      {
        v64 = [MEMORY[0x1E696AF00] callStackSymbols];
        v65 = [v64 componentsJoinedByString:@"\n"];
        *components = 138543362;
        *&components[4] = v65;
        _os_log_error_impl(&dword_1C7694000, v57, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", components, 0xCu);
      }

      goto LABEL_61;
    }

LABEL_59:
    if (v63)
    {
      v70 = dispatch_get_specific(*v55);
      v71 = MEMORY[0x1E696AF00];
      v72 = v70;
      v73 = [v71 callStackSymbols];
      v74 = [v73 componentsJoinedByString:@"\n"];
      *components = 138543618;
      *&components[4] = v70;
      *&components[12] = 2114;
      *&components[14] = v74;
      _os_log_error_impl(&dword_1C7694000, v57, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", components, 0x16u);
    }

LABEL_61:

    _NUAssertFailHandler();
  }

  v12 = v11;
  if ([v10 isEqualToString:@"HueTone"])
  {
    v82 = 1;
    v13 = 2;
  }

  else
  {
    v14 = [v10 isEqualToString:@"Hex"];
    v82 = v14 ^ 1;
    v13 = 3;
    if (v14)
    {
      v13 = 1;
    }
  }

  v78 = v13;
  v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v16 = v9;
  v79 = [v16 countByEnumeratingWithState:&v87 objects:v95 count:16];
  if (v79)
  {
    v80 = *v88;
    name = *MEMORY[0x1E695F0B8];
    v76 = a6;
    v77 = v12;
    v81 = v15;
LABEL_9:
    v17 = 0;
    while (1)
    {
      if (*v88 != v80)
      {
        objc_enumerationMutation(v16);
      }

      v18 = *(*(&v87 + 1) + 8 * v17);
      if (v82)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || [v18 count] != v78)
        {
          *v76 = [MEMORY[0x1E69B3A48] invalidError:@"Invalid color values" object:v18];
          goto LABEL_41;
        }

        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v19 = v18;
        v20 = [v19 countByEnumeratingWithState:&v83 objects:v94 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v84;
LABEL_17:
          v23 = 0;
          while (1)
          {
            if (*v84 != v22)
            {
              objc_enumerationMutation(v19);
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              break;
            }

            if (v21 == ++v23)
            {
              v21 = [v19 countByEnumeratingWithState:&v83 objects:v94 count:16];
              if (v21)
              {
                goto LABEL_17;
              }

              goto LABEL_23;
            }
          }

LABEL_40:
          *v76 = [MEMORY[0x1E69B3A48] invalidError:@"Invalid color values" object:v19];

          v18 = v19;
LABEL_41:
          v12 = v77;
          v15 = v81;

          v51 = 0;
          goto LABEL_42;
        }

LABEL_23:
      }

      if ([v10 isEqualToString:@"HueTone"])
      {
        v24 = objc_alloc(MEMORY[0x1E69C0750]);
        v25 = [v18 objectAtIndexedSubscript:0];
        [v25 doubleValue];
        v27 = v26;
        v28 = [v18 objectAtIndexedSubscript:1];
        [v28 doubleValue];
        v30 = [v24 initWithHue:v27 tone:v29];
      }

      else if ([v10 isEqualToString:@"LumaHueChroma"])
      {
        v31 = objc_alloc(MEMORY[0x1E69C0750]);
        v32 = [v18 objectAtIndexedSubscript:0];
        [v32 doubleValue];
        v34 = v33;
        v35 = [v18 objectAtIndexedSubscript:1];
        [v35 doubleValue];
        v37 = v36;
        v38 = [v18 objectAtIndexedSubscript:2];
        [v38 doubleValue];
        v30 = [v31 initWithLuma:v34 hue:v37 chroma:v39];
      }

      else
      {
        if ([v10 isEqualToString:@"Hex"])
        {
          v19 = v18;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_40;
          }

          *components = 0;
          v91 = 0;
          v40 = [v19 cStringUsingEncoding:1];
          if (!v40 || sscanf(v40, "%02x%02x%02x", components, &v91 + 4, &v91) != 3)
          {
            goto LABEL_40;
          }

          v41 = *components / 255.0;
          v42 = SHIDWORD(v91) / 255.0;
          v43 = v91 / 255.0;
        }

        else
        {
          v44 = [v18 objectAtIndexedSubscript:0];
          [v44 doubleValue];
          v41 = v45;

          v46 = [v18 objectAtIndexedSubscript:1];
          [v46 doubleValue];
          v42 = v47;

          v19 = [v18 objectAtIndexedSubscript:2];
          [v19 doubleValue];
          v43 = v48;
        }

        if ([v77 isEqualToString:@"P3"])
        {
          v49 = CGColorSpaceCreateWithName(name);
          *components = v41;
          *&components[8] = v42;
          *&components[16] = v43;
          v93 = 0x3FF0000000000000;
          v50 = CGColorCreate(v49, components);
          v30 = [MEMORY[0x1E69C0750] colorWithCGColor:v50];
          CGColorSpaceRelease(v49);
          CGColorRelease(v50);
        }

        else
        {
          v30 = [objc_alloc(MEMORY[0x1E69C0750]) initWithRed:v41 green:v42 blue:v43];
        }
      }

      [v81 addObject:v30];

      if (++v17 == v79)
      {
        v12 = v77;
        v15 = v81;
        v79 = [v16 countByEnumeratingWithState:&v87 objects:v95 count:16];
        if (v79)
        {
          goto LABEL_9;
        }

        break;
      }
    }
  }

  v51 = v15;
LABEL_42:

  return v51;
}

+ (id)_serializeColors:(id)a3 mode:(id)a4
{
  v73 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v61 objects:v72 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v62;
    do
    {
      v11 = 0;
      do
      {
        if (*v62 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v61 + 1) + 8 * v11);
        if ([v6 isEqualToString:@"HueTone"])
        {
          v13 = MEMORY[0x1E696AD98];
          [v12 hue];
          v14 = [v13 numberWithDouble:?];
          v71[0] = v14;
          v15 = MEMORY[0x1E696AD98];
          [v12 tone];
          v16 = [v15 numberWithDouble:?];
          v71[1] = v16;
          v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:2];
LABEL_10:

          goto LABEL_11;
        }

        if ([v6 isEqualToString:@"LumaHueChroma"])
        {
          v18 = MEMORY[0x1E696AD98];
          [v12 luma];
          v14 = [v18 numberWithDouble:?];
          v70[0] = v14;
          v19 = MEMORY[0x1E696AD98];
          [v12 hue];
          v16 = [v19 numberWithDouble:?];
          v70[1] = v16;
          v20 = MEMORY[0x1E696AD98];
          [v12 chroma];
          v21 = [v20 numberWithDouble:?];
          v70[2] = v21;
          v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:3];

          goto LABEL_10;
        }

        if ([v6 isEqualToString:@"RGB"])
        {
          v22 = MEMORY[0x1E696AD98];
          [v12 red];
          v23 = [v22 numberWithDouble:?];
          v69[0] = v23;
          v24 = MEMORY[0x1E696AD98];
          [v12 green];
          v25 = [v24 numberWithDouble:?];
          v69[1] = v25;
          v26 = MEMORY[0x1E696AD98];
          [v12 blue];
          v27 = [v26 numberWithDouble:?];
          v69[2] = v27;
          v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:3];
        }

        else
        {
          if (![v6 isEqualToString:@"Hex"])
          {
            v47 = NUAssertLogger_1509();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown color mode: %@", v6];
              *buf = 138543362;
              v66 = v48;
              _os_log_error_impl(&dword_1C7694000, v47, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
            }

            v49 = MEMORY[0x1E69B38E8];
            specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
            v51 = NUAssertLogger_1509();
            v52 = os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);
            if (specific)
            {
              if (v52)
              {
                v55 = dispatch_get_specific(*v49);
                v56 = MEMORY[0x1E696AF00];
                v57 = v55;
                v58 = [v56 callStackSymbols];
                v59 = [v58 componentsJoinedByString:@"\n"];
                *buf = 138543618;
                v66 = v55;
                v67 = 2114;
                v68 = v59;
                _os_log_error_impl(&dword_1C7694000, v51, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
              }
            }

            else if (v52)
            {
              v53 = [MEMORY[0x1E696AF00] callStackSymbols];
              v54 = [v53 componentsJoinedByString:@"\n"];
              *buf = 138543362;
              v66 = v54;
              _os_log_error_impl(&dword_1C7694000, v51, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
            }

            _NUAssertFailHandler();
          }

          [v12 red];
          v29 = v28;
          [v12 green];
          v31 = v30;
          [v12 blue];
          v33 = v29;
          v34 = 255.0;
          v35 = (v33 * 255.0) + 0.5;
          if (v35 < 255.0)
          {
            v36 = v35;
          }

          else
          {
            v36 = 255.0;
          }

          LODWORD(v37) = v36;
          v38 = v31;
          v39 = (v38 * 255.0) + 0.5;
          if (v39 < 255.0)
          {
            v40 = v39;
          }

          else
          {
            v40 = 255.0;
          }

          LODWORD(v41) = v40;
          v42 = v32;
          v43 = (v42 * 255.0) + 0.5;
          if (v43 < 255.0)
          {
            v34 = v43;
          }

          LODWORD(v44) = v34;
          if (v35 >= 0.0)
          {
            v37 = v37;
          }

          else
          {
            v37 = 0;
          }

          if (v39 >= 0.0)
          {
            v41 = v41;
          }

          else
          {
            v41 = 0;
          }

          if (v43 >= 0.0)
          {
            v44 = v44;
          }

          else
          {
            v44 = 0;
          }

          v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02X%02X%02X", v37, v41, v44];
        }

LABEL_11:
        [v7 addObject:v17];

        ++v11;
      }

      while (v9 != v11);
      v45 = [obj countByEnumeratingWithState:&v61 objects:v72 count:16];
      v9 = v45;
    }

    while (v45);
  }

  return v7;
}

+ (id)_paletteWithConfigurationDictionary:(id)a3 error:(id *)a4
{
  v76 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v34 = NUAssertLogger_1509();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "dictionary != nil"];
      *buf = 138543362;
      v73 = v35;
      _os_log_error_impl(&dword_1C7694000, v34, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v36 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v38 = NUAssertLogger_1509();
    v39 = os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v39)
      {
        v47 = dispatch_get_specific(*v36);
        v48 = MEMORY[0x1E696AF00];
        v49 = v47;
        v36 = [v48 callStackSymbols];
        v50 = [v36 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v73 = v47;
        v74 = 2114;
        v75 = v50;
        _os_log_error_impl(&dword_1C7694000, v38, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v39)
    {
      v40 = [MEMORY[0x1E696AF00] callStackSymbols];
      v36 = [v40 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v73 = v36;
      _os_log_error_impl(&dword_1C7694000, v38, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v44 = _NUAssertFailHandler();
    goto LABEL_70;
  }

  if (!a4)
  {
    v41 = NUAssertLogger_1509();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v73 = v42;
      _os_log_error_impl(&dword_1C7694000, v41, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v36 = MEMORY[0x1E69B38E8];
    v43 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v38 = NUAssertLogger_1509();
    v44 = os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
    if (!v43)
    {
      if (v44)
      {
        v45 = [MEMORY[0x1E696AF00] callStackSymbols];
        v46 = [v45 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v73 = v46;
        _os_log_error_impl(&dword_1C7694000, v38, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_72;
    }

LABEL_70:
    if (v44)
    {
      v51 = dispatch_get_specific(*v36);
      v52 = MEMORY[0x1E696AF00];
      v53 = v51;
      v54 = [v52 callStackSymbols];
      v55 = [v54 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v73 = v51;
      v74 = 2114;
      v75 = v55;
      _os_log_error_impl(&dword_1C7694000, v38, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_72:

    _NUAssertFailHandler();
  }

  v7 = v6;
  v8 = [v6 objectForKeyedSubscript:@"version"];
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = [MEMORY[0x1E69B3A48] invalidError:@"Invalid version number" object:v8];
      goto LABEL_15;
    }

    v9 = [v8 integerValue];
    if (v9 >= 4)
    {
      v10 = [MEMORY[0x1E69B3A48] unsupportedError:@"Unsupported palette version" object:v8];
LABEL_15:
      v17 = 0;
      *a4 = v10;
      goto LABEL_54;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = [v7 objectForKeyedSubscript:@"mode"];
  v12 = @"RGB";
  if (!v11)
  {
LABEL_11:
    v14 = [v7 objectForKeyedSubscript:@"space"];
    v13 = @"sRGB";
    v64 = v14;
    if (v14)
    {
      v15 = v14;
      v70[0] = @"sRGB";
      v70[1] = @"P3";
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:2];
      if (![v16 containsObject:v15])
      {
        v21 = MEMORY[0x1E69B3A48];
        v22 = @"Invalid space value";
        v23 = v15;
        goto LABEL_26;
      }

      v13 = v15;
    }

    v16 = [v7 objectForKeyedSubscript:@"primaryColors"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v7 objectForKeyedSubscript:@"secondaryColors"];
      if (v18)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [MEMORY[0x1E69B3A48] invalidError:@"Invalid secondary color values" object:v18];
          *a4 = v17 = 0;
LABEL_51:

          goto LABEL_52;
        }
      }

      v19 = [a1 _loadColorsFromValues:v16 mode:v12 space:v13 error:a4];
      if (!v19)
      {
        v17 = 0;
        goto LABEL_50;
      }

      v61 = v19;
      if (v18)
      {
        v20 = [a1 _loadColorsFromValues:v18 mode:v12 space:v13 error:a4];
        if (!v20)
        {
          v17 = 0;
          v19 = v61;
LABEL_50:

          goto LABEL_51;
        }
      }

      else
      {
        v20 = MEMORY[0x1E695E0F0];
      }

      v59 = v20;
      v58 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{0, objc_msgSend(v61, "count")}];
      v24 = [v7 objectForKeyedSubscript:@"suggestionIndices"];
      v57 = v24;
      if (v24)
      {
        v25 = v24;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v56 = v18;
          v63 = objc_alloc_init(MEMORY[0x1E696AD50]);
          v65 = 0u;
          v66 = 0u;
          v67 = 0u;
          v68 = 0u;
          obj = v25;
          v26 = [obj countByEnumeratingWithState:&v65 objects:v69 count:16];
          if (v26)
          {
            v27 = v26;
            v62 = *v66;
            while (2)
            {
              for (i = 0; i != v27; ++i)
              {
                if (*v66 != v62)
                {
                  objc_enumerationMutation(obj);
                }

                v29 = *(*(&v65 + 1) + 8 * i);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  *a4 = [MEMORY[0x1E69B3A48] invalidError:@"Invalid suggestion index" object:v29];

                  v17 = 0;
                  v18 = v56;
                  goto LABEL_45;
                }

                [v63 addIndex:{objc_msgSend(v29, "unsignedIntegerValue")}];
              }

              v27 = [obj countByEnumeratingWithState:&v65 objects:v69 count:16];
              if (v27)
              {
                continue;
              }

              break;
            }
          }

          v30 = v63;
          v31 = v63;
          v18 = v56;
          goto LABEL_48;
        }

        [MEMORY[0x1E69B3A48] invalidError:@"Invalid suggestion indices" object:v25];
        *a4 = v17 = 0;
        v32 = v59;
      }

      else
      {
        if (v9 < 2)
        {
          v31 = v58;
          v30 = v58;
LABEL_48:
          v32 = v59;
          v17 = [[PIParallaxColorPalette alloc] initWithPrimaryColors:v61 secondaryColors:v59 suggestionIndices:v30];
          goto LABEL_49;
        }

        [MEMORY[0x1E69B3A48] missingError:@"Missing suggestion indices" object:v7];
        *a4 = v17 = 0;
LABEL_45:
        v32 = v59;
      }

      v31 = v58;
LABEL_49:

      v19 = v61;
      goto LABEL_50;
    }

    v21 = MEMORY[0x1E69B3A48];
    v22 = @"Invalid primary color values";
    v23 = v16;
LABEL_26:
    [v21 invalidError:v22 object:v23];
    *a4 = v17 = 0;
LABEL_52:

    goto LABEL_53;
  }

  v71[0] = @"RGB";
  v71[1] = @"LumaHueChroma";
  v71[2] = @"HueTone";
  v71[3] = @"Hex";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:4];
  if ([(__CFString *)v13 containsObject:v11])
  {
    v12 = v11;

    goto LABEL_11;
  }

  [MEMORY[0x1E69B3A48] invalidError:@"Invalid mode value" object:v11];
  *a4 = v17 = 0;
LABEL_53:

LABEL_54:

  return v17;
}

+ (id)loadPaletteFromURL:(id)a3 error:(id *)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v11 = NUAssertLogger_1509();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "url != nil"];
      *buf = 138543362;
      v34 = v12;
      _os_log_error_impl(&dword_1C7694000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v13 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v15 = NUAssertLogger_1509();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v24 = dispatch_get_specific(*v13);
        v25 = MEMORY[0x1E696AF00];
        v26 = v24;
        v13 = [v25 callStackSymbols];
        v27 = [v13 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v34 = v24;
        v35 = 2114;
        v36 = v27;
        _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v34 = v13;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v21 = _NUAssertFailHandler();
    goto LABEL_22;
  }

  if (!a4)
  {
    v18 = NUAssertLogger_1509();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v34 = v19;
      _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v13 = MEMORY[0x1E69B38E8];
    v20 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v15 = NUAssertLogger_1509();
    v21 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (!v20)
    {
      if (v21)
      {
        v22 = [MEMORY[0x1E696AF00] callStackSymbols];
        v23 = [v22 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v34 = v23;
        _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_24;
    }

LABEL_22:
    if (v21)
    {
      v28 = dispatch_get_specific(*v13);
      v29 = MEMORY[0x1E696AF00];
      v30 = v28;
      v31 = [v29 callStackSymbols];
      v32 = [v31 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v34 = v28;
      v35 = 2114;
      v36 = v32;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_24:

    _NUAssertFailHandler();
  }

  v7 = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v6 error:a4];
  if (v8)
  {
    v9 = [a1 _paletteWithConfigurationDictionary:v8 error:a4];
  }

  else
  {
    [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to parse color palette plist data" object:v7 underlyingError:*a4];
    *a4 = v9 = 0;
  }

  return v9;
}

@end
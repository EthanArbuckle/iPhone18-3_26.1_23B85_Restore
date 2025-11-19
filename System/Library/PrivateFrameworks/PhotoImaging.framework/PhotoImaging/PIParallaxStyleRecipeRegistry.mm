@interface PIParallaxStyleRecipeRegistry
+ (id)_recipesForIdentifiers:(id)a3 withURLProvider:(id)a4;
+ (id)recipeForIdentifier:(id)a3;
@end

@implementation PIParallaxStyleRecipeRegistry

+ (id)_recipesForIdentifiers:(id)a3 withURLProvider:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v28;
    *&v9 = 138412546;
    v23 = v9;
    do
    {
      v12 = 0;
      do
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v27 + 1) + 8 * v12);
        v14 = [v6 urlForIdentifier:{v13, v23}];
        v15 = [v14 path];
        v16 = [v7 isReadableFileAtPath:v15];

        if (v16)
        {
          v26 = 0;
          v17 = [PIParallaxStyleRecipeArchiver unarchivedStyleRecipeWithURL:v14 error:&v26];
          v18 = v26;
          if (v17)
          {
            [v24 setObject:v17 forKeyedSubscript:v13];
          }

          else
          {
            if (*MEMORY[0x1E69B3D78] != -1)
            {
              dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_140);
            }

            v20 = *MEMORY[0x1E69B3D80];
            if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
            {
              *buf = v23;
              v32 = v13;
              v33 = 2112;
              v34 = v18;
              _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Failed to load style recipe for identifier '%@', error: %@", buf, 0x16u);
            }
          }
        }

        else
        {
          if (*MEMORY[0x1E69B3D78] != -1)
          {
            dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_140);
          }

          v19 = *MEMORY[0x1E69B3D80];
          if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
          {
            *buf = 138477827;
            v32 = v14;
            _os_log_impl(&dword_1C7694000, v19, OS_LOG_TYPE_INFO, "Missing configuration file '%{private}@'", buf, 0xCu);
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v10);
  }

  v21 = [v24 copy];

  return v21;
}

+ (id)recipeForIdentifier:(id)a3
{
  v4 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__PIParallaxStyleRecipeRegistry_recipeForIdentifier___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (recipeForIdentifier__onceToken != -1)
  {
    dispatch_once(&recipeForIdentifier__onceToken, block);
  }

  v5 = +[PIGlobalSettings globalSettings];
  v6 = [v5 useStyleRecipeConfigDirectory];

  if (!v6 || ([recipeForIdentifier__sUserRegistry objectForKeyedSubscript:v4], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = [recipeForIdentifier__sBundleRegistry objectForKeyedSubscript:v4];
  }

  return v7;
}

void __53__PIParallaxStyleRecipeRegistry_recipeForIdentifier___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) supportedIdentifiers];
  v3 = objc_alloc_init(PIParallaxStyleBundleURLProvider);
  v4 = [*(a1 + 32) _recipesForIdentifiers:v2 withURLProvider:v3];
  v5 = recipeForIdentifier__sBundleRegistry;
  recipeForIdentifier__sBundleRegistry = v4;

  v6 = [recipeForIdentifier__sBundleRegistry count];
  if (v6 != [v2 count])
  {
    v14 = NUAssertLogger_3999();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The bundle should contain recipes for all known identifiers"];
      v27 = 138543362;
      v28 = v15;
      _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v27, 0xCu);
    }

    v16 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v18 = NUAssertLogger_3999();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v19)
      {
        v22 = dispatch_get_specific(*v16);
        v23 = MEMORY[0x1E696AF00];
        v24 = v22;
        v25 = [v23 callStackSymbols];
        v26 = [v25 componentsJoinedByString:@"\n"];
        v27 = 138543618;
        v28 = v22;
        v29 = 2114;
        v30 = v26;
        _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v27, 0x16u);
      }
    }

    else if (v19)
    {
      v20 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [v20 componentsJoinedByString:@"\n"];
      v27 = 138543362;
      v28 = v21;
      _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v27, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v7 = +[PIGlobalSettings globalSettings];
  v8 = [v7 styleRecipeConfigDirectoryPath];

  if (v8)
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_140);
    }

    v9 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
    {
      v27 = 138543362;
      v28 = v8;
      _os_log_impl(&dword_1C7694000, v9, OS_LOG_TYPE_INFO, "Using recipe directory at '%{public}@'", &v27, 0xCu);
    }

    v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8];
    v11 = [[PIParallaxStyleUserURLProvider alloc] initWithBaseURL:v10];
    v12 = [*(a1 + 32) _recipesForIdentifiers:v2 withURLProvider:v11];
    v13 = recipeForIdentifier__sUserRegistry;
    recipeForIdentifier__sUserRegistry = v12;
  }
}

@end
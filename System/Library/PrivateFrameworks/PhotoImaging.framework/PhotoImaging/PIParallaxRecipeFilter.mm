@interface PIParallaxRecipeFilter
- (NSDictionary)resolvedParameters;
- (PIParallaxRecipeFilter)initWithRecipe:(id)recipe;
- (id)_evaluateImageWithFilterDefinitions:(id)definitions inputImage:(id)image;
- (id)outputBackgroundImage;
- (id)outputForegroundImage;
- (id)outputMatteImage;
@end

@implementation PIParallaxRecipeFilter

- (id)_evaluateImageWithFilterDefinitions:(id)definitions inputImage:(id)image
{
  v72 = *MEMORY[0x1E69E9840];
  definitionsCopy = definitions;
  imageCopy = image;
  if (!definitionsCopy)
  {
    v30 = NUAssertLogger_12725();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "definitions != nil"];
      *buf = 138543362;
      v69 = v31;
      _os_log_error_impl(&dword_1C7694000, v30, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v34 = NUAssertLogger_12725();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v35)
      {
        v48 = dispatch_get_specific(*callStackSymbols);
        v49 = MEMORY[0x1E696AF00];
        v50 = v48;
        callStackSymbols = [v49 callStackSymbols];
        v51 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v69 = v48;
        v70 = 2114;
        v71 = v51;
        _os_log_error_impl(&dword_1C7694000, v34, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v35)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v69 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v34, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v40 = _NUAssertFailHandler();
    goto LABEL_38;
  }

  v8 = imageCopy;
  if (!imageCopy)
  {
    v37 = NUAssertLogger_12725();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "inputImage != nil"];
      *buf = 138543362;
      v69 = v38;
      _os_log_error_impl(&dword_1C7694000, v37, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v39 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v34 = NUAssertLogger_12725();
    v40 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
    if (!v39)
    {
      if (v40)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        callStackSymbols = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v69 = callStackSymbols;
        _os_log_error_impl(&dword_1C7694000, v34, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_40:

      v45 = _NUAssertFailHandler();
      goto LABEL_41;
    }

LABEL_38:
    if (v40)
    {
      v52 = dispatch_get_specific(*callStackSymbols);
      v53 = MEMORY[0x1E696AF00];
      v54 = v52;
      callStackSymbols = [v53 callStackSymbols];
      v55 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v69 = v52;
      v70 = 2114;
      v71 = v55;
      _os_log_error_impl(&dword_1C7694000, v34, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_40;
  }

  v9 = objc_alloc_init(PIParallaxStyleEvaluationContext);
  resolvedParameters = [(PIParallaxRecipeFilter *)self resolvedParameters];
  [(PIParallaxStyleEvaluationContext *)v9 setParameters:resolvedParameters];

  inputGuideImage = [(PIParallaxFilter *)self inputGuideImage];
  [(PIParallaxStyleEvaluationContext *)v9 setGuideImage:inputGuideImage];

  [(PIParallaxStyleEvaluationContext *)v9 setInputImage:v8];
  v61 = v8;
  imageByClampingToExtent = [v8 imageByClampingToExtent];
  [(PIParallaxStyleEvaluationContext *)v9 setOutputImage:imageByClampingToExtent];

  inputMatteImage = [(PIParallaxFilter *)self inputMatteImage];
  [(PIParallaxStyleEvaluationContext *)v9 setMatteImage:inputMatteImage];

  inputBackgroundImage = [(PIParallaxFilter *)self inputBackgroundImage];
  [(PIParallaxStyleEvaluationContext *)v9 setBackgroundImage:inputBackgroundImage];

  [(PIParallaxFilter *)self visibleFrame];
  [(PIParallaxStyleEvaluationContext *)v9 setVisibleRect:?];
  [(PIParallaxFilter *)self renderScale];
  [(PIParallaxStyleEvaluationContext *)v9 setRenderScale:?];
  localLightData = [(PIParallaxFilter *)self localLightData];
  [(PIParallaxStyleEvaluationContext *)v9 setLocalLightData:localLightData];

  cache = [(PIParallaxFilter *)self cache];
  [(PIParallaxStyleEvaluationContext *)v9 setCache:cache];

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v17 = definitionsCopy;
  v18 = [v17 countByEnumeratingWithState:&v63 objects:v67 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v64;
    v21 = MEMORY[0x1E69B3D80];
    do
    {
      v22 = 0;
      do
      {
        if (*v64 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v63 + 1) + 8 * v22);
        v62 = 0;
        v24 = [v23 evaluateWithContext:v9 error:&v62];
        v25 = v62;
        if (v24)
        {
          [(PIParallaxStyleEvaluationContext *)v9 setOutputImage:v24];
        }

        else
        {
          if (*MEMORY[0x1E69B3D78] != -1)
          {
            dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_12740);
          }

          v26 = *v21;
          if (os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v69 = v23;
            v70 = 2112;
            v71 = v25;
            _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "Error evaluating filter definition: %@, error: %@", buf, 0x16u);
          }
        }

        ++v22;
      }

      while (v19 != v22);
      v19 = [v17 countByEnumeratingWithState:&v63 objects:v67 count:16];
    }

    while (v19);
  }

  outputImage = [(PIParallaxStyleEvaluationContext *)v9 outputImage];
  [v61 extent];
  v28 = [outputImage imageByCroppingToRect:?];

  if (!v28)
  {
    v42 = NUAssertLogger_12725();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to produce an image"];
      *buf = 138543362;
      v69 = v43;
      _os_log_error_impl(&dword_1C7694000, v42, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v44 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v34 = NUAssertLogger_12725();
    v45 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
    if (!v44)
    {
      if (v45)
      {
        callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
        v47 = [callStackSymbols4 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v69 = v47;
        _os_log_error_impl(&dword_1C7694000, v34, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_43;
    }

LABEL_41:
    if (v45)
    {
      v56 = dispatch_get_specific(*callStackSymbols);
      v57 = MEMORY[0x1E696AF00];
      v58 = v56;
      callStackSymbols5 = [v57 callStackSymbols];
      v60 = [callStackSymbols5 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v69 = v56;
      v70 = 2114;
      v71 = v60;
      _os_log_error_impl(&dword_1C7694000, v34, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_43:

    _NUAssertFailHandler();
  }

  return v28;
}

- (NSDictionary)resolvedParameters
{
  recipe = [(PIParallaxRecipeFilter *)self recipe];
  parameters = [recipe parameters];
  v5 = [parameters mutableCopy];

  parameters2 = [(PIParallaxRecipeFilter *)self parameters];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__PIParallaxRecipeFilter_resolvedParameters__block_invoke;
  v9[3] = &unk_1E82AADA0;
  v7 = v5;
  v10 = v7;
  [parameters2 enumerateKeysAndObjectsUsingBlock:v9];

  return v7;
}

void __44__PIParallaxRecipeFilter_resolvedParameters__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 type];
    v10 = [v9 isEqualToString:@"color"];

    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v6;
        v12 = [PIParallaxStyleColorParameter alloc];
        v13 = MEMORY[0x1E696AD98];
        [v11 red];
        v14 = [v13 numberWithDouble:?];
        v15 = MEMORY[0x1E696AD98];
        [v11 green];
        v16 = [v15 numberWithDouble:?];
        v17 = MEMORY[0x1E696AD98];
        [v11 blue];
        v18 = [v17 numberWithDouble:?];
        v19 = [(PIParallaxStyleColorParameter *)v12 initWithRed:v14 green:v16 blue:v18 alpha:&unk_1F471F710];

        [*(a1 + 32) setObject:v19 forKeyedSubscript:v5];
        goto LABEL_19;
      }

      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_12740);
      }

      v24 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
      {
        v26 = 138543618;
        v27 = v5;
        v28 = 2114;
        v29 = v6;
        v25 = "Parameter %{public}@ is not a valid color value: %{public}@";
LABEL_21:
        _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, v25, &v26, 0x16u);
      }
    }

    else
    {
      v21 = [v8 type];
      v22 = [v21 isEqualToString:@"number"];

      if (v22)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = [[PIParallaxStyleNumberParameter alloc] initWithNumber:v6];
          [*(a1 + 32) setObject:v23 forKeyedSubscript:v5];

          goto LABEL_19;
        }

        if (*MEMORY[0x1E69B3D78] != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_12740);
        }

        v24 = *MEMORY[0x1E69B3D80];
        if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
        {
          v26 = 138543618;
          v27 = v5;
          v28 = 2114;
          v29 = v6;
          v25 = "Parameter %{public}@ is not a valid number value: %{public}@";
          goto LABEL_21;
        }
      }
    }
  }

  else
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_12740);
    }

    v20 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEBUG))
    {
      v26 = 138543362;
      v27 = v5;
      _os_log_debug_impl(&dword_1C7694000, v20, OS_LOG_TYPE_DEBUG, "Unsupported filter parameter: %{public}@", &v26, 0xCu);
    }
  }

LABEL_19:
}

- (id)outputMatteImage
{
  inputMatteImage = [(PIParallaxFilter *)self inputMatteImage];

  if (inputMatteImage)
  {
    recipe = [(PIParallaxRecipeFilter *)self recipe];
    matteFilters = [recipe matteFilters];
    inputMatteImage2 = [(PIParallaxFilter *)self inputMatteImage];
    v7 = [(PIParallaxRecipeFilter *)self _evaluateImageWithFilterDefinitions:matteFilters inputImage:inputMatteImage2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)outputForegroundImage
{
  inputForegroundImage = [(PIParallaxFilter *)self inputForegroundImage];

  if (inputForegroundImage)
  {
    recipe = [(PIParallaxRecipeFilter *)self recipe];
    foregroundFilters = [recipe foregroundFilters];
    inputForegroundImage2 = [(PIParallaxFilter *)self inputForegroundImage];
    v7 = [(PIParallaxRecipeFilter *)self _evaluateImageWithFilterDefinitions:foregroundFilters inputImage:inputForegroundImage2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)outputBackgroundImage
{
  inputBackgroundImage = [(PIParallaxFilter *)self inputBackgroundImage];

  if (inputBackgroundImage)
  {
    recipe = [(PIParallaxRecipeFilter *)self recipe];
    backgroundFilters = [recipe backgroundFilters];
    inputBackgroundImage2 = [(PIParallaxFilter *)self inputBackgroundImage];
    v7 = [(PIParallaxRecipeFilter *)self _evaluateImageWithFilterDefinitions:backgroundFilters inputImage:inputBackgroundImage2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (PIParallaxRecipeFilter)initWithRecipe:(id)recipe
{
  recipeCopy = recipe;
  v10.receiver = self;
  v10.super_class = PIParallaxRecipeFilter;
  v5 = [(PIParallaxRecipeFilter *)&v10 init];
  recipe = v5->_recipe;
  v5->_recipe = recipeCopy;
  v7 = recipeCopy;

  parameters = v5->_parameters;
  v5->_parameters = MEMORY[0x1E695E0F8];

  return v5;
}

@end
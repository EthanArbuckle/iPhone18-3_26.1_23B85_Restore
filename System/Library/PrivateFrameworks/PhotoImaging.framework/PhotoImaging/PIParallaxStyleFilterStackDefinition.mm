@interface PIParallaxStyleFilterStackDefinition
- (BOOL)isEqualToParallaxStyleDefinition:(id)definition;
- (BOOL)isEqualToParallaxStyleFilterStackDefinition:(id)definition;
- (PIParallaxStyleFilterStackDefinition)init;
- (PIParallaxStyleFilterStackDefinition)initWithStackName:(id)name filters:(id)filters;
- (id)description;
- (id)evaluateWithContext:(id)context error:(id *)error;
@end

@implementation PIParallaxStyleFilterStackDefinition

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  stackName = [(PIParallaxStyleFilterStackDefinition *)self stackName];
  filters = [(PIParallaxStyleFilterStackDefinition *)self filters];
  v7 = [v3 stringWithFormat:@"<%@:%p stack:%@ filters:%@>", v4, self, stackName, filters];

  return v7;
}

- (id)evaluateWithContext:(id)context error:(id *)error
{
  v63 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if (!contextCopy)
  {
    v30 = NUAssertLogger_15312();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "context != nil"];
      *buf = 138543362;
      v60 = v31;
      _os_log_error_impl(&dword_1C7694000, v30, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v34 = NUAssertLogger_15312();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v35)
      {
        v43 = dispatch_get_specific(*callStackSymbols);
        v44 = MEMORY[0x1E696AF00];
        v45 = v43;
        callStackSymbols = [v44 callStackSymbols];
        v46 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v60 = v43;
        v61 = 2114;
        v62 = v46;
        _os_log_error_impl(&dword_1C7694000, v34, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v35)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v60 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v34, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v40 = _NUAssertFailHandler();
    goto LABEL_32;
  }

  if (!error)
  {
    v37 = NUAssertLogger_15312();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v60 = v38;
      _os_log_error_impl(&dword_1C7694000, v37, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v39 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v34 = NUAssertLogger_15312();
    v40 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
    if (!v39)
    {
      if (v40)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v42 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v60 = v42;
        _os_log_error_impl(&dword_1C7694000, v34, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_34;
    }

LABEL_32:
    if (v40)
    {
      v47 = dispatch_get_specific(*callStackSymbols);
      v48 = MEMORY[0x1E696AF00];
      v49 = v47;
      callStackSymbols4 = [v48 callStackSymbols];
      v51 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v60 = v47;
      v61 = 2114;
      v62 = v51;
      _os_log_error_impl(&dword_1C7694000, v34, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_34:

    _NUAssertFailHandler();
  }

  v7 = contextCopy;
  inputImage = [contextCopy inputImage];
  [inputImage extent];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  outputImage = [v7 outputImage];
  v17 = [outputImage imageByCroppingToRect:{v9, v11, v13, v15}];
  [v7 setInputImage:v17];

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  filters = [(PIParallaxStyleFilterStackDefinition *)self filters];
  v19 = [filters countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v55;
    v22 = MEMORY[0x1E69B3D80];
    do
    {
      v23 = 0;
      do
      {
        if (*v55 != v21)
        {
          objc_enumerationMutation(filters);
        }

        v24 = *(*(&v54 + 1) + 8 * v23);
        v53 = 0;
        v25 = [v24 evaluateWithContext:v7 error:&v53];
        v26 = v53;
        if (v25)
        {
          [v7 setOutputImage:v25];
        }

        else
        {
          if (*MEMORY[0x1E69B3D78] != -1)
          {
            dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_418);
          }

          v27 = *v22;
          if (os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v60 = v24;
            v61 = 2112;
            v62 = v26;
            _os_log_error_impl(&dword_1C7694000, v27, OS_LOG_TYPE_ERROR, "Error evaluating filter definition: %@, error: %@", buf, 0x16u);
          }
        }

        ++v23;
      }

      while (v20 != v23);
      v20 = [filters countByEnumeratingWithState:&v54 objects:v58 count:16];
    }

    while (v20);
  }

  [v7 setInputImage:inputImage];
  outputImage2 = [v7 outputImage];

  return outputImage2;
}

- (BOOL)isEqualToParallaxStyleFilterStackDefinition:(id)definition
{
  definitionCopy = definition;
  stackName = [(PIParallaxStyleFilterStackDefinition *)self stackName];
  stackName2 = [definitionCopy stackName];
  v7 = [stackName isEqualToString:stackName2];

  if (v7)
  {
    filters = [(PIParallaxStyleFilterStackDefinition *)self filters];
    filters2 = [definitionCopy filters];
    v10 = [filters isEqualToArray:filters2];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isEqualToParallaxStyleDefinition:(id)definition
{
  definitionCopy = definition;
  type = [definitionCopy type];
  v6 = [type isEqualToString:@"stack"];

  if (v6)
  {
    v7 = [(PIParallaxStyleFilterStackDefinition *)self isEqualToParallaxStyleFilterStackDefinition:definitionCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (PIParallaxStyleFilterStackDefinition)initWithStackName:(id)name filters:(id)filters
{
  v13.receiver = self;
  v13.super_class = PIParallaxStyleFilterStackDefinition;
  filtersCopy = filters;
  nameCopy = name;
  v7 = [(PIParallaxStyleFilterStackDefinition *)&v13 init];
  v8 = [nameCopy copy];

  stackName = v7->_stackName;
  v7->_stackName = v8;

  v10 = [filtersCopy copy];
  filters = v7->_filters;
  v7->_filters = v10;

  return v7;
}

- (PIParallaxStyleFilterStackDefinition)init
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v4 = MEMORY[0x1E69B3D70];
    v5 = *MEMORY[0x1E69B3D70];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_ERROR))
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = v5;
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(a2);
      v11 = [v6 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v9, v10];
      *buf = 138543362;
      v27 = v11;
      _os_log_error_impl(&dword_1C7694000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

      v12 = *v3;
      if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
      {
        if (v12 != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_15274);
        }

LABEL_11:
        v18 = *v4;
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
        {
          specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
          v20 = MEMORY[0x1E696AF00];
          v21 = specific;
          v22 = v18;
          callStackSymbols = [v20 callStackSymbols];
          v24 = [callStackSymbols componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v27 = specific;
          v28 = 2114;
          v29 = v24;
          _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }

        goto LABEL_13;
      }

      if (v12 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_15274);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
    {
      goto LABEL_11;
    }

    v13 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      v14 = MEMORY[0x1E696AF00];
      v15 = v13;
      callStackSymbols2 = [v14 callStackSymbols];
      v17 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v17;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

LABEL_13:
    v25 = objc_opt_class();
    NSStringFromClass(v25);
    objc_claimAutoreleasedReturnValue();
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    _NUAssertFailHandler();
LABEL_14:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_15274);
  }
}

@end
@interface PIParallaxStyleBindingParameter
- (BOOL)isEqualToParallaxStyleParameter:(id)parameter;
- (PIParallaxStyleBindingParameter)initWithVariableName:(id)name;
- (id)description;
- (id)evaluateWithContext:(id)context error:(id *)error;
@end

@implementation PIParallaxStyleBindingParameter

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  variableName = [(PIParallaxStyleBindingParameter *)self variableName];
  v4 = [v2 stringWithFormat:@"($%@)", variableName];

  return v4;
}

- (id)evaluateWithContext:(id)context error:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if (!error)
  {
    v16 = NUAssertLogger_15312();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v30 = v17;
      _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v18 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v20 = NUAssertLogger_15312();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v21)
      {
        v24 = dispatch_get_specific(*v18);
        v25 = MEMORY[0x1E696AF00];
        v26 = v24;
        callStackSymbols = [v25 callStackSymbols];
        v28 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v30 = v24;
        v31 = 2114;
        v32 = v28;
        _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v30 = v23;
      _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v7 = contextCopy;
  parameters = [contextCopy parameters];
  variableName = [(PIParallaxStyleBindingParameter *)self variableName];
  v10 = [parameters objectForKeyedSubscript:variableName];

  if (v10)
  {
    v11 = [v10 evaluateWithContext:v7 error:error];
  }

  else
  {
    v12 = MEMORY[0x1E696AEC0];
    variableName2 = [(PIParallaxStyleBindingParameter *)self variableName];
    v14 = [v12 stringWithFormat:@"Unable to find source for variable bound to '%@'", variableName2];

    *error = [MEMORY[0x1E69B3A48] missingError:v14 object:v7];

    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqualToParallaxStyleParameter:(id)parameter
{
  parameterCopy = parameter;
  type = [parameterCopy type];
  v6 = [type isEqualToString:@"binding"];

  if (v6)
  {
    v7 = parameterCopy;
    variableName = [(PIParallaxStyleBindingParameter *)self variableName];
    variableName2 = [v7 variableName];

    v10 = [variableName isEqualToString:variableName2];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (PIParallaxStyleBindingParameter)initWithVariableName:(id)name
{
  v8.receiver = self;
  v8.super_class = PIParallaxStyleBindingParameter;
  nameCopy = name;
  v4 = [(PIParallaxStyleBindingParameter *)&v8 init];
  v5 = [nameCopy copy];

  variableName = v4->_variableName;
  v4->_variableName = v5;

  return v4;
}

@end
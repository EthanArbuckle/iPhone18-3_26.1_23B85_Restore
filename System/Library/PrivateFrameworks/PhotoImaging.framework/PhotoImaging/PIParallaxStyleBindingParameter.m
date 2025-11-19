@interface PIParallaxStyleBindingParameter
- (BOOL)isEqualToParallaxStyleParameter:(id)a3;
- (PIParallaxStyleBindingParameter)initWithVariableName:(id)a3;
- (id)description;
- (id)evaluateWithContext:(id)a3 error:(id *)a4;
@end

@implementation PIParallaxStyleBindingParameter

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(PIParallaxStyleBindingParameter *)self variableName];
  v4 = [v2 stringWithFormat:@"($%@)", v3];

  return v4;
}

- (id)evaluateWithContext:(id)a3 error:(id *)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!a4)
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
        v27 = [v25 callStackSymbols];
        v28 = [v27 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v30 = v24;
        v31 = 2114;
        v32 = v28;
        _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      v22 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [v22 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v30 = v23;
      _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v7 = v6;
  v8 = [v6 parameters];
  v9 = [(PIParallaxStyleBindingParameter *)self variableName];
  v10 = [v8 objectForKeyedSubscript:v9];

  if (v10)
  {
    v11 = [v10 evaluateWithContext:v7 error:a4];
  }

  else
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = [(PIParallaxStyleBindingParameter *)self variableName];
    v14 = [v12 stringWithFormat:@"Unable to find source for variable bound to '%@'", v13];

    *a4 = [MEMORY[0x1E69B3A48] missingError:v14 object:v7];

    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqualToParallaxStyleParameter:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  v6 = [v5 isEqualToString:@"binding"];

  if (v6)
  {
    v7 = v4;
    v8 = [(PIParallaxStyleBindingParameter *)self variableName];
    v9 = [v7 variableName];

    v10 = [v8 isEqualToString:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (PIParallaxStyleBindingParameter)initWithVariableName:(id)a3
{
  v8.receiver = self;
  v8.super_class = PIParallaxStyleBindingParameter;
  v3 = a3;
  v4 = [(PIParallaxStyleBindingParameter *)&v8 init];
  v5 = [v3 copy];

  variableName = v4->_variableName;
  v4->_variableName = v5;

  return v4;
}

@end
@interface PIParallaxStyleDefinition
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToParallaxStyleDefinition:(id)a3;
- (NSString)type;
- (id)evaluateWithContext:(id)a3 error:(id *)a4;
@end

@implementation PIParallaxStyleDefinition

- (id)evaluateWithContext:(id)a3 error:(id *)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v6 = MEMORY[0x1E69B3D70];
    v7 = *MEMORY[0x1E69B3D70];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_ERROR))
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = v7;
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v8 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v11];
      *buf = 138543362;
      v27 = v12;
      _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

      v13 = *v5;
      if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
      {
        if (v13 != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_15274);
        }

LABEL_11:
        v19 = *v6;
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
        {
          specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
          v21 = MEMORY[0x1E696AF00];
          v22 = specific;
          v23 = v19;
          v24 = [v21 callStackSymbols];
          v5 = [v24 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v27 = specific;
          v28 = 2114;
          v29 = v5;
          _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }

        goto LABEL_13;
      }

      if (v13 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_15274);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
    {
      goto LABEL_11;
    }

    v14 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      v15 = MEMORY[0x1E696AF00];
      v16 = v14;
      v17 = [v15 callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v18;
      _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

LABEL_13:
    v25 = objc_opt_class();
    NSStringFromClass(v25);
    objc_claimAutoreleasedReturnValue();
    _NUAssertFailHandler();
LABEL_14:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_15274);
  }
}

- (BOOL)isEqualToParallaxStyleDefinition:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a3;
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
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_15274);
        }

LABEL_11:
        v18 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
        {
          specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
          v20 = MEMORY[0x1E696AF00];
          v21 = specific;
          v22 = v18;
          v23 = [v20 callStackSymbols];
          v4 = [v23 componentsJoinedByString:@"\n"];
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
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_15274);
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
      v16 = [v14 callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
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
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_15274);
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(PIParallaxStyleDefinition *)self type];
    v7 = [v5 type];
    v8 = [v6 isEqualToString:v7];

    if (v8)
    {
      v9 = [(PIParallaxStyleDefinition *)self isEqualToParallaxStyleDefinition:v5];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSString)type
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
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_15274);
        }

LABEL_11:
        v16 = *v3;
        if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
        {
          specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
          v18 = MEMORY[0x1E696AF00];
          v19 = specific;
          v20 = v16;
          v21 = [v18 callStackSymbols];
          v2 = [v21 componentsJoinedByString:@"\n"];
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
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_15274);
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
      v14 = [v12 callStackSymbols];
      v15 = [v14 componentsJoinedByString:@"\n"];
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
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_15274);
  }
}

@end
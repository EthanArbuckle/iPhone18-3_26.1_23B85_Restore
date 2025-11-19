@interface PIParallaxFilter
- (CGRect)visibleFrame;
- (CIImage)outputBackgroundImage;
- (CIImage)outputForegroundImage;
- (CIImage)outputMatteImage;
@end

@implementation PIParallaxFilter

- (CGRect)visibleFrame
{
  x = self->_visibleFrame.origin.x;
  y = self->_visibleFrame.origin.y;
  width = self->_visibleFrame.size.width;
  height = self->_visibleFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CIImage)outputMatteImage
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
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_3546);
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
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_3546);
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
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_3546);
  }
}

- (CIImage)outputBackgroundImage
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
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_3546);
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
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_3546);
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
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_3546);
  }
}

- (CIImage)outputForegroundImage
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
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_3546);
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
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_3546);
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
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_3546);
  }
}

@end
@interface PIOrientationAdjustmentController
- (int64_t)orientation;
- (void)setOrientation:(int64_t)a3;
@end

@implementation PIOrientationAdjustmentController

- (void)setOrientation:(int64_t)a3
{
  v25 = *MEMORY[0x1E69E9840];
  if ((NUOrientationIsValid() & 1) == 0)
  {
    v7 = NUAssertLogger_11514();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "NUOrientationIsValid(orientation)"];
      *buf = 138543362;
      v22 = v8;
      _os_log_error_impl(&dword_1C7694000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v9 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v11 = NUAssertLogger_11514();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v12)
      {
        v15 = dispatch_get_specific(*v9);
        v16 = MEMORY[0x1E696AF00];
        v17 = v15;
        v18 = [v16 callStackSymbols];
        v19 = [v18 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v22 = v15;
        v23 = 2114;
        v24 = v19;
        _os_log_error_impl(&dword_1C7694000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v12)
    {
      v13 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [v13 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v22 = v14;
      _os_log_error_impl(&dword_1C7694000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v20 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [(PIAdjustmentController *)self adjustment];
  v6 = +[PIOrientationAdjustmentController valueKey];
  [v5 setObject:v20 forKeyedSubscript:v6];
}

- (int64_t)orientation
{
  v2 = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIOrientationAdjustmentController valueKey];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = [v4 integerValue];

  return v5;
}

@end
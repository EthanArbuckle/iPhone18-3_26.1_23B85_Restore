@interface PIPerfPowerServiceIdentifier
+ (id)genEditIdentifier;
- (PIPerfPowerServiceIdentifier)init;
- (PIPerfPowerServiceIdentifier)initWithIdentifier:(PPSTelemetryIdentifier *)a3;
@end

@implementation PIPerfPowerServiceIdentifier

- (PIPerfPowerServiceIdentifier)initWithIdentifier:(PPSTelemetryIdentifier *)a3
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v5 = NUAssertLogger_16186();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "identifier != NULL"];
      *buf = 138543362;
      v20 = v6;
      _os_log_error_impl(&dword_1C7694000, v5, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v7 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v9 = NUAssertLogger_16186();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v10)
      {
        v13 = dispatch_get_specific(*v7);
        v14 = MEMORY[0x1E696AF00];
        v15 = v13;
        v16 = [v14 callStackSymbols];
        v17 = [v16 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v20 = v13;
        v21 = 2114;
        v22 = v17;
        _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v10)
    {
      v11 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [v11 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v20 = v12;
      _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v18.receiver = self;
  v18.super_class = PIPerfPowerServiceIdentifier;
  result = [(PIPerfPowerServiceIdentifier *)&v18 init];
  result->_telemetryId = a3;
  return result;
}

- (PIPerfPowerServiceIdentifier)init
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
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_16202);
        }

LABEL_11:
        v18 = *v4;
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
        {
          specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
          v20 = MEMORY[0x1E696AF00];
          v21 = specific;
          v22 = v18;
          v23 = [v20 callStackSymbols];
          v24 = [v23 componentsJoinedByString:@"\n"];
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
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_16202);
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
      v16 = [v14 callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
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
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_16202);
  }
}

+ (id)genEditIdentifier
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__PIPerfPowerServiceIdentifier_genEditIdentifier__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (genEditIdentifier_onceToken != -1)
  {
    dispatch_once(&genEditIdentifier_onceToken, block);
  }

  v2 = genEditIdentifier_wrapperIdentifier;

  return v2;
}

void __49__PIPerfPowerServiceIdentifier_genEditIdentifier__block_invoke(uint64_t a1)
{
  v2 = PPSCreateTelemetryIdentifier();
  if (v2)
  {
    v3 = [objc_alloc(*(a1 + 32)) initWithIdentifier:v2];
    v4 = genEditIdentifier_wrapperIdentifier;
    genEditIdentifier_wrapperIdentifier = v3;

    MEMORY[0x1EEE66BB8](v3, v4);
  }

  else
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_115);
    }

    v5 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1C7694000, v5, OS_LOG_TYPE_INFO, "Failed to create telemetry identifier", v6, 2u);
    }
  }
}

@end
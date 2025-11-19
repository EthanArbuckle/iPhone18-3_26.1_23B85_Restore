@interface PIPerfPowerService
- (PIPerfPowerService)init;
- (PIPerfPowerService)initWithIdentifier:(id)a3 operation:(int64_t)a4;
- (void)beginMeasuring;
- (void)endMeasuring;
- (void)measureBlock:(id)a3;
@end

@implementation PIPerfPowerService

- (void)measureBlock:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = a3;
  if (!v17)
  {
    v4 = NUAssertLogger_16186();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "block != nil"];
      *buf = 138543362;
      v19 = v5;
      _os_log_error_impl(&dword_1C7694000, v4, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v6 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v8 = NUAssertLogger_16186();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v9)
      {
        v12 = dispatch_get_specific(*v6);
        v13 = MEMORY[0x1E696AF00];
        v14 = v12;
        v15 = [v13 callStackSymbols];
        v16 = [v15 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v19 = v12;
        v20 = 2114;
        v21 = v16;
        _os_log_error_impl(&dword_1C7694000, v8, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v9)
    {
      v10 = [MEMORY[0x1E696AF00] callStackSymbols];
      v11 = [v10 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v19 = v11;
      _os_log_error_impl(&dword_1C7694000, v8, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  [(PIPerfPowerService *)self beginMeasuring];
  v17[2]();
  [(PIPerfPowerService *)self endMeasuring];
}

- (void)endMeasuring
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = [(PIPerfPowerService *)self identifier];

  if (!v3)
  {
    return;
  }

  v39 = [(PIPerfPowerService *)self record];
  if (!v39)
  {
    v8 = NUAssertLogger_16186();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Not already measuring performance"];
      *buf = 138543362;
      v41 = v9;
      _os_log_error_impl(&dword_1C7694000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v10 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v12 = NUAssertLogger_16186();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v13)
      {
        v26 = dispatch_get_specific(*v10);
        v27 = MEMORY[0x1E696AF00];
        v28 = v26;
        v10 = [v27 callStackSymbols];
        v29 = [v10 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v41 = v26;
        v42 = 2114;
        v43 = v29;
        _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      v14 = [MEMORY[0x1E696AF00] callStackSymbols];
      v10 = [v14 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v41 = v10;
      _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v18 = _NUAssertFailHandler();
    goto LABEL_27;
  }

  v4 = [v39 startTime];

  if (!v4)
  {
    v15 = NUAssertLogger_16186();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid measurement record, expected a start time"];
      *buf = 138543362;
      v41 = v16;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v10 = MEMORY[0x1E69B38E8];
    v17 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v12 = NUAssertLogger_16186();
    v18 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (!v17)
    {
      if (v18)
      {
        v19 = [MEMORY[0x1E696AF00] callStackSymbols];
        v10 = [v19 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v41 = v10;
        _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_29:

      v23 = _NUAssertFailHandler();
      goto LABEL_30;
    }

LABEL_27:
    if (v18)
    {
      v30 = dispatch_get_specific(*v10);
      v31 = MEMORY[0x1E696AF00];
      v32 = v30;
      v10 = [v31 callStackSymbols];
      v33 = [v10 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v41 = v30;
      v42 = 2114;
      v43 = v33;
      _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_29;
  }

  v5 = [v39 endTime];

  if (v5)
  {
    v20 = NUAssertLogger_16186();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid measurement record, expected no end time"];
      *buf = 138543362;
      v41 = v21;
      _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v10 = MEMORY[0x1E69B38E8];
    v22 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v12 = NUAssertLogger_16186();
    v23 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (!v22)
    {
      if (v23)
      {
        v24 = [MEMORY[0x1E696AF00] callStackSymbols];
        v25 = [v24 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v41 = v25;
        _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_32;
    }

LABEL_30:
    if (v23)
    {
      v34 = dispatch_get_specific(*v10);
      v35 = MEMORY[0x1E696AF00];
      v36 = v34;
      v37 = [v35 callStackSymbols];
      v38 = [v37 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v41 = v34;
      v42 = 2114;
      v43 = v38;
      _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_32:

    _NUAssertFailHandler();
  }

  v6 = [MEMORY[0x1E695DF00] now];
  [v39 setEndTime:v6];

  [v39 identifier];
  v7 = [v39 payload];
  PPSSendTelemetry();

  [(PIPerfPowerService *)self setRecord:0];
}

- (void)beginMeasuring
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [(PIPerfPowerService *)self identifier];

  if (v3)
  {
    v4 = [(PIPerfPowerService *)self record];

    if (v4)
    {
      v12 = NUAssertLogger_16186();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Already measuring performance"];
        *buf = 138543362;
        v27 = v13;
        _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      v14 = MEMORY[0x1E69B38E8];
      specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
      v16 = NUAssertLogger_16186();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
      if (specific)
      {
        if (v17)
        {
          v20 = dispatch_get_specific(*v14);
          v21 = MEMORY[0x1E696AF00];
          v22 = v20;
          v23 = [v21 callStackSymbols];
          v24 = [v23 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v27 = v20;
          v28 = 2114;
          v29 = v24;
          _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v17)
      {
        v18 = [MEMORY[0x1E696AF00] callStackSymbols];
        v19 = [v18 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v27 = v19;
        _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      _NUAssertFailHandler();
    }

    v5 = objc_alloc_init(PIPerfPowerRecord);
    [(PIPerfPowerService *)self setRecord:v5];

    v6 = [(PIPerfPowerService *)self identifier];
    v7 = [v6 telemetryId];
    v8 = [(PIPerfPowerService *)self record];
    [v8 setIdentifier:v7];

    v9 = [(PIPerfPowerService *)self operation];
    v10 = [(PIPerfPowerService *)self record];
    [v10 setOperation:v9];

    v25 = [MEMORY[0x1E695DF00] now];
    v11 = [(PIPerfPowerService *)self record];
    [v11 setStartTime:v25];
  }
}

- (PIPerfPowerService)initWithIdentifier:(id)a3 operation:(int64_t)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a4 <= 0)
  {
    v11 = NUAssertLogger_16186();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "operation > 0"];
      *buf = 138543362;
      v26 = v12;
      _os_log_error_impl(&dword_1C7694000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v13 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v15 = NUAssertLogger_16186();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v19 = dispatch_get_specific(*v13);
        v20 = MEMORY[0x1E696AF00];
        v21 = v19;
        v22 = [v20 callStackSymbols];
        v23 = [v22 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v26 = v19;
        v27 = 2114;
        v28 = v23;
        _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v26 = v18;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v7 = v6;
  v24.receiver = self;
  v24.super_class = PIPerfPowerService;
  v8 = [(PIPerfPowerService *)&v24 init];
  identifier = v8->_identifier;
  v8->_identifier = v7;

  v8->_operation = a4;
  return v8;
}

- (PIPerfPowerService)init
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

@end
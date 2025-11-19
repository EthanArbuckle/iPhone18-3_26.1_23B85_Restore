@interface PIAutoLoopAnalysisJob
- (BOOL)prepare:(id *)a3;
- (BOOL)render:(id *)a3;
- (id)cacheKey;
- (id)result;
@end

@implementation PIAutoLoopAnalysisJob

- (id)result
{
  v3 = objc_alloc_init(_PIAutoLoopAnalysisResult);
  v4 = [(PIAutoLoopAnalysisJob *)self recipe];
  [(_PIAutoLoopAnalysisResult *)v3 setRecipe:v4];

  return v3;
}

- (BOOL)render:(id *)a3
{
  v35 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v15 = NUAssertLogger_7107();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      *&buf[4] = v16;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v17 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v19 = NUAssertLogger_7107();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v20)
      {
        v23 = dispatch_get_specific(*v17);
        v24 = MEMORY[0x1E696AF00];
        v25 = v23;
        v26 = [v24 callStackSymbols];
        v27 = [v26 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v23;
        v33 = 2114;
        v34 = v27;
        _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      v21 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [v21 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v22;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
    __break(1u);
  }

  v5 = MEMORY[0x1E695DFF8];
  v6 = NSTemporaryDirectory();
  v7 = [v5 fileURLWithPath:v6];

  v31 = 0;
  v8 = [(PIAutoLoopAnalysisJob *)self videoSource];
  createAutoLoopSettingsForAsset();

  objc_initWeak(&location, self);
  *&buf[8] = 2;
  *buf = 0x100000000;
  v29 = 0;
  v9 = v31;
  if (v31)
  {
    v10 = 0;
LABEL_13:
    if (v9 == 1)
    {
      [MEMORY[0x1E69B3A48] canceledError:@"canceled" object:objc_opt_class()];
    }

    else
    {
      v12 = MEMORY[0x1E69B3A48];
      v13 = autoloopErrorCodeToString();
      [v12 failureError:v13 object:objc_opt_class()];
    }
    *a3 = ;
    goto LABEL_17;
  }

  objc_copyWeak(&v28, &location);
  v31 = runLiveAnalysisPipeline();
  objc_destroyWeak(&v28);
  if (v31)
  {
    v10 = 0;
  }

  else
  {
    v11 = liveAnalysisResultToDictionary();
    v10 = v11 != 0;
    if (v11)
    {
      [(PIAutoLoopAnalysisJob *)self setRecipe:v11];
    }

    else
    {
      *a3 = [MEMORY[0x1E69B3A48] failureError:@"could not extract dictionary results" object:objc_opt_class()];
    }
  }

  if (v29)
  {
    liveAnalysisResultDestroy();
  }

  v9 = v31;
  if (v31)
  {
    goto LABEL_13;
  }

LABEL_17:
  autoloopSettingsDestroy();
  objc_destroyWeak(&location);

  return v10;
}

uint64_t __32__PIAutoLoopAnalysisJob_render___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained isCanceled] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)prepare:(id *)a3
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v13 = NUAssertLogger_7107();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v28 = v14;
      _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v15 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v17 = NUAssertLogger_7107();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v18)
      {
        v21 = dispatch_get_specific(*v15);
        v22 = MEMORY[0x1E696AF00];
        v23 = v21;
        v24 = [v22 callStackSymbols];
        v25 = [v24 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v28 = v21;
        v29 = 2114;
        v30 = v25;
        _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      v19 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [v19 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v20;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v26.receiver = self;
  v26.super_class = PIAutoLoopAnalysisJob;
  if (![(NURenderJob *)&v26 prepare:?])
  {
    return 0;
  }

  v5 = [(NURenderJob *)self renderNode];
  v6 = PIAutoLoopFindVideoSourceNode(v5);

  if (v6)
  {
    v7 = [v6 asset:a3];
    videoSource = self->_videoSource;
    self->_videoSource = v7;

    v9 = self->_videoSource != 0;
  }

  else
  {
    v10 = MEMORY[0x1E69B3A48];
    v11 = [(NURenderJob *)self renderNode];
    *a3 = [v10 missingError:@"unable to find video source node" object:v11];

    v9 = 0;
  }

  return v9;
}

- (id)cacheKey
{
  v3 = objc_alloc_init(MEMORY[0x1E69B3A38]);
  v4 = [(NURenderJob *)self renderNode];
  v5 = PIAutoLoopFindVideoSourceNode(v4);

  [v5 nu_updateDigest:v3];
  [v3 finalize];
  v6 = [v3 stringValue];

  return v6;
}

@end
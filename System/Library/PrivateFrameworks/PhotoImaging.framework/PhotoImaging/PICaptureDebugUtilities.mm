@interface PICaptureDebugUtilities
+ (id)createCaptureDebugDirectoryForComposition:(id)a3 error:(id *)a4;
@end

@implementation PICaptureDebugUtilities

+ (id)createCaptureDebugDirectoryForComposition:(id)a3 error:(id *)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v22 = NUAssertLogger_17559();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "composition != nil"];
      *buf = 138543362;
      v45 = v23;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v24 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v26 = NUAssertLogger_17559();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v27)
      {
        v35 = dispatch_get_specific(*v24);
        v36 = MEMORY[0x1E696AF00];
        v37 = v35;
        v24 = [v36 callStackSymbols];
        v38 = [v24 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v35;
        v46 = 2114;
        v47 = v38;
        _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v27)
    {
      v28 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [v28 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v24;
      _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v32 = _NUAssertFailHandler();
    goto LABEL_38;
  }

  if (!a4)
  {
    v29 = NUAssertLogger_17559();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v45 = v30;
      _os_log_error_impl(&dword_1C7694000, v29, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v24 = MEMORY[0x1E69B38E8];
    v31 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v26 = NUAssertLogger_17559();
    v32 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (!v31)
    {
      if (v32)
      {
        v33 = [MEMORY[0x1E696AF00] callStackSymbols];
        v34 = [v33 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v45 = v34;
        _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_40;
    }

LABEL_38:
    if (v32)
    {
      v39 = dispatch_get_specific(*v24);
      v40 = MEMORY[0x1E696AF00];
      v41 = v39;
      v42 = [v40 callStackSymbols];
      v43 = [v42 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v45 = v39;
      v46 = 2114;
      v47 = v43;
      _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_40:

    _NUAssertFailHandler();
  }

  v6 = v5;
  if (NUIsAppleInternal())
  {
    v7 = [v6 objectForKeyedSubscript:@"source"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 definition];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [v8 image];

        v8 = v9;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v8 sourceDefinitions];
        v11 = [v10 firstObject];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v13 = [v11 url];
    if (v13)
    {
      v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/private/var/mobile/Media/PhotoData/CaptureDebug/"];
      v15 = [v13 lastPathComponent];
      v16 = [v15 stringByDeletingPathExtension];

      if (v16)
      {
        v17 = [v14 URLByAppendingPathComponent:v16 isDirectory:1];

        v14 = v17;
      }

      v18 = [MEMORY[0x1E696AC08] defaultManager];
      v19 = [v18 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:a4];

      if (v19)
      {
        v20 = v14;
      }

      else
      {
        v20 = 0;
      }

      v12 = v20;
    }

    else
    {
      [MEMORY[0x1E69B3A48] unsupportedError:@"Unable to resolve source file" object:v7];
      *a4 = v12 = 0;
    }
  }

  else
  {
    [MEMORY[0x1E69B3A48] unsupportedError:@"Debug capture directory unsupported" object:0];
    *a4 = v12 = 0;
  }

  return v12;
}

@end
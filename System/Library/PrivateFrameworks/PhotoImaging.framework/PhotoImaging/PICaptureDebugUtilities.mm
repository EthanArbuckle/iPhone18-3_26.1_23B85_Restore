@interface PICaptureDebugUtilities
+ (id)createCaptureDebugDirectoryForComposition:(id)composition error:(id *)error;
@end

@implementation PICaptureDebugUtilities

+ (id)createCaptureDebugDirectoryForComposition:(id)composition error:(id *)error
{
  v48 = *MEMORY[0x1E69E9840];
  compositionCopy = composition;
  if (!compositionCopy)
  {
    v22 = NUAssertLogger_17559();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "composition != nil"];
      *buf = 138543362;
      v45 = v23;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v26 = NUAssertLogger_17559();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v27)
      {
        v35 = dispatch_get_specific(*callStackSymbols);
        v36 = MEMORY[0x1E696AF00];
        v37 = v35;
        callStackSymbols = [v36 callStackSymbols];
        v38 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v35;
        v46 = 2114;
        v47 = v38;
        _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v27)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v32 = _NUAssertFailHandler();
    goto LABEL_38;
  }

  if (!error)
  {
    v29 = NUAssertLogger_17559();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v45 = v30;
      _os_log_error_impl(&dword_1C7694000, v29, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v31 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v26 = NUAssertLogger_17559();
    v32 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (!v31)
    {
      if (v32)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v34 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v45 = v34;
        _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_40;
    }

LABEL_38:
    if (v32)
    {
      v39 = dispatch_get_specific(*callStackSymbols);
      v40 = MEMORY[0x1E696AF00];
      v41 = v39;
      callStackSymbols4 = [v40 callStackSymbols];
      v43 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v45 = v39;
      v46 = 2114;
      v47 = v43;
      _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_40:

    _NUAssertFailHandler();
  }

  v6 = compositionCopy;
  if (NUIsAppleInternal())
  {
    v7 = [v6 objectForKeyedSubscript:@"source"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      definition = [v7 definition];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        image = [definition image];

        definition = image;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        sourceDefinitions = [definition sourceDefinitions];
        firstObject = [sourceDefinitions firstObject];
      }

      else
      {
        firstObject = 0;
      }
    }

    else
    {
      firstObject = 0;
    }

    v13 = [firstObject url];
    if (v13)
    {
      v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/private/var/mobile/Media/PhotoData/CaptureDebug/"];
      lastPathComponent = [v13 lastPathComponent];
      stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

      if (stringByDeletingPathExtension)
      {
        v17 = [v14 URLByAppendingPathComponent:stringByDeletingPathExtension isDirectory:1];

        v14 = v17;
      }

      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v19 = [defaultManager createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:error];

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
      *error = v12 = 0;
    }
  }

  else
  {
    [MEMORY[0x1E69B3A48] unsupportedError:@"Debug capture directory unsupported" object:0];
    *error = v12 = 0;
  }

  return v12;
}

@end
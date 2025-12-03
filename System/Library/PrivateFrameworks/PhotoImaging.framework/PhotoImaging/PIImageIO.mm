@interface PIImageIO
+ (BOOL)writeCGImage:(CGImage *)image fileURL:(id)l;
+ (BOOL)writeCGImage:(CGImage *)image fileURL:(id)l options:(id)options;
+ (BOOL)writeImage:(id)image fileURL:(id)l;
+ (id)writeImage:(id)image toDirectoryAtPath:(id)path withBasename:(id)basename;
+ (id)writeImage:(id)image toTemporaryDirectoryWithBasename:(id)basename;
@end

@implementation PIImageIO

+ (id)writeImage:(id)image toDirectoryAtPath:(id)path withBasename:(id)basename
{
  v7 = MEMORY[0x1E696AEC0];
  basenameCopy = basename;
  pathCopy = path;
  imageCopy = image;
  v11 = getpid();
  v12 = writeImage_toDirectoryAtPath_withBasename__count++;
  v13 = [v7 stringWithFormat:@"%@-%d-%ld.tiff", basenameCopy, v11, v12];

  v14 = [pathCopy stringByAppendingPathComponent:v13];

  v15 = [MEMORY[0x1E695DFF8] fileURLWithPath:v14];
  LODWORD(v13) = [PIImageIO writeImage:imageCopy fileURL:v15];

  if (v13)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  return v16;
}

+ (id)writeImage:(id)image toTemporaryDirectoryWithBasename:(id)basename
{
  basenameCopy = basename;
  imageCopy = image;
  v8 = NSTemporaryDirectory();
  v9 = [self writeImage:imageCopy toDirectoryAtPath:v8 withBasename:basenameCopy];

  return v9;
}

+ (BOOL)writeCGImage:(CGImage *)image fileURL:(id)l options:(id)options
{
  v44 = *MEMORY[0x1E69E9840];
  lCopy = l;
  optionsCopy = options;
  if (!image)
  {
    v18 = NUAssertLogger_27345();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "cgImage != NULL"];
      *buf = 138543362;
      v41 = v19;
      _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v22 = NUAssertLogger_27345();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v23)
      {
        v31 = dispatch_get_specific(*callStackSymbols);
        v32 = MEMORY[0x1E696AF00];
        v33 = v31;
        callStackSymbols = [v32 callStackSymbols];
        v34 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v41 = v31;
        v42 = 2114;
        v43 = v34;
        _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v41 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v28 = _NUAssertFailHandler();
    goto LABEL_21;
  }

  if (!lCopy)
  {
    v25 = NUAssertLogger_27345();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "fileURL != nil"];
      *buf = 138543362;
      v41 = v26;
      _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v27 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v22 = NUAssertLogger_27345();
    v28 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (!v27)
    {
      if (v28)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v30 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v41 = v30;
        _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_23;
    }

LABEL_21:
    if (v28)
    {
      v35 = dispatch_get_specific(*callStackSymbols);
      v36 = MEMORY[0x1E696AF00];
      v37 = v35;
      callStackSymbols4 = [v36 callStackSymbols];
      v39 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v41 = v35;
      v42 = 2114;
      v43 = v39;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_23:

    _NUAssertFailHandler();
  }

  v9 = optionsCopy;
  pathExtension = [lCopy pathExtension];
  v11 = NUFileTypeFromExtension();
  v12 = CGImageDestinationCreateWithURL(lCopy, v11, 1uLL, 0);

  if (v12 && (CGImageDestinationAddImage(v12, image, v9), v13 = CGImageDestinationFinalize(v12), CFRelease(v12), v13))
  {
    v14 = 1;
    v15 = @"Successfully wrote image to file %@";
  }

  else
  {
    v14 = 0;
    v15 = @"Failed to write image to file %@";
  }

  path = [lCopy path];
  NSLog(&v15->isa, path);

  return v14;
}

+ (BOOL)writeCGImage:(CGImage *)image fileURL:(id)l
{
  v53 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (!image)
  {
    v13 = NUAssertLogger_27345();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "cgImage != NULL"];
      *buf = 138543362;
      v50 = v14;
      _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v17 = NUAssertLogger_27345();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v18)
      {
        v26 = dispatch_get_specific(*callStackSymbols);
        v27 = MEMORY[0x1E696AF00];
        v28 = v26;
        callStackSymbols = [v27 callStackSymbols];
        v29 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v50 = v26;
        v51 = 2114;
        v52 = v29;
        _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v50 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v23 = _NUAssertFailHandler();
    goto LABEL_23;
  }

  v6 = lCopy;
  if (!lCopy)
  {
    v20 = NUAssertLogger_27345();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "fileURL != nil"];
      *buf = 138543362;
      v50 = v21;
      _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v22 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v17 = NUAssertLogger_27345();
    v23 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (!v22)
    {
      if (v23)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v25 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v50 = v25;
        _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_25;
    }

LABEL_23:
    if (v23)
    {
      v30 = dispatch_get_specific(*callStackSymbols);
      v31 = MEMORY[0x1E696AF00];
      v32 = v30;
      callStackSymbols4 = [v31 callStackSymbols];
      v34 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v50 = v30;
      v51 = 2114;
      v52 = v34;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_25:

    _NUAssertFailHandler();
  }

  BitsPerComponent = CGImageGetBitsPerComponent(image);
  switch(BitsPerComponent)
  {
    case 0x20uLL:
      rGBAf = [MEMORY[0x1E69B3BF0] RGBAf];
      goto LABEL_9;
    case 0x10uLL:
      rGBAf = [MEMORY[0x1E69B3BF0] RGBA16];
      goto LABEL_9;
    case 8uLL:
      rGBAf = [MEMORY[0x1E69B3BF0] BGRA8];
LABEL_9:
      v9 = rGBAf;
      v10 = optionsForFormat(rGBAf);
      v11 = [PIImageIO writeCGImage:image fileURL:v6 options:v10];

      return v11;
  }

  v35 = NUAssertLogger_27345();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unhandled bit depth: %ld", CGImageGetBitsPerComponent(image)];
    *buf = 138543362;
    v50 = v36;
    _os_log_error_impl(&dword_1C7694000, v35, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
  }

  v37 = MEMORY[0x1E69B38E8];
  v38 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
  v39 = NUAssertLogger_27345();
  v40 = os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);
  if (v38)
  {
    if (v40)
    {
      v43 = dispatch_get_specific(*v37);
      v44 = MEMORY[0x1E696AF00];
      v45 = v43;
      callStackSymbols5 = [v44 callStackSymbols];
      v47 = [callStackSymbols5 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v50 = v43;
      v51 = 2114;
      v52 = v47;
      _os_log_error_impl(&dword_1C7694000, v39, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }
  }

  else if (v40)
  {
    callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
    v42 = [callStackSymbols6 componentsJoinedByString:@"\n"];
    *buf = 138543362;
    v50 = v42;
    _os_log_error_impl(&dword_1C7694000, v39, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
  }

  CGImageGetBitsPerComponent(image);
  v48 = _NUAssertFailHandler();
  return optionsForFormat(v48);
}

+ (BOOL)writeImage:(id)image fileURL:(id)l
{
  v31 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  lCopy = l;
  if (!imageCopy)
  {
    v14 = NUAssertLogger_27345();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "image != nil"];
      *buf = 138543362;
      v28 = v15;
      _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v16 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v18 = NUAssertLogger_27345();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v19)
      {
        v22 = dispatch_get_specific(*v16);
        v23 = MEMORY[0x1E696AF00];
        v24 = v22;
        callStackSymbols = [v23 callStackSymbols];
        v26 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v28 = v22;
        v29 = 2114;
        v30 = v26;
        _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v21;
      _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v7 = lCopy;
  format = [imageCopy format];
  v9 = optionsForFormat(format);
  v10 = [MEMORY[0x1E69B3B10] newCGImageFromBufferImage:imageCopy];
  if (v10)
  {
    v11 = v10;
    v12 = [PIImageIO writeCGImage:v10 fileURL:v7 options:v9];
    CGImageRelease(v11);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end
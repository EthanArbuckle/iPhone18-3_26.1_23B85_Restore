@interface PICoreImageUtilities
+ (id)framedRectImageWithCGRect:(CGRect)a3 color:(id)a4 borderWidth:(double)a5;
+ (id)loadFilterWithName:(id)a3;
+ (id)metalKernelWithFunctionName:(id)a3 error:(id *)a4;
+ (id)metalLibraryData;
@end

@implementation PICoreImageUtilities

+ (id)loadFilterWithName:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695F648] filterWithName:v3];
  if (v4 || ([MEMORY[0x1E695F648] filterWithName:v3], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_error_impl(&dword_1C7694000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to load filter named '%@'", &v7, 0xCu);
    }

    v5 = 0;
  }

  return v5;
}

+ (id)framedRectImageWithCGRect:(CGRect)a3 color:(id)a4 borderWidth:(double)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = MEMORY[0x1E695F648];
  v11 = a4;
  v12 = [v10 roundedRectangleGeneratorFilter];
  [v12 setExtent:{x, y, width, height}];
  [v12 setColor:v11];

  v13 = [MEMORY[0x1E695F648] roundedRectangleGeneratorFilter];
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v22 = CGRectInset(v21, a5, a5);
  [v13 setExtent:{v22.origin.x, v22.origin.y, v22.size.width, v22.size.height}];
  v14 = [MEMORY[0x1E695F610] blackColor];
  [v13 setColor:v14];

  v15 = [MEMORY[0x1E695F648] sourceOutCompositingFilter];
  v16 = [v12 outputImage];
  [v15 setInputImage:v16];

  v17 = [v13 outputImage];
  [v15 setBackgroundImage:v17];

  v18 = [v15 outputImage];

  return v18;
}

+ (id)metalKernelWithFunctionName:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x1E695F660];
  v7 = a3;
  v8 = [a1 metalLibraryData];
  v9 = [v6 kernelWithFunctionName:v7 fromMetalLibraryData:v8 error:a4];

  return v9;
}

+ (id)metalLibraryData
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__PICoreImageUtilities_metalLibraryData__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (metalLibraryData_onceToken != -1)
  {
    dispatch_once(&metalLibraryData_onceToken, block);
  }

  v2 = metalLibraryData_metalLibraryData;

  return v2;
}

void __40__PICoreImageUtilities_metalLibraryData__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E696AAE8] bundleForClass:*(a1 + 32)];
  v2 = [v1 URLForResource:@"default" withExtension:@"metallib"];
  v19 = 0;
  v3 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v2 options:1 error:&v19];
  v4 = v19;
  v5 = metalLibraryData_metalLibraryData;
  metalLibraryData_metalLibraryData = v3;

  if (!metalLibraryData_metalLibraryData)
  {
    v6 = NUAssertLogger_14127();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load metal lib data: %@", v4];
      *buf = 138543362;
      v21 = v7;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v8 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v10 = NUAssertLogger_14127();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(*v8);
        v15 = MEMORY[0x1E696AF00];
        v16 = v14;
        v17 = [v15 callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v14;
        v22 = 2114;
        v23 = v18;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v13;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }
}

@end
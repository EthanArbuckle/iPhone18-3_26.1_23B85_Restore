@interface PICoreImageUtilities
+ (id)framedRectImageWithCGRect:(CGRect)rect color:(id)color borderWidth:(double)width;
+ (id)loadFilterWithName:(id)name;
+ (id)metalKernelWithFunctionName:(id)name error:(id *)error;
+ (id)metalLibraryData;
@end

@implementation PICoreImageUtilities

+ (id)loadFilterWithName:(id)name
{
  v9 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v4 = [MEMORY[0x1E695F648] filterWithName:nameCopy];
  if (v4 || ([MEMORY[0x1E695F648] filterWithName:nameCopy], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = nameCopy;
      _os_log_error_impl(&dword_1C7694000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to load filter named '%@'", &v7, 0xCu);
    }

    v5 = 0;
  }

  return v5;
}

+ (id)framedRectImageWithCGRect:(CGRect)rect color:(id)color borderWidth:(double)width
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = MEMORY[0x1E695F648];
  colorCopy = color;
  roundedRectangleGeneratorFilter = [v10 roundedRectangleGeneratorFilter];
  [roundedRectangleGeneratorFilter setExtent:{x, y, width, height}];
  [roundedRectangleGeneratorFilter setColor:colorCopy];

  roundedRectangleGeneratorFilter2 = [MEMORY[0x1E695F648] roundedRectangleGeneratorFilter];
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v22 = CGRectInset(v21, width, width);
  [roundedRectangleGeneratorFilter2 setExtent:{v22.origin.x, v22.origin.y, v22.size.width, v22.size.height}];
  blackColor = [MEMORY[0x1E695F610] blackColor];
  [roundedRectangleGeneratorFilter2 setColor:blackColor];

  sourceOutCompositingFilter = [MEMORY[0x1E695F648] sourceOutCompositingFilter];
  outputImage = [roundedRectangleGeneratorFilter outputImage];
  [sourceOutCompositingFilter setInputImage:outputImage];

  outputImage2 = [roundedRectangleGeneratorFilter2 outputImage];
  [sourceOutCompositingFilter setBackgroundImage:outputImage2];

  outputImage3 = [sourceOutCompositingFilter outputImage];

  return outputImage3;
}

+ (id)metalKernelWithFunctionName:(id)name error:(id *)error
{
  v6 = MEMORY[0x1E695F660];
  nameCopy = name;
  metalLibraryData = [self metalLibraryData];
  v9 = [v6 kernelWithFunctionName:nameCopy fromMetalLibraryData:metalLibraryData error:error];

  return v9;
}

+ (id)metalLibraryData
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__PICoreImageUtilities_metalLibraryData__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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
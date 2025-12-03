@interface PIPhotoEffectHDR
+ (id)hdrOffsetBlackAndWhiteKernel;
+ (id)hdrOffsetColorKernel;
- (id)hdrOffsetKernel;
- (id)outputImage;
- (id)photoEffectName;
@end

@implementation PIPhotoEffectHDR

+ (id)hdrOffsetBlackAndWhiteKernel
{
  if (hdrOffsetBlackAndWhiteKernel_onceToken != -1)
  {
    dispatch_once(&hdrOffsetBlackAndWhiteKernel_onceToken, &__block_literal_global_15);
  }

  v3 = hdrOffsetBlackAndWhiteKernel_kernel;

  return v3;
}

void __48__PIPhotoEffectHDR_hdrOffsetBlackAndWhiteKernel__block_invoke()
{
  v19 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695F618] kernelWithString:{@"kernel vec4 _hdrOffsetPosBW(sampler image) { vec4 im = sample(image, samplerCoord(image)) float offset = (im.r + im.g + im.b) / 3.0f; offset = max(0.0f, offset - 1.0f); return vec4(offset, offset, offset, 0.0f); }"}];;
  v1 = hdrOffsetBlackAndWhiteKernel_kernel;
  hdrOffsetBlackAndWhiteKernel_kernel = v0;

  if (!hdrOffsetBlackAndWhiteKernel_kernel)
  {
    v2 = NUAssertLogger_563();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"s_hdrOffsetPos kernel is nil"];
      v15 = 138543362;
      v16 = v3;
      _os_log_error_impl(&dword_1C7694000, v2, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v15, 0xCu);
    }

    v4 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v6 = NUAssertLogger_563();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v7)
      {
        v10 = dispatch_get_specific(*v4);
        v11 = MEMORY[0x1E696AF00];
        v12 = v10;
        v13 = [v11 callStackSymbols];
        v14 = [v13 componentsJoinedByString:@"\n"];
        v15 = 138543618;
        v16 = v10;
        v17 = 2114;
        v18 = v14;
        _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v15, 0x16u);
      }
    }

    else if (v7)
    {
      v8 = [MEMORY[0x1E696AF00] callStackSymbols];
      v9 = [v8 componentsJoinedByString:@"\n"];
      v15 = 138543362;
      v16 = v9;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v15, 0xCu);
    }

    _NUAssertFailHandler();
  }
}

+ (id)hdrOffsetColorKernel
{
  if (hdrOffsetColorKernel_onceToken != -1)
  {
    dispatch_once(&hdrOffsetColorKernel_onceToken, &__block_literal_global_574);
  }

  v3 = hdrOffsetColorKernel_kernel;

  return v3;
}

void __40__PIPhotoEffectHDR_hdrOffsetColorKernel__block_invoke()
{
  v19 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695F618] kernelWithString:{@"kernel vec4 _hdrOffsetPos(sampler image) { vec4 im = sample(image, samplerCoord(image)) float r = max(im.r - 1.0f, 0.0f); float g = max(im.g - 1.0f, 0.0f); float b = max(im.b - 1.0f, 0.0f); return vec4(r, g, b, 0.0f); }"}];;
  v1 = hdrOffsetColorKernel_kernel;
  hdrOffsetColorKernel_kernel = v0;

  if (!hdrOffsetColorKernel_kernel)
  {
    v2 = NUAssertLogger_563();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"s_hdrOffsetPos kernel is nil"];
      v15 = 138543362;
      v16 = v3;
      _os_log_error_impl(&dword_1C7694000, v2, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v15, 0xCu);
    }

    v4 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v6 = NUAssertLogger_563();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v7)
      {
        v10 = dispatch_get_specific(*v4);
        v11 = MEMORY[0x1E696AF00];
        v12 = v10;
        v13 = [v11 callStackSymbols];
        v14 = [v13 componentsJoinedByString:@"\n"];
        v15 = 138543618;
        v16 = v10;
        v17 = 2114;
        v18 = v14;
        _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v15, 0x16u);
      }
    }

    else if (v7)
    {
      v8 = [MEMORY[0x1E696AF00] callStackSymbols];
      v9 = [v8 componentsJoinedByString:@"\n"];
      v15 = 138543362;
      v16 = v9;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v15, 0xCu);
    }

    _NUAssertFailHandler();
  }
}

- (id)outputImage
{
  v42 = *MEMORY[0x1E69E9840];
  inputImage = self->_inputImage;
  if (!inputImage)
  {
    v24 = NUAssertLogger_563();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"inputImage cannot be nil"];
      *buf = 138543362;
      v39 = v25;
      _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v26 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v28 = NUAssertLogger_563();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v29)
      {
        v32 = dispatch_get_specific(*v26);
        v33 = MEMORY[0x1E696AF00];
        v34 = v32;
        callStackSymbols = [v33 callStackSymbols];
        v36 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v39 = v32;
        v40 = 2114;
        v41 = v36;
        _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v29)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v31 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v39 = v31;
      _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  workingColorSpace = [MEMORY[0x1E69B3A10] workingColorSpace];
  v5 = -[CIImage imageByTaggingWithColorSpace:](inputImage, "imageByTaggingWithColorSpace:", [workingColorSpace CGColorSpace]);

  hdrOffsetKernel = [(PIPhotoEffectHDR *)self hdrOffsetKernel];
  [v5 extent];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v37 = v5;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
  v16 = [hdrOffsetKernel applyWithExtent:v15 arguments:{v8, v10, v12, v14}];

  v17 = MEMORY[0x1E695F648];
  photoEffectName = [(PIPhotoEffectHDR *)self photoEffectName];
  v19 = [v17 filterWithName:photoEffectName];

  [v19 setValue:v5 forKey:@"inputImage"];
  [(PIPhotoEffectHDR *)self configureFilter:v19];
  outputImage = [v19 outputImage];
  v21 = [MEMORY[0x1E695F648] filterWithName:@"CIAdditionCompositing"];
  [v21 setValue:outputImage forKey:@"inputBackgroundImage"];
  [v21 setValue:v16 forKey:@"inputImage"];
  outputImage2 = [v21 outputImage];

  return outputImage2;
}

- (id)photoEffectName
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [v3 stringByReplacingOccurrencesOfString:@"PI" withString:@"CI"];

  v5 = [v4 stringByReplacingOccurrencesOfString:@"HDR" withString:&stru_1F46EAF88];

  return v5;
}

- (id)hdrOffsetKernel
{
  isBlackAndWhite = [(PIPhotoEffectHDR *)self isBlackAndWhite];
  v3 = objc_opt_class();
  if (isBlackAndWhite)
  {
    [v3 hdrOffsetBlackAndWhiteKernel];
  }

  else
  {
    [v3 hdrOffsetColorKernel];
  }
  v4 = ;

  return v4;
}

@end
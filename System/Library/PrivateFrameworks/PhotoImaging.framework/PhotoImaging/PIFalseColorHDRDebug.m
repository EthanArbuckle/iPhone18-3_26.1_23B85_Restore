@interface PIFalseColorHDRDebug
+ (id)kernel;
- (id)outputImage;
@end

@implementation PIFalseColorHDRDebug

+ (id)kernel
{
  if (kernel_onceToken_2577 != -1)
  {
    dispatch_once(&kernel_onceToken_2577, &__block_literal_global_2578);
  }

  v3 = kernel_kernel_2579;

  return v3;
}

void __30__PIFalseColorHDRDebug_kernel__block_invoke()
{
  v19 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695F618] kernelWithString:{@"kernel vec4 _falseColorHDRDebug(sampler image, float cutoff){   vec4 im = sample(image, samplerCoord(image))   if (im.x < 0.0 && im.y < 0.0 && im.z < 0.0) {        return vec4(0.0, 0.6, 0.2, 1.0);   }   if (im.x > cutoff && im.y > cutoff && im.z > cutoff) {        return vec4(1.0, 0.0, 1.0, 1.0);   }   if (im.x > cutoff || im.y > cutoff || im.z > cutoff) {        return vec4(0.6, 0.0, 0.6, 1.0);   }   return im;}"}];;
  v1 = kernel_kernel_2579;
  kernel_kernel_2579 = v0;

  if (!kernel_kernel_2579)
  {
    v2 = NUAssertLogger_2583();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"s_falseColorHDRDebugKernelSource kernel is nil"];
      v15 = 138543362;
      v16 = v3;
      _os_log_error_impl(&dword_1C7694000, v2, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v15, 0xCu);
    }

    v4 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v6 = NUAssertLogger_2583();
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
  v37 = *MEMORY[0x1E69E9840];
  inputImage = self->_inputImage;
  if (!inputImage)
  {
    v19 = NUAssertLogger_2583();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"inputImage cannot be nil"];
      *buf = 138543362;
      v34 = v20;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v21 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v23 = NUAssertLogger_2583();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v24)
      {
        v27 = dispatch_get_specific(*v21);
        v28 = MEMORY[0x1E696AF00];
        v29 = v27;
        v30 = [v28 callStackSymbols];
        v31 = [v30 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v34 = v27;
        v35 = 2114;
        v36 = v31;
        _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      v25 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v34 = v26;
      _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v4 = [(CIImage *)inputImage imageByUnpremultiplyingAlpha];
  v5 = [objc_opt_class() kernel];
  [(CIImage *)self->_inputImage extent];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:{self->_inputCutoff, v4}];
  v32[1] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  v16 = [v5 applyWithExtent:v15 arguments:{v7, v9, v11, v13}];

  v17 = [v16 imageByPremultiplyingAlpha];

  return v17;
}

@end
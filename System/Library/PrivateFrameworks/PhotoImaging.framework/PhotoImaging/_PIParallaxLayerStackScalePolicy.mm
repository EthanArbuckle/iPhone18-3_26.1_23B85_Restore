@interface _PIParallaxLayerStackScalePolicy
- ($0AC6E346AE4835514AAA8AC86D8F4844)scaleForImageSize:(id)a3;
- (_PIParallaxLayerStackScalePolicy)initWithLayout:(id)a3;
@end

@implementation _PIParallaxLayerStackScalePolicy

- ($0AC6E346AE4835514AAA8AC86D8F4844)scaleForImageSize:(id)a3
{
  [(PFPosterOrientedLayout *)self->_layout imageSize];
  [(PFPosterOrientedLayout *)self->_layout visibleFrame];
  [(PFPosterOrientedLayout *)self->_layout deviceResolution];
  v12 = v5;
  v13 = v4;
  NUPixelSizeToCGSize();
  NURectNormalize();
  v6 = NURectDenormalize();
  v9.n128_f64[0] = fmax(v13 / v7, v12 / v8);

  v10 = MEMORY[0x1EEE1FCA8](v6, v9);
  result.var1 = v11;
  result.var0 = v10;
  return result;
}

- (_PIParallaxLayerStackScalePolicy)initWithLayout:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v9 = NUAssertLogger_21137();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "layout != nil"];
      *buf = 138543362;
      v24 = v10;
      _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v11 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v13 = NUAssertLogger_21137();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v14)
      {
        v17 = dispatch_get_specific(*v11);
        v18 = MEMORY[0x1E696AF00];
        v19 = v17;
        v20 = [v18 callStackSymbols];
        v21 = [v20 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v24 = v17;
        v25 = 2114;
        v26 = v21;
        _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      v15 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v24 = v16;
      _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v5 = v4;
  v22.receiver = self;
  v22.super_class = _PIParallaxLayerStackScalePolicy;
  v6 = [(_PIParallaxLayerStackScalePolicy *)&v22 init];
  layout = v6->_layout;
  v6->_layout = v5;

  return v6;
}

@end
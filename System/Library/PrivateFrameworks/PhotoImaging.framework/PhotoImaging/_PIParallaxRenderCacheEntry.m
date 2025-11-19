@interface _PIParallaxRenderCacheEntry
- (BOOL)render:(id)a3 error:(id *)a4;
- (BOOL)waitForRender:(id *)a3;
- (_PIParallaxRenderCacheEntry)initWithImage:(id)a3 format:(id)a4 colorSpace:(id)a5;
- (unint64_t)sizeInBytes;
@end

@implementation _PIParallaxRenderCacheEntry

- (BOOL)waitForRender:(id *)a3
{
  v5 = [(_PIParallaxRenderCacheEntry *)self renderInfo];

  if (!v5)
  {
    v6 = [(_PIParallaxRenderCacheEntry *)self renderTask];
    v7 = [v6 waitUntilCompletedAndReturnError:a3];

    [(_PIParallaxRenderCacheEntry *)self setRenderInfo:v7];
  }

  v8 = [(_PIParallaxRenderCacheEntry *)self renderInfo];
  v9 = v8 != 0;

  return v9;
}

- (BOOL)render:(id)a3 error:(id *)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v17 = NUAssertLogger_21137();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "renderer != nil"];
      *buf = 138543362;
      *&buf[4] = v18;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v19 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v21 = NUAssertLogger_21137();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v22)
      {
        v30 = dispatch_get_specific(*v19);
        v31 = MEMORY[0x1E696AF00];
        v32 = v30;
        v19 = [v31 callStackSymbols];
        v33 = [v19 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v30;
        *&buf[12] = 2114;
        *&buf[14] = v33;
        _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      v23 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [v23 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v19;
      _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v27 = _NUAssertFailHandler();
    goto LABEL_19;
  }

  if (!a4)
  {
    v24 = NUAssertLogger_21137();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v25;
      _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v19 = MEMORY[0x1E69B38E8];
    v26 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v21 = NUAssertLogger_21137();
    v27 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (!v26)
    {
      if (v27)
      {
        v28 = [MEMORY[0x1E696AF00] callStackSymbols];
        v29 = [v28 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        *&buf[4] = v29;
        _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_21;
    }

LABEL_19:
    if (v27)
    {
      v34 = dispatch_get_specific(*v19);
      v35 = MEMORY[0x1E696AF00];
      v36 = v34;
      v37 = [v35 callStackSymbols];
      v38 = [v37 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      *&buf[4] = v34;
      *&buf[12] = 2114;
      *&buf[14] = v38;
      _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_21:

    _NUAssertFailHandler();
  }

  v7 = v6;
  v8 = [(_PIParallaxRenderCacheEntry *)self renderTask];

  if (!v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E695F678]) initWithPixelBuffer:{-[NUCVPixelBuffer CVPixelBuffer](self->_pixelBuffer, "CVPixelBuffer")}];
    v10 = [(_PIParallaxRenderCacheEntry *)self colorSpace];
    [v9 setColorSpace:{objc_msgSend(v10, "CGColorSpace")}];

    memset(buf, 0, 32);
    v11 = [(_PIParallaxRenderCacheEntry *)self image];
    [v11 extent];
    NUPixelRectFromCGRect();

    v12 = [(_PIParallaxRenderCacheEntry *)self image];
    memset(v39, 0, sizeof(v39));
    v13 = [v7 renderImage:v12 rect:v39 toDestination:v9 atPoint:*MEMORY[0x1E69B38F8] error:{*(MEMORY[0x1E69B38F8] + 8), a4}];

    [(_PIParallaxRenderCacheEntry *)self setRenderTask:v13];
  }

  v14 = [(_PIParallaxRenderCacheEntry *)self renderTask];
  v15 = v14 != 0;

  return v15;
}

- (unint64_t)sizeInBytes
{
  v3 = [(NUCVPixelBuffer *)self->_pixelBuffer size];
  v5 = v4;
  v6 = [(NUCVPixelBuffer *)self->_pixelBuffer format];
  v7 = v3 * v5 * [v6 bytesPerPixel];

  return v7;
}

- (_PIParallaxRenderCacheEntry)initWithImage:(id)a3 format:(id)a4 colorSpace:(id)a5
{
  v56 = *MEMORY[0x1E69E9840];
  v9 = a3;
  specific = a4;
  v11 = a5;
  if (!v9)
  {
    v26 = NUAssertLogger_21137();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "image != nil"];
      *v55 = 138543362;
      *&v55[4] = v27;
      _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v55, 0xCu);
    }

    v12 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v9 = NUAssertLogger_21137();
    v28 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v28)
      {
        specific = dispatch_get_specific(*v12);
        v38 = MEMORY[0x1E696AF00];
        self = specific;
        v12 = [v38 callStackSymbols];
        v39 = [v12 componentsJoinedByString:@"\n"];
        *v55 = 138543618;
        *&v55[4] = specific;
        *&v55[12] = 2114;
        *&v55[14] = v39;
        _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v55, 0x16u);
      }
    }

    else if (v28)
    {
      specific = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [specific componentsJoinedByString:@"\n"];
      *v55 = 138543362;
      *&v55[4] = v12;
      _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v55, 0xCu);
    }

    v31 = _NUAssertFailHandler();
    goto LABEL_35;
  }

  if (!specific)
  {
    v29 = NUAssertLogger_21137();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "format != nil"];
      *v55 = 138543362;
      *&v55[4] = v30;
      _os_log_error_impl(&dword_1C7694000, v29, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v55, 0xCu);
    }

    v12 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v9 = NUAssertLogger_21137();
    v31 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (!specific)
    {
      if (v31)
      {
        specific = [MEMORY[0x1E696AF00] callStackSymbols];
        v12 = [specific componentsJoinedByString:@"\n"];
        *v55 = 138543362;
        *&v55[4] = v12;
        _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v55, 0xCu);
      }

LABEL_37:

      v34 = _NUAssertFailHandler();
      goto LABEL_38;
    }

LABEL_35:
    if (v31)
    {
      specific = dispatch_get_specific(*v12);
      v40 = MEMORY[0x1E696AF00];
      self = specific;
      v12 = [v40 callStackSymbols];
      v41 = [v12 componentsJoinedByString:@"\n"];
      *v55 = 138543618;
      *&v55[4] = specific;
      *&v55[12] = 2114;
      *&v55[14] = v41;
      _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v55, 0x16u);
    }

    goto LABEL_37;
  }

  v12 = v11;
  if (!v11)
  {
    v32 = NUAssertLogger_21137();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "space != nil"];
      *v55 = 138543362;
      *&v55[4] = v33;
      _os_log_error_impl(&dword_1C7694000, v32, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v55, 0xCu);
    }

    v12 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v9 = NUAssertLogger_21137();
    v34 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (!specific)
    {
      if (v34)
      {
        specific = [MEMORY[0x1E696AF00] callStackSymbols];
        v12 = [specific componentsJoinedByString:@"\n"];
        *v55 = 138543362;
        *&v55[4] = v12;
        _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v55, 0xCu);
      }

LABEL_40:

      v37 = _NUAssertFailHandler();
      goto LABEL_41;
    }

LABEL_38:
    if (v34)
    {
      specific = dispatch_get_specific(*v12);
      v42 = MEMORY[0x1E696AF00];
      self = specific;
      v12 = [v42 callStackSymbols];
      v43 = [v12 componentsJoinedByString:@"\n"];
      *v55 = 138543618;
      *&v55[4] = specific;
      *&v55[12] = 2114;
      *&v55[14] = v43;
      _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v55, 0x16u);
    }

    goto LABEL_40;
  }

  [v9 extent];
  if (CGRectIsInfinite(v57))
  {
    v35 = NUAssertLogger_21137();
    self = &qword_1C7845000;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid image extent"];
      *v55 = 138543362;
      *&v55[4] = v36;
      _os_log_error_impl(&dword_1C7694000, v35, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v55, 0xCu);
    }

    v12 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v9 = NUAssertLogger_21137();
    v37 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (!specific)
    {
      if (v37)
      {
        specific = [MEMORY[0x1E696AF00] callStackSymbols];
        v12 = [specific componentsJoinedByString:@"\n"];
        *v55 = 138543362;
        *&v55[4] = v12;
        _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v55, 0xCu);
      }

LABEL_43:

      _NUAssertFailHandler();
LABEL_44:
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_642);
      goto LABEL_8;
    }

LABEL_41:
    if (v37)
    {
      specific = dispatch_get_specific(*v12);
      v44 = MEMORY[0x1E696AF00];
      self = specific;
      v12 = [v44 callStackSymbols];
      v45 = [v12 componentsJoinedByString:@"\n"];
      *v55 = 138543618;
      *&v55[4] = specific;
      *&v55[12] = 2114;
      *&v55[14] = v45;
      _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v55, 0x16u);
    }

    goto LABEL_43;
  }

  memset(v55, 0, 32);
  NUPixelRectFromCGRect();
  v46.receiver = self;
  v46.super_class = _PIParallaxRenderCacheEntry;
  self = [(_PIParallaxRenderCacheEntry *)&v46 init];
  objc_storeStrong(&self->_pixelFormat, a4);
  objc_storeStrong(&self->_colorSpace, a5);
  objc_storeStrong(&self->_image, a3);
  v13 = MEMORY[0x1E69B3D40];
  v14 = [specific CVPixelFormat];
  v15 = [v13 newPixelBufferOfSize:*&v55[16] format:v14];
  pixelBuffer = self->_pixelBuffer;
  self->_pixelBuffer = v15;

  if (self->_pixelBuffer)
  {
    v47 = *MEMORY[0x1E695F9A8];
    v48 = [v12 CGColorSpace];
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    v18 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:-[NUCVPixelBuffer CVPixelBuffer](self->_pixelBuffer options:{"CVPixelBuffer"), v17}];
    cachedImage = self->_cachedImage;
    self->_cachedImage = v18;

    v20 = self;
    goto LABEL_11;
  }

  if (*MEMORY[0x1E69B3D78] != -1)
  {
    goto LABEL_44;
  }

LABEL_8:
  v21 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
  {
    v23 = *&v55[16];
    v24 = v21;
    v25 = [specific name];
    *buf = 134218498;
    v50 = v23;
    v51 = 2048;
    v52 = *(&v23 + 1);
    v53 = 2114;
    v54 = v25;
    _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "Failed to allocate pixel buffer for render cache entry (size=%ldx%ld, format=%{public}@)", buf, 0x20u);
  }

  v20 = 0;
LABEL_11:

  return v20;
}

@end
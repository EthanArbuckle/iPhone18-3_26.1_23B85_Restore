@interface _PIParallaxRenderCacheEntry
- (BOOL)render:(id)render error:(id *)error;
- (BOOL)waitForRender:(id *)render;
- (_PIParallaxRenderCacheEntry)initWithImage:(id)image format:(id)format colorSpace:(id)space;
- (unint64_t)sizeInBytes;
@end

@implementation _PIParallaxRenderCacheEntry

- (BOOL)waitForRender:(id *)render
{
  renderInfo = [(_PIParallaxRenderCacheEntry *)self renderInfo];

  if (!renderInfo)
  {
    renderTask = [(_PIParallaxRenderCacheEntry *)self renderTask];
    v7 = [renderTask waitUntilCompletedAndReturnError:render];

    [(_PIParallaxRenderCacheEntry *)self setRenderInfo:v7];
  }

  renderInfo2 = [(_PIParallaxRenderCacheEntry *)self renderInfo];
  v9 = renderInfo2 != 0;

  return v9;
}

- (BOOL)render:(id)render error:(id *)error
{
  v41 = *MEMORY[0x1E69E9840];
  renderCopy = render;
  if (!renderCopy)
  {
    v17 = NUAssertLogger_21137();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "renderer != nil"];
      *buf = 138543362;
      *&buf[4] = v18;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v21 = NUAssertLogger_21137();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v22)
      {
        v30 = dispatch_get_specific(*callStackSymbols);
        v31 = MEMORY[0x1E696AF00];
        v32 = v30;
        callStackSymbols = [v31 callStackSymbols];
        v33 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v30;
        *&buf[12] = 2114;
        *&buf[14] = v33;
        _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v27 = _NUAssertFailHandler();
    goto LABEL_19;
  }

  if (!error)
  {
    v24 = NUAssertLogger_21137();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v25;
      _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v26 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v21 = NUAssertLogger_21137();
    v27 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (!v26)
    {
      if (v27)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v29 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        *&buf[4] = v29;
        _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_21;
    }

LABEL_19:
    if (v27)
    {
      v34 = dispatch_get_specific(*callStackSymbols);
      v35 = MEMORY[0x1E696AF00];
      v36 = v34;
      callStackSymbols4 = [v35 callStackSymbols];
      v38 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      *&buf[4] = v34;
      *&buf[12] = 2114;
      *&buf[14] = v38;
      _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_21:

    _NUAssertFailHandler();
  }

  v7 = renderCopy;
  renderTask = [(_PIParallaxRenderCacheEntry *)self renderTask];

  if (!renderTask)
  {
    v9 = [objc_alloc(MEMORY[0x1E695F678]) initWithPixelBuffer:{-[NUCVPixelBuffer CVPixelBuffer](self->_pixelBuffer, "CVPixelBuffer")}];
    colorSpace = [(_PIParallaxRenderCacheEntry *)self colorSpace];
    [v9 setColorSpace:{objc_msgSend(colorSpace, "CGColorSpace")}];

    memset(buf, 0, 32);
    image = [(_PIParallaxRenderCacheEntry *)self image];
    [image extent];
    NUPixelRectFromCGRect();

    image2 = [(_PIParallaxRenderCacheEntry *)self image];
    memset(v39, 0, sizeof(v39));
    v13 = [v7 renderImage:image2 rect:v39 toDestination:v9 atPoint:*MEMORY[0x1E69B38F8] error:{*(MEMORY[0x1E69B38F8] + 8), error}];

    [(_PIParallaxRenderCacheEntry *)self setRenderTask:v13];
  }

  renderTask2 = [(_PIParallaxRenderCacheEntry *)self renderTask];
  v15 = renderTask2 != 0;

  return v15;
}

- (unint64_t)sizeInBytes
{
  v3 = [(NUCVPixelBuffer *)self->_pixelBuffer size];
  v5 = v4;
  format = [(NUCVPixelBuffer *)self->_pixelBuffer format];
  v7 = v3 * v5 * [format bytesPerPixel];

  return v7;
}

- (_PIParallaxRenderCacheEntry)initWithImage:(id)image format:(id)format colorSpace:(id)space
{
  v56 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  specific = format;
  spaceCopy = space;
  if (!imageCopy)
  {
    v26 = NUAssertLogger_21137();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "image != nil"];
      *v55 = 138543362;
      *&v55[4] = v27;
      _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v55, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    imageCopy = NUAssertLogger_21137();
    v28 = os_log_type_enabled(imageCopy, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v28)
      {
        specific = dispatch_get_specific(*callStackSymbols);
        v38 = MEMORY[0x1E696AF00];
        self = specific;
        callStackSymbols = [v38 callStackSymbols];
        v39 = [callStackSymbols componentsJoinedByString:@"\n"];
        *v55 = 138543618;
        *&v55[4] = specific;
        *&v55[12] = 2114;
        *&v55[14] = v39;
        _os_log_error_impl(&dword_1C7694000, imageCopy, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v55, 0x16u);
      }
    }

    else if (v28)
    {
      specific = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [specific componentsJoinedByString:@"\n"];
      *v55 = 138543362;
      *&v55[4] = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, imageCopy, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v55, 0xCu);
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

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    imageCopy = NUAssertLogger_21137();
    v31 = os_log_type_enabled(imageCopy, OS_LOG_TYPE_ERROR);
    if (!specific)
    {
      if (v31)
      {
        specific = [MEMORY[0x1E696AF00] callStackSymbols];
        callStackSymbols = [specific componentsJoinedByString:@"\n"];
        *v55 = 138543362;
        *&v55[4] = callStackSymbols;
        _os_log_error_impl(&dword_1C7694000, imageCopy, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v55, 0xCu);
      }

LABEL_37:

      v34 = _NUAssertFailHandler();
      goto LABEL_38;
    }

LABEL_35:
    if (v31)
    {
      specific = dispatch_get_specific(*callStackSymbols);
      v40 = MEMORY[0x1E696AF00];
      self = specific;
      callStackSymbols = [v40 callStackSymbols];
      v41 = [callStackSymbols componentsJoinedByString:@"\n"];
      *v55 = 138543618;
      *&v55[4] = specific;
      *&v55[12] = 2114;
      *&v55[14] = v41;
      _os_log_error_impl(&dword_1C7694000, imageCopy, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v55, 0x16u);
    }

    goto LABEL_37;
  }

  callStackSymbols = spaceCopy;
  if (!spaceCopy)
  {
    v32 = NUAssertLogger_21137();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "space != nil"];
      *v55 = 138543362;
      *&v55[4] = v33;
      _os_log_error_impl(&dword_1C7694000, v32, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v55, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    imageCopy = NUAssertLogger_21137();
    v34 = os_log_type_enabled(imageCopy, OS_LOG_TYPE_ERROR);
    if (!specific)
    {
      if (v34)
      {
        specific = [MEMORY[0x1E696AF00] callStackSymbols];
        callStackSymbols = [specific componentsJoinedByString:@"\n"];
        *v55 = 138543362;
        *&v55[4] = callStackSymbols;
        _os_log_error_impl(&dword_1C7694000, imageCopy, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v55, 0xCu);
      }

LABEL_40:

      v37 = _NUAssertFailHandler();
      goto LABEL_41;
    }

LABEL_38:
    if (v34)
    {
      specific = dispatch_get_specific(*callStackSymbols);
      v42 = MEMORY[0x1E696AF00];
      self = specific;
      callStackSymbols = [v42 callStackSymbols];
      v43 = [callStackSymbols componentsJoinedByString:@"\n"];
      *v55 = 138543618;
      *&v55[4] = specific;
      *&v55[12] = 2114;
      *&v55[14] = v43;
      _os_log_error_impl(&dword_1C7694000, imageCopy, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v55, 0x16u);
    }

    goto LABEL_40;
  }

  [imageCopy extent];
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

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    imageCopy = NUAssertLogger_21137();
    v37 = os_log_type_enabled(imageCopy, OS_LOG_TYPE_ERROR);
    if (!specific)
    {
      if (v37)
      {
        specific = [MEMORY[0x1E696AF00] callStackSymbols];
        callStackSymbols = [specific componentsJoinedByString:@"\n"];
        *v55 = 138543362;
        *&v55[4] = callStackSymbols;
        _os_log_error_impl(&dword_1C7694000, imageCopy, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v55, 0xCu);
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
      specific = dispatch_get_specific(*callStackSymbols);
      v44 = MEMORY[0x1E696AF00];
      self = specific;
      callStackSymbols = [v44 callStackSymbols];
      v45 = [callStackSymbols componentsJoinedByString:@"\n"];
      *v55 = 138543618;
      *&v55[4] = specific;
      *&v55[12] = 2114;
      *&v55[14] = v45;
      _os_log_error_impl(&dword_1C7694000, imageCopy, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v55, 0x16u);
    }

    goto LABEL_43;
  }

  memset(v55, 0, 32);
  NUPixelRectFromCGRect();
  v46.receiver = self;
  v46.super_class = _PIParallaxRenderCacheEntry;
  self = [(_PIParallaxRenderCacheEntry *)&v46 init];
  objc_storeStrong(&self->_pixelFormat, format);
  objc_storeStrong(&self->_colorSpace, space);
  objc_storeStrong(&self->_image, image);
  v13 = MEMORY[0x1E69B3D40];
  cVPixelFormat = [specific CVPixelFormat];
  v15 = [v13 newPixelBufferOfSize:*&v55[16] format:cVPixelFormat];
  pixelBuffer = self->_pixelBuffer;
  self->_pixelBuffer = v15;

  if (self->_pixelBuffer)
  {
    v47 = *MEMORY[0x1E695F9A8];
    cGColorSpace = [callStackSymbols CGColorSpace];
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&cGColorSpace forKeys:&v47 count:1];
    v18 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:-[NUCVPixelBuffer CVPixelBuffer](self->_pixelBuffer options:{"CVPixelBuffer"), v17}];
    cachedImage = self->_cachedImage;
    self->_cachedImage = v18;

    selfCopy = self;
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
    name = [specific name];
    *buf = 134218498;
    v50 = v23;
    v51 = 2048;
    v52 = *(&v23 + 1);
    v53 = 2114;
    v54 = name;
    _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "Failed to allocate pixel buffer for render cache entry (size=%ldx%ld, format=%{public}@)", buf, 0x20u);
  }

  selfCopy = 0;
LABEL_11:

  return selfCopy;
}

@end
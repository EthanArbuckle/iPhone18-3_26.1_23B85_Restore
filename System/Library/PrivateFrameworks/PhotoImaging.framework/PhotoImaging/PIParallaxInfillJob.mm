@interface PIParallaxInfillJob
- (BOOL)complete:(id *)complete;
- (BOOL)prepare:(id *)prepare;
- (BOOL)render:(id *)render;
- (PIParallaxInfillJob)initWithParallaxInfillRequest:(id)request;
- (PIParallaxInfillJob)initWithRequest:(id)request;
- (id)result;
- (id)scalePolicy;
@end

@implementation PIParallaxInfillJob

- (id)result
{
  v3 = objc_alloc_init(_PIParallaxInfillResult);
  [(_PIParallaxInfillResult *)v3 setInfilledImage:self->_infilledImageBuffer];

  return v3;
}

- (BOOL)complete:(id *)complete
{
  renderTask = self->_renderTask;
  v11 = 0;
  v6 = [(CIRenderTask *)renderTask waitUntilCompletedAndReturnError:&v11];
  v7 = v11;
  if (v6)
  {
    request = self->_renderTask;
    self->_renderTask = 0;
  }

  else
  {
    v9 = MEMORY[0x1E69B3A48];
    request = [(NURenderJob *)self request];
    *complete = [v9 errorWithCode:1 reason:@"failed to render" object:request underlyingError:v7];
  }

  return v6 != 0;
}

- (BOOL)render:(id *)render
{
  v58 = *MEMORY[0x1E69E9840];
  outputImage = [(NURenderJob *)self outputImage];
  if (!outputImage)
  {
    v33 = NUAssertLogger_341();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Output image must not be nil"];
      *buf = 138543362;
      *&buf[4] = v34;
      _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v37 = NUAssertLogger_341();
    v38 = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v38)
      {
        v46 = dispatch_get_specific(*callStackSymbols);
        v47 = MEMORY[0x1E696AF00];
        v48 = v46;
        callStackSymbols = [v47 callStackSymbols];
        v49 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v46;
        *&buf[12] = 2114;
        *&buf[14] = v49;
        _os_log_error_impl(&dword_1C7694000, v37, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v38)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v37, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v43 = _NUAssertFailHandler();
    goto LABEL_23;
  }

  v6 = outputImage;
  matteImage = [(PIParallaxInfillJob *)self matteImage];
  if (!matteImage)
  {
    v40 = NUAssertLogger_341();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Matte image must not be nil"];
      *buf = 138543362;
      *&buf[4] = v41;
      _os_log_error_impl(&dword_1C7694000, v40, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v42 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v37 = NUAssertLogger_341();
    v43 = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
    if (!v42)
    {
      if (v43)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v45 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        *&buf[4] = v45;
        _os_log_error_impl(&dword_1C7694000, v37, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_25;
    }

LABEL_23:
    if (v43)
    {
      v50 = dispatch_get_specific(*callStackSymbols);
      v51 = MEMORY[0x1E696AF00];
      v52 = v50;
      callStackSymbols4 = [v51 callStackSymbols];
      v54 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      *&buf[4] = v50;
      *&buf[12] = 2114;
      *&buf[14] = v54;
      _os_log_error_impl(&dword_1C7694000, v37, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_25:

    _NUAssertFailHandler();
  }

  v8 = matteImage;
  v9 = objc_alloc_init(PISegmentationInfillFilter);
  v10 = +[PIGlobalSettings globalSettings];
  -[PISegmentationInfillFilter setInfillAlgorithm:](v9, "setInfillAlgorithm:", [v10 segmentationInfillAlgorithm]);

  [(PISegmentationInfillFilter *)v9 setInputImage:v6];
  [(PISegmentationInfillFilter *)v9 setInputMatteImage:v8];
  outputImage2 = [(PISegmentationInfillFilter *)v9 outputImage];
  if (outputImage2)
  {
    renderCopy = render;
    infillRequest = [(PIParallaxInfillJob *)self infillRequest];
    pixelFormat = [infillRequest pixelFormat];

    infillRequest2 = [(PIParallaxInfillJob *)self infillRequest];
    colorSpace = [infillRequest2 colorSpace];

    *buf = 0;
    *&buf[8] = 0;
    *&buf[16] = [(NURenderJob *)self imageSize];
    v57 = v16;
    v17 = [MEMORY[0x1E69B3C10] regionWithRect:buf];
    mEMORY[0x1E69B3A58] = [MEMORY[0x1E69B3A58] sharedFactory];
    surfaceStoragePool = [mEMORY[0x1E69B3A58] surfaceStoragePool];

    v20 = MEMORY[0x1E69B3CC8];
    imageSize = [(NURenderJob *)self imageSize];
    v23 = [v20 imageBufferWithSize:imageSize format:v22 fromPool:{pixelFormat, surfaceStoragePool}];
    infilledImageBuffer = self->_infilledImageBuffer;
    self->_infilledImageBuffer = v23;

    v25 = self->_infilledImageBuffer;
    if (v25)
    {
      storage = [(NUStorageImageBuffer *)v25 storage];
      imageSize2 = [(NURenderJob *)self imageSize];
      renderCopy = [(NURenderJob *)self renderImage:outputImage2 into:storage colorSpace:colorSpace roi:v17 imageSize:imageSize2 error:v28, renderCopy];
      renderTask = self->_renderTask;
      self->_renderTask = renderCopy;

      v31 = self->_renderTask != 0;
    }

    else
    {
      [MEMORY[0x1E69B3A48] failureError:@"Failed to allocate buffer from pool" object:surfaceStoragePool];
      *renderCopy = v31 = 0;
    }
  }

  else
  {
    [MEMORY[0x1E69B3A48] failureError:@"Failed to generate background infill image" object:0];
    *render = v31 = 0;
  }

  return v31;
}

- (BOOL)prepare:(id *)prepare
{
  v28.receiver = self;
  v28.super_class = PIParallaxInfillJob;
  if ([(NURenderJob *)&v28 prepare:?])
  {
    infillRequest = [(PIParallaxInfillJob *)self infillRequest];
    segmentationMatte = [infillRequest segmentationMatte];

    if (segmentationMatte)
    {
      infillRequest3 = [MEMORY[0x1E695F658] imageWithNUImageBuffer:segmentationMatte];
      [infillRequest3 extent];
      if (v8 >= 1.0 && v9 >= 1.0)
      {
        v14 = v8;
        v15 = v9;
        infillRequest2 = [(PIParallaxInfillJob *)self infillRequest];
        shouldInfillForeground = [infillRequest2 shouldInfillForeground];

        if (shouldInfillForeground)
        {
          v18 = [PISegmentationHelper invertImage:infillRequest3];

          infillRequest3 = v18;
        }

        v19 = infillRequest3;
        infillRequest3 = [PISegmentationHelper infillMaskForSegmentationMatte:infillRequest3];

        outputImage = [(NURenderJob *)self outputImage];
        [outputImage extent];
        if (v21 == v14 && v22 == v15)
        {
          [(PIParallaxInfillJob *)self setMatteImage:infillRequest3];
        }

        else
        {
          memset(&v27, 0, sizeof(v27));
          CGAffineTransformMakeScale(&v27, v21 / v14, v22 / v15);
          v26 = v27;
          v23 = [infillRequest3 imageByApplyingTransform:&v26];
          [(PIParallaxInfillJob *)self setMatteImage:v23];
        }

        matteImage = [(PIParallaxInfillJob *)self matteImage];
        v12 = matteImage != 0;

        if (!matteImage)
        {
          *prepare = [MEMORY[0x1E69B3A48] invalidError:@"Invalid matte image" object:infillRequest3];
        }

        goto LABEL_21;
      }

      v11 = [MEMORY[0x1E69B3A48] invalidError:@"Invalid matte image size" object:infillRequest3];
    }

    else
    {
      v13 = MEMORY[0x1E69B3A48];
      infillRequest3 = [(PIParallaxInfillJob *)self infillRequest];
      v11 = [v13 missingError:@"Missing matte image" object:infillRequest3];
    }

    v12 = 0;
    *prepare = v11;
LABEL_21:

    return v12;
  }

  return 0;
}

- (id)scalePolicy
{
  infillRequest = [(PIParallaxInfillJob *)self infillRequest];
  scalePolicy = [infillRequest scalePolicy];

  return scalePolicy;
}

- (PIParallaxInfillJob)initWithParallaxInfillRequest:(id)request
{
  v4.receiver = self;
  v4.super_class = PIParallaxInfillJob;
  return [(NURenderJob *)&v4 initWithRequest:request];
}

- (PIParallaxInfillJob)initWithRequest:(id)request
{
  v32 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v6 = MEMORY[0x1E69B3D70];
    v7 = *MEMORY[0x1E69B3D70];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_ERROR))
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = v7;
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(a2);
      v13 = [v8 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v11, v12];
      *buf = 138543362;
      v29 = v13;
      _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

      v14 = *v5;
      if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
      {
        if (v14 != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_350);
        }

LABEL_11:
        v20 = *v6;
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
        {
          specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
          v22 = MEMORY[0x1E696AF00];
          v23 = specific;
          v24 = v20;
          callStackSymbols = [v22 callStackSymbols];
          v26 = [callStackSymbols componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v29 = specific;
          v30 = 2114;
          v31 = v26;
          _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }

        goto LABEL_13;
      }

      if (v14 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_350);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
    {
      goto LABEL_11;
    }

    v15 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      v16 = MEMORY[0x1E696AF00];
      v17 = v15;
      callStackSymbols2 = [v16 callStackSymbols];
      v19 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v19;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

LABEL_13:
    v27 = objc_opt_class();
    NSStringFromClass(v27);
    objc_claimAutoreleasedReturnValue();
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    _NUAssertFailHandler();
LABEL_14:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_350);
  }
}

@end
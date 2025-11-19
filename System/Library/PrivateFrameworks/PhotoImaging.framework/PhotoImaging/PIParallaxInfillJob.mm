@interface PIParallaxInfillJob
- (BOOL)complete:(id *)a3;
- (BOOL)prepare:(id *)a3;
- (BOOL)render:(id *)a3;
- (PIParallaxInfillJob)initWithParallaxInfillRequest:(id)a3;
- (PIParallaxInfillJob)initWithRequest:(id)a3;
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

- (BOOL)complete:(id *)a3
{
  renderTask = self->_renderTask;
  v11 = 0;
  v6 = [(CIRenderTask *)renderTask waitUntilCompletedAndReturnError:&v11];
  v7 = v11;
  if (v6)
  {
    v8 = self->_renderTask;
    self->_renderTask = 0;
  }

  else
  {
    v9 = MEMORY[0x1E69B3A48];
    v8 = [(NURenderJob *)self request];
    *a3 = [v9 errorWithCode:1 reason:@"failed to render" object:v8 underlyingError:v7];
  }

  return v6 != 0;
}

- (BOOL)render:(id *)a3
{
  v58 = *MEMORY[0x1E69E9840];
  v5 = [(NURenderJob *)self outputImage];
  if (!v5)
  {
    v33 = NUAssertLogger_341();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Output image must not be nil"];
      *buf = 138543362;
      *&buf[4] = v34;
      _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v35 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v37 = NUAssertLogger_341();
    v38 = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v38)
      {
        v46 = dispatch_get_specific(*v35);
        v47 = MEMORY[0x1E696AF00];
        v48 = v46;
        v35 = [v47 callStackSymbols];
        v49 = [v35 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v46;
        *&buf[12] = 2114;
        *&buf[14] = v49;
        _os_log_error_impl(&dword_1C7694000, v37, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v38)
    {
      v39 = [MEMORY[0x1E696AF00] callStackSymbols];
      v35 = [v39 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v35;
      _os_log_error_impl(&dword_1C7694000, v37, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v43 = _NUAssertFailHandler();
    goto LABEL_23;
  }

  v6 = v5;
  v7 = [(PIParallaxInfillJob *)self matteImage];
  if (!v7)
  {
    v40 = NUAssertLogger_341();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Matte image must not be nil"];
      *buf = 138543362;
      *&buf[4] = v41;
      _os_log_error_impl(&dword_1C7694000, v40, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v35 = MEMORY[0x1E69B38E8];
    v42 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v37 = NUAssertLogger_341();
    v43 = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
    if (!v42)
    {
      if (v43)
      {
        v44 = [MEMORY[0x1E696AF00] callStackSymbols];
        v45 = [v44 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        *&buf[4] = v45;
        _os_log_error_impl(&dword_1C7694000, v37, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_25;
    }

LABEL_23:
    if (v43)
    {
      v50 = dispatch_get_specific(*v35);
      v51 = MEMORY[0x1E696AF00];
      v52 = v50;
      v53 = [v51 callStackSymbols];
      v54 = [v53 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      *&buf[4] = v50;
      *&buf[12] = 2114;
      *&buf[14] = v54;
      _os_log_error_impl(&dword_1C7694000, v37, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_25:

    _NUAssertFailHandler();
  }

  v8 = v7;
  v9 = objc_alloc_init(PISegmentationInfillFilter);
  v10 = +[PIGlobalSettings globalSettings];
  -[PISegmentationInfillFilter setInfillAlgorithm:](v9, "setInfillAlgorithm:", [v10 segmentationInfillAlgorithm]);

  [(PISegmentationInfillFilter *)v9 setInputImage:v6];
  [(PISegmentationInfillFilter *)v9 setInputMatteImage:v8];
  v11 = [(PISegmentationInfillFilter *)v9 outputImage];
  if (v11)
  {
    v55 = a3;
    v12 = [(PIParallaxInfillJob *)self infillRequest];
    v13 = [v12 pixelFormat];

    v14 = [(PIParallaxInfillJob *)self infillRequest];
    v15 = [v14 colorSpace];

    *buf = 0;
    *&buf[8] = 0;
    *&buf[16] = [(NURenderJob *)self imageSize];
    v57 = v16;
    v17 = [MEMORY[0x1E69B3C10] regionWithRect:buf];
    v18 = [MEMORY[0x1E69B3A58] sharedFactory];
    v19 = [v18 surfaceStoragePool];

    v20 = MEMORY[0x1E69B3CC8];
    v21 = [(NURenderJob *)self imageSize];
    v23 = [v20 imageBufferWithSize:v21 format:v22 fromPool:{v13, v19}];
    infilledImageBuffer = self->_infilledImageBuffer;
    self->_infilledImageBuffer = v23;

    v25 = self->_infilledImageBuffer;
    if (v25)
    {
      v26 = [(NUStorageImageBuffer *)v25 storage];
      v27 = [(NURenderJob *)self imageSize];
      v29 = [(NURenderJob *)self renderImage:v11 into:v26 colorSpace:v15 roi:v17 imageSize:v27 error:v28, v55];
      renderTask = self->_renderTask;
      self->_renderTask = v29;

      v31 = self->_renderTask != 0;
    }

    else
    {
      [MEMORY[0x1E69B3A48] failureError:@"Failed to allocate buffer from pool" object:v19];
      *v55 = v31 = 0;
    }
  }

  else
  {
    [MEMORY[0x1E69B3A48] failureError:@"Failed to generate background infill image" object:0];
    *a3 = v31 = 0;
  }

  return v31;
}

- (BOOL)prepare:(id *)a3
{
  v28.receiver = self;
  v28.super_class = PIParallaxInfillJob;
  if ([(NURenderJob *)&v28 prepare:?])
  {
    v5 = [(PIParallaxInfillJob *)self infillRequest];
    v6 = [v5 segmentationMatte];

    if (v6)
    {
      v7 = [MEMORY[0x1E695F658] imageWithNUImageBuffer:v6];
      [v7 extent];
      if (v8 >= 1.0 && v9 >= 1.0)
      {
        v14 = v8;
        v15 = v9;
        v16 = [(PIParallaxInfillJob *)self infillRequest];
        v17 = [v16 shouldInfillForeground];

        if (v17)
        {
          v18 = [PISegmentationHelper invertImage:v7];

          v7 = v18;
        }

        v19 = v7;
        v7 = [PISegmentationHelper infillMaskForSegmentationMatte:v7];

        v20 = [(NURenderJob *)self outputImage];
        [v20 extent];
        if (v21 == v14 && v22 == v15)
        {
          [(PIParallaxInfillJob *)self setMatteImage:v7];
        }

        else
        {
          memset(&v27, 0, sizeof(v27));
          CGAffineTransformMakeScale(&v27, v21 / v14, v22 / v15);
          v26 = v27;
          v23 = [v7 imageByApplyingTransform:&v26];
          [(PIParallaxInfillJob *)self setMatteImage:v23];
        }

        v24 = [(PIParallaxInfillJob *)self matteImage];
        v12 = v24 != 0;

        if (!v24)
        {
          *a3 = [MEMORY[0x1E69B3A48] invalidError:@"Invalid matte image" object:v7];
        }

        goto LABEL_21;
      }

      v11 = [MEMORY[0x1E69B3A48] invalidError:@"Invalid matte image size" object:v7];
    }

    else
    {
      v13 = MEMORY[0x1E69B3A48];
      v7 = [(PIParallaxInfillJob *)self infillRequest];
      v11 = [v13 missingError:@"Missing matte image" object:v7];
    }

    v12 = 0;
    *a3 = v11;
LABEL_21:

    return v12;
  }

  return 0;
}

- (id)scalePolicy
{
  v2 = [(PIParallaxInfillJob *)self infillRequest];
  v3 = [v2 scalePolicy];

  return v3;
}

- (PIParallaxInfillJob)initWithParallaxInfillRequest:(id)a3
{
  v4.receiver = self;
  v4.super_class = PIParallaxInfillJob;
  return [(NURenderJob *)&v4 initWithRequest:a3];
}

- (PIParallaxInfillJob)initWithRequest:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
          v25 = [v22 callStackSymbols];
          v26 = [v25 componentsJoinedByString:@"\n"];
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
      v18 = [v16 callStackSymbols];
      v19 = [v18 componentsJoinedByString:@"\n"];
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
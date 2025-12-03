@interface PIDisparitySampleJob
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)sampleTime;
- (BOOL)render:(id *)render;
- (CGRect)sampleRect;
- (id)result;
- (void)setSampleTime:(id *)time;
@end

@implementation PIDisparitySampleJob

- (CGRect)sampleRect
{
  x = self->_sampleRect.origin.x;
  y = self->_sampleRect.origin.y;
  width = self->_sampleRect.size.width;
  height = self->_sampleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setSampleTime:(id *)time
{
  var3 = time->var3;
  *(&self->_sampledDisparityValue + 1) = *&time->var0;
  *&self->_sampleTime.flags = var3;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)sampleTime
{
  *&retstr->var0 = *(&self[10].var0 + 4);
  retstr->var3 = *(&self[10].var3 + 4);
  return self;
}

- (BOOL)render:(id *)render
{
  v36 = *MEMORY[0x1E69E9840];
  if (!render)
  {
    v19 = NUAssertLogger_800();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v33 = v20;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v21 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v23 = NUAssertLogger_800();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v24)
      {
        v27 = dispatch_get_specific(*v21);
        v28 = MEMORY[0x1E696AF00];
        v29 = v27;
        callStackSymbols = [v28 callStackSymbols];
        v31 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v33 = v27;
        v34 = 2114;
        v35 = v31;
        _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v33 = v26;
      _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  outputVideo = [(NURenderJob *)self outputVideo];
  if (outputVideo)
  {
    v6 = [objc_alloc(MEMORY[0x1E69C4F68]) initWithAsset:outputVideo];
    if (v6)
    {
      [(PIDisparitySampleJob *)self sampleTime];
      if ([v6 startReadingFrames:2 atTime:buf error:render])
      {
        nextFrame = [v6 nextFrame];
        if (nextFrame)
        {
          [v6 stopReadingFrames];
          disparityBuffer = [nextFrame disparityBuffer];
          if (disparityBuffer && CVPixelBufferGetPixelFormatType(disparityBuffer) == 1751411059)
          {
            [(PIDisparitySampleJob *)self sampleRect];
            PTDisparityInNormalizedRectFromPixelBuffer();
            [(PIDisparitySampleJob *)self setSampledDisparityValue:?];
            v9 = 1;
LABEL_15:

            goto LABEL_16;
          }

          v14 = MEMORY[0x1E69B3A48];
          v15 = [outputVideo description];
          v16 = [v14 invalidError:@"Incompatible disparity buffer" object:v15];
        }

        else
        {
          v17 = MEMORY[0x1E69B3A48];
          v15 = [outputVideo description];
          v16 = [v17 failureError:@"Failed to read video frame" object:v15];
        }

        *render = v16;

        v9 = 0;
        goto LABEL_15;
      }
    }

    else
    {
      v12 = MEMORY[0x1E69B3A48];
      v13 = [outputVideo description];
      *render = [v12 failureError:@"Failed to make asset reader for video" object:v13];
    }

    v9 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v10 = MEMORY[0x1E69B3A48];
  v11 = [(NURenderJob *)self description];
  *render = [v10 failureError:@"Failed to find output video asset" object:v11];

  v9 = 0;
LABEL_17:

  return v9;
}

- (id)result
{
  v3 = [_PIDisparitySampleResult alloc];
  [(PIDisparitySampleJob *)self sampledDisparityValue];
  v4 = [(_PIDisparitySampleResult *)v3 initWithDisparityValue:?];

  return v4;
}

@end
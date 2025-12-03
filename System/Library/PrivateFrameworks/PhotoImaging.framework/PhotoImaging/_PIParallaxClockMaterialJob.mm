@interface _PIParallaxClockMaterialJob
- (BOOL)render:(id *)render;
- (id)result;
- (id)scalePolicy;
@end

@implementation _PIParallaxClockMaterialJob

- (id)result
{
  v3 = [_PIParallaxClockMaterialResult alloc];
  luminanceValue = [(_PIParallaxClockMaterialJob *)self luminanceValue];
  [luminanceValue doubleValue];
  v5 = [(_PIParallaxClockMaterialResult *)v3 initWithLuminance:?];

  return v5;
}

- (BOOL)render:(id *)render
{
  v34 = *MEMORY[0x1E69E9840];
  if (!render)
  {
    v17 = NUAssertLogger_3620();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v31 = v18;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v19 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v21 = NUAssertLogger_3620();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v22)
      {
        v25 = dispatch_get_specific(*v19);
        v26 = MEMORY[0x1E696AF00];
        v27 = v25;
        callStackSymbols = [v26 callStackSymbols];
        v29 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v31 = v25;
        v32 = 2114;
        v33 = v29;
        _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v31 = v24;
      _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v5 = [(NURenderJob *)self renderer:?];
  if (v5)
  {
    clockMaterialRequest = [(_PIParallaxClockMaterialJob *)self clockMaterialRequest];
    v7 = objc_alloc_init(PIParallaxLuminanceCalculator);
    layerStack = [clockMaterialRequest layerStack];

    if (!layerStack)
    {
      [MEMORY[0x1E69B3A48] missingError:@"Request needs either a layerStack or a segmentationItem" object:clockMaterialRequest];
      *render = v13 = 0;
LABEL_12:

      goto LABEL_13;
    }

    luminanceCalculationType = [clockMaterialRequest luminanceCalculationType];
    if (luminanceCalculationType == 1)
    {
      layerStack2 = [clockMaterialRequest layerStack];
      style = [clockMaterialRequest style];
      v12 = [(PIParallaxLuminanceCalculator *)v7 calculateLuminanceValuesForBackdropLayerStack:layerStack2 style:style renderer:v5 error:render];
    }

    else
    {
      if (luminanceCalculationType)
      {
LABEL_11:
        luminanceValue = [(_PIParallaxClockMaterialJob *)self luminanceValue];
        v13 = luminanceValue != 0;

        goto LABEL_12;
      }

      layerStack2 = [clockMaterialRequest layerStack];
      style = [clockMaterialRequest style];
      v12 = [(PIParallaxLuminanceCalculator *)v7 calculateClockLuminanceValuesForLayerStack:layerStack2 style:style renderer:v5 error:render];
    }

    v14 = v12;
    [(_PIParallaxClockMaterialJob *)self setLuminanceValue:v12];

    goto LABEL_11;
  }

  v13 = 0;
LABEL_13:

  return v13;
}

- (id)scalePolicy
{
  v2 = [objc_alloc(MEMORY[0x1E69B3BE8]) initWithTargetPixelCount:0x80000];

  return v2;
}

@end
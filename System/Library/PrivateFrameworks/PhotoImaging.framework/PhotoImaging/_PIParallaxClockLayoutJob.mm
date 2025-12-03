@interface _PIParallaxClockLayoutJob
- (BOOL)prepare:(id *)prepare;
- (BOOL)render:(id *)render;
- (BOOL)wantsRenderStage;
- (_PIParallaxClockLayoutJob)initWithParallaxClockLayoutRequest:(id)request;
- (_PIParallaxClockLayoutJob)initWithRequest:(id)request;
- (id)result;
- (id)scalePolicy;
@end

@implementation _PIParallaxClockLayoutJob

- (id)result
{
  v3 = objc_alloc_init(_PIParallaxClockLayoutResult);
  clockLayerOrder = [(_PIParallaxClockLayoutJob *)self clockLayerOrder];
  [(_PIParallaxClockLayoutResult *)v3 setClockLayerOrder:clockLayerOrder];

  [(_PIParallaxClockLayoutResult *)v3 setClockIntersection:[(_PIParallaxClockLayoutJob *)self clockIntersection]];

  return v3;
}

- (BOOL)render:(id *)render
{
  v77 = *MEMORY[0x1E69E9840];
  v4 = [(NURenderJob *)self renderer:render];
  if (!v4)
  {
    v43 = NUAssertLogger_1200();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing renderer"];
      LODWORD(v76[0]) = 138543362;
      *(v76 + 4) = v44;
      _os_log_error_impl(&dword_1C7694000, v43, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v76, 0xCu);
    }

    v45 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v47 = NUAssertLogger_1200();
    v48 = os_log_type_enabled(v47, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v48)
      {
        v61 = dispatch_get_specific(*v45);
        v62 = MEMORY[0x1E696AF00];
        v63 = v61;
        callStackSymbols = [v62 callStackSymbols];
        v65 = [callStackSymbols componentsJoinedByString:@"\n"];
        LODWORD(v76[0]) = 138543618;
        *(v76 + 4) = v61;
        WORD6(v76[0]) = 2114;
        *(v76 + 14) = v65;
        _os_log_error_impl(&dword_1C7694000, v47, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v76, 0x16u);
      }

      goto LABEL_30;
    }

    if (!v48)
    {
      goto LABEL_30;
    }

LABEL_21:
    callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
    v60 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    LODWORD(v76[0]) = 138543362;
    *(v76 + 4) = v60;
    _os_log_error_impl(&dword_1C7694000, v47, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v76, 0xCu);

    goto LABEL_30;
  }

  layout = [(_PIParallaxClockLayoutJob *)self layout];
  if (!layout)
  {
    v49 = NUAssertLogger_1200();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing parallax layout"];
      LODWORD(v76[0]) = 138543362;
      *(v76 + 4) = v50;
      _os_log_error_impl(&dword_1C7694000, v49, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v76, 0xCu);
    }

    v51 = MEMORY[0x1E69B38E8];
    v52 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v47 = NUAssertLogger_1200();
    v53 = os_log_type_enabled(v47, OS_LOG_TYPE_ERROR);
    if (v52)
    {
      if (v53)
      {
        v66 = dispatch_get_specific(*v51);
        v67 = MEMORY[0x1E696AF00];
        v68 = v66;
        callStackSymbols3 = [v67 callStackSymbols];
        v70 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        LODWORD(v76[0]) = 138543618;
        *(v76 + 4) = v66;
        WORD6(v76[0]) = 2114;
        *(v76 + 14) = v70;
        _os_log_error_impl(&dword_1C7694000, v47, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v76, 0x16u);
      }

      goto LABEL_30;
    }

    if (!v53)
    {
      goto LABEL_30;
    }

    goto LABEL_21;
  }

  layoutConfiguration = [(_PIParallaxClockLayoutJob *)self layoutConfiguration];
  matteImage = [(_PIParallaxClockLayoutJob *)self matteImage];
  if (!matteImage)
  {
    v54 = NUAssertLogger_1200();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing matte image"];
      LODWORD(v76[0]) = 138543362;
      *(v76 + 4) = v55;
      _os_log_error_impl(&dword_1C7694000, v54, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v76, 0xCu);
    }

    v56 = MEMORY[0x1E69B38E8];
    v57 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v47 = NUAssertLogger_1200();
    v58 = os_log_type_enabled(v47, OS_LOG_TYPE_ERROR);
    if (!v57)
    {
      if (!v58)
      {
        goto LABEL_30;
      }

      goto LABEL_21;
    }

    if (v58)
    {
      v71 = dispatch_get_specific(*v56);
      v72 = MEMORY[0x1E696AF00];
      v73 = v71;
      callStackSymbols4 = [v72 callStackSymbols];
      v75 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      LODWORD(v76[0]) = 138543618;
      *(v76 + 4) = v71;
      WORD6(v76[0]) = 2114;
      *(v76 + 14) = v75;
      _os_log_error_impl(&dword_1C7694000, v47, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v76, 0x16u);
    }

LABEL_30:

    _NUAssertFailHandler();
    __break(1u);
  }

  [layout imageSize];
  [layout visibleFrame];
  NURectNormalize();
  [matteImage extent];
  NURectDenormalize();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  if ([layout layoutVariant] == 2)
  {
    v16 = MEMORY[0x1E69C07A8];
    [layout visibleFrame];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    [layout adaptiveVisibleFrame];
    [v16 topFrameForVisibleRect:v18 adaptiveRect:{v20, v22, v24, v25, v26, v27, v28}];
    NURectNormalize();
    [matteImage extent];
    NURectDenormalize();
    v9 = v29;
    v11 = v30;
    v13 = v31;
    v15 = v32;
  }

  memset(v76, 0, sizeof(v76));
  [layout normalizedAdaptiveTimeFrameInVisibleFrame];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  context = [v4 context];
  [PISegmentationHelper computeClockLayerOrderWithAdaptiveTimeRect:matteImage visibleFrame:layoutConfiguration segmentationMatte:context layoutConfiguration:1 context:v34 interactive:v36, v38, v40, v9, v11, v13, v15];

  [(_PIParallaxClockLayoutJob *)self setClockLayerOrder:*&v76[0]];
  [(_PIParallaxClockLayoutJob *)self setClockIntersection:0];

  return 1;
}

- (BOOL)prepare:(id *)prepare
{
  v50 = *MEMORY[0x1E69E9840];
  v45.receiver = self;
  v45.super_class = _PIParallaxClockLayoutJob;
  v4 = [(NURenderJob *)&v45 prepare:prepare];
  if (!v4)
  {
    return v4;
  }

  clockLayoutRequest = [(_PIParallaxClockLayoutJob *)self clockLayoutRequest];
  segmentationItem = [clockLayoutRequest segmentationItem];

  if (!segmentationItem)
  {
    v23 = NUAssertLogger_1200();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing segmentation item"];
      *buf = 138543362;
      v47 = v24;
      _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v27 = NUAssertLogger_1200();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v28)
      {
        v36 = dispatch_get_specific(*callStackSymbols);
        v37 = MEMORY[0x1E696AF00];
        v38 = v36;
        callStackSymbols = [v37 callStackSymbols];
        v39 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v47 = v36;
        v48 = 2114;
        v49 = v39;
        _os_log_error_impl(&dword_1C7694000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v47 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v33 = _NUAssertFailHandler();
    goto LABEL_31;
  }

  clockLayoutRequest2 = [(_PIParallaxClockLayoutJob *)self clockLayoutRequest];
  layout = [clockLayoutRequest2 layout];

  if (!layout)
  {
    v30 = NUAssertLogger_1200();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing parallax layout"];
      *buf = 138543362;
      v47 = v31;
      _os_log_error_impl(&dword_1C7694000, v30, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v32 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v27 = NUAssertLogger_1200();
    v33 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (!v32)
    {
      if (v33)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v35 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v47 = v35;
        _os_log_error_impl(&dword_1C7694000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_33;
    }

LABEL_31:
    if (v33)
    {
      v40 = dispatch_get_specific(*callStackSymbols);
      v41 = MEMORY[0x1E696AF00];
      v42 = v40;
      callStackSymbols4 = [v41 callStackSymbols];
      v44 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v47 = v40;
      v48 = 2114;
      v49 = v44;
      _os_log_error_impl(&dword_1C7694000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_33:

    _NUAssertFailHandler();
  }

  orientation = [layout orientation];
  layoutConfiguration = [segmentationItem layoutConfiguration];
  v11 = layoutConfiguration;
  if (orientation == 2)
  {
    landscapeConfiguration = [layoutConfiguration landscapeConfiguration];
    if (!landscapeConfiguration)
    {
      v13 = MEMORY[0x1E69C0790];
      v14 = 2;
LABEL_10:
      v16 = [v13 deviceConfigurationForOrientation:v14];
      v15 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    landscapeConfiguration = [layoutConfiguration portraitConfiguration];
    if (!landscapeConfiguration)
    {
      v13 = MEMORY[0x1E69C0790];
      v14 = 1;
      goto LABEL_10;
    }
  }

  v15 = landscapeConfiguration;
  v16 = v15;
LABEL_11:

  segmentationMatte = [segmentationItem segmentationMatte];

  if (segmentationMatte)
  {
    v18 = MEMORY[0x1E695F658];
    segmentationMatte2 = [segmentationItem segmentationMatte];
    v20 = [v18 imageWithNUImageBuffer:segmentationMatte2];

    if (([segmentationItem classification] - 3) <= 1)
    {
      v21 = [PISegmentationHelper invertImage:v20];

      v20 = v21;
    }

    [(_PIParallaxClockLayoutJob *)self setMatteImage:v20];
    [(_PIParallaxClockLayoutJob *)self setLayout:layout];
    [(_PIParallaxClockLayoutJob *)self setLayoutConfiguration:v16];
  }

  else
  {
    [(_PIParallaxClockLayoutJob *)self setClockLayerOrder:*MEMORY[0x1E69C0BA0]];
    [(_PIParallaxClockLayoutJob *)self setClockIntersection:2];
  }

  return v4;
}

- (id)scalePolicy
{
  v2 = [objc_alloc(MEMORY[0x1E69B3BE8]) initWithTargetPixelCount:3048192];

  return v2;
}

- (BOOL)wantsRenderStage
{
  matteImage = [(_PIParallaxClockLayoutJob *)self matteImage];
  v3 = matteImage != 0;

  return v3;
}

- (_PIParallaxClockLayoutJob)initWithParallaxClockLayoutRequest:(id)request
{
  v4.receiver = self;
  v4.super_class = _PIParallaxClockLayoutJob;
  return [(NURenderJob *)&v4 initWithRequest:request];
}

- (_PIParallaxClockLayoutJob)initWithRequest:(id)request
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
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_1220);
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
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_1220);
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
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_1220);
  }
}

@end
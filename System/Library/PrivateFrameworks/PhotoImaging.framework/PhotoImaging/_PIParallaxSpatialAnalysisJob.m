@interface _PIParallaxSpatialAnalysisJob
- (BOOL)render:(id *)a3;
- (PFPosterOrientedLayout)requestLayout;
- (_PIParallaxSpatialAnalysisJob)initWithRequest:(id)a3;
- (id)result;
@end

@implementation _PIParallaxSpatialAnalysisJob

- (id)result
{
  v2 = objc_alloc_init(_PIParallaxSpatialAnalysisResult);

  return v2;
}

- (BOOL)render:(id *)a3
{
  v56 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v48 = NUAssertLogger_20290();
    v10 = "error";
    v4 = &qword_1C7845000;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error"];
      *buf = 138543362;
      v53 = v49;
      _os_log_error_impl(&dword_1C7694000, v48, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v9 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v6 = NUAssertLogger_20290();
    v50 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v50)
      {
        specific = dispatch_get_specific(*v9);
        v51 = MEMORY[0x1E696AF00];
        v4 = specific;
        v9 = [v51 callStackSymbols];
        v3 = [v9 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v53 = specific;
        v54 = 2114;
        v55 = v3;
        _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v50)
    {
      specific = [MEMORY[0x1E696AF00] callStackSymbols];
      v9 = [specific componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v53 = v9;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
    goto LABEL_49;
  }

  v4 = a3;
  v6 = [(_PIParallaxSpatialAnalysisJob *)self spatialAnalysisRequest];
  specific = [v6 sceneAnalyzer];
  if (specific)
  {
    v8 = [v6 spatialPhotoLayer];
    v9 = v8;
    if (!v8)
    {
      [MEMORY[0x1E69B3A48] failureError:@"Failed to analyze spatial photo object:{spatialPhotoLayer must be set", 0}];
      *v4 = LOBYTE(v11) = 0;
LABEL_39:

      goto LABEL_40;
    }

    v3 = [v8 sharedScene];
    if (!v3)
    {
      [MEMORY[0x1E69B3A48] failureError:@"Failed to analyze spatial photo object:{spatialPhotoLayer.sharedScene is nil", 0}];
      *v4 = LOBYTE(v11) = 0;
LABEL_38:

      goto LABEL_39;
    }

    v10 = [(_PIParallaxSpatialAnalysisJob *)self requestLayout];
    if (v10)
    {
      v11 = [v6 layoutOrientation];
      if (v11)
      {
        [v9 frame];
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v19 = v18;
        [v10 adaptiveTimeFrame];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;
        [v10 originalImageExtent];
        v30 = v28 + v29 - (v23 + v27);
        v31 = v21 - v13;
        v32 = 0.0;
        v33 = 0.0;
        if (v17 != 0.0)
        {
          v31 = v31 / v17;
          v33 = v25 / v17;
        }

        v34 = v30 - v15;
        if (v19 != 0.0)
        {
          v34 = v34 / v19;
          v32 = v27 / v19;
        }

        v35 = [v6 isInteractive];
        v36 = *(MEMORY[0x1E695F050] + 16);
        v37 = *(MEMORY[0x1E695F050] + 24);
        if (v11 == 1)
        {
          v38 = v32;
        }

        else
        {
          v38 = *(MEMORY[0x1E695F050] + 24);
        }

        if (v11 == 1)
        {
          v39 = v33;
        }

        else
        {
          v39 = *(MEMORY[0x1E695F050] + 16);
        }

        v40 = *MEMORY[0x1E695F050];
        v41 = *(MEMORY[0x1E695F050] + 8);
        if (v11 == 1)
        {
          v42 = v34;
        }

        else
        {
          v42 = *(MEMORY[0x1E695F050] + 8);
        }

        if (v11 == 1)
        {
          v43 = v31;
        }

        else
        {
          v43 = *MEMORY[0x1E695F050];
        }

        if (v11 != 1)
        {
          v40 = v31;
          v41 = v34;
          v36 = v33;
          v37 = v32;
        }

        if ([specific analyzeTimeOcclusionForSpatialPhotoScene:v3 portraitNormalizedTimeRect:v35 landscapeNormalizedTimeRect:v4 isInteractive:v43 error:{v42, v39, v38, v40, v41, v36, v37}])
        {
          LOBYTE(v11) = 1;
LABEL_37:

          goto LABEL_38;
        }

        if (*MEMORY[0x1E69B3D78] == -1)
        {
LABEL_34:
          v45 = *MEMORY[0x1E69B3D80];
          if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
          {
            v47 = *v4;
            *buf = 138412290;
            v53 = v47;
            _os_log_error_impl(&dword_1C7694000, v45, OS_LOG_TYPE_ERROR, "Failed to analyze spatial scene:%@", buf, 0xCu);
          }

          LOBYTE(v11) = 0;
          goto LABEL_37;
        }

LABEL_49:
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_151_20306);
        goto LABEL_34;
      }

      v44 = [MEMORY[0x1E69B3A48] failureError:@"Failed to analyze spatial photo object:{layoutOrientation must be set", 0}];
    }

    else
    {
      v44 = [MEMORY[0x1E69B3A48] failureError:@"Failed to analyze spatial photo object:{layout must be set", 0}];
      LOBYTE(v11) = 0;
    }

    *v4 = v44;
    goto LABEL_37;
  }

  [MEMORY[0x1E69B3A48] failureError:@"Failed to analyze spatial photo object:{sceneAnalyzer is nil", 0}];
  *v4 = LOBYTE(v11) = 0;
LABEL_40:

  return v11;
}

- (PFPosterOrientedLayout)requestLayout
{
  v2 = [(_PIParallaxSpatialAnalysisJob *)self spatialAnalysisRequest];
  v3 = [v2 layout];

  return v3;
}

- (_PIParallaxSpatialAnalysisJob)initWithRequest:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _PIParallaxSpatialAnalysisJob;
  v5 = [(NURenderJob *)&v9 initWithRequest:v4];
  if (v5)
  {
    v6 = [v4 copy];
    spatialAnalysisRequest = v5->_spatialAnalysisRequest;
    v5->_spatialAnalysisRequest = v6;
  }

  return v5;
}

@end
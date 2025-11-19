@interface PIInpaintCompositeNode
- ($0AC6E346AE4835514AAA8AC86D8F4844)scale;
- (NURenderNode)inputNode;
- (PIInpaintCacheNode)inpaintNode;
- (PIInpaintCompositeNode)initWithScale:(id)a3 sampleMode:(int64_t)a4 input:(id)a5 retouch:(id)a6;
- (PIInpaintCompositeNode)initWithSettings:(id)a3 inputs:(id)a4;
- (id)_evaluateImage:(id *)a3;
- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6;
- (int64_t)sampleMode;
@end

@implementation PIInpaintCompositeNode

- (id)_evaluateImage:(id *)a3
{
  v5 = [(PIInpaintCompositeNode *)self inpaintNode];
  v6 = [v5 outputImage:a3];
  if (v6)
  {
    v7 = v6;
    v8 = [v5 outputImageGeometry:a3];
    if (v8)
    {
      v9 = [(PIInpaintCompositeNode *)self inputNode];
      v10 = [v9 outputImage:a3];
      if (v10)
      {
        v11 = [v9 outputImageGeometry:a3];
        if (v11)
        {
          v40 = v9;
          v42 = v10;
          v12 = [(PIInpaintCompositeNode *)self scale];
          v44 = v13;
          v45 = v12;
          NUScaleToDouble();
          v15 = v14;
          v43 = [(NURenderNode *)self resamplingColorSpace];
          v16 = [v8 scaledSize];
          v18 = v17;
          v41 = v11;
          v19 = [v11 scaledSize];
          v21 = v20;
          v22 = [v5 outputRegion];
          v55 = 0;
          v56 = 0;
          v57 = v16;
          v58 = v18;
          v23 = [v22 regionByFlippingInRect:&v55];

          v55 = 0;
          v56 = 0;
          v57 = v16;
          v58 = v18;
          if ([v23 includesRect:&v55])
          {
            if (NUScaleEqual())
            {
              v11 = v41;
              v24 = v43;
            }

            else
            {
              v34 = v23;
              v35 = MEMORY[0x1E69B3C28];
              v36 = [(PIInpaintCompositeNode *)self sampleMode];
              v55 = 0;
              v56 = 0;
              v57 = v19;
              v58 = v21;
              v24 = v43;
              v37 = [v35 resampleImage:v7 by:v45 sampleMode:v44 extent:v36 colorSpace:{&v55, v43}];

              v7 = v37;
              v23 = v34;
              v11 = v41;
            }

            v10 = v42;
            v9 = v40;
            v7 = v7;
            v25 = v7;
          }

          else
          {
            v39 = v23;
            v26 = [v23 regionByScalingBy:0 withRounding:{v15, v15}];
            v55 = 0;
            v56 = 0;
            v57 = v19;
            v58 = v21;
            v27 = [v26 regionByClippingToRect:&v55];

            v28 = [v5 padding];
            v29 = vcvtpd_s64_f64(v15 * v28);
            v55 = 0;
            v56 = 0;
            v57 = v19;
            v58 = v21;
            v30 = [v27 regionByShrinkingBy:v29 inRect:{v29, &v55}];

            v31 = [v30 regionWithSubregionsOfMinimumDensity:0.5];
            v55 = 0;
            v56 = &v55;
            v57 = 0x3032000000;
            v58 = __Block_byref_object_copy__17069;
            v59 = __Block_byref_object_dispose__17070;
            v10 = v42;
            v60 = v42;
            v46[0] = MEMORY[0x1E69E9820];
            v46[1] = 3221225472;
            v46[2] = __41__PIInpaintCompositeNode__evaluateImage___block_invoke;
            v46[3] = &unk_1E82AB670;
            v52 = v45;
            v53 = v44;
            v54 = v28;
            v32 = v31;
            v7 = v7;
            v47 = v7;
            v48 = self;
            v24 = v43;
            v49 = v43;
            v33 = v30;
            v50 = v33;
            v51 = &v55;
            [v31 enumerateRects:v46];
            v25 = v56[5];

            _Block_object_dispose(&v55, 8);
            v9 = v40;
            v11 = v41;
            v23 = v39;
          }
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

void __41__PIInpaintCompositeNode__evaluateImage___block_invoke(uint64_t a1, __int128 *a2)
{
  v30 = 0u;
  v31 = 0u;
  NUScaleInvert();
  v4 = a2[1];
  v28 = *a2;
  v29 = v4;
  NUPixelRectScaleRational();
  v26 = 0u;
  v27 = 0u;
  NUPixelRectDilate();
  v30 = v28;
  v31 = v29;
  v5 = *(a1 + 32);
  NUPixelRectToCGRect();
  v6 = [v5 imageByCroppingToRect:?];
  if (NUScaleEqual())
  {
    v7 = a2[1];
    v28 = *a2;
    v29 = v7;
    NUPixelRectToCGRect();
    v8 = [v6 imageByCroppingToRect:?];
    v9 = [v8 imageByCompositingOverImage:*(*(*(a1 + 64) + 8) + 40)];
    v10 = *(*(a1 + 64) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
    v26 = v30;
    v27 = v31;
    NUPixelRectScaleRational();
    v12 = MEMORY[0x1E69B3C28];
    v13 = [*(a1 + 40) sampleMode];
    v14 = *(a1 + 48);
    v15 = *(a1 + 72);
    v16 = *(a1 + 80);
    v26 = 0u;
    v27 = 0u;
    v17 = [v12 resampleImage:v6 by:v15 sampleMode:v16 extent:v13 colorSpace:{&v26, v14}];

    v18 = *(a1 + 56);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __41__PIInpaintCompositeNode__evaluateImage___block_invoke_2;
    v21[3] = &unk_1E82AB648;
    v19 = a2[1];
    v24 = *a2;
    v25 = v19;
    v6 = v17;
    v20 = *(a1 + 64);
    v22 = v6;
    v23 = v20;
    [v18 enumerateRects:v21];
  }
}

void __41__PIInpaintCompositeNode__evaluateImage___block_invoke_2(uint64_t a1)
{
  v7 = *(a1 + 48);
  v8 = *(a1 + 64);
  NUPixelRectIntersection();
  if ((NUPixelRectIsEmpty() & 1) == 0)
  {
    v2 = *(a1 + 32);
    NUPixelRectToCGRect();
    v3 = [v2 imageByCroppingToRect:{v7, v8, 0, 0, 0, 0}];
    v4 = [v3 imageByCompositingOverImage:*(*(*(a1 + 40) + 8) + 40)];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v10 objectForKeyedSubscript:*MEMORY[0x1E695FAB0]];
  v14 = [v13 outputImageGeometry:a6];

  if (v14)
  {
    [v14 renderScale];
    [v12 scale];
    NUScaleDivide();
    v15 = [v11 mutableCopy];
    v16 = NUScaleToString();
    [v15 setObject:v16 forKeyedSubscript:@"scale"];

    v17 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v12, "sampleMode")}];
    [v15 setObject:v17 forKeyedSubscript:@"sampleMode"];

    v20.receiver = self;
    v20.super_class = PIInpaintCompositeNode;
    v18 = [(NURenderNode *)&v20 resolvedNodeWithCachedInputs:v10 settings:v15 pipelineState:v12 error:a6];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (PIInpaintCacheNode)inpaintNode
{
  v2 = [(NURenderNode *)self inputs];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E695FAB0]];

  return v3;
}

- (NURenderNode)inputNode
{
  v2 = [(NURenderNode *)self inputs];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E695FA48]];

  return v3;
}

- (int64_t)sampleMode
{
  v2 = [(NURenderNode *)self settings];
  v3 = [v2 objectForKeyedSubscript:@"sampleMode"];
  v4 = [v3 integerValue];

  return v4;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)scale
{
  v2 = [(NURenderNode *)self settings];
  v3 = [v2 objectForKeyedSubscript:@"scale"];
  v4 = NUScaleFromString();
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.var1 = v8;
  result.var0 = v7;
  return result;
}

- (PIInpaintCompositeNode)initWithScale:(id)a3 sampleMode:(int64_t)a4 input:(id)a5 retouch:(id)a6
{
  v49 = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = a6;
  if ((NUScaleIsValid() & 1) == 0)
  {
    v18 = NUAssertLogger_16994();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "NUScaleIsValid(scale)"];
      *buf = 138543362;
      v46 = v19;
      _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v20 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v22 = NUAssertLogger_16994();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v23)
      {
        v31 = dispatch_get_specific(*v20);
        v32 = MEMORY[0x1E696AF00];
        v33 = v31;
        v20 = [v32 callStackSymbols];
        v34 = [v20 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v46 = v31;
        v47 = 2114;
        v48 = v34;
        _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      v24 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [v24 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v46 = v20;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v28 = _NUAssertFailHandler();
    goto LABEL_17;
  }

  if (!a4)
  {
    v25 = NUAssertLogger_16994();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "sampleMode != NUSampleModeDefault"];
      *buf = 138543362;
      v46 = v26;
      _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v20 = MEMORY[0x1E69B38E8];
    v27 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v22 = NUAssertLogger_16994();
    v28 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (!v27)
    {
      if (v28)
      {
        v29 = [MEMORY[0x1E696AF00] callStackSymbols];
        v30 = [v29 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v46 = v30;
        _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_19;
    }

LABEL_17:
    if (v28)
    {
      v35 = dispatch_get_specific(*v20);
      v36 = MEMORY[0x1E696AF00];
      v37 = v35;
      v38 = [v36 callStackSymbols];
      v39 = [v38 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v46 = v35;
      v47 = 2114;
      v48 = v39;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_19:

    _NUAssertFailHandler();
  }

  v43[0] = @"scale";
  v11 = NUScaleToString();
  v44[0] = v11;
  v43[1] = @"sampleMode";
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v43[2] = @"__dominantInputSettingsKey";
  v13 = *MEMORY[0x1E695FA48];
  v44[1] = v12;
  v44[2] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:3];

  v41[0] = *MEMORY[0x1E695FAB0];
  v41[1] = v13;
  v42[0] = v10;
  v42[1] = v9;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:2];
  v40.receiver = self;
  v40.super_class = PIInpaintCompositeNode;
  v16 = [(NURenderNode *)&v40 initWithSettings:v14 inputs:v15];

  return v16;
}

- (PIInpaintCompositeNode)initWithSettings:(id)a3 inputs:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = MEMORY[0x1E69B3D70];
    v10 = *MEMORY[0x1E69B3D70];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_ERROR))
    {
      v11 = MEMORY[0x1E696AEC0];
      v12 = v10;
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = NSStringFromSelector(a2);
      v16 = [v11 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v14, v15];
      *buf = 138543362;
      v32 = v16;
      _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

      v17 = *v8;
      if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
      {
        if (v17 != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_290_17014);
        }

LABEL_11:
        v23 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
        {
          specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
          v25 = MEMORY[0x1E696AF00];
          v26 = specific;
          v27 = v23;
          v28 = [v25 callStackSymbols];
          v29 = [v28 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v32 = specific;
          v33 = 2114;
          v34 = v29;
          _os_log_error_impl(&dword_1C7694000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }

        goto LABEL_13;
      }

      if (v17 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_290_17014);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
    {
      goto LABEL_11;
    }

    v18 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      v19 = MEMORY[0x1E696AF00];
      v20 = v18;
      v21 = [v19 callStackSymbols];
      v22 = [v21 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v32 = v22;
      _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

LABEL_13:
    v30 = objc_opt_class();
    NSStringFromClass(v30);
    objc_claimAutoreleasedReturnValue();
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    _NUAssertFailHandler();
LABEL_14:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_290_17014);
  }
}

@end
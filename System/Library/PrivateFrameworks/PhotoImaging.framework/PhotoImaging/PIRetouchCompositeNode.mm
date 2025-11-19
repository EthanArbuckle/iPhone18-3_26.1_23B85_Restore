@interface PIRetouchCompositeNode
- (NURenderNode)inputNode;
- (PIRetouchCacheNode)retouchNode;
- (PIRetouchCompositeNode)initWithScale:(id)a3 sampleMode:(int64_t)a4 input:(id)a5 retouch:(id)a6;
- (PIRetouchCompositeNode)initWithSettings:(id)a3 inputs:(id)a4;
- (id)_evaluateImage:(id *)a3;
- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6;
@end

@implementation PIRetouchCompositeNode

- (id)_evaluateImage:(id *)a3
{
  v73[1] = *MEMORY[0x1E69E9840];
  v5 = [(PIRetouchCompositeNode *)self retouchNode];
  v6 = [v5 outputImage:a3];
  if (!v6)
  {
    v14 = 0;
    goto LABEL_23;
  }

  v7 = [v5 outputImageGeometry:a3];
  if (v7)
  {
    v8 = [(PIRetouchCompositeNode *)self inputNode];
    v9 = [v8 outputImage:a3];
    if (!v9)
    {
      v14 = 0;
LABEL_21:

      goto LABEL_22;
    }

    v56 = [v8 outputImageGeometry:a3];
    if (!v56)
    {
      v14 = 0;
LABEL_20:

      goto LABEL_21;
    }

    numerator = self->_scale.numerator;
    denominator = self->_scale.denominator;
    NUScaleToDouble();
    v13 = v12;
    v51 = denominator;
    v52 = numerator;
    if (NUScaleEqual())
    {
      v50 = 0;
LABEL_19:
      *&v22 = COERCE_DOUBLE([v7 scaledSize]);
      v54 = v23;
      v55 = *&v22;
      v24 = COERCE_DOUBLE([v56 scaledSize]);
      v26 = v25;
      v27 = [v5 outputRegion];
      v69.a = 0.0;
      v69.b = 0.0;
      v69.c = v55;
      v69.d = v54;
      v53 = [v27 regionByFlippingInRect:&v69];

      v28 = [v53 regionByScalingBy:0 withRounding:{v13, v13}];
      v69.a = 0.0;
      v69.b = 0.0;
      v69.c = v24;
      v69.d = v26;
      v29 = [v28 regionByClippingToRect:&v69];

      v30 = [v5 padding];
      v31 = vcvtpd_s64_f64(v13 * v30);
      v69.a = 0.0;
      v69.b = 0.0;
      v69.c = v24;
      v69.d = v26;
      v32 = [v29 regionByShrinkingBy:v31 inRect:{v31, &v69}];

      v33 = [v32 regionWithSubregionsOfMinimumDensity:0.5];
      v69.a = 0.0;
      *&v69.b = &v69;
      *&v69.c = 0x3032000000;
      *&v69.d = __Block_byref_object_copy__6586;
      *&v69.tx = __Block_byref_object_dispose__6587;
      *&v69.ty = v9;
      v57[0] = MEMORY[0x1E69E9820];
      v57[1] = 3221225472;
      v57[2] = __41__PIRetouchCompositeNode__evaluateImage___block_invoke;
      v57[3] = &unk_1E82AA3C0;
      v62 = v52;
      v63 = v51;
      v64 = v30;
      v6 = v6;
      v58 = v6;
      v34 = v50;
      v59 = v34;
      v65 = 0;
      v66 = 0;
      v67 = v55;
      v68 = v54;
      v35 = v32;
      v60 = v35;
      v61 = &v69;
      [v33 enumerateRects:v57];
      v14 = *(*&v69.b + 40);

      _Block_object_dispose(&v69, 8);
      goto LABEL_20;
    }

    sampleMode = self->_sampleMode;
    if (sampleMode <= 1)
    {
      if (sampleMode != 1)
      {
        v50 = 0;
        if (!sampleMode)
        {
          v37 = NUAssertLogger_6588();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unspecified sample mode"];
            LODWORD(v69.a) = 138543362;
            *(&v69.a + 4) = v38;
            _os_log_error_impl(&dword_1C7694000, v37, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v69, 0xCu);
          }

          v39 = MEMORY[0x1E69B38E8];
          specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
          v41 = NUAssertLogger_6588();
          v42 = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);
          if (specific)
          {
            if (v42)
            {
              v45 = dispatch_get_specific(*v39);
              v46 = MEMORY[0x1E696AF00];
              v47 = v45;
              v48 = [v46 callStackSymbols];
              v49 = [v48 componentsJoinedByString:@"\n"];
              LODWORD(v69.a) = 138543618;
              *(&v69.a + 4) = v45;
              WORD2(v69.b) = 2114;
              *(&v69.b + 6) = v49;
              _os_log_error_impl(&dword_1C7694000, v41, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v69, 0x16u);
            }
          }

          else if (v42)
          {
            v43 = [MEMORY[0x1E696AF00] callStackSymbols];
            v44 = [v43 componentsJoinedByString:@"\n"];
            LODWORD(v69.a) = 138543362;
            *(&v69.a + 4) = v44;
            _os_log_error_impl(&dword_1C7694000, v41, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v69, 0xCu);
          }

          _NUAssertFailHandler();
          __break(1u);
        }

        goto LABEL_19;
      }

      v19 = [v6 imageBySamplingNearest];

      v6 = v19;
    }

    else if (sampleMode != 2)
    {
      if (sampleMode != 3)
      {
        v50 = 0;
        goto LABEL_19;
      }

      v16 = MEMORY[0x1E695F648];
      v72 = *MEMORY[0x1E695FB20];
      v17 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
      v73[0] = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:&v72 count:1];
      v50 = [v16 filterWithName:@"CILanczosScaleTransform" withInputParameters:v18];
      goto LABEL_18;
    }

    v20 = MEMORY[0x1E695F648];
    v70 = *MEMORY[0x1E695FB38];
    v21 = MEMORY[0x1E696AA98];
    CGAffineTransformMakeScale(&v69, v13, v13);
    v17 = [v21 nu_transformWithCGAffineTransform:&v69];
    v71 = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
    v50 = [v20 filterWithName:@"CIAffineTransform" withInputParameters:v18];
LABEL_18:

    goto LABEL_19;
  }

  v14 = 0;
LABEL_22:

LABEL_23:

  return v14;
}

void __41__PIRetouchCompositeNode__evaluateImage___block_invoke(uint64_t a1, __int128 *a2)
{
  v27 = 0u;
  v28 = 0u;
  NUScaleInvert();
  v4 = a2[1];
  v25 = *a2;
  v26 = v4;
  NUPixelRectScaleRational();
  v23 = 0u;
  v24 = 0u;
  NUPixelRectDilate();
  v27 = v25;
  v28 = v26;
  v5 = *(a1 + 32);
  NUPixelRectToCGRect();
  v6 = [v5 imageByCroppingToRect:?];
  if (*(a1 + 40))
  {
    v7 = *(a1 + 104);
    v25 = *(a1 + 88);
    v26 = v7;
    NUPixelRectToCGRect();
    v8 = [v6 imageByClampingToRect:?];

    [*(a1 + 40) setValue:v8 forKey:*MEMORY[0x1E695FAB0]];
    v9 = [*(a1 + 40) outputImage];

    v10 = *(a1 + 48);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __41__PIRetouchCompositeNode__evaluateImage___block_invoke_2;
    v18[3] = &unk_1E82AB648;
    v11 = a2[1];
    v21 = *a2;
    v22 = v11;
    v6 = v9;
    v12 = *(a1 + 56);
    v19 = v6;
    v20 = v12;
    [v10 enumerateRects:v18];
    v13 = v19;
  }

  else
  {
    v14 = a2[1];
    v25 = *a2;
    v26 = v14;
    NUPixelRectToCGRect();
    v13 = [v6 imageByCroppingToRect:?];
    v15 = [v13 imageByCompositingOverImage:*(*(*(a1 + 56) + 8) + 40)];
    v16 = *(*(a1 + 56) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;
  }
}

void __41__PIRetouchCompositeNode__evaluateImage___block_invoke_2(uint64_t a1)
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
  v9.receiver = self;
  v9.super_class = PIRetouchCompositeNode;
  v7 = [(NURenderNode *)&v9 resolvedNodeWithCachedInputs:a3 settings:a4 pipelineState:a5 error:a6];
  *(v7 + 168) = self->_scale;
  *(v7 + 184) = self->_sampleMode;

  return v7;
}

- (PIRetouchCacheNode)retouchNode
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

- (PIRetouchCompositeNode)initWithScale:(id)a3 sampleMode:(int64_t)a4 input:(id)a5 retouch:(id)a6
{
  var1 = a3.var1;
  var0 = a3.var0;
  v51 = *MEMORY[0x1E69E9840];
  v11 = a5;
  v12 = a6;
  if ((NUScaleIsValid() & 1) == 0)
  {
    v20 = NUAssertLogger_6588();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "NUScaleIsValid(scale)"];
      *buf = 138543362;
      v48 = v21;
      _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v22 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v24 = NUAssertLogger_6588();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v25)
      {
        v33 = dispatch_get_specific(*v22);
        v34 = MEMORY[0x1E696AF00];
        v35 = v33;
        v22 = [v34 callStackSymbols];
        v36 = [v22 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v48 = v33;
        v49 = 2114;
        v50 = v36;
        _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v25)
    {
      v26 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [v26 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v48 = v22;
      _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v30 = _NUAssertFailHandler();
    goto LABEL_17;
  }

  if (!a4)
  {
    v27 = NUAssertLogger_6588();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "sampleMode != NUSampleModeDefault"];
      *buf = 138543362;
      v48 = v28;
      _os_log_error_impl(&dword_1C7694000, v27, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v22 = MEMORY[0x1E69B38E8];
    v29 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v24 = NUAssertLogger_6588();
    v30 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (!v29)
    {
      if (v30)
      {
        v31 = [MEMORY[0x1E696AF00] callStackSymbols];
        v32 = [v31 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v48 = v32;
        _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_19;
    }

LABEL_17:
    if (v30)
    {
      v37 = dispatch_get_specific(*v22);
      v38 = MEMORY[0x1E696AF00];
      v39 = v37;
      v40 = [v38 callStackSymbols];
      v41 = [v40 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v48 = v37;
      v49 = 2114;
      v50 = v41;
      _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_19:

    _NUAssertFailHandler();
  }

  v45[0] = @"scale";
  v13 = NUScaleToString();
  v46[0] = v13;
  v45[1] = @"sampleMode";
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v45[2] = @"__dominantInputSettingsKey";
  v15 = *MEMORY[0x1E695FA48];
  v46[1] = v14;
  v46[2] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:3];

  v43[0] = *MEMORY[0x1E695FAB0];
  v43[1] = v15;
  v44[0] = v12;
  v44[1] = v11;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:2];
  v42.receiver = self;
  v42.super_class = PIRetouchCompositeNode;
  v18 = [(NURenderNode *)&v42 initWithSettings:v16 inputs:v17];
  v18->_scale.numerator = var0;
  v18->_scale.denominator = var1;
  v18->_sampleMode = a4;

  return v18;
}

- (PIRetouchCompositeNode)initWithSettings:(id)a3 inputs:(id)a4
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
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_267);
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
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_267);
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
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_267);
  }
}

@end
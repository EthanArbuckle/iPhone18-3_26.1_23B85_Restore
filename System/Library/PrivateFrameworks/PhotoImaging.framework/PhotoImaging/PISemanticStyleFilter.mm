@interface PISemanticStyleFilter
+ (id)CMISmartStyleTuningParameterVariantFromKey:(id)a3;
+ (id)_computeAlphaAwareHistogramForImage:(id)a3 context:(id)a4 colorSpace:(CGColorSpace *)a5 error:(id *)a6;
+ (id)_computeSmartToneStatsFromHistogram:(id)a3;
+ (id)stylePriorDataForCast:(id)a3 tone:(float)a4 color:(float)a5 intensity:(float)a6 priorStrength:(float)a7;
+ (id)styleTuningParametersForCast:(id)a3;
- (id)_lightMapImageWithData:(id)a3;
- (id)curveImageWithData:(id)a3;
- (id)extractDataToDictionary:(id)a3 options:(id)a4 context:(id)a5 colorSpace:(CGColorSpace *)a6 error:(id *)a7;
- (id)gtcKernel;
- (id)outputImage;
@end

@implementation PISemanticStyleFilter

+ (id)styleTuningParametersForCast:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (!v3)
  {
    v7 = NUAssertLogger_22529();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "cast != nil"];
      *buf = 138543362;
      v21 = v8;
      _os_log_error_impl(&dword_1C7694000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v9 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v11 = NUAssertLogger_22529();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v12)
      {
        v15 = dispatch_get_specific(*v9);
        v16 = MEMORY[0x1E696AF00];
        v17 = v15;
        v18 = [v16 callStackSymbols];
        v19 = [v18 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v15;
        v22 = 2114;
        v23 = v19;
        _os_log_error_impl(&dword_1C7694000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v12)
    {
      v13 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [v13 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v14;
      _os_log_error_impl(&dword_1C7694000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v4 = v3;
  v5 = [MEMORY[0x1E6991708] styleEngineSpecificTuningForTuningVariant:*MEMORY[0x1E69916A8] andCast:v3];

  return v5;
}

+ (id)CMISmartStyleTuningParameterVariantFromKey:(id)a3
{
  v3 = [a3 intValue] - 2;
  if (v3 > 6)
  {
    v4 = MEMORY[0x1E6991680];
  }

  else
  {
    v4 = qword_1E82ABD80[v3];
  }

  v5 = *v4;

  return v5;
}

+ (id)stylePriorDataForCast:(id)a3 tone:(float)a4 color:(float)a5 intensity:(float)a6 priorStrength:(float)a7
{
  v11 = a3;
  if ([v11 isEqualToString:@"None"])
  {
    v16 = 0;
  }

  else
  {
    *&v12 = a4;
    *&v13 = a5;
    *&v14 = a6;
    *&v15 = a7;
    [MEMORY[0x1E6991700] calculatePriorCCMforCast:v11 tone:v12 color:v13 intensity:v14 priorStrength:v15];
    v21[0] = v17;
    v21[1] = v18;
    v21[2] = v19;
    v16 = [MEMORY[0x1E695DEF0] dataWithBytes:v21 length:48];
  }

  return v16;
}

+ (id)_computeSmartToneStatsFromHistogram:(id)a3
{
  v43[10] = *MEMORY[0x1E69E9840];
  v3 = [a3 luminance];
  if ([v3 binCount] <= 512)
  {
    v4 = [v3 binCount];
    if (v4 < 1)
    {
      v8 = 0.0;
      v7 = 0.0;
      goto LABEL_6;
    }
  }

  else
  {
    v4 = 512;
  }

  v5 = 0;
  v6 = v4;
  v7 = 0.0;
  v8 = 0.0;
  do
  {
    v9 = fmin(v5 / 255.0, 1.0);
    v10 = *([v3 values] + 8 * v5);
    v11 = v10 / [v3 sampleCount];
    v7 = v7 + v11 * log(v9 + 0.00392156863);
    v8 = v8 + v11 * log(1.0 - v9 + 0.00392156863);
    ++v5;
  }

  while (v6 != v5);
LABEL_6:
  v12 = exp(v7);
  v13 = exp(v8);
  [v3 percentile:0.02];
  v15 = v14;
  [v3 percentile:0.1];
  v17 = v16;
  [v3 percentile:0.25];
  v19 = v18;
  [v3 percentile:0.5];
  v21 = v20;
  [v3 percentile:0.75];
  v38 = v22;
  [v3 percentile:0.98];
  v39 = v23;
  [v3 percentile:0.001];
  v25 = v24 * ((sqrt(v24) * -0.65 + 1.0) * 0.85);
  [v3 percentile:1.0];
  v27 = v26;
  v42[0] = @"tonalRange";
  v41 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
  v43[0] = v41;
  v42[1] = @"highKey";
  v40 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
  v43[1] = v40;
  v42[2] = @"p02";
  v28 = [MEMORY[0x1E696AD98] numberWithDouble:v15];
  v43[2] = v28;
  v42[3] = @"p10";
  v29 = [MEMORY[0x1E696AD98] numberWithDouble:v17];
  v43[3] = v29;
  v42[4] = @"p25";
  v30 = [MEMORY[0x1E696AD98] numberWithDouble:v19];
  v43[4] = v30;
  v42[5] = @"p50";
  v31 = [MEMORY[0x1E696AD98] numberWithDouble:v21];
  v43[5] = v31;
  v42[6] = @"p75";
  v32 = [MEMORY[0x1E696AD98] numberWithDouble:v38];
  v43[6] = v32;
  v42[7] = @"p98";
  v33 = [MEMORY[0x1E696AD98] numberWithDouble:v39];
  v43[7] = v33;
  v42[8] = @"blackPoint";
  v34 = [MEMORY[0x1E696AD98] numberWithDouble:v25];
  v43[8] = v34;
  v42[9] = @"whitePoint";
  v35 = [MEMORY[0x1E696AD98] numberWithDouble:v27];
  v43[9] = v35;
  v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:10];

  return v36;
}

+ (id)_computeAlphaAwareHistogramForImage:(id)a3 context:(id)a4 colorSpace:(CGColorSpace *)a5 error:(id *)a6
{
  v45 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  if (!a6)
  {
    v30 = NUAssertLogger_22529();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v31;
      _os_log_error_impl(&dword_1C7694000, v30, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v32 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v34 = NUAssertLogger_22529();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v35)
      {
        v38 = dispatch_get_specific(*v32);
        v39 = MEMORY[0x1E696AF00];
        v40 = v38;
        v41 = [v39 callStackSymbols];
        v42 = [v41 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v38;
        *&buf[12] = 2114;
        *&buf[14] = v42;
        _os_log_error_impl(&dword_1C7694000, v34, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v35)
    {
      v36 = [MEMORY[0x1E696AF00] callStackSymbols];
      v37 = [v36 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v37;
      _os_log_error_impl(&dword_1C7694000, v34, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v11 = v10;
  v12 = objc_alloc_init(MEMORY[0x1E69B3958]);
  LODWORD(v13) = *(MEMORY[0x1E69B38F0] + 48);
  LODWORD(v14) = *(MEMORY[0x1E69B38F0] + 52);
  LODWORD(v15) = *(MEMORY[0x1E69B38F0] + 56);
  LODWORD(v16) = *(MEMORY[0x1E69B38F0] + 60);
  [v12 setLuminanceWeights:{v13, v14, v15, v16}];
  memset(buf, 0, 32);
  [v9 extent];
  NUPixelRectFromCGRect();
  v17 = [MEMORY[0x1E69B3BF0] BGRA8];
  v18 = [v17 alignedRowBytesForWidth:0];

  v19 = [MEMORY[0x1E695DF88] dataWithLength:0];
  v20 = [v19 mutableBytes];
  [v9 extent];
  [v11 render:v9 toBitmap:v20 rowBytes:v18 bounds:*MEMORY[0x1E695F8A8] format:a5 colorSpace:?];
  v21 = objc_alloc(MEMORY[0x1E69B3988]);
  v22 = [MEMORY[0x1E69B3BF0] BGRA8];
  v23 = [v21 initWithSize:0 format:v22 rowBytes:v18 bytes:{objc_msgSend(v19, "bytes")}];

  v43 = 0;
  v24 = [v12 computeHistogramFromBuffer:v23 error:&v43];
  if (!v24)
  {
    v25 = MEMORY[0x1E69B3A48];
    v26 = v43;
    v27 = [v25 errorWithCode:1 reason:@"Failed to compute histogram" object:v12 underlyingError:v26];
    v28 = v27;

    *a6 = v27;
  }

  return v24;
}

- (id)extractDataToDictionary:(id)a3 options:(id)a4 context:(id)a5 colorSpace:(CGColorSpace *)a6 error:(id *)a7
{
  v54[3] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v51 = 0;
  v15 = [objc_opt_class() _computeAlphaAwareHistogramForImage:v12 context:v14 colorSpace:a6 error:&v51];

  v16 = v51;
  if (v15)
  {
    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v18 = [objc_opt_class() _computeSmartToneStatsFromHistogram:v15];
    [v17 addEntriesFromDictionary:v18];
    v19 = [v13 objectForKeyedSubscript:PISemanticStyleFilterStatsLocalOption];
    v20 = [v19 BOOLValue];

    if (v20)
    {
      v49 = v18;
      v50 = v16;
      v21 = [v13 objectForKeyedSubscript:PISemanticStyleFilterStatsBaselineExposureOption];
      v48 = v21;
      if (v21)
      {
        [v21 floatValue];
        v53[0] = @"inputRVector";
        v23 = v22;
        v24 = [MEMORY[0x1E695F688] vectorWithX:v22 Y:0.0 Z:0.0 W:0.0];
        v54[0] = v24;
        v53[1] = @"inputGVector";
        v25 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:v23 Z:0.0 W:0.0];
        v54[1] = v25;
        v53[2] = @"inputBVector";
        v26 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:v23 W:0.0];
        v54[2] = v26;
        v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:v53 count:3];
        v28 = [v12 imageByApplyingFilter:@"CIColorMatrix" withInputParameters:v27];

        v12 = v28;
      }

      v29 = [v13 objectForKeyedSubscript:PISemanticStyleFilterStatsGlobalToneCurveOption];
      if (v29)
      {
        v30 = [(PISemanticStyleFilter *)self curveImageWithData:v29];
        v47 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:1.0];
        [v30 extent];
        v32 = [MEMORY[0x1E695F688] vectorWithX:(v31 + -1.0) / v31 Y:0.5 / v31];
        v33 = [v12 imageByUnpremultiplyingAlpha];

        v34 = [(PISemanticStyleFilter *)self gtcKernel];
        [v33 extent];
        v36 = v35;
        v38 = v37;
        v40 = v39;
        v42 = v41;
        v52[0] = v33;
        v52[1] = v30;
        v52[2] = v47;
        v52[3] = v32;
        v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:4];
        v44 = [v34 applyWithExtent:v43 arguments:{v36, v38, v40, v42}];

        v12 = [v44 imageByPremultiplyingAlpha];
      }

      v18 = v49;
      v45 = [v12 localLightStatisticsNoProxy];
      [v17 addEntriesFromDictionary:v45];

      v16 = v50;
    }
  }

  else if (a7)
  {
    [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to compute histogram" object:v12 underlyingError:v16];
    *a7 = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)gtcKernel
{
  if (gtcKernel_once != -1)
  {
    dispatch_once(&gtcKernel_once, &__block_literal_global_194_22862);
  }

  v3 = gtcKernel_singleton;

  return v3;
}

uint64_t __34__PISemanticStyleFilter_gtcKernel__block_invoke()
{
  v0 = [MEMORY[0x1E695F618] kernelWithString:{@"float gtc_sample_r(float x, sampler2D table, vec2 domain, vec2 normalizer) { x = (x - domain.x) / (domain.y - domain.x) x = clamp(x, 0.0001, 0.9999); x = normalizer.x * x + normalizer.y; return texture2D(table, vec2(x, 0.5)).r; } kernel vec4 gtc_rgb(__sample color, sampler2D table, vec2 domain, vec2 normalizer) { vec4 pixel = color; pixel.r = gtc_sample_r(pixel.r, table, domain, normalizer); pixel.g = gtc_sample_r(pixel.g, table, domain, normalizer); pixel.b = gtc_sample_r(pixel.b, table, domain, normalizer); return pixel; }"}];;
  v1 = gtcKernel_singleton;
  gtcKernel_singleton = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)outputImage
{
  v191 = *MEMORY[0x1E69E9840];
  v3 = [(PISemanticStyleFilter *)self inputImage];

  if (!v3)
  {
    v75 = NUAssertLogger_22529();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      v76 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "self.inputImage != nil"];
      *buf = 138543362;
      v188 = v76;
      _os_log_error_impl(&dword_1C7694000, v75, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v77 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v79 = NUAssertLogger_22529();
    v80 = os_log_type_enabled(v79, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v80)
      {
        v118 = dispatch_get_specific(*v77);
        v119 = MEMORY[0x1E696AF00];
        v120 = v118;
        v77 = [v119 callStackSymbols];
        v121 = [v77 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v188 = v118;
        v189 = 2114;
        v190 = v121;
        _os_log_error_impl(&dword_1C7694000, v79, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v80)
    {
      v81 = [MEMORY[0x1E696AF00] callStackSymbols];
      v77 = [v81 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v188 = v77;
      _os_log_error_impl(&dword_1C7694000, v79, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v85 = _NUAssertFailHandler();
    goto LABEL_85;
  }

  v4 = [(PISemanticStyleFilter *)self inputSubjectMatteImage];

  if (!v4)
  {
    v82 = NUAssertLogger_22529();
    if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
    {
      v83 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "self.inputSubjectMatteImage != nil"];
      *buf = 138543362;
      v188 = v83;
      _os_log_error_impl(&dword_1C7694000, v82, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v77 = MEMORY[0x1E69B38E8];
    v84 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v79 = NUAssertLogger_22529();
    v85 = os_log_type_enabled(v79, OS_LOG_TYPE_ERROR);
    if (!v84)
    {
      if (v85)
      {
        v86 = [MEMORY[0x1E696AF00] callStackSymbols];
        v77 = [v86 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v188 = v77;
        _os_log_error_impl(&dword_1C7694000, v79, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_87:

      v90 = _NUAssertFailHandler();
      goto LABEL_88;
    }

LABEL_85:
    if (v85)
    {
      v122 = dispatch_get_specific(*v77);
      v123 = MEMORY[0x1E696AF00];
      v124 = v122;
      v77 = [v123 callStackSymbols];
      v125 = [v77 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v188 = v122;
      v189 = 2114;
      v190 = v125;
      _os_log_error_impl(&dword_1C7694000, v79, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_87;
  }

  v5 = [(PISemanticStyleFilter *)self inputSkinMatteImage];

  if (!v5)
  {
    v87 = NUAssertLogger_22529();
    if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
    {
      v88 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "self.inputSkinMatteImage != nil"];
      *buf = 138543362;
      v188 = v88;
      _os_log_error_impl(&dword_1C7694000, v87, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v77 = MEMORY[0x1E69B38E8];
    v89 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v79 = NUAssertLogger_22529();
    v90 = os_log_type_enabled(v79, OS_LOG_TYPE_ERROR);
    if (!v89)
    {
      if (v90)
      {
        v91 = [MEMORY[0x1E696AF00] callStackSymbols];
        v77 = [v91 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v188 = v77;
        _os_log_error_impl(&dword_1C7694000, v79, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_90:

      v95 = _NUAssertFailHandler();
      goto LABEL_91;
    }

LABEL_88:
    if (v90)
    {
      v126 = dispatch_get_specific(*v77);
      v127 = MEMORY[0x1E696AF00];
      v128 = v126;
      v77 = [v127 callStackSymbols];
      v129 = [v77 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v188 = v126;
      v189 = 2114;
      v190 = v129;
      _os_log_error_impl(&dword_1C7694000, v79, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_90;
  }

  v6 = [(PISemanticStyleFilter *)self inputSkyMatteImage];

  if (!v6)
  {
    v92 = NUAssertLogger_22529();
    if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
    {
      v93 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "self.inputSkyMatteImage != nil"];
      *buf = 138543362;
      v188 = v93;
      _os_log_error_impl(&dword_1C7694000, v92, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v77 = MEMORY[0x1E69B38E8];
    v94 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v79 = NUAssertLogger_22529();
    v95 = os_log_type_enabled(v79, OS_LOG_TYPE_ERROR);
    if (!v94)
    {
      if (v95)
      {
        v96 = [MEMORY[0x1E696AF00] callStackSymbols];
        v77 = [v96 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v188 = v77;
        _os_log_error_impl(&dword_1C7694000, v79, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_93:

      v100 = _NUAssertFailHandler();
      goto LABEL_94;
    }

LABEL_91:
    if (v95)
    {
      v130 = dispatch_get_specific(*v77);
      v131 = MEMORY[0x1E696AF00];
      v132 = v130;
      v77 = [v131 callStackSymbols];
      v133 = [v77 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v188 = v130;
      v189 = 2114;
      v190 = v133;
      _os_log_error_impl(&dword_1C7694000, v79, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_93;
  }

  v7 = [(PISemanticStyleFilter *)self inputLinearThumbnailImage];

  if (!v7)
  {
    v97 = NUAssertLogger_22529();
    if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
    {
      v98 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "self.inputLinearThumbnailImage != nil"];
      *buf = 138543362;
      v188 = v98;
      _os_log_error_impl(&dword_1C7694000, v97, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v77 = MEMORY[0x1E69B38E8];
    v99 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v79 = NUAssertLogger_22529();
    v100 = os_log_type_enabled(v79, OS_LOG_TYPE_ERROR);
    if (!v99)
    {
      if (v100)
      {
        v101 = [MEMORY[0x1E696AF00] callStackSymbols];
        v77 = [v101 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v188 = v77;
        _os_log_error_impl(&dword_1C7694000, v79, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_96:

      v105 = _NUAssertFailHandler();
      goto LABEL_97;
    }

LABEL_94:
    if (v100)
    {
      v134 = dispatch_get_specific(*v77);
      v135 = MEMORY[0x1E696AF00];
      v136 = v134;
      v77 = [v135 callStackSymbols];
      v137 = [v77 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v188 = v134;
      v189 = 2114;
      v190 = v137;
      _os_log_error_impl(&dword_1C7694000, v79, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_96;
  }

  v8 = [(PISemanticStyleFilter *)self inputGainMapImage];

  if (!v8)
  {
    v102 = NUAssertLogger_22529();
    if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
    {
      v103 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "self.inputGainMapImage != nil"];
      *buf = 138543362;
      v188 = v103;
      _os_log_error_impl(&dword_1C7694000, v102, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v77 = MEMORY[0x1E69B38E8];
    v104 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v79 = NUAssertLogger_22529();
    v105 = os_log_type_enabled(v79, OS_LOG_TYPE_ERROR);
    if (!v104)
    {
      if (v105)
      {
        v106 = [MEMORY[0x1E696AF00] callStackSymbols];
        v77 = [v106 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v188 = v77;
        _os_log_error_impl(&dword_1C7694000, v79, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_99:

      v110 = _NUAssertFailHandler();
      goto LABEL_100;
    }

LABEL_97:
    if (v105)
    {
      v138 = dispatch_get_specific(*v77);
      v139 = MEMORY[0x1E696AF00];
      v140 = v138;
      v77 = [v139 callStackSymbols];
      v141 = [v77 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v188 = v138;
      v189 = 2114;
      v190 = v141;
      _os_log_error_impl(&dword_1C7694000, v79, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_99;
  }

  v9 = [(PISemanticStyleFilter *)self inputTRCData];

  if (!v9)
  {
    v107 = NUAssertLogger_22529();
    if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
    {
      v108 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "self.inputTRCData != nil"];
      *buf = 138543362;
      v188 = v108;
      _os_log_error_impl(&dword_1C7694000, v107, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v77 = MEMORY[0x1E69B38E8];
    v109 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v79 = NUAssertLogger_22529();
    v110 = os_log_type_enabled(v79, OS_LOG_TYPE_ERROR);
    if (!v109)
    {
      if (v110)
      {
        v111 = [MEMORY[0x1E696AF00] callStackSymbols];
        v77 = [v111 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v188 = v77;
        _os_log_error_impl(&dword_1C7694000, v79, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_102:

      v115 = _NUAssertFailHandler();
      goto LABEL_103;
    }

LABEL_100:
    if (v110)
    {
      v142 = dispatch_get_specific(*v77);
      v143 = MEMORY[0x1E696AF00];
      v144 = v142;
      v77 = [v143 callStackSymbols];
      v145 = [v77 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v188 = v142;
      v189 = 2114;
      v190 = v145;
      _os_log_error_impl(&dword_1C7694000, v79, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_102;
  }

  v10 = [(PISemanticStyleFilter *)self inputTRCData];
  v11 = [(PISemanticStyleFilter *)self curveImageWithData:v10];

  if (!v11)
  {
    v112 = NUAssertLogger_22529();
    if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
    {
      v113 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to generate TRC image"];
      *buf = 138543362;
      v188 = v113;
      _os_log_error_impl(&dword_1C7694000, v112, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v77 = MEMORY[0x1E69B38E8];
    v114 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v79 = NUAssertLogger_22529();
    v115 = os_log_type_enabled(v79, OS_LOG_TYPE_ERROR);
    if (!v114)
    {
      if (v115)
      {
        v116 = [MEMORY[0x1E696AF00] callStackSymbols];
        v117 = [v116 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v188 = v117;
        _os_log_error_impl(&dword_1C7694000, v79, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_105:

      _NUAssertFailHandler();
      goto LABEL_106;
    }

LABEL_103:
    if (v115)
    {
      v146 = dispatch_get_specific(*v77);
      v147 = MEMORY[0x1E696AF00];
      v148 = v146;
      v149 = [v147 callStackSymbols];
      v150 = [v149 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v188 = v146;
      v189 = 2114;
      v190 = v150;
      _os_log_error_impl(&dword_1C7694000, v79, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_105;
  }

  v12 = [(PISemanticStyleFilter *)self inputLightMapData];
  if (v12)
  {
    v13 = [(PISemanticStyleFilter *)self inputLinearLightMapData];
    if (v13)
    {
      v14 = [(PISemanticStyleFilter *)self inputStatistics];
      v15 = v14 != 0;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = [(PISemanticStyleFilter *)self inputLightMapData];
  v17 = [(PISemanticStyleFilter *)self _lightMapImageWithData:v16];

  v18 = [(PISemanticStyleFilter *)self inputLinearLightMapData];
  v19 = [(PISemanticStyleFilter *)self _lightMapImageWithData:v18];

  if (v15)
  {
    if (v17)
    {
      if (v19)
      {
        goto LABEL_18;
      }

      v158 = NUAssertLogger_22529();
      if (os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
      {
        v159 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to generate linear lightmap image"];
        *buf = 138543362;
        v188 = v159;
        _os_log_error_impl(&dword_1C7694000, v158, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      v153 = MEMORY[0x1E69B38E8];
      v160 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
      v155 = NUAssertLogger_22529();
      v161 = os_log_type_enabled(v155, OS_LOG_TYPE_ERROR);
      if (!v160)
      {
        if (v161)
        {
          v162 = [MEMORY[0x1E696AF00] callStackSymbols];
          v163 = [v162 componentsJoinedByString:@"\n"];
          *buf = 138543362;
          v188 = v163;
          _os_log_error_impl(&dword_1C7694000, v155, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
        }

        goto LABEL_121;
      }

LABEL_119:
      if (v161)
      {
        v168 = dispatch_get_specific(*v153);
        v169 = MEMORY[0x1E696AF00];
        v170 = v168;
        v171 = [v169 callStackSymbols];
        v172 = [v171 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v188 = v168;
        v189 = 2114;
        v190 = v172;
        _os_log_error_impl(&dword_1C7694000, v155, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }

LABEL_121:

      _NUAssertFailHandler();
    }

LABEL_106:
    v151 = NUAssertLogger_22529();
    if (os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
    {
      v152 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to generate lightmap image"];
      *buf = 138543362;
      v188 = v152;
      _os_log_error_impl(&dword_1C7694000, v151, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v153 = MEMORY[0x1E69B38E8];
    v154 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v155 = NUAssertLogger_22529();
    v156 = os_log_type_enabled(v155, OS_LOG_TYPE_ERROR);
    if (v154)
    {
      if (v156)
      {
        v164 = dispatch_get_specific(*v153);
        v165 = MEMORY[0x1E696AF00];
        v166 = v164;
        v153 = [v165 callStackSymbols];
        v167 = [v153 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v188 = v164;
        v189 = 2114;
        v190 = v167;
        _os_log_error_impl(&dword_1C7694000, v155, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v156)
    {
      v157 = [MEMORY[0x1E696AF00] callStackSymbols];
      v153 = [v157 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v188 = v153;
      _os_log_error_impl(&dword_1C7694000, v155, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v161 = _NUAssertFailHandler();
    goto LABEL_119;
  }

LABEL_18:
  v178 = v19;
  [(PISemanticStyleFilter *)self inputImage];
  v20 = v179 = v17;
  v21 = [(PISemanticStyleFilter *)self inputSubjectMatteImage];
  v22 = [(PISemanticStyleFilter *)self inputSkinMatteImage];
  [(PISemanticStyleFilter *)self inputSkyMatteImage];
  v23 = v180 = v11;
  v24 = [(PISemanticStyleFilter *)self inputLinearThumbnailImage];
  v25 = [(PISemanticStyleFilter *)self inputGainMapImage];
  __36__PISemanticStyleFilter_outputImage__block_invoke(v21, v20);
  v27 = v26 = v15;

  v28 = __36__PISemanticStyleFilter_outputImage__block_invoke(v22, v20);

  v29 = __36__PISemanticStyleFilter_outputImage__block_invoke(v23, v20);

  v30 = __36__PISemanticStyleFilter_outputImage__block_invoke(v25, v20);

  v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v175 = v20;
  [v31 addObject:v20];
  v177 = v27;
  [v31 addObject:v27];
  v174 = v28;
  [v31 addObject:v28];
  v173 = v29;
  [v31 addObject:v29];
  v176 = v24;
  v32 = v24;
  v33 = v30;
  [v31 addObject:v32];
  [v31 addObject:v30];
  [v31 addObject:v180];
  if (v26)
  {
    [v31 addObject:v179];
    [v31 addObject:v178];
  }

  v34 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v31, "count")}];
  v182 = 0u;
  v183 = 0u;
  v184 = 0u;
  v185 = 0u;
  v35 = v31;
  v36 = [v35 countByEnumeratingWithState:&v182 objects:v186 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v183;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v183 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = MEMORY[0x1E695F688];
        [*(*(&v182 + 1) + 8 * i) extent];
        v41 = [v40 vectorWithCGRect:?];
        [v34 addObject:v41];
      }

      v37 = [v35 countByEnumeratingWithState:&v182 objects:v186 count:16];
    }

    while (v37);
  }

  v42 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v42 setObject:v34 forKeyedSubscript:@"extents"];
  v43 = MEMORY[0x1E696AD98];
  [(PISemanticStyleFilter *)self inputToneBias];
  v44 = [v43 numberWithDouble:?];
  [v42 setObject:v44 forKeyedSubscript:@"tone"];

  v45 = MEMORY[0x1E696AD98];
  [(PISemanticStyleFilter *)self inputColorBias];
  v46 = [v45 numberWithDouble:?];
  [v42 setObject:v46 forKeyedSubscript:@"color"];

  v47 = [(PISemanticStyleFilter *)self inputCast];
  [v42 setObject:v47 forKeyedSubscript:@"cast"];

  v48 = MEMORY[0x1E696AD98];
  [(PISemanticStyleFilter *)self inputIntensity];
  v49 = [v48 numberWithDouble:?];
  [v42 setObject:v49 forKeyedSubscript:@"intensity"];

  v50 = [(PISemanticStyleFilter *)self inputSRLCurveParameter];
  v51 = v50;
  if (v50)
  {
    v52 = v50;
  }

  else
  {
    v52 = &unk_1F471F9A0;
  }

  [v42 setObject:v52 forKeyedSubscript:@"srlCurveParameter"];

  v53 = [(PISemanticStyleFilter *)self inputSceneType];
  v54 = v53;
  if (v53)
  {
    v55 = v53;
  }

  else
  {
    v55 = &unk_1F471EEC8;
  }

  [v42 setObject:v55 forKeyedSubscript:@"sceneType"];

  v56 = [(PISemanticStyleFilter *)self inputStatistics];
  [v42 setObject:v56 forKeyedSubscript:@"stats"];

  v57 = [(PISemanticStyleFilter *)self inputExtendedStatistics];
  [v42 setObject:v57 forKeyedSubscript:@"xstats"];

  v58 = MEMORY[0x1E696AD98];
  [(PISemanticStyleFilter *)self inputBaselineExposure];
  v59 = [v58 numberWithDouble:?];
  [v42 setObject:v59 forKeyedSubscript:@"baselineExposure"];

  v60 = [MEMORY[0x1E696AD98] numberWithBool:v26];
  [v42 setObject:v60 forKeyedSubscript:@"useLightMap"];

  v61 = objc_opt_class();
  v62 = [(PISemanticStyleFilter *)self tuningType];
  v63 = [v61 CMISmartStyleTuningParameterVariantFromKey:v62];
  [v42 setObject:v63 forKeyedSubscript:@"tuningType"];

  v64 = [MEMORY[0x1E696AD98] numberWithBool:{-[PISemanticStyleFilter useStyleEngine](self, "useStyleEngine")}];
  [v42 setObject:v64 forKeyedSubscript:@"useStyleEngine"];

  v65 = [(PISemanticStyleFilter *)self brightnessValue];
  [v42 setObject:v65 forKeyedSubscript:@"brightnessValue"];

  v66 = [(PISemanticStyleFilter *)self baseGain];
  v67 = v66;
  if (v66)
  {
    v68 = v66;
  }

  else
  {
    v68 = &unk_1F471F9B0;
  }

  [v42 setObject:v68 forKeyedSubscript:@"baseGain"];

  v69 = [(PISemanticStyleFilter *)self faceBasedGlobalExposureBoostRatio];
  v70 = v69;
  if (v69)
  {
    v71 = v69;
  }

  else
  {
    v71 = &unk_1F471F9B0;
  }

  [v42 setObject:v71 forKeyedSubscript:@"faceBasedGlobalExposureBoostRatio"];

  v72 = [(PISemanticStyleFilter *)self inputImage];
  [v72 extent];
  v181 = 0;
  v73 = [(CIImageProcessorKernel *)PISemanticStyleProcessor applyWithExtent:v35 inputs:v42 arguments:&v181 error:?];

  return v73;
}

id __36__PISemanticStyleFilter_outputImage__block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v4 extent];
  [v3 extent];

  NUCGAffineTransformByMappingFromRectToRect();
  v5 = [v4 imageByApplyingTransform:&v7];

  return v5;
}

- (id)_lightMapImageWithData:(id)a3
{
  v29[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [(PISemanticStyleFilter *)self inputLightMapWidth];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = &unk_1F471EEB0;
    }

    v8 = v7;

    v9 = [(PISemanticStyleFilter *)self inputLightMapHeight];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = &unk_1F471EEB0;
    }

    v12 = v11;

    v13 = [v8 intValue];
    v14 = [v12 intValue];

    v28[0] = *MEMORY[0x1E695F9A8];
    v15 = [MEMORY[0x1E695DFB0] null];
    v28[1] = *MEMORY[0x1E695F9B8];
    v29[0] = v15;
    v29[1] = MEMORY[0x1E695E118];
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];

    v17 = 2 * v13;
    if (v14 * v17 == [v4 length])
    {
      v19 = [MEMORY[0x1E695F658] imageWithBitmapData:v4 bytesPerRow:2 * v13 size:*MEMORY[0x1E695F930] format:v16 options:{v13, v14}];
    }

    else
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_405);
      }

      v18 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
      {
        v21 = v18;
        v22 = 134218496;
        v23 = [v4 length];
        v24 = 2048;
        v25 = v17;
        v26 = 2048;
        v27 = v14;
        _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Light Map dimension mismatch: %lu, expected %lu * %lu", &v22, 0x20u);
      }

      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)curveImageWithData:(id)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = ([v3 length] >> 2);
  v11[0] = *MEMORY[0x1E695F9A8];
  v5 = [MEMORY[0x1E695DFB0] null];
  v11[1] = *MEMORY[0x1E695F9B8];
  v12[0] = v5;
  v12[1] = MEMORY[0x1E695E110];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

  v7 = MEMORY[0x1E695F658];
  v8 = [v3 length];
  v9 = [v7 imageWithBitmapData:v3 bytesPerRow:v8 size:*MEMORY[0x1E695F928] format:v6 options:{v4, 1.0}];

  return v9;
}

@end
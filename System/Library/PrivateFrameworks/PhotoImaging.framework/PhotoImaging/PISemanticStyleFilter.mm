@interface PISemanticStyleFilter
+ (id)CMISmartStyleTuningParameterVariantFromKey:(id)key;
+ (id)_computeAlphaAwareHistogramForImage:(id)image context:(id)context colorSpace:(CGColorSpace *)space error:(id *)error;
+ (id)_computeSmartToneStatsFromHistogram:(id)histogram;
+ (id)stylePriorDataForCast:(id)cast tone:(float)tone color:(float)color intensity:(float)intensity priorStrength:(float)strength;
+ (id)styleTuningParametersForCast:(id)cast;
- (id)_lightMapImageWithData:(id)data;
- (id)curveImageWithData:(id)data;
- (id)extractDataToDictionary:(id)dictionary options:(id)options context:(id)context colorSpace:(CGColorSpace *)space error:(id *)error;
- (id)gtcKernel;
- (id)outputImage;
@end

@implementation PISemanticStyleFilter

+ (id)styleTuningParametersForCast:(id)cast
{
  v24 = *MEMORY[0x1E69E9840];
  castCopy = cast;
  if (!castCopy)
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
        callStackSymbols = [v16 callStackSymbols];
        v19 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v15;
        v22 = 2114;
        v23 = v19;
        _os_log_error_impl(&dword_1C7694000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v12)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v14;
      _os_log_error_impl(&dword_1C7694000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v4 = castCopy;
  v5 = [MEMORY[0x1E6991708] styleEngineSpecificTuningForTuningVariant:*MEMORY[0x1E69916A8] andCast:castCopy];

  return v5;
}

+ (id)CMISmartStyleTuningParameterVariantFromKey:(id)key
{
  v3 = [key intValue] - 2;
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

+ (id)stylePriorDataForCast:(id)cast tone:(float)tone color:(float)color intensity:(float)intensity priorStrength:(float)strength
{
  castCopy = cast;
  if ([castCopy isEqualToString:@"None"])
  {
    v16 = 0;
  }

  else
  {
    *&v12 = tone;
    *&v13 = color;
    *&v14 = intensity;
    *&v15 = strength;
    [MEMORY[0x1E6991700] calculatePriorCCMforCast:castCopy tone:v12 color:v13 intensity:v14 priorStrength:v15];
    v21[0] = v17;
    v21[1] = v18;
    v21[2] = v19;
    v16 = [MEMORY[0x1E695DEF0] dataWithBytes:v21 length:48];
  }

  return v16;
}

+ (id)_computeSmartToneStatsFromHistogram:(id)histogram
{
  v43[10] = *MEMORY[0x1E69E9840];
  luminance = [histogram luminance];
  if ([luminance binCount] <= 512)
  {
    binCount = [luminance binCount];
    if (binCount < 1)
    {
      v8 = 0.0;
      v7 = 0.0;
      goto LABEL_6;
    }
  }

  else
  {
    binCount = 512;
  }

  v5 = 0;
  v6 = binCount;
  v7 = 0.0;
  v8 = 0.0;
  do
  {
    v9 = fmin(v5 / 255.0, 1.0);
    v10 = *([luminance values] + 8 * v5);
    v11 = v10 / [luminance sampleCount];
    v7 = v7 + v11 * log(v9 + 0.00392156863);
    v8 = v8 + v11 * log(1.0 - v9 + 0.00392156863);
    ++v5;
  }

  while (v6 != v5);
LABEL_6:
  v12 = exp(v7);
  v13 = exp(v8);
  [luminance percentile:0.02];
  v15 = v14;
  [luminance percentile:0.1];
  v17 = v16;
  [luminance percentile:0.25];
  v19 = v18;
  [luminance percentile:0.5];
  v21 = v20;
  [luminance percentile:0.75];
  v38 = v22;
  [luminance percentile:0.98];
  v39 = v23;
  [luminance percentile:0.001];
  v25 = v24 * ((sqrt(v24) * -0.65 + 1.0) * 0.85);
  [luminance percentile:1.0];
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

+ (id)_computeAlphaAwareHistogramForImage:(id)image context:(id)context colorSpace:(CGColorSpace *)space error:(id *)error
{
  v45 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  contextCopy = context;
  if (!error)
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
        callStackSymbols = [v39 callStackSymbols];
        v42 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v38;
        *&buf[12] = 2114;
        *&buf[14] = v42;
        _os_log_error_impl(&dword_1C7694000, v34, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v35)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v37 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v37;
      _os_log_error_impl(&dword_1C7694000, v34, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v11 = contextCopy;
  v12 = objc_alloc_init(MEMORY[0x1E69B3958]);
  LODWORD(v13) = *(MEMORY[0x1E69B38F0] + 48);
  LODWORD(v14) = *(MEMORY[0x1E69B38F0] + 52);
  LODWORD(v15) = *(MEMORY[0x1E69B38F0] + 56);
  LODWORD(v16) = *(MEMORY[0x1E69B38F0] + 60);
  [v12 setLuminanceWeights:{v13, v14, v15, v16}];
  memset(buf, 0, 32);
  [imageCopy extent];
  NUPixelRectFromCGRect();
  bGRA8 = [MEMORY[0x1E69B3BF0] BGRA8];
  v18 = [bGRA8 alignedRowBytesForWidth:0];

  v19 = [MEMORY[0x1E695DF88] dataWithLength:0];
  mutableBytes = [v19 mutableBytes];
  [imageCopy extent];
  [v11 render:imageCopy toBitmap:mutableBytes rowBytes:v18 bounds:*MEMORY[0x1E695F8A8] format:space colorSpace:?];
  v21 = objc_alloc(MEMORY[0x1E69B3988]);
  bGRA82 = [MEMORY[0x1E69B3BF0] BGRA8];
  v23 = [v21 initWithSize:0 format:bGRA82 rowBytes:v18 bytes:{objc_msgSend(v19, "bytes")}];

  v43 = 0;
  v24 = [v12 computeHistogramFromBuffer:v23 error:&v43];
  if (!v24)
  {
    v25 = MEMORY[0x1E69B3A48];
    v26 = v43;
    v27 = [v25 errorWithCode:1 reason:@"Failed to compute histogram" object:v12 underlyingError:v26];
    v28 = v27;

    *error = v27;
  }

  return v24;
}

- (id)extractDataToDictionary:(id)dictionary options:(id)options context:(id)context colorSpace:(CGColorSpace *)space error:(id *)error
{
  v54[3] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  optionsCopy = options;
  contextCopy = context;
  v51 = 0;
  v15 = [objc_opt_class() _computeAlphaAwareHistogramForImage:dictionaryCopy context:contextCopy colorSpace:space error:&v51];

  v16 = v51;
  if (v15)
  {
    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v18 = [objc_opt_class() _computeSmartToneStatsFromHistogram:v15];
    [v17 addEntriesFromDictionary:v18];
    v19 = [optionsCopy objectForKeyedSubscript:PISemanticStyleFilterStatsLocalOption];
    bOOLValue = [v19 BOOLValue];

    if (bOOLValue)
    {
      v49 = v18;
      v50 = v16;
      v21 = [optionsCopy objectForKeyedSubscript:PISemanticStyleFilterStatsBaselineExposureOption];
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
        v28 = [dictionaryCopy imageByApplyingFilter:@"CIColorMatrix" withInputParameters:v27];

        dictionaryCopy = v28;
      }

      v29 = [optionsCopy objectForKeyedSubscript:PISemanticStyleFilterStatsGlobalToneCurveOption];
      if (v29)
      {
        v30 = [(PISemanticStyleFilter *)self curveImageWithData:v29];
        v47 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:1.0];
        [v30 extent];
        v32 = [MEMORY[0x1E695F688] vectorWithX:(v31 + -1.0) / v31 Y:0.5 / v31];
        imageByUnpremultiplyingAlpha = [dictionaryCopy imageByUnpremultiplyingAlpha];

        gtcKernel = [(PISemanticStyleFilter *)self gtcKernel];
        [imageByUnpremultiplyingAlpha extent];
        v36 = v35;
        v38 = v37;
        v40 = v39;
        v42 = v41;
        v52[0] = imageByUnpremultiplyingAlpha;
        v52[1] = v30;
        v52[2] = v47;
        v52[3] = v32;
        v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:4];
        v44 = [gtcKernel applyWithExtent:v43 arguments:{v36, v38, v40, v42}];

        dictionaryCopy = [v44 imageByPremultiplyingAlpha];
      }

      v18 = v49;
      localLightStatisticsNoProxy = [dictionaryCopy localLightStatisticsNoProxy];
      [v17 addEntriesFromDictionary:localLightStatisticsNoProxy];

      v16 = v50;
    }
  }

  else if (error)
  {
    [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to compute histogram" object:dictionaryCopy underlyingError:v16];
    *error = v17 = 0;
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
  inputImage = [(PISemanticStyleFilter *)self inputImage];

  if (!inputImage)
  {
    v75 = NUAssertLogger_22529();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      v76 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "self.inputImage != nil"];
      *buf = 138543362;
      v188 = v76;
      _os_log_error_impl(&dword_1C7694000, v75, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v79 = NUAssertLogger_22529();
    v80 = os_log_type_enabled(v79, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v80)
      {
        v118 = dispatch_get_specific(*callStackSymbols);
        v119 = MEMORY[0x1E696AF00];
        v120 = v118;
        callStackSymbols = [v119 callStackSymbols];
        v121 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v188 = v118;
        v189 = 2114;
        v190 = v121;
        _os_log_error_impl(&dword_1C7694000, v79, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v80)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v188 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v79, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v85 = _NUAssertFailHandler();
    goto LABEL_85;
  }

  inputSubjectMatteImage = [(PISemanticStyleFilter *)self inputSubjectMatteImage];

  if (!inputSubjectMatteImage)
  {
    v82 = NUAssertLogger_22529();
    if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
    {
      v83 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "self.inputSubjectMatteImage != nil"];
      *buf = 138543362;
      v188 = v83;
      _os_log_error_impl(&dword_1C7694000, v82, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v84 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v79 = NUAssertLogger_22529();
    v85 = os_log_type_enabled(v79, OS_LOG_TYPE_ERROR);
    if (!v84)
    {
      if (v85)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        callStackSymbols = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v188 = callStackSymbols;
        _os_log_error_impl(&dword_1C7694000, v79, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_87:

      v90 = _NUAssertFailHandler();
      goto LABEL_88;
    }

LABEL_85:
    if (v85)
    {
      v122 = dispatch_get_specific(*callStackSymbols);
      v123 = MEMORY[0x1E696AF00];
      v124 = v122;
      callStackSymbols = [v123 callStackSymbols];
      v125 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v188 = v122;
      v189 = 2114;
      v190 = v125;
      _os_log_error_impl(&dword_1C7694000, v79, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_87;
  }

  inputSkinMatteImage = [(PISemanticStyleFilter *)self inputSkinMatteImage];

  if (!inputSkinMatteImage)
  {
    v87 = NUAssertLogger_22529();
    if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
    {
      v88 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "self.inputSkinMatteImage != nil"];
      *buf = 138543362;
      v188 = v88;
      _os_log_error_impl(&dword_1C7694000, v87, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v89 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v79 = NUAssertLogger_22529();
    v90 = os_log_type_enabled(v79, OS_LOG_TYPE_ERROR);
    if (!v89)
    {
      if (v90)
      {
        callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
        callStackSymbols = [callStackSymbols4 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v188 = callStackSymbols;
        _os_log_error_impl(&dword_1C7694000, v79, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_90:

      v95 = _NUAssertFailHandler();
      goto LABEL_91;
    }

LABEL_88:
    if (v90)
    {
      v126 = dispatch_get_specific(*callStackSymbols);
      v127 = MEMORY[0x1E696AF00];
      v128 = v126;
      callStackSymbols = [v127 callStackSymbols];
      v129 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v188 = v126;
      v189 = 2114;
      v190 = v129;
      _os_log_error_impl(&dword_1C7694000, v79, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_90;
  }

  inputSkyMatteImage = [(PISemanticStyleFilter *)self inputSkyMatteImage];

  if (!inputSkyMatteImage)
  {
    v92 = NUAssertLogger_22529();
    if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
    {
      v93 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "self.inputSkyMatteImage != nil"];
      *buf = 138543362;
      v188 = v93;
      _os_log_error_impl(&dword_1C7694000, v92, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v94 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v79 = NUAssertLogger_22529();
    v95 = os_log_type_enabled(v79, OS_LOG_TYPE_ERROR);
    if (!v94)
    {
      if (v95)
      {
        callStackSymbols5 = [MEMORY[0x1E696AF00] callStackSymbols];
        callStackSymbols = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v188 = callStackSymbols;
        _os_log_error_impl(&dword_1C7694000, v79, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_93:

      v100 = _NUAssertFailHandler();
      goto LABEL_94;
    }

LABEL_91:
    if (v95)
    {
      v130 = dispatch_get_specific(*callStackSymbols);
      v131 = MEMORY[0x1E696AF00];
      v132 = v130;
      callStackSymbols = [v131 callStackSymbols];
      v133 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v188 = v130;
      v189 = 2114;
      v190 = v133;
      _os_log_error_impl(&dword_1C7694000, v79, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_93;
  }

  inputLinearThumbnailImage = [(PISemanticStyleFilter *)self inputLinearThumbnailImage];

  if (!inputLinearThumbnailImage)
  {
    v97 = NUAssertLogger_22529();
    if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
    {
      v98 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "self.inputLinearThumbnailImage != nil"];
      *buf = 138543362;
      v188 = v98;
      _os_log_error_impl(&dword_1C7694000, v97, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v99 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v79 = NUAssertLogger_22529();
    v100 = os_log_type_enabled(v79, OS_LOG_TYPE_ERROR);
    if (!v99)
    {
      if (v100)
      {
        callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
        callStackSymbols = [callStackSymbols6 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v188 = callStackSymbols;
        _os_log_error_impl(&dword_1C7694000, v79, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_96:

      v105 = _NUAssertFailHandler();
      goto LABEL_97;
    }

LABEL_94:
    if (v100)
    {
      v134 = dispatch_get_specific(*callStackSymbols);
      v135 = MEMORY[0x1E696AF00];
      v136 = v134;
      callStackSymbols = [v135 callStackSymbols];
      v137 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v188 = v134;
      v189 = 2114;
      v190 = v137;
      _os_log_error_impl(&dword_1C7694000, v79, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_96;
  }

  inputGainMapImage = [(PISemanticStyleFilter *)self inputGainMapImage];

  if (!inputGainMapImage)
  {
    v102 = NUAssertLogger_22529();
    if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
    {
      v103 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "self.inputGainMapImage != nil"];
      *buf = 138543362;
      v188 = v103;
      _os_log_error_impl(&dword_1C7694000, v102, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v104 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v79 = NUAssertLogger_22529();
    v105 = os_log_type_enabled(v79, OS_LOG_TYPE_ERROR);
    if (!v104)
    {
      if (v105)
      {
        callStackSymbols7 = [MEMORY[0x1E696AF00] callStackSymbols];
        callStackSymbols = [callStackSymbols7 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v188 = callStackSymbols;
        _os_log_error_impl(&dword_1C7694000, v79, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_99:

      v110 = _NUAssertFailHandler();
      goto LABEL_100;
    }

LABEL_97:
    if (v105)
    {
      v138 = dispatch_get_specific(*callStackSymbols);
      v139 = MEMORY[0x1E696AF00];
      v140 = v138;
      callStackSymbols = [v139 callStackSymbols];
      v141 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v188 = v138;
      v189 = 2114;
      v190 = v141;
      _os_log_error_impl(&dword_1C7694000, v79, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_99;
  }

  inputTRCData = [(PISemanticStyleFilter *)self inputTRCData];

  if (!inputTRCData)
  {
    v107 = NUAssertLogger_22529();
    if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
    {
      v108 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "self.inputTRCData != nil"];
      *buf = 138543362;
      v188 = v108;
      _os_log_error_impl(&dword_1C7694000, v107, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v109 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v79 = NUAssertLogger_22529();
    v110 = os_log_type_enabled(v79, OS_LOG_TYPE_ERROR);
    if (!v109)
    {
      if (v110)
      {
        callStackSymbols8 = [MEMORY[0x1E696AF00] callStackSymbols];
        callStackSymbols = [callStackSymbols8 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v188 = callStackSymbols;
        _os_log_error_impl(&dword_1C7694000, v79, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_102:

      v115 = _NUAssertFailHandler();
      goto LABEL_103;
    }

LABEL_100:
    if (v110)
    {
      v142 = dispatch_get_specific(*callStackSymbols);
      v143 = MEMORY[0x1E696AF00];
      v144 = v142;
      callStackSymbols = [v143 callStackSymbols];
      v145 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v188 = v142;
      v189 = 2114;
      v190 = v145;
      _os_log_error_impl(&dword_1C7694000, v79, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_102;
  }

  inputTRCData2 = [(PISemanticStyleFilter *)self inputTRCData];
  v11 = [(PISemanticStyleFilter *)self curveImageWithData:inputTRCData2];

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

    callStackSymbols = MEMORY[0x1E69B38E8];
    v114 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v79 = NUAssertLogger_22529();
    v115 = os_log_type_enabled(v79, OS_LOG_TYPE_ERROR);
    if (!v114)
    {
      if (v115)
      {
        callStackSymbols9 = [MEMORY[0x1E696AF00] callStackSymbols];
        v117 = [callStackSymbols9 componentsJoinedByString:@"\n"];
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
      v146 = dispatch_get_specific(*callStackSymbols);
      v147 = MEMORY[0x1E696AF00];
      v148 = v146;
      callStackSymbols10 = [v147 callStackSymbols];
      v150 = [callStackSymbols10 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v188 = v146;
      v189 = 2114;
      v190 = v150;
      _os_log_error_impl(&dword_1C7694000, v79, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_105;
  }

  inputLightMapData = [(PISemanticStyleFilter *)self inputLightMapData];
  if (inputLightMapData)
  {
    inputLinearLightMapData = [(PISemanticStyleFilter *)self inputLinearLightMapData];
    if (inputLinearLightMapData)
    {
      inputStatistics = [(PISemanticStyleFilter *)self inputStatistics];
      v15 = inputStatistics != 0;
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

  inputLightMapData2 = [(PISemanticStyleFilter *)self inputLightMapData];
  v17 = [(PISemanticStyleFilter *)self _lightMapImageWithData:inputLightMapData2];

  inputLinearLightMapData2 = [(PISemanticStyleFilter *)self inputLinearLightMapData];
  v19 = [(PISemanticStyleFilter *)self _lightMapImageWithData:inputLinearLightMapData2];

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

      callStackSymbols13 = MEMORY[0x1E69B38E8];
      v160 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
      v155 = NUAssertLogger_22529();
      v161 = os_log_type_enabled(v155, OS_LOG_TYPE_ERROR);
      if (!v160)
      {
        if (v161)
        {
          callStackSymbols11 = [MEMORY[0x1E696AF00] callStackSymbols];
          v163 = [callStackSymbols11 componentsJoinedByString:@"\n"];
          *buf = 138543362;
          v188 = v163;
          _os_log_error_impl(&dword_1C7694000, v155, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
        }

        goto LABEL_121;
      }

LABEL_119:
      if (v161)
      {
        v168 = dispatch_get_specific(*callStackSymbols13);
        v169 = MEMORY[0x1E696AF00];
        v170 = v168;
        callStackSymbols12 = [v169 callStackSymbols];
        v172 = [callStackSymbols12 componentsJoinedByString:@"\n"];
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

    callStackSymbols13 = MEMORY[0x1E69B38E8];
    v154 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v155 = NUAssertLogger_22529();
    v156 = os_log_type_enabled(v155, OS_LOG_TYPE_ERROR);
    if (v154)
    {
      if (v156)
      {
        v164 = dispatch_get_specific(*callStackSymbols13);
        v165 = MEMORY[0x1E696AF00];
        v166 = v164;
        callStackSymbols13 = [v165 callStackSymbols];
        v167 = [callStackSymbols13 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v188 = v164;
        v189 = 2114;
        v190 = v167;
        _os_log_error_impl(&dword_1C7694000, v155, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v156)
    {
      callStackSymbols14 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols13 = [callStackSymbols14 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v188 = callStackSymbols13;
      _os_log_error_impl(&dword_1C7694000, v155, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v161 = _NUAssertFailHandler();
    goto LABEL_119;
  }

LABEL_18:
  v178 = v19;
  [(PISemanticStyleFilter *)self inputImage];
  v20 = v179 = v17;
  inputSubjectMatteImage2 = [(PISemanticStyleFilter *)self inputSubjectMatteImage];
  inputSkinMatteImage2 = [(PISemanticStyleFilter *)self inputSkinMatteImage];
  [(PISemanticStyleFilter *)self inputSkyMatteImage];
  v23 = v180 = v11;
  inputLinearThumbnailImage2 = [(PISemanticStyleFilter *)self inputLinearThumbnailImage];
  inputGainMapImage2 = [(PISemanticStyleFilter *)self inputGainMapImage];
  __36__PISemanticStyleFilter_outputImage__block_invoke(inputSubjectMatteImage2, v20);
  v27 = v26 = v15;

  v28 = __36__PISemanticStyleFilter_outputImage__block_invoke(inputSkinMatteImage2, v20);

  v29 = __36__PISemanticStyleFilter_outputImage__block_invoke(v23, v20);

  v30 = __36__PISemanticStyleFilter_outputImage__block_invoke(inputGainMapImage2, v20);

  v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v175 = v20;
  [v31 addObject:v20];
  v177 = v27;
  [v31 addObject:v27];
  v174 = v28;
  [v31 addObject:v28];
  v173 = v29;
  [v31 addObject:v29];
  v176 = inputLinearThumbnailImage2;
  v32 = inputLinearThumbnailImage2;
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

  inputCast = [(PISemanticStyleFilter *)self inputCast];
  [v42 setObject:inputCast forKeyedSubscript:@"cast"];

  v48 = MEMORY[0x1E696AD98];
  [(PISemanticStyleFilter *)self inputIntensity];
  v49 = [v48 numberWithDouble:?];
  [v42 setObject:v49 forKeyedSubscript:@"intensity"];

  inputSRLCurveParameter = [(PISemanticStyleFilter *)self inputSRLCurveParameter];
  v51 = inputSRLCurveParameter;
  if (inputSRLCurveParameter)
  {
    v52 = inputSRLCurveParameter;
  }

  else
  {
    v52 = &unk_1F471F9A0;
  }

  [v42 setObject:v52 forKeyedSubscript:@"srlCurveParameter"];

  inputSceneType = [(PISemanticStyleFilter *)self inputSceneType];
  v54 = inputSceneType;
  if (inputSceneType)
  {
    v55 = inputSceneType;
  }

  else
  {
    v55 = &unk_1F471EEC8;
  }

  [v42 setObject:v55 forKeyedSubscript:@"sceneType"];

  inputStatistics2 = [(PISemanticStyleFilter *)self inputStatistics];
  [v42 setObject:inputStatistics2 forKeyedSubscript:@"stats"];

  inputExtendedStatistics = [(PISemanticStyleFilter *)self inputExtendedStatistics];
  [v42 setObject:inputExtendedStatistics forKeyedSubscript:@"xstats"];

  v58 = MEMORY[0x1E696AD98];
  [(PISemanticStyleFilter *)self inputBaselineExposure];
  v59 = [v58 numberWithDouble:?];
  [v42 setObject:v59 forKeyedSubscript:@"baselineExposure"];

  v60 = [MEMORY[0x1E696AD98] numberWithBool:v26];
  [v42 setObject:v60 forKeyedSubscript:@"useLightMap"];

  v61 = objc_opt_class();
  tuningType = [(PISemanticStyleFilter *)self tuningType];
  v63 = [v61 CMISmartStyleTuningParameterVariantFromKey:tuningType];
  [v42 setObject:v63 forKeyedSubscript:@"tuningType"];

  v64 = [MEMORY[0x1E696AD98] numberWithBool:{-[PISemanticStyleFilter useStyleEngine](self, "useStyleEngine")}];
  [v42 setObject:v64 forKeyedSubscript:@"useStyleEngine"];

  brightnessValue = [(PISemanticStyleFilter *)self brightnessValue];
  [v42 setObject:brightnessValue forKeyedSubscript:@"brightnessValue"];

  baseGain = [(PISemanticStyleFilter *)self baseGain];
  v67 = baseGain;
  if (baseGain)
  {
    v68 = baseGain;
  }

  else
  {
    v68 = &unk_1F471F9B0;
  }

  [v42 setObject:v68 forKeyedSubscript:@"baseGain"];

  faceBasedGlobalExposureBoostRatio = [(PISemanticStyleFilter *)self faceBasedGlobalExposureBoostRatio];
  v70 = faceBasedGlobalExposureBoostRatio;
  if (faceBasedGlobalExposureBoostRatio)
  {
    v71 = faceBasedGlobalExposureBoostRatio;
  }

  else
  {
    v71 = &unk_1F471F9B0;
  }

  [v42 setObject:v71 forKeyedSubscript:@"faceBasedGlobalExposureBoostRatio"];

  inputImage2 = [(PISemanticStyleFilter *)self inputImage];
  [inputImage2 extent];
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

- (id)_lightMapImageWithData:(id)data
{
  v29[2] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (dataCopy)
  {
    inputLightMapWidth = [(PISemanticStyleFilter *)self inputLightMapWidth];
    v6 = inputLightMapWidth;
    if (inputLightMapWidth)
    {
      v7 = inputLightMapWidth;
    }

    else
    {
      v7 = &unk_1F471EEB0;
    }

    v8 = v7;

    inputLightMapHeight = [(PISemanticStyleFilter *)self inputLightMapHeight];
    v10 = inputLightMapHeight;
    if (inputLightMapHeight)
    {
      v11 = inputLightMapHeight;
    }

    else
    {
      v11 = &unk_1F471EEB0;
    }

    v12 = v11;

    intValue = [v8 intValue];
    intValue2 = [v12 intValue];

    v28[0] = *MEMORY[0x1E695F9A8];
    null = [MEMORY[0x1E695DFB0] null];
    v28[1] = *MEMORY[0x1E695F9B8];
    v29[0] = null;
    v29[1] = MEMORY[0x1E695E118];
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];

    v17 = 2 * intValue;
    if (intValue2 * v17 == [dataCopy length])
    {
      v19 = [MEMORY[0x1E695F658] imageWithBitmapData:dataCopy bytesPerRow:2 * intValue size:*MEMORY[0x1E695F930] format:v16 options:{intValue, intValue2}];
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
        v23 = [dataCopy length];
        v24 = 2048;
        v25 = v17;
        v26 = 2048;
        v27 = intValue2;
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

- (id)curveImageWithData:(id)data
{
  v12[2] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v4 = ([dataCopy length] >> 2);
  v11[0] = *MEMORY[0x1E695F9A8];
  null = [MEMORY[0x1E695DFB0] null];
  v11[1] = *MEMORY[0x1E695F9B8];
  v12[0] = null;
  v12[1] = MEMORY[0x1E695E110];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

  v7 = MEMORY[0x1E695F658];
  v8 = [dataCopy length];
  v9 = [v7 imageWithBitmapData:dataCopy bytesPerRow:v8 size:*MEMORY[0x1E695F928] format:v6 options:{v4, 1.0}];

  return v9;
}

@end
@interface PIIPTHueChromaFilter
+ (id)convertHueChromaImageToIPT:(id)t;
+ (id)convertHueChromaImageToRGB:(id)b;
+ (id)convertIPTImageToHueChroma:(id)chroma;
+ (id)convertIPTImageToRGB:(id)b;
+ (id)convertRGBImageToHueChroma:(id)chroma;
+ (id)convertRGBImageToIPT:(id)t;
+ (id)denormalizeHueChromaImage:(id)image;
+ (id)hueChromaKernels;
+ (id)kernelNamed:(id)named;
+ (id)normalizeHueChromaImage:(id)image;
@end

@implementation PIIPTHueChromaFilter

+ (id)convertHueChromaImageToRGB:(id)b
{
  v4 = [self convertHueChromaImageToIPT:b];
  v5 = [self convertIPTImageToRGB:v4];

  return v5;
}

+ (id)convertRGBImageToHueChroma:(id)chroma
{
  v4 = [self convertRGBImageToIPT:chroma];
  v5 = [self convertIPTImageToHueChroma:v4];

  return v5;
}

+ (id)convertHueChromaImageToIPT:(id)t
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (t)
  {
    tCopy = t;
    v4 = [objc_opt_class() kernelNamed:@"ipt_from_hue_chroma"];
    [tCopy extent];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v16[0] = tCopy;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];

    v14 = [v4 applyWithExtent:v13 arguments:{v6, v8, v10, v12}];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)convertIPTImageToHueChroma:(id)chroma
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (chroma)
  {
    chromaCopy = chroma;
    v4 = [objc_opt_class() kernelNamed:@"ipt_to_hue_chroma"];
    [chromaCopy extent];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v16[0] = chromaCopy;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];

    v14 = [v4 applyWithExtent:v13 arguments:{v6, v8, v10, v12}];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)convertIPTImageToRGB:(id)b
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (b)
  {
    bCopy = b;
    v4 = [objc_opt_class() kernelNamed:@"ipt_to_srgb"];
    [bCopy extent];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v16[0] = bCopy;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];

    v14 = [v4 applyWithExtent:v13 arguments:{v6, v8, v10, v12}];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)convertRGBImageToIPT:(id)t
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (t)
  {
    tCopy = t;
    v4 = [objc_opt_class() kernelNamed:@"ipt_from_srgb"];
    [tCopy extent];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v16[0] = tCopy;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];

    v14 = [v4 applyWithExtent:v13 arguments:{v6, v8, v10, v12}];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)denormalizeHueChromaImage:(id)image
{
  v36 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  if (!imageCopy)
  {
    v18 = NUAssertLogger_3023();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "image != nil"];
      *buf = 138543362;
      v33 = v19;
      _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v20 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v22 = NUAssertLogger_3023();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v23)
      {
        v26 = dispatch_get_specific(*v20);
        v27 = MEMORY[0x1E696AF00];
        v28 = v26;
        callStackSymbols = [v27 callStackSymbols];
        v30 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v33 = v26;
        v34 = 2114;
        v35 = v30;
        _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v33 = v25;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v4 = imageCopy;
  scaleHueKernel = [objc_opt_class() scaleHueKernel];
  [v4 extent];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v31[0] = v4;
  v14 = [MEMORY[0x1E695F688] vectorWithX:6.28318531 Y:-3.14159265];
  v31[1] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
  v16 = [scaleHueKernel applyWithExtent:v15 arguments:{v7, v9, v11, v13}];

  return v16;
}

+ (id)normalizeHueChromaImage:(id)image
{
  v36 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  if (!imageCopy)
  {
    v18 = NUAssertLogger_3023();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "image != nil"];
      *buf = 138543362;
      v33 = v19;
      _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v20 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v22 = NUAssertLogger_3023();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v23)
      {
        v26 = dispatch_get_specific(*v20);
        v27 = MEMORY[0x1E696AF00];
        v28 = v26;
        callStackSymbols = [v27 callStackSymbols];
        v30 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v33 = v26;
        v34 = 2114;
        v35 = v30;
        _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v33 = v25;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v4 = imageCopy;
  scaleHueKernel = [objc_opt_class() scaleHueKernel];
  [v4 extent];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v31[0] = v4;
  v14 = [MEMORY[0x1E695F688] vectorWithX:0.159154943 Y:0.5];
  v31[1] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
  v16 = [scaleHueKernel applyWithExtent:v15 arguments:{v7, v9, v11, v13}];

  return v16;
}

+ (id)kernelNamed:(id)named
{
  v26 = *MEMORY[0x1E69E9840];
  namedCopy = named;
  if (!namedCopy)
  {
    v9 = NUAssertLogger_3023();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "name != nil"];
      *buf = 138543362;
      v23 = v10;
      _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v11 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v13 = NUAssertLogger_3023();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v14)
      {
        v17 = dispatch_get_specific(*v11);
        v18 = MEMORY[0x1E696AF00];
        v19 = v17;
        callStackSymbols = [v18 callStackSymbols];
        v21 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v23 = v17;
        v24 = 2114;
        v25 = v21;
        _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v23 = v16;
      _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v5 = namedCopy;
  hueChromaKernels = [self hueChromaKernels];
  v7 = [hueChromaKernels objectForKeyedSubscript:v5];

  return v7;
}

+ (id)hueChromaKernels
{
  if (hueChromaKernels_onceToken != -1)
  {
    dispatch_once(&hueChromaKernels_onceToken, &__block_literal_global_3049);
  }

  v3 = hueChromaKernels_kernels;

  return v3;
}

uint64_t __40__PIIPTHueChromaFilter_hueChromaKernels__block_invoke()
{
  v0 = [MEMORY[0x1E695F660] kernelsDictionaryWithString:{@"kernel vec4 ipt_from_srgb(__sample im)\n{\nvec3 lms = im.r * vec3(0.3139902162, 0.15537240628, 0.01775238698) +\nim.g * vec3(0.63951293834, 0.75789446163, 0.1094420944) +\nim.b * vec3(0.04649754622, 0.08670141862, 0.87256922462)\nlms = sign(lms)*pow(abs(lms), vec3(0.43));\nvec3 ipt = lms.r * vec3(0.4, 4.455, 0.8056) +\nlms.g * vec3(0.4, -4.851, 0.3572) +\nlms.b * vec3(0.2, 0.396, -1.1628);\nreturn vec4(ipt, im.a);\n}\nkernel vec4 ipt_to_srgb(__sample ipt)\n{\nvec3 lms = ipt.r * vec3(1.0000, 1.0000, 1.0000) +\nipt.g * vec3(0.0976, -0.1139, 0.0326) +\nipt.b * vec3(0.2052, 0.1332, -0.6769);\nlms = sign(lms)*pow(abs(lms), vec3(1.0/.43));\nvec3 im = lms.r * vec3(5.472212058380287, -1.125241895533569, 0.029801651173470) +\nlms.g * vec3(-4.641960098354471, 2.293170938060623, -0.193180728257140) +\nlms.b * vec3(0.169637076827974, -0.167895202223709, 1.163647892783812);\nreturn vec4(im, ipt.a);\n}\nkernel vec4 ipt_to_hue_chroma(__sample im)\n{\nvec4 ihc = im;\nihc.g = atan(im.b, im.g);\nihc.b = sqrt(im.g*im.g+im.b*im.b);\nreturn ihc;\n}\nkernel vec4 ipt_from_hue_chroma(__sample ihc)\n{\nvec4 ipt = ihc;\nipt.g = ihc.b * cos(ihc.g);\nipt.b = ihc.b * sin(ihc.g);\nreturn ipt;\n}\nkernel vec4 ipt_hue_chroma_scale_hue(__sample ihc, vec2 hso) {\nfloat luma = ihc.r;\nfloat hue = ihc.g;\nfloat chroma = ihc.b;\nfloat alpha = ihc.a;\nfloat hueScale = hso.x;\nfloat hueOffset = hso.y;\nhue = hueScale * hue + hueOffset;\nreturn vec4(luma, hue, chroma, alpha);\n}\nkernel vec4 ipt_hue_chroma_filter_hue(__sample ihc, vec4 hcr) {\nfloat luma = ihc.r;\nfloat hue = ihc.g;\nfloat chroma = ihc.b;\nfloat alpha = ihc.a;\nfloat hueTarget = hcr.x;\nfloat hueRange = hcr.y;\nfloat hueModulo = hcr.z;\nfloat chromaMin = hcr.w;\nfloat chromaFactor = step(chromaMin, chroma);\nfloat hueDelta = min(abs(hue - hueTarget), min(abs(hue + hueModulo - hueTarget), abs(hue - hueModulo - hueTarget)));\nfloat hueFactor = 1.0 - smoothstep(0.0, hueRange, hueDelta);\nalpha *= hueFactor * chromaFactor;\nreturn vec4(luma, hue, chroma, alpha);\n}\nkernel vec4 ipt_hue_chroma_filter_luma(__sample ihc, vec3 hcr) {\nfloat luma = ihc.r;\nfloat hue = ihc.g;\nfloat chroma = ihc.b;\nfloat alpha = ihc.a;\nfloat lumaTarget = hcr.x;\nfloat lumaRange = hcr.y;\nfloat chromaMax = hcr.z;\nfloat chromaFactor = 1.0 - step(chromaMax, chroma);\nfloat lumaDelta = abs(luma - lumaTarget);\nfloat lumaFactor = 1.0 - smoothstep(0.0, lumaRange, lumaDelta);\nalpha *= lumaFactor * chromaFactor;\nreturn vec4(luma, hue, chroma, alpha);\n}\n\n"}];;
  v1 = hueChromaKernels_kernels;
  hueChromaKernels_kernels = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end
@interface PIColorBalanceFilter
+ (id)PPtogHDRKernel;
+ (id)colorBalanceKernel;
+ (id)colorBalanceKernels;
+ (id)customAttributes;
+ (id)gHDRtoPPKernel;
- (id)applyInputConversion:(id)conversion;
- (id)applyOutputConversion:(id)conversion;
- (id)outputImage;
@end

@implementation PIColorBalanceFilter

+ (id)colorBalanceKernel
{
  colorBalanceKernels = [self colorBalanceKernels];
  v3 = [colorBalanceKernels objectForKeyedSubscript:@"colorBalance"];

  return v3;
}

+ (id)PPtogHDRKernel
{
  colorBalanceKernels = [self colorBalanceKernels];
  v3 = [colorBalanceKernels objectForKeyedSubscript:@"PPtogHDR"];

  return v3;
}

+ (id)gHDRtoPPKernel
{
  colorBalanceKernels = [self colorBalanceKernels];
  v3 = [colorBalanceKernels objectForKeyedSubscript:@"gHDRtoPP"];

  return v3;
}

+ (id)colorBalanceKernels
{
  if (colorBalanceKernels_onceToken != -1)
  {
    dispatch_once(&colorBalanceKernels_onceToken, &__block_literal_global_28_18781);
  }

  v3 = colorBalanceKernels_colorBalanceKernels;

  return v3;
}

uint64_t __43__PIColorBalanceFilter_colorBalanceKernels__block_invoke()
{
  v0 = [MEMORY[0x1E695F660] kernelsDictionaryWithString:{@"kernel vec4 gHDRtoPP(sampler image)\n{\nvec4 pix \nvec3 pix2;\npix = sample(image, samplerCoord(image));\npix2 = pix.r * vec3(0.615429622407401, 0.114831839141528, 0.011544126697221) +\npix.g * vec3(0.367479646665836, 0.797943554457996, 0.064077744191180) +\npix.b * vec3(  0.016956659608091, 0.087783443422360, 0.924405601458102);\nreturn vec4(pix2, pix.a);\n}\nkernel vec4 PPtogHDR(sampler image)\n{\nvec4 pix ;\nvec3 pix2;\npix = sample(image, samplerCoord(image));\npix2 = pix.r * vec3(1.777445503202045, -0.255296595099306, -0.004500433755654) +\npix.g * vec3( -0.822224875430495, 1.380948853784730, -0.085456231694984) +\npix.b * vec3(0.045475917061484, -0.126454737973025, 1.089973874037625);\nreturn vec4(pix2, pix.a);\n}\nkernel vec4 colorBalance(__sample image, float colorI, float colorQ, float str, vec2 gamma)\n{\nvec4 pix = image;\nvec3 neg = min(pix.rgb, 0.0);\nvec3 pos = max(pix.rgb, 1.0) - 1.0;\npix.rgb = pow(clamp(pix.rgb, 0.0, 1.0), vec3(gamma.x));\npix.rgb = pix.r * vec3(0.299, 0.595716, 0.211456) +\npix.g * vec3(0.587, -0.274453, -0.522591) +\npix.b * vec3(0.114, -0.321263, 0.311135);\nvec4 orig = pix ;\nfloat chroma = min(1.0, 2.0*sqrt(pix.g*pix.g + pix.b*pix.b));\npix.gb += vec2(colorI, colorQ);\nfloat strength = str*pow(chroma, .4) ;\npix.gb = mix(orig.gb, pix.gb, strength) ;\npix.rgb = pix.rrr +\npix.g * vec3(0.956296, -0.272122, -1.10699) +\npix.b * vec3(0.621024, -0.647381, 1.70461);\npix.rgb = pow(max(pix.rgb, 0.0), vec3(gamma.y));\npix.rgb += pos + neg;\nreturn pix;\n}\n\n"}];;
  v1 = colorBalanceKernels_colorBalanceKernels;
  colorBalanceKernels_colorBalanceKernels = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)customAttributes
{
  v30[4] = *MEMORY[0x1E69E9840];
  v29[0] = @"inputStrength";
  v3 = *MEMORY[0x1E695F6E8];
  v23[0] = *MEMORY[0x1E695F6D8];
  v2 = v23[0];
  v23[1] = v3;
  v28[0] = &unk_1F471F7D0;
  v28[1] = &unk_1F471F7D0;
  v5 = *MEMORY[0x1E695F6A0];
  v24 = *MEMORY[0x1E695F6E0];
  v4 = v24;
  v25 = v5;
  v28[2] = &unk_1F471F7E0;
  v28[3] = &unk_1F471F7F0;
  v7 = *MEMORY[0x1E695F6F0];
  v26 = *MEMORY[0x1E695F6C8];
  v6 = v26;
  v27 = v7;
  v8 = *MEMORY[0x1E695F758];
  v28[4] = &unk_1F471F7D0;
  v28[5] = v8;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v23 count:6];
  v30[0] = v16;
  v29[1] = @"inputWarmTemp";
  v21[0] = v2;
  v21[1] = v3;
  v22[0] = &unk_1F471F800;
  v22[1] = &unk_1F471F810;
  v9 = *MEMORY[0x1E695F6D0];
  v21[2] = v4;
  v21[3] = v9;
  v22[2] = &unk_1F471F820;
  v22[3] = &unk_1F471F7E0;
  v21[4] = v5;
  v21[5] = v6;
  v22[4] = &unk_1F471F7D0;
  v22[5] = &unk_1F471F7D0;
  v21[6] = v7;
  v22[6] = v8;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:7];
  v30[1] = v10;
  v29[2] = @"inputWarmTint";
  v19[0] = v2;
  v19[1] = v3;
  v20[0] = &unk_1F471F800;
  v20[1] = &unk_1F471F830;
  v19[2] = v4;
  v19[3] = v9;
  v20[2] = &unk_1F471F7F0;
  v20[3] = &unk_1F471F7E0;
  v19[4] = v5;
  v19[5] = v6;
  v20[4] = &unk_1F471F7D0;
  v20[5] = &unk_1F471F7D0;
  v19[6] = v7;
  v20[6] = v8;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:7];
  v30[2] = v11;
  v29[3] = @"inputHasFace";
  v17[0] = v5;
  v17[1] = v7;
  v12 = *MEMORY[0x1E695F700];
  v18[0] = MEMORY[0x1E695E110];
  v18[1] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v30[3] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:4];

  return v14;
}

- (id)outputImage
{
  v46 = *MEMORY[0x1E69E9840];
  if (!self->_inputImage)
  {
    v28 = NUAssertLogger_18854();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"inputImage cannot be nil"];
      *buf = 138543362;
      v43 = v29;
      _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v30 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v32 = NUAssertLogger_18854();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v33)
      {
        v36 = dispatch_get_specific(*v30);
        v37 = MEMORY[0x1E696AF00];
        v38 = v36;
        callStackSymbols = [v37 callStackSymbols];
        v40 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v43 = v36;
        v44 = 2114;
        v45 = v40;
        _os_log_error_impl(&dword_1C7694000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v33)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v35 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v43 = v35;
      _os_log_error_impl(&dword_1C7694000, v32, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  [(NSNumber *)self->_inputWarmTemp floatValue];
  v4 = v3 * 0.25;
  [(NSNumber *)self->_inputWarmTint floatValue];
  v6 = v5 * 0.25;
  v7 = v6 * 0.0385 + v4 * 0.9615;
  v8 = v6 * 0.1923 + v4 * -0.1923;
  inputImage = self->_inputImage;
  if (fabs(v7) + fabs(v8) >= 0.00000001)
  {
    imageByUnpremultiplyingAlpha = [(CIImage *)inputImage imageByUnpremultiplyingAlpha];
    if ([(NSNumber *)self->_inputHasFace BOOLValue])
    {
      if ([(NSNumber *)self->_inputIsRaw BOOLValue])
      {
        v12 = [imageByUnpremultiplyingAlpha imageByColorMatchingWorkingSpaceToColorSpace:{+[PIRAWFaceBalance linearWideGamutColorSpace](PIRAWFaceBalance, "linearWideGamutColorSpace")}];
        v13 = [MEMORY[0x1E695F680] samplerWithImage:v12];
      }

      else
      {
        v13 = [MEMORY[0x1E695F680] samplerWithImage:imageByUnpremultiplyingAlpha];
      }
    }

    else
    {
      v15 = [(PIColorBalanceFilter *)self applyInputConversion:imageByUnpremultiplyingAlpha];

      v13 = [MEMORY[0x1E695F680] samplerWithImage:v15];
      imageByUnpremultiplyingAlpha = v15;
    }

    v41[0] = v13;
    *&v14 = v7;
    v16 = [MEMORY[0x1E696AD98] numberWithFloat:v14];
    v41[1] = v16;
    *&v17 = v8;
    v18 = [MEMORY[0x1E696AD98] numberWithFloat:v17];
    inputStrength = self->_inputStrength;
    v41[2] = v18;
    v41[3] = inputStrength;
    v20 = [MEMORY[0x1E695F688] vectorWithX:0.25 Y:4.0];
    v41[4] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:5];

    colorBalanceKernel = [objc_opt_class() colorBalanceKernel];
    [v13 extent];
    v23 = [colorBalanceKernel applyWithExtent:&__block_literal_global_18868 roiCallback:v21 arguments:?];

    if ([(NSNumber *)self->_inputHasFace BOOLValue])
    {
      if ([(NSNumber *)self->_inputIsRaw BOOLValue])
      {
        v24 = [v23 imageByColorMatchingColorSpaceToWorkingSpace:{+[PIRAWFaceBalance linearWideGamutColorSpace](PIRAWFaceBalance, "linearWideGamutColorSpace")}];
      }

      else
      {
        v24 = v23;
      }
    }

    else
    {
      v24 = [(PIColorBalanceFilter *)self applyOutputConversion:v23];
    }

    v25 = v24;
    [(CIImage *)self->_inputImage extent];
    v26 = [v25 imageByCroppingToRect:?];
    imageByPremultiplyingAlpha = [v26 imageByPremultiplyingAlpha];
  }

  else
  {
    imageByPremultiplyingAlpha = inputImage;
  }

  return imageByPremultiplyingAlpha;
}

- (id)applyOutputConversion:(id)conversion
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695F680] samplerWithImage:conversion];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  pPtogHDRKernel = [objc_opt_class() PPtogHDRKernel];
  [v3 extent];
  v6 = [pPtogHDRKernel applyWithExtent:&__block_literal_global_18868 roiCallback:v4 arguments:?];

  return v6;
}

- (id)applyInputConversion:(id)conversion
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695F680] samplerWithImage:conversion];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  gHDRtoPPKernel = [objc_opt_class() gHDRtoPPKernel];
  [v3 extent];
  v6 = [gHDRtoPPKernel applyWithExtent:&__block_literal_global_18868 roiCallback:v4 arguments:?];

  return v6;
}

@end
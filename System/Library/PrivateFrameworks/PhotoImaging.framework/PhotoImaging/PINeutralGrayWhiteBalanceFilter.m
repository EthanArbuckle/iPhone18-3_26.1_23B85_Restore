@interface PINeutralGrayWhiteBalanceFilter
+ (id)PPtogHDRKernel;
+ (id)RGBToYIQKernel;
+ (id)YIQToRGBKernel;
+ (id)colorBalanceKernels;
+ (id)customAttributes;
+ (id)gHDRtoPPKernel;
+ (id)whiteBalanceKernel;
- (id)applyInputConversion:(id)a3;
- (id)applyOutputConversion:(id)a3;
- (id)outputImage;
@end

@implementation PINeutralGrayWhiteBalanceFilter

+ (id)whiteBalanceKernel
{
  v2 = [a1 colorBalanceKernels];
  v3 = [v2 objectForKeyedSubscript:@"whiteBalance"];

  return v3;
}

+ (id)PPtogHDRKernel
{
  v2 = [a1 colorBalanceKernels];
  v3 = [v2 objectForKeyedSubscript:@"PPtogHDR"];

  return v3;
}

+ (id)gHDRtoPPKernel
{
  v2 = [a1 colorBalanceKernels];
  v3 = [v2 objectForKeyedSubscript:@"gHDRtoPP"];

  return v3;
}

+ (id)YIQToRGBKernel
{
  v2 = [a1 colorBalanceKernels];
  v3 = [v2 objectForKeyedSubscript:@"convertFromYIQToRGB"];

  return v3;
}

+ (id)RGBToYIQKernel
{
  v2 = [a1 colorBalanceKernels];
  v3 = [v2 objectForKeyedSubscript:@"convertFromRGBToYIQ"];

  return v3;
}

+ (id)colorBalanceKernels
{
  if (colorBalanceKernels_onceToken_26494 != -1)
  {
    dispatch_once(&colorBalanceKernels_onceToken_26494, &__block_literal_global_18);
  }

  v3 = colorBalanceKernels_colorBalanceKernels_26495;

  return v3;
}

uint64_t __54__PINeutralGrayWhiteBalanceFilter_colorBalanceKernels__block_invoke()
{
  v0 = [MEMORY[0x1E695F660] kernelsDictionaryWithString:{@"kernel vec4 convertFromRGBToYIQ(sampler src, float gamma)\n{\nvec4 pix \nvec3 pix2;\npix = sample(src, samplerCoord(src));\npix.rgb = sign(pix.rgb)*pow(abs(pix.rgb), vec3(1.0/gamma)) ;\npix2.rgb = pix.r * vec3(0.299, 0.595716, 0.211456) +\npix.g * vec3(0.587, -0.274453, -0.522591) +\npix.b * vec3(0.114, -0.321263, 0.311135);\nreturn vec4(pix2, pix.a);\n}\nkernel vec4 convertFromYIQToRGB(sampler src, float gamma)\n{\nvec4 color, pix;\npix = sample(src, samplerCoord(src));\ncolor.rgb = pix.rrr +\npix.g * vec3(0.956296, -0.272122, -1.10699) +\npix.b * vec3(0.621024, -0.647381, 1.70461);\ncolor.rgb = sign(color.rgb)*pow(abs(color.rgb), vec3(gamma, gamma, gamma));\ncolor.a = pix.a;\nreturn color;\n}\nkernel vec4 whiteBalance(sampler image, float grayY, float grayI, float grayQ, float strength)\n{\nvec4 im = sample(image, samplerCoord(image)) ;\nvec2 grayOffset = vec2(grayI, grayQ) ;\nvec4 result ;\nfloat newStrength = 1.0 + (strength-1.0)*(1.0-im.r) ;\nresult.r = im.r ;\nresult.gb = im.gb + newStrength*grayOffset ;\nfloat damp = max(min(1.0, im.r/(grayY+0.00001)), 0.0) ;\nresult.rgb = mix(im.rgb, result.rgb, damp) ;\nresult.a = im.a ;\nreturn result ;\n}\nkernel vec4 gHDRtoPP(sampler image)\n{\nvec4 pix ;\nvec3 pix2;\npix = sample(image, samplerCoord(image));\npix2 = pix.r * vec3(0.615429622407401, 0.114831839141528, 0.011544126697221) +\npix.g * vec3(0.367479646665836, 0.797943554457996, 0.064077744191180) +\npix.b * vec3(  0.016956659608091, 0.087783443422360, 0.924405601458102);\nreturn vec4(pix2, pix.a);\n}\nkernel vec4 PPtogHDR(sampler image)\n{\nvec4 pix ;\nvec3 pix2;\npix = sample(image, samplerCoord(image));\npix2 = pix.r * vec3(1.777445503202045, -0.255296595099306, -0.004500433755654) +\npix.g * vec3( -0.822224875430495, 1.380948853784730, -0.085456231694984) +\npix.b * vec3(0.045475917061484, -0.126454737973025, 1.089973874037625);\nreturn vec4(pix2, pix.a);\n}\n\n"}];;
  v1 = colorBalanceKernels_colorBalanceKernels_26495;
  colorBalanceKernels_colorBalanceKernels_26495 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)customAttributes
{
  v22[2] = *MEMORY[0x1E69E9840];
  v21[0] = @"strength";
  v3 = *MEMORY[0x1E695F6E8];
  v15[0] = *MEMORY[0x1E695F6D8];
  v2 = v15[0];
  v15[1] = v3;
  v20[0] = &unk_1F471FBB0;
  v20[1] = &unk_1F471FBB0;
  v5 = *MEMORY[0x1E695F6A0];
  v16 = *MEMORY[0x1E695F6E0];
  v4 = v16;
  v17 = v5;
  v20[2] = &unk_1F471FBC0;
  v20[3] = &unk_1F471FBD0;
  v7 = *MEMORY[0x1E695F6F0];
  v18 = *MEMORY[0x1E695F6C8];
  v6 = v18;
  v19 = v7;
  v8 = *MEMORY[0x1E695F758];
  v20[4] = &unk_1F471FBE0;
  v20[5] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v15 count:6];
  v21[1] = @"warmth";
  v22[0] = v9;
  v13[0] = v2;
  v13[1] = v3;
  v14[0] = &unk_1F471FBB0;
  v14[1] = &unk_1F471FBB0;
  v13[2] = v4;
  v13[3] = v5;
  v14[2] = &unk_1F471FBD0;
  v14[3] = &unk_1F471FBF0;
  v13[4] = v6;
  v13[5] = v7;
  v14[4] = &unk_1F471FBE0;
  v14[5] = v8;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:6];
  v22[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];

  return v11;
}

- (id)outputImage
{
  v53 = *MEMORY[0x1E69E9840];
  inputImage = self->_inputImage;
  if (!inputImage)
  {
    v35 = NUAssertLogger_26558();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"inputImage cannot be nil"];
      *buf = 138543362;
      v50 = v36;
      _os_log_error_impl(&dword_1C7694000, v35, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v37 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v39 = NUAssertLogger_26558();
    v40 = os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v40)
      {
        v43 = dispatch_get_specific(*v37);
        v44 = MEMORY[0x1E696AF00];
        v45 = v43;
        v46 = [v44 callStackSymbols];
        v47 = [v46 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v50 = v43;
        v51 = 2114;
        v52 = v47;
        _os_log_error_impl(&dword_1C7694000, v39, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v40)
    {
      v41 = [MEMORY[0x1E696AF00] callStackSymbols];
      v42 = [v41 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v50 = v42;
      _os_log_error_impl(&dword_1C7694000, v39, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v4 = [(CIImage *)inputImage imageByUnpremultiplyingAlpha];
  v5 = [(PINeutralGrayWhiteBalanceFilter *)self applyInputConversion:v4];
  v6 = [MEMORY[0x1E695F680] samplerWithImage:v5];
  [(NSNumber *)self->_y floatValue];
  v8 = v7;
  [(NSNumber *)self->_i floatValue];
  v10 = v9;
  [(NSNumber *)self->_q floatValue];
  v12 = v11;
  [(NSNumber *)self->_warmth floatValue];
  v14 = v13;
  v15 = v13;
  if (v10 == 0.0 && v12 == 0.0 && [(PINeutralGrayWhiteBalanceFilter *)self isDefaultWarmth:v13])
  {
    v16 = self->_inputImage;
  }

  else
  {
    v17 = v8;
    v18 = -v10;
    if (v14 >= 0.5)
    {
      v19 = v15 + -0.5 + v15 + -0.5;
      v20 = v18 + v19 * 0.100000001;
      v21 = -0.0399999991;
    }

    else
    {
      v19 = 0.5 - v15 + 0.5 - v15;
      v20 = v18 + v19 * -0.0500000007;
      v21 = 0.0199999996;
    }

    v22 = -v12 + v19 * v21;
    v48[0] = v6;
    v23 = [MEMORY[0x1E695F688] vectorWithX:v17];
    v48[1] = v23;
    v24 = [MEMORY[0x1E695F688] vectorWithX:v20];
    v48[2] = v24;
    v25 = [MEMORY[0x1E695F688] vectorWithX:v22];
    v48[3] = v25;
    v26 = MEMORY[0x1E695F688];
    [(NSNumber *)self->_strength floatValue];
    v28 = [v26 vectorWithX:v27];
    v48[4] = v28;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:5];

    v30 = [objc_opt_class() whiteBalanceKernel];
    [v6 extent];
    v31 = [v30 applyWithExtent:&__block_literal_global_26570 roiCallback:v29 arguments:?];

    v32 = [(PINeutralGrayWhiteBalanceFilter *)self applyOutputConversion:v31];
    [(CIImage *)self->_inputImage extent];
    v33 = [v32 imageByCroppingToRect:?];
    v16 = [v33 imageByPremultiplyingAlpha];
  }

  return v16;
}

- (id)applyOutputConversion:(id)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695F680] samplerWithImage:a3];
  v14[0] = v3;
  v4 = [MEMORY[0x1E695F688] vectorWithX:4.0];
  v14[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];

  v6 = [objc_opt_class() YIQToRGBKernel];
  [v3 extent];
  v7 = [v6 applyWithExtent:&__block_literal_global_26570 roiCallback:v5 arguments:?];

  v8 = [MEMORY[0x1E695F680] samplerWithImage:v7];

  v13 = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];

  v10 = [objc_opt_class() PPtogHDRKernel];
  [v8 extent];
  v11 = [v10 applyWithExtent:&__block_literal_global_26570 roiCallback:v9 arguments:?];

  return v11;
}

- (id)applyInputConversion:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695F680] samplerWithImage:a3];
  v14[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v5 = [objc_opt_class() gHDRtoPPKernel];
  [v3 extent];
  v6 = [v5 applyWithExtent:&__block_literal_global_26570 roiCallback:v4 arguments:?];

  v7 = [MEMORY[0x1E695F680] samplerWithImage:v6];

  v8 = [MEMORY[0x1E695F688] vectorWithX:{4.0, v7}];
  v13[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];

  v10 = [objc_opt_class() RGBToYIQKernel];
  [v7 extent];
  v11 = [v10 applyWithExtent:&__block_literal_global_26570 roiCallback:v9 arguments:?];

  return v11;
}

@end
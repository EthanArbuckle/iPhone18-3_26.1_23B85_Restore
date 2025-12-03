@interface PICurvesFilterHDR
- (id)curvesKernel;
- (id)outputImage;
@end

@implementation PICurvesFilterHDR

- (id)outputImage
{
  v59[3] = *MEMORY[0x1E69E9840];
  inputImage = [(PICurvesFilterHDR *)self inputImage];
  inputTableImage = [(PICurvesFilterHDR *)self inputTableImage];
  v5 = inputTableImage;
  v6 = 0;
  if (inputImage && inputTableImage)
  {
    v7 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:2.0];
    v52 = [MEMORY[0x1E695F688] vectorWithX:0.998046875 Y:0.0009765625];
    [MEMORY[0x1E69B3AB0] HLGOpticalScale];
    v9 = v8;
    v10 = 0x1E69B3000;
    if (v8 > 1.0)
    {
      v58[0] = @"inputRVector";
      v11 = [MEMORY[0x1E695F688] vectorWithX:4.92610837 / v8 Y:0.0 Z:0.0 W:0.0];
      v59[0] = v11;
      v58[1] = @"inputGVector";
      v12 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:4.92610837 / v9 Z:0.0 W:0.0];
      v59[1] = v12;
      v58[2] = @"inputBVector";
      v13 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:4.92610837 / v9 W:0.0];
      v59[2] = v13;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:3];
      v14 = v51 = v7;
      v15 = [inputImage imageByApplyingFilter:@"CIColorMatrix" withInputParameters:v14];

      itur2100HLGColorSpace = [MEMORY[0x1E69B3A10] itur2100HLGColorSpace];
      linearized = [itur2100HLGColorSpace linearized];
      extended = [linearized extended];

      v19 = [v15 imageByColorMatchingWorkingSpaceToColorSpace:{objc_msgSend(extended, "CGColorSpace")}];

      v56[0] = @"inputMinComponents";
      v20 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:0.0 W:0.0];
      v56[1] = @"inputMaxComponents";
      v57[0] = v20;
      v21 = [MEMORY[0x1E695F688] vectorWithX:4.92610837 Y:4.92610837 Z:4.92610837 W:1.0];
      v57[1] = v21;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:2];
      v23 = [v19 imageByApplyingFilter:@"CIColorClamp" withInputParameters:v22];

      v10 = 0x1E69B3000uLL;
      inputImage = [v23 imageByColorMatchingColorSpaceToWorkingSpace:{objc_msgSend(extended, "CGColorSpace")}];

      v7 = v51;
    }

    imageByUnpremultiplyingAlpha = [inputImage imageByUnpremultiplyingAlpha];

    itur2100HLGColorSpace2 = [*(v10 + 2576) itur2100HLGColorSpace];
    v26 = [imageByUnpremultiplyingAlpha imageByColorMatchingWorkingSpaceToColorSpace:{objc_msgSend(itur2100HLGColorSpace2, "CGColorSpace")}];

    curvesKernel = [(PICurvesFilterHDR *)self curvesKernel];
    [v26 extent];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v55[0] = v26;
    v55[1] = v5;
    v55[2] = v7;
    v55[3] = v52;
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:4];
    v37 = [curvesKernel applyWithExtent:v36 arguments:{v29, v31, v33, v35}];

    itur2100HLGColorSpace3 = [*(v10 + 2576) itur2100HLGColorSpace];
    v39 = [v37 imageByColorMatchingColorSpaceToWorkingSpace:{objc_msgSend(itur2100HLGColorSpace3, "CGColorSpace")}];

    imageByPremultiplyingAlpha = [v39 imageByPremultiplyingAlpha];

    if (v9 > 1.0)
    {
      v53[0] = @"inputRVector";
      v41 = v9 / 4.92610837;
      v42 = [MEMORY[0x1E695F688] vectorWithX:v41 Y:0.0 Z:0.0 W:0.0];
      v54[0] = v42;
      v53[1] = @"inputGVector";
      v43 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:v41 Z:0.0 W:0.0];
      v54[1] = v43;
      v53[2] = @"inputBVector";
      v44 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:v41 W:0.0];
      v54[2] = v44;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:v53 count:3];
      v46 = v45 = v10;
      v47 = [imageByPremultiplyingAlpha imageByApplyingFilter:@"CIColorMatrix" withInputParameters:v46];

      v10 = v45;
      imageByPremultiplyingAlpha = v47;
    }

    workingColorSpace = [*(v10 + 2576) workingColorSpace];
    v49 = [imageByPremultiplyingAlpha imageByTaggingWithColorSpace:{objc_msgSend(workingColorSpace, "CGColorSpace")}];

    inputImage = v49;
    v6 = inputImage;
  }

  return v6;
}

- (id)curvesKernel
{
  if (curvesKernel_once != -1)
  {
    dispatch_once(&curvesKernel_once, &__block_literal_global_14709);
  }

  v3 = curvesKernel_singleton;

  return v3;
}

uint64_t __33__PICurvesFilterHDR_curvesKernel__block_invoke()
{
  v0 = [MEMORY[0x1E695F618] kernelWithString:{@"vec4 _curve_sample_HDR(float x, sampler2D table, vec2 domain, vec2 normalizer) { x = (x - domain.x) / (domain.y - domain.x) x = clamp(x, 0.0001, 0.9999); x = normalizer.x * x + normalizer.y; return texture2D(table, vec2(x, 0.5)); } kernel vec4 _curves_rgb_lum_HDR(__sample color, sampler2D table, vec2 domain, vec2 normalizer) { vec4 pixel = color; pixel.r = _curve_sample_HDR(pixel.r, table, domain, normalizer).r; pixel.g = _curve_sample_HDR(pixel.g, table, domain, normalizer).g; pixel.b = _curve_sample_HDR(pixel.b, table, domain, normalizer).b; float lum0 = dot(pixel.rgb, vec3(0.3, 0.59, 0.11)); float lum1 = _curve_sample_HDR(lum0, table, domain, normalizer).a; float lum1c = clamp(lum1, -8.0 * abs(lum0), 8.0 * abs(lum0)); float lum_scale = (lum0 == 0.0 ? 0.0 : lum1c / lum0); float lum_offset = lum1 - lum1c; pixel.rgb = lum_scale * pixel.rgb + lum_offset; pixel.rgb = min(pixel.rgb, 1.0); return pixel; }"}];;
  v1 = curvesKernel_singleton;
  curvesKernel_singleton = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end
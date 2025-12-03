@interface PICurvesFilter
+ (id)curvesKernel;
- (id)outputImage;
@end

@implementation PICurvesFilter

- (id)outputImage
{
  v23[4] = *MEMORY[0x1E69E9840];
  inputImage = [(PICurvesFilter *)self inputImage];
  inputTableImage = [(PICurvesFilter *)self inputTableImage];
  v5 = inputTableImage;
  v6 = 0;
  if (inputImage && inputTableImage)
  {
    v7 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:2.0];
    v8 = [MEMORY[0x1E695F688] vectorWithX:0.998046875 Y:0.0009765625];
    imageByUnpremultiplyingAlpha = [inputImage imageByUnpremultiplyingAlpha];

    v10 = +[PICurvesFilter curvesKernel];
    [imageByUnpremultiplyingAlpha extent];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v23[0] = imageByUnpremultiplyingAlpha;
    v23[1] = v5;
    v23[2] = v7;
    v23[3] = v8;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];
    v20 = [v10 applyWithExtent:v19 arguments:{v12, v14, v16, v18}];

    imageByPremultiplyingAlpha = [v20 imageByPremultiplyingAlpha];

    inputImage = imageByPremultiplyingAlpha;
    v6 = inputImage;
  }

  return v6;
}

+ (id)curvesKernel
{
  if (+[PICurvesFilter curvesKernel]::onceToken != -1)
  {
    dispatch_once(&+[PICurvesFilter curvesKernel]::onceToken, &__block_literal_global_18755);
  }

  v3 = +[PICurvesFilter curvesKernel]::curvesKernel;

  return v3;
}

uint64_t __30__PICurvesFilter_curvesKernel__block_invoke()
{
  v0 = [MEMORY[0x1E695F618] kernelWithString:{@"vec4 curve_sample(float x, sampler2D table, vec2 domain, vec2 normalizer)\n{\nx = (x - domain.x) / (domain.y - domain.x)\nx = clamp(x, 0.0001, 0.9999);\nx = normalizer.x * x + normalizer.y;\nreturn texture2D(table, vec2(x, 0.5));\n}\nkernel vec4 curves_rgb_lum(__sample color, sampler2D table, vec2 domain, vec2 normalizer)\n{\nvec4 pixel = color;\npixel.r = curve_sample(pixel.r, table, domain, normalizer).r;\npixel.g = curve_sample(pixel.g, table, domain, normalizer).g;\npixel.b = curve_sample(pixel.b, table, domain, normalizer).b;\nfloat lum0 = dot(pixel.rgb, vec3(0.3, 0.59, 0.11));\nfloat lum1 = curve_sample(lum0, table, domain, normalizer).a;\nfloat lum1c = clamp(lum1, -8.0 * abs(lum0), 8.0 * abs(lum0));\nfloat lum_scale = (lum0 == 0.0 ? 0.0 : lum1c / lum0);\nfloat lum_offset = lum1 - lum1c;\npixel.rgb = lum_scale * pixel.rgb + lum_offset;\nreturn pixel;\n}\n\n"}];;
  v1 = +[PICurvesFilter curvesKernel]::curvesKernel;
  +[PICurvesFilter curvesKernel]::curvesKernel = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end
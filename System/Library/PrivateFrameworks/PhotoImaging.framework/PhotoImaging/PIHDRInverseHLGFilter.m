@interface PIHDRInverseHLGFilter
+ (id)inverseHLGLumaBlendingKernel;
- (id)outputImage;
@end

@implementation PIHDRInverseHLGFilter

+ (id)inverseHLGLumaBlendingKernel
{
  if (inverseHLGLumaBlendingKernel_once != -1)
  {
    dispatch_once(&inverseHLGLumaBlendingKernel_once, &__block_literal_global_29327);
  }

  v3 = inverseHLGLumaBlendingKernel_s_inverseLumaBlendingKernel;

  return v3;
}

uint64_t __53__PIHDRInverseHLGFilter_inverseHLGLumaBlendingKernel__block_invoke()
{
  v0 = [MEMORY[0x1E695F618] kernelWithString:{@"kernel vec4 hlg_luma_blending_inv(__sample sdr, float scale) \n{ \n  const vec3 lum_weights = vec3(0.2627, 0.6780, 0.0593) \n  float Ys = dot(lum_weights, sdr.rgb); \n  float Ymax = max(sdr.r, max(sdr.g, sdr.b)); \n  float Yb = 0.5*(Ys+Ymax); \n  const float gamma1 = 0.845906630893; \n  float absY = max(abs(Yb), 0.00001); \n  float gainInv = scale * pow(absY, 1.0/gamma1 - 1.0); \n  float3 hdr = gainInv * sdr.rgb; \n  return vec4(hdr.rgb, 1.0); \n}\n"}];;
  v1 = inverseHLGLumaBlendingKernel_s_inverseLumaBlendingKernel;
  inverseHLGLumaBlendingKernel_s_inverseLumaBlendingKernel = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)outputImage
{
  v19[2] = *MEMORY[0x1E69E9840];
  v2 = [(PIHDRInverseHLGFilter *)self inputImage];
  v3 = [MEMORY[0x1E69B3A10] colorSpaceFromColorPrimaries:*MEMORY[0x1E6965DB0] transferFunction:*MEMORY[0x1E6965F60] yccMatrix:*MEMORY[0x1E6965FB0]];
  v4 = [v2 imageByColorMatchingWorkingSpaceToColorSpace:{objc_msgSend(v3, "CGColorSpace")}];
  v5 = [objc_opt_class() inverseHLGLumaBlendingKernel];
  [v4 extent];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v19[0] = v4;
  LODWORD(v6) = 2.0;
  v14 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  v19[1] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v16 = [v5 applyWithExtent:v15 arguments:{v7, v9, v11, v13}];

  v17 = [v16 imageByColorMatchingColorSpaceToWorkingSpace:{objc_msgSend(v3, "CGColorSpace")}];

  return v17;
}

@end
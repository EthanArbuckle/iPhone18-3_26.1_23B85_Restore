@interface PIAutoLoopKernels
+ (id)alphaCompositingKernel;
+ (id)blur3x3Kernel;
+ (id)blur5x5Kernel;
+ (id)blur7x7Kernel;
+ (id)dynamismMapKernel;
+ (id)dynamismMapRefineKernel;
+ (id)fusionKernel;
+ (id)homographyKernel;
+ (id)longExposureFusionKernels;
+ (id)nccCoarseKernel;
+ (id)nccKernel;
+ (id)rgbToLumaKernel;
@end

@implementation PIAutoLoopKernels

+ (id)fusionKernel
{
  v2 = [a1 longExposureFusionKernels];
  v3 = [v2 objectForKeyedSubscript:@"fuse_image_compute"];

  return v3;
}

+ (id)blur3x3Kernel
{
  v2 = [a1 longExposureFusionKernels];
  v3 = [v2 objectForKeyedSubscript:@"blur_image_compute_3x3"];

  return v3;
}

+ (id)blur5x5Kernel
{
  v2 = [a1 longExposureFusionKernels];
  v3 = [v2 objectForKeyedSubscript:@"blur_image_compute_5x5"];

  return v3;
}

+ (id)blur7x7Kernel
{
  v2 = [a1 longExposureFusionKernels];
  v3 = [v2 objectForKeyedSubscript:@"blur_image_compute_7x7"];

  return v3;
}

+ (id)nccCoarseKernel
{
  v2 = [a1 longExposureFusionKernels];
  v3 = [v2 objectForKeyedSubscript:@"ncc_coarse_compute"];

  return v3;
}

+ (id)nccKernel
{
  v2 = [a1 longExposureFusionKernels];
  v3 = [v2 objectForKeyedSubscript:@"ncc_compute"];

  return v3;
}

+ (id)homographyKernel
{
  v2 = [a1 longExposureFusionKernels];
  v3 = [v2 objectForKeyedSubscript:@"warp_homography"];

  return v3;
}

+ (id)rgbToLumaKernel
{
  v2 = [a1 longExposureFusionKernels];
  v3 = [v2 objectForKeyedSubscript:@"rgba_to_luma"];

  return v3;
}

+ (id)dynamismMapRefineKernel
{
  v2 = [a1 longExposureFusionKernels];
  v3 = [v2 objectForKeyedSubscript:@"jointbilateralfilter"];

  return v3;
}

+ (id)longExposureFusionKernels
{
  if (longExposureFusionKernels_onceToken != -1)
  {
    dispatch_once(&longExposureFusionKernels_onceToken, &__block_literal_global_12);
  }

  v3 = longExposureFusionKernels_kernels;

  return v3;
}

uint64_t __46__PIAutoLoopKernels_longExposureFusionKernels__block_invoke()
{
  v0 = [MEMORY[0x1E695F660] kernelsDictionaryWithString:&cfstr_KernelVec4Join];
  v1 = longExposureFusionKernels_kernels;
  longExposureFusionKernels_kernels = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)dynamismMapKernel
{
  if (dynamismMapKernel_onceToken != -1)
  {
    dispatch_once(&dynamismMapKernel_onceToken, &__block_literal_global_9_13596);
  }

  v3 = dynamismMapKernel_kernel;

  return v3;
}

uint64_t __38__PIAutoLoopKernels_dynamismMapKernel__block_invoke()
{
  v0 = [MEMORY[0x1E695F660] kernelWithString:{@"kernel vec4 dynamismMap(sampler imageMax, sampler imageMin, float logisticGain, float logisticMid) __attribute__((outputFormat(kCIFormatRGBAh)))\n{\nconst float MAX_VAL = 1.74\nconst float THRESHOLD = 0.05;\nvec2 dc = destCoord();\nvec2 sc;\nsc = dc + vec2(-1, -1);\nvec4 pMax00 = sample(imageMax, samplerTransform(imageMax, sc));\nvec4 pMin00 = sample(imageMin, samplerTransform(imageMin, sc));\nsc = dc + vec2(-1, 0);\nvec4 pMax01 = sample(imageMax, samplerTransform(imageMax, sc));\nvec4 pMin01 = sample(imageMin, samplerTransform(imageMin, sc));\nsc = dc + vec2(-1, 1);\nvec4 pMax02 = sample(imageMax, samplerTransform(imageMax, sc));\nvec4 pMin02 = sample(imageMin, samplerTransform(imageMin, sc));\nsc = dc + vec2(0, -1);\nvec4 pMax10 = sample(imageMax, samplerTransform(imageMax, sc));\nvec4 pMin10 = sample(imageMin, samplerTransform(imageMin, sc));\nvec4 pMax11 = sample(imageMax, samplerTransform(imageMax, dc));\nvec4 pMin11 = sample(imageMin, samplerTransform(imageMin, dc));\nsc = dc + vec2(0, 1);\nvec4 pMax12 = sample(imageMax, samplerTransform(imageMax, sc));\nvec4 pMin12 = sample(imageMin, samplerTransform(imageMin, sc));\nsc = dc + vec2(1, -1);\nvec4 pMax20 = sample(imageMax, samplerTransform(imageMax, sc));\nvec4 pMin20 = sample(imageMin, samplerTransform(imageMin, sc));\nsc = dc + vec2(1, 0);\nvec4 pMax21 = sample(imageMax, samplerTransform(imageMax, sc));\nvec4 pMin21 = sample(imageMin, samplerTransform(imageMin, sc));\nsc = dc + vec2(1, 1);\nvec4 pMax22 = sample(imageMax, samplerTransform(imageMax, sc));\nvec4 pMin22 = sample(imageMin, samplerTransform(imageMin, sc));\nfloat minDevCMaxNMin = distance(pMax11, pMin00);\nminDevCMaxNMin = min( minDevCMaxNMin, distance(pMax11, pMin01));\nminDevCMaxNMin = min( minDevCMaxNMin, distance(pMax11, pMin02));\nminDevCMaxNMin = min( minDevCMaxNMin, distance(pMax11, pMin10));\nminDevCMaxNMin = min( minDevCMaxNMin, distance(pMax11, pMin11));\nminDevCMaxNMin = min( minDevCMaxNMin, distance(pMax11, pMin12));\nminDevCMaxNMin = min( minDevCMaxNMin, distance(pMax11, pMin20));\nminDevCMaxNMin = min( minDevCMaxNMin, distance(pMax11, pMin21));\nminDevCMaxNMin = min( minDevCMaxNMin, distance(pMax11, pMin22));\nfloat minDevCMinNMax = distance(pMin11, pMax00);\nminDevCMinNMax = min( minDevCMinNMax, distance(pMin11, pMax01));\nminDevCMinNMax = min( minDevCMinNMax, distance(pMin11, pMax02));\nminDevCMinNMax = min( minDevCMinNMax, distance(pMin11, pMax10));\nminDevCMinNMax = min( minDevCMinNMax, distance(pMin11, pMax11));\nminDevCMinNMax = min( minDevCMinNMax, distance(pMin11, pMax12));\nminDevCMinNMax = min( minDevCMinNMax, distance(pMin11, pMax20));\nminDevCMinNMax = min( minDevCMinNMax, distance(pMin11, pMax21));\nminDevCMinNMax = min( minDevCMinNMax, distance(pMin11, pMax22));\nfloat outVal = min(minDevCMaxNMin, minDevCMinNMax) / MAX_VAL;\noutVal = 1.0f / (1.0f + exp(-logisticGain*(outVal - logisticMid)));\nvec4 outPixel = vec4(outVal, outVal, outVal, 1.0);\nreturn outPixel;\n}\n\n"}];;
  v1 = dynamismMapKernel_kernel;
  dynamismMapKernel_kernel = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)alphaCompositingKernel
{
  if (alphaCompositingKernel_onceToken != -1)
  {
    dispatch_once(&alphaCompositingKernel_onceToken, &__block_literal_global_13601);
  }

  v3 = alphaCompositingKernel_kernel;

  return v3;
}

uint64_t __43__PIAutoLoopKernels_alphaCompositingKernel__block_invoke()
{
  v0 = [MEMORY[0x1E695F618] kernelWithString:{@"kernel vec4 alphaCompositing(__sample src, __sample dst, float a)\n{\nreturn mix(dst, src, a)\n}\n\n"}];;
  v1 = alphaCompositingKernel_kernel;
  alphaCompositingKernel_kernel = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end
@interface PUVFXImageGenerator
- (CGRect)extent;
- (PUVFXImageGenerator)init;
- (id)_outputImageWithForeground:(id)a3;
- (id)blendForeground:(id)a3 withBackground:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)outputImages;
- (void)generateFieldWithColors:(id)a3 count:(unint64_t)a4;
- (void)setExtent:(CGRect)a3;
@end

@implementation PUVFXImageGenerator

- (CGRect)extent
{
  x = self->_extent.origin.x;
  y = self->_extent.origin.y;
  width = self->_extent.size.width;
  height = self->_extent.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)blendForeground:(id)a3 withBackground:(id)a4
{
  v5 = MEMORY[0x1E696AEC0];
  maxEDR = self->_maxEDR;
  v7 = a4;
  v8 = a3;
  v9 = [v5 stringWithFormat:@"kernel vec4 customBlend(__sample foreground, __sample background) {   vec4 result   result.r = min(min(1.0, foreground.r + background.r) * %f, %f);   result.g = min(min(1.0, foreground.g + background.g) * %f, %f);   result.b = min(min(1.0, foreground.b + background.b) * %f, %f);   result.a = background.a;   return result;}", *&maxEDR, *&maxEDR, *&maxEDR, *&maxEDR, *&maxEDR, *&maxEDR];;
  v10 = [MEMORY[0x1E695F608] kernelWithString:v9];
  v11 = [v10 applyWithForeground:v8 background:v7];

  return v11;
}

- (id)_outputImageWithForeground:(id)a3
{
  v4 = a3;
  v5 = [(PUVFXImageGenerator *)self inputImage];
  v6 = v5;
  if (v4)
  {
    if (v5)
    {
      v7 = [(PUVFXImageGenerator *)self blendForeground:v4 withBackground:v5];

      v8 = [(PUVFXImageGenerator *)self inputImage];
      [v8 extent];
      v6 = [v7 imageByCroppingToRect:?];
    }

    else
    {
      v6 = v4;
    }
  }

  return v6;
}

- (id)outputImages
{
  v3 = objc_opt_new();
  v4 = [(PUVFXImageGenerator *)self outputImage];
  [v3 addObject:v4];

  v5 = [(CIImage *)self->_generatedFieldImage imageByApplyingCGOrientation:3];
  v6 = [(PUVFXImageGenerator *)self _outputImageWithForeground:v5];
  [v3 addObject:v6];

  return v3;
}

- (void)generateFieldWithColors:(id)a3 count:(unint64_t)a4
{
  v6 = a3;
  v28 = MEMORY[0x1E69E9820];
  v29 = 3221225472;
  v30 = __53__PUVFXImageGenerator_generateFieldWithColors_count___block_invoke;
  v31 = &unk_1E7B7C300;
  v32 = self;
  v7 = PFMap();
  v8 = [MEMORY[0x1E695F648] filterWithName:@"CIConstantColorGenerator"];
  v9 = [MEMORY[0x1E695F610] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
  [v8 setValue:v9 forKey:*MEMORY[0x1E695FA78]];

  v25 = v8;
  v10 = [v8 outputImage];
  v11 = v10;
  if (a4 < 2)
  {
    v22 = v10;
  }

  else
  {
    v12 = *MEMORY[0x1E695FAB0];
    v13 = *MEMORY[0x1E695FA48];
    v14 = a4 - 1;
    do
    {
      v15 = arc4random() / 4294967300.0;
      [(PUVFXImageGenerator *)self extent];
      v16 = v15 * CGRectGetWidth(v33);
      v17 = arc4random() / 4294967300.0;
      [(PUVFXImageGenerator *)self extent];
      Height = CGRectGetHeight(v34);
      memset(&v27, 0, sizeof(v27));
      CGAffineTransformMakeTranslation(&v27, v16, v17 * Height);
      v19 = [v7 objectAtIndexedSubscript:{arc4random() % objc_msgSend(v6, "count")}];
      v26 = v27;
      v20 = [v19 imageByApplyingTransform:&v26];

      v21 = [MEMORY[0x1E695F648] filterWithName:@"CISourceOverCompositing"];
      [v21 setValue:v20 forKey:v12];
      [v21 setValue:v11 forKey:v13];
      v22 = [v21 outputImage];

      v11 = v22;
      --v14;
    }

    while (v14);
  }

  [(PUVFXImageGenerator *)self extent];
  v23 = [v22 imageByCroppingToRect:?];
  generatedFieldImage = self->_generatedFieldImage;
  self->_generatedFieldImage = v23;
}

id __53__PUVFXImageGenerator_generateFieldWithColors_count___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695F688];
  v4 = *MEMORY[0x1E695EFF8];
  v5 = *(MEMORY[0x1E695EFF8] + 8);
  v6 = a2;
  v7 = [v3 vectorWithCGPoint:{v4, v5}];
  v8 = [MEMORY[0x1E695F648] radialGradientFilter];
  [v8 setValue:*(*(a1 + 32) + 104) forKey:@"inputRadius1"];
  [v8 setValue:*(*(a1 + 32) + 112) forKey:@"inputRadius0"];
  [v8 setValue:v7 forKey:@"inputCenter"];
  v9 = MEMORY[0x1E695F610];
  v10 = [v6 CGColor];

  v11 = [v9 colorWithCGColor:v10];
  [v8 setValue:v11 forKey:@"inputColor0"];

  v12 = [MEMORY[0x1E695F610] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
  [v8 setValue:v12 forKey:@"inputColor1"];

  v13 = [v8 outputImage];

  return v13;
}

- (void)setExtent:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_extent = &self->_extent;
  if (!CGRectEqualToRect(a3, self->_extent))
  {
    p_extent->origin.x = x;
    p_extent->origin.y = y;
    p_extent->size.width = width;
    p_extent->size.height = height;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  v4 = objc_opt_new();
  [v4 setExtent:{self->_extent.origin.x, self->_extent.origin.y, self->_extent.size.width, self->_extent.size.height}];
  v5 = [(PUVFXImageGenerator *)self particleSize];
  [v4 setParticleSize:v5];

  v6 = [(PUVFXImageGenerator *)self innerParticleSize];
  [v4 setInnerParticleSize:v6];

  v7 = [(PUVFXImageGenerator *)self backgroundCompositingFilter];
  [v4 setBackgroundCompositingFilter:v7];

  v8 = [(PUVFXImageGenerator *)self gradientCompositingFilter];
  [v4 setGradientCompositingFilter:v8];

  return v4;
}

- (PUVFXImageGenerator)init
{
  v15.receiver = self;
  v15.super_class = PUVFXImageGenerator;
  v2 = [(PUVFXImageGenerator *)&v15 init];
  particleSize = v2->_particleSize;
  v2->_particleSize = &unk_1F2B7E930;

  innerParticleSize = v2->_innerParticleSize;
  v2->_innerParticleSize = &unk_1F2B7E948;

  v2->_maxEDR = 1.0;
  v5 = MEMORY[0x1E695F648];
  v6 = [MEMORY[0x1E695F610] colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  v7 = [MEMORY[0x1E695F610] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
  v8 = [v5 filterWithName:@"CIRadialGradient" keysAndValues:{@"inputColor0", v6, @"inputColor1", v7, @"inputRadius0", v2->_innerParticleSize, @"inputRadius1", v2->_particleSize, 0}];
  gradientFilter = v2->_gradientFilter;
  v2->_gradientFilter = v8;

  v10 = [MEMORY[0x1E695F648] filterWithName:@"CISourceOverCompositing"];
  gradientCompositingFilter = v2->_gradientCompositingFilter;
  v2->_gradientCompositingFilter = v10;

  v12 = [MEMORY[0x1E695F648] filterWithName:@"CILinearDodgeBlendMode"];
  backgroundCompositingFilter = v2->_backgroundCompositingFilter;
  v2->_backgroundCompositingFilter = v12;

  return v2;
}

@end
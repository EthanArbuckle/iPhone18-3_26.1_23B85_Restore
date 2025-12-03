@interface PUVFXImageGenerator
- (CGRect)extent;
- (PUVFXImageGenerator)init;
- (id)_outputImageWithForeground:(id)foreground;
- (id)blendForeground:(id)foreground withBackground:(id)background;
- (id)copyWithZone:(_NSZone *)zone;
- (id)outputImages;
- (void)generateFieldWithColors:(id)colors count:(unint64_t)count;
- (void)setExtent:(CGRect)extent;
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

- (id)blendForeground:(id)foreground withBackground:(id)background
{
  v5 = MEMORY[0x1E696AEC0];
  maxEDR = self->_maxEDR;
  backgroundCopy = background;
  foregroundCopy = foreground;
  v9 = [v5 stringWithFormat:@"kernel vec4 customBlend(__sample foreground, __sample background) {   vec4 result   result.r = min(min(1.0, foreground.r + background.r) * %f, %f);   result.g = min(min(1.0, foreground.g + background.g) * %f, %f);   result.b = min(min(1.0, foreground.b + background.b) * %f, %f);   result.a = background.a;   return result;}", *&maxEDR, *&maxEDR, *&maxEDR, *&maxEDR, *&maxEDR, *&maxEDR];;
  v10 = [MEMORY[0x1E695F608] kernelWithString:v9];
  v11 = [v10 applyWithForeground:foregroundCopy background:backgroundCopy];

  return v11;
}

- (id)_outputImageWithForeground:(id)foreground
{
  foregroundCopy = foreground;
  inputImage = [(PUVFXImageGenerator *)self inputImage];
  v6 = inputImage;
  if (foregroundCopy)
  {
    if (inputImage)
    {
      v7 = [(PUVFXImageGenerator *)self blendForeground:foregroundCopy withBackground:inputImage];

      inputImage2 = [(PUVFXImageGenerator *)self inputImage];
      [inputImage2 extent];
      v6 = [v7 imageByCroppingToRect:?];
    }

    else
    {
      v6 = foregroundCopy;
    }
  }

  return v6;
}

- (id)outputImages
{
  v3 = objc_opt_new();
  outputImage = [(PUVFXImageGenerator *)self outputImage];
  [v3 addObject:outputImage];

  v5 = [(CIImage *)self->_generatedFieldImage imageByApplyingCGOrientation:3];
  v6 = [(PUVFXImageGenerator *)self _outputImageWithForeground:v5];
  [v3 addObject:v6];

  return v3;
}

- (void)generateFieldWithColors:(id)colors count:(unint64_t)count
{
  colorsCopy = colors;
  v28 = MEMORY[0x1E69E9820];
  v29 = 3221225472;
  v30 = __53__PUVFXImageGenerator_generateFieldWithColors_count___block_invoke;
  v31 = &unk_1E7B7C300;
  selfCopy = self;
  v7 = PFMap();
  v8 = [MEMORY[0x1E695F648] filterWithName:@"CIConstantColorGenerator"];
  v9 = [MEMORY[0x1E695F610] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
  [v8 setValue:v9 forKey:*MEMORY[0x1E695FA78]];

  v25 = v8;
  outputImage = [v8 outputImage];
  v11 = outputImage;
  if (count < 2)
  {
    outputImage2 = outputImage;
  }

  else
  {
    v12 = *MEMORY[0x1E695FAB0];
    v13 = *MEMORY[0x1E695FA48];
    v14 = count - 1;
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
      v19 = [v7 objectAtIndexedSubscript:{arc4random() % objc_msgSend(colorsCopy, "count")}];
      v26 = v27;
      v20 = [v19 imageByApplyingTransform:&v26];

      v21 = [MEMORY[0x1E695F648] filterWithName:@"CISourceOverCompositing"];
      [v21 setValue:v20 forKey:v12];
      [v21 setValue:v11 forKey:v13];
      outputImage2 = [v21 outputImage];

      v11 = outputImage2;
      --v14;
    }

    while (v14);
  }

  [(PUVFXImageGenerator *)self extent];
  v23 = [outputImage2 imageByCroppingToRect:?];
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

- (void)setExtent:(CGRect)extent
{
  height = extent.size.height;
  width = extent.size.width;
  y = extent.origin.y;
  x = extent.origin.x;
  p_extent = &self->_extent;
  if (!CGRectEqualToRect(extent, self->_extent))
  {
    p_extent->origin.x = x;
    p_extent->origin.y = y;
    p_extent->size.width = width;
    p_extent->size.height = height;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v4 = objc_opt_new();
  [v4 setExtent:{self->_extent.origin.x, self->_extent.origin.y, self->_extent.size.width, self->_extent.size.height}];
  particleSize = [(PUVFXImageGenerator *)self particleSize];
  [v4 setParticleSize:particleSize];

  innerParticleSize = [(PUVFXImageGenerator *)self innerParticleSize];
  [v4 setInnerParticleSize:innerParticleSize];

  backgroundCompositingFilter = [(PUVFXImageGenerator *)self backgroundCompositingFilter];
  [v4 setBackgroundCompositingFilter:backgroundCompositingFilter];

  gradientCompositingFilter = [(PUVFXImageGenerator *)self gradientCompositingFilter];
  [v4 setGradientCompositingFilter:gradientCompositingFilter];

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
@interface SBBlurItemContainerParameters
+ (id)defaultCrossblurBlurParameters;
- (SBBlurItemContainerParameters)initWithBlurRadius:(double)radius shouldRasterize:(BOOL)rasterize rasterizationScale:(double)scale inputQuality:(int64_t)quality inputIntermediateBitDepth:(int64_t)depth blurAnimationSettings:(id)settings;
@end

@implementation SBBlurItemContainerParameters

+ (id)defaultCrossblurBlurParameters
{
  v2 = +[SBAppSwitcherDomain rootSettings];
  animationSettings = [v2 animationSettings];

  v4 = [SBBlurItemContainerParameters alloc];
  [animationSettings crossblurDosidoBlurRadius];
  v6 = v5;
  [animationSettings crossblurRasterizationScale];
  v8 = v7;
  crossblurDosidoSettings = [animationSettings crossblurDosidoSettings];
  v10 = [(SBBlurItemContainerParameters *)v4 initWithBlurRadius:0 shouldRasterize:1 rasterizationScale:1 inputQuality:crossblurDosidoSettings inputIntermediateBitDepth:v6 blurAnimationSettings:v8];

  return v10;
}

- (SBBlurItemContainerParameters)initWithBlurRadius:(double)radius shouldRasterize:(BOOL)rasterize rasterizationScale:(double)scale inputQuality:(int64_t)quality inputIntermediateBitDepth:(int64_t)depth blurAnimationSettings:(id)settings
{
  settingsCopy = settings;
  v19.receiver = self;
  v19.super_class = SBBlurItemContainerParameters;
  v16 = [(SBBlurItemContainerParameters *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_shouldRasterize = rasterize;
    v16->_blurRadius = radius;
    v16->_rasterizationScale = scale;
    v16->_inputQuality = quality;
    v16->_inputIntermediateBitDepth = depth;
    objc_storeStrong(&v16->_blurAnimationSettings, settings);
  }

  return v17;
}

@end
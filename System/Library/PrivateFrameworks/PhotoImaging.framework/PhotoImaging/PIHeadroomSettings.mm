@interface PIHeadroomSettings
+ (id)sharedInstance;
- (BOOL)useLinearBlur;
- (PIHeadroomSettings)init;
- (double)aperture;
- (double)blurRadius;
- (double)bottomGradientAlpha;
- (double)bottomGradientBottomLocation;
- (double)bottomGradientTopLocation;
- (double)center;
- (double)depthBottom;
- (double)depthTop;
- (double)falloffHeight;
- (double)gradientHeight;
- (double)gradientWhite;
- (double)highKeyGradientWhite;
- (double)noise;
- (double)topGradientAlpha;
- (double)topGradientBottomLocation;
- (double)topGradientTopLocation;
- (double)vignetteFalloff;
- (double)vignetteIntensity;
- (double)vignetteRad;
- (void)_setDefaultValues;
- (void)setAperture:(double)aperture;
- (void)setBlurRadius:(double)radius;
- (void)setBottomGradientAlpha:(double)alpha;
- (void)setBottomGradientBottomLocation:(double)location;
- (void)setBottomGradientTopLocation:(double)location;
- (void)setCenter:(double)center;
- (void)setDepthBottom:(double)bottom;
- (void)setDepthTop:(double)top;
- (void)setFalloffHeight:(double)height;
- (void)setGradientHeight:(double)height;
- (void)setGradientWhite:(double)white;
- (void)setHighKeyGradientWhite:(double)white;
- (void)setNoise:(double)noise;
- (void)setTopGradientAlpha:(double)alpha;
- (void)setTopGradientBottomLocation:(double)location;
- (void)setTopGradientTopLocation:(double)location;
- (void)setUseLinearBlur:(BOOL)blur;
- (void)setVignetteFalloff:(double)falloff;
- (void)setVignetteIntensity:(double)intensity;
- (void)setVignetteRad:(double)rad;
@end

@implementation PIHeadroomSettings

- (void)setUseLinearBlur:(BOOL)blur
{
  blurCopy = blur;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(sel_useLinearBlur);
  uppercaseString = [v5 uppercaseString];
  v7 = [v4 stringWithFormat:@"PI_HEADROOM_%@", uppercaseString];
  [standardUserDefaults setBool:blurCopy forKey:v7];
}

- (BOOL)useLinearBlur
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromSelector(sel_useLinearBlur);
  uppercaseString = [v4 uppercaseString];
  v6 = [v3 stringWithFormat:@"PI_HEADROOM_%@", uppercaseString];
  v7 = [standardUserDefaults BOOLForKey:v6];

  return v7;
}

- (void)setCenter:(double)center
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(sel_center);
  uppercaseString = [v5 uppercaseString];
  v7 = [v4 stringWithFormat:@"PI_HEADROOM_%@", uppercaseString];
  *&center = center;
  LODWORD(v8) = LODWORD(center);
  [standardUserDefaults setFloat:v7 forKey:v8];
}

- (double)center
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromSelector(sel_center);
  uppercaseString = [v4 uppercaseString];
  v6 = [v3 stringWithFormat:@"PI_HEADROOM_%@", uppercaseString];
  [standardUserDefaults floatForKey:v6];
  v8 = v7;

  return v8;
}

- (void)setNoise:(double)noise
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(sel_noise);
  uppercaseString = [v5 uppercaseString];
  v7 = [v4 stringWithFormat:@"PI_HEADROOM_%@", uppercaseString];
  *&noise = noise;
  LODWORD(v8) = LODWORD(noise);
  [standardUserDefaults setFloat:v7 forKey:v8];
}

- (double)noise
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromSelector(sel_noise);
  uppercaseString = [v4 uppercaseString];
  v6 = [v3 stringWithFormat:@"PI_HEADROOM_%@", uppercaseString];
  [standardUserDefaults floatForKey:v6];
  v8 = v7;

  return v8;
}

- (void)setAperture:(double)aperture
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(sel_aperture);
  uppercaseString = [v5 uppercaseString];
  v7 = [v4 stringWithFormat:@"PI_HEADROOM_%@", uppercaseString];
  *&aperture = aperture;
  LODWORD(v8) = LODWORD(aperture);
  [standardUserDefaults setFloat:v7 forKey:v8];
}

- (double)aperture
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromSelector(sel_aperture);
  uppercaseString = [v4 uppercaseString];
  v6 = [v3 stringWithFormat:@"PI_HEADROOM_%@", uppercaseString];
  [standardUserDefaults floatForKey:v6];
  v8 = v7;

  return v8;
}

- (void)setVignetteFalloff:(double)falloff
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(sel_vignetteFalloff);
  uppercaseString = [v5 uppercaseString];
  v7 = [v4 stringWithFormat:@"PI_HEADROOM_%@", uppercaseString];
  *&falloff = falloff;
  LODWORD(v8) = LODWORD(falloff);
  [standardUserDefaults setFloat:v7 forKey:v8];
}

- (double)vignetteFalloff
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromSelector(sel_vignetteFalloff);
  uppercaseString = [v4 uppercaseString];
  v6 = [v3 stringWithFormat:@"PI_HEADROOM_%@", uppercaseString];
  [standardUserDefaults floatForKey:v6];
  v8 = v7;

  return v8;
}

- (void)setVignetteIntensity:(double)intensity
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(sel_vignetteIntensity);
  uppercaseString = [v5 uppercaseString];
  v7 = [v4 stringWithFormat:@"PI_HEADROOM_%@", uppercaseString];
  *&intensity = intensity;
  LODWORD(v8) = LODWORD(intensity);
  [standardUserDefaults setFloat:v7 forKey:v8];
}

- (double)vignetteIntensity
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromSelector(sel_vignetteIntensity);
  uppercaseString = [v4 uppercaseString];
  v6 = [v3 stringWithFormat:@"PI_HEADROOM_%@", uppercaseString];
  [standardUserDefaults floatForKey:v6];
  v8 = v7;

  return v8;
}

- (void)setVignetteRad:(double)rad
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(sel_vignetteRad);
  uppercaseString = [v5 uppercaseString];
  v7 = [v4 stringWithFormat:@"PI_HEADROOM_%@", uppercaseString];
  *&rad = rad;
  LODWORD(v8) = LODWORD(rad);
  [standardUserDefaults setFloat:v7 forKey:v8];
}

- (double)vignetteRad
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromSelector(sel_vignetteRad);
  uppercaseString = [v4 uppercaseString];
  v6 = [v3 stringWithFormat:@"PI_HEADROOM_%@", uppercaseString];
  [standardUserDefaults floatForKey:v6];
  v8 = v7;

  return v8;
}

- (double)depthBottom
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromSelector(sel_depthBottom);
  uppercaseString = [v4 uppercaseString];
  v6 = [v3 stringWithFormat:@"PI_HEADROOM_%@", uppercaseString];
  [standardUserDefaults floatForKey:v6];
  v8 = v7;

  return v8;
}

- (void)setDepthBottom:(double)bottom
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(sel_depthBottom);
  uppercaseString = [v5 uppercaseString];
  v7 = [v4 stringWithFormat:@"PI_HEADROOM_%@", uppercaseString];
  *&bottom = bottom;
  LODWORD(v8) = LODWORD(bottom);
  [standardUserDefaults setFloat:v7 forKey:v8];
}

- (double)depthTop
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromSelector(sel_depthTop);
  uppercaseString = [v4 uppercaseString];
  v6 = [v3 stringWithFormat:@"PI_HEADROOM_%@", uppercaseString];
  [standardUserDefaults floatForKey:v6];
  v8 = v7;

  return v8;
}

- (void)setDepthTop:(double)top
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(sel_depthTop);
  uppercaseString = [v5 uppercaseString];
  v7 = [v4 stringWithFormat:@"PI_HEADROOM_%@", uppercaseString];
  *&top = top;
  LODWORD(v8) = LODWORD(top);
  [standardUserDefaults setFloat:v7 forKey:v8];
}

- (void)setTopGradientBottomLocation:(double)location
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(sel_topGradientBottomLocation);
  uppercaseString = [v5 uppercaseString];
  v7 = [v4 stringWithFormat:@"PI_HEADROOM_%@", uppercaseString];
  *&location = location;
  LODWORD(v8) = LODWORD(location);
  [standardUserDefaults setFloat:v7 forKey:v8];
}

- (double)topGradientBottomLocation
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromSelector(sel_topGradientBottomLocation);
  uppercaseString = [v4 uppercaseString];
  v6 = [v3 stringWithFormat:@"PI_HEADROOM_%@", uppercaseString];
  [standardUserDefaults floatForKey:v6];
  v8 = v7;

  return v8;
}

- (void)setTopGradientTopLocation:(double)location
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(sel_topGradientTopLocation);
  uppercaseString = [v5 uppercaseString];
  v7 = [v4 stringWithFormat:@"PI_HEADROOM_%@", uppercaseString];
  *&location = location;
  LODWORD(v8) = LODWORD(location);
  [standardUserDefaults setFloat:v7 forKey:v8];
}

- (double)topGradientTopLocation
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromSelector(sel_topGradientTopLocation);
  uppercaseString = [v4 uppercaseString];
  v6 = [v3 stringWithFormat:@"PI_HEADROOM_%@", uppercaseString];
  [standardUserDefaults floatForKey:v6];
  v8 = v7;

  return v8;
}

- (void)setTopGradientAlpha:(double)alpha
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(sel_topGradientAlpha);
  uppercaseString = [v5 uppercaseString];
  v7 = [v4 stringWithFormat:@"PI_HEADROOM_%@", uppercaseString];
  *&alpha = alpha;
  LODWORD(v8) = LODWORD(alpha);
  [standardUserDefaults setFloat:v7 forKey:v8];
}

- (double)topGradientAlpha
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromSelector(sel_topGradientAlpha);
  uppercaseString = [v4 uppercaseString];
  v6 = [v3 stringWithFormat:@"PI_HEADROOM_%@", uppercaseString];
  [standardUserDefaults floatForKey:v6];
  v8 = v7;

  return v8;
}

- (void)setBottomGradientBottomLocation:(double)location
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(sel_bottomGradientBottomLocation);
  uppercaseString = [v5 uppercaseString];
  v7 = [v4 stringWithFormat:@"PI_HEADROOM_%@", uppercaseString];
  *&location = location;
  LODWORD(v8) = LODWORD(location);
  [standardUserDefaults setFloat:v7 forKey:v8];
}

- (double)bottomGradientBottomLocation
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromSelector(sel_bottomGradientBottomLocation);
  uppercaseString = [v4 uppercaseString];
  v6 = [v3 stringWithFormat:@"PI_HEADROOM_%@", uppercaseString];
  [standardUserDefaults floatForKey:v6];
  v8 = v7;

  return v8;
}

- (void)setBottomGradientTopLocation:(double)location
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(sel_bottomGradientTopLocation);
  uppercaseString = [v5 uppercaseString];
  v7 = [v4 stringWithFormat:@"PI_HEADROOM_%@", uppercaseString];
  *&location = location;
  LODWORD(v8) = LODWORD(location);
  [standardUserDefaults setFloat:v7 forKey:v8];
}

- (double)bottomGradientTopLocation
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromSelector(sel_bottomGradientTopLocation);
  uppercaseString = [v4 uppercaseString];
  v6 = [v3 stringWithFormat:@"PI_HEADROOM_%@", uppercaseString];
  [standardUserDefaults floatForKey:v6];
  v8 = v7;

  return v8;
}

- (void)setBottomGradientAlpha:(double)alpha
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(sel_bottomGradientAlpha);
  uppercaseString = [v5 uppercaseString];
  v7 = [v4 stringWithFormat:@"PI_HEADROOM_%@", uppercaseString];
  *&alpha = alpha;
  LODWORD(v8) = LODWORD(alpha);
  [standardUserDefaults setFloat:v7 forKey:v8];
}

- (double)bottomGradientAlpha
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromSelector(sel_bottomGradientAlpha);
  uppercaseString = [v4 uppercaseString];
  v6 = [v3 stringWithFormat:@"PI_HEADROOM_%@", uppercaseString];
  [standardUserDefaults floatForKey:v6];
  v8 = v7;

  return v8;
}

- (void)setHighKeyGradientWhite:(double)white
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(sel_highKeyGradientWhite);
  uppercaseString = [v5 uppercaseString];
  v7 = [v4 stringWithFormat:@"PI_HEADROOM_%@", uppercaseString];
  *&white = white;
  LODWORD(v8) = LODWORD(white);
  [standardUserDefaults setFloat:v7 forKey:v8];
}

- (double)highKeyGradientWhite
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromSelector(sel_highKeyGradientWhite);
  uppercaseString = [v4 uppercaseString];
  v6 = [v3 stringWithFormat:@"PI_HEADROOM_%@", uppercaseString];
  [standardUserDefaults floatForKey:v6];
  v8 = v7;

  return v8;
}

- (void)setGradientWhite:(double)white
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(sel_gradientWhite);
  uppercaseString = [v5 uppercaseString];
  v7 = [v4 stringWithFormat:@"PI_HEADROOM_%@", uppercaseString];
  *&white = white;
  LODWORD(v8) = LODWORD(white);
  [standardUserDefaults setFloat:v7 forKey:v8];
}

- (double)gradientWhite
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromSelector(sel_gradientWhite);
  uppercaseString = [v4 uppercaseString];
  v6 = [v3 stringWithFormat:@"PI_HEADROOM_%@", uppercaseString];
  [standardUserDefaults floatForKey:v6];
  v8 = v7;

  return v8;
}

- (void)setGradientHeight:(double)height
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(sel_gradientHeight);
  uppercaseString = [v5 uppercaseString];
  v7 = [v4 stringWithFormat:@"PI_HEADROOM_%@", uppercaseString];
  *&height = height;
  LODWORD(v8) = LODWORD(height);
  [standardUserDefaults setFloat:v7 forKey:v8];
}

- (double)gradientHeight
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromSelector(sel_gradientHeight);
  uppercaseString = [v4 uppercaseString];
  v6 = [v3 stringWithFormat:@"PI_HEADROOM_%@", uppercaseString];
  [standardUserDefaults floatForKey:v6];
  v8 = v7;

  return v8;
}

- (void)setFalloffHeight:(double)height
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(sel_falloffHeight);
  uppercaseString = [v5 uppercaseString];
  v7 = [v4 stringWithFormat:@"PI_HEADROOM_%@", uppercaseString];
  *&height = height;
  LODWORD(v8) = LODWORD(height);
  [standardUserDefaults setFloat:v7 forKey:v8];
}

- (double)falloffHeight
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromSelector(sel_falloffHeight);
  uppercaseString = [v4 uppercaseString];
  v6 = [v3 stringWithFormat:@"PI_HEADROOM_%@", uppercaseString];
  [standardUserDefaults floatForKey:v6];
  v8 = v7;

  return v8;
}

- (void)setBlurRadius:(double)radius
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(sel_blurRadius);
  uppercaseString = [v5 uppercaseString];
  v7 = [v4 stringWithFormat:@"PI_HEADROOM_%@", uppercaseString];
  *&radius = radius;
  LODWORD(v8) = LODWORD(radius);
  [standardUserDefaults setFloat:v7 forKey:v8];
}

- (double)blurRadius
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromSelector(sel_blurRadius);
  uppercaseString = [v4 uppercaseString];
  v6 = [v3 stringWithFormat:@"PI_HEADROOM_%@", uppercaseString];
  [standardUserDefaults floatForKey:v6];
  v8 = v7;

  return v8;
}

- (void)_setDefaultValues
{
  [(PIHeadroomSettings *)self setBlurRadius:7.0];
  [(PIHeadroomSettings *)self setBlurMaskTopLocation:0.49000001];
  [(PIHeadroomSettings *)self setFalloffHeight:0.180000007];
  [(PIHeadroomSettings *)self setGradientHeight:1.0];
  [(PIHeadroomSettings *)self setGradientWhite:0.0];
  [(PIHeadroomSettings *)self setHighKeyGradientWhite:1.0];
  [(PIHeadroomSettings *)self setBottomGradientAlpha:0.75999999];
  [(PIHeadroomSettings *)self setBottomGradientTopLocation:0.330000013];
  [(PIHeadroomSettings *)self setBottomGradientBottomLocation:1.0];
  [(PIHeadroomSettings *)self setTopGradientAlpha:0.709999979];
  [(PIHeadroomSettings *)self setTopGradientTopLocation:0.300000012];
  [(PIHeadroomSettings *)self setTopGradientBottomLocation:1.0];
  [(PIHeadroomSettings *)self setUseSoftLightBlendingModeForTopGradient:1];
  [(PIHeadroomSettings *)self setDepthTop:1.0];
  [(PIHeadroomSettings *)self setDepthBottom:0.15];
  [(PIHeadroomSettings *)self setVignetteRad:1.0];
  [(PIHeadroomSettings *)self setVignetteIntensity:0.0];
  [(PIHeadroomSettings *)self setVignetteFalloff:0.2];
  [(PIHeadroomSettings *)self setAperture:1.0];
  [(PIHeadroomSettings *)self setNoise:0.019];
  [(PIHeadroomSettings *)self setCenter:0.33];

  [(PIHeadroomSettings *)self setUseLinearBlur:0];
}

- (PIHeadroomSettings)init
{
  v5.receiver = self;
  v5.super_class = PIHeadroomSettings;
  v2 = [(PIHeadroomSettings *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PIHeadroomSettings *)v2 _setDefaultValues];
  }

  return v3;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global_102);
  }

  v3 = sharedInstance_headroomSettings;

  return v3;
}

uint64_t __36__PIHeadroomSettings_sharedInstance__block_invoke()
{
  sharedInstance_headroomSettings = objc_alloc_init(PIHeadroomSettings);

  return MEMORY[0x1EEE66BB8]();
}

@end
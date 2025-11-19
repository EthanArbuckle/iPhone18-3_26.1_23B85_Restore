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
- (void)setAperture:(double)a3;
- (void)setBlurRadius:(double)a3;
- (void)setBottomGradientAlpha:(double)a3;
- (void)setBottomGradientBottomLocation:(double)a3;
- (void)setBottomGradientTopLocation:(double)a3;
- (void)setCenter:(double)a3;
- (void)setDepthBottom:(double)a3;
- (void)setDepthTop:(double)a3;
- (void)setFalloffHeight:(double)a3;
- (void)setGradientHeight:(double)a3;
- (void)setGradientWhite:(double)a3;
- (void)setHighKeyGradientWhite:(double)a3;
- (void)setNoise:(double)a3;
- (void)setTopGradientAlpha:(double)a3;
- (void)setTopGradientBottomLocation:(double)a3;
- (void)setTopGradientTopLocation:(double)a3;
- (void)setUseLinearBlur:(BOOL)a3;
- (void)setVignetteFalloff:(double)a3;
- (void)setVignetteIntensity:(double)a3;
- (void)setVignetteRad:(double)a3;
@end

@implementation PIHeadroomSettings

- (void)setUseLinearBlur:(BOOL)a3
{
  v3 = a3;
  v8 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(sel_useLinearBlur);
  v6 = [v5 uppercaseString];
  v7 = [v4 stringWithFormat:@"PI_HEADROOM_%@", v6];
  [v8 setBool:v3 forKey:v7];
}

- (BOOL)useLinearBlur
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromSelector(sel_useLinearBlur);
  v5 = [v4 uppercaseString];
  v6 = [v3 stringWithFormat:@"PI_HEADROOM_%@", v5];
  v7 = [v2 BOOLForKey:v6];

  return v7;
}

- (void)setCenter:(double)a3
{
  v9 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(sel_center);
  v6 = [v5 uppercaseString];
  v7 = [v4 stringWithFormat:@"PI_HEADROOM_%@", v6];
  *&a3 = a3;
  LODWORD(v8) = LODWORD(a3);
  [v9 setFloat:v7 forKey:v8];
}

- (double)center
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromSelector(sel_center);
  v5 = [v4 uppercaseString];
  v6 = [v3 stringWithFormat:@"PI_HEADROOM_%@", v5];
  [v2 floatForKey:v6];
  v8 = v7;

  return v8;
}

- (void)setNoise:(double)a3
{
  v9 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(sel_noise);
  v6 = [v5 uppercaseString];
  v7 = [v4 stringWithFormat:@"PI_HEADROOM_%@", v6];
  *&a3 = a3;
  LODWORD(v8) = LODWORD(a3);
  [v9 setFloat:v7 forKey:v8];
}

- (double)noise
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromSelector(sel_noise);
  v5 = [v4 uppercaseString];
  v6 = [v3 stringWithFormat:@"PI_HEADROOM_%@", v5];
  [v2 floatForKey:v6];
  v8 = v7;

  return v8;
}

- (void)setAperture:(double)a3
{
  v9 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(sel_aperture);
  v6 = [v5 uppercaseString];
  v7 = [v4 stringWithFormat:@"PI_HEADROOM_%@", v6];
  *&a3 = a3;
  LODWORD(v8) = LODWORD(a3);
  [v9 setFloat:v7 forKey:v8];
}

- (double)aperture
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromSelector(sel_aperture);
  v5 = [v4 uppercaseString];
  v6 = [v3 stringWithFormat:@"PI_HEADROOM_%@", v5];
  [v2 floatForKey:v6];
  v8 = v7;

  return v8;
}

- (void)setVignetteFalloff:(double)a3
{
  v9 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(sel_vignetteFalloff);
  v6 = [v5 uppercaseString];
  v7 = [v4 stringWithFormat:@"PI_HEADROOM_%@", v6];
  *&a3 = a3;
  LODWORD(v8) = LODWORD(a3);
  [v9 setFloat:v7 forKey:v8];
}

- (double)vignetteFalloff
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromSelector(sel_vignetteFalloff);
  v5 = [v4 uppercaseString];
  v6 = [v3 stringWithFormat:@"PI_HEADROOM_%@", v5];
  [v2 floatForKey:v6];
  v8 = v7;

  return v8;
}

- (void)setVignetteIntensity:(double)a3
{
  v9 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(sel_vignetteIntensity);
  v6 = [v5 uppercaseString];
  v7 = [v4 stringWithFormat:@"PI_HEADROOM_%@", v6];
  *&a3 = a3;
  LODWORD(v8) = LODWORD(a3);
  [v9 setFloat:v7 forKey:v8];
}

- (double)vignetteIntensity
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromSelector(sel_vignetteIntensity);
  v5 = [v4 uppercaseString];
  v6 = [v3 stringWithFormat:@"PI_HEADROOM_%@", v5];
  [v2 floatForKey:v6];
  v8 = v7;

  return v8;
}

- (void)setVignetteRad:(double)a3
{
  v9 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(sel_vignetteRad);
  v6 = [v5 uppercaseString];
  v7 = [v4 stringWithFormat:@"PI_HEADROOM_%@", v6];
  *&a3 = a3;
  LODWORD(v8) = LODWORD(a3);
  [v9 setFloat:v7 forKey:v8];
}

- (double)vignetteRad
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromSelector(sel_vignetteRad);
  v5 = [v4 uppercaseString];
  v6 = [v3 stringWithFormat:@"PI_HEADROOM_%@", v5];
  [v2 floatForKey:v6];
  v8 = v7;

  return v8;
}

- (double)depthBottom
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromSelector(sel_depthBottom);
  v5 = [v4 uppercaseString];
  v6 = [v3 stringWithFormat:@"PI_HEADROOM_%@", v5];
  [v2 floatForKey:v6];
  v8 = v7;

  return v8;
}

- (void)setDepthBottom:(double)a3
{
  v9 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(sel_depthBottom);
  v6 = [v5 uppercaseString];
  v7 = [v4 stringWithFormat:@"PI_HEADROOM_%@", v6];
  *&a3 = a3;
  LODWORD(v8) = LODWORD(a3);
  [v9 setFloat:v7 forKey:v8];
}

- (double)depthTop
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromSelector(sel_depthTop);
  v5 = [v4 uppercaseString];
  v6 = [v3 stringWithFormat:@"PI_HEADROOM_%@", v5];
  [v2 floatForKey:v6];
  v8 = v7;

  return v8;
}

- (void)setDepthTop:(double)a3
{
  v9 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(sel_depthTop);
  v6 = [v5 uppercaseString];
  v7 = [v4 stringWithFormat:@"PI_HEADROOM_%@", v6];
  *&a3 = a3;
  LODWORD(v8) = LODWORD(a3);
  [v9 setFloat:v7 forKey:v8];
}

- (void)setTopGradientBottomLocation:(double)a3
{
  v9 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(sel_topGradientBottomLocation);
  v6 = [v5 uppercaseString];
  v7 = [v4 stringWithFormat:@"PI_HEADROOM_%@", v6];
  *&a3 = a3;
  LODWORD(v8) = LODWORD(a3);
  [v9 setFloat:v7 forKey:v8];
}

- (double)topGradientBottomLocation
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromSelector(sel_topGradientBottomLocation);
  v5 = [v4 uppercaseString];
  v6 = [v3 stringWithFormat:@"PI_HEADROOM_%@", v5];
  [v2 floatForKey:v6];
  v8 = v7;

  return v8;
}

- (void)setTopGradientTopLocation:(double)a3
{
  v9 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(sel_topGradientTopLocation);
  v6 = [v5 uppercaseString];
  v7 = [v4 stringWithFormat:@"PI_HEADROOM_%@", v6];
  *&a3 = a3;
  LODWORD(v8) = LODWORD(a3);
  [v9 setFloat:v7 forKey:v8];
}

- (double)topGradientTopLocation
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromSelector(sel_topGradientTopLocation);
  v5 = [v4 uppercaseString];
  v6 = [v3 stringWithFormat:@"PI_HEADROOM_%@", v5];
  [v2 floatForKey:v6];
  v8 = v7;

  return v8;
}

- (void)setTopGradientAlpha:(double)a3
{
  v9 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(sel_topGradientAlpha);
  v6 = [v5 uppercaseString];
  v7 = [v4 stringWithFormat:@"PI_HEADROOM_%@", v6];
  *&a3 = a3;
  LODWORD(v8) = LODWORD(a3);
  [v9 setFloat:v7 forKey:v8];
}

- (double)topGradientAlpha
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromSelector(sel_topGradientAlpha);
  v5 = [v4 uppercaseString];
  v6 = [v3 stringWithFormat:@"PI_HEADROOM_%@", v5];
  [v2 floatForKey:v6];
  v8 = v7;

  return v8;
}

- (void)setBottomGradientBottomLocation:(double)a3
{
  v9 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(sel_bottomGradientBottomLocation);
  v6 = [v5 uppercaseString];
  v7 = [v4 stringWithFormat:@"PI_HEADROOM_%@", v6];
  *&a3 = a3;
  LODWORD(v8) = LODWORD(a3);
  [v9 setFloat:v7 forKey:v8];
}

- (double)bottomGradientBottomLocation
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromSelector(sel_bottomGradientBottomLocation);
  v5 = [v4 uppercaseString];
  v6 = [v3 stringWithFormat:@"PI_HEADROOM_%@", v5];
  [v2 floatForKey:v6];
  v8 = v7;

  return v8;
}

- (void)setBottomGradientTopLocation:(double)a3
{
  v9 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(sel_bottomGradientTopLocation);
  v6 = [v5 uppercaseString];
  v7 = [v4 stringWithFormat:@"PI_HEADROOM_%@", v6];
  *&a3 = a3;
  LODWORD(v8) = LODWORD(a3);
  [v9 setFloat:v7 forKey:v8];
}

- (double)bottomGradientTopLocation
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromSelector(sel_bottomGradientTopLocation);
  v5 = [v4 uppercaseString];
  v6 = [v3 stringWithFormat:@"PI_HEADROOM_%@", v5];
  [v2 floatForKey:v6];
  v8 = v7;

  return v8;
}

- (void)setBottomGradientAlpha:(double)a3
{
  v9 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(sel_bottomGradientAlpha);
  v6 = [v5 uppercaseString];
  v7 = [v4 stringWithFormat:@"PI_HEADROOM_%@", v6];
  *&a3 = a3;
  LODWORD(v8) = LODWORD(a3);
  [v9 setFloat:v7 forKey:v8];
}

- (double)bottomGradientAlpha
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromSelector(sel_bottomGradientAlpha);
  v5 = [v4 uppercaseString];
  v6 = [v3 stringWithFormat:@"PI_HEADROOM_%@", v5];
  [v2 floatForKey:v6];
  v8 = v7;

  return v8;
}

- (void)setHighKeyGradientWhite:(double)a3
{
  v9 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(sel_highKeyGradientWhite);
  v6 = [v5 uppercaseString];
  v7 = [v4 stringWithFormat:@"PI_HEADROOM_%@", v6];
  *&a3 = a3;
  LODWORD(v8) = LODWORD(a3);
  [v9 setFloat:v7 forKey:v8];
}

- (double)highKeyGradientWhite
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromSelector(sel_highKeyGradientWhite);
  v5 = [v4 uppercaseString];
  v6 = [v3 stringWithFormat:@"PI_HEADROOM_%@", v5];
  [v2 floatForKey:v6];
  v8 = v7;

  return v8;
}

- (void)setGradientWhite:(double)a3
{
  v9 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(sel_gradientWhite);
  v6 = [v5 uppercaseString];
  v7 = [v4 stringWithFormat:@"PI_HEADROOM_%@", v6];
  *&a3 = a3;
  LODWORD(v8) = LODWORD(a3);
  [v9 setFloat:v7 forKey:v8];
}

- (double)gradientWhite
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromSelector(sel_gradientWhite);
  v5 = [v4 uppercaseString];
  v6 = [v3 stringWithFormat:@"PI_HEADROOM_%@", v5];
  [v2 floatForKey:v6];
  v8 = v7;

  return v8;
}

- (void)setGradientHeight:(double)a3
{
  v9 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(sel_gradientHeight);
  v6 = [v5 uppercaseString];
  v7 = [v4 stringWithFormat:@"PI_HEADROOM_%@", v6];
  *&a3 = a3;
  LODWORD(v8) = LODWORD(a3);
  [v9 setFloat:v7 forKey:v8];
}

- (double)gradientHeight
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromSelector(sel_gradientHeight);
  v5 = [v4 uppercaseString];
  v6 = [v3 stringWithFormat:@"PI_HEADROOM_%@", v5];
  [v2 floatForKey:v6];
  v8 = v7;

  return v8;
}

- (void)setFalloffHeight:(double)a3
{
  v9 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(sel_falloffHeight);
  v6 = [v5 uppercaseString];
  v7 = [v4 stringWithFormat:@"PI_HEADROOM_%@", v6];
  *&a3 = a3;
  LODWORD(v8) = LODWORD(a3);
  [v9 setFloat:v7 forKey:v8];
}

- (double)falloffHeight
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromSelector(sel_falloffHeight);
  v5 = [v4 uppercaseString];
  v6 = [v3 stringWithFormat:@"PI_HEADROOM_%@", v5];
  [v2 floatForKey:v6];
  v8 = v7;

  return v8;
}

- (void)setBlurRadius:(double)a3
{
  v9 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(sel_blurRadius);
  v6 = [v5 uppercaseString];
  v7 = [v4 stringWithFormat:@"PI_HEADROOM_%@", v6];
  *&a3 = a3;
  LODWORD(v8) = LODWORD(a3);
  [v9 setFloat:v7 forKey:v8];
}

- (double)blurRadius
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromSelector(sel_blurRadius);
  v5 = [v4 uppercaseString];
  v6 = [v3 stringWithFormat:@"PI_HEADROOM_%@", v5];
  [v2 floatForKey:v6];
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
@interface PUPosterHeadroomSettings
+ (id)settingsControllerModule;
+ (id)sharedInstance;
- (void)setAperture:(double)aperture;
- (void)setBlurMaskTopLocation:(double)location;
- (void)setBlurRadius:(double)radius;
- (void)setBottomGradientAlpha:(double)alpha;
- (void)setBottomGradientBottomLocation:(double)location;
- (void)setBottomGradientTopLocation:(double)location;
- (void)setCenter:(double)center;
- (void)setDefaultValues;
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
- (void)setUseSoftLightBlendingModeForTopGradient:(BOOL)gradient;
- (void)setVignetteFalloff:(double)falloff;
- (void)setVignetteIntensity:(double)intensity;
- (void)setVignetteRad:(double)rad;
@end

@implementation PUPosterHeadroomSettings

- (void)setUseLinearBlur:(BOOL)blur
{
  if (self->_useLinearBlur != blur)
  {
    blurCopy = blur;
    self->_useLinearBlur = blur;
    mEMORY[0x1E69BDE48] = [MEMORY[0x1E69BDE48] sharedInstance];
    [mEMORY[0x1E69BDE48] setUseLinearBlur:blurCopy];
  }
}

- (void)setCenter:(double)center
{
  if (vabdd_f64(self->_center, center) > 0.00000999999975)
  {
    self->_center = center;
    mEMORY[0x1E69BDE48] = [MEMORY[0x1E69BDE48] sharedInstance];
    [mEMORY[0x1E69BDE48] setCenter:center];
  }
}

- (void)setNoise:(double)noise
{
  if (vabdd_f64(self->_noise, noise) > 0.00000999999975)
  {
    self->_noise = noise;
    mEMORY[0x1E69BDE48] = [MEMORY[0x1E69BDE48] sharedInstance];
    [mEMORY[0x1E69BDE48] setNoise:noise];
  }
}

- (void)setAperture:(double)aperture
{
  if (vabdd_f64(self->_aperture, aperture) > 0.00000999999975)
  {
    self->_aperture = aperture;
    mEMORY[0x1E69BDE48] = [MEMORY[0x1E69BDE48] sharedInstance];
    [mEMORY[0x1E69BDE48] setAperture:aperture];
  }
}

- (void)setVignetteFalloff:(double)falloff
{
  if (vabdd_f64(self->_vignetteFalloff, falloff) > 0.00000999999975)
  {
    self->_vignetteFalloff = falloff;
    mEMORY[0x1E69BDE48] = [MEMORY[0x1E69BDE48] sharedInstance];
    [mEMORY[0x1E69BDE48] setVignetteFalloff:falloff];
  }
}

- (void)setVignetteIntensity:(double)intensity
{
  if (vabdd_f64(self->_vignetteIntensity, intensity) > 0.00000999999975)
  {
    self->_vignetteIntensity = intensity;
    mEMORY[0x1E69BDE48] = [MEMORY[0x1E69BDE48] sharedInstance];
    [mEMORY[0x1E69BDE48] setVignetteIntensity:intensity];
  }
}

- (void)setVignetteRad:(double)rad
{
  if (vabdd_f64(self->_vignetteRad, rad) > 0.00000999999975)
  {
    self->_vignetteRad = rad;
    mEMORY[0x1E69BDE48] = [MEMORY[0x1E69BDE48] sharedInstance];
    [mEMORY[0x1E69BDE48] setVignetteRad:rad];
  }
}

- (void)setDepthBottom:(double)bottom
{
  if (vabdd_f64(self->_depthBottom, bottom) > 0.00000999999975)
  {
    self->_depthBottom = bottom;
    mEMORY[0x1E69BDE48] = [MEMORY[0x1E69BDE48] sharedInstance];
    [mEMORY[0x1E69BDE48] setDepthBottom:bottom];
  }
}

- (void)setDepthTop:(double)top
{
  if (vabdd_f64(self->_depthTop, top) > 0.00000999999975)
  {
    self->_depthTop = top;
    mEMORY[0x1E69BDE48] = [MEMORY[0x1E69BDE48] sharedInstance];
    [mEMORY[0x1E69BDE48] setDepthTop:top];
  }
}

- (void)setUseSoftLightBlendingModeForTopGradient:(BOOL)gradient
{
  if (self->_useSoftLightBlendingModeForTopGradient != gradient)
  {
    gradientCopy = gradient;
    self->_useSoftLightBlendingModeForTopGradient = gradient;
    mEMORY[0x1E69BDE48] = [MEMORY[0x1E69BDE48] sharedInstance];
    [mEMORY[0x1E69BDE48] setUseSoftLightBlendingModeForTopGradient:gradientCopy];
  }
}

- (void)setTopGradientBottomLocation:(double)location
{
  if (vabdd_f64(self->_topGradientBottomLocation, location) > 0.00000999999975)
  {
    self->_topGradientBottomLocation = location;
    mEMORY[0x1E69BDE48] = [MEMORY[0x1E69BDE48] sharedInstance];
    [mEMORY[0x1E69BDE48] setTopGradientBottomLocation:location];
  }
}

- (void)setTopGradientTopLocation:(double)location
{
  if (vabdd_f64(self->_topGradientTopLocation, location) > 0.00000999999975)
  {
    self->_topGradientTopLocation = location;
    mEMORY[0x1E69BDE48] = [MEMORY[0x1E69BDE48] sharedInstance];
    [mEMORY[0x1E69BDE48] setTopGradientTopLocation:location];
  }
}

- (void)setTopGradientAlpha:(double)alpha
{
  if (vabdd_f64(self->_topGradientAlpha, alpha) > 0.00000999999975)
  {
    self->_topGradientAlpha = alpha;
    mEMORY[0x1E69BDE48] = [MEMORY[0x1E69BDE48] sharedInstance];
    [mEMORY[0x1E69BDE48] setTopGradientAlpha:alpha];
  }
}

- (void)setBottomGradientBottomLocation:(double)location
{
  if (vabdd_f64(self->_bottomGradientBottomLocation, location) > 0.00000999999975)
  {
    self->_bottomGradientBottomLocation = location;
    mEMORY[0x1E69BDE48] = [MEMORY[0x1E69BDE48] sharedInstance];
    [mEMORY[0x1E69BDE48] setBottomGradientBottomLocation:location];
  }
}

- (void)setBottomGradientTopLocation:(double)location
{
  if (vabdd_f64(self->_bottomGradientTopLocation, location) > 0.00000999999975)
  {
    self->_bottomGradientTopLocation = location;
    mEMORY[0x1E69BDE48] = [MEMORY[0x1E69BDE48] sharedInstance];
    [mEMORY[0x1E69BDE48] setBottomGradientTopLocation:location];
  }
}

- (void)setBottomGradientAlpha:(double)alpha
{
  if (vabdd_f64(self->_bottomGradientAlpha, alpha) > 0.00000999999975)
  {
    self->_bottomGradientAlpha = alpha;
    mEMORY[0x1E69BDE48] = [MEMORY[0x1E69BDE48] sharedInstance];
    [mEMORY[0x1E69BDE48] setBottomGradientAlpha:alpha];
  }
}

- (void)setHighKeyGradientWhite:(double)white
{
  if (vabdd_f64(self->_highKeyGradientWhite, white) > 0.00000999999975)
  {
    self->_highKeyGradientWhite = white;
    mEMORY[0x1E69BDE48] = [MEMORY[0x1E69BDE48] sharedInstance];
    [mEMORY[0x1E69BDE48] setHighKeyGradientWhite:white];
  }
}

- (void)setGradientWhite:(double)white
{
  if (vabdd_f64(self->_gradientWhite, white) > 0.00000999999975)
  {
    self->_gradientWhite = white;
    mEMORY[0x1E69BDE48] = [MEMORY[0x1E69BDE48] sharedInstance];
    [mEMORY[0x1E69BDE48] setGradientWhite:white];
  }
}

- (void)setGradientHeight:(double)height
{
  if (vabdd_f64(self->_gradientHeight, height) > 0.00000999999975)
  {
    self->_gradientHeight = height;
    mEMORY[0x1E69BDE48] = [MEMORY[0x1E69BDE48] sharedInstance];
    [mEMORY[0x1E69BDE48] setGradientHeight:height];
  }
}

- (void)setFalloffHeight:(double)height
{
  if (vabdd_f64(self->_falloffHeight, height) > 0.00000999999975)
  {
    self->_falloffHeight = height;
    mEMORY[0x1E69BDE48] = [MEMORY[0x1E69BDE48] sharedInstance];
    [mEMORY[0x1E69BDE48] setFalloffHeight:height];
  }
}

- (void)setBlurMaskTopLocation:(double)location
{
  if (vabdd_f64(self->_blurMaskTopLocation, location) > 0.00000999999975)
  {
    self->_blurMaskTopLocation = location;
    mEMORY[0x1E69BDE48] = [MEMORY[0x1E69BDE48] sharedInstance];
    [mEMORY[0x1E69BDE48] setBlurMaskTopLocation:location];
  }
}

- (void)setBlurRadius:(double)radius
{
  if (vabdd_f64(self->_blurRadius, radius) > 0.00000999999975)
  {
    self->_blurRadius = radius;
    mEMORY[0x1E69BDE48] = [MEMORY[0x1E69BDE48] sharedInstance];
    [mEMORY[0x1E69BDE48] setBlurRadius:radius];
  }
}

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PUPosterHeadroomSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PUPosterHeadroomSettings *)self setFadeAnimationDuration:0.300000012];
  [(PUPosterHeadroomSettings *)self setBlurVisibilityFraction:1.0];
  [(PUPosterHeadroomSettings *)self setBlurRadius:7.0];
  [(PUPosterHeadroomSettings *)self setBlurMaskTopLocation:0.49000001];
  [(PUPosterHeadroomSettings *)self setBlurMaskHeight:300.0];
  [(PUPosterHeadroomSettings *)self setFalloffHeight:0.180000007];
  [(PUPosterHeadroomSettings *)self setGradientHeight:1.0];
  [(PUPosterHeadroomSettings *)self setGradientWhite:0.0];
  [(PUPosterHeadroomSettings *)self setHighKeyGradientWhite:1.0];
  [(PUPosterHeadroomSettings *)self setBottomGradientAlpha:0.75999999];
  [(PUPosterHeadroomSettings *)self setBottomGradientTopLocation:0.330000013];
  [(PUPosterHeadroomSettings *)self setBottomGradientBottomLocation:1.0];
  [(PUPosterHeadroomSettings *)self setTopGradientAlpha:0.709999979];
  [(PUPosterHeadroomSettings *)self setTopGradientTopLocation:0.300000012];
  [(PUPosterHeadroomSettings *)self setTopGradientBottomLocation:1.0];
  [(PUPosterHeadroomSettings *)self setUseSoftLightBlendingModeForTopGradient:1];
  [(PUPosterHeadroomSettings *)self setDepthTop:1.0];
  [(PUPosterHeadroomSettings *)self setDepthBottom:0.15];
  [(PUPosterHeadroomSettings *)self setVignetteRad:1.0];
  [(PUPosterHeadroomSettings *)self setVignetteIntensity:0.0];
  [(PUPosterHeadroomSettings *)self setVignetteFalloff:0.2];
  [(PUPosterHeadroomSettings *)self setAperture:1.0];
  [(PUPosterHeadroomSettings *)self setNoise:0.019];
  [(PUPosterHeadroomSettings *)self setCenter:0.33];
  [(PUPosterHeadroomSettings *)self setUseLinearBlur:0];
}

+ (id)settingsControllerModule
{
  v89[9] = *MEMORY[0x1E69E9840];
  v84 = MEMORY[0x1E69C6638];
  v82 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Depth top" valueKeyPath:@"depthTop"];
  v80 = [v82 minValue:0.0 maxValue:1.5];
  v78 = [v80 pu_increment:0.00999999978];
  v89[0] = v78;
  v76 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Depth bottom" valueKeyPath:@"depthBottom"];
  v74 = [v76 minValue:0.0 maxValue:1.5];
  v72 = [v74 pu_increment:0.00999999978];
  v89[1] = v72;
  v70 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Vignette Radius" valueKeyPath:@"vignetteRad"];
  v68 = [v70 minValue:0.0 maxValue:1.5];
  v66 = [v68 pu_increment:0.00999999978];
  v89[2] = v66;
  v64 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Vignette Intensity" valueKeyPath:@"vignetteIntensity"];
  v62 = [v64 minValue:-1.0 maxValue:1.0];
  v60 = [v62 pu_increment:0.00999999978];
  v89[3] = v60;
  v58 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Vignette Falloff" valueKeyPath:@"vignetteFalloff"];
  v56 = [v58 minValue:0.0 maxValue:1.0];
  v53 = [v56 pu_increment:0.00999999978];
  v89[4] = v53;
  v51 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Gamma" valueKeyPath:@"aperture"];
  v2 = [v51 minValue:0.5 maxValue:1.5];
  v3 = [v2 pu_increment:0.100000001];
  v89[5] = v3;
  v4 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Lumma noise" valueKeyPath:@"noise"];
  v5 = [v4 minValue:0.0 maxValue:0.200000003];
  v6 = [v5 pu_increment:0.00999999978];
  v89[6] = v6;
  v7 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Radial blur center" valueKeyPath:@"center"];
  v8 = [v7 minValue:0.0 maxValue:1.0];
  v9 = [v8 pu_increment:0.00999999978];
  v89[7] = v9;
  v10 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Use linear blur" valueKeyPath:@"useLinearBlur"];
  v89[8] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:9];
  v85 = [v84 sectionWithRows:v11];

  v54 = MEMORY[0x1E69C6638];
  v83 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Fade Animation Duration" valueKeyPath:@"fadeAnimationDuration"];
  v81 = [v83 minValue:0.0 maxValue:2.0];
  v79 = [v81 pu_increment:0.00999999978];
  v88[0] = v79;
  v77 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Blur Visibility Fraction" valueKeyPath:@"blurVisibilityFraction"];
  v75 = [v77 minValue:0.0500000007 maxValue:1.0];
  v73 = [v75 pu_increment:0.0500000007];
  v88[1] = v73;
  v71 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Blur Radius" valueKeyPath:@"blurRadius"];
  v69 = [v71 minValue:0.0 maxValue:50.0];
  v67 = [v69 pu_increment:0.5];
  v88[2] = v67;
  v65 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Blur Mask Top Location" valueKeyPath:@"blurMaskTopLocation"];
  v63 = [v65 minValue:0.0 maxValue:1.0];
  v61 = [v63 pu_increment:0.00999999978];
  v88[3] = v61;
  v59 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Falloff Height" valueKeyPath:@"falloffHeight"];
  v57 = [v59 minValue:0.0 maxValue:1.0];
  v52 = [v57 pu_increment:0.00999999978];
  v88[4] = v52;
  v50 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Gradient Height" valueKeyPath:@"gradientHeight"];
  v49 = [v50 minValue:0.0500000007 maxValue:1.0];
  v48 = [v49 pu_increment:0.00999999978];
  v88[5] = v48;
  v47 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Gradient White" valueKeyPath:@"gradientWhite"];
  v46 = [v47 minValue:0.0 maxValue:1.0];
  v45 = [v46 pu_increment:0.00999999978];
  v88[6] = v45;
  v44 = [MEMORY[0x1E69C66A0] rowWithTitle:@"High Key Gradient White" valueKeyPath:@"highKeyGradientWhite"];
  v43 = [v44 minValue:0.0 maxValue:1.0];
  v42 = [v43 pu_increment:0.00999999978];
  v88[7] = v42;
  v41 = [MEMORY[0x1E69C66A0] rowWithTitle:@"First Gradient Alpha" valueKeyPath:@"bottomGradientAlpha"];
  v40 = [v41 minValue:0.0 maxValue:1.0];
  v39 = [v40 pu_increment:0.00999999978];
  v88[8] = v39;
  v38 = [MEMORY[0x1E69C66A0] rowWithTitle:@"First Gradient Top Point" valueKeyPath:@"bottomGradientTopLocation"];
  v37 = [v38 minValue:0.0 maxValue:1.0];
  v36 = [v37 pu_increment:0.00999999978];
  v88[9] = v36;
  v35 = [MEMORY[0x1E69C66A0] rowWithTitle:@"First Gradient Bottom Point" valueKeyPath:@"bottomGradientBottomLocation"];
  v34 = [v35 minValue:0.0 maxValue:1.0];
  v33 = [v34 pu_increment:0.00999999978];
  v88[10] = v33;
  v32 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Second Gradient Alpha" valueKeyPath:@"topGradientAlpha"];
  v12 = [v32 minValue:0.0 maxValue:1.0];
  v13 = [v12 pu_increment:0.00999999978];
  v88[11] = v13;
  v14 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Second Gradient Top Point" valueKeyPath:@"topGradientTopLocation"];
  v15 = [v14 minValue:0.0 maxValue:1.0];
  v16 = [v15 pu_increment:0.00999999978];
  v88[12] = v16;
  v17 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Second Gradient Bottom Point" valueKeyPath:@"topGradientBottomLocation"];
  v18 = [v17 minValue:0.0 maxValue:1.0];
  v19 = [v18 pu_increment:0.00999999978];
  v88[13] = v19;
  v20 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Enable Soft Light Blending" valueKeyPath:@"useSoftLightBlendingModeForTopGradient"];
  v88[14] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v88 count:15];
  v55 = [v54 sectionWithRows:v21];

  v22 = MEMORY[0x1E69C6638];
  v23 = MEMORY[0x1E69C65E8];
  v24 = [MEMORY[0x1E69C6640] actionWithSettingsKeyPath:0];
  v25 = [v23 rowWithTitle:@"Restore Defaults" action:v24];
  v87 = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v87 count:1];
  v27 = [v22 sectionWithRows:v26];

  v28 = MEMORY[0x1E69C6638];
  v86[0] = v85;
  v86[1] = v55;
  v86[2] = v27;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:3];
  v30 = [v28 moduleWithTitle:@"Headroom" contents:v29];

  return v30;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_84539 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_84539, &__block_literal_global_84540);
  }

  v3 = sharedInstance_sharedInstance_84541;

  return v3;
}

void __42__PUPosterHeadroomSettings_sharedInstance__block_invoke()
{
  v2 = +[PUPosterSettings sharedInstance];
  v0 = [v2 headroomSettings];
  v1 = sharedInstance_sharedInstance_84541;
  sharedInstance_sharedInstance_84541 = v0;
}

@end
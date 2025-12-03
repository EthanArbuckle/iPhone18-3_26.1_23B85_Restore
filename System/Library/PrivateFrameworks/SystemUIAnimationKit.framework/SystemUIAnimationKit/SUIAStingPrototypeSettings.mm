@interface SUIAStingPrototypeSettings
- (BOOL)usesGaussianBlurMask;
- (CGPoint)aberrationMagnitude;
- (SUIAColorMatrixPrototypeSettings)colorMatrix;
- (SUIAFluidBehaviorSettings)criticallyDampedSpringSettings;
- (SUIAFluidBehaviorSettings)defaultSpringSettings;
- (SUIAFluidBehaviorSettings)reallyDampedSpringSettings;
- (SUIAFluidBehaviorSettings)reallyReallyDampedSpringSettings;
- (SUIAFluidBehaviorSettings)slowCriticallyDampedSpringSettings;
- (SUIAShockwaveRadialMaskSettings)chromaticAberrationFinalDonutMask;
- (SUIAShockwaveRadialMaskSettings)chromaticAberrationInitialDonutMask;
- (SUIAShockwaveRadialMaskSettings)colorOverlayFinalRadialMask;
- (SUIAShockwaveRadialMaskSettings)colorOverlayInitialRadialMask;
- (UIColor)overlayColor;
- (double)aberrationColorBrightnessFactor;
- (double)aberrationColorSaturation;
- (double)aberrationEDRGain;
- (double)aberrationIntensity;
- (double)finalColorBlurRadius;
- (double)finalColorMaskBlurRadius;
- (double)finalColorMaskScale;
- (double)finalColorMatrixOpacity;
- (double)finalMeshScale;
- (double)initialColorBlurRadius;
- (double)initialColorMaskBlurRadius;
- (double)initialColorMaskScale;
- (double)initialColorMatrixOpacity;
- (double)initialMeshScale;
- (void)setAberrationColorBrightnessFactor:(double)factor;
- (void)setAberrationColorSaturation:(double)saturation;
- (void)setAberrationEDRGain:(double)gain;
- (void)setAberrationIntensity:(double)intensity;
- (void)setAberrationMagnitude:(CGPoint)magnitude;
- (void)setChromaticAberrationFinalDonutMask:(id)mask;
- (void)setChromaticAberrationInitialDonutMask:(id)mask;
- (void)setColorMatrix:(id)matrix;
- (void)setColorOverlayFinalRadialMask:(id)mask;
- (void)setColorOverlayInitialRadialMask:(id)mask;
- (void)setCriticallyDampedSpringSettings:(id)settings;
- (void)setDefaultSpringSettings:(id)settings;
- (void)setDefaultValues;
- (void)setFinalColorBlurRadius:(double)radius;
- (void)setFinalColorMaskBlurRadius:(double)radius;
- (void)setFinalColorMaskScale:(double)scale;
- (void)setFinalColorMatrixOpacity:(double)opacity;
- (void)setFinalMeshScale:(double)scale;
- (void)setInitialColorBlurRadius:(double)radius;
- (void)setInitialColorMaskBlurRadius:(double)radius;
- (void)setInitialColorMaskScale:(double)scale;
- (void)setInitialColorMatrixOpacity:(double)opacity;
- (void)setInitialMeshScale:(double)scale;
- (void)setOverlayColor:(id)color;
- (void)setReallyDampedSpringSettings:(id)settings;
- (void)setReallyReallyDampedSpringSettings:(id)settings;
- (void)setSlowCriticallyDampedSpringSettings:(id)settings;
- (void)setUsesGaussianBlurMask:(BOOL)mask;
@end

@implementation SUIAStingPrototypeSettings

- (SUIAFluidBehaviorSettings)defaultSpringSettings
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_defaultSpringSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setDefaultSpringSettings:(id)settings
{
  v5 = OBJC_IVAR___SUIAStingPrototypeSettings_defaultSpringSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = settings;
  settingsCopy = settings;
}

- (SUIAFluidBehaviorSettings)criticallyDampedSpringSettings
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_criticallyDampedSpringSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCriticallyDampedSpringSettings:(id)settings
{
  v5 = OBJC_IVAR___SUIAStingPrototypeSettings_criticallyDampedSpringSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = settings;
  settingsCopy = settings;
}

- (SUIAFluidBehaviorSettings)slowCriticallyDampedSpringSettings
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_slowCriticallyDampedSpringSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setSlowCriticallyDampedSpringSettings:(id)settings
{
  v5 = OBJC_IVAR___SUIAStingPrototypeSettings_slowCriticallyDampedSpringSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = settings;
  settingsCopy = settings;
}

- (SUIAFluidBehaviorSettings)reallyDampedSpringSettings
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_reallyDampedSpringSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setReallyDampedSpringSettings:(id)settings
{
  v5 = OBJC_IVAR___SUIAStingPrototypeSettings_reallyDampedSpringSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = settings;
  settingsCopy = settings;
}

- (SUIAFluidBehaviorSettings)reallyReallyDampedSpringSettings
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_reallyReallyDampedSpringSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setReallyReallyDampedSpringSettings:(id)settings
{
  v5 = OBJC_IVAR___SUIAStingPrototypeSettings_reallyReallyDampedSpringSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = settings;
  settingsCopy = settings;
}

- (double)initialMeshScale
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_initialMeshScale;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setInitialMeshScale:(double)scale
{
  v5 = OBJC_IVAR___SUIAStingPrototypeSettings_initialMeshScale;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = scale;
}

- (double)finalMeshScale
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_finalMeshScale;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setFinalMeshScale:(double)scale
{
  v5 = OBJC_IVAR___SUIAStingPrototypeSettings_finalMeshScale;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = scale;
}

- (CGPoint)aberrationMagnitude
{
  v2 = (self + OBJC_IVAR___SUIAStingPrototypeSettings_aberrationMagnitude);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)setAberrationMagnitude:(CGPoint)magnitude
{
  y = magnitude.y;
  x = magnitude.x;
  v5 = (self + OBJC_IVAR___SUIAStingPrototypeSettings_aberrationMagnitude);
  swift_beginAccess();
  *v5 = x;
  v5[1] = y;
}

- (double)aberrationEDRGain
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_aberrationEDRGain;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setAberrationEDRGain:(double)gain
{
  v5 = OBJC_IVAR___SUIAStingPrototypeSettings_aberrationEDRGain;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = gain;
}

- (double)aberrationColorBrightnessFactor
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_aberrationColorBrightnessFactor;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setAberrationColorBrightnessFactor:(double)factor
{
  v5 = OBJC_IVAR___SUIAStingPrototypeSettings_aberrationColorBrightnessFactor;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = factor;
}

- (double)aberrationColorSaturation
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_aberrationColorSaturation;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setAberrationColorSaturation:(double)saturation
{
  v5 = OBJC_IVAR___SUIAStingPrototypeSettings_aberrationColorSaturation;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = saturation;
}

- (double)aberrationIntensity
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_aberrationIntensity;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setAberrationIntensity:(double)intensity
{
  v5 = OBJC_IVAR___SUIAStingPrototypeSettings_aberrationIntensity;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = intensity;
}

- (SUIAShockwaveRadialMaskSettings)chromaticAberrationInitialDonutMask
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_chromaticAberrationInitialDonutMask;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setChromaticAberrationInitialDonutMask:(id)mask
{
  v5 = OBJC_IVAR___SUIAStingPrototypeSettings_chromaticAberrationInitialDonutMask;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = mask;
  maskCopy = mask;
}

- (SUIAShockwaveRadialMaskSettings)chromaticAberrationFinalDonutMask
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_chromaticAberrationFinalDonutMask;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setChromaticAberrationFinalDonutMask:(id)mask
{
  v5 = OBJC_IVAR___SUIAStingPrototypeSettings_chromaticAberrationFinalDonutMask;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = mask;
  maskCopy = mask;
}

- (UIColor)overlayColor
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_overlayColor;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setOverlayColor:(id)color
{
  v5 = OBJC_IVAR___SUIAStingPrototypeSettings_overlayColor;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = color;
  colorCopy = color;
}

- (SUIAColorMatrixPrototypeSettings)colorMatrix
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_colorMatrix;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setColorMatrix:(id)matrix
{
  v5 = OBJC_IVAR___SUIAStingPrototypeSettings_colorMatrix;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = matrix;
  matrixCopy = matrix;
}

- (double)initialColorMatrixOpacity
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_initialColorMatrixOpacity;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setInitialColorMatrixOpacity:(double)opacity
{
  v5 = OBJC_IVAR___SUIAStingPrototypeSettings_initialColorMatrixOpacity;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = opacity;
}

- (double)finalColorMatrixOpacity
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_finalColorMatrixOpacity;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setFinalColorMatrixOpacity:(double)opacity
{
  v5 = OBJC_IVAR___SUIAStingPrototypeSettings_finalColorMatrixOpacity;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = opacity;
}

- (double)initialColorBlurRadius
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_initialColorBlurRadius;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setInitialColorBlurRadius:(double)radius
{
  v5 = OBJC_IVAR___SUIAStingPrototypeSettings_initialColorBlurRadius;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = radius;
}

- (double)finalColorBlurRadius
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_finalColorBlurRadius;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setFinalColorBlurRadius:(double)radius
{
  v5 = OBJC_IVAR___SUIAStingPrototypeSettings_finalColorBlurRadius;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = radius;
}

- (BOOL)usesGaussianBlurMask
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_usesGaussianBlurMask;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setUsesGaussianBlurMask:(BOOL)mask
{
  v5 = OBJC_IVAR___SUIAStingPrototypeSettings_usesGaussianBlurMask;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = mask;
}

- (double)initialColorMaskScale
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_initialColorMaskScale;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setInitialColorMaskScale:(double)scale
{
  v5 = OBJC_IVAR___SUIAStingPrototypeSettings_initialColorMaskScale;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = scale;
}

- (double)finalColorMaskScale
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_finalColorMaskScale;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setFinalColorMaskScale:(double)scale
{
  v5 = OBJC_IVAR___SUIAStingPrototypeSettings_finalColorMaskScale;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = scale;
}

- (double)initialColorMaskBlurRadius
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_initialColorMaskBlurRadius;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setInitialColorMaskBlurRadius:(double)radius
{
  v5 = OBJC_IVAR___SUIAStingPrototypeSettings_initialColorMaskBlurRadius;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = radius;
}

- (double)finalColorMaskBlurRadius
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_finalColorMaskBlurRadius;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setFinalColorMaskBlurRadius:(double)radius
{
  v5 = OBJC_IVAR___SUIAStingPrototypeSettings_finalColorMaskBlurRadius;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = radius;
}

- (SUIAShockwaveRadialMaskSettings)colorOverlayInitialRadialMask
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_colorOverlayInitialRadialMask;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setColorOverlayInitialRadialMask:(id)mask
{
  v5 = OBJC_IVAR___SUIAStingPrototypeSettings_colorOverlayInitialRadialMask;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = mask;
  maskCopy = mask;
}

- (SUIAShockwaveRadialMaskSettings)colorOverlayFinalRadialMask
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_colorOverlayFinalRadialMask;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setColorOverlayFinalRadialMask:(id)mask
{
  v5 = OBJC_IVAR___SUIAStingPrototypeSettings_colorOverlayFinalRadialMask;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = mask;
  maskCopy = mask;
}

- (void)setDefaultValues
{
  selfCopy = self;
  sub_26C60D934();
  sub_26C60DC34();
  [(SUIAStingPrototypeSettings *)selfCopy setInitialMeshScale:0.5];
  [(SUIAStingPrototypeSettings *)selfCopy setFinalMeshScale:2.0];
  sub_26C60E698();
}

@end
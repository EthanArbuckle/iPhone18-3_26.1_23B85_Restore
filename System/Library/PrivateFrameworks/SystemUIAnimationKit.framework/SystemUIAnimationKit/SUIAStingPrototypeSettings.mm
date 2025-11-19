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
- (void)setAberrationColorBrightnessFactor:(double)a3;
- (void)setAberrationColorSaturation:(double)a3;
- (void)setAberrationEDRGain:(double)a3;
- (void)setAberrationIntensity:(double)a3;
- (void)setAberrationMagnitude:(CGPoint)a3;
- (void)setChromaticAberrationFinalDonutMask:(id)a3;
- (void)setChromaticAberrationInitialDonutMask:(id)a3;
- (void)setColorMatrix:(id)a3;
- (void)setColorOverlayFinalRadialMask:(id)a3;
- (void)setColorOverlayInitialRadialMask:(id)a3;
- (void)setCriticallyDampedSpringSettings:(id)a3;
- (void)setDefaultSpringSettings:(id)a3;
- (void)setDefaultValues;
- (void)setFinalColorBlurRadius:(double)a3;
- (void)setFinalColorMaskBlurRadius:(double)a3;
- (void)setFinalColorMaskScale:(double)a3;
- (void)setFinalColorMatrixOpacity:(double)a3;
- (void)setFinalMeshScale:(double)a3;
- (void)setInitialColorBlurRadius:(double)a3;
- (void)setInitialColorMaskBlurRadius:(double)a3;
- (void)setInitialColorMaskScale:(double)a3;
- (void)setInitialColorMatrixOpacity:(double)a3;
- (void)setInitialMeshScale:(double)a3;
- (void)setOverlayColor:(id)a3;
- (void)setReallyDampedSpringSettings:(id)a3;
- (void)setReallyReallyDampedSpringSettings:(id)a3;
- (void)setSlowCriticallyDampedSpringSettings:(id)a3;
- (void)setUsesGaussianBlurMask:(BOOL)a3;
@end

@implementation SUIAStingPrototypeSettings

- (SUIAFluidBehaviorSettings)defaultSpringSettings
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_defaultSpringSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setDefaultSpringSettings:(id)a3
{
  v5 = OBJC_IVAR___SUIAStingPrototypeSettings_defaultSpringSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (SUIAFluidBehaviorSettings)criticallyDampedSpringSettings
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_criticallyDampedSpringSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCriticallyDampedSpringSettings:(id)a3
{
  v5 = OBJC_IVAR___SUIAStingPrototypeSettings_criticallyDampedSpringSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (SUIAFluidBehaviorSettings)slowCriticallyDampedSpringSettings
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_slowCriticallyDampedSpringSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setSlowCriticallyDampedSpringSettings:(id)a3
{
  v5 = OBJC_IVAR___SUIAStingPrototypeSettings_slowCriticallyDampedSpringSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (SUIAFluidBehaviorSettings)reallyDampedSpringSettings
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_reallyDampedSpringSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setReallyDampedSpringSettings:(id)a3
{
  v5 = OBJC_IVAR___SUIAStingPrototypeSettings_reallyDampedSpringSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (SUIAFluidBehaviorSettings)reallyReallyDampedSpringSettings
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_reallyReallyDampedSpringSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setReallyReallyDampedSpringSettings:(id)a3
{
  v5 = OBJC_IVAR___SUIAStingPrototypeSettings_reallyReallyDampedSpringSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (double)initialMeshScale
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_initialMeshScale;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setInitialMeshScale:(double)a3
{
  v5 = OBJC_IVAR___SUIAStingPrototypeSettings_initialMeshScale;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)finalMeshScale
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_finalMeshScale;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setFinalMeshScale:(double)a3
{
  v5 = OBJC_IVAR___SUIAStingPrototypeSettings_finalMeshScale;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
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

- (void)setAberrationMagnitude:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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

- (void)setAberrationEDRGain:(double)a3
{
  v5 = OBJC_IVAR___SUIAStingPrototypeSettings_aberrationEDRGain;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)aberrationColorBrightnessFactor
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_aberrationColorBrightnessFactor;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setAberrationColorBrightnessFactor:(double)a3
{
  v5 = OBJC_IVAR___SUIAStingPrototypeSettings_aberrationColorBrightnessFactor;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)aberrationColorSaturation
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_aberrationColorSaturation;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setAberrationColorSaturation:(double)a3
{
  v5 = OBJC_IVAR___SUIAStingPrototypeSettings_aberrationColorSaturation;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)aberrationIntensity
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_aberrationIntensity;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setAberrationIntensity:(double)a3
{
  v5 = OBJC_IVAR___SUIAStingPrototypeSettings_aberrationIntensity;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (SUIAShockwaveRadialMaskSettings)chromaticAberrationInitialDonutMask
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_chromaticAberrationInitialDonutMask;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setChromaticAberrationInitialDonutMask:(id)a3
{
  v5 = OBJC_IVAR___SUIAStingPrototypeSettings_chromaticAberrationInitialDonutMask;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (SUIAShockwaveRadialMaskSettings)chromaticAberrationFinalDonutMask
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_chromaticAberrationFinalDonutMask;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setChromaticAberrationFinalDonutMask:(id)a3
{
  v5 = OBJC_IVAR___SUIAStingPrototypeSettings_chromaticAberrationFinalDonutMask;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (UIColor)overlayColor
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_overlayColor;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setOverlayColor:(id)a3
{
  v5 = OBJC_IVAR___SUIAStingPrototypeSettings_overlayColor;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (SUIAColorMatrixPrototypeSettings)colorMatrix
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_colorMatrix;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setColorMatrix:(id)a3
{
  v5 = OBJC_IVAR___SUIAStingPrototypeSettings_colorMatrix;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (double)initialColorMatrixOpacity
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_initialColorMatrixOpacity;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setInitialColorMatrixOpacity:(double)a3
{
  v5 = OBJC_IVAR___SUIAStingPrototypeSettings_initialColorMatrixOpacity;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)finalColorMatrixOpacity
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_finalColorMatrixOpacity;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setFinalColorMatrixOpacity:(double)a3
{
  v5 = OBJC_IVAR___SUIAStingPrototypeSettings_finalColorMatrixOpacity;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)initialColorBlurRadius
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_initialColorBlurRadius;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setInitialColorBlurRadius:(double)a3
{
  v5 = OBJC_IVAR___SUIAStingPrototypeSettings_initialColorBlurRadius;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)finalColorBlurRadius
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_finalColorBlurRadius;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setFinalColorBlurRadius:(double)a3
{
  v5 = OBJC_IVAR___SUIAStingPrototypeSettings_finalColorBlurRadius;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (BOOL)usesGaussianBlurMask
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_usesGaussianBlurMask;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setUsesGaussianBlurMask:(BOOL)a3
{
  v5 = OBJC_IVAR___SUIAStingPrototypeSettings_usesGaussianBlurMask;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)initialColorMaskScale
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_initialColorMaskScale;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setInitialColorMaskScale:(double)a3
{
  v5 = OBJC_IVAR___SUIAStingPrototypeSettings_initialColorMaskScale;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)finalColorMaskScale
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_finalColorMaskScale;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setFinalColorMaskScale:(double)a3
{
  v5 = OBJC_IVAR___SUIAStingPrototypeSettings_finalColorMaskScale;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)initialColorMaskBlurRadius
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_initialColorMaskBlurRadius;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setInitialColorMaskBlurRadius:(double)a3
{
  v5 = OBJC_IVAR___SUIAStingPrototypeSettings_initialColorMaskBlurRadius;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)finalColorMaskBlurRadius
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_finalColorMaskBlurRadius;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setFinalColorMaskBlurRadius:(double)a3
{
  v5 = OBJC_IVAR___SUIAStingPrototypeSettings_finalColorMaskBlurRadius;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (SUIAShockwaveRadialMaskSettings)colorOverlayInitialRadialMask
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_colorOverlayInitialRadialMask;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setColorOverlayInitialRadialMask:(id)a3
{
  v5 = OBJC_IVAR___SUIAStingPrototypeSettings_colorOverlayInitialRadialMask;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (SUIAShockwaveRadialMaskSettings)colorOverlayFinalRadialMask
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_colorOverlayFinalRadialMask;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setColorOverlayFinalRadialMask:(id)a3
{
  v5 = OBJC_IVAR___SUIAStingPrototypeSettings_colorOverlayFinalRadialMask;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (void)setDefaultValues
{
  v2 = self;
  sub_26C60D934();
  sub_26C60DC34();
  [(SUIAStingPrototypeSettings *)v2 setInitialMeshScale:0.5];
  [(SUIAStingPrototypeSettings *)v2 setFinalMeshScale:2.0];
  sub_26C60E698();
}

@end
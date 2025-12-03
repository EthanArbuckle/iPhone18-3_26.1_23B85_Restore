@interface SUIAShockwavePrototypeSettings
+ (id)settingsControllerModule;
- (BOOL)aberrationUseColorBrightness;
- (BOOL)aberrationUseColorMatrixMultiply;
- (BOOL)aberrationUseColorSaturate;
- (BOOL)aberrationUseEDR;
- (BOOL)captureChromaticAberrationEnabled;
- (BOOL)captureMeshEnabled;
- (BOOL)siriButtonChromaticAberrationEnabled;
- (BOOL)siriButtonEdgeLightEnabled;
- (BOOL)siriButtonFillLightEnabled;
- (BOOL)siriButtonMeshEnabled;
- (BOOL)siriButtonMeshEnabledLargeScreen;
- (BOOL)siriEdgeChromaticAberrationEnabled;
- (BOOL)siriEdgeEdgeLightEnabled;
- (BOOL)siriEdgeFillLightEnabled;
- (BOOL)siriEdgeMeshEnabled;
- (BOOL)siriEdgeMeshEnabledLargeScreen;
- (BOOL)useSiriMeshForCapture;
- (BOOL)visualizeEffectMasks;
- (SUIAFluidBehaviorSettings)abberationCancelledFadeOutAnimationSettings;
- (SUIAFluidBehaviorSettings)abberationFadeOutAnimationSettings;
- (SUIAFluidBehaviorSettings)captureHintAnimationSettings;
- (SUIAFluidBehaviorSettings)donutMaskPositionAnimationSettings;
- (SUIAFluidBehaviorSettings)lightIntensityAnimationSettings;
- (SUIAFluidBehaviorSettings)lightIntensityCancelledAnimationSettings;
- (SUIAFluidBehaviorSettings)meshPointsAnimationSettings;
- (SUIAFluidBehaviorSettings)meshPointsCancelledAnimationSettings;
- (SUIAFluidBehaviorSettings)meshPositionAnimationSettings;
- (SUIAFluidBehaviorSettings)visionIntelligenceHintAnimationSettings;
- (SUIAShockwaveRadialMaskSettings)chromaticAberrationFinalDonutMaskLargeScreen;
- (SUIAShockwaveRadialMaskSettings)chromaticAberrationFinalDonutMaskSmallScreen;
- (SUIAShockwaveRadialMaskSettings)chromaticAberrationInitialDonutMask;
- (SUIAShockwaveRadialMaskSettings)colorFillFinalCircleMask;
- (SUIAShockwaveRadialMaskSettings)colorFillHintCircleMask;
- (SUIAShockwaveRadialMaskSettings)colorFillInitialCircleMask;
- (SUIAShockwaveRadialMaskSettings)edgeLightFinalCircleMask;
- (SUIAShockwaveRadialMaskSettings)edgeLightHintCircleMask;
- (SUIAShockwaveRadialMaskSettings)edgeLightInitialCircleMask;
- (double)aberrationBlurRadius;
- (double)aberrationColorBrightness;
- (double)aberrationColorMatrixMultiplyFactor;
- (double)aberrationColorSaturateAmount;
- (double)aberrationEDRGain;
- (double)aberrationFadeOutDelay;
- (double)aberrationFadeOutDelayIPad;
- (double)aberrationMagnitudeX;
- (double)aberrationMagnitudeY;
- (double)captureFillWhiteValue;
- (double)captureHintInterpolationProgress;
- (double)captureHintMeshOffset;
- (double)captureHintRetargetImpulse;
- (double)donutMaskEndTransitionDelay;
- (double)donutMaskInitialEdgeOutsetProportion;
- (double)edgeLightHintTransitionDelay;
- (double)fillLightCaptureInitialIntensity;
- (double)fillLightColorBrightnessAmount;
- (double)fillLightColorContrastAmount;
- (double)fillLightColorSaturateAmount;
- (double)fillLightFinalIntensity;
- (double)fillLightInitialIntensity;
- (double)fillLightIntensityFinalStateDelay;
- (double)finalFitVsDiameterRatioLongEdgeBigScreen;
- (double)finalFitVsDiameterRatioLongEdgeSmallScreen;
- (double)finalFitVsDiameterRatioShortEdgeBigScreen;
- (double)finalFitVsDiameterRatioShortEdgeSmallScreen;
- (double)maximumHintDuration;
- (double)meshFinalProportionAcrossScreenLongEdge;
- (double)meshFinalProportionAcrossScreenShortEdge;
- (double)meshFinalProportionTowardsCenterOnLargeDisplays;
- (double)meshPointsEndTransitionDelay;
- (double)meshRectangularFinalLongDimensionRatio;
- (double)meshRectangularFinalShortDimensionRatio;
- (double)meshSquareFinalSizeDiagonalRatio;
- (double)totalDuration;
- (double)visionIntelligenceHintFillLightInitialIntensity;
- (double)visionIntelligenceHintInterpolationProgress;
- (double)visionIntelligenceHintRetargetImpulse;
- (id)chromaticAberrationFinalDonutMaskForIdiom:(int64_t)idiom;
- (int64_t)captureFillLightType;
- (void)setAbberationCancelledFadeOutAnimationSettings:(id)settings;
- (void)setAbberationFadeOutAnimationSettings:(id)settings;
- (void)setAberrationBlurRadius:(double)radius;
- (void)setAberrationColorBrightness:(double)brightness;
- (void)setAberrationColorMatrixMultiplyFactor:(double)factor;
- (void)setAberrationColorSaturateAmount:(double)amount;
- (void)setAberrationEDRGain:(double)gain;
- (void)setAberrationFadeOutDelay:(double)delay;
- (void)setAberrationFadeOutDelayIPad:(double)pad;
- (void)setAberrationMagnitudeX:(double)x;
- (void)setAberrationMagnitudeY:(double)y;
- (void)setAberrationUseColorBrightness:(BOOL)brightness;
- (void)setAberrationUseColorMatrixMultiply:(BOOL)multiply;
- (void)setAberrationUseColorSaturate:(BOOL)saturate;
- (void)setAberrationUseEDR:(BOOL)r;
- (void)setCaptureChromaticAberrationEnabled:(BOOL)enabled;
- (void)setCaptureFillLightType:(int64_t)type;
- (void)setCaptureFillWhiteValue:(double)value;
- (void)setCaptureHintAnimationSettings:(id)settings;
- (void)setCaptureHintInterpolationProgress:(double)progress;
- (void)setCaptureHintMeshOffset:(double)offset;
- (void)setCaptureHintRetargetImpulse:(double)impulse;
- (void)setCaptureMeshEnabled:(BOOL)enabled;
- (void)setChromaticAberrationFinalDonutMaskLargeScreen:(id)screen;
- (void)setChromaticAberrationFinalDonutMaskSmallScreen:(id)screen;
- (void)setChromaticAberrationInitialDonutMask:(id)mask;
- (void)setColorFillFinalCircleMask:(id)mask;
- (void)setColorFillHintCircleMask:(id)mask;
- (void)setColorFillInitialCircleMask:(id)mask;
- (void)setDefaultValues;
- (void)setDonutMaskEndTransitionDelay:(double)delay;
- (void)setDonutMaskInitialEdgeOutsetProportion:(double)proportion;
- (void)setDonutMaskPositionAnimationSettings:(id)settings;
- (void)setEdgeLightFinalCircleMask:(id)mask;
- (void)setEdgeLightHintCircleMask:(id)mask;
- (void)setEdgeLightHintTransitionDelay:(double)delay;
- (void)setEdgeLightInitialCircleMask:(id)mask;
- (void)setFillLightCaptureInitialIntensity:(double)intensity;
- (void)setFillLightColorBrightnessAmount:(double)amount;
- (void)setFillLightColorContrastAmount:(double)amount;
- (void)setFillLightColorSaturateAmount:(double)amount;
- (void)setFillLightFinalIntensity:(double)intensity;
- (void)setFillLightInitialIntensity:(double)intensity;
- (void)setFillLightIntensityFinalStateDelay:(double)delay;
- (void)setFinalFitVsDiameterRatioLongEdgeBigScreen:(double)screen;
- (void)setFinalFitVsDiameterRatioLongEdgeSmallScreen:(double)screen;
- (void)setFinalFitVsDiameterRatioShortEdgeBigScreen:(double)screen;
- (void)setFinalFitVsDiameterRatioShortEdgeSmallScreen:(double)screen;
- (void)setLightIntensityAnimationSettings:(id)settings;
- (void)setLightIntensityCancelledAnimationSettings:(id)settings;
- (void)setMaximumHintDuration:(double)duration;
- (void)setMeshFinalProportionAcrossScreenLongEdge:(double)edge;
- (void)setMeshFinalProportionAcrossScreenShortEdge:(double)edge;
- (void)setMeshFinalProportionTowardsCenterOnLargeDisplays:(double)displays;
- (void)setMeshPointsAnimationSettings:(id)settings;
- (void)setMeshPointsCancelledAnimationSettings:(id)settings;
- (void)setMeshPointsEndTransitionDelay:(double)delay;
- (void)setMeshPositionAnimationSettings:(id)settings;
- (void)setMeshRectangularFinalLongDimensionRatio:(double)ratio;
- (void)setMeshRectangularFinalShortDimensionRatio:(double)ratio;
- (void)setMeshSquareFinalSizeDiagonalRatio:(double)ratio;
- (void)setSiriButtonChromaticAberrationEnabled:(BOOL)enabled;
- (void)setSiriButtonEdgeLightEnabled:(BOOL)enabled;
- (void)setSiriButtonFillLightEnabled:(BOOL)enabled;
- (void)setSiriButtonMeshEnabled:(BOOL)enabled;
- (void)setSiriButtonMeshEnabledLargeScreen:(BOOL)screen;
- (void)setSiriEdgeChromaticAberrationEnabled:(BOOL)enabled;
- (void)setSiriEdgeEdgeLightEnabled:(BOOL)enabled;
- (void)setSiriEdgeFillLightEnabled:(BOOL)enabled;
- (void)setSiriEdgeMeshEnabled:(BOOL)enabled;
- (void)setSiriEdgeMeshEnabledLargeScreen:(BOOL)screen;
- (void)setTotalDuration:(double)duration;
- (void)setUseSiriMeshForCapture:(BOOL)capture;
- (void)setVisionIntelligenceHintAnimationSettings:(id)settings;
- (void)setVisionIntelligenceHintFillLightInitialIntensity:(double)intensity;
- (void)setVisionIntelligenceHintInterpolationProgress:(double)progress;
- (void)setVisionIntelligenceHintRetargetImpulse:(double)impulse;
- (void)setVisualizeEffectMasks:(BOOL)masks;
@end

@implementation SUIAShockwavePrototypeSettings

- (double)maximumHintDuration
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_maximumHintDuration;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setMaximumHintDuration:(double)duration
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_maximumHintDuration;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = duration;
}

- (double)totalDuration
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_totalDuration;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setTotalDuration:(double)duration
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_totalDuration;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = duration;
}

- (BOOL)visualizeEffectMasks
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_visualizeEffectMasks;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setVisualizeEffectMasks:(BOOL)masks
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_visualizeEffectMasks;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = masks;
}

- (double)donutMaskInitialEdgeOutsetProportion
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_donutMaskInitialEdgeOutsetProportion;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setDonutMaskInitialEdgeOutsetProportion:(double)proportion
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_donutMaskInitialEdgeOutsetProportion;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = proportion;
}

- (double)finalFitVsDiameterRatioShortEdgeSmallScreen
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_finalFitVsDiameterRatioShortEdgeSmallScreen;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setFinalFitVsDiameterRatioShortEdgeSmallScreen:(double)screen
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_finalFitVsDiameterRatioShortEdgeSmallScreen;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = screen;
}

- (double)finalFitVsDiameterRatioLongEdgeSmallScreen
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_finalFitVsDiameterRatioLongEdgeSmallScreen;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setFinalFitVsDiameterRatioLongEdgeSmallScreen:(double)screen
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_finalFitVsDiameterRatioLongEdgeSmallScreen;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = screen;
}

- (double)finalFitVsDiameterRatioShortEdgeBigScreen
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_finalFitVsDiameterRatioShortEdgeBigScreen;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setFinalFitVsDiameterRatioShortEdgeBigScreen:(double)screen
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_finalFitVsDiameterRatioShortEdgeBigScreen;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = screen;
}

- (double)finalFitVsDiameterRatioLongEdgeBigScreen
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_finalFitVsDiameterRatioLongEdgeBigScreen;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setFinalFitVsDiameterRatioLongEdgeBigScreen:(double)screen
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_finalFitVsDiameterRatioLongEdgeBigScreen;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = screen;
}

- (double)edgeLightHintTransitionDelay
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_edgeLightHintTransitionDelay;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setEdgeLightHintTransitionDelay:(double)delay
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_edgeLightHintTransitionDelay;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = delay;
}

- (double)donutMaskEndTransitionDelay
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_donutMaskEndTransitionDelay;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setDonutMaskEndTransitionDelay:(double)delay
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_donutMaskEndTransitionDelay;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = delay;
}

- (SUIAFluidBehaviorSettings)donutMaskPositionAnimationSettings
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_donutMaskPositionAnimationSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setDonutMaskPositionAnimationSettings:(id)settings
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_donutMaskPositionAnimationSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = settings;
  settingsCopy = settings;
}

- (SUIAShockwaveRadialMaskSettings)chromaticAberrationInitialDonutMask
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_chromaticAberrationInitialDonutMask;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setChromaticAberrationInitialDonutMask:(id)mask
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_chromaticAberrationInitialDonutMask;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = mask;
  maskCopy = mask;
}

- (SUIAShockwaveRadialMaskSettings)chromaticAberrationFinalDonutMaskSmallScreen
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_chromaticAberrationFinalDonutMaskSmallScreen;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setChromaticAberrationFinalDonutMaskSmallScreen:(id)screen
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_chromaticAberrationFinalDonutMaskSmallScreen;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = screen;
  screenCopy = screen;
}

- (SUIAShockwaveRadialMaskSettings)chromaticAberrationFinalDonutMaskLargeScreen
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_chromaticAberrationFinalDonutMaskLargeScreen;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setChromaticAberrationFinalDonutMaskLargeScreen:(id)screen
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_chromaticAberrationFinalDonutMaskLargeScreen;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = screen;
  screenCopy = screen;
}

- (SUIAShockwaveRadialMaskSettings)colorFillInitialCircleMask
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_colorFillInitialCircleMask;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setColorFillInitialCircleMask:(id)mask
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_colorFillInitialCircleMask;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = mask;
  maskCopy = mask;
}

- (SUIAShockwaveRadialMaskSettings)colorFillHintCircleMask
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_colorFillHintCircleMask;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setColorFillHintCircleMask:(id)mask
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_colorFillHintCircleMask;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = mask;
  maskCopy = mask;
}

- (SUIAShockwaveRadialMaskSettings)colorFillFinalCircleMask
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_colorFillFinalCircleMask;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setColorFillFinalCircleMask:(id)mask
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_colorFillFinalCircleMask;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = mask;
  maskCopy = mask;
}

- (SUIAShockwaveRadialMaskSettings)edgeLightInitialCircleMask
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_edgeLightInitialCircleMask;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setEdgeLightInitialCircleMask:(id)mask
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_edgeLightInitialCircleMask;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = mask;
  maskCopy = mask;
}

- (SUIAShockwaveRadialMaskSettings)edgeLightHintCircleMask
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_edgeLightHintCircleMask;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setEdgeLightHintCircleMask:(id)mask
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_edgeLightHintCircleMask;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = mask;
  maskCopy = mask;
}

- (SUIAShockwaveRadialMaskSettings)edgeLightFinalCircleMask
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_edgeLightFinalCircleMask;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setEdgeLightFinalCircleMask:(id)mask
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_edgeLightFinalCircleMask;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = mask;
  maskCopy = mask;
}

- (double)aberrationMagnitudeX
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationMagnitudeX;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setAberrationMagnitudeX:(double)x
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationMagnitudeX;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = x;
}

- (double)aberrationMagnitudeY
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationMagnitudeY;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setAberrationMagnitudeY:(double)y
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationMagnitudeY;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = y;
}

- (double)aberrationBlurRadius
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationBlurRadius;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setAberrationBlurRadius:(double)radius
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationBlurRadius;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = radius;
}

- (BOOL)aberrationUseColorSaturate
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationUseColorSaturate;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setAberrationUseColorSaturate:(BOOL)saturate
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationUseColorSaturate;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = saturate;
}

- (double)aberrationColorSaturateAmount
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationColorSaturateAmount;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setAberrationColorSaturateAmount:(double)amount
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationColorSaturateAmount;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = amount;
}

- (BOOL)aberrationUseEDR
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationUseEDR;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setAberrationUseEDR:(BOOL)r
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationUseEDR;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = r;
}

- (double)aberrationEDRGain
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationEDRGain;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setAberrationEDRGain:(double)gain
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationEDRGain;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = gain;
}

- (BOOL)aberrationUseColorBrightness
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationUseColorBrightness;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setAberrationUseColorBrightness:(BOOL)brightness
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationUseColorBrightness;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = brightness;
}

- (double)aberrationColorBrightness
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationColorBrightness;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setAberrationColorBrightness:(double)brightness
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationColorBrightness;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = brightness;
}

- (BOOL)aberrationUseColorMatrixMultiply
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationUseColorMatrixMultiply;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setAberrationUseColorMatrixMultiply:(BOOL)multiply
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationUseColorMatrixMultiply;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = multiply;
}

- (double)aberrationColorMatrixMultiplyFactor
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationColorMatrixMultiplyFactor;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setAberrationColorMatrixMultiplyFactor:(double)factor
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationColorMatrixMultiplyFactor;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = factor;
}

- (double)aberrationFadeOutDelay
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationFadeOutDelay;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setAberrationFadeOutDelay:(double)delay
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationFadeOutDelay;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = delay;
}

- (double)aberrationFadeOutDelayIPad
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationFadeOutDelayIPad;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setAberrationFadeOutDelayIPad:(double)pad
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationFadeOutDelayIPad;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = pad;
}

- (SUIAFluidBehaviorSettings)abberationFadeOutAnimationSettings
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_abberationFadeOutAnimationSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setAbberationFadeOutAnimationSettings:(id)settings
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_abberationFadeOutAnimationSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = settings;
  settingsCopy = settings;
}

- (SUIAFluidBehaviorSettings)abberationCancelledFadeOutAnimationSettings
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_abberationCancelledFadeOutAnimationSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setAbberationCancelledFadeOutAnimationSettings:(id)settings
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_abberationCancelledFadeOutAnimationSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = settings;
  settingsCopy = settings;
}

- (double)meshSquareFinalSizeDiagonalRatio
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshSquareFinalSizeDiagonalRatio;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setMeshSquareFinalSizeDiagonalRatio:(double)ratio
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshSquareFinalSizeDiagonalRatio;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = ratio;
}

- (double)meshRectangularFinalShortDimensionRatio
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshRectangularFinalShortDimensionRatio;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setMeshRectangularFinalShortDimensionRatio:(double)ratio
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshRectangularFinalShortDimensionRatio;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = ratio;
}

- (double)meshRectangularFinalLongDimensionRatio
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshRectangularFinalLongDimensionRatio;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setMeshRectangularFinalLongDimensionRatio:(double)ratio
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshRectangularFinalLongDimensionRatio;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = ratio;
}

- (double)meshFinalProportionAcrossScreenLongEdge
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshFinalProportionAcrossScreenLongEdge;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setMeshFinalProportionAcrossScreenLongEdge:(double)edge
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshFinalProportionAcrossScreenLongEdge;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = edge;
}

- (double)meshFinalProportionAcrossScreenShortEdge
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshFinalProportionAcrossScreenShortEdge;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setMeshFinalProportionAcrossScreenShortEdge:(double)edge
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshFinalProportionAcrossScreenShortEdge;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = edge;
}

- (double)meshFinalProportionTowardsCenterOnLargeDisplays
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshFinalProportionTowardsCenterOnLargeDisplays;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setMeshFinalProportionTowardsCenterOnLargeDisplays:(double)displays
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshFinalProportionTowardsCenterOnLargeDisplays;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = displays;
}

- (double)meshPointsEndTransitionDelay
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshPointsEndTransitionDelay;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setMeshPointsEndTransitionDelay:(double)delay
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshPointsEndTransitionDelay;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = delay;
}

- (BOOL)useSiriMeshForCapture
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_useSiriMeshForCapture;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setUseSiriMeshForCapture:(BOOL)capture
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_useSiriMeshForCapture;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = capture;
}

- (SUIAFluidBehaviorSettings)meshPointsAnimationSettings
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshPointsAnimationSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setMeshPointsAnimationSettings:(id)settings
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshPointsAnimationSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = settings;
  settingsCopy = settings;
}

- (SUIAFluidBehaviorSettings)meshPositionAnimationSettings
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshPositionAnimationSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setMeshPositionAnimationSettings:(id)settings
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshPositionAnimationSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = settings;
  settingsCopy = settings;
}

- (SUIAFluidBehaviorSettings)meshPointsCancelledAnimationSettings
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshPointsCancelledAnimationSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setMeshPointsCancelledAnimationSettings:(id)settings
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshPointsCancelledAnimationSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = settings;
  settingsCopy = settings;
}

- (double)fillLightInitialIntensity
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_fillLightInitialIntensity;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setFillLightInitialIntensity:(double)intensity
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_fillLightInitialIntensity;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = intensity;
}

- (double)fillLightCaptureInitialIntensity
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_fillLightCaptureInitialIntensity;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setFillLightCaptureInitialIntensity:(double)intensity
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_fillLightCaptureInitialIntensity;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = intensity;
}

- (double)captureFillWhiteValue
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_captureFillWhiteValue;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCaptureFillWhiteValue:(double)value
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_captureFillWhiteValue;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = value;
}

- (double)fillLightFinalIntensity
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_fillLightFinalIntensity;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setFillLightFinalIntensity:(double)intensity
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_fillLightFinalIntensity;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = intensity;
}

- (SUIAFluidBehaviorSettings)lightIntensityAnimationSettings
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_lightIntensityAnimationSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setLightIntensityAnimationSettings:(id)settings
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_lightIntensityAnimationSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = settings;
  settingsCopy = settings;
}

- (SUIAFluidBehaviorSettings)lightIntensityCancelledAnimationSettings
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_lightIntensityCancelledAnimationSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setLightIntensityCancelledAnimationSettings:(id)settings
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_lightIntensityCancelledAnimationSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = settings;
  settingsCopy = settings;
}

- (double)fillLightIntensityFinalStateDelay
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_fillLightIntensityFinalStateDelay;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setFillLightIntensityFinalStateDelay:(double)delay
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_fillLightIntensityFinalStateDelay;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = delay;
}

- (double)fillLightColorSaturateAmount
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_fillLightColorSaturateAmount;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setFillLightColorSaturateAmount:(double)amount
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_fillLightColorSaturateAmount;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = amount;
}

- (double)fillLightColorBrightnessAmount
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_fillLightColorBrightnessAmount;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setFillLightColorBrightnessAmount:(double)amount
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_fillLightColorBrightnessAmount;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = amount;
}

- (double)fillLightColorContrastAmount
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_fillLightColorContrastAmount;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setFillLightColorContrastAmount:(double)amount
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_fillLightColorContrastAmount;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = amount;
}

- (SUIAFluidBehaviorSettings)captureHintAnimationSettings
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_captureHintAnimationSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCaptureHintAnimationSettings:(id)settings
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_captureHintAnimationSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = settings;
  settingsCopy = settings;
}

- (double)captureHintRetargetImpulse
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_captureHintRetargetImpulse;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCaptureHintRetargetImpulse:(double)impulse
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_captureHintRetargetImpulse;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = impulse;
}

- (double)captureHintInterpolationProgress
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_captureHintInterpolationProgress;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCaptureHintInterpolationProgress:(double)progress
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_captureHintInterpolationProgress;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = progress;
}

- (double)captureHintMeshOffset
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_captureHintMeshOffset;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCaptureHintMeshOffset:(double)offset
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_captureHintMeshOffset;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = offset;
}

- (double)visionIntelligenceHintRetargetImpulse
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_visionIntelligenceHintRetargetImpulse;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setVisionIntelligenceHintRetargetImpulse:(double)impulse
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_visionIntelligenceHintRetargetImpulse;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = impulse;
}

- (double)visionIntelligenceHintInterpolationProgress
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_visionIntelligenceHintInterpolationProgress;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setVisionIntelligenceHintInterpolationProgress:(double)progress
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_visionIntelligenceHintInterpolationProgress;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = progress;
}

- (double)visionIntelligenceHintFillLightInitialIntensity
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_visionIntelligenceHintFillLightInitialIntensity;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setVisionIntelligenceHintFillLightInitialIntensity:(double)intensity
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_visionIntelligenceHintFillLightInitialIntensity;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = intensity;
}

- (SUIAFluidBehaviorSettings)visionIntelligenceHintAnimationSettings
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_visionIntelligenceHintAnimationSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setVisionIntelligenceHintAnimationSettings:(id)settings
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_visionIntelligenceHintAnimationSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = settings;
  settingsCopy = settings;
}

- (BOOL)captureChromaticAberrationEnabled
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_captureChromaticAberrationEnabled;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCaptureChromaticAberrationEnabled:(BOOL)enabled
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_captureChromaticAberrationEnabled;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = enabled;
}

- (BOOL)captureMeshEnabled
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_captureMeshEnabled;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCaptureMeshEnabled:(BOOL)enabled
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_captureMeshEnabled;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = enabled;
}

- (int64_t)captureFillLightType
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_captureFillLightType;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCaptureFillLightType:(int64_t)type
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_captureFillLightType;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = type;
}

- (BOOL)siriButtonChromaticAberrationEnabled
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriButtonChromaticAberrationEnabled;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setSiriButtonChromaticAberrationEnabled:(BOOL)enabled
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriButtonChromaticAberrationEnabled;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = enabled;
}

- (BOOL)siriButtonMeshEnabled
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriButtonMeshEnabled;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setSiriButtonMeshEnabled:(BOOL)enabled
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriButtonMeshEnabled;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = enabled;
}

- (BOOL)siriButtonMeshEnabledLargeScreen
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriButtonMeshEnabledLargeScreen;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setSiriButtonMeshEnabledLargeScreen:(BOOL)screen
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriButtonMeshEnabledLargeScreen;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = screen;
}

- (BOOL)siriButtonFillLightEnabled
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriButtonFillLightEnabled;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setSiriButtonFillLightEnabled:(BOOL)enabled
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriButtonFillLightEnabled;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = enabled;
}

- (BOOL)siriButtonEdgeLightEnabled
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriButtonEdgeLightEnabled;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setSiriButtonEdgeLightEnabled:(BOOL)enabled
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriButtonEdgeLightEnabled;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = enabled;
}

- (BOOL)siriEdgeChromaticAberrationEnabled
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriEdgeChromaticAberrationEnabled;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setSiriEdgeChromaticAberrationEnabled:(BOOL)enabled
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriEdgeChromaticAberrationEnabled;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = enabled;
}

- (BOOL)siriEdgeMeshEnabled
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriEdgeMeshEnabled;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setSiriEdgeMeshEnabled:(BOOL)enabled
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriEdgeMeshEnabled;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = enabled;
}

- (BOOL)siriEdgeMeshEnabledLargeScreen
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriEdgeMeshEnabledLargeScreen;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setSiriEdgeMeshEnabledLargeScreen:(BOOL)screen
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriEdgeMeshEnabledLargeScreen;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = screen;
}

- (BOOL)siriEdgeFillLightEnabled
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriEdgeFillLightEnabled;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setSiriEdgeFillLightEnabled:(BOOL)enabled
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriEdgeFillLightEnabled;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = enabled;
}

- (BOOL)siriEdgeEdgeLightEnabled
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriEdgeEdgeLightEnabled;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setSiriEdgeEdgeLightEnabled:(BOOL)enabled
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriEdgeEdgeLightEnabled;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = enabled;
}

- (void)setDefaultValues
{
  selfCopy = self;
  SUIAShockwavePrototypeSettings.setDefaultValues()();
}

- (id)chromaticAberrationFinalDonutMaskForIdiom:(int64_t)idiom
{
  selfCopy = self;
  v5 = [(SUIAShockwavePrototypeSettings *)selfCopy shouldBehaveLikeLargeScreenIdiom:idiom];
  v6 = &selRef_chromaticAberrationFinalDonutMaskLargeScreen;
  if (!v5)
  {
    v6 = &selRef_chromaticAberrationFinalDonutMaskSmallScreen;
  }

  v7 = [selfCopy *v6];

  return v7;
}

+ (id)settingsControllerModule
{
  _sSo30SUIAShockwavePrototypeSettingsC20SystemUIAnimationKitE24settingsControllerModuleSo8PTModuleCSgyFZ_0();

  return v2;
}

@end
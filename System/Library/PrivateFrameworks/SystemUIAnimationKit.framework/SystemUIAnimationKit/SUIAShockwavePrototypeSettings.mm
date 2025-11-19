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
- (id)chromaticAberrationFinalDonutMaskForIdiom:(int64_t)a3;
- (int64_t)captureFillLightType;
- (void)setAbberationCancelledFadeOutAnimationSettings:(id)a3;
- (void)setAbberationFadeOutAnimationSettings:(id)a3;
- (void)setAberrationBlurRadius:(double)a3;
- (void)setAberrationColorBrightness:(double)a3;
- (void)setAberrationColorMatrixMultiplyFactor:(double)a3;
- (void)setAberrationColorSaturateAmount:(double)a3;
- (void)setAberrationEDRGain:(double)a3;
- (void)setAberrationFadeOutDelay:(double)a3;
- (void)setAberrationFadeOutDelayIPad:(double)a3;
- (void)setAberrationMagnitudeX:(double)a3;
- (void)setAberrationMagnitudeY:(double)a3;
- (void)setAberrationUseColorBrightness:(BOOL)a3;
- (void)setAberrationUseColorMatrixMultiply:(BOOL)a3;
- (void)setAberrationUseColorSaturate:(BOOL)a3;
- (void)setAberrationUseEDR:(BOOL)a3;
- (void)setCaptureChromaticAberrationEnabled:(BOOL)a3;
- (void)setCaptureFillLightType:(int64_t)a3;
- (void)setCaptureFillWhiteValue:(double)a3;
- (void)setCaptureHintAnimationSettings:(id)a3;
- (void)setCaptureHintInterpolationProgress:(double)a3;
- (void)setCaptureHintMeshOffset:(double)a3;
- (void)setCaptureHintRetargetImpulse:(double)a3;
- (void)setCaptureMeshEnabled:(BOOL)a3;
- (void)setChromaticAberrationFinalDonutMaskLargeScreen:(id)a3;
- (void)setChromaticAberrationFinalDonutMaskSmallScreen:(id)a3;
- (void)setChromaticAberrationInitialDonutMask:(id)a3;
- (void)setColorFillFinalCircleMask:(id)a3;
- (void)setColorFillHintCircleMask:(id)a3;
- (void)setColorFillInitialCircleMask:(id)a3;
- (void)setDefaultValues;
- (void)setDonutMaskEndTransitionDelay:(double)a3;
- (void)setDonutMaskInitialEdgeOutsetProportion:(double)a3;
- (void)setDonutMaskPositionAnimationSettings:(id)a3;
- (void)setEdgeLightFinalCircleMask:(id)a3;
- (void)setEdgeLightHintCircleMask:(id)a3;
- (void)setEdgeLightHintTransitionDelay:(double)a3;
- (void)setEdgeLightInitialCircleMask:(id)a3;
- (void)setFillLightCaptureInitialIntensity:(double)a3;
- (void)setFillLightColorBrightnessAmount:(double)a3;
- (void)setFillLightColorContrastAmount:(double)a3;
- (void)setFillLightColorSaturateAmount:(double)a3;
- (void)setFillLightFinalIntensity:(double)a3;
- (void)setFillLightInitialIntensity:(double)a3;
- (void)setFillLightIntensityFinalStateDelay:(double)a3;
- (void)setFinalFitVsDiameterRatioLongEdgeBigScreen:(double)a3;
- (void)setFinalFitVsDiameterRatioLongEdgeSmallScreen:(double)a3;
- (void)setFinalFitVsDiameterRatioShortEdgeBigScreen:(double)a3;
- (void)setFinalFitVsDiameterRatioShortEdgeSmallScreen:(double)a3;
- (void)setLightIntensityAnimationSettings:(id)a3;
- (void)setLightIntensityCancelledAnimationSettings:(id)a3;
- (void)setMaximumHintDuration:(double)a3;
- (void)setMeshFinalProportionAcrossScreenLongEdge:(double)a3;
- (void)setMeshFinalProportionAcrossScreenShortEdge:(double)a3;
- (void)setMeshFinalProportionTowardsCenterOnLargeDisplays:(double)a3;
- (void)setMeshPointsAnimationSettings:(id)a3;
- (void)setMeshPointsCancelledAnimationSettings:(id)a3;
- (void)setMeshPointsEndTransitionDelay:(double)a3;
- (void)setMeshPositionAnimationSettings:(id)a3;
- (void)setMeshRectangularFinalLongDimensionRatio:(double)a3;
- (void)setMeshRectangularFinalShortDimensionRatio:(double)a3;
- (void)setMeshSquareFinalSizeDiagonalRatio:(double)a3;
- (void)setSiriButtonChromaticAberrationEnabled:(BOOL)a3;
- (void)setSiriButtonEdgeLightEnabled:(BOOL)a3;
- (void)setSiriButtonFillLightEnabled:(BOOL)a3;
- (void)setSiriButtonMeshEnabled:(BOOL)a3;
- (void)setSiriButtonMeshEnabledLargeScreen:(BOOL)a3;
- (void)setSiriEdgeChromaticAberrationEnabled:(BOOL)a3;
- (void)setSiriEdgeEdgeLightEnabled:(BOOL)a3;
- (void)setSiriEdgeFillLightEnabled:(BOOL)a3;
- (void)setSiriEdgeMeshEnabled:(BOOL)a3;
- (void)setSiriEdgeMeshEnabledLargeScreen:(BOOL)a3;
- (void)setTotalDuration:(double)a3;
- (void)setUseSiriMeshForCapture:(BOOL)a3;
- (void)setVisionIntelligenceHintAnimationSettings:(id)a3;
- (void)setVisionIntelligenceHintFillLightInitialIntensity:(double)a3;
- (void)setVisionIntelligenceHintInterpolationProgress:(double)a3;
- (void)setVisionIntelligenceHintRetargetImpulse:(double)a3;
- (void)setVisualizeEffectMasks:(BOOL)a3;
@end

@implementation SUIAShockwavePrototypeSettings

- (double)maximumHintDuration
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_maximumHintDuration;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setMaximumHintDuration:(double)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_maximumHintDuration;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)totalDuration
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_totalDuration;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setTotalDuration:(double)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_totalDuration;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (BOOL)visualizeEffectMasks
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_visualizeEffectMasks;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setVisualizeEffectMasks:(BOOL)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_visualizeEffectMasks;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)donutMaskInitialEdgeOutsetProportion
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_donutMaskInitialEdgeOutsetProportion;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setDonutMaskInitialEdgeOutsetProportion:(double)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_donutMaskInitialEdgeOutsetProportion;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)finalFitVsDiameterRatioShortEdgeSmallScreen
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_finalFitVsDiameterRatioShortEdgeSmallScreen;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setFinalFitVsDiameterRatioShortEdgeSmallScreen:(double)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_finalFitVsDiameterRatioShortEdgeSmallScreen;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)finalFitVsDiameterRatioLongEdgeSmallScreen
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_finalFitVsDiameterRatioLongEdgeSmallScreen;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setFinalFitVsDiameterRatioLongEdgeSmallScreen:(double)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_finalFitVsDiameterRatioLongEdgeSmallScreen;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)finalFitVsDiameterRatioShortEdgeBigScreen
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_finalFitVsDiameterRatioShortEdgeBigScreen;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setFinalFitVsDiameterRatioShortEdgeBigScreen:(double)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_finalFitVsDiameterRatioShortEdgeBigScreen;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)finalFitVsDiameterRatioLongEdgeBigScreen
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_finalFitVsDiameterRatioLongEdgeBigScreen;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setFinalFitVsDiameterRatioLongEdgeBigScreen:(double)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_finalFitVsDiameterRatioLongEdgeBigScreen;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)edgeLightHintTransitionDelay
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_edgeLightHintTransitionDelay;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setEdgeLightHintTransitionDelay:(double)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_edgeLightHintTransitionDelay;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)donutMaskEndTransitionDelay
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_donutMaskEndTransitionDelay;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setDonutMaskEndTransitionDelay:(double)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_donutMaskEndTransitionDelay;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (SUIAFluidBehaviorSettings)donutMaskPositionAnimationSettings
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_donutMaskPositionAnimationSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setDonutMaskPositionAnimationSettings:(id)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_donutMaskPositionAnimationSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (SUIAShockwaveRadialMaskSettings)chromaticAberrationInitialDonutMask
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_chromaticAberrationInitialDonutMask;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setChromaticAberrationInitialDonutMask:(id)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_chromaticAberrationInitialDonutMask;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (SUIAShockwaveRadialMaskSettings)chromaticAberrationFinalDonutMaskSmallScreen
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_chromaticAberrationFinalDonutMaskSmallScreen;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setChromaticAberrationFinalDonutMaskSmallScreen:(id)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_chromaticAberrationFinalDonutMaskSmallScreen;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (SUIAShockwaveRadialMaskSettings)chromaticAberrationFinalDonutMaskLargeScreen
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_chromaticAberrationFinalDonutMaskLargeScreen;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setChromaticAberrationFinalDonutMaskLargeScreen:(id)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_chromaticAberrationFinalDonutMaskLargeScreen;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (SUIAShockwaveRadialMaskSettings)colorFillInitialCircleMask
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_colorFillInitialCircleMask;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setColorFillInitialCircleMask:(id)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_colorFillInitialCircleMask;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (SUIAShockwaveRadialMaskSettings)colorFillHintCircleMask
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_colorFillHintCircleMask;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setColorFillHintCircleMask:(id)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_colorFillHintCircleMask;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (SUIAShockwaveRadialMaskSettings)colorFillFinalCircleMask
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_colorFillFinalCircleMask;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setColorFillFinalCircleMask:(id)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_colorFillFinalCircleMask;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (SUIAShockwaveRadialMaskSettings)edgeLightInitialCircleMask
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_edgeLightInitialCircleMask;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setEdgeLightInitialCircleMask:(id)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_edgeLightInitialCircleMask;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (SUIAShockwaveRadialMaskSettings)edgeLightHintCircleMask
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_edgeLightHintCircleMask;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setEdgeLightHintCircleMask:(id)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_edgeLightHintCircleMask;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (SUIAShockwaveRadialMaskSettings)edgeLightFinalCircleMask
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_edgeLightFinalCircleMask;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setEdgeLightFinalCircleMask:(id)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_edgeLightFinalCircleMask;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (double)aberrationMagnitudeX
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationMagnitudeX;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setAberrationMagnitudeX:(double)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationMagnitudeX;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)aberrationMagnitudeY
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationMagnitudeY;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setAberrationMagnitudeY:(double)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationMagnitudeY;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)aberrationBlurRadius
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationBlurRadius;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setAberrationBlurRadius:(double)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationBlurRadius;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (BOOL)aberrationUseColorSaturate
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationUseColorSaturate;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setAberrationUseColorSaturate:(BOOL)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationUseColorSaturate;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)aberrationColorSaturateAmount
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationColorSaturateAmount;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setAberrationColorSaturateAmount:(double)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationColorSaturateAmount;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (BOOL)aberrationUseEDR
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationUseEDR;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setAberrationUseEDR:(BOOL)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationUseEDR;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)aberrationEDRGain
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationEDRGain;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setAberrationEDRGain:(double)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationEDRGain;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (BOOL)aberrationUseColorBrightness
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationUseColorBrightness;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setAberrationUseColorBrightness:(BOOL)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationUseColorBrightness;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)aberrationColorBrightness
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationColorBrightness;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setAberrationColorBrightness:(double)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationColorBrightness;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (BOOL)aberrationUseColorMatrixMultiply
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationUseColorMatrixMultiply;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setAberrationUseColorMatrixMultiply:(BOOL)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationUseColorMatrixMultiply;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)aberrationColorMatrixMultiplyFactor
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationColorMatrixMultiplyFactor;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setAberrationColorMatrixMultiplyFactor:(double)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationColorMatrixMultiplyFactor;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)aberrationFadeOutDelay
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationFadeOutDelay;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setAberrationFadeOutDelay:(double)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationFadeOutDelay;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)aberrationFadeOutDelayIPad
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationFadeOutDelayIPad;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setAberrationFadeOutDelayIPad:(double)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationFadeOutDelayIPad;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (SUIAFluidBehaviorSettings)abberationFadeOutAnimationSettings
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_abberationFadeOutAnimationSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setAbberationFadeOutAnimationSettings:(id)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_abberationFadeOutAnimationSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (SUIAFluidBehaviorSettings)abberationCancelledFadeOutAnimationSettings
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_abberationCancelledFadeOutAnimationSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setAbberationCancelledFadeOutAnimationSettings:(id)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_abberationCancelledFadeOutAnimationSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (double)meshSquareFinalSizeDiagonalRatio
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshSquareFinalSizeDiagonalRatio;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setMeshSquareFinalSizeDiagonalRatio:(double)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshSquareFinalSizeDiagonalRatio;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)meshRectangularFinalShortDimensionRatio
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshRectangularFinalShortDimensionRatio;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setMeshRectangularFinalShortDimensionRatio:(double)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshRectangularFinalShortDimensionRatio;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)meshRectangularFinalLongDimensionRatio
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshRectangularFinalLongDimensionRatio;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setMeshRectangularFinalLongDimensionRatio:(double)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshRectangularFinalLongDimensionRatio;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)meshFinalProportionAcrossScreenLongEdge
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshFinalProportionAcrossScreenLongEdge;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setMeshFinalProportionAcrossScreenLongEdge:(double)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshFinalProportionAcrossScreenLongEdge;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)meshFinalProportionAcrossScreenShortEdge
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshFinalProportionAcrossScreenShortEdge;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setMeshFinalProportionAcrossScreenShortEdge:(double)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshFinalProportionAcrossScreenShortEdge;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)meshFinalProportionTowardsCenterOnLargeDisplays
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshFinalProportionTowardsCenterOnLargeDisplays;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setMeshFinalProportionTowardsCenterOnLargeDisplays:(double)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshFinalProportionTowardsCenterOnLargeDisplays;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)meshPointsEndTransitionDelay
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshPointsEndTransitionDelay;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setMeshPointsEndTransitionDelay:(double)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshPointsEndTransitionDelay;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (BOOL)useSiriMeshForCapture
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_useSiriMeshForCapture;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setUseSiriMeshForCapture:(BOOL)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_useSiriMeshForCapture;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (SUIAFluidBehaviorSettings)meshPointsAnimationSettings
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshPointsAnimationSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setMeshPointsAnimationSettings:(id)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshPointsAnimationSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (SUIAFluidBehaviorSettings)meshPositionAnimationSettings
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshPositionAnimationSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setMeshPositionAnimationSettings:(id)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshPositionAnimationSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (SUIAFluidBehaviorSettings)meshPointsCancelledAnimationSettings
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshPointsCancelledAnimationSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setMeshPointsCancelledAnimationSettings:(id)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshPointsCancelledAnimationSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (double)fillLightInitialIntensity
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_fillLightInitialIntensity;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setFillLightInitialIntensity:(double)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_fillLightInitialIntensity;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)fillLightCaptureInitialIntensity
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_fillLightCaptureInitialIntensity;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setFillLightCaptureInitialIntensity:(double)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_fillLightCaptureInitialIntensity;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)captureFillWhiteValue
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_captureFillWhiteValue;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCaptureFillWhiteValue:(double)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_captureFillWhiteValue;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)fillLightFinalIntensity
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_fillLightFinalIntensity;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setFillLightFinalIntensity:(double)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_fillLightFinalIntensity;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (SUIAFluidBehaviorSettings)lightIntensityAnimationSettings
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_lightIntensityAnimationSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setLightIntensityAnimationSettings:(id)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_lightIntensityAnimationSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (SUIAFluidBehaviorSettings)lightIntensityCancelledAnimationSettings
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_lightIntensityCancelledAnimationSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setLightIntensityCancelledAnimationSettings:(id)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_lightIntensityCancelledAnimationSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (double)fillLightIntensityFinalStateDelay
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_fillLightIntensityFinalStateDelay;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setFillLightIntensityFinalStateDelay:(double)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_fillLightIntensityFinalStateDelay;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)fillLightColorSaturateAmount
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_fillLightColorSaturateAmount;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setFillLightColorSaturateAmount:(double)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_fillLightColorSaturateAmount;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)fillLightColorBrightnessAmount
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_fillLightColorBrightnessAmount;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setFillLightColorBrightnessAmount:(double)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_fillLightColorBrightnessAmount;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)fillLightColorContrastAmount
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_fillLightColorContrastAmount;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setFillLightColorContrastAmount:(double)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_fillLightColorContrastAmount;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (SUIAFluidBehaviorSettings)captureHintAnimationSettings
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_captureHintAnimationSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCaptureHintAnimationSettings:(id)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_captureHintAnimationSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (double)captureHintRetargetImpulse
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_captureHintRetargetImpulse;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCaptureHintRetargetImpulse:(double)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_captureHintRetargetImpulse;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)captureHintInterpolationProgress
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_captureHintInterpolationProgress;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCaptureHintInterpolationProgress:(double)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_captureHintInterpolationProgress;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)captureHintMeshOffset
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_captureHintMeshOffset;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCaptureHintMeshOffset:(double)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_captureHintMeshOffset;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)visionIntelligenceHintRetargetImpulse
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_visionIntelligenceHintRetargetImpulse;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setVisionIntelligenceHintRetargetImpulse:(double)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_visionIntelligenceHintRetargetImpulse;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)visionIntelligenceHintInterpolationProgress
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_visionIntelligenceHintInterpolationProgress;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setVisionIntelligenceHintInterpolationProgress:(double)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_visionIntelligenceHintInterpolationProgress;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)visionIntelligenceHintFillLightInitialIntensity
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_visionIntelligenceHintFillLightInitialIntensity;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setVisionIntelligenceHintFillLightInitialIntensity:(double)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_visionIntelligenceHintFillLightInitialIntensity;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (SUIAFluidBehaviorSettings)visionIntelligenceHintAnimationSettings
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_visionIntelligenceHintAnimationSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setVisionIntelligenceHintAnimationSettings:(id)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_visionIntelligenceHintAnimationSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (BOOL)captureChromaticAberrationEnabled
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_captureChromaticAberrationEnabled;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCaptureChromaticAberrationEnabled:(BOOL)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_captureChromaticAberrationEnabled;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (BOOL)captureMeshEnabled
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_captureMeshEnabled;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCaptureMeshEnabled:(BOOL)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_captureMeshEnabled;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (int64_t)captureFillLightType
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_captureFillLightType;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCaptureFillLightType:(int64_t)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_captureFillLightType;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (BOOL)siriButtonChromaticAberrationEnabled
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriButtonChromaticAberrationEnabled;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setSiriButtonChromaticAberrationEnabled:(BOOL)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriButtonChromaticAberrationEnabled;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (BOOL)siriButtonMeshEnabled
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriButtonMeshEnabled;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setSiriButtonMeshEnabled:(BOOL)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriButtonMeshEnabled;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (BOOL)siriButtonMeshEnabledLargeScreen
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriButtonMeshEnabledLargeScreen;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setSiriButtonMeshEnabledLargeScreen:(BOOL)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriButtonMeshEnabledLargeScreen;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (BOOL)siriButtonFillLightEnabled
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriButtonFillLightEnabled;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setSiriButtonFillLightEnabled:(BOOL)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriButtonFillLightEnabled;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (BOOL)siriButtonEdgeLightEnabled
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriButtonEdgeLightEnabled;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setSiriButtonEdgeLightEnabled:(BOOL)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriButtonEdgeLightEnabled;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (BOOL)siriEdgeChromaticAberrationEnabled
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriEdgeChromaticAberrationEnabled;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setSiriEdgeChromaticAberrationEnabled:(BOOL)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriEdgeChromaticAberrationEnabled;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (BOOL)siriEdgeMeshEnabled
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriEdgeMeshEnabled;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setSiriEdgeMeshEnabled:(BOOL)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriEdgeMeshEnabled;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (BOOL)siriEdgeMeshEnabledLargeScreen
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriEdgeMeshEnabledLargeScreen;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setSiriEdgeMeshEnabledLargeScreen:(BOOL)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriEdgeMeshEnabledLargeScreen;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (BOOL)siriEdgeFillLightEnabled
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriEdgeFillLightEnabled;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setSiriEdgeFillLightEnabled:(BOOL)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriEdgeFillLightEnabled;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (BOOL)siriEdgeEdgeLightEnabled
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriEdgeEdgeLightEnabled;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setSiriEdgeEdgeLightEnabled:(BOOL)a3
{
  v5 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriEdgeEdgeLightEnabled;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (void)setDefaultValues
{
  v2 = self;
  SUIAShockwavePrototypeSettings.setDefaultValues()();
}

- (id)chromaticAberrationFinalDonutMaskForIdiom:(int64_t)a3
{
  v4 = self;
  v5 = [(SUIAShockwavePrototypeSettings *)v4 shouldBehaveLikeLargeScreenIdiom:a3];
  v6 = &selRef_chromaticAberrationFinalDonutMaskLargeScreen;
  if (!v5)
  {
    v6 = &selRef_chromaticAberrationFinalDonutMaskSmallScreen;
  }

  v7 = [v4 *v6];

  return v7;
}

+ (id)settingsControllerModule
{
  _sSo30SUIAShockwavePrototypeSettingsC20SystemUIAnimationKitE24settingsControllerModuleSo8PTModuleCSgyFZ_0();

  return v2;
}

@end
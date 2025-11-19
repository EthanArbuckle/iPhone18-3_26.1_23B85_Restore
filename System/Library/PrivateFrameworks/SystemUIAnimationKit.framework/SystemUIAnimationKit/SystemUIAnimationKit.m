uint64_t sub_26C5B8C34(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for TimerID(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TimerID(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ComponentFluidBehaviorSettings.AnimationSettings.SpringProperties(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ComponentFluidBehaviorSettings.AnimationSettings.SpringProperties(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

id sub_26C5B8CE8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 shockwaveSettings];
  *a2 = result;
  return result;
}

id sub_26C5B8D38@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 stingSettings];
  *a2 = result;
  return result;
}

id sub_26C5B8D88@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 behaviorType];
  *a2 = result;
  return result;
}

id sub_26C5B8DD8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 dampingRatio];
  *a2 = v4;
  return result;
}

id sub_26C5B8E20@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 response];
  *a2 = v4;
  return result;
}

id sub_26C5B8E68@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 retargetImpulse];
  *a2 = v4;
  return result;
}

id sub_26C5B8EB0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 trackingDampingRatio];
  *a2 = v4;
  return result;
}

id sub_26C5B8EF8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 trackingResponse];
  *a2 = v4;
  return result;
}

id sub_26C5B8F40@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 trackingRetargetImpulse];
  *a2 = v4;
  return result;
}

id sub_26C5B8F88@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 smoothingAndProjectionEnabled];
  *a2 = result;
  return result;
}

id sub_26C5B8FD0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 dampingRatioSmoothing];
  *a2 = v4;
  return result;
}

id sub_26C5B9018@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 responseSmoothing];
  *a2 = v4;
  return result;
}

id sub_26C5B9060@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 trackingDampingRatioSmoothing];
  *a2 = v4;
  return result;
}

id sub_26C5B90A8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 trackingResponseSmoothing];
  *a2 = v4;
  return result;
}

id sub_26C5B90F0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 inertialTargetSmoothingRatio];
  *a2 = v4;
  return result;
}

id sub_26C5B9138@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 inertialProjectionDeceleration];
  *a2 = v4;
  return result;
}

id sub_26C5B9180@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 preferredFrameRateRange];
  *a2 = result;
  return result;
}

id sub_26C5B9250@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 maximumHintDuration];
  *a2 = v4;
  return result;
}

id sub_26C5B9298@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 totalDuration];
  *a2 = v4;
  return result;
}

id sub_26C5B92E0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 visualizeEffectMasks];
  *a2 = result;
  return result;
}

id sub_26C5B9328@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 donutMaskInitialEdgeOutsetProportion];
  *a2 = v4;
  return result;
}

id sub_26C5B9370@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 finalFitVsDiameterRatioShortEdgeSmallScreen];
  *a2 = v4;
  return result;
}

id sub_26C5B93B8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 finalFitVsDiameterRatioLongEdgeSmallScreen];
  *a2 = v4;
  return result;
}

id sub_26C5B9400@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 finalFitVsDiameterRatioShortEdgeBigScreen];
  *a2 = v4;
  return result;
}

id sub_26C5B9448@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 finalFitVsDiameterRatioLongEdgeBigScreen];
  *a2 = v4;
  return result;
}

id sub_26C5B9490@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 edgeLightHintTransitionDelay];
  *a2 = v4;
  return result;
}

id sub_26C5B94D8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 donutMaskEndTransitionDelay];
  *a2 = v4;
  return result;
}

id sub_26C5B9520@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 donutMaskPositionAnimationSettings];
  *a2 = result;
  return result;
}

id sub_26C5B9570@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 chromaticAberrationInitialDonutMask];
  *a2 = result;
  return result;
}

id sub_26C5B95C0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 chromaticAberrationFinalDonutMaskSmallScreen];
  *a2 = result;
  return result;
}

id sub_26C5B9610@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 chromaticAberrationFinalDonutMaskLargeScreen];
  *a2 = result;
  return result;
}

id sub_26C5B9660@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 colorFillInitialCircleMask];
  *a2 = result;
  return result;
}

id sub_26C5B96B0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 colorFillHintCircleMask];
  *a2 = result;
  return result;
}

id sub_26C5B9700@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 colorFillFinalCircleMask];
  *a2 = result;
  return result;
}

id sub_26C5B9750@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 edgeLightInitialCircleMask];
  *a2 = result;
  return result;
}

id sub_26C5B97A0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 edgeLightHintCircleMask];
  *a2 = result;
  return result;
}

id sub_26C5B97F0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 edgeLightFinalCircleMask];
  *a2 = result;
  return result;
}

id sub_26C5B9840@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 aberrationMagnitudeX];
  *a2 = v4;
  return result;
}

id sub_26C5B9888@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 aberrationMagnitudeY];
  *a2 = v4;
  return result;
}

id sub_26C5B98D0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 aberrationBlurRadius];
  *a2 = v4;
  return result;
}

id sub_26C5B9918@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 aberrationUseColorSaturate];
  *a2 = result;
  return result;
}

id sub_26C5B9960@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 aberrationColorSaturateAmount];
  *a2 = v4;
  return result;
}

id sub_26C5B99A8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 aberrationUseEDR];
  *a2 = result;
  return result;
}

id sub_26C5B99F0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 aberrationEDRGain];
  *a2 = v4;
  return result;
}

id sub_26C5B9A38@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 aberrationUseColorBrightness];
  *a2 = result;
  return result;
}

id sub_26C5B9A80@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 aberrationColorBrightness];
  *a2 = v4;
  return result;
}

id sub_26C5B9AC8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 aberrationUseColorMatrixMultiply];
  *a2 = result;
  return result;
}

id sub_26C5B9B10@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 aberrationColorMatrixMultiplyFactor];
  *a2 = v4;
  return result;
}

id sub_26C5B9B58@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 aberrationFadeOutDelay];
  *a2 = v4;
  return result;
}

id sub_26C5B9BA0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 aberrationFadeOutDelayIPad];
  *a2 = v4;
  return result;
}

id sub_26C5B9BE8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 abberationFadeOutAnimationSettings];
  *a2 = result;
  return result;
}

id sub_26C5B9C38@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 abberationCancelledFadeOutAnimationSettings];
  *a2 = result;
  return result;
}

id sub_26C5B9C88@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 meshSquareFinalSizeDiagonalRatio];
  *a2 = v4;
  return result;
}

id sub_26C5B9CD0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 meshRectangularFinalShortDimensionRatio];
  *a2 = v4;
  return result;
}

id sub_26C5B9D18@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 meshRectangularFinalLongDimensionRatio];
  *a2 = v4;
  return result;
}

id sub_26C5B9D60@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 meshFinalProportionAcrossScreenLongEdge];
  *a2 = v4;
  return result;
}

id sub_26C5B9DA8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 meshFinalProportionAcrossScreenShortEdge];
  *a2 = v4;
  return result;
}

id sub_26C5B9DF0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 meshFinalProportionTowardsCenterOnLargeDisplays];
  *a2 = v4;
  return result;
}

id sub_26C5B9E38@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 meshPointsEndTransitionDelay];
  *a2 = v4;
  return result;
}

id sub_26C5B9E80@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 useSiriMeshForCapture];
  *a2 = result;
  return result;
}

id sub_26C5B9EC8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 meshPointsAnimationSettings];
  *a2 = result;
  return result;
}

id sub_26C5B9F18@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 meshPositionAnimationSettings];
  *a2 = result;
  return result;
}

id sub_26C5B9F68@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 meshPointsCancelledAnimationSettings];
  *a2 = result;
  return result;
}

id sub_26C5B9FB8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fillLightInitialIntensity];
  *a2 = v4;
  return result;
}

id sub_26C5BA000@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fillLightCaptureInitialIntensity];
  *a2 = v4;
  return result;
}

id sub_26C5BA048@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 captureFillWhiteValue];
  *a2 = v4;
  return result;
}

id sub_26C5BA090@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fillLightFinalIntensity];
  *a2 = v4;
  return result;
}

id sub_26C5BA0D8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 lightIntensityAnimationSettings];
  *a2 = result;
  return result;
}

id sub_26C5BA128@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 lightIntensityCancelledAnimationSettings];
  *a2 = result;
  return result;
}

id sub_26C5BA178@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fillLightIntensityFinalStateDelay];
  *a2 = v4;
  return result;
}

id sub_26C5BA1C0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fillLightColorSaturateAmount];
  *a2 = v4;
  return result;
}

id sub_26C5BA208@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fillLightColorBrightnessAmount];
  *a2 = v4;
  return result;
}

id sub_26C5BA250@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fillLightColorContrastAmount];
  *a2 = v4;
  return result;
}

id sub_26C5BA298@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 captureHintAnimationSettings];
  *a2 = result;
  return result;
}

id sub_26C5BA2E8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 captureHintRetargetImpulse];
  *a2 = v4;
  return result;
}

id sub_26C5BA330@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 captureHintInterpolationProgress];
  *a2 = v4;
  return result;
}

id sub_26C5BA378@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 captureHintMeshOffset];
  *a2 = v4;
  return result;
}

id sub_26C5BA3C0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 visionIntelligenceHintRetargetImpulse];
  *a2 = v4;
  return result;
}

id sub_26C5BA408@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 visionIntelligenceHintInterpolationProgress];
  *a2 = v4;
  return result;
}

id sub_26C5BA450@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 visionIntelligenceHintFillLightInitialIntensity];
  *a2 = v4;
  return result;
}

id sub_26C5BA498@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 visionIntelligenceHintAnimationSettings];
  *a2 = result;
  return result;
}

id sub_26C5BA4E8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 captureChromaticAberrationEnabled];
  *a2 = result;
  return result;
}

id sub_26C5BA530@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 captureMeshEnabled];
  *a2 = result;
  return result;
}

id sub_26C5BA578@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 captureFillLightType];
  *a2 = result;
  return result;
}

id sub_26C5BA5C0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 siriButtonChromaticAberrationEnabled];
  *a2 = result;
  return result;
}

id sub_26C5BA608@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 siriButtonMeshEnabled];
  *a2 = result;
  return result;
}

id sub_26C5BA650@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 siriButtonMeshEnabledLargeScreen];
  *a2 = result;
  return result;
}

id sub_26C5BA698@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 siriButtonFillLightEnabled];
  *a2 = result;
  return result;
}

id sub_26C5BA6E0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 siriButtonEdgeLightEnabled];
  *a2 = result;
  return result;
}

id sub_26C5BA728@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 siriEdgeChromaticAberrationEnabled];
  *a2 = result;
  return result;
}

id sub_26C5BA770@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 siriEdgeMeshEnabled];
  *a2 = result;
  return result;
}

id sub_26C5BA7B8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 siriEdgeMeshEnabledLargeScreen];
  *a2 = result;
  return result;
}

id sub_26C5BA800@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 siriEdgeFillLightEnabled];
  *a2 = result;
  return result;
}

id sub_26C5BA848@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 siriEdgeEdgeLightEnabled];
  *a2 = result;
  return result;
}

uint64_t sub_26C5BA8A4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_26C5BA8E0(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_26C614E38();
  [v2 setName_];
}

id sub_26C5BAA04@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 gradientLayerSize];
  *a2 = result;
  return result;
}

id sub_26C5BAA54@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 majorDiameter];
  *a2 = v4;
  return result;
}

id sub_26C5BAA9C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 ringWidth];
  *a2 = v4;
  return result;
}

id sub_26C5BAAE4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 blurRadius];
  *a2 = v4;
  return result;
}

id sub_26C5BAB2C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sampleCount];
  *a2 = result;
  return result;
}

uint64_t sub_26C5BAB78()
{

  return sub_26C5EC7A0();
}

uint64_t sub_26C5BABD0()
{

  return sub_26C5EC824();
}

uint64_t sub_26C5BAC28()
{

  return sub_26C5EC8A8();
}

uint64_t _s20SystemUIAnimationKit30ComponentFluidBehaviorSettingsV17AnimationSettingsOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s20SystemUIAnimationKit30ComponentFluidBehaviorSettingsV17AnimationSettingsOwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

id sub_26C5BACF0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 m11];
  *a2 = v4;
  return result;
}

id sub_26C5BAD38@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 m12];
  *a2 = v4;
  return result;
}

id sub_26C5BAD80@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 m13];
  *a2 = v4;
  return result;
}

id sub_26C5BADC8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 m14];
  *a2 = v4;
  return result;
}

id sub_26C5BAE10@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 m15];
  *a2 = v4;
  return result;
}

id sub_26C5BAE58@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 m21];
  *a2 = v4;
  return result;
}

id sub_26C5BAEA0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 m22];
  *a2 = v4;
  return result;
}

id sub_26C5BAEE8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 m23];
  *a2 = v4;
  return result;
}

id sub_26C5BAF30@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 m24];
  *a2 = v4;
  return result;
}

id sub_26C5BAF78@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 m25];
  *a2 = v4;
  return result;
}

id sub_26C5BAFC0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 m31];
  *a2 = v4;
  return result;
}

id sub_26C5BB008@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 m32];
  *a2 = v4;
  return result;
}

id sub_26C5BB050@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 m33];
  *a2 = v4;
  return result;
}

id sub_26C5BB098@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 m34];
  *a2 = v4;
  return result;
}

id sub_26C5BB0E0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 m35];
  *a2 = v4;
  return result;
}

id sub_26C5BB128@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 m41];
  *a2 = v4;
  return result;
}

id sub_26C5BB170@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 m42];
  *a2 = v4;
  return result;
}

id sub_26C5BB1B8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 m43];
  *a2 = v4;
  return result;
}

id sub_26C5BB200@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 m44];
  *a2 = v4;
  return result;
}

id sub_26C5BB248@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 m45];
  *a2 = v4;
  return result;
}

uint64_t sub_26C5BB290(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C614DD8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26C5BB2FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C614DD8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_26C5BB36C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ExternalRequestID(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_26C5BB42C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ExternalRequestID(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26C5BB4F0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26C5BB538()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26C5BB570()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26C5BB5A8()
{

  return MEMORY[0x2821FE8E8](v0, 232, 7);
}

uint64_t sub_26C5BB5E0()
{

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_26C5BB620()
{

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_26C5BB658()
{

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_26C5BB690()
{

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_26C5BB6DC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26C5BB72C()
{
  MEMORY[0x26D6A5070](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26C5BB764()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26C5BB7A4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26C5BB7DC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26C5BB8D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 560);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for RootComponent.State(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_26C5BB988(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 560) = a2;
  }

  else
  {
    v7 = type metadata accessor for RootComponent.State(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_26C5BBA2C(uint64_t a1, uint64_t a2)
{

  return sub_26C60A278(a1, a2);
}

uint64_t sub_26C5BBA84(uint64_t result, uint64_t a2)
{

  return sub_26C60A650(result, a2);
}

id sub_26C5BBADC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 defaultSpringSettings];
  *a2 = result;
  return result;
}

id sub_26C5BBB2C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 criticallyDampedSpringSettings];
  *a2 = result;
  return result;
}

id sub_26C5BBB7C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 slowCriticallyDampedSpringSettings];
  *a2 = result;
  return result;
}

id sub_26C5BBBCC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 reallyDampedSpringSettings];
  *a2 = result;
  return result;
}

id sub_26C5BBC1C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 reallyReallyDampedSpringSettings];
  *a2 = result;
  return result;
}

id sub_26C5BBC6C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 initialMeshScale];
  *a2 = v4;
  return result;
}

id sub_26C5BBCB4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 finalMeshScale];
  *a2 = v4;
  return result;
}

id sub_26C5BBCFC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 aberrationMagnitude];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

id sub_26C5BBD44@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 aberrationEDRGain];
  *a2 = v4;
  return result;
}

id sub_26C5BBD8C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 aberrationColorBrightnessFactor];
  *a2 = v4;
  return result;
}

id sub_26C5BBDD4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 aberrationColorSaturation];
  *a2 = v4;
  return result;
}

id sub_26C5BBE1C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 aberrationIntensity];
  *a2 = v4;
  return result;
}

id sub_26C5BBE64@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 chromaticAberrationInitialDonutMask];
  *a2 = result;
  return result;
}

id sub_26C5BBEB4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 chromaticAberrationFinalDonutMask];
  *a2 = result;
  return result;
}

id sub_26C5BBF04@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 overlayColor];
  *a2 = result;
  return result;
}

id sub_26C5BBF54@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 colorMatrix];
  *a2 = result;
  return result;
}

id sub_26C5BBFA4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 initialColorMatrixOpacity];
  *a2 = v4;
  return result;
}

id sub_26C5BBFEC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 finalColorMatrixOpacity];
  *a2 = v4;
  return result;
}

id sub_26C5BC034@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 initialColorBlurRadius];
  *a2 = v4;
  return result;
}

id sub_26C5BC07C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 finalColorBlurRadius];
  *a2 = v4;
  return result;
}

id sub_26C5BC0C4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 usesGaussianBlurMask];
  *a2 = result;
  return result;
}

id sub_26C5BC10C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 initialColorMaskScale];
  *a2 = v4;
  return result;
}

id sub_26C5BC154@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 finalColorMaskScale];
  *a2 = v4;
  return result;
}

id sub_26C5BC19C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 initialColorMaskBlurRadius];
  *a2 = v4;
  return result;
}

id sub_26C5BC1E4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 finalColorMaskBlurRadius];
  *a2 = v4;
  return result;
}

id sub_26C5BC22C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 colorOverlayInitialRadialMask];
  *a2 = result;
  return result;
}

id sub_26C5BC27C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 colorOverlayFinalRadialMask];
  *a2 = result;
  return result;
}

uint64_t sub_26C5BC2CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExternalRequestID(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26C5BC338(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExternalRequestID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_26C5BC3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ExternalRequestID(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_26C5BC4C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ExternalRequestID(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_26C5BC578()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

double SUIAExpandNormalizedRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  MinX = CGRectGetMinX(*&a1);
  v13.origin.x = a1;
  v13.origin.y = a2;
  v13.size.width = a3;
  v13.size.height = a4;
  v11 = a5 * CGRectGetMaxX(v13) + (1.0 - a5) * MinX;
  v14.origin.x = a1;
  v14.origin.y = a2;
  v14.size.width = a3;
  v14.size.height = a4;
  CGRectGetMinY(v14);
  v15.origin.x = a1;
  v15.origin.y = a2;
  v15.size.width = a3;
  v15.size.height = a4;
  CGRectGetMaxY(v15);
  v16.origin.x = a1;
  v16.origin.y = a2;
  v16.size.width = a3;
  v16.size.height = a4;
  CGRectGetWidth(v16);
  v17.origin.x = a1;
  v17.origin.y = a2;
  v17.size.width = a3;
  v17.size.height = a4;
  CGRectGetHeight(v17);
  return v11;
}

double SUIAExpandNormalizedPoint(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  MinX = CGRectGetMinX(*&a1);
  v13.origin.x = a1;
  v13.origin.y = a2;
  v13.size.width = a3;
  v13.size.height = a4;
  v11 = a5 * CGRectGetMaxX(v13) + (1.0 - a5) * MinX;
  v14.origin.x = a1;
  v14.origin.y = a2;
  v14.size.width = a3;
  v14.size.height = a4;
  CGRectGetMinY(v14);
  v15.origin.x = a1;
  v15.origin.y = a2;
  v15.size.width = a3;
  v15.size.height = a4;
  CGRectGetMaxY(v15);
  return v11;
}

double SUIAConvertDampingRatioAndResponseToTensionAndFriction(double *a1, double *a2, double result, double a4)
{
  v4 = 6.28318531 / a4 * (6.28318531 / a4);
  if (a1)
  {
    *a1 = v4;
  }

  if (a2)
  {
    v5 = sqrt(v4);
    result = (v5 + v5) * result;
    *a2 = result;
  }

  return result;
}

double SUIAConvertTensionAndFrictionToDampingRatioAndResponse(double *a1, double *a2, double a3, double a4)
{
  result = sqrt(a3);
  if (a1)
  {
    *a1 = a4 / (result + result);
  }

  if (a2)
  {
    result = 6.28318531 / result;
    *a2 = result;
  }

  return result;
}

double SUIAConvertMassStiffnessAndDampingToDampingRatioAndResponse(double *a1, double *a2, double result, double a4, double a5)
{
  v5 = sqrt(a4 / result);
  if (a1)
  {
    result = a5 / result / (v5 + v5);
    *a1 = result;
  }

  if (a2)
  {
    result = 6.28318531 / v5;
    *a2 = 6.28318531 / v5;
  }

  return result;
}

__CFString *SUIAStringFromShockwaveState(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"Initial Offscreen";
  }

  else
  {
    return off_279D3FB48[a1 - 1];
  }
}

__CFString *SUIAStringFromShockwaveConfigurationType(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"Root View";
  }

  else
  {
    return off_279D3FB70[a1 - 1];
  }
}

double SAUIRectMovedOffscreenByProportionToNormalizedButtonRectInContextOfShockwaveBounds(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, CGFloat a13, CGFloat a14, CGFloat a15, CGFloat a16)
{
  v24 = SUIAScreenEdgeForNormalizedButtonRect();
  v25 = a3;
  UIRectGetCenter();
  SUIAExpandNormalizedPoint(a13, a14, a15, a16, v26);
  BSRectCenteredAboutPoint();
  v28 = v27;
  if (v24 > 3)
  {
    if (v24 != 4)
    {
      if (v24 == 8)
      {
        v35.origin.x = a1;
        v35.origin.y = a2;
        v35.size.width = v25;
        v35.size.height = a4;
        Width = CGRectGetWidth(v35);
        v30 = 0.5;
        return v28 + Width * v30 * a5;
      }

      return *MEMORY[0x277CBF3A0];
    }

LABEL_10:
    v36.origin.x = a1;
    v36.origin.y = a2;
    v36.size.width = v25;
    v36.size.height = a4;
    CGRectGetHeight(v36);
    return v28;
  }

  if (v24 == 1)
  {
    goto LABEL_10;
  }

  if (v24 != 2)
  {
    return *MEMORY[0x277CBF3A0];
  }

  v34.origin.x = a1;
  v34.origin.y = a2;
  v34.size.width = v25;
  v34.size.height = a4;
  Width = CGRectGetWidth(v34);
  v30 = -0.5;
  return v28 + Width * v30 * a5;
}

uint64_t SUIAScreenEdgeForNormalizedButtonRect()
{
  if (BSFloatIsZero() && (BSFloatIsZero() & 1) != 0)
  {
    return 2;
  }

  if (BSFloatIsOne() && (BSFloatIsZero() & 1) != 0)
  {
    return 8;
  }

  if (BSFloatIsZero() && (BSFloatIsZero() & 1) != 0)
  {
    return 1;
  }

  if (!BSFloatIsOne())
  {
    return 0;
  }

  if (BSFloatIsZero())
  {
    return 4;
  }

  return 0;
}

CATransform3D *SUIACATransform3DFromNominalRightEdgeToEdge@<X0>(CATransform3D *result@<X0>, uint64_t a2@<X8>)
{
  v2 = MEMORY[0x277CD9DE8];
  v3 = *(MEMORY[0x277CD9DE8] + 80);
  *(a2 + 64) = *(MEMORY[0x277CD9DE8] + 64);
  *(a2 + 80) = v3;
  v4 = v2[7];
  *(a2 + 96) = v2[6];
  *(a2 + 112) = v4;
  v5 = v2[1];
  *a2 = *v2;
  *(a2 + 16) = v5;
  v6 = v2[3];
  *(a2 + 32) = v2[2];
  *(a2 + 48) = v6;
  if (result == 1)
  {
    v7 = -1.57079633;
  }

  else if (result == 4)
  {
    v7 = 1.57079633;
  }

  else
  {
    if (result != 2)
    {
      return result;
    }

    v7 = 3.14159265;
  }

  return CATransform3DMakeRotation(a2, v7, 0.0, 0.0, 1.0);
}

double SUIANormalizedRectSpanningRectEdge(uint64_t a1)
{
  result = *MEMORY[0x277CBF3A0];
  v2 = a1 - 1;
  if (a1 - 1) <= 7 && ((0x8Bu >> v2))
  {
    return dbl_26C619558[v2];
  }

  return result;
}

__CFString *SUIAStringFromAnimationUpdateMode(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"Unspecified";
  }

  else
  {
    return off_279D3FCA8[a1 - 1];
  }
}

id _SUIAModifyFrameRateForAnimationBlockFromSettings(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = _Block_copy(v3);
  [v4 frameRateRange];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [v4 preferredFrameRateRange];

  v13 = [v12 highFrameRateReason];
  v24.minimum = v7;
  v24.maximum = v9;
  v24.preferred = v11;
  if (!CAFrameRateRangeIsEqualToRange(v24, *MEMORY[0x277CD9DD0]))
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = ___SUIAModifyFrameRateForAnimationBlockFromSettings_block_invoke;
    aBlock[3] = &unk_279D3FC10;
    v19 = v7;
    v20 = v9;
    v21 = v11;
    v22 = v13;
    v18 = v3;
    v14 = _Block_copy(aBlock);

    v5 = v14;
  }

  v15 = _Block_copy(v5);

  return v15;
}

id SUIACompletionBlockC2ToBS(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __SUIACompletionBlockC2ToBS_block_invoke;
    aBlock[3] = &unk_279D3FBA0;
    v6 = v1;
    v3 = _Block_copy(aBlock);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id SUIACompletionBlockBSToC2(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __SUIACompletionBlockBSToC2_block_invoke;
    aBlock[3] = &unk_279D3FBC8;
    v6 = v1;
    v3 = _Block_copy(aBlock);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_26C5CA26C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 1233))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 496);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26C5CA2B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 1224) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 1232) = 0;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 1233) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 496) = (a2 - 1);
      return result;
    }

    *(result + 1233) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_26C5CA490(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v34[0] = *a1;
  v34[1] = v2;
  v3 = *(a1 + 48);
  v34[2] = *(a1 + 32);
  v34[3] = v3;
  v4 = *(a1 + 112);
  v32[2] = *(a1 + 96);
  v32[3] = v4;
  v5 = *(a1 + 144);
  v32[4] = *(a1 + 128);
  v6 = *(a1 + 80);
  v32[0] = *(a1 + 64);
  v32[1] = v6;
  v7 = *(a1 + 160);
  v8 = *(a1 + 192);
  v9 = *(a1 + 208);
  v30[2] = *(a1 + 176);
  v30[3] = v8;
  v30[4] = v9;
  v30[0] = v5;
  v30[1] = v7;
  v10 = *(a1 + 272);
  v26[2] = *(a1 + 256);
  v26[3] = v10;
  v26[4] = *(a1 + 288);
  v27 = *(a1 + 304);
  v11 = *(a1 + 240);
  v26[0] = *(a1 + 224);
  v26[1] = v11;
  v12 = *(a2 + 48);
  v35[2] = *(a2 + 32);
  v35[3] = v12;
  v13 = *(a2 + 16);
  v35[0] = *a2;
  v35[1] = v13;
  v15 = *(a2 + 128);
  v14 = *(a2 + 144);
  v16 = *(a2 + 96);
  v33[3] = *(a2 + 112);
  v33[4] = v15;
  v17 = *(a2 + 80);
  v33[0] = *(a2 + 64);
  v33[1] = v17;
  v33[2] = v16;
  v18 = *(a2 + 208);
  v31[3] = *(a2 + 192);
  v31[4] = v18;
  v19 = *(a2 + 176);
  v31[1] = *(a2 + 160);
  v31[2] = v19;
  v31[0] = v14;
  v20 = *(a2 + 240);
  v28[0] = *(a2 + 224);
  v28[1] = v20;
  v21 = *(a2 + 256);
  v22 = *(a2 + 272);
  v23 = *(a2 + 288);
  v29 = *(a2 + 304);
  v28[3] = v22;
  v28[4] = v23;
  v28[2] = v21;
  return (sub_26C5CABD4(v34, v35) & 1) != 0 && sub_26C5CAEE4(v32, v33) && sub_26C5CAEE4(v30, v31) && sub_26C5CADF8(v26, v28);
}

BOOL sub_26C5CA5B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v14[2] = *(a1 + 32);
  v14[3] = v2;
  v14[4] = *(a1 + 64);
  v15 = *(a1 + 80);
  v3 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v3;
  v5 = *(a1 + 88);
  v4 = *(a1 + 96);
  v6 = *(a2 + 16);
  v16[0] = *a2;
  v16[1] = v6;
  v7 = *(a2 + 32);
  v8 = *(a2 + 48);
  v9 = *(a2 + 64);
  v17 = *(a2 + 80);
  v16[3] = v8;
  v16[4] = v9;
  v16[2] = v7;
  v11 = *(a2 + 88);
  v10 = *(a2 + 96);
  v12 = sub_26C5CADF8(v14, v16);
  result = 0;
  if (v12 && v5 == v11)
  {
    return v4 == v10;
  }

  return result;
}

BOOL sub_26C5CA650(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v18[2] = *(a1 + 32);
  v18[3] = v2;
  v18[4] = *(a1 + 64);
  v19 = *(a1 + 80);
  v3 = *(a1 + 16);
  v18[0] = *a1;
  v18[1] = v3;
  v5 = *(a1 + 88);
  v4 = *(a1 + 96);
  v7 = *(a1 + 104);
  v6 = *(a1 + 112);
  v8 = *(a2 + 16);
  v20[0] = *a2;
  v20[1] = v8;
  v9 = *(a2 + 32);
  v10 = *(a2 + 48);
  v11 = *(a2 + 64);
  v21 = *(a2 + 80);
  v20[3] = v10;
  v20[4] = v11;
  v20[2] = v9;
  v13 = *(a2 + 88);
  v12 = *(a2 + 96);
  v15 = *(a2 + 104);
  v14 = *(a2 + 112);
  v16 = sub_26C5CADF8(v18, v20);
  result = 0;
  if (v16 && v5 == v13 && v4 == v12 && v7 == v15)
  {
    return v6 == v14;
  }

  return result;
}

uint64_t sub_26C5CA748(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 24);
  v4 = *(a1 + 56);
  v18[2] = *(a1 + 40);
  v18[3] = v4;
  v18[4] = *(a1 + 72);
  v18[0] = *(a1 + 8);
  v18[1] = v3;
  v5 = *(a1 + 104);
  v6 = *(a1 + 136);
  v16[2] = *(a1 + 120);
  v16[3] = v6;
  v16[4] = *(a1 + 152);
  v16[0] = *(a1 + 88);
  v16[1] = v5;
  v7 = *(a1 + 168);
  *&v5 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 72);
  v10 = *(a2 + 40);
  v19[3] = *(a2 + 56);
  v19[4] = v9;
  v11 = *(a2 + 24);
  v19[0] = v8;
  v19[1] = v11;
  v19[2] = v10;
  v12 = *(a2 + 136);
  v17[2] = *(a2 + 120);
  v17[3] = v12;
  v17[4] = *(a2 + 152);
  v13 = *(a2 + 104);
  v17[0] = *(a2 + 88);
  v17[1] = v13;
  if (v2 == *&v5 && (v14 = *(a2 + 168), sub_26C5CAEE4(v18, v19)))
  {
    return sub_26C5CAEE4(v16, v17) & (v7 == v14);
  }

  else
  {
    return 0;
  }
}

BOOL sub_26C5CA83C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  if ((sub_26C5CAFC8(*a1, *a2) & 1) == 0 || (sub_26C5CB024(v2, v5) & 1) == 0)
  {
    return 0;
  }

  if (v3 == v6)
  {
    return v4 == v7;
  }

  return 0;
}

BOOL sub_26C5CA8B0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 24);
  v4 = *(a1 + 56);
  v41[2] = *(a1 + 40);
  v41[3] = v4;
  v41[4] = *(a1 + 72);
  v41[0] = *(a1 + 8);
  v41[1] = v3;
  v5 = *(a1 + 88);
  v6 = *(a1 + 104);
  v7 = *(a1 + 120);
  v8 = *(a1 + 152);
  v39[3] = *(a1 + 136);
  v39[4] = v8;
  v39[1] = v6;
  v39[2] = v7;
  v39[0] = v5;
  v9 = *(a1 + 168);
  v10 = *(a1 + 176);
  v11 = *(a1 + 192);
  v12 = *(a1 + 208);
  v13 = *(a1 + 240);
  v14 = *(a1 + 256);
  v37[3] = *(a1 + 224);
  v37[4] = v13;
  v37[1] = v11;
  v37[2] = v12;
  v37[0] = v10;
  v15 = *(a1 + 272);
  v16 = *(a1 + 288);
  v17 = *(a1 + 320);
  v35[3] = *(a1 + 304);
  v35[4] = v17;
  v35[1] = v15;
  v35[2] = v16;
  v35[0] = v14;
  *&v15 = *a2;
  v18 = *(a2 + 8);
  v19 = *(a2 + 24);
  v20 = *(a2 + 40);
  v21 = *(a2 + 72);
  v42[3] = *(a2 + 56);
  v42[4] = v21;
  v42[1] = v19;
  v42[2] = v20;
  v42[0] = v18;
  v22 = *(a2 + 88);
  v23 = *(a2 + 104);
  v24 = *(a2 + 120);
  v25 = *(a2 + 152);
  v40[3] = *(a2 + 136);
  v40[4] = v25;
  v40[1] = v23;
  v40[2] = v24;
  v40[0] = v22;
  v26 = *(a2 + 168);
  v27 = *(a2 + 176);
  v28 = *(a2 + 192);
  v30 = *(a2 + 240);
  v29 = *(a2 + 256);
  v31 = *(a2 + 208);
  v38[3] = *(a2 + 224);
  v38[4] = v30;
  v38[1] = v28;
  v38[2] = v31;
  v38[0] = v27;
  v32 = *(a2 + 320);
  v36[3] = *(a2 + 304);
  v36[4] = v32;
  v33 = *(a2 + 288);
  v36[1] = *(a2 + 272);
  v36[2] = v33;
  v36[0] = v29;
  return v2 == *&v15 && sub_26C5CAEE4(v41, v42) && sub_26C5CAEE4(v39, v40) && v9 == v26 && sub_26C5CAEE4(v37, v38) && sub_26C5CAEE4(v35, v36);
}

uint64_t sub_26C5CAA20(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 56);
  v25[2] = *(a1 + 40);
  v25[3] = v3;
  v25[4] = *(a1 + 72);
  v25[0] = *(a1 + 8);
  v25[1] = v2;
  v4 = *(a1 + 104);
  v5 = *(a1 + 136);
  v23[2] = *(a1 + 120);
  v23[3] = v5;
  v23[4] = *(a1 + 152);
  v23[0] = *(a1 + 88);
  v23[1] = v4;
  v6 = *(a1 + 184);
  v7 = *(a1 + 216);
  v19[2] = *(a1 + 200);
  v19[3] = v7;
  v20 = *(a1 + 232);
  v19[0] = *(a1 + 168);
  v19[1] = v6;
  v8 = *(a2 + 24);
  v9 = *(a2 + 56);
  v26[2] = *(a2 + 40);
  v26[3] = v9;
  v26[4] = *(a2 + 72);
  v26[0] = *(a2 + 8);
  v26[1] = v8;
  v10 = *(a2 + 88);
  v11 = *(a2 + 152);
  v12 = *(a2 + 120);
  v24[3] = *(a2 + 136);
  v24[4] = v11;
  v13 = *(a2 + 104);
  v24[0] = v10;
  v24[1] = v13;
  v24[2] = v12;
  v14 = *(a2 + 168);
  v22 = *(a2 + 232);
  v15 = *(a2 + 216);
  v21[2] = *(a2 + 200);
  v21[3] = v15;
  v16 = *(a2 + 184);
  v21[0] = v14;
  v21[1] = v16;
  sub_26C5CC548(0, &qword_2804A4C08);
  if (sub_26C614FA8() & 1) != 0 && (sub_26C5CACE0(v25, v26) & 1) != 0 && (sub_26C5CACE0(v23, v24))
  {
    v17 = sub_26C5ED1F0(v19, v21);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_26C5CAB7C(void *__src, const void *a2)
{
  memcpy(v4, __src, 0x4D1uLL);
  memcpy(__dst, a2, 0x4D1uLL);
  return sub_26C5CB284(v4, __dst) & 1;
}

double *sub_26C5CABD4(double *result, double *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  v6 = result[2];
  v5 = result[3];
  if (v4)
  {
    v7 = v2 == v3;
  }

  else
  {
    v7 = 1;
  }

  v9 = a2[2];
  v8 = a2[3];
  if (v7)
  {
LABEL_10:
    v12 = result;
    v14 = sub_26C5CB024(*(result + 1), *(a2 + 1));
    result = 0;
    if ((v14 & 1) == 0 || v6 != v9 || v5 != v8)
    {
      return result;
    }

    v15 = v12;
    v16 = *(v12 + 4);
    v17 = *(v12 + 5);
    v19 = v15[6];
    v18 = v15[7];
    v20 = a2;
    v21 = *(a2 + 4);
    v22 = *(a2 + 5);
    v24 = v20[6];
    v23 = v20[7];
    return ((sub_26C5CAFC8(v16, v21) & 1) != 0 && (sub_26C5CB024(v17, v22) & 1) != 0 && v19 == v24 && v18 == v23);
  }

  v10 = (v2 + 32);
  v11 = (v3 + 32);
  while (v4)
  {
    if (*v10 != *v11)
    {
      return 0;
    }

    ++v10;
    ++v11;
    if (!--v4)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26C5CACE0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 65))
  {
    if ((*(a2 + 65) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if ((*(a2 + 65) & 1) != 0 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))))) & 1) == 0)
    {
      return 0;
    }

    if (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }

    v4 = *(a2 + 64);
    v5 = *(a1 + 48) != *(a2 + 48);
    if (*(a1 + 52) != *(a2 + 52))
    {
      v5 = 1;
    }

    if (*(a1 + 64))
    {
      if (v5 || (v4 & 1) == 0)
      {
        return 0;
      }
    }

    else if (((v4 | v5) & 1) != 0 || *(a1 + 60) != *(a2 + 60))
    {
      return 0;
    }
  }

  if (((*(a1 + 66) ^ *(a2 + 66)) & 1) == 0)
  {
    sub_26C5CC548(0, &qword_2804A4C08);
    return sub_26C614FA8() & 1;
  }

  return 0;
}

BOOL sub_26C5CADF8(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 65) & 1) == 0)
  {
    if (*(a2 + 65))
    {
      return 0;
    }

    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))))) & 1) != 0 && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
    {
      v5 = *(a2 + 64);
      v6 = *(a1 + 48) != *(a2 + 48);
      if (*(a1 + 52) != *(a2 + 52))
      {
        v6 = 1;
      }

      if (*(a1 + 64))
      {
        if (v6 || (v5 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_3;
      }

      if (((v5 | v6) & 1) == 0 && *(a1 + 60) == *(a2 + 60))
      {
        goto LABEL_3;
      }
    }

    return 0;
  }

  if ((*(a2 + 65) & 1) == 0)
  {
    return 0;
  }

LABEL_3:
  if ((*(a1 + 66) ^ *(a2 + 66)))
  {
    return 0;
  }

  return *(a1 + 80) == *(a2 + 80) && *(a1 + 72) == *(a2 + 72);
}

BOOL sub_26C5CAEE4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 65))
  {
    if (*(a2 + 65))
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (*(a2 + 65))
  {
    return 0;
  }

  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))))) & 1) != 0 && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
  {
    v4 = *(a2 + 64);
    v5 = *(a1 + 48) != *(a2 + 48);
    if (*(a1 + 52) != *(a2 + 52))
    {
      v5 = 1;
    }

    if (*(a1 + 64))
    {
      if (v5 || (v4 & 1) == 0)
      {
        return 0;
      }
    }

    else if (((v4 | v5) & 1) != 0 || *(a1 + 60) != *(a2 + 60))
    {
      return 0;
    }

LABEL_3:
    if (((*(a1 + 66) ^ *(a2 + 66)) & 1) == 0)
    {
      return *(a1 + 72) == *(a2 + 72);
    }

    return 0;
  }

  return 0;
}

uint64_t sub_26C5CAFC8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26C5CB024(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_26C5CC548(0, &qword_28125E430);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x26D6A4580](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x26D6A4580](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_26C614FA8();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_26C614FA8();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_26C6150C8();
  }

  result = sub_26C6150C8();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

void *sub_26C5CB274@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_26C5CB284(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v123 = v5;
  v124 = v4;
  v125 = v2;
  v126 = v3;
  v6 = *(a1 + 184);
  v7 = *(a2 + 184);
  v122[1] = *(a1 + 40);
  v122[2] = *(a1 + 56);
  v122[3] = *(a1 + 72);
  v122[4] = *(a1 + 88);
  v122[0] = *(a1 + 24);
  v118[1] = *(a2 + 40);
  v118[2] = *(a2 + 56);
  v118[3] = *(a2 + 72);
  v118[4] = *(a2 + 88);
  v118[0] = *(a2 + 24);
  if (!sub_26C5CAEE4(v122, v118))
  {
    return 0;
  }

  v121[1] = *(a1 + 120);
  v121[2] = *(a1 + 136);
  v121[3] = *(a1 + 152);
  v121[4] = *(a1 + 168);
  v121[0] = *(a1 + 104);
  v117[1] = *(a2 + 120);
  v117[2] = *(a2 + 136);
  v117[3] = *(a2 + 152);
  v117[4] = *(a2 + 168);
  v117[0] = *(a2 + 104);
  v10 = sub_26C5CAEE4(v121, v117);
  result = 0;
  if (v10 && v6 == v7)
  {
    v12 = *(a1 + 192);
    v120[1] = *(a1 + 208);
    v13 = *(a1 + 240);
    v120[2] = *(a1 + 224);
    v120[3] = v13;
    v120[4] = *(a1 + 256);
    v120[0] = v12;
    v14 = *(a2 + 192);
    v116[1] = *(a2 + 208);
    v15 = *(a2 + 240);
    v116[2] = *(a2 + 224);
    v116[3] = v15;
    v116[4] = *(a2 + 256);
    v116[0] = v14;
    if (!sub_26C5CAEE4(v120, v116))
    {
      return 0;
    }

    v16 = *(a1 + 272);
    v119[1] = *(a1 + 288);
    v17 = *(a1 + 320);
    v119[2] = *(a1 + 304);
    v119[3] = v17;
    v119[4] = *(a1 + 336);
    v119[0] = v16;
    v18 = *(a2 + 272);
    v115[1] = *(a2 + 288);
    v19 = *(a2 + 320);
    v115[2] = *(a2 + 304);
    v115[3] = v19;
    v115[4] = *(a2 + 336);
    v115[0] = v18;
    if (!sub_26C5CAEE4(v119, v115))
    {
      return 0;
    }

    v20 = *(a1 + 400);
    v113[2] = *(a1 + 384);
    v113[3] = v20;
    v113[4] = *(a1 + 416);
    v21 = *(a1 + 368);
    v113[0] = *(a1 + 352);
    v113[1] = v21;
    v22 = *(a2 + 400);
    v111[2] = *(a2 + 384);
    v111[3] = v22;
    v111[4] = *(a2 + 416);
    v23 = *(a2 + 368);
    v111[0] = *(a2 + 352);
    v114 = *(a1 + 432);
    v112 = *(a2 + 432);
    v111[1] = v23;
    v24 = sub_26C5CADF8(v113, v111);
    result = 0;
    if (!v24 || (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*(a1 + 440), *(a2 + 440)), vceqq_f64(*(a1 + 456), *(a2 + 456))), xmmword_26C6195A0)) & 0xF) != 0)
    {
      return result;
    }

    if (*(a1 + 472) != *(a2 + 472))
    {
      return 0;
    }

    result = 0;
    if (*(a1 + 480) != *(a2 + 480) || *(a1 + 488) != *(a2 + 488))
    {
      return result;
    }

    v25 = *(a1 + 512);
    v110[0] = *(a1 + 496);
    v110[1] = v25;
    v26 = *(a1 + 544);
    v110[2] = *(a1 + 528);
    v110[3] = v26;
    v27 = *(a2 + 512);
    v105[0] = *(a2 + 496);
    v105[1] = v27;
    v28 = *(a2 + 544);
    v105[2] = *(a2 + 528);
    v105[3] = v28;
    if ((sub_26C5CABD4(v110, v105) & 1) == 0)
    {
      return 0;
    }

    v29 = *(a1 + 560);
    v109[1] = *(a1 + 576);
    v30 = *(a1 + 608);
    v109[2] = *(a1 + 592);
    v109[3] = v30;
    v109[4] = *(a1 + 624);
    v109[0] = v29;
    v31 = *(a2 + 560);
    v104[1] = *(a2 + 576);
    v32 = *(a2 + 608);
    v104[2] = *(a2 + 592);
    v104[3] = v32;
    v104[4] = *(a2 + 624);
    v104[0] = v31;
    if (!sub_26C5CAEE4(v109, v104))
    {
      return 0;
    }

    v33 = *(a1 + 640);
    v108[1] = *(a1 + 656);
    v34 = *(a1 + 688);
    v108[2] = *(a1 + 672);
    v108[3] = v34;
    v108[4] = *(a1 + 704);
    v108[0] = v33;
    v35 = *(a2 + 640);
    v103[1] = *(a2 + 656);
    v36 = *(a2 + 688);
    v103[2] = *(a2 + 672);
    v103[3] = v36;
    v103[4] = *(a2 + 704);
    v103[0] = v35;
    if (!sub_26C5CAEE4(v108, v103))
    {
      return 0;
    }

    v37 = *(a1 + 768);
    v106[2] = *(a1 + 752);
    v106[3] = v37;
    v106[4] = *(a1 + 784);
    v38 = *(a1 + 736);
    v106[0] = *(a1 + 720);
    v106[1] = v38;
    v39 = *(a2 + 768);
    v101[2] = *(a2 + 752);
    v101[3] = v39;
    v101[4] = *(a2 + 784);
    v40 = *(a2 + 736);
    v101[0] = *(a2 + 720);
    v107 = *(a1 + 800);
    v102 = *(a2 + 800);
    v101[1] = v40;
    if (!sub_26C5CADF8(v106, v101))
    {
      return 0;
    }

    if (*(a1 + 808) != *(a2 + 808))
    {
      return 0;
    }

    if (*(a1 + 816) != *(a2 + 816))
    {
      return 0;
    }

    if (*(a1 + 824) != *(a2 + 824))
    {
      return 0;
    }

    v41 = *(a1 + 992);
    v42 = *(a1 + 832);
    v100[1] = *(a1 + 848);
    v43 = *(a1 + 880);
    v100[2] = *(a1 + 864);
    v44 = *(a2 + 992);
    v100[3] = v43;
    v100[4] = *(a1 + 896);
    v100[0] = v42;
    v45 = *(a2 + 880);
    v98[2] = *(a2 + 864);
    v98[3] = v45;
    v98[4] = *(a2 + 896);
    v46 = *(a2 + 848);
    v98[0] = *(a2 + 832);
    v98[1] = v46;
    if (!sub_26C5CAEE4(v100, v98))
    {
      return 0;
    }

    v47 = *(a1 + 912);
    v99[1] = *(a1 + 928);
    v48 = *(a1 + 960);
    v99[2] = *(a1 + 944);
    v99[3] = v48;
    v99[4] = *(a1 + 976);
    v99[0] = v47;
    v49 = *(a2 + 960);
    v97[2] = *(a2 + 944);
    v97[3] = v49;
    v97[4] = *(a2 + 976);
    v50 = *(a2 + 928);
    v97[0] = *(a2 + 912);
    v97[1] = v50;
    v51 = sub_26C5CAEE4(v99, v97);
    result = 0;
    if (v51 && v41 == v44)
    {
      v52 = *(a1 + 1040);
      v53 = *(a1 + 1008);
      v89 = *(a1 + 1024);
      v90 = v52;
      v54 = *(a1 + 1072);
      v91 = *(a1 + 1056);
      v92 = v54;
      v55 = *(a1 + 1104);
      v56 = *(a1 + 1136);
      v85 = *(a1 + 1120);
      v86 = v56;
      v87 = *(a1 + 1152);
      v88 = v53;
      v83 = *(a1 + 1088);
      v84 = v55;
      v57 = *(a1 + 1184);
      v58 = *(a1 + 1216);
      v80 = *(a1 + 1200);
      v81 = v58;
      v82 = *(a1 + 1232);
      v78 = *(a1 + 1168);
      v79 = v57;
      v71 = *(a2 + 1040);
      v72 = *(a2 + 1056);
      v73 = *(a2 + 1072);
      v69 = *(a2 + 1008);
      v70 = *(a2 + 1024);
      v67 = *(a2 + 1136);
      v68 = *(a2 + 1152);
      v64 = *(a2 + 1088);
      v65 = *(a2 + 1104);
      v66 = *(a2 + 1120);
      v63 = *(a2 + 1232);
      v61 = *(a2 + 1200);
      v62 = *(a2 + 1216);
      v59 = *(a2 + 1168);
      v60 = *(a2 + 1184);
      sub_26C5CC548(0, &qword_2804A4C08);
      if (sub_26C614FA8())
      {
        v94[2] = v90;
        v94[3] = v91;
        v94[4] = v92;
        v94[0] = v88;
        v94[1] = v89;
        v75[2] = v71;
        v75[3] = v72;
        v75[4] = v73;
        v75[0] = v69;
        v75[1] = v70;
        if (sub_26C5CACE0(v94, v75))
        {
          v93[2] = v85;
          v93[3] = v86;
          v93[4] = v87;
          v93[0] = v83;
          v93[1] = v84;
          v74[2] = v66;
          v74[3] = v67;
          v74[4] = v68;
          v74[0] = v64;
          v74[1] = v65;
          if (sub_26C5CACE0(v93, v74))
          {
            v95[2] = v80;
            v95[3] = v81;
            v96 = v82;
            v95[0] = v78;
            v95[1] = v79;
            v76[2] = v61;
            v76[3] = v62;
            v77 = v63;
            v76[0] = v59;
            v76[1] = v60;
            if (sub_26C5ED1F0(v95, v76))
            {
              return 1;
            }
          }
        }
      }

      return 0;
    }
  }

  return result;
}

char *sub_26C5CB958(void *a1)
{
  v2 = [a1 locations];
  sub_26C5CC548(0, &unk_28125E420);
  v3 = sub_26C614EC8();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_13:

    v7 = MEMORY[0x277D84F90];
LABEL_14:
    v14 = [a1 colors];
    sub_26C5CC548(0, &qword_28125E430);
    sub_26C614EC8();

    v15 = [a1 gradientLayerSize];
    [v15 sizeValue];

    return v7;
  }

  v4 = sub_26C6150C8();
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_3:
  v16 = MEMORY[0x277D84F90];
  result = sub_26C6135B0(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = v16;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x26D6A4580](v6, v3);
      }

      else
      {
        v8 = *(v3 + 8 * v6 + 32);
      }

      v9 = v8;
      [v8 doubleValue];
      v11 = v10;

      v13 = *(v16 + 16);
      v12 = *(v16 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_26C6135B0((v12 > 1), v13 + 1, 1);
      }

      ++v6;
      *(v16 + 16) = v13 + 1;
      *(v16 + 8 * v13 + 32) = v11;
    }

    while (v4 != v6);

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

double sub_26C5CBB7C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = *(a1 + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_outroDelay);
  v94 = *(a1 + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_completionTimeout);
  v3 = *(a1 + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_sourceImageColorBrightnessIntroAnimationSettings);
  sub_26C5ED29C(v3, v127);

  v92 = *(a1 + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_sourceImageColorBrightnessAmount);
  v129 = 0;
  v4 = *(a1 + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_sourceImageColorBrightnessOutroAnimationSettings);
  sub_26C5ED29C(v4, v125);

  v130 = 0;
  v5 = *(a1 + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_sourceImageScaleIntroAnimationSettings);
  sub_26C5ED29C(v5, v123);

  v91 = *(a1 + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_sourceImageScaleFactor);
  v131 = 0;
  v6 = *(a1 + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_sourceImageScaleOutroAnimationSettings);
  sub_26C5ED29C(v6, v121);

  v132 = 0;
  v7 = *(a1 + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_depthDistanceFieldOffsetAnimationSettings);
  sub_26C5ED29C(v7, v119);

  v90 = *(a1 + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_depthDistanceFieldInitialOffset);
  v89 = *(a1 + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_depthDistanceFieldFinalOffset);
  v88 = *(a1 + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_depthDistanceFieldSharpness);
  v87 = *(a1 + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_depthDistanceFieldLineWidth);
  v86 = *(a1 + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_depthImageColorBrightnessAmount);
  v85 = *(a1 + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_depthImageColorContrastAmount);
  v84 = *(a1 + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_chromaticAberrationMagnitudeX);
  v83 = *(a1 + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_chromaticAberrationMagnitudeY);
  v82 = *(a1 + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_chromaticAberrationColorSaturateAmount);
  v133 = 0;
  v8 = *(a1 + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_circleMaskInitialRadialMask);
  v9 = sub_26C5CB958(v8);
  v80 = v10;
  v81 = v9;
  v78 = v12;
  v79 = v11;

  v13 = *(a1 + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_circleMaskFinalRadialMask);
  v14 = sub_26C5CB958(v13);
  v76 = v15;
  v77 = v14;
  v74 = v17;
  v75 = v16;

  v18 = *(a1 + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_circleMaskPositionAnimationSettings);
  sub_26C5ED29C(v18, v117);

  v73 = *(a1 + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_circleMaskPositionYNormalizedDistance);
  v134 = 0;
  v19 = *(a1 + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_circleMaskScaleAnimationSettings);
  sub_26C5ED29C(v19, v115);

  v72 = *(a1 + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_circleMaskScaleFactor);
  v135 = 0;
  v20 = *(a1 + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_circleMaskIntensityAnimationSettings);
  sub_26C5ED29C(v20, v113);

  v21 = *(a1 + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_circleMaskInitialIntensity);
  v22 = *(a1 + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_circleMaskFinalIntensity);
  v23 = *(a1 + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_fillLightColorBrightnessAmount);
  v24 = *(a1 + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_fillLightColorSaturateAmount);
  v136 = 0;
  v25 = *(a1 + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_inverseBlurRadiusIntroAnimationSettings);
  sub_26C5ED29C(v25, v111);

  v26 = *(a1 + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_inverseBlurRadius);
  v137 = 0;
  v27 = *(a1 + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_inverseBlurRadiusOutroAnimationSettings);
  sub_26C5ED29C(v27, v109);

  v138 = 0;
  v93 = a1;
  v28 = *(a1 + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_inverseBlurOutroDelay);
  v29 = [objc_allocWithZone(MEMORY[0x277CD9F18]) init];
  [v29 setDepthNormalization_];
  [v29 setReplicatesEdges_];
  v30 = 0;
  do
  {
    v31 = v30 + 1;
    v32 = v30 * 0.166666667;
    *&v104 = 0;
    *(&v104 + 1) = v32;
    *&v105 = 0;
    *(&v105 + 1) = v32;
    *&v106 = 0x3FE0000000000000;
    [v29 addVertex_];
    *&v104 = 0x3FC5555555555555;
    *(&v104 + 1) = v32;
    *&v105 = 0x3FC5555555555555;
    *(&v105 + 1) = v32;
    *&v106 = 0x3FE0000000000000;
    [v29 addVertex_];
    *&v104 = 0x3FD5555555555555;
    *(&v104 + 1) = v32;
    *&v105 = 0x3FD5555555555555;
    *(&v105 + 1) = v32;
    *&v106 = 0x3FE0000000000000;
    [v29 addVertex_];
    *&v104 = 0x3FE0000000000000;
    *(&v104 + 1) = v32;
    *&v105 = 0x3FE0000000000000;
    *(&v105 + 1) = v32;
    *&v106 = 0x3FE0000000000000;
    [v29 addVertex_];
    *&v104 = 0x3FE5555555555555;
    *(&v104 + 1) = v32;
    *&v105 = 0x3FE5555555555555;
    *(&v105 + 1) = v32;
    *&v106 = 0x3FE0000000000000;
    [v29 addVertex_];
    *&v104 = 0x3FEAAAAAAAAAAAAALL;
    *(&v104 + 1) = v32;
    *&v105 = 0x3FEAAAAAAAAAAAAALL;
    *(&v105 + 1) = v32;
    *&v106 = 0x3FE0000000000000;
    [v29 addVertex_];
    *&v104 = 0x3FF0000000000000;
    *(&v104 + 1) = v32;
    *&v105 = 0x3FF0000000000000;
    *(&v105 + 1) = v32;
    *&v106 = 0x3FE0000000000000;
    [v29 addVertex_];
    v30 = v31;
  }

  while (v31 != 7);
  v33 = -42;
  do
  {
    LODWORD(v104) = v33 + 42;
    DWORD1(v104) = v33 + 43;
    DWORD2(v104) = v33 + 50;
    HIDWORD(v104) = v33 + 49;
    v105 = 0uLL;
    [v29 addFace_];
    LODWORD(v104) = v33 + 43;
    DWORD1(v104) = v33 + 44;
    DWORD2(v104) = v33 + 51;
    HIDWORD(v104) = v33 + 50;
    v105 = 0uLL;
    [v29 addFace_];
    LODWORD(v104) = v33 + 44;
    DWORD1(v104) = v33 + 45;
    DWORD2(v104) = v33 + 52;
    HIDWORD(v104) = v33 + 51;
    v105 = 0uLL;
    [v29 addFace_];
    LODWORD(v104) = v33 + 45;
    DWORD1(v104) = v33 + 46;
    DWORD2(v104) = v33 + 53;
    HIDWORD(v104) = v33 + 52;
    v105 = 0uLL;
    [v29 addFace_];
    LODWORD(v104) = v33 + 46;
    DWORD2(v104) = v33 + 54;
    HIDWORD(v104) = v33 + 53;
    v105 = 0uLL;
    v97 = vadd_s32(vdup_n_s32(v33 + 42), 0x600000005);
    DWORD1(v104) = v97.i32[0];
    [v29 addFace_];
    *&v104 = v97;
    DWORD2(v104) = v33 + 55;
    HIDWORD(v104) = v33 + 54;
    v105 = 0uLL;
    [v29 addFace_];
    v33 += 7;
  }

  while (v33);
  v34 = *(v93 + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_meshTransformMeshIntroAnimationSettings);
  v35 = v29;
  v36 = v34;
  sub_26C5ED29C(v36, &v104);

  v37 = sub_26C60F668();
  v38 = *(v93 + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_meshTransformMeshOutroAnimationSettings);
  sub_26C5ED29C(v38, v102);

  v39 = *(v93 + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_meshTransformPositionAnimationSettings);
  sub_26C5ED29C(v39, v98);

  *a2 = v95;
  *(a2 + 8) = v94;
  *(a2 + 16) = 0;
  *(a2 + 40) = v127[1];
  *(a2 + 56) = v127[2];
  *(a2 + 72) = v127[3];
  *(a2 + 88) = v128;
  *(a2 + 24) = v127[0];
  *(a2 + 89) = 0;
  *(a2 + 96) = v92;
  *(a2 + 104) = v125[0];
  v40 = v125[1];
  v41 = v125[2];
  v42 = v125[3];
  *(a2 + 168) = v126;
  *(a2 + 152) = v42;
  *(a2 + 136) = v41;
  *(a2 + 120) = v40;
  *(a2 + 169) = 0;
  v43 = v123[2];
  v44 = v123[3];
  v45 = v123[0];
  *(a2 + 208) = v123[1];
  *(a2 + 224) = v43;
  *(a2 + 240) = v44;
  *(a2 + 256) = v124;
  *(a2 + 176) = xmmword_26C618730;
  *(a2 + 192) = v45;
  *(a2 + 257) = 0;
  *(a2 + 264) = v91;
  v46 = v121[0];
  *(a2 + 336) = v122;
  v47 = v121[3];
  *(a2 + 304) = v121[2];
  *(a2 + 320) = v47;
  v48 = v121[1];
  *(a2 + 272) = v46;
  *(a2 + 288) = v48;
  *(a2 + 337) = 0;
  *(a2 + 344) = 0x3FF0000000000000;
  v49 = v119[0];
  v50 = v119[1];
  v51 = v119[2];
  v52 = v119[3];
  *(a2 + 416) = v120;
  *(a2 + 384) = v51;
  *(a2 + 400) = v52;
  *(a2 + 352) = v49;
  *(a2 + 368) = v50;
  *(a2 + 417) = 0;
  *(a2 + 424) = v90;
  *(a2 + 432) = v89;
  *(a2 + 440) = v88;
  *(a2 + 448) = v87;
  *(a2 + 456) = v86;
  *(a2 + 464) = v85;
  *(a2 + 472) = v84;
  *(a2 + 480) = v83;
  *(a2 + 488) = v82;
  *(a2 + 496) = v81;
  *(a2 + 504) = v80;
  *(a2 + 512) = v79;
  *(a2 + 520) = v78;
  *(a2 + 528) = v77;
  *(a2 + 536) = v76;
  *(a2 + 544) = v75;
  *(a2 + 552) = v74;
  v53 = v117[3];
  *(a2 + 592) = v117[2];
  *(a2 + 608) = v53;
  *(a2 + 624) = v118;
  v54 = v117[1];
  *(a2 + 560) = v117[0];
  *(a2 + 576) = v54;
  *(a2 + 625) = 0;
  *(a2 + 632) = v73;
  v55 = v115[1];
  v56 = v115[3];
  *(a2 + 672) = v115[2];
  *(a2 + 688) = v56;
  *(a2 + 704) = v116;
  *(a2 + 640) = v115[0];
  *(a2 + 656) = v55;
  *(a2 + 705) = 0;
  *(a2 + 712) = v72;
  v57 = v113[0];
  *(a2 + 784) = v114;
  v58 = v113[3];
  v59 = v113[1];
  *(a2 + 752) = v113[2];
  *(a2 + 768) = v58;
  *(a2 + 720) = v57;
  *(a2 + 736) = v59;
  *(a2 + 785) = 0;
  *(a2 + 792) = v21;
  *(a2 + 800) = v22;
  *(a2 + 808) = v23;
  *(a2 + 816) = v24;
  *(a2 + 824) = 0;
  *(a2 + 896) = v112;
  v60 = v111[3];
  *(a2 + 864) = v111[2];
  *(a2 + 880) = v60;
  v61 = v111[1];
  *(a2 + 832) = v111[0];
  *(a2 + 848) = v61;
  *(a2 + 897) = 0;
  *(a2 + 904) = v26;
  *(a2 + 976) = v110;
  v62 = v109[1];
  v63 = v109[2];
  *(a2 + 912) = v109[0];
  *(a2 + 928) = v62;
  v64 = v109[3];
  *(a2 + 944) = v63;
  *(a2 + 960) = v64;
  *(a2 + 977) = 0;
  *(a2 + 984) = 0;
  *(a2 + 992) = v28;
  *(a2 + 1000) = v35;
  *(a2 + 1072) = v108;
  v65 = v106;
  *(a2 + 1056) = v107;
  *(a2 + 1040) = v65;
  v66 = v105;
  *(a2 + 1008) = v104;
  *(a2 + 1024) = v66;
  *(a2 + 1073) = 0;
  *(a2 + 1074) = 0;
  *(a2 + 1080) = v37;
  v67 = v102[1];
  *(a2 + 1088) = v102[0];
  *(a2 + 1152) = v103;
  v68 = v102[2];
  *(a2 + 1136) = v102[3];
  *(a2 + 1120) = v68;
  *(a2 + 1104) = v67;
  *(a2 + 1153) = 0;
  *(a2 + 1160) = v35;
  v69 = v98[0];
  *(a2 + 1184) = v98[1];
  result = *&v99;
  v71 = v100;
  *(a2 + 1200) = v99;
  *(a2 + 1216) = v71;
  *(a2 + 1232) = v101;
  *(a2 + 1168) = v69;
  return result;
}

uint64_t sub_26C5CC548(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26C5CC5A8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26C5CC5C8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_26C5CC61C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_26C5CC6A0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26C5CC6C0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 128) = v3;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy233_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 217) = *(a2 + 217);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_26C5CC78C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 233))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26C5CC7D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 232) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 233) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 233) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_26C5CC894(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 176))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 74);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_26C5CC8E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 176) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 176) = 0;
    }

    if (a2)
    {
      *(result + 74) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_26C5CC980(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 312))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26C5CC9C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 312) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 312) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_26C5CCAB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 120))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 66);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_26C5CCB0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *(result + 66) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_26C5CCB84(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 336))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 74);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_26C5CCBD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 328) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 336) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 336) = 0;
    }

    if (a2)
    {
      *(result + 74) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_26C5CCCAC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26C5CCCF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_26C5CCD70(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 104))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 66);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_26C5CCDC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 66) = a2 + 1;
    }
  }

  return result;
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_26C5CCE44(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26C5CCE64(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 12) = v3;
  return result;
}

void sub_26C5CCEA4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

id SUIAnimationKitPrototypeSettings.shockwaveSettings.getter()
{
  v1 = OBJC_IVAR___SUIAnimationKitPrototypeSettings_shockwaveSettings;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SUIAnimationKitPrototypeSettings.shockwaveSettings.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SUIAnimationKitPrototypeSettings_shockwaveSettings;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id SUIAnimationKitPrototypeSettings.stingSettings.getter()
{
  v1 = OBJC_IVAR___SUIAnimationKitPrototypeSettings_stingSettings;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SUIAnimationKitPrototypeSettings.stingSettings.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SUIAnimationKitPrototypeSettings_stingSettings;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

Swift::Void __swiftcall SUIAnimationKitPrototypeSettings.setDefaultValues()()
{
  v3.super_class = SUIAnimationKitPrototypeSettings;
  objc_msgSendSuper2(&v3, sel_setDefaultValues);
  v1 = [v0 shockwaveSettings];
  [v1 setDefaultValues];

  v2 = [v0 stingSettings];
  [v2 setDefaultValues];

  [*&v0[OBJC_IVAR___SUIAnimationKitPrototypeSettings_scanwaveSettings] setDefaultValues];
}

void _sSo32SUIAnimationKitPrototypeSettingsC017SystemUIAnimationB0E24settingsControllerModuleSo8PTModuleCSgyFZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A55A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26C619B60;
  v1 = sub_26C614E38();
  v2 = sub_26C614E38();
  v3 = objc_opt_self();
  v4 = [v3 rowWithTitle:v1 childSettingsKeyPath:v2];

  if (!v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = sub_26C5CC548(0, &qword_2804A4C68);
  *(v0 + 56) = v5;
  *(v0 + 32) = v4;
  v6 = sub_26C614E38();
  v7 = sub_26C614E38();
  v8 = [v3 rowWithTitle:v6 valueKeyPath:v7];

  if (!v8)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *(v0 + 88) = v5;
  *(v0 + 64) = v8;
  v9 = sub_26C614E38();
  v10 = sub_26C614E38();
  v11 = [v3 rowWithTitle:v9 childSettingsKeyPath:v10];

  if (!v11)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v23 = v5;
  *&v22 = v11;
  v13 = *(v0 + 16);
  v12 = *(v0 + 24);
  if (v13 >= v12 >> 1)
  {
    v0 = sub_26C609104((v12 > 1), v13 + 1, 1, v0);
  }

  *(v0 + 16) = v13 + 1;
  sub_26C5CD7F8(&v22, (v0 + 32 * v13 + 32));
  v14 = objc_opt_self();
  v15 = sub_26C614EB8();
  v16 = sub_26C614E38();
  v17 = [v14 sectionWithRows:v15 title:{v16, v22}];

  if (v17)
  {

    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_26C619B70;
    *(v18 + 56) = sub_26C5CC548(0, &qword_2804A4C70);
    *(v18 + 32) = v17;
    v19 = v17;
    v20 = sub_26C614E38();
    v21 = sub_26C614EB8();

    [v14 moduleWithTitle:v20 contents:v21];

    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

_OWORD *sub_26C5CD7F8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id static SUIAnimationKitPrototypeSettingsDomain.rootSettings()()
{
  v1.receiver = swift_getObjCClassFromMetadata();
  v1.super_class = &OBJC_METACLASS___SUIAnimationKitPrototypeSettingsDomain;
  result = objc_msgSendSuper2(&v1, sel_rootSettings);
  if (result)
  {
    objc_opt_self();
    return swift_dynamicCastObjCClassUnconditional();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t type metadata accessor for SUIAnimationKitPrototypeSettingsDomain()
{
  result = qword_2804A4C78;
  if (!qword_2804A4C78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2804A4C78);
  }

  return result;
}

uint64_t SUIAFluidBehaviorSettings.behaviorType.getter()
{
  v1 = OBJC_IVAR___SUIAFluidBehaviorSettings_behaviorType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAFluidBehaviorSettings.behaviorType.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SUIAFluidBehaviorSettings_behaviorType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SUIAFluidBehaviorSettings.name.getter()
{
  v1 = (v0 + OBJC_IVAR___SUIAFluidBehaviorSettings_name);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t SUIAFluidBehaviorSettings.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___SUIAFluidBehaviorSettings_name);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void sub_26C5CDD40(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 name];
  if (v3)
  {
    v4 = v3;
    v5 = sub_26C614E48();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_26C5CDDA8(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = sub_26C614E38();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setName_];
}

double SUIAFluidBehaviorSettings.dampingRatio.getter()
{
  v1 = OBJC_IVAR___SUIAFluidBehaviorSettings_dampingRatio;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAFluidBehaviorSettings.dampingRatio.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAFluidBehaviorSettings_dampingRatio;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAFluidBehaviorSettings.response.getter()
{
  v1 = OBJC_IVAR___SUIAFluidBehaviorSettings_response;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAFluidBehaviorSettings.response.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAFluidBehaviorSettings_response;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAFluidBehaviorSettings.retargetImpulse.getter()
{
  v1 = OBJC_IVAR___SUIAFluidBehaviorSettings_retargetImpulse;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAFluidBehaviorSettings.retargetImpulse.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAFluidBehaviorSettings_retargetImpulse;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAFluidBehaviorSettings.trackingDampingRatio.getter()
{
  v1 = OBJC_IVAR___SUIAFluidBehaviorSettings_trackingDampingRatio;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAFluidBehaviorSettings.trackingDampingRatio.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAFluidBehaviorSettings_trackingDampingRatio;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAFluidBehaviorSettings.trackingResponse.getter()
{
  v1 = OBJC_IVAR___SUIAFluidBehaviorSettings_trackingResponse;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAFluidBehaviorSettings.trackingResponse.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAFluidBehaviorSettings_trackingResponse;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAFluidBehaviorSettings.trackingRetargetImpulse.getter()
{
  v1 = OBJC_IVAR___SUIAFluidBehaviorSettings_trackingRetargetImpulse;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAFluidBehaviorSettings.trackingRetargetImpulse.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAFluidBehaviorSettings_trackingRetargetImpulse;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SUIAFluidBehaviorSettings.smoothingAndProjectionEnabled.getter()
{
  v1 = OBJC_IVAR___SUIAFluidBehaviorSettings_smoothingAndProjectionEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAFluidBehaviorSettings.smoothingAndProjectionEnabled.setter(char a1)
{
  v3 = OBJC_IVAR___SUIAFluidBehaviorSettings_smoothingAndProjectionEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAFluidBehaviorSettings.dampingRatioSmoothing.getter()
{
  v1 = OBJC_IVAR___SUIAFluidBehaviorSettings_dampingRatioSmoothing;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAFluidBehaviorSettings.dampingRatioSmoothing.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAFluidBehaviorSettings_dampingRatioSmoothing;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAFluidBehaviorSettings.responseSmoothing.getter()
{
  v1 = OBJC_IVAR___SUIAFluidBehaviorSettings_responseSmoothing;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAFluidBehaviorSettings.responseSmoothing.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAFluidBehaviorSettings_responseSmoothing;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAFluidBehaviorSettings.trackingDampingRatioSmoothing.getter()
{
  v1 = OBJC_IVAR___SUIAFluidBehaviorSettings_trackingDampingRatioSmoothing;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAFluidBehaviorSettings.trackingDampingRatioSmoothing.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAFluidBehaviorSettings_trackingDampingRatioSmoothing;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAFluidBehaviorSettings.trackingResponseSmoothing.getter()
{
  v1 = OBJC_IVAR___SUIAFluidBehaviorSettings_trackingResponseSmoothing;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAFluidBehaviorSettings.trackingResponseSmoothing.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAFluidBehaviorSettings_trackingResponseSmoothing;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAFluidBehaviorSettings.inertialTargetSmoothingRatio.getter()
{
  v1 = OBJC_IVAR___SUIAFluidBehaviorSettings_inertialTargetSmoothingRatio;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAFluidBehaviorSettings.inertialTargetSmoothingRatio.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAFluidBehaviorSettings_inertialTargetSmoothingRatio;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAFluidBehaviorSettings.inertialProjectionDeceleration.getter()
{
  v1 = OBJC_IVAR___SUIAFluidBehaviorSettings_inertialProjectionDeceleration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAFluidBehaviorSettings.inertialProjectionDeceleration.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAFluidBehaviorSettings_inertialProjectionDeceleration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *SUIAFluidBehaviorSettings.preferredFrameRateRange.getter()
{
  v1 = OBJC_IVAR___SUIAFluidBehaviorSettings_preferredFrameRateRange;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void SUIAFluidBehaviorSettings.preferredFrameRateRange.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SUIAFluidBehaviorSettings_preferredFrameRateRange;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

Swift::Void __swiftcall SUIAFluidBehaviorSettings.setDefaultValues()()
{
  v1.super_class = SUIAFluidBehaviorSettings;
  objc_msgSendSuper2(&v1, sel_setDefaultValues);
  [v0 setBehaviorType_];
  [v0 setDampingRatio_];
  [v0 setResponse_];
  [v0 setTrackingDampingRatio_];
  [v0 setTrackingResponse_];
  [v0 setRetargetImpulse_];
  [v0 setTrackingRetargetImpulse_];
  [v0 setDampingRatioSmoothing_];
  [v0 setResponseSmoothing_];
  [v0 setTrackingDampingRatioSmoothing_];
  [v0 setTrackingResponseSmoothing_];
  [v0 setSmoothingAndProjectionEnabled_];
}

Swift::Void __swiftcall SUIAFluidBehaviorSettings.setDefaultCriticallyDampedValues()()
{
  [v0 setDefaultValues];
  [v0 setDampingRatio_];

  [v0 setResponse_];
}

double SUIAFluidBehaviorSettings.parametersForTransition(from:to:)@<D0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 == 1)
  {
    v6 = [v3 behaviorType];
    v7 = &selRef_dampingRatio;
    if (v6)
    {
      v7 = &selRef_trackingDampingRatio;
    }

    [v3 *v7];
    v38 = v8;
    v9 = [v3 behaviorType];
    v10 = &selRef_response;
    if (v9)
    {
      v10 = &selRef_trackingResponse;
    }

    [v3 *v10];
    v12 = v11;
    v13 = [v3 behaviorType];
    v14 = &selRef_retargetImpulse;
    if (v13)
    {
      v14 = &selRef_trackingRetargetImpulse;
    }

    [v3 *v14];
    v16 = v15;
    v17 = 0.0;
    if ([v3 smoothingAndProjectionEnabled])
    {
      [v3 trackingDampingRatioSmoothing];
      v19 = v18;
      [v3 trackingResponseSmoothing];
      v21 = v20;
      if (a1)
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
      }

      else
      {
        [v3 dampingRatio];
        v24 = v36;
        [v3 response];
        v23 = v37;
        v22 = 1;
      }
    }

    else
    {
      v22 = 0;
      v19 = 0;
      v23 = 0;
      v24 = 0;
      v21 = 0;
    }

    goto LABEL_18;
  }

  [v3 dampingRatio];
  v38 = v25;
  [v3 response];
  v12 = v26;
  [v3 retargetImpulse];
  v16 = v27;
  v23 = 0;
  if (![v3 smoothingAndProjectionEnabled])
  {
    v22 = 0;
    v19 = 0;
    v24 = 0;
    v21 = 0;
LABEL_17:
    v17 = 0.0;
LABEL_18:
    v31 = 0;
    goto LABEL_19;
  }

  [v3 dampingRatioSmoothing];
  v19 = v28;
  [v3 responseSmoothing];
  v21 = v29;
  if (a1 != 1)
  {
    v22 = 0;
    v24 = 0;
    goto LABEL_17;
  }

  [v3 inertialProjectionDeceleration];
  v31 = v30;
  [v3 inertialTargetSmoothingRatio];
  v33 = v32;
  [v3 trackingResponse];
  v22 = 0;
  v17 = v33 * v34;
  v24 = 0;
LABEL_19:
  result = v38;
  *a3 = v38;
  *(a3 + 8) = v12;
  *(a3 + 16) = v22;
  *(a3 + 17) = v22;
  *(a3 + 18) = 0;
  *(a3 + 22) = 0;
  *(a3 + 24) = v24;
  *(a3 + 32) = v23;
  *(a3 + 40) = v19;
  *(a3 + 48) = v21;
  *(a3 + 56) = v17;
  *(a3 + 64) = v31;
  *(a3 + 72) = v16;
  return result;
}

id SUIAFluidBehaviorSettings.bsAnimationSettings()()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = 0.0;
  v7[0] = 0.0;
  [v0 dampingRatio];
  v2 = v1;
  [v0 response];
  SUIAConvertDampingRatioAndResponseToTensionAndFriction(v7, &v6, v2, v3);
  v4 = [objc_opt_self() settingsWithMass:1.0 stiffness:v7[0] damping:v6];

  return v4;
}

Swift::Void __swiftcall SUIAFluidBehaviorSettings.setFrameRateRange(_:highFrameRateReason:)(__C::CAFrameRateRange _, Swift::UInt32 highFrameRateReason)
{
  v3 = *&highFrameRateReason;
  preferred = _.__preferred;
  maximum = _.maximum;
  minimum = _.minimum;
  v7 = [v2 preferredFrameRateRange];
  if (v7)
  {
    v11 = v7;
    *&v8 = minimum;
    *&v9 = maximum;
    *&v10 = preferred;
    [v7 setFrameRateRange:v3 highFrameRateReason:{v8, v9, v10}];
  }

  else
  {
    __break(1u);
  }
}

__C::CAFrameRateRange __swiftcall SUIAFluidBehaviorSettings.frameRateRange()()
{
  v1 = [v0 preferredFrameRateRange];
  if (v1)
  {
    v5 = v1;
    [v1 frameRateRange];
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v2 = v7;
    v3 = v9;
    v4 = v11;
  }

  else
  {
    __break(1u);
  }

  result.__preferred = v4;
  result.maximum = v3;
  result.minimum = v2;
  return result;
}

Swift::UInt32 __swiftcall SUIAFluidBehaviorSettings.highFrameRateReason()()
{
  v1 = [v0 preferredFrameRateRange];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 highFrameRateReason];

    LODWORD(v1) = v3;
  }

  else
  {
    __break(1u);
  }

  return v1;
}

id static SUIAFluidBehaviorSettings.settingsControllerModule()()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = sub_26C614E38();
  v2 = [ObjCClassFromMetadata _moduleWithSectionTitle_];

  return v2;
}

uint64_t SUIAFluidBehaviorSettings.description.getter()
{
  v1 = v0;
  v2 = 7104878;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A4D00);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26C619BB0;
  v41.receiver = v0;
  v41.super_class = SUIAFluidBehaviorSettings;
  v4 = objc_msgSendSuper2(&v41, sel_description);
  v5 = sub_26C614E48();
  v7 = v6;

  *(v3 + 32) = v5;
  *(v3 + 40) = v7;
  v40[1] = 0xE000000000000000;
  sub_26C615038();
  MEMORY[0x26D6A43B0](0x726F697661686562, 0xEE00203A65707954);
  [v1 behaviorType];
  type metadata accessor for FluidBehaviorType(0);
  sub_26C6150A8();
  *(v3 + 48) = 0;
  *(v3 + 56) = v40[1];
  v40[0] = 0x203A656D616ELL;
  v40[1] = 0xE600000000000000;
  v8 = [v1 name];
  if (v8)
  {
    v9 = v8;
    v10 = sub_26C614E48();
    v12 = v11;
  }

  else
  {
    v12 = 0xE300000000000000;
    v10 = 7104878;
  }

  MEMORY[0x26D6A43B0](v10, v12);

  *(v3 + 64) = v40[0];
  *(v3 + 72) = v40[1];
  sub_26C615038();

  strcpy(v40, "dampingRatio: ");
  HIBYTE(v40[1]) = -18;
  [v1 dampingRatio];
  v13 = sub_26C614F18();
  MEMORY[0x26D6A43B0](v13);

  v14 = v40[1];
  *(v3 + 80) = v40[0];
  *(v3 + 88) = v14;
  strcpy(v40, "response: ");
  BYTE3(v40[1]) = 0;
  HIDWORD(v40[1]) = -369098752;
  [v1 response];
  v15 = sub_26C614F18();
  MEMORY[0x26D6A43B0](v15);

  v16 = v40[1];
  *(v3 + 96) = v40[0];
  *(v3 + 104) = v16;
  sub_26C615038();

  [v1 retargetImpulse];
  v17 = sub_26C614F18();
  MEMORY[0x26D6A43B0](v17);

  *(v3 + 112) = 0xD000000000000011;
  *(v3 + 120) = 0x800000026C61C450;
  sub_26C615038();

  [v1 trackingDampingRatio];
  v18 = sub_26C614F18();
  MEMORY[0x26D6A43B0](v18);

  *(v3 + 128) = 0xD000000000000016;
  *(v3 + 136) = 0x800000026C61C470;
  sub_26C615038();

  [v1 trackingResponse];
  v19 = sub_26C614F18();
  MEMORY[0x26D6A43B0](v19);

  *(v3 + 144) = 0xD000000000000012;
  *(v3 + 152) = 0x800000026C61C490;
  sub_26C615038();

  [v1 trackingRetargetImpulse];
  v20 = sub_26C614F18();
  MEMORY[0x26D6A43B0](v20);

  *(v3 + 160) = 0xD000000000000019;
  *(v3 + 168) = 0x800000026C61C4B0;
  sub_26C615038();

  v40[0] = 0xD00000000000001FLL;
  v40[1] = 0x800000026C61C4D0;
  v21 = [v1 smoothingAndProjectionEnabled];
  v22 = v21 == 0;
  if (v21)
  {
    v23 = 1702195828;
  }

  else
  {
    v23 = 0x65736C6166;
  }

  if (v22)
  {
    v24 = 0xE500000000000000;
  }

  else
  {
    v24 = 0xE400000000000000;
  }

  MEMORY[0x26D6A43B0](v23, v24);

  v25 = v40[1];
  *(v3 + 176) = v40[0];
  *(v3 + 184) = v25;
  sub_26C615038();

  [v1 dampingRatioSmoothing];
  v26 = sub_26C614F18();
  MEMORY[0x26D6A43B0](v26);

  *(v3 + 192) = 0xD000000000000017;
  *(v3 + 200) = 0x800000026C61C4F0;
  sub_26C615038();

  [v1 responseSmoothing];
  v27 = sub_26C614F18();
  MEMORY[0x26D6A43B0](v27);

  *(v3 + 208) = 0xD000000000000013;
  *(v3 + 216) = 0x800000026C61C510;
  sub_26C615038();

  [v1 trackingDampingRatioSmoothing];
  v28 = sub_26C614F18();
  MEMORY[0x26D6A43B0](v28);

  *(v3 + 224) = 0xD00000000000001FLL;
  *(v3 + 232) = 0x800000026C61C530;
  sub_26C615038();

  [v1 trackingResponseSmoothing];
  v29 = sub_26C614F18();
  MEMORY[0x26D6A43B0](v29);

  *(v3 + 240) = 0xD00000000000001BLL;
  *(v3 + 248) = 0x800000026C61C550;
  sub_26C615038();

  [v1 inertialTargetSmoothingRatio];
  v30 = sub_26C614F18();
  MEMORY[0x26D6A43B0](v30);

  *(v3 + 256) = 0xD00000000000001ELL;
  *(v3 + 264) = 0x800000026C61C570;
  sub_26C615038();

  [v1 inertialProjectionDeceleration];
  v31 = sub_26C614F18();
  MEMORY[0x26D6A43B0](v31);

  *(v3 + 272) = 0xD000000000000020;
  *(v3 + 280) = 0x800000026C61C590;
  sub_26C615038();

  v40[0] = 0xD000000000000019;
  v40[1] = 0x800000026C61C5C0;
  v32 = [v1 preferredFrameRateRange];
  if (v32)
  {
    v33 = v32;
    v34 = [v32 description];

    v2 = sub_26C614E48();
    v36 = v35;
  }

  else
  {
    v36 = 0xE300000000000000;
  }

  MEMORY[0x26D6A43B0](v2, v36);

  v37 = v40[1];
  *(v3 + 288) = v40[0];
  *(v3 + 296) = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A4D08);
  sub_26C5D3084();
  v38 = sub_26C614E18();

  return v38;
}

uint64_t SUIAFluidBehaviorSettings.copy()@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = [objc_allocWithZone(SUIAFluidBehaviorSettings) init];
  [v4 setBehaviorType_];
  v5 = [v2 name];
  [v4 setName_];

  [v2 dampingRatio];
  [v4 setDampingRatio_];
  [v2 response];
  [v4 setResponse_];
  [v2 retargetImpulse];
  [v4 setRetargetImpulse_];
  [v2 trackingDampingRatio];
  [v4 setTrackingDampingRatio_];
  [v2 trackingResponse];
  [v4 setTrackingResponse_];
  [v2 trackingRetargetImpulse];
  [v4 setTrackingRetargetImpulse_];
  [v4 setSmoothingAndProjectionEnabled_];
  [v2 dampingRatioSmoothing];
  [v4 setDampingRatioSmoothing_];
  [v2 responseSmoothing];
  [v4 setResponseSmoothing_];
  [v2 trackingDampingRatioSmoothing];
  [v4 setTrackingDampingRatioSmoothing_];
  [v2 trackingResponseSmoothing];
  [v4 setTrackingResponseSmoothing_];
  [v2 inertialTargetSmoothingRatio];
  [v4 setInertialTargetSmoothingRatio_];
  [v2 inertialProjectionDeceleration];
  [v4 setInertialProjectionDeceleration_];
  v6 = [v2 preferredFrameRateRange];
  [v4 setPreferredFrameRateRange_];

  result = type metadata accessor for SUIAFluidBehaviorSettings(v7);
  a1[3] = result;
  *a1 = v4;
  return result;
}

BOOL SUIAFluidBehaviorSettings.isEqual(_:)(uint64_t a1)
{
  v2 = sub_26C5D3144(a1, v80);
  if (!v81)
  {
    sub_26C5D31B4(v80);
    return 0;
  }

  type metadata accessor for SUIAFluidBehaviorSettings(v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = [v1 behaviorType];
  if (v3 != [v79 behaviorType])
  {
    goto LABEL_57;
  }

  v4 = [v1 name];
  if (v4)
  {
    v5 = v4;
    v6 = sub_26C614E48();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = [v79 name];
  if (!v9)
  {
    if (!v8)
    {
      goto LABEL_19;
    }

LABEL_15:

    return 0;
  }

  v10 = v9;
  v11 = sub_26C614E48();
  v13 = v12;

  if (v8)
  {
    if (v13)
    {
      if (v6 == v11 && v8 == v13)
      {
      }

      else
      {
        v14 = sub_26C615128();

        if ((v14 & 1) == 0)
        {
          goto LABEL_57;
        }
      }

      goto LABEL_19;
    }

    goto LABEL_15;
  }

  if (v13)
  {

    goto LABEL_57;
  }

LABEL_19:
  [v1 dampingRatio];
  v16 = v15;
  [v79 dampingRatio];
  if (v16 != v17)
  {
    goto LABEL_57;
  }

  [v1 response];
  v19 = v18;
  [v79 response];
  if (v19 != v20)
  {
    goto LABEL_57;
  }

  [v1 retargetImpulse];
  v22 = v21;
  [v79 retargetImpulse];
  if (v22 != v23)
  {
    goto LABEL_57;
  }

  [v1 trackingDampingRatio];
  v25 = v24;
  [v79 trackingDampingRatio];
  if (v25 != v26)
  {
    goto LABEL_57;
  }

  [v1 trackingResponse];
  v28 = v27;
  [v79 trackingResponse];
  if (v28 != v29)
  {
    goto LABEL_57;
  }

  [v1 trackingRetargetImpulse];
  v31 = v30;
  [v79 trackingRetargetImpulse];
  if (v31 != v32)
  {
    goto LABEL_57;
  }

  v33 = [v1 smoothingAndProjectionEnabled];
  if (v33 != [v79 smoothingAndProjectionEnabled])
  {
    goto LABEL_57;
  }

  [v1 dampingRatioSmoothing];
  v35 = v34;
  [v79 dampingRatioSmoothing];
  if (v35 != v36)
  {
    goto LABEL_57;
  }

  [v1 responseSmoothing];
  v38 = v37;
  [v79 responseSmoothing];
  if (v38 != v39)
  {
    goto LABEL_57;
  }

  [v1 trackingDampingRatioSmoothing];
  v41 = v40;
  [v79 trackingDampingRatioSmoothing];
  if (v41 != v42)
  {
    goto LABEL_57;
  }

  [v1 trackingResponseSmoothing];
  v44 = v43;
  [v79 trackingResponseSmoothing];
  if (v44 != v45)
  {
    goto LABEL_57;
  }

  [v1 inertialTargetSmoothingRatio];
  v47 = v46;
  [v79 inertialTargetSmoothingRatio];
  if (v47 != v48)
  {
    goto LABEL_57;
  }

  [v1 inertialProjectionDeceleration];
  v50 = v49;
  [v79 inertialProjectionDeceleration];
  if (v50 != v51)
  {
    goto LABEL_57;
  }

  v52 = [v1 preferredFrameRateRange];
  v53 = v52;
  if (v52)
  {
    v54 = [v52 highFrameRateReason];
  }

  else
  {
    v54 = 0;
  }

  v55 = [v79 preferredFrameRateRange];
  if (v55)
  {
    v56 = v55;
    v57 = [v55 highFrameRateReason];

    if (!v53 || v54 != v57)
    {
      goto LABEL_57;
    }
  }

  else if (v53)
  {
    goto LABEL_57;
  }

  v58 = [v1 preferredFrameRateRange];
  v59 = v58;
  if (v58)
  {
    v60 = [v58 minimum];
  }

  else
  {
    v60 = 0;
  }

  v61 = [v79 preferredFrameRateRange];
  if (v61)
  {
    v62 = v61;
    v63 = [v61 minimum];

    if (!v59 || v60 != v63)
    {
      goto LABEL_57;
    }
  }

  else if (v59)
  {
    goto LABEL_57;
  }

  v64 = [v1 preferredFrameRateRange];
  v65 = v64;
  if (v64)
  {
    v66 = [v64 maximum];
  }

  else
  {
    v66 = 0;
  }

  v67 = [v79 preferredFrameRateRange];
  if (!v67)
  {
    if (!v65)
    {
      goto LABEL_54;
    }

LABEL_57:

    return 0;
  }

  v68 = v67;
  v69 = [v67 maximum];

  if (!v65 || v66 != v69)
  {
    goto LABEL_57;
  }

LABEL_54:
  v70 = [v1 preferredFrameRateRange];
  v71 = v70;
  if (v70)
  {
    v72 = [v70 preferred];
  }

  else
  {
    v72 = 0;
  }

  v74 = [v79 preferredFrameRateRange];
  v75 = v74;
  v76 = v74 == 0;
  if (v74)
  {
    v77 = [v74 preferred];
  }

  else
  {
    v77 = 0;
  }

  if (!v71)
  {
    return v76;
  }

  return v75 && v72 == v77;
}

void SUIAFluidBehaviorSettings.hash.getter()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CF0C40]) init];
  v2 = [v1 appendInteger_];

  if (!v2)
  {
    __break(1u);
    goto LABEL_22;
  }

  v3 = [v0 name];
  v4 = [v2 appendString_];

  if (!v4)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  [v0 dampingRatio];
  v5 = [v4 appendCGFloat_];

  if (!v5)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v0 response];
  v6 = [v5 appendCGFloat_];

  if (!v6)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  [v0 retargetImpulse];
  v7 = [v6 appendCGFloat_];

  if (!v7)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  [v0 trackingDampingRatio];
  v8 = [v7 appendCGFloat_];

  if (!v8)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [v0 trackingResponse];
  v9 = [v8 appendCGFloat_];

  if (!v9)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [v0 trackingRetargetImpulse];
  v10 = [v9 appendCGFloat_];

  if (!v10)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v11 = [v10 appendBool_];

  if (!v11)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  [v0 dampingRatioSmoothing];
  v12 = [v11 appendCGFloat_];

  if (!v12)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  [v0 responseSmoothing];
  v13 = [v12 appendCGFloat_];

  if (!v13)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  [v0 trackingDampingRatioSmoothing];
  v14 = [v13 appendCGFloat_];

  if (!v14)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  [v0 trackingResponseSmoothing];
  v15 = [v14 appendCGFloat_];

  if (!v15)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  [v0 inertialTargetSmoothingRatio];
  v16 = [v15 appendCGFloat_];

  if (!v16)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  [v0 inertialProjectionDeceleration];
  v17 = [v16 appendCGFloat_];

  if (!v17)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v18 = [v0 preferredFrameRateRange];
  v19 = [v17 appendObject_];

  if (!v19)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v20 = [v0 preferredFrameRateRange];
  v21 = [v19 appendObject_];

  if (!v21)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v22 = [v0 preferredFrameRateRange];
  v23 = [v21 appendObject_];

  if (!v23)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v24 = [v0 preferredFrameRateRange];
  v25 = [v23 appendObject_];

  if (v25)
  {
    [v25 hash];

    return;
  }

LABEL_39:
  __break(1u);
}

void _sSo25SUIAFluidBehaviorSettingsC20SystemUIAnimationKitE7_module16withSectionTitleSo8PTModuleCSgSSSg_tFZ_0()
{
  sub_26C5CC548(0, &qword_2804A4D80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A4D88);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26C619B60;
  v1 = MEMORY[0x277D83B88];
  v2 = MEMORY[0x277D83C10];
  *(v0 + 56) = MEMORY[0x277D83B88];
  *(v0 + 64) = v2;
  *(v0 + 32) = 0;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  *(v0 + 72) = 1;
  v3 = sub_26C614F58();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C619B70;
  *(v4 + 56) = v1;
  *(v4 + 64) = v2;
  *(v4 + 32) = 1;
  v5 = sub_26C614F58();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26C619B70;
  *(v6 + 56) = v1;
  *(v6 + 64) = v2;
  *(v6 + 32) = 1;
  v127 = sub_26C614F58();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_26C619B70;
  *(v7 + 56) = v1;
  *(v7 + 64) = v2;
  *(v7 + 32) = 1;
  v8 = sub_26C614F58();
  v9 = sub_26C614E38();
  v10 = sub_26C614E38();
  v11 = [objc_opt_self() rowWithTitle:v9 valueKeyPath:v10];

  if (!v11)
  {
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v131 = sub_26C5CC548(0, &qword_2804A4D90);
  v130[0] = v11;
  v12 = sub_26C609104(0, 1, 1, MEMORY[0x277D84F90]);
  v14 = *(v12 + 2);
  v13 = *(v12 + 3);
  if (v14 >= v13 >> 1)
  {
    v12 = sub_26C609104((v13 > 1), v14 + 1, 1, v12);
  }

  *(v12 + 2) = v14 + 1;
  sub_26C5CD7F8(v130, &v12[32 * v14 + 32]);
  v15 = sub_26C614E38();
  v16 = sub_26C614E38();
  v17 = [objc_opt_self() rowWithTitle:v15 valueKeyPath:v16];

  if (!v17)
  {
    goto LABEL_89;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A55A0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_26C619B60;
  *(v18 + 32) = 0;
  *(v18 + 88) = v1;
  *(v18 + 56) = v1;
  *(v18 + 64) = 1;
  v19 = sub_26C614EB8();

  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_26C619B60;
  v21 = MEMORY[0x277D837D0];
  *(v20 + 32) = 0x676E69727053;
  *(v20 + 40) = 0xE600000000000000;
  *(v20 + 88) = v21;
  *(v20 + 56) = v21;
  *(v20 + 64) = 0xD000000000000012;
  *(v20 + 72) = 0x800000026C61CB90;
  v22 = sub_26C614EB8();

  v23 = [v17 possibleValues:v19 titles:v22];

  if (!v23)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  v25 = *(v12 + 2);
  v24 = *(v12 + 3);
  if (v25 >= v24 >> 1)
  {
    v12 = sub_26C609104((v24 > 1), v25 + 1, 1, v12);
  }

  *(v12 + 2) = v25 + 1;
  sub_26C5CD7F8(v130, &v12[32 * v25 + 32]);
  v26 = sub_26C614E38();
  v27 = sub_26C614E38();
  v28 = objc_opt_self();
  v29 = [v28 rowWithTitle:v26 valueKeyPath:v27];

  if (!v29)
  {
    goto LABEL_91;
  }

  v30 = v3;
  if (![v29 between:0.001 and:10.0])
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v129, v130);
  v31 = sub_26C5CC548(0, &qword_2804A4D98);
  swift_dynamicCast();
  if (![v128[0] precision_])
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v129, v130);
  swift_dynamicCast();
  v32 = v30;
  if (![v128[0] condition_])
  {
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v129, v130);
  swift_dynamicCast();
  v131 = v31;
  v130[0] = v128[0];
  v34 = *(v12 + 2);
  v33 = *(v12 + 3);
  if (v34 >= v33 >> 1)
  {
    v12 = sub_26C609104((v33 > 1), v34 + 1, 1, v12);
  }

  *(v12 + 2) = v34 + 1;
  sub_26C5CD7F8(v130, &v12[32 * v34 + 32]);
  v35 = sub_26C614E38();
  v36 = sub_26C614E38();
  v37 = [v28 rowWithTitle:v35 valueKeyPath:v36];

  if (!v37)
  {
    goto LABEL_95;
  }

  if (![v37 between:0.0 and:1000.0])
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v129, v130);
  swift_dynamicCast();
  if (![v128[0] precision_])
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v129, v130);
  swift_dynamicCast();
  v38 = v32;
  if (![v128[0] condition_])
  {
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v129, v130);
  swift_dynamicCast();
  v131 = v31;
  v130[0] = v128[0];
  v40 = *(v12 + 2);
  v39 = *(v12 + 3);
  if (v40 >= v39 >> 1)
  {
    v12 = sub_26C609104((v39 > 1), v40 + 1, 1, v12);
  }

  *(v12 + 2) = v40 + 1;
  sub_26C5CD7F8(v130, &v12[32 * v40 + 32]);
  v41 = sub_26C614E38();
  v42 = sub_26C614E38();
  v43 = [v28 rowWithTitle:v41 valueKeyPath:v42];

  if (!v43)
  {
    goto LABEL_99;
  }

  if (![v43 between:0.0 and:1.0])
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v126 = v8;
  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v129, v130);
  swift_dynamicCast();
  if (![v128[0] precision_])
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v129, v130);
  swift_dynamicCast();
  v44 = v38;
  if (![v128[0] condition_])
  {
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v129, v130);
  swift_dynamicCast();
  v131 = v31;
  v130[0] = v128[0];
  v46 = *(v12 + 2);
  v45 = *(v12 + 3);
  if (v46 >= v45 >> 1)
  {
    v12 = sub_26C609104((v45 > 1), v46 + 1, 1, v12);
  }

  *(v12 + 2) = v46 + 1;
  sub_26C5CD7F8(v130, &v12[32 * v46 + 32]);
  v47 = sub_26C614E38();
  v48 = sub_26C614E38();
  v49 = [v28 rowWithTitle:v47 valueKeyPath:v48];

  if (!v49)
  {
    goto LABEL_103;
  }

  v50 = v5;
  if (![v49 between:0.001 and:10.0])
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v129, v130);
  swift_dynamicCast();
  if (![v128[0] precision_])
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v129, v130);
  swift_dynamicCast();
  v51 = v50;
  if (![v128[0] condition_])
  {
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v129, v130);
  swift_dynamicCast();
  v131 = v31;
  v130[0] = v128[0];
  v53 = *(v12 + 2);
  v52 = *(v12 + 3);
  if (v53 >= v52 >> 1)
  {
    v12 = sub_26C609104((v52 > 1), v53 + 1, 1, v12);
  }

  *(v12 + 2) = v53 + 1;
  sub_26C5CD7F8(v130, &v12[32 * v53 + 32]);
  v54 = sub_26C614E38();
  v55 = sub_26C614E38();
  v56 = [v28 rowWithTitle:v54 valueKeyPath:v55];

  if (!v56)
  {
    goto LABEL_107;
  }

  if (![v56 between:0.0 and:1000.0])
  {
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v129, v130);
  swift_dynamicCast();
  if (![v128[0] precision_])
  {
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v129, v130);
  swift_dynamicCast();
  v57 = v51;
  if (![v128[0] condition_])
  {
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  v125 = v57;
  sub_26C5CD7F8(v129, v130);
  swift_dynamicCast();
  v131 = v31;
  v130[0] = v128[0];
  v59 = *(v12 + 2);
  v58 = *(v12 + 3);
  if (v59 >= v58 >> 1)
  {
    v12 = sub_26C609104((v58 > 1), v59 + 1, 1, v12);
  }

  *(v12 + 2) = v59 + 1;
  sub_26C5CD7F8(v130, &v12[32 * v59 + 32]);
  v60 = sub_26C614E38();
  v61 = sub_26C614E38();
  v62 = [v28 rowWithTitle:v60 valueKeyPath:v61];

  if (!v62)
  {
    goto LABEL_111;
  }

  if (![v62 between:0.0 and:1.0])
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v129, v130);
  swift_dynamicCast();
  if (![v128[0] precision_])
  {
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v129, v130);
  swift_dynamicCast();
  v63 = v44;
  if (![v128[0] condition_])
  {
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v129, v130);
  swift_dynamicCast();
  v131 = v31;
  v130[0] = v128[0];
  v65 = *(v12 + 2);
  v64 = *(v12 + 3);
  v124 = v63;
  if (v65 >= v64 >> 1)
  {
    v12 = sub_26C609104((v64 > 1), v65 + 1, 1, v12);
  }

  *(v12 + 2) = v65 + 1;
  sub_26C5CD7F8(v130, &v12[32 * v65 + 32]);
  v66 = sub_26C614E38();
  v67 = sub_26C614E38();
  v68 = [objc_opt_self() rowWithTitle:v66 valueKeyPath:v67];

  if (!v68)
  {
    goto LABEL_115;
  }

  v131 = sub_26C5CC548(0, &qword_2804A4DA0);
  v130[0] = v68;
  v70 = *(v12 + 2);
  v69 = *(v12 + 3);
  if (v70 >= v69 >> 1)
  {
    v12 = sub_26C609104((v69 > 1), v70 + 1, 1, v12);
  }

  *(v12 + 2) = v70 + 1;
  sub_26C5CD7F8(v130, &v12[32 * v70 + 32]);
  v71 = sub_26C614E38();
  v72 = sub_26C614E38();
  v73 = [v28 rowWithTitle:v71 valueKeyPath:v72];

  if (!v73)
  {
    goto LABEL_116;
  }

  v74 = v127;
  if (![v73 between:0.0 and:1.0])
  {
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v129, v130);
  swift_dynamicCast();
  if (![v128[0] precision_])
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v129, v130);
  swift_dynamicCast();
  v75 = v74;
  if (![v128[0] condition_])
  {
LABEL_119:
    __break(1u);
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v129, v130);
  swift_dynamicCast();
  v131 = v31;
  v130[0] = v128[0];
  v77 = *(v12 + 2);
  v76 = *(v12 + 3);
  if (v77 >= v76 >> 1)
  {
    v12 = sub_26C609104((v76 > 1), v77 + 1, 1, v12);
  }

  *(v12 + 2) = v77 + 1;
  sub_26C5CD7F8(v130, &v12[32 * v77 + 32]);
  v78 = sub_26C614E38();
  v79 = sub_26C614E38();
  v80 = [v28 rowWithTitle:v78 valueKeyPath:v79];

  if (!v80)
  {
    goto LABEL_120;
  }

  if (![v80 between:0.0 and:1.0])
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v129, v130);
  swift_dynamicCast();
  if (![v128[0] precision_])
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v129, v130);
  swift_dynamicCast();
  v81 = v75;
  if (![v128[0] condition_])
  {
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v129, v130);
  swift_dynamicCast();
  v131 = v31;
  v130[0] = v128[0];
  v83 = *(v12 + 2);
  v82 = *(v12 + 3);
  if (v83 >= v82 >> 1)
  {
    v12 = sub_26C609104((v82 > 1), v83 + 1, 1, v12);
  }

  *(v12 + 2) = v83 + 1;
  sub_26C5CD7F8(v130, &v12[32 * v83 + 32]);
  v84 = sub_26C614E38();
  v85 = sub_26C614E38();
  v86 = [v28 rowWithTitle:v84 valueKeyPath:v85];

  if (!v86)
  {
    goto LABEL_124;
  }

  v87 = v126;
  if (![v86 between:0.0 and:1.0])
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v129, v130);
  swift_dynamicCast();
  if (![v128[0] precision_])
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v129, v130);
  swift_dynamicCast();
  v88 = v87;
  if (![v128[0] condition_])
  {
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v129, v130);
  swift_dynamicCast();
  v131 = v31;
  v130[0] = v128[0];
  v90 = *(v12 + 2);
  v89 = *(v12 + 3);
  if (v90 >= v89 >> 1)
  {
    v12 = sub_26C609104((v89 > 1), v90 + 1, 1, v12);
  }

  *(v12 + 2) = v90 + 1;
  sub_26C5CD7F8(v130, &v12[32 * v90 + 32]);
  v91 = sub_26C614E38();
  v92 = sub_26C614E38();
  v93 = [v28 rowWithTitle:v91 valueKeyPath:v92];

  if (!v93)
  {
    goto LABEL_128;
  }

  if (![v93 between:0.0 and:1.0])
  {
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v129, v130);
  swift_dynamicCast();
  if (![v128[0] precision_])
  {
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v129, v130);
  swift_dynamicCast();
  v94 = v88;
  if (![v128[0] condition_])
  {
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v128, v129);
  swift_dynamicCast();
  v131 = v31;
  v96 = *(v12 + 2);
  v95 = *(v12 + 3);
  if (v96 >= v95 >> 1)
  {
    v12 = sub_26C609104((v95 > 1), v96 + 1, 1, v12);
  }

  *(v12 + 2) = v96 + 1;
  sub_26C5CD7F8(v130, &v12[32 * v96 + 32]);
  v97 = sub_26C614E38();
  v98 = sub_26C614E38();
  v99 = [v28 rowWithTitle:v97 valueKeyPath:v98];

  if (!v99)
  {
    goto LABEL_132;
  }

  if (![v99 between:0.0 and:1.0])
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v129, v130);
  swift_dynamicCast();
  v100 = v128[0];
  if (![v128[0] precision_])
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v129, v130);
  swift_dynamicCast();
  v101 = v128[0];
  v102 = v94;
  if (![v101 condition_])
  {
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v128, v129);
  swift_dynamicCast();
  v131 = v31;
  v104 = *(v12 + 2);
  v103 = *(v12 + 3);
  if (v104 >= v103 >> 1)
  {
    v12 = sub_26C609104((v103 > 1), v104 + 1, 1, v12);
  }

  *(v12 + 2) = v104 + 1;
  sub_26C5CD7F8(v130, &v12[32 * v104 + 32]);
  v105 = sub_26C614E38();
  v106 = sub_26C614E38();
  v107 = [v28 rowWithTitle:v105 valueKeyPath:v106];

  if (!v107)
  {
    goto LABEL_136;
  }

  if (![v107 between:0.0 and:1.0])
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v129, v130);
  swift_dynamicCast();
  v108 = v128[0];
  if (![v128[0] precision_])
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v129, v130);
  swift_dynamicCast();
  v109 = v128[0];
  v110 = v102;
  if (![v109 condition_])
  {
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v128, v129);
  swift_dynamicCast();
  v131 = v31;
  v112 = *(v12 + 2);
  v111 = *(v12 + 3);
  if (v112 >= v111 >> 1)
  {
    v12 = sub_26C609104((v111 > 1), v112 + 1, 1, v12);
  }

  *(v12 + 2) = v112 + 1;
  sub_26C5CD7F8(v130, &v12[32 * v112 + 32]);
  v113 = sub_26C614E38();
  v114 = sub_26C614E38();
  v115 = [objc_opt_self() rowWithTitle:v113 childSettingsKeyPath:v114];

  if (!v115)
  {
    goto LABEL_140;
  }

  v131 = sub_26C5CC548(0, &qword_2804A4C68);
  v130[0] = v115;
  v117 = *(v12 + 2);
  v116 = *(v12 + 3);
  if (v117 >= v116 >> 1)
  {
    v12 = sub_26C609104((v116 > 1), v117 + 1, 1, v12);
  }

  *(v12 + 2) = v117 + 1;
  sub_26C5CD7F8(v130, &v12[32 * v117 + 32]);
  v118 = swift_allocObject();
  *(v118 + 16) = xmmword_26C619B70;
  v119 = sub_26C614EB8();
  v120 = objc_opt_self();

  v121 = sub_26C614E38();

  v122 = [v120 sectionWithRows:v119 title:v121];

  if (v122)
  {

    *(v118 + 56) = sub_26C5CC548(0, &qword_2804A4C70);
    *(v118 + 32) = v122;
    v123 = sub_26C614EB8();

    [v120 moduleWithTitle:0 contents:v123];

    return;
  }

LABEL_141:
  __break(1u);
}

unint64_t sub_26C5D3084()
{
  result = qword_2804A4D10;
  if (!qword_2804A4D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804A4D08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A4D10);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_26C5D3144(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A4D18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C5D31B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A4D18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

id sub_26C5D336C(uint64_t a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for ShockwaveIntelligenceSystemLightView();
  objc_msgSendSuper2(&v10, sel_didAddSubview_, a1);
  v3 = OBJC_IVAR___SUIAShockwaveIntelligenceSystemLightView_circleMaskView;
  result = swift_beginAccess();
  v5 = *&v1[v3];
  if (v5)
  {
    v6 = v5 == a1;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v7 = OBJC_IVAR___SUIAShockwaveIntelligenceSystemLightView_sideLightMaskView;
    result = swift_beginAccess();
    v8 = *&v1[v7];
    if (!v8 || v8 != a1)
    {
      if (v5)
      {
        result = [v1 bringSubviewToFront_];
        v8 = *&v1[v7];
      }

      if (v8)
      {
        return [v1 bringSubviewToFront_];
      }
    }
  }

  return result;
}

void *sub_26C5D3590()
{
  v1 = OBJC_IVAR___SUIAShockwaveIntelligenceSystemLightView_circleMaskView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

id sub_26C5D361C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___SUIAShockwaveIntelligenceSystemLightView_circleMaskView;
  result = swift_beginAccess();
  v6 = *&v2[v4];
  if (!a1)
  {
    if (!v6)
    {
      return result;
    }

LABEL_12:
    [v2 addSubview_];
    if (*&v2[v4])
    {
      [v2 bringSubviewToFront_];
    }

LABEL_14:
    v13 = OBJC_IVAR___SUIAShockwaveIntelligenceSystemLightView_sideLightMaskView;
    result = swift_beginAccess();
    if (*&v2[v13])
    {
      return [v2 bringSubviewToFront_];
    }

    return result;
  }

  if (v6)
  {
    v7 = v6 == a1;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v8 = a1;
    v9 = [v8 superview];
    if (v9)
    {
      v10 = v9;
      sub_26C5D40E8();
      v11 = v2;
      v12 = sub_26C614FA8();

      if (v12)
      {
        [v8 removeFromSuperview];
      }
    }

    if (!*&v2[v4])
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  return result;
}

void (*sub_26C5D375C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___SUIAShockwaveIntelligenceSystemLightView_circleMaskView;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_26C5D37F8;
}

void *sub_26C5D385C()
{
  v1 = OBJC_IVAR___SUIAShockwaveIntelligenceSystemLightView_sideLightMaskView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_26C5D38EC(char *a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(void *))
{
  v8 = *a4;
  swift_beginAccess();
  v9 = *&a1[v8];
  *&a1[v8] = a3;
  v10 = a3;
  v11 = a1;
  a5(v9);
}

void sub_26C5D3998(void *a1, uint64_t *a2, void (*a3)(void *))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  v8 = a1;
  a3(v7);
}

void sub_26C5D3A10(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(void *))
{
  v7 = *a1;
  v8 = *a2;
  v9 = *a5;
  swift_beginAccess();
  v10 = *(v8 + v9);
  *(v8 + v9) = v7;
  v11 = v7;
  a6(v10);
}

id sub_26C5D3A84(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___SUIAShockwaveIntelligenceSystemLightView_sideLightMaskView;
  result = swift_beginAccess();
  v6 = *&v2[v4];
  if (!a1)
  {
    if (!v6)
    {
      return result;
    }

LABEL_12:
    [v2 addSubview_];
    goto LABEL_13;
  }

  if (v6)
  {
    v7 = v6 == a1;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    return result;
  }

  v8 = a1;
  v9 = [v8 superview];
  if (v9)
  {
    v10 = v9;
    sub_26C5D40E8();
    v11 = v2;
    v12 = sub_26C614FA8();

    if (v12)
    {
      [v8 removeFromSuperview];
    }
  }

  if (*&v2[v4])
  {
    goto LABEL_12;
  }

LABEL_13:
  v13 = OBJC_IVAR___SUIAShockwaveIntelligenceSystemLightView_circleMaskView;
  result = swift_beginAccess();
  if (*&v2[v13])
  {
    result = [v2 bringSubviewToFront_];
  }

  if (*&v2[v4])
  {
    return [v2 bringSubviewToFront_];
  }

  return result;
}

void (*sub_26C5D3BC0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___SUIAShockwaveIntelligenceSystemLightView_sideLightMaskView;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_26C5D3C5C;
}

void sub_26C5D3C74(uint64_t a1, char a2, void (*a3)(void *))
{
  v5 = *a1;
  v7 = (*a1 + 24);
  v6 = *v7;
  v9 = *(*a1 + 32);
  v8 = *(*a1 + 40);
  v10 = *(v9 + v8);
  *(v9 + v8) = *v7;
  v11 = v6;
  v12 = v11;
  if (a2)
  {
    v13 = v11;
    a3(v10);

    v10 = *v7;
  }

  else
  {
    a3(v10);
  }

  free(v5);
}

id ShockwaveIntelligenceSystemLightView.__allocating_init(frame:preferringAudioReactivity:)(char a1, double a2, double a3, double a4, double a5)
{
  v11 = objc_allocWithZone(v5);

  return [v11 initWithFrame:a1 & 1 preferringAudioReactivity:{a2, a3, a4, a5}];
}

id ShockwaveIntelligenceSystemLightView.init(frame:preferringAudioReactivity:)(char a1, double a2, double a3, double a4, double a5)
{
  *&v5[OBJC_IVAR___SUIAShockwaveIntelligenceSystemLightView_circleMaskView] = 0;
  *&v5[OBJC_IVAR___SUIAShockwaveIntelligenceSystemLightView_sideLightMaskView] = 0;
  v12.receiver = v5;
  v12.super_class = type metadata accessor for ShockwaveIntelligenceSystemLightView();
  return objc_msgSendSuper2(&v12, sel_initWithFrame_preferringAudioReactivity_, a1 & 1, a2, a3, a4, a5);
}

id ShockwaveIntelligenceSystemLightView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShockwaveIntelligenceSystemLightView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

unint64_t sub_26C5D40E8()
{
  result = qword_2804A4DB8;
  if (!qword_2804A4DB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2804A4DB8);
  }

  return result;
}

double SUIAShockwavePrototypeSettings.maximumHintDuration.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_maximumHintDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.maximumHintDuration.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_maximumHintDuration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAShockwavePrototypeSettings.totalDuration.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_totalDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.totalDuration.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_totalDuration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SUIAShockwavePrototypeSettings.visualizeEffectMasks.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_visualizeEffectMasks;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.visualizeEffectMasks.setter(char a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_visualizeEffectMasks;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAShockwavePrototypeSettings.donutMaskInitialEdgeOutsetProportion.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_donutMaskInitialEdgeOutsetProportion;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.donutMaskInitialEdgeOutsetProportion.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_donutMaskInitialEdgeOutsetProportion;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAShockwavePrototypeSettings.finalFitVsDiameterRatioShortEdgeSmallScreen.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_finalFitVsDiameterRatioShortEdgeSmallScreen;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.finalFitVsDiameterRatioShortEdgeSmallScreen.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_finalFitVsDiameterRatioShortEdgeSmallScreen;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAShockwavePrototypeSettings.finalFitVsDiameterRatioLongEdgeSmallScreen.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_finalFitVsDiameterRatioLongEdgeSmallScreen;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.finalFitVsDiameterRatioLongEdgeSmallScreen.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_finalFitVsDiameterRatioLongEdgeSmallScreen;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAShockwavePrototypeSettings.finalFitVsDiameterRatioShortEdgeBigScreen.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_finalFitVsDiameterRatioShortEdgeBigScreen;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.finalFitVsDiameterRatioShortEdgeBigScreen.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_finalFitVsDiameterRatioShortEdgeBigScreen;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAShockwavePrototypeSettings.finalFitVsDiameterRatioLongEdgeBigScreen.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_finalFitVsDiameterRatioLongEdgeBigScreen;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.finalFitVsDiameterRatioLongEdgeBigScreen.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_finalFitVsDiameterRatioLongEdgeBigScreen;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAShockwavePrototypeSettings.edgeLightHintTransitionDelay.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_edgeLightHintTransitionDelay;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.edgeLightHintTransitionDelay.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_edgeLightHintTransitionDelay;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAShockwavePrototypeSettings.donutMaskEndTransitionDelay.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_donutMaskEndTransitionDelay;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.donutMaskEndTransitionDelay.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_donutMaskEndTransitionDelay;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id SUIAShockwavePrototypeSettings.donutMaskPositionAnimationSettings.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_donutMaskPositionAnimationSettings;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SUIAShockwavePrototypeSettings.donutMaskPositionAnimationSettings.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_donutMaskPositionAnimationSettings;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id SUIAShockwavePrototypeSettings.chromaticAberrationInitialDonutMask.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_chromaticAberrationInitialDonutMask;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SUIAShockwavePrototypeSettings.chromaticAberrationInitialDonutMask.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_chromaticAberrationInitialDonutMask;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id SUIAShockwavePrototypeSettings.chromaticAberrationFinalDonutMaskSmallScreen.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_chromaticAberrationFinalDonutMaskSmallScreen;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SUIAShockwavePrototypeSettings.chromaticAberrationFinalDonutMaskSmallScreen.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_chromaticAberrationFinalDonutMaskSmallScreen;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id SUIAShockwavePrototypeSettings.chromaticAberrationFinalDonutMaskLargeScreen.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_chromaticAberrationFinalDonutMaskLargeScreen;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SUIAShockwavePrototypeSettings.chromaticAberrationFinalDonutMaskLargeScreen.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_chromaticAberrationFinalDonutMaskLargeScreen;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id SUIAShockwavePrototypeSettings.colorFillInitialCircleMask.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_colorFillInitialCircleMask;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SUIAShockwavePrototypeSettings.colorFillInitialCircleMask.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_colorFillInitialCircleMask;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id SUIAShockwavePrototypeSettings.colorFillHintCircleMask.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_colorFillHintCircleMask;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SUIAShockwavePrototypeSettings.colorFillHintCircleMask.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_colorFillHintCircleMask;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id SUIAShockwavePrototypeSettings.colorFillFinalCircleMask.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_colorFillFinalCircleMask;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SUIAShockwavePrototypeSettings.colorFillFinalCircleMask.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_colorFillFinalCircleMask;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id SUIAShockwavePrototypeSettings.edgeLightInitialCircleMask.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_edgeLightInitialCircleMask;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SUIAShockwavePrototypeSettings.edgeLightInitialCircleMask.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_edgeLightInitialCircleMask;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id SUIAShockwavePrototypeSettings.edgeLightHintCircleMask.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_edgeLightHintCircleMask;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SUIAShockwavePrototypeSettings.edgeLightHintCircleMask.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_edgeLightHintCircleMask;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id SUIAShockwavePrototypeSettings.edgeLightFinalCircleMask.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_edgeLightFinalCircleMask;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SUIAShockwavePrototypeSettings.edgeLightFinalCircleMask.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_edgeLightFinalCircleMask;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double SUIAShockwavePrototypeSettings.aberrationMagnitudeX.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationMagnitudeX;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.aberrationMagnitudeX.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationMagnitudeX;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAShockwavePrototypeSettings.aberrationMagnitudeY.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationMagnitudeY;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.aberrationMagnitudeY.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationMagnitudeY;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAShockwavePrototypeSettings.aberrationBlurRadius.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationBlurRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.aberrationBlurRadius.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationBlurRadius;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SUIAShockwavePrototypeSettings.aberrationUseColorSaturate.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationUseColorSaturate;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.aberrationUseColorSaturate.setter(char a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationUseColorSaturate;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAShockwavePrototypeSettings.aberrationColorSaturateAmount.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationColorSaturateAmount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.aberrationColorSaturateAmount.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationColorSaturateAmount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SUIAShockwavePrototypeSettings.aberrationUseEDR.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationUseEDR;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.aberrationUseEDR.setter(char a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationUseEDR;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAShockwavePrototypeSettings.aberrationEDRGain.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationEDRGain;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.aberrationEDRGain.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationEDRGain;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SUIAShockwavePrototypeSettings.aberrationUseColorBrightness.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationUseColorBrightness;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.aberrationUseColorBrightness.setter(char a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationUseColorBrightness;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAShockwavePrototypeSettings.aberrationColorBrightness.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationColorBrightness;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.aberrationColorBrightness.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationColorBrightness;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SUIAShockwavePrototypeSettings.aberrationUseColorMatrixMultiply.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationUseColorMatrixMultiply;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.aberrationUseColorMatrixMultiply.setter(char a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationUseColorMatrixMultiply;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAShockwavePrototypeSettings.aberrationColorMatrixMultiplyFactor.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationColorMatrixMultiplyFactor;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.aberrationColorMatrixMultiplyFactor.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationColorMatrixMultiplyFactor;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAShockwavePrototypeSettings.aberrationFadeOutDelay.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationFadeOutDelay;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.aberrationFadeOutDelay.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationFadeOutDelay;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAShockwavePrototypeSettings.aberrationFadeOutDelayIPad.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationFadeOutDelayIPad;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.aberrationFadeOutDelayIPad.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_aberrationFadeOutDelayIPad;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id SUIAShockwavePrototypeSettings.abberationFadeOutAnimationSettings.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_abberationFadeOutAnimationSettings;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SUIAShockwavePrototypeSettings.abberationFadeOutAnimationSettings.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_abberationFadeOutAnimationSettings;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id SUIAShockwavePrototypeSettings.abberationCancelledFadeOutAnimationSettings.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_abberationCancelledFadeOutAnimationSettings;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SUIAShockwavePrototypeSettings.abberationCancelledFadeOutAnimationSettings.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_abberationCancelledFadeOutAnimationSettings;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double SUIAShockwavePrototypeSettings.meshSquareFinalSizeDiagonalRatio.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshSquareFinalSizeDiagonalRatio;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.meshSquareFinalSizeDiagonalRatio.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshSquareFinalSizeDiagonalRatio;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAShockwavePrototypeSettings.meshRectangularFinalShortDimensionRatio.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshRectangularFinalShortDimensionRatio;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.meshRectangularFinalShortDimensionRatio.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshRectangularFinalShortDimensionRatio;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAShockwavePrototypeSettings.meshRectangularFinalLongDimensionRatio.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshRectangularFinalLongDimensionRatio;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.meshRectangularFinalLongDimensionRatio.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshRectangularFinalLongDimensionRatio;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAShockwavePrototypeSettings.meshFinalProportionAcrossScreenLongEdge.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshFinalProportionAcrossScreenLongEdge;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.meshFinalProportionAcrossScreenLongEdge.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshFinalProportionAcrossScreenLongEdge;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAShockwavePrototypeSettings.meshFinalProportionAcrossScreenShortEdge.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshFinalProportionAcrossScreenShortEdge;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.meshFinalProportionAcrossScreenShortEdge.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshFinalProportionAcrossScreenShortEdge;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAShockwavePrototypeSettings.meshFinalProportionTowardsCenterOnLargeDisplays.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshFinalProportionTowardsCenterOnLargeDisplays;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.meshFinalProportionTowardsCenterOnLargeDisplays.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshFinalProportionTowardsCenterOnLargeDisplays;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAShockwavePrototypeSettings.meshPointsEndTransitionDelay.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshPointsEndTransitionDelay;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.meshPointsEndTransitionDelay.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshPointsEndTransitionDelay;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SUIAShockwavePrototypeSettings.useSiriMeshForCapture.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_useSiriMeshForCapture;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.useSiriMeshForCapture.setter(char a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_useSiriMeshForCapture;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id SUIAShockwavePrototypeSettings.meshPointsAnimationSettings.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshPointsAnimationSettings;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SUIAShockwavePrototypeSettings.meshPointsAnimationSettings.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshPointsAnimationSettings;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id SUIAShockwavePrototypeSettings.meshPositionAnimationSettings.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshPositionAnimationSettings;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SUIAShockwavePrototypeSettings.meshPositionAnimationSettings.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshPositionAnimationSettings;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id SUIAShockwavePrototypeSettings.meshPointsCancelledAnimationSettings.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshPointsCancelledAnimationSettings;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SUIAShockwavePrototypeSettings.meshPointsCancelledAnimationSettings.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_meshPointsCancelledAnimationSettings;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double SUIAShockwavePrototypeSettings.fillLightInitialIntensity.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_fillLightInitialIntensity;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.fillLightInitialIntensity.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_fillLightInitialIntensity;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAShockwavePrototypeSettings.fillLightCaptureInitialIntensity.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_fillLightCaptureInitialIntensity;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.fillLightCaptureInitialIntensity.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_fillLightCaptureInitialIntensity;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAShockwavePrototypeSettings.captureFillWhiteValue.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_captureFillWhiteValue;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.captureFillWhiteValue.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_captureFillWhiteValue;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAShockwavePrototypeSettings.fillLightFinalIntensity.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_fillLightFinalIntensity;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.fillLightFinalIntensity.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_fillLightFinalIntensity;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id SUIAShockwavePrototypeSettings.lightIntensityAnimationSettings.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_lightIntensityAnimationSettings;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SUIAShockwavePrototypeSettings.lightIntensityAnimationSettings.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_lightIntensityAnimationSettings;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id SUIAShockwavePrototypeSettings.lightIntensityCancelledAnimationSettings.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_lightIntensityCancelledAnimationSettings;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SUIAShockwavePrototypeSettings.lightIntensityCancelledAnimationSettings.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_lightIntensityCancelledAnimationSettings;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double SUIAShockwavePrototypeSettings.fillLightIntensityFinalStateDelay.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_fillLightIntensityFinalStateDelay;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.fillLightIntensityFinalStateDelay.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_fillLightIntensityFinalStateDelay;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAShockwavePrototypeSettings.fillLightColorSaturateAmount.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_fillLightColorSaturateAmount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.fillLightColorSaturateAmount.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_fillLightColorSaturateAmount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAShockwavePrototypeSettings.fillLightColorBrightnessAmount.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_fillLightColorBrightnessAmount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.fillLightColorBrightnessAmount.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_fillLightColorBrightnessAmount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAShockwavePrototypeSettings.fillLightColorContrastAmount.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_fillLightColorContrastAmount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.fillLightColorContrastAmount.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_fillLightColorContrastAmount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id SUIAShockwavePrototypeSettings.captureHintAnimationSettings.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_captureHintAnimationSettings;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SUIAShockwavePrototypeSettings.captureHintAnimationSettings.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_captureHintAnimationSettings;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double SUIAShockwavePrototypeSettings.captureHintRetargetImpulse.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_captureHintRetargetImpulse;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.captureHintRetargetImpulse.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_captureHintRetargetImpulse;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAShockwavePrototypeSettings.captureHintInterpolationProgress.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_captureHintInterpolationProgress;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.captureHintInterpolationProgress.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_captureHintInterpolationProgress;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAShockwavePrototypeSettings.captureHintMeshOffset.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_captureHintMeshOffset;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.captureHintMeshOffset.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_captureHintMeshOffset;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAShockwavePrototypeSettings.visionIntelligenceHintRetargetImpulse.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_visionIntelligenceHintRetargetImpulse;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.visionIntelligenceHintRetargetImpulse.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_visionIntelligenceHintRetargetImpulse;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAShockwavePrototypeSettings.visionIntelligenceHintInterpolationProgress.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_visionIntelligenceHintInterpolationProgress;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.visionIntelligenceHintInterpolationProgress.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_visionIntelligenceHintInterpolationProgress;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAShockwavePrototypeSettings.visionIntelligenceHintFillLightInitialIntensity.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_visionIntelligenceHintFillLightInitialIntensity;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.visionIntelligenceHintFillLightInitialIntensity.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_visionIntelligenceHintFillLightInitialIntensity;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id SUIAShockwavePrototypeSettings.visionIntelligenceHintAnimationSettings.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_visionIntelligenceHintAnimationSettings;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SUIAShockwavePrototypeSettings.visionIntelligenceHintAnimationSettings.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_visionIntelligenceHintAnimationSettings;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t SUIAShockwavePrototypeSettings.captureChromaticAberrationEnabled.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_captureChromaticAberrationEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.captureChromaticAberrationEnabled.setter(char a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_captureChromaticAberrationEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SUIAShockwavePrototypeSettings.captureMeshEnabled.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_captureMeshEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.captureMeshEnabled.setter(char a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_captureMeshEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SUIAShockwavePrototypeSettings.captureFillLightType.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_captureFillLightType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.captureFillLightType.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_captureFillLightType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SUIAShockwavePrototypeSettings.siriButtonChromaticAberrationEnabled.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriButtonChromaticAberrationEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.siriButtonChromaticAberrationEnabled.setter(char a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriButtonChromaticAberrationEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SUIAShockwavePrototypeSettings.siriButtonMeshEnabled.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriButtonMeshEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.siriButtonMeshEnabled.setter(char a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriButtonMeshEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SUIAShockwavePrototypeSettings.siriButtonMeshEnabledLargeScreen.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriButtonMeshEnabledLargeScreen;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.siriButtonMeshEnabledLargeScreen.setter(char a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriButtonMeshEnabledLargeScreen;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SUIAShockwavePrototypeSettings.siriButtonFillLightEnabled.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriButtonFillLightEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.siriButtonFillLightEnabled.setter(char a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriButtonFillLightEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SUIAShockwavePrototypeSettings.siriButtonEdgeLightEnabled.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriButtonEdgeLightEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.siriButtonEdgeLightEnabled.setter(char a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriButtonEdgeLightEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SUIAShockwavePrototypeSettings.siriEdgeChromaticAberrationEnabled.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriEdgeChromaticAberrationEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.siriEdgeChromaticAberrationEnabled.setter(char a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriEdgeChromaticAberrationEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SUIAShockwavePrototypeSettings.siriEdgeMeshEnabled.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriEdgeMeshEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.siriEdgeMeshEnabled.setter(char a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriEdgeMeshEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SUIAShockwavePrototypeSettings.siriEdgeMeshEnabledLargeScreen.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriEdgeMeshEnabledLargeScreen;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.siriEdgeMeshEnabledLargeScreen.setter(char a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriEdgeMeshEnabledLargeScreen;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SUIAShockwavePrototypeSettings.siriEdgeFillLightEnabled.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriEdgeFillLightEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.siriEdgeFillLightEnabled.setter(char a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriEdgeFillLightEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SUIAShockwavePrototypeSettings.siriEdgeEdgeLightEnabled.getter()
{
  v1 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriEdgeEdgeLightEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwavePrototypeSettings.siriEdgeEdgeLightEnabled.setter(char a1)
{
  v3 = OBJC_IVAR___SUIAShockwavePrototypeSettings_siriEdgeEdgeLightEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

Swift::Void __swiftcall SUIAShockwavePrototypeSettings.setDefaultValues()()
{
  v1 = v0;
  v107 = *MEMORY[0x277D85DE8];
  v106.super_class = SUIAShockwavePrototypeSettings;
  objc_msgSendSuper2(&v106, sel_setDefaultValues);
  v104 = 0.0;
  v105 = 0.0;
  [v0 setMaximumHintDuration_];
  [v0 setTotalDuration_];
  [v0 setVisualizeEffectMasks_];
  [v0 setDonutMaskInitialEdgeOutsetProportion_];
  [v0 setFinalFitVsDiameterRatioShortEdgeSmallScreen_];
  [v0 setFinalFitVsDiameterRatioLongEdgeSmallScreen_];
  [v0 setFinalFitVsDiameterRatioShortEdgeBigScreen_];
  [v0 setFinalFitVsDiameterRatioLongEdgeBigScreen_];
  [v0 setEdgeLightHintTransitionDelay_];
  [v0 setDonutMaskEndTransitionDelay_];
  v2 = [objc_allocWithZone(SUIAFluidBehaviorSettings) init];
  [v1 setDonutMaskPositionAnimationSettings_];

  v3 = [v1 donutMaskPositionAnimationSettings];
  [v3 setDefaultCriticallyDampedValues];
  sub_26C614F78();
  [v3 setFrameRateRange:3014657 highFrameRateReason:?];
  [v3 setBehaviorType_];
  v4 = sub_26C614E38();
  [v3 setName_];

  v5 = [v1 donutMaskPositionAnimationSettings];
  [v5 setDampingRatio_];

  v6 = [v1 donutMaskPositionAnimationSettings];
  [v6 setResponse_];

  v7 = [v1 chromaticAberrationInitialDonutMask];
  v8 = sub_26C614E38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A55E0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26C61A090;
  sub_26C5CC548(0, &unk_28125E420);
  *(v9 + 32) = sub_26C614F98();
  *(v9 + 40) = sub_26C614F98();
  *(v9 + 48) = sub_26C614F98();
  *(v9 + 56) = sub_26C614F98();
  *(v9 + 64) = sub_26C614F98();
  *(v9 + 72) = sub_26C614F98();
  *(v9 + 80) = sub_26C614F98();
  *(v9 + 88) = sub_26C614F98();
  *(v9 + 96) = sub_26C614F98();
  *(v9 + 104) = sub_26C614F98();
  *(v9 + 112) = sub_26C614F98();
  *(v9 + 120) = sub_26C614F98();
  *(v9 + 128) = sub_26C614F98();
  *(v9 + 136) = sub_26C614F98();
  *(v9 + 144) = sub_26C614F98();
  *(v9 + 152) = sub_26C614F98();
  *(v9 + 160) = sub_26C614F98();
  *(v9 + 168) = sub_26C614F98();
  *(v9 + 176) = sub_26C614F98();
  *(v9 + 184) = sub_26C614F98();
  *(v9 + 192) = sub_26C614F98();
  *(v9 + 200) = sub_26C614F98();
  *(v9 + 208) = sub_26C614F98();
  *(v9 + 216) = sub_26C614F98();
  *(v9 + 224) = sub_26C614F98();
  *(v9 + 232) = sub_26C614F98();
  *(v9 + 240) = sub_26C614F98();
  *(v9 + 248) = sub_26C614F98();
  *(v9 + 256) = sub_26C614F98();
  *(v9 + 264) = sub_26C614F98();
  v10 = sub_26C614EB8();

  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_26C61A090;
  *(v11 + 32) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.0];
  *(v11 + 40) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.0];
  *(v11 + 48) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.0];
  *(v11 + 56) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.0];
  *(v11 + 64) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.0];
  *(v11 + 72) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:?];
  *(v11 + 80) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:?];
  *(v11 + 88) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:?];
  *(v11 + 96) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.133];
  *(v11 + 104) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.224];
  *(v11 + 112) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.333];
  *(v11 + 120) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.471];
  *(v11 + 128) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.608];
  *(v11 + 136) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.729];
  *(v11 + 144) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:?];
  *(v11 + 152) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.871];
  *(v11 + 160) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.875];
  *(v11 + 168) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.835];
  *(v11 + 176) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.753];
  *(v11 + 184) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.639];
  *(v11 + 192) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:?];
  *(v11 + 200) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.369];
  *(v11 + 208) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.251];
  *(v11 + 216) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.153];
  *(v11 + 224) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.082];
  *(v11 + 232) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:?];
  *(v11 + 240) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:?];
  *(v11 + 248) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.004];
  *(v11 + 256) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.0];
  *(v11 + 264) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.0];
  sub_26C5CC548(0, &qword_28125E430);
  v12 = sub_26C614EB8();

  [v7 setDefaultValuesWithName:v8 majorDiameter:30 ringWidth:v10 blurRadius:v12 sampleCount:195.5 locations:42.0 colors:14.0 gradientLayerSize:{279.5, 279.5}];

  v13 = [v1 chromaticAberrationFinalDonutMaskSmallScreen];
  v14 = sub_26C614E38();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_26C61A090;
  *(v15 + 32) = sub_26C614F98();
  *(v15 + 40) = sub_26C614F98();
  *(v15 + 48) = sub_26C614F98();
  *(v15 + 56) = sub_26C614F98();
  *(v15 + 64) = sub_26C614F98();
  *(v15 + 72) = sub_26C614F98();
  *(v15 + 80) = sub_26C614F98();
  *(v15 + 88) = sub_26C614F98();
  *(v15 + 96) = sub_26C614F98();
  *(v15 + 104) = sub_26C614F98();
  *(v15 + 112) = sub_26C614F98();
  *(v15 + 120) = sub_26C614F98();
  *(v15 + 128) = sub_26C614F98();
  *(v15 + 136) = sub_26C614F98();
  *(v15 + 144) = sub_26C614F98();
  *(v15 + 152) = sub_26C614F98();
  *(v15 + 160) = sub_26C614F98();
  *(v15 + 168) = sub_26C614F98();
  *(v15 + 176) = sub_26C614F98();
  *(v15 + 184) = sub_26C614F98();
  *(v15 + 192) = sub_26C614F98();
  *(v15 + 200) = sub_26C614F98();
  *(v15 + 208) = sub_26C614F98();
  *(v15 + 216) = sub_26C614F98();
  *(v15 + 224) = sub_26C614F98();
  *(v15 + 232) = sub_26C614F98();
  *(v15 + 240) = sub_26C614F98();
  *(v15 + 248) = sub_26C614F98();
  *(v15 + 256) = sub_26C614F98();
  *(v15 + 264) = sub_26C614F98();
  v16 = sub_26C614EB8();

  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_26C61A090;
  *(v17 + 32) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.0];
  *(v17 + 40) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.0];
  *(v17 + 48) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.0];
  *(v17 + 56) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.0];
  *(v17 + 64) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.0];
  *(v17 + 72) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.0];
  *(v17 + 80) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.0];
  *(v17 + 88) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.0];
  *(v17 + 96) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.0];
  *(v17 + 104) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.0];
  *(v17 + 112) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.0];
  *(v17 + 120) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.0];
  *(v17 + 128) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.004];
  *(v17 + 136) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.035];
  *(v17 + 144) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.122];
  *(v17 + 152) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:?];
  *(v17 + 160) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.525];
  *(v17 + 168) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.753];
  *(v17 + 176) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.906];
  *(v17 + 184) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.976];
  *(v17 + 192) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:?];
  *(v17 + 200) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.976];
  *(v17 + 208) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.906];
  *(v17 + 216) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.761];
  *(v17 + 224) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:?];
  *(v17 + 232) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:?];
  *(v17 + 240) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.122];
  *(v17 + 248) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:?];
  *(v17 + 256) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.004];
  *(v17 + 264) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.0];
  v18 = sub_26C614EB8();

  [v13 setDefaultValuesWithName:v14 majorDiameter:30 ringWidth:v16 blurRadius:v18 sampleCount:? locations:? colors:? gradientLayerSize:?];

  v19 = [v1 chromaticAberrationFinalDonutMaskLargeScreen];
  v20 = sub_26C614E38();
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_26C61A090;
  *(v21 + 32) = sub_26C614F98();
  *(v21 + 40) = sub_26C614F98();
  *(v21 + 48) = sub_26C614F98();
  *(v21 + 56) = sub_26C614F98();
  *(v21 + 64) = sub_26C614F98();
  *(v21 + 72) = sub_26C614F98();
  *(v21 + 80) = sub_26C614F98();
  *(v21 + 88) = sub_26C614F98();
  *(v21 + 96) = sub_26C614F98();
  *(v21 + 104) = sub_26C614F98();
  *(v21 + 112) = sub_26C614F98();
  *(v21 + 120) = sub_26C614F98();
  *(v21 + 128) = sub_26C614F98();
  *(v21 + 136) = sub_26C614F98();
  *(v21 + 144) = sub_26C614F98();
  *(v21 + 152) = sub_26C614F98();
  *(v21 + 160) = sub_26C614F98();
  *(v21 + 168) = sub_26C614F98();
  *(v21 + 176) = sub_26C614F98();
  *(v21 + 184) = sub_26C614F98();
  *(v21 + 192) = sub_26C614F98();
  *(v21 + 200) = sub_26C614F98();
  *(v21 + 208) = sub_26C614F98();
  *(v21 + 216) = sub_26C614F98();
  *(v21 + 224) = sub_26C614F98();
  *(v21 + 232) = sub_26C614F98();
  *(v21 + 240) = sub_26C614F98();
  *(v21 + 248) = sub_26C614F98();
  *(v21 + 256) = sub_26C614F98();
  *(v21 + 264) = sub_26C614F98();
  v22 = sub_26C614EB8();

  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_26C61A090;
  *(v23 + 32) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.0];
  *(v23 + 40) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.0];
  *(v23 + 48) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.0];
  *(v23 + 56) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.0];
  *(v23 + 64) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.0];
  *(v23 + 72) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.0];
  *(v23 + 80) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.0];
  *(v23 + 88) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.0];
  *(v23 + 96) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.0];
  *(v23 + 104) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.0];
  *(v23 + 112) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.0];
  *(v23 + 120) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.0];
  *(v23 + 128) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.0];
  *(v23 + 136) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.0];
  *(v23 + 144) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.0];
  *(v23 + 152) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.0];
  *(v23 + 160) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.004];
  *(v23 + 168) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.027];
  *(v23 + 176) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.106];
  *(v23 + 184) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.267];
  *(v23 + 192) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.494];
  *(v23 + 200) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:?];
  *(v23 + 208) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.8];
  *(v23 + 216) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.725];
  *(v23 + 224) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.529];
  *(v23 + 232) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.294];
  *(v23 + 240) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.122];
  *(v23 + 248) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.039];
  *(v23 + 256) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.004];
  *(v23 + 264) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.0];
  v24 = sub_26C614EB8();

  [v19 setDefaultValuesWithName:v20 majorDiameter:30 ringWidth:v22 blurRadius:v24 sampleCount:2004.0 locations:170.0 colors:66.66 gradientLayerSize:{2403.96, 2403.96}];

  v25 = [v1 colorFillInitialCircleMask];
  v26 = sub_26C614E38();
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_26C61A090;
  *(v27 + 32) = sub_26C614F98();
  *(v27 + 40) = sub_26C614F98();
  *(v27 + 48) = sub_26C614F98();
  *(v27 + 56) = sub_26C614F98();
  *(v27 + 64) = sub_26C614F98();
  *(v27 + 72) = sub_26C614F98();
  *(v27 + 80) = sub_26C614F98();
  *(v27 + 88) = sub_26C614F98();
  *(v27 + 96) = sub_26C614F98();
  *(v27 + 104) = sub_26C614F98();
  *(v27 + 112) = sub_26C614F98();
  *(v27 + 120) = sub_26C614F98();
  *(v27 + 128) = sub_26C614F98();
  *(v27 + 136) = sub_26C614F98();
  *(v27 + 144) = sub_26C614F98();
  *(v27 + 152) = sub_26C614F98();
  *(v27 + 160) = sub_26C614F98();
  *(v27 + 168) = sub_26C614F98();
  *(v27 + 176) = sub_26C614F98();
  *(v27 + 184) = sub_26C614F98();
  *(v27 + 192) = sub_26C614F98();
  *(v27 + 200) = sub_26C614F98();
  *(v27 + 208) = sub_26C614F98();
  *(v27 + 216) = sub_26C614F98();
  *(v27 + 224) = sub_26C614F98();
  *(v27 + 232) = sub_26C614F98();
  *(v27 + 240) = sub_26C614F98();
  *(v27 + 248) = sub_26C614F98();
  *(v27 + 256) = sub_26C614F98();
  *(v27 + 264) = sub_26C614F98();
  v28 = sub_26C614EB8();

  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_26C61A090;
  *(v29 + 32) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v29 + 40) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v29 + 48) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v29 + 56) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v29 + 64) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v29 + 72) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v29 + 80) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v29 + 88) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v29 + 96) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v29 + 104) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v29 + 112) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v29 + 120) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v29 + 128) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v29 + 136) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v29 + 144) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v29 + 152) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v29 + 160) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v29 + 168) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v29 + 176) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v29 + 184) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v29 + 192) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v29 + 200) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.973];
  *(v29 + 208) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:?];
  *(v29 + 216) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.733];
  *(v29 + 224) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.506];
  *(v29 + 232) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.263];
  *(v29 + 240) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.11];
  *(v29 + 248) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.031];
  *(v29 + 256) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:?];
  *(v29 + 264) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.0];
  v30 = sub_26C614EB8();

  [v25 setDefaultValuesWithName:v26 majorDiameter:30 ringWidth:v28 blurRadius:v30 sampleCount:? locations:? colors:? gradientLayerSize:?];

  v31 = [v1 colorFillHintCircleMask];
  v32 = sub_26C614E38();
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_26C61A090;
  *(v33 + 32) = sub_26C614F98();
  *(v33 + 40) = sub_26C614F98();
  *(v33 + 48) = sub_26C614F98();
  *(v33 + 56) = sub_26C614F98();
  *(v33 + 64) = sub_26C614F98();
  *(v33 + 72) = sub_26C614F98();
  *(v33 + 80) = sub_26C614F98();
  *(v33 + 88) = sub_26C614F98();
  *(v33 + 96) = sub_26C614F98();
  *(v33 + 104) = sub_26C614F98();
  *(v33 + 112) = sub_26C614F98();
  *(v33 + 120) = sub_26C614F98();
  *(v33 + 128) = sub_26C614F98();
  *(v33 + 136) = sub_26C614F98();
  *(v33 + 144) = sub_26C614F98();
  *(v33 + 152) = sub_26C614F98();
  *(v33 + 160) = sub_26C614F98();
  *(v33 + 168) = sub_26C614F98();
  *(v33 + 176) = sub_26C614F98();
  *(v33 + 184) = sub_26C614F98();
  *(v33 + 192) = sub_26C614F98();
  *(v33 + 200) = sub_26C614F98();
  *(v33 + 208) = sub_26C614F98();
  *(v33 + 216) = sub_26C614F98();
  *(v33 + 224) = sub_26C614F98();
  *(v33 + 232) = sub_26C614F98();
  *(v33 + 240) = sub_26C614F98();
  *(v33 + 248) = sub_26C614F98();
  *(v33 + 256) = sub_26C614F98();
  *(v33 + 264) = sub_26C614F98();
  v34 = sub_26C614EB8();

  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_26C61A090;
  *(v35 + 32) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v35 + 40) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v35 + 48) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v35 + 56) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v35 + 64) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v35 + 72) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.996];
  *(v35 + 80) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:?];
  *(v35 + 88) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:?];
  *(v35 + 96) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.973];
  *(v35 + 104) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.953];
  *(v35 + 112) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.922];
  *(v35 + 120) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.882];
  *(v35 + 128) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.827];
  *(v35 + 136) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.757];
  *(v35 + 144) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.671];
  *(v35 + 152) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.588];
  *(v35 + 160) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.49];
  *(v35 + 168) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.4];
  *(v35 + 176) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.31];
  *(v35 + 184) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.231];
  *(v35 + 192) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.165];
  *(v35 + 200) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.114];
  *(v35 + 208) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.075];
  *(v35 + 216) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.047];
  *(v35 + 224) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:?];
  *(v35 + 232) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.012];
  *(v35 + 240) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.004];
  *(v35 + 248) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.004];
  *(v35 + 256) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.0];
  *(v35 + 264) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.0];
  v36 = sub_26C614EB8();

  [v31 setDefaultValuesWithName:v32 majorDiameter:30 ringWidth:v34 blurRadius:v36 sampleCount:196.5 locations:0.0 colors:25.0 gradientLayerSize:{346.5, 346.5}];

  v37 = [v1 colorFillFinalCircleMask];
  v38 = sub_26C614E38();
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_26C61A090;
  *(v39 + 32) = sub_26C614F98();
  *(v39 + 40) = sub_26C614F98();
  *(v39 + 48) = sub_26C614F98();
  *(v39 + 56) = sub_26C614F98();
  *(v39 + 64) = sub_26C614F98();
  *(v39 + 72) = sub_26C614F98();
  *(v39 + 80) = sub_26C614F98();
  *(v39 + 88) = sub_26C614F98();
  *(v39 + 96) = sub_26C614F98();
  *(v39 + 104) = sub_26C614F98();
  *(v39 + 112) = sub_26C614F98();
  *(v39 + 120) = sub_26C614F98();
  *(v39 + 128) = sub_26C614F98();
  *(v39 + 136) = sub_26C614F98();
  *(v39 + 144) = sub_26C614F98();
  *(v39 + 152) = sub_26C614F98();
  *(v39 + 160) = sub_26C614F98();
  *(v39 + 168) = sub_26C614F98();
  *(v39 + 176) = sub_26C614F98();
  *(v39 + 184) = sub_26C614F98();
  *(v39 + 192) = sub_26C614F98();
  *(v39 + 200) = sub_26C614F98();
  *(v39 + 208) = sub_26C614F98();
  *(v39 + 216) = sub_26C614F98();
  *(v39 + 224) = sub_26C614F98();
  *(v39 + 232) = sub_26C614F98();
  *(v39 + 240) = sub_26C614F98();
  *(v39 + 248) = sub_26C614F98();
  *(v39 + 256) = sub_26C614F98();
  *(v39 + 264) = sub_26C614F98();
  v40 = sub_26C614EB8();

  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_26C61A090;
  *(v41 + 32) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v41 + 40) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v41 + 48) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v41 + 56) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v41 + 64) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v41 + 72) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v41 + 80) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v41 + 88) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v41 + 96) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v41 + 104) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v41 + 112) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v41 + 120) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v41 + 128) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v41 + 136) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v41 + 144) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v41 + 152) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v41 + 160) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v41 + 168) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v41 + 176) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v41 + 184) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v41 + 192) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.996];
  *(v41 + 200) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:?];
  *(v41 + 208) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.894];
  *(v41 + 216) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:?];
  *(v41 + 224) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:?];
  *(v41 + 232) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:?];
  *(v41 + 240) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.122];
  *(v41 + 248) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.043];
  *(v41 + 256) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.008];
  *(v41 + 264) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.0];
  v42 = sub_26C614EB8();

  [v37 setDefaultValuesWithName:v38 majorDiameter:30 ringWidth:v40 blurRadius:v42 sampleCount:2004.0 locations:0.0 colors:? gradientLayerSize:?];

  v43 = [v1 edgeLightInitialCircleMask];
  v44 = sub_26C614E38();
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_26C61A090;
  *(v45 + 32) = sub_26C614F98();
  *(v45 + 40) = sub_26C614F98();
  *(v45 + 48) = sub_26C614F98();
  *(v45 + 56) = sub_26C614F98();
  *(v45 + 64) = sub_26C614F98();
  *(v45 + 72) = sub_26C614F98();
  *(v45 + 80) = sub_26C614F98();
  *(v45 + 88) = sub_26C614F98();
  *(v45 + 96) = sub_26C614F98();
  *(v45 + 104) = sub_26C614F98();
  *(v45 + 112) = sub_26C614F98();
  *(v45 + 120) = sub_26C614F98();
  *(v45 + 128) = sub_26C614F98();
  *(v45 + 136) = sub_26C614F98();
  *(v45 + 144) = sub_26C614F98();
  *(v45 + 152) = sub_26C614F98();
  *(v45 + 160) = sub_26C614F98();
  *(v45 + 168) = sub_26C614F98();
  *(v45 + 176) = sub_26C614F98();
  *(v45 + 184) = sub_26C614F98();
  *(v45 + 192) = sub_26C614F98();
  *(v45 + 200) = sub_26C614F98();
  *(v45 + 208) = sub_26C614F98();
  *(v45 + 216) = sub_26C614F98();
  *(v45 + 224) = sub_26C614F98();
  *(v45 + 232) = sub_26C614F98();
  *(v45 + 240) = sub_26C614F98();
  *(v45 + 248) = sub_26C614F98();
  *(v45 + 256) = sub_26C614F98();
  *(v45 + 264) = sub_26C614F98();
  v46 = sub_26C614EB8();

  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_26C61A090;
  *(v47 + 32) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v47 + 40) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v47 + 48) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v47 + 56) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v47 + 64) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v47 + 72) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v47 + 80) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v47 + 88) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v47 + 96) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v47 + 104) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v47 + 112) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v47 + 120) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v47 + 128) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v47 + 136) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v47 + 144) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v47 + 152) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v47 + 160) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v47 + 168) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v47 + 176) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.996];
  *(v47 + 184) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.984];
  *(v47 + 192) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.937];
  *(v47 + 200) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.847];
  *(v47 + 208) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.706];
  *(v47 + 216) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.506];
  *(v47 + 224) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.306];
  *(v47 + 232) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.157];
  *(v47 + 240) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:?];
  *(v47 + 248) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.024];
  *(v47 + 256) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.0];
  *(v47 + 264) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.0];
  v48 = sub_26C614EB8();

  [v43 setDefaultValuesWithName:v44 majorDiameter:30 ringWidth:v46 blurRadius:v48 sampleCount:196.0 locations:0.0 colors:8.33 gradientLayerSize:{245.98, 245.98}];

  v49 = [v1 edgeLightHintCircleMask];
  v50 = sub_26C614E38();
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_26C61A090;
  *(v51 + 32) = sub_26C614F98();
  *(v51 + 40) = sub_26C614F98();
  *(v51 + 48) = sub_26C614F98();
  *(v51 + 56) = sub_26C614F98();
  *(v51 + 64) = sub_26C614F98();
  *(v51 + 72) = sub_26C614F98();
  *(v51 + 80) = sub_26C614F98();
  *(v51 + 88) = sub_26C614F98();
  *(v51 + 96) = sub_26C614F98();
  *(v51 + 104) = sub_26C614F98();
  *(v51 + 112) = sub_26C614F98();
  *(v51 + 120) = sub_26C614F98();
  *(v51 + 128) = sub_26C614F98();
  *(v51 + 136) = sub_26C614F98();
  *(v51 + 144) = sub_26C614F98();
  *(v51 + 152) = sub_26C614F98();
  *(v51 + 160) = sub_26C614F98();
  *(v51 + 168) = sub_26C614F98();
  *(v51 + 176) = sub_26C614F98();
  *(v51 + 184) = sub_26C614F98();
  *(v51 + 192) = sub_26C614F98();
  *(v51 + 200) = sub_26C614F98();
  *(v51 + 208) = sub_26C614F98();
  *(v51 + 216) = sub_26C614F98();
  *(v51 + 224) = sub_26C614F98();
  *(v51 + 232) = sub_26C614F98();
  *(v51 + 240) = sub_26C614F98();
  *(v51 + 248) = sub_26C614F98();
  *(v51 + 256) = sub_26C614F98();
  *(v51 + 264) = sub_26C614F98();
  v52 = sub_26C614EB8();

  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_26C61A090;
  *(v53 + 32) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v53 + 40) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v53 + 48) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v53 + 56) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v53 + 64) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v53 + 72) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.992];
  *(v53 + 80) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.984];
  *(v53 + 88) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.976];
  *(v53 + 96) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.957];
  *(v53 + 104) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.929];
  *(v53 + 112) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.89];
  *(v53 + 120) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.843];
  *(v53 + 128) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.78];
  *(v53 + 136) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.706];
  *(v53 + 144) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.624];
  *(v53 + 152) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.537];
  *(v53 + 160) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.443];
  *(v53 + 168) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.353];
  *(v53 + 176) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.275];
  *(v53 + 184) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.204];
  *(v53 + 192) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.145];
  *(v53 + 200) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.102];
  *(v53 + 208) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.067];
  *(v53 + 216) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.039];
  *(v53 + 224) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.02];
  *(v53 + 232) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.008];
  *(v53 + 240) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.004];
  *(v53 + 248) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.0];
  *(v53 + 256) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.0];
  *(v53 + 264) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.0];
  v54 = sub_26C614EB8();

  [v49 setDefaultValuesWithName:v50 majorDiameter:30 ringWidth:v52 blurRadius:v54 sampleCount:275.0 locations:0.0 colors:37.5 gradientLayerSize:{500.0, 500.0}];

  v55 = [v1 edgeLightFinalCircleMask];
  v56 = sub_26C614E38();
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_26C61A090;
  *(v57 + 32) = sub_26C614F98();
  *(v57 + 40) = sub_26C614F98();
  *(v57 + 48) = sub_26C614F98();
  *(v57 + 56) = sub_26C614F98();
  *(v57 + 64) = sub_26C614F98();
  *(v57 + 72) = sub_26C614F98();
  *(v57 + 80) = sub_26C614F98();
  *(v57 + 88) = sub_26C614F98();
  *(v57 + 96) = sub_26C614F98();
  *(v57 + 104) = sub_26C614F98();
  *(v57 + 112) = sub_26C614F98();
  *(v57 + 120) = sub_26C614F98();
  *(v57 + 128) = sub_26C614F98();
  *(v57 + 136) = sub_26C614F98();
  *(v57 + 144) = sub_26C614F98();
  *(v57 + 152) = sub_26C614F98();
  *(v57 + 160) = sub_26C614F98();
  *(v57 + 168) = sub_26C614F98();
  *(v57 + 176) = sub_26C614F98();
  *(v57 + 184) = sub_26C614F98();
  *(v57 + 192) = sub_26C614F98();
  *(v57 + 200) = sub_26C614F98();
  *(v57 + 208) = sub_26C614F98();
  *(v57 + 216) = sub_26C614F98();
  *(v57 + 224) = sub_26C614F98();
  *(v57 + 232) = sub_26C614F98();
  *(v57 + 240) = sub_26C614F98();
  *(v57 + 248) = sub_26C614F98();
  *(v57 + 256) = sub_26C614F98();
  *(v57 + 264) = sub_26C614F98();
  v58 = sub_26C614EB8();

  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_26C61A090;
  *(v59 + 32) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v59 + 40) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v59 + 48) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v59 + 56) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v59 + 64) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v59 + 72) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v59 + 80) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v59 + 88) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v59 + 96) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v59 + 104) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v59 + 112) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v59 + 120) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v59 + 128) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v59 + 136) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v59 + 144) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v59 + 152) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v59 + 160) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v59 + 168) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v59 + 176) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v59 + 184) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v59 + 192) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.996];
  *(v59 + 200) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.969];
  *(v59 + 208) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.894];
  *(v59 + 216) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.737];
  *(v59 + 224) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.51];
  *(v59 + 232) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.282];
  *(v59 + 240) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.122];
  *(v59 + 248) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.043];
  *(v59 + 256) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.008];
  *(v59 + 264) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.0];
  v60 = sub_26C614EB8();

  [v55 setDefaultValuesWithName:v56 majorDiameter:30 ringWidth:v58 blurRadius:v60 sampleCount:2004.0 locations:0.0 colors:68.0 gradientLayerSize:{2412.0, 2412.0}];

  [v1 setAberrationMagnitudeX_];
  [v1 setAberrationMagnitudeY_];
  [v1 setAberrationBlurRadius_];
  [v1 setAberrationUseColorSaturate_];
  [v1 setAberrationColorSaturateAmount_];
  [v1 setAberrationUseEDR_];
  [v1 setAberrationEDRGain_];
  [v1 setAberrationUseColorBrightness_];
  [v1 setAberrationColorBrightness_];
  [v1 setAberrationUseColorMatrixMultiply_];
  [v1 setAberrationColorMatrixMultiplyFactor_];
  [v1 setAberrationFadeOutDelay_];
  [v1 setAberrationFadeOutDelayIPad_];
  v61 = [objc_allocWithZone(SUIAFluidBehaviorSettings) init];
  [v1 setAbberationFadeOutAnimationSettings_];

  v62 = [v1 abberationFadeOutAnimationSettings];
  [v62 setDefaultValues];

  v63 = [objc_allocWithZone(SUIAFluidBehaviorSettings) init];
  [v1 setAbberationCancelledFadeOutAnimationSettings_];

  v64 = [v1 abberationCancelledFadeOutAnimationSettings];
  [v64 setDefaultCriticallyDampedValues];
  sub_26C614F78();
  [v64 setFrameRateRange:3014657 highFrameRateReason:?];
  [v64 setBehaviorType_];
  v65 = sub_26C614E38();
  [v64 setName_];

  v66 = [v1 abberationCancelledFadeOutAnimationSettings];
  [v66 setDampingRatio_];

  v67 = [v1 abberationCancelledFadeOutAnimationSettings];
  [v67 setResponse_];

  [v1 setMeshSquareFinalSizeDiagonalRatio_];
  [v1 setMeshRectangularFinalShortDimensionRatio_];
  [v1 setMeshRectangularFinalLongDimensionRatio_];
  [v1 setMeshFinalProportionAcrossScreenLongEdge_];
  [v1 setMeshFinalProportionAcrossScreenShortEdge_];
  [v1 setMeshFinalProportionTowardsCenterOnLargeDisplays_];
  [v1 setMeshPointsEndTransitionDelay_];
  [v1 setUseSiriMeshForCapture_];
  v68 = [objc_allocWithZone(SUIAFluidBehaviorSettings) init];
  [v1 setMeshPointsAnimationSettings_];

  v69 = [v1 meshPointsAnimationSettings];
  [v69 setDefaultCriticallyDampedValues];
  sub_26C614F78();
  [v69 setFrameRateRange:3014657 highFrameRateReason:?];
  [v69 setBehaviorType_];
  v70 = sub_26C614E38();
  [v69 setName_];

  v71 = [v1 meshPointsAnimationSettings];
  [v71 setDampingRatio_];

  v72 = [v1 meshPointsAnimationSettings];
  [v72 setResponse_];

  v73 = [objc_allocWithZone(SUIAFluidBehaviorSettings) init];
  [v1 setMeshPositionAnimationSettings_];

  v74 = [v1 meshPositionAnimationSettings];
  [v74 setDefaultCriticallyDampedValues];
  sub_26C614F78();
  [v74 setFrameRateRange:3014657 highFrameRateReason:?];
  [v74 setBehaviorType_];
  v75 = sub_26C614E38();
  [v74 setName_];

  v76 = [v1 meshPositionAnimationSettings];
  [v76 setDampingRatio_];

  v77 = [v1 meshPositionAnimationSettings];
  [v77 setResponse_];

  v78 = [objc_allocWithZone(SUIAFluidBehaviorSettings) init];
  [v1 setMeshPointsCancelledAnimationSettings_];

  v79 = [v1 meshPointsCancelledAnimationSettings];
  [v79 setDefaultCriticallyDampedValues];
  sub_26C614F78();
  [v79 setFrameRateRange:3014657 highFrameRateReason:?];
  [v79 setBehaviorType_];
  v80 = sub_26C614E38();
  [v79 setName_];

  v81 = [v1 meshPointsCancelledAnimationSettings];
  [v81 setDampingRatio_];

  v82 = [v1 meshPointsCancelledAnimationSettings];
  [v82 setResponse_];

  [v1 setFillLightInitialIntensity_];
  [v1 setFillLightCaptureInitialIntensity_];
  [v1 setCaptureFillWhiteValue_];
  [v1 setFillLightFinalIntensity_];
  v83 = [objc_allocWithZone(SUIAFluidBehaviorSettings) init];
  [v1 setLightIntensityAnimationSettings_];

  v84 = [v1 lightIntensityAnimationSettings];
  [v84 setDefaultCriticallyDampedValues];
  sub_26C614F78();
  [v84 setFrameRateRange:3014657 highFrameRateReason:?];
  [v84 setBehaviorType_];
  v85 = sub_26C614E38();
  [v84 setName_];

  v86 = [v1 lightIntensityAnimationSettings];
  [v86 setDampingRatio_];

  v87 = [v1 lightIntensityAnimationSettings];
  [v87 setResponse_];

  v88 = [objc_allocWithZone(SUIAFluidBehaviorSettings) init];
  [v1 setLightIntensityCancelledAnimationSettings_];

  v89 = [v1 lightIntensityCancelledAnimationSettings];
  [v89 setDefaultCriticallyDampedValues];
  sub_26C614F78();
  [v89 setFrameRateRange:3014657 highFrameRateReason:?];
  [v89 setBehaviorType_];
  v90 = sub_26C614E38();
  [v89 setName_];

  v91 = [v1 lightIntensityCancelledAnimationSettings];
  [v91 setDampingRatio_];

  v92 = [v1 lightIntensityCancelledAnimationSettings];
  [v92 setResponse_];

  [v1 setFillLightColorSaturateAmount_];
  [v1 setFillLightColorBrightnessAmount_];
  [v1 setFillLightColorContrastAmount_];
  [v1 setFillLightIntensityFinalStateDelay_];
  v93 = [objc_allocWithZone(SUIAFluidBehaviorSettings) init];
  [v1 setCaptureHintAnimationSettings_];

  v94 = [v1 captureHintAnimationSettings];
  [v94 setDefaultCriticallyDampedValues];
  sub_26C614F78();
  [v94 setFrameRateRange:3014657 highFrameRateReason:?];
  [v94 setBehaviorType_];
  v95 = sub_26C614E38();
  [v94 setName_];

  v96 = [v1 captureHintAnimationSettings];
  [v96 setDefaultValues];

  v97 = [v1 captureHintAnimationSettings];
  [v97 setDampingRatio_];

  v98 = [v1 captureHintAnimationSettings];
  [v98 setResponse_];

  [v1 setCaptureHintRetargetImpulse_];
  [v1 setCaptureHintInterpolationProgress_];
  [v1 setCaptureHintMeshOffset_];
  [v1 setVisionIntelligenceHintRetargetImpulse_];
  [v1 setVisionIntelligenceHintInterpolationProgress_];
  [v1 setVisionIntelligenceHintFillLightInitialIntensity_];
  v99 = [v1 visionIntelligenceHintAnimationSettings];
  [v99 setDefaultCriticallyDampedValues];
  sub_26C614F78();
  [v99 setFrameRateRange:3014657 highFrameRateReason:?];
  [v99 setBehaviorType_];
  v100 = sub_26C614E38();
  [v99 setName_];

  v101 = [v1 visionIntelligenceHintAnimationSettings];
  [v101 setBehaviorType_];

  v102 = [v1 visionIntelligenceHintAnimationSettings];
  [v102 setResponse_];

  v103 = [v1 visionIntelligenceHintAnimationSettings];
  [v103 setDampingRatio_];

  [v1 setCaptureChromaticAberrationEnabled_];
  [v1 setCaptureMeshEnabled_];
  [v1 setCaptureFillLightType_];
  [v1 setSiriButtonChromaticAberrationEnabled_];
  [v1 setSiriButtonMeshEnabled_];
  [v1 setSiriButtonMeshEnabledLargeScreen_];
  [v1 setSiriButtonFillLightEnabled_];
  [v1 setSiriButtonEdgeLightEnabled_];
  [v1 setSiriEdgeChromaticAberrationEnabled_];
  [v1 setSiriEdgeMeshEnabled_];
  [v1 setSiriEdgeMeshEnabledLargeScreen_];
  [v1 setSiriEdgeFillLightEnabled_];
  [v1 setSiriEdgeEdgeLightEnabled_];
}

id sub_26C5DE878(uint64_t a1, const char **a2, const char **a3)
{
  if ([v3 shouldBehaveLikeLargeScreenIdiom_])
  {
    v6 = a2;
  }

  else
  {
    v6 = a3;
  }

  v7 = *v6;

  return [v3 v7];
}

double sub_26C5DE8EC(void *a1, uint64_t a2, uint64_t a3, SEL *a4, SEL *a5)
{
  v8 = a1;
  if ([v8 shouldBehaveLikeLargeScreenIdiom_])
  {
    v9 = a4;
  }

  else
  {
    v9 = a5;
  }

  [v8 *v9];
  v11 = v10;

  return v11;
}

id SUIAShockwavePrototypeSettings.chromaticAberrationFinalDonutMask(for:)(uint64_t a1)
{
  v2 = [v1 shouldBehaveLikeLargeScreenIdiom_];
  v3 = &selRef_chromaticAberrationFinalDonutMaskLargeScreen;
  if (!v2)
  {
    v3 = &selRef_chromaticAberrationFinalDonutMaskSmallScreen;
  }

  v4 = [v1 *v3];

  return v4;
}

void sub_26C5DEA40(uint64_t a1, uint64_t a2)
{
  sub_26C5D3144(a2, &v33);
  if (!*(&v34 + 1))
  {
    goto LABEL_29;
  }

  sub_26C5CC548(0, &qword_2804A5038);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v2 = v30;
  v3 = sub_26C614E38();
  v4 = &selRef_activate;
  v5 = [v30 valueForKey_];

  if (v5)
  {
    sub_26C614FE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
  }

  v33 = v30;
  v34 = v31;
  if (!*(&v31 + 1))
  {

LABEL_29:
    sub_26C5D31B4(&v33);
    return;
  }

  sub_26C5CC548(0, &qword_2804A5040);
  if (swift_dynamicCast())
  {
    v36 = 0;
    v37 = 0xE000000000000000;
    v26 = v28[0];
    v6 = [v28[0] _allKeys];
    if (v6)
    {
      v7 = v6;
      v8 = sub_26C614F28();

      v9 = 0;
      v10 = 1 << *(v8 + 32);
      v11 = -1;
      if (v10 < 64)
      {
        v11 = ~(-1 << v10);
      }

      v12 = v11 & *(v8 + 56);
      v13 = (v10 + 63) >> 6;
      while (v12)
      {
        v14 = v9;
LABEL_18:
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        sub_26C5E37AC(*(v8 + 48) + 40 * (v15 | (v14 << 6)), &v33);
        v30 = v33;
        v31 = v34;
        v32 = v35;
        if (swift_dynamicCast())
        {
          v16 = sub_26C614E38();

          v17 = [v26 v4[424]];

          if (v17)
          {
            sub_26C614FE8();
            swift_unknownObjectRelease();
          }

          else
          {
            *v28 = 0u;
            v29 = 0u;
          }

          v30 = *v28;
          v31 = v29;
          if (*(&v29 + 1))
          {
            type metadata accessor for SUIAShockwaveRadialMaskSettings(0);
            if (swift_dynamicCast())
            {
              v18 = [v27 computeDerivativeValuesAndGenerateSource];
              v25 = v2;
              v19 = sub_26C614E48();
              v20 = v4;
              v22 = v21;

              *&v30 = v19;
              *(&v30 + 1) = v22;
              v4 = v20;
              MEMORY[0x26D6A43B0](10, 0xE100000000000000);
              MEMORY[0x26D6A43B0](v30, *(&v30 + 1));

              v2 = v25;
            }

            v9 = v14;
          }

          else
          {
            sub_26C5D31B4(&v30);
            v9 = v14;
          }
        }

        else
        {
          v9 = v14;
        }
      }

      while (1)
      {
        v14 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v14 >= v13)
        {

          v23 = [objc_opt_self() generalPasteboard];
          v24 = sub_26C614E38();
          [v23 setString_];

          sub_26C614E68();

          return;
        }

        v12 = *(v8 + 56 + 8 * v14);
        ++v9;
        if (v12)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
  }
}

void _sSo30SUIAShockwavePrototypeSettingsC20SystemUIAnimationKitE24settingsControllerModuleSo8PTModuleCSgyFZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A55A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26C61A0A0;
  v1 = objc_opt_self();
  v2 = [v1 restoreDefaultSettingsButton];
  if (!v2)
  {
    __break(1u);
    goto LABEL_151;
  }

  v3 = v2;
  v4 = sub_26C5CC548(0, &qword_2804A5030);
  *(v0 + 56) = v4;
  *(v0 + 32) = v3;
  v5 = sub_26C614E38();
  v6 = sub_26C614E38();
  v7 = objc_opt_self();
  v8 = [v7 rowWithTitle:v5 valueKeyPath:v6];

  if (!v8)
  {
LABEL_151:
    __break(1u);
    goto LABEL_152;
  }

  if (![v8 between:0.0 and:100.0])
  {
LABEL_152:
    __break(1u);
    goto LABEL_153;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v385, &aBlock);
  v9 = sub_26C5CC548(0, &qword_2804A4D98);
  swift_dynamicCast();
  if (![*&v379[0] precision_])
  {
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v385, &aBlock);
  swift_dynamicCast();
  v10 = *&v379[0];

  *(v0 + 88) = v9;
  *(v0 + 64) = v10;
  v11 = sub_26C614E38();
  v12 = sub_26C614E38();
  v13 = [v7 rowWithTitle:v11 valueKeyPath:v12];

  if (!v13)
  {
LABEL_154:
    __break(1u);
    goto LABEL_155;
  }

  if (![v13 between:0.0 and:100.0])
  {
LABEL_155:
    __break(1u);
    goto LABEL_156;
  }

  v364 = v4;
  v366 = v1;
  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v385, &aBlock);
  swift_dynamicCast();
  if (![*&v379[0] precision_])
  {
LABEL_156:
    __break(1u);
    goto LABEL_157;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v385, &aBlock);
  swift_dynamicCast();
  v14 = *&v379[0];

  *(v0 + 120) = v9;
  *(v0 + 96) = v14;
  v15 = sub_26C614E38();
  v16 = sub_26C614E38();
  v17 = objc_opt_self();
  v18 = [v17 rowWithTitle:v15 valueKeyPath:v16];

  if (!v18)
  {
LABEL_157:
    __break(1u);
    goto LABEL_158;
  }

  v19 = objc_opt_self();
  v370 = sub_26C5CC548(0, &qword_2804A4DA0);
  *(v0 + 152) = v370;
  *(v0 + 128) = v18;
  v20 = sub_26C614EB8();

  v21 = sub_26C614E38();
  v372 = v19;
  v22 = [v19 sectionWithRows:v20 title:v21];

  if (!v22)
  {
LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  v368 = v17;
  v360 = v22;
  v383 = sub_26C5DEA40;
  v384 = 0;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v381 = sub_26C5E74CC;
  v382 = &block_descriptor;
  v23 = _Block_copy(&aBlock);

  v24 = [objc_opt_self() actionWithHandler_];
  _Block_release(v23);
  if (!v24)
  {
LABEL_159:
    __break(1u);
    goto LABEL_160;
  }

  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_26C619BB0;
  v26 = sub_26C614E38();
  v27 = sub_26C614E38();
  v28 = [v7 rowWithTitle:v26 valueKeyPath:v27];

  if (!v28)
  {
LABEL_160:
    __break(1u);
    goto LABEL_161;
  }

  v29 = [v28 precision_];

  if (!v29)
  {
LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(&aBlock, (v25 + 32));
  v30 = sub_26C614E38();
  v31 = sub_26C614E38();
  v32 = [v7 rowWithTitle:v30 valueKeyPath:v31];

  if (!v32)
  {
LABEL_162:
    __break(1u);
    goto LABEL_163;
  }

  v33 = [v32 precision_];

  if (!v33)
  {
LABEL_163:
    __break(1u);
    goto LABEL_164;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v385, (v25 + 64));
  v34 = sub_26C614E38();
  v35 = sub_26C614E38();
  v36 = [v7 rowWithTitle:v34 valueKeyPath:v35];

  if (!v36)
  {
LABEL_164:
    __break(1u);
    goto LABEL_165;
  }

  v37 = [v36 precision_];

  if (!v37)
  {
LABEL_165:
    __break(1u);
    goto LABEL_166;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v379, (v25 + 96));
  v38 = sub_26C614E38();
  v39 = sub_26C614E38();
  v40 = [v7 rowWithTitle:v38 valueKeyPath:v39];

  if (!v40)
  {
LABEL_166:
    __break(1u);
    goto LABEL_167;
  }

  v41 = [v40 precision_];

  if (!v41)
  {
LABEL_167:
    __break(1u);
    goto LABEL_168;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v378, (v25 + 128));
  v42 = sub_26C614E38();
  v43 = sub_26C614E38();
  v44 = [v7 rowWithTitle:v42 valueKeyPath:v43];

  if (!v44)
  {
LABEL_168:
    __break(1u);
    goto LABEL_169;
  }

  v45 = [v44 precision_];

  if (!v45)
  {
LABEL_169:
    __break(1u);
    goto LABEL_170;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v377, (v25 + 160));
  v46 = sub_26C614E38();
  v47 = sub_26C614E38();
  v48 = [v7 rowWithTitle:v46 valueKeyPath:v47];

  if (!v48)
  {
LABEL_170:
    __break(1u);
    goto LABEL_171;
  }

  v49 = [v48 precision_];

  if (!v49)
  {
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v376, (v25 + 192));
  v50 = sub_26C614E38();
  v51 = sub_26C614E38();
  v52 = objc_opt_self();
  v53 = [v52 rowWithTitle:v50 childSettingsKeyPath:v51];

  if (!v53)
  {
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  v54 = sub_26C5CC548(0, &qword_2804A4C68);
  *(v25 + 248) = v54;
  *(v25 + 224) = v53;
  v55 = sub_26C614E38();
  v56 = sub_26C614E38();
  v57 = [v52 rowWithTitle:v55 childSettingsKeyPath:v56];

  if (!v57)
  {
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  *(v25 + 280) = v54;
  *(v25 + 256) = v57;
  v58 = sub_26C614E38();
  v59 = sub_26C614E38();
  v60 = [v52 rowWithTitle:v58 childSettingsKeyPath:v59];

  if (!v60)
  {
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

  *(v25 + 312) = v54;
  *(v25 + 288) = v60;
  v61 = sub_26C614E38();
  v62 = sub_26C614E38();
  v63 = [v52 rowWithTitle:v61 childSettingsKeyPath:v62];

  if (!v63)
  {
LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  *(v25 + 344) = v54;
  *(v25 + 320) = v63;
  v64 = sub_26C614E38();
  v65 = sub_26C614E38();
  v66 = [v52 rowWithTitle:v64 childSettingsKeyPath:v65];

  if (!v66)
  {
LABEL_176:
    __break(1u);
    goto LABEL_177;
  }

  *(v25 + 376) = v54;
  *(v25 + 352) = v66;
  v67 = sub_26C614E38();
  v68 = sub_26C614E38();
  v69 = [v52 rowWithTitle:v67 childSettingsKeyPath:v68];

  if (!v69)
  {
LABEL_177:
    __break(1u);
    goto LABEL_178;
  }

  *(v25 + 408) = v54;
  *(v25 + 384) = v69;
  v70 = sub_26C614E38();
  v71 = sub_26C614E38();
  v72 = [v52 rowWithTitle:v70 childSettingsKeyPath:v71];

  if (!v72)
  {
LABEL_178:
    __break(1u);
    goto LABEL_179;
  }

  *(v25 + 440) = v54;
  *(v25 + 416) = v72;
  v73 = sub_26C614E38();
  v74 = sub_26C614E38();
  v75 = [v52 rowWithTitle:v73 childSettingsKeyPath:v74];

  if (!v75)
  {
LABEL_179:
    __break(1u);
    goto LABEL_180;
  }

  *(v25 + 472) = v54;
  *(v25 + 448) = v75;
  v76 = sub_26C614E38();
  v77 = sub_26C614E38();
  v78 = [v52 rowWithTitle:v76 childSettingsKeyPath:v77];

  if (!v78)
  {
LABEL_180:
    __break(1u);
    goto LABEL_181;
  }

  *(v25 + 504) = v54;
  *(v25 + 480) = v78;
  v79 = sub_26C614E38();
  v80 = sub_26C614E38();
  v81 = [v52 rowWithTitle:v79 childSettingsKeyPath:v80];

  if (!v81)
  {
LABEL_181:
    __break(1u);
    goto LABEL_182;
  }

  *(v25 + 536) = v54;
  *(v25 + 512) = v81;
  v82 = v24;
  v83 = sub_26C614E38();
  v84 = [v366 rowWithTitle:v83 action:v82];

  if (!v84)
  {
LABEL_182:
    __break(1u);
    goto LABEL_183;
  }

  v359 = v82;
  *(v25 + 568) = v364;
  *(v25 + 544) = v84;
  v85 = sub_26C614EB8();

  v86 = sub_26C614E38();
  v87 = [v372 sectionWithRows:v85 title:v86];

  v358 = v87;
  if (!v87)
  {
LABEL_183:
    __break(1u);
    goto LABEL_184;
  }

  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_26C61A0B0;
  v89 = sub_26C614E38();
  v90 = sub_26C614E38();
  v91 = [v7 rowWithTitle:v89 valueKeyPath:v90];

  if (!v91)
  {
LABEL_184:
    __break(1u);
    goto LABEL_185;
  }

  if (![v91 between:-100.0 and:100.0])
  {
LABEL_185:
    __break(1u);
    goto LABEL_186;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v385, &aBlock);
  swift_dynamicCast();
  v92 = *&v379[0];
  if (![*&v379[0] precision_])
  {
LABEL_186:
    __break(1u);
    goto LABEL_187;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v385, &aBlock);
  swift_dynamicCast();
  v93 = *&v379[0];

  *(v88 + 56) = v9;
  *(v88 + 32) = v93;
  v94 = sub_26C614E38();
  v95 = sub_26C614E38();
  v96 = [v7 rowWithTitle:v94 valueKeyPath:v95];

  if (!v96)
  {
LABEL_187:
    __break(1u);
    goto LABEL_188;
  }

  if (![v96 between:-100.0 and:100.0])
  {
LABEL_188:
    __break(1u);
    goto LABEL_189;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v385, &aBlock);
  swift_dynamicCast();
  v97 = *&v379[0];
  if (![*&v379[0] precision_])
  {
LABEL_189:
    __break(1u);
    goto LABEL_190;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v385, &aBlock);
  swift_dynamicCast();
  v98 = *&v379[0];

  *(v88 + 88) = v9;
  *(v88 + 64) = v98;
  v99 = sub_26C614E38();
  v100 = sub_26C614E38();
  v101 = [v7 rowWithTitle:v99 valueKeyPath:v100];

  if (!v101)
  {
LABEL_190:
    __break(1u);
    goto LABEL_191;
  }

  if (![v101 between:0.0 and:300.0])
  {
LABEL_191:
    __break(1u);
    goto LABEL_192;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v385, &aBlock);
  swift_dynamicCast();
  v102 = *&v379[0];
  if (![*&v379[0] precision_])
  {
LABEL_192:
    __break(1u);
    goto LABEL_193;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v385, &aBlock);
  swift_dynamicCast();
  v103 = *&v379[0];

  *(v88 + 120) = v9;
  *(v88 + 96) = v103;
  v104 = sub_26C614E38();
  v105 = sub_26C614E38();
  v106 = [v7 rowWithTitle:v104 valueKeyPath:v105];

  if (!v106)
  {
LABEL_193:
    __break(1u);
    goto LABEL_194;
  }

  if (![v106 between:0.0 and:3.0])
  {
LABEL_194:
    __break(1u);
    goto LABEL_195;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v385, &aBlock);
  swift_dynamicCast();
  v107 = *&v379[0];
  if (![*&v379[0] precision_])
  {
LABEL_195:
    __break(1u);
    goto LABEL_196;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v385, &aBlock);
  swift_dynamicCast();
  v108 = *&v379[0];

  *(v88 + 152) = v9;
  *(v88 + 128) = v108;
  v109 = sub_26C614E38();
  v110 = sub_26C614E38();
  v111 = [v7 rowWithTitle:v109 valueKeyPath:v110];

  if (!v111)
  {
LABEL_196:
    __break(1u);
    goto LABEL_197;
  }

  if (![v111 between:0.0 and:3.0])
  {
LABEL_197:
    __break(1u);
    goto LABEL_198;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v385, &aBlock);
  swift_dynamicCast();
  v112 = *&v379[0];
  if (![*&v379[0] precision_])
  {
LABEL_198:
    __break(1u);
    goto LABEL_199;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v385, &aBlock);
  swift_dynamicCast();
  v113 = *&v379[0];

  *(v88 + 184) = v9;
  *(v88 + 160) = v113;
  v114 = sub_26C614E38();
  v115 = sub_26C614E38();
  v116 = [v368 rowWithTitle:v114 valueKeyPath:v115];

  if (!v116)
  {
LABEL_199:
    __break(1u);
    goto LABEL_200;
  }

  *(v88 + 216) = v370;
  *(v88 + 192) = v116;
  v117 = sub_26C614E38();
  v118 = sub_26C614E38();
  v119 = [v7 rowWithTitle:v117 valueKeyPath:v118];

  if (!v119)
  {
LABEL_200:
    __break(1u);
    goto LABEL_201;
  }

  if (![v119 between:0.0 and:10.0])
  {
LABEL_201:
    __break(1u);
    goto LABEL_202;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v385, &aBlock);
  swift_dynamicCast();
  v120 = *&v379[0];
  if (![*&v379[0] precision_])
  {
LABEL_202:
    __break(1u);
    goto LABEL_203;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v385, &aBlock);
  swift_dynamicCast();
  v121 = *&v379[0];

  sub_26C5CC548(0, &qword_2804A4D80);
  v122 = sub_26C614F58();
  if (![v121 condition_])
  {
LABEL_203:
    __break(1u);
    goto LABEL_204;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v385, &aBlock);
  swift_dynamicCast();
  v123 = *&v379[0];

  *(v88 + 248) = v9;
  *(v88 + 224) = v123;
  v124 = sub_26C614E38();
  v125 = sub_26C614E38();
  v126 = [v368 rowWithTitle:v124 valueKeyPath:v125];

  if (!v126)
  {
LABEL_204:
    __break(1u);
    goto LABEL_205;
  }

  *(v88 + 280) = v370;
  *(v88 + 256) = v126;
  v127 = sub_26C614E38();
  v128 = sub_26C614E38();
  v129 = [v7 rowWithTitle:v127 valueKeyPath:v128];

  if (!v129)
  {
LABEL_205:
    __break(1u);
    goto LABEL_206;
  }

  if (![v129 between:0.0 and:10.0])
  {
LABEL_206:
    __break(1u);
    goto LABEL_207;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v385, &aBlock);
  swift_dynamicCast();
  v130 = *&v379[0];
  if (![*&v379[0] precision_])
  {
LABEL_207:
    __break(1u);
    goto LABEL_208;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v385, &aBlock);
  swift_dynamicCast();
  v131 = *&v379[0];

  v132 = sub_26C614F58();
  if (![v131 condition_])
  {
LABEL_208:
    __break(1u);
    goto LABEL_209;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v385, &aBlock);
  swift_dynamicCast();
  v133 = *&v379[0];

  *(v88 + 312) = v9;
  *(v88 + 288) = v133;
  v134 = sub_26C614E38();
  v135 = sub_26C614E38();
  v136 = [v368 rowWithTitle:v134 valueKeyPath:v135];

  if (!v136)
  {
LABEL_209:
    __break(1u);
    goto LABEL_210;
  }

  *(v88 + 344) = v370;
  *(v88 + 320) = v136;
  v137 = sub_26C614E38();
  v138 = sub_26C614E38();
  v139 = [v7 rowWithTitle:v137 valueKeyPath:v138];

  if (!v139)
  {
LABEL_210:
    __break(1u);
    goto LABEL_211;
  }

  if (![v139 between:0.0 and:10.0])
  {
LABEL_211:
    __break(1u);
    goto LABEL_212;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v385, &aBlock);
  swift_dynamicCast();
  v140 = *&v379[0];
  if (![*&v379[0] precision_])
  {
LABEL_212:
    __break(1u);
    goto LABEL_213;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v385, &aBlock);
  swift_dynamicCast();
  v141 = *&v379[0];

  v142 = sub_26C614F58();
  if (![v141 condition_])
  {
LABEL_213:
    __break(1u);
    goto LABEL_214;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v385, &aBlock);
  swift_dynamicCast();
  v143 = *&v379[0];

  *(v88 + 376) = v9;
  *(v88 + 352) = v143;
  v144 = sub_26C614E38();
  v145 = sub_26C614E38();
  v146 = [v368 rowWithTitle:v144 valueKeyPath:v145];

  if (!v146)
  {
LABEL_214:
    __break(1u);
    goto LABEL_215;
  }

  *(v88 + 408) = v370;
  *(v88 + 384) = v146;
  v147 = sub_26C614E38();
  v148 = sub_26C614E38();
  v149 = [v7 rowWithTitle:v147 valueKeyPath:v148];

  if (!v149)
  {
LABEL_215:
    __break(1u);
    goto LABEL_216;
  }

  if (![v149 between:0.0 and:10.0])
  {
LABEL_216:
    __break(1u);
    goto LABEL_217;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v385, &aBlock);
  swift_dynamicCast();
  v150 = *&v379[0];
  if (![*&v379[0] precision_])
  {
LABEL_217:
    __break(1u);
    goto LABEL_218;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v385, &aBlock);
  swift_dynamicCast();
  v151 = *&v379[0];

  v152 = sub_26C614F58();
  if (![v151 condition_])
  {
LABEL_218:
    __break(1u);
    goto LABEL_219;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v385, &aBlock);
  swift_dynamicCast();
  v153 = *&v379[0];

  *(v88 + 440) = v9;
  *(v88 + 416) = v153;
  v154 = sub_26C614E38();
  v155 = sub_26C614E38();
  v156 = [v52 rowWithTitle:v154 childSettingsKeyPath:v155];

  if (!v156)
  {
LABEL_219:
    __break(1u);
    goto LABEL_220;
  }

  *(v88 + 472) = v54;
  *(v88 + 448) = v156;
  v157 = sub_26C614E38();
  v158 = sub_26C614E38();
  v159 = [v52 &selRef:v157 setAberrationFadeOutDelay:v158 + 2];

  if (!v159)
  {
LABEL_220:
    __break(1u);
    goto LABEL_221;
  }

  *(v88 + 504) = v54;
  *(v88 + 480) = v159;
  v160 = sub_26C614EB8();

  v161 = sub_26C614E38();
  v162 = [v372 sectionWithRows:v160 title:v161];

  v357 = v162;
  if (!v162)
  {
LABEL_221:
    __break(1u);
    goto LABEL_222;
  }

  v163 = swift_allocObject();
  *(v163 + 16) = xmmword_26C61A0C0;
  v164 = sub_26C614E38();
  v165 = sub_26C614E38();
  v166 = [v7 rowWithTitle:v164 valueKeyPath:v165];

  if (!v166)
  {
LABEL_222:
    __break(1u);
    goto LABEL_223;
  }

  v167 = [v166 precision_];

  if (!v167)
  {
LABEL_223:
    __break(1u);
    goto LABEL_224;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(&aBlock, (v163 + 32));
  v168 = sub_26C614E38();
  v169 = sub_26C614E38();
  v170 = [v7 rowWithTitle:v168 valueKeyPath:v169];

  if (!v170)
  {
LABEL_224:
    __break(1u);
    goto LABEL_225;
  }

  v171 = [v170 precision_];

  if (!v171)
  {
LABEL_225:
    __break(1u);
    goto LABEL_226;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v385, (v163 + 64));
  v172 = sub_26C614E38();
  v173 = sub_26C614E38();
  v174 = [v7 rowWithTitle:v172 valueKeyPath:v173];

  if (!v174)
  {
LABEL_226:
    __break(1u);
    goto LABEL_227;
  }

  v175 = [v174 precision_];

  if (!v175)
  {
LABEL_227:
    __break(1u);
    goto LABEL_228;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v379, (v163 + 96));
  v176 = sub_26C614E38();
  v177 = sub_26C614E38();
  v178 = [v7 rowWithTitle:v176 valueKeyPath:v177];

  if (!v178)
  {
LABEL_228:
    __break(1u);
    goto LABEL_229;
  }

  v179 = [v178 precision_];

  if (!v179)
  {
LABEL_229:
    __break(1u);
    goto LABEL_230;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v378, (v163 + 128));
  v180 = sub_26C614E38();
  v181 = sub_26C614E38();
  v182 = [v7 rowWithTitle:v180 valueKeyPath:v181];

  if (!v182)
  {
LABEL_230:
    __break(1u);
    goto LABEL_231;
  }

  v183 = [v182 precision_];

  if (!v183)
  {
LABEL_231:
    __break(1u);
    goto LABEL_232;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v377, (v163 + 160));
  v184 = sub_26C614E38();
  v185 = sub_26C614E38();
  v186 = [v7 rowWithTitle:v184 valueKeyPath:v185];

  if (!v186)
  {
LABEL_232:
    __break(1u);
    goto LABEL_233;
  }

  if (![v186 between:0.0 and:1.0])
  {
LABEL_233:
    __break(1u);
    goto LABEL_234;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v375, v376);
  swift_dynamicCast();
  if (![v374 precision_])
  {
LABEL_234:
    __break(1u);
    goto LABEL_235;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v375, v376);
  swift_dynamicCast();

  *(v163 + 216) = v9;
  *(v163 + 192) = v374;
  v187 = sub_26C614E38();
  v188 = sub_26C614E38();
  v189 = [v368 rowWithTitle:v187 valueKeyPath:v188];

  if (!v189)
  {
LABEL_235:
    __break(1u);
    goto LABEL_236;
  }

  *(v163 + 248) = v370;
  *(v163 + 224) = v189;
  v190 = sub_26C614E38();
  v191 = sub_26C614E38();
  v192 = [v52 rowWithTitle:v190 childSettingsKeyPath:v191];

  if (!v192)
  {
LABEL_236:
    __break(1u);
    goto LABEL_237;
  }

  *(v163 + 280) = v54;
  *(v163 + 256) = v192;
  v193 = sub_26C614E38();
  v194 = sub_26C614E38();
  v195 = [v52 &selRef:v193 setAberrationFadeOutDelay:v194 + 2];

  if (!v195)
  {
LABEL_237:
    __break(1u);
    goto LABEL_238;
  }

  *(v163 + 312) = v54;
  *(v163 + 288) = v195;
  v196 = sub_26C614E38();
  v197 = sub_26C614E38();
  v198 = [v52 &selRef:v196 setAberrationFadeOutDelay:v197 + 2];

  if (!v198)
  {
LABEL_238:
    __break(1u);
    goto LABEL_239;
  }

  *(v163 + 344) = v54;
  *(v163 + 320) = v198;
  v199 = sub_26C614EB8();

  v200 = sub_26C614E38();
  v201 = [v372 sectionWithRows:v199 title:v200];

  v356 = v201;
  if (!v201)
  {
LABEL_239:
    __break(1u);
    goto LABEL_240;
  }

  v202 = swift_allocObject();
  *(v202 + 16) = xmmword_26C61A0D0;
  v203 = sub_26C614E38();
  v204 = sub_26C614E38();
  v205 = [v7 rowWithTitle:v203 valueKeyPath:v204];

  if (!v205)
  {
LABEL_240:
    __break(1u);
    goto LABEL_241;
  }

  if (![v205 between:0.0 and:1.0])
  {
LABEL_241:
    __break(1u);
    goto LABEL_242;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v385, &aBlock);
  swift_dynamicCast();
  v206 = *&v379[0];
  if (![*&v379[0] precision_])
  {
LABEL_242:
    __break(1u);
    goto LABEL_243;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v385, &aBlock);
  swift_dynamicCast();
  v207 = *&v379[0];

  *(v202 + 56) = v9;
  *(v202 + 32) = v207;
  v208 = sub_26C614E38();
  v209 = sub_26C614E38();
  v210 = [v7 rowWithTitle:v208 valueKeyPath:v209];

  if (!v210)
  {
LABEL_243:
    __break(1u);
    goto LABEL_244;
  }

  if (![v210 between:0.0 and:1.0])
  {
LABEL_244:
    __break(1u);
    goto LABEL_245;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v385, &aBlock);
  swift_dynamicCast();
  v211 = *&v379[0];
  if (![*&v379[0] precision_])
  {
LABEL_245:
    __break(1u);
    goto LABEL_246;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v385, &aBlock);
  swift_dynamicCast();
  v212 = *&v379[0];

  *(v202 + 88) = v9;
  *(v202 + 64) = v212;
  v213 = sub_26C614E38();
  v214 = sub_26C614E38();
  v215 = [v7 rowWithTitle:v213 valueKeyPath:v214];

  if (!v215)
  {
LABEL_246:
    __break(1u);
    goto LABEL_247;
  }

  if (![v215 between:0.0 and:1.0])
  {
LABEL_247:
    __break(1u);
    goto LABEL_248;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v385, &aBlock);
  swift_dynamicCast();
  v216 = *&v379[0];
  if (![*&v379[0] precision_])
  {
LABEL_248:
    __break(1u);
    goto LABEL_249;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v385, &aBlock);
  swift_dynamicCast();
  v217 = *&v379[0];

  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  sub_26C615038();

  *&aBlock = 0xD000000000000018;
  *(&aBlock + 1) = 0x800000026C61F3B0;
  *&v385[0] = 2;
  v218 = sub_26C615108();
  MEMORY[0x26D6A43B0](v218);

  v219 = sub_26C614F58();

  if (![v217 condition_])
  {
LABEL_249:
    __break(1u);
    goto LABEL_250;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v385, &aBlock);
  swift_dynamicCast();
  v220 = *&v379[0];

  *(v202 + 120) = v9;
  *(v202 + 96) = v220;
  v221 = sub_26C614E38();
  v222 = sub_26C614E38();
  v223 = [v7 rowWithTitle:v221 valueKeyPath:v222];

  if (!v223)
  {
LABEL_250:
    __break(1u);
    goto LABEL_251;
  }

  if (![v223 between:0.0 and:1.0])
  {
LABEL_251:
    __break(1u);
    goto LABEL_252;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v385, &aBlock);
  swift_dynamicCast();
  v224 = *&v379[0];
  if (![*&v379[0] precision_])
  {
LABEL_252:
    __break(1u);
    goto LABEL_253;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v385, &aBlock);
  swift_dynamicCast();
  v225 = *&v379[0];

  *(v202 + 152) = v9;
  *(v202 + 128) = v225;
  v226 = sub_26C614E38();
  v227 = sub_26C614E38();
  v228 = [v52 rowWithTitle:v226 childSettingsKeyPath:v227];

  if (!v228)
  {
LABEL_253:
    __break(1u);
    goto LABEL_254;
  }

  *(v202 + 184) = v54;
  *(v202 + 160) = v228;
  v229 = sub_26C614E38();
  v230 = sub_26C614E38();
  v231 = [v52 &selRef:v229 setAberrationFadeOutDelay:v230 + 2];

  if (!v231)
  {
LABEL_254:
    __break(1u);
    goto LABEL_255;
  }

  *(v202 + 216) = v54;
  *(v202 + 192) = v231;
  v232 = sub_26C614E38();
  v233 = sub_26C614E38();
  v234 = [v7 rowWithTitle:v232 valueKeyPath:v233];

  if (!v234)
  {
LABEL_255:
    __break(1u);
    goto LABEL_256;
  }

  if (![v234 between:0.0 and:10.0])
  {
LABEL_256:
    __break(1u);
    goto LABEL_257;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v385, &aBlock);
  swift_dynamicCast();
  v235 = *&v379[0];
  if (![*&v379[0] precision_])
  {
LABEL_257:
    __break(1u);
    goto LABEL_258;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v385, &aBlock);
  swift_dynamicCast();
  v236 = *&v379[0];

  *(v202 + 248) = v9;
  *(v202 + 224) = v236;
  v237 = sub_26C614E38();
  v238 = sub_26C614E38();
  v239 = [v7 rowWithTitle:v237 valueKeyPath:v238];

  if (!v239)
  {
LABEL_258:
    __break(1u);
    goto LABEL_259;
  }

  if (![v239 between:0.0 and:10.0])
  {
LABEL_259:
    __break(1u);
    goto LABEL_260;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v385, &aBlock);
  swift_dynamicCast();
  v240 = *&v379[0];
  if (![*&v379[0] precision_])
  {
LABEL_260:
    __break(1u);
    goto LABEL_261;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v385, &aBlock);
  swift_dynamicCast();
  v241 = *&v379[0];

  *(v202 + 280) = v9;
  *(v202 + 256) = v241;
  v242 = sub_26C614E38();
  v243 = sub_26C614E38();
  v244 = [v7 rowWithTitle:v242 valueKeyPath:v243];

  if (!v244)
  {
LABEL_261:
    __break(1u);
    goto LABEL_262;
  }

  if (![v244 between:0.0 and:10.0])
  {
LABEL_262:
    __break(1u);
    goto LABEL_263;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v385, &aBlock);
  swift_dynamicCast();
  v245 = *&v379[0];
  if (![*&v379[0] precision_])
  {
LABEL_263:
    __break(1u);
    goto LABEL_264;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v385, &aBlock);
  swift_dynamicCast();
  v246 = *&v379[0];

  *(v202 + 312) = v9;
  *(v202 + 288) = v246;
  v247 = sub_26C614EB8();

  v248 = sub_26C614E38();
  v249 = [v372 sectionWithRows:v247 title:v248];

  v365 = v249;
  if (!v249)
  {
LABEL_264:
    __break(1u);
    goto LABEL_265;
  }

  v250 = swift_allocObject();
  *(v250 + 16) = xmmword_26C61A0A0;
  v251 = sub_26C614E38();
  v252 = sub_26C614E38();
  v253 = [v7 rowWithTitle:v251 valueKeyPath:v252];

  if (!v253)
  {
LABEL_265:
    __break(1u);
    goto LABEL_266;
  }

  v254 = [v253 precision_];

  if (!v254)
  {
LABEL_266:
    __break(1u);
    goto LABEL_267;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(&aBlock, (v250 + 32));
  v255 = sub_26C614E38();
  v256 = sub_26C614E38();
  v257 = [v7 rowWithTitle:v255 valueKeyPath:v256];

  if (!v257)
  {
LABEL_267:
    __break(1u);
    goto LABEL_268;
  }

  v258 = [v257 precision_];

  if (!v258)
  {
LABEL_268:
    __break(1u);
    goto LABEL_269;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v385, (v250 + 64));
  v259 = sub_26C614E38();
  v260 = sub_26C614E38();
  v261 = [v7 rowWithTitle:v259 valueKeyPath:v260];

  if (!v261)
  {
LABEL_269:
    __break(1u);
    goto LABEL_270;
  }

  v262 = [v261 precision_];

  if (!v262)
  {
LABEL_270:
    __break(1u);
    goto LABEL_271;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v379, (v250 + 96));
  v263 = sub_26C614E38();
  v264 = sub_26C614E38();
  v265 = [v52 rowWithTitle:v263 childSettingsKeyPath:v264];

  if (!v265)
  {
LABEL_271:
    __break(1u);
    goto LABEL_272;
  }

  *(v250 + 152) = v54;
  *(v250 + 128) = v265;
  v266 = sub_26C614EB8();

  v267 = sub_26C614E38();
  v268 = [v372 sectionWithRows:v266 title:v267];

  v355 = v268;
  if (!v268)
  {
LABEL_272:
    __break(1u);
    goto LABEL_273;
  }

  v269 = swift_allocObject();
  *(v269 + 16) = xmmword_26C61A0A0;
  v270 = sub_26C614E38();
  v271 = sub_26C614E38();
  v272 = [v52 rowWithTitle:v270 childSettingsKeyPath:v271];

  if (!v272)
  {
LABEL_273:
    __break(1u);
    goto LABEL_274;
  }

  *(v269 + 56) = v54;
  *(v269 + 32) = v272;
  v273 = sub_26C614E38();
  v274 = sub_26C614E38();
  v275 = [v7 rowWithTitle:v273 valueKeyPath:v274];

  if (!v275)
  {
LABEL_274:
    __break(1u);
    goto LABEL_275;
  }

  v276 = [v275 precision_];

  if (!v276)
  {
LABEL_275:
    __break(1u);
    goto LABEL_276;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(&aBlock, (v269 + 64));
  v277 = sub_26C614E38();
  v278 = sub_26C614E38();
  v279 = [v7 rowWithTitle:v277 valueKeyPath:v278];

  if (!v279)
  {
LABEL_276:
    __break(1u);
    goto LABEL_277;
  }

  v280 = [v279 precision_];

  if (!v280)
  {
LABEL_277:
    __break(1u);
    goto LABEL_278;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v385, (v269 + 96));
  v281 = sub_26C614E38();
  v282 = sub_26C614E38();
  v283 = [v7 rowWithTitle:v281 valueKeyPath:v282];

  if (!v283)
  {
LABEL_278:
    __break(1u);
    goto LABEL_279;
  }

  v284 = [v283 precision_];

  if (!v284)
  {
LABEL_279:
    __break(1u);
    goto LABEL_280;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v379, (v269 + 128));
  v285 = sub_26C614EB8();

  v286 = sub_26C614E38();
  v287 = [v372 sectionWithRows:v285 title:v286];

  if (!v287)
  {
LABEL_280:
    __break(1u);
    goto LABEL_281;
  }

  v288 = swift_allocObject();
  *(v288 + 16) = xmmword_26C61A0E0;
  v289 = sub_26C614E38();
  v290 = sub_26C614E38();
  v291 = [v368 rowWithTitle:v289 valueKeyPath:v290];

  if (!v291)
  {
LABEL_281:
    __break(1u);
    goto LABEL_282;
  }

  *(v288 + 56) = v370;
  *(v288 + 32) = v291;
  v292 = sub_26C614E38();
  v293 = sub_26C614E38();
  v294 = [v368 rowWithTitle:v292 valueKeyPath:v293];

  if (!v294)
  {
LABEL_282:
    __break(1u);
    goto LABEL_283;
  }

  *(v288 + 88) = v370;
  *(v288 + 64) = v294;
  v295 = sub_26C614E38();
  v296 = sub_26C614E38();
  v297 = [objc_opt_self() rowWithTitle:v295 valueKeyPath:v296];

  if (!v297)
  {
LABEL_283:
    __break(1u);
    goto LABEL_284;
  }

  v298 = swift_allocObject();
  *(v298 + 16) = xmmword_26C61A0E0;
  *(v298 + 32) = 0;
  v299 = MEMORY[0x277D83B88];
  *(v298 + 56) = MEMORY[0x277D83B88];
  *(v298 + 64) = 1;
  *(v298 + 120) = v299;
  *(v298 + 88) = v299;
  *(v298 + 96) = 2;
  v300 = sub_26C614EB8();

  v301 = swift_allocObject();
  *(v301 + 16) = xmmword_26C61A0E0;
  v302 = MEMORY[0x277D837D0];
  *(v301 + 32) = 1701736270;
  *(v301 + 40) = 0xE400000000000000;
  *(v301 + 56) = v302;
  strcpy((v301 + 64), "Intelligence");
  *(v301 + 77) = 0;
  *(v301 + 78) = -5120;
  *(v301 + 120) = v302;
  *(v301 + 88) = v302;
  *(v301 + 96) = 0x6574696857;
  *(v301 + 104) = 0xE500000000000000;
  v303 = sub_26C614EB8();

  v304 = [v297 possibleValues:v300 titles:v303];

  if (!v304)
  {
LABEL_284:
    __break(1u);
    goto LABEL_285;
  }

  v363 = v287;
  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(&aBlock, (v288 + 96));
  v305 = sub_26C614EB8();

  v306 = sub_26C614E38();
  v307 = [v372 sectionWithRows:v305 title:v306];

  if (!v307)
  {
LABEL_285:
    __break(1u);
    goto LABEL_286;
  }

  v308 = swift_allocObject();
  *(v308 + 16) = xmmword_26C61A0F0;
  v309 = sub_26C614E38();
  v310 = sub_26C614E38();
  v311 = [v368 rowWithTitle:v309 valueKeyPath:v310];

  if (!v311)
  {
LABEL_286:
    __break(1u);
    goto LABEL_287;
  }

  *(v308 + 56) = v370;
  *(v308 + 32) = v311;
  v312 = sub_26C614E38();
  v313 = sub_26C614E38();
  v314 = [v368 rowWithTitle:v312 valueKeyPath:v313];

  if (!v314)
  {
LABEL_287:
    __break(1u);
    goto LABEL_288;
  }

  *(v308 + 88) = v370;
  *(v308 + 64) = v314;
  v315 = sub_26C614E38();
  v316 = sub_26C614E38();
  v317 = [v368 rowWithTitle:v315 valueKeyPath:v316];

  if (!v317)
  {
LABEL_288:
    __break(1u);
    goto LABEL_289;
  }

  v361 = v307;
  *(v308 + 120) = v370;
  *(v308 + 96) = v317;
  v318 = sub_26C614E38();
  v319 = sub_26C614E38();
  v320 = [v368 rowWithTitle:v318 valueKeyPath:v319];

  if (!v320)
  {
LABEL_289:
    __break(1u);
    goto LABEL_290;
  }

  *(v308 + 152) = v370;
  *(v308 + 128) = v320;
  v321 = sub_26C614E38();
  v322 = sub_26C614E38();
  v323 = [v368 rowWithTitle:v321 valueKeyPath:v322];

  if (!v323)
  {
LABEL_290:
    __break(1u);
    goto LABEL_291;
  }

  *(v308 + 184) = v370;
  *(v308 + 160) = v323;
  v324 = sub_26C614EB8();

  v325 = sub_26C614E38();
  v326 = [v372 sectionWithRows:v324 title:v325];

  if (!v326)
  {
LABEL_291:
    __break(1u);
    goto LABEL_292;
  }

  v327 = swift_allocObject();
  *(v327 + 16) = xmmword_26C61A0F0;
  v328 = sub_26C614E38();
  v329 = sub_26C614E38();
  v330 = [v368 rowWithTitle:v328 valueKeyPath:v329];

  if (!v330)
  {
LABEL_292:
    __break(1u);
    goto LABEL_293;
  }

  *(v327 + 56) = v370;
  *(v327 + 32) = v330;
  v331 = sub_26C614E38();
  v332 = sub_26C614E38();
  v333 = [v368 rowWithTitle:v331 valueKeyPath:v332];

  if (!v333)
  {
LABEL_293:
    __break(1u);
    goto LABEL_294;
  }

  *(v327 + 88) = v370;
  *(v327 + 64) = v333;
  v334 = sub_26C614E38();
  v335 = sub_26C614E38();
  v336 = [v368 rowWithTitle:v334 valueKeyPath:v335];

  if (!v336)
  {
LABEL_294:
    __break(1u);
    goto LABEL_295;
  }

  *(v327 + 120) = v370;
  *(v327 + 96) = v336;
  v337 = sub_26C614E38();
  v338 = sub_26C614E38();
  v339 = [v368 rowWithTitle:v337 valueKeyPath:v338];

  if (!v339)
  {
LABEL_295:
    __break(1u);
    goto LABEL_296;
  }

  *(v327 + 152) = v370;
  *(v327 + 128) = v339;
  v340 = sub_26C614E38();
  v341 = sub_26C614E38();
  v342 = [v368 rowWithTitle:v340 valueKeyPath:v341];

  if (!v342)
  {
LABEL_296:
    __break(1u);
    goto LABEL_297;
  }

  *(v327 + 184) = v370;
  *(v327 + 160) = v342;
  v343 = sub_26C614EB8();

  v344 = sub_26C614E38();
  v345 = [v372 sectionWithRows:v343 title:v344];

  if (v345)
  {
    v346 = swift_allocObject();
    *(v346 + 16) = xmmword_26C61A0C0;
    v347 = sub_26C5CC548(0, &qword_2804A4C70);
    *(v346 + 32) = v360;
    *(v346 + 56) = v347;
    *(v346 + 64) = v358;
    *(v346 + 88) = v347;
    *(v346 + 96) = v357;
    *(v346 + 120) = v347;
    *(v346 + 128) = v356;
    *(v346 + 152) = v347;
    *(v346 + 160) = v365;
    *(v346 + 184) = v347;
    *(v346 + 192) = v363;
    *(v346 + 216) = v347;
    *(v346 + 224) = v355;
    *(v346 + 248) = v347;
    *(v346 + 256) = v361;
    *(v346 + 280) = v347;
    *(v346 + 288) = v326;
    *(v346 + 344) = v347;
    *(v346 + 312) = v347;
    *(v346 + 320) = v345;
    v362 = v360;
    v373 = v358;
    v369 = v357;
    v367 = v356;
    v348 = v365;
    v371 = v363;
    v349 = v355;
    v350 = v361;
    v351 = v326;
    v352 = v345;
    v353 = sub_26C614E38();
    v354 = sub_26C614EB8();

    [v372 moduleWithTitle:v353 contents:v354];

    return;
  }

LABEL_297:
  __break(1u);
}
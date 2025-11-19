@interface CASupportsAnimationForKey
@end

@implementation CASupportsAnimationForKey

uint64_t ___CASupportsAnimationForKey_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v1 = qword_1EA9947A0;
  qword_1EA9947A0 = v0;

  [qword_1EA9947A0 addObject:@"bounds"];
  [qword_1EA9947A0 addObject:@"opacity"];
  [qword_1EA9947A0 addObject:@"position"];
  [qword_1EA9947A0 addObject:@"transform"];
  [qword_1EA9947A0 addObject:@"contentsRect"];
  [qword_1EA9947A0 addObject:@"contentsCenter"];
  [qword_1EA9947A0 addObject:@"backgroundColor"];
  [qword_1EA9947A0 addObject:@"contentsMultiplyColor"];
  [qword_1EA9947A0 addObject:@"filters.opacityPair.inputAmount"];
  [qword_1EA9947A0 addObject:@"filters.distanceField.offset"];
  if (dyld_program_sdk_at_least())
  {
    [qword_1EA9947A0 addObject:@"cornerRadius"];
    [qword_1EA9947A0 addObject:@"scale"];
    [qword_1EA9947A0 addObject:@"anchorPoint"];
  }

  if (dyld_program_sdk_at_least())
  {
    [qword_1EA9947A0 addObject:@"transform3D"];
    [qword_1EA9947A0 addObject:@"shadowOpacity"];
  }

  if (dyld_program_sdk_at_least())
  {
    [qword_1EA9947A0 addObject:@"borderWidth"];
    [qword_1EA9947A0 addObject:@"borderColor"];
    [qword_1EA9947A0 addObject:@"shadowColor"];
    [qword_1EA9947A0 addObject:@"shadowOffset"];
    [qword_1EA9947A0 addObject:@"shadowRadius"];
  }

  if (dyld_program_sdk_at_least())
  {
    [qword_1EA9947A0 addObject:@"meshTransform"];
    [qword_1EA9947A0 addObject:@"sublayerTransform"];
    [qword_1EA9947A0 addObject:@"shadowPath"];
    [qword_1EA9947A0 addObject:@"zPosition"];
    [qword_1EA9947A0 addObject:@"anchorPointZ"];
    [qword_1EA9947A0 addObject:@"separatedOptions.tintAmount"];
    [qword_1EA9947A0 addObject:@"separatedOptions.clippingExtents.outsetMinX"];
    [qword_1EA9947A0 addObject:@"separatedOptions.clippingExtents.outsetMaxX"];
    [qword_1EA9947A0 addObject:@"separatedOptions.clippingExtents.outsetMinY"];
    [qword_1EA9947A0 addObject:@"separatedOptions.clippingExtents.outsetMaxY"];
    [qword_1EA9947A0 addObject:@"separatedOptions.clippingExtents.outsetMinZ"];
    [qword_1EA9947A0 addObject:@"separatedOptions.clippingExtents.outsetMaxZ"];
    [qword_1EA9947A0 addObject:@"cornerRadii"];
    [qword_1EA9947A0 addObject:@"path"];
    [qword_1EA9947A0 addObject:@"fillColor"];
    [qword_1EA9947A0 addObject:@"strokeColor"];
    [qword_1EA9947A0 addObject:@"strokeStart"];
    [qword_1EA9947A0 addObject:@"strokeEnd"];
    [qword_1EA9947A0 addObject:@"lineWidth"];
    [qword_1EA9947A0 addObject:@"miterLimit"];
    [qword_1EA9947A0 addObject:@"lineDashPhase"];
    [qword_1EA9947A0 addObject:@"colors"];
    [qword_1EA9947A0 addObject:@"locations"];
    [qword_1EA9947A0 addObject:@"startPoint"];
    [qword_1EA9947A0 addObject:@"endPoint"];
  }

  if (dyld_program_sdk_at_least())
  {
    [qword_1EA9947A0 addObject:@"separatedOptions.pointsPerMeter"];
  }

  result = dyld_program_sdk_at_least();
  if (result)
  {
    [qword_1EA9947A0 addObject:@"filters.vibrantColorMatrix.inputColorMatrix"];
    [qword_1EA9947A0 addObject:@"filters.displacementMap.inputAmount"];
    [qword_1EA9947A0 addObject:@"smoothness"];
    [qword_1EA9947A0 addObject:@"gaussianRadius"];
    [qword_1EA9947A0 addObject:@"filters.glassBackground.inputShadowOffset"];
    [qword_1EA9947A0 addObject:@"filters.glassBackground.inputShadowAmount"];
    [qword_1EA9947A0 addObject:@"filters.glassBackground.inputShadowHeight"];
    [qword_1EA9947A0 addObject:@"filters.glassBackground.inputShadowDistanceOffset"];
    [qword_1EA9947A0 addObject:@"filters.glassBackground.inputShadowBlurRadius"];
    [qword_1EA9947A0 addObject:@"filters.glassBackground.inputShadowRadius"];
    [qword_1EA9947A0 addObject:@"filters.glassBackground.inputShadowColorMatrixBlack"];
    [qword_1EA9947A0 addObject:@"filters.glassBackground.inputShadowColorMatrixWhite"];
    [qword_1EA9947A0 addObject:@"filters.glassBackground.inputShadowColorMatrixSaturation"];
    [qword_1EA9947A0 addObject:@"filters.glassBackground.inputShadowColorMatrixFillColor"];
    [qword_1EA9947A0 addObject:@"filters.glassBackground.inputShadowOpacity"];
    [qword_1EA9947A0 addObject:@"filters.glassBackground.inputShadowVibrancyContribution"];
    [qword_1EA9947A0 addObject:@"filters.glassBackground.inputBlurRadius"];
    [qword_1EA9947A0 addObject:@"filters.glassBackground.inputBlurDistance0"];
    [qword_1EA9947A0 addObject:@"filters.glassBackground.inputBlurDistance1"];
    [qword_1EA9947A0 addObject:@"filters.glassBackground.inputBlurDistance2"];
    [qword_1EA9947A0 addObject:@"filters.glassBackground.inputBlurDistance3"];
    [qword_1EA9947A0 addObject:@"filters.glassBackground.inputBlurDistance4"];
    [qword_1EA9947A0 addObject:@"filters.glassBackground.inputBlurOpacity0"];
    [qword_1EA9947A0 addObject:@"filters.glassBackground.inputBlurOpacity1"];
    [qword_1EA9947A0 addObject:@"filters.glassBackground.inputBlurOpacity2"];
    [qword_1EA9947A0 addObject:@"filters.glassBackground.inputBlurOpacity3"];
    [qword_1EA9947A0 addObject:@"filters.glassBackground.inputBlurOpacity4"];
    [qword_1EA9947A0 addObject:@"filters.glassBackground.inputClamp"];
    [qword_1EA9947A0 addObject:@"filters.glassBackground.inputClampPreserveHue"];
    [qword_1EA9947A0 addObject:@"filters.glassBackground.inputInnerRefractionAmount"];
    [qword_1EA9947A0 addObject:@"filters.glassBackground.inputInnerRefractionHeight"];
    [qword_1EA9947A0 addObject:@"filters.glassBackground.inputOuterRefractionAmount"];
    [qword_1EA9947A0 addObject:@"filters.glassBackground.inputOuterRefractionHeight"];
    [qword_1EA9947A0 addObject:@"filters.glassBackground.inputRefractionDistance0"];
    [qword_1EA9947A0 addObject:@"filters.glassBackground.inputRefractionDistance1"];
    [qword_1EA9947A0 addObject:@"filters.glassBackground.inputRefractionOpacity"];
    [qword_1EA9947A0 addObject:@"filters.glassBackground.inputFaceOpacity"];
    [qword_1EA9947A0 addObject:@"filters.glassBackground.inputFaceColorMatrixBlack"];
    [qword_1EA9947A0 addObject:@"filters.glassBackground.inputFaceColorMatrixWhite"];
    [qword_1EA9947A0 addObject:@"filters.glassBackground.inputFaceColorMatrixSaturation"];
    [qword_1EA9947A0 addObject:@"filters.glassBackground.inputFaceColorMatrixFillColor"];
    [qword_1EA9947A0 addObject:@"filters.glassBackground.inputBleedAmount"];
    [qword_1EA9947A0 addObject:@"filters.glassBackground.inputBleedHeight"];
    [qword_1EA9947A0 addObject:@"filters.glassBackground.inputBleedBlurRadius"];
    [qword_1EA9947A0 addObject:@"filters.glassBackground.inputBleedOpacity"];
    [qword_1EA9947A0 addObject:@"filters.glassBackground.inputBleedDistance0"];
    [qword_1EA9947A0 addObject:@"filters.glassBackground.inputBleedDistance1"];
    [qword_1EA9947A0 addObject:@"filters.glassBackground.inputBleedColorMatrixBlack"];
    [qword_1EA9947A0 addObject:@"filters.glassBackground.inputBleedColorMatrixWhite"];
    [qword_1EA9947A0 addObject:@"filters.glassBackground.inputBleedColorMatrixSaturation"];
    [qword_1EA9947A0 addObject:@"filters.glassBackground.inputBleedColorMatrixFillColor"];
    [qword_1EA9947A0 addObject:@"filters.glassBackground.inputBleedDarkenBlend"];
    [qword_1EA9947A0 addObject:@"filters.glassBackground.inputMaxHeadroom"];
    [qword_1EA9947A0 addObject:@"filters.glassBackground.inputSDRGradientDistance0"];
    [qword_1EA9947A0 addObject:@"filters.glassBackground.inputSDRGradientDistance1"];
    [qword_1EA9947A0 addObject:@"filters.glassBackground.inputSDRShadowOpacity"];
    [qword_1EA9947A0 addObject:@"filters.glassBackground.inputSDRHoldingToneWhite"];
    [qword_1EA9947A0 addObject:@"filters.glassForeground.inputRefractionAmount"];
    [qword_1EA9947A0 addObject:@"filters.glassForeground.inputRefractionAmount"];
    [qword_1EA9947A0 addObject:@"filters.glassForeground.inputRefractionHeight"];
    [qword_1EA9947A0 addObject:@"filters.glassForeground.inputRefractionOffset"];
    [qword_1EA9947A0 addObject:@"filters.glassForeground.inputAberrationAmount"];
    [qword_1EA9947A0 addObject:@"filters.glassForeground.inputAberrationHeight"];
    [qword_1EA9947A0 addObject:@"filters.glassForeground.inputAberrationOffset"];
    [qword_1EA9947A0 addObject:@"filters.glassForeground.inputAberrationAngle"];
    [qword_1EA9947A0 addObject:@"filters.glassForeground.inputEdgeStart"];
    [qword_1EA9947A0 addObject:@"filters.glassForeground.inputEdgeEnd"];
    [qword_1EA9947A0 addObject:@"filters.glassForeground.inputEdgeOpacityStart"];
    [qword_1EA9947A0 addObject:@"filters.glassForeground.inputEdgeOpacityEnd"];
    [qword_1EA9947A0 addObject:@"effect.colors"];
    [qword_1EA9947A0 addObject:@"effect.distances"];
    [qword_1EA9947A0 addObject:@"effect.interpolations"];
    [qword_1EA9947A0 addObject:@"effect.color"];
    [qword_1EA9947A0 addObject:@"effect.height"];
    [qword_1EA9947A0 addObject:@"effect.angle"];
    [qword_1EA9947A0 addObject:@"effect.spread"];
    [qword_1EA9947A0 addObject:@"effect.amount"];
    [qword_1EA9947A0 addObject:@"effect.curvature"];
    [qword_1EA9947A0 addObject:@"effect.maskOffset"];
    [qword_1EA9947A0 addObject:@"effect.offset"];
    [qword_1EA9947A0 addObject:@"effect.minimum"];
    [qword_1EA9947A0 addObject:@"effect.maximum"];
    [qword_1EA9947A0 addObject:@"marginWidth"];
    v3 = qword_1EA9947A0;

    return [v3 addObject:@"sourceLayerOpacityScale"];
  }

  return result;
}

@end
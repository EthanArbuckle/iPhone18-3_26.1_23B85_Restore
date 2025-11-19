@interface VGFrameSelectorOptions
+ (id)optionsWithCaptureOptions:(id)a3;
- (VGFrameSelectorFrustumOffsets)frontPoseFrustumOffsets;
- (VGFrameSelectorFrustumOffsets)pitchPosesFrustumOffsets;
- (VGFrameSelectorFrustumOffsets)yawPosesFrustumOffsets;
- (void)_setOptionsForFrontPose:(id)a3;
- (void)_setOptionsForPitchPoses:(id)a3;
- (void)_setOptionsForYawPoses:(id)a3;
@end

@implementation VGFrameSelectorOptions

- (void)_setOptionsForFrontPose:(id)a3
{
  v26 = a3;
  [(VGFrameSelectorOptions *)self setDetectFrontPose:1];
  v4 = [v26 frontPoseSelectionFrustum];
  [v4 yawOffsetLeft];
  v6 = v5;
  v7 = [v26 frontPoseSelectionFrustum];
  [v7 yawOffsetRight];
  v9 = v8;
  v10 = [v26 frontPoseSelectionFrustum];
  [v10 pitchOffsetTop];
  v12 = v11;
  v13 = [v26 frontPoseSelectionFrustum];
  [v13 pitchOffsetBottom];
  LODWORD(v15) = v14;
  LODWORD(v16) = v6;
  LODWORD(v17) = v9;
  LODWORD(v18) = v12;
  [(VGFrameSelectorOptions *)self setFrontPoseFrustumOffsets:v16, v17, v18, v15];

  v19 = [VGExpressionFilterLegacy getFrontExpressionFiltersForCaptureOptions:v26];
  [(VGFrameSelectorOptions *)self setFrontExpressionFilters:v19];

  if ([v26 useFovMarginsFilterFrontPose])
  {
    v20 = objc_opt_new();
    [v26 topMarginHeadRatio];
    [v20 setTopMarginHeadRatio:?];
    [v26 leftMarginFrontPoseHeadRatio];
    [v20 setLeftMarginHeadRatio:?];
    [v26 rightMarginFrontPoseHeadRatio];
    [v20 setRightMarginHeadRatio:?];
    [v26 bottomMarginHeadRatio];
    v22 = v21;
    [v26 bottomMarginFrontPoseDelta];
    *&v24 = v22 + v23;
    [v20 setBottomMarginHeadRatio:v24];
    [(VGFrameSelectorOptions *)self setFrontPoseMarginRatio:v20];
  }

  v25 = [v26 bodyPoseGuidanceOptions];
  [(VGFrameSelectorOptions *)self setBodyPoseGuidanceOptions:v25];
}

- (void)_setOptionsForYawPoses:(id)a3
{
  v23 = a3;
  -[VGFrameSelectorOptions setYawFrameCount:](self, "setYawFrameCount:", [v23 requiredYawPoses]);
  [v23 yawLimit];
  v5 = v4 * 3.14159265 / 180.0;
  *&v5 = v5;
  [(VGFrameSelectorOptions *)self setYawLimit:v5];
  v6 = [v23 selectionFrustum];
  [v6 yawOffsetLeft];
  v8 = v7;
  v9 = [v23 selectionFrustum];
  [v9 yawOffsetRight];
  v11 = v10;
  v12 = [v23 selectionFrustum];
  [v12 pitchOffsetTop];
  v14 = v13;
  v15 = [v23 selectionFrustum];
  [v15 pitchOffsetBottom];
  LODWORD(v17) = v16;
  LODWORD(v18) = v8;
  LODWORD(v19) = v11;
  LODWORD(v20) = v14;
  [(VGFrameSelectorOptions *)self setYawPosesFrustumOffsets:v18, v19, v20, v17];

  v21 = [VGExpressionFilterLegacy getExpressionFiltersForCaptureOptions:v23];
  [(VGFrameSelectorOptions *)self setYawExpressionFilters:v21];

  if ([v23 useFovMarginsFilterNonFrontPose])
  {
    v22 = objc_opt_new();
    [v23 topMarginHeadRatio];
    [v22 setTopMarginHeadRatio:?];
    [v23 leftMarginHeadRatio];
    [v22 setLeftMarginHeadRatio:?];
    [v23 rightMarginHeadRatio];
    [v22 setRightMarginHeadRatio:?];
    [v23 bottomMarginHeadRatio];
    [v22 setBottomMarginHeadRatio:?];
    [(VGFrameSelectorOptions *)self setYawMarginRatio:v22];
  }
}

- (void)_setOptionsForPitchPoses:(id)a3
{
  v27 = a3;
  -[VGFrameSelectorOptions setPitchFrameCount:](self, "setPitchFrameCount:", [v27 requiredPitchPoses]);
  [v27 pitchLimit];
  v5 = v4 * 3.14159265 / 180.0;
  *&v5 = v5;
  [(VGFrameSelectorOptions *)self setPitchLimit:v5];
  v6 = [v27 selectionFrustum];
  [v6 yawOffsetLeft];
  v8 = v7;
  v9 = [v27 selectionFrustum];
  [v9 yawOffsetRight];
  v11 = v10;
  v12 = [v27 selectionFrustum];
  [v12 pitchOffsetTop];
  v14 = v13;
  v15 = [v27 selectionFrustum];
  [v15 pitchOffsetBottom];
  LODWORD(v17) = v16;
  LODWORD(v18) = v8;
  LODWORD(v19) = v11;
  LODWORD(v20) = v14;
  [(VGFrameSelectorOptions *)self setPitchPosesFrustumOffsets:v18, v19, v20, v17];

  v21 = [VGExpressionFilterLegacy getExpressionFiltersForCaptureOptions:v27];
  [(VGFrameSelectorOptions *)self setPitchExpressionFilters:v21];

  if ([v27 useFovMarginsFilterNonFrontPose])
  {
    v22 = objc_opt_new();
    [v27 topMarginHeadRatio];
    [v22 setTopMarginHeadRatio:?];
    [v27 leftMarginHeadRatio];
    [v22 setLeftMarginHeadRatio:?];
    [v27 rightMarginHeadRatio];
    [v22 setRightMarginHeadRatio:?];
    [v27 bottomMarginHeadRatio];
    v24 = v23;
    [v27 bottomMarginPitchPoseDelta];
    *&v26 = fmaxf(v24 + v25, 0.0);
    [v22 setBottomMarginHeadRatio:v26];
    [(VGFrameSelectorOptions *)self setPitchMarginRatio:v22];
  }
}

+ (id)optionsWithCaptureOptions:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setUseSimpleSelector:{objc_msgSend(v3, "useSimpleSelector")}];
  [v3 simpleSelectorMinOffsetAngle];
  [v4 setSimpleSelectorMinOffsetAngle:?];
  [v3 simpleSelectorMaxOffsetAngle];
  [v4 setSimpleSelectorMaxOffsetAngle:?];
  [v4 setUseVNFilters:{objc_msgSend(v3, "useVNFilters")}];
  [v3 vnFrontPoseBlinkThreshold];
  [v4 setVnFrontPoseBlinkThreshold:?];
  [v4 setUseVNFaceLandmarksFilter:{objc_msgSend(v3, "useVNFaceLandmarksFilter")}];
  [v4 setUseDepthFovFilterForBadAlignment:{objc_msgSend(v3, "useDepthFovFilterForBadAlignment")}];
  [v4 _setOptionsForFrontPose:v3];
  [v4 _setOptionsForYawPoses:v3];
  [v4 _setOptionsForPitchPoses:v3];

  return v4;
}

- (VGFrameSelectorFrustumOffsets)frontPoseFrustumOffsets
{
  yawOffsetDegreesLeft = self->_frontPoseFrustumOffsets.yawOffsetDegreesLeft;
  yawOffsetDegreesRight = self->_frontPoseFrustumOffsets.yawOffsetDegreesRight;
  pitchOffsetDegreesTop = self->_frontPoseFrustumOffsets.pitchOffsetDegreesTop;
  pitchOffsetDegreesBottom = self->_frontPoseFrustumOffsets.pitchOffsetDegreesBottom;
  result.pitchOffsetDegreesBottom = pitchOffsetDegreesBottom;
  result.pitchOffsetDegreesTop = pitchOffsetDegreesTop;
  result.yawOffsetDegreesRight = yawOffsetDegreesRight;
  result.yawOffsetDegreesLeft = yawOffsetDegreesLeft;
  return result;
}

- (VGFrameSelectorFrustumOffsets)yawPosesFrustumOffsets
{
  yawOffsetDegreesLeft = self->_yawPosesFrustumOffsets.yawOffsetDegreesLeft;
  yawOffsetDegreesRight = self->_yawPosesFrustumOffsets.yawOffsetDegreesRight;
  pitchOffsetDegreesTop = self->_yawPosesFrustumOffsets.pitchOffsetDegreesTop;
  pitchOffsetDegreesBottom = self->_yawPosesFrustumOffsets.pitchOffsetDegreesBottom;
  result.pitchOffsetDegreesBottom = pitchOffsetDegreesBottom;
  result.pitchOffsetDegreesTop = pitchOffsetDegreesTop;
  result.yawOffsetDegreesRight = yawOffsetDegreesRight;
  result.yawOffsetDegreesLeft = yawOffsetDegreesLeft;
  return result;
}

- (VGFrameSelectorFrustumOffsets)pitchPosesFrustumOffsets
{
  yawOffsetDegreesLeft = self->_pitchPosesFrustumOffsets.yawOffsetDegreesLeft;
  yawOffsetDegreesRight = self->_pitchPosesFrustumOffsets.yawOffsetDegreesRight;
  pitchOffsetDegreesTop = self->_pitchPosesFrustumOffsets.pitchOffsetDegreesTop;
  pitchOffsetDegreesBottom = self->_pitchPosesFrustumOffsets.pitchOffsetDegreesBottom;
  result.pitchOffsetDegreesBottom = pitchOffsetDegreesBottom;
  result.pitchOffsetDegreesTop = pitchOffsetDegreesTop;
  result.yawOffsetDegreesRight = yawOffsetDegreesRight;
  result.yawOffsetDegreesLeft = yawOffsetDegreesLeft;
  return result;
}

@end
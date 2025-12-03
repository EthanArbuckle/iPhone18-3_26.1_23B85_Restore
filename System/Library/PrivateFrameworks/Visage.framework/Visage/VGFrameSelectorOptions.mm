@interface VGFrameSelectorOptions
+ (id)optionsWithCaptureOptions:(id)options;
- (VGFrameSelectorFrustumOffsets)frontPoseFrustumOffsets;
- (VGFrameSelectorFrustumOffsets)pitchPosesFrustumOffsets;
- (VGFrameSelectorFrustumOffsets)yawPosesFrustumOffsets;
- (void)_setOptionsForFrontPose:(id)pose;
- (void)_setOptionsForPitchPoses:(id)poses;
- (void)_setOptionsForYawPoses:(id)poses;
@end

@implementation VGFrameSelectorOptions

- (void)_setOptionsForFrontPose:(id)pose
{
  poseCopy = pose;
  [(VGFrameSelectorOptions *)self setDetectFrontPose:1];
  frontPoseSelectionFrustum = [poseCopy frontPoseSelectionFrustum];
  [frontPoseSelectionFrustum yawOffsetLeft];
  v6 = v5;
  frontPoseSelectionFrustum2 = [poseCopy frontPoseSelectionFrustum];
  [frontPoseSelectionFrustum2 yawOffsetRight];
  v9 = v8;
  frontPoseSelectionFrustum3 = [poseCopy frontPoseSelectionFrustum];
  [frontPoseSelectionFrustum3 pitchOffsetTop];
  v12 = v11;
  frontPoseSelectionFrustum4 = [poseCopy frontPoseSelectionFrustum];
  [frontPoseSelectionFrustum4 pitchOffsetBottom];
  LODWORD(v15) = v14;
  LODWORD(v16) = v6;
  LODWORD(v17) = v9;
  LODWORD(v18) = v12;
  [(VGFrameSelectorOptions *)self setFrontPoseFrustumOffsets:v16, v17, v18, v15];

  v19 = [VGExpressionFilterLegacy getFrontExpressionFiltersForCaptureOptions:poseCopy];
  [(VGFrameSelectorOptions *)self setFrontExpressionFilters:v19];

  if ([poseCopy useFovMarginsFilterFrontPose])
  {
    v20 = objc_opt_new();
    [poseCopy topMarginHeadRatio];
    [v20 setTopMarginHeadRatio:?];
    [poseCopy leftMarginFrontPoseHeadRatio];
    [v20 setLeftMarginHeadRatio:?];
    [poseCopy rightMarginFrontPoseHeadRatio];
    [v20 setRightMarginHeadRatio:?];
    [poseCopy bottomMarginHeadRatio];
    v22 = v21;
    [poseCopy bottomMarginFrontPoseDelta];
    *&v24 = v22 + v23;
    [v20 setBottomMarginHeadRatio:v24];
    [(VGFrameSelectorOptions *)self setFrontPoseMarginRatio:v20];
  }

  bodyPoseGuidanceOptions = [poseCopy bodyPoseGuidanceOptions];
  [(VGFrameSelectorOptions *)self setBodyPoseGuidanceOptions:bodyPoseGuidanceOptions];
}

- (void)_setOptionsForYawPoses:(id)poses
{
  posesCopy = poses;
  -[VGFrameSelectorOptions setYawFrameCount:](self, "setYawFrameCount:", [posesCopy requiredYawPoses]);
  [posesCopy yawLimit];
  v5 = v4 * 3.14159265 / 180.0;
  *&v5 = v5;
  [(VGFrameSelectorOptions *)self setYawLimit:v5];
  selectionFrustum = [posesCopy selectionFrustum];
  [selectionFrustum yawOffsetLeft];
  v8 = v7;
  selectionFrustum2 = [posesCopy selectionFrustum];
  [selectionFrustum2 yawOffsetRight];
  v11 = v10;
  selectionFrustum3 = [posesCopy selectionFrustum];
  [selectionFrustum3 pitchOffsetTop];
  v14 = v13;
  selectionFrustum4 = [posesCopy selectionFrustum];
  [selectionFrustum4 pitchOffsetBottom];
  LODWORD(v17) = v16;
  LODWORD(v18) = v8;
  LODWORD(v19) = v11;
  LODWORD(v20) = v14;
  [(VGFrameSelectorOptions *)self setYawPosesFrustumOffsets:v18, v19, v20, v17];

  v21 = [VGExpressionFilterLegacy getExpressionFiltersForCaptureOptions:posesCopy];
  [(VGFrameSelectorOptions *)self setYawExpressionFilters:v21];

  if ([posesCopy useFovMarginsFilterNonFrontPose])
  {
    v22 = objc_opt_new();
    [posesCopy topMarginHeadRatio];
    [v22 setTopMarginHeadRatio:?];
    [posesCopy leftMarginHeadRatio];
    [v22 setLeftMarginHeadRatio:?];
    [posesCopy rightMarginHeadRatio];
    [v22 setRightMarginHeadRatio:?];
    [posesCopy bottomMarginHeadRatio];
    [v22 setBottomMarginHeadRatio:?];
    [(VGFrameSelectorOptions *)self setYawMarginRatio:v22];
  }
}

- (void)_setOptionsForPitchPoses:(id)poses
{
  posesCopy = poses;
  -[VGFrameSelectorOptions setPitchFrameCount:](self, "setPitchFrameCount:", [posesCopy requiredPitchPoses]);
  [posesCopy pitchLimit];
  v5 = v4 * 3.14159265 / 180.0;
  *&v5 = v5;
  [(VGFrameSelectorOptions *)self setPitchLimit:v5];
  selectionFrustum = [posesCopy selectionFrustum];
  [selectionFrustum yawOffsetLeft];
  v8 = v7;
  selectionFrustum2 = [posesCopy selectionFrustum];
  [selectionFrustum2 yawOffsetRight];
  v11 = v10;
  selectionFrustum3 = [posesCopy selectionFrustum];
  [selectionFrustum3 pitchOffsetTop];
  v14 = v13;
  selectionFrustum4 = [posesCopy selectionFrustum];
  [selectionFrustum4 pitchOffsetBottom];
  LODWORD(v17) = v16;
  LODWORD(v18) = v8;
  LODWORD(v19) = v11;
  LODWORD(v20) = v14;
  [(VGFrameSelectorOptions *)self setPitchPosesFrustumOffsets:v18, v19, v20, v17];

  v21 = [VGExpressionFilterLegacy getExpressionFiltersForCaptureOptions:posesCopy];
  [(VGFrameSelectorOptions *)self setPitchExpressionFilters:v21];

  if ([posesCopy useFovMarginsFilterNonFrontPose])
  {
    v22 = objc_opt_new();
    [posesCopy topMarginHeadRatio];
    [v22 setTopMarginHeadRatio:?];
    [posesCopy leftMarginHeadRatio];
    [v22 setLeftMarginHeadRatio:?];
    [posesCopy rightMarginHeadRatio];
    [v22 setRightMarginHeadRatio:?];
    [posesCopy bottomMarginHeadRatio];
    v24 = v23;
    [posesCopy bottomMarginPitchPoseDelta];
    *&v26 = fmaxf(v24 + v25, 0.0);
    [v22 setBottomMarginHeadRatio:v26];
    [(VGFrameSelectorOptions *)self setPitchMarginRatio:v22];
  }
}

+ (id)optionsWithCaptureOptions:(id)options
{
  optionsCopy = options;
  v4 = objc_opt_new();
  [v4 setUseSimpleSelector:{objc_msgSend(optionsCopy, "useSimpleSelector")}];
  [optionsCopy simpleSelectorMinOffsetAngle];
  [v4 setSimpleSelectorMinOffsetAngle:?];
  [optionsCopy simpleSelectorMaxOffsetAngle];
  [v4 setSimpleSelectorMaxOffsetAngle:?];
  [v4 setUseVNFilters:{objc_msgSend(optionsCopy, "useVNFilters")}];
  [optionsCopy vnFrontPoseBlinkThreshold];
  [v4 setVnFrontPoseBlinkThreshold:?];
  [v4 setUseVNFaceLandmarksFilter:{objc_msgSend(optionsCopy, "useVNFaceLandmarksFilter")}];
  [v4 setUseDepthFovFilterForBadAlignment:{objc_msgSend(optionsCopy, "useDepthFovFilterForBadAlignment")}];
  [v4 _setOptionsForFrontPose:optionsCopy];
  [v4 _setOptionsForYawPoses:optionsCopy];
  [v4 _setOptionsForPitchPoses:optionsCopy];

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
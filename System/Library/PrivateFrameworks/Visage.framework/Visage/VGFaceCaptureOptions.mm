@interface VGFaceCaptureOptions
- (BOOL)isEqual:(id)a3;
- (VGFaceCaptureOptions)init;
- (VGFaceCaptureOptions)initWithCoder:(id)a3;
- (VGFaceCaptureOptions)initWithSuiteName:(id)a3;
- (id)description;
- (id)toDictionary;
- (void)encodeWithCoder:(id)a3;
- (void)setDefaultsWithSuiteName:(id)a3;
@end

@implementation VGFaceCaptureOptions

- (VGFaceCaptureOptions)init
{
  v27.receiver = self;
  v27.super_class = VGFaceCaptureOptions;
  v2 = [(VGFaceCaptureOptions *)&v27 init];
  if (v2)
  {
    *(v2 + 15) = [objc_opt_class() defaultRequiredYawPoses];
    v3 = [objc_opt_class() defaultRequiredPitchPoses];
    v4 = *(v2 + 17);
    v5 = MEMORY[0x277CBEBF8];
    *(v2 + 16) = v3;
    *(v2 + 17) = v5;

    [objc_opt_class() defaultYawLimit];
    *(v2 + 8) = v6;
    [objc_opt_class() defaultPitchLimit];
    *(v2 + 9) = v7;
    [objc_opt_class() defaultEyesForwardAngleSensitivity];
    *(v2 + 10) = v8;
    [objc_opt_class() defaultEyesForwardAngleSensitivity];
    *(v2 + 11) = v9;
    [objc_opt_class() defaultEyesOpenSensitivity];
    *(v2 + 12) = v10;
    [objc_opt_class() defaultNeutralExpressionLowerBound];
    *(v2 + 13) = v11;
    [objc_opt_class() defaultNeutralExpressionUpperBound];
    *(v2 + 14) = v12;
    *(v2 + 11) = 0;
    v2[15] = 1;
    *(v2 + 4) = 0;
    *(v2 + 10) = 0;
    objc_storeStrong(v2 + 19, *MEMORY[0x277CBF4B8]);
    v2[22] = 0;
    [objc_opt_class() defaultSimpleSelectorMinOffsetAngle];
    *(v2 + 23) = v13;
    [objc_opt_class() defaultSimpleSelectorMaxOffsetAngle];
    *(v2 + 24) = v14;
    *(v2 + 12) = 0;
    [objc_opt_class() defaultVNFrontPoseBlinkThreshold];
    *(v2 + 27) = v15;
    *(v2 + 13) = 0;
    v2[28] = 0;
    [objc_opt_class() defaultAmbientLightFilterLowThreshold];
    *(v2 + 28) = v16;
    *(v2 + 29) = 0;
    v2[31] = 0;
    [objc_opt_class() defaultMotionBlurThreshold];
    *(v2 + 29) = v17;
    *(v2 + 4) = 0;
    v18 = objc_opt_new();
    v19 = *(v2 + 21);
    *(v2 + 21) = v18;

    v20 = objc_opt_new();
    v21 = *(v2 + 22);
    *(v2 + 22) = v20;

    v2[23] = 1;
    [objc_opt_class() defaultDistanceFilterCloseThreshold];
    *(v2 + 25) = v22;
    [objc_opt_class() defaultDistanceFilterFarThreshold];
    *(v2 + 26) = v23;
    v24 = *(v2 + 20);
    *(v2 + 20) = 0;

    v25 = v2;
  }

  return v2;
}

- (VGFaceCaptureOptions)initWithSuiteName:(id)a3
{
  v4 = a3;
  v5 = [(VGFaceCaptureOptions *)self init];
  v6 = v5;
  if (v5)
  {
    [(VGFaceCaptureOptions *)v5 setDefaultsWithSuiteName:v4];
    v7 = v6;
  }

  return v6;
}

- (void)setDefaultsWithSuiteName:(id)a3
{
  v93 = a3;
  v4 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:v93];
  v5 = [v4 objectForKey:@"requiredYawPoses"];

  if (v5)
  {
    self->_requiredYawPoses = [v4 integerForKey:@"requiredYawPoses"];
  }

  v6 = [v4 objectForKey:@"requiredPitchPoses"];

  if (v6)
  {
    self->_requiredPitchPoses = [v4 integerForKey:@"requiredPitchPoses"];
  }

  v7 = [v4 objectForKey:@"requiredExpressions"];

  if (v7)
  {
    requiredExpressions = self->_requiredExpressions;
    self->_requiredExpressions = MEMORY[0x277CBEBF8];
  }

  v9 = [v4 objectForKey:@"yawLimit"];

  if (v9)
  {
    [v4 floatForKey:@"yawLimit"];
    self->_yawLimit = v10;
  }

  v11 = [v4 objectForKey:@"pitchLimit"];

  if (v11)
  {
    [v4 floatForKey:@"pitchLimit"];
    self->_pitchLimit = v12;
  }

  v13 = [v4 objectForKey:@"eyesForwardYawSensitivity"];

  if (v13)
  {
    [v4 floatForKey:@"eyesForwardYawSensitivity"];
    self->_eyesForwardYawSensitivity = v14;
  }

  v15 = [v4 objectForKey:@"eyesOpenSensitivity"];

  if (v15)
  {
    [v4 floatForKey:@"eyesOpenSensitivity"];
    self->_eyesOpenSensitivity = v16;
  }

  v17 = [v4 objectForKey:@"neutralExpressionLowerBound"];

  if (v17)
  {
    [v4 floatForKey:@"neutralExpressionLowerBound"];
    self->_neutralExpressionLowerBound = v18;
  }

  v19 = [v4 objectForKey:@"neutralExpressionUpperBound"];

  if (v19)
  {
    [v4 floatForKey:@"neutralExpressionUpperBound"];
    self->_neutralExpressionUpperBound = v20;
  }

  v21 = [v4 objectForKey:@"eyesForwardPitchSensitivity"];

  if (v21)
  {
    [v4 floatForKey:@"eyesForwardPitchSensitivity"];
    self->_eyesForwardPitchSensitivity = v22;
  }

  v23 = [v4 objectForKey:@"useLookAtForEyesForward"];

  if (v23)
  {
    self->_useLookAtForEyesForward = [v4 BOOLForKey:@"useLookAtForEyesForward"];
  }

  v24 = [v4 objectForKey:@"ensureEyesForwardOnFrontPose"];

  if (v24)
  {
    self->_ensureEyesForwardOnFrontPose = [v4 BOOLForKey:@"ensureEyesForwardOnFrontPose"];
  }

  v25 = [v4 objectForKey:@"leftMarginHeadRatio"];

  if (v25)
  {
    [v4 floatForKey:@"leftMarginHeadRatio"];
    self->_leftMarginHeadRatio = v26;
  }

  v27 = [v4 objectForKey:@"rightMarginHeadRatio"];

  if (v27)
  {
    [v4 floatForKey:@"rightMarginHeadRatio"];
    self->_rightMarginHeadRatio = v28;
  }

  v29 = [v4 objectForKey:@"topMarginHeadRatio"];

  if (v29)
  {
    [v4 floatForKey:@"topMarginHeadRatio"];
    self->_topMarginHeadRatio = v30;
  }

  v31 = [v4 objectForKey:@"bottomMarginHeadRatio"];

  if (v31)
  {
    [v4 floatForKey:@"bottomMarginHeadRatio"];
    self->_bottomMarginHeadRatio = v32;
  }

  v33 = [v4 objectForKey:@"leftMarginFrontPoseHeadRatio"];

  if (v33)
  {
    [v4 floatForKey:@"leftMarginFrontPoseHeadRatio"];
    self->_leftMarginFrontPoseHeadRatio = v34;
  }

  v35 = [v4 objectForKey:@"rightMarginFrontPoseHeadRatio"];

  if (v35)
  {
    [v4 floatForKey:@"rightMarginFrontPoseHeadRatio"];
    self->_rightMarginFrontPoseHeadRatio = v36;
  }

  v37 = [v4 objectForKey:@"bottomMarginFrontPoseDelta"];

  if (v37)
  {
    [v4 floatForKey:@"bottomMarginFrontPoseDelta"];
    self->_bottomMarginFrontPoseDelta = v38;
  }

  v39 = [v4 objectForKey:@"bottomMarginPitchPoseDelta"];

  if (v39)
  {
    [v4 floatForKey:@"bottomMarginPitchPoseDelta"];
    self->_bottomMarginPitchPoseDelta = v40;
  }

  v41 = [v4 objectForKey:@"ensureEyesOpenOnFrontPose"];

  if (v41)
  {
    self->_ensureEyesOpenOnFrontPose = [v4 BOOLForKey:@"ensureEyesOpenOnFrontPose"];
  }

  v42 = [v4 objectForKey:@"ensureEyesOpenOnAllPoses"];

  if (v42)
  {
    self->_ensureEyesOpenOnNonFrontPose = [v4 BOOLForKey:@"ensureEyesOpenOnAllPoses"];
  }

  v43 = [v4 objectForKey:@"ensureEyesOpenOnNonFrontPose"];

  if (v43)
  {
    self->_ensureEyesOpenOnNonFrontPose = [v4 BOOLForKey:@"ensureEyesOpenOnNonFrontPose"];
  }

  v44 = [v4 objectForKey:@"ensureAlmostNeutralExpressionOnAllPoses"];

  if (v44)
  {
    self->_ensureAlmostNeutralExpressionOnNonFrontPose = [v4 BOOLForKey:@"ensureAlmostNeutralExpressionOnAllPoses"];
  }

  v45 = [v4 objectForKey:@"ensureNeutralExpressionOnFrontPose"];

  if (v45)
  {
    self->_ensureNeutralExpressionOnFrontPose = [v4 BOOLForKey:@"ensureNeutralExpressionOnFrontPose"];
  }

  v46 = [v4 objectForKey:@"ensureAlmostNeutralExpressionOnNonFrontPose"];

  if (v46)
  {
    self->_ensureAlmostNeutralExpressionOnNonFrontPose = [v4 BOOLForKey:@"ensureAlmostNeutralExpressionOnNonFrontPose"];
  }

  v47 = [v4 objectForKey:@"useFaceTrackingDictionary"];

  if (v47)
  {
    self->_useFaceTrackingDictionary = [v4 BOOLForKey:@"useFaceTrackingDictionary"];
  }

  v48 = [v4 objectForKey:@"useFKInternalFaceDetector"];

  if (v48)
  {
    self->_useFKInternalFaceDetector = [v4 BOOLForKey:@"useFKInternalFaceDetector"];
  }

  v49 = [v4 objectForKey:@"useFKForceCPU"];

  if (v49)
  {
    self->_useFKForceCPU = [v4 BOOLForKey:@"useFKForceCPU"];
  }

  v50 = [v4 objectForKey:@"convertFKTrackingDictToARKitDict"];

  if (v50)
  {
    self->_convertFKTrackingDictToARKitDict = [v4 BOOLForKey:@"convertFKTrackingDictToARKitDict"];
  }

  v51 = [v4 objectForKey:@"sendMetrics"];

  if (v51)
  {
    self->_sendMetrics = [v4 BOOLForKey:@"sendMetrics"];
  }

  v52 = [v4 objectForKey:@"cameraImageColorSpaceName"];

  if (v52)
  {
    v53 = [v4 stringForKey:@"cameraImageColorSpaceName"];
    cameraImageColorSpaceName = self->_cameraImageColorSpaceName;
    self->_cameraImageColorSpaceName = v53;
  }

  v55 = [v4 objectForKey:@"useSimpleSelector"];

  if (v55)
  {
    self->_useSimpleSelector = [v4 BOOLForKey:@"useSimpleSelector"];
  }

  v56 = [v4 objectForKey:@"simpleSelectorMinOffsetAngle"];

  if (v56)
  {
    [v4 floatForKey:@"simpleSelectorMinOffsetAngle"];
    self->_simpleSelectorMinOffsetAngle = v57;
  }

  v58 = [v4 objectForKey:@"simpleSelectorMaxOffsetAngle"];

  if (v58)
  {
    [v4 floatForKey:@"simpleSelectorMaxOffsetAngle"];
    self->_simpleSelectorMaxOffsetAngle = v59;
  }

  v60 = [v4 objectForKey:@"useDistanceFilter"];

  if (v60)
  {
    self->_useDistanceFilter = [v4 BOOLForKey:@"useDistanceFilter"];
  }

  v61 = [v4 objectForKey:@"distanceFilterCloseThreshold"];

  if (v61)
  {
    [v4 floatForKey:@"distanceFilterCloseThreshold"];
    self->_distanceFilterCloseThreshold = v62;
  }

  v63 = [v4 objectForKey:@"distanceFilterFarThreshold"];

  if (v63)
  {
    [v4 floatForKey:@"distanceFilterFarThreshold"];
    self->_distanceFilterFarThreshold = v64;
  }

  v65 = [v4 objectForKey:@"useBodyPoseGuidanceFilter"];
  if (v65)
  {
    v66 = v65;
    v67 = [v4 BOOLForKey:@"useBodyPoseGuidanceFilter"];

    if ((v67 & 1) == 0)
    {
      bodyPoseGuidanceOptions = self->_bodyPoseGuidanceOptions;
      self->_bodyPoseGuidanceOptions = 0;
    }
  }

  v69 = self->_bodyPoseGuidanceOptions;
  if (v69)
  {
    [(VGBodyPoseGuidanceOptions *)v69 setDefaultsWithSuiteName:v93];
  }

  v70 = [v4 objectForKey:@"useVNFilters"];

  if (v70)
  {
    self->_useVNFilters = [v4 BOOLForKey:@"useVNFilters"];
  }

  v71 = [v4 objectForKey:@"_useVNFiltersEnrollment"];

  if (v71)
  {
    self->_useVNFiltersEnrollment = [v4 BOOLForKey:@"_useVNFiltersEnrollment"];
  }

  v72 = [v4 objectForKey:@"vnFrontPoseBlinkThreshold"];

  if (v72)
  {
    self->_vnFrontPoseBlinkThreshold = [v4 BOOLForKey:@"vnFrontPoseBlinkThreshold"];
  }

  v73 = [v4 objectForKey:@"useDepthFovFilter"];

  if (v73)
  {
    self->_useDepthFovFilter = [v4 BOOLForKey:@"useDepthFovFilter"];
  }

  v74 = [v4 objectForKey:@"useDepthFovFilterForBadAlignment"];

  if (v74)
  {
    self->_useDepthFovFilterForBadAlignment = [v4 BOOLForKey:@"useDepthFovFilterForBadAlignment"];
  }

  v75 = [v4 objectForKey:@"useAmbientLightFilter"];

  if (v75)
  {
    self->_useAmbientLightFilter = [v4 BOOLForKey:@"useAmbientLightFilter"];
  }

  v76 = [v4 objectForKey:@"ambientLightFilterLowThreshold"];

  if (v76)
  {
    [v4 floatForKey:@"ambientLightFilterLowThreshold"];
    self->_ambientLightFilterLowThreshold = v77;
  }

  v78 = [v4 objectForKey:@"useMotionBlurFilter"];

  if (v78)
  {
    self->_useMotionBlurFilter = [v4 BOOLForKey:@"useMotionBlurFilter"];
  }

  v79 = [v4 objectForKey:@"motionBlurThreshold"];

  if (v79)
  {
    [v4 floatForKey:@"motionBlurThreshold"];
    self->_motionBlurThreshold = v80;
  }

  v81 = [v4 objectForKey:@"useTrackedFaceIdentifierFilter"];

  if (v81)
  {
    self->_useTrackedFaceIdentifierFilter = [v4 BOOLForKey:@"useTrackedFaceIdentifierFilter"];
  }

  v82 = [v4 objectForKey:@"useVNFaceLandmarksFilter"];

  if (v82)
  {
    self->_useVNFaceLandmarksFilter = [v4 BOOLForKey:@"useVNFaceLandmarksFilter"];
  }

  v83 = [v4 objectForKey:@"useFovMarginsFilterFrontPose"];

  if (v83)
  {
    self->_useFovMarginsFilterFrontPose = [v4 BOOLForKey:@"useFovMarginsFilterFrontPose"];
  }

  v84 = [v4 objectForKey:@"useFovMarginsFilterNonFrontPose"];

  if (v84)
  {
    self->_useFovMarginsFilterNonFrontPose = [v4 BOOLForKey:@"useFovMarginsFilterNonFrontPose"];
  }

  v85 = [v4 objectForKey:@"selectionFrustumYawOffsetLeft"];

  if (v85)
  {
    [v4 floatForKey:@"selectionFrustumYawOffsetLeft"];
    [(VGFaceSelectionFrustum *)self->_selectionFrustum setYawOffsetLeft:?];
  }

  v86 = [v4 objectForKey:@"selectionFrustumYawOffsetRight"];

  if (v86)
  {
    [v4 floatForKey:@"selectionFrustumYawOffsetRight"];
    [(VGFaceSelectionFrustum *)self->_selectionFrustum setYawOffsetRight:?];
  }

  v87 = [v4 objectForKey:@"selectionFrustumPitchOffsetTop"];

  if (v87)
  {
    [v4 floatForKey:@"selectionFrustumPitchOffsetTop"];
    [(VGFaceSelectionFrustum *)self->_selectionFrustum setPitchOffsetTop:?];
  }

  v88 = [v4 objectForKey:@"selectionFrustumPitchOffsetBottom"];

  if (v88)
  {
    [v4 floatForKey:@"selectionFrustumPitchOffsetBottom"];
    [(VGFaceSelectionFrustum *)self->_selectionFrustum setPitchOffsetBottom:?];
  }

  v89 = [v4 objectForKey:@"frontPoseSelectionFrustumYawOffsetLeft"];

  if (v89)
  {
    [v4 floatForKey:@"frontPoseSelectionFrustumYawOffsetLeft"];
    [(VGFaceSelectionFrustum *)self->_frontPoseSelectionFrustum setYawOffsetLeft:?];
  }

  v90 = [v4 objectForKey:@"frontPoseSelectionFrustumYawOffsetRight"];

  if (v90)
  {
    [v4 floatForKey:@"frontPoseSelectionFrustumYawOffsetRight"];
    [(VGFaceSelectionFrustum *)self->_frontPoseSelectionFrustum setYawOffsetRight:?];
  }

  v91 = [v4 objectForKey:@"frontPoseSelectionFrustumPitchOffsetTop"];

  if (v91)
  {
    [v4 floatForKey:@"frontPoseSelectionFrustumPitchOffsetTop"];
    [(VGFaceSelectionFrustum *)self->_frontPoseSelectionFrustum setPitchOffsetTop:?];
  }

  v92 = [v4 objectForKey:@"frontPoseSelectionFrustumPitchOffsetBottom"];

  if (v92)
  {
    [v4 floatForKey:@"frontPoseSelectionFrustumPitchOffsetBottom"];
    [(VGFaceSelectionFrustum *)self->_frontPoseSelectionFrustum setPitchOffsetBottom:?];
  }
}

- (id)description
{
  pitchLimit = self->_pitchLimit;
  yawLimit = self->_yawLimit;
  requiredYawPoses = self->_requiredYawPoses;
  v6 = pitchLimit;
  v7 = @"NO";
  if (self->_useFovMarginsFilterFrontPose)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if (self->_useFovMarginsFilterNonFrontPose)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if (self->_ensureEyesForwardOnFrontPose)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  if (self->_useLookAtForEyesForward)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  if (self->_ensureEyesOpenOnFrontPose)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  if (self->_ensureEyesOpenOnNonFrontPose)
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  if (self->_ensureNeutralExpressionOnFrontPose)
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  if (self->_ensureAlmostNeutralExpressionOnNonFrontPose)
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  if (self->_useFaceTrackingDictionary)
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  if (self->_useFKInternalFaceDetector)
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  if (self->_useFKForceCPU)
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  if (self->_convertFKTrackingDictToARKitDict)
  {
    v19 = @"YES";
  }

  else
  {
    v19 = @"NO";
  }

  if (self->_sendMetrics)
  {
    v20 = @"YES";
  }

  else
  {
    v20 = @"NO";
  }

  if (self->_useSimpleSelector)
  {
    v21 = @"YES";
  }

  else
  {
    v21 = @"NO";
  }

  if (self->_useDistanceFilter)
  {
    v22 = @"YES";
  }

  else
  {
    v22 = @"NO";
  }

  if (self->_useVNFilters)
  {
    v23 = @"YES";
  }

  else
  {
    v23 = @"NO";
  }

  if (self->_useVNFiltersEnrollment)
  {
    v24 = @"YES";
  }

  else
  {
    v24 = @"NO";
  }

  if (self->_useDepthFovFilter)
  {
    v25 = @"YES";
  }

  else
  {
    v25 = @"NO";
  }

  if (self->_useDepthFovFilterForBadAlignment)
  {
    v26 = @"YES";
  }

  else
  {
    v26 = @"NO";
  }

  if (self->_useAmbientLightFilter)
  {
    v27 = @"YES";
  }

  else
  {
    v27 = @"NO";
  }

  if (self->_useTrackedFaceIdentifierFilter)
  {
    v28 = @"YES";
  }

  else
  {
    v28 = @"NO";
  }

  if (self->_useVNFaceLandmarksFilter)
  {
    v29 = @"YES";
  }

  else
  {
    v29 = @"NO";
  }

  if (self->_useMotionBlurFilter)
  {
    v7 = @"YES";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"Yaw Poses %lu (limit %.f) Pitch Poses %lu (limit %.f) Expressions %@ Eyes Forward Sensitivity (yaw %g, pitch %g) Selection Frustum Offsets (non-front poses): { %@ } Selection Frustum Offsets (front pose): { %@ } Use FoV Margin: front pose [%@], non front poses [%@] Margins Head Ratio (left %g, right %g, top %g, bottom %g) Margins Head Ratio Front Pose (left %g, right %g, top %g, bottom %g) Bottom margin front pose delta %g Bottom margin pitch pose delta %g Ensure Eyes Forward On Front Pose %@ (use look-at check: %@) Eyes Open Sensitivity %g Neutral Expression Lower Bound %g Neutral Expression Upper Bound %g Ensure Eyes Open On Front Pose %@ Ensure Eyes Open On Non Front Pose %@ Ensure Almost Neutral Expression On Front Pose %@ Ensure Almost Neutral Expression On Non Front Pose %@ Face Tracking Result Set in VGCaptureData %@ Use FaceKit Tracker internal Face Detector %@ Use FaceKit Force CPU %@ Convert FaceKit tracking dictionary to ARKit tracking dictionary %@ Send Metrics %@ Use simple selector: %@ (min offset: %g, max offset: %g) Use distance filter: %@ (close threshold: %g cm, far threshold: %g cm) Body Pose Guidance Options: { %@ } Use Vision Filters %@ (during Frame Selection) Use Vision Filters %@ (during Enrollment) Vision Front Pose Blink Confidence Threshold %g Use computed depth bounding box %@ Use computed depth bounding box for poses with bad alignment %@ Use ambient light filter %@ (low threshold: %g) Use tracked face identifier filter %@ Use Vision face landmarks filter %@ Use Motion Blur Filter %@ (threshold: %g)", requiredYawPoses, *&yawLimit, self->_requiredPitchPoses, *&v6, self->_requiredExpressions, self->_eyesForwardYawSensitivity, self->_eyesForwardPitchSensitivity, self->_selectionFrustum, self->_frontPoseSelectionFrustum, v8, v9, self->_leftMarginHeadRatio, self->_rightMarginHeadRatio, self->_topMarginHeadRatio, self->_bottomMarginHeadRatio, self->_leftMarginFrontPoseHeadRatio, self->_rightMarginFrontPoseHeadRatio, self->_topMarginHeadRatio, self->_bottomMarginHeadRatio, self->_bottomMarginFrontPoseDelta, self->_bottomMarginPitchPoseDelta, v10, v11, self->_eyesOpenSensitivity, self->_neutralExpressionLowerBound, self->_neutralExpressionUpperBound, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, self->_simpleSelectorMinOffsetAngle, self->_simpleSelectorMaxOffsetAngle, v22, self->_distanceFilterCloseThreshold, self->_distanceFilterFarThreshold, self->_bodyPoseGuidanceOptions, v23, v24, self->_vnFrontPoseBlinkThreshold, v25, v26, v27, self->_ambientLightFilterLowThreshold, v28, v29, v7, self->_motionBlurThreshold];
}

- (VGFaceCaptureOptions)initWithCoder:(id)a3
{
  v72[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(VGFaceCaptureOptions *)self init];
  if (v5)
  {
    v5->_requiredYawPoses = [v4 decodeIntegerForKey:@"requiredYawPoses"];
    v5->_requiredPitchPoses = [v4 decodeIntegerForKey:@"requiredPitchPoses"];
    v6 = MEMORY[0x277CBEB98];
    v72[0] = objc_opt_class();
    v72[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"requiredExpressions"];
    requiredExpressions = v5->_requiredExpressions;
    v5->_requiredExpressions = v9;

    [v4 decodeFloatForKey:@"yawLimit"];
    v5->_yawLimit = v11;
    [v4 decodeFloatForKey:@"pitchLimit"];
    v5->_pitchLimit = v12;
    [v4 decodeFloatForKey:@"eyesForwardYawSensitivity"];
    v5->_eyesForwardYawSensitivity = v13;
    [v4 decodeFloatForKey:@"eyesForwardPitchSensitivity"];
    v5->_eyesForwardPitchSensitivity = v14;
    [v4 decodeFloatForKey:@"yawSensitivity"];
    v16 = v15;
    v17 = v15;
    if ([v4 containsValueForKey:@"yawSensitivityFrontPose"])
    {
      [v4 decodeFloatForKey:@"yawSensitivityFrontPose"];
      v17 = v18;
    }

    if ([v4 containsValueForKey:@"selectionFrustum"])
    {
      v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"selectionFrustum"];
      selectionFrustum = v5->_selectionFrustum;
      v5->_selectionFrustum = v19;
    }

    else
    {
      v21 = objc_opt_new();
      v22 = v5->_selectionFrustum;
      v5->_selectionFrustum = v21;

      LODWORD(v23) = v16;
      [(VGFaceSelectionFrustum *)v5->_selectionFrustum setYawOffsetLeft:v23];
      LODWORD(v24) = v16;
      [(VGFaceSelectionFrustum *)v5->_selectionFrustum setYawOffsetRight:v24];
      LODWORD(v25) = v16;
      [(VGFaceSelectionFrustum *)v5->_selectionFrustum setPitchOffsetTop:v25];
      LODWORD(v26) = v16;
      [(VGFaceSelectionFrustum *)v5->_selectionFrustum setPitchOffsetBottom:v26];
    }

    if ([v4 containsValueForKey:@"frontPoseSelectionFrustum"])
    {
      v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"frontPoseSelectionFrustum"];
      frontPoseSelectionFrustum = v5->_frontPoseSelectionFrustum;
      v5->_frontPoseSelectionFrustum = v27;
    }

    else
    {
      v29 = objc_opt_new();
      v30 = v5->_frontPoseSelectionFrustum;
      v5->_frontPoseSelectionFrustum = v29;

      LODWORD(v31) = v17;
      [(VGFaceSelectionFrustum *)v5->_frontPoseSelectionFrustum setYawOffsetLeft:v31];
      LODWORD(v32) = v17;
      [(VGFaceSelectionFrustum *)v5->_frontPoseSelectionFrustum setYawOffsetRight:v32];
      LODWORD(v33) = v17;
      [(VGFaceSelectionFrustum *)v5->_frontPoseSelectionFrustum setPitchOffsetTop:v33];
      LODWORD(v34) = v17;
      [(VGFaceSelectionFrustum *)v5->_frontPoseSelectionFrustum setPitchOffsetBottom:v34];
    }

    [v4 decodeFloatForKey:@"leftMarginHeadRatio"];
    v5->_leftMarginHeadRatio = v35;
    [v4 decodeFloatForKey:@"rightMarginHeadRatio"];
    v5->_rightMarginHeadRatio = v36;
    [v4 decodeFloatForKey:@"topMarginHeadRatio"];
    v5->_topMarginHeadRatio = v37;
    [v4 decodeFloatForKey:@"bottomMarginHeadRatio"];
    v5->_bottomMarginHeadRatio = v38;
    if ([v4 containsValueForKey:@"leftMarginFrontPoseHeadRatio"])
    {
      [v4 decodeFloatForKey:@"leftMarginFrontPoseHeadRatio"];
    }

    else
    {
      leftMarginHeadRatio = v5->_leftMarginHeadRatio;
    }

    v5->_leftMarginFrontPoseHeadRatio = leftMarginHeadRatio;
    if ([v4 containsValueForKey:@"rightMarginFrontPoseHeadRatio"])
    {
      [v4 decodeFloatForKey:@"rightMarginFrontPoseHeadRatio"];
    }

    else
    {
      rightMarginHeadRatio = v5->_rightMarginHeadRatio;
    }

    v5->_rightMarginFrontPoseHeadRatio = rightMarginHeadRatio;
    [v4 decodeFloatForKey:@"bottomMarginFrontPoseDelta"];
    v5->_bottomMarginFrontPoseDelta = v41;
    [v4 decodeFloatForKey:@"bottomMarginPitchPoseDelta"];
    v5->_bottomMarginPitchPoseDelta = v42;
    [v4 decodeFloatForKey:@"eyesOpenSensitivity"];
    v5->_eyesOpenSensitivity = v43;
    [v4 decodeFloatForKey:@"neutralExpressionLowerBound"];
    v5->_neutralExpressionLowerBound = v44;
    [v4 decodeFloatForKey:@"neutralExpressionUpperBound"];
    v5->_neutralExpressionUpperBound = v45;
    v5->_writeDebugData = [v4 decodeBoolForKey:@"writeDebugData"];
    v46 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"debugDataPath"];
    debugDataPath = v5->_debugDataPath;
    v5->_debugDataPath = v46;

    v5->_useLookAtForEyesForward = [v4 decodeBoolForKey:@"useLookAtForEyesForward"];
    v5->_ensureEyesForwardOnFrontPose = [v4 decodeBoolForKey:@"ensureEyesForwardOnFrontPose"];
    v5->_ensureEyesOpenOnFrontPose = [v4 decodeBoolForKey:@"ensureEyesOpenOnFrontPose"];
    if ([v4 containsValueForKey:@"ensureEyesOpenOnAllPoses"])
    {
      v48 = @"ensureEyesOpenOnAllPoses";
    }

    else
    {
      v48 = @"ensureEyesOpenOnNonFrontPose";
    }

    v5->_ensureEyesOpenOnNonFrontPose = [v4 decodeBoolForKey:v48];
    if ([v4 containsValueForKey:@"ensureNeutralExpressionOnFrontPose"])
    {
      v5->_ensureNeutralExpressionOnFrontPose = [v4 decodeBoolForKey:@"ensureNeutralExpressionOnFrontPose"];
    }

    if ([v4 containsValueForKey:@"ensureAlmostNeutralExpressionOnAllPoses"])
    {
      v49 = @"ensureAlmostNeutralExpressionOnAllPoses";
    }

    else
    {
      v49 = @"ensureAlmostNeutralExpressionOnNonFrontPose";
    }

    v5->_ensureAlmostNeutralExpressionOnNonFrontPose = [v4 decodeBoolForKey:v49];
    v5->_useFaceTrackingDictionary = [v4 decodeBoolForKey:@"useFaceTrackingDictionary"];
    v5->_useFKInternalFaceDetector = [v4 decodeBoolForKey:@"useFKInternalFaceDetector"];
    v5->_useFKForceCPU = [v4 decodeBoolForKey:@"useFKForceCPU"];
    v5->_convertFKTrackingDictToARKitDict = [v4 decodeBoolForKey:@"convertFKTrackingDictToARKitDict"];
    v5->_sendMetrics = [v4 decodeBoolForKey:@"sendMetrics"];
    v50 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cameraImageColorSpaceName"];
    cameraImageColorSpaceName = v5->_cameraImageColorSpaceName;
    v5->_cameraImageColorSpaceName = v50;

    v5->_useSimpleSelector = [v4 decodeBoolForKey:@"useSimpleSelector"];
    [v4 decodeFloatForKey:@"simpleSelectorMinOffsetAngle"];
    v5->_simpleSelectorMinOffsetAngle = v52;
    [v4 decodeFloatForKey:@"simpleSelectorMaxOffsetAngle"];
    v5->_simpleSelectorMaxOffsetAngle = v53;
    v5->_useDistanceFilter = [v4 decodeBoolForKey:@"useDistanceFilter"];
    [v4 decodeFloatForKey:@"distanceFilterCloseThreshold"];
    v5->_distanceFilterCloseThreshold = v54;
    [v4 decodeFloatForKey:@"distanceFilterFarThreshold"];
    v5->_distanceFilterFarThreshold = v55;
    v5->_useAmbientLightFilter = [v4 decodeBoolForKey:@"useAmbientLightFilter"];
    [v4 decodeFloatForKey:@"ambientLightFilterLowThreshold"];
    v5->_ambientLightFilterLowThreshold = v56;
    v5->_useVNFilters = [v4 decodeBoolForKey:@"useVNFilters"];
    v5->_useVNFiltersEnrollment = [v4 decodeBoolForKey:@"useVNFiltersEnrollment"];
    [v4 decodeFloatForKey:@"vnFrontPoseBlinkThreshold"];
    v5->_vnFrontPoseBlinkThreshold = v57;
    if ([v4 containsValueForKey:@"bodyPoseGuidanceOptions"])
    {
      v58 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bodyPoseGuidanceOptions"];
    }

    else
    {
      v58 = 0;
    }

    bodyPoseGuidanceOptions = v5->_bodyPoseGuidanceOptions;
    v5->_bodyPoseGuidanceOptions = v58;

    if ([v4 containsValueForKey:@"useFovMarginsFilterFrontPose"])
    {
      v60 = [v4 decodeBoolForKey:@"useFovMarginsFilterFrontPose"];
    }

    else
    {
      v60 = 1;
    }

    v5->_useFovMarginsFilterFrontPose = v60;
    if ([v4 containsValueForKey:@"useFovMarginsFilterNonFrontPose"])
    {
      v61 = [v4 decodeBoolForKey:@"useFovMarginsFilterNonFrontPose"];
    }

    else
    {
      v61 = 1;
    }

    v5->_useFovMarginsFilterNonFrontPose = v61;
    if ([v4 containsValueForKey:@"useDepthFovFilter"])
    {
      v62 = [v4 decodeBoolForKey:@"useDepthFovFilter"];
    }

    else
    {
      v62 = 1;
    }

    v5->_useDepthFovFilter = v62;
    v63 = [v4 containsValueForKey:@"useDepthFovFilterForBadAlignment"];
    if (v63)
    {
      LOBYTE(v63) = [v4 decodeBoolForKey:@"useDepthFovFilterForBadAlignment"];
    }

    v5->_useDepthFovFilterForBadAlignment = v63;
    v64 = [v4 containsValueForKey:@"useAmbientLightFilter"];
    if (v64)
    {
      LOBYTE(v64) = [v4 decodeBoolForKey:@"useAmbientLightFilter"];
    }

    v5->_useAmbientLightFilter = v64;
    v65 = [v4 containsValueForKey:@"useTrackedFaceIdentifierFilter"];
    if (v65)
    {
      LOBYTE(v65) = [v4 decodeBoolForKey:@"useTrackedFaceIdentifierFilter"];
    }

    v5->_useTrackedFaceIdentifierFilter = v65;
    v66 = [v4 containsValueForKey:@"useVNFaceLandmarksFilter"];
    if (v66)
    {
      LOBYTE(v66) = [v4 decodeBoolForKey:@"useVNFaceLandmarksFilter"];
    }

    v5->_useVNFaceLandmarksFilter = v66;
    v67 = [v4 containsValueForKey:@"useMotionBlurFilter"];
    if (v67)
    {
      LOBYTE(v67) = [v4 decodeBoolForKey:@"useMotionBlurFilter"];
    }

    v5->_useMotionBlurFilter = v67;
    if ([v4 containsValueForKey:@"motionBlurThreshold"])
    {
      [v4 decodeFloatForKey:@"motionBlurThreshold"];
    }

    else
    {
      [objc_opt_class() defaultMotionBlurThreshold];
    }

    v5->_motionBlurThreshold = v68;
    v69 = v5;
  }

  v70 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  requiredYawPoses = self->_requiredYawPoses;
  v27 = a3;
  [v27 encodeInteger:requiredYawPoses forKey:@"requiredYawPoses"];
  [v27 encodeInteger:self->_requiredPitchPoses forKey:@"requiredPitchPoses"];
  [v27 encodeObject:self->_requiredExpressions forKey:@"requiredExpressions"];
  *&v5 = self->_yawLimit;
  [v27 encodeFloat:@"yawLimit" forKey:v5];
  *&v6 = self->_pitchLimit;
  [v27 encodeFloat:@"pitchLimit" forKey:v6];
  *&v7 = self->_eyesForwardYawSensitivity;
  [v27 encodeFloat:@"eyesForwardYawSensitivity" forKey:v7];
  *&v8 = self->_eyesForwardPitchSensitivity;
  [v27 encodeFloat:@"eyesForwardPitchSensitivity" forKey:v8];
  *&v9 = self->_leftMarginHeadRatio;
  [v27 encodeFloat:@"leftMarginHeadRatio" forKey:v9];
  *&v10 = self->_rightMarginHeadRatio;
  [v27 encodeFloat:@"rightMarginHeadRatio" forKey:v10];
  *&v11 = self->_topMarginHeadRatio;
  [v27 encodeFloat:@"topMarginHeadRatio" forKey:v11];
  *&v12 = self->_bottomMarginHeadRatio;
  [v27 encodeFloat:@"bottomMarginHeadRatio" forKey:v12];
  *&v13 = self->_leftMarginFrontPoseHeadRatio;
  [v27 encodeFloat:@"leftMarginFrontPoseHeadRatio" forKey:v13];
  *&v14 = self->_rightMarginFrontPoseHeadRatio;
  [v27 encodeFloat:@"rightMarginFrontPoseHeadRatio" forKey:v14];
  *&v15 = self->_bottomMarginFrontPoseDelta;
  [v27 encodeFloat:@"bottomMarginFrontPoseDelta" forKey:v15];
  *&v16 = self->_bottomMarginPitchPoseDelta;
  [v27 encodeFloat:@"bottomMarginPitchPoseDelta" forKey:v16];
  *&v17 = self->_eyesOpenSensitivity;
  [v27 encodeFloat:@"eyesOpenSensitivity" forKey:v17];
  *&v18 = self->_neutralExpressionLowerBound;
  [v27 encodeFloat:@"neutralExpressionLowerBound" forKey:v18];
  *&v19 = self->_neutralExpressionUpperBound;
  [v27 encodeFloat:@"neutralExpressionUpperBound" forKey:v19];
  [v27 encodeBool:self->_writeDebugData forKey:@"writeDebugData"];
  [v27 encodeObject:self->_debugDataPath forKey:@"debugDataPath"];
  [v27 encodeBool:self->_useLookAtForEyesForward forKey:@"useLookAtForEyesForward"];
  [v27 encodeBool:self->_ensureEyesForwardOnFrontPose forKey:@"ensureEyesForwardOnFrontPose"];
  [v27 encodeBool:self->_ensureEyesOpenOnFrontPose forKey:@"ensureEyesOpenOnFrontPose"];
  [v27 encodeBool:self->_ensureEyesOpenOnNonFrontPose forKey:@"ensureEyesOpenOnNonFrontPose"];
  [v27 encodeBool:self->_ensureNeutralExpressionOnFrontPose forKey:@"ensureNeutralExpressionOnFrontPose"];
  [v27 encodeBool:self->_ensureAlmostNeutralExpressionOnNonFrontPose forKey:@"ensureAlmostNeutralExpressionOnNonFrontPose"];
  [v27 encodeBool:self->_useFaceTrackingDictionary forKey:@"useFaceTrackingDictionary"];
  [v27 encodeBool:self->_useFKInternalFaceDetector forKey:@"useFKInternalFaceDetector"];
  [v27 encodeBool:self->_useFKForceCPU forKey:@"useFKForceCPU"];
  [v27 encodeBool:self->_convertFKTrackingDictToARKitDict forKey:@"convertFKTrackingDictToARKitDict"];
  [v27 encodeBool:self->_sendMetrics forKey:@"sendMetrics"];
  [v27 encodeObject:self->_cameraImageColorSpaceName forKey:@"cameraImageColorSpaceName"];
  [v27 encodeBool:self->_useSimpleSelector forKey:@"useSimpleSelector"];
  *&v20 = self->_simpleSelectorMinOffsetAngle;
  [v27 encodeFloat:@"simpleSelectorMinOffsetAngle" forKey:v20];
  *&v21 = self->_simpleSelectorMaxOffsetAngle;
  [v27 encodeFloat:@"simpleSelectorMaxOffsetAngle" forKey:v21];
  [v27 encodeBool:self->_useDistanceFilter forKey:@"useDistanceFilter"];
  *&v22 = self->_distanceFilterCloseThreshold;
  [v27 encodeFloat:@"distanceFilterCloseThreshold" forKey:v22];
  *&v23 = self->_distanceFilterFarThreshold;
  [v27 encodeFloat:@"distanceFilterFarThreshold" forKey:v23];
  [v27 encodeBool:self->_useVNFilters forKey:@"useVNFilters"];
  [v27 encodeBool:self->_useVNFiltersEnrollment forKey:@"useVNFiltersEnrollment"];
  *&v24 = self->_vnFrontPoseBlinkThreshold;
  [v27 encodeFloat:@"vnFrontPoseBlinkThreshold" forKey:v24];
  [v27 encodeObject:self->_bodyPoseGuidanceOptions forKey:@"bodyPoseGuidanceOptions"];
  [v27 encodeObject:self->_selectionFrustum forKey:@"selectionFrustum"];
  [v27 encodeObject:self->_frontPoseSelectionFrustum forKey:@"frontPoseSelectionFrustum"];
  [v27 encodeBool:self->_useFovMarginsFilterFrontPose forKey:@"useFovMarginsFilterFrontPose"];
  [v27 encodeBool:self->_useFovMarginsFilterNonFrontPose forKey:@"useFovMarginsFilterNonFrontPose"];
  [v27 encodeBool:self->_useDepthFovFilter forKey:@"useDepthFovFilter"];
  [v27 encodeBool:self->_useDepthFovFilterForBadAlignment forKey:@"useDepthFovFilterForBadAlignment"];
  [v27 encodeBool:self->_useAmbientLightFilter forKey:@"useAmbientLightFilter"];
  *&v25 = self->_ambientLightFilterLowThreshold;
  [v27 encodeFloat:@"ambientLightFilterLowThreshold" forKey:v25];
  [v27 encodeBool:self->_useTrackedFaceIdentifierFilter forKey:@"useTrackedFaceIdentifierFilter"];
  [v27 encodeBool:self->_useVNFaceLandmarksFilter forKey:@"useVNFaceLandmarksFilter"];
  [v27 encodeBool:self->_useMotionBlurFilter forKey:@"useMotionBlurFilter"];
  *&v26 = self->_motionBlurThreshold;
  [v27 encodeFloat:@"motionBlurThreshold" forKey:v26];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    requiredYawPoses = self->_requiredYawPoses;
    if (requiredYawPoses != [v5 requiredYawPoses] || (requiredPitchPoses = self->_requiredPitchPoses, requiredPitchPoses != objc_msgSend(v5, "requiredPitchPoses")))
    {
      v45 = 0;
LABEL_30:

      goto LABEL_31;
    }

    requiredExpressions = self->_requiredExpressions;
    v9 = [v5 requiredExpressions];
    if (![requiredExpressions isEqualToArray:v9])
    {
      goto LABEL_28;
    }

    yawLimit = self->_yawLimit;
    [v5 yawLimit];
    if (yawLimit != v11)
    {
      goto LABEL_28;
    }

    pitchLimit = self->_pitchLimit;
    [v5 pitchLimit];
    if (pitchLimit != v13)
    {
      goto LABEL_28;
    }

    eyesForwardYawSensitivity = self->_eyesForwardYawSensitivity;
    [v5 eyesForwardYawSensitivity];
    if (eyesForwardYawSensitivity != v15)
    {
      goto LABEL_28;
    }

    eyesForwardPitchSensitivity = self->_eyesForwardPitchSensitivity;
    [v5 eyesForwardPitchSensitivity];
    if (eyesForwardPitchSensitivity != v17)
    {
      goto LABEL_28;
    }

    leftMarginHeadRatio = self->_leftMarginHeadRatio;
    [v5 leftMarginHeadRatio];
    if (leftMarginHeadRatio != v19)
    {
      goto LABEL_28;
    }

    rightMarginHeadRatio = self->_rightMarginHeadRatio;
    [v5 rightMarginHeadRatio];
    if (rightMarginHeadRatio != v21)
    {
      goto LABEL_28;
    }

    topMarginHeadRatio = self->_topMarginHeadRatio;
    [v5 topMarginHeadRatio];
    if (topMarginHeadRatio != v23)
    {
      goto LABEL_28;
    }

    bottomMarginHeadRatio = self->_bottomMarginHeadRatio;
    [v5 bottomMarginHeadRatio];
    if (bottomMarginHeadRatio != v25)
    {
      goto LABEL_28;
    }

    leftMarginFrontPoseHeadRatio = self->_leftMarginFrontPoseHeadRatio;
    [v5 leftMarginFrontPoseHeadRatio];
    if (leftMarginFrontPoseHeadRatio != v27)
    {
      goto LABEL_28;
    }

    rightMarginFrontPoseHeadRatio = self->_rightMarginFrontPoseHeadRatio;
    [v5 rightMarginFrontPoseHeadRatio];
    if (rightMarginFrontPoseHeadRatio != v29)
    {
      goto LABEL_28;
    }

    bottomMarginFrontPoseDelta = self->_bottomMarginFrontPoseDelta;
    [v5 bottomMarginFrontPoseDelta];
    if (bottomMarginFrontPoseDelta != v31)
    {
      goto LABEL_28;
    }

    bottomMarginPitchPoseDelta = self->_bottomMarginPitchPoseDelta;
    [v5 bottomMarginPitchPoseDelta];
    if (bottomMarginPitchPoseDelta != v33)
    {
      goto LABEL_28;
    }

    eyesOpenSensitivity = self->_eyesOpenSensitivity;
    [v5 eyesOpenSensitivity];
    if (eyesOpenSensitivity != v35 || (neutralExpressionLowerBound = self->_neutralExpressionLowerBound, [v5 neutralExpressionLowerBound], neutralExpressionLowerBound != v37) || (neutralExpressionUpperBound = self->_neutralExpressionUpperBound, objc_msgSend(v5, "neutralExpressionUpperBound"), neutralExpressionUpperBound != v39) || (v40 = self, writeDebugData = self->_writeDebugData, writeDebugData != objc_msgSend(v5, "writeDebugData")))
    {
LABEL_28:
      v45 = 0;
LABEL_29:

      goto LABEL_30;
    }

    debugDataPath = v40->_debugDataPath;
    v43 = debugDataPath;
    if (!debugDataPath)
    {
      writeDebugData = [v5 debugDataPath];
      if (!writeDebugData)
      {
        v44 = 0;
        goto LABEL_34;
      }

      v43 = v40->_debugDataPath;
    }

    requiredExpressions = [v5 debugDataPath];
    if (![(NSString *)v43 isEqualToString:requiredExpressions])
    {

      v45 = 0;
      goto LABEL_52;
    }

    v44 = 1;
LABEL_34:
    useLookAtForEyesForward = v40->_useLookAtForEyesForward;
    if (useLookAtForEyesForward != [v5 useLookAtForEyesForward])
    {
      goto LABEL_50;
    }

    ensureEyesForwardOnFrontPose = v40->_ensureEyesForwardOnFrontPose;
    if (ensureEyesForwardOnFrontPose != [v5 ensureEyesForwardOnFrontPose])
    {
      goto LABEL_50;
    }

    ensureEyesOpenOnFrontPose = v40->_ensureEyesOpenOnFrontPose;
    if (ensureEyesOpenOnFrontPose != [v5 ensureEyesOpenOnFrontPose])
    {
      goto LABEL_50;
    }

    ensureEyesOpenOnNonFrontPose = v40->_ensureEyesOpenOnNonFrontPose;
    if (ensureEyesOpenOnNonFrontPose != [v5 ensureEyesOpenOnNonFrontPose] || (ensureNeutralExpressionOnFrontPose = v40->_ensureNeutralExpressionOnFrontPose, ensureNeutralExpressionOnFrontPose != objc_msgSend(v5, "ensureNeutralExpressionOnFrontPose")) || (ensureAlmostNeutralExpressionOnNonFrontPose = v40->_ensureAlmostNeutralExpressionOnNonFrontPose, ensureAlmostNeutralExpressionOnNonFrontPose != objc_msgSend(v5, "ensureAlmostNeutralExpressionOnNonFrontPose")) || (useFaceTrackingDictionary = v40->_useFaceTrackingDictionary, useFaceTrackingDictionary != objc_msgSend(v5, "useFaceTrackingDictionary")) || (useFKInternalFaceDetector = v40->_useFKInternalFaceDetector, useFKInternalFaceDetector != objc_msgSend(v5, "useFKInternalFaceDetector")) || (useFKForceCPU = v40->_useFKForceCPU, useFKForceCPU != objc_msgSend(v5, "useFKForceCPU")) || (convertFKTrackingDictToARKitDict = v40->_convertFKTrackingDictToARKitDict, convertFKTrackingDictToARKitDict != objc_msgSend(v5, "convertFKTrackingDictToARKitDict")) || (sendMetrics = v40->_sendMetrics, sendMetrics != objc_msgSend(v5, "sendMetrics")))
    {
LABEL_50:
      v45 = 0;
      if ((v44 & 1) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    }

    cameraImageColorSpaceName = v40->_cameraImageColorSpaceName;
    v59 = cameraImageColorSpaceName;
    if (!cameraImageColorSpaceName)
    {
      v101 = [v5 cameraImageColorSpaceName];
      if (!v101)
      {
        v101 = 0;
        v102 = 0;
        goto LABEL_56;
      }

      v59 = v40->_cameraImageColorSpaceName;
    }

    v103 = [v5 cameraImageColorSpaceName];
    if (![(NSString *)v59 isEqualToString:?])
    {

      v45 = 0;
      goto LABEL_73;
    }

    v102 = 1;
LABEL_56:
    useSimpleSelector = v40->_useSimpleSelector;
    if (useSimpleSelector != [v5 useSimpleSelector])
    {
      goto LABEL_70;
    }

    simpleSelectorMinOffsetAngle = v40->_simpleSelectorMinOffsetAngle;
    [v5 simpleSelectorMinOffsetAngle];
    if (simpleSelectorMinOffsetAngle != v62)
    {
      goto LABEL_70;
    }

    simpleSelectorMaxOffsetAngle = v40->_simpleSelectorMaxOffsetAngle;
    [v5 simpleSelectorMaxOffsetAngle];
    if (simpleSelectorMaxOffsetAngle != v64)
    {
      goto LABEL_70;
    }

    useDistanceFilter = v40->_useDistanceFilter;
    if (useDistanceFilter != [v5 useDistanceFilter])
    {
      goto LABEL_70;
    }

    distanceFilterCloseThreshold = v40->_distanceFilterCloseThreshold;
    [v5 distanceFilterCloseThreshold];
    if (distanceFilterCloseThreshold != v67 || (distanceFilterFarThreshold = v40->_distanceFilterFarThreshold, [v5 distanceFilterFarThreshold], distanceFilterFarThreshold != v69) || (useVNFilters = v40->_useVNFilters, useVNFilters != objc_msgSend(v5, "useVNFilters")) || (useVNFiltersEnrollment = v40->_useVNFiltersEnrollment, useVNFiltersEnrollment != objc_msgSend(v5, "useVNFiltersEnrollment")) || (vnFrontPoseBlinkThreshold = v40->_vnFrontPoseBlinkThreshold, objc_msgSend(v5, "vnFrontPoseBlinkThreshold"), vnFrontPoseBlinkThreshold != v73))
    {
LABEL_70:
      v45 = 0;
      goto LABEL_71;
    }

    bodyPoseGuidanceOptions = v40->_bodyPoseGuidanceOptions;
    v100 = bodyPoseGuidanceOptions;
    if (!bodyPoseGuidanceOptions)
    {
      v95 = [v5 bodyPoseGuidanceOptions];
      if (!v95)
      {
        v95 = 0;
        v98 = 0;
        goto LABEL_80;
      }

      bodyPoseGuidanceOptions = v40->_bodyPoseGuidanceOptions;
    }

    v99 = [v5 bodyPoseGuidanceOptions];
    if (![(VGBodyPoseGuidanceOptions *)bodyPoseGuidanceOptions isEqual:?])
    {
      v45 = 0;
      goto LABEL_112;
    }

    v98 = 1;
LABEL_80:
    selectionFrustum = v40->_selectionFrustum;
    v97 = selectionFrustum;
    if (!selectionFrustum)
    {
      v91 = [v5 selectionFrustum];
      if (!v91)
      {
        v91 = 0;
        v93 = 0;
        goto LABEL_87;
      }

      selectionFrustum = v40->_selectionFrustum;
    }

    v96 = [v5 selectionFrustum];
    if (![(VGFaceSelectionFrustum *)selectionFrustum isEqual:?])
    {
      v45 = 0;
      goto LABEL_109;
    }

    v93 = 1;
LABEL_87:
    frontPoseSelectionFrustum = v40->_frontPoseSelectionFrustum;
    v94 = frontPoseSelectionFrustum;
    if (!frontPoseSelectionFrustum)
    {
      v89 = [v5 frontPoseSelectionFrustum];
      if (!v89)
      {
        v89 = 0;
        v90 = 0;
        goto LABEL_94;
      }

      frontPoseSelectionFrustum = v40->_frontPoseSelectionFrustum;
    }

    v92 = [v5 frontPoseSelectionFrustum];
    if (![(VGFaceSelectionFrustum *)frontPoseSelectionFrustum isEqual:?])
    {
      v45 = 0;
      goto LABEL_106;
    }

    v90 = 1;
LABEL_94:
    useFovMarginsFilterFrontPose = v40->_useFovMarginsFilterFrontPose;
    if (useFovMarginsFilterFrontPose != [v5 useFovMarginsFilterFrontPose])
    {
      goto LABEL_105;
    }

    useFovMarginsFilterNonFrontPose = v40->_useFovMarginsFilterNonFrontPose;
    if (useFovMarginsFilterNonFrontPose != [v5 useFovMarginsFilterNonFrontPose])
    {
      goto LABEL_105;
    }

    useDepthFovFilter = v40->_useDepthFovFilter;
    if (useDepthFovFilter != [v5 useDepthFovFilter])
    {
      goto LABEL_105;
    }

    useDepthFovFilterForBadAlignment = v40->_useDepthFovFilterForBadAlignment;
    if (useDepthFovFilterForBadAlignment == [v5 useDepthFovFilterForBadAlignment] && (useAmbientLightFilter = v40->_useAmbientLightFilter, useAmbientLightFilter == objc_msgSend(v5, "useAmbientLightFilter")) && (ambientLightFilterLowThreshold = v40->_ambientLightFilterLowThreshold, objc_msgSend(v5, "ambientLightFilterLowThreshold"), ambientLightFilterLowThreshold == v83) && (useTrackedFaceIdentifierFilter = v40->_useTrackedFaceIdentifierFilter, useTrackedFaceIdentifierFilter == objc_msgSend(v5, "useTrackedFaceIdentifierFilter")) && (useVNFaceLandmarksFilter = v40->_useVNFaceLandmarksFilter, useVNFaceLandmarksFilter == objc_msgSend(v5, "useVNFaceLandmarksFilter")) && (useMotionBlurFilter = v40->_useMotionBlurFilter, useMotionBlurFilter == objc_msgSend(v5, "useMotionBlurFilter")))
    {
      motionBlurThreshold = v40->_motionBlurThreshold;
      [v5 motionBlurThreshold];
      v45 = motionBlurThreshold == v88;
      if ((v90 & 1) == 0)
      {
LABEL_107:
        if (v94)
        {
          if (!v93)
          {
            goto LABEL_110;
          }
        }

        else
        {

          if ((v93 & 1) == 0)
          {
LABEL_110:
            if (v97)
            {
              if (!v98)
              {
LABEL_113:
                if (v100)
                {
                  if (!v102)
                  {
LABEL_73:
                    if (cameraImageColorSpaceName)
                    {
                      if (!v44)
                      {
                        goto LABEL_52;
                      }
                    }

                    else
                    {

                      if ((v44 & 1) == 0)
                      {
LABEL_52:
                        if (!debugDataPath)
                        {
                        }

                        goto LABEL_29;
                      }
                    }

LABEL_51:

                    goto LABEL_52;
                  }

LABEL_72:

                  goto LABEL_73;
                }

LABEL_71:
                if ((v102 & 1) == 0)
                {
                  goto LABEL_73;
                }

                goto LABEL_72;
              }
            }

            else
            {

              if ((v98 & 1) == 0)
              {
                goto LABEL_113;
              }
            }

LABEL_112:

            goto LABEL_113;
          }
        }

LABEL_109:

        goto LABEL_110;
      }
    }

    else
    {
LABEL_105:
      v45 = 0;
      if (!v90)
      {
        goto LABEL_107;
      }
    }

LABEL_106:

    goto LABEL_107;
  }

  v45 = 0;
LABEL_31:

  return v45;
}

- (id)toDictionary
{
  v94[53] = *MEMORY[0x277D85DE8];
  v93[0] = @"requiredYawPoses";
  v92 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_requiredYawPoses];
  v94[0] = v92;
  v93[1] = @"requiredPitchPoses";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_requiredPitchPoses];
  requiredExpressions = self->_requiredExpressions;
  v91 = v3;
  v94[1] = v3;
  v94[2] = requiredExpressions;
  v93[2] = @"requiredExpressions";
  v93[3] = @"yawLimit";
  *&v5 = self->_yawLimit;
  v90 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  v94[3] = v90;
  v93[4] = @"pitchLimit";
  *&v6 = self->_pitchLimit;
  v89 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  v94[4] = v89;
  v93[5] = @"eyesForwardYawSensitivity";
  *&v7 = self->_eyesForwardYawSensitivity;
  v88 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  v94[5] = v88;
  v93[6] = @"eyesForwardPitchSensitivity";
  *&v8 = self->_eyesForwardPitchSensitivity;
  v87 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  v94[6] = v87;
  v93[7] = @"leftMarginHeadRatio";
  *&v9 = self->_leftMarginHeadRatio;
  v86 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  v94[7] = v86;
  v93[8] = @"rightMarginHeadRatio";
  *&v10 = self->_rightMarginHeadRatio;
  v85 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
  v94[8] = v85;
  v93[9] = @"topMarginHeadRatio";
  *&v11 = self->_topMarginHeadRatio;
  v84 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
  v94[9] = v84;
  v93[10] = @"bottomMarginHeadRatio";
  *&v12 = self->_bottomMarginHeadRatio;
  v83 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
  v94[10] = v83;
  v93[11] = @"leftMarginFrontPoseHeadRatio";
  *&v13 = self->_leftMarginFrontPoseHeadRatio;
  v82 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
  v94[11] = v82;
  v93[12] = @"rightMarginFrontPoseHeadRatio";
  *&v14 = self->_rightMarginFrontPoseHeadRatio;
  v81 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
  v94[12] = v81;
  v93[13] = @"bottomMarginFrontPoseDelta";
  *&v15 = self->_bottomMarginFrontPoseDelta;
  v80 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
  v94[13] = v80;
  v93[14] = @"bottomMarginPitchPoseDelta";
  *&v16 = self->_bottomMarginPitchPoseDelta;
  v79 = [MEMORY[0x277CCABB0] numberWithFloat:v16];
  v94[14] = v79;
  v93[15] = @"eyesOpenSensitivity";
  *&v17 = self->_eyesOpenSensitivity;
  v78 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
  v94[15] = v78;
  v93[16] = @"neutralExpressionLowerBound";
  *&v18 = self->_neutralExpressionLowerBound;
  v77 = [MEMORY[0x277CCABB0] numberWithFloat:v18];
  v94[16] = v77;
  v93[17] = @"neutralExpressionUpperBound";
  *&v19 = self->_neutralExpressionUpperBound;
  v76 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
  v94[17] = v76;
  v93[18] = @"writeDebugData";
  v20 = [MEMORY[0x277CCABB0] numberWithBool:self->_writeDebugData];
  debugDataPath = self->_debugDataPath;
  v22 = @"nil";
  if (!debugDataPath)
  {
    debugDataPath = @"nil";
  }

  v75 = v20;
  v94[18] = v20;
  v94[19] = debugDataPath;
  v93[19] = @"debugDataPath";
  v93[20] = @"useLookAtForEyesForward";
  v74 = [MEMORY[0x277CCABB0] numberWithBool:self->_useLookAtForEyesForward];
  v94[20] = v74;
  v93[21] = @"ensureEyesForwardOnFrontPose";
  v73 = [MEMORY[0x277CCABB0] numberWithBool:self->_ensureEyesForwardOnFrontPose];
  v94[21] = v73;
  v93[22] = @"ensureEyesOpenOnFrontPose";
  v72 = [MEMORY[0x277CCABB0] numberWithBool:self->_ensureEyesOpenOnFrontPose];
  v94[22] = v72;
  v93[23] = @"ensureEyesOpenOnNonFrontPose";
  v71 = [MEMORY[0x277CCABB0] numberWithBool:self->_ensureEyesOpenOnNonFrontPose];
  v94[23] = v71;
  v93[24] = @"ensureAlmostNeutralExpressionOnNonFrontPose";
  v70 = [MEMORY[0x277CCABB0] numberWithBool:self->_ensureAlmostNeutralExpressionOnNonFrontPose];
  v94[24] = v70;
  v93[25] = @"useFaceTrackingDictionary";
  v68 = [MEMORY[0x277CCABB0] numberWithBool:self->_useFaceTrackingDictionary];
  v94[25] = v68;
  v93[26] = @"useFKInternalFaceDetector";
  v67 = [MEMORY[0x277CCABB0] numberWithBool:self->_useFKInternalFaceDetector];
  v94[26] = v67;
  v93[27] = @"useFKForceCPU";
  v66 = [MEMORY[0x277CCABB0] numberWithBool:self->_useFKForceCPU];
  v94[27] = v66;
  v93[28] = @"convertFKTrackingDictToARKitDict";
  v65 = [MEMORY[0x277CCABB0] numberWithBool:self->_convertFKTrackingDictToARKitDict];
  v94[28] = v65;
  v93[29] = @"sendMetrics";
  v23 = [MEMORY[0x277CCABB0] numberWithBool:self->_sendMetrics];
  cameraImageColorSpaceName = self->_cameraImageColorSpaceName;
  v64 = v23;
  v94[29] = v23;
  v94[30] = cameraImageColorSpaceName;
  v93[30] = @"cameraImageColorSpaceName";
  v93[31] = @"useSimpleSelector";
  v63 = [MEMORY[0x277CCABB0] numberWithBool:self->_useSimpleSelector];
  v94[31] = v63;
  v93[32] = @"simpleSelectorMinOffsetAngle";
  *&v25 = self->_simpleSelectorMinOffsetAngle;
  v62 = [MEMORY[0x277CCABB0] numberWithFloat:v25];
  v94[32] = v62;
  v93[33] = @"simpleSelectorMaxOffsetAngle";
  *&v26 = self->_simpleSelectorMaxOffsetAngle;
  v61 = [MEMORY[0x277CCABB0] numberWithFloat:v26];
  v94[33] = v61;
  v93[34] = @"useDistanceFilter";
  v60 = [MEMORY[0x277CCABB0] numberWithBool:self->_useDistanceFilter];
  v94[34] = v60;
  v93[35] = @"distanceFilterCloseThreshold";
  *&v27 = self->_distanceFilterCloseThreshold;
  v59 = [MEMORY[0x277CCABB0] numberWithFloat:v27];
  v94[35] = v59;
  v93[36] = @"distanceFilterFarThreshold";
  *&v28 = self->_distanceFilterFarThreshold;
  v58 = [MEMORY[0x277CCABB0] numberWithFloat:v28];
  v94[36] = v58;
  v93[37] = @"useVNFilters";
  v57 = [MEMORY[0x277CCABB0] numberWithBool:self->_useVNFilters];
  v94[37] = v57;
  v93[38] = @"useVNFiltersEnrollment";
  v56 = [MEMORY[0x277CCABB0] numberWithBool:self->_useVNFiltersEnrollment];
  v94[38] = v56;
  v93[39] = @"vnFrontPoseBlinkThreshold";
  *&v29 = self->_vnFrontPoseBlinkThreshold;
  v55 = [MEMORY[0x277CCABB0] numberWithFloat:v29];
  v94[39] = v55;
  v93[40] = @"bodyPoseGuidanceOptions";
  bodyPoseGuidanceOptions = self->_bodyPoseGuidanceOptions;
  v54 = bodyPoseGuidanceOptions;
  if (bodyPoseGuidanceOptions)
  {
    v22 = [(VGBodyPoseGuidanceOptions *)bodyPoseGuidanceOptions toDictionary];
  }

  v94[40] = v22;
  v93[41] = @"selectionFrustum";
  selectionFrustum = self->_selectionFrustum;
  v53 = selectionFrustum;
  if (selectionFrustum)
  {
    v32 = [(VGFaceSelectionFrustum *)selectionFrustum toDictionary];
  }

  else
  {
    v32 = @"nil";
  }

  v50 = v32;
  v94[41] = v32;
  v93[42] = @"frontPoseSelectionFrustum";
  frontPoseSelectionFrustum = self->_frontPoseSelectionFrustum;
  v69 = v22;
  v52 = frontPoseSelectionFrustum;
  if (frontPoseSelectionFrustum)
  {
    v34 = [(VGFaceSelectionFrustum *)frontPoseSelectionFrustum toDictionary];
  }

  else
  {
    v34 = @"nil";
  }

  v94[42] = v34;
  v93[43] = @"useFovMarginsFilterFrontPose";
  v51 = [MEMORY[0x277CCABB0] numberWithBool:{self->_useFovMarginsFilterFrontPose, v34}];
  v94[43] = v51;
  v93[44] = @"useFovMarginsFilterNonFrontPose";
  v35 = [MEMORY[0x277CCABB0] numberWithBool:self->_useFovMarginsFilterNonFrontPose];
  v94[44] = v35;
  v93[45] = @"useDepthFovFilter";
  v36 = [MEMORY[0x277CCABB0] numberWithBool:self->_useDepthFovFilter];
  v94[45] = v36;
  v93[46] = @"useDepthFovFilterForBadAlignment";
  v37 = [MEMORY[0x277CCABB0] numberWithBool:self->_useDepthFovFilterForBadAlignment];
  v94[46] = v37;
  v93[47] = @"useAmbientLightFilter";
  v38 = [MEMORY[0x277CCABB0] numberWithBool:self->_useAmbientLightFilter];
  v94[47] = v38;
  v93[48] = @"ambientLightFilterLowThreshold";
  *&v39 = self->_ambientLightFilterLowThreshold;
  v40 = [MEMORY[0x277CCABB0] numberWithFloat:v39];
  v94[48] = v40;
  v93[49] = @"useTrackedFaceIdentifierFilter";
  v41 = [MEMORY[0x277CCABB0] numberWithBool:self->_useTrackedFaceIdentifierFilter];
  v94[49] = v41;
  v93[50] = @"useVNFaceLandmarksFilter";
  v42 = [MEMORY[0x277CCABB0] numberWithBool:self->_useVNFaceLandmarksFilter];
  v94[50] = v42;
  v93[51] = @"useMotionBlurFilter";
  v43 = [MEMORY[0x277CCABB0] numberWithBool:self->_useMotionBlurFilter];
  v94[51] = v43;
  v93[52] = @"motionBlurThreshold";
  *&v44 = self->_motionBlurThreshold;
  v45 = [MEMORY[0x277CCABB0] numberWithFloat:v44];
  v94[52] = v45;
  v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v94 forKeys:v93 count:53];

  if (v52)
  {
  }

  if (v53)
  {
  }

  if (v54)
  {
  }

  v47 = *MEMORY[0x277D85DE8];

  return v46;
}

@end
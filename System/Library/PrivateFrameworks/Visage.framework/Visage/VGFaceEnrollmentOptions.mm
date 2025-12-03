@interface VGFaceEnrollmentOptions
- (BOOL)ensureAlmostNeutralExpressionOnAllPoses;
- (BOOL)ensureAlmostNeutralExpressionOnNonFrontPose;
- (BOOL)ensureEyesForwardOnFrontPose;
- (BOOL)ensureEyesOpenOnAllPoses;
- (BOOL)ensureEyesOpenOnFrontPose;
- (BOOL)ensureEyesOpenOnNonFrontPose;
- (BOOL)ensureNeutralExpressionOnFrontPose;
- (BOOL)isEqual:(id)equal;
- (BOOL)sendMetrics;
- (BOOL)useDepthFovFilter;
- (BOOL)useDistanceFilter;
- (BOOL)useFKForceCPU;
- (BOOL)useFKInternalFaceDetector;
- (BOOL)useFaceTrackingDictionary;
- (BOOL)useFovMarginsFilterFrontPose;
- (BOOL)useFovMarginsFilterNonFrontPose;
- (BOOL)useLookAtForEyesForward;
- (BOOL)useSimpleSelector;
- (BOOL)useVNFilters;
- (BOOL)useVNFiltersEnrollment;
- (NSArray)requiredExpressions;
- (NSString)cameraImageColorSpaceName;
- (VGFaceEnrollmentOptions)init;
- (VGFaceEnrollmentOptions)initWithCoder:(id)coder;
- (VGFaceSelectionFrustum)frontPoseSelectionFrustum;
- (VGFaceSelectionFrustum)selectionFrustum;
- (float)bottomMarginFrontPoseDelta;
- (float)bottomMarginHeadRatio;
- (float)bottomMarginPitchPoseDelta;
- (float)distanceFilterCloseThreshold;
- (float)distanceFilterFarThreshold;
- (float)eyesForwardPitchSensitivity;
- (float)eyesForwardYawSensitivity;
- (float)eyesOpenSensitivity;
- (float)leftMarginFrontPoseHeadRatio;
- (float)leftMarginHeadRatio;
- (float)neutralExpressionLowerBound;
- (float)neutralExpressionUpperBound;
- (float)pitchLimit;
- (float)rightMarginFrontPoseHeadRatio;
- (float)rightMarginHeadRatio;
- (float)simpleSelectorMaxOffsetAngle;
- (float)simpleSelectorMinOffsetAngle;
- (float)topMarginHeadRatio;
- (float)vnFrontPoseBlinkThreshold;
- (float)yawLimit;
- (id)description;
- (unint64_t)requiredPitchPoses;
- (unint64_t)requiredYawPoses;
- (void)_setDefaultsWithSuiteName:(id)name;
- (void)encodeWithCoder:(id)coder;
- (void)setBottomMarginFrontPoseDelta:(float)delta;
- (void)setBottomMarginHeadRatio:(float)ratio;
- (void)setBottomMarginPitchPoseDelta:(float)delta;
- (void)setCameraImageColorSpaceName:(id)name;
- (void)setDistanceFilterCloseThreshold:(float)threshold;
- (void)setDistanceFilterFarThreshold:(float)threshold;
- (void)setEyesForwardPitchSensitivity:(float)sensitivity;
- (void)setEyesForwardYawSensitivity:(float)sensitivity;
- (void)setEyesOpenSensitivity:(float)sensitivity;
- (void)setFrontPoseSelectionFrustum:(id)frustum;
- (void)setLeftMarginFrontPoseHeadRatio:(float)ratio;
- (void)setLeftMarginHeadRatio:(float)ratio;
- (void)setNeutralExpressionLowerBound:(float)bound;
- (void)setNeutralExpressionUpperBound:(float)bound;
- (void)setPitchLimit:(float)limit;
- (void)setRequiredExpressions:(id)expressions;
- (void)setRequiredPitchPoses:(unint64_t)poses;
- (void)setRequiredYawPoses:(unint64_t)poses;
- (void)setRightMarginFrontPoseHeadRatio:(float)ratio;
- (void)setRightMarginHeadRatio:(float)ratio;
- (void)setSelectionFrustum:(id)frustum;
- (void)setSimpleSelectorMaxOffsetAngle:(float)angle;
- (void)setSimpleSelectorMinOffsetAngle:(float)angle;
- (void)setTopMarginHeadRatio:(float)ratio;
- (void)setVnFrontPoseBlinkThreshold:(float)threshold;
- (void)setYawLimit:(float)limit;
@end

@implementation VGFaceEnrollmentOptions

- (VGFaceEnrollmentOptions)init
{
  v39.receiver = self;
  v39.super_class = VGFaceEnrollmentOptions;
  v2 = [(VGFaceEnrollmentOptions *)&v39 init];
  v3 = v2;
  if (v2)
  {
    v2->_identityFittingOp = 0;
    *&v2->_generatePIFu = 16843009;
    v2->_deterministicMode = 0;
    v2->_enrollmentMode = 0;
    v4 = objc_alloc_init(VGFaceCaptureOptions);
    captureOptions = v3->_captureOptions;
    v3->_captureOptions = v4;

    [(VGFaceCaptureOptions *)v3->_captureOptions setRequiredYawPoses:3];
    [(VGFaceCaptureOptions *)v3->_captureOptions setRequiredPitchPoses:0];
    [(VGFaceCaptureOptions *)v3->_captureOptions setRequiredExpressions:MEMORY[0x277CBEBF8]];
    LODWORD(v6) = 30.0;
    [(VGFaceCaptureOptions *)v3->_captureOptions setYawLimit:v6];
    LODWORD(v7) = 1102315520;
    [(VGFaceCaptureOptions *)v3->_captureOptions setPitchLimit:v7];
    LODWORD(v8) = 4.0;
    [(VGFaceCaptureOptions *)v3->_captureOptions setEyesForwardYawSensitivity:v8];
    LODWORD(v9) = 6.0;
    [(VGFaceCaptureOptions *)v3->_captureOptions setEyesForwardPitchSensitivity:v9];
    [(VGFaceCaptureOptions *)v3->_captureOptions setUseFovMarginsFilterFrontPose:1];
    [(VGFaceCaptureOptions *)v3->_captureOptions setUseFovMarginsFilterNonFrontPose:0];
    LODWORD(v10) = 0.25;
    [(VGFaceCaptureOptions *)v3->_captureOptions setLeftMarginHeadRatio:v10];
    LODWORD(v11) = 0.25;
    [(VGFaceCaptureOptions *)v3->_captureOptions setRightMarginHeadRatio:v11];
    LODWORD(v12) = 0.25;
    [(VGFaceCaptureOptions *)v3->_captureOptions setTopMarginHeadRatio:v12];
    LODWORD(v13) = 0.75;
    [(VGFaceCaptureOptions *)v3->_captureOptions setBottomMarginHeadRatio:v13];
    LODWORD(v14) = 0.25;
    [(VGFaceCaptureOptions *)v3->_captureOptions setLeftMarginFrontPoseHeadRatio:v14];
    LODWORD(v15) = 0.25;
    [(VGFaceCaptureOptions *)v3->_captureOptions setRightMarginFrontPoseHeadRatio:v15];
    LODWORD(v16) = 0.25;
    [(VGFaceCaptureOptions *)v3->_captureOptions setBottomMarginFrontPoseDelta:v16];
    LODWORD(v17) = -0.5;
    [(VGFaceCaptureOptions *)v3->_captureOptions setBottomMarginPitchPoseDelta:v17];
    LODWORD(v18) = 1050253722;
    [(VGFaceCaptureOptions *)v3->_captureOptions setEyesOpenSensitivity:v18];
    LODWORD(v19) = 0.5;
    [(VGFaceCaptureOptions *)v3->_captureOptions setNeutralExpressionLowerBound:v19];
    LODWORD(v20) = 1058642330;
    [(VGFaceCaptureOptions *)v3->_captureOptions setNeutralExpressionUpperBound:v20];
    [(VGFaceCaptureOptions *)v3->_captureOptions setUseLookAtForEyesForward:1];
    [(VGFaceCaptureOptions *)v3->_captureOptions setEnsureEyesForwardOnFrontPose:1];
    [(VGFaceCaptureOptions *)v3->_captureOptions setEnsureEyesOpenOnFrontPose:1];
    [(VGFaceCaptureOptions *)v3->_captureOptions setEnsureEyesOpenOnNonFrontPose:0];
    [(VGFaceCaptureOptions *)v3->_captureOptions setEnsureNeutralExpressionOnFrontPose:1];
    [(VGFaceCaptureOptions *)v3->_captureOptions setEnsureAlmostNeutralExpressionOnNonFrontPose:0];
    [(VGFaceCaptureOptions *)v3->_captureOptions setUseFaceTrackingDictionary:1];
    [(VGFaceCaptureOptions *)v3->_captureOptions setUseFKInternalFaceDetector:0];
    [(VGFaceCaptureOptions *)v3->_captureOptions setUseFKForceCPU:0];
    [(VGFaceCaptureOptions *)v3->_captureOptions setSendMetrics:1];
    [(VGFaceCaptureOptions *)v3->_captureOptions setCameraImageColorSpaceName:*MEMORY[0x277CBF4B8]];
    [(VGFaceCaptureOptions *)v3->_captureOptions setUseSimpleSelector:0];
    LODWORD(v21) = 20.0;
    [(VGFaceCaptureOptions *)v3->_captureOptions setSimpleSelectorMinOffsetAngle:v21];
    LODWORD(v22) = 1117782016;
    [(VGFaceCaptureOptions *)v3->_captureOptions setSimpleSelectorMaxOffsetAngle:v22];
    [(VGFaceCaptureOptions *)v3->_captureOptions setUseDistanceFilter:1];
    LODWORD(v23) = 20.0;
    [(VGFaceCaptureOptions *)v3->_captureOptions setDistanceFilterCloseThreshold:v23];
    LODWORD(v24) = 1114636288;
    [(VGFaceCaptureOptions *)v3->_captureOptions setDistanceFilterFarThreshold:v24];
    [(VGFaceCaptureOptions *)v3->_captureOptions setUseVNFilters:1];
    [(VGFaceCaptureOptions *)v3->_captureOptions setUseVNFiltersEnrollment:0];
    LODWORD(v25) = 1058642330;
    [(VGFaceCaptureOptions *)v3->_captureOptions setVnFrontPoseBlinkThreshold:v25];
    [(VGFaceCaptureOptions *)v3->_captureOptions setUseDepthFovFilter:1];
    v26 = objc_opt_new();
    [(VGFaceCaptureOptions *)v3->_captureOptions setBodyPoseGuidanceOptions:v26];

    v27 = objc_opt_new();
    [(VGFaceCaptureOptions *)v3->_captureOptions setSelectionFrustum:v27];

    v28 = objc_opt_new();
    [(VGFaceCaptureOptions *)v3->_captureOptions setFrontPoseSelectionFrustum:v28];

    frontPoseSelectionFrustum = [(VGFaceCaptureOptions *)v3->_captureOptions frontPoseSelectionFrustum];
    LODWORD(v30) = 7.0;
    [frontPoseSelectionFrustum setYawOffsetLeft:v30];

    frontPoseSelectionFrustum2 = [(VGFaceCaptureOptions *)v3->_captureOptions frontPoseSelectionFrustum];
    LODWORD(v32) = 7.0;
    [frontPoseSelectionFrustum2 setYawOffsetRight:v32];

    frontPoseSelectionFrustum3 = [(VGFaceCaptureOptions *)v3->_captureOptions frontPoseSelectionFrustum];
    LODWORD(v34) = 7.0;
    [frontPoseSelectionFrustum3 setPitchOffsetTop:v34];

    frontPoseSelectionFrustum4 = [(VGFaceCaptureOptions *)v3->_captureOptions frontPoseSelectionFrustum];
    LODWORD(v36) = 7.0;
    [frontPoseSelectionFrustum4 setPitchOffsetBottom:v36];

    [(VGFaceEnrollmentOptions *)v3 _setDefaultsWithSuiteName:@"com.apple.visage"];
    v37 = v3;
  }

  return v3;
}

- (void)_setDefaultsWithSuiteName:(id)name
{
  v39 = *MEMORY[0x277D85DE8];
  captureOptions = self->_captureOptions;
  nameCopy = name;
  [(VGFaceCaptureOptions *)captureOptions setDefaultsWithSuiteName:nameCopy];
  v6 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:nameCopy];

  v7 = [v6 objectForKey:@"identityFittingOp"];

  if (v7)
  {
    v8 = [v6 integerForKey:@"identityFittingOp"];
    if (v8 < 3)
    {
      self->_identityFittingOp = v8;
    }

    else
    {
      v9 = __VGLogSharedInstance();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        identityFittingOp = self->_identityFittingOp;
        v35 = 134218240;
        v36 = identityFittingOp;
        v37 = 2048;
        v38 = 3;
        _os_log_impl(&dword_270F06000, v9, OS_LOG_TYPE_ERROR, " Unsupported VGidentityFittingOp. Value set for <identityFittingOp : %lu> higher than max options [%lu]. ", &v35, 0x16u);
      }
    }
  }

  v11 = [v6 objectForKey:@"generatePIFu"];

  if (v11)
  {
    self->_generatePIFu = [v6 BOOLForKey:@"generatePIFu"];
  }

  v12 = [v6 objectForKey:@"generateBaconPanel"];

  if (v12)
  {
    self->_generateBaconPanel = [v6 BOOLForKey:@"generateBaconPanel"];
  }

  v13 = [v6 objectForKey:@"useHighResCameraImage"];

  if (v13)
  {
    self->_useHighResCameraImage = [v6 BOOLForKey:@"useHighResCameraImage"];
  }

  v14 = [v6 objectForKey:@"applyBaconLighting"];

  if (v14)
  {
    self->_applyBaconLighting = [v6 BOOLForKey:@"applyBaconLighting"];
  }

  v15 = [v6 objectForKey:@"deterministicMode"];

  if (v15)
  {
    self->_deterministicMode = [v6 BOOLForKey:@"deterministicMode"];
  }

  v16 = [v6 objectForKey:@"useFovMarginsFilterFrontPose"];

  if (v16)
  {
    -[VGFaceCaptureOptions setUseFovMarginsFilterFrontPose:](self->_captureOptions, "setUseFovMarginsFilterFrontPose:", [v6 BOOLForKey:@"useFovMarginsFilterFrontPose"]);
  }

  v17 = [v6 objectForKey:@"useFovMarginsFilterNonFrontPose"];

  if (v17)
  {
    -[VGFaceCaptureOptions setUseFovMarginsFilterNonFrontPose:](self->_captureOptions, "setUseFovMarginsFilterNonFrontPose:", [v6 BOOLForKey:@"useFovMarginsFilterNonFrontPose"]);
  }

  v18 = [v6 objectForKey:@"leftMarginHeadRatio"];

  if (v18)
  {
    [v6 floatForKey:@"leftMarginHeadRatio"];
    [(VGFaceCaptureOptions *)self->_captureOptions setLeftMarginHeadRatio:?];
  }

  v19 = [v6 objectForKey:@"rightMarginHeadRatio"];

  if (v19)
  {
    [v6 floatForKey:@"rightMarginHeadRatio"];
    [(VGFaceCaptureOptions *)self->_captureOptions setRightMarginHeadRatio:?];
  }

  v20 = [v6 objectForKey:@"topMarginHeadRatio"];

  if (v20)
  {
    [v6 floatForKey:@"topMarginHeadRatio"];
    [(VGFaceCaptureOptions *)self->_captureOptions setTopMarginHeadRatio:?];
  }

  v21 = [v6 objectForKey:@"bottomMarginHeadRatio"];

  if (v21)
  {
    [v6 floatForKey:@"bottomMarginHeadRatio"];
    [(VGFaceCaptureOptions *)self->_captureOptions setBottomMarginHeadRatio:?];
  }

  v22 = [v6 objectForKey:@"leftMarginFrontPoseHeadRatio"];

  if (v22)
  {
    [v6 floatForKey:@"leftMarginFrontPoseHeadRatio"];
    [(VGFaceCaptureOptions *)self->_captureOptions setLeftMarginFrontPoseHeadRatio:?];
  }

  v23 = [v6 objectForKey:@"rightMarginFrontPoseHeadRatio"];

  if (v23)
  {
    [v6 floatForKey:@"rightMarginFrontPoseHeadRatio"];
    [(VGFaceCaptureOptions *)self->_captureOptions setRightMarginFrontPoseHeadRatio:?];
  }

  v24 = [v6 objectForKey:@"bottomMarginFrontPoseDelta"];

  if (v24)
  {
    [v6 floatForKey:@"bottomMarginFrontPoseDelta"];
    [(VGFaceCaptureOptions *)self->_captureOptions setBottomMarginFrontPoseDelta:?];
  }

  v25 = [v6 objectForKey:@"bottomMarginPitchPoseDelta"];

  if (v25)
  {
    [v6 floatForKey:@"bottomMarginPitchPoseDelta"];
    [(VGFaceCaptureOptions *)self->_captureOptions setBottomMarginPitchPoseDelta:?];
  }

  v26 = [v6 objectForKey:@"symmetricFrontPose"];

  if (v26 && [v6 BOOLForKey:@"symmetricFrontPose"])
  {
    v27 = __VGLogSharedInstance();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v35) = 0;
      _os_log_impl(&dword_270F06000, v27, OS_LOG_TYPE_DEBUG, " Using capture option settings (margin head ratio) for ensuring symmetric front pose ", &v35, 2u);
    }

    LODWORD(v28) = 1059481190;
    [(VGFaceCaptureOptions *)self->_captureOptions setLeftMarginFrontPoseHeadRatio:v28];
    LODWORD(v29) = 1059481190;
    [(VGFaceCaptureOptions *)self->_captureOptions setRightMarginFrontPoseHeadRatio:v29];
  }

  v30 = [v6 objectForKey:@"enrollmentMode"];

  if (v30)
  {
    v31 = [v6 integerForKey:@"enrollmentMode"];
    v32 = v31;
    if (v31 < 2)
    {
      self->_enrollmentMode = v31;
    }

    else
    {
      v33 = __VGLogSharedInstance();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v35 = 134218240;
        v36 = v32;
        v37 = 2048;
        v38 = 2;
        _os_log_impl(&dword_270F06000, v33, OS_LOG_TYPE_ERROR, " Unsupported VGEnrollmentMode. Value set for <enrollmentMode : %lu> higher than max options [%lu]. ", &v35, 0x16u);
      }
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (unint64_t)requiredYawPoses
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  requiredYawPoses = [captureOptions requiredYawPoses];

  return requiredYawPoses;
}

- (void)setRequiredYawPoses:(unint64_t)poses
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  [captureOptions setRequiredYawPoses:poses];
}

- (unint64_t)requiredPitchPoses
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  requiredPitchPoses = [captureOptions requiredPitchPoses];

  return requiredPitchPoses;
}

- (void)setRequiredPitchPoses:(unint64_t)poses
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  [captureOptions setRequiredPitchPoses:poses];
}

- (NSArray)requiredExpressions
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  requiredExpressions = [captureOptions requiredExpressions];

  return requiredExpressions;
}

- (void)setRequiredExpressions:(id)expressions
{
  expressionsCopy = expressions;
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  [captureOptions setRequiredExpressions:expressionsCopy];
}

- (float)yawLimit
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  [captureOptions yawLimit];
  v4 = v3;

  return v4;
}

- (void)setYawLimit:(float)limit
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  *&v4 = limit;
  [captureOptions setYawLimit:v4];
}

- (float)pitchLimit
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  [captureOptions pitchLimit];
  v4 = v3;

  return v4;
}

- (void)setPitchLimit:(float)limit
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  *&v4 = limit;
  [captureOptions setPitchLimit:v4];
}

- (float)eyesForwardYawSensitivity
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  [captureOptions eyesForwardYawSensitivity];
  v4 = v3;

  return v4;
}

- (float)eyesForwardPitchSensitivity
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  [captureOptions eyesForwardPitchSensitivity];
  v4 = v3;

  return v4;
}

- (float)eyesOpenSensitivity
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  [captureOptions eyesOpenSensitivity];
  v4 = v3;

  return v4;
}

- (void)setEyesForwardYawSensitivity:(float)sensitivity
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  *&v4 = sensitivity;
  [captureOptions setEyesForwardYawSensitivity:v4];
}

- (float)neutralExpressionLowerBound
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  [captureOptions neutralExpressionLowerBound];
  v4 = v3;

  return v4;
}

- (void)setNeutralExpressionLowerBound:(float)bound
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  *&v4 = bound;
  [captureOptions setNeutralExpressionLowerBound:v4];
}

- (float)neutralExpressionUpperBound
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  [captureOptions neutralExpressionUpperBound];
  v4 = v3;

  return v4;
}

- (void)setNeutralExpressionUpperBound:(float)bound
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  *&v4 = bound;
  [captureOptions setNeutralExpressionUpperBound:v4];
}

- (void)setEyesForwardPitchSensitivity:(float)sensitivity
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  *&v4 = sensitivity;
  [captureOptions setEyesForwardPitchSensitivity:v4];
}

- (BOOL)useFovMarginsFilterFrontPose
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  useFovMarginsFilterFrontPose = [captureOptions useFovMarginsFilterFrontPose];

  return useFovMarginsFilterFrontPose;
}

- (BOOL)useFovMarginsFilterNonFrontPose
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  useFovMarginsFilterNonFrontPose = [captureOptions useFovMarginsFilterNonFrontPose];

  return useFovMarginsFilterNonFrontPose;
}

- (float)leftMarginHeadRatio
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  [captureOptions leftMarginHeadRatio];
  v4 = v3;

  return v4;
}

- (void)setLeftMarginHeadRatio:(float)ratio
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  *&v4 = ratio;
  [captureOptions setLeftMarginHeadRatio:v4];
}

- (float)rightMarginHeadRatio
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  [captureOptions rightMarginHeadRatio];
  v4 = v3;

  return v4;
}

- (void)setRightMarginHeadRatio:(float)ratio
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  *&v4 = ratio;
  [captureOptions setRightMarginHeadRatio:v4];
}

- (float)topMarginHeadRatio
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  [captureOptions topMarginHeadRatio];
  v4 = v3;

  return v4;
}

- (void)setTopMarginHeadRatio:(float)ratio
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  *&v4 = ratio;
  [captureOptions setTopMarginHeadRatio:v4];
}

- (float)bottomMarginHeadRatio
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  [captureOptions bottomMarginHeadRatio];
  v4 = v3;

  return v4;
}

- (void)setBottomMarginHeadRatio:(float)ratio
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  *&v4 = ratio;
  [captureOptions setBottomMarginHeadRatio:v4];
}

- (float)leftMarginFrontPoseHeadRatio
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  [captureOptions leftMarginFrontPoseHeadRatio];
  v4 = v3;

  return v4;
}

- (void)setLeftMarginFrontPoseHeadRatio:(float)ratio
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  *&v4 = ratio;
  [captureOptions setLeftMarginFrontPoseHeadRatio:v4];
}

- (float)rightMarginFrontPoseHeadRatio
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  [captureOptions rightMarginFrontPoseHeadRatio];
  v4 = v3;

  return v4;
}

- (void)setRightMarginFrontPoseHeadRatio:(float)ratio
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  *&v4 = ratio;
  [captureOptions setRightMarginFrontPoseHeadRatio:v4];
}

- (float)bottomMarginFrontPoseDelta
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  [captureOptions bottomMarginFrontPoseDelta];
  v4 = v3;

  return v4;
}

- (void)setBottomMarginFrontPoseDelta:(float)delta
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  *&v4 = delta;
  [captureOptions setBottomMarginFrontPoseDelta:v4];
}

- (float)bottomMarginPitchPoseDelta
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  [captureOptions bottomMarginPitchPoseDelta];
  v4 = v3;

  return v4;
}

- (void)setBottomMarginPitchPoseDelta:(float)delta
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  *&v4 = delta;
  [captureOptions setBottomMarginPitchPoseDelta:v4];
}

- (void)setEyesOpenSensitivity:(float)sensitivity
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  *&v4 = sensitivity;
  [captureOptions setEyesOpenSensitivity:v4];
}

- (BOOL)useLookAtForEyesForward
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  useLookAtForEyesForward = [captureOptions useLookAtForEyesForward];

  return useLookAtForEyesForward;
}

- (BOOL)ensureEyesForwardOnFrontPose
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  ensureEyesForwardOnFrontPose = [captureOptions ensureEyesForwardOnFrontPose];

  return ensureEyesForwardOnFrontPose;
}

- (BOOL)ensureEyesOpenOnFrontPose
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  ensureEyesOpenOnFrontPose = [captureOptions ensureEyesOpenOnFrontPose];

  return ensureEyesOpenOnFrontPose;
}

- (BOOL)ensureEyesOpenOnAllPoses
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  ensureEyesOpenOnNonFrontPose = [captureOptions ensureEyesOpenOnNonFrontPose];

  return ensureEyesOpenOnNonFrontPose;
}

- (BOOL)ensureEyesOpenOnNonFrontPose
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  ensureEyesOpenOnNonFrontPose = [captureOptions ensureEyesOpenOnNonFrontPose];

  return ensureEyesOpenOnNonFrontPose;
}

- (BOOL)ensureAlmostNeutralExpressionOnAllPoses
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  ensureAlmostNeutralExpressionOnNonFrontPose = [captureOptions ensureAlmostNeutralExpressionOnNonFrontPose];

  return ensureAlmostNeutralExpressionOnNonFrontPose;
}

- (BOOL)ensureNeutralExpressionOnFrontPose
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  ensureNeutralExpressionOnFrontPose = [captureOptions ensureNeutralExpressionOnFrontPose];

  return ensureNeutralExpressionOnFrontPose;
}

- (BOOL)ensureAlmostNeutralExpressionOnNonFrontPose
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  ensureAlmostNeutralExpressionOnNonFrontPose = [captureOptions ensureAlmostNeutralExpressionOnNonFrontPose];

  return ensureAlmostNeutralExpressionOnNonFrontPose;
}

- (BOOL)useFaceTrackingDictionary
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  useFaceTrackingDictionary = [captureOptions useFaceTrackingDictionary];

  return useFaceTrackingDictionary;
}

- (BOOL)useFKInternalFaceDetector
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  useFKInternalFaceDetector = [captureOptions useFKInternalFaceDetector];

  return useFKInternalFaceDetector;
}

- (BOOL)useFKForceCPU
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  useFKForceCPU = [captureOptions useFKForceCPU];

  return useFKForceCPU;
}

- (BOOL)sendMetrics
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  sendMetrics = [captureOptions sendMetrics];

  return sendMetrics;
}

- (NSString)cameraImageColorSpaceName
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  cameraImageColorSpaceName = [captureOptions cameraImageColorSpaceName];

  return cameraImageColorSpaceName;
}

- (void)setCameraImageColorSpaceName:(id)name
{
  nameCopy = name;
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  [captureOptions setCameraImageColorSpaceName:nameCopy];
}

- (BOOL)useSimpleSelector
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  useSimpleSelector = [captureOptions useSimpleSelector];

  return useSimpleSelector;
}

- (float)simpleSelectorMinOffsetAngle
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  [captureOptions simpleSelectorMinOffsetAngle];
  v4 = v3;

  return v4;
}

- (void)setSimpleSelectorMinOffsetAngle:(float)angle
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  *&v4 = angle;
  [captureOptions setSimpleSelectorMinOffsetAngle:v4];
}

- (float)simpleSelectorMaxOffsetAngle
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  [captureOptions simpleSelectorMaxOffsetAngle];
  v4 = v3;

  return v4;
}

- (void)setSimpleSelectorMaxOffsetAngle:(float)angle
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  *&v4 = angle;
  [captureOptions setSimpleSelectorMaxOffsetAngle:v4];
}

- (BOOL)useDistanceFilter
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  useDistanceFilter = [captureOptions useDistanceFilter];

  return useDistanceFilter;
}

- (float)distanceFilterCloseThreshold
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  [captureOptions distanceFilterCloseThreshold];
  v4 = v3;

  return v4;
}

- (void)setDistanceFilterCloseThreshold:(float)threshold
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  *&v4 = threshold;
  [captureOptions setDistanceFilterCloseThreshold:v4];
}

- (float)distanceFilterFarThreshold
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  [captureOptions distanceFilterFarThreshold];
  v4 = v3;

  return v4;
}

- (void)setDistanceFilterFarThreshold:(float)threshold
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  *&v4 = threshold;
  [captureOptions setDistanceFilterFarThreshold:v4];
}

- (VGFaceSelectionFrustum)selectionFrustum
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  selectionFrustum = [captureOptions selectionFrustum];

  return selectionFrustum;
}

- (void)setSelectionFrustum:(id)frustum
{
  frustumCopy = frustum;
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  [captureOptions setSelectionFrustum:frustumCopy];
}

- (VGFaceSelectionFrustum)frontPoseSelectionFrustum
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  frontPoseSelectionFrustum = [captureOptions frontPoseSelectionFrustum];

  return frontPoseSelectionFrustum;
}

- (void)setFrontPoseSelectionFrustum:(id)frustum
{
  frustumCopy = frustum;
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  [captureOptions setSelectionFrustum:frustumCopy];
}

- (BOOL)useVNFilters
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  useVNFilters = [captureOptions useVNFilters];

  return useVNFilters;
}

- (BOOL)useVNFiltersEnrollment
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  useVNFiltersEnrollment = [captureOptions useVNFiltersEnrollment];

  return useVNFiltersEnrollment;
}

- (float)vnFrontPoseBlinkThreshold
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  [captureOptions vnFrontPoseBlinkThreshold];
  v4 = v3;

  return v4;
}

- (void)setVnFrontPoseBlinkThreshold:(float)threshold
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  *&v4 = threshold;
  [captureOptions setVnFrontPoseBlinkThreshold:v4];
}

- (BOOL)useDepthFovFilter
{
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  useDepthFovFilter = [captureOptions useDepthFovFilter];

  return useDepthFovFilter;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  captureOptions = [(VGFaceEnrollmentOptions *)self captureOptions];
  v5 = [captureOptions description];
  v6 = [v3 stringWithFormat:@"%@ Deterministic mode %d Generate Pifu %d Generate Bacon Panel %d Use high-res camera image %d Apply Bacon Lighting %d ", v5, self->_deterministicMode, self->_generatePIFu, self->_generateBaconPanel, self->_useHighResCameraImage, self->_applyBaconLighting];

  return v6;
}

- (VGFaceEnrollmentOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(VGFaceEnrollmentOptions *)self init];
  if (v5)
  {
    v5->_identityFittingOp = [coderCopy decodeIntegerForKey:@"identityFittingOp"];
    v5->_useHighResCameraImage = [coderCopy decodeBoolForKey:@"useHighResCameraImage"];
    v5->_applyBaconLighting = [coderCopy decodeBoolForKey:@"applyBaconLighting"];
    v5->_generatePIFu = [coderCopy decodeBoolForKey:@"generatePIFu"];
    if ([coderCopy containsValueForKey:@"generateBaconPanel"])
    {
      v6 = [coderCopy decodeBoolForKey:@"generateBaconPanel"];
    }

    else
    {
      v6 = 1;
    }

    v5->_generateBaconPanel = v6;
    v5->_deterministicMode = [coderCopy decodeBoolForKey:@"deterministicMode"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"saveDirectory"];
    saveDirectory = v5->_saveDirectory;
    v5->_saveDirectory = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"captureOptions"];
    captureOptions = v5->_captureOptions;
    v5->_captureOptions = v9;

    v5->_enrollmentMode = [coderCopy decodeIntegerForKey:@"enrollmentMode"];
    v11 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identityFittingOp = self->_identityFittingOp;
  coderCopy = coder;
  [coderCopy encodeInteger:identityFittingOp forKey:@"identityFittingOp"];
  [coderCopy encodeBool:self->_useHighResCameraImage forKey:@"useHighResCameraImage"];
  [coderCopy encodeBool:self->_applyBaconLighting forKey:@"applyBaconLighting"];
  [coderCopy encodeBool:self->_generatePIFu forKey:@"generatePIFu"];
  [coderCopy encodeBool:self->_generateBaconPanel forKey:@"generateBaconPanel"];
  [coderCopy encodeBool:self->_deterministicMode forKey:@"deterministicMode"];
  [coderCopy encodeObject:self->_saveDirectory forKey:@"saveDirectory"];
  [coderCopy encodeObject:self->_captureOptions forKey:@"captureOptions"];
  [coderCopy encodeInteger:self->_enrollmentMode forKey:@"enrollmentMode"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = equalCopy;
    identityFittingOp = self->_identityFittingOp;
    if (identityFittingOp != [v6 identityFittingOp] || (useHighResCameraImage = self->_useHighResCameraImage, useHighResCameraImage != objc_msgSend(v6, "useHighResCameraImage")) || (applyBaconLighting = self->_applyBaconLighting, applyBaconLighting != objc_msgSend(v6, "applyBaconLighting")) || (generatePIFu = self->_generatePIFu, generatePIFu != objc_msgSend(v6, "generatePIFu")) || (generateBaconPanel = self->_generateBaconPanel, generateBaconPanel != objc_msgSend(v6, "generateBaconPanel")) || (deterministicMode = self->_deterministicMode, deterministicMode != objc_msgSend(v6, "deterministicMode")))
    {
      v16 = 0;
LABEL_15:

      goto LABEL_16;
    }

    saveDirectory = self->_saveDirectory;
    v14 = saveDirectory;
    if (!saveDirectory)
    {
      deterministicMode = [v6 saveDirectory];
      if (!deterministicMode)
      {
        v15 = 0;
        goto LABEL_19;
      }

      v14 = self->_saveDirectory;
    }

    saveDirectory = [v6 saveDirectory];
    if (![(NSString *)v14 isEqualToString:saveDirectory])
    {
      v16 = 0;
      goto LABEL_21;
    }

    v15 = 1;
LABEL_19:
    captureOptions = self->_captureOptions;
    captureOptions = [v6 captureOptions];
    if ([(VGFaceCaptureOptions *)captureOptions isEqual:captureOptions])
    {
      enrollmentMode = self->_enrollmentMode;
      v16 = enrollmentMode == [v6 enrollmentMode];

      if ((v15 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {

      v16 = 0;
      if (!v15)
      {
LABEL_22:
        if (!saveDirectory)
        {
        }

        goto LABEL_15;
      }
    }

LABEL_21:

    goto LABEL_22;
  }

  v16 = 0;
LABEL_16:

  return v16;
}

@end
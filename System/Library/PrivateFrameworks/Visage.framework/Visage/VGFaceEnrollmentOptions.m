@interface VGFaceEnrollmentOptions
- (BOOL)ensureAlmostNeutralExpressionOnAllPoses;
- (BOOL)ensureAlmostNeutralExpressionOnNonFrontPose;
- (BOOL)ensureEyesForwardOnFrontPose;
- (BOOL)ensureEyesOpenOnAllPoses;
- (BOOL)ensureEyesOpenOnFrontPose;
- (BOOL)ensureEyesOpenOnNonFrontPose;
- (BOOL)ensureNeutralExpressionOnFrontPose;
- (BOOL)isEqual:(id)a3;
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
- (VGFaceEnrollmentOptions)initWithCoder:(id)a3;
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
- (void)_setDefaultsWithSuiteName:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setBottomMarginFrontPoseDelta:(float)a3;
- (void)setBottomMarginHeadRatio:(float)a3;
- (void)setBottomMarginPitchPoseDelta:(float)a3;
- (void)setCameraImageColorSpaceName:(id)a3;
- (void)setDistanceFilterCloseThreshold:(float)a3;
- (void)setDistanceFilterFarThreshold:(float)a3;
- (void)setEyesForwardPitchSensitivity:(float)a3;
- (void)setEyesForwardYawSensitivity:(float)a3;
- (void)setEyesOpenSensitivity:(float)a3;
- (void)setFrontPoseSelectionFrustum:(id)a3;
- (void)setLeftMarginFrontPoseHeadRatio:(float)a3;
- (void)setLeftMarginHeadRatio:(float)a3;
- (void)setNeutralExpressionLowerBound:(float)a3;
- (void)setNeutralExpressionUpperBound:(float)a3;
- (void)setPitchLimit:(float)a3;
- (void)setRequiredExpressions:(id)a3;
- (void)setRequiredPitchPoses:(unint64_t)a3;
- (void)setRequiredYawPoses:(unint64_t)a3;
- (void)setRightMarginFrontPoseHeadRatio:(float)a3;
- (void)setRightMarginHeadRatio:(float)a3;
- (void)setSelectionFrustum:(id)a3;
- (void)setSimpleSelectorMaxOffsetAngle:(float)a3;
- (void)setSimpleSelectorMinOffsetAngle:(float)a3;
- (void)setTopMarginHeadRatio:(float)a3;
- (void)setVnFrontPoseBlinkThreshold:(float)a3;
- (void)setYawLimit:(float)a3;
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

    v29 = [(VGFaceCaptureOptions *)v3->_captureOptions frontPoseSelectionFrustum];
    LODWORD(v30) = 7.0;
    [v29 setYawOffsetLeft:v30];

    v31 = [(VGFaceCaptureOptions *)v3->_captureOptions frontPoseSelectionFrustum];
    LODWORD(v32) = 7.0;
    [v31 setYawOffsetRight:v32];

    v33 = [(VGFaceCaptureOptions *)v3->_captureOptions frontPoseSelectionFrustum];
    LODWORD(v34) = 7.0;
    [v33 setPitchOffsetTop:v34];

    v35 = [(VGFaceCaptureOptions *)v3->_captureOptions frontPoseSelectionFrustum];
    LODWORD(v36) = 7.0;
    [v35 setPitchOffsetBottom:v36];

    [(VGFaceEnrollmentOptions *)v3 _setDefaultsWithSuiteName:@"com.apple.visage"];
    v37 = v3;
  }

  return v3;
}

- (void)_setDefaultsWithSuiteName:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  captureOptions = self->_captureOptions;
  v5 = a3;
  [(VGFaceCaptureOptions *)captureOptions setDefaultsWithSuiteName:v5];
  v6 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:v5];

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
  v2 = [(VGFaceEnrollmentOptions *)self captureOptions];
  v3 = [v2 requiredYawPoses];

  return v3;
}

- (void)setRequiredYawPoses:(unint64_t)a3
{
  v4 = [(VGFaceEnrollmentOptions *)self captureOptions];
  [v4 setRequiredYawPoses:a3];
}

- (unint64_t)requiredPitchPoses
{
  v2 = [(VGFaceEnrollmentOptions *)self captureOptions];
  v3 = [v2 requiredPitchPoses];

  return v3;
}

- (void)setRequiredPitchPoses:(unint64_t)a3
{
  v4 = [(VGFaceEnrollmentOptions *)self captureOptions];
  [v4 setRequiredPitchPoses:a3];
}

- (NSArray)requiredExpressions
{
  v2 = [(VGFaceEnrollmentOptions *)self captureOptions];
  v3 = [v2 requiredExpressions];

  return v3;
}

- (void)setRequiredExpressions:(id)a3
{
  v4 = a3;
  v5 = [(VGFaceEnrollmentOptions *)self captureOptions];
  [v5 setRequiredExpressions:v4];
}

- (float)yawLimit
{
  v2 = [(VGFaceEnrollmentOptions *)self captureOptions];
  [v2 yawLimit];
  v4 = v3;

  return v4;
}

- (void)setYawLimit:(float)a3
{
  v5 = [(VGFaceEnrollmentOptions *)self captureOptions];
  *&v4 = a3;
  [v5 setYawLimit:v4];
}

- (float)pitchLimit
{
  v2 = [(VGFaceEnrollmentOptions *)self captureOptions];
  [v2 pitchLimit];
  v4 = v3;

  return v4;
}

- (void)setPitchLimit:(float)a3
{
  v5 = [(VGFaceEnrollmentOptions *)self captureOptions];
  *&v4 = a3;
  [v5 setPitchLimit:v4];
}

- (float)eyesForwardYawSensitivity
{
  v2 = [(VGFaceEnrollmentOptions *)self captureOptions];
  [v2 eyesForwardYawSensitivity];
  v4 = v3;

  return v4;
}

- (float)eyesForwardPitchSensitivity
{
  v2 = [(VGFaceEnrollmentOptions *)self captureOptions];
  [v2 eyesForwardPitchSensitivity];
  v4 = v3;

  return v4;
}

- (float)eyesOpenSensitivity
{
  v2 = [(VGFaceEnrollmentOptions *)self captureOptions];
  [v2 eyesOpenSensitivity];
  v4 = v3;

  return v4;
}

- (void)setEyesForwardYawSensitivity:(float)a3
{
  v5 = [(VGFaceEnrollmentOptions *)self captureOptions];
  *&v4 = a3;
  [v5 setEyesForwardYawSensitivity:v4];
}

- (float)neutralExpressionLowerBound
{
  v2 = [(VGFaceEnrollmentOptions *)self captureOptions];
  [v2 neutralExpressionLowerBound];
  v4 = v3;

  return v4;
}

- (void)setNeutralExpressionLowerBound:(float)a3
{
  v5 = [(VGFaceEnrollmentOptions *)self captureOptions];
  *&v4 = a3;
  [v5 setNeutralExpressionLowerBound:v4];
}

- (float)neutralExpressionUpperBound
{
  v2 = [(VGFaceEnrollmentOptions *)self captureOptions];
  [v2 neutralExpressionUpperBound];
  v4 = v3;

  return v4;
}

- (void)setNeutralExpressionUpperBound:(float)a3
{
  v5 = [(VGFaceEnrollmentOptions *)self captureOptions];
  *&v4 = a3;
  [v5 setNeutralExpressionUpperBound:v4];
}

- (void)setEyesForwardPitchSensitivity:(float)a3
{
  v5 = [(VGFaceEnrollmentOptions *)self captureOptions];
  *&v4 = a3;
  [v5 setEyesForwardPitchSensitivity:v4];
}

- (BOOL)useFovMarginsFilterFrontPose
{
  v2 = [(VGFaceEnrollmentOptions *)self captureOptions];
  v3 = [v2 useFovMarginsFilterFrontPose];

  return v3;
}

- (BOOL)useFovMarginsFilterNonFrontPose
{
  v2 = [(VGFaceEnrollmentOptions *)self captureOptions];
  v3 = [v2 useFovMarginsFilterNonFrontPose];

  return v3;
}

- (float)leftMarginHeadRatio
{
  v2 = [(VGFaceEnrollmentOptions *)self captureOptions];
  [v2 leftMarginHeadRatio];
  v4 = v3;

  return v4;
}

- (void)setLeftMarginHeadRatio:(float)a3
{
  v5 = [(VGFaceEnrollmentOptions *)self captureOptions];
  *&v4 = a3;
  [v5 setLeftMarginHeadRatio:v4];
}

- (float)rightMarginHeadRatio
{
  v2 = [(VGFaceEnrollmentOptions *)self captureOptions];
  [v2 rightMarginHeadRatio];
  v4 = v3;

  return v4;
}

- (void)setRightMarginHeadRatio:(float)a3
{
  v5 = [(VGFaceEnrollmentOptions *)self captureOptions];
  *&v4 = a3;
  [v5 setRightMarginHeadRatio:v4];
}

- (float)topMarginHeadRatio
{
  v2 = [(VGFaceEnrollmentOptions *)self captureOptions];
  [v2 topMarginHeadRatio];
  v4 = v3;

  return v4;
}

- (void)setTopMarginHeadRatio:(float)a3
{
  v5 = [(VGFaceEnrollmentOptions *)self captureOptions];
  *&v4 = a3;
  [v5 setTopMarginHeadRatio:v4];
}

- (float)bottomMarginHeadRatio
{
  v2 = [(VGFaceEnrollmentOptions *)self captureOptions];
  [v2 bottomMarginHeadRatio];
  v4 = v3;

  return v4;
}

- (void)setBottomMarginHeadRatio:(float)a3
{
  v5 = [(VGFaceEnrollmentOptions *)self captureOptions];
  *&v4 = a3;
  [v5 setBottomMarginHeadRatio:v4];
}

- (float)leftMarginFrontPoseHeadRatio
{
  v2 = [(VGFaceEnrollmentOptions *)self captureOptions];
  [v2 leftMarginFrontPoseHeadRatio];
  v4 = v3;

  return v4;
}

- (void)setLeftMarginFrontPoseHeadRatio:(float)a3
{
  v5 = [(VGFaceEnrollmentOptions *)self captureOptions];
  *&v4 = a3;
  [v5 setLeftMarginFrontPoseHeadRatio:v4];
}

- (float)rightMarginFrontPoseHeadRatio
{
  v2 = [(VGFaceEnrollmentOptions *)self captureOptions];
  [v2 rightMarginFrontPoseHeadRatio];
  v4 = v3;

  return v4;
}

- (void)setRightMarginFrontPoseHeadRatio:(float)a3
{
  v5 = [(VGFaceEnrollmentOptions *)self captureOptions];
  *&v4 = a3;
  [v5 setRightMarginFrontPoseHeadRatio:v4];
}

- (float)bottomMarginFrontPoseDelta
{
  v2 = [(VGFaceEnrollmentOptions *)self captureOptions];
  [v2 bottomMarginFrontPoseDelta];
  v4 = v3;

  return v4;
}

- (void)setBottomMarginFrontPoseDelta:(float)a3
{
  v5 = [(VGFaceEnrollmentOptions *)self captureOptions];
  *&v4 = a3;
  [v5 setBottomMarginFrontPoseDelta:v4];
}

- (float)bottomMarginPitchPoseDelta
{
  v2 = [(VGFaceEnrollmentOptions *)self captureOptions];
  [v2 bottomMarginPitchPoseDelta];
  v4 = v3;

  return v4;
}

- (void)setBottomMarginPitchPoseDelta:(float)a3
{
  v5 = [(VGFaceEnrollmentOptions *)self captureOptions];
  *&v4 = a3;
  [v5 setBottomMarginPitchPoseDelta:v4];
}

- (void)setEyesOpenSensitivity:(float)a3
{
  v5 = [(VGFaceEnrollmentOptions *)self captureOptions];
  *&v4 = a3;
  [v5 setEyesOpenSensitivity:v4];
}

- (BOOL)useLookAtForEyesForward
{
  v2 = [(VGFaceEnrollmentOptions *)self captureOptions];
  v3 = [v2 useLookAtForEyesForward];

  return v3;
}

- (BOOL)ensureEyesForwardOnFrontPose
{
  v2 = [(VGFaceEnrollmentOptions *)self captureOptions];
  v3 = [v2 ensureEyesForwardOnFrontPose];

  return v3;
}

- (BOOL)ensureEyesOpenOnFrontPose
{
  v2 = [(VGFaceEnrollmentOptions *)self captureOptions];
  v3 = [v2 ensureEyesOpenOnFrontPose];

  return v3;
}

- (BOOL)ensureEyesOpenOnAllPoses
{
  v2 = [(VGFaceEnrollmentOptions *)self captureOptions];
  v3 = [v2 ensureEyesOpenOnNonFrontPose];

  return v3;
}

- (BOOL)ensureEyesOpenOnNonFrontPose
{
  v2 = [(VGFaceEnrollmentOptions *)self captureOptions];
  v3 = [v2 ensureEyesOpenOnNonFrontPose];

  return v3;
}

- (BOOL)ensureAlmostNeutralExpressionOnAllPoses
{
  v2 = [(VGFaceEnrollmentOptions *)self captureOptions];
  v3 = [v2 ensureAlmostNeutralExpressionOnNonFrontPose];

  return v3;
}

- (BOOL)ensureNeutralExpressionOnFrontPose
{
  v2 = [(VGFaceEnrollmentOptions *)self captureOptions];
  v3 = [v2 ensureNeutralExpressionOnFrontPose];

  return v3;
}

- (BOOL)ensureAlmostNeutralExpressionOnNonFrontPose
{
  v2 = [(VGFaceEnrollmentOptions *)self captureOptions];
  v3 = [v2 ensureAlmostNeutralExpressionOnNonFrontPose];

  return v3;
}

- (BOOL)useFaceTrackingDictionary
{
  v2 = [(VGFaceEnrollmentOptions *)self captureOptions];
  v3 = [v2 useFaceTrackingDictionary];

  return v3;
}

- (BOOL)useFKInternalFaceDetector
{
  v2 = [(VGFaceEnrollmentOptions *)self captureOptions];
  v3 = [v2 useFKInternalFaceDetector];

  return v3;
}

- (BOOL)useFKForceCPU
{
  v2 = [(VGFaceEnrollmentOptions *)self captureOptions];
  v3 = [v2 useFKForceCPU];

  return v3;
}

- (BOOL)sendMetrics
{
  v2 = [(VGFaceEnrollmentOptions *)self captureOptions];
  v3 = [v2 sendMetrics];

  return v3;
}

- (NSString)cameraImageColorSpaceName
{
  v2 = [(VGFaceEnrollmentOptions *)self captureOptions];
  v3 = [v2 cameraImageColorSpaceName];

  return v3;
}

- (void)setCameraImageColorSpaceName:(id)a3
{
  v4 = a3;
  v5 = [(VGFaceEnrollmentOptions *)self captureOptions];
  [v5 setCameraImageColorSpaceName:v4];
}

- (BOOL)useSimpleSelector
{
  v2 = [(VGFaceEnrollmentOptions *)self captureOptions];
  v3 = [v2 useSimpleSelector];

  return v3;
}

- (float)simpleSelectorMinOffsetAngle
{
  v2 = [(VGFaceEnrollmentOptions *)self captureOptions];
  [v2 simpleSelectorMinOffsetAngle];
  v4 = v3;

  return v4;
}

- (void)setSimpleSelectorMinOffsetAngle:(float)a3
{
  v5 = [(VGFaceEnrollmentOptions *)self captureOptions];
  *&v4 = a3;
  [v5 setSimpleSelectorMinOffsetAngle:v4];
}

- (float)simpleSelectorMaxOffsetAngle
{
  v2 = [(VGFaceEnrollmentOptions *)self captureOptions];
  [v2 simpleSelectorMaxOffsetAngle];
  v4 = v3;

  return v4;
}

- (void)setSimpleSelectorMaxOffsetAngle:(float)a3
{
  v5 = [(VGFaceEnrollmentOptions *)self captureOptions];
  *&v4 = a3;
  [v5 setSimpleSelectorMaxOffsetAngle:v4];
}

- (BOOL)useDistanceFilter
{
  v2 = [(VGFaceEnrollmentOptions *)self captureOptions];
  v3 = [v2 useDistanceFilter];

  return v3;
}

- (float)distanceFilterCloseThreshold
{
  v2 = [(VGFaceEnrollmentOptions *)self captureOptions];
  [v2 distanceFilterCloseThreshold];
  v4 = v3;

  return v4;
}

- (void)setDistanceFilterCloseThreshold:(float)a3
{
  v5 = [(VGFaceEnrollmentOptions *)self captureOptions];
  *&v4 = a3;
  [v5 setDistanceFilterCloseThreshold:v4];
}

- (float)distanceFilterFarThreshold
{
  v2 = [(VGFaceEnrollmentOptions *)self captureOptions];
  [v2 distanceFilterFarThreshold];
  v4 = v3;

  return v4;
}

- (void)setDistanceFilterFarThreshold:(float)a3
{
  v5 = [(VGFaceEnrollmentOptions *)self captureOptions];
  *&v4 = a3;
  [v5 setDistanceFilterFarThreshold:v4];
}

- (VGFaceSelectionFrustum)selectionFrustum
{
  v2 = [(VGFaceEnrollmentOptions *)self captureOptions];
  v3 = [v2 selectionFrustum];

  return v3;
}

- (void)setSelectionFrustum:(id)a3
{
  v4 = a3;
  v5 = [(VGFaceEnrollmentOptions *)self captureOptions];
  [v5 setSelectionFrustum:v4];
}

- (VGFaceSelectionFrustum)frontPoseSelectionFrustum
{
  v2 = [(VGFaceEnrollmentOptions *)self captureOptions];
  v3 = [v2 frontPoseSelectionFrustum];

  return v3;
}

- (void)setFrontPoseSelectionFrustum:(id)a3
{
  v4 = a3;
  v5 = [(VGFaceEnrollmentOptions *)self captureOptions];
  [v5 setSelectionFrustum:v4];
}

- (BOOL)useVNFilters
{
  v2 = [(VGFaceEnrollmentOptions *)self captureOptions];
  v3 = [v2 useVNFilters];

  return v3;
}

- (BOOL)useVNFiltersEnrollment
{
  v2 = [(VGFaceEnrollmentOptions *)self captureOptions];
  v3 = [v2 useVNFiltersEnrollment];

  return v3;
}

- (float)vnFrontPoseBlinkThreshold
{
  v2 = [(VGFaceEnrollmentOptions *)self captureOptions];
  [v2 vnFrontPoseBlinkThreshold];
  v4 = v3;

  return v4;
}

- (void)setVnFrontPoseBlinkThreshold:(float)a3
{
  v5 = [(VGFaceEnrollmentOptions *)self captureOptions];
  *&v4 = a3;
  [v5 setVnFrontPoseBlinkThreshold:v4];
}

- (BOOL)useDepthFovFilter
{
  v2 = [(VGFaceEnrollmentOptions *)self captureOptions];
  v3 = [v2 useDepthFovFilter];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(VGFaceEnrollmentOptions *)self captureOptions];
  v5 = [v4 description];
  v6 = [v3 stringWithFormat:@"%@ Deterministic mode %d Generate Pifu %d Generate Bacon Panel %d Use high-res camera image %d Apply Bacon Lighting %d ", v5, self->_deterministicMode, self->_generatePIFu, self->_generateBaconPanel, self->_useHighResCameraImage, self->_applyBaconLighting];

  return v6;
}

- (VGFaceEnrollmentOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(VGFaceEnrollmentOptions *)self init];
  if (v5)
  {
    v5->_identityFittingOp = [v4 decodeIntegerForKey:@"identityFittingOp"];
    v5->_useHighResCameraImage = [v4 decodeBoolForKey:@"useHighResCameraImage"];
    v5->_applyBaconLighting = [v4 decodeBoolForKey:@"applyBaconLighting"];
    v5->_generatePIFu = [v4 decodeBoolForKey:@"generatePIFu"];
    if ([v4 containsValueForKey:@"generateBaconPanel"])
    {
      v6 = [v4 decodeBoolForKey:@"generateBaconPanel"];
    }

    else
    {
      v6 = 1;
    }

    v5->_generateBaconPanel = v6;
    v5->_deterministicMode = [v4 decodeBoolForKey:@"deterministicMode"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"saveDirectory"];
    saveDirectory = v5->_saveDirectory;
    v5->_saveDirectory = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"captureOptions"];
    captureOptions = v5->_captureOptions;
    v5->_captureOptions = v9;

    v5->_enrollmentMode = [v4 decodeIntegerForKey:@"enrollmentMode"];
    v11 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identityFittingOp = self->_identityFittingOp;
  v5 = a3;
  [v5 encodeInteger:identityFittingOp forKey:@"identityFittingOp"];
  [v5 encodeBool:self->_useHighResCameraImage forKey:@"useHighResCameraImage"];
  [v5 encodeBool:self->_applyBaconLighting forKey:@"applyBaconLighting"];
  [v5 encodeBool:self->_generatePIFu forKey:@"generatePIFu"];
  [v5 encodeBool:self->_generateBaconPanel forKey:@"generateBaconPanel"];
  [v5 encodeBool:self->_deterministicMode forKey:@"deterministicMode"];
  [v5 encodeObject:self->_saveDirectory forKey:@"saveDirectory"];
  [v5 encodeObject:self->_captureOptions forKey:@"captureOptions"];
  [v5 encodeInteger:self->_enrollmentMode forKey:@"enrollmentMode"];
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
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

    v3 = [v6 saveDirectory];
    if (![(NSString *)v14 isEqualToString:v3])
    {
      v16 = 0;
      goto LABEL_21;
    }

    v15 = 1;
LABEL_19:
    captureOptions = self->_captureOptions;
    v19 = [v6 captureOptions];
    if ([(VGFaceCaptureOptions *)captureOptions isEqual:v19])
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
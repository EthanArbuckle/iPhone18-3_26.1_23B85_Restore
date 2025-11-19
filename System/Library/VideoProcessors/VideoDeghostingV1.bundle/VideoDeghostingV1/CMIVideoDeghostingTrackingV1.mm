@interface CMIVideoDeghostingTrackingV1
- (CGPoint)_applyDistortionPolynomial:(float *)a3 ToPoint:(CGPoint *)a4;
- (CGPoint)_pixelBufferToRawBuffer:(CGPoint *)a3;
- (CGPoint)_rawBufferToPixelBuffer:(CGPoint *)a3;
- (CGPoint)_reflectPoint:(CGPoint *)a3 pivotPoint:(CGPoint *)a4;
- (CGPoint)bias;
- (CGRect)ghostRectImageBased;
- (CGRect)ghostRectMetadataBased;
- (CGRect)lightSourceRect;
- (CMIVideoDeghostingTrackingV1)initWithMetalContext:(id)a3 tuningParameters:(id)a4;
- (float)_getRadialMagnificationAtDistanceMM:(float)a3 WithPolynomial:(float *)a4;
- (int)_extractAndCheckTuningParameters:(id)a3;
- (int)_extractCalibrationData;
- (int)resetState;
- (void)_calibrateGhostSizeWithAngle:(float)a3;
- (void)_extractCameraInfo;
- (void)_pushGhostToHistory:(CGPoint *)a3 shapeScore:(float)a4 lensPosition:(float)a5 adjustedPrincipalPoint:(CGPoint *)a6 quaternion:(id *)a7;
@end

@implementation CMIVideoDeghostingTrackingV1

- (CMIVideoDeghostingTrackingV1)initWithMetalContext:(id)a3 tuningParameters:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = CMIVideoDeghostingTrackingV1;
  v8 = [(CMIVideoDeghostingTrackingV1 *)&v19 init];
  v9 = v8;
  if (!v8)
  {
    sub_2410C();
LABEL_15:
    v17 = 0;
    goto LABEL_8;
  }

  if ([(CMIVideoDeghostingTrackingV1 *)v8 _extractAndCheckTuningParameters:v7])
  {
    sub_23E98();
    goto LABEL_15;
  }

  v10 = objc_alloc_init(NSMutableArray);
  greenGhostRectangles = v9->_greenGhostRectangles;
  v9->_greenGhostRectangles = v10;

  if (!v9->_greenGhostRectangles)
  {
    sub_24090();
    goto LABEL_15;
  }

  v12 = [[NSMutableArray alloc] initWithCapacity:10];
  ghostBoundingBoxPredictions = v9->_ghostBoundingBoxPredictions;
  v9->_ghostBoundingBoxPredictions = v12;

  if (!v9->_ghostBoundingBoxPredictions)
  {
    sub_24014();
    goto LABEL_15;
  }

  if ([(CMIVideoDeghostingTrackingV1 *)v9 resetState])
  {
    sub_23F18();
    goto LABEL_15;
  }

  *&v9->_sensorBinningFactorVertical = 0x100000001;
  motionSampleRingBuffer = v9->_motionSampleRingBuffer;
  v9->_motionSampleRingBuffer = 0;

  v15 = [[VDGMetalUtilsV1 alloc] initWithMetalContext:v6];
  vdgMetalUtils = v9->_vdgMetalUtils;
  v9->_vdgMetalUtils = v15;

  if (!v9->_vdgMetalUtils)
  {
    sub_23F98();
    goto LABEL_15;
  }

  v17 = v9;
LABEL_8:

  return v17;
}

- (int)resetState
{
  [(NSMutableArray *)self->_greenGhostRectangles removeAllObjects];
  [(NSMutableArray *)self->_ghostBoundingBoxPredictions removeAllObjects];
  detectedGhostBoundingBoxes = self->_detectedGhostBoundingBoxes;
  self->_detectedGhostBoundingBoxes = 0;

  self->_pixelsPerMicron = 1.0;
  v4 = CGPointZero;
  self->_adjustedPrincipalPoint = CGPointZero;
  self->_bias = v4;
  self->_ghostHistoryCount = 0;
  self->_trajectoryScore = 0.0;
  *&self->_prevGhostSizeBias = 0;
  *&self->_confidence = 0u;
  self->_breathingDirection = 1.0;
  self->_resetTrackerWithInputGhostBoundingBoxes = 1;
  previousPortType = self->_previousPortType;
  self->_previousPortType = 0;

  currentPortType = self->_currentPortType;
  self->_currentPortType = 0;

  currentCameraInfo = self->_currentCameraInfo;
  self->_currentCameraInfo = 0;

  v8 = sub_A090(&self->_centerQuaternion.w);
  if (v8)
  {
    sub_24188();
  }

  return v8;
}

- (void)_calibrateGhostSizeWithAngle:(float)a3
{
  pixelScale = self->_pixelScale;
  v5 = pixelScale * self->_minBreathingMagnitude;
  shapeScore = self->_shapeScore;
  if (shapeScore > self->_minShapeScore)
  {
    ghostSizeBias = self->_ghostSizeBias;
    prevGhostSizeBias = self->_prevGhostSizeBias;
    maxBreathingMagnitude = self->_maxBreathingMagnitude;
    v10 = -(pixelScale * maxBreathingMagnitude);
    if (ghostSizeBias != prevGhostSizeBias)
    {
      if (ghostSizeBias <= prevGhostSizeBias)
      {
        v11 = -(shapeScore - self->_prevShapeScore);
      }

      else
      {
        v11 = shapeScore - self->_prevShapeScore;
      }

      v12 = self->_contextScore * (v11 * (pixelScale * self->_slopeMultiplier));
      v10 = v12 * expf(-a3 / self->_angularHalfLife);
    }

    v13 = pixelScale * maxBreathingMagnitude;
    if ((pixelScale * maxBreathingMagnitude) >= v10)
    {
      v14 = v10;
    }

    else
    {
      v14 = pixelScale * maxBreathingMagnitude;
    }

    if (-(pixelScale * maxBreathingMagnitude) >= v14)
    {
      v14 = -(pixelScale * maxBreathingMagnitude);
    }

    v15 = ghostSizeBias + v14;
    v16 = maxBreathingMagnitude * fabsf(v14);
    if (v13 >= v16)
    {
      v13 = v16;
    }

    self->_prevGhostSizeBias = ghostSizeBias;
    if (v5 < v13)
    {
      v5 = v13;
    }

    self->_ghostSizeBias = v15;
    self->_prevShapeScore = shapeScore;
  }

  v17 = -self->_breathingDirection;
  self->_breathingDirection = v17;
  if ((pixelScale * self->_minGhostSize) > self->_adjustedGhostSize)
  {
    self->_breathingDirection = 1.0;
    v17 = 1.0;
  }

  minGhostSizeBias = self->_ghostSizeBias + (v17 * v5);
  if (self->_minGhostSizeBias >= minGhostSizeBias)
  {
    minGhostSizeBias = self->_minGhostSizeBias;
  }

  if (self->_maxGhostSizeBias < minGhostSizeBias)
  {
    minGhostSizeBias = self->_maxGhostSizeBias;
  }

  self->_ghostSizeBias = minGhostSizeBias;
}

- (void)_pushGhostToHistory:(CGPoint *)a3 shapeScore:(float)a4 lensPosition:(float)a5 adjustedPrincipalPoint:(CGPoint *)a6 quaternion:(id *)a7
{
  ghostHistoryCount = self->_ghostHistoryCount;
  if (ghostHistoryCount)
  {
    if (ghostHistoryCount >= 9)
    {
      v14 = 9;
    }

    else
    {
      v14 = ghostHistoryCount;
    }

    v15 = v14 + 1;
    v16 = &self->_ghostHistory[v14];
    do
    {
      v17 = *&v16[-1].quaternion.z;
      *&v16->quaternion.x = *&v16[-1].quaternion.x;
      *&v16->quaternion.z = v17;
      *&v16->ghostLoc.y = *&v16[-1].ghostLoc.y;
      v18 = *&v16[-1].adjustedPrincipalPoint.y;
      *&v16->lensPosition = *&v16[-1].lensPosition;
      *&v16->adjustedPrincipalPoint.y = v18;
      --v16;
      --v15;
    }

    while (v15 > 1);
  }

  if (ghostHistoryCount >= 9)
  {
    v19 = 9;
  }

  else
  {
    v19 = ghostHistoryCount;
  }

  [(CMIVideoDeghostingTrackingV1 *)self _reflectPoint:a3 pivotPoint:&self->_adjustedPrincipalPoint];
  self->_lightSourceRect.origin.x = v20 + -1.0;
  self->_lightSourceRect.origin.y = v21 + -1.0;
  self->_lightSourceRect.size.width = 2.0;
  self->_lightSourceRect.size.height = 2.0;
  [(CMIVideoDeghostingTrackingV1 *)self _applyDistortionPolynomial:&self->_lensDistortionCoefficients ToPoint:a3];
  self->_ghostHistory[0].ghostLoc.x = v22;
  self->_ghostHistory[0].ghostLoc.y = v23;
  self->_ghostHistory[0].shapeScore = a4;
  self->_ghostHistory[0].lensPosition = a5;
  self->_ghostHistory[0].adjustedPrincipalPoint = *a6;
  v24 = *&a7->var2;
  *&self->_ghostHistory[0].quaternion.w = *&a7->var0;
  *&self->_ghostHistory[0].quaternion.y = v24;
  self->_ghostHistoryCount = v19 + 1;
}

- (int)_extractAndCheckTuningParameters:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    sub_2478C(&v44);
LABEL_31:
    v42 = v44;
    goto LABEL_16;
  }

  v6 = [v4 objectForKeyedSubscript:@"MinShapeScore"];

  if (!v6)
  {
    sub_24730(&v44);
    goto LABEL_31;
  }

  v7 = [v5 objectForKeyedSubscript:@"GhostSize"];

  if (!v7)
  {
    sub_246D4(&v44);
    goto LABEL_31;
  }

  v8 = [v5 objectForKeyedSubscript:@"MinGhostSizeBias"];

  if (!v8)
  {
    sub_24678(&v44);
    goto LABEL_31;
  }

  v9 = [v5 objectForKeyedSubscript:@"MaxGhostSizeBias"];

  if (!v9)
  {
    sub_2461C(&v44);
    goto LABEL_31;
  }

  v10 = [v5 objectForKeyedSubscript:@"MinGhostSize"];

  if (!v10)
  {
    sub_245C0(&v44);
    goto LABEL_31;
  }

  v11 = [v5 objectForKeyedSubscript:@"MinBreathingMagnitude"];

  if (!v11)
  {
    sub_24564(&v44);
    goto LABEL_31;
  }

  v12 = [v5 objectForKeyedSubscript:@"MaxBreathingMagnitude"];

  if (!v12)
  {
    sub_24508(&v44);
    goto LABEL_31;
  }

  v13 = [v5 objectForKeyedSubscript:@"SlopeMultiplier"];

  if (!v13)
  {
    sub_244AC(&v44);
    goto LABEL_31;
  }

  v14 = [v5 objectForKeyedSubscript:@"AngularHalfLife"];

  if (!v14)
  {
    sub_24450(&v44);
    goto LABEL_31;
  }

  v15 = [v5 objectForKeyedSubscript:@"SearchRangeInPixel"];

  if (!v15)
  {
    sub_243F4(&v44);
    goto LABEL_31;
  }

  v16 = [v5 objectForKeyedSubscript:@"ShapeScoreLambda"];

  if (!v16)
  {
    sub_24398(&v44);
    goto LABEL_31;
  }

  v17 = [v5 objectForKeyedSubscript:@"ContextScoreLambda"];

  if (!v17)
  {
    sub_2433C(&v44);
    goto LABEL_31;
  }

  v18 = [v5 objectForKeyedSubscript:@"ContextPaddingInPixel"];

  if (!v18)
  {
    sub_242E0(&v44);
    goto LABEL_31;
  }

  v19 = [v5 objectForKeyedSubscript:@"MinShapeScore"];
  [v19 floatValue];
  self->_minShapeScore = v20;

  v21 = [v5 objectForKeyedSubscript:@"GhostSize"];
  self->_ghostSize = [v21 intValue];

  v22 = [v5 objectForKeyedSubscript:@"MinGhostSizeBias"];
  [v22 floatValue];
  self->_minGhostSizeBias = v23;

  v24 = [v5 objectForKeyedSubscript:@"MaxGhostSizeBias"];
  [v24 floatValue];
  self->_maxGhostSizeBias = v25;

  v26 = [v5 objectForKeyedSubscript:@"MinGhostSize"];
  [v26 floatValue];
  self->_minGhostSize = v27;

  v28 = [v5 objectForKeyedSubscript:@"MinBreathingMagnitude"];
  [v28 floatValue];
  self->_minBreathingMagnitude = v29;

  v30 = [v5 objectForKeyedSubscript:@"MaxBreathingMagnitude"];
  [v30 floatValue];
  self->_maxBreathingMagnitude = v31;

  v32 = [v5 objectForKeyedSubscript:@"SlopeMultiplier"];
  [v32 floatValue];
  self->_slopeMultiplier = v33;

  v34 = [v5 objectForKeyedSubscript:@"AngularHalfLife"];
  [v34 floatValue];
  self->_angularHalfLife = v35;

  v36 = [v5 objectForKeyedSubscript:@"SearchRangeInPixel"];
  self->_searchRangeInPixel = [v36 intValue];

  v37 = [v5 objectForKeyedSubscript:@"ShapeScoreLambda"];
  [v37 floatValue];
  self->_shapeScoreLambda = v38;

  v39 = [v5 objectForKeyedSubscript:@"ContextScoreLambda"];
  [v39 floatValue];
  self->_contextScoreLambda = v40;

  v41 = [v5 objectForKeyedSubscript:@"ContextPaddingInPixel"];
  self->_contextPaddingInPixel = [v41 intValue];

  v42 = 0;
LABEL_16:

  return v42;
}

- (void)_extractCameraInfo
{
  v3 = [(NSDictionary *)self->_metadataDictionary objectForKeyedSubscript:kFigCaptureStreamMetadata_PortType];
  currentPortType = self->_currentPortType;
  self->_currentPortType = v3;

  if (!self->_cameraInfoByPortType)
  {
    v5 = [(NSDictionary *)self->_metadataDictionary objectForKeyedSubscript:kFigCaptureSampleBufferProcessorOption_CameraInfoByPortType];
    cameraInfoByPortType = self->_cameraInfoByPortType;
    self->_cameraInfoByPortType = v5;
  }

  if (![(NSString *)self->_currentPortType isEqualToString:self->_previousPortType])
  {
    v7 = self->_cameraInfoByPortType;
    if (v7)
    {
      v8 = [(NSDictionary *)v7 objectForKeyedSubscript:self->_currentPortType];
      currentCameraInfo = self->_currentCameraInfo;
      self->_currentCameraInfo = v8;

      v10 = [(NSDictionary *)self->_currentCameraInfo objectForKeyedSubscript:kFigCaptureCameraInfoKey_PixelSize];
      [v10 floatValue];
      v12 = v11;

      v13 = 1.0;
      if (v12 > 0.0)
      {
        v13 = 1.0 / v12;
      }

      self->_pixelsPerMicron = v13;
      p_lensDistortionCorrectionBasePolynomial = &self->_lensDistortionCorrectionBasePolynomial;
      *self->_lensDistortionCorrectionBasePolynomial.forwardOrders = 0u;
      *&self->_lensDistortionCorrectionBasePolynomial.forwardOrders[4] = 0u;
      *self->_lensDistortionCorrectionBasePolynomial.inverseOrders = 0u;
      *&self->_lensDistortionCorrectionBasePolynomial.inverseOrders[4] = 0u;
      p_lensDistortionCorrectionDynamicPolynomial = &self->_lensDistortionCorrectionDynamicPolynomial;
      *self->_lensDistortionCorrectionDynamicPolynomial.forwardOrders = 0u;
      *&self->_lensDistortionCorrectionDynamicPolynomial.forwardOrders[4] = 0u;
      *self->_lensDistortionCorrectionDynamicPolynomial.inverseOrders = 0u;
      *&self->_lensDistortionCorrectionDynamicPolynomial.inverseOrders[4] = 0u;
      v16 = [(NSDictionary *)self->_currentCameraInfo objectForKeyedSubscript:kFigCaptureCameraInfoKey_GeometricDistortionCoefficients];
      if (v16)
      {
        v29 = v16;
        v17 = [v16 objectForKeyedSubscript:kFigCaptureStreamGDCCoefficientsKey_BasePolynomial];
        v18 = v17;
        if (v17)
        {
          v19 = [v17 bytes];
          v20 = v19[3];
          v22 = *v19;
          v21 = v19[1];
          *p_lensDistortionCorrectionBasePolynomial->inverseOrders = v19[2];
          *&p_lensDistortionCorrectionBasePolynomial->inverseOrders[4] = v20;
          *p_lensDistortionCorrectionBasePolynomial->forwardOrders = v22;
          *&p_lensDistortionCorrectionBasePolynomial->forwardOrders[4] = v21;
        }

        v23 = [v29 objectForKeyedSubscript:kFigCaptureStreamGDCCoefficientsKey_DynamicPolynomial];
        v24 = v23;
        if (v23)
        {
          v25 = [v23 bytes];
          v26 = v25[3];
          v28 = *v25;
          v27 = v25[1];
          *p_lensDistortionCorrectionDynamicPolynomial->inverseOrders = v25[2];
          *&p_lensDistortionCorrectionDynamicPolynomial->inverseOrders[4] = v26;
          *p_lensDistortionCorrectionDynamicPolynomial->forwardOrders = v28;
          *&p_lensDistortionCorrectionDynamicPolynomial->forwardOrders[4] = v27;
        }

        v16 = v29;
      }
    }
  }
}

- (CGPoint)_reflectPoint:(CGPoint *)a3 pivotPoint:(CGPoint *)a4
{
  __asm { FMOV            V2.2D, #2.0 }

  v9 = vaddq_f64(vmlaq_f64(vnegq_f64(*a3), _Q2, *a4), self->_bias);
  v10 = v9.f64[1];
  result.x = v9.f64[0];
  result.y = v10;
  return result;
}

- (CGPoint)_applyDistortionPolynomial:(float *)a3 ToPoint:(CGPoint *)a4
{
  [(CMIVideoDeghostingTrackingV1 *)self _pixelBufferToRawBuffer:a4];
  v7 = v6 - self->_distortionOpticalCenterRaw.x;
  v9 = v8 - self->_distortionOpticalCenterRaw.y;
  v10 = v9 * v9 + v7 * v7;
  *&v10 = v10;
  *&v10 = (0.001 / self->_pixelsPerMicron) * sqrtf(*&v10);
  [(CMIVideoDeghostingTrackingV1 *)self _getRadialMagnificationAtDistanceMM:a3 WithPolynomial:v10];
  v12 = v11;
  v13 = self->_distortionOpticalCenterRaw.x + v7 * v12;
  v14 = self->_distortionOpticalCenterRaw.y + v9 * v12;
  *v17 = v13;
  *&v17[1] = v14;
  [(CMIVideoDeghostingTrackingV1 *)self _rawBufferToPixelBuffer:v17];
  result.y = v16;
  result.x = v15;
  return result;
}

- (float)_getRadialMagnificationAtDistanceMM:(float)a3 WithPolynomial:(float *)a4
{
  v4 = a3 * a3;
  v5 = v4 * (v4 * v4);
  v6 = v4 * (v4 * v5);
  return 1.0 / (((((((((*a4 + (v4 * a4[1])) + ((v4 * v4) * a4[2])) + (v5 * a4[3])) + ((v4 * v5) * a4[4])) + (v6 * a4[5])) + ((v4 * v6) * a4[6])) + ((v4 * (v4 * v6)) * a4[7])) / 100.0) + 1.0);
}

- (CGPoint)_pixelBufferToRawBuffer:(CGPoint *)a3
{
  v3 = vaddq_f64(self->_rawSensorCenter, vdivq_f64(vsubq_f64(*a3, self->_pixelBufferCenter), vdupq_lane_s64(COERCE__INT64(self->_scalingFactor), 0)));
  v4 = v3.f64[1];
  result.x = v3.f64[0];
  result.y = v4;
  return result;
}

- (CGPoint)_rawBufferToPixelBuffer:(CGPoint *)a3
{
  scalingFactor = self->_scalingFactor;
  v4 = self->_pixelBufferCenter.x + (a3->x - self->_rawSensorCenter.x) * scalingFactor;
  v5 = self->_pixelBufferCenter.y + (a3->y - self->_rawSensorCenter.y) * scalingFactor;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)bias
{
  x = self->_bias.x;
  y = self->_bias.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)ghostRectMetadataBased
{
  x = self->_ghostRectMetadataBased.origin.x;
  y = self->_ghostRectMetadataBased.origin.y;
  width = self->_ghostRectMetadataBased.size.width;
  height = self->_ghostRectMetadataBased.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)ghostRectImageBased
{
  x = self->_ghostRectImageBased.origin.x;
  y = self->_ghostRectImageBased.origin.y;
  width = self->_ghostRectImageBased.size.width;
  height = self->_ghostRectImageBased.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)lightSourceRect
{
  x = self->_lightSourceRect.origin.x;
  y = self->_lightSourceRect.origin.y;
  width = self->_lightSourceRect.size.width;
  height = self->_lightSourceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (int)_extractCalibrationData
{
  v4 = [(NSDictionary *)self->_metadataDictionary objectForKeyedSubscript:kFigCaptureStreamMetadata_SphereMode];
  v5 = v4 != 0;

  v6 = [(NSDictionary *)self->_metadataDictionary objectForKeyedSubscript:kFigMotionAttachmentsSampleBufferProcessorMetadata_FramePTSSeconds];
  [v6 doubleValue];
  v8 = v7;

  if (v8 == 0.0)
  {
    v9 = [(NSDictionary *)self->_metadataDictionary objectForKeyedSubscript:kFigCaptureSampleBufferAttachmentKey_OriginalPresentationTimeStamp];
    CMTimeMakeFromDictionary(&time, v9);
    CMTimeGetSeconds(&time);
    time.value = 0;
    v10 = sub_98B8(self->_metadataDictionary, &time.value);

    if (v10)
    {
      return v10;
    }
  }

  v11 = [(NSDictionary *)self->_metadataDictionary objectForKeyedSubscript:kFigCaptureStreamMetadata_PinholeCameraFocalLength];
  [v11 floatValue];
  v13 = v12;

  if (v13 == 0.0)
  {
    sub_150CC();
    sub_4C48();
    FigDebugAssert3();
    sub_150CC();
    return FigSignalErrorAtGM();
  }

  self->_pixelBufferWidth = CVPixelBufferGetWidth(self->_inputPixelBuffer);
  self->_pixelBufferHeight = CVPixelBufferGetHeight(self->_inputPixelBuffer);
  v14 = [(NSDictionary *)self->_metadataDictionary objectForKeyedSubscript:kFigCaptureStreamMetadata_RawSensorWidth];
  self->_rawSensorWidth = [v14 intValue];

  v15 = [(NSDictionary *)self->_metadataDictionary objectForKeyedSubscript:kFigCaptureStreamMetadata_RawSensorHeight];
  self->_rawSensorHeight = [v15 intValue];

  v16 = *&self->_pixelBufferWidth;
  v17.i64[0] = v16;
  v17.i64[1] = HIDWORD(v16);
  __asm { FMOV            V1.2D, #-1.0 }

  v23 = vaddq_f64(vcvtq_f64_u64(v17), _Q1);
  v24 = *&self->_rawSensorWidth;
  v17.i64[0] = v24;
  v17.i64[1] = HIDWORD(v24);
  __asm { FMOV            V2.2D, #0.5 }

  self->_pixelBufferCenter = vmulq_f64(v23, _Q2);
  self->_rawSensorCenter = vmulq_f64(vaddq_f64(vcvtq_f64_u64(v17), _Q1), _Q2);
  v26 = [(NSDictionary *)self->_metadataDictionary objectForKeyedSubscript:kFigCaptureStreamMetadata_QuadraBinningFactor];
  v27 = [v26 intValue];

  if (v27 <= 1)
  {
    v28 = 1;
  }

  else
  {
    v28 = v27;
  }

  v29 = self->_sensorBinningFactorHorizontal * v28;
  v30 = (self->_sensorBinningFactorVertical * v28);
  v31 = [(NSDictionary *)self->_metadataDictionary objectForKeyedSubscript:kFigMotionAttachmentsSampleBufferProcessorMetadata_ScalingFactor];
  [v31 floatValue];
  self->_scalingFactor = v32;

  scalingFactor = self->_scalingFactor;
  if (scalingFactor == 0.0)
  {
    v34 = sub_9658(self->_metadataDictionary, self->_pixelBufferWidth, self->_pixelBufferHeight, v29, v30, &self->_scalingFactor);
    if (v34)
    {
      return v34;
    }

    scalingFactor = self->_scalingFactor;
  }

  pixelsPerMicron = self->_pixelsPerMicron;
  self->_lensPosition = (v13 * scalingFactor) * pixelsPerMicron;
  self->_adjustedPrincipalPoint = CGPointZero;
  v34 = sub_1C5B8(self->_metadataDictionary, self->_pixelBufferWidth, self->_pixelBufferHeight, v29, v30, v5, &self->_adjustedPrincipalPoint, pixelsPerMicron, scalingFactor);
  if (v34)
  {
    return v34;
  }

  size = CGRectNull.size;
  rect.origin = CGRectNull.origin;
  rect.size = size;
  v37 = [(NSDictionary *)self->_metadataDictionary objectForKeyedSubscript:kFigCaptureStreamMetadata_ValidBufferRect];
  v38 = CGRectMakeWithDictionaryRepresentation(v37, &rect);

  if (v38 && !CGRectIsEmpty(rect) && !CGRectContainsPoint(rect, self->_adjustedPrincipalPoint))
  {
    fig_log_get_emitter();
    v70 = v2;
    LODWORD(v69) = 0;
    FigDebugAssert3();
  }

  v39 = [(NSDictionary *)self->_metadataDictionary objectForKeyedSubscript:kFigCaptureStreamMetadata_Fnumber, v69, v70];
  [v39 floatValue];
  v41 = v40;

  v42 = [(NSDictionary *)self->_metadataDictionary objectForKeyedSubscript:kFigCaptureStreamMetadata_EffectiveFocalLength];
  [v42 floatValue];
  v44 = v43;

  v45 = [(NSDictionary *)self->_metadataDictionary objectForKeyedSubscript:kFigCaptureStreamMetadata_PracticalFocalLength];
  [v45 floatValue];
  v47 = v46;

  if (v41 <= 0.0)
  {
    sub_150CC();
    sub_4C48();
    FigDebugAssert3();
    sub_150CC();
    return FigSignalErrorAtGM();
  }

  v48 = (vabds_f32(v44, v47) * self->_scalingFactor) * self->_pixelsPerMicron;
  v49 = self->_lensPosition / 1630.0;
  self->_pixelScale = v49;
  v50 = ((v48 + v48) / v41) + (v49 * self->_ghostSize);
  ghostSizeBias = self->_ghostSizeBias;
  v52 = ghostSizeBias + v50;
  self->_adjustedGhostSize = llroundf(v52);
  self->_adjustedSearchRange = llroundf(v49 * self->_searchRangeInPixel);
  v53 = v49 * self->_minGhostSize;
  v54 = roundf(v52);
  if (v53 > v54)
  {
    self->_ghostSizeBias = ghostSizeBias + (v53 - v54);
    self->_adjustedGhostSize = v53;
  }

  v55 = kFigCaptureStreamMetadata_DynamicDistortionFactor;
  v56 = [(NSDictionary *)self->_metadataDictionary objectForKey:kFigCaptureStreamMetadata_DynamicDistortionFactor];

  if (v56)
  {
    v57 = [(NSDictionary *)self->_metadataDictionary objectForKeyedSubscript:v55];
    [v57 floatValue];
    v71 = v58;

    v59 = v71;
  }

  else
  {
    v59 = 1.0;
  }

  v60 = vmlaq_n_f32(*self->_lensDistortionCorrectionBasePolynomial.inverseOrders, *self->_lensDistortionCorrectionDynamicPolynomial.inverseOrders, v59);
  v61 = vmlaq_n_f32(*&self->_lensDistortionCorrectionBasePolynomial.forwardOrders[4], *&self->_lensDistortionCorrectionDynamicPolynomial.forwardOrders[4], v59);
  v62 = vmlaq_n_f32(*&self->_lensDistortionCorrectionBasePolynomial.inverseOrders[4], *&self->_lensDistortionCorrectionDynamicPolynomial.inverseOrders[4], v59);
  *self->_lensDistortionCoefficients.forwardOrders = vmlaq_n_f32(*self->_lensDistortionCorrectionBasePolynomial.forwardOrders, *self->_lensDistortionCorrectionDynamicPolynomial.forwardOrders, v59);
  *&self->_lensDistortionCoefficients.forwardOrders[4] = v61;
  *self->_lensDistortionCoefficients.inverseOrders = v60;
  *&self->_lensDistortionCoefficients.inverseOrders[4] = v62;
  [(CMIVideoDeghostingTrackingV1 *)self _pixelBufferToRawBuffer:&self->_adjustedPrincipalPoint];
  self->_distortionOpticalCenterRaw.x = v63;
  self->_distortionOpticalCenterRaw.y = v64;
  v65 = kFigCaptureStreamMetadata_DistortionOpticalCenter;
  v66 = [(NSDictionary *)self->_metadataDictionary objectForKey:kFigCaptureStreamMetadata_DistortionOpticalCenter];

  if (v66)
  {
    v67 = [(NSDictionary *)self->_metadataDictionary objectForKeyedSubscript:v65];
    CGPointMakeWithDictionaryRepresentation(v67, &self->_distortionOpticalCenterRaw);
  }

  return 0;
}

@end
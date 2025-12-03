@interface CMIVideoDeghostingDetectionAndTrackingV1
- (BOOL)_lightSourceRecentlyAppeared:(BOOL)appeared;
- (BOOL)_longTrackFailedForLastFrame;
- (BOOL)_runDetectionOnImage:(__CVBuffer *)image metadataDictionary:(id)dictionary;
- (BOOL)_runTrackingOnImage:(__CVBuffer *)image metadataDictionary:(id)dictionary;
- (CMIVideoDeghostingDetectionAndTrackingV1)initWithMetalContext:(id)context imageDimensions:(id)dimensions tuningParameters:(id)parameters;
- (int)_addMotionDataToRingBuffer:(id)buffer;
- (int)_extractAndCheckTuningParameters:(id)parameters;
- (int)process;
- (int)resetState;
- (void)dealloc;
- (void)setCameraInfoByPortType:(id)type;
@end

@implementation CMIVideoDeghostingDetectionAndTrackingV1

- (void)dealloc
{
  [(CMIVideoDeghostingDetectionAndTrackingV1 *)self finishProcessing];
  [(CMIVideoDeghostingDetectionAndTrackingV1 *)self purgeResources];
  v3.receiver = self;
  v3.super_class = CMIVideoDeghostingDetectionAndTrackingV1;
  [(CMIVideoDeghostingDetectionAndTrackingV1 *)&v3 dealloc];
}

- (int)process
{
  v38 = 0u;
  v39 = 0u;
  detectionResult = self->_detectionResult;
  self->_detectionResult = 0;

  inputSampleBuffer = self->_inputSampleBuffer;
  if (!inputSampleBuffer)
  {
    sub_1E7E0();
LABEL_33:
    v7 = 0;
    detectedGhostBoundingBoxes = 0;
    v33 = -12780;
    goto LABEL_25;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(inputSampleBuffer);
  if (!ImageBuffer)
  {
    sub_1E764();
    goto LABEL_33;
  }

  v6 = ImageBuffer;
  v7 = CMGetAttachment(self->_inputSampleBuffer, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
  if (v7)
  {
    v8 = [(CMIVideoDeghostingDetectionAndTrackingV1 *)self _addMotionDataToRingBuffer:v7];
    if (v8)
    {
      v33 = v8;
      sub_1E668();
      detectedGhostBoundingBoxes = 0;
    }

    else
    {
      BYTE3(v38) = self->_isTracking;
      v9 = BYTE3(v38);
      v10 = self->_trackingFramesSinceLastReset > self->_minTrackLengthToTriggerDetectionAfterFailure;
      BYTE4(v38) = v10;
      if (BYTE3(v38) == 1)
      {
        v11 = [(CMIVideoDeghostingDetectionAndTrackingV1 *)self _runTrackingOnImage:v6 metadataDictionary:v7];
        BYTE9(v38) = v11;
        if (v11)
        {
          self->_isTracking = 1;
          [(CMIVideoDeghostingTrackingV1 *)self->_tracking confidence];
          v13 = v12;
          detectedGhostBoundingBoxes = [(CMIVideoDeghostingTrackingV1 *)self->_tracking detectedGhostBoundingBoxes];
          v10 = 0;
          v15 = self->_trackingFramesSinceLastReset + 1;
        }

        else
        {
          v15 = 0;
          detectedGhostBoundingBoxes = 0;
          self->_isTracking = 0;
          v13 = 0;
        }

        self->_trackingFramesSinceLastReset = v15;
      }

      else
      {
        detectedGhostBoundingBoxes = 0;
        v10 = 0;
        v13 = 0;
      }

      BYTE5(v38) = v10;
      greenGhostBrightLightTuningParameters = self->_greenGhostBrightLightTuningParameters;
      if (greenGhostBrightLightTuningParameters)
      {
        [(CMIVideoDeghostingBrightLightTuningParamsV1 *)greenGhostBrightLightTuningParameters tuningParams];
      }

      else
      {
        memset(v36, 0, 20);
      }

      v37 = *(v36 + 4);
      v17 = sub_1BEB4(v7, &v37, 0, 0, 0.5, 0.5);
      LOBYTE(v38) = v17;
      BYTE1(v38) = [(CMIVideoDeghostingDetectionAndTrackingV1 *)self _lightSourceRecentlyAppeared:v17];
      v18 = self->_defaultDetectionPeriod >> SBYTE1(v38);
      *&v39 = v18;
      v19 = (v9 & 1) == 0 && self->_processedFrameCount % v18 == 0;
      BYTE6(v38) = v19;
      if (v17)
      {
        _longTrackFailedForLastFrame = [(CMIVideoDeghostingDetectionAndTrackingV1 *)self _longTrackFailedForLastFrame];
        BYTE2(v38) = v19 | _longTrackFailedForLastFrame;
        if ((v19 | _longTrackFailedForLastFrame) == 1)
        {
          v21 = [(CMIVideoDeghostingDetectionAndTrackingV1 *)self _runDetectionOnImage:v6 metadataDictionary:v7];
          BYTE8(v38) = v21;
          if (v21)
          {
            [(CMIVideoDeghostingDetectionV1 *)self->_detection confidence];
            v13 = v22;
            detectedGhostBoundingBoxes2 = [(CMIVideoDeghostingDetectionV1 *)self->_detection detectedGhostBoundingBoxes];

            [(CMIVideoDeghostingTrackingV1 *)self->_tracking setResetTrackerWithInputGhostBoundingBoxes:1];
            [(CMIVideoDeghostingDetectionAndTrackingV1 *)self _runTrackingOnImage:v6 metadataDictionary:v7];
            self->_isTracking = 1;
            self->_trackingFramesSinceLastReset = 1;
            detectedGhostBoundingBoxes = detectedGhostBoundingBoxes2;
          }

          else
          {

            detectedGhostBoundingBoxes = 0;
            v13 = 0;
          }
        }
      }

      else
      {
        BYTE2(v38) = 0;
      }

      if ([detectedGhostBoundingBoxes count])
      {
        v24 = [NSDictionary alloc];
        firstObject = [detectedGhostBoundingBoxes firstObject];
        v26 = [NSNumber alloc];
        LODWORD(v27) = v13;
        v28 = [v26 initWithFloat:v27];
        v29 = [v24 initWithObjectsAndKeys:{firstObject, @"GhostRect", v28, @"GhostConfidence", 0}];

        v30 = [[NSArray alloc] initWithObjects:{v29, 0}];
        v31 = [[NSDictionary alloc] initWithObjectsAndKeys:{v30, @"GhostsArray", 0}];
        v32 = self->_detectionResult;
        self->_detectionResult = v31;
      }

      v33 = 0;
    }
  }

  else
  {
    sub_1E6E8();
    detectedGhostBoundingBoxes = 0;
    v33 = -12783;
  }

LABEL_25:
  if (!self->_enableDetectionMaskRegistration)
  {
    [(CMIVideoDeghostingDetectionV1 *)self->_detection resetState];
  }

  DWORD2(v39) = v33;
  if ([(NSMutableArray *)self->_pastFrameInfoArray count]== self->_pastFrameInfoArrayCapacity)
  {
    [(NSMutableArray *)self->_pastFrameInfoArray removeObjectAtIndex:0];
  }

  v34 = [[NSData alloc] initWithBytes:&v38 length:32];
  [(NSMutableArray *)self->_pastFrameInfoArray addObject:v34];
  ++self->_processedFrameCount;

  return v33;
}

- (int)resetState
{
  [(NSMutableArray *)self->_pastFrameInfoArray removeAllObjects];
  self->_isTracking = 0;
  self->_trackingFramesSinceLastReset = 0;
  self->_processedFrameCount = 0;
  detectionResult = self->_detectionResult;
  self->_detectionResult = 0;

  resetState = [(CMIVideoDeghostingDetectionV1 *)self->_detection resetState];
  if (resetState)
  {
    resetState2 = resetState;
    sub_1E85C();
  }

  else
  {
    resetState2 = [(CMIVideoDeghostingTrackingV1 *)self->_tracking resetState];
    if (resetState2)
    {
      sub_1E8DC();
    }
  }

  return resetState2;
}

- (BOOL)_runTrackingOnImage:(__CVBuffer *)image metadataDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }

  [(CMIVideoDeghostingTrackingV1 *)self->_tracking setInputPixelBuffer:image];
  [(CMIVideoDeghostingTrackingV1 *)self->_tracking setMetadataDictionary:dictionaryCopy];
  [(CMIVideoDeghostingTrackingV1 *)self->_tracking setCameraInfoByPortType:self->_cameraInfoByPortType];
  detectedGhostBoundingBoxes = [(CMIVideoDeghostingDetectionV1 *)self->_detection detectedGhostBoundingBoxes];
  [(CMIVideoDeghostingTrackingV1 *)self->_tracking setDetectedGhostBoundingBoxes:detectedGhostBoundingBoxes];

  [(CMIVideoDeghostingDetectionV1 *)self->_detection bias];
  [(CMIVideoDeghostingTrackingV1 *)self->_tracking setBias:?];
  [(CMIVideoDeghostingDetectionV1 *)self->_detection confidence];
  [(CMIVideoDeghostingTrackingV1 *)self->_tracking setConfidence:?];
  [(CMIVideoDeghostingDetectionV1 *)self->_detection shapeScore];
  [(CMIVideoDeghostingTrackingV1 *)self->_tracking setShapeScore:?];
  [(CMIVideoDeghostingDetectionV1 *)self->_detection contextScore];
  [(CMIVideoDeghostingTrackingV1 *)self->_tracking setContextScore:?];
  if ([(CMIVideoDeghostingTrackingV1 *)self->_tracking process])
  {
    sub_1E95C();
    v9 = 0;
  }

  else
  {
    detectedGhostBoundingBoxes2 = [(CMIVideoDeghostingTrackingV1 *)self->_tracking detectedGhostBoundingBoxes];
    v9 = [detectedGhostBoundingBoxes2 count] != 0;
  }

  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }

  return v9;
}

- (void)setCameraInfoByPortType:(id)type
{
  objc_storeStrong(&self->_cameraInfoByPortType, type);
  typeCopy = type;
  [(CMIVideoDeghostingDetectionV1 *)self->_detection setCameraInfoByPortType:typeCopy];
  [(CMIVideoDeghostingTrackingV1 *)self->_tracking setCameraInfoByPortType:typeCopy];
}

- (int)_extractAndCheckTuningParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = parametersCopy;
  if (!parametersCopy)
  {
    sub_1ED18(&v20);
LABEL_23:
    v18 = v20;
    goto LABEL_12;
  }

  v6 = [parametersCopy objectForKeyedSubscript:@"DefaultDetectionPeriod"];

  if (!v6)
  {
    sub_1ECBC(&v20);
    goto LABEL_23;
  }

  v7 = [v5 objectForKeyedSubscript:@"MinTrackLengthToTriggerDetectionAfterFailure"];

  if (!v7)
  {
    sub_1EC60(&v20);
    goto LABEL_23;
  }

  v8 = [v5 objectForKeyedSubscript:@"GhostSize"];

  if (!v8)
  {
    sub_1EC04(&v20);
    goto LABEL_23;
  }

  v9 = [v5 objectForKeyedSubscript:@"SearchRangeInPixel"];

  if (!v9)
  {
    sub_1EBA8(&v20);
    goto LABEL_23;
  }

  v10 = [v5 objectForKeyedSubscript:@"ShapeScoreLambda"];

  if (!v10)
  {
    sub_1EB4C(&v20);
    goto LABEL_23;
  }

  v11 = [v5 objectForKeyedSubscript:@"ContextScoreLambda"];

  if (!v11)
  {
    sub_1EAF0(&v20);
    goto LABEL_23;
  }

  v12 = [v5 objectForKeyedSubscript:@"ContextPaddingInPixel"];

  if (!v12)
  {
    sub_1EA94(&v20);
    goto LABEL_23;
  }

  v13 = [v5 objectForKeyedSubscript:@"Detection"];

  if (!v13)
  {
    sub_1EA38(&v20);
    goto LABEL_23;
  }

  v14 = [v5 objectForKeyedSubscript:@"Tracking"];

  if (!v14)
  {
    sub_1E9DC(&v20);
    goto LABEL_23;
  }

  v15 = [v5 objectForKeyedSubscript:@"MinTrackLengthToTriggerDetectionAfterFailure"];
  [v15 floatValue];
  self->_minTrackLengthToTriggerDetectionAfterFailure = v16;

  v17 = [v5 objectForKeyedSubscript:@"DefaultDetectionPeriod"];
  self->_defaultDetectionPeriod = [v17 intValue];

  v18 = 0;
LABEL_12:

  return v18;
}

- (BOOL)_lightSourceRecentlyAppeared:(BOOL)appeared
{
  if (!appeared)
  {
    return 0;
  }

  v4 = [(NSMutableArray *)self->_pastFrameInfoArray count];
  do
  {
    v5 = v4;
    if (v4 < 1)
    {
      break;
    }

    v6 = [(NSMutableArray *)self->_pastFrameInfoArray objectAtIndexedSubscript:--v4];
    v7 = *[v6 bytes];
  }

  while ((v7 & 1) != 0);
  v8 = [(NSMutableArray *)self->_pastFrameInfoArray count];
  return v5 > 0 || v8 < self->_pastFrameInfoArrayCapacity;
}

- (BOOL)_longTrackFailedForLastFrame
{
  if ([(NSMutableArray *)self->_pastFrameInfoArray count])
  {
    lastObject = [(NSMutableArray *)self->_pastFrameInfoArray lastObject];
    v4 = *([lastObject bytes] + 5);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (CMIVideoDeghostingDetectionAndTrackingV1)initWithMetalContext:(id)context imageDimensions:(id)dimensions tuningParameters:(id)parameters
{
  contextCopy = context;
  parametersCopy = parameters;
  v36.receiver = self;
  v36.super_class = CMIVideoDeghostingDetectionAndTrackingV1;
  v11 = [(CMIVideoDeghostingDetectionAndTrackingV1 *)&v36 init];
  v12 = v11;
  if (!v11)
  {
    fig_log_get_emitter();
    sub_4C20();
LABEL_13:
    FigDebugAssert3();
    v14 = 0;
    v16 = 0;
    goto LABEL_20;
  }

  if ([(CMIVideoDeghostingDetectionAndTrackingV1 *)v11 _extractAndCheckTuningParameters:parametersCopy])
  {
    fig_log_get_emitter();
    goto LABEL_13;
  }

  dimensionsCopy = dimensions;
  v35 = contextCopy;
  v13 = [parametersCopy objectForKeyedSubscript:@"Detection"];
  v14 = [NSMutableDictionary dictionaryWithDictionary:v13];

  v15 = [parametersCopy objectForKeyedSubscript:@"Tracking"];
  v16 = [NSMutableDictionary dictionaryWithDictionary:v15];

  [parametersCopy objectForKeyedSubscript:@"GhostSize"];
  objc_claimAutoreleasedReturnValue();
  [sub_B40C() setObject:? forKeyedSubscript:?];

  [parametersCopy objectForKeyedSubscript:@"SearchRangeInPixel"];
  objc_claimAutoreleasedReturnValue();
  [sub_B40C() setObject:? forKeyedSubscript:?];

  [parametersCopy objectForKeyedSubscript:@"ShapeScoreLambda"];
  objc_claimAutoreleasedReturnValue();
  [sub_B40C() setObject:? forKeyedSubscript:?];

  [parametersCopy objectForKeyedSubscript:@"ContextScoreLambda"];
  v17 = obj = context;
  [v14 setObject:v17 forKeyedSubscript:@"ContextScoreLambda"];

  v18 = [parametersCopy objectForKeyedSubscript:@"ContextPaddingInPixel"];
  [v14 setObject:v18 forKeyedSubscript:@"ContextPaddingInPixel"];

  [parametersCopy objectForKeyedSubscript:@"GhostSize"];
  objc_claimAutoreleasedReturnValue();
  [sub_B41C() setObject:? forKeyedSubscript:?];

  [parametersCopy objectForKeyedSubscript:@"SearchRangeInPixel"];
  objc_claimAutoreleasedReturnValue();
  [sub_B41C() setObject:? forKeyedSubscript:?];

  [parametersCopy objectForKeyedSubscript:@"ShapeScoreLambda"];
  objc_claimAutoreleasedReturnValue();
  [sub_B41C() setObject:? forKeyedSubscript:?];

  v19 = [parametersCopy objectForKeyedSubscript:@"ContextScoreLambda"];
  [v16 setObject:v19 forKeyedSubscript:@"ContextScoreLambda"];

  v20 = [parametersCopy objectForKeyedSubscript:@"ContextPaddingInPixel"];
  [v16 setObject:v20 forKeyedSubscript:@"ContextPaddingInPixel"];

  objc_storeStrong(&v12->_metalContext, obj);
  v12->_pastFrameInfoArrayCapacity = (2 * v12->_defaultDetectionPeriod) | 1;
  v21 = [[NSMutableArray alloc] initWithCapacity:v12->_pastFrameInfoArrayCapacity];
  pastFrameInfoArray = v12->_pastFrameInfoArray;
  v12->_pastFrameInfoArray = v21;

  if (!v12->_pastFrameInfoArray)
  {
    fig_log_get_emitter();
    sub_4C20();
    FigDebugAssert3();
    v31 = 0;
    contextCopy = v35;
    goto LABEL_10;
  }

  v23 = objc_alloc_init(CMIVideoDeghostingBrightLightTuningParamsV1);
  greenGhostBrightLightTuningParameters = v12->_greenGhostBrightLightTuningParameters;
  v12->_greenGhostBrightLightTuningParameters = v23;

  contextCopy = v35;
  if (!v12->_greenGhostBrightLightTuningParameters)
  {
    fig_log_get_emitter();
    sub_4C20();
    FigDebugAssert3();
    v31 = 0;
    goto LABEL_10;
  }

  v12->_enableDetectionMaskRegistration = FigGetCFPreferenceBooleanWithDefault() != 0;
  v25 = [[CMIVideoDeghostingDetectionV1 alloc] initWithMetalContext:v35 imageDimensions:dimensionsCopy tuningParameters:v14 enableMaskRegistration:v12->_enableDetectionMaskRegistration];
  detection = v12->_detection;
  v12->_detection = v25;

  if (!v12->_detection || (v27 = [[CMIVideoDeghostingTrackingV1 alloc] initWithMetalContext:v35 tuningParameters:v16], tracking = v12->_tracking, v12->_tracking = v27, tracking, !v12->_tracking))
  {
    fig_log_get_emitter();
    sub_4C20();
LABEL_19:
    FigDebugAssert3();
    goto LABEL_20;
  }

  if ([(CMIVideoDeghostingDetectionAndTrackingV1 *)v12 resetState])
  {
    fig_log_get_emitter();
    goto LABEL_19;
  }

  *&v12->_sensorBinningFactorVertical = 0x100000001;
  v29 = [[CMIMotionSampleRingBufferV1 alloc] initWithMaxCount:66.0];
  motionSampleRingbuffer = v12->_motionSampleRingbuffer;
  v12->_motionSampleRingbuffer = v29;

  if (!v12->_motionSampleRingbuffer)
  {
LABEL_20:
    v31 = 0;
    goto LABEL_10;
  }

  [(CMIVideoDeghostingDetectionV1 *)v12->_detection setMotionSampleRingBuffer:?];
  [(CMIVideoDeghostingTrackingV1 *)v12->_tracking setMotionSampleRingBuffer:v12->_motionSampleRingbuffer];
  v31 = v12;
LABEL_10:

  return v31;
}

- (BOOL)_runDetectionOnImage:(__CVBuffer *)image metadataDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }

  [(CMIVideoDeghostingDetectionV1 *)self->_detection setInputPixelBuffer:image];
  [(CMIVideoDeghostingDetectionV1 *)self->_detection setMetadataDictionary:dictionaryCopy];
  if ([(CMIVideoDeghostingDetectionV1 *)self->_detection process])
  {
    fig_log_get_emitter();
LABEL_12:
    FigDebugAssert3();
    goto LABEL_13;
  }

  detectedGhostBoundingBoxes = [(CMIVideoDeghostingDetectionV1 *)self->_detection detectedGhostBoundingBoxes];
  v8 = [detectedGhostBoundingBoxes count];

  if (v8)
  {
    size = CGRectNull.size;
    rect.origin = CGRectNull.origin;
    rect.size = size;
    detectedGhostBoundingBoxes2 = [(CMIVideoDeghostingDetectionV1 *)self->_detection detectedGhostBoundingBoxes];
    v11 = [detectedGhostBoundingBoxes2 objectAtIndexedSubscript:0];
    CGRectMakeWithDictionaryRepresentation(v11, &rect);

    if (!CGRectIsEmpty(rect))
    {
      v12 = 1;
      goto LABEL_7;
    }

    fig_log_get_emitter();
    sub_4C20();
    goto LABEL_12;
  }

LABEL_13:
  v12 = 0;
LABEL_7:
  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }

  return v12;
}

- (int)_addMotionDataToRingBuffer:(id)buffer
{
  v9 = 0;
  v4 = sub_9A44(buffer, self->_rawQuaternionArray, 0, 110, &v9, 0, 0, 0, 0);
  if (!v4)
  {
    motionSampleRingbuffer = self->_motionSampleRingbuffer;
    if (motionSampleRingbuffer)
    {
      if (v9)
      {
        if (v9 >= 1)
        {
          p_timestamp = &self->_rawQuaternionArray[0].timestamp;
          v7 = v9;
          do
          {
            *p_timestamp = *p_timestamp + -0.0035;
            p_timestamp += 6;
            --v7;
          }

          while (v7);
        }

        [(CMIMotionSampleRingBufferV1 *)motionSampleRingbuffer addMotionDataToRingBuffer:self->_rawQuaternionArray withSampleCount:?];
      }
    }
  }

  return v4;
}

@end
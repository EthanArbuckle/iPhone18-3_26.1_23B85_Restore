@interface CMIVideoDeghostingV1
- (BOOL)_shouldRunVideoDeghosting:(id)deghosting;
- (CMIVideoDeghostingV1)initWithCommandQueue:(id)queue imageDimensions:(id)dimensions tuningParameters:(id)parameters;
- (float)_computeStrengthForConfidence:(float)confidence ghostRectangle:(CGRect)rectangle;
- (int)_extractAndCheckTuningParameters:(id)parameters;
- (int)detectAndTrack;
- (int)initGhostInformationLookAheadForSize:(int)size;
- (int)prewarm;
- (int)process;
- (int)purgeResources;
- (int)repair;
- (int)resetState;
- (void)_updateAWBAttenuationFactor:(id)factor;
- (void)_updateFilteredStrength:(BOOL)strength portType:(id)type;
- (void)dealloc;
- (void)setCameraInfoByPortType:(id)type;
@end

@implementation CMIVideoDeghostingV1

- (CMIVideoDeghostingV1)initWithCommandQueue:(id)queue imageDimensions:(id)dimensions tuningParameters:(id)parameters
{
  queueCopy = queue;
  parametersCopy = parameters;
  v41.receiver = self;
  v41.super_class = CMIVideoDeghostingV1;
  v10 = [(CMIVideoDeghostingV1 *)&v41 init];
  v11 = v10;
  if (!v10)
  {
    sub_1AD88();
LABEL_24:
    v39 = 0;
    goto LABEL_14;
  }

  if ([(CMIVideoDeghostingV1 *)v10 _extractAndCheckTuningParameters:parametersCopy])
  {
    sub_1A880();
    goto LABEL_24;
  }

  objc_storeStrong(&v11->_tuningParameters, parameters);
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [[FigMetalContext alloc] initWithbundle:v12 andOptionalCommandQueue:queueCopy];
  metalContext = v11->_metalContext;
  v11->_metalContext = v13;

  if (queueCopy)
  {
    commandQueue = queueCopy;
  }

  else
  {
    commandQueue = [(FigMetalContext *)v11->_metalContext commandQueue];
  }

  metalCommandQueue = v11->_metalCommandQueue;
  v11->_metalCommandQueue = commandQueue;

  v17 = [FigMetalAllocator alloc];
  device = [(FigMetalContext *)v11->_metalContext device];
  v19 = [v17 initWithDevice:device allocatorType:2];
  [(FigMetalContext *)v11->_metalContext setAllocator:v19];

  allocator = [(FigMetalContext *)v11->_metalContext allocator];

  if (!allocator)
  {
    sub_1ACDC(v12);
    goto LABEL_24;
  }

  v21 = objc_opt_new();
  if (!v21)
  {
    sub_1AC2C(v12);
    goto LABEL_24;
  }

  v22 = v21;
  [v21 setMemSize:llroundf(((dimensions.var0 * dimensions.var1) / 2986000.0) * 3932200.0)];
  [v22 setWireMemory:1];
  [v22 setLabel:@"FigMetalAllocator_VideoDeghosting"];
  allocator2 = [(FigMetalContext *)v11->_metalContext allocator];
  v24 = [allocator2 setupWithDescriptor:v22];

  if (v24)
  {
    sub_1A900(v24, v22, v12);
    goto LABEL_24;
  }

  *&v11->_repairEnabled = 257;
  v11->_luxLevelGatingEnabled = 1;
  v25 = [CMIVideoDeghostingDetectionAndTrackingV1 alloc];
  v26 = v11->_metalContext;
  v27 = [(NSDictionary *)v11->_tuningParameters objectForKeyedSubscript:@"DetectionAndTracking"];
  v28 = [(CMIVideoDeghostingDetectionAndTrackingV1 *)v25 initWithMetalContext:v26 imageDimensions:dimensions tuningParameters:v27];
  detectionAndTracking = v11->_detectionAndTracking;
  v11->_detectionAndTracking = v28;

  v30 = v11->_detectionAndTracking;
  if (!v30)
  {
    sub_1AB9C(v22, v12);
    goto LABEL_24;
  }

  [(CMIVideoDeghostingDetectionAndTracking *)v30 setMetalCommandQueue:queueCopy];
  v31 = [CMIVideoDeghostingRepairV1 alloc];
  v32 = v11->_metalContext;
  v33 = [(NSDictionary *)v11->_tuningParameters objectForKeyedSubscript:@"Repair"];
  v34 = [(CMIVideoDeghostingRepairV1 *)v31 initWithMetalContext:v32 imageDimensions:dimensions tuningParameters:v33];
  repair = v11->_repair;
  v11->_repair = v34;

  v36 = v11->_repair;
  if (!v36)
  {
    sub_1AB0C(v22, v12);
    goto LABEL_24;
  }

  setup = [(CMIVideoDeghostingRepair *)v36 setup];
  if (setup)
  {
    sub_1A9DC(setup, v22, v12);
    goto LABEL_24;
  }

  v11->_ghostInformationLookAheadPointer = &v11->_ghostInformationLookAhead;
  resetState = [(CMIVideoDeghostingV1 *)v11 resetState];
  if (resetState)
  {
    sub_1AA74(resetState, v22, v12);
    goto LABEL_24;
  }

  *&v11->_sensorBinningFactorVertical = 0x100000001;
  v39 = v11;

LABEL_14:
  return v39;
}

- (void)dealloc
{
  [(CMIVideoDeghostingV1 *)self finishProcessing];
  [(CMIVideoDeghostingV1 *)self purgeResources];
  v3.receiver = self;
  v3.super_class = CMIVideoDeghostingV1;
  [(CMIVideoDeghostingV1 *)&v3 dealloc];
}

- (int)purgeResources
{
  size = self->_ghostInformationLookAhead.size;
  info = self->_ghostInformationLookAhead.info;
  if (size >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(info + v5 + 8);
      *(info + v5 + 8) = 0;

      info = self->_ghostInformationLookAhead.info;
      *(info + v5) = 0;
      ++v6;
      v5 += 24;
    }

    while (v6 < self->_ghostInformationLookAhead.size);
    goto LABEL_6;
  }

  if (info)
  {
LABEL_6:
    self->_ghostInformationLookAhead.info = 0;
    free(info);
  }

  *&self->_ghostInformationLookAhead.size = 0;
  return 0;
}

- (int)detectAndTrack
{
  prevShouldRunVideoDeghosting = self->_prevShouldRunVideoDeghosting;
  detectionResult = self->_detectionResult;
  self->_detectionResult = 0;

  sampleBuffer = self->_sampleBuffer;
  if (!sampleBuffer)
  {
    sub_1AEEC(prevShouldRunVideoDeghosting, &v22);
    v6 = 0;
    v13 = v22;
LABEL_19:
    v14 = 2;
    goto LABEL_16;
  }

  v6 = CMGetAttachment(sampleBuffer, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
  if (!v6)
  {
    sub_1AE5C(prevShouldRunVideoDeghosting, &v21);
    v13 = v21;
    goto LABEL_19;
  }

  if ([(CMIVideoDeghostingV1 *)self _shouldRunVideoDeghosting:v6])
  {
    [(CMIVideoDeghostingDetectionAndTracking *)self->_detectionAndTracking setInputSampleBuffer:self->_sampleBuffer];
    if (gGMFigKTraceEnabled == 1)
    {
      kdebug_trace();
    }

    process = [(CMIVideoDeghostingDetectionAndTracking *)self->_detectionAndTracking process];
    detectionResult = [(CMIVideoDeghostingDetectionAndTracking *)self->_detectionAndTracking detectionResult];

    if (detectionResult)
    {
      detectionResult2 = [(CMIVideoDeghostingDetectionAndTracking *)self->_detectionAndTracking detectionResult];
      v10 = [detectionResult2 objectForKeyedSubscript:@"GhostsArray"];

      firstObject = [v10 firstObject];
      v12 = [firstObject objectForKeyedSubscript:@"GhostConfidence"];
      [v12 floatValue];
    }

    if (gGMFigKTraceEnabled == 1)
    {
      kdebug_trace();
    }

    if (process)
    {
      sub_1AE00(&v20);
      v14 = v20;
    }

    else
    {
      v15 = [NSDictionary alloc];
      detectionResult3 = [(CMIVideoDeghostingDetectionAndTracking *)self->_detectionAndTracking detectionResult];
      v17 = [v15 initWithDictionary:detectionResult3];
      v18 = self->_detectionResult;
      self->_detectionResult = v17;

      v14 = 0;
    }

    v13 = 1;
  }

  else
  {
    v13 = self->_prevShouldRunVideoDeghosting;
    if (v13)
    {
      [(CMIVideoDeghostingDetectionAndTracking *)self->_detectionAndTracking resetState];
      v13 = 0;
    }

    v14 = 0;
  }

LABEL_16:
  self->_prevShouldRunVideoDeghosting = v13;

  return v14;
}

- (int)repair
{
  repairInputSampleBuffer = self->_repairInputSampleBuffer;
  if (!repairInputSampleBuffer)
  {
    sub_1B050();
    v9 = 0;
    v7 = 0;
    v5 = 0;
LABEL_18:
    process = 2;
    goto LABEL_15;
  }

  v4 = CMGetAttachment(repairInputSampleBuffer, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
  v5 = v4;
  if (!v4)
  {
    sub_1AFD8();
    v9 = 0;
    v7 = 0;
    goto LABEL_18;
  }

  filteredStrength = self->_filteredStrength;
  v7 = [v4 objectForKeyedSubscript:kFigCaptureStreamMetadata_PortType];
  [(CMIVideoDeghostingV1 *)self _updateFilteredStrength:0 portType:v7];
  v8 = [(NSDictionary *)self->_repairInputDetectionResult objectForKeyedSubscript:@"GhostsArray"];
  v9 = v8;
  if (self->_repairEnabled && [v8 count])
  {
    if (gGMFigKTraceEnabled == 1)
    {
      kdebug_trace();
    }

    [(CMIVideoDeghostingV1 *)self _updateAWBAttenuationFactor:v5];
    firstObject = [v9 firstObject];
    v11 = [firstObject objectForKeyedSubscript:@"GhostRect"];

    [(CMIVideoDeghostingRepair *)self->_repair setInputSampleBuffer:self->_repairInputSampleBuffer];
    v12 = [[NSArray alloc] initWithObjects:{v11, 0}];
    [(CMIVideoDeghostingRepair *)self->_repair setDetectedGhostBoundingBoxes:v12];

    v14 = 52;
    if (self->_dynamicRepairEnabled)
    {
      v14 = 56;
    }

    *&v13 = self->_awbAttenuationFactor * *(&self->super.isa + v14);
    [(CMIVideoDeghostingRepair *)self->_repair setBlendingStrength:v13];
    process = [(CMIVideoDeghostingRepair *)self->_repair process];
    if (gGMFigKTraceEnabled)
    {
      commandQueue = [(FigMetalContext *)self->_metalContext commandQueue];
      commandBuffer = [commandQueue commandBuffer];

      [commandBuffer setLabel:@"KTRACE_END_MTL"];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_82EC;
      v21[3] = &unk_34850;
      memset(&v21[4], 0, 24);
      [commandBuffer addCompletedHandler:v21];
      [commandBuffer commit];
    }

    if (process)
    {
      sub_1AF7C(&v22);
      process = v22;
    }
  }

  else
  {
    process = 0;
  }

LABEL_15:
  v18 = [v5 objectForKeyedSubscript:kFigCaptureStreamMetadata_PortType];
  prevPortType = self->_prevPortType;
  self->_prevPortType = v18;

  return process;
}

- (int)prewarm
{
  if (self->_metalCommandQueue)
  {

    return 0;
  }

  else
  {
    sub_1B0C8(&v3);
    return v3;
  }
}

- (int)resetState
{
  detectionResult = self->_detectionResult;
  self->_detectionResult = 0;

  self->_filteredStrength = NAN;
  self->_prevShouldRunVideoDeghosting = 0;
  *&self->_ghostInformationLookAhead.count = 0x3F80000000000000;
  resetState = [(CMIVideoDeghostingDetectionAndTracking *)self->_detectionAndTracking resetState];
  if (resetState)
  {
    resetState2 = resetState;
    sub_1B178();
  }

  else
  {
    resetState2 = [(CMIVideoDeghostingRepair *)self->_repair resetState];
    if (resetState2)
    {
      sub_1B1F8();
    }
  }

  return resetState2;
}

- (int)initGhostInformationLookAheadForSize:(int)size
{
  info = self->_ghostInformationLookAhead.info;
  if (info)
  {
    self->_ghostInformationLookAhead.info = 0;
    free(info);
  }

  *&self->_ghostInformationLookAhead.size = 0;
  v6 = malloc_type_calloc(size, 0x18uLL, 0x10A00403F27F3CFuLL);
  self->_ghostInformationLookAhead.info = v6;
  if (v6)
  {
    result = 0;
    self->_ghostInformationLookAhead.size = size;
  }

  else
  {
    sub_1B278();
    return -12786;
  }

  return result;
}

- (int)_extractAndCheckTuningParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = parametersCopy;
  if (!parametersCopy)
  {
    sub_1B880(&v24);
    v6 = 0;
LABEL_24:
    v17 = 0;
    v11 = 0;
LABEL_29:
    v22 = v24;
    goto LABEL_15;
  }

  v6 = [parametersCopy objectForKeyedSubscript:@"LuxLevelThresholdOFF"];

  if (!v6)
  {
    sub_1B824(&v24);
    goto LABEL_24;
  }

  v6 = [v5 objectForKeyedSubscript:@"LuxLevelThresholdON"];

  if (!v6)
  {
    sub_1B7C8(&v24);
    goto LABEL_24;
  }

  v7 = [v5 objectForKeyedSubscript:@"LuxLevelThresholdOFF"];
  self->_luxLevelThresholdOFF = [v7 intValue];

  v8 = [v5 objectForKeyedSubscript:@"LuxLevelThresholdON"];
  self->_luxLevelThresholdON = [v8 intValue];

  v9 = [v5 objectForKeyedSubscript:@"Repair"];
  v6 = v9;
  if (!v9)
  {
    sub_1B76C(&v24);
    goto LABEL_24;
  }

  v10 = [v9 objectForKeyedSubscript:@"MaxStrength"];
  v11 = v10;
  if (!v10)
  {
    sub_1B710(&v24);
LABEL_28:
    v17 = 0;
    goto LABEL_29;
  }

  [v10 floatValue];
  self->_maxStrength = v12;
  if (v12 < 0.0)
  {
    sub_1B664(&v24);
    goto LABEL_28;
  }

  if (v12 > 1.0)
  {
    sub_1B5B8(&v24);
    goto LABEL_28;
  }

  v13 = [v6 objectForKeyedSubscript:@"ConfidenceToStrengthScalingFactor"];

  if (!v13)
  {
    sub_1B55C(&v24);
    goto LABEL_24;
  }

  [v13 floatValue];
  self->_confidenceToStrengthScalingFactor = v14;
  if (v14 <= 0.0)
  {
    sub_1B4B0(&v24);
    v17 = 0;
    v22 = v24;
    v11 = v13;
    goto LABEL_15;
  }

  v11 = [v6 objectForKeyedSubscript:@"StrengthMaxChangeDuration"];

  if (!v11)
  {
    sub_1B454(&v24);
    goto LABEL_28;
  }

  [v11 floatValue];
  self->_strengthMaxChangeDuration = v15;
  if (self->_confidenceToStrengthScalingFactor <= 0.0)
  {
    sub_1B3A8(&v24);
    goto LABEL_28;
  }

  self->_strengthMaxChangePerFrame = (self->_maxStrength / v15) / 30.0;
  v16 = [v6 objectForKeyedSubscript:@"AWBRepairStrengthAttenuationThresholds"];
  v17 = v16;
  if (!v16)
  {
    sub_1B34C(&v24);
    goto LABEL_29;
  }

  v18 = [v16 objectForKeyedSubscript:@"AWBBlueToRedGainMinAttenuationThreshold"];
  [v18 floatValue];
  self->_awbMinAttenuationThreshold = v19;

  v20 = [v17 objectForKeyedSubscript:@"AWBBlueToRedGainMaxAttenuationThreshold"];
  [v20 floatValue];
  self->_awbMaxAttenuationThreshold = v21;

  if (self->_awbMinAttenuationThreshold > self->_awbMaxAttenuationThreshold)
  {
    sub_1B2F0(&v24);
    goto LABEL_29;
  }

  v22 = 0;
LABEL_15:

  return v22;
}

- (BOOL)_shouldRunVideoDeghosting:(id)deghosting
{
  deghostingCopy = deghosting;
  prevShouldRunVideoDeghosting = self->_prevShouldRunVideoDeghosting;
  v6 = [deghostingCopy objectForKeyedSubscript:kFigCaptureStreamMetadata_PortType];
  v7 = [v6 isEqual:kFigCapturePortType_BackFacingCamera];

  if (!v7)
  {
    goto LABEL_5;
  }

  if (!self->_luxLevelGatingEnabled)
  {
    goto LABEL_8;
  }

  v8 = [deghostingCopy objectForKeyedSubscript:kFigCaptureStreamMetadata_LuxLevel];
  intValue = [v8 intValue];

  if (intValue < self->_luxLevelThresholdOFF && self->_prevShouldRunVideoDeghosting)
  {
LABEL_5:
    prevShouldRunVideoDeghosting = 0;
    goto LABEL_9;
  }

  if (intValue >= self->_luxLevelThresholdON && !self->_prevShouldRunVideoDeghosting)
  {
LABEL_8:
    prevShouldRunVideoDeghosting = 1;
  }

LABEL_9:

  return prevShouldRunVideoDeghosting;
}

- (float)_computeStrengthForConfidence:(float)confidence ghostRectangle:(CGRect)rectangle
{
  if (rectangle.size.width <= 64.0 && rectangle.size.height <= 64.0)
  {
    return fmaxf(fminf(self->_confidenceToStrengthScalingFactor * confidence, self->_maxStrength), 0.0);
  }

  else
  {
    return 0.0;
  }
}

- (void)_updateFilteredStrength:(BOOL)strength portType:(id)type
{
  strengthCopy = strength;
  if ([type isEqualToString:kFigCapturePortType_BackFacingCamera])
  {
    strengthCopy |= [(NSString *)self->_prevPortType isEqualToString:kFigCapturePortType_BackFacingSuperWideCamera];
  }

  if (self->_ghostInformationLookAhead.size >= 1)
  {
    if (self->_ghostInformationLookAhead.count <= 0)
    {
      sub_1B9CC();
    }

    else
    {
      info = self->_ghostInformationLookAhead.info;
      v7 = *info;
      if (*info)
      {
        v8 = [*(info + 1) objectForKeyedSubscript:?];
        firstObject = [v8 firstObject];
        v10 = [firstObject objectForKeyedSubscript:?];

        firstObject2 = [v8 firstObject];
        v12 = [firstObject2 objectForKeyedSubscript:@"GhostConfidence"];
        [v12 floatValue];
        v14 = v13;

        CMSampleBufferGetPresentationTimeStamp(&time, v7);
        Seconds = CMTimeGetSeconds(&time);
        memset(&time, 0, sizeof(time));
        CGRectMakeWithDictionaryRepresentation(v10, &time);
        LODWORD(v16) = v14;
        [(CMIVideoDeghostingV1 *)self _computeStrengthForConfidence:v16 ghostRectangle:time.origin.x, time.origin.y, time.size.width, time.size.height];
        v18 = v17;
        if (strengthCopy)
        {
          self->_filteredStrength = v17;
        }

        if (self->_ghostInformationLookAhead.count < 1)
        {
          v23 = 3.4028e38;
          if (strengthCopy)
          {
            goto LABEL_34;
          }
        }

        else
        {
          v47 = v10;
          v46 = strengthCopy;
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v22 = 0.0;
          v23 = 3.4028e38;
          while (1)
          {
            v24 = self->_ghostInformationLookAhead.info;
            if (*(v24 + v19 + 16) != 1)
            {
              v26 = v8;
              goto LABEL_27;
            }

            v25 = *(v24 + v19);
            if (!v25)
            {
              sub_1B8DC();
              v18 = 0.0;
              v10 = v47;
              goto LABEL_34;
            }

            v26 = [*(v24 + v19 + 8) objectForKeyedSubscript:@"GhostsArray"];

            firstObject3 = [v26 firstObject];
            v28 = [firstObject3 objectForKeyedSubscript:@"GhostRect"];

            firstObject4 = [v26 firstObject];
            v30 = [firstObject4 objectForKeyedSubscript:@"GhostConfidence"];
            [v30 floatValue];
            v32 = v31;

            CMSampleBufferGetPresentationTimeStamp(&v48, v25);
            v33 = CMTimeGetSeconds(&v48);
            memset(&v48, 0, sizeof(v48));
            CGRectMakeWithDictionaryRepresentation(v28, &v48);
            LODWORD(v34) = v32;
            [(CMIVideoDeghostingV1 *)self _computeStrengthForConfidence:v34 ghostRectangle:v48.origin.x, v48.origin.y, v48.size.width, v48.size.height];
            if (v33 - Seconds > self->_strengthMaxChangeDuration)
            {
              break;
            }

            v36 = v20 + 1;
            if (((v35 - self->_filteredStrength) / (v20 + 1)) < v23)
            {
              v22 = v35;
              v23 = (v35 - self->_filteredStrength) / (v20 + 1);
              v21 = v20;
            }

            v19 += 24;
            ++v20;
            v8 = v26;
            if (v36 >= self->_ghostInformationLookAhead.count)
            {
              goto LABEL_27;
            }
          }

LABEL_27:
          if (v23 < 0.0)
          {
            v10 = v47;
            if (v46)
            {
              v18 = v22 + (v21 * fminf(-v23, self->_strengthMaxChangePerFrame));
            }

            else
            {
              v18 = v23 + self->_filteredStrength;
            }

            v8 = v26;
            goto LABEL_34;
          }

          v8 = v26;
          v10 = v47;
          if (v46)
          {
            goto LABEL_34;
          }
        }

        v18 = self->_filteredStrength + fminf(v23, self->_strengthMaxChangePerFrame);
LABEL_34:

        goto LABEL_35;
      }

      sub_1B954();
    }

    v18 = 0.0;
    goto LABEL_35;
  }

  size = CGRectNull.size;
  time.origin = CGRectNull.origin;
  time.size = size;
  v38 = [(NSDictionary *)self->_detectionResult objectForKeyedSubscript:@"GhostsArray"];
  if ([v38 count])
  {
    firstObject5 = [v38 firstObject];
    v41 = [firstObject5 objectForKeyedSubscript:@"GhostRect"];
    CGRectMakeWithDictionaryRepresentation(v41, &time);

    v42 = [firstObject5 objectForKeyedSubscript:@"GhostConfidence"];
    [v42 floatValue];
    v44 = v43;
  }

  else
  {
    v44 = 0;
  }

  LODWORD(v39) = v44;
  [(CMIVideoDeghostingV1 *)self _computeStrengthForConfidence:v39 ghostRectangle:time.origin.x, time.origin.y, time.size.width, time.size.height];
  v18 = v45;
  if ((strengthCopy & 1) == 0)
  {
    v18 = (v45 * 0.05) + (self->_filteredStrength * 0.95);
  }

LABEL_35:
  self->_filteredStrength = fmaxf(fminf(v18, self->_maxStrength), 0.0);
}

- (void)_updateAWBAttenuationFactor:(id)factor
{
  factorCopy = factor;
  self->_awbAttenuationFactor = 1.0;
  v16 = factorCopy;
  if (factorCopy)
  {
    v5 = [factorCopy objectForKeyedSubscript:kFigCaptureStreamMetadata_AWBGrayWorldRGain];
    intValue = [v5 intValue];

    v7 = [v16 objectForKeyedSubscript:kFigCaptureStreamMetadata_AWBGrayWorldGGain];
    intValue2 = [v7 intValue];

    v9 = [v16 objectForKeyedSubscript:kFigCaptureStreamMetadata_AWBGrayWorldBGain];
    intValue3 = [v9 intValue];

    if (intValue < 1 || intValue2 < 1 || intValue3 <= 0)
    {
      sub_1BC24();
    }

    else if (intValue2 == 4096)
    {
      awbMinAttenuationThreshold = self->_awbMinAttenuationThreshold;
      awbMaxAttenuationThreshold = self->_awbMaxAttenuationThreshold;
      if (awbMaxAttenuationThreshold <= awbMinAttenuationThreshold)
      {
        sub_1BBAC();
      }

      else
      {
        v15 = 1.0 - ((fmaxf(awbMinAttenuationThreshold, fminf(awbMaxAttenuationThreshold, intValue3 / intValue)) - awbMinAttenuationThreshold) / (awbMaxAttenuationThreshold - awbMinAttenuationThreshold));
        if (v15 < 0.0)
        {
          sub_1BB34();
        }

        else if (v15 > 1.0)
        {
          sub_1BABC();
        }

        else
        {
          self->_awbAttenuationFactor = v15;
        }
      }
    }

    else
    {
      sub_1BA44();
    }
  }

  else
  {
    sub_1BC9C();
  }
}

- (void)setCameraInfoByPortType:(id)type
{
  objc_storeStrong(&self->_cameraInfoByPortType, type);
  typeCopy = type;
  [(CMIVideoDeghostingRepair *)self->_repair setCameraInfoByPortType:typeCopy];
  [(CMIVideoDeghostingDetectionAndTracking *)self->_detectionAndTracking setCameraInfoByPortType:typeCopy];
}

- (int)process
{
  result = [(CMIVideoDeghostingV1 *)self detectAndTrack];
  if (!result)
  {
    *&self->_repairInputSampleBuffer = *&self->_sampleBuffer;

    return [(CMIVideoDeghostingV1 *)self repair];
  }

  return result;
}

@end
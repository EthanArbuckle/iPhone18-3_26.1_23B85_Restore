@interface CMIVideoDeghostingV2
- (BOOL)_shouldResetRepair:(id)repair;
- (BOOL)_shouldRunRepair:(id)repair;
- (BOOL)_shouldRunVideoDeghosting:(id)deghosting;
- (CMIVideoDeghostingV2)initWithCommandQueue:(id)queue imageDimensions:(id)dimensions tuningParameters:(id)parameters;
- (int)_extractAndCheckTuningParameters:(id)parameters;
- (int)detectAndTrack;
- (int)initGhostInformationLookAheadForSize:(int)size;
- (int)process;
- (int)purgeResources;
- (int)repair;
- (int)resetState;
- (void)dealloc;
- (void)setCameraInfoByPortType:(id)type;
@end

@implementation CMIVideoDeghostingV2

- (CMIVideoDeghostingV2)initWithCommandQueue:(id)queue imageDimensions:(id)dimensions tuningParameters:(id)parameters
{
  queueCopy = queue;
  parametersCopy = parameters;
  v25.receiver = self;
  v25.super_class = CMIVideoDeghostingV2;
  v10 = [(CMIVideoDeghostingV2 *)&v25 init];
  v11 = v10;
  if (!v10)
  {
    sub_28184();
LABEL_18:
    v23 = 0;
    goto LABEL_11;
  }

  if ([(CMIVideoDeghostingV2 *)v10 _extractAndCheckTuningParameters:parametersCopy])
  {
    sub_27EEC();
    goto LABEL_18;
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

  *&v11->_repairEnabled = 257;
  v17 = [[VEVideoDeghostingDetectionAndTrackingV2 alloc] initWithMetalContext:v11->_metalContext imageDimensions:dimensions tuningParameters:v11->_tuningParameters];
  detectionAndTracking = v11->_detectionAndTracking;
  v11->_detectionAndTracking = v17;

  v19 = v11->_detectionAndTracking;
  if (!v19)
  {
    sub_28104(v12);
    goto LABEL_18;
  }

  [(VEVideoDeghostingDetectionAndTrackingV2 *)v19 setMetalCommandQueue:queueCopy];
  v20 = [[VEVideoDeghostingRepairV2 alloc] initWithMetalContext:v11->_metalContext imageDimensions:dimensions tuningParameters:v11->_tuningParameters];
  repair = v11->_repair;
  v11->_repair = v20;

  v22 = v11->_repair;
  if (!v22)
  {
    sub_28084(v12);
    goto LABEL_18;
  }

  if ([(VEVideoDeghostingRepairV2 *)v22 setup])
  {
    sub_27F6C();
    goto LABEL_18;
  }

  v11->_ghostInformationLookAheadPointer = &v11->_ghostInformationLookAhead;
  if ([(CMIVideoDeghostingV2 *)v11 resetState])
  {
    sub_27FF8();
    goto LABEL_18;
  }

  *&v11->_sensorBinningFactorVertical = 0x100000001;
  v23 = v11;

LABEL_11:
  return v23;
}

- (void)dealloc
{
  [(CMIVideoDeghostingV2 *)self finishProcessing];
  [(CMIVideoDeghostingV2 *)self purgeResources];
  v3.receiver = self;
  v3.super_class = CMIVideoDeghostingV2;
  [(CMIVideoDeghostingV2 *)&v3 dealloc];
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
  if (sampleBuffer)
  {
    v6 = CMGetAttachment(sampleBuffer, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
    if (v6)
    {
      if ([(CMIVideoDeghostingV2 *)self _shouldRunVideoDeghosting:v6])
      {
        [(VEVideoDeghostingDetectionAndTrackingV2 *)self->_detectionAndTracking setInputSampleBuffer:self->_sampleBuffer];
        [(VEVideoDeghostingDetectionAndTrackingV2 *)self->_detectionAndTracking setGhostInformationLookAheadPointer:&self->_ghostInformationLookAhead];
        if (gGMFigKTraceEnabled == 1)
        {
          kdebug_trace();
        }

        process = [(VEVideoDeghostingDetectionAndTrackingV2 *)self->_detectionAndTracking process];
        if (process)
        {
          v12 = process;
          sub_281FC();
        }

        else
        {
          if (gGMFigKTraceEnabled)
          {
            commandQueue = [(FigMetalContext *)self->_metalContext commandQueue];
            commandBuffer = [commandQueue commandBuffer];

            [commandBuffer setLabel:@"KTRACE_END_MTL"];
            v17[0] = _NSConcreteStackBlock;
            v17[1] = 3221225472;
            v17[2] = sub_1EFB8;
            v17[3] = &unk_40710;
            memset(&v17[4], 0, 24);
            [commandBuffer addCompletedHandler:v17];
            [commandBuffer commit];
          }

          detectionResult = [(VEVideoDeghostingDetectionAndTrackingV2 *)self->_detectionAndTracking detectionResult];
          v11 = self->_detectionResult;
          self->_detectionResult = detectionResult;

          v12 = 0;
        }

        v13 = 1;
      }

      else
      {
        v13 = self->_prevShouldRunVideoDeghosting;
        if (v13)
        {
          [(VEVideoDeghostingDetectionAndTrackingV2 *)self->_detectionAndTracking resetState];
          v14 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:{&__kCFBooleanTrue, @"PipeReset", 0}];
          v15 = self->_detectionResult;
          self->_detectionResult = v14;

          v13 = 0;
        }

        v12 = 0;
      }
    }

    else
    {
      sub_2827C();
      v13 = v18;
      v12 = -12783;
    }
  }

  else
  {
    sub_28308();
    v6 = 0;
    v13 = v18;
    v12 = 2;
  }

  self->_prevShouldRunVideoDeghosting = v13;

  return v12;
}

- (int)repair
{
  if (self->_repairInputSampleBuffer)
  {
    if ([(CMIVideoDeghostingV2 *)self _shouldRunRepair:self->_repairInputDetectionResult])
    {
      if (self->_repairEnabled)
      {
        if (gGMFigKTraceEnabled == 1)
        {
          kdebug_trace();
        }

        [(VEVideoDeghostingRepairV2 *)self->_repair setInputSampleBuffer:self->_repairInputSampleBuffer];
        [(VEVideoDeghostingRepairV2 *)self->_repair setGhostInformationLookAheadPointer:&self->_ghostInformationLookAhead];
        process = [(VEVideoDeghostingRepairV2 *)self->_repair process];
        if (gGMFigKTraceEnabled)
        {
          commandQueue = [(FigMetalContext *)self->_metalContext commandQueue];
          commandBuffer = [commandQueue commandBuffer];

          [commandBuffer setLabel:@"KTRACE_END_MTL"];
          v8[0] = _NSConcreteStackBlock;
          v8[1] = 3221225472;
          v8[2] = sub_1F214;
          v8[3] = &unk_40710;
          memset(&v8[4], 0, 24);
          [commandBuffer addCompletedHandler:v8];
          [commandBuffer commit];
        }

        if (process)
        {
          sub_28394();
        }
      }

      else
      {
        process = 0;
      }

      v6 = 1;
    }

    else
    {
      if ([(CMIVideoDeghostingV2 *)self _shouldResetRepair:self->_repairInputDetectionResult])
      {
        [(VEVideoDeghostingRepairV2 *)self->_repair resetState];
      }

      v6 = 0;
      process = 0;
    }
  }

  else
  {
    sub_28414(&self->_prevShouldRunRepair, &v9);
    v6 = v9;
    process = 2;
  }

  self->_prevShouldRunRepair = v6;
  return process;
}

- (int)resetState
{
  detectionResult = self->_detectionResult;
  self->_detectionResult = 0;

  *&self->_prevShouldRunVideoDeghosting = 0;
  self->_ghostInformationLookAhead.count = 0;
  resetState = [(VEVideoDeghostingDetectionAndTrackingV2 *)self->_detectionAndTracking resetState];
  if (resetState)
  {
    resetState2 = resetState;
    sub_284A0();
  }

  else
  {
    resetState2 = [(VEVideoDeghostingRepairV2 *)self->_repair resetState];
    if (resetState2)
    {
      sub_28520();
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
    sub_285A0();
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
    v13 = 740;
LABEL_11:
    sub_28618(v13, &v14);
    v10 = 0;
    v11 = v14;
    goto LABEL_6;
  }

  v6 = [parametersCopy objectForKeyedSubscript:@"LuxLevelThresholdOFF"];

  if (!v6)
  {
    v13 = 742;
    goto LABEL_11;
  }

  v7 = [v5 objectForKeyedSubscript:@"LuxLevelThresholdON"];

  if (!v7)
  {
    v13 = 743;
    goto LABEL_11;
  }

  v8 = [v5 objectForKeyedSubscript:@"LuxLevelThresholdOFF"];
  self->_luxLevelThresholdOFF = [v8 intValue];

  v9 = [v5 objectForKeyedSubscript:@"LuxLevelThresholdON"];
  self->_luxLevelThresholdON = [v9 intValue];

  v10 = [v5 objectForKeyedSubscript:@"Repair"];
  if (!v10)
  {
    v13 = 748;
    goto LABEL_11;
  }

  v11 = 0;
LABEL_6:

  return v11;
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

  if (intValue > self->_luxLevelThresholdOFF && self->_prevShouldRunVideoDeghosting)
  {
LABEL_5:
    prevShouldRunVideoDeghosting = 0;
    goto LABEL_9;
  }

  if (intValue <= self->_luxLevelThresholdON && !self->_prevShouldRunVideoDeghosting)
  {
LABEL_8:
    prevShouldRunVideoDeghosting = 1;
  }

LABEL_9:

  return prevShouldRunVideoDeghosting;
}

- (BOOL)_shouldRunRepair:(id)repair
{
  v3 = [repair objectForKeyedSubscript:@"RepairMeta"];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)_shouldResetRepair:(id)repair
{
  repairCopy = repair;
  v4 = [repairCopy objectForKeyedSubscript:@"PipeReset"];

  if (v4)
  {
    v5 = [repairCopy objectForKeyedSubscript:@"PipeReset"];
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)setCameraInfoByPortType:(id)type
{
  objc_storeStrong(&self->_cameraInfoByPortType, type);
  typeCopy = type;
  [(VEVideoDeghostingRepairV2 *)self->_repair setCameraInfoByPortType:typeCopy];
  [(VEVideoDeghostingDetectionAndTrackingV2 *)self->_detectionAndTracking setCameraInfoByPortType:typeCopy];
}

- (int)process
{
  result = [(CMIVideoDeghostingV2 *)self detectAndTrack];
  if (!result)
  {
    v4 = *&self->_sampleBuffer;
    *&self->_repairInputSampleBuffer = v4;
    if (v4 && CMSampleBufferGetImageBuffer(v4) && (CMGetAttachment(self->_repairInputSampleBuffer, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v6 = v5;
      if (self->_ghostInformationLookAhead.info)
      {
        repair = [(CMIVideoDeghostingV2 *)self repair];

        return repair;
      }

      fig_log_get_emitter();
      sub_4B30();
      FigDebugAssert3();
    }

    else
    {
      fig_log_get_emitter();
      sub_4B30();
      FigDebugAssert3();
    }

    return 2;
  }

  return result;
}

@end
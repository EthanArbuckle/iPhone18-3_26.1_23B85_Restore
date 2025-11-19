@interface CMIVideoDeghostingV3
- (BOOL)_shouldResetRepair:(id)a3;
- (BOOL)_shouldRunRepair:(id)a3;
- (BOOL)_shouldRunVideoDeghosting:(id)a3;
- (BOOL)doesSampleBufferHasMetadataAttachments:(opaqueCMSampleBuffer *)a3;
- (CMIVideoDeghostingStatistics)statistics;
- (CMIVideoDeghostingV3)initWithCommandQueue:(id)a3 imageDimensions:(id)a4 tuningParameters:(id)a5;
- (int)_extractAndCheckTuningParameters:(id)a3;
- (int)detectAndTrack;
- (int)initGhostInformationLookAheadForSize:(int)a3;
- (int)purgeResources;
- (int)repair;
- (int)resetState;
- (uint64_t)detectAndTrack;
- (uint64_t)repair;
- (void)dealloc;
- (void)setCameraInfoByPortType:(id)a3;
@end

@implementation CMIVideoDeghostingV3

- (CMIVideoDeghostingV3)initWithCommandQueue:(id)a3 imageDimensions:(id)a4 tuningParameters:(id)a5
{
  v8 = a3;
  v9 = a5;
  v26.receiver = self;
  v26.super_class = CMIVideoDeghostingV3;
  v10 = [(CMIVideoDeghostingV3 *)&v26 init];
  if (!v10)
  {
    [CMIVideoDeghostingV3 initWithCommandQueue:imageDimensions:tuningParameters:];
LABEL_18:
    v24 = 0;
    goto LABEL_11;
  }

  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if ([v10 _extractAndCheckTuningParameters:v9])
  {
    [CMIVideoDeghostingV3 initWithCommandQueue:imageDimensions:tuningParameters:];
    goto LABEL_18;
  }

  objc_storeStrong(v10 + 34, a5);
  *(v10 + 31) = a4;
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [[FigMetalContext alloc] initWithbundle:v11 andOptionalCommandQueue:v8];
  v13 = *(v10 + 3);
  *(v10 + 3) = v12;

  if (v8)
  {
    v14 = v8;
  }

  else
  {
    v14 = [*(v10 + 3) commandQueue];
  }

  v15 = *(v10 + 36);
  *(v10 + 36) = v14;

  *(v10 + 16) = 257;
  v10[34] = 1;
  v16 = [[VEVideoDeghostingDetectionAndTrackingV3 alloc] initWithMetalContext:*(v10 + 3) imageDimensions:a4 tuningParameters:*(v10 + 34)];
  v17 = *(v10 + 1);
  *(v10 + 1) = v16;

  v18 = *(v10 + 1);
  if (!v18)
  {
    [CMIVideoDeghostingV3 initWithCommandQueue:v11 imageDimensions:? tuningParameters:?];
    goto LABEL_18;
  }

  [v18 setMetalCommandQueue:v8];
  v19 = [[VEVideoDeghostingRepairV3 alloc] initWithMetalContext:*(v10 + 3) imageDimensions:a4 tuningParameters:*(v10 + 34)];
  v20 = *(v10 + 2);
  *(v10 + 2) = v19;

  v21 = *(v10 + 2);
  if (!v21)
  {
    [CMIVideoDeghostingV3 initWithCommandQueue:v11 imageDimensions:? tuningParameters:?];
    goto LABEL_18;
  }

  v22 = [v21 setup];
  if (v22)
  {
    [CMIVideoDeghostingV3 initWithCommandQueue:v22 imageDimensions:v11 tuningParameters:?];
    goto LABEL_18;
  }

  *(v10 + 41) = v10 + 48;
  v23 = [v10 resetState];
  if (v23)
  {
    [CMIVideoDeghostingV3 initWithCommandQueue:v23 imageDimensions:v11 tuningParameters:?];
    goto LABEL_18;
  }

  *(v10 + 260) = 0x100000001;
  v10[256] = FigGetCFPreferenceNumberWithDefault() != 0;
  v24 = v10;

LABEL_11:
  return v24;
}

- (void)dealloc
{
  [(CMIVideoDeghostingV3 *)self finishProcessing];
  [(CMIVideoDeghostingV3 *)self purgeResources];
  v3.receiver = self;
  v3.super_class = CMIVideoDeghostingV3;
  [(CMIVideoDeghostingV3 *)&v3 dealloc];
}

- (CMIVideoDeghostingStatistics)statistics
{
  lightweightDetector1FalseNegative = self[1].lightweightDetector1FalseNegative;
  retstr->lightweightDetector5FalseNegative = self[1].lightweightDetector1FalsePositive;
  v4 = *&self[1].opticalCenterEstConfidence;
  *&retstr->lightweightDetector4FalsePositive = *&self[1].opticalCenterOffsetX;
  *&retstr->lightweightDetector5TruePositive = v4;
  v5 = *&self->lightweightDetector5TruePositive;
  *&retstr->lightweightDetector1FalseNegative = *&self->lightweightDetector4FalsePositive;
  *&retstr->lightweightDetector2FalsePositive = v5;
  v6 = *&self[1].averageGhostCount;
  *&retstr->lightweightDetector3TruePositive = *&self->lightweightDetector5FalseNegative;
  *&retstr->lightweightDetector3FalseNegative = v6;
  v7 = *&self->lightweightDetector2FalsePositive;
  *&retstr->averageGhostArea = *&self->lightweightDetector1FalseNegative;
  *&retstr->opticalCenterOffsetMag = v7;
  v8 = *&self->lightweightDetector3FalseNegative;
  *&retstr->opticalCenterOffsetY = *&self->lightweightDetector3TruePositive;
  *&retstr->lightweightDetector1TruePositive = v8;
  if (lightweightDetector1FalseNegative != 0.0)
  {
    v9 = vdupq_lane_s64(COERCE__INT64(*&lightweightDetector1FalseNegative), 0);
    v10 = *&retstr->averageGhostArea;
    v11 = vdivq_f64(*&retstr->opticalCenterOffsetY, v9);
    *&retstr->opticalCenterOffsetMag = vdivq_f64(*&retstr->opticalCenterOffsetMag, v9);
    *&retstr->opticalCenterOffsetY = v11;
    *&retstr->averageGhostArea = vdivq_f64(v10, v9);
  }

  return self;
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
      if ([(CMIVideoDeghostingV3 *)self _shouldRunVideoDeghosting:v6]&& [(CMIVideoDeghostingV3 *)self doesSampleBufferHasMetadataAttachments:self->_sampleBuffer])
      {
        [(VEVideoDeghostingDetectionAndTrackingV3 *)self->_detectionAndTracking setInputSampleBuffer:self->_sampleBuffer];
        [(VEVideoDeghostingDetectionAndTrackingV3 *)self->_detectionAndTracking setGhostInformationLookAheadPointer:&self->_ghostInformationLookAhead];
        if (gGMFigKTraceEnabled == 1)
        {
          kdebug_trace();
        }

        v7 = [(VEVideoDeghostingDetectionAndTrackingV3 *)self->_detectionAndTracking process];
        if (v7)
        {
          v12 = v7;
          [CMIVideoDeghostingV3 detectAndTrack];
        }

        else
        {
          if (gGMFigKTraceEnabled)
          {
            v8 = [(FigMetalContext *)self->_metalContext commandQueue];
            v9 = [v8 commandBuffer];

            [v9 setLabel:@"KTRACE_END_MTL"];
            v20[0] = _NSConcreteStackBlock;
            v20[1] = 3221225472;
            v20[2] = __38__CMIVideoDeghostingV3_detectAndTrack__block_invoke;
            v20[3] = &__block_descriptor_56_e28_v16__0___MTLCommandBuffer__8l;
            memset(&v20[4], 0, 24);
            [v9 addCompletedHandler:v20];
            [v9 commit];
          }

          v10 = [(VEVideoDeghostingDetectionAndTrackingV3 *)self->_detectionAndTracking detectionResult];
          v11 = self->_detectionResult;
          self->_detectionResult = v10;

          v12 = 0;
        }

        v13 = 1;
      }

      else
      {
        if (self->_prevShouldRunVideoDeghosting)
        {
          [(VEVideoDeghostingDetectionAndTrackingV3 *)self->_detectionAndTracking resetState];
          v14 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:{&__kCFBooleanTrue, @"IsDetectionGated", 0}];
          [v14 setObject:&__kCFBooleanTrue forKeyedSubscript:@"PipeReset"];
          v15 = [[NSDictionary alloc] initWithDictionary:v14];
          v16 = self->_detectionResult;
          self->_detectionResult = v15;
        }

        v13 = 0;
        v12 = 0;
      }
    }

    else
    {
      [(CMIVideoDeghostingV3 *)prevShouldRunVideoDeghosting detectAndTrack];
      v13 = v21;
      v12 = -12783;
    }
  }

  else
  {
    [(CMIVideoDeghostingV3 *)prevShouldRunVideoDeghosting detectAndTrack];
    v6 = 0;
    v13 = v21;
    v12 = 2;
  }

  self->_prevShouldRunVideoDeghosting = v13;
  if (self->_detectionResult)
  {
    self->_prevDetectionGated = 0;
  }

  else
  {
    v17 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:{&__kCFBooleanTrue, @"PipeReset", 0}];
    v18 = self->_detectionResult;
    self->_detectionResult = v17;

    if (!self->_prevDetectionGated)
    {
      [(VEVideoDeghostingDetectionAndTrackingV3 *)self->_detectionAndTracking resetState];
    }

    self->_prevDetectionGated = 1;
  }

  return v12;
}

void __38__CMIVideoDeghostingV3_detectAndTrack__block_invoke(void *a1, void *a2)
{
  v6 = a2;
  if ([v6 status] == &dword_4)
  {
    [v6 GPUEndTime];
    [v6 GPUStartTime];
  }

  else
  {
    [v6 status];
  }

  if (gGMFigKTraceEnabled == 1)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    kdebug_trace();
  }
}

- (int)repair
{
  if (self->_bypassRepair)
  {
    LODWORD(v2) = 0;
  }

  else
  {
    if (self->_repairInputSampleBuffer)
    {
      if ([(CMIVideoDeghostingV3 *)self _shouldRunRepair:self->_repairInputDetectionResult])
      {
        if (self->_repairEnabled)
        {
          if (gGMFigKTraceEnabled == 1)
          {
            kdebug_trace();
          }

          [(VEVideoDeghostingRepairV3 *)self->_repair setInputSampleBuffer:self->_repairInputSampleBuffer];
          [(VEVideoDeghostingRepairV3 *)self->_repair setGhostInformationLookAheadPointer:&self->_ghostInformationLookAhead];
          LODWORD(v2) = [(VEVideoDeghostingRepairV3 *)self->_repair process];
          if (gGMFigKTraceEnabled)
          {
            v4 = [(FigMetalContext *)self->_metalContext commandQueue];
            v5 = [v4 commandBuffer];

            [v5 setLabel:@"KTRACE_END_MTL"];
            v49[0] = _NSConcreteStackBlock;
            v49[1] = 3221225472;
            v49[2] = __30__CMIVideoDeghostingV3_repair__block_invoke;
            v49[3] = &__block_descriptor_56_e28_v16__0___MTLCommandBuffer__8l;
            memset(&v49[4], 0, 24);
            [v5 addCompletedHandler:v49];
            [v5 commit];
          }

          if (v2)
          {
            [CMIVideoDeghostingV3 repair];
          }

          else
          {
            v2 = [(NSDictionary *)self->_repairInputDetectionResult objectForKeyedSubscript:@"RepairMeta"];

            if (v2)
            {
              v6 = [(NSDictionary *)self->_repairInputDetectionResult objectForKeyedSubscript:@"AverageGhostCount"];
              [v6 floatValue];
              self->_accumulatedStatistics.averageGhostCount = self->_accumulatedStatistics.averageGhostCount + v7;

              v8 = [(NSDictionary *)self->_repairInputDetectionResult objectForKeyedSubscript:@"OpticalCenterOffsetX"];
              [v8 floatValue];
              self->_accumulatedStatistics.opticalCenterOffsetX = self->_accumulatedStatistics.opticalCenterOffsetX + v9;

              v10 = [(NSDictionary *)self->_repairInputDetectionResult objectForKeyedSubscript:@"OpticalCenterOffsetY"];
              [v10 floatValue];
              self->_accumulatedStatistics.opticalCenterOffsetY = self->_accumulatedStatistics.opticalCenterOffsetY + v11;

              v12 = [(NSDictionary *)self->_repairInputDetectionResult objectForKeyedSubscript:@"OpticalCenterEstConfidence "];
              [v12 floatValue];
              self->_accumulatedStatistics.opticalCenterEstConfidence = self->_accumulatedStatistics.opticalCenterEstConfidence + v13;

              v14 = [(NSDictionary *)self->_repairInputDetectionResult objectForKeyedSubscript:@"AverageGhostArea"];
              [v14 floatValue];
              self->_accumulatedStatistics.averageGhostArea = self->_accumulatedStatistics.averageGhostArea + v15;

              v16 = [(NSDictionary *)self->_repairInputDetectionResult objectForKeyedSubscript:@"OpticalCenterOffsetMag"];
              [v16 floatValue];
              self->_accumulatedStatistics.opticalCenterOffsetMag = self->_accumulatedStatistics.opticalCenterOffsetMag + v17;

              v18 = [(NSDictionary *)self->_repairInputDetectionResult objectForKeyedSubscript:@"LightweightDetector1TruePositive"];
              [v18 floatValue];
              self->_accumulatedStatistics.lightweightDetector1TruePositive = self->_accumulatedStatistics.lightweightDetector1TruePositive + v19;

              v20 = [(NSDictionary *)self->_repairInputDetectionResult objectForKeyedSubscript:@"LightweightDetector1FalsePositive"];
              [v20 floatValue];
              self->_accumulatedStatistics.lightweightDetector1FalsePositive = self->_accumulatedStatistics.lightweightDetector1FalsePositive + v21;

              v22 = [(NSDictionary *)self->_repairInputDetectionResult objectForKeyedSubscript:@"LightweightDetector1FalseNegative"];
              [v22 floatValue];
              self->_accumulatedStatistics.lightweightDetector1FalseNegative = self->_accumulatedStatistics.lightweightDetector1FalseNegative + v23;

              v24 = [(NSDictionary *)self->_repairInputDetectionResult objectForKeyedSubscript:@"LightweightDetector2TruePositive"];
              [v24 floatValue];
              self->_accumulatedStatistics.lightweightDetector2TruePositive = self->_accumulatedStatistics.lightweightDetector2TruePositive + v25;

              v26 = [(NSDictionary *)self->_repairInputDetectionResult objectForKeyedSubscript:@"LightweightDetector2FalsePositive"];
              [v26 floatValue];
              self->_accumulatedStatistics.lightweightDetector2FalsePositive = self->_accumulatedStatistics.lightweightDetector2FalsePositive + v27;

              v28 = [(NSDictionary *)self->_repairInputDetectionResult objectForKeyedSubscript:@"LightweightDetector2FalseNegative"];
              [v28 floatValue];
              self->_accumulatedStatistics.lightweightDetector2FalseNegative = self->_accumulatedStatistics.lightweightDetector2FalseNegative + v29;

              v30 = [(NSDictionary *)self->_repairInputDetectionResult objectForKeyedSubscript:@"LightweightDetector3TruePositive"];
              [v30 floatValue];
              self->_accumulatedStatistics.lightweightDetector3TruePositive = self->_accumulatedStatistics.lightweightDetector3TruePositive + v31;

              v32 = [(NSDictionary *)self->_repairInputDetectionResult objectForKeyedSubscript:@"LightweightDetector3FalsePositive"];
              [v32 floatValue];
              self->_accumulatedStatistics.lightweightDetector3FalsePositive = self->_accumulatedStatistics.lightweightDetector3FalsePositive + v33;

              v34 = [(NSDictionary *)self->_repairInputDetectionResult objectForKeyedSubscript:@"LightweightDetector3FalseNegative"];
              [v34 floatValue];
              self->_accumulatedStatistics.lightweightDetector3FalseNegative = self->_accumulatedStatistics.lightweightDetector3FalseNegative + v35;

              v36 = [(NSDictionary *)self->_repairInputDetectionResult objectForKeyedSubscript:@"LightweightDetector4TruePositive"];
              [v36 floatValue];
              self->_accumulatedStatistics.lightweightDetector4TruePositive = self->_accumulatedStatistics.lightweightDetector4TruePositive + v37;

              v38 = [(NSDictionary *)self->_repairInputDetectionResult objectForKeyedSubscript:@"LightweightDetector4FalsePositive"];
              [v38 floatValue];
              self->_accumulatedStatistics.lightweightDetector4FalsePositive = self->_accumulatedStatistics.lightweightDetector4FalsePositive + v39;

              v40 = [(NSDictionary *)self->_repairInputDetectionResult objectForKeyedSubscript:@"LightweightDetector4FalseNegative"];
              [v40 floatValue];
              self->_accumulatedStatistics.lightweightDetector4FalseNegative = self->_accumulatedStatistics.lightweightDetector4FalseNegative + v41;

              v42 = [(NSDictionary *)self->_repairInputDetectionResult objectForKeyedSubscript:@"LightweightDetector5TruePositive"];
              [v42 floatValue];
              self->_accumulatedStatistics.lightweightDetector5TruePositive = self->_accumulatedStatistics.lightweightDetector5TruePositive + v43;

              v44 = [(NSDictionary *)self->_repairInputDetectionResult objectForKeyedSubscript:@"LightweightDetector5FalsePositive"];
              [v44 floatValue];
              self->_accumulatedStatistics.lightweightDetector5FalsePositive = self->_accumulatedStatistics.lightweightDetector5FalsePositive + v45;

              v2 = [(NSDictionary *)self->_repairInputDetectionResult objectForKeyedSubscript:@"LightweightDetector5FalseNegative"];
              [v2 floatValue];
              self->_accumulatedStatistics.lightweightDetector5FalseNegative = self->_accumulatedStatistics.lightweightDetector5FalseNegative + v46;

              LODWORD(v2) = 0;
              ++self->_repairedFrameCount;
            }
          }
        }

        else
        {
          LODWORD(v2) = 0;
        }

        v47 = 1;
      }

      else
      {
        if ([(CMIVideoDeghostingV3 *)self _shouldResetRepair:self->_repairInputDetectionResult])
        {
          [(VEVideoDeghostingRepairV3 *)self->_repair resetState];
        }

        v47 = 0;
        LODWORD(v2) = 0;
      }
    }

    else
    {
      [(CMIVideoDeghostingV3 *)&self->_prevShouldRunRepair repair];
      v47 = v50;
      LODWORD(v2) = 2;
    }

    self->_prevShouldRunRepair = v47;
  }

  return v2;
}

void __30__CMIVideoDeghostingV3_repair__block_invoke(void *a1, void *a2)
{
  v6 = a2;
  if ([v6 status] == &dword_4)
  {
    [v6 GPUEndTime];
    [v6 GPUStartTime];
  }

  else
  {
    [v6 status];
  }

  if (gGMFigKTraceEnabled == 1)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    kdebug_trace();
  }
}

- (int)resetState
{
  detectionResult = self->_detectionResult;
  self->_detectionResult = 0;

  *&self->_prevShouldRunVideoDeghosting = 0;
  self->_ghostInformationLookAhead.count = 0;
  self->_prevShouldRunRepair = 0;
  self->_repairedFrameCount = 0;
  self->_detectionNotGatedFrameCount = 0;
  self->_accumulatedStatistics.lightweightDetector5FalseNegative = 0.0;
  *&self->_accumulatedStatistics.averageGhostArea = 0u;
  *&self->_accumulatedStatistics.opticalCenterOffsetMag = 0u;
  *&self->_accumulatedStatistics.opticalCenterOffsetY = 0u;
  *&self->_accumulatedStatistics.lightweightDetector1TruePositive = 0u;
  *&self->_accumulatedStatistics.lightweightDetector1FalseNegative = 0u;
  *&self->_accumulatedStatistics.lightweightDetector2FalsePositive = 0u;
  *&self->_accumulatedStatistics.lightweightDetector3TruePositive = 0u;
  *&self->_accumulatedStatistics.lightweightDetector3FalseNegative = 0u;
  *&self->_accumulatedStatistics.lightweightDetector4FalsePositive = 0u;
  *&self->_accumulatedStatistics.lightweightDetector5TruePositive = 0u;
  v4 = [(VEVideoDeghostingDetectionAndTrackingV3 *)self->_detectionAndTracking resetState];
  if (v4)
  {
    v5 = v4;
    [CMIVideoDeghostingV3 resetState];
  }

  else
  {
    v5 = [(VEVideoDeghostingRepairV3 *)self->_repair resetState];
    if (v5)
    {
      [CMIVideoDeghostingV3 resetState];
    }
  }

  return v5;
}

- (int)initGhostInformationLookAheadForSize:(int)a3
{
  info = self->_ghostInformationLookAhead.info;
  if (info)
  {
    self->_ghostInformationLookAhead.info = 0;
    free(info);
  }

  *&self->_ghostInformationLookAhead.size = 0;
  v6 = malloc_type_calloc(a3, 0x18uLL, 0x10A00403F27F3CFuLL);
  self->_ghostInformationLookAhead.info = v6;
  if (v6)
  {
    result = 0;
    self->_ghostInformationLookAhead.size = a3;
  }

  else
  {
    [CMIVideoDeghostingV3 initGhostInformationLookAheadForSize:];
    return -12786;
  }

  return result;
}

- (int)_extractAndCheckTuningParameters:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v13 = 903;
LABEL_11:
    [(CMIVideoDeghostingV3 *)v13 _extractAndCheckTuningParameters:?];
    v10 = 0;
    v11 = v14;
    goto LABEL_6;
  }

  v6 = [v4 objectForKeyedSubscript:@"LuxLevelThresholdOFF"];

  if (!v6)
  {
    v13 = 905;
    goto LABEL_11;
  }

  v7 = [v5 objectForKeyedSubscript:@"LuxLevelThresholdON"];

  if (!v7)
  {
    v13 = 906;
    goto LABEL_11;
  }

  v8 = [v5 objectForKeyedSubscript:@"LuxLevelThresholdOFF"];
  self->_luxLevelThresholdOFF = [v8 intValue];

  v9 = [v5 objectForKeyedSubscript:@"LuxLevelThresholdON"];
  self->_luxLevelThresholdON = [v9 intValue];

  v10 = [v5 objectForKeyedSubscript:@"Repair"];
  if (!v10)
  {
    v13 = 911;
    goto LABEL_11;
  }

  v11 = 0;
LABEL_6:

  return v11;
}

- (BOOL)doesSampleBufferHasMetadataAttachments:(opaqueCMSampleBuffer *)a3
{
  v3 = CMGetAttachment(a3, kFigSampleBufferAttachmentKey_AttachedMedia, 0);
  if (v3)
  {
    v4 = v3;
    if (CFDictionaryGetValue(v3, kFigCaptureSampleBufferAttachedMediaKey_LightSourceMask))
    {
      if (CFDictionaryGetValue(v4, kFigCaptureSampleBufferAttachedMediaKey_KeypointDescriptorData))
      {
        return 1;
      }

      [CMIVideoDeghostingV3 doesSampleBufferHasMetadataAttachments:];
    }

    else
    {
      [CMIVideoDeghostingV3 doesSampleBufferHasMetadataAttachments:];
    }
  }

  else
  {
    [CMIVideoDeghostingV3 doesSampleBufferHasMetadataAttachments:];
  }

  return 0;
}

- (BOOL)_shouldRunVideoDeghosting:(id)a3
{
  v4 = a3;
  prevShouldRunVideoDeghosting = self->_prevShouldRunVideoDeghosting;
  v6 = [v4 objectForKeyedSubscript:kFigCaptureStreamMetadata_PortType];
  v7 = [v6 isEqual:kFigCapturePortType_BackFacingCamera];

  if ((v7 & 1) == 0)
  {
    if (self->_prevShouldRunVideoDeghosting && dword_52408 != 0)
    {
      v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_17;
  }

  if (!self->_luxLevelGatingEnabled)
  {
    goto LABEL_16;
  }

  v8 = [v4 objectForKeyedSubscript:kFigCaptureStreamMetadata_LuxLevel];
  v9 = [v8 intValue];

  if (v9 > self->_luxLevelThresholdOFF && self->_prevShouldRunVideoDeghosting)
  {
    if (dword_52408)
    {
      v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

LABEL_17:
    prevShouldRunVideoDeghosting = 0;
    goto LABEL_18;
  }

  if (v9 <= self->_luxLevelThresholdON && !self->_prevShouldRunVideoDeghosting)
  {
    if (dword_52408)
    {
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      prevShouldRunVideoDeghosting = 1;
      fig_log_call_emit_and_clean_up_after_send_and_compose();

      goto LABEL_18;
    }

LABEL_16:
    prevShouldRunVideoDeghosting = 1;
  }

LABEL_18:

  return prevShouldRunVideoDeghosting;
}

- (BOOL)_shouldRunRepair:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"RepairMeta"];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)_shouldResetRepair:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"PipeReset"];

  if (v4)
  {
    v5 = [v3 objectForKeyedSubscript:@"PipeReset"];
    v6 = [v5 BOOLValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setCameraInfoByPortType:(id)a3
{
  objc_storeStrong(&self->_cameraInfoByPortType, a3);
  v5 = a3;
  [(VEVideoDeghostingRepairV3 *)self->_repair setCameraInfoByPortType:v5];
  [(VEVideoDeghostingDetectionAndTrackingV3 *)self->_detectionAndTracking setCameraInfoByPortType:v5];
}

- (void)initWithCommandQueue:(uint64_t)a1 imageDimensions:(void *)a2 tuningParameters:.cold.2(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_1_1();
  FigDebugAssert3();
}

- (void)initWithCommandQueue:(uint64_t)a1 imageDimensions:(void *)a2 tuningParameters:.cold.3(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_1_1();
  FigDebugAssert3();
}

- (void)initWithCommandQueue:(void *)a1 imageDimensions:tuningParameters:.cold.4(void *a1)
{
  OUTLINED_FUNCTION_0_0();
  FigDebugAssert3();
}

- (void)initWithCommandQueue:(void *)a1 imageDimensions:tuningParameters:.cold.5(void *a1)
{
  OUTLINED_FUNCTION_0_0();
  FigDebugAssert3();
}

- (uint64_t)detectAndTrack
{
  OUTLINED_FUNCTION_0_0();
  result = FigDebugAssert3();
  *a2 = a1 & 1;
  return result;
}

- (uint64_t)repair
{
  v3 = *a1;
  OUTLINED_FUNCTION_0_0();
  result = FigDebugAssert3();
  *a2 = v3;
  return result;
}

- (uint64_t)_extractAndCheckTuningParameters:(uint64_t)a1 .cold.1(uint64_t a1, _DWORD *a2)
{
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

@end
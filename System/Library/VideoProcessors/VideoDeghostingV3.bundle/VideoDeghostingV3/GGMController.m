@interface GGMController
- ($43C834F0531B50B92CAF4577069D180C)setDefaultControllerConfig;
- (GGMController)initWithConfig:(id *)a3 metalContext:(id)a4 imageDimensions:(id)a5 tuningParameters:(id)a6 forDetection:(BOOL)a7;
- (id)buildInputParamsToRepairFromMetaInfo:(id)a3 andDetectedResults:(id)a4 lookaheadDetectedResults:(id)a5;
- (id)createInputParamsToRepairFromMetaInfo:(id)a3 metaContainerBuffer:(id)a4 futureMetaContainerBuffers:(id)a5 metaContainerBuffer_HW:(id)a6 futureMetaContainerBuffers_HW:(id)a7;
- (id)detectGreenGhostFor:(__CVBuffer *)a3 metaData:(id)a4 frameNum:(int64_t)a5 timeStamp:(id *)a6 keyPoint:(__CVBuffer *)a7 lightSourceMask:(__CVBuffer *)a8 futureFrames:(id *)a9;
- (int64_t)processDetection;
- (int64_t)repairGreenGhostFor:(__CVBuffer *)a3 inputParamsToRepair:(id)a4 parsedMetaData:(id)a5 lookaheadDetResult:(id)a6 mitigated:(__CVBuffer *)a7;
- (uint64_t)processDetection;
- (void)resetIntermediateVariables;
- (void)resetState;
- (void)setConfigureFromDefaultsWrite:(id *)a3;
- (void)setIspTimeStamp:(id *)a3;
- (void)updateConfig:(id *)a3 withConfigureDict:(id)a4;
@end

@implementation GGMController

- (void)updateConfig:(id *)a3 withConfigureDict:(id)a4
{
  v5 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    v12 = @"TuningParameters";
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:{v10, v12}];
        if ([v10 isEqualToString:@"LightMode"])
        {
          a3->var0 = [v11 intValue];
        }

        else if ([v10 isEqualToString:@"HomographyType"])
        {
          a3->var1 = [v11 intValue];
        }

        else if ([v10 isEqualToString:@"DetectionType"])
        {
          a3->var2 = [v11 intValue];
        }

        else if ([v10 isEqualToString:@"TemporalRepairMode"])
        {
          a3->var3 = [v11 intValue];
        }

        else if ([v10 isEqualToString:@"RepairFrameDelay"])
        {
          a3->var4 = [v11 intValue];
        }

        else if ([v10 isEqualToString:@"DrawBoundingBox"])
        {
          a3->var5 = [v11 BOOLValue];
        }

        else if ([v10 isEqualToString:@"NoMetaData"])
        {
          a3->var6 = [v11 BOOLValue];
        }

        else if ([v10 isEqualToString:@"BackgroundDetection"])
        {
          a3->var7 = [v11 BOOLValue];
        }

        else
        {
          [v10 isEqualToString:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v7);
  }
}

- (GGMController)initWithConfig:(id *)a3 metalContext:(id)a4 imageDimensions:(id)a5 tuningParameters:(id)a6 forDetection:(BOOL)a7
{
  v7 = a7;
  v13 = a4;
  v14 = a6;
  if (!v13)
  {
    [GGMController initWithConfig:? metalContext:? imageDimensions:? tuningParameters:? forDetection:?];
    goto LABEL_13;
  }

  v28.receiver = self;
  v28.super_class = GGMController;
  v15 = [(GGMController *)&v28 init];
  v16 = v15;
  if (v15)
  {
    v17 = *&a3->var0.var0;
    v18 = *&a3->var0.var7;
    v19 = *&a3->var1.var4;
    *&v15->_configure.externalCfg.lightMode = *&a3->var1.var0;
    *&v15->_configure.externalCfg.frameDelay = v19;
    *&v15->_configure.internalCfg.clipThreshold = v17;
    *&v15->_configure.internalCfg.enableColorMask = v18;
    objc_storeStrong(&v15->_metalContext, a4);
    objc_storeStrong(&v16->_tuningParamDict, a6);
    v20 = [v14 objectForKeyedSubscript:@"hwMode"];
    v16->_hwMode = [v20 BOOLValue];

    if (v7)
    {
      v21 = [[VideoDeghostingDetectionV3 alloc] initWithMetalContext:v16->_metalContext config:a3 tuningParamDict:v16->_tuningParamDict imageDimensions:a5];
      GGDetector = v16->_GGDetector;
      v16->_GGDetector = v21;

      if (!v16->_GGDetector)
      {
        [GGMController initWithConfig:v16 metalContext:? imageDimensions:? tuningParameters:? forDetection:?];
LABEL_13:
        v16 = 0;
        goto LABEL_9;
      }
    }

    else
    {
      v23 = [[VideoMitigation alloc] initWithConfig:a3 metalContext:v16->_metalContext imageDimensions:a5 tuningParameters:v16->_tuningParamDict];
      GGMitigator = v16->_GGMitigator;
      v16->_GGMitigator = v23;

      if (!v16->_GGMitigator)
      {
        [GGMController initWithConfig:v16 metalContext:? imageDimensions:? tuningParameters:? forDetection:?];
        goto LABEL_13;
      }

      v25 = objc_alloc_init(RepairWeightsProcessor);
      repairWeightsProcessor = v16->_repairWeightsProcessor;
      v16->_repairWeightsProcessor = v25;
    }

    [(GGMController *)v16 resetIntermediateVariables];
  }

  else
  {
    [GGMController initWithConfig:metalContext:imageDimensions:tuningParameters:forDetection:];
  }

LABEL_9:

  return v16;
}

- (void)resetState
{
  self->_processedPixelBuffer = 0;
  self->_processedFrameInDetection = 0;
  self->_lookaheadFrameProcessedInFinish = 0;
  [(VideoDeghostingDetectionV3 *)self->_GGDetector reset];
  [(VideoMitigation *)self->_GGMitigator resetState];
  [(RepairWeightsProcessor *)self->_repairWeightsProcessor reset];

  [(GGMController *)self resetIntermediateVariables];
}

- (void)resetIntermediateVariables
{
  v3 = +[NSMutableArray array];
  metaInfoQueue = self->_metaInfoQueue;
  self->_metaInfoQueue = v3;

  v5 = objc_alloc_init(RepairWeightsProcessor);
  repairWeightsProcessor = self->_repairWeightsProcessor;
  self->_repairWeightsProcessor = v5;

  _objc_release_x1();
}

- ($43C834F0531B50B92CAF4577069D180C)setDefaultControllerConfig
{
  *&retstr->var1.var0 = 0u;
  *&retstr->var1.var4 = 0u;
  *&retstr->var0.var0 = 0u;
  *&retstr->var0.var7 = 0u;
  setDefaultConfig(retstr);
  return result;
}

- (void)setConfigureFromDefaultsWrite:(id *)a3
{
  a3->var1.var11 = FigGetCFPreferenceNumberWithDefault() == 0;
  var12 = a3->var1.var12;
  a3->var1.var12 = FigGetCFPreferenceNumberWithDefault();
  a3->var1.var13 = FigGetCFPreferenceNumberWithDefault();
  a3->var1.var14 = FigGetCFPreferenceNumberWithDefault();
}

- (int64_t)processDetection
{
  if (!self->_inputBuffer)
  {
    [GGMController processDetection];
LABEL_9:
    result = 5;
    goto LABEL_6;
  }

  if (!self->_metaDictionary)
  {
    [GGMController processDetection];
    goto LABEL_9;
  }

  processedFrameInDetection = self->_processedFrameInDetection;
  lightSourceMask = self->_lightSourceMask;
  keyPointsList = self->_keyPointsList;
  futureFramesToDetectionAndRepair = self->_futureFramesToDetectionAndRepair;
  ispTimeStamp = self->_ispTimeStamp;
  v7 = [GGMController detectGreenGhostFor:"detectGreenGhostFor:metaData:frameNum:timeStamp:keyPoint:lightSourceMask:futureFrames:" metaData:futureFramesToDetectionAndRepair frameNum:? timeStamp:? keyPoint:? lightSourceMask:? futureFrames:?];
  detectedGreenGhostInfo = self->_detectedGreenGhostInfo;
  self->_detectedGreenGhostInfo = v7;

  if (self->_detectedGreenGhostInfo)
  {
    result = 0;
  }

  else
  {
    result = 3;
  }

LABEL_6:
  ++self->_processedFrameInDetection;
  return result;
}

- (id)detectGreenGhostFor:(__CVBuffer *)a3 metaData:(id)a4 frameNum:(int64_t)a5 timeStamp:(id *)a6 keyPoint:(__CVBuffer *)a7 lightSourceMask:(__CVBuffer *)a8 futureFrames:(id *)a9
{
  v14 = a4;
  CVPixelBufferRetain(a3);
  if (a7)
  {
    CFRetain(a7);
  }

  CVPixelBufferRetain(a8);
  v15 = objc_autoreleasePoolPush();
  GGDetector = self->_GGDetector;
  v19 = *&a6->var0;
  var3 = a6->var3;
  v17 = [(VideoDeghostingDetectionV3 *)GGDetector process:a3 metaData:v14 ispTimeStamp:&v19 keypoints:a7 lightSourceMask:a8 futureFrames:a9];
  objc_autoreleasePoolPop(v15);
  CVPixelBufferRelease(a3);
  if (a7)
  {
    CFRelease(a7);
  }

  CVPixelBufferRelease(a8);

  return v17;
}

- (int64_t)repairGreenGhostFor:(__CVBuffer *)a3 inputParamsToRepair:(id)a4 parsedMetaData:(id)a5 lookaheadDetResult:(id)a6 mitigated:(__CVBuffer *)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (!a3)
  {
    [GGMController repairGreenGhostFor:inputParamsToRepair:parsedMetaData:lookaheadDetResult:mitigated:];
LABEL_13:
    v18 = 5;
    goto LABEL_7;
  }

  if (!v12)
  {
    [GGMController repairGreenGhostFor:inputParamsToRepair:parsedMetaData:lookaheadDetResult:mitigated:];
    goto LABEL_13;
  }

  if (!v11)
  {
    [GGMController repairGreenGhostFor:inputParamsToRepair:parsedMetaData:lookaheadDetResult:mitigated:];
    goto LABEL_13;
  }

  if (!v13)
  {
    [GGMController repairGreenGhostFor:inputParamsToRepair:parsedMetaData:lookaheadDetResult:mitigated:];
    goto LABEL_13;
  }

  v15 = [(GGMController *)self buildInputParamsToRepairFromMetaInfo:v12 andDetectedResults:v11 lookaheadDetectedResults:v13];
  v16 = [v11 objectForKeyedSubscript:@"InputTexture"];
  v17 = v16;
  if (!v15)
  {
    [GGMController repairGreenGhostFor:v16 inputParamsToRepair:? parsedMetaData:? lookaheadDetResult:? mitigated:?];
    goto LABEL_13;
  }

  v18 = [(VideoMitigation *)self->_GGMitigator mitigate:a3 info:v15 futureFrames:self->_futureFramesToDetectionAndRepair inputTexture:v16];

LABEL_7:
  return v18;
}

- (id)createInputParamsToRepairFromMetaInfo:(id)a3 metaContainerBuffer:(id)a4 futureMetaContainerBuffers:(id)a5 metaContainerBuffer_HW:(id)a6 futureMetaContainerBuffers_HW:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = +[NSMutableDictionary dictionary];
  if (v14)
  {
    [(RepairWeightsProcessor *)self->_repairWeightsProcessor temporalFilterBlendingWeights:v13 lookaheadMetaBufs:v14 metaBuf_HW:v15 lookaheadMetaBufs_HW:v16 hwMode:self->_hwMode];
  }

  if (v12)
  {
    [v17 setObject:v12 forKey:@"MetaData"];
  }

  if (v13)
  {
    [v17 setObject:v13 forKey:@"RepairMetaContainer"];
  }

  if (v15)
  {
    [v17 setObject:v15 forKey:@"RepairMetaContainer_HW"];
  }

  return v17;
}

- (id)buildInputParamsToRepairFromMetaInfo:(id)a3 andDetectedResults:(id)a4 lookaheadDetectedResults:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 objectForKeyedSubscript:@"RepairMeta"];
  v12 = [v9 objectForKeyedSubscript:@"RepairMeta_HW"];
  v13 = v12;
  if (!v11)
  {
    [GGMController buildInputParamsToRepairFromMetaInfo:andDetectedResults:lookaheadDetectedResults:];
    v29 = 0;
LABEL_40:
    v17 = 0;
    v16 = 0;
    goto LABEL_26;
  }

  if (!v12 && self->_hwMode)
  {
    [GGMController buildInputParamsToRepairFromMetaInfo:andDetectedResults:lookaheadDetectedResults:];
    v29 = v11;
    v11 = 0;
    goto LABEL_40;
  }

  v33 = v11;
  v14 = [v11 mutableBytes];
  v15 = [v13 mutableBytes];
  if (!v14 || (v14[2168] & 1) == 0)
  {
    [GGMController buildInputParamsToRepairFromMetaInfo:andDetectedResults:lookaheadDetectedResults:];
LABEL_34:
    v11 = 0;
    v17 = 0;
    v16 = 0;
    goto LABEL_37;
  }

  if (!v15 || v15[2576])
  {
    [GGMController buildInputParamsToRepairFromMetaInfo:andDetectedResults:lookaheadDetectedResults:];
    goto LABEL_34;
  }

  v31 = v9;
  v32 = v8;
  v16 = objc_alloc_init(NSMutableArray);
  v17 = objc_alloc_init(NSMutableArray);
  if (!v10 || ![v10 count])
  {
LABEL_25:
    v28 = self;
    v8 = v32;
    v29 = v33;
    v11 = [(GGMController *)v28 createInputParamsToRepairFromMetaInfo:v32 metaContainerBuffer:v33 futureMetaContainerBuffers:v16 metaContainerBuffer_HW:v13 futureMetaContainerBuffers_HW:v17];
    v9 = v31;
    goto LABEL_26;
  }

  v18 = 0;
  while (1)
  {
    v19 = [v10 objectAtIndexedSubscript:v18];
    v20 = v19;
    if (!v19 || ([v19 objectForKey:@"RepairMeta"], v21 = objc_claimAutoreleasedReturnValue(), v21, !v21))
    {
LABEL_24:

      goto LABEL_25;
    }

    v22 = [v20 objectForKeyedSubscript:@"RepairMeta"];
    v23 = v22;
    if (!v22)
    {
      [GGMController buildInputParamsToRepairFromMetaInfo:andDetectedResults:lookaheadDetectedResults:];
      goto LABEL_36;
    }

    v24 = [v22 mutableBytes];
    if (!v24 || (v24[2168] & 1) == 0)
    {
      [GGMController buildInputParamsToRepairFromMetaInfo:andDetectedResults:lookaheadDetectedResults:];
      goto LABEL_36;
    }

    [v16 addObject:v23];

    if (!self->_hwMode)
    {
      goto LABEL_22;
    }

    v25 = [v20 objectForKey:@"RepairMeta_HW"];

    if (!v25)
    {
      goto LABEL_24;
    }

    v26 = [v20 objectForKeyedSubscript:@"RepairMeta_HW"];
    v23 = v26;
    if (!v26)
    {
      break;
    }

    v27 = [v26 mutableBytes];
    if (!v27 || v27[2576])
    {
      [GGMController buildInputParamsToRepairFromMetaInfo:andDetectedResults:lookaheadDetectedResults:];
      goto LABEL_36;
    }

    [v17 addObject:v23];

LABEL_22:
    if ([v10 count] <= ++v18)
    {
      goto LABEL_25;
    }
  }

  [GGMController buildInputParamsToRepairFromMetaInfo:andDetectedResults:lookaheadDetectedResults:];
LABEL_36:

  v11 = 0;
  v9 = v31;
  v8 = v32;
LABEL_37:
  v29 = v33;
LABEL_26:

  return v11;
}

- (void)setIspTimeStamp:(id *)a3
{
  v3 = *&a3->var0;
  self->_ispTimeStamp.epoch = a3->var3;
  *&self->_ispTimeStamp.value = v3;
}

- (void)initWithConfig:(void *)a1 metalContext:imageDimensions:tuningParameters:forDetection:.cold.1(void *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
}

- (void)initWithConfig:(void *)a1 metalContext:imageDimensions:tuningParameters:forDetection:.cold.2(void *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
}

- (uint64_t)initWithConfig:metalContext:imageDimensions:tuningParameters:forDetection:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (void)initWithConfig:(void *)a1 metalContext:imageDimensions:tuningParameters:forDetection:.cold.4(void *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
}

- (uint64_t)processDetection
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (void)repairGreenGhostFor:(void *)a1 inputParamsToRepair:parsedMetaData:lookaheadDetResult:mitigated:.cold.1(void *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
}

- (uint64_t)repairGreenGhostFor:inputParamsToRepair:parsedMetaData:lookaheadDetResult:mitigated:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)repairGreenGhostFor:inputParamsToRepair:parsedMetaData:lookaheadDetResult:mitigated:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)repairGreenGhostFor:inputParamsToRepair:parsedMetaData:lookaheadDetResult:mitigated:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)repairGreenGhostFor:inputParamsToRepair:parsedMetaData:lookaheadDetResult:mitigated:.cold.5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)buildInputParamsToRepairFromMetaInfo:andDetectedResults:lookaheadDetectedResults:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)buildInputParamsToRepairFromMetaInfo:andDetectedResults:lookaheadDetectedResults:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)buildInputParamsToRepairFromMetaInfo:andDetectedResults:lookaheadDetectedResults:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)buildInputParamsToRepairFromMetaInfo:andDetectedResults:lookaheadDetectedResults:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)buildInputParamsToRepairFromMetaInfo:andDetectedResults:lookaheadDetectedResults:.cold.5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)buildInputParamsToRepairFromMetaInfo:andDetectedResults:lookaheadDetectedResults:.cold.6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)buildInputParamsToRepairFromMetaInfo:andDetectedResults:lookaheadDetectedResults:.cold.7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)buildInputParamsToRepairFromMetaInfo:andDetectedResults:lookaheadDetectedResults:.cold.8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

@end
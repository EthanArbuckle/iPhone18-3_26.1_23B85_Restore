@interface GGMController
- ($43C834F0531B50B92CAF4577069D180C)setDefaultControllerConfig;
- (GGMController)initWithConfig:(id *)config metalContext:(id)context imageDimensions:(id)dimensions tuningParameters:(id)parameters forDetection:(BOOL)detection;
- (id)buildInputParamsToRepairFromMetaInfo:(id)info andDetectedResults:(id)results lookaheadDetectedResults:(id)detectedResults;
- (id)createInputParamsToRepairFromMetaInfo:(id)info metaContainerBuffer:(id)buffer futureMetaContainerBuffers:(id)buffers metaContainerBuffer_HW:(id)w futureMetaContainerBuffers_HW:(id)hW;
- (id)detectGreenGhostFor:(__CVBuffer *)for metaData:(id)data frameNum:(int64_t)num timeStamp:(id *)stamp keyPoint:(__CVBuffer *)point lightSourceMask:(__CVBuffer *)mask futureFrames:(id *)frames;
- (int64_t)processDetection;
- (int64_t)repairGreenGhostFor:(__CVBuffer *)for inputParamsToRepair:(id)repair parsedMetaData:(id)data lookaheadDetResult:(id)result mitigated:(__CVBuffer *)mitigated;
- (uint64_t)processDetection;
- (void)resetIntermediateVariables;
- (void)resetState;
- (void)setConfigureFromDefaultsWrite:(id *)write;
- (void)setIspTimeStamp:(id *)stamp;
- (void)updateConfig:(id *)config withConfigureDict:(id)dict;
@end

@implementation GGMController

- (void)updateConfig:(id *)config withConfigureDict:(id)dict
{
  dictCopy = dict;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [dictCopy countByEnumeratingWithState:&v14 objects:v13 count:16];
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
          objc_enumerationMutation(dictCopy);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [dictCopy objectForKeyedSubscript:{v10, v12}];
        if ([v10 isEqualToString:@"LightMode"])
        {
          config->var0 = [v11 intValue];
        }

        else if ([v10 isEqualToString:@"HomographyType"])
        {
          config->var1 = [v11 intValue];
        }

        else if ([v10 isEqualToString:@"DetectionType"])
        {
          config->var2 = [v11 intValue];
        }

        else if ([v10 isEqualToString:@"TemporalRepairMode"])
        {
          config->var3 = [v11 intValue];
        }

        else if ([v10 isEqualToString:@"RepairFrameDelay"])
        {
          config->var4 = [v11 intValue];
        }

        else if ([v10 isEqualToString:@"DrawBoundingBox"])
        {
          config->var5 = [v11 BOOLValue];
        }

        else if ([v10 isEqualToString:@"NoMetaData"])
        {
          config->var6 = [v11 BOOLValue];
        }

        else if ([v10 isEqualToString:@"BackgroundDetection"])
        {
          config->var7 = [v11 BOOLValue];
        }

        else
        {
          [v10 isEqualToString:v12];
        }
      }

      v7 = [dictCopy countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v7);
  }
}

- (GGMController)initWithConfig:(id *)config metalContext:(id)context imageDimensions:(id)dimensions tuningParameters:(id)parameters forDetection:(BOOL)detection
{
  detectionCopy = detection;
  contextCopy = context;
  parametersCopy = parameters;
  if (!contextCopy)
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
    v17 = *&config->var0.var0;
    v18 = *&config->var0.var7;
    v19 = *&config->var1.var4;
    *&v15->_configure.externalCfg.lightMode = *&config->var1.var0;
    *&v15->_configure.externalCfg.frameDelay = v19;
    *&v15->_configure.internalCfg.clipThreshold = v17;
    *&v15->_configure.internalCfg.enableColorMask = v18;
    objc_storeStrong(&v15->_metalContext, context);
    objc_storeStrong(&v16->_tuningParamDict, parameters);
    v20 = [parametersCopy objectForKeyedSubscript:@"hwMode"];
    v16->_hwMode = [v20 BOOLValue];

    if (detectionCopy)
    {
      v21 = [[VideoDeghostingDetectionV3 alloc] initWithMetalContext:v16->_metalContext config:config tuningParamDict:v16->_tuningParamDict imageDimensions:dimensions];
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
      v23 = [[VideoMitigation alloc] initWithConfig:config metalContext:v16->_metalContext imageDimensions:dimensions tuningParameters:v16->_tuningParamDict];
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

- (void)setConfigureFromDefaultsWrite:(id *)write
{
  write->var1.var11 = FigGetCFPreferenceNumberWithDefault() == 0;
  var12 = write->var1.var12;
  write->var1.var12 = FigGetCFPreferenceNumberWithDefault();
  write->var1.var13 = FigGetCFPreferenceNumberWithDefault();
  write->var1.var14 = FigGetCFPreferenceNumberWithDefault();
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

- (id)detectGreenGhostFor:(__CVBuffer *)for metaData:(id)data frameNum:(int64_t)num timeStamp:(id *)stamp keyPoint:(__CVBuffer *)point lightSourceMask:(__CVBuffer *)mask futureFrames:(id *)frames
{
  dataCopy = data;
  CVPixelBufferRetain(for);
  if (point)
  {
    CFRetain(point);
  }

  CVPixelBufferRetain(mask);
  v15 = objc_autoreleasePoolPush();
  GGDetector = self->_GGDetector;
  v19 = *&stamp->var0;
  var3 = stamp->var3;
  v17 = [(VideoDeghostingDetectionV3 *)GGDetector process:for metaData:dataCopy ispTimeStamp:&v19 keypoints:point lightSourceMask:mask futureFrames:frames];
  objc_autoreleasePoolPop(v15);
  CVPixelBufferRelease(for);
  if (point)
  {
    CFRelease(point);
  }

  CVPixelBufferRelease(mask);

  return v17;
}

- (int64_t)repairGreenGhostFor:(__CVBuffer *)for inputParamsToRepair:(id)repair parsedMetaData:(id)data lookaheadDetResult:(id)result mitigated:(__CVBuffer *)mitigated
{
  repairCopy = repair;
  dataCopy = data;
  resultCopy = result;
  v14 = resultCopy;
  if (!for)
  {
    [GGMController repairGreenGhostFor:inputParamsToRepair:parsedMetaData:lookaheadDetResult:mitigated:];
LABEL_13:
    v18 = 5;
    goto LABEL_7;
  }

  if (!dataCopy)
  {
    [GGMController repairGreenGhostFor:inputParamsToRepair:parsedMetaData:lookaheadDetResult:mitigated:];
    goto LABEL_13;
  }

  if (!repairCopy)
  {
    [GGMController repairGreenGhostFor:inputParamsToRepair:parsedMetaData:lookaheadDetResult:mitigated:];
    goto LABEL_13;
  }

  if (!resultCopy)
  {
    [GGMController repairGreenGhostFor:inputParamsToRepair:parsedMetaData:lookaheadDetResult:mitigated:];
    goto LABEL_13;
  }

  v15 = [(GGMController *)self buildInputParamsToRepairFromMetaInfo:dataCopy andDetectedResults:repairCopy lookaheadDetectedResults:resultCopy];
  v16 = [repairCopy objectForKeyedSubscript:@"InputTexture"];
  v17 = v16;
  if (!v15)
  {
    [GGMController repairGreenGhostFor:v16 inputParamsToRepair:? parsedMetaData:? lookaheadDetResult:? mitigated:?];
    goto LABEL_13;
  }

  v18 = [(VideoMitigation *)self->_GGMitigator mitigate:for info:v15 futureFrames:self->_futureFramesToDetectionAndRepair inputTexture:v16];

LABEL_7:
  return v18;
}

- (id)createInputParamsToRepairFromMetaInfo:(id)info metaContainerBuffer:(id)buffer futureMetaContainerBuffers:(id)buffers metaContainerBuffer_HW:(id)w futureMetaContainerBuffers_HW:(id)hW
{
  infoCopy = info;
  bufferCopy = buffer;
  buffersCopy = buffers;
  wCopy = w;
  hWCopy = hW;
  v17 = +[NSMutableDictionary dictionary];
  if (buffersCopy)
  {
    [(RepairWeightsProcessor *)self->_repairWeightsProcessor temporalFilterBlendingWeights:bufferCopy lookaheadMetaBufs:buffersCopy metaBuf_HW:wCopy lookaheadMetaBufs_HW:hWCopy hwMode:self->_hwMode];
  }

  if (infoCopy)
  {
    [v17 setObject:infoCopy forKey:@"MetaData"];
  }

  if (bufferCopy)
  {
    [v17 setObject:bufferCopy forKey:@"RepairMetaContainer"];
  }

  if (wCopy)
  {
    [v17 setObject:wCopy forKey:@"RepairMetaContainer_HW"];
  }

  return v17;
}

- (id)buildInputParamsToRepairFromMetaInfo:(id)info andDetectedResults:(id)results lookaheadDetectedResults:(id)detectedResults
{
  infoCopy = info;
  resultsCopy = results;
  detectedResultsCopy = detectedResults;
  v11 = [resultsCopy objectForKeyedSubscript:@"RepairMeta"];
  v12 = [resultsCopy objectForKeyedSubscript:@"RepairMeta_HW"];
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
  mutableBytes = [v11 mutableBytes];
  mutableBytes2 = [v13 mutableBytes];
  if (!mutableBytes || (mutableBytes[2168] & 1) == 0)
  {
    [GGMController buildInputParamsToRepairFromMetaInfo:andDetectedResults:lookaheadDetectedResults:];
LABEL_34:
    v11 = 0;
    v17 = 0;
    v16 = 0;
    goto LABEL_37;
  }

  if (!mutableBytes2 || mutableBytes2[2576])
  {
    [GGMController buildInputParamsToRepairFromMetaInfo:andDetectedResults:lookaheadDetectedResults:];
    goto LABEL_34;
  }

  v31 = resultsCopy;
  v32 = infoCopy;
  v16 = objc_alloc_init(NSMutableArray);
  v17 = objc_alloc_init(NSMutableArray);
  if (!detectedResultsCopy || ![detectedResultsCopy count])
  {
LABEL_25:
    selfCopy = self;
    infoCopy = v32;
    v29 = v33;
    v11 = [(GGMController *)selfCopy createInputParamsToRepairFromMetaInfo:v32 metaContainerBuffer:v33 futureMetaContainerBuffers:v16 metaContainerBuffer_HW:v13 futureMetaContainerBuffers_HW:v17];
    resultsCopy = v31;
    goto LABEL_26;
  }

  v18 = 0;
  while (1)
  {
    v19 = [detectedResultsCopy objectAtIndexedSubscript:v18];
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

    mutableBytes3 = [v22 mutableBytes];
    if (!mutableBytes3 || (mutableBytes3[2168] & 1) == 0)
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

    mutableBytes4 = [v26 mutableBytes];
    if (!mutableBytes4 || mutableBytes4[2576])
    {
      [GGMController buildInputParamsToRepairFromMetaInfo:andDetectedResults:lookaheadDetectedResults:];
      goto LABEL_36;
    }

    [v17 addObject:v23];

LABEL_22:
    if ([detectedResultsCopy count] <= ++v18)
    {
      goto LABEL_25;
    }
  }

  [GGMController buildInputParamsToRepairFromMetaInfo:andDetectedResults:lookaheadDetectedResults:];
LABEL_36:

  v11 = 0;
  resultsCopy = v31;
  infoCopy = v32;
LABEL_37:
  v29 = v33;
LABEL_26:

  return v11;
}

- (void)setIspTimeStamp:(id *)stamp
{
  v3 = *&stamp->var0;
  self->_ispTimeStamp.epoch = stamp->var3;
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
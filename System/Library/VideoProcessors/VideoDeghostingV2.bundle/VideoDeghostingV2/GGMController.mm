@interface GGMController
- ($BEDB99FD0828BB334BE1A07B64442EB9)setDefaultControllerConfig;
- (GGMController)initWithConfig:(id *)config metalContext:(id)context imageDimensions:(id)dimensions tuningParameters:(id)parameters;
- (GGMController)initWithConfigDict:(id)dict metalContext:(id)context imageDimensions:(id)dimensions;
- (id)buildInputParamsToRepairFromMetaInfo:(id)info andDetectedResults:(id)results lookaheadDetectedResults:(id)detectedResults;
- (id)createInputParamsToRepairFromMetaInfo:(id)info metaContainerBuffer:(id)buffer futureMetaContainerBuffers:(id)buffers;
- (id)detectGreenGhostFor:(__CVBuffer *)for metaData:(id)data frameNum:(int64_t)num timeStamp:(id *)stamp keyPoint:(__CVBuffer *)point lightSourceMask:(__CVBuffer *)mask futureFrames:(id *)frames;
- (int64_t)processDetection;
- (int64_t)repairGreenGhostFor:(__CVBuffer *)for inputParamsToRepair:(id)repair parsedMetaData:(id)data lookaheadDetResult:(id)result mitigated:(__CVBuffer *)mitigated;
- (void)resetIntermediateVariables;
- (void)resetState;
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

- (GGMController)initWithConfigDict:(id)dict metalContext:(id)context imageDimensions:(id)dimensions
{
  dictCopy = dict;
  contextCopy = context;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  if (self)
  {
    [(GGMController *)self setDefaultControllerConfig:v14];
  }

  if (dictCopy)
  {
    [(GGMController *)self updateConfig:&v16 withConfigureDict:dictCopy];
  }

  v10 = [dictCopy objectForKeyedSubscript:{@"TuningParameters", v14, v15, v16, v17}];

  if (v10)
  {
    v11 = [dictCopy objectForKeyedSubscript:@"TuningParameters"];
  }

  else
  {
    v11 = 0;
  }

  [(GGMController *)self setConfigureFromDefaultsWrite:&v14];
  v12 = [(GGMController *)self initWithConfig:&v14 metalContext:contextCopy imageDimensions:dimensions tuningParameters:v11];

  return v12;
}

- (GGMController)initWithConfig:(id *)config metalContext:(id)context imageDimensions:(id)dimensions tuningParameters:(id)parameters
{
  contextCopy = context;
  parametersCopy = parameters;
  if (!contextCopy)
  {
    sub_240FC(self);
LABEL_13:
    v14 = 0;
    goto LABEL_7;
  }

  v27.receiver = self;
  v27.super_class = GGMController;
  v13 = [(GGMController *)&v27 init];
  v14 = v13;
  if (!v13)
  {
    sub_24084();
    goto LABEL_7;
  }

  v15 = *&config->var0.var0;
  v16 = *&config->var0.var7;
  v17 = *&config->var1.var0;
  *(v13 + 88) = *&config->var1.var4;
  *(v13 + 72) = v17;
  *(v13 + 56) = v16;
  *(v13 + 40) = v15;
  objc_storeStrong(v13 + 3, context);
  objc_storeStrong(&v14->_tuningParamDict, parameters);
  v18 = [[GGMMetalToolBox alloc] initWithMetalContext:contextCopy tuningParamDict:v14->_tuningParamDict];
  metalToolbox = v14->_metalToolbox;
  v14->_metalToolbox = v18;

  if (!v14->_metalToolbox)
  {
    sub_24004(v14);
    goto LABEL_13;
  }

  v20 = [[VideoDeghostingDetectionV2 alloc] initWithMetalToolBox:v14->_metalToolbox config:config tuningParamDict:v14->_tuningParamDict imageDimensions:dimensions];
  GGDetector = v14->_GGDetector;
  v14->_GGDetector = v20;

  if (!v14->_GGDetector)
  {
    sub_23F84(v14);
    goto LABEL_13;
  }

  v22 = [[VideoMitigation alloc] initWithConfig:config metalToolBox:v14->_metalToolbox MetalContext:v14->_metalContext imageDimensions:dimensions];
  GGMitigator = v14->_GGMitigator;
  v14->_GGMitigator = v22;

  if (!v14->_GGMitigator)
  {
    sub_23F04(v14);
    goto LABEL_13;
  }

  v24 = objc_alloc_init(RepairWeightsProcessor);
  repairWeightsProcessor = v14->_repairWeightsProcessor;
  v14->_repairWeightsProcessor = v24;

  [(GGMController *)v14 resetIntermediateVariables];
LABEL_7:

  return v14;
}

- (void)resetState
{
  self->_processedPixelBuffer = 0;
  self->_processedFrameInDetection = 0;
  self->_lookaheadFrameProcessedInFinish = 0;
  [(VideoDeghostingDetectionV2 *)self->_GGDetector reset];
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

- ($BEDB99FD0828BB334BE1A07B64442EB9)setDefaultControllerConfig
{
  *&retstr->var1.var0 = 0u;
  *&retstr->var1.var4 = 0u;
  *&retstr->var0.var0 = 0u;
  *&retstr->var0.var7 = 0u;
  sub_12A50(retstr);
  return result;
}

- (int64_t)processDetection
{
  if (!self->_inputBuffer)
  {
    sub_2427C();
LABEL_8:
    result = 5;
    goto LABEL_5;
  }

  if (!self->_metaDictionary)
  {
    sub_24204();
    goto LABEL_8;
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
    sub_2418C();
    result = 3;
  }

LABEL_5:
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
  v17 = [(VideoDeghostingDetectionV2 *)GGDetector process:for metaData:dataCopy ispTimeStamp:&v19 keypoints:point lightSourceMask:mask futureFrames:frames];
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
    sub_244D4();
LABEL_13:
    v17 = 5;
    goto LABEL_7;
  }

  if (!dataCopy)
  {
    sub_2445C();
    goto LABEL_13;
  }

  if (!repairCopy)
  {
    sub_243E4();
    goto LABEL_13;
  }

  if (!resultCopy)
  {
    sub_2436C();
    goto LABEL_13;
  }

  v15 = [(GGMController *)self buildInputParamsToRepairFromMetaInfo:dataCopy andDetectedResults:repairCopy lookaheadDetectedResults:resultCopy];
  if (!v15)
  {
    sub_242F4();
    goto LABEL_13;
  }

  v16 = v15;
  v17 = [(VideoMitigation *)self->_GGMitigator mitigate:for info:v15 futureFrames:self->_futureFramesToDetectionAndRepair];

LABEL_7:
  return v17;
}

- (id)createInputParamsToRepairFromMetaInfo:(id)info metaContainerBuffer:(id)buffer futureMetaContainerBuffers:(id)buffers
{
  infoCopy = info;
  bufferCopy = buffer;
  buffersCopy = buffers;
  v11 = +[NSMutableDictionary dictionary];
  if (buffersCopy)
  {
    [(RepairWeightsProcessor *)self->_repairWeightsProcessor temporalFilterBlendingWeights:bufferCopy lookaheadMetaBufs:buffersCopy];
  }

  if (infoCopy)
  {
    [v11 setObject:infoCopy forKey:@"MetaData"];
  }

  if (bufferCopy)
  {
    [v11 setObject:bufferCopy forKey:@"RepairMetaContainer"];
  }

  return v11;
}

- (id)buildInputParamsToRepairFromMetaInfo:(id)info andDetectedResults:(id)results lookaheadDetectedResults:(id)detectedResults
{
  infoCopy = info;
  detectedResultsCopy = detectedResults;
  v10 = [results objectForKeyedSubscript:@"RepairMeta"];
  v11 = v10;
  if (!v10)
  {
    sub_246B4();
    goto LABEL_24;
  }

  mutableBytes = [v10 mutableBytes];
  if (!mutableBytes || (mutableBytes[9536] & 1) == 0)
  {
    sub_2463C();
LABEL_24:
    v21 = 0;
    v13 = 0;
    goto LABEL_16;
  }

  v13 = objc_alloc_init(NSMutableArray);
  if (detectedResultsCopy && [detectedResultsCopy count])
  {
    v14 = 0;
    while (1)
    {
      v15 = [detectedResultsCopy objectAtIndexedSubscript:v14];
      v16 = v15;
      if (!v15 || ([v15 objectForKey:@"RepairMeta"], v17 = objc_claimAutoreleasedReturnValue(), v17, !v17))
      {

        goto LABEL_15;
      }

      v18 = [v16 objectForKeyedSubscript:@"RepairMeta"];
      v19 = v18;
      if (!v18)
      {
        break;
      }

      mutableBytes2 = [v18 mutableBytes];
      if (!mutableBytes2 || (mutableBytes2[9536] & 1) == 0)
      {
        sub_2454C();
        goto LABEL_21;
      }

      [v13 addObject:v19];

      if ([detectedResultsCopy count] <= ++v14)
      {
        goto LABEL_15;
      }
    }

    sub_245C4();
LABEL_21:

    v21 = 0;
  }

  else
  {
LABEL_15:
    v21 = [(GGMController *)self createInputParamsToRepairFromMetaInfo:infoCopy metaContainerBuffer:v11 futureMetaContainerBuffers:v13];
  }

LABEL_16:

  return v21;
}

- (void)setIspTimeStamp:(id *)stamp
{
  v3 = *&stamp->var0;
  self->_ispTimeStamp.epoch = stamp->var3;
  *&self->_ispTimeStamp.value = v3;
}

@end
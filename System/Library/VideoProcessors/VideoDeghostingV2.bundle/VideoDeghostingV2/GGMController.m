@interface GGMController
- ($BEDB99FD0828BB334BE1A07B64442EB9)setDefaultControllerConfig;
- (GGMController)initWithConfig:(id *)a3 metalContext:(id)a4 imageDimensions:(id)a5 tuningParameters:(id)a6;
- (GGMController)initWithConfigDict:(id)a3 metalContext:(id)a4 imageDimensions:(id)a5;
- (id)buildInputParamsToRepairFromMetaInfo:(id)a3 andDetectedResults:(id)a4 lookaheadDetectedResults:(id)a5;
- (id)createInputParamsToRepairFromMetaInfo:(id)a3 metaContainerBuffer:(id)a4 futureMetaContainerBuffers:(id)a5;
- (id)detectGreenGhostFor:(__CVBuffer *)a3 metaData:(id)a4 frameNum:(int64_t)a5 timeStamp:(id *)a6 keyPoint:(__CVBuffer *)a7 lightSourceMask:(__CVBuffer *)a8 futureFrames:(id *)a9;
- (int64_t)processDetection;
- (int64_t)repairGreenGhostFor:(__CVBuffer *)a3 inputParamsToRepair:(id)a4 parsedMetaData:(id)a5 lookaheadDetResult:(id)a6 mitigated:(__CVBuffer *)a7;
- (void)resetIntermediateVariables;
- (void)resetState;
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

- (GGMController)initWithConfigDict:(id)a3 metalContext:(id)a4 imageDimensions:(id)a5
{
  v8 = a3;
  v9 = a4;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  if (self)
  {
    [(GGMController *)self setDefaultControllerConfig:v14];
  }

  if (v8)
  {
    [(GGMController *)self updateConfig:&v16 withConfigureDict:v8];
  }

  v10 = [v8 objectForKeyedSubscript:{@"TuningParameters", v14, v15, v16, v17}];

  if (v10)
  {
    v11 = [v8 objectForKeyedSubscript:@"TuningParameters"];
  }

  else
  {
    v11 = 0;
  }

  [(GGMController *)self setConfigureFromDefaultsWrite:&v14];
  v12 = [(GGMController *)self initWithConfig:&v14 metalContext:v9 imageDimensions:a5 tuningParameters:v11];

  return v12;
}

- (GGMController)initWithConfig:(id *)a3 metalContext:(id)a4 imageDimensions:(id)a5 tuningParameters:(id)a6
{
  v11 = a4;
  v12 = a6;
  if (!v11)
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

  v15 = *&a3->var0.var0;
  v16 = *&a3->var0.var7;
  v17 = *&a3->var1.var0;
  *(v13 + 88) = *&a3->var1.var4;
  *(v13 + 72) = v17;
  *(v13 + 56) = v16;
  *(v13 + 40) = v15;
  objc_storeStrong(v13 + 3, a4);
  objc_storeStrong(&v14->_tuningParamDict, a6);
  v18 = [[GGMMetalToolBox alloc] initWithMetalContext:v11 tuningParamDict:v14->_tuningParamDict];
  metalToolbox = v14->_metalToolbox;
  v14->_metalToolbox = v18;

  if (!v14->_metalToolbox)
  {
    sub_24004(v14);
    goto LABEL_13;
  }

  v20 = [[VideoDeghostingDetectionV2 alloc] initWithMetalToolBox:v14->_metalToolbox config:a3 tuningParamDict:v14->_tuningParamDict imageDimensions:a5];
  GGDetector = v14->_GGDetector;
  v14->_GGDetector = v20;

  if (!v14->_GGDetector)
  {
    sub_23F84(v14);
    goto LABEL_13;
  }

  v22 = [[VideoMitigation alloc] initWithConfig:a3 metalToolBox:v14->_metalToolbox MetalContext:v14->_metalContext imageDimensions:a5];
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
  v17 = [(VideoDeghostingDetectionV2 *)GGDetector process:a3 metaData:v14 ispTimeStamp:&v19 keypoints:a7 lightSourceMask:a8 futureFrames:a9];
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
    sub_244D4();
LABEL_13:
    v17 = 5;
    goto LABEL_7;
  }

  if (!v12)
  {
    sub_2445C();
    goto LABEL_13;
  }

  if (!v11)
  {
    sub_243E4();
    goto LABEL_13;
  }

  if (!v13)
  {
    sub_2436C();
    goto LABEL_13;
  }

  v15 = [(GGMController *)self buildInputParamsToRepairFromMetaInfo:v12 andDetectedResults:v11 lookaheadDetectedResults:v13];
  if (!v15)
  {
    sub_242F4();
    goto LABEL_13;
  }

  v16 = v15;
  v17 = [(VideoMitigation *)self->_GGMitigator mitigate:a3 info:v15 futureFrames:self->_futureFramesToDetectionAndRepair];

LABEL_7:
  return v17;
}

- (id)createInputParamsToRepairFromMetaInfo:(id)a3 metaContainerBuffer:(id)a4 futureMetaContainerBuffers:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[NSMutableDictionary dictionary];
  if (v10)
  {
    [(RepairWeightsProcessor *)self->_repairWeightsProcessor temporalFilterBlendingWeights:v9 lookaheadMetaBufs:v10];
  }

  if (v8)
  {
    [v11 setObject:v8 forKey:@"MetaData"];
  }

  if (v9)
  {
    [v11 setObject:v9 forKey:@"RepairMetaContainer"];
  }

  return v11;
}

- (id)buildInputParamsToRepairFromMetaInfo:(id)a3 andDetectedResults:(id)a4 lookaheadDetectedResults:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [a4 objectForKeyedSubscript:@"RepairMeta"];
  v11 = v10;
  if (!v10)
  {
    sub_246B4();
    goto LABEL_24;
  }

  v12 = [v10 mutableBytes];
  if (!v12 || (v12[9536] & 1) == 0)
  {
    sub_2463C();
LABEL_24:
    v21 = 0;
    v13 = 0;
    goto LABEL_16;
  }

  v13 = objc_alloc_init(NSMutableArray);
  if (v9 && [v9 count])
  {
    v14 = 0;
    while (1)
    {
      v15 = [v9 objectAtIndexedSubscript:v14];
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

      v20 = [v18 mutableBytes];
      if (!v20 || (v20[9536] & 1) == 0)
      {
        sub_2454C();
        goto LABEL_21;
      }

      [v13 addObject:v19];

      if ([v9 count] <= ++v14)
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
    v21 = [(GGMController *)self createInputParamsToRepairFromMetaInfo:v8 metaContainerBuffer:v11 futureMetaContainerBuffers:v13];
  }

LABEL_16:

  return v21;
}

- (void)setIspTimeStamp:(id *)a3
{
  v3 = *&a3->var0;
  self->_ispTimeStamp.epoch = a3->var3;
  *&self->_ispTimeStamp.value = v3;
}

@end
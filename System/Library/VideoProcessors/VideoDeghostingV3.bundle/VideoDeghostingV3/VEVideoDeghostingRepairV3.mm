@interface VEVideoDeghostingRepairV3
- (VEVideoDeghostingRepairV3)initWithMetalContext:(id)a3 imageDimensions:(id)a4 tuningParameters:(id)a5;
- (id)collectDetectionResultsForLookAheadBuffer:(id *)a3;
- (int)ConvertGGMStatus:(int64_t)a3;
- (int)process;
- (int)resetState;
- (uint64_t)process;
- (void)dealloc;
@end

@implementation VEVideoDeghostingRepairV3

- (void)dealloc
{
  [(VEVideoDeghostingRepairV3 *)self finishProcessing];
  [(VEVideoDeghostingRepairV3 *)self purgeResources];
  v3.receiver = self;
  v3.super_class = VEVideoDeghostingRepairV3;
  [(VEVideoDeghostingRepairV3 *)&v3 dealloc];
}

- (int)process
{
  inputSampleBuffer = self->_inputSampleBuffer;
  if (!inputSampleBuffer)
  {
    [VEVideoDeghostingRepairV3 process];
LABEL_14:
    v6 = 0;
LABEL_19:
    v12 = 2;
    goto LABEL_10;
  }

  if (!self->_ghostInformationLookAheadPointer)
  {
    [VEVideoDeghostingRepairV3 process];
    goto LABEL_14;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(inputSampleBuffer);
  if (!ImageBuffer)
  {
    [VEVideoDeghostingRepairV3 process];
    goto LABEL_14;
  }

  v5 = ImageBuffer;
  v6 = CMGetAttachment(self->_inputSampleBuffer, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
  if (!v6)
  {
    [VEVideoDeghostingRepairV3 process];
    goto LABEL_19;
  }

  var0 = self->_ghostInformationLookAheadPointer->var0;
  if (!var0)
  {
    [VEVideoDeghostingRepairV3 process];
    goto LABEL_19;
  }

  [(GGMController *)self->_GGMCtrl setInputBuffer:v5];
  v8 = *(var0 + 1);
  if (!v8)
  {
    [VEVideoDeghostingRepairV3 process];
    goto LABEL_19;
  }

  [(GGMController *)self->_GGMCtrl setMetaDictionary:CFDictionaryGetValue(v8, @"MetaData")];
  v9 = [(GGMController *)self->_GGMCtrl metaDictionary];

  if (!v9)
  {
    [VEVideoDeghostingRepairV3 process];
    goto LABEL_19;
  }

  [(GGMController *)self->_GGMCtrl setInputParamsToRepair:*(var0 + 1)];
  v10 = [(VEVideoDeghostingRepairV3 *)self collectDetectionResultsForLookAheadBuffer:self->_ghostInformationLookAheadPointer];
  [(GGMController *)self->_GGMCtrl setFutureInputParamsToRepair:v10];

  extractFutureReferenceFrames(&self->_lookaheadFrames, self->_ghostInformationLookAheadPointer, 0);
  [(GGMController *)self->_GGMCtrl setFutureFramesToDetectionAndRepair:&self->_lookaheadFrames];
  v11 = [(VEVideoDeghostingRepairV3 *)self ConvertGGMStatus:[(GGMController *)self->_GGMCtrl processRepair]];
  if (v11)
  {
    v14 = v11;
    [VEVideoDeghostingRepairV3 process];
    v12 = v14;
  }

  else
  {
    v12 = 0;
  }

LABEL_10:

  return v12;
}

- (int)resetState
{
  [(VEVideoDeghostingRepairV3 *)self finishProcessing];
  [(GGMController *)self->_GGMCtrl resetState];
  return 0;
}

- (int)ConvertGGMStatus:(int64_t)a3
{
  if (a3 == 5)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (id)collectDetectionResultsForLookAheadBuffer:(id *)a3
{
  v4 = objc_alloc_init(NSMutableArray);
  var2 = a3->var2;
  if (var2 >= 2)
  {
    v6 = 0;
    if (var2 >= 0x10)
    {
      var2 = 16;
    }

    v7 = 24 * (var2 - 1);
    do
    {
      v8 = a3->var0 + v6;
      if (v8[40] != 1)
      {
        break;
      }

      if (!*(v8 + 4))
      {
        break;
      }

      [v4 addObject:?];
      v6 += 24;
    }

    while (v7 != v6);
  }

  return v4;
}

- (VEVideoDeghostingRepairV3)initWithMetalContext:(id)a3 imageDimensions:(id)a4 tuningParameters:(id)a5
{
  v9 = a3;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = VEVideoDeghostingRepairV3;
  v11 = [(VEVideoDeghostingRepairV3 *)&v20 init];
  if (!v11)
  {
    goto LABEL_8;
  }

  if (!v9)
  {
    goto LABEL_7;
  }

  v12 = createConfigDictForRepair(v10);
  cfgDict = v11->_cfgDict;
  v11->_cfgDict = v12;

  v14 = [v9 commandQueue];
  metalCommandQueue = v11->_metalCommandQueue;
  v11->_metalCommandQueue = v14;

  v11->_imageDimensions = a4;
  objc_storeStrong(&v11->_metalContext, a3);
  v16 = [[GGMController alloc] initWithConfigDict:v11->_cfgDict metalContext:v11->_metalContext imageDimensions:a4 forDetection:0];
  GGMCtrl = v11->_GGMCtrl;
  v11->_GGMCtrl = v16;

  if (!v11->_GGMCtrl)
  {
LABEL_8:
    v18 = 0;
    goto LABEL_6;
  }

  if (initLookAheadFrameArray(&v11->_lookaheadFrames, 2))
  {
LABEL_7:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1();
    FigDebugAssert3();
    goto LABEL_8;
  }

  v18 = v11;
LABEL_6:

  return v18;
}

- (uint64_t)process
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

@end
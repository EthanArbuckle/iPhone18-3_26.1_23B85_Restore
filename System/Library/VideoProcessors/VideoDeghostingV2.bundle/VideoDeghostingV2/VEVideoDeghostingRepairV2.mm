@interface VEVideoDeghostingRepairV2
- (VEVideoDeghostingRepairV2)initWithMetalContext:(id)context imageDimensions:(id)dimensions tuningParameters:(id)parameters;
- (id)collectDetectionResultsForLookAheadBuffer:(id *)buffer;
- (int)ConvertGGMStatus:(int64_t)status;
- (int)process;
- (int)resetState;
- (void)dealloc;
@end

@implementation VEVideoDeghostingRepairV2

- (void)dealloc
{
  [(VEVideoDeghostingRepairV2 *)self finishProcessing];
  [(VEVideoDeghostingRepairV2 *)self purgeResources];
  v3.receiver = self;
  v3.super_class = VEVideoDeghostingRepairV2;
  [(VEVideoDeghostingRepairV2 *)&v3 dealloc];
}

- (int)process
{
  inputSampleBuffer = self->_inputSampleBuffer;
  if (!inputSampleBuffer)
  {
    sub_251F0();
LABEL_14:
    v6 = 0;
LABEL_19:
    v12 = 2;
    goto LABEL_10;
  }

  if (!self->_ghostInformationLookAheadPointer)
  {
    sub_25178();
    goto LABEL_14;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(inputSampleBuffer);
  if (!ImageBuffer)
  {
    sub_25100();
    goto LABEL_14;
  }

  v5 = ImageBuffer;
  v6 = CMGetAttachment(self->_inputSampleBuffer, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
  if (!v6)
  {
    sub_25088();
    goto LABEL_19;
  }

  var0 = self->_ghostInformationLookAheadPointer->var0;
  if (!var0)
  {
    sub_25010();
    goto LABEL_19;
  }

  [(GGMController *)self->_GGMCtrl setInputBuffer:v5];
  v8 = *(var0 + 1);
  if (!v8)
  {
    sub_24F98();
    goto LABEL_19;
  }

  [(GGMController *)self->_GGMCtrl setMetaDictionary:CFDictionaryGetValue(v8, @"MetaData")];
  metaDictionary = [(GGMController *)self->_GGMCtrl metaDictionary];

  if (!metaDictionary)
  {
    sub_24F20();
    goto LABEL_19;
  }

  [(GGMController *)self->_GGMCtrl setInputParamsToRepair:*(var0 + 1)];
  v10 = [(VEVideoDeghostingRepairV2 *)self collectDetectionResultsForLookAheadBuffer:self->_ghostInformationLookAheadPointer];
  [(GGMController *)self->_GGMCtrl setFutureInputParamsToRepair:v10];

  sub_BBAC(&self->_lookaheadFrames, self->_ghostInformationLookAheadPointer, 0);
  [(GGMController *)self->_GGMCtrl setFutureFramesToDetectionAndRepair:&self->_lookaheadFrames];
  v11 = [(VEVideoDeghostingRepairV2 *)self ConvertGGMStatus:[(GGMController *)self->_GGMCtrl processRepair]];
  if (v11)
  {
    v14 = v11;
    sub_24E98();
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
  [(VEVideoDeghostingRepairV2 *)self finishProcessing];
  [(GGMController *)self->_GGMCtrl resetState];
  return 0;
}

- (int)ConvertGGMStatus:(int64_t)status
{
  if (status == 5)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (status)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (id)collectDetectionResultsForLookAheadBuffer:(id *)buffer
{
  v4 = objc_alloc_init(NSMutableArray);
  var2 = buffer->var2;
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
      v8 = buffer->var0 + v6;
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

- (VEVideoDeghostingRepairV2)initWithMetalContext:(id)context imageDimensions:(id)dimensions tuningParameters:(id)parameters
{
  contextCopy = context;
  parametersCopy = parameters;
  v20.receiver = self;
  v20.super_class = VEVideoDeghostingRepairV2;
  v11 = [(VEVideoDeghostingRepairV2 *)&v20 init];
  if (!v11)
  {
    goto LABEL_8;
  }

  if (!contextCopy)
  {
    goto LABEL_7;
  }

  v12 = sub_B724(parametersCopy);
  cfgDict = v11->_cfgDict;
  v11->_cfgDict = v12;

  commandQueue = [contextCopy commandQueue];
  metalCommandQueue = v11->_metalCommandQueue;
  v11->_metalCommandQueue = commandQueue;

  v11->_imageDimensions = dimensions;
  objc_storeStrong(&v11->_metalContext, context);
  v16 = [[GGMController alloc] initWithConfigDict:v11->_cfgDict metalContext:v11->_metalContext imageDimensions:dimensions];
  GGMCtrl = v11->_GGMCtrl;
  v11->_GGMCtrl = v16;

  if (!v11->_GGMCtrl)
  {
LABEL_8:
    v18 = 0;
    goto LABEL_6;
  }

  if (sub_BF58(&v11->_lookaheadFrames, 2))
  {
LABEL_7:
    fig_log_get_emitter();
    sub_14238();
    FigDebugAssert3();
    goto LABEL_8;
  }

  v18 = v11;
LABEL_6:

  return v18;
}

@end
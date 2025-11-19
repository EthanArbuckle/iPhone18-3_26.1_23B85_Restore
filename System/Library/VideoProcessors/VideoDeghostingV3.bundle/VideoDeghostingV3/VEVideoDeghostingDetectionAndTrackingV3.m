@interface VEVideoDeghostingDetectionAndTrackingV3
- (VEVideoDeghostingDetectionAndTrackingV3)initWithMetalContext:(id)a3 imageDimensions:(id)a4 tuningParameters:(id)a5;
- (int)_convertGGMStatus:(int64_t)a3;
- (int)process;
- (int)resetState;
- (void)dealloc;
@end

@implementation VEVideoDeghostingDetectionAndTrackingV3

- (void)dealloc
{
  [(VEVideoDeghostingDetectionAndTrackingV3 *)self finishProcessing];
  [(VEVideoDeghostingDetectionAndTrackingV3 *)self purgeResources];
  v3.receiver = self;
  v3.super_class = VEVideoDeghostingDetectionAndTrackingV3;
  [(VEVideoDeghostingDetectionAndTrackingV3 *)&v3 dealloc];
}

- (int)process
{
  v20 = 0u;
  v19 = 0u;
  detectionResult = self->_detectionResult;
  self->_detectionResult = 0;

  if (self->_ghostInformationLookAheadPointer)
  {
    inputSampleBuffer = self->_inputSampleBuffer;
    if (inputSampleBuffer)
    {
      OneFrameFromSampleBuffer = fetchOneFrameFromSampleBuffer(&v18, inputSampleBuffer);
      if (OneFrameFromSampleBuffer)
      {
        fig_log_get_emitter();
        v15 = v2;
        LODWORD(v13) = 0;
        FigDebugAssert3();
      }

      else
      {
        GGMCtrl = self->_GGMCtrl;
        v16 = *&kCMTimeInvalid.value;
        epoch = kCMTimeInvalid.epoch;
        [(GGMController *)GGMCtrl setIspTimeStamp:&v16];
        [(GGMController *)self->_GGMCtrl setInputBuffer:v18];
        [(GGMController *)self->_GGMCtrl setMetaDictionary:v19];
        [(GGMController *)self->_GGMCtrl setLightSourceMask:getLightSourceMaskFromSampleBuffer(self->_inputSampleBuffer)];
        [(GGMController *)self->_GGMCtrl setKeyPointsList:getKeypointDataFromSampleBuffer(self->_inputSampleBuffer)];
        if (![(GGMController *)self->_GGMCtrl keyPointsList])
        {
          fig_log_get_emitter();
          v14 = v2;
          LODWORD(v13) = 0;
          FigDebugAssert3();
        }

        FutureReferenceFrames = extractFutureReferenceFrames(&self->_lookaheadFrames, self->_ghostInformationLookAheadPointer, 1);
        if (FutureReferenceFrames)
        {
          fig_log_get_emitter();
          v14 = v2;
          LODWORD(v13) = FutureReferenceFrames;
          FigDebugAssert3();
        }

        [(GGMController *)self->_GGMCtrl setFutureFramesToDetectionAndRepair:&self->_lookaheadFrames, v13, v14];
        OneFrameFromSampleBuffer = [(VEVideoDeghostingDetectionAndTrackingV3 *)self _convertGGMStatus:[(GGMController *)self->_GGMCtrl processDetection]];
        if (!OneFrameFromSampleBuffer)
        {
          v9 = [(GGMController *)self->_GGMCtrl detectedGreenGhostInfo];
          v10 = [v9 objectForKeyedSubscript:@"GhostsInfoMetaData"];
          v11 = self->_detectionResult;
          self->_detectionResult = v10;

          OneFrameFromSampleBuffer = 0;
        }
      }
    }

    else
    {
      fig_log_get_emitter();
      v15 = v2;
      LODWORD(v13) = 0;
      FigDebugAssert3();
      OneFrameFromSampleBuffer = -12780;
    }
  }

  else
  {
    fig_log_get_emitter();
    v15 = v2;
    LODWORD(v13) = 0;
    FigDebugAssert3();
    OneFrameFromSampleBuffer = 2;
  }

  [(GGMController *)self->_GGMCtrl lightSourceMask:v13];
  __destructor_8_s8_s16_s24_s32(&v18);
  return OneFrameFromSampleBuffer;
}

- (int)resetState
{
  detectionResult = self->_detectionResult;
  self->_detectionResult = 0;

  [(GGMController *)self->_GGMCtrl resetState];
  return 0;
}

- (int)_convertGGMStatus:(int64_t)a3
{
  if (a3 == 5)
  {
    v3 = 2;
  }

  else
  {
    v3 = 3;
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

- (VEVideoDeghostingDetectionAndTrackingV3)initWithMetalContext:(id)a3 imageDimensions:(id)a4 tuningParameters:(id)a5
{
  v9 = a3;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = VEVideoDeghostingDetectionAndTrackingV3;
  v11 = [(VEVideoDeghostingDetectionAndTrackingV3 *)&v20 init];
  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = createConfigDictForDetection(0, v10);
  cfgDict = v11->_cfgDict;
  v11->_cfgDict = v12;

  v14 = [v9 commandQueue];
  metalCommandQueue = v11->_metalCommandQueue;
  v11->_metalCommandQueue = v14;

  v11->_imageDimensions = a4;
  objc_storeStrong(&v11->_metalContext, a3);
  v16 = [[GGMController alloc] initWithConfigDict:v11->_cfgDict metalContext:v11->_metalContext imageDimensions:a4 forDetection:1];
  GGMCtrl = v11->_GGMCtrl;
  v11->_GGMCtrl = v16;

  if (!v11->_GGMCtrl)
  {
LABEL_7:
    v18 = 0;
    goto LABEL_5;
  }

  if (initLookAheadFrameArray(&v11->_lookaheadFrames, 2))
  {
LABEL_6:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1();
    FigDebugAssert3();
    goto LABEL_7;
  }

  v18 = v11;
LABEL_5:

  return v18;
}

@end
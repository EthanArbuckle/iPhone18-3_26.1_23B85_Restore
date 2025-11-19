@interface VEVideoDeghostingDetectionAndTrackingV2
- (VEVideoDeghostingDetectionAndTrackingV2)initWithMetalContext:(id)a3 imageDimensions:(id)a4 tuningParameters:(id)a5;
- (int)_convertGGMStatus:(int64_t)a3;
- (int)process;
- (int)resetState;
- (void)dealloc;
@end

@implementation VEVideoDeghostingDetectionAndTrackingV2

- (void)dealloc
{
  [(VEVideoDeghostingDetectionAndTrackingV2 *)self finishProcessing];
  [(VEVideoDeghostingDetectionAndTrackingV2 *)self purgeResources];
  v3.receiver = self;
  v3.super_class = VEVideoDeghostingDetectionAndTrackingV2;
  [(VEVideoDeghostingDetectionAndTrackingV2 *)&v3 dealloc];
}

- (int)process
{
  v23 = 0;
  detectionResult = self->_detectionResult;
  self->_detectionResult = 0;

  if (self->_ghostInformationLookAheadPointer)
  {
    inputSampleBuffer = self->_inputSampleBuffer;
    if (inputSampleBuffer)
    {
      v6 = sub_BA98(&v22, inputSampleBuffer);
      if (v6)
      {
        fig_log_get_emitter();
        v19 = v2;
        LODWORD(v17) = 0;
        FigDebugAssert3();
        v8 = 0;
      }

      else
      {
        GGMCtrl = self->_GGMCtrl;
        v20 = *&kCMTimeInvalid.value;
        epoch = kCMTimeInvalid.epoch;
        [(GGMController *)GGMCtrl setIspTimeStamp:&v20];
        [(GGMController *)self->_GGMCtrl setInputBuffer:v22];
        [(GGMController *)self->_GGMCtrl setMetaDictionary:v23];
        [(GGMController *)self->_GGMCtrl setLightSourceMask:sub_B8D8(self->_inputSampleBuffer)];
        if ([(GGMController *)self->_GGMCtrl lightSourceMask]&& CVPixelBufferGetPixelFormatType([(GGMController *)self->_GGMCtrl lightSourceMask]) == 1278226488)
        {
          [(GGMController *)self->_GGMCtrl setLightSourceMask:sub_C254([(GGMController *)self->_GGMCtrl lightSourceMask])];
          v8 = 1;
        }

        else
        {
          v8 = 0;
        }

        [(GGMController *)self->_GGMCtrl setKeyPointsList:sub_B9B0(self->_inputSampleBuffer)];
        if (![(GGMController *)self->_GGMCtrl keyPointsList])
        {
          fig_log_get_emitter();
          v18 = v2;
          LODWORD(v17) = 0;
          FigDebugAssert3();
        }

        v9 = sub_BBAC(&self->_lookaheadFrames, self->_ghostInformationLookAheadPointer, 1);
        if (v9)
        {
          fig_log_get_emitter();
          v18 = v2;
          LODWORD(v17) = v9;
          FigDebugAssert3();
        }

        [(GGMController *)self->_GGMCtrl setFutureFramesToDetectionAndRepair:&self->_lookaheadFrames, v17, v18];
        v6 = [(VEVideoDeghostingDetectionAndTrackingV2 *)self _convertGGMStatus:[(GGMController *)self->_GGMCtrl processDetection]];
        if (v6)
        {
          fig_log_get_emitter();
          v19 = v2;
          LODWORD(v17) = v6;
          FigDebugAssert3();
        }

        else
        {
          v10 = [(GGMController *)self->_GGMCtrl detectedGreenGhostInfo];
          v11 = [v10 objectForKeyedSubscript:@"GhostsInfoMetaData"];
          v12 = self->_detectionResult;
          self->_detectionResult = v11;

          v6 = 0;
        }
      }
    }

    else
    {
      fig_log_get_emitter();
      v19 = v2;
      LODWORD(v17) = 0;
      FigDebugAssert3();
      v8 = 0;
      v6 = -12780;
    }
  }

  else
  {
    fig_log_get_emitter();
    v19 = v2;
    LODWORD(v17) = 0;
    FigDebugAssert3();
    v8 = 0;
    v6 = 2;
  }

  v13 = [(GGMController *)self->_GGMCtrl lightSourceMask:v17];
  v14 = v8 ^ 1;
  if (!v13)
  {
    v14 = 1;
  }

  if ((v14 & 1) == 0)
  {
    v15 = [(GGMController *)self->_GGMCtrl lightSourceMask];
    if (v15)
    {
      CFRelease(v15);
    }
  }

  return v6;
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

- (VEVideoDeghostingDetectionAndTrackingV2)initWithMetalContext:(id)a3 imageDimensions:(id)a4 tuningParameters:(id)a5
{
  v9 = a3;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = VEVideoDeghostingDetectionAndTrackingV2;
  v11 = [(VEVideoDeghostingDetectionAndTrackingV2 *)&v20 init];
  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = sub_B7EC(0, v10);
  cfgDict = v11->_cfgDict;
  v11->_cfgDict = v12;

  v14 = [v9 commandQueue];
  metalCommandQueue = v11->_metalCommandQueue;
  v11->_metalCommandQueue = v14;

  v11->_imageDimensions = a4;
  objc_storeStrong(&v11->_metalContext, a3);
  v16 = [[GGMController alloc] initWithConfigDict:v11->_cfgDict metalContext:v11->_metalContext imageDimensions:a4];
  GGMCtrl = v11->_GGMCtrl;
  v11->_GGMCtrl = v16;

  if (!v11->_GGMCtrl)
  {
LABEL_7:
    v18 = 0;
    goto LABEL_5;
  }

  if (sub_BF58(&v11->_lookaheadFrames, 2))
  {
LABEL_6:
    fig_log_get_emitter();
    sub_14238();
    FigDebugAssert3();
    goto LABEL_7;
  }

  v18 = v11;
LABEL_5:

  return v18;
}

@end
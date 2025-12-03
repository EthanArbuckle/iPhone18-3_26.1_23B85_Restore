@interface VPScannerView
- (VPScannerView)initWithCoder:(id)coder;
- (VPScannerView)initWithFrame:(CGRect)frame;
- (id)_setupCapture;
- (id)_setupDevice:(id)device;
- (id)initAsProxCard;
- (void)_handleCaptureSessionInterrupted:(id)interrupted;
- (void)_handleCaptureSessionInterruptionEnded:(id)ended;
- (void)_handleCaptureSessionRuntimeError:(id)error;
- (void)_handleCaptureSessionStarted:(id)started;
- (void)_handleCaptureSessionStopped:(id)stopped;
- (void)_initCommon;
- (void)_postMetricAndResetAnalyticsState;
- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection;
- (void)layoutSubviews;
- (void)start;
- (void)stop;
@end

@implementation VPScannerView

- (VPScannerView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = VPScannerView;
  v3 = [(VPScannerView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(VPScannerView *)v3 _initCommon];
  }

  return v4;
}

- (VPScannerView)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = VPScannerView;
  v5 = [(VPScannerView *)&v8 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    [(VPScannerView *)v5 _initCommon];
  }

  return v6;
}

- (id)initAsProxCard
{
  v2 = *MEMORY[0x277CBF3A0];
  v3 = *(MEMORY[0x277CBF3A0] + 8);
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  v5 = *(MEMORY[0x277CBF3A0] + 24);
  v9.receiver = self;
  v9.super_class = VPScannerView;
  v6 = [(VPScannerView *)&v9 initWithFrame:v2, v3, v4, v5];
  v7 = v6;
  if (v6)
  {
    v6->_isProxCardType = 1;
    v6->_fillLayerBoundsWithVideo = 1;
    [(VPScannerView *)v6 _initCommon];
  }

  return v7;
}

- (void)_initCommon
{
  self->_autoFocusRangeRestriction = 1;
  self->_focusMode = 2;
  v3 = objc_alloc_init(VPWatermarkReader);
  watermarkReader = self->_watermarkReader;
  self->_watermarkReader = v3;

  [(VPWatermarkReader *)self->_watermarkReader setProgressHandler:&__block_literal_global];
  if (!self->_isProxCardType)
  {
    layer = [MEMORY[0x277CD9F90] layer];
    viewfinderRevealLayer = self->_viewfinderRevealLayer;
    self->_viewfinderRevealLayer = layer;

    blackColor = [MEMORY[0x277D75348] blackColor];
    -[CAShapeLayer setFillColor:](self->_viewfinderRevealLayer, "setFillColor:", [blackColor CGColor]);

    LODWORD(v7) = 0.5;
    [(CAShapeLayer *)self->_viewfinderRevealLayer setOpacity:v7];
    layer2 = [(VPScannerView *)self layer];
    [layer2 insertSublayer:self->_viewfinderRevealLayer atIndex:0];

    layer3 = [MEMORY[0x277CD9F90] layer];
    viewfinderBorderLayer = self->_viewfinderBorderLayer;
    self->_viewfinderBorderLayer = layer3;

    clearColor = [MEMORY[0x277D75348] clearColor];
    -[CAShapeLayer setFillColor:](self->_viewfinderBorderLayer, "setFillColor:", [clearColor CGColor]);

    tableCellBlueTextColor = [MEMORY[0x277D75348] tableCellBlueTextColor];
    -[CAShapeLayer setStrokeColor:](self->_viewfinderBorderLayer, "setStrokeColor:", [tableCellBlueTextColor CGColor]);

    layer4 = [(VPScannerView *)self layer];
    [layer4 insertSublayer:self->_viewfinderBorderLayer atIndex:1];
  }
}

void __28__VPScannerView__initCommon__block_invoke()
{
  if (gLogCategory_SV <= 30 && (gLogCategory_SV != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = VPScannerView;
  [(VPScannerView *)&v10 layoutSubviews];
  layer = [(VPScannerView *)self layer];
  [layer bounds];
  [(AVCaptureVideoPreviewLayer *)self->_avPreviewLayer setFrame:?];

  if (!self->_isProxCardType)
  {
    [(VPScannerView *)self bounds];
    v5 = v4;
    v7 = v6;
    v8 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:? cornerRadius:?];
    v9 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:(v5 + -200.0) * 0.5 cornerRadius:{(v7 + -200.0) * 0.5, 200.0, 200.0, 100.0}];
    -[CAShapeLayer setPath:](self->_viewfinderBorderLayer, "setPath:", [v9 CGPath]);
    [v8 appendPath:v9];
    [v8 setUsesEvenOddFillRule:1];
    -[CAShapeLayer setPath:](self->_viewfinderRevealLayer, "setPath:", [v8 CGPath]);
    [(CAShapeLayer *)self->_viewfinderRevealLayer setFillRule:*MEMORY[0x277CDA248]];
  }
}

- (void)start
{
  if (gLogCategory_SV <= 30 && (gLogCategory_SV != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  date = [MEMORY[0x277CBEAA8] date];
  [(VPScannerView *)self setStartDate:date];

  _setupCapture = [(VPScannerView *)self _setupCapture];
  if (_setupCapture)
  {
    [(VPScannerView *)self setLatestError:_setupCapture];
    v4 = _setupCapture;
  }

  else
  {
    self->_scanning = 1;
    [(AVCaptureSession *)self->_avCaptureSession startRunning];
    v4 = 0;
  }
}

- (void)stop
{
  if (gLogCategory_SV <= 30 && (gLogCategory_SV != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [(VPScannerView *)self _postMetricAndResetAnalyticsState];
  self->_scanning = 0;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CE5930] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CE5938] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CE59C0] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CE59C8] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CE5948] object:0];
  [(AVCaptureVideoPreviewLayer *)self->_avPreviewLayer removeFromSuperlayer];
  avPreviewLayer = self->_avPreviewLayer;
  self->_avPreviewLayer = 0;

  [(AVCaptureSession *)self->_avCaptureSession stopRunning];
  avCaptureSession = self->_avCaptureSession;
  self->_avCaptureSession = 0;

  avCaptureDevice = self->_avCaptureDevice;
  self->_avCaptureDevice = 0;
}

- (id)_setupCapture
{
  v38[1] = *MEMORY[0x277D85DE8];
  if (self->_avCaptureSession)
  {
    v2 = 0;
    goto LABEL_27;
  }

  v4 = objc_alloc_init(MEMORY[0x277CE5B38]);
  avCaptureSession = self->_avCaptureSession;
  self->_avCaptureSession = v4;

  if (self->_avCaptureSession)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__handleCaptureSessionStarted_ name:*MEMORY[0x277CE5930] object:self->_avCaptureSession];
    [defaultCenter addObserver:self selector:sel__handleCaptureSessionStopped_ name:*MEMORY[0x277CE5938] object:self->_avCaptureSession];
    [defaultCenter addObserver:self selector:sel__handleCaptureSessionRuntimeError_ name:*MEMORY[0x277CE59C0] object:self->_avCaptureSession];
    [defaultCenter addObserver:self selector:sel__handleCaptureSessionInterrupted_ name:*MEMORY[0x277CE59C8] object:self->_avCaptureSession];
    [defaultCenter addObserver:self selector:sel__handleCaptureSessionInterruptionEnded_ name:*MEMORY[0x277CE5948] object:self->_avCaptureSession];
    [(AVCaptureSession *)self->_avCaptureSession beginConfiguration];
    v7 = [MEMORY[0x277CE5AC8] defaultDeviceWithMediaType:*MEMORY[0x277CE5EA8]];
    avCaptureDevice = self->_avCaptureDevice;
    self->_avCaptureDevice = v7;

    if (self->_avCaptureDevice)
    {
      v9 = [(VPScannerView *)self _setupDevice:?];
      if (v9)
      {
        v35 = 0;
      }

      else
      {
        v10 = self->_avCaptureDevice;
        v36 = 0;
        v11 = [MEMORY[0x277CE5AD8] deviceInputWithDevice:v10 error:&v36];
        v12 = v36;
        if (v11)
        {
          [(AVCaptureSession *)self->_avCaptureSession addInput:v11];
          v13 = objc_alloc_init(MEMORY[0x277CE5B60]);
          if (v13)
          {
            v14 = v13;
            [v13 setAlwaysDiscardsLateVideoFrames:1];
            v37 = *MEMORY[0x277CC4E30];
            v38[0] = &unk_288157550;
            v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
            [v14 setVideoSettings:v15];

            avCaptureQueue = self->_avCaptureQueue;
            if (!avCaptureQueue)
            {
              v17 = dispatch_queue_create("VPScannerCapture", 0);
              v18 = self->_avCaptureQueue;
              self->_avCaptureQueue = v17;

              avCaptureQueue = self->_avCaptureQueue;
            }

            [v14 setSampleBufferDelegate:self queue:avCaptureQueue];
            [(AVCaptureSession *)self->_avCaptureSession addOutput:v14];
            v19 = *MEMORY[0x277CE5968];
            v20 = [(AVCaptureSession *)self->_avCaptureSession canSetSessionPreset:*MEMORY[0x277CE5968]];
            v21 = *MEMORY[0x277CE59A0];
            if (v20)
            {
              v22 = v19;
            }

            else
            {
              v22 = *MEMORY[0x277CE59A0];
            }

            [(AVCaptureSession *)self->_avCaptureSession setSessionPreset:v22];
            [(AVCaptureSession *)self->_avCaptureSession commitConfiguration];
            v23 = [MEMORY[0x277CE5B68] layerWithSession:self->_avCaptureSession];
            avPreviewLayer = self->_avPreviewLayer;
            self->_avPreviewLayer = v23;

            fillLayerBoundsWithVideo = [(VPScannerView *)self fillLayerBoundsWithVideo];
            v26 = MEMORY[0x277CE5DD8];
            if (!fillLayerBoundsWithVideo)
            {
              v26 = MEMORY[0x277CE5DD0];
            }

            [(AVCaptureVideoPreviewLayer *)self->_avPreviewLayer setVideoGravity:*v26];
            layer = [(VPScannerView *)self layer];
            [layer bounds];
            [(AVCaptureVideoPreviewLayer *)self->_avPreviewLayer setFrame:?];

            layer2 = [(VPScannerView *)self layer];
            [layer2 insertSublayer:self->_avPreviewLayer atIndex:0];

            connection = [(AVCaptureVideoPreviewLayer *)self->_avPreviewLayer connection];
            if ([connection isVideoOrientationSupported])
            {
              activeInterfaceOrientation = [*MEMORY[0x277D76620] activeInterfaceOrientation];
              if ((activeInterfaceOrientation - 2) >= 3)
              {
                v31 = 1;
              }

              else
              {
                v31 = activeInterfaceOrientation;
              }

              v32 = connection;
              [connection setVideoOrientation:v31];
            }

            else
            {
              v32 = connection;
            }

            goto LABEL_21;
          }

          v35 = v11;
        }

        else
        {
          v35 = 0;
        }

        v9 = v12;
      }
    }

    else
    {
      v35 = 0;
      v9 = NSErrorWithOSStatusF();
    }

    v11 = v35;
    v32 = 0;
    v14 = 0;
    v12 = v9;
    [(AVCaptureSession *)self->_avCaptureSession commitConfiguration];
  }

  else
  {
    v32 = 0;
    v12 = NSErrorWithOSStatusF();
    defaultCenter = 0;
    v11 = 0;
    v14 = 0;
  }

LABEL_21:
  if (v12 && gLogCategory_SV <= 60 && (gLogCategory_SV != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v2 = v12;

LABEL_27:
  v33 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)_setupDevice:(id)device
{
  deviceCopy = device;
  avCaptureDevice = self->_avCaptureDevice;
  v8 = 0;
  [(AVCaptureDevice *)avCaptureDevice lockForConfiguration:&v8];
  v6 = v8;
  if (v6)
  {
    if (gLogCategory_SV <= 60 && (gLogCategory_SV != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else
  {
    if ([deviceCopy isFocusModeSupported:self->_focusMode])
    {
      [deviceCopy setFocusPointOfInterest:{0.5, 0.5}];
      [deviceCopy setFocusMode:self->_focusMode];
    }

    if ([deviceCopy isAutoFocusRangeRestrictionSupported])
    {
      [deviceCopy setAutoFocusRangeRestriction:self->_autoFocusRangeRestriction];
    }

    if ([deviceCopy isWhiteBalanceModeSupported:2])
    {
      [deviceCopy setWhiteBalanceMode:2];
    }

    if ([deviceCopy isExposureModeSupported:2])
    {
      [deviceCopy setExposurePointOfInterest:{0.5, 0.5}];
      [deviceCopy setExposureMode:2];
    }

    [(AVCaptureDevice *)self->_avCaptureDevice unlockForConfiguration];
  }

  return v6;
}

- (void)_handleCaptureSessionStarted:(id)started
{
  startedCopy = started;
  if (gLogCategory_SV <= 30 && (gLogCategory_SV != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (void)_handleCaptureSessionStopped:(id)stopped
{
  stoppedCopy = stopped;
  if (gLogCategory_SV <= 30 && (gLogCategory_SV != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (void)_handleCaptureSessionRuntimeError:(id)error
{
  userInfo = [error userInfo];
  CFErrorGetTypeID();
  v5 = *MEMORY[0x277CE5940];
  v7 = CFDictionaryGetTypedValue();

  if (gLogCategory_SV <= 60 && (gLogCategory_SV != -1 || _LogCategory_Initialize()))
  {
    v6 = v7;
    LogPrintF();
  }

  [(VPScannerView *)self setLatestError:v7, v6];
}

- (void)_handleCaptureSessionInterrupted:(id)interrupted
{
  userInfo = [interrupted userInfo];
  v5 = *MEMORY[0x277CE5950];
  v12 = userInfo;
  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (gLogCategory_SV <= 60 && (gLogCategory_SV != -1 || _LogCategory_Initialize()))
  {
    if ((Int64Ranged - 1) <= 4)
    {
      v7 = off_279E32130[Int64Ranged - 1];
    }

    LogPrintF();
  }

  if ((Int64Ranged - 1) > 4)
  {
    v8 = "?";
  }

  else
  {
    v8 = off_279E32130[Int64Ranged - 1];
  }

  v10 = Int64Ranged;
  v11 = v8;
  v9 = NSErrorWithOSStatusF();
  [(VPScannerView *)self setLatestError:v9, v10, v11];
}

- (void)_handleCaptureSessionInterruptionEnded:(id)ended
{
  endedCopy = ended;
  if (gLogCategory_SV <= 30 && (gLogCategory_SV != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (void)_postMetricAndResetAnalyticsState
{
  v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  processName = [processInfo processName];
  [v28 setObject:processName forKeyedSubscript:@"processName"];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_focusMode];
  [v28 setObject:v5 forKeyedSubscript:@"focusMode"];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:self->_autoFocusRangeRestriction];
  [v28 setObject:v6 forKeyedSubscript:@"autoFocusRangeRestriction"];

  startDate = [(VPScannerView *)self startDate];
  if (startDate)
  {
    date = [MEMORY[0x277CBEAA8] date];
    v9 = MEMORY[0x277CCABB0];
    [date timeIntervalSinceDate:startDate];
    v10 = [v9 numberWithDouble:?];
    [v28 setObject:v10 forKeyedSubscript:@"sessionDurationSeconds"];

    firstCapturedFrameDate = [(VPWatermarkReader *)self->_watermarkReader firstCapturedFrameDate];
    v12 = firstCapturedFrameDate;
    if (firstCapturedFrameDate)
    {
      v13 = MEMORY[0x277CCABB0];
      [firstCapturedFrameDate timeIntervalSinceDate:startDate];
      v14 = [v13 numberWithDouble:?];
      [v28 setObject:v14 forKeyedSubscript:@"secondsToFirstFrame"];
    }

    firstScannedCodeDate = [(VPWatermarkReader *)self->_watermarkReader firstScannedCodeDate];
    v16 = firstScannedCodeDate;
    if (firstScannedCodeDate)
    {
      v17 = MEMORY[0x277CCABB0];
      [firstScannedCodeDate timeIntervalSinceDate:startDate];
      v18 = [v17 numberWithDouble:?];
      [v28 setObject:v18 forKeyedSubscript:@"secondsToFirstCode"];
    }

    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{-[VPWatermarkReader extractedCodeLength](self->_watermarkReader, "extractedCodeLength")}];
    [v28 setObject:v19 forKeyedSubscript:@"extractedCodeLength"];

    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[VPWatermarkReader readerResetCount](self->_watermarkReader, "readerResetCount")}];
    [v28 setObject:v20 forKeyedSubscript:@"readerResetCount"];

    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{-[VPWatermarkReader readerWidth](self->_watermarkReader, "readerWidth")}];
    [v28 setObject:v21 forKeyedSubscript:@"readerWidth"];

    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{-[VPWatermarkReader readerHeight](self->_watermarkReader, "readerHeight")}];
    [v28 setObject:v22 forKeyedSubscript:@"readerHeight"];

    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{-[VPWatermarkReader readerRowBytes](self->_watermarkReader, "readerRowBytes")}];
    [v28 setObject:v23 forKeyedSubscript:@"readerRowBytes"];
  }

  latestError = [(VPScannerView *)self latestError];
  v25 = latestError;
  if (latestError)
  {
    localizedDescription = [latestError localizedDescription];
    [v28 setObject:localizedDescription forKeyedSubscript:@"latestError"];
  }

  AnalyticsSendEvent();
  if (gLogCategory_SV <= 30 && (gLogCategory_SV != -1 || _LogCategory_Initialize()))
  {
    v27 = v28;
    LogPrintF();
  }

  [(VPScannerView *)self setStartDate:0, v27];
  [(VPScannerView *)self setLatestError:0];
}

- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection
{
  if (self->_scanning)
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
    watermarkReader = self->_watermarkReader;
    v14 = 0;
    v8 = [(VPWatermarkReader *)watermarkReader readWatermarkInPixelBuffer:ImageBuffer error:&v14];
    v9 = v14;
    if (v9)
    {
      v10 = v9;
      [(VPScannerView *)self setLatestError:v9];
    }

    else
    {
      if (v8)
      {
        v11 = CUMainQueue();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __68__VPScannerView_captureOutput_didOutputSampleBuffer_fromConnection___block_invoke;
        block[3] = &unk_279E32110;
        block[4] = self;
        v8 = v8;
        v13 = v8;
        dispatch_async(v11, block);
      }

      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
    v8 = 0;
  }
}

uint64_t __68__VPScannerView_captureOutput_didOutputSampleBuffer_fromConnection___block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 496);
  if (v1)
  {
    return (*(v1 + 16))(*(*(result + 32) + 496), *(result + 40));
  }

  return result;
}

@end
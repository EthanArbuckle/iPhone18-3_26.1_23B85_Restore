@interface TSCellularPlanQRCodeScannerView
- (CGPoint)pointForCaptureDevicePointOfInterest:(CGPoint)interest;
- (TSCellularPlanQRCodeScannerView)initWithDelegate:(id)delegate;
- (id)getAVCaptureMetadataOutput;
- (void)_changeCameraConfiguration;
- (void)_handleRuntimeError:(id)error;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setOrientation:(int64_t)orientation;
- (void)setupCameraSession;
- (void)startRunning;
- (void)stopRunning;
- (void)updateRectOfInterest;
@end

@implementation TSCellularPlanQRCodeScannerView

- (TSCellularPlanQRCodeScannerView)initWithDelegate:(id)delegate
{
  v5.receiver = self;
  v5.super_class = TSCellularPlanQRCodeScannerView;
  result = [(TSCellularPlanQRCodeScannerView *)&v5 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (result)
  {
    result->_delegate = delegate;
  }

  return result;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  metadataQueue = self->_metadataQueue;
  self->_metadataQueue = 0;

  v5.receiver = self;
  v5.super_class = TSCellularPlanQRCodeScannerView;
  [(TSCellularPlanQRCodeScannerView *)&v5 dealloc];
}

- (void)setupCameraSession
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, self, a3, "[E]failed to get camera @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = TSCellularPlanQRCodeScannerView;
  [(TSCellularPlanQRCodeScannerView *)&v4 layoutSubviews];
  superlayer = [(AVCaptureVideoPreviewLayer *)self->_previewLayer superlayer];
  [superlayer bounds];
  [(AVCaptureVideoPreviewLayer *)self->_previewLayer setFrame:?];
  [(TSCellularPlanQRCodeScannerView *)self updateRectOfInterest];
}

- (void)startRunning
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleRuntimeError_ name:*MEMORY[0x277CE59C0] object:0];

  if (self->_canUseCamera)
  {
    objc_initWeak(&location, self);
    metadataQueue = self->_metadataQueue;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __47__TSCellularPlanQRCodeScannerView_startRunning__block_invoke;
    v5[3] = &unk_279B44400;
    objc_copyWeak(&v6, &location);
    dispatch_async(metadataQueue, v5);
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __47__TSCellularPlanQRCodeScannerView_startRunning__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _changeCameraConfiguration];
    [v2[51] startRunning];
    WeakRetained = v2;
  }
}

- (void)stopRunning
{
  if (self->_canUseCamera)
  {
    objc_initWeak(&location, self);
    metadataQueue = self->_metadataQueue;
    v5 = MEMORY[0x277D85DD0];
    v6 = 3221225472;
    v7 = __46__TSCellularPlanQRCodeScannerView_stopRunning__block_invoke;
    v8 = &unk_279B44400;
    objc_copyWeak(&v9, &location);
    dispatch_async(metadataQueue, &v5);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CE59C0] object:0];
}

void __46__TSCellularPlanQRCodeScannerView_stopRunning__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[51] stopRunning];
    WeakRetained = v2;
  }
}

- (CGPoint)pointForCaptureDevicePointOfInterest:(CGPoint)interest
{
  [(AVCaptureVideoPreviewLayer *)self->_previewLayer pointForCaptureDevicePointOfInterest:interest.x, interest.y];
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)_handleRuntimeError:(id)error
{
  errorCopy = error;
  v5 = _TSLogDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(TSCellularPlanQRCodeScannerView *)errorCopy _handleRuntimeError:v5];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__TSCellularPlanQRCodeScannerView__handleRuntimeError___block_invoke;
  block[3] = &unk_279B44578;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __55__TSCellularPlanQRCodeScannerView__handleRuntimeError___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __55__TSCellularPlanQRCodeScannerView__handleRuntimeError___block_invoke_2;
  v3[3] = &unk_279B44578;
  v4 = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __55__TSCellularPlanQRCodeScannerView__handleRuntimeError___block_invoke_3;
  v2[3] = &unk_279B44F10;
  v2[4] = v4;
  return [MEMORY[0x277D75D18] animateWithDuration:v3 animations:v2 completion:0.25];
}

uint64_t __55__TSCellularPlanQRCodeScannerView__handleRuntimeError___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 408);
  *(v2 + 408) = 0;

  v4 = *(*(a1 + 32) + 432);

  return [v4 removeFromSuperlayer];
}

- (void)_changeCameraConfiguration
{
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  device = [(AVCaptureDeviceInput *)self->_deviceInput device];
  v5 = 0;
  [device lockForConfiguration:&v5];
  v4 = v5;
  if ([device isFocusModeSupported:2])
  {
    [device setFocusPointOfInterest:{0.5, 0.5}];
    [device setFocusMode:2];
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [device isAutoFocusRangeRestrictionSupported])
  {
    [device setAutoFocusRangeRestriction:1];
  }

  if ([device isWhiteBalanceModeSupported:2])
  {
    [device setWhiteBalanceMode:2];
  }

  if ([device isExposureModeSupported:2])
  {
    [device setExposurePointOfInterest:{0.5, 0.5}];
    [device setExposureMode:2];
  }

  [device unlockForConfiguration];
  [MEMORY[0x277CD9FF0] commit];
}

- (id)getAVCaptureMetadataOutput
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  outputs = [(AVCaptureSession *)self->_captureSession outputs];
  v3 = [outputs countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(outputs);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [outputs countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)updateRectOfInterest
{
  getAVCaptureMetadataOutput = [(TSCellularPlanQRCodeScannerView *)self getAVCaptureMetadataOutput];
  if (getAVCaptureMetadataOutput)
  {
    v9 = getAVCaptureMetadataOutput;
    [(AVCaptureVideoPreviewLayer *)self->_previewLayer frame];
    v5 = v4;
    [(AVCaptureVideoPreviewLayer *)self->_previewLayer frame];
    [(AVCaptureVideoPreviewLayer *)self->_previewLayer metadataOutputRectOfInterestForRect:10.0, 10.0, v5 + -20.0, v6 + -20.0];
    getAVCaptureMetadataOutput = v9;
    if (v8 != 0.0 && v7 != 0.0)
    {
      [v9 setRectOfInterest:?];
      getAVCaptureMetadataOutput = v9;
    }
  }
}

- (void)setOrientation:(int64_t)orientation
{
  v12 = *MEMORY[0x277D85DE8];
  previewLayer = [(TSCellularPlanQRCodeScannerView *)self previewLayer];
  connection = [previewLayer connection];

  if ([connection isVideoOrientationSupported])
  {
    v6 = _TSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134218242;
      orientationCopy = orientation;
      v10 = 2080;
      v11 = "[TSCellularPlanQRCodeScannerView setOrientation:]";
      _os_log_impl(&dword_262AA8000, v6, OS_LOG_TYPE_DEFAULT, "Set new orientation:%ld @%s", &v8, 0x16u);
    }

    [connection setVideoOrientation:orientation];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_handleRuntimeError:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [a1 userInfo];
  v5 = 138412546;
  v6 = v3;
  v7 = 2080;
  v8 = "[TSCellularPlanQRCodeScannerView _handleRuntimeError:]";
  _os_log_error_impl(&dword_262AA8000, a2, OS_LOG_TYPE_ERROR, "[E]Capture failed because of runtime error (%@) @%s", &v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

@end
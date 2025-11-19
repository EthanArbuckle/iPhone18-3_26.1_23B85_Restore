@interface TSCellularPlanQRCodeScannerView
- (CGPoint)pointForCaptureDevicePointOfInterest:(CGPoint)a3;
- (TSCellularPlanQRCodeScannerView)initWithDelegate:(id)a3;
- (id)getAVCaptureMetadataOutput;
- (void)_changeCameraConfiguration;
- (void)_handleRuntimeError:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setOrientation:(int64_t)a3;
- (void)setupCameraSession;
- (void)startRunning;
- (void)stopRunning;
- (void)updateRectOfInterest;
@end

@implementation TSCellularPlanQRCodeScannerView

- (TSCellularPlanQRCodeScannerView)initWithDelegate:(id)a3
{
  v5.receiver = self;
  v5.super_class = TSCellularPlanQRCodeScannerView;
  result = [(TSCellularPlanQRCodeScannerView *)&v5 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (result)
  {
    result->_delegate = a3;
  }

  return result;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  metadataQueue = self->_metadataQueue;
  self->_metadataQueue = 0;

  v5.receiver = self;
  v5.super_class = TSCellularPlanQRCodeScannerView;
  [(TSCellularPlanQRCodeScannerView *)&v5 dealloc];
}

- (void)setupCameraSession
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]failed to get camera @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = TSCellularPlanQRCodeScannerView;
  [(TSCellularPlanQRCodeScannerView *)&v4 layoutSubviews];
  v3 = [(AVCaptureVideoPreviewLayer *)self->_previewLayer superlayer];
  [v3 bounds];
  [(AVCaptureVideoPreviewLayer *)self->_previewLayer setFrame:?];
  [(TSCellularPlanQRCodeScannerView *)self updateRectOfInterest];
}

- (void)startRunning
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel__handleRuntimeError_ name:*MEMORY[0x277CE59C0] object:0];

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

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x277CE59C0] object:0];
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

- (CGPoint)pointForCaptureDevicePointOfInterest:(CGPoint)a3
{
  [(AVCaptureVideoPreviewLayer *)self->_previewLayer pointForCaptureDevicePointOfInterest:a3.x, a3.y];
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)_handleRuntimeError:(id)a3
{
  v4 = a3;
  v5 = _TSLogDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(TSCellularPlanQRCodeScannerView *)v4 _handleRuntimeError:v5];
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
  v3 = [(AVCaptureDeviceInput *)self->_deviceInput device];
  v5 = 0;
  [v3 lockForConfiguration:&v5];
  v4 = v5;
  if ([v3 isFocusModeSupported:2])
  {
    [v3 setFocusPointOfInterest:{0.5, 0.5}];
    [v3 setFocusMode:2];
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [v3 isAutoFocusRangeRestrictionSupported])
  {
    [v3 setAutoFocusRangeRestriction:1];
  }

  if ([v3 isWhiteBalanceModeSupported:2])
  {
    [v3 setWhiteBalanceMode:2];
  }

  if ([v3 isExposureModeSupported:2])
  {
    [v3 setExposurePointOfInterest:{0.5, 0.5}];
    [v3 setExposureMode:2];
  }

  [v3 unlockForConfiguration];
  [MEMORY[0x277CD9FF0] commit];
}

- (id)getAVCaptureMetadataOutput
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(AVCaptureSession *)self->_captureSession outputs];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v3 = [(TSCellularPlanQRCodeScannerView *)self getAVCaptureMetadataOutput];
  if (v3)
  {
    v9 = v3;
    [(AVCaptureVideoPreviewLayer *)self->_previewLayer frame];
    v5 = v4;
    [(AVCaptureVideoPreviewLayer *)self->_previewLayer frame];
    [(AVCaptureVideoPreviewLayer *)self->_previewLayer metadataOutputRectOfInterestForRect:10.0, 10.0, v5 + -20.0, v6 + -20.0];
    v3 = v9;
    if (v8 != 0.0 && v7 != 0.0)
    {
      [v9 setRectOfInterest:?];
      v3 = v9;
    }
  }
}

- (void)setOrientation:(int64_t)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [(TSCellularPlanQRCodeScannerView *)self previewLayer];
  v5 = [v4 connection];

  if ([v5 isVideoOrientationSupported])
  {
    v6 = _TSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134218242;
      v9 = a3;
      v10 = 2080;
      v11 = "[TSCellularPlanQRCodeScannerView setOrientation:]";
      _os_log_impl(&dword_262AA8000, v6, OS_LOG_TYPE_DEFAULT, "Set new orientation:%ld @%s", &v8, 0x16u);
    }

    [v5 setVideoOrientation:a3];
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
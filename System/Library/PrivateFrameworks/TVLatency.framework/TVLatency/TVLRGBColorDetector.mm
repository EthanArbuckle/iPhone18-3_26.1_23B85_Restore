@interface TVLRGBColorDetector
- (TVLRGBColorDetector)initWithThresholdsForHue:(double)hue saturation:(double)saturation brightness:(double)brightness;
- (TVLRGBColorDetectorDelegate)delegate;
- (id)_averageColorForSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)_prepareForDetection;
- (void)_resetRollingAverage;
- (void)_setupCaptureSession;
- (void)_startDetection;
- (void)_stopDetection;
- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection;
- (void)captureSessionRuntimeErrorDidOccur:(id)occur;
- (void)dealloc;
- (void)endDetection;
- (void)setBacklightState:(BOOL)state;
- (void)tearDown;
@end

@implementation TVLRGBColorDetector

- (TVLRGBColorDetector)initWithThresholdsForHue:(double)hue saturation:(double)saturation brightness:(double)brightness
{
  v33.receiver = self;
  v33.super_class = TVLRGBColorDetector;
  v8 = [(TVLRGBColorDetector *)&v33 init];
  v9 = v8;
  if (v8)
  {
    *(v8 + 18) = hue;
    *(v8 + 19) = saturation;
    *(v8 + 20) = brightness;
    v8[8] = 1;
    __asm { FMOV            V0.2D, #5.0 }

    *(v8 + 24) = _Q0;
    *(v8 + 5) = 0x4034000000000000;
    *(v8 + 6) = 10;
    *(v8 + 56) = _Q0;
    *(v8 + 9) = 0x3FB47AE147AE147BLL;
    v8[11] = 1;
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    hueComponents = v9->_hueComponents;
    v9->_hueComponents = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    saturationComponents = v9->_saturationComponents;
    v9->_saturationComponents = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    brightnessComponents = v9->_brightnessComponents;
    v9->_brightnessComponents = v19;

    v21 = objc_alloc_init(MEMORY[0x277CCABD8]);
    accelerometerQueue = v9->_accelerometerQueue;
    v9->_accelerometerQueue = v21;

    [(NSOperationQueue *)v9->_accelerometerQueue setQualityOfService:33];
    v23 = objc_alloc_init(MEMORY[0x277CC1CD8]);
    motionManager = v9->_motionManager;
    v9->_motionManager = v23;

    [(TVLRGBColorDetector *)v9 _setupCaptureSession];
    objc_initWeak(&location, v9);
    v25 = MEMORY[0x277D85CD0];
    v26 = MEMORY[0x277D85CD0];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __70__TVLRGBColorDetector_initWithThresholdsForHue_saturation_brightness___block_invoke;
    handler[3] = &unk_279D6BCF0;
    objc_copyWeak(&v31, &location);
    notify_register_dispatch("com.apple.backboard.proximity.changed", &v9->_proximityNotificationToken, v25, handler);

    softBKSHIDServicesRequestProximityDetectionMode(3);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __70__TVLRGBColorDetector_initWithThresholdsForHue_saturation_brightness___block_invoke_5;
    v28[3] = &unk_279D6BCF0;
    objc_copyWeak(&v29, &location);
    notify_register_dispatch("com.apple.backboardd.backlight.changed", &v9->_backlightNotificationToken, MEMORY[0x277D85CD0], v28);

    objc_destroyWeak(&v29);
    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __70__TVLRGBColorDetector_initWithThresholdsForHue_saturation_brightness___block_invoke(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    state64 = 0;
    notify_get_state(a2, &state64);
    if (_TVLLogDefault_onceToken_1 != -1)
    {
      __70__TVLRGBColorDetector_initWithThresholdsForHue_saturation_brightness___block_invoke_cold_1();
    }

    v4 = _TVLLogDefault_log_1;
    if (os_log_type_enabled(_TVLLogDefault_log_1, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v8 = state64;
      _os_log_impl(&dword_26CD78000, v4, OS_LOG_TYPE_DEFAULT, "ProximityState changed to %llu", buf, 0xCu);
    }

    [WeakRetained setProximityState:state64 != 0];
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __70__TVLRGBColorDetector_initWithThresholdsForHue_saturation_brightness___block_invoke_5(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    state64 = 0;
    notify_get_state(a2, &state64);
    if (_TVLLogDefault_onceToken_1 != -1)
    {
      __70__TVLRGBColorDetector_initWithThresholdsForHue_saturation_brightness___block_invoke_cold_1();
    }

    v4 = _TVLLogDefault_log_1;
    if (os_log_type_enabled(_TVLLogDefault_log_1, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v8 = (state64 / 100.0);
      _os_log_impl(&dword_26CD78000, v4, OS_LOG_TYPE_DEFAULT, "Backlight changed to %f", buf, 0xCu);
    }

    [WeakRetained setBacklightState:state64 != 0];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  proximityNotificationToken = self->_proximityNotificationToken;
  if (proximityNotificationToken)
  {
    notify_cancel(proximityNotificationToken);
    softBKSHIDServicesRequestProximityDetectionMode(0);
    self->_proximityNotificationToken = 0;
  }

  backlightNotificationToken = self->_backlightNotificationToken;
  if (backlightNotificationToken)
  {
    notify_cancel(backlightNotificationToken);
    self->_backlightNotificationToken = 0;
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CE59C0] object:self->_session];

  v6.receiver = self;
  v6.super_class = TVLRGBColorDetector;
  [(TVLRGBColorDetector *)&v6 dealloc];
}

- (void)setBacklightState:(BOOL)state
{
  if (self->_backlightState != state)
  {
    self->_backlightState = state;
    if (!state || !self->_ignoreBacklightProximityState)
    {
      v7 = v3;
      v8 = v4;
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __41__TVLRGBColorDetector_setBacklightState___block_invoke;
      v5[3] = &unk_279D6BD18;
      v5[4] = self;
      stateCopy = state;
      dispatch_async(MEMORY[0x277D85CD0], v5);
    }
  }
}

void __41__TVLRGBColorDetector_setBacklightState___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 colorDetector:*(a1 + 32) backlightStateChanged:*(a1 + 40)];
}

- (void)endDetection
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__TVLRGBColorDetector_endDetection__block_invoke;
  block[3] = &unk_279D6BD40;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __35__TVLRGBColorDetector_endDetection__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _stopDetection];
  v2 = [*(a1 + 32) motionManager];
  [v2 stopDeviceMotionUpdates];
}

- (void)tearDown
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__TVLRGBColorDetector_tearDown__block_invoke;
  block[3] = &unk_279D6BD40;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __31__TVLRGBColorDetector_tearDown__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _stopDetection];
  [*(a1 + 32) setSession:0];
  v2 = *(a1 + 32);

  return [v2 setMotionManager:0];
}

- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = [(TVLRGBColorDetector *)self _averageColorForSampleBuffer:buffer];
  v7 = v6;
  if (v6 && (self->_proximityState && !self->_backlightState || self->_ignoreBacklightProximityState))
  {
    v35 = 0.0;
    v36 = 0.0;
    v33 = 0;
    v34 = 0.0;
    [v6 getHue:&v36 saturation:&v35 brightness:&v34 alpha:&v33];
    hueComponents = self->_hueComponents;
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:v36];
    [(NSMutableArray *)hueComponents addObject:v9];

    saturationComponents = self->_saturationComponents;
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:v35];
    [(NSMutableArray *)saturationComponents addObject:v11];

    brightnessComponents = self->_brightnessComponents;
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:v34];
    [(NSMutableArray *)brightnessComponents addObject:v13];

    if ([(NSMutableArray *)self->_hueComponents count]== self->_rollingAverageForFrames)
    {
      v14 = [(NSMutableArray *)self->_hueComponents valueForKeyPath:@"@avg.self"];
      v15 = [(NSMutableArray *)self->_saturationComponents valueForKeyPath:@"@avg.self"];
      v16 = [(NSMutableArray *)self->_brightnessComponents valueForKeyPath:@"@avg.self"];
      [v14 floatValue];
      v18 = (v17 * 360.0);
      [v15 floatValue];
      v20 = (v19 * 100.0);
      [v16 floatValue];
      v22 = (v21 * 100.0);
      [(TVLRGBColorDetector *)self _pctChange:self->_hueThreshhold new:v18 max:360.0];
      v24 = v23;
      [(TVLRGBColorDetector *)self _pctChange:self->_saturationThreshhold new:v20 max:100.0];
      v26 = v25;
      [(TVLRGBColorDetector *)self _pctChange:self->_brightnessThreshhold new:v22 max:100.0];
      v28 = v27;
      if (_TVLLogDefault_onceToken_1 != -1)
      {
        __70__TVLRGBColorDetector_initWithThresholdsForHue_saturation_brightness___block_invoke_cold_1();
      }

      v29 = _TVLLogDefault_log_1;
      if (os_log_type_enabled(_TVLLogDefault_log_1, OS_LOG_TYPE_INFO))
      {
        *buf = 134219264;
        v38 = v18;
        v39 = 2048;
        v40 = v20;
        v41 = 2048;
        v42 = v22;
        v43 = 2048;
        v44 = v24;
        v45 = 2048;
        v46 = v26;
        v47 = 2048;
        v48 = v28;
        _os_log_impl(&dword_26CD78000, v29, OS_LOG_TYPE_INFO, "Detected: H:%.0f S:%.0f B:%.0f Delta: H:%.0f S:%.0f B:%.0f", buf, 0x3Eu);
      }

      v30 = [(NSMutableArray *)self->_hueComponents count]>> 1;
      [(NSMutableArray *)self->_hueComponents removeObjectsInRange:0, v30];
      [(NSMutableArray *)self->_saturationComponents removeObjectsInRange:0, v30];
      [(NSMutableArray *)self->_brightnessComponents removeObjectsInRange:0, v30];
      if (fabs(v24) <= self->_hueErrorMarginPercent && fabs(v26) <= self->_saturationErrorMarginPercent && fabs(v28) <= self->_brightnessErrorMarginPercent)
      {
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __74__TVLRGBColorDetector_captureOutput_didOutputSampleBuffer_fromConnection___block_invoke;
        v32[3] = &unk_279D6BD68;
        *&v32[5] = v18;
        *&v32[6] = v20;
        *&v32[7] = v22;
        v32[4] = self;
        dispatch_async(MEMORY[0x277D85CD0], v32);
      }
    }
  }

  else
  {
    [(TVLRGBColorDetector *)self _resetRollingAverage];
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __74__TVLRGBColorDetector_captureOutput_didOutputSampleBuffer_fromConnection___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277D75348] colorWithHue:*(a1 + 40) / 360.0 saturation:*(a1 + 48) / 100.0 brightness:*(a1 + 56) / 100.0 alpha:1.0];
  v2 = [*(a1 + 32) delegate];
  [v2 colorDetector:*(a1 + 32) metThresholdConditionsWithColor:v3];
}

- (id)_averageColorForSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  v30[2] = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBF758]) initWithCVPixelBuffer:CMSampleBufferGetImageBuffer(buffer)];
  [v3 extent];
  v8 = [objc_alloc(MEMORY[0x277CBF788]) initWithX:v4 Y:v5 Z:v6 W:v7];
  v9 = MEMORY[0x277CBF750];
  v10 = *MEMORY[0x277CBFAE8];
  v29[0] = *MEMORY[0x277CBFAF0];
  v29[1] = v10;
  v30[0] = v3;
  v30[1] = v8;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
  v12 = [v9 filterWithName:@"CIAreaAverage" withInputParameters:v11];

  outputImage = [v12 outputImage];
  v14 = outputImage;
  v15 = 0;
  if (v12 && outputImage)
  {
    v16 = malloc_type_calloc(4uLL, 1uLL, 0x100004077774924uLL);
    v17 = MEMORY[0x277CBF740];
    v27 = *MEMORY[0x277CBF948];
    null = [MEMORY[0x277CBEB68] null];
    v28 = null;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v20 = [v17 contextWithOptions:v19];

    [v20 render:v14 toBitmap:v16 rowBytes:4 bounds:*MEMORY[0x277CBF970] format:0 colorSpace:{0.0, 0.0, 1.0, 1.0}];
    LOBYTE(v21) = v16[2];
    LOBYTE(v22) = v16[1];
    LOBYTE(v23) = *v16;
    LOBYTE(v24) = v16[3];
    v15 = [MEMORY[0x277D75348] colorWithRed:v21 / 255.0 green:v22 / 255.0 blue:v23 / 255.0 alpha:v24 / 255.0];
    free(v16);
  }

  v25 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)_prepareForDetection
{
  if (self->_useMotionDetection && [(CMMotionManager *)self->_motionManager isDeviceMotionAvailable])
  {
    objc_initWeak(&location, self);
    [(CMMotionManager *)self->_motionManager setDeviceMotionUpdateInterval:0.1];
    motionManager = self->_motionManager;
    accelerometerQueue = self->_accelerometerQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __43__TVLRGBColorDetector__prepareForDetection__block_invoke;
    v6[3] = &unk_279D6BD90;
    objc_copyWeak(&v7, &location);
    [(CMMotionManager *)motionManager startDeviceMotionUpdatesToQueue:accelerometerQueue withHandler:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__TVLRGBColorDetector__prepareForDetection__block_invoke_3;
    block[3] = &unk_279D6BD40;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __43__TVLRGBColorDetector__prepareForDetection__block_invoke(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    [v3 gravity];
    v7 = v6;
    v9 = v8;
    v11 = fabs(fabs(atan2(v10, v6)) + -3.14159265) * 180.0;
    v12 = fabs(fabs(atan2(v9, v7)) + -3.14159265) * 180.0;
    [v5 pitchMargin];
    v14 = v13;
    [v5 yawMargin];
    v16 = v15;
    [v3 userAcceleration];
    v20 = v17 * v17 + v18 * v18 + v19 * v19;
    [v5 maximumMotion];
    v22 = v21;
    if (_TVLLogDefault_onceToken_1 != -1)
    {
      __43__TVLRGBColorDetector__prepareForDetection__block_invoke_cold_1();
    }

    v23 = v11 / 3.14159265;
    v24 = v12 / 3.14159265;
    v25 = _TVLLogDefault_log_1;
    v26 = sqrt(v20);
    if (os_log_type_enabled(_TVLLogDefault_log_1, OS_LOG_TYPE_INFO))
    {
      v27 = v25;
      *buf = 67110656;
      v38 = v24 <= v14;
      v39 = 2048;
      v40 = v12 / 3.14159265;
      v41 = 1024;
      v42 = v23 <= v16;
      v43 = 2048;
      v44 = v23;
      v45 = 1024;
      v46 = v26 <= v22;
      v47 = 2048;
      v48 = v26;
      v49 = 2048;
      v50 = [v5 noMotionDuration];
      _os_log_impl(&dword_26CD78000, v27, OS_LOG_TYPE_INFO, "Motion: P(%d):%f Y(%d):%f M(%d):%f, frames:%lu", buf, 0x3Cu);
    }

    if (v24 > v14 || v23 > v16 || v26 > v22)
    {
      [v5 setNoMotionDuration:0];
      v30 = [v5 delegate];
      [v30 colorDetector:v5 movementDetected:v26];

      v31 = v35;
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v32 = __43__TVLRGBColorDetector__prepareForDetection__block_invoke_2;
LABEL_17:
      v31[2] = v32;
      v31[3] = &unk_279D6BD40;
      v31[4] = v5;
      dispatch_async(MEMORY[0x277D85CD0], v31);
      goto LABEL_18;
    }

    [v5 setNoMotionDuration:{objc_msgSend(v5, "noMotionDuration") + 1}];
    v33 = [v5 noMotionDuration];
    if (v33 >= [v5 rollingAverageForFrames])
    {
      v31 = block;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      v32 = __43__TVLRGBColorDetector__prepareForDetection__block_invoke_22;
      goto LABEL_17;
    }
  }

LABEL_18:

  v34 = *MEMORY[0x277D85DE8];
}

- (void)_setupCaptureSession
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_26CD78000, a2, OS_LOG_TYPE_ERROR, "An error occured. %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)captureSessionRuntimeErrorDidOccur:(id)occur
{
  userInfo = [occur userInfo];
  v4 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CE5940]];

  if (_TVLLogDefault_onceToken_1 != -1)
  {
    __43__TVLRGBColorDetector__prepareForDetection__block_invoke_cold_1();
  }

  v5 = _TVLLogDefault_log_1;
  if (os_log_type_enabled(_TVLLogDefault_log_1, OS_LOG_TYPE_ERROR))
  {
    [(TVLRGBColorDetector *)v4 captureSessionRuntimeErrorDidOccur:v5];
  }
}

- (void)_startDetection
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (![(AVCaptureSession *)self->_session isRunning])
  {
    session = self->_session;

    [(AVCaptureSession *)session startRunning];
  }
}

- (void)_stopDetection
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if ([(AVCaptureSession *)self->_session isRunning])
  {
    [(AVCaptureSession *)self->_session stopRunning];

    [(TVLRGBColorDetector *)self _resetRollingAverage];
  }
}

- (void)_resetRollingAverage
{
  if ([(NSMutableArray *)self->_hueComponents count])
  {
    [(NSMutableArray *)self->_hueComponents removeAllObjects];
    [(NSMutableArray *)self->_saturationComponents removeAllObjects];
    brightnessComponents = self->_brightnessComponents;

    [(NSMutableArray *)brightnessComponents removeAllObjects];
  }
}

- (TVLRGBColorDetectorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)captureSessionRuntimeErrorDidOccur:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_26CD78000, a2, OS_LOG_TYPE_ERROR, "captureSessionRuntimeErrorDidOccur %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end
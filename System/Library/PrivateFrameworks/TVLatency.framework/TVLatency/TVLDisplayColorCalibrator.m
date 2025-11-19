@interface TVLDisplayColorCalibrator
- (TVLDisplayColorCalibrator)initWithMessageSession:(id)a3;
- (void)_initWithMessageSession:(id)a3;
- (void)_invalidateWithError:(id)a3;
- (void)_postProgressEvent:(unint64_t)a3 withInfo:(id)a4;
- (void)_respondAndInvalidateWithError:(id)a3 responseHandler:(id)a4;
- (void)_sendMessage:(id)a3 withResponse:(id)a4;
- (void)_startPositioning;
- (void)_startReadings;
- (void)_tearDown;
- (void)activate;
- (void)calibrate;
- (void)colorDetector:(id)a3 backlightStateChanged:(BOOL)a4;
- (void)colorDetector:(id)a3 metThresholdConditionsWithColor:(id)a4;
- (void)colorDetector:(id)a3 movementDetected:(double)a4;
@end

@implementation TVLDisplayColorCalibrator

- (TVLDisplayColorCalibrator)initWithMessageSession:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = TVLDisplayColorCalibrator;
  v5 = [(TVLDisplayColorCalibrator *)&v14 init];
  v6 = v5;
  if (v5)
  {
    v5->_role = 1;
    detectorTarget = v5->_detectorTarget;
    v5->_state = 0;
    v5->_detectorTarget = &unk_287E0EA48;

    detectorMargin = v6->_detectorMargin;
    v6->_detectorMargin = &unk_287E0EA60;

    pitchMargin = v6->_pitchMargin;
    v6->_pitchMargin = &unk_287E0EA78;

    yawMargin = v6->_yawMargin;
    v6->_yawMargin = &unk_287E0EA78;

    maximumMotion = v6->_maximumMotion;
    v6->_maximumMotion = &unk_287E0EA88;

    stationaryFrames = v6->_stationaryFrames;
    v6->_stationaryFrames = &unk_287E0EA18;

    v6->_useSlowALS = 0;
    [(TVLDisplayColorCalibrator *)v6 _initWithMessageSession:v4];
  }

  return v6;
}

- (void)_initWithMessageSession:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277D02880]) initWithTemplate:v4];
  [(TVLDisplayColorCalibrator *)self setSession:v5];

  objc_initWeak(&location, self);
  v6 = [(TVLDisplayColorCalibrator *)self session];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__TVLDisplayColorCalibrator__initWithMessageSession___block_invoke;
  v7[3] = &unk_279D6BBD8;
  objc_copyWeak(&v8, &location);
  [v6 registerRequestID:@"com.apple.tvlatency" options:0 handler:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __53__TVLDisplayColorCalibrator__initWithMessageSession___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (_TVLLogDefault_onceToken_4 != -1)
    {
      __53__TVLDisplayColorCalibrator__initWithMessageSession___block_invoke_cold_1();
    }

    v9 = _TVLLogDefault_log_4;
    if (os_log_type_enabled(_TVLLogDefault_log_4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v39 = v6;
      _os_log_impl(&dword_26CD78000, v9, OS_LOG_TYPE_DEFAULT, "Incoming Message: %{public}@", buf, 0xCu);
    }

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __53__TVLDisplayColorCalibrator__initWithMessageSession___block_invoke_21;
    v31[3] = &unk_279D6BBB0;
    v10 = v6;
    v32 = v10;
    v33 = v7;
    v11 = MEMORY[0x26D6AEC20](v31);
    v12 = [v10 objectForKey:@"MESSAGE"];
    if ([v12 isEqualToString:@"READ_ALS"])
    {
      if ([WeakRetained state] == 2)
      {
        v13 = [v10 objectForKey:@"OPTIONS"];
        v14 = [v13 objectForKey:@"NUMBER_OF_READINGS"];
        v15 = [v14 integerValue];

        if (v15 >= 256)
        {
          v16 = 256;
        }

        else
        {
          v16 = v15;
        }

        v17 = [v13 objectForKey:@"SKIP_READINGS"];
        v18 = [v17 integerValue];

        if (v18 >= 256)
        {
          v18 = 256;
        }

        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __53__TVLDisplayColorCalibrator__initWithMessageSession___block_invoke_45;
        v28[3] = &unk_279D6C0B8;
        v30 = v18;
        v28[4] = WeakRetained;
        v29 = v11;
        [TVLALSDataExtractor extract:v18 + v16 ALSReadings:v28];

        goto LABEL_24;
      }

      (v11)[2](v11, 0, 0, &unk_287E0EA98);
    }

    else
    {
      if ([v12 isEqualToString:@"ASK_RETRY"])
      {
        v36 = @"MESSAGE";
        v19 = [MEMORY[0x277CBEB68] null];
        v37 = v19;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        (v11)[2](v11, 0, 0, v20);

        v21 = WeakRetained;
        v22 = 4;
        v23 = 0;
      }

      else
      {
        if (![v12 isEqualToString:@"FINAL"])
        {
          v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TVLatencyErrorDomain" code:1207 userInfo:0];
          [WeakRetained _respondAndInvalidateWithError:v13 responseHandler:v11];
LABEL_24:

          goto LABEL_25;
        }

        v34 = @"MESSAGE";
        v24 = [MEMORY[0x277CBEB68] null];
        v35 = v24;
        v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
        (v11)[2](v11, 0, 0, v25);

        v26 = [v10 objectForKey:@"STATUS"];
        LODWORD(v24) = [v26 BOOLValue];

        if (v24)
        {
          v23 = MEMORY[0x277CBEC10];
        }

        else
        {
          v23 = 0;
        }

        v21 = WeakRetained;
        v22 = 3;
      }

      [v21 _postProgressEvent:v22 withInfo:v23];
    }

LABEL_25:
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __53__TVLDisplayColorCalibrator__initWithMessageSession___block_invoke_21(uint64_t a1, int a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (_TVLLogDefault_onceToken_4 != -1)
  {
    __53__TVLDisplayColorCalibrator__initWithMessageSession___block_invoke_cold_1();
  }

  v9 = _TVLLogDefault_log_4;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    if (a2)
    {
      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:a2 userInfo:0];
    }

    else
    {
      v11 = 0;
    }

    v13 = 138543874;
    v14 = v10;
    v15 = 2114;
    v16 = v8;
    v17 = 2114;
    v18 = v11;
    _os_log_impl(&dword_26CD78000, v9, OS_LOG_TYPE_DEFAULT, "Responding To Message: %{public}@ | Response: %{public}@ | Error: %{public}@", &v13, 0x20u);
    if (a2)
    {
    }
  }

  (*(*(a1 + 40) + 16))();
  v12 = *MEMORY[0x277D85DE8];
}

void __53__TVLDisplayColorCalibrator__initWithMessageSession___block_invoke_45(void *a1, void *a2)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __53__TVLDisplayColorCalibrator__initWithMessageSession___block_invoke_2;
    v13[3] = &unk_279D6C090;
    v5 = a1[6];
    v14 = v4;
    v15 = v5;
    v6 = v4;
    [v3 enumerateObjectsUsingBlock:v13];
    v7 = a1[5];
    v16 = @"ALS_DATA";
    v8 = [v6 copy];
    v17[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    (*(v7 + 16))(v7, 0, 0, v9);
  }

  else
  {
    v10 = a1[4];
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TVLatencyErrorDomain" code:1207 userInfo:0];
    [v10 _respondAndInvalidateWithError:v11 responseHandler:a1[5]];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __53__TVLDisplayColorCalibrator__initWithMessageSession___block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  if (*(a1 + 40) <= a3)
  {
    v4 = *(a1 + 32);
    v5 = [a2 dictionaryRepresentation];
    [v4 addObject:v5];
  }
}

- (void)activate
{
  v2 = [(TVLDisplayColorCalibrator *)self session];
  [v2 activate];
}

- (void)calibrate
{
  if (_TVLLogDefault_onceToken_4 != -1)
  {
    __53__TVLDisplayColorCalibrator__initWithMessageSession___block_invoke_cold_1();
  }

  v3 = _TVLLogDefault_log_4;
  if (os_log_type_enabled(_TVLLogDefault_log_4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_26CD78000, v3, OS_LOG_TYPE_DEFAULT, "TVLDisplayColorCalibrator:calibrate", buf, 2u);
  }

  self->_state = 0;
  [(TVLDisplayColorCalibrator *)self _postProgressEvent:0 withInfo:0];
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (DeviceProductType_onceToken_0 != -1)
  {
    [TVLDisplayColorCalibrator calibrate];
  }

  v5 = DeviceProductType_type_0;
  if (v5)
  {
    [v4 setObject:v5 forKey:@"DEVICE_TYPE"];
  }

  if (OSBuildVersion_onceToken_0 != -1)
  {
    [TVLDisplayColorCalibrator calibrate];
  }

  v6 = OSBuildVersion_build_0;
  if (v6)
  {
    [v4 setObject:v6 forKey:@"DEVICE_BUILD"];
  }

  v7 = +[TVLALSDataExtractor extractALSCalibrationData];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 dictionaryRepresentation];
    [v4 setObject:v9 forKey:@"ALS_CALIBRATION_DATA"];
  }

  objc_initWeak(buf, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __38__TVLDisplayColorCalibrator_calibrate__block_invoke;
  v11[3] = &unk_279D6C108;
  objc_copyWeak(&v13, buf);
  v10 = v4;
  v12 = v10;
  [TVLALSDataExtractor extractALSData:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

void __38__TVLDisplayColorCalibrator_calibrate__block_invoke(uint64_t a1, void *a2)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = [v3 dictionaryRepresentation];
    [v5 setObject:v6 forKey:@"ALS_DATA"];
  }

  v12[0] = @"MESSAGE";
  v12[1] = @"OPTIONS";
  v7 = *(a1 + 32);
  v13[0] = @"DISPLAY_COLOR_CALIBRATION";
  v13[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __38__TVLDisplayColorCalibrator_calibrate__block_invoke_2;
  v10[3] = &unk_279D6BF28;
  objc_copyWeak(&v11, (a1 + 40));
  [WeakRetained _sendMessage:v8 withResponse:v10];

  objc_destroyWeak(&v11);
  v9 = *MEMORY[0x277D85DE8];
}

void __38__TVLDisplayColorCalibrator_calibrate__block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (_TVLLogDefault_onceToken_4 != -1)
    {
      __53__TVLDisplayColorCalibrator__initWithMessageSession___block_invoke_cold_1();
    }

    v5 = _TVLLogDefault_log_4;
    if (os_log_type_enabled(_TVLLogDefault_log_4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v3;
      _os_log_impl(&dword_26CD78000, v5, OS_LOG_TYPE_DEFAULT, "TVLDisplayColorCalibrator:calibrate:response %@", buf, 0xCu);
    }

    if (v3)
    {
      v6 = [v3 objectForKeyedSubscript:@"DETECTOR_TARGET"];
      if ([v6 count] == 3)
      {
        objc_storeStrong(WeakRetained + 7, v6);
      }

      v7 = [v3 objectForKeyedSubscript:@"DETECTOR_MARGIN"];
      if ([v7 count] == 3)
      {
        objc_storeStrong(WeakRetained + 8, v7);
      }

      v8 = [v3 objectForKeyedSubscript:@"PITCH_MARGIN"];
      if (v8)
      {
        objc_storeStrong(WeakRetained + 9, v8);
      }

      v9 = [v3 objectForKeyedSubscript:@"YAW_MARGIN"];
      if (v9)
      {
        objc_storeStrong(WeakRetained + 10, v9);
      }

      v10 = [v3 objectForKeyedSubscript:@"MAXIMUM_MOTION"];
      if (v10)
      {
        objc_storeStrong(WeakRetained + 11, v10);
      }

      v11 = [v3 objectForKeyedSubscript:{@"STATIONARY_FRAMES", v7}];
      if (v11)
      {
        objc_storeStrong(WeakRetained + 12, v11);
      }

      v12 = [v3 objectForKeyedSubscript:@"USE_SLOW_ALS"];
      v13 = v12;
      if (v12)
      {
        *(WeakRetained + 8) = [v12 BOOLValue];
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __38__TVLDisplayColorCalibrator_calibrate__block_invoke_98;
      block[3] = &unk_279D6C0E0;
      objc_copyWeak(&v17, (a1 + 32));
      dispatch_async(MEMORY[0x277D85CD0], block);
      objc_destroyWeak(&v17);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __38__TVLDisplayColorCalibrator_calibrate__block_invoke_98(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _startPositioning];
}

- (void)_startPositioning
{
  if (_TVLLogDefault_onceToken_4 != -1)
  {
    __53__TVLDisplayColorCalibrator__initWithMessageSession___block_invoke_cold_1();
  }

  v3 = _TVLLogDefault_log_4;
  if (os_log_type_enabled(_TVLLogDefault_log_4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26CD78000, v3, OS_LOG_TYPE_DEFAULT, "TVLDisplayColorCalibrator:_startPositioning", buf, 2u);
  }

  self->_state = 1;
  colorDetector = self->_colorDetector;
  if (!colorDetector)
  {
    v5 = [(NSArray *)self->_detectorTarget objectAtIndexedSubscript:0];
    [v5 floatValue];
    v7 = v6;

    v8 = [(NSArray *)self->_detectorTarget objectAtIndexedSubscript:1];
    [v8 floatValue];
    v10 = v9;

    v11 = [(NSArray *)self->_detectorTarget objectAtIndexedSubscript:2];
    [v11 floatValue];
    v13 = v12;

    v14 = [[TVLRGBColorDetector alloc] initWithThresholdsForHue:v7 saturation:v10 brightness:v13];
    v15 = self->_colorDetector;
    self->_colorDetector = v14;

    v16 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    if ([v16 BOOLForKey:@"TVLatencyAutomationMode"])
    {
      if (_TVLLogDefault_onceToken_4 != -1)
      {
        [TVLDisplayColorCalibrator _startPositioning];
      }

      v17 = _TVLLogDefault_log_4;
      if (os_log_type_enabled(_TVLLogDefault_log_4, OS_LOG_TYPE_DEFAULT))
      {
        *v33 = 0;
        _os_log_impl(&dword_26CD78000, v17, OS_LOG_TYPE_DEFAULT, "Ignoring backlight and proximity detection per automation mode flag", v33, 2u);
      }

      [(TVLRGBColorDetector *)self->_colorDetector setIgnoreBacklightProximityState:1];
    }

    v18 = self->_colorDetector;
    v19 = [(NSArray *)self->_detectorMargin objectAtIndexedSubscript:0];
    [v19 floatValue];
    [(TVLRGBColorDetector *)v18 setHueErrorMarginPercent:v20];

    v21 = self->_colorDetector;
    v22 = [(NSArray *)self->_detectorMargin objectAtIndexedSubscript:1];
    [v22 floatValue];
    [(TVLRGBColorDetector *)v21 setSaturationErrorMarginPercent:v23];

    v24 = self->_colorDetector;
    v25 = [(NSArray *)self->_detectorMargin objectAtIndexedSubscript:2];
    [v25 floatValue];
    [(TVLRGBColorDetector *)v24 setBrightnessErrorMarginPercent:v26];

    v27 = self->_colorDetector;
    [(NSNumber *)self->_pitchMargin floatValue];
    [(TVLRGBColorDetector *)v27 setPitchMargin:v28];
    v29 = self->_colorDetector;
    [(NSNumber *)self->_yawMargin floatValue];
    [(TVLRGBColorDetector *)v29 setYawMargin:v30];
    v31 = self->_colorDetector;
    [(NSNumber *)self->_maximumMotion floatValue];
    [(TVLRGBColorDetector *)v31 setMaximumMotion:v32];
    [(TVLRGBColorDetector *)self->_colorDetector setRollingAverageForFrames:[(NSNumber *)self->_stationaryFrames unsignedIntegerValue]];
    [(TVLRGBColorDetector *)self->_colorDetector setDelegate:self];

    colorDetector = self->_colorDetector;
  }

  [(TVLRGBColorDetector *)colorDetector beginDetection];
}

- (void)_startReadings
{
  v11[2] = *MEMORY[0x277D85DE8];
  if (_TVLLogDefault_onceToken_4 != -1)
  {
    __53__TVLDisplayColorCalibrator__initWithMessageSession___block_invoke_cold_1();
  }

  v3 = _TVLLogDefault_log_4;
  if (os_log_type_enabled(_TVLLogDefault_log_4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_26CD78000, v3, OS_LOG_TYPE_DEFAULT, "TVLDisplayColorCalibrator:_startReadings", &buf, 2u);
  }

  self->_state = 2;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  objc_initWeak(&buf, self);
  v10[0] = @"MESSAGE";
  v10[1] = @"OPTIONS";
  v11[0] = @"READY";
  v11[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__TVLDisplayColorCalibrator__startReadings__block_invoke;
  v7[3] = &unk_279D6BF28;
  objc_copyWeak(&v8, &buf);
  [(TVLDisplayColorCalibrator *)self _sendMessage:v5 withResponse:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&buf);

  v6 = *MEMORY[0x277D85DE8];
}

void __43__TVLDisplayColorCalibrator__startReadings__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
}

- (void)_invalidateWithError:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(TVLDisplayColorCalibrator *)self _tearDown];
  if (v4)
  {
    v7 = @"TVLDisplayColorCalibratorProgressEventErrorObjectKey";
    v8[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [(TVLDisplayColorCalibrator *)self _postProgressEvent:2 withInfo:v5];
  }

  else
  {
    [(TVLDisplayColorCalibrator *)self _postProgressEvent:3 withInfo:0];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_tearDown
{
  [(TVLRGBColorDetector *)self->_colorDetector tearDown];
  colorDetector = self->_colorDetector;
  self->_colorDetector = 0;
}

- (void)_sendMessage:(id)a3 withResponse:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (_TVLLogDefault_onceToken_4 != -1)
  {
    __53__TVLDisplayColorCalibrator__initWithMessageSession___block_invoke_cold_1();
  }

  v8 = _TVLLogDefault_log_4;
  if (os_log_type_enabled(_TVLLogDefault_log_4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = v6;
    _os_log_impl(&dword_26CD78000, v8, OS_LOG_TYPE_DEFAULT, "Outgoing Message: %{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v9 = [(TVLDisplayColorCalibrator *)self session];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__TVLDisplayColorCalibrator__sendMessage_withResponse___block_invoke;
  v13[3] = &unk_279D6BF50;
  objc_copyWeak(&v16, buf);
  v10 = v6;
  v14 = v10;
  v11 = v7;
  v15 = v11;
  [v9 sendRequestID:@"com.apple.tvlatency" options:0 request:v10 responseHandler:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);

  v12 = *MEMORY[0x277D85DE8];
}

void __55__TVLDisplayColorCalibrator__sendMessage_withResponse___block_invoke(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (_TVLLogDefault_onceToken_4 != -1)
    {
      __53__TVLDisplayColorCalibrator__initWithMessageSession___block_invoke_cold_1();
    }

    v8 = _TVLLogDefault_log_4;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      if (a2)
      {
        v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:a2 userInfo:0];
      }

      else
      {
        v10 = 0;
      }

      *buf = 138543874;
      v27 = v9;
      v28 = 2114;
      v29 = v6;
      v30 = 2114;
      v31 = v10;
      _os_log_impl(&dword_26CD78000, v8, OS_LOG_TYPE_DEFAULT, "Responding To Message: %{public}@ | Response: %{public}@ | Error: %{public}@", buf, 0x20u);
      if (a2)
      {
      }
    }

    if (a2)
    {
      v11 = *(a1 + 40);
      if (v11)
      {
        (*(v11 + 16))(v11, 0);
      }

      v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:a2 userInfo:0];
      [WeakRetained _invalidateWithError:v12];
LABEL_14:

      goto LABEL_15;
    }

    v14 = [MEMORY[0x277CBEB68] null];
    v25 = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    if ([v6 isEqualToDictionary:v15])
    {
    }

    else
    {
      v16 = [v6 objectForKey:@"MESSAGE"];
      v17 = [v16 isEqualToString:@"FAILURE"];

      if (v17)
      {
        v18 = *(a1 + 40);
        if (v18)
        {
          (*(v18 + 16))(v18, 0);
        }

        v12 = [v6 objectForKey:@"OPTIONS"];
        v19 = [v12 objectForKey:@"ERROR_DOMAIN"];
        v20 = [v12 objectForKey:@"ERROR_CODE"];
        v21 = [v20 integerValue];

        v22 = [MEMORY[0x277CCA9B8] errorWithDomain:v19 code:v21 userInfo:0];
        [WeakRetained _invalidateWithError:v22];

        goto LABEL_14;
      }
    }

    v23 = *(a1 + 40);
    if (v23)
    {
      (*(v23 + 16))(v23, v6);
    }
  }

LABEL_15:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_respondAndInvalidateWithError:(id)a3 responseHandler:(id)a4
{
  v18[2] = *MEMORY[0x277D85DE8];
  v17[0] = @"MESSAGE";
  v17[1] = @"OPTIONS";
  v18[0] = @"FAILURE";
  v15[0] = @"ERROR_CODE";
  v7 = MEMORY[0x277CCABB0];
  v8 = a4;
  v9 = a3;
  v10 = [v7 numberWithInteger:{objc_msgSend(v9, "code")}];
  v15[1] = @"ERROR_DOMAIN";
  v16[0] = v10;
  v11 = [v9 domain];
  v16[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v18[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  (*(a4 + 2))(v8, 0, 0, v13);

  [(TVLDisplayColorCalibrator *)self _invalidateWithError:v9];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)_postProgressEvent:(unint64_t)a3 withInfo:(id)a4
{
  v6 = a4;
  if (a3 == 4 || a3 == 2)
  {
    v7 = objc_alloc_init(MEMORY[0x277D757B8]);
    [v7 prepare];
  }

  else
  {
    v7 = 0;
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__TVLDisplayColorCalibrator__postProgressEvent_withInfo___block_invoke;
  v10[3] = &unk_279D6C130;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v13 = a3;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v10);
}

uint64_t __57__TVLDisplayColorCalibrator__postProgressEvent_withInfo___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  if (_TVLLogDefault_onceToken_4 != -1)
  {
    __53__TVLDisplayColorCalibrator__initWithMessageSession___block_invoke_cold_1();
  }

  v2 = _TVLLogDefault_log_4;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) progressEventHandler];
    v4 = MEMORY[0x26D6AEC20]();
    v5 = v4;
    v6 = *(a1 + 56) - 1;
    if (v6 > 3)
    {
      v7 = "Start";
    }

    else
    {
      v7 = off_279D6C198[v6];
    }

    v8 = *(a1 + 40);
    v18 = 138412802;
    v19 = v4;
    v20 = 2082;
    v21 = v7;
    v22 = 2114;
    v23 = v8;
    _os_log_impl(&dword_26CD78000, v2, OS_LOG_TYPE_DEFAULT, "Calling Progress Event Handler: %@ with Event: %{public}s | Info %{public}@", &v18, 0x20u);
  }

  v9 = [*(a1 + 32) progressEventHandler];

  if (v9)
  {
    v10 = [*(a1 + 32) progressEventHandler];
    v10[2](v10, *(a1 + 56), *(a1 + 40));

    if (*(a1 + 56) == 3)
    {
      if (_TVLLogDefault_onceToken_4 != -1)
      {
        [TVLDisplayColorCalibrator _startPositioning];
      }

      v11 = _TVLLogDefault_log_4;
      if (os_log_type_enabled(_TVLLogDefault_log_4, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 32);
        v13 = v11;
        v14 = [v12 progressEventHandler];
        v15 = MEMORY[0x26D6AEC20]();
        v18 = 138412290;
        v19 = v15;
        _os_log_impl(&dword_26CD78000, v13, OS_LOG_TYPE_DEFAULT, "Deleting Progress Event Handler: %@ | This should not be invoked again!", &v18, 0xCu);
      }

      [*(a1 + 32) setProgressEventHandler:0];
    }
  }

  result = [*(a1 + 48) notificationOccurred:2];
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)colorDetector:(id)a3 metThresholdConditionsWithColor:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  if (self->_state == 1)
  {
    v5 = MEMORY[0x277D757B8];
    v6 = a4;
    v7 = objc_alloc_init(v5);
    [v7 prepare];
    v16 = 0.0;
    v17 = 0.0;
    v14 = 0;
    v15 = 0.0;
    [v6 getHue:&v17 saturation:&v16 brightness:&v15 alpha:&v14];

    if (_TVLLogDefault_onceToken_4 != -1)
    {
      [TVLDisplayColorCalibrator _startPositioning];
    }

    v8 = _TVLLogDefault_log_4;
    if (os_log_type_enabled(_TVLLogDefault_log_4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      v19 = v17 * 360.0;
      v20 = 2048;
      v21 = v16 * 100.0;
      v22 = 2048;
      v23 = v15 * 100.0;
      _os_log_impl(&dword_26CD78000, v8, OS_LOG_TYPE_DEFAULT, "TVLRGBColorDetector:metThresholdConditionsWithColor H:%.0f S:%.0f B:%.0f", buf, 0x20u);
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __75__TVLDisplayColorCalibrator_colorDetector_metThresholdConditionsWithColor___block_invoke;
    v11[3] = &unk_279D6C158;
    v12 = v7;
    v13 = self;
    v9 = v7;
    dispatch_async(MEMORY[0x277D85CD0], v11);
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __75__TVLDisplayColorCalibrator_colorDetector_metThresholdConditionsWithColor___block_invoke(uint64_t a1)
{
  [*(a1 + 32) notificationOccurred:0];
  v2 = *(a1 + 40);

  return [v2 _startReadings];
}

- (void)colorDetector:(id)a3 backlightStateChanged:(BOOL)a4
{
  v4 = a4;
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v4)
  {
    if (self->_state == 2)
    {
      if (_TVLLogDefault_onceToken_4 != -1)
      {
        __53__TVLDisplayColorCalibrator__initWithMessageSession___block_invoke_cold_1();
      }

      v7 = _TVLLogDefault_log_4;
      if (os_log_type_enabled(_TVLLogDefault_log_4, OS_LOG_TYPE_DEFAULT))
      {
        buf = 0x104000100;
        _os_log_impl(&dword_26CD78000, v7, OS_LOG_TYPE_DEFAULT, "TVLDisplayColorCalibrator:backlightStateChanged %d during TVLDisplayColorCalibratorStateReadings", &buf, 8u);
      }

      self->_state = 0;
      [v6 endDetection];
      objc_initWeak(&buf, self);
      v8 = dispatch_time(0, 1000000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __65__TVLDisplayColorCalibrator_colorDetector_backlightStateChanged___block_invoke;
      block[3] = &unk_279D6C0E0;
      objc_copyWeak(&v15, &buf);
      dispatch_after(v8, MEMORY[0x277D85CD0], block);
      objc_destroyWeak(&v15);
      objc_destroyWeak(&buf);
    }
  }

  else
  {
    useSlowALS = self->_useSlowALS;
    v10 = dispatch_time(0, 200000000);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __65__TVLDisplayColorCalibrator_colorDetector_backlightStateChanged___block_invoke_2;
    v12[3] = &__block_descriptor_33_e5_v8__0l;
    v13 = useSlowALS;
    dispatch_after(v10, MEMORY[0x277D85CD0], v12);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __65__TVLDisplayColorCalibrator_colorDetector_backlightStateChanged___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _startPositioning];
}

void __65__TVLDisplayColorCalibrator_colorDetector_backlightStateChanged___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (_TVLLogDefault_onceToken_4 != -1)
  {
    __53__TVLDisplayColorCalibrator__initWithMessageSession___block_invoke_cold_1();
  }

  v2 = _TVLLogDefault_log_4;
  if (os_log_type_enabled(_TVLLogDefault_log_4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 32))
    {
      v3 = @"slow";
    }

    else
    {
      v3 = @"fast";
    }

    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_26CD78000, v2, OS_LOG_TYPE_DEFAULT, "Activate ALS in %{public}@ mode", &v6, 0xCu);
  }

  v4 = objc_alloc_init(MEMORY[0x277CFD390]);
  [v4 setProperty:MEMORY[0x277CBEC38] forKey:@"ActivateALS"];
  if (*(a1 + 32) == 1)
  {
    [v4 setProperty:MEMORY[0x277CBEC38] forKey:@"UserInteractedWithUI"];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)colorDetector:(id)a3 movementDetected:(double)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (self->_state == 2)
  {
    if (_TVLLogDefault_onceToken_4 != -1)
    {
      __53__TVLDisplayColorCalibrator__initWithMessageSession___block_invoke_cold_1();
    }

    v7 = _TVLLogDefault_log_4;
    if (os_log_type_enabled(_TVLLogDefault_log_4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v13 = a4;
      _os_log_impl(&dword_26CD78000, v7, OS_LOG_TYPE_DEFAULT, "TVLDisplayColorCalibrator:movementDetected %f during TVLDisplayColorCalibratorStateReadings", buf, 0xCu);
    }

    self->_state = 0;
    [v6 endDetection];
    objc_initWeak(buf, self);
    v8 = dispatch_time(0, 1000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__TVLDisplayColorCalibrator_colorDetector_movementDetected___block_invoke;
    block[3] = &unk_279D6C0E0;
    objc_copyWeak(&v11, buf);
    dispatch_after(v8, MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __60__TVLDisplayColorCalibrator_colorDetector_movementDetected___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _startPositioning];
}

@end
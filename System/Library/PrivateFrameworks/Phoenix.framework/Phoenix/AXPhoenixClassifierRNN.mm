@interface AXPhoenixClassifierRNN
- (AXPhoenixClassifierRNN)initWithDelegate:(id)delegate modelURL:(id)l configuration:(id)configuration;
- (id)_initializeModelFromURL:(id)l outError:(id *)error;
- (id)_multiArrayInputForClassifierWithError:(id *)error;
- (id)_windowData:(BOOL)data;
- (unint64_t)_countThresholdForGesturePrediction:(id)prediction;
- (void)_evaluateTapData;
- (void)_handleAccelerometerData:(id)data withTimestamp:(double)timestamp;
- (void)_logWindowData:(id)data doubleTap:(BOOL)tap tapData:(id)tapData;
- (void)_updateAccelerationData;
- (void)handleAccelerometerData:(id)data withTimestamp:(double)timestamp;
- (void)reset;
- (void)setPolicyOption:(int)option;
- (void)setTapSpeed:(float)speed;
@end

@implementation AXPhoenixClassifierRNN

- (AXPhoenixClassifierRNN)initWithDelegate:(id)delegate modelURL:(id)l configuration:(id)configuration
{
  v47 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, delegate);
  v40 = 0;
  objc_storeStrong(&v40, l);
  v39 = 0;
  objc_storeStrong(&v39, configuration);
  v5 = selfCopy;
  selfCopy = 0;
  v38.receiver = v5;
  v38.super_class = AXPhoenixClassifierRNN;
  selfCopy = [(AXPhoenixClassifierRNN *)&v38 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (!selfCopy)
  {
    goto LABEL_12;
  }

  objc_storeStrong(selfCopy + 1, location[0]);
  objc_storeStrong(selfCopy + 2, v39);
  v37 = 3;
  accelerometerSampleRateInHz = [*(selfCopy + 2) accelerometerSampleRateInHz];
  *(selfCopy + 17) = accelerometerSampleRateInHz / 3;
  *(selfCopy + 4) = *(selfCopy + 17);
  v36 = AXLogBackTap();
  v35 = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(selfCopy + 2), "accelerometerSampleRateInHz")}];
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v37];
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(selfCopy + 17)];
    __os_log_helper_16_2_4_8_32_8_64_8_64_8_64(v46, "[AXPhoenixClassifierRNN initWithDelegate:modelURL:configuration:]", v26, v25, v24);
    _os_log_impl(&dword_25E4AC000, v36, v35, "[PHOENIX] %s Loop frequency = %@ / %@ = %@", v46, 0x2Au);
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
  }

  objc_storeStrong(&v36, 0);
  v34 = 0;
  v33 = 0;
  v23 = [selfCopy _initializeModelFromURL:v40 outError:&v33];
  objc_storeStrong(&v34, v33);
  v7 = *(selfCopy + 3);
  *(selfCopy + 3) = v23;
  MEMORY[0x277D82BD8](v7);
  if (*(selfCopy + 3))
  {
    *(selfCopy + 14) = 3;
    v20 = [AccelerometerBuffer alloc];
    v21 = -[AccelerometerBuffer initWithCapacity:accelerometerSampleRateInHz:](v20, "initWithCapacity:accelerometerSampleRateInHz:", 400, [v39 accelerometerSampleRateInHz]);
    [*(selfCopy + 24) setAccelerometerBuffer:?];
    MEMORY[0x277D82BD8](v21);
    v8 = [PredictionsBuffer alloc];
    v9 = [(PredictionsBuffer *)v8 initWithConfiguration:v39];
    v10 = *(selfCopy + 5);
    *(selfCopy + 5) = v9;
    MEMORY[0x277D82BD8](v10);
    accelerometerSampleRateInHz2 = [*(selfCopy + 2) accelerometerSampleRateInHz];
    minDurationBetweenTriggersInSeconds = [*(selfCopy + 2) minDurationBetweenTriggersInSeconds];
    *(selfCopy + 18) = accelerometerSampleRateInHz2 * minDurationBetweenTriggersInSeconds;
    v29 = AXLogBackTap();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(selfCopy + 2), "accelerometerSampleRateInHz")}];
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(selfCopy + 2), "minDurationBetweenTriggersInSeconds")}];
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(selfCopy + 18)];
      __os_log_helper_16_2_4_8_32_8_64_8_64_8_64(v44, "[AXPhoenixClassifierRNN initWithDelegate:modelURL:configuration:]", v19, v18, v17);
      _os_log_impl(&dword_25E4AC000, v29, OS_LOG_TYPE_INFO, "[PHOENIX] %s Minimum samples between triggers = %@ * %@ = %@", v44, 0x2Au);
      MEMORY[0x277D82BD8](v17);
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v19);
    }

    objc_storeStrong(&v29, 0);
    v12 = dispatch_queue_create("com.apple.accessibility.phoenixclassifier", 0);
    v13 = *(selfCopy + 9);
    *(selfCopy + 9) = v12;
    MEMORY[0x277D82BD8](v13);
    *(selfCopy + 16) = 0;
    *(selfCopy + 43) = 0;
    *(selfCopy + 20) = 0;
    v14 = objc_alloc_init(AXPhoenixDataLogger);
    v15 = *(selfCopy + 22);
    *(selfCopy + 22) = v14;
    MEMORY[0x277D82BD8](v15);
    v30 = 0;
  }

  else
  {
    oslog = AXLogBackTap();
    v31 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_64(v45, "[AXPhoenixClassifierRNN initWithDelegate:modelURL:configuration:]", v40);
      _os_log_error_impl(&dword_25E4AC000, oslog, v31, "[PHOENIX] %s Error loading model from url %@", v45, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    v43 = 0;
    v30 = 1;
  }

  objc_storeStrong(&v34, 0);
  if (!v30)
  {
LABEL_12:
    v43 = MEMORY[0x277D82BE0](selfCopy);
    v30 = 1;
  }

  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  *MEMORY[0x277D85DE8];
  return v43;
}

- (void)setPolicyOption:(int)option
{
  v13 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v10 = a2;
  optionCopy = option;
  self->_policyOption = option;
  oslog = AXLogBackTap();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    v4 = type;
    v5 = PolicyOptionToString(selfCopy->_policyOption);
    v6 = MEMORY[0x277D82BE0](v5);
    __os_log_helper_16_2_2_8_32_8_64(v12, "[AXPhoenixClassifierRNN setPolicyOption:]", v6);
    _os_log_impl(&dword_25E4AC000, log, v4, "[PHOENIX] %s Setting policy to %@", v12, 0x16u);
    MEMORY[0x277D82BD8](v5);
    objc_storeStrong(&v6, 0);
  }

  objc_storeStrong(&oslog, 0);
  *MEMORY[0x277D85DE8];
}

- (void)handleAccelerometerData:(id)data withTimestamp:(double)timestamp
{
  *&v18 = data.var0;
  *(&v18 + 1) = *&data.var1;
  var2 = data.var2;
  selfCopy = self;
  v16 = a2;
  timestampCopy = timestamp;
  objc_initWeak(&location, self);
  queue = selfCopy->_queue;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __64__AXPhoenixClassifierRNN_handleAccelerometerData_withTimestamp___block_invoke;
  v9 = &unk_279A20708;
  objc_copyWeak(&v10, &location);
  v11 = v18;
  v12 = var2;
  v13 = timestampCopy;
  dispatch_async(queue, &v5);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

uint64_t __64__AXPhoenixClassifierRNN_handleAccelerometerData_withTimestamp___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleAccelerometerData:*(a1 + 40) withTimestamp:{*(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  return MEMORY[0x277D82BD8](WeakRetained);
}

- (void)reset
{
  selfCopy = self;
  location[1] = a2;
  objc_initWeak(location, self);
  queue = selfCopy->_queue;
  v3 = MEMORY[0x277D85DD0];
  v4 = -1073741824;
  v5 = 0;
  v6 = __31__AXPhoenixClassifierRNN_reset__block_invoke;
  v7 = &unk_279A20668;
  objc_copyWeak(&v8, location);
  dispatch_async(queue, &v3);
  objc_destroyWeak(&v8);
  objc_destroyWeak(location);
}

void __31__AXPhoenixClassifierRNN_reset__block_invoke(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  if (location[0])
  {
    *(location[0] + 6) = 0;
    [*(location[0] + 5) reset];
    v2 = [location[0] inputData];
    v1 = [v2 accelerometerBuffer];
    [v1 reset];
    MEMORY[0x277D82BD8](v1);
    MEMORY[0x277D82BD8](v2);
    objc_storeStrong(location[0] + 8, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)setTapSpeed:(float)speed
{
  self->_tapSpeed = speed;
  self->_runFrequency = (self->_tapSpeed * 100.0);
  self->_frameLength = self->_runFrequency;
}

- (id)_initializeModelFromURL:(id)l outError:(id *)error
{
  v59 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  errorCopy = error;
  v49 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:location[0] error:error];
  if (v49)
  {
    v45 = AXLogBackTap();
    v44 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_2_8_32_8_64(v57, "[AXPhoenixClassifierRNN _initializeModelFromURL:outError:]", location[0]);
      _os_log_impl(&dword_25E4AC000, v45, v44, "[PHOENIX] %s Using model from %@", v57, 0x16u);
    }

    objc_storeStrong(&v45, 0);
    objc_storeStrong(&selfCopy->_modelInputName, @"model_input");
    objc_storeStrong(&selfCopy->_modelInputHistory, @"history");
    objc_storeStrong(&selfCopy->_modelOutputName, @"output");
    objc_storeStrong(&selfCopy->_modelOutputNewHistory, @"updated_history");
    v4 = objc_alloc_init(AXPhoenixClassifierRNNModelInputData);
    inputData = selfCopy->_inputData;
    selfCopy->_inputData = v4;
    MEMORY[0x277D82BD8](inputData);
    v6 = objc_alloc_init(AXPhoenixClassifierRNNModelWindow);
    modelWindow = selfCopy->_modelWindow;
    selfCopy->_modelWindow = v6;
    MEMORY[0x277D82BD8](modelWindow);
    modelDescription = [v49 modelDescription];
    inputDescriptionsByName = [modelDescription inputDescriptionsByName];
    v43 = [inputDescriptionsByName objectForKeyedSubscript:selfCopy->_modelInputName];
    MEMORY[0x277D82BD8](inputDescriptionsByName);
    MEMORY[0x277D82BD8](modelDescription);
    if ([v43 type] == 5)
    {
      v29 = selfCopy->_inputData;
      multiArrayConstraint = [v43 multiArrayConstraint];
      shape = [multiArrayConstraint shape];
      [(AXPhoenixClassifierRNNModelInputData *)v29 updateInputShape:?];
      MEMORY[0x277D82BD8](shape);
      MEMORY[0x277D82BD8](multiArrayConstraint);
      modelDescription2 = [v49 modelDescription];
      inputDescriptionsByName2 = [modelDescription2 inputDescriptionsByName];
      v8 = [inputDescriptionsByName2 objectForKeyedSubscript:selfCopy->_modelInputHistory];
      v9 = v43;
      v43 = v8;
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](inputDescriptionsByName2);
      MEMORY[0x277D82BD8](modelDescription2);
      if ([v43 type] == 5)
      {
        v23 = selfCopy->_modelWindow;
        multiArrayConstraint2 = [v43 multiArrayConstraint];
        shape2 = [multiArrayConstraint2 shape];
        [(AXPhoenixClassifierRNNModelWindow *)v23 updateHistoryShape:?];
        MEMORY[0x277D82BD8](shape2);
        MEMORY[0x277D82BD8](multiArrayConstraint2);
        modelDescription3 = [v49 modelDescription];
        metadata = [modelDescription3 metadata];
        MEMORY[0x277D82BD8](modelDescription3);
        if (metadata)
        {
          v37 = [metadata objectForKeyedSubscript:*MEMORY[0x277CBFE90]];
          if (v37)
          {
            v10 = [v37 objectForKeyedSubscript:@"version"];
            modelVersion = selfCopy->_modelVersion;
            selfCopy->_modelVersion = v10;
            MEMORY[0x277D82BD8](modelVersion);
          }

          if (![(NSString *)selfCopy->_modelVersion length])
          {
            v12 = [metadata objectForKeyedSubscript:*MEMORY[0x277CBFEA8]];
            v13 = selfCopy->_modelVersion;
            selfCopy->_modelVersion = v12;
            MEMORY[0x277D82BD8](v13);
          }

          v14 = [metadata objectForKeyedSubscript:*MEMORY[0x277CBFE98]];
          modelDescription = selfCopy->_modelDescription;
          selfCopy->_modelDescription = v14;
          MEMORY[0x277D82BD8](modelDescription);
          objc_storeStrong(&v37, 0);
        }

        if (!selfCopy->_modelVersion)
        {
          uRLByDeletingPathExtension = [location[0] URLByDeletingPathExtension];
          lastPathComponent = [uRLByDeletingPathExtension lastPathComponent];
          v17 = selfCopy->_modelVersion;
          selfCopy->_modelVersion = lastPathComponent;
          MEMORY[0x277D82BD8](v17);
          MEMORY[0x277D82BD8](uRLByDeletingPathExtension);
        }

        v36 = AXLogBackTap();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_2_6_8_32_8_64_8_64_8_64_8_64_8_64(v54, "[AXPhoenixClassifierRNN _initializeModelFromURL:outError:]", selfCopy->_modelVersion, selfCopy->_modelDescription, selfCopy->_modelInputName, selfCopy->_modelOutputName, metadata);
          _os_log_impl(&dword_25E4AC000, v36, OS_LOG_TYPE_INFO, "[PHOENIX] %s Version %@, description %@, ModelInputName %@, ModelOutputName %@, modelInfo %@", v54, 0x3Eu);
        }

        objc_storeStrong(&v36, 0);
        v53 = MEMORY[0x277D82BE0](v49);
        v46 = 1;
        objc_storeStrong(&metadata, 0);
      }

      else
      {
        v40 = AXLogBackTap();
        v39 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v43, "type")}];
          __os_log_helper_16_2_3_8_32_8_64_8_64(v55, "[AXPhoenixClassifierRNN _initializeModelFromURL:outError:]", v22, &unk_287037B40);
          _os_log_impl(&dword_25E4AC000, v40, v39, "[PHOENIX] %s Unexpected input feature type %@, expected %@ (MLFeatureTypeMultiArray)", v55, 0x20u);
          MEMORY[0x277D82BD8](v22);
        }

        objc_storeStrong(&v40, 0);
        v53 = 0;
        v46 = 1;
      }
    }

    else
    {
      v42 = AXLogBackTap();
      v41 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v43, "type")}];
        __os_log_helper_16_2_3_8_32_8_64_8_64(v56, "[AXPhoenixClassifierRNN _initializeModelFromURL:outError:]", v28, &unk_287037B40);
        _os_log_impl(&dword_25E4AC000, v42, v41, "[PHOENIX] %s Unexpected input feature type %@, expected %@ (MLFeatureTypeMultiArray)", v56, 0x20u);
        MEMORY[0x277D82BD8](v28);
      }

      objc_storeStrong(&v42, 0);
      v53 = 0;
      v46 = 1;
    }

    objc_storeStrong(&v43, 0);
  }

  else
  {
    oslog = AXLogBackTap();
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      if (errorCopy)
      {
        v34 = *errorCopy;
      }

      else
      {
        v34 = 0;
      }

      __os_log_helper_16_2_3_8_32_8_64_8_64(v58, "[AXPhoenixClassifierRNN _initializeModelFromURL:outError:]", location[0], v34);
      _os_log_error_impl(&dword_25E4AC000, oslog, type, "[PHOENIX] %s Failed to load model from %@: %@", v58, 0x20u);
    }

    objc_storeStrong(&oslog, 0);
    v53 = 0;
    v46 = 1;
  }

  objc_storeStrong(&v49, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v18 = v53;

  return v18;
}

- (id)_windowData:(BOOL)data
{
  v46 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v40 = a2;
  dataCopy = data;
  v37 = 0u;
  v38 = 0u;
  accelerometerBuffer = [(AXPhoenixClassifierRNNModelInputData *)self->_inputData accelerometerBuffer];
  [(AccelerometerBuffer *)accelerometerBuffer data];
  *&v37 = v3;
  *(&v37 + 1) = v4;
  *&v38 = v5;
  *(&v38 + 1) = v6;
  MEMORY[0x277D82BD8](accelerometerBuffer);
  v7 = v37;
  *&v35 = v7 >> 64;
  *&v36 = v7;
  oslog = AXLogBackTap();
  type = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
  {
    v27 = [MEMORY[0x277CCABB0] numberWithDouble:v36];
    v26 = [MEMORY[0x277CCABB0] numberWithDouble:v35];
    __os_log_helper_16_2_3_8_32_8_64_8_64(v45, "[AXPhoenixClassifierRNN _windowData:]", v27, v26);
    _os_log_impl(&dword_25E4AC000, oslog, type, "[PHOENIX] %s tapTimestamp:[%@, %@]", v45, 0x20u);
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v27);
  }

  objc_storeStrong(&oslog, 0);
  v32 = AXLogBackTap();
  v31 = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    v22 = v32;
    v23 = v31;
    logBuffer = [(PredictionsBuffer *)selfCopy->_predictionsBuffer logBuffer];
    v24 = [logBuffer componentsJoinedByString:@":"];
    v30 = MEMORY[0x277D82BE0](v24);
    __os_log_helper_16_2_2_8_32_8_64(v44, "[AXPhoenixClassifierRNN _windowData:]", v30);
    _os_log_impl(&dword_25E4AC000, v22, v23, "[PHOENIX] %s predictions[none,double,triple,class]: %@", v44, 0x16u);
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](logBuffer);
    objc_storeStrong(&v30, 0);
  }

  objc_storeStrong(&v32, 0);
  accelerometerBuffer2 = [(AXPhoenixClassifierRNNModelInputData *)selfCopy->_inputData accelerometerBuffer];
  logBuffer2 = [(AccelerometerBuffer *)accelerometerBuffer2 logBuffer];
  MEMORY[0x277D82BD8](accelerometerBuffer2);
  v42[0] = @"accelerometer";
  accelerometerBuffer3 = [(AXPhoenixClassifierRNNModelInputData *)selfCopy->_inputData accelerometerBuffer];
  logBuffer3 = [(AccelerometerBuffer *)accelerometerBuffer3 logBuffer];
  v43[0] = logBuffer3;
  v42[1] = @"accel_csv";
  accelerometerBuffer4 = [(AXPhoenixClassifierRNNModelInputData *)selfCopy->_inputData accelerometerBuffer];
  v18 = [(AccelerometerBuffer *)accelerometerBuffer4 csv];
  v43[1] = v18;
  v42[2] = @"predictions";
  logBuffer4 = [(PredictionsBuffer *)selfCopy->_predictionsBuffer logBuffer];
  v43[2] = logBuffer4;
  v42[3] = @"result";
  v9 = @"doubletap";
  if (!dataCopy)
  {
    v9 = @"tripletap";
  }

  v43[3] = v9;
  v42[4] = @"startTime";
  v20 = [MEMORY[0x277CCABB0] numberWithDouble:v36];
  v43[4] = v20;
  v42[5] = @"endTime";
  v21 = [MEMORY[0x277CCABB0] numberWithDouble:v35];
  v43[5] = v21;
  v42[6] = @"modelDescription";
  if (selfCopy->_modelDescription)
  {
    modelDescription = selfCopy->_modelDescription;
  }

  else
  {
    modelDescription = &stru_287032B48;
  }

  v43[6] = modelDescription;
  v42[7] = @"modelVersion";
  if (selfCopy->_modelVersion)
  {
    modelVersion = selfCopy->_modelVersion;
  }

  else
  {
    modelVersion = &stru_287032B48;
  }

  v43[7] = modelVersion;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:8];
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](logBuffer4);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](accelerometerBuffer4);
  MEMORY[0x277D82BD8](logBuffer3);
  MEMORY[0x277D82BD8](accelerometerBuffer3);
  v11 = MEMORY[0x277D82BE0](v29);
  objc_storeStrong(&v29, 0);
  *MEMORY[0x277D85DE8];

  return v11;
}

- (unint64_t)_countThresholdForGesturePrediction:(id)prediction
{
  var0 = prediction.var0;
  policyOption = self->_policyOption;
  switch(policyOption)
  {
    case 1:
      doubleTapPolicyThresholds = [(AXPhoenixClassifierConfiguration *)self->_configuration doubleTapPolicyThresholds];
      v8 = [(NSArray *)doubleTapPolicyThresholds objectAtIndex:1];
      unsignedIntegerValue = [v8 unsignedIntegerValue];
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](doubleTapPolicyThresholds);
      break;
    case 2:
      tripleTapPolicyThresholds = [(AXPhoenixClassifierConfiguration *)self->_configuration tripleTapPolicyThresholds];
      v6 = [(NSArray *)tripleTapPolicyThresholds objectAtIndex:1];
      unsignedIntegerValue = [v6 unsignedIntegerValue];
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](tripleTapPolicyThresholds);
      break;
    case 3:
      if (self->_tapSpeed > 0.0 && prediction.var0 == 1)
      {
        return vcvtps_u32_f32(self->_tapSpeed * 10.0);
      }

      else
      {
        generalPolicyThresholds = [(AXPhoenixClassifierConfiguration *)self->_configuration generalPolicyThresholds];
        v10 = [(NSArray *)generalPolicyThresholds objectAtIndex:var0];
        unsignedIntegerValue = [v10 unsignedIntegerValue];
        MEMORY[0x277D82BD8](v10);
        MEMORY[0x277D82BD8](generalPolicyThresholds);
      }

      break;
    default:
      generalPolicyThresholds2 = [(AXPhoenixClassifierConfiguration *)self->_configuration generalPolicyThresholds];
      v4 = [(NSArray *)generalPolicyThresholds2 objectAtIndex:var0];
      unsignedIntegerValue = [v4 unsignedIntegerValue];
      MEMORY[0x277D82BD8](v4);
      MEMORY[0x277D82BD8](generalPolicyThresholds2);
      break;
  }

  return unsignedIntegerValue;
}

- (void)_handleAccelerometerData:(id)data withTimestamp:(double)timestamp
{
  v27 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  selfCopy = self;
  v22 = a2;
  timestampCopy = timestamp;
  modelWindow = [(AXPhoenixClassifierRNN *)self modelWindow];
  [(AXPhoenixClassifierRNNModelWindow *)modelWindow setSamplesSinceLastTap:[(AXPhoenixClassifierRNNModelWindow *)modelWindow samplesSinceLastTap]+ 1];
  MEMORY[0x277D82BD8](modelWindow);
  accelerometerBuffer = [(AXPhoenixClassifierRNNModelInputData *)selfCopy->_inputData accelerometerBuffer];
  [(AccelerometerBuffer *)accelerometerBuffer addData:dataCopy.var0 timestamp:dataCopy.var1, dataCopy.var2, timestampCopy];
  MEMORY[0x277D82BD8](accelerometerBuffer);
  ++selfCopy->_resetCounter;
  ++selfCopy->_loopCounter;
  if (selfCopy->_resetCounter >= 0x190)
  {
    selfCopy->_resetCounter = 0;
    modelWindow2 = [(AXPhoenixClassifierRNN *)selfCopy modelWindow];
    tapCount = [(AXPhoenixClassifierRNNModelWindow *)modelWindow2 tapCount];
    MEMORY[0x277D82BD8](modelWindow2);
    if (tapCount)
    {
      v18 = AXLogBackTap();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v8 = MEMORY[0x277CCABB0];
        modelWindow3 = [(AXPhoenixClassifierRNN *)selfCopy modelWindow];
        v9 = [v8 numberWithUnsignedInteger:{-[AXPhoenixClassifierRNNModelWindow tapCount](modelWindow3, "tapCount")}];
        __os_log_helper_16_2_2_8_32_8_64(v25, "[AXPhoenixClassifierRNN _handleAccelerometerData:withTimestamp:]", v9);
        _os_log_impl(&dword_25E4AC000, v18, OS_LOG_TYPE_DEFAULT, "[PHOENIX] %s Wanted to reset but in middle of a tap: %@", v25, 0x16u);
        MEMORY[0x277D82BD8](v9);
        MEMORY[0x277D82BD8](modelWindow3);
      }

      objc_storeStrong(&v18, 0);
    }

    else
    {
      location = AXLogBackTap();
      v19 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_32(v26, "[AXPhoenixClassifierRNN _handleAccelerometerData:withTimestamp:]");
        _os_log_impl(&dword_25E4AC000, location, v19, "[PHOENIX] %s Resetting", v26, 0xCu);
      }

      objc_storeStrong(&location, 0);
      modelWindow4 = [(AXPhoenixClassifierRNN *)selfCopy modelWindow];
      [(AXPhoenixClassifierRNNModelWindow *)modelWindow4 resetHistory];
      MEMORY[0x277D82BD8](modelWindow4);
    }
  }

  modelWindow5 = [(AXPhoenixClassifierRNN *)selfCopy modelWindow];
  tapCount2 = [(AXPhoenixClassifierRNNModelWindow *)modelWindow5 tapCount];
  MEMORY[0x277D82BD8](modelWindow5);
  if (tapCount2)
  {
    [(AXPhoenixClassifierRNN *)selfCopy _evaluateTapData];
  }

  if (!(selfCopy->_loopCounter % selfCopy->_runFrequency))
  {
    selfCopy->_loopCounter = 0;
    ++selfCopy->_resetHistoryCounter;
    v16 = 0;
    v5 = 0;
    if (selfCopy->_resetHistoryCounter == 2)
    {
      modelWindow6 = [(AXPhoenixClassifierRNN *)selfCopy modelWindow];
      v16 = 1;
      v5 = [(AXPhoenixClassifierRNNModelWindow *)modelWindow6 tapCount]== 0;
    }

    if (v16)
    {
      MEMORY[0x277D82BD8](modelWindow6);
    }

    if (v5)
    {
      modelWindow7 = [(AXPhoenixClassifierRNN *)selfCopy modelWindow];
      [(AXPhoenixClassifierRNNModelWindow *)modelWindow7 resetHistory];
      MEMORY[0x277D82BD8](modelWindow7);
      selfCopy->_resetHistoryCounter = 0;
    }

    [(AXPhoenixClassifierRNN *)selfCopy _updateAccelerationData];
  }

  *MEMORY[0x277D85DE8];
}

- (void)_updateAccelerationData
{
  v83 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v72[1] = a2;
  v72[0] = 0;
  v70 = 0;
  v43 = [(AXPhoenixClassifierRNN *)self _multiArrayInputForClassifierWithError:&v70];
  objc_storeStrong(v72, v70);
  v71 = v43;
  if (v43)
  {
    modelWindow = [(AXPhoenixClassifierRNN *)selfCopy modelWindow];
    historyArray = [(AXPhoenixClassifierRNNModelWindow *)modelWindow historyArray];
    MEMORY[0x277D82BD8](modelWindow);
    if (historyArray)
    {
      v79[0] = selfCopy->_modelInputName;
      v40 = [MEMORY[0x277CBFEF8] featureValueWithMultiArray:v71];
      v80[0] = v40;
      v79[1] = selfCopy->_modelInputHistory;
      v39 = [MEMORY[0x277CBFEF8] featureValueWithMultiArray:historyArray];
      v80[1] = v39;
      v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:2];
      MEMORY[0x277D82BD8](v39);
      MEMORY[0x277D82BD8](v40);
      v2 = objc_alloc(MEMORY[0x277CBFED0]);
      v61 = v72[0];
      v41 = [v2 initWithDictionary:v63 error:&v61];
      objc_storeStrong(v72, v61);
      v62 = v41;
      if (v41)
      {
        classifier = selfCopy->_classifier;
        obj = v72[0];
        v38 = [(MLModel *)classifier predictionFromFeatures:v62 error:&obj];
        objc_storeStrong(v72, obj);
        v58 = v38;
        if (v38)
        {
          v54 = [v58 featureValueForName:selfCopy->_modelOutputName];
          multiArrayValue = [v54 multiArrayValue];
          v35 = [v58 featureValueForName:selfCopy->_modelOutputNewHistory];
          multiArrayValue2 = [v35 multiArrayValue];
          MEMORY[0x277D82BD8](v35);
          modelWindow2 = [(AXPhoenixClassifierRNN *)selfCopy modelWindow];
          [(AXPhoenixClassifierRNNModelWindow *)modelWindow2 setHistoryArray:multiArrayValue2];
          MEMORY[0x277D82BD8](modelWindow2);
          modelWindow3 = [(AXPhoenixClassifierRNN *)selfCopy modelWindow];
          -[AXPhoenixClassifierRNNModelWindow setSamplesSinceLastTap:](modelWindow3, "setSamplesSinceLastTap:", -[AXPhoenixClassifierRNNModelWindow samplesSinceLastTap](modelWindow3, "samplesSinceLastTap") - [multiArrayValue count]);
          MEMORY[0x277D82BD8](modelWindow3);
          for (i = 0; ; ++i)
          {
            v34 = i;
            if (v34 >= [multiArrayValue count])
            {
              break;
            }

            v32 = [multiArrayValue objectAtIndexedSubscript:i];
            [v32 doubleValue];
            v33 = v4;
            MEMORY[0x277D82BD8](v32);
            if (v33 <= -0.5)
            {
              modelWindow4 = [(AXPhoenixClassifierRNN *)selfCopy modelWindow];
              [(AXPhoenixClassifierRNNModelWindow *)modelWindow4 setSamplesSinceLastTap:[(AXPhoenixClassifierRNNModelWindow *)modelWindow4 samplesSinceLastTap]+ 1];
              MEMORY[0x277D82BD8](modelWindow4);
              modelWindow5 = [(AXPhoenixClassifierRNN *)selfCopy modelWindow];
              [(AXPhoenixClassifierRNNModelWindow *)modelWindow5 setFoundTap:0];
              MEMORY[0x277D82BD8](modelWindow5);
            }

            else
            {
              modelWindow6 = [(AXPhoenixClassifierRNN *)selfCopy modelWindow];
              [(AXPhoenixClassifierRNNModelWindow *)modelWindow6 setSamplesSinceLastTap:[(AXPhoenixClassifierRNNModelWindow *)modelWindow6 samplesSinceLastTap]+ 1];
              MEMORY[0x277D82BD8](modelWindow6);
              modelWindow7 = [(AXPhoenixClassifierRNN *)selfCopy modelWindow];
              foundTap = [(AXPhoenixClassifierRNNModelWindow *)modelWindow7 foundTap];
              MEMORY[0x277D82BD8](modelWindow7);
              if (!foundTap)
              {
                v50 = AXLogBackTap();
                v49 = OS_LOG_TYPE_ERROR;
                if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                {
                  v27 = v50;
                  v28 = v49;
                  __os_log_helper_16_2_1_8_32(v76, "[AXPhoenixClassifierRNN _updateAccelerationData]");
                  _os_log_error_impl(&dword_25E4AC000, v27, v28, "[PHOENIX] %s Got a tap", v76, 0xCu);
                }

                objc_storeStrong(&v50, 0);
                modelWindow8 = [(AXPhoenixClassifierRNN *)selfCopy modelWindow];
                tapCount = [(AXPhoenixClassifierRNNModelWindow *)modelWindow8 tapCount];
                v47 = 0;
                v26 = 0;
                if (tapCount)
                {
                  modelWindow9 = [(AXPhoenixClassifierRNN *)selfCopy modelWindow];
                  v47 = 1;
                  v26 = [(AXPhoenixClassifierRNNModelWindow *)modelWindow9 samplesSinceLastTap]< selfCopy->_runFrequency;
                }

                if (v47)
                {
                  MEMORY[0x277D82BD8](modelWindow9);
                }

                MEMORY[0x277D82BD8](modelWindow8);
                if (v26)
                {
                  v46 = AXLogBackTap();
                  v45 = OS_LOG_TYPE_ERROR;
                  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
                  {
                    v21 = v46;
                    v22 = v45;
                    v20 = MEMORY[0x277CCABB0];
                    modelWindow10 = [(AXPhoenixClassifierRNN *)selfCopy modelWindow];
                    v23 = [v20 numberWithUnsignedInteger:{-[AXPhoenixClassifierRNNModelWindow samplesSinceLastTap](modelWindow10, "samplesSinceLastTap")}];
                    __os_log_helper_16_2_2_8_32_8_64(v75, "[AXPhoenixClassifierRNN _updateAccelerationData]", v23);
                    _os_log_error_impl(&dword_25E4AC000, v21, v22, "[PHOENIX] %s Got two taps in a really short amount of time, ignoring tap. Number of samples %@", v75, 0x16u);
                    MEMORY[0x277D82BD8](v23);
                    MEMORY[0x277D82BD8](modelWindow10);
                  }

                  objc_storeStrong(&v46, 0);
                  modelWindow11 = [(AXPhoenixClassifierRNN *)selfCopy modelWindow];
                  [(AXPhoenixClassifierRNNModelWindow *)modelWindow11 setSamplesSinceLastTap:?];
                  MEMORY[0x277D82BD8](modelWindow11);
                  modelWindow12 = [(AXPhoenixClassifierRNN *)selfCopy modelWindow];
                  [(AXPhoenixClassifierRNNModelWindow *)modelWindow12 setTapCount:0];
                  MEMORY[0x277D82BD8](modelWindow12);
                  modelWindow13 = [(AXPhoenixClassifierRNN *)selfCopy modelWindow];
                  [(AXPhoenixClassifierRNNModelWindow *)modelWindow13 setFoundTap:0];
                  MEMORY[0x277D82BD8](modelWindow13);
                  selfCopy->_resetCounter = 400;
                  selfCopy->_runFrequency = (selfCopy->_tapSpeed * 100.0);
                  selfCopy->_frameLength = selfCopy->_runFrequency;
                  break;
                }

                modelWindow14 = [(AXPhoenixClassifierRNN *)selfCopy modelWindow];
                tapCount2 = [(AXPhoenixClassifierRNNModelWindow *)modelWindow14 tapCount];
                MEMORY[0x277D82BD8](modelWindow14);
                if (tapCount2)
                {
                  v44 = AXLogBackTap();
                  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                  {
                    v12 = v44;
                    v11 = MEMORY[0x277CCABB0];
                    modelWindow15 = [(AXPhoenixClassifierRNN *)selfCopy modelWindow];
                    v13 = [v11 numberWithUnsignedInteger:{-[AXPhoenixClassifierRNNModelWindow samplesSinceLastTap](modelWindow15, "samplesSinceLastTap")}];
                    __os_log_helper_16_2_2_8_32_8_64(v74, "[AXPhoenixClassifierRNN _updateAccelerationData]", v13);
                    _os_log_error_impl(&dword_25E4AC000, v12, OS_LOG_TYPE_ERROR, "[PHOENIX] %s samplesSinceLastTap %@", v74, 0x16u);
                    MEMORY[0x277D82BD8](v13);
                    MEMORY[0x277D82BD8](modelWindow15);
                  }

                  objc_storeStrong(&v44, 0);
                }

                modelWindow16 = [(AXPhoenixClassifierRNN *)selfCopy modelWindow];
                [(AXPhoenixClassifierRNNModelWindow *)modelWindow16 setSamplesSinceLastTap:0];
                MEMORY[0x277D82BD8](modelWindow16);
                modelWindow17 = [(AXPhoenixClassifierRNN *)selfCopy modelWindow];
                [(AXPhoenixClassifierRNNModelWindow *)modelWindow17 setTapCount:[(AXPhoenixClassifierRNNModelWindow *)modelWindow17 tapCount]+ 1];
                MEMORY[0x277D82BD8](modelWindow17);
                modelWindow18 = [(AXPhoenixClassifierRNN *)selfCopy modelWindow];
                [(AXPhoenixClassifierRNNModelWindow *)modelWindow18 setFoundTap:1];
                MEMORY[0x277D82BD8](modelWindow18);
                selfCopy->_runFrequency = 5;
                selfCopy->_frameLength = selfCopy->_runFrequency;
              }
            }
          }

          [(AXPhoenixClassifierRNN *)selfCopy _evaluateTapData];
          objc_storeStrong(&multiArrayValue2, 0);
          objc_storeStrong(&multiArrayValue, 0);
          objc_storeStrong(&v54, 0);
          v67 = 0;
        }

        else
        {
          oslog = AXLogBackTap();
          v55 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_2_8_32_8_64(v77, "[AXPhoenixClassifierRNN _updateAccelerationData]", v72[0]);
            _os_log_error_impl(&dword_25E4AC000, oslog, v55, "[PHOENIX] %s Model prediction failed with error: %@", v77, 0x16u);
          }

          objc_storeStrong(&oslog, 0);
          [(AXPhoenixClassifierDelegate *)selfCopy->_delegate phoenixClassifier:selfCopy failedWithError:v72[0]];
          v67 = 1;
        }

        objc_storeStrong(&v58, 0);
      }

      else
      {
        v60 = AXLogBackTap();
        v59 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_3_8_32_8_64_8_64(v78, "[AXPhoenixClassifierRNN _updateAccelerationData]", selfCopy->_modelInputName, v72[0]);
          _os_log_error_impl(&dword_25E4AC000, v60, v59, "[PHOENIX] %s Failed to create modelInput %@: %@", v78, 0x20u);
        }

        objc_storeStrong(&v60, 0);
        [(AXPhoenixClassifierDelegate *)selfCopy->_delegate phoenixClassifier:selfCopy failedWithError:v72[0]];
        v67 = 1;
      }

      objc_storeStrong(&v62, 0);
      objc_storeStrong(&v63, 0);
    }

    else
    {
      v65 = AXLogBackTap();
      v64 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_64(v81, "[AXPhoenixClassifierRNN _updateAccelerationData]", v72[0]);
        _os_log_error_impl(&dword_25E4AC000, v65, v64, "[PHOENIX] %s Error creating multiArray: %@", v81, 0x16u);
      }

      objc_storeStrong(&v65, 0);
      [(AXPhoenixClassifierDelegate *)selfCopy->_delegate phoenixClassifier:selfCopy failedWithError:v72[0]];
      v67 = 1;
    }

    objc_storeStrong(&historyArray, 0);
  }

  else
  {
    v69 = AXLogBackTap();
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_64(v82, "[AXPhoenixClassifierRNN _updateAccelerationData]", v72[0]);
      _os_log_error_impl(&dword_25E4AC000, v69, type, "[PHOENIX] %s Error creating multiArray: %@", v82, 0x16u);
    }

    objc_storeStrong(&v69, 0);
    [(AXPhoenixClassifierDelegate *)selfCopy->_delegate phoenixClassifier:selfCopy failedWithError:v72[0]];
    v67 = 1;
  }

  objc_storeStrong(&v71, 0);
  objc_storeStrong(v72, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_evaluateTapData
{
  v43 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v38 = a2;
  v37 = 0;
  v36 = (self->_policyOption & 1) != 0;
  v35 = (self->_policyOption & 2) != 0;
  modelWindow = [(AXPhoenixClassifierRNN *)self modelWindow];
  v21 = 0;
  if ([(AXPhoenixClassifierRNNModelWindow *)modelWindow tapCount]== 2)
  {
    v21 = v36;
  }

  MEMORY[0x277D82BD8](modelWindow);
  if (v21)
  {
    modelWindow2 = [(AXPhoenixClassifierRNN *)selfCopy modelWindow];
    v19 = 1;
    if ([(AXPhoenixClassifierRNNModelWindow *)modelWindow2 samplesSinceLastTap]/ 100.0 <= selfCopy->_tapSpeed)
    {
      v19 = !v35;
    }

    MEMORY[0x277D82BD8](modelWindow2);
    if (v19)
    {
      location = AXLogBackTap();
      v33 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_32(v42, "[AXPhoenixClassifierRNN _evaluateTapData]");
        _os_log_impl(&dword_25E4AC000, location, v33, "[PHOENIX] %s Got a double tap", v42, 0xCu);
      }

      objc_storeStrong(&location, 0);
      v31 = 0u;
      v32 = 0u;
      accelerometerBuffer = [(AXPhoenixClassifierRNNModelInputData *)selfCopy->_inputData accelerometerBuffer];
      [(AccelerometerBuffer *)accelerometerBuffer data];
      *&v31 = v2;
      *(&v31 + 1) = v3;
      *&v32 = v4;
      *(&v32 + 1) = v5;
      MEMORY[0x277D82BD8](accelerometerBuffer);
      v30 = [(AXPhoenixClassifierRNN *)selfCopy _windowData:1];
      [(AXPhoenixClassifierRNN *)selfCopy _logWindowData:v30 doubleTap:0 tapData:v31, v32];
      [(AXPhoenixClassifierDelegate *)selfCopy->_delegate phoenixClassifierDidDetectDoubleTap:selfCopy data:v30 context:v31, v32];
      v37 = 1;
      objc_storeStrong(&v30, 0);
    }
  }

  else
  {
    modelWindow3 = [(AXPhoenixClassifierRNN *)selfCopy modelWindow];
    v16 = 0;
    if ([(AXPhoenixClassifierRNNModelWindow *)modelWindow3 tapCount]== 3)
    {
      v16 = v35;
    }

    MEMORY[0x277D82BD8](modelWindow3);
    if (v16)
    {
      v29 = AXLogBackTap();
      v28 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_32(v41, "[AXPhoenixClassifierRNN _evaluateTapData]");
        _os_log_impl(&dword_25E4AC000, v29, v28, "[PHOENIX] %s Got a triple tap", v41, 0xCu);
      }

      objc_storeStrong(&v29, 0);
      v26 = 0u;
      v27 = 0u;
      accelerometerBuffer2 = [(AXPhoenixClassifierRNNModelInputData *)selfCopy->_inputData accelerometerBuffer];
      [(AccelerometerBuffer *)accelerometerBuffer2 data];
      *&v26 = v6;
      *(&v26 + 1) = v7;
      *&v27 = v8;
      *(&v27 + 1) = v9;
      MEMORY[0x277D82BD8](accelerometerBuffer2);
      v25 = [(AXPhoenixClassifierRNN *)selfCopy _windowData:0];
      [(AXPhoenixClassifierRNN *)selfCopy _logWindowData:v25 doubleTap:0 tapData:v26, v27];
      [(AXPhoenixClassifierDelegate *)selfCopy->_delegate phoenixClassifierDidDetectTripleTap:selfCopy data:v25 context:v26, v27];
      v37 = 1;
      objc_storeStrong(&v25, 0);
    }

    else
    {
      modelWindow4 = [(AXPhoenixClassifierRNN *)selfCopy modelWindow];
      v23 = 0;
      v13 = 0;
      if ([(AXPhoenixClassifierRNNModelWindow *)modelWindow4 tapCount])
      {
        modelWindow5 = [(AXPhoenixClassifierRNN *)selfCopy modelWindow];
        v23 = 1;
        v13 = [(AXPhoenixClassifierRNNModelWindow *)modelWindow5 samplesSinceLastTap]/ 100.0 > selfCopy->_tapSpeed;
      }

      if (v23)
      {
        MEMORY[0x277D82BD8](modelWindow5);
      }

      MEMORY[0x277D82BD8](modelWindow4);
      if (v13)
      {
        oslog = AXLogBackTap();
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_2_1_8_32(v40, "[AXPhoenixClassifierRNN _evaluateTapData]");
          _os_log_impl(&dword_25E4AC000, oslog, OS_LOG_TYPE_DEFAULT, "[PHOENIX] %s Resetting because we didn't get a second or third tap in time", v40, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
        v37 = 1;
      }
    }
  }

  if (v37)
  {
    modelWindow6 = [(AXPhoenixClassifierRNN *)selfCopy modelWindow];
    [(AXPhoenixClassifierRNNModelWindow *)modelWindow6 setTapCount:0];
    MEMORY[0x277D82BD8](modelWindow6);
    modelWindow7 = [(AXPhoenixClassifierRNN *)selfCopy modelWindow];
    [(AXPhoenixClassifierRNNModelWindow *)modelWindow7 setFoundTap:0];
    MEMORY[0x277D82BD8](modelWindow7);
    selfCopy->_resetCounter = 400;
    selfCopy->_runFrequency = (selfCopy->_tapSpeed * 100.0);
    selfCopy->_frameLength = selfCopy->_runFrequency;
  }

  *MEMORY[0x277D85DE8];
}

- (void)_logWindowData:(id)data doubleTap:(BOOL)tap tapData:(id)tapData
{
  tapDataCopy = tapData;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  tapCopy = tap;
  if ([(AXPhoenixClassifierRNN *)selfCopy falsePositiveLoggingEnabled])
  {
    objc_initWeak(&v17, selfCopy);
    logger = selfCopy->_logger;
    v6 = location[0];
    v7 = tapCopy;
    var0 = tapDataCopy.var0;
    var1 = tapDataCopy.var1;
    v11 = MEMORY[0x277D85DD0];
    v12 = -1073741824;
    v13 = 0;
    v14 = __59__AXPhoenixClassifierRNN__logWindowData_doubleTap_tapData___block_invoke;
    v15 = &unk_279A20730;
    objc_copyWeak(&v16, &v17);
    [(AXPhoenixDataLogger *)logger logClassifierData:v6 isDoubleTap:v7 startTime:&v11 endTime:var0 completion:var1];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v17);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  objc_storeStrong(location, 0);
}

void __59__AXPhoenixClassifierRNN__logWindowData_doubleTap_tapData___block_invoke(id *a1, char a2, id obj)
{
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v4[1] = a1;
  v4[0] = objc_loadWeakRetained(a1 + 4);
  if (location && v4[0])
  {
    [*(v4[0] + 1) phoenixClassifierDidLogFile:location];
  }

  objc_storeStrong(v4, 0);
  objc_storeStrong(&location, 0);
}

- (id)_multiArrayInputForClassifierWithError:(id *)error
{
  v42[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v37[2] = a2;
  v37[1] = error;
  inputShape = [(AXPhoenixClassifierRNNModelInputData *)self->_inputData inputShape];
  v28 = [(NSArray *)inputShape objectAtIndexedSubscript:0];
  v42[0] = v28;
  v24 = MEMORY[0x277CCABB0];
  inputShape2 = [(AXPhoenixClassifierRNNModelInputData *)selfCopy->_inputData inputShape];
  v26 = [(NSArray *)inputShape2 objectAtIndexedSubscript:1];
  v25 = [v24 numberWithUnsignedInteger:{objc_msgSend(v26, "unsignedIntegerValue") * selfCopy->_frameLength}];
  v42[1] = v25;
  v37[0] = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](inputShape2);
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](inputShape);
  v36 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:v37[0] dataType:65568 error:0];
  accelerometerBuffer = [(AXPhoenixClassifierRNNModelInputData *)selfCopy->_inputData accelerometerBuffer];
  buffer = [(AccelerometerBuffer *)accelerometerBuffer buffer];
  MEMORY[0x277D82BD8](accelerometerBuffer);
  v34 = [buffer count] - selfCopy->_frameLength;
  for (i = v34; ; ++i)
  {
    v23 = i;
    if (v23 >= [buffer count])
    {
      break;
    }

    v32 = i - v34;
    v31 = [buffer objectAtIndexedSubscript:i];
    v9 = v36;
    v8 = MEMORY[0x277CCABB0];
    [v31 x];
    *&v3 = v3;
    v12 = [v8 numberWithFloat:v3];
    v41[0] = &unk_287037B28;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v32];
    v41[1] = v11;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:?];
    [v9 setObject:v12 forKeyedSubscript:?];
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    v14 = v36;
    v13 = MEMORY[0x277CCABB0];
    [v31 y];
    *&v4 = v4;
    v17 = [v13 numberWithFloat:v4];
    v40[0] = &unk_287037B58;
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v32];
    v40[1] = v16;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
    [v14 setObject:v17 forKeyedSubscript:?];
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
    v19 = v36;
    v18 = MEMORY[0x277CCABB0];
    [v31 z];
    *&v5 = v5;
    v22 = [v18 numberWithFloat:v5];
    v39[0] = &unk_287037B70;
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v32];
    v39[1] = v21;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
    [v19 setObject:v22 forKeyedSubscript:?];
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v22);
    objc_storeStrong(&v31, 0);
  }

  v7 = MEMORY[0x277D82BE0](v36);
  objc_storeStrong(&buffer, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(v37, 0);
  *MEMORY[0x277D85DE8];

  return v7;
}

@end
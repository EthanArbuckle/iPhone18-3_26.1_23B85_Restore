@interface AXPhoenixClassifier
- (AXPhoenixClassifier)initWithDelegate:(id)delegate modelURL:(id)l configuration:(id)configuration;
- (BOOL)_clippedDataShowsPrediction:(unint64_t)prediction;
- (id)_clippedMultiArrayInputWithError:(id *)error beforeTime:(double)time;
- (id)_createMultiArrayWithError:(id *)error;
- (id)_initializeModelFromURL:(id)l outError:(id *)error;
- (id)_multiArrayInputForClassifierWithError:(id *)error;
- (id)_windowData:(BOOL)data;
- (unint64_t)_computeFrameLength;
- (unint64_t)_countThresholdForGesturePrediction:(id)prediction;
- (void)_handleAccelerometerData:(id)data withTimestamp:(double)timestamp;
- (void)_logWindowData:(id)data doubleTap:(BOOL)tap tapData:(id)tapData;
- (void)dealloc;
- (void)handleAccelerometerData:(id)data withTimestamp:(double)timestamp;
- (void)reset;
- (void)setPolicyOption:(int)option;
@end

@implementation AXPhoenixClassifier

- (AXPhoenixClassifier)initWithDelegate:(id)delegate modelURL:(id)l configuration:(id)configuration
{
  v57 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, delegate);
  v50 = 0;
  objc_storeStrong(&v50, l);
  v49 = 0;
  objc_storeStrong(&v49, configuration);
  v5 = selfCopy;
  selfCopy = 0;
  v48.receiver = v5;
  v48.super_class = AXPhoenixClassifier;
  selfCopy = [(AXPhoenixClassifier *)&v48 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (!selfCopy)
  {
    goto LABEL_12;
  }

  objc_storeStrong(selfCopy + 1, location[0]);
  objc_storeStrong(selfCopy + 2, v49);
  v47 = 0;
  v46 = 0;
  v37 = [selfCopy _initializeModelFromURL:v50 outError:&v46];
  objc_storeStrong(&v47, v46);
  v6 = *(selfCopy + 3);
  *(selfCopy + 3) = v37;
  MEMORY[0x277D82BD8](v6);
  if (*(selfCopy + 3))
  {
    *(selfCopy + 14) = 3;
    _computeFrameLength = [selfCopy _computeFrameLength];
    *(selfCopy + 9) = _computeFrameLength;
    v32 = [*(selfCopy + 10) objectAtIndexedSubscript:0];
    v28 = 8 * [v32 unsignedIntValue];
    v31 = [*(selfCopy + 10) objectAtIndexedSubscript:1];
    v29 = v28 * [v31 unsignedIntValue];
    v30 = [*(selfCopy + 10) objectAtIndexedSubscript:2];
    v33 = v29 * [v30 unsignedIntValue];
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](v32);
    v42[1] = v33;
    v8 = malloc_type_malloc(v33, 0x100004000313F17uLL);
    *(selfCopy + 17) = v8;
    v35 = [AccelerometerBuffer alloc];
    maxAccelerationBufferSize = [v49 maxAccelerationBufferSize];
    v9 = -[AccelerometerBuffer initWithCapacity:accelerometerSampleRateInHz:](v35, "initWithCapacity:accelerometerSampleRateInHz:", maxAccelerationBufferSize, [v49 accelerometerSampleRateInHz]);
    v10 = *(selfCopy + 4);
    *(selfCopy + 4) = v9;
    MEMORY[0x277D82BD8](v10);
    v11 = [PredictionsBuffer alloc];
    v12 = [(PredictionsBuffer *)v11 initWithConfiguration:v49];
    v13 = *(selfCopy + 5);
    *(selfCopy + 5) = v12;
    MEMORY[0x277D82BD8](v13);
    accelerometerSampleRateInHz = [*(selfCopy + 2) accelerometerSampleRateInHz];
    minDurationBetweenTriggersInSeconds = [*(selfCopy + 2) minDurationBetweenTriggersInSeconds];
    *(selfCopy + 19) = accelerometerSampleRateInHz * minDurationBetweenTriggersInSeconds;
    v42[0] = AXLogBackTap();
    v41 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v42[0], OS_LOG_TYPE_INFO))
    {
      v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(selfCopy + 2), "accelerometerSampleRateInHz")}];
      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(selfCopy + 2), "minDurationBetweenTriggersInSeconds")}];
      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(selfCopy + 19)];
      __os_log_helper_16_2_4_8_32_8_64_8_64_8_64(v55, "[AXPhoenixClassifier initWithDelegate:modelURL:configuration:]", v27, v26, v25);
      _os_log_impl(&dword_25E4AC000, v42[0], v41, "[PHOENIX] %s Minimum samples between triggers = %@ * %@ = %@", v55, 0x2Au);
      MEMORY[0x277D82BD8](v25);
      MEMORY[0x277D82BD8](v26);
      MEMORY[0x277D82BD8](v27);
    }

    objc_storeStrong(v42, 0);
    accelerometerSampleRateInHz2 = [*(selfCopy + 2) accelerometerSampleRateInHz];
    modelPredictionRateInHz = [*(selfCopy + 2) modelPredictionRateInHz];
    *(selfCopy + 18) = accelerometerSampleRateInHz2 / modelPredictionRateInHz;
    oslog = AXLogBackTap();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(selfCopy + 2), "accelerometerSampleRateInHz")}];
      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(selfCopy + 2), "modelPredictionRateInHz")}];
      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(selfCopy + 18)];
      __os_log_helper_16_2_4_8_32_8_64_8_64_8_64(v54, "[AXPhoenixClassifier initWithDelegate:modelURL:configuration:]", v23, v22, v21);
      _os_log_impl(&dword_25E4AC000, oslog, OS_LOG_TYPE_INFO, "[PHOENIX] %s Loop frequency = %@ / %@ = %@", v54, 0x2Au);
      MEMORY[0x277D82BD8](v21);
      MEMORY[0x277D82BD8](v22);
      MEMORY[0x277D82BD8](v23);
    }

    objc_storeStrong(&oslog, 0);
    v16 = dispatch_queue_create("com.apple.accessibility.phoenixclassifier", 0);
    v17 = *(selfCopy + 11);
    *(selfCopy + 11) = v16;
    MEMORY[0x277D82BD8](v17);
    *(selfCopy + 16) = 0;
    *(selfCopy + 41) = 0;
    v18 = objc_alloc_init(AXPhoenixDataLogger);
    v19 = *(selfCopy + 21);
    *(selfCopy + 21) = v18;
    MEMORY[0x277D82BD8](v19);
    v43 = 0;
  }

  else
  {
    v45 = AXLogBackTap();
    v44 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_64(v56, "[AXPhoenixClassifier initWithDelegate:modelURL:configuration:]", v50);
      _os_log_error_impl(&dword_25E4AC000, v45, v44, "[PHOENIX] %s Error loading model from url %@", v56, 0x16u);
    }

    objc_storeStrong(&v45, 0);
    v53 = 0;
    v43 = 1;
  }

  objc_storeStrong(&v47, 0);
  if (!v43)
  {
LABEL_12:
    v53 = MEMORY[0x277D82BE0](selfCopy);
    v43 = 1;
  }

  objc_storeStrong(&v49, 0);
  objc_storeStrong(&v50, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  *MEMORY[0x277D85DE8];
  return v53;
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  if (self->_arrayDataPointer)
  {
    free(selfCopy->_arrayDataPointer);
    selfCopy->_arrayDataPointer = 0;
  }

  v2.receiver = selfCopy;
  v2.super_class = AXPhoenixClassifier;
  [(AXPhoenixClassifier *)&v2 dealloc];
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
    v5 = PolicyOptionToString_1(selfCopy->_policyOption);
    v6 = MEMORY[0x277D82BE0](v5);
    __os_log_helper_16_2_2_8_32_8_64(v12, "[AXPhoenixClassifier setPolicyOption:]", v6);
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
  v8 = __61__AXPhoenixClassifier_handleAccelerometerData_withTimestamp___block_invoke;
  v9 = &unk_279A20708;
  objc_copyWeak(&v10, &location);
  v11 = v18;
  v12 = var2;
  v13 = timestampCopy;
  dispatch_async(queue, &v5);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

uint64_t __61__AXPhoenixClassifier_handleAccelerometerData_withTimestamp___block_invoke(uint64_t a1)
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
  v6 = __28__AXPhoenixClassifier_reset__block_invoke;
  v7 = &unk_279A20668;
  objc_copyWeak(&v8, location);
  dispatch_async(queue, &v3);
  objc_destroyWeak(&v8);
  objc_destroyWeak(location);
}

void __28__AXPhoenixClassifier_reset__block_invoke(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  if (location[0])
  {
    *(location[0] + 6) = 0;
    [*(location[0] + 5) reset];
    [*(location[0] + 4) reset];
    objc_storeStrong(location[0] + 8, 0);
  }

  objc_storeStrong(location, 0);
}

- (unint64_t)_computeFrameLength
{
  selfCopy = self;
  v9 = a2;
  v4 = 0;
  v5 = &v4;
  v6 = 0x20000000;
  v7 = 32;
  v8 = 0;
  if (self->_shape)
  {
    [(NSArray *)selfCopy->_shape enumerateObjectsUsingBlock:?];
  }

  v3 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v3;
}

void __42__AXPhoenixClassifier__computeFrameLength__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if ([location[0] unsignedIntegerValue] > *(*(a1[4] + 8) + 24))
  {
    *(*(a1[4] + 8) + 24) = [location[0] unsignedIntegerValue];
  }

  objc_storeStrong(location, 0);
}

- (id)_initializeModelFromURL:(id)l outError:(id *)error
{
  v60 = *MEMORY[0x277D85DE8];
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
      __os_log_helper_16_2_2_8_32_8_64(v58, "[AXPhoenixClassifier _initializeModelFromURL:outError:]", location[0]);
      _os_log_impl(&dword_25E4AC000, v45, v44, "[PHOENIX] %s Using model from %@", v58, 0x16u);
    }

    objc_storeStrong(&v45, 0);
    modelDescription = [v49 modelDescription];
    inputDescriptionsByName = [modelDescription inputDescriptionsByName];
    allKeys = [inputDescriptionsByName allKeys];
    firstObject = [allKeys firstObject];
    modelInputName = selfCopy->_modelInputName;
    selfCopy->_modelInputName = firstObject;
    MEMORY[0x277D82BD8](modelInputName);
    MEMORY[0x277D82BD8](allKeys);
    MEMORY[0x277D82BD8](inputDescriptionsByName);
    MEMORY[0x277D82BD8](modelDescription);
    if (selfCopy->_modelInputName)
    {
      modelDescription2 = [v49 modelDescription];
      outputDescriptionsByName = [modelDescription2 outputDescriptionsByName];
      allKeys2 = [outputDescriptionsByName allKeys];
      firstObject2 = [allKeys2 firstObject];
      modelOutputName = selfCopy->_modelOutputName;
      selfCopy->_modelOutputName = firstObject2;
      MEMORY[0x277D82BD8](modelOutputName);
      MEMORY[0x277D82BD8](allKeys2);
      MEMORY[0x277D82BD8](outputDescriptionsByName);
      MEMORY[0x277D82BD8](modelDescription2);
      if (selfCopy->_modelOutputName)
      {
        modelDescription3 = [v49 modelDescription];
        inputDescriptionsByName2 = [modelDescription3 inputDescriptionsByName];
        v39 = [inputDescriptionsByName2 objectForKeyedSubscript:selfCopy->_modelInputName];
        MEMORY[0x277D82BD8](inputDescriptionsByName2);
        MEMORY[0x277D82BD8](modelDescription3);
        if ([v39 type] == 5)
        {
          multiArrayConstraint = [v39 multiArrayConstraint];
          shape = [multiArrayConstraint shape];
          shape = selfCopy->_shape;
          selfCopy->_shape = shape;
          MEMORY[0x277D82BD8](shape);
          MEMORY[0x277D82BD8](multiArrayConstraint);
          modelDescription4 = [v49 modelDescription];
          metadata = [modelDescription4 metadata];
          MEMORY[0x277D82BD8](modelDescription4);
          if (metadata)
          {
            v35 = [metadata objectForKeyedSubscript:*MEMORY[0x277CBFE90]];
            if (v35)
            {
              v10 = [v35 objectForKeyedSubscript:@"version"];
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
            objc_storeStrong(&v35, 0);
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

          v34 = AXLogBackTap();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            __os_log_helper_16_2_6_8_32_8_64_8_64_8_64_8_64_8_64(v54, "[AXPhoenixClassifier _initializeModelFromURL:outError:]", selfCopy->_modelVersion, selfCopy->_modelDescription, selfCopy->_modelInputName, selfCopy->_modelOutputName, metadata);
            _os_log_impl(&dword_25E4AC000, v34, OS_LOG_TYPE_INFO, "[PHOENIX] %s Version %@, description %@, ModelInputName %@, ModelOutputName %@, modelInfo %@", v54, 0x3Eu);
          }

          objc_storeStrong(&v34, 0);
          v53 = MEMORY[0x277D82BE0](v49);
          v46 = 1;
          objc_storeStrong(&metadata, 0);
        }

        else
        {
          v38 = AXLogBackTap();
          v37 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v22 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v39, "type")}];
            __os_log_helper_16_2_3_8_32_8_64_8_64(v55, "[AXPhoenixClassifier _initializeModelFromURL:outError:]", v22, &unk_287037BE8);
            _os_log_impl(&dword_25E4AC000, v38, v37, "[PHOENIX] %s Unexpected input feature type %@, expected %@ (MLFeatureTypeMultiArray)", v55, 0x20u);
            MEMORY[0x277D82BD8](v22);
          }

          objc_storeStrong(&v38, 0);
          v53 = 0;
          v46 = 1;
        }

        objc_storeStrong(&v39, 0);
      }

      else
      {
        v41 = AXLogBackTap();
        v40 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_2_1_8_32(v56, "[AXPhoenixClassifier _initializeModelFromURL:outError:]");
          _os_log_impl(&dword_25E4AC000, v41, v40, "[PHOENIX] %s Missing model output name", v56, 0xCu);
        }

        objc_storeStrong(&v41, 0);
        v53 = 0;
        v46 = 1;
      }
    }

    else
    {
      v43 = AXLogBackTap();
      v42 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_32(v57, "[AXPhoenixClassifier _initializeModelFromURL:outError:]");
        _os_log_impl(&dword_25E4AC000, v43, v42, "[PHOENIX] %s Missing model input name", v57, 0xCu);
      }

      objc_storeStrong(&v43, 0);
      v53 = 0;
      v46 = 1;
    }
  }

  else
  {
    oslog = AXLogBackTap();
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      if (errorCopy)
      {
        v32 = *errorCopy;
      }

      else
      {
        v32 = 0;
      }

      __os_log_helper_16_2_3_8_32_8_64_8_64(v59, "[AXPhoenixClassifier _initializeModelFromURL:outError:]", location[0], v32);
      _os_log_error_impl(&dword_25E4AC000, oslog, type, "[PHOENIX] %s Failed to load model from %@: %@", v59, 0x20u);
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

- (id)_createMultiArrayWithError:(id *)error
{
  selfCopy = self;
  v14 = a2;
  errorCopy = error;
  if (!self->_multiArray)
  {
    v12 = 0;
    v3 = objc_alloc(MEMORY[0x277CBFF48]);
    shape = selfCopy->_shape;
    obj = v12;
    v10 = [v3 initWithShape:shape dataType:65600 error:&obj];
    objc_storeStrong(&v12, obj);
    multiArray = selfCopy->_multiArray;
    selfCopy->_multiArray = v10;
    MEMORY[0x277D82BD8](multiArray);
    if (!selfCopy->_multiArray && errorCopy)
    {
      v9 = v12;
      v6 = v12;
      *errorCopy = v9;
    }

    objc_storeStrong(&v12, 0);
  }

  v7 = selfCopy->_multiArray;

  return v7;
}

- (id)_windowData:(BOOL)data
{
  v40 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v34 = a2;
  dataCopy = data;
  v31 = 0u;
  v32 = 0u;
  [(AccelerometerBuffer *)self->_accelBuffer data];
  *&v31 = v3;
  *(&v31 + 1) = v4;
  *&v32 = v5;
  *(&v32 + 1) = v6;
  v30 = v3;
  v29 = v4;
  oslog = AXLogBackTap();
  type = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
  {
    v22 = [MEMORY[0x277CCABB0] numberWithDouble:v30];
    v21 = [MEMORY[0x277CCABB0] numberWithDouble:v29];
    __os_log_helper_16_2_3_8_32_8_64_8_64(v39, "[AXPhoenixClassifier _windowData:]", v22, v21);
    _os_log_impl(&dword_25E4AC000, oslog, type, "[PHOENIX] %s tapTimestamp:[%@, %@]", v39, 0x20u);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v22);
  }

  objc_storeStrong(&oslog, 0);
  v26 = AXLogBackTap();
  v25 = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v17 = v26;
    v18 = v25;
    logBuffer = [(PredictionsBuffer *)selfCopy->_predictionsBuffer logBuffer];
    v19 = [logBuffer componentsJoinedByString:@":"];
    v24 = MEMORY[0x277D82BE0](v19);
    __os_log_helper_16_2_2_8_32_8_64(v38, "[AXPhoenixClassifier _windowData:]", v24);
    _os_log_impl(&dword_25E4AC000, v17, v18, "[PHOENIX] %s predictions[none,double,triple,class]: %@", v38, 0x16u);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](logBuffer);
    objc_storeStrong(&v24, 0);
  }

  objc_storeStrong(&v26, 0);
  logBuffer2 = [(AccelerometerBuffer *)selfCopy->_accelBuffer logBuffer];
  v36[0] = @"accelerometer";
  logBuffer3 = [(AccelerometerBuffer *)selfCopy->_accelBuffer logBuffer];
  v37[0] = logBuffer3;
  v36[1] = @"predictions";
  logBuffer4 = [(PredictionsBuffer *)selfCopy->_predictionsBuffer logBuffer];
  v37[1] = logBuffer4;
  v36[2] = @"result";
  v8 = @"doubletap";
  if (!dataCopy)
  {
    v8 = @"tripletap";
  }

  v37[2] = v8;
  v36[3] = @"startTime";
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:v30];
  v37[3] = v15;
  v36[4] = @"endTime";
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:v29];
  v37[4] = v16;
  v36[5] = @"modelDescription";
  if (selfCopy->_modelDescription)
  {
    modelDescription = selfCopy->_modelDescription;
  }

  else
  {
    modelDescription = &stru_287032B48;
  }

  v37[5] = modelDescription;
  v36[6] = @"modelVersion";
  if (selfCopy->_modelVersion)
  {
    modelVersion = selfCopy->_modelVersion;
  }

  else
  {
    modelVersion = &stru_287032B48;
  }

  v37[6] = modelVersion;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:7];
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](logBuffer4);
  MEMORY[0x277D82BD8](logBuffer3);
  v10 = MEMORY[0x277D82BE0](v23);
  objc_storeStrong(&v23, 0);
  *MEMORY[0x277D85DE8];

  return v10;
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
  v61 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  selfCopy = self;
  v51 = a2;
  timestampCopy = timestamp;
  ++self->_sampleCountSinceLastTrigger;
  [(AccelerometerBuffer *)selfCopy->_accelBuffer addData:dataCopy.var0 timestamp:dataCopy.var1, dataCopy.var2, timestampCopy];
  if (!(++selfCopy->_loopCounter % selfCopy->_runFrequency))
  {
    selfCopy->_loopCounter = 0;
    v49 = 0;
    v47 = 0;
    v18 = [(AXPhoenixClassifier *)selfCopy _multiArrayInputForClassifierWithError:&v47];
    objc_storeStrong(&v49, v47);
    v48 = v18;
    if (v18)
    {
      v14 = objc_alloc(MEMORY[0x277CBFED0]);
      modelInputName = selfCopy->_modelInputName;
      v17 = [MEMORY[0x277CBFEF8] featureValueWithMultiArray:v48];
      v59 = v17;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&modelInputName count:1];
      v42 = v49;
      v15 = [v14 initWithDictionary:? error:?];
      objc_storeStrong(&v49, v42);
      v43 = v15;
      MEMORY[0x277D82BD8](v16);
      MEMORY[0x277D82BD8](v17);
      if (v15)
      {
        classifier = selfCopy->_classifier;
        v38 = v49;
        v13 = [(MLModel *)classifier predictionFromFeatures:v43 error:&v38];
        objc_storeStrong(&v49, v38);
        v39 = v13;
        if (v13)
        {
          v35 = [v39 featureValueForName:selfCopy->_modelOutputName];
          multiArrayValue = [v35 multiArrayValue];
          v33 = [[Prediction alloc] initWithModelOutput:multiArrayValue];
          if (!-[AXPhoenixClassifier _clippedDataShowsPrediction:](selfCopy, "_clippedDataShowsPrediction:", [v33 predictedClass]))
          {
            v32 = AXLogBackTap();
            v31 = OS_LOG_TYPE_INFO;
            if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              __os_log_helper_16_2_2_8_32_8_0(v55, "-[AXPhoenixClassifier _handleAccelerometerData:withTimestamp:]", [v33 predictedClass]);
              _os_log_impl(&dword_25E4AC000, v32, v31, "[PHOENIX] %s Mitigating back tap. Clipped data doesn't show a %lu", v55, 0x16u);
            }

            objc_storeStrong(&v32, 0);
            [v33 setPredictedClass:0];
            [v33 setNoneScore:1.0];
          }

          [(PredictionsBuffer *)selfCopy->_predictionsBuffer addPrediction:v33];
          v29 = 0;
          v30 = 0;
          v29 = [(PredictionsBuffer *)selfCopy->_predictionsBuffer bestPredictionUsingPolicyOption:selfCopy->_policyOption];
          v30 = v5;
          if (v29)
          {
            v28 = [(AXPhoenixClassifier *)selfCopy _countThresholdForGesturePrediction:v29, v30];
            if (v30 > v28)
            {
              selfCopy->_sampleCountSinceLastTrigger = 0;
              v26 = 0u;
              v27 = 0u;
              [(AccelerometerBuffer *)selfCopy->_accelBuffer data];
              *&v26 = v6;
              *(&v26 + 1) = v7;
              *&v27 = v8;
              *(&v27 + 1) = v9;
              if (v29 == 1 && (selfCopy->_policyOption & 1) != 0)
              {
                v25 = [(AXPhoenixClassifier *)selfCopy _windowData:1];
                [(AXPhoenixClassifier *)selfCopy _logWindowData:v25 doubleTap:0 tapData:v26, v27];
                [(AXPhoenixClassifierDelegate *)selfCopy->_delegate phoenixClassifierDidDetectDoubleTap:selfCopy data:v25 context:v26, v27];
                objc_storeStrong(&v25, 0);
              }

              else
              {
                v23 = 0;
                v21 = 0;
                v12 = 0;
                if (v29 == 2)
                {
                  v12 = 0;
                  if ((selfCopy->_policyOption & 2) != 0)
                  {
                    predictionCounts = [(PredictionsBuffer *)selfCopy->_predictionsBuffer predictionCounts];
                    v23 = 1;
                    v22 = [predictionCounts objectAtIndexedSubscript:1];
                    v21 = 1;
                    v12 = [v22 intValue] > 0;
                  }
                }

                if (v21)
                {
                  MEMORY[0x277D82BD8](v22);
                }

                if (v23)
                {
                  MEMORY[0x277D82BD8](predictionCounts);
                }

                if (v12)
                {
                  v20 = [(AXPhoenixClassifier *)selfCopy _windowData:0];
                  [(AXPhoenixClassifier *)selfCopy _logWindowData:v20 doubleTap:0 tapData:v26, v27];
                  [(AXPhoenixClassifierDelegate *)selfCopy->_delegate phoenixClassifierDidDetectTripleTap:selfCopy data:v20 context:v26, v27];
                  oslog = AXLogBackTap();
                  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
                  {
                    predictionCounts2 = [(PredictionsBuffer *)selfCopy->_predictionsBuffer predictionCounts];
                    v10 = [predictionCounts2 objectAtIndexedSubscript:1];
                    __os_log_helper_16_2_2_8_32_8_64(v54, "[AXPhoenixClassifier _handleAccelerometerData:withTimestamp:]", v10);
                    _os_log_impl(&dword_25E4AC000, oslog, OS_LOG_TYPE_DEFAULT, "[PHOENIX] %s Predicted double taps: %@", v54, 0x16u);
                    MEMORY[0x277D82BD8](v10);
                    MEMORY[0x277D82BD8](predictionCounts2);
                  }

                  objc_storeStrong(&oslog, 0);
                  objc_storeStrong(&v20, 0);
                }
              }
            }
          }

          objc_storeStrong(&v33, 0);
          objc_storeStrong(&multiArrayValue, 0);
          objc_storeStrong(&v35, 0);
          v44 = 0;
        }

        else
        {
          v37 = AXLogBackTap();
          v36 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_2_8_32_8_64(v56, "[AXPhoenixClassifier _handleAccelerometerData:withTimestamp:]", v49);
            _os_log_error_impl(&dword_25E4AC000, v37, v36, "[PHOENIX] %s Model prediction failed with error: %@", v56, 0x16u);
          }

          objc_storeStrong(&v37, 0);
          [(AXPhoenixClassifierDelegate *)selfCopy->_delegate phoenixClassifier:selfCopy failedWithError:v49];
          v44 = 1;
        }

        objc_storeStrong(&v39, 0);
      }

      else
      {
        v41 = AXLogBackTap();
        v40 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_3_8_32_8_64_8_64(v57, "[AXPhoenixClassifier _handleAccelerometerData:withTimestamp:]", selfCopy->_modelInputName, v49);
          _os_log_error_impl(&dword_25E4AC000, v41, v40, "[PHOENIX] %s Failed to create modelInput %@: %@", v57, 0x20u);
        }

        objc_storeStrong(&v41, 0);
        [(AXPhoenixClassifierDelegate *)selfCopy->_delegate phoenixClassifier:selfCopy failedWithError:v49];
        v44 = 1;
      }

      objc_storeStrong(&v43, 0);
    }

    else
    {
      v46 = AXLogBackTap();
      type = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_64(v60, "[AXPhoenixClassifier _handleAccelerometerData:withTimestamp:]", v49);
        _os_log_error_impl(&dword_25E4AC000, v46, type, "[PHOENIX] %s Error creating multiArray: %@", v60, 0x16u);
      }

      objc_storeStrong(&v46, 0);
      [(AXPhoenixClassifierDelegate *)selfCopy->_delegate phoenixClassifier:selfCopy failedWithError:v49];
      v44 = 1;
    }

    objc_storeStrong(&v48, 0);
    objc_storeStrong(&v49, 0);
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
  if ([(AXPhoenixClassifier *)selfCopy falsePositiveLoggingEnabled])
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
    v14 = __56__AXPhoenixClassifier__logWindowData_doubleTap_tapData___block_invoke;
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

void __56__AXPhoenixClassifier__logWindowData_doubleTap_tapData___block_invoke(id *a1, char a2, id obj)
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

- (BOOL)_clippedDataShowsPrediction:(unint64_t)prediction
{
  v43 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v35 = a2;
  predictionCopy = prediction;
  if (prediction)
  {
    v33 = fmax(0.35, fmin(0.7, selfCopy->_tapSpeed));
    v32 = (selfCopy->_frameLength / 0xA);
    policyOption = selfCopy->_policyOption;
    switch(policyOption)
    {
      case 1:
        v32 = v33 + 0.1;
        break;
      case 2:
        v32 = v33 * 2.0 + 0.1;
        break;
      case 3:
        if (predictionCopy == 1)
        {
          v13 = v33 * 2.0 + -0.1;
        }

        else
        {
          v13 = v33 * 2.0 + 1.0;
        }

        v32 = v13;
        break;
    }

    v32 = fmin(2.0, v32);
    v31 = 0;
    v29 = 0;
    v12 = [(AXPhoenixClassifier *)selfCopy _clippedMultiArrayInputWithError:&v29 beforeTime:v32];
    objc_storeStrong(&v31, v29);
    v30 = v12;
    if (v12)
    {
      v8 = objc_alloc(MEMORY[0x277CBFED0]);
      modelInputName = selfCopy->_modelInputName;
      v11 = [MEMORY[0x277CBFEF8] featureValueWithMultiArray:v30];
      v41 = v11;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&modelInputName count:1];
      v24 = v31;
      v9 = [v8 initWithDictionary:? error:?];
      objc_storeStrong(&v31, v24);
      v25 = v9;
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](v11);
      if (v9)
      {
        classifier = selfCopy->_classifier;
        obj = v31;
        v7 = [(MLModel *)classifier predictionFromFeatures:v25 error:&obj];
        objc_storeStrong(&v31, obj);
        v21 = v7;
        if (v7)
        {
          v17 = [v21 featureValueForName:selfCopy->_modelOutputName];
          multiArrayValue = [v17 multiArrayValue];
          v4 = [Prediction alloc];
          v15 = [(Prediction *)v4 initWithModelOutput:multiArrayValue];
          predictedClass = [(Prediction *)v15 predictedClass];
          v37 = predictedClass == predictionCopy;
          v26 = 1;
          objc_storeStrong(&v15, 0);
          objc_storeStrong(&multiArrayValue, 0);
          objc_storeStrong(&v17, 0);
        }

        else
        {
          oslog = AXLogBackTap();
          v18 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_2_8_32_8_64(v38, "[AXPhoenixClassifier _clippedDataShowsPrediction:]", v31);
            _os_log_error_impl(&dword_25E4AC000, oslog, v18, "[PHOENIX] %s Model prediction failed with error: %@", v38, 0x16u);
          }

          objc_storeStrong(&oslog, 0);
          [(AXPhoenixClassifierDelegate *)selfCopy->_delegate phoenixClassifier:selfCopy failedWithError:v31];
          v37 = 0;
          v26 = 1;
        }

        objc_storeStrong(&v21, 0);
      }

      else
      {
        v23 = AXLogBackTap();
        v22 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_3_8_32_8_64_8_64(v39, "[AXPhoenixClassifier _clippedDataShowsPrediction:]", selfCopy->_modelInputName, v31);
          _os_log_error_impl(&dword_25E4AC000, v23, v22, "[PHOENIX] %s Failed to create modelInput %@: %@", v39, 0x20u);
        }

        objc_storeStrong(&v23, 0);
        [(AXPhoenixClassifierDelegate *)selfCopy->_delegate phoenixClassifier:selfCopy failedWithError:v31];
        v37 = 0;
        v26 = 1;
      }

      objc_storeStrong(&v25, 0);
    }

    else
    {
      v28 = AXLogBackTap();
      v27 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_64(v42, "[AXPhoenixClassifier _clippedDataShowsPrediction:]", v31);
        _os_log_error_impl(&dword_25E4AC000, v28, v27, "[PHOENIX] %s Error creating multiArray: %@", v42, 0x16u);
      }

      objc_storeStrong(&v28, 0);
      [(AXPhoenixClassifierDelegate *)selfCopy->_delegate phoenixClassifier:selfCopy failedWithError:v31];
      v37 = 0;
      v26 = 1;
    }

    objc_storeStrong(&v30, 0);
    objc_storeStrong(&v31, 0);
  }

  else
  {
    v37 = 1;
  }

  *MEMORY[0x277D85DE8];
  return v37;
}

- (id)_clippedMultiArrayInputWithError:(id *)error beforeTime:(double)time
{
  v43[3] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v41 = a2;
  errorCopy = error;
  timeCopy = time;
  v36 = 0.0;
  v37 = 0.0;
  v38 = 0.0;
  v35 = [(AccelerometerBuffer *)self->_accelBuffer bufferWithMovingSum:&v36];
  v32 = 0.0;
  v33 = 0.0;
  v34 = 0.0;
  v32 = v36 / selfCopy->_frameLength;
  v33 = v37 / selfCopy->_frameLength;
  v34 = v38 / selfCopy->_frameLength;
  v31 = 0;
  v4 = [v35 count];
  v30 = v4 - selfCopy->_frameLength;
  v29 = (timeCopy * 100.0);
  for (i = v30; ; ++i)
  {
    v20 = i;
    if (v20 >= [v35 count])
    {
      break;
    }

    v27 = i - v30;
    frameLength = selfCopy->_frameLength;
    v26 = i - v30;
    v25 = i - v30 + selfCopy->_frameLength;
    v24 = i - v30 + 2 * selfCopy->_frameLength;
    v23 = [v35 objectAtIndexedSubscript:i];
    v19 = i;
    v6 = [v35 count];
    if (v19 < v6 - v30 - v29)
    {
      v16 = [v35 objectAtIndexedSubscript:i];
      [v16 setX:?];
      MEMORY[0x277D82BD8](v16);
      v17 = [v35 objectAtIndexedSubscript:i];
      [v17 setY:0.0];
      MEMORY[0x277D82BD8](v17);
      v18 = [v35 objectAtIndexedSubscript:i];
      [v18 setZ:0.0];
      MEMORY[0x277D82BD8](v18);
    }

    [v23 x];
    selfCopy->_arrayDataPointer[v26] = v7 - v32;
    [v23 y];
    selfCopy->_arrayDataPointer[v25] = v8 - v33;
    [v23 z];
    selfCopy->_arrayDataPointer[v24] = v9 - v34;
    objc_storeStrong(&v23, 0);
  }

  v22 = 65600;
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:selfCopy->_frameLength];
  v43[0] = v14;
  v43[1] = &unk_287037C00;
  v43[2] = &unk_287037C00;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:3];
  MEMORY[0x277D82BD8](v14);
  v10 = objc_alloc(MEMORY[0x277CBFF48]);
  v11 = [v10 initWithDataPointer:selfCopy->_arrayDataPointer shape:selfCopy->_shape dataType:v22 strides:v21 deallocator:&__block_literal_global_3 error:errorCopy];
  v12 = v31;
  v31 = v11;
  MEMORY[0x277D82BD8](v12);
  v15 = MEMORY[0x277D82BE0](v31);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v35, 0);
  *MEMORY[0x277D85DE8];

  return v15;
}

- (id)_multiArrayInputForClassifierWithError:(id *)error
{
  v39[3] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v37 = a2;
  errorCopy = error;
  shouldResetBuffer = self->_shouldResetBuffer;
  if (shouldResetBuffer)
  {
    selfCopy->_shouldResetBuffer = 0;
    [(AccelerometerBuffer *)selfCopy->_accelBuffer resetMovingSum];
    [(PredictionsBuffer *)selfCopy->_predictionsBuffer reset];
  }

  v32 = 0.0;
  v33 = 0.0;
  v34 = 0.0;
  v31 = [(AccelerometerBuffer *)selfCopy->_accelBuffer bufferWithMovingSum:&v32];
  v28 = 0.0;
  v29 = 0.0;
  v30 = 0.0;
  v28 = v32 / selfCopy->_frameLength;
  v29 = v33 / selfCopy->_frameLength;
  v30 = v34 / selfCopy->_frameLength;
  v27 = 0;
  v3 = [v31 count];
  v26 = v3 - selfCopy->_frameLength;
  for (i = v26; ; ++i)
  {
    v17 = i;
    if (v17 >= [v31 count])
    {
      break;
    }

    v24 = i - v26;
    frameLength = selfCopy->_frameLength;
    v23 = i - v26;
    v22 = i - v26 + selfCopy->_frameLength;
    v21 = i - v26 + 2 * selfCopy->_frameLength;
    if (shouldResetBuffer)
    {
      v14 = [v31 objectAtIndexedSubscript:i];
      [v14 setX:?];
      MEMORY[0x277D82BD8](v14);
      v15 = [v31 objectAtIndexedSubscript:i];
      [v15 setY:0.0];
      MEMORY[0x277D82BD8](v15);
      v16 = [v31 objectAtIndexedSubscript:i];
      [v16 setZ:0.0];
      MEMORY[0x277D82BD8](v16);
    }

    v20 = [v31 objectAtIndexedSubscript:i];
    [v20 x];
    selfCopy->_arrayDataPointer[v23] = v5 - v28;
    [v20 y];
    selfCopy->_arrayDataPointer[v22] = v6 - v29;
    [v20 z];
    selfCopy->_arrayDataPointer[v21] = v7 - v30;
    objc_storeStrong(&v20, 0);
  }

  v19 = 65600;
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:selfCopy->_frameLength];
  v39[0] = v12;
  v39[1] = &unk_287037C00;
  v39[2] = &unk_287037C00;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:3];
  MEMORY[0x277D82BD8](v12);
  v8 = objc_alloc(MEMORY[0x277CBFF48]);
  v9 = [v8 initWithDataPointer:selfCopy->_arrayDataPointer shape:selfCopy->_shape dataType:v19 strides:v18 deallocator:&__block_literal_global_239 error:errorCopy];
  v10 = v27;
  v27 = v9;
  MEMORY[0x277D82BD8](v10);
  v13 = MEMORY[0x277D82BE0](v27);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v31, 0);
  *MEMORY[0x277D85DE8];

  return v13;
}

@end
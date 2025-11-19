@interface AXPhoenixClassifier
- (AXPhoenixClassifier)initWithDelegate:(id)a3 modelURL:(id)a4 configuration:(id)a5;
- (BOOL)_clippedDataShowsPrediction:(unint64_t)a3;
- (id)_clippedMultiArrayInputWithError:(id *)a3 beforeTime:(double)a4;
- (id)_createMultiArrayWithError:(id *)a3;
- (id)_initializeModelFromURL:(id)a3 outError:(id *)a4;
- (id)_multiArrayInputForClassifierWithError:(id *)a3;
- (id)_windowData:(BOOL)a3;
- (unint64_t)_computeFrameLength;
- (unint64_t)_countThresholdForGesturePrediction:(id)a3;
- (void)_handleAccelerometerData:(id)a3 withTimestamp:(double)a4;
- (void)_logWindowData:(id)a3 doubleTap:(BOOL)a4 tapData:(id)a5;
- (void)dealloc;
- (void)handleAccelerometerData:(id)a3 withTimestamp:(double)a4;
- (void)reset;
- (void)setPolicyOption:(int)a3;
@end

@implementation AXPhoenixClassifier

- (AXPhoenixClassifier)initWithDelegate:(id)a3 modelURL:(id)a4 configuration:(id)a5
{
  v57 = *MEMORY[0x277D85DE8];
  v52 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v50 = 0;
  objc_storeStrong(&v50, a4);
  v49 = 0;
  objc_storeStrong(&v49, a5);
  v5 = v52;
  v52 = 0;
  v48.receiver = v5;
  v48.super_class = AXPhoenixClassifier;
  v52 = [(AXPhoenixClassifier *)&v48 init];
  objc_storeStrong(&v52, v52);
  if (!v52)
  {
    goto LABEL_12;
  }

  objc_storeStrong(v52 + 1, location[0]);
  objc_storeStrong(v52 + 2, v49);
  v47 = 0;
  v46 = 0;
  v37 = [v52 _initializeModelFromURL:v50 outError:&v46];
  objc_storeStrong(&v47, v46);
  v6 = *(v52 + 3);
  *(v52 + 3) = v37;
  MEMORY[0x277D82BD8](v6);
  if (*(v52 + 3))
  {
    *(v52 + 14) = 3;
    v7 = [v52 _computeFrameLength];
    *(v52 + 9) = v7;
    v32 = [*(v52 + 10) objectAtIndexedSubscript:0];
    v28 = 8 * [v32 unsignedIntValue];
    v31 = [*(v52 + 10) objectAtIndexedSubscript:1];
    v29 = v28 * [v31 unsignedIntValue];
    v30 = [*(v52 + 10) objectAtIndexedSubscript:2];
    v33 = v29 * [v30 unsignedIntValue];
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](v32);
    v42[1] = v33;
    v8 = malloc_type_malloc(v33, 0x100004000313F17uLL);
    *(v52 + 17) = v8;
    v35 = [AccelerometerBuffer alloc];
    v34 = [v49 maxAccelerationBufferSize];
    v9 = -[AccelerometerBuffer initWithCapacity:accelerometerSampleRateInHz:](v35, "initWithCapacity:accelerometerSampleRateInHz:", v34, [v49 accelerometerSampleRateInHz]);
    v10 = *(v52 + 4);
    *(v52 + 4) = v9;
    MEMORY[0x277D82BD8](v10);
    v11 = [PredictionsBuffer alloc];
    v12 = [(PredictionsBuffer *)v11 initWithConfiguration:v49];
    v13 = *(v52 + 5);
    *(v52 + 5) = v12;
    MEMORY[0x277D82BD8](v13);
    v36 = [*(v52 + 2) accelerometerSampleRateInHz];
    v14 = [*(v52 + 2) minDurationBetweenTriggersInSeconds];
    *(v52 + 19) = v36 * v14;
    v42[0] = AXLogBackTap();
    v41 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v42[0], OS_LOG_TYPE_INFO))
    {
      v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(v52 + 2), "accelerometerSampleRateInHz")}];
      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(v52 + 2), "minDurationBetweenTriggersInSeconds")}];
      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(v52 + 19)];
      __os_log_helper_16_2_4_8_32_8_64_8_64_8_64(v55, "[AXPhoenixClassifier initWithDelegate:modelURL:configuration:]", v27, v26, v25);
      _os_log_impl(&dword_25E4AC000, v42[0], v41, "[PHOENIX] %s Minimum samples between triggers = %@ * %@ = %@", v55, 0x2Au);
      MEMORY[0x277D82BD8](v25);
      MEMORY[0x277D82BD8](v26);
      MEMORY[0x277D82BD8](v27);
    }

    objc_storeStrong(v42, 0);
    v24 = [*(v52 + 2) accelerometerSampleRateInHz];
    v15 = [*(v52 + 2) modelPredictionRateInHz];
    *(v52 + 18) = v24 / v15;
    oslog = AXLogBackTap();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(v52 + 2), "accelerometerSampleRateInHz")}];
      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(v52 + 2), "modelPredictionRateInHz")}];
      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(v52 + 18)];
      __os_log_helper_16_2_4_8_32_8_64_8_64_8_64(v54, "[AXPhoenixClassifier initWithDelegate:modelURL:configuration:]", v23, v22, v21);
      _os_log_impl(&dword_25E4AC000, oslog, OS_LOG_TYPE_INFO, "[PHOENIX] %s Loop frequency = %@ / %@ = %@", v54, 0x2Au);
      MEMORY[0x277D82BD8](v21);
      MEMORY[0x277D82BD8](v22);
      MEMORY[0x277D82BD8](v23);
    }

    objc_storeStrong(&oslog, 0);
    v16 = dispatch_queue_create("com.apple.accessibility.phoenixclassifier", 0);
    v17 = *(v52 + 11);
    *(v52 + 11) = v16;
    MEMORY[0x277D82BD8](v17);
    *(v52 + 16) = 0;
    *(v52 + 41) = 0;
    v18 = objc_alloc_init(AXPhoenixDataLogger);
    v19 = *(v52 + 21);
    *(v52 + 21) = v18;
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
    v53 = MEMORY[0x277D82BE0](v52);
    v43 = 1;
  }

  objc_storeStrong(&v49, 0);
  objc_storeStrong(&v50, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v52, 0);
  *MEMORY[0x277D85DE8];
  return v53;
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  if (self->_arrayDataPointer)
  {
    free(v4->_arrayDataPointer);
    v4->_arrayDataPointer = 0;
  }

  v2.receiver = v4;
  v2.super_class = AXPhoenixClassifier;
  [(AXPhoenixClassifier *)&v2 dealloc];
}

- (void)setPolicyOption:(int)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v11 = self;
  v10 = a2;
  v9 = a3;
  self->_policyOption = a3;
  oslog = AXLogBackTap();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    v4 = type;
    v5 = PolicyOptionToString_1(v11->_policyOption);
    v6 = MEMORY[0x277D82BE0](v5);
    __os_log_helper_16_2_2_8_32_8_64(v12, "[AXPhoenixClassifier setPolicyOption:]", v6);
    _os_log_impl(&dword_25E4AC000, log, v4, "[PHOENIX] %s Setting policy to %@", v12, 0x16u);
    MEMORY[0x277D82BD8](v5);
    objc_storeStrong(&v6, 0);
  }

  objc_storeStrong(&oslog, 0);
  *MEMORY[0x277D85DE8];
}

- (void)handleAccelerometerData:(id)a3 withTimestamp:(double)a4
{
  *&v18 = a3.var0;
  *(&v18 + 1) = *&a3.var1;
  var2 = a3.var2;
  v17 = self;
  v16 = a2;
  v15 = a4;
  objc_initWeak(&location, self);
  queue = v17->_queue;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __61__AXPhoenixClassifier_handleAccelerometerData_withTimestamp___block_invoke;
  v9 = &unk_279A20708;
  objc_copyWeak(&v10, &location);
  v11 = v18;
  v12 = var2;
  v13 = v15;
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
  v10 = self;
  location[1] = a2;
  objc_initWeak(location, self);
  queue = v10->_queue;
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
  v10 = self;
  v9 = a2;
  v4 = 0;
  v5 = &v4;
  v6 = 0x20000000;
  v7 = 32;
  v8 = 0;
  if (self->_shape)
  {
    [(NSArray *)v10->_shape enumerateObjectsUsingBlock:?];
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

- (id)_initializeModelFromURL:(id)a3 outError:(id *)a4
{
  v60 = *MEMORY[0x277D85DE8];
  v52 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v50 = a4;
  v49 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:location[0] error:a4];
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
    v31 = [v49 modelDescription];
    v30 = [v31 inputDescriptionsByName];
    v29 = [v30 allKeys];
    v4 = [v29 firstObject];
    modelInputName = v52->_modelInputName;
    v52->_modelInputName = v4;
    MEMORY[0x277D82BD8](modelInputName);
    MEMORY[0x277D82BD8](v29);
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v31);
    if (v52->_modelInputName)
    {
      v28 = [v49 modelDescription];
      v27 = [v28 outputDescriptionsByName];
      v26 = [v27 allKeys];
      v6 = [v26 firstObject];
      modelOutputName = v52->_modelOutputName;
      v52->_modelOutputName = v6;
      MEMORY[0x277D82BD8](modelOutputName);
      MEMORY[0x277D82BD8](v26);
      MEMORY[0x277D82BD8](v27);
      MEMORY[0x277D82BD8](v28);
      if (v52->_modelOutputName)
      {
        v25 = [v49 modelDescription];
        v24 = [v25 inputDescriptionsByName];
        v39 = [v24 objectForKeyedSubscript:v52->_modelInputName];
        MEMORY[0x277D82BD8](v24);
        MEMORY[0x277D82BD8](v25);
        if ([v39 type] == 5)
        {
          v23 = [v39 multiArrayConstraint];
          v8 = [v23 shape];
          shape = v52->_shape;
          v52->_shape = v8;
          MEMORY[0x277D82BD8](shape);
          MEMORY[0x277D82BD8](v23);
          v21 = [v49 modelDescription];
          v36 = [v21 metadata];
          MEMORY[0x277D82BD8](v21);
          if (v36)
          {
            v35 = [v36 objectForKeyedSubscript:*MEMORY[0x277CBFE90]];
            if (v35)
            {
              v10 = [v35 objectForKeyedSubscript:@"version"];
              modelVersion = v52->_modelVersion;
              v52->_modelVersion = v10;
              MEMORY[0x277D82BD8](modelVersion);
            }

            if (![(NSString *)v52->_modelVersion length])
            {
              v12 = [v36 objectForKeyedSubscript:*MEMORY[0x277CBFEA8]];
              v13 = v52->_modelVersion;
              v52->_modelVersion = v12;
              MEMORY[0x277D82BD8](v13);
            }

            v14 = [v36 objectForKeyedSubscript:*MEMORY[0x277CBFE98]];
            modelDescription = v52->_modelDescription;
            v52->_modelDescription = v14;
            MEMORY[0x277D82BD8](modelDescription);
            objc_storeStrong(&v35, 0);
          }

          if (!v52->_modelVersion)
          {
            v20 = [location[0] URLByDeletingPathExtension];
            v16 = [v20 lastPathComponent];
            v17 = v52->_modelVersion;
            v52->_modelVersion = v16;
            MEMORY[0x277D82BD8](v17);
            MEMORY[0x277D82BD8](v20);
          }

          v34 = AXLogBackTap();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            __os_log_helper_16_2_6_8_32_8_64_8_64_8_64_8_64_8_64(v54, "[AXPhoenixClassifier _initializeModelFromURL:outError:]", v52->_modelVersion, v52->_modelDescription, v52->_modelInputName, v52->_modelOutputName, v36);
            _os_log_impl(&dword_25E4AC000, v34, OS_LOG_TYPE_INFO, "[PHOENIX] %s Version %@, description %@, ModelInputName %@, ModelOutputName %@, modelInfo %@", v54, 0x3Eu);
          }

          objc_storeStrong(&v34, 0);
          v53 = MEMORY[0x277D82BE0](v49);
          v46 = 1;
          objc_storeStrong(&v36, 0);
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
      if (v50)
      {
        v32 = *v50;
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

- (id)_createMultiArrayWithError:(id *)a3
{
  v15 = self;
  v14 = a2;
  v13 = a3;
  if (!self->_multiArray)
  {
    v12 = 0;
    v3 = objc_alloc(MEMORY[0x277CBFF48]);
    shape = v15->_shape;
    obj = v12;
    v10 = [v3 initWithShape:shape dataType:65600 error:&obj];
    objc_storeStrong(&v12, obj);
    multiArray = v15->_multiArray;
    v15->_multiArray = v10;
    MEMORY[0x277D82BD8](multiArray);
    if (!v15->_multiArray && v13)
    {
      v9 = v12;
      v6 = v12;
      *v13 = v9;
    }

    objc_storeStrong(&v12, 0);
  }

  v7 = v15->_multiArray;

  return v7;
}

- (id)_windowData:(BOOL)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v35 = self;
  v34 = a2;
  v33 = a3;
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
    v20 = [(PredictionsBuffer *)v35->_predictionsBuffer logBuffer];
    v19 = [v20 componentsJoinedByString:@":"];
    v24 = MEMORY[0x277D82BE0](v19);
    __os_log_helper_16_2_2_8_32_8_64(v38, "[AXPhoenixClassifier _windowData:]", v24);
    _os_log_impl(&dword_25E4AC000, v17, v18, "[PHOENIX] %s predictions[none,double,triple,class]: %@", v38, 0x16u);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v20);
    objc_storeStrong(&v24, 0);
  }

  objc_storeStrong(&v26, 0);
  v7 = [(AccelerometerBuffer *)v35->_accelBuffer logBuffer];
  v36[0] = @"accelerometer";
  v13 = [(AccelerometerBuffer *)v35->_accelBuffer logBuffer];
  v37[0] = v13;
  v36[1] = @"predictions";
  v14 = [(PredictionsBuffer *)v35->_predictionsBuffer logBuffer];
  v37[1] = v14;
  v36[2] = @"result";
  v8 = @"doubletap";
  if (!v33)
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
  if (v35->_modelDescription)
  {
    modelDescription = v35->_modelDescription;
  }

  else
  {
    modelDescription = &stru_287032B48;
  }

  v37[5] = modelDescription;
  v36[6] = @"modelVersion";
  if (v35->_modelVersion)
  {
    modelVersion = v35->_modelVersion;
  }

  else
  {
    modelVersion = &stru_287032B48;
  }

  v37[6] = modelVersion;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:7];
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v13);
  v10 = MEMORY[0x277D82BE0](v23);
  objc_storeStrong(&v23, 0);
  *MEMORY[0x277D85DE8];

  return v10;
}

- (unint64_t)_countThresholdForGesturePrediction:(id)a3
{
  var0 = a3.var0;
  policyOption = self->_policyOption;
  switch(policyOption)
  {
    case 1:
      v9 = [(AXPhoenixClassifierConfiguration *)self->_configuration doubleTapPolicyThresholds];
      v8 = [(NSArray *)v9 objectAtIndex:1];
      v14 = [v8 unsignedIntegerValue];
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](v9);
      break;
    case 2:
      v7 = [(AXPhoenixClassifierConfiguration *)self->_configuration tripleTapPolicyThresholds];
      v6 = [(NSArray *)v7 objectAtIndex:1];
      v14 = [v6 unsignedIntegerValue];
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v7);
      break;
    case 3:
      if (self->_tapSpeed > 0.0 && a3.var0 == 1)
      {
        return vcvtps_u32_f32(self->_tapSpeed * 10.0);
      }

      else
      {
        v11 = [(AXPhoenixClassifierConfiguration *)self->_configuration generalPolicyThresholds];
        v10 = [(NSArray *)v11 objectAtIndex:var0];
        v14 = [v10 unsignedIntegerValue];
        MEMORY[0x277D82BD8](v10);
        MEMORY[0x277D82BD8](v11);
      }

      break;
    default:
      v5 = [(AXPhoenixClassifierConfiguration *)self->_configuration generalPolicyThresholds];
      v4 = [(NSArray *)v5 objectAtIndex:var0];
      v14 = [v4 unsignedIntegerValue];
      MEMORY[0x277D82BD8](v4);
      MEMORY[0x277D82BD8](v5);
      break;
  }

  return v14;
}

- (void)_handleAccelerometerData:(id)a3 withTimestamp:(double)a4
{
  v61 = *MEMORY[0x277D85DE8];
  v53 = a3;
  v52 = self;
  v51 = a2;
  v50 = a4;
  ++self->_sampleCountSinceLastTrigger;
  [(AccelerometerBuffer *)v52->_accelBuffer addData:v53.var0 timestamp:v53.var1, v53.var2, v50];
  if (!(++v52->_loopCounter % v52->_runFrequency))
  {
    v52->_loopCounter = 0;
    v49 = 0;
    v47 = 0;
    v18 = [(AXPhoenixClassifier *)v52 _multiArrayInputForClassifierWithError:&v47];
    objc_storeStrong(&v49, v47);
    v48 = v18;
    if (v18)
    {
      v14 = objc_alloc(MEMORY[0x277CBFED0]);
      modelInputName = v52->_modelInputName;
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
        classifier = v52->_classifier;
        v38 = v49;
        v13 = [(MLModel *)classifier predictionFromFeatures:v43 error:&v38];
        objc_storeStrong(&v49, v38);
        v39 = v13;
        if (v13)
        {
          v35 = [v39 featureValueForName:v52->_modelOutputName];
          v34 = [v35 multiArrayValue];
          v33 = [[Prediction alloc] initWithModelOutput:v34];
          if (!-[AXPhoenixClassifier _clippedDataShowsPrediction:](v52, "_clippedDataShowsPrediction:", [v33 predictedClass]))
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

          [(PredictionsBuffer *)v52->_predictionsBuffer addPrediction:v33];
          v29 = 0;
          v30 = 0;
          v29 = [(PredictionsBuffer *)v52->_predictionsBuffer bestPredictionUsingPolicyOption:v52->_policyOption];
          v30 = v5;
          if (v29)
          {
            v28 = [(AXPhoenixClassifier *)v52 _countThresholdForGesturePrediction:v29, v30];
            if (v30 > v28)
            {
              v52->_sampleCountSinceLastTrigger = 0;
              v26 = 0u;
              v27 = 0u;
              [(AccelerometerBuffer *)v52->_accelBuffer data];
              *&v26 = v6;
              *(&v26 + 1) = v7;
              *&v27 = v8;
              *(&v27 + 1) = v9;
              if (v29 == 1 && (v52->_policyOption & 1) != 0)
              {
                v25 = [(AXPhoenixClassifier *)v52 _windowData:1];
                [(AXPhoenixClassifier *)v52 _logWindowData:v25 doubleTap:0 tapData:v26, v27];
                [(AXPhoenixClassifierDelegate *)v52->_delegate phoenixClassifierDidDetectDoubleTap:v52 data:v25 context:v26, v27];
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
                  if ((v52->_policyOption & 2) != 0)
                  {
                    v24 = [(PredictionsBuffer *)v52->_predictionsBuffer predictionCounts];
                    v23 = 1;
                    v22 = [v24 objectAtIndexedSubscript:1];
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
                  MEMORY[0x277D82BD8](v24);
                }

                if (v12)
                {
                  v20 = [(AXPhoenixClassifier *)v52 _windowData:0];
                  [(AXPhoenixClassifier *)v52 _logWindowData:v20 doubleTap:0 tapData:v26, v27];
                  [(AXPhoenixClassifierDelegate *)v52->_delegate phoenixClassifierDidDetectTripleTap:v52 data:v20 context:v26, v27];
                  oslog = AXLogBackTap();
                  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
                  {
                    v11 = [(PredictionsBuffer *)v52->_predictionsBuffer predictionCounts];
                    v10 = [v11 objectAtIndexedSubscript:1];
                    __os_log_helper_16_2_2_8_32_8_64(v54, "[AXPhoenixClassifier _handleAccelerometerData:withTimestamp:]", v10);
                    _os_log_impl(&dword_25E4AC000, oslog, OS_LOG_TYPE_DEFAULT, "[PHOENIX] %s Predicted double taps: %@", v54, 0x16u);
                    MEMORY[0x277D82BD8](v10);
                    MEMORY[0x277D82BD8](v11);
                  }

                  objc_storeStrong(&oslog, 0);
                  objc_storeStrong(&v20, 0);
                }
              }
            }
          }

          objc_storeStrong(&v33, 0);
          objc_storeStrong(&v34, 0);
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
          [(AXPhoenixClassifierDelegate *)v52->_delegate phoenixClassifier:v52 failedWithError:v49];
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
          __os_log_helper_16_2_3_8_32_8_64_8_64(v57, "[AXPhoenixClassifier _handleAccelerometerData:withTimestamp:]", v52->_modelInputName, v49);
          _os_log_error_impl(&dword_25E4AC000, v41, v40, "[PHOENIX] %s Failed to create modelInput %@: %@", v57, 0x20u);
        }

        objc_storeStrong(&v41, 0);
        [(AXPhoenixClassifierDelegate *)v52->_delegate phoenixClassifier:v52 failedWithError:v49];
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
      [(AXPhoenixClassifierDelegate *)v52->_delegate phoenixClassifier:v52 failedWithError:v49];
      v44 = 1;
    }

    objc_storeStrong(&v48, 0);
    objc_storeStrong(&v49, 0);
  }

  *MEMORY[0x277D85DE8];
}

- (void)_logWindowData:(id)a3 doubleTap:(BOOL)a4 tapData:(id)a5
{
  v22 = a5;
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = a4;
  if ([(AXPhoenixClassifier *)v21 falsePositiveLoggingEnabled])
  {
    objc_initWeak(&v17, v21);
    logger = v21->_logger;
    v6 = location[0];
    v7 = v19;
    var0 = v22.var0;
    var1 = v22.var1;
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

- (BOOL)_clippedDataShowsPrediction:(unint64_t)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v36 = self;
  v35 = a2;
  v34 = a3;
  if (a3)
  {
    v33 = fmax(0.35, fmin(0.7, v36->_tapSpeed));
    v32 = (v36->_frameLength / 0xA);
    policyOption = v36->_policyOption;
    switch(policyOption)
    {
      case 1:
        v32 = v33 + 0.1;
        break;
      case 2:
        v32 = v33 * 2.0 + 0.1;
        break;
      case 3:
        if (v34 == 1)
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
    v12 = [(AXPhoenixClassifier *)v36 _clippedMultiArrayInputWithError:&v29 beforeTime:v32];
    objc_storeStrong(&v31, v29);
    v30 = v12;
    if (v12)
    {
      v8 = objc_alloc(MEMORY[0x277CBFED0]);
      modelInputName = v36->_modelInputName;
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
        classifier = v36->_classifier;
        obj = v31;
        v7 = [(MLModel *)classifier predictionFromFeatures:v25 error:&obj];
        objc_storeStrong(&v31, obj);
        v21 = v7;
        if (v7)
        {
          v17 = [v21 featureValueForName:v36->_modelOutputName];
          v16 = [v17 multiArrayValue];
          v4 = [Prediction alloc];
          v15 = [(Prediction *)v4 initWithModelOutput:v16];
          v5 = [(Prediction *)v15 predictedClass];
          v37 = v5 == v34;
          v26 = 1;
          objc_storeStrong(&v15, 0);
          objc_storeStrong(&v16, 0);
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
          [(AXPhoenixClassifierDelegate *)v36->_delegate phoenixClassifier:v36 failedWithError:v31];
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
          __os_log_helper_16_2_3_8_32_8_64_8_64(v39, "[AXPhoenixClassifier _clippedDataShowsPrediction:]", v36->_modelInputName, v31);
          _os_log_error_impl(&dword_25E4AC000, v23, v22, "[PHOENIX] %s Failed to create modelInput %@: %@", v39, 0x20u);
        }

        objc_storeStrong(&v23, 0);
        [(AXPhoenixClassifierDelegate *)v36->_delegate phoenixClassifier:v36 failedWithError:v31];
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
      [(AXPhoenixClassifierDelegate *)v36->_delegate phoenixClassifier:v36 failedWithError:v31];
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

- (id)_clippedMultiArrayInputWithError:(id *)a3 beforeTime:(double)a4
{
  v43[3] = *MEMORY[0x277D85DE8];
  v42 = self;
  v41 = a2;
  v40 = a3;
  v39 = a4;
  v36 = 0.0;
  v37 = 0.0;
  v38 = 0.0;
  v35 = [(AccelerometerBuffer *)self->_accelBuffer bufferWithMovingSum:&v36];
  v32 = 0.0;
  v33 = 0.0;
  v34 = 0.0;
  v32 = v36 / v42->_frameLength;
  v33 = v37 / v42->_frameLength;
  v34 = v38 / v42->_frameLength;
  v31 = 0;
  v4 = [v35 count];
  v30 = v4 - v42->_frameLength;
  v29 = (v39 * 100.0);
  for (i = v30; ; ++i)
  {
    v20 = i;
    if (v20 >= [v35 count])
    {
      break;
    }

    v27 = i - v30;
    frameLength = v42->_frameLength;
    v26 = i - v30;
    v25 = i - v30 + v42->_frameLength;
    v24 = i - v30 + 2 * v42->_frameLength;
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
    v42->_arrayDataPointer[v26] = v7 - v32;
    [v23 y];
    v42->_arrayDataPointer[v25] = v8 - v33;
    [v23 z];
    v42->_arrayDataPointer[v24] = v9 - v34;
    objc_storeStrong(&v23, 0);
  }

  v22 = 65600;
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v42->_frameLength];
  v43[0] = v14;
  v43[1] = &unk_287037C00;
  v43[2] = &unk_287037C00;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:3];
  MEMORY[0x277D82BD8](v14);
  v10 = objc_alloc(MEMORY[0x277CBFF48]);
  v11 = [v10 initWithDataPointer:v42->_arrayDataPointer shape:v42->_shape dataType:v22 strides:v21 deallocator:&__block_literal_global_3 error:v40];
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

- (id)_multiArrayInputForClassifierWithError:(id *)a3
{
  v39[3] = *MEMORY[0x277D85DE8];
  v38 = self;
  v37 = a2;
  v36 = a3;
  shouldResetBuffer = self->_shouldResetBuffer;
  if (shouldResetBuffer)
  {
    v38->_shouldResetBuffer = 0;
    [(AccelerometerBuffer *)v38->_accelBuffer resetMovingSum];
    [(PredictionsBuffer *)v38->_predictionsBuffer reset];
  }

  v32 = 0.0;
  v33 = 0.0;
  v34 = 0.0;
  v31 = [(AccelerometerBuffer *)v38->_accelBuffer bufferWithMovingSum:&v32];
  v28 = 0.0;
  v29 = 0.0;
  v30 = 0.0;
  v28 = v32 / v38->_frameLength;
  v29 = v33 / v38->_frameLength;
  v30 = v34 / v38->_frameLength;
  v27 = 0;
  v3 = [v31 count];
  v26 = v3 - v38->_frameLength;
  for (i = v26; ; ++i)
  {
    v17 = i;
    if (v17 >= [v31 count])
    {
      break;
    }

    v24 = i - v26;
    frameLength = v38->_frameLength;
    v23 = i - v26;
    v22 = i - v26 + v38->_frameLength;
    v21 = i - v26 + 2 * v38->_frameLength;
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
    v38->_arrayDataPointer[v23] = v5 - v28;
    [v20 y];
    v38->_arrayDataPointer[v22] = v6 - v29;
    [v20 z];
    v38->_arrayDataPointer[v21] = v7 - v30;
    objc_storeStrong(&v20, 0);
  }

  v19 = 65600;
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v38->_frameLength];
  v39[0] = v12;
  v39[1] = &unk_287037C00;
  v39[2] = &unk_287037C00;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:3];
  MEMORY[0x277D82BD8](v12);
  v8 = objc_alloc(MEMORY[0x277CBFF48]);
  v9 = [v8 initWithDataPointer:v38->_arrayDataPointer shape:v38->_shape dataType:v19 strides:v18 deallocator:&__block_literal_global_239 error:v36];
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
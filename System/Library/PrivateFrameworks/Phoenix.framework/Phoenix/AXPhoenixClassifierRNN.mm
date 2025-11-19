@interface AXPhoenixClassifierRNN
- (AXPhoenixClassifierRNN)initWithDelegate:(id)a3 modelURL:(id)a4 configuration:(id)a5;
- (id)_initializeModelFromURL:(id)a3 outError:(id *)a4;
- (id)_multiArrayInputForClassifierWithError:(id *)a3;
- (id)_windowData:(BOOL)a3;
- (unint64_t)_countThresholdForGesturePrediction:(id)a3;
- (void)_evaluateTapData;
- (void)_handleAccelerometerData:(id)a3 withTimestamp:(double)a4;
- (void)_logWindowData:(id)a3 doubleTap:(BOOL)a4 tapData:(id)a5;
- (void)_updateAccelerationData;
- (void)handleAccelerometerData:(id)a3 withTimestamp:(double)a4;
- (void)reset;
- (void)setPolicyOption:(int)a3;
- (void)setTapSpeed:(float)a3;
@end

@implementation AXPhoenixClassifierRNN

- (AXPhoenixClassifierRNN)initWithDelegate:(id)a3 modelURL:(id)a4 configuration:(id)a5
{
  v47 = *MEMORY[0x277D85DE8];
  v42 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v40 = 0;
  objc_storeStrong(&v40, a4);
  v39 = 0;
  objc_storeStrong(&v39, a5);
  v5 = v42;
  v42 = 0;
  v38.receiver = v5;
  v38.super_class = AXPhoenixClassifierRNN;
  v42 = [(AXPhoenixClassifierRNN *)&v38 init];
  objc_storeStrong(&v42, v42);
  if (!v42)
  {
    goto LABEL_12;
  }

  objc_storeStrong(v42 + 1, location[0]);
  objc_storeStrong(v42 + 2, v39);
  v37 = 3;
  v6 = [*(v42 + 2) accelerometerSampleRateInHz];
  *(v42 + 17) = v6 / 3;
  *(v42 + 4) = *(v42 + 17);
  v36 = AXLogBackTap();
  v35 = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(v42 + 2), "accelerometerSampleRateInHz")}];
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v37];
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(v42 + 17)];
    __os_log_helper_16_2_4_8_32_8_64_8_64_8_64(v46, "[AXPhoenixClassifierRNN initWithDelegate:modelURL:configuration:]", v26, v25, v24);
    _os_log_impl(&dword_25E4AC000, v36, v35, "[PHOENIX] %s Loop frequency = %@ / %@ = %@", v46, 0x2Au);
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
  }

  objc_storeStrong(&v36, 0);
  v34 = 0;
  v33 = 0;
  v23 = [v42 _initializeModelFromURL:v40 outError:&v33];
  objc_storeStrong(&v34, v33);
  v7 = *(v42 + 3);
  *(v42 + 3) = v23;
  MEMORY[0x277D82BD8](v7);
  if (*(v42 + 3))
  {
    *(v42 + 14) = 3;
    v20 = [AccelerometerBuffer alloc];
    v21 = -[AccelerometerBuffer initWithCapacity:accelerometerSampleRateInHz:](v20, "initWithCapacity:accelerometerSampleRateInHz:", 400, [v39 accelerometerSampleRateInHz]);
    [*(v42 + 24) setAccelerometerBuffer:?];
    MEMORY[0x277D82BD8](v21);
    v8 = [PredictionsBuffer alloc];
    v9 = [(PredictionsBuffer *)v8 initWithConfiguration:v39];
    v10 = *(v42 + 5);
    *(v42 + 5) = v9;
    MEMORY[0x277D82BD8](v10);
    v22 = [*(v42 + 2) accelerometerSampleRateInHz];
    v11 = [*(v42 + 2) minDurationBetweenTriggersInSeconds];
    *(v42 + 18) = v22 * v11;
    v29 = AXLogBackTap();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(v42 + 2), "accelerometerSampleRateInHz")}];
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(v42 + 2), "minDurationBetweenTriggersInSeconds")}];
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(v42 + 18)];
      __os_log_helper_16_2_4_8_32_8_64_8_64_8_64(v44, "[AXPhoenixClassifierRNN initWithDelegate:modelURL:configuration:]", v19, v18, v17);
      _os_log_impl(&dword_25E4AC000, v29, OS_LOG_TYPE_INFO, "[PHOENIX] %s Minimum samples between triggers = %@ * %@ = %@", v44, 0x2Au);
      MEMORY[0x277D82BD8](v17);
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v19);
    }

    objc_storeStrong(&v29, 0);
    v12 = dispatch_queue_create("com.apple.accessibility.phoenixclassifier", 0);
    v13 = *(v42 + 9);
    *(v42 + 9) = v12;
    MEMORY[0x277D82BD8](v13);
    *(v42 + 16) = 0;
    *(v42 + 43) = 0;
    *(v42 + 20) = 0;
    v14 = objc_alloc_init(AXPhoenixDataLogger);
    v15 = *(v42 + 22);
    *(v42 + 22) = v14;
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
    v43 = MEMORY[0x277D82BE0](v42);
    v30 = 1;
  }

  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v42, 0);
  *MEMORY[0x277D85DE8];
  return v43;
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
    v5 = PolicyOptionToString(v11->_policyOption);
    v6 = MEMORY[0x277D82BE0](v5);
    __os_log_helper_16_2_2_8_32_8_64(v12, "[AXPhoenixClassifierRNN setPolicyOption:]", v6);
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
  v8 = __64__AXPhoenixClassifierRNN_handleAccelerometerData_withTimestamp___block_invoke;
  v9 = &unk_279A20708;
  objc_copyWeak(&v10, &location);
  v11 = v18;
  v12 = var2;
  v13 = v15;
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
  v10 = self;
  location[1] = a2;
  objc_initWeak(location, self);
  queue = v10->_queue;
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

- (void)setTapSpeed:(float)a3
{
  self->_tapSpeed = a3;
  self->_runFrequency = (self->_tapSpeed * 100.0);
  self->_frameLength = self->_runFrequency;
}

- (id)_initializeModelFromURL:(id)a3 outError:(id *)a4
{
  v59 = *MEMORY[0x277D85DE8];
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
      __os_log_helper_16_2_2_8_32_8_64(v57, "[AXPhoenixClassifierRNN _initializeModelFromURL:outError:]", location[0]);
      _os_log_impl(&dword_25E4AC000, v45, v44, "[PHOENIX] %s Using model from %@", v57, 0x16u);
    }

    objc_storeStrong(&v45, 0);
    objc_storeStrong(&v52->_modelInputName, @"model_input");
    objc_storeStrong(&v52->_modelInputHistory, @"history");
    objc_storeStrong(&v52->_modelOutputName, @"output");
    objc_storeStrong(&v52->_modelOutputNewHistory, @"updated_history");
    v4 = objc_alloc_init(AXPhoenixClassifierRNNModelInputData);
    inputData = v52->_inputData;
    v52->_inputData = v4;
    MEMORY[0x277D82BD8](inputData);
    v6 = objc_alloc_init(AXPhoenixClassifierRNNModelWindow);
    modelWindow = v52->_modelWindow;
    v52->_modelWindow = v6;
    MEMORY[0x277D82BD8](modelWindow);
    v33 = [v49 modelDescription];
    v32 = [v33 inputDescriptionsByName];
    v43 = [v32 objectForKeyedSubscript:v52->_modelInputName];
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](v33);
    if ([v43 type] == 5)
    {
      v29 = v52->_inputData;
      v31 = [v43 multiArrayConstraint];
      v30 = [v31 shape];
      [(AXPhoenixClassifierRNNModelInputData *)v29 updateInputShape:?];
      MEMORY[0x277D82BD8](v30);
      MEMORY[0x277D82BD8](v31);
      v27 = [v49 modelDescription];
      v26 = [v27 inputDescriptionsByName];
      v8 = [v26 objectForKeyedSubscript:v52->_modelInputHistory];
      v9 = v43;
      v43 = v8;
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](v26);
      MEMORY[0x277D82BD8](v27);
      if ([v43 type] == 5)
      {
        v23 = v52->_modelWindow;
        v25 = [v43 multiArrayConstraint];
        v24 = [v25 shape];
        [(AXPhoenixClassifierRNNModelWindow *)v23 updateHistoryShape:?];
        MEMORY[0x277D82BD8](v24);
        MEMORY[0x277D82BD8](v25);
        v21 = [v49 modelDescription];
        v38 = [v21 metadata];
        MEMORY[0x277D82BD8](v21);
        if (v38)
        {
          v37 = [v38 objectForKeyedSubscript:*MEMORY[0x277CBFE90]];
          if (v37)
          {
            v10 = [v37 objectForKeyedSubscript:@"version"];
            modelVersion = v52->_modelVersion;
            v52->_modelVersion = v10;
            MEMORY[0x277D82BD8](modelVersion);
          }

          if (![(NSString *)v52->_modelVersion length])
          {
            v12 = [v38 objectForKeyedSubscript:*MEMORY[0x277CBFEA8]];
            v13 = v52->_modelVersion;
            v52->_modelVersion = v12;
            MEMORY[0x277D82BD8](v13);
          }

          v14 = [v38 objectForKeyedSubscript:*MEMORY[0x277CBFE98]];
          modelDescription = v52->_modelDescription;
          v52->_modelDescription = v14;
          MEMORY[0x277D82BD8](modelDescription);
          objc_storeStrong(&v37, 0);
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

        v36 = AXLogBackTap();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_2_6_8_32_8_64_8_64_8_64_8_64_8_64(v54, "[AXPhoenixClassifierRNN _initializeModelFromURL:outError:]", v52->_modelVersion, v52->_modelDescription, v52->_modelInputName, v52->_modelOutputName, v38);
          _os_log_impl(&dword_25E4AC000, v36, OS_LOG_TYPE_INFO, "[PHOENIX] %s Version %@, description %@, ModelInputName %@, ModelOutputName %@, modelInfo %@", v54, 0x3Eu);
        }

        objc_storeStrong(&v36, 0);
        v53 = MEMORY[0x277D82BE0](v49);
        v46 = 1;
        objc_storeStrong(&v38, 0);
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
      if (v50)
      {
        v34 = *v50;
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

- (id)_windowData:(BOOL)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v41 = self;
  v40 = a2;
  v39 = a3;
  v37 = 0u;
  v38 = 0u;
  v28 = [(AXPhoenixClassifierRNNModelInputData *)self->_inputData accelerometerBuffer];
  [(AccelerometerBuffer *)v28 data];
  *&v37 = v3;
  *(&v37 + 1) = v4;
  *&v38 = v5;
  *(&v38 + 1) = v6;
  MEMORY[0x277D82BD8](v28);
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
    v25 = [(PredictionsBuffer *)v41->_predictionsBuffer logBuffer];
    v24 = [v25 componentsJoinedByString:@":"];
    v30 = MEMORY[0x277D82BE0](v24);
    __os_log_helper_16_2_2_8_32_8_64(v44, "[AXPhoenixClassifierRNN _windowData:]", v30);
    _os_log_impl(&dword_25E4AC000, v22, v23, "[PHOENIX] %s predictions[none,double,triple,class]: %@", v44, 0x16u);
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);
    objc_storeStrong(&v30, 0);
  }

  objc_storeStrong(&v32, 0);
  v14 = [(AXPhoenixClassifierRNNModelInputData *)v41->_inputData accelerometerBuffer];
  v8 = [(AccelerometerBuffer *)v14 logBuffer];
  MEMORY[0x277D82BD8](v14);
  v42[0] = @"accelerometer";
  v15 = [(AXPhoenixClassifierRNNModelInputData *)v41->_inputData accelerometerBuffer];
  v16 = [(AccelerometerBuffer *)v15 logBuffer];
  v43[0] = v16;
  v42[1] = @"accel_csv";
  v17 = [(AXPhoenixClassifierRNNModelInputData *)v41->_inputData accelerometerBuffer];
  v18 = [(AccelerometerBuffer *)v17 csv];
  v43[1] = v18;
  v42[2] = @"predictions";
  v19 = [(PredictionsBuffer *)v41->_predictionsBuffer logBuffer];
  v43[2] = v19;
  v42[3] = @"result";
  v9 = @"doubletap";
  if (!v39)
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
  if (v41->_modelDescription)
  {
    modelDescription = v41->_modelDescription;
  }

  else
  {
    modelDescription = &stru_287032B48;
  }

  v43[6] = modelDescription;
  v42[7] = @"modelVersion";
  if (v41->_modelVersion)
  {
    modelVersion = v41->_modelVersion;
  }

  else
  {
    modelVersion = &stru_287032B48;
  }

  v43[7] = modelVersion;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:8];
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v15);
  v11 = MEMORY[0x277D82BE0](v29);
  objc_storeStrong(&v29, 0);
  *MEMORY[0x277D85DE8];

  return v11;
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
  v27 = *MEMORY[0x277D85DE8];
  v24 = a3;
  v23 = self;
  v22 = a2;
  v21 = a4;
  v14 = [(AXPhoenixClassifierRNN *)self modelWindow];
  [(AXPhoenixClassifierRNNModelWindow *)v14 setSamplesSinceLastTap:[(AXPhoenixClassifierRNNModelWindow *)v14 samplesSinceLastTap]+ 1];
  MEMORY[0x277D82BD8](v14);
  v15 = [(AXPhoenixClassifierRNNModelInputData *)v23->_inputData accelerometerBuffer];
  [(AccelerometerBuffer *)v15 addData:v24.var0 timestamp:v24.var1, v24.var2, v21];
  MEMORY[0x277D82BD8](v15);
  ++v23->_resetCounter;
  ++v23->_loopCounter;
  if (v23->_resetCounter >= 0x190)
  {
    v23->_resetCounter = 0;
    v12 = [(AXPhoenixClassifierRNN *)v23 modelWindow];
    v13 = [(AXPhoenixClassifierRNNModelWindow *)v12 tapCount];
    MEMORY[0x277D82BD8](v12);
    if (v13)
    {
      v18 = AXLogBackTap();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v8 = MEMORY[0x277CCABB0];
        v10 = [(AXPhoenixClassifierRNN *)v23 modelWindow];
        v9 = [v8 numberWithUnsignedInteger:{-[AXPhoenixClassifierRNNModelWindow tapCount](v10, "tapCount")}];
        __os_log_helper_16_2_2_8_32_8_64(v25, "[AXPhoenixClassifierRNN _handleAccelerometerData:withTimestamp:]", v9);
        _os_log_impl(&dword_25E4AC000, v18, OS_LOG_TYPE_DEFAULT, "[PHOENIX] %s Wanted to reset but in middle of a tap: %@", v25, 0x16u);
        MEMORY[0x277D82BD8](v9);
        MEMORY[0x277D82BD8](v10);
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
      v11 = [(AXPhoenixClassifierRNN *)v23 modelWindow];
      [(AXPhoenixClassifierRNNModelWindow *)v11 resetHistory];
      MEMORY[0x277D82BD8](v11);
    }
  }

  v6 = [(AXPhoenixClassifierRNN *)v23 modelWindow];
  v7 = [(AXPhoenixClassifierRNNModelWindow *)v6 tapCount];
  MEMORY[0x277D82BD8](v6);
  if (v7)
  {
    [(AXPhoenixClassifierRNN *)v23 _evaluateTapData];
  }

  if (!(v23->_loopCounter % v23->_runFrequency))
  {
    v23->_loopCounter = 0;
    ++v23->_resetHistoryCounter;
    v16 = 0;
    v5 = 0;
    if (v23->_resetHistoryCounter == 2)
    {
      v17 = [(AXPhoenixClassifierRNN *)v23 modelWindow];
      v16 = 1;
      v5 = [(AXPhoenixClassifierRNNModelWindow *)v17 tapCount]== 0;
    }

    if (v16)
    {
      MEMORY[0x277D82BD8](v17);
    }

    if (v5)
    {
      v4 = [(AXPhoenixClassifierRNN *)v23 modelWindow];
      [(AXPhoenixClassifierRNNModelWindow *)v4 resetHistory];
      MEMORY[0x277D82BD8](v4);
      v23->_resetHistoryCounter = 0;
    }

    [(AXPhoenixClassifierRNN *)v23 _updateAccelerationData];
  }

  *MEMORY[0x277D85DE8];
}

- (void)_updateAccelerationData
{
  v83 = *MEMORY[0x277D85DE8];
  v73 = self;
  v72[1] = a2;
  v72[0] = 0;
  v70 = 0;
  v43 = [(AXPhoenixClassifierRNN *)self _multiArrayInputForClassifierWithError:&v70];
  objc_storeStrong(v72, v70);
  v71 = v43;
  if (v43)
  {
    v42 = [(AXPhoenixClassifierRNN *)v73 modelWindow];
    v66 = [(AXPhoenixClassifierRNNModelWindow *)v42 historyArray];
    MEMORY[0x277D82BD8](v42);
    if (v66)
    {
      v79[0] = v73->_modelInputName;
      v40 = [MEMORY[0x277CBFEF8] featureValueWithMultiArray:v71];
      v80[0] = v40;
      v79[1] = v73->_modelInputHistory;
      v39 = [MEMORY[0x277CBFEF8] featureValueWithMultiArray:v66];
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
        classifier = v73->_classifier;
        obj = v72[0];
        v38 = [(MLModel *)classifier predictionFromFeatures:v62 error:&obj];
        objc_storeStrong(v72, obj);
        v58 = v38;
        if (v38)
        {
          v54 = [v58 featureValueForName:v73->_modelOutputName];
          v53 = [v54 multiArrayValue];
          v35 = [v58 featureValueForName:v73->_modelOutputNewHistory];
          v52 = [v35 multiArrayValue];
          MEMORY[0x277D82BD8](v35);
          v36 = [(AXPhoenixClassifierRNN *)v73 modelWindow];
          [(AXPhoenixClassifierRNNModelWindow *)v36 setHistoryArray:v52];
          MEMORY[0x277D82BD8](v36);
          v37 = [(AXPhoenixClassifierRNN *)v73 modelWindow];
          -[AXPhoenixClassifierRNNModelWindow setSamplesSinceLastTap:](v37, "setSamplesSinceLastTap:", -[AXPhoenixClassifierRNNModelWindow samplesSinceLastTap](v37, "samplesSinceLastTap") - [v53 count]);
          MEMORY[0x277D82BD8](v37);
          for (i = 0; ; ++i)
          {
            v34 = i;
            if (v34 >= [v53 count])
            {
              break;
            }

            v32 = [v53 objectAtIndexedSubscript:i];
            [v32 doubleValue];
            v33 = v4;
            MEMORY[0x277D82BD8](v32);
            if (v33 <= -0.5)
            {
              v6 = [(AXPhoenixClassifierRNN *)v73 modelWindow];
              [(AXPhoenixClassifierRNNModelWindow *)v6 setSamplesSinceLastTap:[(AXPhoenixClassifierRNNModelWindow *)v6 samplesSinceLastTap]+ 1];
              MEMORY[0x277D82BD8](v6);
              v7 = [(AXPhoenixClassifierRNN *)v73 modelWindow];
              [(AXPhoenixClassifierRNNModelWindow *)v7 setFoundTap:0];
              MEMORY[0x277D82BD8](v7);
            }

            else
            {
              v29 = [(AXPhoenixClassifierRNN *)v73 modelWindow];
              [(AXPhoenixClassifierRNNModelWindow *)v29 setSamplesSinceLastTap:[(AXPhoenixClassifierRNNModelWindow *)v29 samplesSinceLastTap]+ 1];
              MEMORY[0x277D82BD8](v29);
              v30 = [(AXPhoenixClassifierRNN *)v73 modelWindow];
              v31 = [(AXPhoenixClassifierRNNModelWindow *)v30 foundTap];
              MEMORY[0x277D82BD8](v30);
              if (!v31)
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
                v25 = [(AXPhoenixClassifierRNN *)v73 modelWindow];
                v5 = [(AXPhoenixClassifierRNNModelWindow *)v25 tapCount];
                v47 = 0;
                v26 = 0;
                if (v5)
                {
                  v48 = [(AXPhoenixClassifierRNN *)v73 modelWindow];
                  v47 = 1;
                  v26 = [(AXPhoenixClassifierRNNModelWindow *)v48 samplesSinceLastTap]< v73->_runFrequency;
                }

                if (v47)
                {
                  MEMORY[0x277D82BD8](v48);
                }

                MEMORY[0x277D82BD8](v25);
                if (v26)
                {
                  v46 = AXLogBackTap();
                  v45 = OS_LOG_TYPE_ERROR;
                  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
                  {
                    v21 = v46;
                    v22 = v45;
                    v20 = MEMORY[0x277CCABB0];
                    v24 = [(AXPhoenixClassifierRNN *)v73 modelWindow];
                    v23 = [v20 numberWithUnsignedInteger:{-[AXPhoenixClassifierRNNModelWindow samplesSinceLastTap](v24, "samplesSinceLastTap")}];
                    __os_log_helper_16_2_2_8_32_8_64(v75, "[AXPhoenixClassifierRNN _updateAccelerationData]", v23);
                    _os_log_error_impl(&dword_25E4AC000, v21, v22, "[PHOENIX] %s Got two taps in a really short amount of time, ignoring tap. Number of samples %@", v75, 0x16u);
                    MEMORY[0x277D82BD8](v23);
                    MEMORY[0x277D82BD8](v24);
                  }

                  objc_storeStrong(&v46, 0);
                  v17 = [(AXPhoenixClassifierRNN *)v73 modelWindow];
                  [(AXPhoenixClassifierRNNModelWindow *)v17 setSamplesSinceLastTap:?];
                  MEMORY[0x277D82BD8](v17);
                  v18 = [(AXPhoenixClassifierRNN *)v73 modelWindow];
                  [(AXPhoenixClassifierRNNModelWindow *)v18 setTapCount:0];
                  MEMORY[0x277D82BD8](v18);
                  v19 = [(AXPhoenixClassifierRNN *)v73 modelWindow];
                  [(AXPhoenixClassifierRNNModelWindow *)v19 setFoundTap:0];
                  MEMORY[0x277D82BD8](v19);
                  v73->_resetCounter = 400;
                  v73->_runFrequency = (v73->_tapSpeed * 100.0);
                  v73->_frameLength = v73->_runFrequency;
                  break;
                }

                v15 = [(AXPhoenixClassifierRNN *)v73 modelWindow];
                v16 = [(AXPhoenixClassifierRNNModelWindow *)v15 tapCount];
                MEMORY[0x277D82BD8](v15);
                if (v16)
                {
                  v44 = AXLogBackTap();
                  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                  {
                    v12 = v44;
                    v11 = MEMORY[0x277CCABB0];
                    v14 = [(AXPhoenixClassifierRNN *)v73 modelWindow];
                    v13 = [v11 numberWithUnsignedInteger:{-[AXPhoenixClassifierRNNModelWindow samplesSinceLastTap](v14, "samplesSinceLastTap")}];
                    __os_log_helper_16_2_2_8_32_8_64(v74, "[AXPhoenixClassifierRNN _updateAccelerationData]", v13);
                    _os_log_error_impl(&dword_25E4AC000, v12, OS_LOG_TYPE_ERROR, "[PHOENIX] %s samplesSinceLastTap %@", v74, 0x16u);
                    MEMORY[0x277D82BD8](v13);
                    MEMORY[0x277D82BD8](v14);
                  }

                  objc_storeStrong(&v44, 0);
                }

                v8 = [(AXPhoenixClassifierRNN *)v73 modelWindow];
                [(AXPhoenixClassifierRNNModelWindow *)v8 setSamplesSinceLastTap:0];
                MEMORY[0x277D82BD8](v8);
                v9 = [(AXPhoenixClassifierRNN *)v73 modelWindow];
                [(AXPhoenixClassifierRNNModelWindow *)v9 setTapCount:[(AXPhoenixClassifierRNNModelWindow *)v9 tapCount]+ 1];
                MEMORY[0x277D82BD8](v9);
                v10 = [(AXPhoenixClassifierRNN *)v73 modelWindow];
                [(AXPhoenixClassifierRNNModelWindow *)v10 setFoundTap:1];
                MEMORY[0x277D82BD8](v10);
                v73->_runFrequency = 5;
                v73->_frameLength = v73->_runFrequency;
              }
            }
          }

          [(AXPhoenixClassifierRNN *)v73 _evaluateTapData];
          objc_storeStrong(&v52, 0);
          objc_storeStrong(&v53, 0);
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
          [(AXPhoenixClassifierDelegate *)v73->_delegate phoenixClassifier:v73 failedWithError:v72[0]];
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
          __os_log_helper_16_2_3_8_32_8_64_8_64(v78, "[AXPhoenixClassifierRNN _updateAccelerationData]", v73->_modelInputName, v72[0]);
          _os_log_error_impl(&dword_25E4AC000, v60, v59, "[PHOENIX] %s Failed to create modelInput %@: %@", v78, 0x20u);
        }

        objc_storeStrong(&v60, 0);
        [(AXPhoenixClassifierDelegate *)v73->_delegate phoenixClassifier:v73 failedWithError:v72[0]];
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
      [(AXPhoenixClassifierDelegate *)v73->_delegate phoenixClassifier:v73 failedWithError:v72[0]];
      v67 = 1;
    }

    objc_storeStrong(&v66, 0);
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
    [(AXPhoenixClassifierDelegate *)v73->_delegate phoenixClassifier:v73 failedWithError:v72[0]];
    v67 = 1;
  }

  objc_storeStrong(&v71, 0);
  objc_storeStrong(v72, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_evaluateTapData
{
  v43 = *MEMORY[0x277D85DE8];
  v39 = self;
  v38 = a2;
  v37 = 0;
  v36 = (self->_policyOption & 1) != 0;
  v35 = (self->_policyOption & 2) != 0;
  v20 = [(AXPhoenixClassifierRNN *)self modelWindow];
  v21 = 0;
  if ([(AXPhoenixClassifierRNNModelWindow *)v20 tapCount]== 2)
  {
    v21 = v36;
  }

  MEMORY[0x277D82BD8](v20);
  if (v21)
  {
    v18 = [(AXPhoenixClassifierRNN *)v39 modelWindow];
    v19 = 1;
    if ([(AXPhoenixClassifierRNNModelWindow *)v18 samplesSinceLastTap]/ 100.0 <= v39->_tapSpeed)
    {
      v19 = !v35;
    }

    MEMORY[0x277D82BD8](v18);
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
      v17 = [(AXPhoenixClassifierRNNModelInputData *)v39->_inputData accelerometerBuffer];
      [(AccelerometerBuffer *)v17 data];
      *&v31 = v2;
      *(&v31 + 1) = v3;
      *&v32 = v4;
      *(&v32 + 1) = v5;
      MEMORY[0x277D82BD8](v17);
      v30 = [(AXPhoenixClassifierRNN *)v39 _windowData:1];
      [(AXPhoenixClassifierRNN *)v39 _logWindowData:v30 doubleTap:0 tapData:v31, v32];
      [(AXPhoenixClassifierDelegate *)v39->_delegate phoenixClassifierDidDetectDoubleTap:v39 data:v30 context:v31, v32];
      v37 = 1;
      objc_storeStrong(&v30, 0);
    }
  }

  else
  {
    v15 = [(AXPhoenixClassifierRNN *)v39 modelWindow];
    v16 = 0;
    if ([(AXPhoenixClassifierRNNModelWindow *)v15 tapCount]== 3)
    {
      v16 = v35;
    }

    MEMORY[0x277D82BD8](v15);
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
      v14 = [(AXPhoenixClassifierRNNModelInputData *)v39->_inputData accelerometerBuffer];
      [(AccelerometerBuffer *)v14 data];
      *&v26 = v6;
      *(&v26 + 1) = v7;
      *&v27 = v8;
      *(&v27 + 1) = v9;
      MEMORY[0x277D82BD8](v14);
      v25 = [(AXPhoenixClassifierRNN *)v39 _windowData:0];
      [(AXPhoenixClassifierRNN *)v39 _logWindowData:v25 doubleTap:0 tapData:v26, v27];
      [(AXPhoenixClassifierDelegate *)v39->_delegate phoenixClassifierDidDetectTripleTap:v39 data:v25 context:v26, v27];
      v37 = 1;
      objc_storeStrong(&v25, 0);
    }

    else
    {
      v12 = [(AXPhoenixClassifierRNN *)v39 modelWindow];
      v23 = 0;
      v13 = 0;
      if ([(AXPhoenixClassifierRNNModelWindow *)v12 tapCount])
      {
        v24 = [(AXPhoenixClassifierRNN *)v39 modelWindow];
        v23 = 1;
        v13 = [(AXPhoenixClassifierRNNModelWindow *)v24 samplesSinceLastTap]/ 100.0 > v39->_tapSpeed;
      }

      if (v23)
      {
        MEMORY[0x277D82BD8](v24);
      }

      MEMORY[0x277D82BD8](v12);
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
    v10 = [(AXPhoenixClassifierRNN *)v39 modelWindow];
    [(AXPhoenixClassifierRNNModelWindow *)v10 setTapCount:0];
    MEMORY[0x277D82BD8](v10);
    v11 = [(AXPhoenixClassifierRNN *)v39 modelWindow];
    [(AXPhoenixClassifierRNNModelWindow *)v11 setFoundTap:0];
    MEMORY[0x277D82BD8](v11);
    v39->_resetCounter = 400;
    v39->_runFrequency = (v39->_tapSpeed * 100.0);
    v39->_frameLength = v39->_runFrequency;
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
  if ([(AXPhoenixClassifierRNN *)v21 falsePositiveLoggingEnabled])
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

- (id)_multiArrayInputForClassifierWithError:(id *)a3
{
  v42[2] = *MEMORY[0x277D85DE8];
  v38 = self;
  v37[2] = a2;
  v37[1] = a3;
  v29 = [(AXPhoenixClassifierRNNModelInputData *)self->_inputData inputShape];
  v28 = [(NSArray *)v29 objectAtIndexedSubscript:0];
  v42[0] = v28;
  v24 = MEMORY[0x277CCABB0];
  v27 = [(AXPhoenixClassifierRNNModelInputData *)v38->_inputData inputShape];
  v26 = [(NSArray *)v27 objectAtIndexedSubscript:1];
  v25 = [v24 numberWithUnsignedInteger:{objc_msgSend(v26, "unsignedIntegerValue") * v38->_frameLength}];
  v42[1] = v25;
  v37[0] = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);
  v36 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:v37[0] dataType:65568 error:0];
  v30 = [(AXPhoenixClassifierRNNModelInputData *)v38->_inputData accelerometerBuffer];
  v35 = [(AccelerometerBuffer *)v30 buffer];
  MEMORY[0x277D82BD8](v30);
  v34 = [v35 count] - v38->_frameLength;
  for (i = v34; ; ++i)
  {
    v23 = i;
    if (v23 >= [v35 count])
    {
      break;
    }

    v32 = i - v34;
    v31 = [v35 objectAtIndexedSubscript:i];
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
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(v37, 0);
  *MEMORY[0x277D85DE8];

  return v7;
}

@end
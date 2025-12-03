@interface AXPhoenixGestureDetector
- (AXPhoenixGestureDetector)initWithDelegate:(id)delegate;
- (BOOL)_initializeAssetDrivenComponentsWithLocalURL:(id)l assetVersion:(unint64_t)version;
- (id)_createClassifierModelURL;
- (id)_createConfiguration;
- (id)_mobileAssetPathForConfigOrNil;
- (id)_mobileAssetURLForModelOrNil;
- (id)_phoenixCompiledModelURL;
- (id)urlOfModelInThisBundle;
- (void)_resetAssetDrivenComponents;
- (void)_setPolicyOption:(int)option;
- (void)_startClassifierWithCompletion:(id)completion;
- (void)_startWithCompletion:(id)completion;
- (void)_stopClassifier;
- (void)_stopWithCompletion:(id)completion;
- (void)modelDidUpdate:(id)update assetVersion:(unint64_t)version;
- (void)phoenixClassifier:(id)classifier failedWithError:(id)error;
- (void)phoenixClassifierDidDetectDoubleTap:(id)tap data:(id)data context:(id)context;
- (void)phoenixClassifierDidDetectTripleTap:(id)tap data:(id)data context:(id)context;
- (void)phoenixClassifierDidLogFile:(id)file;
- (void)phoenixMitigator:(id)mitigator didFailWithError:(id)error;
- (void)phoenixMitigator:(id)mitigator displayOnDidChange:(BOOL)change;
- (void)phoenixMitigator:(id)mitigator touchOnDidChange:(BOOL)change;
- (void)reportFalsePositive:(id)positive;
- (void)setFalsePositiveLoggingEnabled:(BOOL)enabled;
- (void)setRnnModelEnabled:(BOOL)enabled;
- (void)startWithCompletion:(id)completion;
- (void)stopWithCompletion:(id)completion;
@end

@implementation AXPhoenixGestureDetector

- (AXPhoenixGestureDetector)initWithDelegate:(id)delegate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, delegate);
  v3 = selfCopy;
  selfCopy = 0;
  v14.receiver = v3;
  v14.super_class = AXPhoenixGestureDetector;
  selfCopy = [(AXPhoenixGestureDetector *)&v14 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (!selfCopy)
  {
    goto LABEL_6;
  }

  attr = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v4 = dispatch_queue_create("com.apple.accessibility.phoenix.gesturedetector", attr);
  v5 = *(selfCopy + 8);
  *(selfCopy + 8) = v4;
  MEMORY[0x277D82BD8](v5);
  v6 = objc_alloc_init(MEMORY[0x277CCABD8]);
  v7 = *(selfCopy + 2);
  *(selfCopy + 2) = v6;
  MEMORY[0x277D82BD8](v7);
  [*(selfCopy + 2) setMaxConcurrentOperationCount:1];
  [*(selfCopy + 2) setQualityOfService:33];
  objc_storeStrong(selfCopy + 4, location[0]);
  if ([selfCopy _initializeAssetDrivenComponentsWithLocalURL:0 assetVersion:_currentAssetVersion])
  {
    v8 = [AXPhoenixAssetMonitor alloc];
    v9 = [(AXPhoenixAssetMonitor *)v8 initWithDelegate:selfCopy];
    v10 = *(selfCopy + 9);
    *(selfCopy + 9) = v9;
    MEMORY[0x277D82BD8](v10);
    v12 = 0;
  }

  else
  {
    v17 = 0;
    v12 = 1;
  }

  objc_storeStrong(&attr, 0);
  if (!v12)
  {
LABEL_6:
    v17 = MEMORY[0x277D82BE0](selfCopy);
  }

  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v17;
}

- (void)_resetAssetDrivenComponents
{
  objc_storeStrong(&self->_localURL, 0);
  self->_assetVersion = 0;
  objc_storeStrong(&self->_configuration, 0);
  objc_storeStrong(&self->_classifier, 0);
  objc_storeStrong(&self->_mitigator, 0);
  objc_storeStrong(&self->_analytics, 0);
}

- (BOOL)_initializeAssetDrivenComponentsWithLocalURL:(id)l assetVersion:(unint64_t)version
{
  v40 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v34[1] = version;
  [(AXPhoenixGestureDetector *)selfCopy _resetAssetDrivenComponents];
  objc_storeStrong(&selfCopy->_localURL, location[0]);
  selfCopy->_assetVersion = version;
  _createConfiguration = [(AXPhoenixGestureDetector *)selfCopy _createConfiguration];
  configuration = selfCopy->_configuration;
  selfCopy->_configuration = _createConfiguration;
  MEMORY[0x277D82BD8](configuration);
  v34[0] = [(AXPhoenixGestureDetector *)selfCopy _createClassifierModelURL];
  if (v34[0])
  {
    if (selfCopy->_rnnModelEnabled)
    {
      v27 = [AXPhoenixClassifierRNN alloc];
      v26 = selfCopy;
      classifierConfiguration = [(AXPhoenixConfiguration *)selfCopy->_configuration classifierConfiguration];
      v6 = [(AXPhoenixClassifierRNN *)v27 initWithDelegate:v26 modelURL:v34[0] configuration:?];
      classifier = selfCopy->_classifier;
      selfCopy->_classifier = v6;
      MEMORY[0x277D82BD8](classifier);
      MEMORY[0x277D82BD8](classifierConfiguration);
    }

    else
    {
      v24 = [AXPhoenixClassifier alloc];
      v23 = selfCopy;
      classifierConfiguration2 = [(AXPhoenixConfiguration *)selfCopy->_configuration classifierConfiguration];
      v8 = [(AXPhoenixClassifier *)v24 initWithDelegate:v23 modelURL:v34[0] configuration:?];
      v9 = selfCopy->_classifier;
      selfCopy->_classifier = v8;
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](classifierConfiguration2);
    }

    [(AXPhoenixClassifier *)selfCopy->_classifier setFalsePositiveLoggingEnabled:selfCopy->_falsePositiveLoggingEnabled];
    *&v10 = selfCopy->_tapSpeed;
    [(AXPhoenixClassifier *)selfCopy->_classifier setTapSpeed:v10];
    if (selfCopy->_classifier)
    {
      v18 = [AXPhoenixMitigator alloc];
      v17 = selfCopy;
      mitigatorConfiguration = [(AXPhoenixConfiguration *)selfCopy->_configuration mitigatorConfiguration];
      v11 = [(AXPhoenixMitigator *)v18 initWithDelegate:v17 configuration:?];
      mitigator = selfCopy->_mitigator;
      selfCopy->_mitigator = v11;
      MEMORY[0x277D82BD8](mitigator);
      MEMORY[0x277D82BD8](mitigatorConfiguration);
      v21 = [AXPhoenixAnalytics alloc];
      v20 = selfCopy->_configuration;
      version = [(AXPhoenixClassifier *)selfCopy->_classifier version];
      assetVersion = selfCopy->_assetVersion;
      v14 = [AXPhoenixAnalytics initWithConfiguration:v21 modelVersion:"initWithConfiguration:modelVersion:assetVersion:" assetVersion:v20];
      analytics = selfCopy->_analytics;
      selfCopy->_analytics = v14;
      MEMORY[0x277D82BD8](analytics);
      MEMORY[0x277D82BD8](version);
      v37 = 1;
      v31 = 1;
    }

    else
    {
      v30 = AXLogBackTap();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_64(v38, "[AXPhoenixGestureDetector _initializeAssetDrivenComponentsWithLocalURL:assetVersion:]", v34[0]);
        _os_log_error_impl(&dword_25E4AC000, v30, OS_LOG_TYPE_ERROR, "[PHOENIX] %s Could not create classifier from %@. Classifier is nil.", v38, 0x16u);
      }

      objc_storeStrong(&v30, 0);
      v37 = 0;
      v31 = 1;
    }
  }

  else
  {
    v33 = AXLogBackTap();
    v32 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_32(v39, "[AXPhoenixGestureDetector _initializeAssetDrivenComponentsWithLocalURL:assetVersion:]");
      _os_log_error_impl(&dword_25E4AC000, v33, v32, "[PHOENIX] %s Could not create classifier model URL. Model URL is nil.", v39, 0xCu);
    }

    objc_storeStrong(&v33, 0);
    v37 = 0;
    v31 = 1;
  }

  objc_storeStrong(v34, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v37 & 1;
}

- (void)startWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  selfCopy->_clientStartedMotion = 1;
  [(AXPhoenixGestureDetector *)selfCopy _startWithCompletion:location[0]];
  objc_storeStrong(location, 0);
}

- (void)_startWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  objc_initWeak(&v11, selfCopy);
  queue = selfCopy->_queue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __49__AXPhoenixGestureDetector__startWithCompletion___block_invoke;
  v8 = &unk_279A20640;
  objc_copyWeak(&v10, &v11);
  v9 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v4);
  objc_storeStrong(&v9, 0);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v11);
  objc_storeStrong(location, 0);
}

void __49__AXPhoenixGestureDetector__startWithCompletion___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v15[2] = a1;
  v15[1] = a1;
  v15[0] = objc_loadWeakRetained((a1 + 40));
  if (v15[0])
  {
    v14 = [*(v15[0] + 5) isRunning];
    if (v14)
    {
      oslog = AXLogBackTap();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_1_8_32(v18, "[AXPhoenixGestureDetector _startWithCompletion:]_block_invoke");
        _os_log_debug_impl(&dword_25E4AC000, oslog, OS_LOG_TYPE_DEBUG, "[PHOENIX] %s Phoenix mitigator already running, starting classifier", v18, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      [v15[0] _startClassifierWithCompletion:*(a1 + 32)];
    }

    else
    {
      v5 = *(v15[0] + 5);
      v8 = MEMORY[0x277D85DD0];
      v9 = -1073741824;
      v10 = 0;
      v11 = __49__AXPhoenixGestureDetector__startWithCompletion___block_invoke_2;
      v12 = &unk_279A208F0;
      v13 = MEMORY[0x277D82BE0](*(a1 + 32));
      [v5 startWithCompletion:&v8];
      objc_storeStrong(&v13, 0);
    }
  }

  else if (*(a1 + 32))
  {
    v2 = *(a1 + 32);
    v1 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277CCA450];
    v17 = @"Nil instance starting accel";
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v3 = [v1 errorWithDomain:@"AXPhoenixErrorDomain" code:1001 userInfo:?];
    (*(v2 + 16))(v2, 0);
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(v15, 0);
  *MEMORY[0x277D85DE8];
}

void __49__AXPhoenixGestureDetector__startWithCompletion___block_invoke_2(NSObject *a1, char a2, id obj)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v8 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  if (v8)
  {
    oslog[0] = AXLogBackTap();
    type = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_32(v11, "[AXPhoenixGestureDetector _startWithCompletion:]_block_invoke_2");
      _os_log_debug_impl(&dword_25E4AC000, oslog[0], type, "[PHOENIX] %s Phoenix mitigator started, classifier will start when the display turns on next", v11, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    v4 = AXLogBackTap();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_64(v10, "[AXPhoenixGestureDetector _startWithCompletion:]_block_invoke", location);
      _os_log_error_impl(&dword_25E4AC000, v4, OS_LOG_TYPE_ERROR, "[PHOENIX] %s Failed to start phoenix mitigator, error %@", v10, 0x16u);
    }

    objc_storeStrong(&v4, 0);
  }

  (*(a1[4].isa + 2))();
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)stopWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  selfCopy->_clientStartedMotion = 0;
  [(AXPhoenixGestureDetector *)selfCopy _stopWithCompletion:location[0]];
  objc_storeStrong(location, 0);
}

- (void)_stopWithCompletion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v13 = AXLogBackTap();
  v12 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_32(v16, "[AXPhoenixGestureDetector _stopWithCompletion:]");
    _os_log_debug_impl(&dword_25E4AC000, v13, v12, "[PHOENIX] %s Stopping phoenix gesture detector...", v16, 0xCu);
  }

  objc_storeStrong(&v13, 0);
  objc_initWeak(&v11, selfCopy);
  queue = selfCopy->_queue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __48__AXPhoenixGestureDetector__stopWithCompletion___block_invoke;
  v8 = &unk_279A20640;
  objc_copyWeak(&v10, &v11);
  v9 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v4);
  objc_storeStrong(&v9, 0);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v11);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __48__AXPhoenixGestureDetector__stopWithCompletion___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained((a1 + 40));
  if (location[0])
  {
    [location[0] _stopClassifier];
    if ((*(location[0] + 80) & 1) == 0)
    {
      [*(location[0] + 5) stop];
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v2 = *(a1 + 32);
    v1 = MEMORY[0x277CCA9B8];
    v7 = *MEMORY[0x277CCA450];
    v8[0] = @"Nil instance stopping accel";
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    v3 = [v1 errorWithDomain:@"AXPhoenixErrorDomain" code:1002 userInfo:?];
    (*(v2 + 16))(v2, 0);
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_setPolicyOption:(int)option
{
  v13 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v10 = a2;
  optionCopy = option;
  v8 = AXLogBackTap();
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    log = v8;
    type = v7;
    v5 = PolicyOptionToString_0(optionCopy);
    v6 = MEMORY[0x277D82BE0](v5);
    __os_log_helper_16_2_2_8_32_8_64(v12, "[AXPhoenixGestureDetector _setPolicyOption:]", v6);
    _os_log_impl(&dword_25E4AC000, log, type, "[PHOENIX] %s Setting policy to %@", v12, 0x16u);
    MEMORY[0x277D82BD8](v5);
    objc_storeStrong(&v6, 0);
  }

  objc_storeStrong(&v8, 0);
  [(AXPhoenixClassifier *)selfCopy->_classifier setPolicyOption:optionCopy];
  *MEMORY[0x277D85DE8];
}

- (id)_phoenixCompiledModelURL
{
  if (self->_rnnModelEnabled)
  {
    v3 = MEMORY[0x277D82BE0](@"BackTapRNN.mlmodelc");
  }

  else
  {
    v3 = MEMORY[0x277D82BE0](@"backtap.mlmodelc");
  }

  return v3;
}

- (id)urlOfModelInThisBundle
{
  selfCopy = self;
  location[1] = a2;
  v4 = MEMORY[0x277CCACA8];
  v6 = AXAccessibilityPrivateFrameworksDirectory();
  _phoenixCompiledModelURL = [(AXPhoenixGestureDetector *)selfCopy _phoenixCompiledModelURL];
  location[0] = [v4 stringWithFormat:@"%@/Phoenix.framework/%@", v6, _phoenixCompiledModelURL];
  MEMORY[0x277D82BD8](_phoenixCompiledModelURL);
  MEMORY[0x277D82BD8](v6);
  if (location[0])
  {
    v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:location[0]];
  }

  else
  {
    v9 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v9;

  return v2;
}

- (id)_mobileAssetURLForModelOrNil
{
  localURL = self->_localURL;
  _phoenixCompiledModelURL = [(AXPhoenixGestureDetector *)self _phoenixCompiledModelURL];
  v5 = [(NSURL *)localURL URLByAppendingPathComponent:?];
  MEMORY[0x277D82BD8](_phoenixCompiledModelURL);

  return v5;
}

- (id)_mobileAssetPathForConfigOrNil
{
  v3 = [(NSURL *)self->_localURL URLByAppendingPathComponent:@"backtap.json"];
  path = [(NSURL *)v3 path];
  MEMORY[0x277D82BD8](v3);

  return path;
}

- (id)_createConfiguration
{
  v42 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v33[1] = a2;
  v33[0] = [(AXPhoenixGestureDetector *)self _mobileAssetPathForConfigOrNil];
  if (v33[0])
  {
    v25 = [[AXPhoenixConfiguration alloc] initWithContentsOfFileAtPath:v33[0]];
    if (v25)
    {
      [v25 setConfigurationAssetVersion:selfCopy->_assetVersion];
      v19 = AXLogBackTap();
      v18 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_2_8_32_8_64(v37, "[AXPhoenixGestureDetector _createConfiguration]", v33[0]);
        _os_log_impl(&dword_25E4AC000, v19, v18, "[PHOENIX] %s Successfully loaded configuration from %@. Using the following:", v37, 0x16u);
      }

      objc_storeStrong(&v19, 0);
      v17 = AXLogBackTap();
      v16 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v17;
        v7 = v16;
        toStringifiedJSON = [v25 toStringifiedJSON];
        v15 = MEMORY[0x277D82BE0](toStringifiedJSON);
        __os_log_helper_16_2_2_8_32_8_64(v36, "[AXPhoenixGestureDetector _createConfiguration]", v15);
        _os_log_impl(&dword_25E4AC000, v6, v7, "[PHOENIX] %s %@", v36, 0x16u);
        MEMORY[0x277D82BD8](toStringifiedJSON);
        objc_storeStrong(&v15, 0);
      }

      objc_storeStrong(&v17, 0);
      v35 = MEMORY[0x277D82BE0](v25);
      v26 = 1;
    }

    else
    {
      v24 = AXLogBackTap();
      v23 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_2_8_32_8_64(v39, "[AXPhoenixGestureDetector _createConfiguration]", v33[0]);
        _os_log_impl(&dword_25E4AC000, v24, v23, "[PHOENIX] %s Could not initialize configuration from %@. Using default configuration.", v39, 0x16u);
      }

      objc_storeStrong(&v24, 0);
      v2 = objc_alloc_init(AXPhoenixConfiguration);
      v3 = v25;
      v25 = v2;
      MEMORY[0x277D82BD8](v3);
      [v25 setConfigurationAssetVersion:0];
      v22 = AXLogBackTap();
      v21 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v22;
        v10 = v21;
        toStringifiedJSON2 = [v25 toStringifiedJSON];
        v20 = MEMORY[0x277D82BE0](toStringifiedJSON2);
        __os_log_helper_16_2_2_8_32_8_64(v38, "[AXPhoenixGestureDetector _createConfiguration]", v20);
        _os_log_impl(&dword_25E4AC000, v9, v10, "[PHOENIX] %s %@", v38, 0x16u);
        MEMORY[0x277D82BD8](toStringifiedJSON2);
        objc_storeStrong(&v20, 0);
      }

      objc_storeStrong(&v22, 0);
      v35 = MEMORY[0x277D82BE0](v25);
      v26 = 1;
    }

    objc_storeStrong(&v25, 0);
  }

  else
  {
    location = AXLogBackTap();
    v31 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_32(v41, "[AXPhoenixGestureDetector _createConfiguration]");
      _os_log_impl(&dword_25E4AC000, location, v31, "[PHOENIX] %s Could not retrieve configuration path from mobile assets url. Using default configuration.", v41, 0xCu);
    }

    objc_storeStrong(&location, 0);
    v30 = objc_alloc_init(AXPhoenixConfiguration);
    oslog = AXLogBackTap();
    v28 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v12 = oslog;
      v13 = v28;
      toStringifiedJSON3 = [(AXPhoenixConfiguration *)v30 toStringifiedJSON];
      v27 = MEMORY[0x277D82BE0](toStringifiedJSON3);
      __os_log_helper_16_2_2_8_32_8_64(v40, "[AXPhoenixGestureDetector _createConfiguration]", v27);
      _os_log_impl(&dword_25E4AC000, v12, v13, "[PHOENIX] %s %@", v40, 0x16u);
      MEMORY[0x277D82BD8](toStringifiedJSON3);
      objc_storeStrong(&v27, 0);
    }

    objc_storeStrong(&oslog, 0);
    v35 = MEMORY[0x277D82BE0](v30);
    v26 = 1;
    objc_storeStrong(&v30, 0);
  }

  objc_storeStrong(v33, 0);
  *MEMORY[0x277D85DE8];
  v4 = v35;

  return v4;
}

- (id)_createClassifierModelURL
{
  v21 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v16[1] = a2;
  v16[0] = [(AXPhoenixGestureDetector *)self _mobileAssetURLForModelOrNil];
  v15 = 0;
  if (!v16[0] || (v14 = v15, v9 = [v16[0] checkResourceIsReachableAndReturnError:&v14], objc_storeStrong(&v15, v14), (v9 & 1) != 0))
  {
    if (!v16[0])
    {
      urlOfModelInThisBundle = [(AXPhoenixGestureDetector *)selfCopy urlOfModelInThisBundle];
      v5 = v16[0];
      v16[0] = urlOfModelInThisBundle;
      MEMORY[0x277D82BD8](v5);
      v13 = AXLogBackTap();
      v12 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_2_8_32_8_64(v20, "[AXPhoenixGestureDetector _createClassifierModelURL]", v16[0]);
        _os_log_impl(&dword_25E4AC000, v13, v12, "[PHOENIX] %s MobileAsset URL is nil, so using default %@", v20, 0x16u);
      }

      objc_storeStrong(&v13, 0);
    }
  }

  else
  {
    urlOfModelInThisBundle2 = [(AXPhoenixGestureDetector *)selfCopy urlOfModelInThisBundle];
    v3 = v16[0];
    v16[0] = urlOfModelInThisBundle2;
    MEMORY[0x277D82BD8](v3);
  }

  obj = v15;
  v8 = [v16[0] checkResourceIsReachableAndReturnError:&obj];
  objc_storeStrong(&v15, obj);
  if (v8)
  {
    v18 = MEMORY[0x277D82BE0](v16[0]);
  }

  else
  {
    oslog = AXLogBackTap();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_64(v19, "[AXPhoenixGestureDetector _createClassifierModelURL]", v16[0]);
      _os_log_error_impl(&dword_25E4AC000, oslog, OS_LOG_TYPE_ERROR, "[PHOENIX] %s Model doesn't exist at %@", v19, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    v18 = 0;
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(v16, 0);
  *MEMORY[0x277D85DE8];
  v6 = v18;

  return v6;
}

- (void)_startClassifierWithCompletion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v24 = AXLogBackTap();
  v23 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_32(v27, "[AXPhoenixGestureDetector _startClassifierWithCompletion:]");
    _os_log_impl(&dword_25E4AC000, v24, v23, "[PHOENIX] %s Starting device motion updates...", v27, 0xCu);
  }

  objc_storeStrong(&v24, 0);
  dispatch_assert_queue_V2(selfCopy->_queue);
  [(AXPhoenixClassifier *)selfCopy->_classifier reset];
  v8 = objc_alloc_init(MEMORY[0x277CC1CD8]);
  cmMotionManager = selfCopy->_cmMotionManager;
  selfCopy->_cmMotionManager = v8;
  MEMORY[0x277D82BD8](cmMotionManager);
  configuration = [(AXPhoenixClassifier *)selfCopy->_classifier configuration];
  accelerometerSampleRateInHz = [configuration accelerometerSampleRateInHz];
  MEMORY[0x277D82BD8](configuration);
  v22 = accelerometerSampleRateInHz;
  v21 = 1.0 / accelerometerSampleRateInHz;
  v17[0] = 0;
  v17[1] = v17;
  v18 = 0x20000000;
  v19 = 32;
  v20 = 0;
  objc_initWeak(&from, selfCopy);
  [(CMMotionManager *)selfCopy->_cmMotionManager setDeviceMotionUpdateInterval:v21];
  v4 = selfCopy->_cmMotionManager;
  motionInputQueue = selfCopy->_motionInputQueue;
  v9 = MEMORY[0x277D85DD0];
  v10 = -1073741824;
  v11 = 0;
  v12 = __59__AXPhoenixGestureDetector__startClassifierWithCompletion___block_invoke;
  v13 = &unk_279A20940;
  objc_copyWeak(v15, &from);
  v14[0] = MEMORY[0x277D82BE0](location[0]);
  v14[1] = v17;
  [(CMMotionManager *)v4 startDeviceMotionUpdatesToQueue:motionInputQueue withHandler:&v9];
  objc_storeStrong(v14, 0);
  objc_destroyWeak(v15);
  objc_destroyWeak(&from);
  _Block_object_dispose(v17, 8);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __59__AXPhoenixGestureDetector__startClassifierWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v26 = 0;
  objc_storeStrong(&v26, a3);
  v25[1] = a1;
  v25[0] = objc_loadWeakRetained((a1 + 48));
  if (v25[0])
  {
    if (v26)
    {
      v24 = AXLogBackTap();
      v23 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_64(v30, "[AXPhoenixGestureDetector _startClassifierWithCompletion:]_block_invoke", v26);
        _os_log_error_impl(&dword_25E4AC000, v24, v23, "[PHOENIX] %s Phoenix gesture detector error %@", v30, 0x16u);
      }

      objc_storeStrong(&v24, 0);
      [*(v25[0] + 4) phoenixGestureDetector:v25[0] stoppedWithError:v26];
      v8 = v25[0];
      v17 = MEMORY[0x277D85DD0];
      v18 = -1073741824;
      v19 = 0;
      v20 = __59__AXPhoenixGestureDetector__startClassifierWithCompletion___block_invoke_40;
      v21 = &unk_279A20918;
      v22 = MEMORY[0x277D82BE0](v26);
      [v8 stopWithCompletion:&v17];
      if (*(a1 + 32))
      {
        (*(*(a1 + 32) + 16))();
      }

      objc_storeStrong(&v22, 0);
    }

    else
    {
      if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
      {
        v16 = AXLogBackTap();
        v15 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_2_1_8_32(v29, "[AXPhoenixGestureDetector _startClassifierWithCompletion:]_block_invoke");
          _os_log_impl(&dword_25E4AC000, v16, v15, "[PHOENIX] %s Received device motion update. Processing...", v29, 0xCu);
        }

        objc_storeStrong(&v16, 0);
        *(*(*(a1 + 40) + 8) + 24) = 1;
        if (*(a1 + 32))
        {
          (*(*(a1 + 32) + 16))();
        }
      }

      v7 = *(v25[0] + 3);
      [location[0] userAcceleration];
      v12 = v3;
      v13 = v4;
      v14 = v5;
      [location[0] timestamp];
      [v7 handleAccelerometerData:v12 withTimestamp:{v13, v14, v6}];
    }
  }

  else
  {
    oslog = AXLogBackTap();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_32(v28, "[AXPhoenixGestureDetector _startClassifierWithCompletion:]_block_invoke");
      _os_log_error_impl(&dword_25E4AC000, oslog, OS_LOG_TYPE_ERROR, "[PHOENIX] %s strongself is nil!!!", v28, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __59__AXPhoenixGestureDetector__startClassifierWithCompletion___block_invoke_40(uint64_t a1, char a2, id obj)
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = a1;
  v7 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  oslog[0] = AXLogBackTap();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    if (v7)
    {
      v3 = @"Stopped";
    }

    else
    {
      v3 = @"Error stopping";
    }

    __os_log_helper_16_2_3_8_32_8_64_8_64(v9, "[AXPhoenixGestureDetector _startClassifierWithCompletion:]_block_invoke", v3, *(a1 + 32));
    _os_log_error_impl(&dword_25E4AC000, oslog[0], OS_LOG_TYPE_ERROR, "[PHOENIX] %s %@ device motion updates after error %@", v9, 0x20u);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_stopClassifier
{
  v5 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  oslog[1] = a2;
  oslog[0] = AXLogBackTap();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_32(v4, "[AXPhoenixGestureDetector _stopClassifier]");
    _os_log_impl(&dword_25E4AC000, oslog[0], OS_LOG_TYPE_DEFAULT, "[PHOENIX] %s Stopping Accel updates", v4, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  dispatch_assert_queue_V2(selfCopy->_queue);
  if (selfCopy->_cmMotionManager)
  {
    [(CMMotionManager *)selfCopy->_cmMotionManager stopDeviceMotionUpdates];
  }

  [(AXPhoenixClassifier *)selfCopy->_classifier reset];
  objc_storeStrong(&selfCopy->_cmMotionManager, 0);
  *MEMORY[0x277D85DE8];
}

- (void)setFalsePositiveLoggingEnabled:(BOOL)enabled
{
  self->_falsePositiveLoggingEnabled = enabled;
  [(AXPhoenixClassifier *)self->_classifier setFalsePositiveLoggingEnabled:enabled];
  v6 = 0;
  LOBYTE(v5) = 0;
  if (enabled)
  {
    v7 = +[AXPhoenixDataCollectionManager sharedInstance];
    v6 = 1;
    v5 = ![(AXPhoenixDataCollectionManager *)v7 isRunning];
  }

  if (v6)
  {
    MEMORY[0x277D82BD8](v7);
  }

  if (v5)
  {
    v4 = +[AXPhoenixDataCollectionManager sharedInstance];
    [(AXPhoenixDataCollectionManager *)v4 start];
    MEMORY[0x277D82BD8](v4);
  }

  else if (!enabled)
  {
    v3 = +[AXPhoenixDataCollectionManager sharedInstance];
    [(AXPhoenixDataCollectionManager *)v3 stop];
    MEMORY[0x277D82BD8](v3);
  }
}

- (void)setRnnModelEnabled:(BOOL)enabled
{
  selfCopy = self;
  v13 = a2;
  enabledCopy = enabled;
  if (enabled != self->_rnnModelEnabled)
  {
    selfCopy->_rnnModelEnabled = enabledCopy;
    objc_initWeak(&location, selfCopy);
    queue = selfCopy->_queue;
    v4 = MEMORY[0x277D85DD0];
    v5 = -1073741824;
    v6 = 0;
    v7 = __47__AXPhoenixGestureDetector_setRnnModelEnabled___block_invoke;
    v8 = &unk_279A20990;
    objc_copyWeak(&v10, &location);
    v9 = MEMORY[0x277D82BE0](selfCopy);
    dispatch_async(queue, &v4);
    objc_storeStrong(&v9, 0);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __47__AXPhoenixGestureDetector_setRnnModelEnabled___block_invoke(uint64_t a1)
{
  v10[2] = a1;
  v10[1] = a1;
  v10[0] = objc_loadWeakRetained((a1 + 40));
  if (v10[0])
  {
    v1 = v10[0];
    v3 = MEMORY[0x277D85DD0];
    v4 = -1073741824;
    v5 = 0;
    v6 = __47__AXPhoenixGestureDetector_setRnnModelEnabled___block_invoke_2;
    v7 = &unk_279A20968;
    v8 = MEMORY[0x277D82BE0](v10[0]);
    v9 = MEMORY[0x277D82BE0](*(a1 + 32));
    [v1 _stopWithCompletion:&v3];
    objc_storeStrong(&v9, 0);
    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(v10, 0);
}

void __47__AXPhoenixGestureDetector_setRnnModelEnabled___block_invoke_2(uint64_t a1, char a2, id obj)
{
  v30 = *MEMORY[0x277D85DE8];
  v25 = a1;
  v24 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v22[1] = a1;
  if ((v24 & 1) == 0)
  {
    v22[0] = AXLogBackTap();
    v21 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v22[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_64(v29, "[AXPhoenixGestureDetector setRnnModelEnabled:]_block_invoke_2", location);
      _os_log_error_impl(&dword_25E4AC000, v22[0], v21, "[PHOENIX] %s Unable to stop phoenix gesture detector before restarting: %@", v29, 0x16u);
    }

    objc_storeStrong(v22, 0);
  }

  v20 = [*(a1 + 32) _initializeAssetDrivenComponentsWithLocalURL:0 assetVersion:_currentAssetVersion];
  if (v20)
  {
    if (*(*(a1 + 32) + 80))
    {
      v3 = *(a1 + 32);
      v10 = MEMORY[0x277D85DD0];
      v11 = -1073741824;
      v12 = 0;
      v13 = __47__AXPhoenixGestureDetector_setRnnModelEnabled___block_invoke_53;
      v14 = &unk_279A20968;
      v15 = MEMORY[0x277D82BE0](*(a1 + 32));
      v16 = MEMORY[0x277D82BE0](*(a1 + 40));
      [v3 _startWithCompletion:&v10];
      objc_storeStrong(&v16, 0);
      objc_storeStrong(&v15, 0);
    }
  }

  else
  {
    v19 = AXLogBackTap();
    v18 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_32(v28, "[AXPhoenixGestureDetector setRnnModelEnabled:]_block_invoke");
      _os_log_error_impl(&dword_25E4AC000, v19, v18, "[PHOENIX] %s Failed to re-initialize Phoenix after model changed", v28, 0xCu);
    }

    objc_storeStrong(&v19, 0);
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to reinitialize asset driven components of Phoenix from model change"];
    v6 = *(*(a1 + 32) + 32);
    v5 = *(a1 + 32);
    v4 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA450];
    v27 = v17;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v7 = [v4 errorWithDomain:@"AXPhoenixErrorDomain" code:1004 userInfo:?];
    [v6 phoenixGestureDetector:v5 failedWithError:?];
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    objc_storeStrong(&v17, 0);
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

void __47__AXPhoenixGestureDetector_setRnnModelEnabled___block_invoke_53(void *a1, char a2, id obj)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v13 = a1;
  v12 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v10[1] = a1;
  if (v12)
  {
    v9 = AXLogBackTap();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_32(v14, "[AXPhoenixGestureDetector setRnnModelEnabled:]_block_invoke");
      _os_log_impl(&dword_25E4AC000, v9, OS_LOG_TYPE_INFO, "[PHOENIX] %s Successfully restarted the phoenix gesture detector with new assets.", v14, 0xCu);
    }

    objc_storeStrong(&v9, 0);
  }

  else
  {
    v10[0] = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to start Phoenix classifier from model change"];
    v5 = *(a1[4] + 32);
    v4 = a1[5];
    v3 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA450];
    v16[0] = v10[0];
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v6 = [v3 errorWithDomain:@"AXPhoenixErrorDomain" code:1004 userInfo:?];
    [v5 phoenixGestureDetector:v4 failedWithError:?];
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    objc_storeStrong(v10, 0);
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)reportFalsePositive:(id)positive
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, positive);
  v3 = +[AXPhoenixDataCollectionManager sharedInstance];
  [(AXPhoenixDataCollectionManager *)v3 reportFalsePositive:location[0]];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
}

- (void)phoenixClassifier:(id)classifier failedWithError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, classifier);
  v14 = 0;
  objc_storeStrong(&v14, error);
  objc_initWeak(&v13, selfCopy);
  queue = selfCopy->_queue;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __62__AXPhoenixGestureDetector_phoenixClassifier_failedWithError___block_invoke;
  v10 = &unk_279A20990;
  objc_copyWeak(&v12, &v13);
  v11 = MEMORY[0x277D82BE0](v14);
  dispatch_async(queue, &v6);
  objc_storeStrong(&v11, 0);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v13);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

void __62__AXPhoenixGestureDetector_phoenixClassifier_failedWithError___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v11[2] = a1;
  v11[1] = a1;
  v11[0] = objc_loadWeakRetained((a1 + 40));
  if (v11[0])
  {
    location = AXLogBackTap();
    v9 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_64(v12, "[AXPhoenixGestureDetector phoenixClassifier:failedWithError:]_block_invoke", *(a1 + 32));
      _os_log_error_impl(&dword_25E4AC000, location, v9, "[PHOENIX] %s MotionClassifier failed with error: %@", v12, 0x16u);
    }

    objc_storeStrong(&location, 0);
    [*(v11[0] + 4) phoenixGestureDetector:v11[0] failedWithError:*(a1 + 32)];
    if (*(a1 + 32))
    {
      v1 = v11[0];
      v3 = MEMORY[0x277D85DD0];
      v4 = -1073741824;
      v5 = 0;
      v6 = __62__AXPhoenixGestureDetector_phoenixClassifier_failedWithError___block_invoke_57;
      v7 = &unk_279A20918;
      v8 = MEMORY[0x277D82BE0](*(a1 + 32));
      [v1 stopWithCompletion:&v3];
      objc_storeStrong(&v8, 0);
    }
  }

  objc_storeStrong(v11, 0);
  *MEMORY[0x277D85DE8];
}

void __62__AXPhoenixGestureDetector_phoenixClassifier_failedWithError___block_invoke_57(uint64_t a1, char a2, id obj)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v8 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  if (v8)
  {
    oslog[0] = AXLogBackTap();
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_32_8_64(v11, "[AXPhoenixGestureDetector phoenixClassifier:failedWithError:]_block_invoke", *(a1 + 32));
      _os_log_impl(&dword_25E4AC000, oslog[0], type, "[PHOENIX] %s Stopped phoenix gesture detector on classifier error: %@", v11, 0x16u);
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    v4 = AXLogBackTap();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_3_8_32_8_64_8_64(v10, "[AXPhoenixGestureDetector phoenixClassifier:failedWithError:]_block_invoke", *(a1 + 32), location);
      _os_log_error_impl(&dword_25E4AC000, v4, OS_LOG_TYPE_ERROR, "[PHOENIX] %s Failed to stop phoenix gesture detector after classifier error %@, with error %@", v10, 0x20u);
    }

    objc_storeStrong(&v4, 0);
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)phoenixClassifierDidDetectDoubleTap:(id)tap data:(id)data context:(id)context
{
  *&v20 = data.var0;
  *(&v20 + 1) = *&data.var1;
  *&v21 = data.var2;
  *(&v21 + 1) = *&data.var3;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tap);
  v17 = 0;
  objc_storeStrong(&v17, context);
  objc_initWeak(&v16, selfCopy);
  queue = selfCopy->_queue;
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __77__AXPhoenixGestureDetector_phoenixClassifierDidDetectDoubleTap_data_context___block_invoke;
  v11 = &unk_279A20A00;
  objc_copyWeak(&v13, &v16);
  v14 = v20;
  v15 = v21;
  v12 = MEMORY[0x277D82BE0](v17);
  dispatch_async(queue, &v7);
  objc_storeStrong(&v12, 0);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v16);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

void __77__AXPhoenixGestureDetector_phoenixClassifierDidDetectDoubleTap_data_context___block_invoke(uint64_t a1)
{
  v11[2] = a1;
  v11[1] = a1;
  v11[0] = objc_loadWeakRetained((a1 + 40));
  if (v11[0])
  {
    v10 = mach_absolute_time();
    v1 = *(v11[0] + 5);
    v3 = MEMORY[0x277D85DD0];
    v4 = -1073741824;
    v5 = 0;
    v6 = __77__AXPhoenixGestureDetector_phoenixClassifierDidDetectDoubleTap_data_context___block_invoke_2;
    v7 = &unk_279A209D8;
    v8 = MEMORY[0x277D82BE0](*(a1 + 32));
    v9[0] = MEMORY[0x277D82BE0](v11[0]);
    v9[1] = v10;
    [v1 shouldTriggerDoubleTapEventWithTapData:&v3 completion:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
    objc_storeStrong(v9, 0);
    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(v11, 0);
}

void __77__AXPhoenixGestureDetector_phoenixClassifierDidDetectDoubleTap_data_context___block_invoke_2(void *a1, char a2, id obj, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = a1;
  v13 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10[1] = a1;
  v4 = objc_alloc(MEMORY[0x277CBEB38]);
  v10[0] = [v4 initWithDictionary:location];
  [v10[0] addEntriesFromDictionary:a1[4]];
  objc_storeStrong(&location, v10[0]);
  if (v13)
  {
    v9 = AXLogBackTap();
    v8 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_32(v16, "[AXPhoenixGestureDetector phoenixClassifierDidDetectDoubleTap:data:context:]_block_invoke_2");
      _os_log_impl(&dword_25E4AC000, v9, v8, "[PHOENIX] %s Double tap detected", v16, 0xCu);
    }

    objc_storeStrong(&v9, 0);
    [*(a1[5] + 32) phoenixGestureDetectorDidDetectDoubleTap:a1[5]];
    [*(a1[5] + 56) logEventWithType:1 machAbsoluteTime:a1[6] context:location completion:&__block_literal_global_1];
  }

  else
  {
    oslog = AXLogBackTap();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_32_8_64(v15, "[AXPhoenixGestureDetector phoenixClassifierDidDetectDoubleTap:data:context:]_block_invoke", v11);
      _os_log_impl(&dword_25E4AC000, oslog, OS_LOG_TYPE_DEFAULT, "[PHOENIX] %s Double tap was mitigated. %@", v15, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    [*(a1[5] + 56) logEventWithType:2 machAbsoluteTime:a1[6] context:location completion:&__block_literal_global_62];
  }

  [*(a1[5] + 24) setShouldResetBuffer];
  objc_storeStrong(v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

void __77__AXPhoenixGestureDetector_phoenixClassifierDidDetectDoubleTap_data_context___block_invoke_59(NSObject *a1, char a2, id obj)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  if ((v6 & 1) == 0)
  {
    oslog[0] = AXLogBackTap();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_64(v8, "[AXPhoenixGestureDetector phoenixClassifierDidDetectDoubleTap:data:context:]_block_invoke", location);
      _os_log_error_impl(&dword_25E4AC000, oslog[0], OS_LOG_TYPE_ERROR, "[PHOENIX] %s Error creating AXPhoenixAnalyticsEventTypeDoubleTap: %@", v8, 0x16u);
    }

    objc_storeStrong(oslog, 0);
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

void __77__AXPhoenixGestureDetector_phoenixClassifierDidDetectDoubleTap_data_context___block_invoke_60(NSObject *a1, char a2, id obj)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  if ((v6 & 1) == 0)
  {
    oslog[0] = AXLogBackTap();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_64(v8, "[AXPhoenixGestureDetector phoenixClassifierDidDetectDoubleTap:data:context:]_block_invoke", location);
      _os_log_error_impl(&dword_25E4AC000, oslog[0], OS_LOG_TYPE_ERROR, "[PHOENIX] %s Error creating AXPhoenixAnalyticsEventTypeDoubleTapMitigated: %@", v8, 0x16u);
    }

    objc_storeStrong(oslog, 0);
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)phoenixClassifierDidDetectTripleTap:(id)tap data:(id)data context:(id)context
{
  *&v20 = data.var0;
  *(&v20 + 1) = *&data.var1;
  *&v21 = data.var2;
  *(&v21 + 1) = *&data.var3;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tap);
  v17 = 0;
  objc_storeStrong(&v17, context);
  objc_initWeak(&v16, selfCopy);
  queue = selfCopy->_queue;
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __77__AXPhoenixGestureDetector_phoenixClassifierDidDetectTripleTap_data_context___block_invoke;
  v11 = &unk_279A20A00;
  objc_copyWeak(&v13, &v16);
  v14 = v20;
  v15 = v21;
  v12 = MEMORY[0x277D82BE0](v17);
  dispatch_async(queue, &v7);
  objc_storeStrong(&v12, 0);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v16);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

void __77__AXPhoenixGestureDetector_phoenixClassifierDidDetectTripleTap_data_context___block_invoke(uint64_t a1)
{
  v11[2] = a1;
  v11[1] = a1;
  v11[0] = objc_loadWeakRetained((a1 + 40));
  if (v11[0])
  {
    v10 = mach_absolute_time();
    v1 = *(v11[0] + 5);
    v3 = MEMORY[0x277D85DD0];
    v4 = -1073741824;
    v5 = 0;
    v6 = __77__AXPhoenixGestureDetector_phoenixClassifierDidDetectTripleTap_data_context___block_invoke_2;
    v7 = &unk_279A209D8;
    v8 = MEMORY[0x277D82BE0](*(a1 + 32));
    v9[0] = MEMORY[0x277D82BE0](v11[0]);
    v9[1] = v10;
    [v1 shouldTriggerTripleTapEventWithTapData:&v3 completion:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
    objc_storeStrong(v9, 0);
    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(v11, 0);
}

void __77__AXPhoenixGestureDetector_phoenixClassifierDidDetectTripleTap_data_context___block_invoke_2(void *a1, char a2, id obj, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = a1;
  v13 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10[1] = a1;
  v4 = objc_alloc(MEMORY[0x277CBEB38]);
  v10[0] = [v4 initWithDictionary:location];
  [v10[0] addEntriesFromDictionary:a1[4]];
  objc_storeStrong(&location, v10[0]);
  if (v13)
  {
    v9 = AXLogBackTap();
    v8 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_32(v16, "[AXPhoenixGestureDetector phoenixClassifierDidDetectTripleTap:data:context:]_block_invoke_2");
      _os_log_impl(&dword_25E4AC000, v9, v8, "[PHOENIX] %s Triple tap detected", v16, 0xCu);
    }

    objc_storeStrong(&v9, 0);
    [*(a1[5] + 32) phoenixGestureDetectorDidDetectTripleTap:a1[5]];
    [*(a1[5] + 56) logEventWithType:3 machAbsoluteTime:a1[6] context:location completion:&__block_literal_global_66];
  }

  else
  {
    oslog = AXLogBackTap();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_32_8_64(v15, "[AXPhoenixGestureDetector phoenixClassifierDidDetectTripleTap:data:context:]_block_invoke", v11);
      _os_log_impl(&dword_25E4AC000, oslog, OS_LOG_TYPE_DEFAULT, "[PHOENIX] %s Triple tap was mitigated. %@", v15, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    [*(a1[5] + 56) logEventWithType:4 machAbsoluteTime:a1[6] context:location completion:&__block_literal_global_69];
  }

  [*(a1[5] + 24) setShouldResetBuffer];
  objc_storeStrong(v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

void __77__AXPhoenixGestureDetector_phoenixClassifierDidDetectTripleTap_data_context___block_invoke_64(NSObject *a1, char a2, id obj)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  if ((v6 & 1) == 0)
  {
    oslog[0] = AXLogBackTap();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_64(v8, "[AXPhoenixGestureDetector phoenixClassifierDidDetectTripleTap:data:context:]_block_invoke", location);
      _os_log_error_impl(&dword_25E4AC000, oslog[0], OS_LOG_TYPE_ERROR, "[PHOENIX] %s Error creating AXPhoenixAnalyticsEventTypeTripleTap: %@", v8, 0x16u);
    }

    objc_storeStrong(oslog, 0);
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

void __77__AXPhoenixGestureDetector_phoenixClassifierDidDetectTripleTap_data_context___block_invoke_67(NSObject *a1, char a2, id obj)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  if ((v6 & 1) == 0)
  {
    oslog[0] = AXLogBackTap();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_64(v8, "[AXPhoenixGestureDetector phoenixClassifierDidDetectTripleTap:data:context:]_block_invoke", location);
      _os_log_error_impl(&dword_25E4AC000, oslog[0], OS_LOG_TYPE_ERROR, "[PHOENIX] %s Error creating AXPhoenixAnalyticsEventTypeTripleTapMitigated: %@", v8, 0x16u);
    }

    objc_storeStrong(oslog, 0);
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)phoenixClassifierDidLogFile:(id)file
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, file);
  if (([(AXPhoenixGestureDetectorDelegate *)selfCopy->_delegate conformsToProtocol:&unk_28703E928]& 1) != 0)
  {
    [(AXPhoenixGestureDetectorDelegate *)selfCopy->_delegate phoenixClassifierDidLogFile:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (void)phoenixMitigator:(id)mitigator didFailWithError:(id)error
{
  v20 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, mitigator);
  v16 = 0;
  objc_storeStrong(&v16, error);
  v15 = AXLogBackTap();
  v14 = OS_LOG_TYPE_ERROR;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_64(v19, "[AXPhoenixGestureDetector phoenixMitigator:didFailWithError:]", v16);
    _os_log_error_impl(&dword_25E4AC000, v15, v14, "[PHOENIX] %s Mitigation error: %@", v19, 0x16u);
  }

  objc_storeStrong(&v15, 0);
  objc_initWeak(&v13, selfCopy);
  queue = selfCopy->_queue;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __62__AXPhoenixGestureDetector_phoenixMitigator_didFailWithError___block_invoke;
  v10 = &unk_279A20990;
  objc_copyWeak(&v12, &v13);
  v11 = MEMORY[0x277D82BE0](v16);
  dispatch_async(queue, &v6);
  objc_storeStrong(&v11, 0);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v13);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __62__AXPhoenixGestureDetector_phoenixMitigator_didFailWithError___block_invoke(uint64_t a1)
{
  v2[2] = a1;
  v2[1] = a1;
  v2[0] = objc_loadWeakRetained((a1 + 40));
  [*(v2[0] + 4) phoenixGestureDetector:v2[0] failedWithError:*(a1 + 32)];
  objc_storeStrong(v2, 0);
}

- (void)phoenixMitigator:(id)mitigator displayOnDidChange:(BOOL)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, mitigator);
  changeCopy = change;
  objc_initWeak(&v14, selfCopy);
  queue = selfCopy->_queue;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __64__AXPhoenixGestureDetector_phoenixMitigator_displayOnDidChange___block_invoke;
  v10 = &unk_279A20A28;
  objc_copyWeak(&v12, &v14);
  v13 = changeCopy;
  v11 = MEMORY[0x277D82BE0](selfCopy);
  dispatch_async(queue, &v6);
  objc_storeStrong(&v11, 0);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_storeStrong(location, 0);
}

void __64__AXPhoenixGestureDetector_phoenixMitigator_displayOnDidChange___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v22[2] = a1;
  v22[1] = a1;
  v22[0] = objc_loadWeakRetained((a1 + 40));
  if (v22[0] && (*(v22[0] + 80) & 1) != 0)
  {
    if (*(a1 + 48))
    {
      location = AXLogBackTap();
      v20 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_1_8_32(v24, "[AXPhoenixGestureDetector phoenixMitigator:displayOnDidChange:]_block_invoke");
        _os_log_debug_impl(&dword_25E4AC000, location, v20, "[PHOENIX] %s Got display on, starting classifier", v24, 0xCu);
      }

      objc_storeStrong(&location, 0);
      v2 = v22[0];
      v13 = MEMORY[0x277D85DD0];
      v14 = -1073741824;
      v15 = 0;
      v16 = __64__AXPhoenixGestureDetector_phoenixMitigator_displayOnDidChange___block_invoke_122;
      v17 = &unk_279A20968;
      v18 = MEMORY[0x277D82BE0](v22[0]);
      v19 = MEMORY[0x277D82BE0](*(a1 + 32));
      [v2 _startWithCompletion:&v13];
      objc_storeStrong(&v19, 0);
      objc_storeStrong(&v18, 0);
    }

    else
    {
      v12 = AXLogBackTap();
      v11 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_1_8_32(v23, "[AXPhoenixGestureDetector phoenixMitigator:displayOnDidChange:]_block_invoke");
        _os_log_debug_impl(&dword_25E4AC000, v12, v11, "[PHOENIX] %s Got display off, stop classifier", v23, 0xCu);
      }

      objc_storeStrong(&v12, 0);
      v1 = v22[0];
      v4 = MEMORY[0x277D85DD0];
      v5 = -1073741824;
      v6 = 0;
      v7 = __64__AXPhoenixGestureDetector_phoenixMitigator_displayOnDidChange___block_invoke_123;
      v8 = &unk_279A20968;
      v9 = MEMORY[0x277D82BE0](v22[0]);
      v10 = MEMORY[0x277D82BE0](*(a1 + 32));
      [v1 _stopWithCompletion:&v4];
      objc_storeStrong(&v10, 0);
      objc_storeStrong(&v9, 0);
    }
  }

  objc_storeStrong(v22, 0);
  *MEMORY[0x277D85DE8];
}

void __64__AXPhoenixGestureDetector_phoenixMitigator_displayOnDidChange___block_invoke_122(void *a1, char a2, id obj)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v8 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v6[1] = a1;
  if (v8)
  {
    v6[0] = AXLogBackTap();
    v5 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v6[0], OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_32(v11, "[AXPhoenixGestureDetector phoenixMitigator:displayOnDidChange:]_block_invoke");
      _os_log_impl(&dword_25E4AC000, v6[0], v5, "[PHOENIX] %s Classifier started when display turned on", v11, 0xCu);
    }

    objc_storeStrong(v6, 0);
  }

  else
  {
    oslog = AXLogBackTap();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_32(v10, "[AXPhoenixGestureDetector phoenixMitigator:displayOnDidChange:]_block_invoke");
      _os_log_error_impl(&dword_25E4AC000, oslog, OS_LOG_TYPE_ERROR, "[PHOENIX] %s Classifier failed to run when display turned on", v10, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    [*(a1[4] + 32) phoenixGestureDetector:a1[5] failedWithError:location];
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

void __64__AXPhoenixGestureDetector_phoenixMitigator_displayOnDidChange___block_invoke_123(void *a1, char a2, id obj)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v8 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v6[1] = a1;
  if (v8)
  {
    v6[0] = AXLogBackTap();
    v5 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v6[0], OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_32(v11, "[AXPhoenixGestureDetector phoenixMitigator:displayOnDidChange:]_block_invoke");
      _os_log_impl(&dword_25E4AC000, v6[0], v5, "[PHOENIX] %s Classifier stopped when display turned off", v11, 0xCu);
    }

    objc_storeStrong(v6, 0);
  }

  else
  {
    oslog = AXLogBackTap();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_32(v10, "[AXPhoenixGestureDetector phoenixMitigator:displayOnDidChange:]_block_invoke");
      _os_log_error_impl(&dword_25E4AC000, oslog, OS_LOG_TYPE_ERROR, "[PHOENIX] %s Classifier failed to stop when display turned off", v10, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    [*(a1[4] + 32) phoenixGestureDetector:a1[5] failedWithError:location];
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)phoenixMitigator:(id)mitigator touchOnDidChange:(BOOL)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, mitigator);
  changeCopy = change;
  objc_initWeak(&v13, selfCopy);
  queue = selfCopy->_queue;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __62__AXPhoenixGestureDetector_phoenixMitigator_touchOnDidChange___block_invoke;
  v10 = &unk_279A20A50;
  objc_copyWeak(&v11, &v13);
  v12 = changeCopy;
  dispatch_async(queue, &v6);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_storeStrong(location, 0);
}

void __62__AXPhoenixGestureDetector_phoenixMitigator_touchOnDidChange___block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained((a1 + 32));
  if (location[0] && (*(a1 + 40) & 1) != 0)
  {
    oslog = AXLogBackTap();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_32(v4, "[AXPhoenixGestureDetector phoenixMitigator:touchOnDidChange:]_block_invoke");
      _os_log_impl(&dword_25E4AC000, oslog, OS_LOG_TYPE_INFO, "[PHOENIX] %s Reset buffer on touchOn", v4, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    [*(location[0] + 3) setShouldResetBuffer];
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)modelDidUpdate:(id)update assetVersion:(unint64_t)version
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  versionCopy = version;
  objc_initWeak(&v14, selfCopy);
  queue = selfCopy->_queue;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __56__AXPhoenixGestureDetector_modelDidUpdate_assetVersion___block_invoke;
  v10 = &unk_279A20AC8;
  objc_copyWeak(v13, &v14);
  v11 = MEMORY[0x277D82BE0](location[0]);
  v12 = MEMORY[0x277D82BE0](selfCopy);
  v13[1] = versionCopy;
  dispatch_async(queue, &v6);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_destroyWeak(v13);
  objc_destroyWeak(&v14);
  objc_storeStrong(location, 0);
}

void __56__AXPhoenixGestureDetector_modelDidUpdate_assetVersion___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v15[2] = a1;
  v15[1] = a1;
  v15[0] = objc_loadWeakRetained((a1 + 48));
  if (v15[0] && *(a1 + 32) && ([*(a1 + 40) needsToUpdateModelToVersion:*(a1 + 56)] & 1) != 0)
  {
    location = AXLogBackTap();
    v13 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(location, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_2_8_32_8_64(v17, "[AXPhoenixGestureDetector modelDidUpdate:assetVersion:]_block_invoke", *(a1 + 32));
      _os_log_impl(&dword_25E4AC000, location, v13, "[PHOENIX] %s Phoenix gesture detector needs to update with new assets at URL: %@", v17, 0x16u);
    }

    objc_storeStrong(&location, 0);
    v12 = AXLogBackTap();
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_32(v16, "[AXPhoenixGestureDetector modelDidUpdate:assetVersion:]_block_invoke");
      _os_log_impl(&dword_25E4AC000, v12, v11, "[PHOENIX] %s Attempting to restart the phoenix gesture detector...", v16, 0xCu);
    }

    objc_storeStrong(&v12, 0);
    v1 = v15[0];
    v3 = MEMORY[0x277D85DD0];
    v4 = -1073741824;
    v5 = 0;
    v6 = __56__AXPhoenixGestureDetector_modelDidUpdate_assetVersion___block_invoke_124;
    v7 = &unk_279A20AA0;
    v8 = MEMORY[0x277D82BE0](v15[0]);
    v9 = MEMORY[0x277D82BE0](*(a1 + 32));
    v10[1] = *(a1 + 56);
    v10[0] = MEMORY[0x277D82BE0](*(a1 + 40));
    [v1 _stopWithCompletion:&v3];
    objc_storeStrong(v10, 0);
    objc_storeStrong(&v9, 0);
    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(v15, 0);
  *MEMORY[0x277D85DE8];
}

void __56__AXPhoenixGestureDetector_modelDidUpdate_assetVersion___block_invoke_124(uint64_t a1, char a2, id obj)
{
  v31 = *MEMORY[0x277D85DE8];
  v26 = a1;
  v25 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v23[1] = a1;
  if ((v25 & 1) == 0)
  {
    v23[0] = AXLogBackTap();
    v22 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v23[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_64(v30, "[AXPhoenixGestureDetector modelDidUpdate:assetVersion:]_block_invoke", location);
      _os_log_error_impl(&dword_25E4AC000, v23[0], v22, "[PHOENIX] %s Unable to stop phoenix gesture detector before restarting: %@", v30, 0x16u);
    }

    objc_storeStrong(v23, 0);
  }

  v21 = [*(a1 + 32) _initializeAssetDrivenComponentsWithLocalURL:*(a1 + 40) assetVersion:*(a1 + 56)];
  if (v21)
  {
    if (*(*(a1 + 32) + 80))
    {
      v3 = *(a1 + 32);
      v10 = MEMORY[0x277D85DD0];
      v11 = -1073741824;
      v12 = 0;
      v13 = __56__AXPhoenixGestureDetector_modelDidUpdate_assetVersion___block_invoke_128;
      v14 = &unk_279A20A78;
      v15 = MEMORY[0x277D82BE0](*(a1 + 40));
      v16 = MEMORY[0x277D82BE0](*(a1 + 32));
      v17 = MEMORY[0x277D82BE0](*(a1 + 48));
      [v3 _startWithCompletion:&v10];
      objc_storeStrong(&v17, 0);
      objc_storeStrong(&v16, 0);
      objc_storeStrong(&v15, 0);
    }
  }

  else
  {
    v20 = AXLogBackTap();
    v19 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_64(v29, "[AXPhoenixGestureDetector modelDidUpdate:assetVersion:]_block_invoke", *(a1 + 40));
      _os_log_error_impl(&dword_25E4AC000, v20, v19, "[PHOENIX] %s Failed to re-initialize Phoenix from %@", v29, 0x16u);
    }

    objc_storeStrong(&v20, 0);
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to reinitialize asset driven components of Phoenix from %@", *(a1 + 40)];
    v6 = *(*(a1 + 32) + 32);
    v5 = *(a1 + 32);
    v4 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA450];
    v28 = v18;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v7 = [v4 errorWithDomain:@"AXPhoenixErrorDomain" code:1004 userInfo:?];
    [v6 phoenixGestureDetector:v5 failedWithError:?];
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    objc_storeStrong(&v18, 0);
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

void __56__AXPhoenixGestureDetector_modelDidUpdate_assetVersion___block_invoke_128(void *a1, char a2, id obj)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v13 = a1;
  v12 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v10[1] = a1;
  if (v12)
  {
    v9 = AXLogBackTap();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_32(v14, "[AXPhoenixGestureDetector modelDidUpdate:assetVersion:]_block_invoke");
      _os_log_impl(&dword_25E4AC000, v9, OS_LOG_TYPE_INFO, "[PHOENIX] %s Successfully restarted the phoenix gesture detector with new assets.", v14, 0xCu);
    }

    objc_storeStrong(&v9, 0);
  }

  else
  {
    v10[0] = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to reinitialize asset driven components of Phoenix from %@, error is %@", a1[4], location];
    v5 = *(a1[5] + 32);
    v4 = a1[6];
    v3 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA450];
    v16[0] = v10[0];
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v6 = [v3 errorWithDomain:@"AXPhoenixErrorDomain" code:1004 userInfo:?];
    [v5 phoenixGestureDetector:v4 failedWithError:?];
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    objc_storeStrong(v10, 0);
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

@end
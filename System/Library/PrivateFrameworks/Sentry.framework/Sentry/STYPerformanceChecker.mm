@interface STYPerformanceChecker
+ (id)sharedPerfChecker;
- (int64_t)triage:(id)a3;
- (void)checkFramerateOfAnimationScenario:(id)a3 completionHandler:(id)a4;
- (void)checkLatencyOfResponsivenessScenario:(id)a3 completionHandler:(id)a4;
- (void)checkPerformanceOfScenarioReport:(id)a3 completionHandler:(id)a4;
- (void)dealloc;
- (void)reportError:(int64_t)a3 report:(id)a4 completionHandler:(id)a5;
@end

@implementation STYPerformanceChecker

+ (id)sharedPerfChecker
{
  if (sharedPerfChecker_onceToken != -1)
  {
    +[STYPerformanceChecker sharedPerfChecker];
  }

  v3 = sharedPerfChecker_sharedChecker;

  return v3;
}

void __42__STYPerformanceChecker_sharedPerfChecker__block_invoke()
{
  v16[3] = *MEMORY[0x277D85DE8];
  v0 = objc_alloc_init(STYPerformanceChecker);
  v1 = sharedPerfChecker_sharedChecker;
  sharedPerfChecker_sharedChecker = v0;

  if (sharedPerfChecker_sharedChecker)
  {
    v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, -15);
    v3 = dispatch_queue_create("com.apple.Sentry.Frameworking.framework.STYPerformanceChecker", v2);
    [sharedPerfChecker_sharedChecker setSerialUtilityQueue:v3];

    v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:8];
    [sharedPerfChecker_sharedChecker setPerfCheckerErrors:v4];

    v15[0] = &unk_2877088B8;
    v15[1] = &unk_2877088B8;
    v16[0] = @"Encountered unexpected configuration error.";
    v16[1] = @"System is under memory pressure.";
    v15[2] = &unk_2877088D0;
    v16[2] = @"System is under thermal pressure.";
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
    [sharedPerfChecker_sharedChecker setPerfCheckerErrors:v5];

    startMonitoringSystemConditions();
    [sharedPerfChecker_sharedChecker setUnderThermalPressure:0];
    [sharedPerfChecker_sharedChecker setUnderMemoryPressure:0];
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    v7 = [v6 addObserverForName:kSTYNoMemoryPressureNotification object:0 queue:0 usingBlock:&__block_literal_global_21];

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    v9 = [v8 addObserverForName:kSTYHeavyMemoryPressureNotification object:0 queue:0 usingBlock:&__block_literal_global_23];

    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    v11 = [v10 addObserverForName:kSTYNoThermalPressureNotification object:0 queue:0 usingBlock:&__block_literal_global_25];

    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    v13 = [v12 addObserverForName:kSTYHeavyThermalPressureNotification object:0 queue:0 usingBlock:&__block_literal_global_27];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)checkPerformanceOfScenarioReport:(id)a3 completionHandler:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [v11 scenario];
  v8 = [v7 kpi];

  if (v8 == -1001)
  {
    [(STYPerformanceChecker *)self checkFramerateOfAnimationScenario:v11 completionHandler:v6];
  }

  else
  {
    v9 = [v11 scenario];
    v10 = [v9 kpi];

    if (v10 == -1000)
    {
      [(STYPerformanceChecker *)self checkLatencyOfResponsivenessScenario:v11 completionHandler:v6];
    }

    else
    {
      [(STYPerformanceChecker *)self reportError:-100001 report:v11 completionHandler:v6];
    }
  }
}

- (void)reportError:(int64_t)a3 report:(id)a4 completionHandler:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = +[STYFrameworkHelper sharedHelper];
  v11 = [v10 logHandle];

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v26 = [v8 scenario];
    v21 = [v26 scenarioID];
    perfCheckerErrors = self->_perfCheckerErrors;
    v23 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v24 = [v23 stringValue];
    v25 = [(NSDictionary *)perfCheckerErrors valueForKey:v24];
    *buf = 138412802;
    v30 = v21;
    v31 = 2048;
    v32 = a3;
    v33 = 2112;
    v34 = v25;
    _os_log_error_impl(&dword_2656CE000, v11, OS_LOG_TYPE_ERROR, "Encountered error conditions while checking performance of %@ :  %ld / %@", buf, 0x20u);
  }

  v27 = *MEMORY[0x277CCA450];
  v12 = [MEMORY[0x277CCA8D8] mainBundle];
  v13 = self->_perfCheckerErrors;
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v15 = [v14 stringValue];
  v16 = [(NSDictionary *)v13 valueForKey:v15];
  v17 = [v12 localizedStringForKey:v16 value:&stru_287705D88 table:0];
  v28 = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];

  v19 = [MEMORY[0x277CCA9B8] errorWithDomain:STYPerformanceCheckerErrorDomain code:a3 userInfo:v18];
  v9[2](v9, 0, v19, v8);

  v20 = *MEMORY[0x277D85DE8];
}

- (void)checkLatencyOfResponsivenessScenario:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  serialUtilityQueue = self->_serialUtilityQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__STYPerformanceChecker_checkLatencyOfResponsivenessScenario_completionHandler___block_invoke;
  block[3] = &unk_279B9B508;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(serialUtilityQueue, block);
}

uint64_t __80__STYPerformanceChecker_checkLatencyOfResponsivenessScenario_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) triage:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);

    return [v4 reportError:v3 report:v5 completionHandler:v6];
  }

  else
  {
    [*(a1 + 40) observedLatencyInMs];
    [*(a1 + 40) targetLatencyInMs];
    v8 = *(a1 + 40);
    v9 = *(*(a1 + 48) + 16);

    return v9();
  }
}

- (void)checkFramerateOfAnimationScenario:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  serialUtilityQueue = self->_serialUtilityQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__STYPerformanceChecker_checkFramerateOfAnimationScenario_completionHandler___block_invoke;
  block[3] = &unk_279B9B508;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(serialUtilityQueue, block);
}

uint64_t __77__STYPerformanceChecker_checkFramerateOfAnimationScenario_completionHandler___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) triage:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *MEMORY[0x277D85DE8];

    return [v4 reportError:v3 report:v5 completionHandler:v6];
  }

  else
  {
    [*(a1 + 40) observedFps];
    v10 = v9;
    [*(a1 + 40) targetFps];
    v12 = v11;
    v13 = +[STYFrameworkHelper sharedHelper];
    v14 = [v13 logHandle];

    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v10 <= v12)
    {
      if (v15)
      {
        v21 = [*(a1 + 40) scenario];
        v22 = [v21 scenarioID];
        [*(a1 + 40) observedFps];
        v24 = v23;
        [*(a1 + 40) targetFps];
        v28 = 138412802;
        v29 = v22;
        v30 = 2048;
        v31 = v24;
        v32 = 2048;
        v33 = v25;
        _os_log_impl(&dword_2656CE000, v14, OS_LOG_TYPE_DEFAULT, " %@'s observed framerate of %.0f was below threshold of %.0f ", &v28, 0x20u);
      }
    }

    else if (v15)
    {
      v16 = [*(a1 + 40) scenario];
      v17 = [v16 scenarioID];
      [*(a1 + 40) observedFps];
      v19 = v18;
      [*(a1 + 40) targetFps];
      v28 = 138412802;
      v29 = v17;
      v30 = 2048;
      v31 = v19;
      v32 = 2048;
      v33 = v20;
      _os_log_impl(&dword_2656CE000, v14, OS_LOG_TYPE_DEFAULT, " %@'s observed framerate of %.0f was above threshold of %.0f ", &v28, 0x20u);
    }

    v26 = *(a1 + 40);
    result = (*(*(a1 + 48) + 16))();
    v27 = *MEMORY[0x277D85DE8];
  }

  return result;
}

- (int64_t)triage:(id)a3
{
  if (self->_underThermalPressure)
  {
    return -1003;
  }

  if (self->_underMemoryPressure)
  {
    return -1002;
  }

  return 0;
}

- (void)dealloc
{
  stopMonitoringSystemConditions();
  v3.receiver = self;
  v3.super_class = STYPerformanceChecker;
  [(STYPerformanceChecker *)&v3 dealloc];
}

@end
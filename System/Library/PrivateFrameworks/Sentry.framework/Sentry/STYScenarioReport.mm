@interface STYScenarioReport
+ (id)reportFromSignpostEvent:(id)a3 error:(id *)a4;
+ (id)reportFromSignpostInterval:(id)a3 error:(id *)a4;
- (STYScenarioReport)initWithScenario:(id)a3;
- (STYScenarioReport)initWithSignpostEvent:(id)a3 scenario:(id)a4 error:(id *)a5;
- (STYScenarioReport)initWithSignpostInterval:(id)a3 scenario:(id)a4 error:(id *)a5;
- (id)convertDictionaryToString:(id)a3;
@end

@implementation STYScenarioReport

- (STYScenarioReport)initWithScenario:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = STYScenarioReport;
  v6 = [(STYScenarioReport *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scenario, a3);
    v8 = v7;
  }

  return v7;
}

- (STYScenarioReport)initWithSignpostInterval:(id)a3 scenario:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v42.receiver = self;
  v42.super_class = STYScenarioReport;
  v10 = [(STYScenarioReport *)&v42 init];
  if (v10)
  {
    v11 = machCtsTimeToMs([v8 durationMachContinuousTime]);
    objc_storeStrong(v10 + 6, a4);
    *(v10 + 2) = v11;
    *(v10 + 3) = [v8 startMachContinuousTime];
    *(v10 + 4) = [v8 endMachContinuousTime];
    mach_get_times();
    *(v10 + 24) = vaddq_s64(vdupq_n_s64(0), *(v10 + 24));
    v12 = +[STYUserScenarioCache sharedCache];
    [v12 latencyGoalsForSignpostInterval:v8];
    *(v10 + 3) = v13;
    v14 = (v10 + 12);

    v15 = +[STYUserScenarioCache sharedCache];
    v16 = [v15 issueCategoryForSignpostInterval:v8];
    v17 = *(v10 + 5);
    *(v10 + 5) = v16;

    if (!+[STYDeviceInfo isMemoryConstrained])
    {
      v18 = [v8 subsystem];
      if ([v18 isEqualToString:@"com.apple.SpringBoard"])
      {
      }

      else
      {
        v19 = [v8 subsystem];
        v20 = [v19 isEqualToString:@"com.apple.app_launch_measurement"];

        if ((v20 & 1) == 0)
        {
          v21 = +[STYFrameworkHelper sharedHelper];
          v22 = [v21 logHandle];

          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            [STYScenarioReport initWithSignpostInterval:v22 scenario:? error:?];
          }

          v23 = *v14 / 1.6;
          *v14 = v23;
        }
      }
    }

    v24 = [STYFrameworkHelper sharedHelper:0];
    v25 = [v24 logHandle];

    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [STYScenarioReport initWithSignpostInterval:v9 scenario:v25 error:?];
    }

    v26 = +[STYFrameworkHelper sharedHelper];
    v27 = [v26 logHandle];

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [STYScenarioReport initWithSignpostInterval:v9 scenario:v10 + 3 error:v27];
    }

    if ([v9 kpi] == -1001)
    {
      v28 = v8;
      [v28 frameRate];
      *(v10 + 4) = v29;
      v30 = +[STYUserScenarioCache sharedCache];
      [v30 framerateGoalsForSignpostInterval:v28];
      v32 = v31;

      *(v10 + 5) = v32;
    }

    else
    {
      __asm { FMOV            V0.2S, #-1.0 }

      *(v10 + 2) = _D0;
    }

    objc_storeStrong(v10 + 8, a3);
    v38 = symptomsSignatureForInterval(v8);
    v39 = *(v10 + 9);
    *(v10 + 9) = v38;

    v40 = v10;
  }

  return v10;
}

- (STYScenarioReport)initWithSignpostEvent:(id)a3 scenario:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v20.receiver = self;
  v20.super_class = STYScenarioReport;
  v9 = [(STYScenarioReport *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_scenario, a4);
    v10->_scenarioStartTime = 0;
    v10->_scenarioEndTime = mach_absolute_time();
    __asm { FMOV            V0.2S, #-1.0 }

    *&v10->_observedFps = _D0;
    v16 = symptomsSignatureForEvent(v7);
    symptomsSignature = v10->_symptomsSignature;
    v10->_symptomsSignature = v16;

    v18 = v10;
  }

  return v10;
}

- (id)convertDictionaryToString:(id)a3
{
  v6 = 0;
  v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:a3 options:0 error:&v6];
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v3 encoding:4];

  return v4;
}

+ (id)reportFromSignpostEvent:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [STYUserScenario scenarioFromSignpostEvent:v5 error:a4];
  if (v6)
  {
    v7 = [[STYScenarioReport alloc] initWithSignpostEvent:v5 scenario:v6 error:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)reportFromSignpostInterval:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [STYUserScenario scenarioFromSignpostInterval:v5 error:a4];
  if (v6)
  {
    v7 = [[STYScenarioReport alloc] initWithSignpostInterval:v5 scenario:v6 error:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)initWithSignpostInterval:(os_log_t)log scenario:error:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = 0x3FF999999999999ALL;
  _os_log_debug_impl(&dword_2656CE000, log, OS_LOG_TYPE_DEBUG, "Device is not memory constrained reducing the threshold by a fraction of %f", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)initWithSignpostInterval:(void *)a1 scenario:(NSObject *)a2 error:.cold.2(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 scenarioID];
  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_2656CE000, a2, OS_LOG_TYPE_DEBUG, "[Signpost: %@] Signpost interval is whitelisted", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)initWithSignpostInterval:(void *)a1 scenario:(float *)a2 error:(NSObject *)a3 .cold.3(void *a1, float *a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = [a1 scenarioID];
  v6 = *a2;
  v8 = 138412546;
  v9 = v5;
  v10 = 2048;
  v11 = v6;
  _os_log_debug_impl(&dword_2656CE000, a3, OS_LOG_TYPE_DEBUG, "[Signpost: %@] The target latency is %.0f ms", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end
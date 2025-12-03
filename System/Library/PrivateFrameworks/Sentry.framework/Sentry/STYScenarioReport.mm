@interface STYScenarioReport
+ (id)reportFromSignpostEvent:(id)event error:(id *)error;
+ (id)reportFromSignpostInterval:(id)interval error:(id *)error;
- (STYScenarioReport)initWithScenario:(id)scenario;
- (STYScenarioReport)initWithSignpostEvent:(id)event scenario:(id)scenario error:(id *)error;
- (STYScenarioReport)initWithSignpostInterval:(id)interval scenario:(id)scenario error:(id *)error;
- (id)convertDictionaryToString:(id)string;
@end

@implementation STYScenarioReport

- (STYScenarioReport)initWithScenario:(id)scenario
{
  scenarioCopy = scenario;
  v10.receiver = self;
  v10.super_class = STYScenarioReport;
  v6 = [(STYScenarioReport *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scenario, scenario);
    v8 = v7;
  }

  return v7;
}

- (STYScenarioReport)initWithSignpostInterval:(id)interval scenario:(id)scenario error:(id *)error
{
  intervalCopy = interval;
  scenarioCopy = scenario;
  v42.receiver = self;
  v42.super_class = STYScenarioReport;
  v10 = [(STYScenarioReport *)&v42 init];
  if (v10)
  {
    v11 = machCtsTimeToMs([intervalCopy durationMachContinuousTime]);
    objc_storeStrong(v10 + 6, scenario);
    *(v10 + 2) = v11;
    *(v10 + 3) = [intervalCopy startMachContinuousTime];
    *(v10 + 4) = [intervalCopy endMachContinuousTime];
    mach_get_times();
    *(v10 + 24) = vaddq_s64(vdupq_n_s64(0), *(v10 + 24));
    v12 = +[STYUserScenarioCache sharedCache];
    [v12 latencyGoalsForSignpostInterval:intervalCopy];
    *(v10 + 3) = v13;
    v14 = (v10 + 12);

    v15 = +[STYUserScenarioCache sharedCache];
    v16 = [v15 issueCategoryForSignpostInterval:intervalCopy];
    v17 = *(v10 + 5);
    *(v10 + 5) = v16;

    if (!+[STYDeviceInfo isMemoryConstrained])
    {
      subsystem = [intervalCopy subsystem];
      if ([subsystem isEqualToString:@"com.apple.SpringBoard"])
      {
      }

      else
      {
        subsystem2 = [intervalCopy subsystem];
        v20 = [subsystem2 isEqualToString:@"com.apple.app_launch_measurement"];

        if ((v20 & 1) == 0)
        {
          v21 = +[STYFrameworkHelper sharedHelper];
          logHandle = [v21 logHandle];

          if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
          {
            [STYScenarioReport initWithSignpostInterval:logHandle scenario:? error:?];
          }

          v23 = *v14 / 1.6;
          *v14 = v23;
        }
      }
    }

    v24 = [STYFrameworkHelper sharedHelper:0];
    logHandle2 = [v24 logHandle];

    if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEBUG))
    {
      [STYScenarioReport initWithSignpostInterval:scenarioCopy scenario:logHandle2 error:?];
    }

    v26 = +[STYFrameworkHelper sharedHelper];
    logHandle3 = [v26 logHandle];

    if (os_log_type_enabled(logHandle3, OS_LOG_TYPE_DEBUG))
    {
      [STYScenarioReport initWithSignpostInterval:scenarioCopy scenario:v10 + 3 error:logHandle3];
    }

    if ([scenarioCopy kpi] == -1001)
    {
      v28 = intervalCopy;
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

    objc_storeStrong(v10 + 8, interval);
    v38 = symptomsSignatureForInterval(intervalCopy);
    v39 = *(v10 + 9);
    *(v10 + 9) = v38;

    v40 = v10;
  }

  return v10;
}

- (STYScenarioReport)initWithSignpostEvent:(id)event scenario:(id)scenario error:(id *)error
{
  eventCopy = event;
  scenarioCopy = scenario;
  v20.receiver = self;
  v20.super_class = STYScenarioReport;
  v9 = [(STYScenarioReport *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_scenario, scenario);
    v10->_scenarioStartTime = 0;
    v10->_scenarioEndTime = mach_absolute_time();
    __asm { FMOV            V0.2S, #-1.0 }

    *&v10->_observedFps = _D0;
    v16 = symptomsSignatureForEvent(eventCopy);
    symptomsSignature = v10->_symptomsSignature;
    v10->_symptomsSignature = v16;

    v18 = v10;
  }

  return v10;
}

- (id)convertDictionaryToString:(id)string
{
  v6 = 0;
  v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:string options:0 error:&v6];
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v3 encoding:4];

  return v4;
}

+ (id)reportFromSignpostEvent:(id)event error:(id *)error
{
  eventCopy = event;
  v6 = [STYUserScenario scenarioFromSignpostEvent:eventCopy error:error];
  if (v6)
  {
    v7 = [[STYScenarioReport alloc] initWithSignpostEvent:eventCopy scenario:v6 error:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)reportFromSignpostInterval:(id)interval error:(id *)error
{
  intervalCopy = interval;
  v6 = [STYUserScenario scenarioFromSignpostInterval:intervalCopy error:error];
  if (v6)
  {
    v7 = [[STYScenarioReport alloc] initWithSignpostInterval:intervalCopy scenario:v6 error:error];
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
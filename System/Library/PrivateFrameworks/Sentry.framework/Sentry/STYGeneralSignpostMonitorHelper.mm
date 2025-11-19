@interface STYGeneralSignpostMonitorHelper
- (STYGeneralSignpostMonitorHelper)init;
- (void)handleEmit:(id)a3;
- (void)handleInterval:(id)a3;
- (void)perfProblemDetected:(id)a3 tailspinFilenamePrefix:(id)a4;
- (void)perfProblemDetectedOnMac:(id)a3;
@end

@implementation STYGeneralSignpostMonitorHelper

- (STYGeneralSignpostMonitorHelper)init
{
  v10.receiver = self;
  v10.super_class = STYGeneralSignpostMonitorHelper;
  v2 = [(STYSignpostsMonitorHelper *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D55040]);
    allowList = v2->_allowList;
    v2->_allowList = v3;

    [(SignpostSupportSubsystemCategoryAllowlist *)v2->_allowList addSubsystem:@"com.apple.SpringBoard" category:@"TailspinSignposts"];
    [(SignpostSupportSubsystemCategoryAllowlist *)v2->_allowList addSubsystem:@"com.apple.camera.signposts" category:@"TelemetrySignposts"];
    [(SignpostSupportSubsystemCategoryAllowlist *)v2->_allowList addSubsystem:@"com.apple.SpringBoard" category:@"TelemetrySignposts"];
    [(SignpostSupportSubsystemCategoryAllowlist *)v2->_allowList addSubsystem:@"com.apple.UIKit" category:@"ShareSheet"];
    [(SignpostSupportSubsystemCategoryAllowlist *)v2->_allowList addSubsystem:@"com.apple.signpost_emitter" category:@"emitter_category"];
    [(SignpostSupportSubsystemCategoryAllowlist *)v2->_allowList addSubsystem:@"com.apple.mobileactivationd" category:@"analytics"];
    v5 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.Sentry.Framework"];
    if ([v5 BOOLForKey:@"shouldDisableEPLAppLaunchMonitoring"])
    {
      v6 = +[STYFrameworkHelper sharedHelper];
      v7 = [v6 logHandle];

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_2656CE000, v7, OS_LOG_TYPE_DEFAULT, "App launch monitoring and watchdog termination monitoring via EPL is disabled", v9, 2u);
      }
    }

    else
    {
      [(SignpostSupportSubsystemCategoryAllowlist *)v2->_allowList addSubsystem:@"com.apple.app_launch_measurement" category:@"ApplicationLaunch"];
      [(SignpostSupportSubsystemCategoryAllowlist *)v2->_allowList addSubsystem:@"com.apple.FrontBoard" category:@"Watchdog"];
    }
  }

  return v2;
}

- (void)perfProblemDetectedOnMac:(id)a3
{
  v28[3] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[STYFrameworkHelper sharedHelper];
  v5 = [v4 logHandle];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [STYGeneralSignpostMonitorHelper perfProblemDetectedOnMac:v3];
  }

  v6 = [v3 issueCategory];
  v7 = [v3 scenario];
  v8 = [v7 kpi];

  if (v8 == -1000)
  {
    v27[0] = @"observedLatency_in_ms";
    v9 = MEMORY[0x277CCABB0];
    [v3 observedLatencyInMs];
    v10 = [v9 numberWithFloat:?];
    v28[0] = v10;
    v27[1] = @"threshold_in_ms";
    v11 = MEMORY[0x277CCABB0];
    [v3 targetLatencyInMs];
    v12 = [v11 numberWithFloat:?];
    v28[1] = v12;
    v27[2] = @"scenarioID";
    v13 = [v3 scenario];
    v14 = [v13 scenarioID];
    v28[2] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:3];
  }

  else
  {
    v25[0] = @"observedFramerate_fps";
    v16 = MEMORY[0x277CCABB0];
    [v3 observedFps];
    v10 = [v16 numberWithFloat:?];
    v26[0] = v10;
    v25[1] = @"threshold_fps";
    v17 = MEMORY[0x277CCABB0];
    [v3 targetFps];
    v12 = [v17 numberWithFloat:?];
    v26[1] = v12;
    v25[2] = @"scenarioID";
    v13 = [v3 scenario];
    v14 = [v13 scenarioID];
    v26[2] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:3];
  }

  v24 = 0;
  v18 = DRTailspinRequest();
  v19 = v24;
  v20 = +[STYFrameworkHelper sharedHelper];
  v21 = [v20 logHandle];

  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);
  if (v18)
  {
    if (v22)
    {
      [STYGeneralSignpostMonitorHelper perfProblemDetectedOnMac:v3];
    }
  }

  else if (v22)
  {
    [STYGeneralSignpostMonitorHelper perfProblemDetectedOnMac:];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)perfProblemDetected:(id)a3 tailspinFilenamePrefix:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "hash")}];
  v8 = [MEMORY[0x277CBEAA8] date];
  v9 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v9 setDateFormat:@"yyyy-MM-dd-HHmmss"];
  v10 = v6;
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v5, "scenarioStartTime")}];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v5, "scenarioEndTime")}];
  v13 = +[STYFrameworkHelper sharedHelper];
  v14 = [v13 logHandle];

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [STYGeneralSignpostMonitorHelper perfProblemDetected:v5 tailspinFilenamePrefix:?];
  }

  v15 = +[STYFrameworkHelper sharedHelper];
  v16 = [v15 logHandle];

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v25 = [v5 scenario];
    v24 = [v25 scenarioID];
    *buf = 138413570;
    v32 = v24;
    v33 = 2112;
    v34 = v10;
    v35 = 2048;
    v36 = [v11 unsignedLongLongValue];
    v37 = 2048;
    v38 = [v12 unsignedLongLongValue];
    v39 = 1024;
    v40 = [v7 intValue];
    v41 = 2112;
    v42 = kSTYEplReportType;
    _os_log_debug_impl(&dword_2656CE000, v16, OS_LOG_TYPE_DEBUG, "[Signpost: %@] Request details area as follows:\n\t Filename prefix : %@\n\t interval begin timestamp : %llu\n\t interval end timestamp : %llu\n\t Request identifier %d\n\t Report Type : %@", buf, 0x3Au);
  }

  v29[0] = kSTYScenarioReportRefKey;
  v29[1] = kSTYTailspinFilenameKey;
  v30[0] = v7;
  v30[1] = v10;
  v29[2] = kSTYScenarioStartTimeKey;
  v29[3] = kSTYScenarioEndTimeKey;
  v30[2] = v11;
  v30[3] = v12;
  v29[4] = kSTYScenarioReportKey;
  v29[5] = kSTYReportTypeKey;
  v30[4] = v5;
  v30[5] = kSTYEplReportType;
  v29[6] = kSTYReasonKey;
  v30[6] = @"EPL Request";
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:7];
  [outstandingTailspinSaveRequests setObject:v5 forKey:v7];
  [perfIssueDetectionTimeLogs setObject:v8 forKey:v7];
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterPostNotification(LocalCenter, kSTYPerfProblemDetectedNotification, 0, v17, 1u);
  v19 = dispatch_time(0, 900000000000);
  v20 = htInteractionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__STYGeneralSignpostMonitorHelper_perfProblemDetected_tailspinFilenamePrefix___block_invoke;
  block[3] = &unk_279B9B4C0;
  v27 = v7;
  v28 = v5;
  v21 = v5;
  v22 = v7;
  dispatch_after(v19, v20, block);

  v23 = *MEMORY[0x277D85DE8];
}

void __78__STYGeneralSignpostMonitorHelper_perfProblemDetected_tailspinFilenamePrefix___block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = [outstandingTailspinSaveRequests objectForKey:*(a1 + 32)];

  if (v2)
  {
    v3 = +[STYFrameworkHelper sharedHelper];
    v4 = [v3 logHandle];

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __78__STYGeneralSignpostMonitorHelper_perfProblemDetected_tailspinFilenamePrefix___block_invoke_cold_1();
    }

    [outstandingTailspinSaveRequests removeObjectForKey:*v1];
  }
}

- (void)handleInterval:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 endEvent];
  v6 = eventEndToNow(v5);

  v7 = +[STYFrameworkHelper sharedHelper];
  v8 = [v7 logHandle];

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [STYGeneralSignpostMonitorHelper handleInterval:];
  }

  if (v6 <= 5000.0)
  {
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x3032000000;
    v32[3] = __Block_byref_object_copy__0;
    v32[4] = __Block_byref_object_dispose__0;
    v11 = v4;
    v33 = v11;
    v31 = 0;
    v12 = [STYScenarioReport reportFromSignpostInterval:v11 error:&v31];
    v13 = v31;
    v14 = v13;
    if (v12)
    {
      v15 = [v11 subsystem];
      v16 = [v15 isEqualToString:@"com.apple.app_launch_measurement"];

      if (v16)
      {
        if ([(STYGeneralSignpostMonitorHelper *)self avoidGeneratingTailspinsForAppLaunches])
        {
          v17 = +[STYFrameworkHelper sharedHelper];
          v18 = [v17 logHandle];

          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = [v12 scenario];
            v20 = [v19 scenarioID];
            *buf = 138412290;
            v35 = v20;
            _os_log_impl(&dword_2656CE000, v18, OS_LOG_TYPE_DEFAULT, "[Signpost: %@] Deferring app launch tailspin to special app launch monitoring ", buf, 0xCu);
          }

LABEL_27:

          goto LABEL_28;
        }

        if ([(STYGeneralSignpostMonitorHelper *)self seedUserMode]|| +[STYDeviceInfo isAppleInternal])
        {
          v22 = arc4random_uniform(0x64u);
          LODWORD(v23) = 2139095039;
          if (v22 < 20)
          {
            *&v23 = 0.0;
          }

          [v12 setTargetLatencyInMs:v23];
        }
      }

      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __50__STYGeneralSignpostMonitorHelper_handleInterval___block_invoke;
      v30[3] = &unk_279B9B7E8;
      v30[4] = self;
      v30[5] = v32;
      v24 = MEMORY[0x26675BCB0](v30);
      v25 = +[STYPerformanceChecker sharedPerfChecker];
      [v25 checkPerformanceOfScenarioReport:v12 completionHandler:v24];

LABEL_28:
      _Block_object_dispose(v32, 8);

      goto LABEL_29;
    }

    if (v13)
    {
      if ([v13 code] == -2007 || objc_msgSend(v14, "code") == -2002)
      {
        v21 = +[STYFrameworkHelper sharedHelper];
        v18 = [v21 logHandle];

        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [v14 description];
          objc_claimAutoreleasedReturnValue();
          [STYGeneralSignpostMonitorHelper handleInterval:];
        }
      }

      else if ([v14 code] == -2000)
      {
        v28 = +[STYFrameworkHelper sharedHelper];
        v18 = [v28 logHandle];

        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          +[STYUserScenarioCache sharedCache];
          [objc_claimAutoreleasedReturnValue() scenarioIdForSignpostInterval:v11];
          objc_claimAutoreleasedReturnValue();
          [STYGeneralSignpostMonitorHelper handleInterval:];
        }
      }

      else
      {
        v29 = +[STYFrameworkHelper sharedHelper];
        v18 = [v29 logHandle];

        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          [v14 description];
          objc_claimAutoreleasedReturnValue();
          [STYGeneralSignpostMonitorHelper handleInterval:];
        }
      }
    }

    else
    {
      v26 = +[STYFrameworkHelper sharedHelper];
      v18 = [v26 logHandle];

      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [STYGeneralSignpostMonitorHelper handleInterval:];
      }
    }

    goto LABEL_27;
  }

  v9 = +[STYFrameworkHelper sharedHelper];
  v10 = [v9 logHandle];

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [STYGeneralSignpostMonitorHelper handleInterval:];
  }

LABEL_29:
  v27 = *MEMORY[0x277D85DE8];
}

void __50__STYGeneralSignpostMonitorHelper_handleInterval___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v67 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (a2)
  {
    v10 = +[STYFrameworkHelper sharedHelper];
    v11 = [v10 logHandle];

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v9 scenario];
      v13 = [v12 scenarioID];
      [v9 observedLatencyInMs];
      v15 = v14;
      [v9 targetLatencyInMs];
      *buf = 138412802;
      v62 = v13;
      v63 = 2048;
      v64 = v15;
      v65 = 2048;
      v66 = v16;
      _os_log_impl(&dword_2656CE000, v11, OS_LOG_TYPE_DEFAULT, "[Signpost: %@] Observed latency of %.0f ms was below threshold of %.0f ms", buf, 0x20u);
    }

LABEL_7:

    goto LABEL_8;
  }

  if (v7)
  {
    v17 = +[STYFrameworkHelper sharedHelper];
    v11 = [v17 logHandle];

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v7 localizedDescription];
      *buf = 138412290;
      v62 = v18;
      _os_log_impl(&dword_2656CE000, v11, OS_LOG_TYPE_DEFAULT, "Perf check failed. Description: %@ ", buf, 0xCu);
    }

    goto LABEL_7;
  }

  v20 = [v8 scenario];
  v21 = [v20 kpi];

  v22 = +[STYFrameworkHelper sharedHelper];
  v23 = [v22 logHandle];

  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
  if (v21 == -1000)
  {
    if (!v24)
    {
      goto LABEL_15;
    }

    v25 = [v9 scenario];
    v26 = [v25 scenarioID];
    [v9 observedLatencyInMs];
    v28 = v27;
    [v9 targetLatencyInMs];
    *buf = 138412802;
    v62 = v26;
    v63 = 2048;
    v64 = v28;
    v65 = 2048;
    v66 = v29;
    v30 = "[Signpost: %@]  observed latency of %.0f ms was above threshold of %.0f ms";
    v31 = v23;
    v32 = 32;
  }

  else
  {
    if (!v24)
    {
      goto LABEL_15;
    }

    v25 = [v9 scenario];
    v26 = [v25 scenarioID];
    [v9 observedFps];
    *buf = 138412546;
    v62 = v26;
    v63 = 2048;
    v64 = v33;
    v30 = " %@'s observed framerate of %.0f was below threshold. Initiating diagnostic collection";
    v31 = v23;
    v32 = 22;
  }

  _os_log_impl(&dword_2656CE000, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);

LABEL_15:
  v34 = dateOfLastTailspinRequest;
  v35 = [MEMORY[0x277CBEAA8] date];
  v36 = v35;
  v37 = dateOfLastTailspinRequest;
  if (!v34)
  {
    dateOfLastTailspinRequest = v35;

    v45 = htInteractionQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__STYGeneralSignpostMonitorHelper_handleInterval___block_invoke_390;
    block[3] = &unk_279B9B7C0;
    v46 = *(a1 + 32);
    v60 = *(a1 + 40);
    block[4] = v46;
    v59 = v9;
    dispatch_async(v45, block);
    v44 = v59;
    goto LABEL_19;
  }

  [v35 timeIntervalSinceDate:dateOfLastTailspinRequest];
  v39 = v38;

  if (v39 > 60.0)
  {
    v40 = htInteractionQueue;
    v51 = MEMORY[0x277D85DD0];
    v52 = 3221225472;
    v53 = __50__STYGeneralSignpostMonitorHelper_handleInterval___block_invoke_2;
    v54 = &unk_279B9B7C0;
    v41 = *(a1 + 32);
    v57 = *(a1 + 40);
    v55 = v41;
    v56 = v9;
    dispatch_async(v40, &v51);
    v42 = [MEMORY[0x277CBEAA8] date];
    v43 = dateOfLastTailspinRequest;
    dateOfLastTailspinRequest = v42;

    v44 = v56;
LABEL_19:

    goto LABEL_8;
  }

  v47 = +[STYFrameworkHelper sharedHelper];
  v48 = [v47 logHandle];

  if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
  {
    __50__STYGeneralSignpostMonitorHelper_handleInterval___block_invoke_cold_1(a1);
  }

  v49 = *(*(a1 + 40) + 8);
  v50 = *(v49 + 40);
  *(v49 + 40) = 0;

LABEL_8:
  v19 = *MEMORY[0x277D85DE8];
}

void __50__STYGeneralSignpostMonitorHelper_handleInterval___block_invoke_390(uint64_t a1)
{
  v4 = TailspinFilenamePrefixForInterval(*(*(*(a1 + 48) + 8) + 40));
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  [*(a1 + 32) perfProblemDetected:*(a1 + 40) tailspinFilenamePrefix:v4];
}

void __50__STYGeneralSignpostMonitorHelper_handleInterval___block_invoke_2(uint64_t a1)
{
  v4 = TailspinFilenamePrefixForInterval(*(*(*(a1 + 48) + 8) + 40));
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  [*(a1 + 32) perfProblemDetected:*(a1 + 40) tailspinFilenamePrefix:v4];
}

- (void)handleEmit:(id)a3
{
  v19 = 0;
  v4 = [STYScenarioReport reportFromSignpostEvent:a3 error:&v19];
  v5 = v19;
  if (v4)
  {
    if (dateOfLastTailspinRequest && ([MEMORY[0x277CBEAA8] date], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "timeIntervalSinceDate:", dateOfLastTailspinRequest), v8 = v7, v6, v8 <= 60.0))
    {
      v17 = +[STYFrameworkHelper sharedHelper];
      v15 = [v17 logHandle];

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [STYGeneralSignpostMonitorHelper handleEmit:v4];
      }
    }

    else
    {
      v9 = [MEMORY[0x277CBEAA8] date];
      v10 = dateOfLastTailspinRequest;
      dateOfLastTailspinRequest = v9;

      v11 = [v4 scenario];
      v12 = [v11 appName];

      if (v12)
      {
        v13 = [v4 scenario];
        v14 = [v13 appName];
        v15 = [@"Sentry_LaunchWatchdog_" stringByAppendingString:v14];
      }

      else
      {
        v15 = @"Sentry_LaunchWatchdog_";
      }

      [(STYGeneralSignpostMonitorHelper *)self perfProblemDetected:v4 tailspinFilenamePrefix:v15];
    }
  }

  else
  {
    v16 = +[STYFrameworkHelper sharedHelper];
    v15 = [v16 logHandle];

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_2656CE000, v15, OS_LOG_TYPE_DEFAULT, "Signpost Event is not whitelisted", v18, 2u);
    }
  }
}

- (void)perfProblemDetectedOnMac:(void *)a1 .cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 scenario];
  v2 = [v1 scenarioID];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)perfProblemDetectedOnMac:.cold.2()
{
  OUTLINED_FUNCTION_11();
  v9 = *MEMORY[0x277D85DE8];
  v1 = [v0 scenario];
  v2 = [v1 scenarioID];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)perfProblemDetectedOnMac:(void *)a1 .cold.3(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 scenario];
  v2 = [v1 scenarioID];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)perfProblemDetected:(void *)a1 tailspinFilenamePrefix:.cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 scenario];
  v2 = [v1 scenarioID];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

void __78__STYGeneralSignpostMonitorHelper_perfProblemDetected_tailspinFilenamePrefix___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_11();
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(v1 + 40) scenario];
  v3 = [v2 scenarioID];
  [*v0 intValue];
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleInterval:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  +[STYUserScenarioCache sharedCache];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_13();
  v2 = [v1 scenarioIdForSignpostInterval:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleInterval:.cold.2()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_5(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_7(&dword_2656CE000, v3, v4, "%@", v5);
}

- (void)handleInterval:.cold.3()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5(v2, v3, 5.7779e-34);
  OUTLINED_FUNCTION_7(&dword_2656CE000, v4, v5, "[Signpost: %@] Signpost interval is not whitelisted", v6);
}

- (void)handleInterval:.cold.4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_5(v1, v2, 5.7779e-34);
  _os_log_error_impl(&dword_2656CE000, v3, OS_LOG_TYPE_ERROR, "%@", v4, 0xCu);
}

- (void)handleInterval:.cold.6()
{
  v9 = *MEMORY[0x277D85DE8];
  +[STYUserScenarioCache sharedCache];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_13();
  v2 = [v1 scenarioIdForSignpostInterval:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

void __50__STYGeneralSignpostMonitorHelper_handleInterval___block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = +[STYUserScenarioCache sharedCache];
  v3 = [v2 scenarioIdForSignpostInterval:*(*(*(a1 + 40) + 8) + 40)];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleEmit:(void *)a1 .cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 scenario];
  v2 = [v1 scenarioID];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

@end
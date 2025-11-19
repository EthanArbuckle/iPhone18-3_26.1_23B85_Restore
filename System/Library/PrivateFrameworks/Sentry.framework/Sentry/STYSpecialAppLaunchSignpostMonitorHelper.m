@interface STYSpecialAppLaunchSignpostMonitorHelper
- (STYSpecialAppLaunchSignpostMonitorHelper)init;
- (void)handleInterval:(id)a3;
- (void)processAppLaunch:(id)a3 tailspinFilenamePrefix:(id)a4 duration:(id)a5 andPID:(id)a6 reason:(id)a7;
@end

@implementation STYSpecialAppLaunchSignpostMonitorHelper

- (STYSpecialAppLaunchSignpostMonitorHelper)init
{
  v8.receiver = self;
  v8.super_class = STYSpecialAppLaunchSignpostMonitorHelper;
  v2 = [(STYSignpostsMonitorHelper *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D55040]);
    allowList = v2->_allowList;
    v2->_allowList = v3;

    v5 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.Sentry.Framework"];
    defaults = v2->_defaults;
    v2->_defaults = v5;

    [(SignpostSupportSubsystemCategoryAllowlist *)v2->_allowList addSubsystem:@"com.apple.app_launch_measurement" category:@"ApplicationLaunch"];
  }

  return v2;
}

- (void)handleInterval:(id)a3
{
  v72 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (+[STYDeviceInfo isAppleInternal])
  {
    v6 = @"ApplicationLaunchExtendedResponsive";
  }

  else
  {
    v6 = @"ApplicationFirstFramePresentation";
  }

  v7 = [v5 number1Name];
  v8 = [v7 isEqualToString:@"IsForeground"];
  if (v8)
  {
    v3 = [v5 number1Value];
    if (([v3 isEqual:MEMORY[0x277CBEC38]] & 1) == 0)
    {

      goto LABEL_58;
    }
  }

  v9 = [v5 name];
  v10 = [v9 isEqualToString:v6];

  if (v8)
  {

    if ((v10 & 1) == 0)
    {
      goto LABEL_58;
    }
  }

  else
  {

    if (!v10)
    {
      goto LABEL_58;
    }
  }

  v11 = [v5 endEvent];
  v12 = eventEndToNow(v11);

  v13 = +[STYFrameworkHelper sharedHelper];
  v14 = [v13 logHandle];

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [STYSpecialAppLaunchSignpostMonitorHelper handleInterval:];
  }

  if (v12 <= 5000.0)
  {
    v65 = 0;
    v66 = &v65;
    v67 = 0x3032000000;
    v68 = __Block_byref_object_copy__0;
    v69 = __Block_byref_object_dispose__0;
    v17 = v5;
    v70 = v17;
    v64 = 0;
    v18 = [STYScenarioReport reportFromSignpostInterval:v17 error:&v64];
    v19 = v64;
    v20 = v19;
    if (!v18)
    {
      if (v19)
      {
        if ([v19 code] == -2007 || objc_msgSend(v20, "code") == -2002)
        {
          v31 = +[STYFrameworkHelper sharedHelper];
          v22 = [v31 logHandle];

          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [v20 description];
            objc_claimAutoreleasedReturnValue();
            [STYGeneralSignpostMonitorHelper handleInterval:];
          }
        }

        else if ([v20 code] == -2000)
        {
          v55 = +[STYFrameworkHelper sharedHelper];
          v22 = [v55 logHandle];

          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            +[STYUserScenarioCache sharedCache];
            [objc_claimAutoreleasedReturnValue() scenarioIdForSignpostInterval:v17];
            objc_claimAutoreleasedReturnValue();
            [STYGeneralSignpostMonitorHelper handleInterval:];
          }
        }

        else
        {
          v56 = +[STYFrameworkHelper sharedHelper];
          v22 = [v56 logHandle];

          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            [v20 description];
            objc_claimAutoreleasedReturnValue();
            [STYGeneralSignpostMonitorHelper handleInterval:];
          }
        }
      }

      else
      {
        v53 = +[STYFrameworkHelper sharedHelper];
        v22 = [v53 logHandle];

        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [STYGeneralSignpostMonitorHelper handleInterval:];
        }
      }

      goto LABEL_57;
    }

    v21 = MEMORY[0x277CCABB0];
    [v17 durationMs];
    v22 = [v21 numberWithDouble:?];
    v23 = MEMORY[0x277CCABB0];
    v24 = [v17 endEvent];
    v57 = [v23 numberWithUnsignedInt:{objc_msgSend(v24, "processID")}];

    v25 = +[STYFrameworkHelper sharedHelper];
    v26 = [v25 logHandle];

    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      [(STYSpecialAppLaunchSignpostMonitorHelper *)[(NSUserDefaults *)self->_defaults BOOLForKey:kSTYDefaultsEnforceAppLaunchThreshold handleInterval:buf, v26];
    }

    if (+[STYDeviceInfo isAppleInternal]&& ![(NSUserDefaults *)self->_defaults BOOLForKey:kSTYDefaultsEnforceAppLaunchThreshold])
    {
      v30 = 0;
    }

    else
    {
      v27 = +[STYFrameworkHelper sharedHelper];
      v28 = [v27 logHandle];

      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        [STYSpecialAppLaunchSignpostMonitorHelper handleInterval:];
      }

      [v17 durationMs];
      v30 = v29 > 1000.0;
    }

    v32 = arc4random_uniform(0x7FFFFFFFu);
    if (+[STYDeviceInfo isAppleInternal])
    {
      v33 = +[STYFrameworkHelper sharedHelper];
      v34 = [v33 logHandle];

      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        [STYSpecialAppLaunchSignpostMonitorHelper handleInterval:];
      }

      [v17 durationMs];
      if (v32 * 100.0 / 2147483650.0 < 20.0)
      {
        v36 = +[STYFrameworkHelper sharedHelper];
        v37 = [v36 logHandle];

        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          [STYSpecialAppLaunchSignpostMonitorHelper handleInterval:];
        }

        v38 = 1;
LABEL_46:

        if (dateOfLastTailspinRequest)
        {
          v41 = [MEMORY[0x277CBEAA8] date];
          [v41 timeIntervalSinceDate:dateOfLastTailspinRequest];
          if (v42 >= 60.0)
          {
          }

          else
          {
            v43 = [(STYSpecialAppLaunchSignpostMonitorHelper *)self forceAppLaunchDiagnostics];

            if (!v43)
            {
              v44 = +[STYFrameworkHelper sharedHelper];
              v45 = [v44 logHandle];

              if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
              {
                +[STYUserScenarioCache sharedCache];
                [objc_claimAutoreleasedReturnValue() scenarioIdForSignpostInterval:v66[5]];
                objc_claimAutoreleasedReturnValue();
                [STYSpecialAppLaunchSignpostMonitorHelper handleInterval:];
              }

              v46 = v66[5];
              v66[5] = 0;
LABEL_56:

LABEL_57:
              _Block_object_dispose(&v65, 8);

              goto LABEL_58;
            }
          }
        }

        v47 = &kSTYAppLaunchReasonRandom;
        if (!v38)
        {
          v47 = &kSTYAppLaunchReasonSlow;
        }

        v48 = *v47;
        v49 = mkHangtracerInteractionQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __59__STYSpecialAppLaunchSignpostMonitorHelper_handleInterval___block_invoke;
        block[3] = &unk_279B9B810;
        v63 = &v65;
        block[4] = self;
        v59 = v18;
        v60 = v22;
        v61 = v57;
        v46 = v48;
        v62 = v46;
        dispatch_async(v49, block);
        v50 = [MEMORY[0x277CBEAA8] date];
        v51 = dateOfLastTailspinRequest;
        dateOfLastTailspinRequest = v50;

        goto LABEL_56;
      }

      if (v35 <= 1000.0)
      {
        goto LABEL_42;
      }
    }

    else if (!v30)
    {
LABEL_42:
      if (![(STYSpecialAppLaunchSignpostMonitorHelper *)self forceAppLaunchDiagnostics])
      {
        v54 = +[STYFrameworkHelper sharedHelper];
        v46 = [v54 logHandle];

        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
        {
          [STYSpecialAppLaunchSignpostMonitorHelper handleInterval:];
        }

        goto LABEL_56;
      }

      v40 = +[STYFrameworkHelper sharedHelper];
      v37 = [v40 logHandle];

      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        [STYSpecialAppLaunchSignpostMonitorHelper handleInterval:];
      }

      goto LABEL_45;
    }

    v39 = +[STYFrameworkHelper sharedHelper];
    v37 = [v39 logHandle];

    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      [STYSpecialAppLaunchSignpostMonitorHelper handleInterval:];
    }

LABEL_45:
    v38 = 0;
    goto LABEL_46;
  }

  v15 = +[STYFrameworkHelper sharedHelper];
  v16 = [v15 logHandle];

  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [STYSpecialAppLaunchSignpostMonitorHelper handleInterval:];
  }

LABEL_58:
  v52 = *MEMORY[0x277D85DE8];
}

void __59__STYSpecialAppLaunchSignpostMonitorHelper_handleInterval___block_invoke(uint64_t a1)
{
  v4 = TailspinFilenamePrefixForInterval(*(*(*(a1 + 72) + 8) + 40));
  v2 = *(*(a1 + 72) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  [*(a1 + 32) processAppLaunch:*(a1 + 40) tailspinFilenamePrefix:v4 duration:*(a1 + 48) andPID:*(a1 + 56) reason:*(a1 + 64)];
}

- (void)processAppLaunch:(id)a3 tailspinFilenamePrefix:(id)a4 duration:(id)a5 andPID:(id)a6 reason:(id)a7
{
  v39[10] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v34 = a5;
  v33 = a6;
  v32 = a7;
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v11, "hash")}];
  v14 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v14 setDateFormat:@"yyyy-MM-dd-HHmmss"];
  v15 = v12;
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v11, "scenarioStartTime")}];
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v11, "scenarioEndTime")}];
  v18 = [MEMORY[0x277CCABB0] numberWithDouble:1000.0];
  v19 = +[STYFrameworkHelper sharedHelper];
  v20 = [v19 logHandle];

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [STYGeneralSignpostMonitorHelper perfProblemDetected:v11 tailspinFilenamePrefix:?];
  }

  v38[0] = kSTYScenarioReportRefKey;
  v38[1] = kSTYTailspinFilenameKey;
  v39[0] = v13;
  v39[1] = v15;
  v38[2] = kSTYScenarioStartTimeKey;
  v38[3] = kSTYScenarioEndTimeKey;
  v39[2] = v16;
  v39[3] = v17;
  v38[4] = kSTYScenarioReportKey;
  v38[5] = kSTYReportTypeKey;
  v39[4] = v11;
  v39[5] = kSTYAppLaunchReportType;
  v38[6] = kSTYDurationKey;
  v38[7] = kSTYThresholdKey;
  v39[6] = v34;
  v39[7] = v18;
  v38[8] = kSTYPIDKey;
  v38[9] = kSTYReasonKey;
  v39[8] = v33;
  v39[9] = v32;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:10];
  v22 = +[STYFrameworkHelper sharedHelper];
  v23 = [v22 logHandle];

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    [STYSpecialAppLaunchSignpostMonitorHelper processAppLaunch:v21 tailspinFilenamePrefix:? duration:? andPID:? reason:?];
  }

  [outstandingTailspinSaveRequests setObject:v11 forKey:v13];
  v24 = perfIssueDetectionTimeLogs;
  v25 = [MEMORY[0x277CBEAA8] date];
  [v24 setObject:v25 forKey:v13];

  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterPostNotification(LocalCenter, kSTYPerfProblemDetectedNotification, 0, v21, 1u);
  v27 = dispatch_time(0, 900000000000);
  v28 = htInteractionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __107__STYSpecialAppLaunchSignpostMonitorHelper_processAppLaunch_tailspinFilenamePrefix_duration_andPID_reason___block_invoke;
  block[3] = &unk_279B9B4C0;
  v36 = v13;
  v37 = v11;
  v29 = v11;
  v30 = v13;
  dispatch_after(v27, v28, block);

  v31 = *MEMORY[0x277D85DE8];
}

void __107__STYSpecialAppLaunchSignpostMonitorHelper_processAppLaunch_tailspinFilenamePrefix_duration_andPID_reason___block_invoke(uint64_t a1)
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

- (void)handleInterval:(os_log_t)log .cold.2(char a1, uint8_t *buf, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a1 & 1;
  _os_log_debug_impl(&dword_2656CE000, log, OS_LOG_TYPE_DEBUG, "The value of enforceAppLaunchThreshold default is %d", buf, 8u);
}

- (void)handleInterval:.cold.3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleInterval:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleInterval:.cold.5()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleInterval:.cold.6()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleInterval:.cold.7()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleInterval:.cold.8()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleInterval:.cold.9()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5(v2, v3, 5.778e-34);
  *(v4 + 12) = 1024;
  *(v4 + 14) = 60;
  _os_log_error_impl(&dword_2656CE000, v5, OS_LOG_TYPE_ERROR, "[Signpost: %@] Last request for a tailspin was less than %i seconds ago. Not requesting tailspin", v6, 0x12u);
}

- (void)handleInterval:.cold.14()
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

- (void)processAppLaunch:(void *)a1 tailspinFilenamePrefix:duration:andPID:reason:.cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

@end
@interface STYSpecialAppLaunchSignpostMonitorHelper
- (STYSpecialAppLaunchSignpostMonitorHelper)init;
- (void)handleInterval:(id)interval;
- (void)processAppLaunch:(id)launch tailspinFilenamePrefix:(id)prefix duration:(id)duration andPID:(id)d reason:(id)reason;
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

- (void)handleInterval:(id)interval
{
  v72 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  if (+[STYDeviceInfo isAppleInternal])
  {
    v6 = @"ApplicationLaunchExtendedResponsive";
  }

  else
  {
    v6 = @"ApplicationFirstFramePresentation";
  }

  number1Name = [intervalCopy number1Name];
  v8 = [number1Name isEqualToString:@"IsForeground"];
  if (v8)
  {
    number1Value = [intervalCopy number1Value];
    if (([number1Value isEqual:MEMORY[0x277CBEC38]] & 1) == 0)
    {

      goto LABEL_58;
    }
  }

  name = [intervalCopy name];
  v10 = [name isEqualToString:v6];

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

  endEvent = [intervalCopy endEvent];
  v12 = eventEndToNow(endEvent);

  v13 = +[STYFrameworkHelper sharedHelper];
  logHandle = [v13 logHandle];

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
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
    v17 = intervalCopy;
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
          logHandle2 = [v31 logHandle];

          if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_ERROR))
          {
            [v20 description];
            objc_claimAutoreleasedReturnValue();
            [STYGeneralSignpostMonitorHelper handleInterval:];
          }
        }

        else if ([v20 code] == -2000)
        {
          v55 = +[STYFrameworkHelper sharedHelper];
          logHandle2 = [v55 logHandle];

          if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEBUG))
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
          logHandle2 = [v56 logHandle];

          if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEBUG))
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
        logHandle2 = [v53 logHandle];

        if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_ERROR))
        {
          [STYGeneralSignpostMonitorHelper handleInterval:];
        }
      }

      goto LABEL_57;
    }

    v21 = MEMORY[0x277CCABB0];
    [v17 durationMs];
    logHandle2 = [v21 numberWithDouble:?];
    v23 = MEMORY[0x277CCABB0];
    endEvent2 = [v17 endEvent];
    v57 = [v23 numberWithUnsignedInt:{objc_msgSend(endEvent2, "processID")}];

    v25 = +[STYFrameworkHelper sharedHelper];
    logHandle3 = [v25 logHandle];

    if (os_log_type_enabled(logHandle3, OS_LOG_TYPE_DEBUG))
    {
      [(STYSpecialAppLaunchSignpostMonitorHelper *)[(NSUserDefaults *)self->_defaults BOOLForKey:kSTYDefaultsEnforceAppLaunchThreshold handleInterval:buf, logHandle3];
    }

    if (+[STYDeviceInfo isAppleInternal]&& ![(NSUserDefaults *)self->_defaults BOOLForKey:kSTYDefaultsEnforceAppLaunchThreshold])
    {
      v30 = 0;
    }

    else
    {
      v27 = +[STYFrameworkHelper sharedHelper];
      logHandle4 = [v27 logHandle];

      if (os_log_type_enabled(logHandle4, OS_LOG_TYPE_DEBUG))
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
      logHandle5 = [v33 logHandle];

      if (os_log_type_enabled(logHandle5, OS_LOG_TYPE_DEBUG))
      {
        [STYSpecialAppLaunchSignpostMonitorHelper handleInterval:];
      }

      [v17 durationMs];
      if (v32 * 100.0 / 2147483650.0 < 20.0)
      {
        v36 = +[STYFrameworkHelper sharedHelper];
        logHandle6 = [v36 logHandle];

        if (os_log_type_enabled(logHandle6, OS_LOG_TYPE_DEBUG))
        {
          [STYSpecialAppLaunchSignpostMonitorHelper handleInterval:];
        }

        v38 = 1;
LABEL_46:

        if (dateOfLastTailspinRequest)
        {
          date = [MEMORY[0x277CBEAA8] date];
          [date timeIntervalSinceDate:dateOfLastTailspinRequest];
          if (v42 >= 60.0)
          {
          }

          else
          {
            forceAppLaunchDiagnostics = [(STYSpecialAppLaunchSignpostMonitorHelper *)self forceAppLaunchDiagnostics];

            if (!forceAppLaunchDiagnostics)
            {
              v44 = +[STYFrameworkHelper sharedHelper];
              logHandle7 = [v44 logHandle];

              if (os_log_type_enabled(logHandle7, OS_LOG_TYPE_ERROR))
              {
                +[STYUserScenarioCache sharedCache];
                [objc_claimAutoreleasedReturnValue() scenarioIdForSignpostInterval:v66[5]];
                objc_claimAutoreleasedReturnValue();
                [STYSpecialAppLaunchSignpostMonitorHelper handleInterval:];
              }

              logHandle8 = v66[5];
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
        v60 = logHandle2;
        v61 = v57;
        logHandle8 = v48;
        v62 = logHandle8;
        dispatch_async(v49, block);
        date2 = [MEMORY[0x277CBEAA8] date];
        v51 = dateOfLastTailspinRequest;
        dateOfLastTailspinRequest = date2;

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
        logHandle8 = [v54 logHandle];

        if (os_log_type_enabled(logHandle8, OS_LOG_TYPE_DEBUG))
        {
          [STYSpecialAppLaunchSignpostMonitorHelper handleInterval:];
        }

        goto LABEL_56;
      }

      v40 = +[STYFrameworkHelper sharedHelper];
      logHandle6 = [v40 logHandle];

      if (os_log_type_enabled(logHandle6, OS_LOG_TYPE_DEBUG))
      {
        [STYSpecialAppLaunchSignpostMonitorHelper handleInterval:];
      }

      goto LABEL_45;
    }

    v39 = +[STYFrameworkHelper sharedHelper];
    logHandle6 = [v39 logHandle];

    if (os_log_type_enabled(logHandle6, OS_LOG_TYPE_DEBUG))
    {
      [STYSpecialAppLaunchSignpostMonitorHelper handleInterval:];
    }

LABEL_45:
    v38 = 0;
    goto LABEL_46;
  }

  v15 = +[STYFrameworkHelper sharedHelper];
  logHandle9 = [v15 logHandle];

  if (os_log_type_enabled(logHandle9, OS_LOG_TYPE_ERROR))
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

- (void)processAppLaunch:(id)launch tailspinFilenamePrefix:(id)prefix duration:(id)duration andPID:(id)d reason:(id)reason
{
  v39[10] = *MEMORY[0x277D85DE8];
  launchCopy = launch;
  prefixCopy = prefix;
  durationCopy = duration;
  dCopy = d;
  reasonCopy = reason;
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(launchCopy, "hash")}];
  v14 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v14 setDateFormat:@"yyyy-MM-dd-HHmmss"];
  v15 = prefixCopy;
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(launchCopy, "scenarioStartTime")}];
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(launchCopy, "scenarioEndTime")}];
  v18 = [MEMORY[0x277CCABB0] numberWithDouble:1000.0];
  v19 = +[STYFrameworkHelper sharedHelper];
  logHandle = [v19 logHandle];

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    [STYGeneralSignpostMonitorHelper perfProblemDetected:launchCopy tailspinFilenamePrefix:?];
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
  v39[4] = launchCopy;
  v39[5] = kSTYAppLaunchReportType;
  v38[6] = kSTYDurationKey;
  v38[7] = kSTYThresholdKey;
  v39[6] = durationCopy;
  v39[7] = v18;
  v38[8] = kSTYPIDKey;
  v38[9] = kSTYReasonKey;
  v39[8] = dCopy;
  v39[9] = reasonCopy;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:10];
  v22 = +[STYFrameworkHelper sharedHelper];
  logHandle2 = [v22 logHandle];

  if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEBUG))
  {
    [STYSpecialAppLaunchSignpostMonitorHelper processAppLaunch:v21 tailspinFilenamePrefix:? duration:? andPID:? reason:?];
  }

  [outstandingTailspinSaveRequests setObject:launchCopy forKey:v13];
  v24 = perfIssueDetectionTimeLogs;
  date = [MEMORY[0x277CBEAA8] date];
  [v24 setObject:date forKey:v13];

  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterPostNotification(LocalCenter, kSTYPerfProblemDetectedNotification, 0, v21, 1u);
  v27 = dispatch_time(0, 900000000000);
  v28 = htInteractionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __107__STYSpecialAppLaunchSignpostMonitorHelper_processAppLaunch_tailspinFilenamePrefix_duration_andPID_reason___block_invoke;
  block[3] = &unk_279B9B4C0;
  v36 = v13;
  v37 = launchCopy;
  v29 = launchCopy;
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
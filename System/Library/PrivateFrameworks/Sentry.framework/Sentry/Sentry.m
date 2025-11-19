id STYFrameworkDefaults()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3032000000;
  v6 = __Block_byref_object_copy_;
  v7 = __Block_byref_object_dispose_;
  v8 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __STYFrameworkDefaults_block_invoke;
  block[3] = &unk_279B9B3E8;
  block[4] = &v3;
  if (STYFrameworkDefaults_onceToken != -1)
  {
    dispatch_once(&STYFrameworkDefaults_onceToken, block);
  }

  v0 = v4[5];
  _Block_object_dispose(&v3, 8);

  return v0;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __STYFrameworkDefaults_block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.Sentry.Framework"];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

id getReporter()
{
  if (getReporter_onceToken != -1)
  {
    getReporter_cold_1();
  }

  v1 = sharedSymptomsReporter;

  return v1;
}

void __getReporter_block_invoke()
{
  v9[3] = *MEMORY[0x277D85DE8];
  v0 = objc_alloc_init(MEMORY[0x277D6AFC8]);
  v1 = sharedSymptomsReporter;
  sharedSymptomsReporter = v0;

  v8[0] = *MEMORY[0x277D6B000];
  v2 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v9[0] = v2;
  v8[1] = *MEMORY[0x277D6AFF8];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v9[1] = v3;
  v8[2] = *MEMORY[0x277D6AFF0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v9[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  v6 = symptomsActions;
  symptomsActions = v5;

  v7 = *MEMORY[0x277D85DE8];
}

id descriptionForSymptomsErrorCode(uint64_t a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error Description for error : %d not available ", a1];
  if (*MEMORY[0x277D6B0A8] == v1)
  {
    v3 = @"kSymptomDiagnosticErrorServiceNotReady: The service is not yet ready.";
  }

  else if (*MEMORY[0x277D6B078] == v1)
  {
    v3 = @"kSymptomDiagnosticErrorNotSupported: The requested API is not yet implemented.";
  }

  else if (*MEMORY[0x277D6B0B0] == v1)
  {
    v3 = @"kSymptomDiagnosticErrorServiceUnavailable: The remote service did not respond.";
  }

  else if (*MEMORY[0x277D6B0A0] == v1)
  {
    v3 = @"kSymptomDiagnosticErrorServiceInterrupted: The connection with the remote service was interrupted.";
  }

  else if (*MEMORY[0x277D6B068] == v1)
  {
    v3 = @"kSymptomDiagnosticErrorInvalidParameters: The API was called with invalid or unsupported parameters.";
  }

  else if (*MEMORY[0x277D6B058] == v1)
  {
    v3 = @"kSymptomDiagnosticErrorHourlyLimitExceeded: The session was rate limited based on the hourly quota.";
  }

  else if (*MEMORY[0x277D6B038] == v1)
  {
    v3 = @"kSymptomDiagnosticErrorDailyLimitExceeded: The session was rate limited based on the daily quota.";
  }

  else if (*MEMORY[0x277D6B088] == v1)
  {
    v3 = @"kSymptomDiagnosticErrorRandomizedSuppression: The session was rate limited based on randomized suppression.";
  }

  else if (*MEMORY[0x277D6B0C0] == v1)
  {
    v3 = @"kSymptomDiagnosticErrorSessionNotFound: The session requested was not found.";
  }

  else
  {
    if (*MEMORY[0x277D6B098] != v1)
    {
      goto LABEL_22;
    }

    v3 = @"kSymptomDiagnosticErrorRequestThrottled : The API request is temporarily throttled due to execssive calls (41)";
  }

  v2 = v3;
LABEL_22:

  return v2;
}

id symptomsSignatureForEvent(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CBEB38] dictionary];
  [v2 setObject:@"UIPerformance" forKeyedSubscript:*MEMORY[0x277D6B1C8]];
  [v2 setObject:@"Responsiveness" forKeyedSubscript:*MEMORY[0x277D6B208]];
  v3 = MEMORY[0x277CCACA8];
  v4 = [v1 subsystem];
  v5 = [v1 category];
  v6 = [v1 name];
  v7 = [v3 stringWithFormat:@"%@.%@.%@", v4, v5, v6];
  [v2 setObject:v7 forKeyedSubscript:*MEMORY[0x277D6B1E8]];

  v8 = *MEMORY[0x277D6B1C0];
  [v2 setObject:@"Process Name Unavailable" forKeyedSubscript:*MEMORY[0x277D6B1C0]];
  v9 = [v1 processName];

  if (v9)
  {
    v10 = [v1 processName];
    [v2 setObject:v10 forKeyedSubscript:v8];
  }

  v11 = [v1 processImagePath];

  if (v11)
  {
    v12 = [v1 processImagePath];
    [v2 setObject:v12 forKeyedSubscript:@"processImagePath"];

    v13 = [v1 processName];

    if (!v13)
    {
      v14 = [v1 processImagePath];
      v15 = [v14 lastPathComponent];
      [v2 setObject:v15 forKeyedSubscript:v8];
    }
  }

  v16 = [v1 subsystem];
  v17 = [v16 isEqualToString:@"com.apple.FrontBoard"];

  if (v17)
  {
    v18 = [v1 category];
    v19 = [v18 isEqualToString:@"Watchdog"];

    if (v19)
    {
      v20 = [v1 category];
      v21 = [v20 isEqualToString:@"Watchdogkill"];

      if (v21)
      {
        v22 = [v1 attributes];
        v23 = [v22 valueForKey:@"BundleIdOverride"];

        if (v23)
        {
          [v2 setObject:v23 forKeyedSubscript:v8];
        }

        v24 = [v1 attributes];
        v25 = [v24 valueForKey:@"ExecutableURLKey"];

        if (v25)
        {
          v26 = [v25 copy];
          if ([v25 hasPrefix:@"file://"])
          {
            v27 = [v25 substringFromIndex:{objc_msgSend(@"file://", "length")}];

            [v2 setObject:v27 forKeyedSubscript:@"processImagePath"];
            v26 = v27;
          }
        }
      }
    }
  }

  return v2;
}

id symptomsSignatureForInterval(void *a1)
{
  v1 = a1;
  v2 = [v1 endEvent];
  v3 = symptomsSignatureForEvent(v2);

  objc_opt_class();
  LOBYTE(v2) = objc_opt_isKindOfClass();

  if (v2)
  {
    [v3 setObject:@"Responsiveness - Low FrameRates" forKeyedSubscript:*MEMORY[0x277D6B208]];
  }

  return v3;
}

void _reportToAbc(void *a1, void *a2)
{
  v12 = a1;
  v3 = a2;
  v4 = getReporter();
  v5 = [v12 objectForKeyedSubscript:@"processImagePath"];

  if (v5)
  {
    v6 = [v12 objectForKeyedSubscript:@"processImagePath"];
    v7 = appDisplayName(v6);

    if (v7)
    {
      [v12 setObject:v7 forKeyedSubscript:*MEMORY[0x277D6B1C0]];
    }

    else
    {
      v8 = [v12 objectForKeyedSubscript:@"processImagePath"];
      v9 = bundleIdFromProcessImagePath(v8);

      if (v9)
      {
        [v12 setObject:v9 forKeyedSubscript:*MEMORY[0x277D6B1C0]];
      }

      else
      {
        v10 = [v12 objectForKeyedSubscript:@"processImagePath"];
        v11 = [v10 lastPathComponent];
        [v12 setObject:v11 forKeyedSubscript:*MEMORY[0x277D6B1C0]];
      }
    }

    [v12 removeObjectForKey:@"processImagePath"];
  }

  [v4 snapshotWithSignature:v12 duration:0 events:v3 payload:symptomsActions actions:&__block_literal_global_102 reply:0.0];
}

void ___reportToAbc_block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 objectForKey:*MEMORY[0x277D6B198]];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    v5 = +[STYFrameworkHelper sharedHelper];
    v6 = [v5 logHandle];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      ___reportToAbc_block_invoke_cold_1(v6);
    }
  }

  else
  {
    v7 = [v2 objectForKey:*MEMORY[0x277D6B168]];
    v8 = [v7 intValue];

    v9 = +[STYFrameworkHelper sharedHelper];
    v6 = [v9 logHandle];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = descriptionForSymptomsErrorCode(v8);
      v12[0] = 67109378;
      v12[1] = v8;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&dword_2656CE000, v6, OS_LOG_TYPE_DEFAULT, "ABC did not accept case for signpost event. \n                                                    Error Code : %d \n                                                    Error Description : %@", v12, 0x12u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void reportToAbc(void *a1, char a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = +[STYFrameworkHelper sharedHelper];
  v8 = [v7 sharedSerialQueueAtUtility];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __reportToAbc_block_invoke;
  block[3] = &unk_279B9B498;
  v14 = a2;
  v12 = v6;
  v13 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, block);
}

void __reportToAbc_block_invoke(uint64_t a1)
{
  v13[2] = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) == 1)
  {
    v12[0] = *MEMORY[0x277D82CE0];
    v2 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v12[1] = *MEMORY[0x277D82CE8];
    v13[0] = v2;
    v13[1] = *(a1 + 32);
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

    v4 = *MEMORY[0x277D6B130];
    v9 = v3;
    v10 = v4;
    v8 = @"com.apple.DiagnosticExtensions.tailspin";
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v11 = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  }

  else
  {
    v6 = 0;
  }

  _reportToAbc(*(a1 + 40), v6);

  v7 = *MEMORY[0x277D85DE8];
}

float machCtsTimeToMs(unint64_t a1)
{
  if (machCtsTimeToMs_predicate != -1)
  {
    machCtsTimeToMs_cold_1();
  }

  return *&machCtsTimeToMs_timestamp_scale * a1 * 1000.0;
}

double __machCtsTimeToMs_block_invoke()
{
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v1) = info.denom;
  LODWORD(v0) = info.numer;
  result = v0 * 0.000000001 / v1;
  machCtsTimeToMs_timestamp_scale = *&result;
  return result;
}

float eventEndToNow(void *a1)
{
  v1 = a1;
  v2 = mach_continuous_time();
  v3 = [v1 timeRecordedMachContinuousTime];

  if (v2 <= v3)
  {
    return -1.0;
  }

  return machCtsTimeToMs(v2 - v3);
}

id dictionaryToString(uint64_t a1)
{
  v4 = 0;
  v1 = [MEMORY[0x277CCAAA0] dataWithJSONObject:a1 options:0 error:&v4];
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v1 encoding:4];

  return v2;
}

id valueForInfoPlistKeyInImagePath(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [MEMORY[0x277CCAC80] scannerWithString:a2];
  v14 = 0;
  [v4 scanUpToString:@".app/" intoString:&v14];
  v5 = v14;
  if (v5)
  {
    v6 = v5;
    v7 = [v5 stringByAppendingString:@".app"];

    v8 = [MEMORY[0x277CCA8D8] bundleWithPath:v7];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 infoDictionary];
      v11 = v10;
      if (v10)
      {
        v12 = [v10 valueForKey:v3];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v7 = 0;
    v12 = 0;
  }

  return v12;
}

void postThermalNotification(void *a1)
{
  v6 = a1;
  v1 = [MEMORY[0x277CBEAA8] date];
  [v1 timeIntervalSinceDate:lastPublishedTimeForThermals];
  if (v2 > 20.0)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 postNotificationName:v6 object:0 userInfo:0];

    v4 = [MEMORY[0x277CBEAA8] date];
    v5 = lastPublishedTimeForThermals;
    lastPublishedTimeForThermals = v4;
  }
}

void postMemoryNotification(void *a1)
{
  v6 = a1;
  v1 = [MEMORY[0x277CBEAA8] date];
  [v1 timeIntervalSinceDate:lastPublishedTimeForMemory];
  if (v2 > 20.0)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 postNotificationName:v6 object:0 userInfo:0];

    v4 = [MEMORY[0x277CBEAA8] date];
    v5 = lastPublishedTimeForMemory;
    lastPublishedTimeForMemory = v4;
  }
}

void monitorThermalPressure()
{
  if (monitorThermalPressure_onceToken != -1)
  {
    monitorThermalPressure_cold_1();
  }

  state64 = 0;
  notify_get_state(thermalPressureToken, &state64);
  if (state64 <= 29)
  {
    v0 = &kSTYNoThermalPressureNotification;
    if (!state64 || state64 == 20)
    {
      goto LABEL_10;
    }
  }

  else if (state64 == 50 || state64 == 40 || state64 == 30)
  {
    v0 = &kSTYHeavyThermalPressureNotification;
LABEL_10:
    postThermalNotification(*v0);
  }
}

void monitorMemoryPressure()
{
  v2 = 1;
  v1 = 4;
  if (!sysctlbyname("kern.memorystatus_vm_pressure_level", &v2, &v1, 0, 0))
  {
    if ((v2 - 1) >= 2)
    {
      if (v2 != 4)
      {
        return;
      }

      v0 = &kSTYHeavyMemoryPressureNotification;
    }

    else
    {
      v0 = &kSTYNoMemoryPressureNotification;
    }

    postMemoryNotification(*v0);
  }
}

void currentLevels()
{
  v1 = +[STYFrameworkHelper sharedHelper];
  v0 = [v1 sharedConcurrentQueueAtUtility];
  dispatch_async(v0, &__block_literal_global_15_0);
}

void __currentLevels_block_invoke()
{
  monitorMemoryPressure();

  monitorThermalPressure();
}

void __startMonitoringSystemConditions_block_invoke()
{
  if (startMonitoringSystemConditions_onceToken != -1)
  {
    __startMonitoringSystemConditions_block_invoke_cold_1();
  }
}

uint64_t __startMonitoringSystemConditions_block_invoke_2()
{
  pollTimer = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:1 repeats:&__block_literal_global_23_0 block:30.0];

  return MEMORY[0x2821F96F8]();
}

uint64_t stopMonitoringSystemConditions()
{
  if (pollTimer)
  {
    [pollTimer invalidate];
    v0 = vars8;
  }

  result = thermalPressureToken;
  if (thermalPressureToken)
  {

    return notify_cancel(result);
  }

  return result;
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_2656D518C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_destroyWeak((v8 + 40));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v7 + 32));
  objc_destroyWeak((v9 - 88));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void processResponse(void *a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 objectForKey:kSTYTailspinSaveOperationFailedErrorKey];
  v3 = [v1 objectForKey:kSTYScenarioReportRefKey];
  v4 = v3;
  if (!v2)
  {
    v9 = [outstandingTailspinSaveRequests objectForKey:v3];

    if (v9)
    {
      v6 = [outstandingTailspinSaveRequests objectForKey:v4];
      v10 = [v1 objectForKey:kSTYFilepathToSavedTailspinKey];
      v11 = [MEMORY[0x277CBEAA8] date];
      v12 = +[STYFrameworkHelper sharedHelper];
      v13 = [v12 logHandle];

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        processResponse_cold_3(v6);
      }

      v14 = +[STYFrameworkHelper sharedHelper];
      v15 = [v14 logHandle];

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v32 = [v6 scenario];
        v28 = [v32 scenarioID];
        v29 = [perfIssueDetectionTimeLogs objectForKey:v4];
        [v11 timeIntervalSinceDate:v29];
        *buf = 138413058;
        v34 = v28;
        v35 = 2048;
        *v36 = v30;
        *&v36[8] = 1024;
        *&v36[10] = [v4 intValue];
        v37 = 2112;
        v38 = v10;
        _os_log_debug_impl(&dword_2656CE000, v15, OS_LOG_TYPE_DEBUG, "[Signpost: %@] Response details is as follows:\n\t  Total time to process tailspin save request by HangTracer: %f\n\t Request Identifier: %d\n\t Path to saved tailspin: %@ ", buf, 0x26u);
      }

      [outstandingTailspinSaveRequests removeObjectForKey:v4];
      [perfIssueDetectionTimeLogs removeObjectForKey:v4];

      goto LABEL_24;
    }

    v6 = [MEMORY[0x277CBEAA8] date];
    v19 = +[STYFrameworkHelper sharedHelper];
    v20 = [v19 logHandle];

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      processResponse_cold_4(v4);
    }

    v21 = +[STYFrameworkHelper sharedHelper];
    v22 = [v21 logHandle];

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      processResponse_cold_5();
    }

    goto LABEL_23;
  }

  if (!v3)
  {
    v16 = +[STYFrameworkHelper sharedHelper];
    v6 = [v16 logHandle];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      processResponse_cold_2(v2);
    }

    goto LABEL_24;
  }

  v5 = [outstandingTailspinSaveRequests objectForKey:v3];

  if (v5)
  {
    v6 = [outstandingTailspinSaveRequests objectForKey:v4];
    v7 = +[STYFrameworkHelper sharedHelper];
    v8 = [v7 logHandle];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v31 = [v6 scenario];
      v24 = [v31 scenarioID];
      v25 = [v4 intValue];
      v26 = [outstandingTailspinSaveRequests objectForKey:v4];
      v27 = [v2 localizedDescription];
      *buf = 138413058;
      v34 = v24;
      v35 = 1024;
      *v36 = v25;
      *&v36[4] = 2112;
      *&v36[6] = v26;
      v37 = 2112;
      v38 = v27;
      _os_log_error_impl(&dword_2656CE000, v8, OS_LOG_TYPE_ERROR, "[Signpost: %@] The response from hangtracerd for report with Request identifier : %d and scenarioID %@ errored out with error message %@", buf, 0x26u);
    }

    [outstandingTailspinSaveRequests removeObjectForKey:v4];
LABEL_23:
    [perfIssueDetectionTimeLogs removeObjectForKey:v4];
LABEL_24:

    goto LABEL_25;
  }

  v17 = +[STYFrameworkHelper sharedHelper];
  v18 = [v17 logHandle];

  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    processResponse_cold_1();
  }

  [perfIssueDetectionTimeLogs removeObjectForKey:v4];
LABEL_25:

  v23 = *MEMORY[0x277D85DE8];
}

void responseRecieved(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = a5;
  v6 = htInteractionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __responseRecieved_block_invoke;
  block[3] = &unk_279B9B5C8;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

void refreshPreferences()
{
  v0 = CFPreferencesCopyValue(@"monitorDelayedSignpostIntervals", @"com.apple.sentry.Signpostmonitor", @"mobile", *MEMORY[0x277CBF010]);
  monitorDelayedSignpostIntervals = [v0 intValue] != 0;
  v1 = +[STYFrameworkHelper sharedHelper];
  v2 = [v1 logHandle];

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    refreshPreferences_cold_1();
  }
}

void refreshHTPreferences()
{
  v0 = CFPreferencesCopyValue(@"HangTracerCollectOSSignposts", @"com.apple.da", @"mobile", *MEMORY[0x277CBF010]);
  HangTracerCollectOSSignposts = [v0 intValue] != 0;
  v1 = +[STYFrameworkHelper sharedHelper];
  v2 = [v1 logHandle];

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    refreshHTPreferences_cold_1();
  }
}

void sub_2656D63D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2656D6CFC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_2656D9520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id TailspinFilenamePrefixForInterval(void *a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = a1;
  v3 = [v2 name];
  v4 = [v2 endEvent];
  v5 = [v4 processName];
  [v2 durationSeconds];
  v7 = v6;

  v8 = [v1 stringWithFormat:@"Sentry_%@_%@_%.1fs", v3, v5, v7];

  if ([v8 length] < 0x3D)
  {
    v9 = v8;
  }

  else
  {
    v9 = [v8 substringToIndex:59];
  }

  v10 = v9;

  return v10;
}

void sub_2656DA844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2656DB1D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2656DB6AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id location)
{
  objc_destroyWeak((v33 + 40));
  objc_destroyWeak((v33 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_5(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

void OUTLINED_FUNCTION_7(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

void OUTLINED_FUNCTION_14(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void processResponse_cold_1()
{
  OUTLINED_FUNCTION_11();
  v9 = *MEMORY[0x277D85DE8];
  [v1 intValue];
  v8 = [v0 localizedDescription];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);

  v7 = *MEMORY[0x277D85DE8];
}

void processResponse_cold_2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void processResponse_cold_3(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 scenario];
  v2 = [v1 scenarioID];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

void processResponse_cold_4(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 intValue];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void processResponse_cold_5()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  v10 = *MEMORY[0x277D85DE8];
  [v1 intValue];
  v3 = [perfIssueDetectionTimeLogs objectForKey:v2];
  [v0 timeIntervalSinceDate:v3];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x12u);

  v9 = *MEMORY[0x277D85DE8];
}

void refreshPreferences_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void refreshHTPreferences_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}
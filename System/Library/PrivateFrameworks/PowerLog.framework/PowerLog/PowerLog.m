void PLLogTimeSensitiveRegisteredEvent(uint64_t a1, void *a2, void *a3)
{
  if (!+[PLClientLogger isMessageOnDeviceDisabled])
  {
    v6 = a2;
    v9 = [a3 mutableCopy];
    v7 = [MEMORY[0x1E695DF00] date];
    [v9 setObject:v7 forKey:@"__pl_internal_timeSensitiveSystemDate"];

    v8 = +[PLClientLogger sharedInstance];
    [v8 logForClientID:a1 withKey:v6 withPayload:v9];
  }
}

void PLLogRegisteredEvent(uint64_t a1, void *a2, void *a3)
{
  if (!+[PLClientLogger isMessageOnDeviceDisabled])
  {
    v6 = a3;
    v7 = a2;
    v8 = +[PLClientLogger sharedInstance];
    [v8 logForClientID:a1 withKey:v7 withPayload:v6];
  }
}

id PLLogClientLogging()
{
  if (PLLogClientLogging_onceToken != -1)
  {
    PLLogClientLogging_cold_1();
  }

  v1 = PLLogClientLogging___logObj;

  return v1;
}

uint64_t PLShouldLogRegisteredEvent(uint64_t a1, void *a2)
{
  if (+[PLClientLogger isMessageOnDeviceDisabled])
  {
    return 0;
  }

  v5 = a2;
  v6 = +[PLClientLogger sharedInstance];
  v7 = [v6 blockedPermissionForClientID:a1 withKey:v5 withType:@"Post" withTimeout:0];

  v8 = +[PLClientLogger sharedInstance];
  v9 = [v8 clientDebug];

  if (v7)
  {
    if (!v9)
    {
      return 1;
    }

    v10 = PLLogClientLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      PLShouldLogRegisteredEvent_cold_1();
    }

    v4 = 1;
    goto LABEL_12;
  }

  if (v9)
  {
    v10 = PLLogClientLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      PLShouldLogRegisteredEvent_cold_2();
    }

    v4 = 0;
LABEL_12:

    return v4;
  }

  return 0;
}

PPSTelemetryIdentifier *PPSCreateTelemetryIdentifier(void *a1, void *a2)
{
  v4 = a1;
  v5 = a2;
  v6 = [a1 UTF8String];
  v7 = [v5 UTF8String];

  return [PPSClientDonation createIdentifierForSubsystem:v6 category:v7];
}

uint64_t __PLLogClientLogging_block_invoke()
{
  PLLogClientLogging___logObj = os_log_create("com.apple.powerlog", "ClientLogging");

  return MEMORY[0x1EEE66BB8]();
}

id logHandle()
{
  if (logHandle_onceToken != -1)
  {
    logHandle_cold_1();
  }

  v1 = logHandle__logHandle;

  return v1;
}

id logHandle_0()
{
  if (logHandle_onceToken_0 != -1)
  {
    logHandle_cold_1_0();
  }

  v1 = logHandle__logHandle_0;

  return v1;
}

id logHandle_1()
{
  if (logHandle_onceToken_1 != -1)
  {
    logHandle_cold_1_1();
  }

  v1 = logHandle__logHandle_1;

  return v1;
}

uint64_t __logHandle_block_invoke()
{
  logHandle__logHandle = os_log_create("com.apple.PerfPowerServices", "ClientRegistration");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __logHandle_block_invoke_0()
{
  logHandle__logHandle_0 = os_log_create("com.apple.PerfPowerServices", "ClientDonation");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __logHandle_block_invoke_1()
{
  logHandle__logHandle_1 = os_log_create("com.apple.batteryui", "");

  return MEMORY[0x1EEE66BB8]();
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t PLQueryRegistered(int a1, __CFString *a2, void *a3)
{
  if (!+[PLClientLogger isMessageOnDeviceDisabled])
  {
    v7 = @"unknownQuery;";
    if (a2)
    {
      v7 = a2;
    }

    v8 = MEMORY[0x1E696AEC0];
    v9 = v7;
    v10 = a3;
    v11 = a2;
    [v8 stringWithFormat:@"com.apple.PLQueryRegistered.%d.%@.start", a1, v9];
    objc_claimAutoreleasedReturnValue();
    PLADClientAddValueForScalarKey();
    [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.PLQueryRegistered.%d.%@.queryTime", a1, v9];
    objc_claimAutoreleasedReturnValue();
    PLADMonotonicTimeGetCurrent();
  }

  return 0;
}

id PLLogDiscretionaryEnergyMonitor()
{
  if (PLLogDiscretionaryEnergyMonitor_onceToken != -1)
  {
    PLLogDiscretionaryEnergyMonitor_cold_1();
  }

  v1 = PLLogDiscretionaryEnergyMonitor___logObj;

  return v1;
}

uint64_t __PLLogDiscretionaryEnergyMonitor_block_invoke()
{
  PLLogDiscretionaryEnergyMonitor___logObj = os_log_create("com.apple.powerlog.energybudgeting", "discretionaryenergymonitor");

  return MEMORY[0x1EEE66BB8]();
}

id discretionaryEnergyMonitorQueue()
{
  if (discretionaryEnergyMonitorQueue_queueCreationGuard != -1)
  {
    discretionaryEnergyMonitorQueue_cold_1();
  }

  v1 = discretionaryEnergyMonitorQueue_queue;

  return v1;
}

void __discretionaryEnergyMonitorQueue_block_invoke()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_BACKGROUND, 0);
  v1 = dispatch_queue_create("PLFrameworkEnergyBudgetingWorkQueue", v0);
  v2 = discretionaryEnergyMonitorQueue_queue;
  discretionaryEnergyMonitorQueue_queue = v1;
}

void sub_1BACBB0D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void PLBatteryLifeMonitorLogCoreDuetEventsAggregate(void *a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"events";
  v6[0] = a1;
  v1 = MEMORY[0x1E695DF20];
  v2 = a1;
  v3 = [v1 dictionaryWithObjects:v6 forKeys:&v5 count:1];

  PLLogRegisteredEvent(24, @"BLMNotifyDuetEvent", v3);
  v4 = *MEMORY[0x1E69E9840];
}

void sub_1BACBF8CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BACC05C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void didReceiveNotification(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = discretionaryEnergyMonitorQueue();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __didReceiveNotification_block_invoke;
  v6[3] = &__block_descriptor_48_e5_v8__0l;
  v6[4] = a2;
  v6[5] = a3;
  dispatch_async(v5, v6);
}

void PLBatteryLifeMonitorLogDuetEvent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[6] = *MEMORY[0x1E69E9840];
  v8 = [MEMORY[0x1E695DF00] date];
  [v8 timeIntervalSince1970];
  v10 = v9;

  v18[0] = @"time";
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
  v19[0] = v11;
  v18[1] = @"bundleID";
  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a1];
  v19[1] = v12;
  v18[2] = @"updateType";
  v13 = [MEMORY[0x1E696AD98] numberWithShort:a2];
  v19[2] = v13;
  v18[3] = @"sequenceNumber";
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  v19[3] = v14;
  v18[4] = @"eventType";
  v15 = [MEMORY[0x1E696AD98] numberWithShort:a4];
  v18[5] = @"BLMLogType";
  v19[4] = v15;
  v19[5] = &unk_1F38E30C8;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:6];

  PLLogRegisteredEvent(24, @"BLMNotifyDuetEvent", v16);
  v17 = *MEMORY[0x1E69E9840];
}

void PLBatteryLifeMonitorStopAllDuetEvents()
{
  v7[3] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DF00] date];
  [v0 timeIntervalSince1970];
  v2 = v1;

  v6[0] = @"time";
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:v2];
  v7[0] = v3;
  v7[1] = MEMORY[0x1E695E118];
  v6[1] = @"BLMStopAllDuetEvents";
  v6[2] = @"BLMLogType";
  v7[2] = &unk_1F38E30C8;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:3];

  PLLogRegisteredEvent(24, @"BLMNotifyDuetEvent", v4);
  v5 = *MEMORY[0x1E69E9840];
}

void PLBatteryLifeMonitorLogCoreDuetAdmissionEvent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v35[11] = *MEMORY[0x1E69E9840];
  if (+[PLModelingUtilities internalBuild])
  {
    v19 = [MEMORY[0x1E695DF00] date];
    [v19 timeIntervalSince1970];
    v21 = v20;

    v34[0] = @"time";
    v33 = [MEMORY[0x1E696AD98] numberWithDouble:v21];
    v35[0] = v33;
    v34[1] = @"clientID";
    v32 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a1];
    v35[1] = v32;
    v34[2] = @"attributeID";
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a2];
    v35[2] = v22;
    v34[3] = @"attributeName";
    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a10];
    v35[3] = v23;
    v34[4] = @"value";
    v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3];
    v35[4] = v24;
    v34[5] = @"Probability";
    v25 = [MEMORY[0x1E696AD98] numberWithDouble:a6];
    v35[5] = v25;
    v34[6] = @"PT";
    v26 = [MEMORY[0x1E696AD98] numberWithDouble:a7];
    v35[6] = v26;
    v34[7] = @"BON";
    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a4];
    v35[7] = v27;
    v34[8] = @"reason";
    v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a5];
    v35[8] = v28;
    v34[9] = @"ableID";
    v29 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a9];
    v34[10] = @"BLMLogType";
    v35[9] = v29;
    v35[10] = &unk_1F38E30E0;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:11];

    PLLogRegisteredEvent(24, @"BLMNotifyDuetEvent", v30);
  }

  v31 = *MEMORY[0x1E69E9840];
}

void PLBatteryLifeMonitorLogCoreDuetEvent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v37[13] = *MEMORY[0x1E69E9840];
  v18 = [MEMORY[0x1E695DF00] date];
  [v18 timeIntervalSince1970];
  v20 = v19;

  v36[0] = @"time";
  v35 = [MEMORY[0x1E696AD98] numberWithDouble:v20];
  v37[0] = v35;
  v36[1] = @"clientID";
  v34 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a1];
  v37[1] = v34;
  v36[2] = @"attributeID";
  v33 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a2];
  v37[2] = v33;
  v36[3] = @"attributeName";
  v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a11];
  v37[3] = v21;
  v36[4] = @"updateType";
  v22 = [MEMORY[0x1E696AD98] numberWithShort:a3];
  v37[4] = v22;
  v36[5] = @"sequenceNumber";
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a4];
  v37[5] = v23;
  v36[6] = @"eventType";
  v24 = [MEMORY[0x1E696AD98] numberWithShort:a5];
  v37[6] = v24;
  v36[7] = @"value";
  v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a6];
  v37[7] = v25;
  v36[8] = @"cellin";
  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a7];
  v37[8] = v26;
  v36[9] = @"cellout";
  v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a8];
  v37[9] = v27;
  v36[10] = @"wifiin";
  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a9];
  v37[10] = v28;
  v36[11] = @"wifiout";
  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a10];
  v36[12] = @"BLMLogType";
  v37[11] = v29;
  v37[12] = &unk_1F38E30F8;
  v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:13];

  PLLogRegisteredEvent(24, @"BLMNotifyDuetEvent", v30);
  v31 = *MEMORY[0x1E69E9840];
}

void PLBatteryLifeMonitorLogCoreDuetPredictionEvents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, float a8)
{
  v32[10] = *MEMORY[0x1E69E9840];
  if (+[PLModelingUtilities internalBuild])
  {
    v16 = [MEMORY[0x1E695DF00] date];
    [v16 timeIntervalSince1970];
    v18 = v17;

    v19 = [MEMORY[0x1E696AD98] numberWithDouble:{v18, @"time"}];
    v32[0] = v19;
    v31[1] = @"prediction_c_a";
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a1];
    v32[1] = v20;
    v31[2] = @"prediction_c_b";
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a2];
    v32[2] = v21;
    v31[3] = @"prediction_c_c";
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
    v32[3] = v22;
    v31[4] = @"prediction_b1";
    v23 = [MEMORY[0x1E696AD98] numberWithBool:a4];
    v32[4] = v23;
    v31[5] = @"prediction_b2";
    v24 = [MEMORY[0x1E696AD98] numberWithBool:a5];
    v32[5] = v24;
    v31[6] = @"prediction_r2";
    *&v25 = a8;
    v26 = [MEMORY[0x1E696AD98] numberWithFloat:v25];
    v32[6] = v26;
    v31[7] = @"ableID";
    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a6];
    v32[7] = v27;
    v31[8] = @"selectedModel";
    v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a7];
    v31[9] = @"BLMLogType";
    v32[8] = v28;
    v32[9] = &unk_1F38E3110;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:10];

    PLLogRegisteredEvent(24, @"BLMNotifyDuetEvent", v29);
  }

  v30 = *MEMORY[0x1E69E9840];
}

id PLBatteryLifeMonitorGenericDuetQuery(void *a1)
{
  v1 = a1;
  if (+[PLModelingUtilities isHomePod])
  {
    goto LABEL_11;
  }

  v2 = PLFDefaultsValueForKey();

  if (v2)
  {
    v3 = PLFDefaultsValueForKey();
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 30;
  }

  v5 = PLFDefaultsValueForKey();

  if (v5)
  {
    v6 = PLFDefaultsValueForKey();
    v7 = [v6 unsignedIntValue];
  }

  else
  {
    v7 = 2;
  }

  if (v4 < 1)
  {
LABEL_11:
    v9 = 0;
  }

  else
  {
    while (1)
    {
      v8 = PLQueryRegistered(24, @"BLMReportEnergyDuet", v1);
      if (v8)
      {
        break;
      }

      sleep(v7);
      if (!--v4)
      {
        goto LABEL_11;
      }
    }

    v9 = v8;
  }

  return v9;
}

id PLBatteryLifeMonitorReportEnergyDuet(void *a1)
{
  v14[3] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = PLFDefaultsValueForKey();
  v3 = [v2 BOOLValue];

  if (v3)
  {
    NSLog(&cfstr_DuetToPowerlog.isa);
    v14[0] = MEMORY[0x1E695E0F0];
    v13[0] = @"BLMEnergyForDuet";
    v13[1] = @"BLMEnergyReferenceDate";
    v4 = [MEMORY[0x1E695DF00] date];
    v14[1] = v4;
    v13[2] = @"BLMBatteryCapacity";
    v5 = MEMORY[0x1E696AD98];
    +[PLModelingUtilities defaultBatteryEnergyCapacity];
    v6 = [v5 numberWithDouble:?];
    v14[2] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  }

  else
  {
    v11[0] = @"BLMEnergyForDuet";
    v8 = v1;
    if (!v1)
    {
      v8 = [MEMORY[0x1E695DFB0] null];
    }

    v11[1] = @"BLMLogType";
    v12[0] = v8;
    v12[1] = &unk_1F38E30C8;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
    if (!v1)
    {
    }

    v7 = PLBatteryLifeMonitorGenericDuetQuery(v4);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

id PLBatteryLifeMonitorReportEnergyCoreDuet(void *a1)
{
  v14[3] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = PLFDefaultsValueForKey();
  v3 = [v2 BOOLValue];

  if (v3)
  {
    NSLog(&cfstr_DuetToPowerlog.isa);
    v14[0] = MEMORY[0x1E695E0F0];
    v13[0] = @"BLMEnergyForDuet";
    v13[1] = @"BLMEnergyReferenceDate";
    v4 = [MEMORY[0x1E695DF00] date];
    v14[1] = v4;
    v13[2] = @"BLMBatteryCapacity";
    v5 = MEMORY[0x1E696AD98];
    +[PLModelingUtilities defaultBatteryEnergyCapacity];
    v6 = [v5 numberWithDouble:?];
    v14[2] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  }

  else
  {
    v11[0] = @"BLMEnergyForDuet";
    v8 = v1;
    if (!v1)
    {
      v8 = [MEMORY[0x1E695DFB0] null];
    }

    v11[1] = @"BLMLogType";
    v12[0] = v8;
    v12[1] = &unk_1F38E30F8;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
    if (!v1)
    {
    }

    v7 = PLBatteryLifeMonitorGenericDuetQuery(v4);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

id PLBatteryLifeMonitorReportBatteryCapacityForCoreDuet()
{
  v12[2] = *MEMORY[0x1E69E9840];
  v0 = PLFDefaultsValueForKey();
  v1 = [v0 BOOLValue];

  if (v1)
  {
    NSLog(&cfstr_DuetToPowerlog.isa);
    v11[0] = @"BLMEnergyReferenceDate";
    v2 = [MEMORY[0x1E695DF00] date];
    v11[1] = @"BLMBatteryCapacity";
    v12[0] = v2;
    v3 = MEMORY[0x1E696AD98];
    +[PLModelingUtilities defaultBatteryEnergyCapacity];
    v4 = [v3 numberWithDouble:?];
    v12[1] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  }

  else
  {
    v9 = @"BLMBatteryCapacity";
    v6 = MEMORY[0x1E696AD98];
    +[PLModelingUtilities defaultBatteryEnergyCapacity];
    v2 = [v6 numberWithDouble:?];
    v10 = v2;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  }

  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

id PLBuildUsageSnapshot()
{
  v0 = objc_opt_new();

  return v0;
}

id PLBuildEnergyBucket()
{
  v0 = objc_opt_new();
  [v0 setLevel:1];

  return v0;
}

id PLBuildEnergyBucketTillNow()
{
  v0 = objc_opt_new();
  v1 = objc_opt_new();
  [v1 setLevel:1];

  return v1;
}

void __didReceiveNotification_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ([*(a1 + 40) caseInsensitiveCompare:@"com.apple.energybudgetingdebug.quickEnergySnapshots"])
  {
    if ([*(a1 + 40) caseInsensitiveCompare:@"com.apple.energybudgetingdebug.queryPowerlog"])
    {
      if ([*(a1 + 40) caseInsensitiveCompare:@"com.apple.energybudgetingdebug.generateEnergyReport"])
      {
        if (![*(a1 + 40) caseInsensitiveCompare:@"com.apple.energybudgetingdebug.discretionaryIntervals"])
        {
          v7 = PLLogDiscretionaryEnergyMonitor();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
          {
            *v23 = 0;
            _os_log_impl(&dword_1BACB7000, v7, OS_LOG_TYPE_INFO, "DEBUG OUTPUT: Discretionary Intervals: ", v23, 2u);
          }

          v3 = [v2 intervalManager];
          [v3 logDiscretionaryIntervals];
          goto LABEL_36;
        }

        if (![*(a1 + 40) caseInsensitiveCompare:@"com.apple.energybudgetingdebug.lastPowerlogEnergy"])
        {
          v8 = [v2 lastPowerlogResponse];
          [v2 getPowerlogEnergySum:v8];
          v10 = v9 * 1000.0;

          v3 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
          v11 = @"com.apple.energybudgetingdebug.lastPowerlogEnergy";
          goto LABEL_35;
        }

        if (![*(a1 + 40) caseInsensitiveCompare:@"com.apple.energybudgetingdebug.lastPowerlogTimestamp"])
        {
          v12 = [v2 powerlogTimestampLast];
          [v12 timeIntervalSince1970];
          v14 = v13;

          v3 = [MEMORY[0x1E696AD98] numberWithDouble:v14];
          v11 = @"com.apple.energybudgetingdebug.lastPowerlogTimestamp";
          goto LABEL_35;
        }

        if ([*(a1 + 40) caseInsensitiveCompare:@"com.apple.energybudgetingdebug.chargingStatus"])
        {
          if ([*(a1 + 40) caseInsensitiveCompare:@"com.apple.energybudgetingdebug.lastReportedTotalEnergy"])
          {
            if ([*(a1 + 40) caseInsensitiveCompare:@"com.apple.energybudgetingdebug.lastReportedCPUEnergy"])
            {
              if ([*(a1 + 40) caseInsensitiveCompare:@"com.apple.energybudgetingdebug.lastReportedNetworkEnergy"])
              {
                if ([*(a1 + 40) caseInsensitiveCompare:@"com.apple.energybudgetingdebug.accumulatedCPUEnergy"])
                {
                  if ([*(a1 + 40) caseInsensitiveCompare:@"com.apple.energybudgetingdebug.accumulatedNetworkEnergy"])
                  {
                    v3 = PLLogDiscretionaryEnergyMonitor();
                    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
                    {
                      __didReceiveNotification_block_invoke_cold_1();
                    }

                    goto LABEL_36;
                  }

                  [v2 accumulatedNetworkEnergy];
                  v3 = [MEMORY[0x1E696AD98] numberWithDouble:v22 * 1000.0];
                  v11 = @"com.apple.energybudgetingdebug.accumulatedNetworkEnergy";
                }

                else
                {
                  [v2 accumulatedCPUEnergy];
                  v3 = [MEMORY[0x1E696AD98] numberWithDouble:v21 * 1000.0];
                  v11 = @"com.apple.energybudgetingdebug.accumulatedCPUEnergy";
                }
              }

              else
              {
                [v2 lastReportedNetworkEnergy];
                v3 = [MEMORY[0x1E696AD98] numberWithDouble:v20 * 1000.0];
                v11 = @"com.apple.energybudgetingdebug.lastReportedNetworkEnergy";
              }
            }

            else
            {
              [v2 lastReportedCPUEnergy];
              v3 = [MEMORY[0x1E696AD98] numberWithDouble:v19 * 1000.0];
              v11 = @"com.apple.energybudgetingdebug.lastReportedCPUEnergy";
            }
          }

          else
          {
            [v2 lastReportedTotalEnergy];
            v3 = [MEMORY[0x1E696AD98] numberWithDouble:v18 * 1000.0];
            v11 = @"com.apple.energybudgetingdebug.lastReportedTotalEnergy";
          }

LABEL_35:
          [v2 setStateForNotification:v11 withState:v3];
LABEL_36:

          goto LABEL_37;
        }

        v15 = MEMORY[0x1E696AD98];
        v16 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v2, "isCharging")}];
        v17 = [v15 numberWithInt:{objc_msgSend(v16, "intValue")}];
        [v2 setStateForNotification:@"com.apple.energybudgetingdebug.chargingStatus" withState:v17];
      }

      else
      {
        v6 = PLLogDiscretionaryEnergyMonitor();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *v24 = 0;
          _os_log_impl(&dword_1BACB7000, v6, OS_LOG_TYPE_INFO, "DEBUG OUTPUT: Generating energyReport ...: ", v24, 2u);
        }

        [v2 generateEnergyReport];
      }
    }

    else
    {
      v5 = PLLogDiscretionaryEnergyMonitor();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v25 = 0;
        _os_log_impl(&dword_1BACB7000, v5, OS_LOG_TYPE_INFO, "DEBUG OUTPUT: Querying powerlog for discretionary energy ...: ", v25, 2u);
      }

      [v2 queryPowerlogForDiscretionaryEnergy];
    }
  }

  else
  {
    v4 = PLLogDiscretionaryEnergyMonitor();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1BACB7000, v4, OS_LOG_TYPE_INFO, "DEBUG OUTPUT: Quick energy snapshots: ", buf, 2u);
    }

    [v2 logQuickEnergySnapshots];
  }

LABEL_37:
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_11(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1BACC3B7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BACC4304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BACC47C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BACC4A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1BACC4CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1BACC4F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1BACC51B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1BACC5420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1BACC5690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1BACC5900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1BACC5B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1BACC5DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1BACC6050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1BACC62E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1BACC65E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1BACC68E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1BACC6BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1BACC70D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1BACC7374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BACC7540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BACC76FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BACC78B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BACC7A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BACC7C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BACC7E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BACC7FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BACC824C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BACC842C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BACC88FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BACC8B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BACC8D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BACC8FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BACC92D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BACC9540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BACC9754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BACC99D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BACC9C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BACC9EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __clientInterface_block_invoke()
{
  clientInterface_interface = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38E94D0];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __managingClientInterface_block_invoke()
{
  managingClientInterface_interface = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38E9530];

  return MEMORY[0x1EEE66BB8]();
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

void sub_1BACCA24C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

PPSTelemetryIdentifier *PerfPowerTelemetryCreateIdentifier(void *a1, void *a2)
{
  v4 = a1;
  v5 = a2;
  v6 = [a1 UTF8String];
  v7 = [v5 UTF8String];

  return [PPSClientDonation createIdentifierForSubsystem:v6 category:v7];
}

void sub_1BACCCCEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PLLogRegisteredAggregateEvent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = +[PLClientLogAggregator sharedInstance];
  v9 = [v8 aggregateForClientID_async:a1 eventName:a2 eventDictionary:a3 configuration:a4];

  return v9;
}

id __aggregationBlockForType_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (a2)
  {
    v6 = MEMORY[0x1E696AD98];
    [a2 floatValue];
    v8 = v7;
    [v5 floatValue];
    *&v10 = v8 + v9;
    v11 = [v6 numberWithFloat:v10];
  }

  else
  {
    v11 = v4;
  }

  v12 = v11;

  return v12;
}

id __aggregationBlockForType_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (a2)
  {
    v6 = MEMORY[0x1E696AD98];
    [a2 floatValue];
    v8 = v7;
    [v5 floatValue];
    if (v8 >= *&v9)
    {
      *&v9 = v8;
    }

    v10 = [v6 numberWithFloat:v9];
  }

  else
  {
    v10 = v4;
  }

  v11 = v10;

  return v11;
}

id __aggregationBlockForType_block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (a2)
  {
    v6 = MEMORY[0x1E696AD98];
    [a2 floatValue];
    v8 = v7;
    [v5 floatValue];
    if (v8 < *&v9)
    {
      *&v9 = v8;
    }

    v10 = [v6 numberWithFloat:v9];
  }

  else
  {
    v10 = v4;
  }

  v11 = v10;

  return v11;
}

id __aggregationBlockForType_block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v5;
  if (v4)
  {
    if (v5)
    {
      v7 = MEMORY[0x1E696AD98];
      [v4 floatValue];
      v9 = v8;
      [v6 floatValue];
      v11 = [v7 numberWithDouble:(v9 + v10) * 0.5];
    }

    else
    {
      v11 = v4;
    }
  }

  else
  {
    v11 = v5;
  }

  v12 = v11;

  return v12;
}

id logHandleBatteryUIExternalData()
{
  if (logHandleBatteryUIExternalData_onceToken != -1)
  {
    logHandleBatteryUIExternalData_cold_1();
  }

  v1 = logHandleBatteryUIExternalData__logHandle;

  return v1;
}

uint64_t __logHandleBatteryUIExternalData_block_invoke()
{
  logHandleBatteryUIExternalData__logHandle = os_log_create("com.apple.batteryui", "externaldata");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t batteryUIHasNoteworthyInformation()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = PLConfigureBUIQueryNoteworthyInformation();
  v1 = PLRunBUIQuery(v0);
  v2 = logHandleBatteryUIExternalData();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v0;
    v10 = 2112;
    v11 = v1;
    _os_log_impl(&dword_1BACB7000, v2, OS_LOG_TYPE_DEFAULT, "config: %@, queryResult: %@", &v8, 0x16u);
  }

  v3 = logHandleBatteryUIExternalData();
  v4 = v3;
  if (v1)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v1;
      _os_log_impl(&dword_1BACB7000, v4, OS_LOG_TYPE_DEFAULT, "valid queryResult=%@", &v8, 0xCu);
    }

    v4 = [v1 objectForKeyedSubscript:@"hasNoteworthyInformation"];
    v5 = [v4 BOOLValue];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      batteryUIHasNoteworthyInformation_cold_1(v4);
    }

    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

id queryResultWith(void *a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = PLConfigureBUIQueryInsightsAndSuggestionsSummary();
  v3 = PLRunBUIQuery(v2);
  v4 = logHandleBatteryUIExternalData();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v37 = v2;
    v38 = 2112;
    v39 = v3;
    _os_log_impl(&dword_1BACB7000, v4, OS_LOG_TYPE_DEFAULT, "config: %@, queryResult: %@", buf, 0x16u);
  }

  v5 = logHandleBatteryUIExternalData();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v37 = v3;
      _os_log_impl(&dword_1BACB7000, v6, OS_LOG_TYPE_DEFAULT, "valid queryResult=%@", buf, 0xCu);
    }

    v7 = logHandleBatteryUIExternalData();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v37 = v1;
      _os_log_impl(&dword_1BACB7000, v7, OS_LOG_TYPE_DEFAULT, "using key=%@", buf, 0xCu);
    }

    v8 = [v3 objectForKeyedSubscript:@"insightsAndSuggestionsSummaryKey"];
    v9 = [v8 objectForKeyedSubscript:v1];
    v6 = [v9 mutableCopy];

    v10 = objc_opt_new();
    v11 = v10;
    if (v6)
    {
      v30 = v10;
      v27 = v3;
      v28 = v2;
      v29 = v1;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v26 = v6;
      v12 = v6;
      v13 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v32;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v32 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v31 + 1) + 8 * i);
            v18 = [v17 objectForKeyedSubscript:{@"Type", v26, v27, v28, v29}];
            v19 = v18;
            if (v18)
            {
              v20 = +[PLBatteryUIExternalData getTitleAndTextForType:](PLBatteryUIExternalData, "getTitleAndTextForType:", [v18 intValue]);
              if (v20)
              {
                v21 = [v17 mutableCopy];
                [v21 addEntriesFromDictionary:v20];
                [v30 addObject:v21];
              }

              else
              {
                v21 = logHandleBatteryUIExternalData();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v37 = v17;
                  _os_log_error_impl(&dword_1BACB7000, v21, OS_LOG_TYPE_ERROR, "Could not find title and text for entry %@", buf, 0xCu);
                }
              }
            }

            else
            {
              v20 = logHandleBatteryUIExternalData();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v37 = v17;
                _os_log_error_impl(&dword_1BACB7000, v20, OS_LOG_TYPE_ERROR, "Could not find type for entry %@", buf, 0xCu);
              }
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v14);
      }

      v22 = logHandleBatteryUIExternalData();
      v11 = v30;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v37 = v30;
        _os_log_impl(&dword_1BACB7000, v22, OS_LOG_TYPE_DEFAULT, "returning finalizedEntries=%@", buf, 0xCu);
      }

      v23 = v30;
      v2 = v28;
      v1 = v29;
      v6 = v26;
      v3 = v27;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      batteryUIHasNoteworthyInformation_cold_1(v6);
    }

    v23 = MEMORY[0x1E695E0F0];
  }

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

void sub_1BACD1B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BACD3328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t PLShouldLogEvent(void *a1)
{
  if (+[PLClientLogger isMessageOnDeviceDisabled])
  {
    return 0;
  }

  v3 = +[PLClientLogger sharedInstance];
  v4 = [v3 blockedPermissionForClientID:0 withKey:a1 withType:@"Post" withTimeout:0];

  v5 = +[PLClientLogger sharedInstance];
  v6 = [v5 clientDebug];

  if (v4 == 1)
  {
    if (!v6)
    {
      return 1;
    }

    v7 = PLLogClientLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      PLShouldLogEvent_cold_2();
    }

    v2 = 1;
    goto LABEL_12;
  }

  if (v6)
  {
    v7 = PLLogClientLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      PLShouldLogEvent_cold_1();
    }

    v2 = 0;
LABEL_12:

    return v2;
  }

  return 0;
}

void PLLogEvent(void *a1, void *a2)
{
  if (!+[PLClientLogger isMessageOnDeviceDisabled])
  {

    PLLogRegisteredEvent(0, a1, a2);
  }
}

void PLLogRegisteredEventFilterByInterval(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  if (+[PLClientLogger isMessageOnDeviceDisabled]|| !a2 || !a3)
  {
    return;
  }

  v12 = a2;
  v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:a3 copyItems:1];
  v9 = +[PLClientLogger sharedInstance];
  v10 = [v9 shouldLogNowForClientID:a1 withKey:v12 withPayload:v8 withFilterInterval:a4];

  if (v10 == 1)
  {
    v11 = +[PLClientLogger sharedInstance];
    [v11 logLaterForClientID:a1 withKey:v12 withFilterInterval:a4];
    goto LABEL_9;
  }

  if (!v10)
  {
    v11 = +[PLClientLogger sharedInstance];
    [v11 logWithCurrentDateForClientID:a1 withKey:v12 withPayload:v8];
LABEL_9:
  }
}

void PLTalkToPowerlogHelper(int a1)
{
  v2 = +[PLClientLogger sharedInstance];
  [v2 setTalkToPowerlogHelper:a1 != 0];
}

void PLForceBatching(int a1)
{
  v2 = +[PLClientLogger sharedInstance];
  [v2 setForceBatching:a1 != 0];
}

void PLBatchDropMessages(int a1)
{
  v2 = +[PLClientLogger sharedInstance];
  [v2 setBatchDropMessages:a1 != 0];
}

void PLMovePowerlogsToCR()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v0 = 0;
    _os_log_impl(&dword_1BACB7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Starting powerlog copy to Crash Reporter", v0, 2u);
  }

  PLCrashMoverCopyPowerlog();
}

void OUTLINED_FUNCTION_5_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

void OUTLINED_FUNCTION_8_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x2Au);
}

uint64_t PLBatteryGaugeStartMetricMonitor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E695DF00] date];
  [v6 timeIntervalSince1970];
  v8 = v7;

  v9 = [MEMORY[0x1E695DF90] dictionary];
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
  [v9 setObject:v10 forKey:@"time"];

  [v9 setObject:&unk_1F38E3398 forKey:@"battery_gauge_event"];
  if (a1)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", a1];
    [v9 setObject:v11 forKey:@"pid"];
  }

  if (a2)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
    [v9 setObject:v12 forKey:@"bundle_id"];
  }

  if (a3)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3];
    [v9 setObject:v13 forKey:@"process_name"];
  }

  v14 = [MEMORY[0x1E69BDC18] defaultConfiguration];
  [v14 setMode:2];
  [v14 setUpdateInterval:0.2];
  [v14 setUpdateDelegate:0];
  [v14 setIncludeBackBoardUsage:1];
  v15 = objc_alloc_init(MetricDelegate);
  v16 = delegate;
  delegate = v15;

  v17 = objc_alloc(MEMORY[0x1E69BDC10]);
  v29 = 0;
  v18 = [v17 initWithConfiguration:v14 delegate:delegate error:&v29];
  v19 = v29;
  v20 = *monitor;
  *monitor = v18;

  if (a1)
  {
    v28 = v19;
    v21 = [monitor startMonitoringProcessWithPID:a1 error:&v28];
    v22 = v28;

    if (v21)
    {
      pid2monitor = a1;
      goto LABEL_14;
    }
  }

  else
  {
    if (!a3)
    {
      v22 = v19;
      goto LABEL_14;
    }

    v23 = *monitor;
    v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3];
    v27 = v19;
    LODWORD(v23) = [v23 startMonitoringProcessWithName:v24 error:&v27];
    v22 = v27;

    if (v23)
    {
LABEL_14:
      v25 = 0;
      goto LABEL_15;
    }
  }

  v25 = 0xFFFFFFFFLL;
LABEL_15:

  return v25;
}

id PLBatteryGaugeGetMetricMonitorSnapshot()
{
  v100 = *MEMORY[0x1E69E9840];
  v69 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v0 = [monitor collectMetricsOnDemand];
  v1 = [v0 processMetrics];
  v2 = [MEMORY[0x1E696AD98] numberWithInt:pid2monitor];
  v3 = [v1 objectForKeyedSubscript:v2];
  v4 = [v3 applicationState];
  [v4 doubleValue];
  v6 = v5;

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v7 = [v0 processMetrics];
  v8 = [v7 allKeys];

  v9 = [v8 countByEnumeratingWithState:&v73 objects:v99 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0.0;
    v12 = *v74;
    v13 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v74 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v19 = *(*(&v73 + 1) + 8 * i);
        if (v6 != 8.0)
        {
          v20 = [*(*(&v73 + 1) + 8 * i) intValue];
          if (v20 != pid2monitor)
          {
            continue;
          }
        }

        v21 = [v0 processMetrics];
        v22 = [v21 objectForKeyedSubscript:v19];
        v23 = [v22 cpuCost];
        [v23 doubleValue];
        v17 = v17 + v24;

        v25 = [v0 processMetrics];
        v26 = [v25 objectForKeyedSubscript:v19];
        v27 = [v26 gpuCost];
        [v27 doubleValue];
        v16 = v16 + v28;

        v29 = [v0 processMetrics];
        v30 = [v29 objectForKeyedSubscript:v19];
        v31 = [v30 networkCost];
        [v31 doubleValue];
        v15 = v15 + v32;

        v33 = [v0 processMetrics];
        v34 = [v33 objectForKeyedSubscript:v19];
        v35 = [v34 locationCost];
        [v35 doubleValue];
        v14 = v14 + v36;

        v37 = [v0 processMetrics];
        v38 = [v37 objectForKeyedSubscript:v19];
        v39 = [v38 energyCost];
        [v39 doubleValue];
        v13 = v13 + v40;

        v41 = [v0 processMetrics];
        v42 = [v41 objectForKeyedSubscript:v19];
        v43 = [v42 energyOverhead];
        [v43 doubleValue];
        v11 = v11 + v44;
      }

      v10 = [v8 countByEnumeratingWithState:&v73 objects:v99 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
  }

  v97[0] = @"cost";
  v45 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
  v98[0] = v45;
  v97[1] = @"overhead";
  v46 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
  v98[1] = v46;
  v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v98 forKeys:v97 count:2];

  v95[0] = @"cost";
  v47 = [MEMORY[0x1E696AD98] numberWithDouble:v17];
  v95[1] = @"overhead";
  v96[0] = v47;
  v96[1] = &unk_1F38E33B0;
  v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v96 forKeys:v95 count:2];

  v93[0] = @"cost";
  v48 = [MEMORY[0x1E696AD98] numberWithDouble:v16];
  v93[1] = @"overhead";
  v94[0] = v48;
  v94[1] = &unk_1F38E33B0;
  v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v94 forKeys:v93 count:2];

  v91[0] = @"cost";
  v49 = [MEMORY[0x1E696AD98] numberWithDouble:v15];
  v91[1] = @"overhead";
  v92[0] = v49;
  v50 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
  v92[1] = v50;
  v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v92 forKeys:v91 count:2];

  v89[0] = @"cost";
  v51 = [MEMORY[0x1E696AD98] numberWithDouble:v14];
  v89[1] = @"overhead";
  v90[0] = v51;
  v90[1] = &unk_1F38E33B0;
  v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v90 forKeys:v89 count:2];

  v87[0] = @"cost";
  v52 = [MEMORY[0x1E696AD98] numberWithDouble:v6];
  v87[1] = @"overhead";
  v88[0] = v52;
  v88[1] = &unk_1F38E33B0;
  v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v88 forKeys:v87 count:2];

  v85[0] = @"cost";
  v53 = MEMORY[0x1E696AD98];
  v54 = [v0 displayCost];
  [v54 doubleValue];
  v55 = [v53 numberWithDouble:?];
  v85[1] = @"overhead";
  v86[0] = v55;
  v86[1] = &unk_1F38E33B0;
  v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v86 forKeys:v85 count:2];

  if (v6 != 8.0)
  {

    v56 = &unk_1F38E3718;
  }

  v83[0] = @"cost";
  v57 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v0, "thermalPressure")}];
  v83[1] = @"overhead";
  v84[0] = v57;
  v84[1] = &unk_1F38E33B0;
  v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v84 forKeys:v83 count:2];

  v81[0] = @"cost";
  v58 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v0, "inducedThermalPressure")}];
  v81[1] = @"overhead";
  v82[0] = v58;
  v82[1] = &unk_1F38E33B0;
  v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v82 forKeys:v81 count:2];

  v79[0] = &unk_1F38E33C8;
  v79[1] = &unk_1F38E33E0;
  v80[0] = v72;
  v80[1] = v71;
  v79[2] = &unk_1F38E33F8;
  v79[3] = &unk_1F38E3410;
  v80[2] = v70;
  v80[3] = v56;
  v79[4] = &unk_1F38E3428;
  v79[5] = &unk_1F38E3440;
  v80[4] = v68;
  v80[5] = v67;
  v79[6] = &unk_1F38E3458;
  v79[7] = &unk_1F38E3470;
  v80[6] = v66;
  v80[7] = v65;
  v79[8] = &unk_1F38E3488;
  v80[8] = v59;
  v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v80 forKeys:v79 count:9];
  v77 = @"usage_data";
  v78 = v60;
  v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
  v62 = [MEMORY[0x1E696AD98] numberWithInt:pid2monitor];
  [v69 setObject:v61 forKeyedSubscript:v62];

  v63 = *MEMORY[0x1E69E9840];

  return v69;
}

id getContainerPath()
{
  if (getContainerPath_onceToken != -1)
  {
    getContainerPath_cold_1();
  }

  v1 = getContainerPath_containerPath;

  return v1;
}

void __getContainerPath_block_invoke()
{
  v0 = container_create_or_lookup_system_group_paths();
  if (v0)
  {
    v1 = _CFXPCCreateCFObjectFromXPCObject();
    v2 = [v1 objectForKeyedSubscript:@"systemgroup.com.apple.powerlog"];
    v3 = getContainerPath_containerPath;
    getContainerPath_containerPath = v2;
  }
}

id shortUUIDString()
{
  v0 = [MEMORY[0x1E696AFB0] UUID];
  v1 = [v0 UUIDString];

  if ([v1 length] >= 8)
  {
    v2 = [v1 substringFromIndex:{objc_msgSend(v1, "length") - 8}];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id dateFormatter()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"en_US_POSIX"];
  [v0 setDateFormat:@"yyyy-MM-dd_HH-mm"];
  v2 = [MEMORY[0x1E695DFE8] systemTimeZone];
  [v0 setTimeZone:v2];

  v3 = [v1 objectForKey:*MEMORY[0x1E695D958]];
  [v0 setCalendar:v3];

  [v0 setLocale:v1];

  return v0;
}

uint64_t PLMarkFileAsPurgeable(void *a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v10 = a2 | 0x10005;
  v4 = open([v3 UTF8String], 0);
  if (v4 < 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      PLMarkFileAsPurgeable_cold_2();
    }

    goto LABEL_7;
  }

  v5 = v4;
  v6 = ffsctl(v4, 0xC0084A44uLL, &v10, 0);
  close(v5);
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      PLMarkFileAsPurgeable_cold_1(v3, &v10);
    }

LABEL_7:
    v7 = 0;
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v12 = v3;
    v13 = 2048;
    v14 = a2;
    _os_log_impl(&dword_1BACB7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Client Framework -- Marked %@ purgeable with urgency: %llu", buf, 0x16u);
  }

  v7 = 1;
LABEL_11:

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

id PLCopyDB(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = v3;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&dword_1BACB7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Starting copy of dB: %@ to dst: %@\n", buf, 0x16u);
  }

  v5 = objc_opt_new();
  v15 = 0;
  ppDb = 0;
  v6 = sqlite3_open([v4 UTF8String], &ppDb);
  if (v6)
  {
    PLADClientAddValueForScalarKey();
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      PLCopyDB_cold_1();
    }

    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  if (sqlite3_open_v2([v3 UTF8String], &v15, 1, 0))
  {
    v7 = 1;
    PLADClientAddValueForScalarKey();
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      PLCopyDB_cold_2();
      v7 = 1;
    }
  }

  else if (!v6)
  {
    if (sqlite3_file_control(ppDb, 0, 102, v15))
    {
      PLADClientAddValueForScalarKey();
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        PLCopyDB_cold_3();
      }

      v7 = 3;
    }

    else
    {
      v7 = 0;
    }
  }

  sqlite3_exec(ppDb, "pragma journal_mode=delete", 0, 0, 0);
  if (v15)
  {
    sqlite3_close(v15);
  }

  if (ppDb)
  {
    sqlite3_close(ppDb);
  }

  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-shm", v4];
  [v8 removeItemAtPath:v9 error:0];

  if (!v7)
  {
    [v5 setObject:v4 forKey:@"path"];
    v10 = getpwnam("mobile");
    v11 = chown([v4 fileSystemRepresentation], v10->pw_uid, v10->pw_gid);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v18) = v11;
      _os_log_impl(&dword_1BACB7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "PLCopyPowerlog file chown success = %d", buf, 8u);
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BACB7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "PLCopyPowerlog file copy status success", buf, 2u);
    }

    if ([v4 hasPrefix:@"/var/mobile/Library/Logs/CrashReporter/"])
    {
      PLMarkFileAsPurgeable(v4, 512);
    }
  }

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v7];
  [v5 setObject:v12 forKey:@"status"];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v5;
    _os_log_impl(&dword_1BACB7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "PLCopyPowerlog output: %@", buf, 0xCu);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

double PLGetPowerlogDuration(void *a1)
{
  v1 = a1;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ppDb = 0;
  if (!sqlite3_open([v1 UTF8String], &ppDb))
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT MAX(timestamp) - MIN(timestamp) from PLBatteryAgent_EventBackward_Battery"];;
    [v2 UTF8String];
    sqlite3_exec_b();
  }

  if (ppDb)
  {
    sqlite3_close(ppDb);
  }

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void sub_1BACD52E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PLCopyQuarantineDB(void *a1)
{
  v51 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = getContainerPath();
  v3 = [v2 stringByAppendingString:@"/Library/BatteryLife/CurrentPowerlog.PLSQL"];

  v4 = PLGetPowerlogDuration(v3);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v50 = v4;
    _os_log_impl(&dword_1BACB7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "PLCopyPowerlog: main log duration = %f", buf, 0xCu);
  }

  if (v4 >= 21600.0)
  {
    v34 = 0;
    goto LABEL_31;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BACB7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "PLCopyPowerlog: Powerlog is short! Looking in quarantine...", buf, 2u);
  }

  v5 = getContainerPath();
  v6 = [v5 stringByAppendingString:@"/Library/BatteryLife/Quarantine/"];

  v7 = [MEMORY[0x1E695DF00] distantPast];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v41 = v6;
  v9 = [v8 contentsOfDirectoryAtPath:v6 error:0];

  obj = v9;
  v10 = [v9 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (!v10)
  {
    v28 = v7;
    v29 = 0;
    v30 = 0;
    v34 = 0;
LABEL_29:

    goto LABEL_30;
  }

  v11 = v10;
  v37 = v3;
  v38 = v1;
  v39 = 0;
  v40 = 0;
  v12 = *v45;
  v13 = @"PLSQL";
  do
  {
    v14 = 0;
    v42 = v11;
    do
    {
      if (*v45 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v44 + 1) + 8 * v14);
      v16 = [v15 pathExtension];
      v17 = [v16 isEqualToString:v13];

      if (v17)
      {
        v18 = v13;
        v19 = [v41 stringByAppendingString:v15];
        v20 = [MEMORY[0x1E696AC08] defaultManager];
        v21 = [v20 attributesOfItemAtPath:v19 error:0];

        v22 = [v21 fileModificationDate];
        v23 = [v22 laterDate:v7];
        v24 = v7;
        v25 = [v23 isEqualToDate:v22];

        if (v25)
        {
          v26 = v19;

          v27 = v15;
          v7 = v22;

          v39 = v26;
          v40 = v27;
        }

        else
        {
          v7 = v24;
        }

        v13 = v18;
        v11 = v42;
      }

      ++v14;
    }

    while (v11 != v14);
    v11 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
  }

  while (v11);
  v28 = v7;

  v29 = v39;
  if (v39)
  {
    v3 = v37;
    v1 = v38;
    v30 = v40;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v50 = *&v39;
      _os_log_impl(&dword_1BACB7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "PLCopyPowerlog: quarantineSrcPath = %@", buf, 0xCu);
    }

    obj = [v38 stringByAppendingPathComponent:v40];
    v31 = PLCopyDB(v39, obj);
    v32 = [v31 mutableCopy];

    v33 = [v32 objectForKeyedSubscript:@"status"];
    if (v33)
    {

      v34 = 0;
    }

    else
    {
      v34 = [v32 objectForKeyedSubscript:@"path"];

      if (v34)
      {
        v34 = [v32 objectForKeyedSubscript:@"path"];
      }
    }

    goto LABEL_29;
  }

  v34 = 0;
  v3 = v37;
  v1 = v38;
  v30 = v40;
LABEL_30:

LABEL_31:
  v35 = *MEMORY[0x1E69E9840];

  return v34;
}

void *PLCopyPowerlog(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1 || [(__CFString *)v1 isEqualToString:&stru_1F38DE2A8])
  {

    v2 = @"/var/mobile/Library/Logs/CrashReporter/";
  }

  v3 = dateFormatter();
  v4 = [MEMORY[0x1E695DF00] date];
  v5 = [v3 stringFromDate:v4];

  v6 = MEMORY[0x1E696AEC0];
  v7 = shortUUIDString();
  v8 = [v6 stringWithFormat:@"powerlog_%@_%@.PLSQL", v5, v7];

  v9 = getContainerPath();
  v10 = [v9 stringByAppendingString:@"/Library/BatteryLife/CurrentPowerlog.PLSQL"];

  if ([(__CFString *)v2 hasSuffix:@".PLSQL"])
  {
    v11 = v2;
  }

  else
  {
    v11 = [(__CFString *)v2 stringByAppendingPathComponent:v8];
  }

  v12 = v11;
  v13 = PLCopyDB(v10, v11);
  v14 = [v13 mutableCopy];

  v15 = [(__CFString *)v12 stringByDeletingLastPathComponent];
  v16 = PLCopyQuarantineDB(v15);

  if (v16)
  {
    [v14 setObject:v16 forKeyedSubscript:@"quarantine_path"];
  }

  return v14;
}

uint64_t PLResetPowerlog()
{
  v0 = MEMORY[0x1E695DFF8];
  v1 = getContainerPath();
  v2 = [v0 fileURLWithPath:v1];

  if (v2)
  {
    v3 = [MEMORY[0x1E696AC08] defaultManager];
    v9 = 0;
    v4 = [v3 removeItemAtURL:v2 error:&v9];
    v5 = v9;

    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = v4;
    }

    if (v6)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_1BACB7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Performed powerlog reset as requested", v8, 2u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      PLResetPowerlog_cold_1();
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      PLResetPowerlog_cold_2();
    }

    v6 = 0;
  }

  return v6;
}

uint64_t PLCopyExtendedPersistenceLog(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1 || [(__CFString *)v1 isEqualToString:&stru_1F38DE2A8])
  {

    v2 = @"/var/mobile/Library/Logs/CrashReporter/";
  }

  v3 = dateFormatter();
  v4 = [MEMORY[0x1E695DF00] date];
  v5 = [v3 stringFromDate:v4];

  v6 = MEMORY[0x1E696AEC0];
  v7 = shortUUIDString();
  v8 = [v6 stringWithFormat:@"log_%@_%@.EPSQL", v5, v7];

  v9 = getContainerPath();
  v10 = [v9 stringByAppendingString:@"/Library/PerfPowerTelemetry/ExtendedPersistence/CurrentLog.EPSQL"];

  if ([(__CFString *)v2 hasSuffix:@".EPSQL"])
  {
    v11 = v2;
  }

  else
  {
    v11 = [(__CFString *)v2 stringByAppendingPathComponent:v8];
  }

  v12 = v11;
  v13 = PLCopyDB(v10, v11);

  return v13;
}

uint64_t PLCopyCleanEnergyLog(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1 || [(__CFString *)v1 isEqualToString:&stru_1F38DE2A8])
  {

    v2 = @"/var/mobile/Library/Logs/CrashReporter/";
  }

  v3 = dateFormatter();
  v4 = [MEMORY[0x1E695DF00] date];
  v5 = [v3 stringFromDate:v4];

  v6 = MEMORY[0x1E696AEC0];
  v7 = shortUUIDString();
  v8 = [v6 stringWithFormat:@"log_%@_%@.CESQL", v5, v7];

  v9 = getContainerPath();
  v10 = [v9 stringByAppendingString:@"/Library/PerfPowerTelemetry/CleanEnergy/CurrentCleanEnergyDB.CESQL"];

  if ([(__CFString *)v2 hasSuffix:@".CESQL"])
  {
    v11 = v2;
  }

  else
  {
    v11 = [(__CFString *)v2 stringByAppendingPathComponent:v8];
  }

  v12 = v11;
  v13 = PLCopyDB(v10, v11);

  return v13;
}

uint64_t PLCopyXcodeOrganizerLog(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1 || [(__CFString *)v1 isEqualToString:&stru_1F38DE2A8])
  {

    v2 = @"/var/mobile/Library/Logs/CrashReporter/";
  }

  v3 = dateFormatter();
  v4 = [MEMORY[0x1E695DF00] date];
  v5 = [v3 stringFromDate:v4];

  v6 = MEMORY[0x1E696AEC0];
  v7 = shortUUIDString();
  v8 = [v6 stringWithFormat:@"log_%@_%@.XCSQL", v5, v7];

  v9 = getContainerPath();
  v10 = [v9 stringByAppendingString:@"/Library/PerfPowerTelemetry/XcodeOrganizer/CurrentXcodeOrganizerDB.XCSQL"];

  if ([(__CFString *)v2 hasSuffix:@".XCSQL"])
  {
    v11 = v2;
  }

  else
  {
    v11 = [(__CFString *)v2 stringByAppendingPathComponent:v8];
  }

  v12 = v11;
  v13 = PLCopyDB(v10, v11);

  return v13;
}

uint64_t dropTable(void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  errmsg = 0;
  ppDb = 0;
  if (sqlite3_open_v2([v3 UTF8String], &ppDb, 2, 0))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      dropTable_cold_1();
    }

    goto LABEL_15;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BACB7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Configure the page cache", buf, 2u);
  }

  if (!sqlite3_exec(ppDb, "PRAGMA cache_size = 50;", 0, 0, &errmsg))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BACB7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Configure the cache_spill", buf, 2u);
    }

    if (sqlite3_exec(ppDb, "PRAGMA cache_spill = 256;", 0, 0, &errmsg))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        dropTable_cold_3(&errmsg);
      }

      goto LABEL_14;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v4;
      _os_log_impl(&dword_1BACB7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Drop %@", buf, 0xCu);
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DROP TABLE '%@'", v4];;
    if (sqlite3_exec(ppDb, [v8 UTF8String], 0, 0, &errmsg))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        dropTable_cold_4(v4, &errmsg);
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BACB7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Vacuum", buf, 2u);
      }

      if (!sqlite3_exec(ppDb, [@"PRAGMA incremental_vacuum;" UTF8String], 0, 0, &errmsg))
      {
        v5 = 1;
        goto LABEL_28;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        dropTable_cold_5(&errmsg);
      }
    }

    sqlite3_free(errmsg);
    v5 = 0;
LABEL_28:
    sqlite3_close(ppDb);

    goto LABEL_16;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    dropTable_cold_2(&errmsg);
  }

LABEL_14:
  sqlite3_free(errmsg);
  sqlite3_close(ppDb);
LABEL_15:
  v5 = 0;
LABEL_16:

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

void *PLSysdiagnoseCopyBackgroundProcessingLog(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = PLCopyBackgroundProcessingLog(a1);
  v2 = [v1 mutableCopy];
  v3 = [v2 objectForKeyedSubscript:@"status"];
  v4 = [v3 intValue];

  if (!v4)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v6 = [v2 objectForKeyedSubscript:@"path"];
    if (dropTable(v6, @"BackgroundProcessing_DASActivityLifecycle_24_5"))
    {
      v7 = dropTable(v6, @"BackgroundProcessing_DASPoliciesBlockingCriteria_24_5");
    }

    else
    {
      v7 = 0;
    }

    v8 = CFAbsoluteTimeGetCurrent();
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 67109376;
      v11[1] = v7;
      v12 = 2048;
      v13 = v8 - Current;
      _os_log_impl(&dword_1BACB7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "BGSQL DROP Success: %d Execution Time: %f", v11, 0x12u);
    }

    if ((v7 & 1) == 0)
    {
      [v2 setObject:&unk_1F38E34A0 forKeyedSubscript:@"status"];
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t PLCopyBackgroundProcessingLog(void *a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1 || [(__CFString *)v1 isEqualToString:&stru_1F38DE2A8])
  {

    v2 = @"/var/mobile/Library/Logs/CrashReporter/";
  }

  v3 = dateFormatter();
  v4 = [MEMORY[0x1E695DF00] date];
  v25 = v3;
  v5 = [v3 stringFromDate:v4];

  v6 = MEMORY[0x1E696AEC0];
  v7 = shortUUIDString();
  v8 = [v6 stringWithFormat:@"log_%@_%@.BGSQL", v5, v7];

  v9 = getContainerPath();
  v10 = [v9 stringByAppendingString:@"/Library/PerfPowerTelemetry/BackgroundProcessing/CurrentBackgroundProcessingDB.BGSQL"];

  if ([(__CFString *)v2 hasSuffix:@".BGSQL"])
  {
    v11 = v2;
  }

  else
  {
    v11 = [(__CFString *)v2 stringByAppendingPathComponent:v8];
  }

  v12 = v11;
  v24 = PLCopyDB(v10, v11);
  v13 = [MEMORY[0x1E695DF00] date];
  [v13 timeIntervalSince1970];
  v15 = v14;

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v31 = v15;
    _os_log_impl(&dword_1BACB7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "The epoch time for BGSQL copy log is %f", buf, 0xCu);
  }

  v28[0] = @"TaskEndTime";
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:v15];
  v28[1] = @"Reason";
  v29[0] = v16;
  v29[1] = &unk_1F38E34B8;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v31 = *&v17;
    _os_log_impl(&dword_1BACB7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "The payload for BGSQL copy log is %@", buf, 0xCu);
  }

  errmsg = 0;
  ppDb = 0;
  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@_%@_%@", @"BackgroundProcessing", @"TimeOfCaptureEvent", @"1", @"5"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    PLCopyBackgroundProcessingLog_cold_1();
  }

  if (sqlite3_open_v2([(__CFString *)v12 UTF8String], &ppDb, 2, 0))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      PLCopyBackgroundProcessingLog_cold_2();
    }
  }

  else
  {
    v19 = MEMORY[0x1E696AEC0];
    v20 = [MEMORY[0x1E696AD98] numberWithDouble:v15];
    v21 = [v19 stringWithFormat:@"INSERT INTO %@ (TaskEndTime, Reason) VALUES ('%@', '%@')", v18, v20, &unk_1F38E34B8];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v31 = *&v21;
      _os_log_impl(&dword_1BACB7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "For BGSQL copy log, the insert Query is %@", buf, 0xCu);
    }

    if (sqlite3_exec(ppDb, [v21 UTF8String], 0, 0, &errmsg) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      PLCopyBackgroundProcessingLog_cold_3();
    }
  }

  if (errmsg)
  {
    sqlite3_free(errmsg);
  }

  if (ppDb)
  {
    sqlite3_close(ppDb);
  }

  v22 = *MEMORY[0x1E69E9840];
  return v24;
}

void handleXPCEvent(void *a1, uint64_t a2, char a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (([v5 isEqualToString:@"ThermalMonitor"] & 1) != 0 || (Current = 0.0, objc_msgSend(v5, "isEqualToString:", @"XPCCacheFlush")))
  {
    Current = CFAbsoluteTimeGetCurrent();
  }

  v7 = dispatch_queue_create([v5 UTF8String], 0);
  v8 = dispatch_semaphore_create(0);
  v9 = dispatch_time(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __handleXPCEvent_block_invoke;
  block[3] = &unk_1E7F18D80;
  v10 = v5;
  v24 = v10;
  v26 = a3;
  v11 = v8;
  v25 = v11;
  dispatch_after(v9, v7, block);
  v12 = dispatch_time(0, 1000000000 * a2);
  v13 = dispatch_semaphore_wait(v11, v12);
  if (v13)
  {
    v14 = v13;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = v10;
      v29 = 2048;
      v30 = v14;
      _os_log_impl(&dword_1BACB7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ semaphore timeout %lu", buf, 0x16u);
    }
  }

  if (([v10 isEqualToString:@"ThermalMonitor"] & 1) != 0 || (v15 = 0.0, objc_msgSend(v10, "isEqualToString:", @"XPCCacheFlush")))
  {
    v15 = CFAbsoluteTimeGetCurrent();
  }

  v16 = [MEMORY[0x1E695DF90] dictionary];
  if ([v10 isEqualToString:@"ThermalMonitor"])
  {
    v18 = @"collectLogsTime";
LABEL_14:
    v19 = v15 - Current;
    LODWORD(v17) = vcvtps_s32_f32(v19 * 1000.0);
    v20 = [MEMORY[0x1E696AD98] numberWithInt:v17];
    [v16 setObject:v20 forKeyedSubscript:v18];

    goto LABEL_15;
  }

  if ([v10 isEqualToString:@"XPCCacheFlush"])
  {
    v18 = @"flushCacheTime";
    goto LABEL_14;
  }

LABEL_15:
  if (([v10 isEqualToString:@"ThermalMonitor"] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"XPCCacheFlush"))
  {
    v22 = v16;
    AnalyticsSendEventLazy();
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __handleXPCEvent_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = PLQueryRegistered(1, *(a1 + 32), MEMORY[0x1E695E0F8]);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v2;
    _os_log_impl(&dword_1BACB7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ result: %@", &v5, 0x16u);
  }

  if (*(a1 + 48) == 1)
  {
    dispatch_semaphore_signal(*(a1 + 40));
  }

  v4 = *MEMORY[0x1E69E9840];
}

void *PLSysdiagnoseCopyPowerlog(void *a1, unint64_t a2)
{
  v3 = a2 >> 2;
  handleXPCEvent(@"ThermalMonitor", a2 >> 2, 0);
  handleXPCEvent(@"XPCCacheFlush", v3, 1);
  Current = CFAbsoluteTimeGetCurrent();
  v5 = PLCopyPowerlog(a1);
  v6 = CFAbsoluteTimeGetCurrent() - Current;
  LODWORD(v3) = vcvtps_s32_f32(v6 * 1000.0);
  v7 = [MEMORY[0x1E695DF90] dictionary];
  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [v7 setObject:v8 forKeyedSubscript:@"copyPowerlogTime"];

  v9 = v7;
  AnalyticsSendEventLazy();

  return v5;
}

uint64_t PLSysdiagnoseCopyLogs(void *a1, unint64_t a2, const __CFArray *a3)
{
  v55 = *MEMORY[0x1E69E9840];
  v5 = a2 >> 2;
  handleXPCEvent(@"ThermalMonitor", a2 >> 2, 0);
  handleXPCEvent(@"XPCCacheFlush", v5, 1);
  if (a3 && CFArrayGetCount(a3) && CFArrayGetCount(a3))
  {
    v7 = 0;
    v39 = 0;
    v38 = *MEMORY[0x1E696A3B8];
    v8 = MEMORY[0x1E69E9C10];
    *&v6 = 138412546;
    v37 = v6;
    while (1)
    {
      valuePtr = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(a3, v7);
      v10 = CFGetTypeID(ValueAtIndex);
      if (v10 != CFNumberGetTypeID())
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          PLSysdiagnoseCopyLogs_cold_1(&v49, v7, &v50);
        }

        goto LABEL_29;
      }

      CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr);
      v11 = valuePtr;
      if (valuePtr < 5)
      {
        Current = CFAbsoluteTimeGetCurrent();
        if (v11 <= 1)
        {
          if (v11)
          {
            v13 = PLSysdiagnoseCopyExtendedPersistenceLog(a1);
            v14 = @"EPSQL";
          }

          else
          {
            v13 = PLCopyPowerlog(a1);
            v14 = @"PLSQL";
          }

          goto LABEL_19;
        }

        if (v11 == 2)
        {
          v13 = PLCopyCleanEnergyLog(a1);
          v14 = @"CESQL";
LABEL_19:
          v15 = CFAbsoluteTimeGetCurrent() - Current;
          LODWORD(v3) = vcvtps_s32_f32(v15 * 1000.0);
          Value = CFDictionaryGetValue(v13, @"status");
          if (Value && (v17 = Value, v18 = CFGetTypeID(Value), v18 == CFNumberGetTypeID()) && (*buf = 0, CFNumberGetValue(v17, kCFNumberIntType, buf)) && !*buf)
          {
            v28 = CFDictionaryGetValue(v13, @"path");
            v29 = MEMORY[0x1E696AC08];
            v30 = v28;
            v31 = [v29 defaultManager];
            v32 = [v31 attributesOfItemAtPath:v30 error:0];

            v19 = -1.0;
            if (v32)
            {
              v33 = [v32 objectForKeyedSubscript:v38];

              if (v33)
              {
                v34 = [v32 objectForKeyedSubscript:v38];
                v19 = vcvts_n_f32_s64([v34 longLongValue], 0x14uLL);
              }
            }

            v39 = 1;
            v20 = 1;
          }

          else
          {
            v19 = 0.0;
            if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
            {
              *buf = v37;
              v52 = v14;
              v53 = 1024;
              v54 = v3;
              _os_log_error_impl(&dword_1BACB7000, v8, OS_LOG_TYPE_ERROR, "Copying %@ data failed, time taken = %d", buf, 0x12u);
            }

            v20 = 0;
          }

          v21 = [MEMORY[0x1E695DF90] dictionary];
          [(__CFString *)v21 setObject:v14 forKeyedSubscript:@"name"];
          v22 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v20];
          [(__CFString *)v21 setObject:v22 forKeyedSubscript:@"status"];

          *&v23 = v19;
          v24 = [MEMORY[0x1E696AD98] numberWithFloat:v23];
          [(__CFString *)v21 setObject:v24 forKeyedSubscript:@"size"];

          v25 = [MEMORY[0x1E696AD98] numberWithInt:v3];
          [(__CFString *)v21 setObject:v25 forKeyedSubscript:@"copyingTime"];

          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v52 = v21;
            _os_log_impl(&dword_1BACB7000, v8, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
          }

          v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v11];
          [(__CFString *)v21 setObject:v26 forKeyedSubscript:@"name"];

          v42 = MEMORY[0x1E69E9820];
          v43 = 3221225472;
          v44 = __copyLogAndUpdateSuccess_block_invoke;
          v45 = &unk_1E7F18DA8;
          v46 = v21;
          v27 = v21;
          AnalyticsSendEventLazy();
          CFRelease(v13);

          goto LABEL_29;
        }

        if (v11 != 3)
        {
          v13 = PLSysdiagnoseCopyBackgroundProcessingLog(a1);
          v14 = @"BGSQL";
          goto LABEL_19;
        }
      }

      else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        PLSysdiagnoseCopyLogs_cold_1(&v47, v7, &v48);
      }

LABEL_29:
      if (++v7 >= CFArrayGetCount(a3))
      {
        goto LABEL_36;
      }
    }
  }

  v39 = 0;
LABEL_36:
  v35 = *MEMORY[0x1E69E9840];
  return v39;
}

void PLSysdiagnoseTimeSensitivePhase()
{
  if (PLSysdiagnoseTimeSensitivePhase_onceToken != -1)
  {
    PLSysdiagnoseTimeSensitivePhase_cold_1();
  }

  if (PLSysdiagnoseTimeSensitivePhase_hasBaseband == 1)
  {
    handleXPCEvent(@"BBLogsForSysdiagnose", 1, 0);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v0 = 0;
      _os_log_impl(&dword_1BACB7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "PLSysdiagnoseTimeSensitivePhase returned", v0, 2u);
    }
  }
}

void __PLSysdiagnoseTimeSensitivePhase_block_invoke()
{
  v0 = MGCopyAnswer();
  PLSysdiagnoseTimeSensitivePhase_hasBaseband = CFBooleanGetValue(v0) != 0;

  CFRelease(v0);
}

uint64_t copyFiles(void *a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  [MEMORY[0x1E696AC08] defaultManager];
  v24 = v31 = 0;
  v25 = v3;
  v5 = [v24 contentsOfDirectoryAtPath:v3 error:&v31];
  v6 = v31;
  v7 = v4;
  v8 = [v4 hasPrefix:@"/var/mobile/Library/Logs/CrashReporter/"];
  if (v5)
  {
    v9 = v8;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = v5;
    v10 = [obj countByEnumeratingWithState:&v27 objects:v36 count:16];
    if (v10)
    {
      v11 = v10;
      v22 = v5;
      v12 = *v28;
      while (2)
      {
        v13 = 0;
        v14 = v6;
        do
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v27 + 1) + 8 * v13);
          v16 = [v25 stringByAppendingPathComponent:v15];
          v17 = [v7 stringByAppendingPathComponent:v15];
          v26 = v14;
          v18 = [v24 copyItemAtPath:v16 toPath:v17 error:&v26];
          v6 = v26;

          if ((v18 & 1) == 0)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v33 = v25;
              v34 = 2112;
              v35 = v6;
              _os_log_impl(&dword_1BACB7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Error copying for srcDir %@ : %@", buf, 0x16u);
            }

            v19 = 0;
            goto LABEL_16;
          }

          if (v9)
          {
            PLMarkFileAsPurgeable(v17, 512);
          }

          ++v13;
          v14 = v6;
        }

        while (v11 != v13);
        v11 = [obj countByEnumeratingWithState:&v27 objects:v36 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

      v19 = 1;
LABEL_16:
      v5 = v22;
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 1;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

void copyArchivesToCrashMover()
{
  v0 = getContainerPath();
  v1 = [v0 stringByAppendingString:@"/Library/BatteryLife/Archives/"];

  if ((copyFiles(v1, @"/var/mobile/Library/Logs/CrashReporter/") & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1BACB7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Archive copying failed", v2, 2u);
  }
}

void copyQuarantinesToCrashMover()
{
  v0 = getContainerPath();
  v1 = [v0 stringByAppendingString:@"/Library/BatteryLife/Quarantine/"];

  if ((copyFiles(v1, @"/var/mobile/Library/Logs/CrashReporter/") & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1BACB7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Quarantine copying failed", v2, 2u);
  }
}

void copyUpgradeLogsToCrashMover()
{
  v43 = *MEMORY[0x1E69E9840];
  v0 = getContainerPath();
  v1 = [v0 stringByAppendingString:@"/Library/BatteryLife/UpgradeLogs/MajorVersion"];

  v2 = getContainerPath();
  v3 = [v2 stringByAppendingString:@"/Library/BatteryLife/UpgradeLogs/MinorVersion"];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v28 = 0;
  v5 = [v4 contentsOfDirectoryAtPath:v1 error:&v28];
  v22 = v28;

  v6 = [v5 countByEnumeratingWithState:&v29 objects:v42 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    v9 = MEMORY[0x1E69E9C10];
    do
    {
      v10 = 0;
      do
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [v1 stringByAppendingPathComponent:*(*(&v29 + 1) + 8 * v10)];
        if (copyFiles(v11, @"/var/mobile/Library/Logs/CrashReporter/"))
        {
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            copyUpgradeLogsToCrashMover_cold_2(&v40, v11, &v41);
          }
        }

        else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          copyUpgradeLogsToCrashMover_cold_1(&v38, v11, &v39);
        }

        ++v10;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v29 objects:v42 count:16];
    }

    while (v7);
  }

  if (v22 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    copyUpgradeLogsToCrashMover_cold_3();
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = [MEMORY[0x1E696AC08] defaultManager];
  v23 = v22;
  v13 = [v12 contentsOfDirectoryAtPath:v3 error:&v23];
  v21 = v23;

  v14 = [v13 countByEnumeratingWithState:&v24 objects:v37 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    v17 = MEMORY[0x1E69E9C10];
    do
    {
      v18 = 0;
      do
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v19 = [v3 stringByAppendingPathComponent:*(*(&v24 + 1) + 8 * v18)];
        if (copyFiles(v19, @"/var/mobile/Library/Logs/CrashReporter/"))
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            copyUpgradeLogsToCrashMover_cold_5(&v35, v19, &v36);
          }
        }

        else if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          copyUpgradeLogsToCrashMover_cold_4(&v33, v19, &v34);
        }

        ++v18;
      }

      while (v15 != v18);
      v15 = [v13 countByEnumeratingWithState:&v24 objects:v37 count:16];
    }

    while (v15);
  }

  if (v21 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    copyUpgradeLogsToCrashMover_cold_6();
  }

  v20 = *MEMORY[0x1E69E9840];
}

void PLCrashMoverCopyPowerlog()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695E8A0];
  v1 = *MEMORY[0x1E695E8B0];
  getContainerPath();
  v2 = _CFPreferencesCopyValueWithContainer();
  if ([v2 intValue] == 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v5) = 0;
      _os_log_impl(&dword_1BACB7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "PLCrashMoverCopyPowerlog starts cache flush", &v5, 2u);
    }

    handleXPCEvent(@"XPCCacheFlush", 1000000000, 1);
    v3 = PLCopyPowerlog(@"/var/mobile/Library/Logs/CrashReporter/");
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_1BACB7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "PLCrashMoverCopyPowerlog done copying powerlog : %@", &v5, 0xCu);
    }

    CFRelease(v3);
    copyArchivesToCrashMover();
    copyQuarantinesToCrashMover();
    if (_os_feature_enabled_impl())
    {
      copyUpgradeLogsToCrashMover();
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

BOOL PLSysdiagnoseCopyBatteryUILogs(void *a1, CFErrorRef *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = PLCopyBatteryUIPlists(@"Sysdiagnose", v3);
  if (!v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to copy files to %@", v3];
    v9 = *MEMORY[0x1E696A578];
    v10[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    if (a2)
    {
      *a2 = CFErrorCreate(0, @"com.apple.powerlog", 1, v6);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

void *PLSysdiagnoseCopyExtendedPersistenceLog(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = PLCopyExtendedPersistenceLog(a1);
  v2 = [v1 mutableCopy];
  v3 = [v2 objectForKeyedSubscript:@"status"];
  v4 = [v3 intValue];

  if (!v4)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v6 = [v2 objectForKeyedSubscript:@"path"];
    v7 = dropTable(v6, @"BatteryDataCollection_BDC_AMA_30_1");
    v8 = CFAbsoluteTimeGetCurrent();
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 67109376;
      v11[1] = v7;
      v12 = 2048;
      v13 = v8 - Current;
      _os_log_impl(&dword_1BACB7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "EPSQL DROP Success: %d Execution Time: %f", v11, 0x12u);
    }

    if ((v7 & 1) == 0)
    {
      [v2 setObject:&unk_1F38E34A0 forKeyedSubscript:@"status"];
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v2;
}

float *OUTLINED_FUNCTION_1_0(float *result, uint64_t a2, void *a3, float a4)
{
  *result = a4;
  *a3 = a2;
  return result;
}

void OUTLINED_FUNCTION_3_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

id PLConfigureBUIQueryiOS()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __PLConfigureBUIQueryiOS_block_invoke;
  v25[3] = &unk_1E7F18DE0;
  v1 = v0;
  v26 = v1;
  v2 = MEMORY[0x1BFB01020](v25);
  v3 = PLCalculateEndOfHour();
  v4 = PLCalculateEndOfDay();
  v5 = PLBatteryUsageUIConfiguration(1, v3, 86400.0, 86400.0);
  (v2)[2](v2, v5);

  v6 = PLBatteryUsageUIConfiguration(4, v3, 86400.0, 900.0);
  (v2)[2](v2, v6);

  v7 = PLBatteryUsageUIConfiguration(2, v4, 864000.0, 86400.0);
  (v2)[2](v2, v7);

  v8 = PLBatteryUsageUIConfiguration(101, v3, 86400.0, 86400.0);
  (v2)[2](v2, v8);

  v9 = PLBatteryUsageUIConfiguration(101, v3, 86400.0, 3600.0);
  (v2)[2](v2, v9);

  v10 = PLBatteryUsageUIConfiguration(101, v4, 864000.0, 864000.0);
  (v2)[2](v2, v10);

  v11 = PLBatteryUsageUIConfiguration(101, v4, 864000.0, 86400.0);
  (v2)[2](v2, v11);

  v12 = PLBatteryUsageUIConfiguration(5, v3, 86400.0, 3600.0);
  (v2)[2](v2, v12);

  v13 = PLBatteryUsageUIConfiguration(5, v4, 864000.0, 86400.0);
  (v2)[2](v2, v13);

  v14 = PLBatteryUsageUIConfiguration(8, v3, 86400.0, 86400.0);
  (v2)[2](v2, v14);

  v15 = PLBatteryUsageUIConfiguration(9, v3, 86400.0, 86400.0);
  (v2)[2](v2, v15);

  v16 = PLBatteryUsageUIConfiguration(10, v3, 86400.0, 86400.0);
  (v2)[2](v2, v16);

  v17 = PLBatteryUsageUIConfiguration(11, v3, 86400.0, 86400.0);
  (v2)[2](v2, v17);

  if (_os_feature_enabled_impl())
  {
    v18 = PLBatteryUsageUIConfiguration(12, v3, 86400.0, 86400.0);
    (v2)[2](v2, v18);
  }

  if (_os_feature_enabled_impl())
  {
    v19 = PLBatteryUsageUIConfiguration(6, v3, 86400.0, 86400.0);
    (v2)[2](v2, v19);
  }

  if (_os_feature_enabled_impl())
  {
    v20 = 7;
  }

  else
  {
    v20 = 0;
  }

  v21 = PLBatteryUsageUIConfiguration(v20, v3, 86400.0, 86400.0);
  (v2)[2](v2, v21);

  v22 = PLBatteryUsageUIConfiguration(14, v3, 86400.0, 86400.0);
  (v2)[2](v2, v22);

  v23 = v1;
  return v1;
}

void __PLConfigureBUIQueryiOS_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = PLBatteryUsageUIKeyForRequest(v3);
  [v2 setObject:v3 forKeyedSubscript:v4];
}

id PLBatteryUsageUIKeyForRequest(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"enum"];
  v3 = PLBatteryUsageUIStringForResponseType([v2 intValue]);

  v4 = PLBatteryUsageUIKeyFromConfiguration(v1);
  if (v4)
  {
    v5 = [v1 objectForKeyedSubscript:@"isDynamicEnd"];
    v6 = [v5 BOOLValue];

    if (v6)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@_%@", v3, v4, @"dynamic"];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", v3, v4, v9];
    }
    v7 = ;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id PLCalculateEndOfHour()
{
  v0 = [MEMORY[0x1E695DF00] date];
  v1 = PLCalculateEndOfHourWithDate(v0);

  return v1;
}

id PLCalculateEndOfDay()
{
  v0 = [MEMORY[0x1E695DF00] date];
  v1 = PLCalculateEndOfDayWithDate(v0);

  return v1;
}

id PLBatteryUsageUIConfiguration(uint64_t a1, void *a2, double a3, double a4)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v6 = -a3;
  v7 = a2;
  v8 = [v7 dateByAddingTimeInterval:v6];
  v20[0] = @"start";
  v9 = MEMORY[0x1E696AD98];
  [v8 timeIntervalSince1970];
  v10 = [v9 numberWithDouble:?];
  v21[0] = v10;
  v20[1] = @"end";
  v11 = MEMORY[0x1E696AD98];
  [v7 timeIntervalSince1970];
  v13 = v12;

  v14 = [v11 numberWithDouble:v13];
  v21[1] = v14;
  v20[2] = @"bucket";
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
  v21[2] = v15;
  v20[3] = @"enum";
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
  v21[3] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:4];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

id PLConfigureBUIQueryWithRangeType(int a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __PLConfigureBUIQueryWithRangeType_block_invoke;
  v22[3] = &unk_1E7F18DE0;
  v3 = v2;
  v23 = v3;
  v4 = MEMORY[0x1BFB01020](v22);
  v5 = PLCalculateEndOfHour();
  v6 = PLCalculateEndOfDay();
  v7 = v6;
  if (a1)
  {
    v8 = 86400.0;
    v9 = v6;
    if (a1 == 2)
    {
      v8 = 864000.0;
      v9 = v6;
    }
  }

  else
  {
    v9 = v5;

    v8 = 10800.0;
  }

  v10 = PLBatteryUsageUIConfiguration(101, v9, v8, v8);
  (v4)[2](v4, v10);

  v11 = PLBatteryUsageUIConfiguration(8, v5, 86400.0, 86400.0);
  (v4)[2](v4, v11);

  v12 = PLBatteryUsageUIConfiguration(9, v5, 86400.0, 86400.0);
  (v4)[2](v4, v12);

  v13 = PLBatteryUsageUIConfiguration(10, v5, 86400.0, 86400.0);
  (v4)[2](v4, v13);

  v14 = PLBatteryUsageUIConfiguration(11, v5, 86400.0, 86400.0);
  (v4)[2](v4, v14);

  if (_os_feature_enabled_impl())
  {
    v15 = PLBatteryUsageUIConfiguration(12, v5, 86400.0, 86400.0);
    (v4)[2](v4, v15);
  }

  if (_os_feature_enabled_impl())
  {
    v16 = PLBatteryUsageUIConfiguration(6, v5, 86400.0, 86400.0);
    (v4)[2](v4, v16);
  }

  if (_os_feature_enabled_impl())
  {
    v17 = 7;
  }

  else
  {
    v17 = 0;
  }

  v18 = PLBatteryUsageUIConfiguration(v17, v5, 86400.0, 86400.0);
  (v4)[2](v4, v18);

  v19 = PLBatteryUsageUIConfiguration(14, v5, 86400.0, 86400.0);
  (v4)[2](v4, v19);

  v20 = v3;
  return v3;
}

void __PLConfigureBUIQueryWithRangeType_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = PLBatteryUsageUIKeyForRequest(v3);
  [v2 setObject:v3 forKeyedSubscript:v4];
}

id PLConfigureBUIQueryNoteworthyInformation()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __PLConfigureBUIQueryNoteworthyInformation_block_invoke;
  v13[3] = &unk_1E7F18DE0;
  v1 = v0;
  v14 = v1;
  v2 = MEMORY[0x1BFB01020](v13);
  v3 = PLCalculateEndOfHour();
  v4 = PLCalculateEndOfDay();
  v5 = PLBatteryUsageUIConfiguration(2, v4, 864000.0, 86400.0);
  (v2)[2](v2, v5);

  v6 = PLBatteryUsageUIConfiguration(101, v3, 86400.0, 86400.0);
  (v2)[2](v2, v6);

  v7 = PLBatteryUsageUIConfiguration(9, v3, 86400.0, 86400.0);
  (v2)[2](v2, v7);

  v8 = PLBatteryUsageUIConfiguration(10, v3, 86400.0, 86400.0);
  (v2)[2](v2, v8);

  v9 = PLBatteryUsageUIConfiguration(11, v3, 86400.0, 86400.0);
  (v2)[2](v2, v9);

  v10 = PLBatteryUsageUIConfiguration(15, v3, 86400.0, 86400.0);
  (v2)[2](v2, v10);

  v11 = v1;
  return v1;
}

void __PLConfigureBUIQueryNoteworthyInformation_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = PLBatteryUsageUIKeyForRequest(v3);
  [v2 setObject:v3 forKeyedSubscript:v4];
}

id PLConfigureBUIQueryInsightsAndSuggestionsSummary()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __PLConfigureBUIQueryInsightsAndSuggestionsSummary_block_invoke;
  v12[3] = &unk_1E7F18DE0;
  v1 = v0;
  v13 = v1;
  v2 = MEMORY[0x1BFB01020](v12);
  v3 = PLCalculateEndOfHour();
  v4 = PLBatteryUsageUIConfiguration(101, v3, 86400.0, 86400.0);
  (v2)[2](v2, v4);

  v5 = PLBatteryUsageUIConfiguration(9, v3, 86400.0, 86400.0);
  (v2)[2](v2, v5);

  v6 = PLBatteryUsageUIConfiguration(10, v3, 86400.0, 86400.0);
  (v2)[2](v2, v6);

  v7 = PLBatteryUsageUIConfiguration(11, v3, 86400.0, 86400.0);
  (v2)[2](v2, v7);

  v8 = PLBatteryUsageUIConfiguration(8, v3, 86400.0, 86400.0);
  (v2)[2](v2, v8);

  v9 = PLBatteryUsageUIConfiguration(16, v3, 86400.0, 86400.0);
  (v2)[2](v2, v9);

  v10 = v1;
  return v1;
}

void __PLConfigureBUIQueryInsightsAndSuggestionsSummary_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = PLBatteryUsageUIKeyForRequest(v3);
  [v2 setObject:v3 forKeyedSubscript:v4];
}

id PLRunBUIQueryWithRangeType(int a1)
{
  v1 = PLConfigureBUIQueryWithRangeType(a1);
  v2 = PLQueryRegistered(50, @"BatteryQueryForResponderService", v1);

  return v2;
}

id PLRunBUIQuery(void *a1)
{
  v1 = a1;
  if (_os_feature_enabled_impl())
  {
    v2 = logHandle_1();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      PLRunBUIQuery_cold_1(v2);
    }

    v3 = @"BatteryQueryForResponderService";
  }

  else
  {
    v3 = @"PLBatteryUIQueryFunctionKey";
  }

  v4 = PLQueryRegistered(50, v3, v1);

  return v4;
}

BOOL PLGenerateBatteryUIPlist(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = PLConfigureBUIQueryiOS();
  [v2 setObject:v1 forKeyedSubscript:@"requestingService"];

  v3 = PLRunBUIQuery(v2);
  v4 = logHandle_1();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412546;
      v9 = v2;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_1BACB7000, v5, OS_LOG_TYPE_DEFAULT, "Successfully generated plist with configuration %@ and result %@", &v8, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    PLGenerateBatteryUIPlist_cold_1(v5);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v3 != 0;
}

BOOL PLCopyBatteryUIPlists(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = a1;
  v5 = PLConfigureBUIQueryiOS();
  [v5 setObject:v4 forKeyedSubscript:@"requestingService"];

  [v5 setObject:v3 forKeyedSubscript:@"plistCopyDestination"];
  v6 = PLRunBUIQuery(v5);
  v7 = logHandle_1();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_1BACB7000, v8, OS_LOG_TYPE_DEFAULT, "Performed successful query and copy with configuration %@ and result %@", &v11, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    PLCopyBatteryUIPlists_cold_1();
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6 != 0;
}

id PLBatteryBreakdownResponseTypes()
{
  if (PLBatteryBreakdownResponseTypes_onceToken != -1)
  {
    PLBatteryBreakdownResponseTypes_cold_1();
  }

  v1 = PLBatteryBreakdownResponseTypes_breakdownTypes;

  return v1;
}

void __PLBatteryBreakdownResponseTypes_block_invoke()
{
  v0 = PLBatteryBreakdownResponseTypes_breakdownTypes;
  PLBatteryBreakdownResponseTypes_breakdownTypes = &unk_1F38E3650;
}

__CFString *PLBatteryUsageUIStringForResponseType(uint64_t a1)
{
  v4 = @"ChargingIntervals";
  switch(a1)
  {
    case 0:
      goto LABEL_28;
    case 1:
      v4 = @"LastChargeLevel";

      break;
    case 2:
      v4 = @"UISOCDrain";

      break;
    case 3:
      v4 = @"IOSUISOCDrain";

      break;
    case 4:
      v4 = @"UISOCLevel";

      break;
    case 5:
      v4 = @"UsageTimes";

      break;
    case 6:
      v4 = @"PausedChargingState";

      break;
    case 7:
      v4 = @"ChargingStateIntervals";

      break;
    case 8:
      v4 = @"RecentUsageInsight";

      break;
    case 9:
      v4 = @"AutoLockSuggestion";

      break;
    case 10:
      v4 = @"AutoBrightnessSuggestion";

      break;
    case 11:
      v4 = @"ReduceBrightnessSuggestion";

      break;
    case 12:
      v4 = @"BackgroundCPUInsight";

      break;
    case 13:
      v4 = @"DrainSummary";

      break;
    case 14:
      v4 = @"DeviceSetupInsight";

      break;
    case 15:
      v4 = @"NoteworthyInformation";

      break;
    default:
      if ((a1 - 101) >= 5)
      {
        v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown_%lu", a1];
LABEL_28:
      }

      else
      {
        v4 = @"BatteryBreakdown";
      }

      break;
  }

  return v4;
}

__CFString *PLBatteryUsageUIStringForQueryRange(double a1)
{
  if (a1 == 1296000.0)
  {
    return @"15d";
  }

  if (a1 == 864000.0)
  {
    return @"10d";
  }

  if (a1 == 691200.0)
  {
    return @"8d";
  }

  if (a1 == 604800.0)
  {
    return @"7d";
  }

  if (a1 == 86400.0)
  {
    return @"24hr";
  }

  if (a1 == 3600.0)
  {
    return @"1hr";
  }

  return @"UnknownRange";
}

id PLCalculateEndOfHourWithDate(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = logHandle_1();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    PLCalculateEndOfHourWithDate_cold_1();
  }

  v3 = [MEMORY[0x1E695DEE8] currentCalendar];
  v4 = [v3 components:60 fromDate:v1];
  v5 = [v4 valueForComponent:32];
  v6 = logHandle_1();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v14 = [v3 dateFromComponents:v4];
    v15 = 138412802;
    v16 = v1;
    v17 = 2112;
    v18 = v14;
    v19 = 2048;
    v20 = v5;
    _os_log_debug_impl(&dword_1BACB7000, v6, OS_LOG_TYPE_DEBUG, "Date: %@ -> %@ -> %ld", &v15, 0x20u);
  }

  v7 = logHandle_1();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    PLCalculateEndOfHourWithDate_cold_2();
  }

  v8 = logHandle_1();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    PLCalculateEndOfHourWithDate_cold_2();
  }

  [v4 setValue:((v5 % 3) ^ 3) + v5 forComponent:32];
  v9 = [v3 dateFromComponents:v4];
  v10 = logHandle_1();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    PLCalculateEndOfHourWithDate_cold_4();
  }

  v11 = logHandle_1();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v9;
    _os_log_impl(&dword_1BACB7000, v11, OS_LOG_TYPE_DEFAULT, "end of hour: %@", &v15, 0xCu);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v9;
}

id PLCalculateEndOfDayWithDate(void *a1)
{
  v1 = MEMORY[0x1E695DEE8];
  v2 = a1;
  v3 = [v1 currentCalendar];
  v4 = objc_opt_new();
  [v4 setHour:0];
  [v4 setMinute:0];
  [v4 setSecond:0];
  v5 = [v3 nextDateAfterDate:v2 matchingComponents:v4 options:2];

  return v5;
}

id PLBatteryUsageUIDynamicEndConfiguration(uint64_t a1, void *a2, double a3, double a4)
{
  v4 = PLBatteryUsageUIConfiguration(a1, a2, a3, a4);
  v5 = [v4 mutableCopy];

  [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"isDynamicEnd"];

  return v5;
}

__CFString *PLBatteryUsageUIKeyFromConfiguration(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"end"];
  [v2 doubleValue];
  v4 = v3;
  v5 = [v1 objectForKeyedSubscript:@"start"];
  [v5 doubleValue];
  v7 = v4 - v6;

  v8 = [v1 objectForKeyedSubscript:@"bucket"];
  [v8 doubleValue];
  v10 = v9;

  if (v7 / v10 == 1.0)
  {
    if (v7 == 1296000.0)
    {
      v12 = @"15d";
    }

    else if (v7 == 864000.0)
    {
      v12 = @"10d";
    }

    else if (v7 == 691200.0)
    {
      v12 = @"8d";
    }

    else if (v7 == 604800.0)
    {
      v12 = @"7d";
    }

    else if (v7 == 86400.0)
    {
      v12 = @"24hr";
    }

    else
    {
      v12 = @"UnknownRange";
      if (v7 == 3600.0)
      {
        v12 = @"1hr";
      }
    }

    v13 = v12;
  }

  else
  {
    if (v7 == 1296000.0)
    {
      v11 = @"15d";
    }

    else if (v7 == 864000.0)
    {
      v11 = @"10d";
    }

    else if (v7 == 691200.0)
    {
      v11 = @"8d";
    }

    else if (v7 == 604800.0)
    {
      v11 = @"7d";
    }

    else if (v7 == 86400.0)
    {
      v11 = @"24hr";
    }

    else
    {
      v11 = @"UnknownRange";
      if (v7 == 3600.0)
      {
        v11 = @"1hr";
      }
    }

    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%zu", v11, v10];
  }

  v14 = v13;
  v15 = [v1 objectForKeyedSubscript:@"isDynamicEnd"];
  if ([v15 BOOLValue])
  {
    v16 = [(__CFString *)v14 stringByAppendingString:@"_dynamic"];
  }

  else
  {
    v16 = v14;
  }

  v17 = v16;

  return v17;
}

void OUTLINED_FUNCTION_1_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_1BACD9DC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id containerPath()
{
  if (containerPath_onceToken != -1)
  {
    containerPath_cold_1();
  }

  v1 = containerPath_containerPath;

  return v1;
}

void __containerPath_block_invoke()
{
  v0 = container_create_or_lookup_system_group_paths();
  if (v0)
  {
    v1 = _CFXPCCreateCFObjectFromXPCObject();
    v2 = [v1 objectForKeyedSubscript:@"systemgroup.com.apple.powerlog"];
    v3 = containerPath_containerPath;
    containerPath_containerPath = v2;
  }

  else
  {
    NSLog(&cfstr_ErrorFetchingG.isa, @"com.apple.systemcontainer", 1);
  }
}

id PLFDefaultsValueForKey()
{
  v0 = *MEMORY[0x1E695E8B8];
  v1 = *MEMORY[0x1E695E8B0];
  containerPath();
  v2 = _CFPreferencesCopyValueWithContainer();

  return v2;
}

void __didReceiveNotification_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void PLShouldLogRegisteredEvent_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void PLShouldLogRegisteredEvent_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void PLShouldLogEvent_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void PLShouldLogEvent_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void PLMarkFileAsPurgeable_cold_1(uint64_t a1, uint64_t *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  v3 = __error();
  strerror(*v3);
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
  v9 = *MEMORY[0x1E69E9840];
}

void PLMarkFileAsPurgeable_cold_2()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void PLResetPowerlog_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void dropTable_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void dropTable_cold_2(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void dropTable_cold_3(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void dropTable_cold_4(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x1E69E9840];
}

void dropTable_cold_5(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void PLCopyBackgroundProcessingLog_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  v4 = 2112;
  v5 = v0;
  v6 = 2112;
  v7 = v1;
  _os_log_debug_impl(&dword_1BACB7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "For BGSQL copy, the table of interest is %@, the original Path is %@ and the copy dest is %@", v3, 0x20u);
  v2 = *MEMORY[0x1E69E9840];
}

void copyUpgradeLogsToCrashMover_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void copyUpgradeLogsToCrashMover_cold_6()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void PLCopyBatteryUIPlists_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&dword_1BACB7000, v0, OS_LOG_TYPE_ERROR, "Failed to copy files to %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void PLCalculateEndOfHourWithDate_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1(&dword_1BACB7000, v0, v1, "calculating end of hour from %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void PLCalculateEndOfHourWithDate_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1(&dword_1BACB7000, v0, v1, "hourNum: %lu", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void PLCalculateEndOfHourWithDate_cold_4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  v4 = 2112;
  v5 = v0;
  _os_log_debug_impl(&dword_1BACB7000, v1, OS_LOG_TYPE_DEBUG, "System hour bucket: %@ -> %@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}
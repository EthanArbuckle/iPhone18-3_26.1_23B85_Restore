@interface TRIUserAdjustableSettings
+ (BOOL)getExperimentOptOut:(id)a3;
+ (unsigned)_optOutSoftwareUpdatePreferenceForAnyUser;
+ (void)_deactivateAllActiveExperimentsWithServerContext:(id)a3;
+ (void)updateExperimentOptOutStateWithServerContext:(id)a3;
@end

@implementation TRIUserAdjustableSettings

+ (void)updateExperimentOptOutStateWithServerContext:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"TRIUserAdjustableSettings.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"serverContext"}];
  }

  v6 = [v5 keyValueStore];

  if (!v6)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"TRIUserAdjustableSettings.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"serverContext.keyValueStore"}];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__TRIUserAdjustableSettings_updateExperimentOptOutStateWithServerContext___block_invoke;
  block[3] = &unk_279DDEE68;
  v14 = v5;
  v15 = a1;
  v7 = qword_2815978A0;
  v8 = v5;
  if (v7 != -1)
  {
    dispatch_once(&qword_2815978A0, block);
  }

  v9 = v14;
  v10 = _MergedGlobals_42;

  [v10 runAfterDelaySeconds:1 coalescingBehavior:5.0];
}

void __74__TRIUserAdjustableSettings_updateExperimentOptOutStateWithServerContext___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc(MEMORY[0x277D42628]);
  v4 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"com.apple.trial.user-optout-check-coalesce" qosClass:17];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__TRIUserAdjustableSettings_updateExperimentOptOutStateWithServerContext___block_invoke_2;
  v9[3] = &unk_279DDEE68;
  v8 = *(a1 + 32);
  v5 = v8;
  v10 = v8;
  v6 = [v3 initWithQueue:v4 operation:v9];

  v7 = _MergedGlobals_42;
  _MergedGlobals_42 = v6;

  objc_autoreleasePoolPop(v2);
}

void __74__TRIUserAdjustableSettings_updateExperimentOptOutStateWithServerContext___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 40) _optOutSoftwareUpdatePreferenceForAnyUser];
  v3 = [*(a1 + 32) keyValueStore];
  v4 = [TRIPersistentUserSettings settingsWithKeyValueStore:v3];

  v5 = [v4 persistedOptOutStatus];
  v6 = TRILogCategory_Server();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109376;
    v8[1] = v5;
    v9 = 1024;
    v10 = v2;
    _os_log_impl(&dword_26F567000, v6, OS_LOG_TYPE_DEFAULT, "Updating persisted experiment opt-out from: %d to: %d", v8, 0xEu);
  }

  [v4 persistOptOutStatus:v2];
  if (v2 == 1 && v5 != 1)
  {
    [TRIUserAdjustableSettings _deactivateAllActiveExperimentsWithServerContext:*(a1 + 32)];
  }

  v7 = *MEMORY[0x277D85DE8];
}

+ (BOOL)getExperimentOptOut:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"TRIUserAdjustableSettings.m" lineNumber:70 description:{@"Invalid parameter not satisfying: %@", @"serverContext"}];
  }

  v6 = [v5 keyValueStore];

  if (!v6)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"TRIUserAdjustableSettings.m" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"serverContext.keyValueStore"}];
  }

  v7 = [v5 keyValueStore];
  v8 = [TRIPersistentUserSettings settingsWithKeyValueStore:v7];

  v9 = [v8 persistedOptOutStatus];
  if (v9)
  {
    v10 = v9;
    v11 = TRILogCategory_Server();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v18 = v10 == 1;
      v12 = "Using persisted experiment opt-out: '%d'";
LABEL_10:
      _os_log_impl(&dword_26F567000, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 8u);
    }
  }

  else
  {
    v10 = [a1 _optOutSoftwareUpdatePreferenceForAnyUser];
    v11 = TRILogCategory_Server();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v18 = v10 == 1;
      v12 = "No persisted opt-out state, returning current setting: '%d'";
      goto LABEL_10;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v10 == 1;
}

+ (void)_deactivateAllActiveExperimentsWithServerContext:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:a1 file:@"TRIUserAdjustableSettings.m" lineNumber:88 description:{@"Invalid parameter not satisfying: %@", @"serverContext"}];
  }

  v6 = [v5 taskQueue];

  v7 = TRILogCategory_Server();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26F567000, v8, OS_LOG_TYPE_DEFAULT, "Deactivating all experiments per opt-out", buf, 2u);
    }

    *buf = 0;
    v22 = buf;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__62;
    v25 = __Block_byref_object_dispose__62;
    v26 = +[TRISequenceTask task];
    v9 = [v5 experimentDatabase];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __78__TRIUserAdjustableSettings__deactivateAllActiveExperimentsWithServerContext___block_invoke;
    v20[3] = &unk_279DE18E8;
    v20[4] = buf;
    v10 = [v9 enumerateExperimentRecordsWithBlock:v20];

    if ((v10 & 1) == 0)
    {
      v11 = TRILogCategory_Server();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v19 = 0;
        _os_log_error_impl(&dword_26F567000, v11, OS_LOG_TYPE_ERROR, "Unable to deactivate all active experiments (database query failed)", v19, 2u);
      }
    }

    v12 = +[TRITaskQueuingOptions defaultOptionsWithIgnoreDuplicates];
    v13 = [v5 taskQueue];
    v14 = [v13 addTask:*(v22 + 5) options:v12];

    v15 = [v5 taskQueue];
    v16 = [[TRIRunningXPCActivityDescriptor alloc] initForImmediateWorkWithCapabilities:0];
    [v15 resumeWithXPCActivityDescriptor:v16 executeWhenSuspended:0];

    if (v14 == 2)
    {
      v17 = TRILogCategory_Server();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *v19 = 0;
        _os_log_error_impl(&dword_26F567000, v17, OS_LOG_TYPE_ERROR, "Unable to deactivate all active experiments (failed to enqueue deactivation tasks)", v19, 2u);
      }
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Skipping deactivation due to uninitialized task queue", buf, 2u);
    }
  }
}

void __78__TRIUserAdjustableSettings__deactivateAllActiveExperimentsWithServerContext___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (![v7 deploymentEnvironment] && objc_msgSend(v7, "status") == 1)
  {
    v3 = [v7 treatmentId];

    if (v3)
    {
      v4 = [v7 experimentDeployment];
      v5 = [v4 experimentId];
      v6 = [TRIDeactivateTreatmentTask taskWithExperimentId:v5 deploymentId:0xFFFFFFFFLL failOnUnrecognizedExperiment:1 triggerEvent:12 taskAttribution:0];

      [*(*(*(a1 + 32) + 8) + 40) addTaskToEndOfSequence:v6];
    }
  }
}

+ (unsigned)_optOutSoftwareUpdatePreferenceForAnyUser
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBF040];
  v3 = *MEMORY[0x277CBF010];
  CFPreferencesSynchronize(@"com.apple.softwareupdateservicesd", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  v4 = CFPreferencesCopyValue(@"SUAutoInstallSystemDataFiles", @"com.apple.softwareupdateservicesd", v2, v3);
  if (!v4)
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = 0;
      _os_log_impl(&dword_26F567000, v8, OS_LOG_TYPE_DEFAULT, "Nothing to convert, value of opt-out preference: %{public}@", buf, 0xCu);
    }

    goto LABEL_16;
  }

  v5 = v4;
  v6 = CFGetTypeID(v4);
  if (v6 == CFBooleanGetTypeID())
  {
    Value = CFBooleanGetValue(v5);
    goto LABEL_10;
  }

  v9 = CFGetTypeID(v5);
  if (v9 != CFNumberGetTypeID())
  {
LABEL_15:
    CFRelease(v5);
    goto LABEL_16;
  }

  valuePtr = -1;
  if (!CFNumberGetValue(v5, kCFNumberIntType, &valuePtr))
  {
    v11 = TRILogCategory_Server();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v15 = v5;
      _os_log_error_impl(&dword_26F567000, v11, OS_LOG_TYPE_ERROR, "Failed to convert CFNumberRef value into int when getting opt-out preference: %{public}@", buf, 0xCu);
    }

    goto LABEL_15;
  }

  Value = valuePtr;
LABEL_10:
  CFRelease(v5);
  if (Value)
  {
LABEL_16:
    result = 2;
    goto LABEL_17;
  }

  result = 1;
LABEL_17:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

@end
@interface SBBatteryLogger
+ (void)saveLowBatteryLogWithCapacity:(int)capacity voltage:(int)voltage completion:(id)completion;
@end

@implementation SBBatteryLogger

+ (void)saveLowBatteryLogWithCapacity:(int)capacity voltage:(int)voltage completion:(id)completion
{
  v5 = *&voltage;
  v6 = *&capacity;
  completionCopy = completion;
  v8 = SBLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Begin saving battery level log...", buf, 2u);
  }

  date = [MEMORY[0x277CBEAA8] date];
  if (completionCopy)
  {
    BSPthreadCurrentEffectiveQualityOfService();
  }

  v10 = objc_alloc_init(_SBBatteryLogContext);
  [(_SBBatteryLogContext *)v10 setCapacity:v6];
  [(_SBBatteryLogContext *)v10 setVoltage:v5];
  v14 = completionCopy;
  v11 = completionCopy;
  v12 = date;
  v13 = v10;
  BSDispatchMain();
}

void __68__SBBatteryLogger_saveLowBatteryLogWithCapacity_voltage_completion___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setUsageTimeInSeconds:_SBWorkspaceGetBatteryUsageTimeInSeconds()];
  [*(a1 + 32) setStandbyTimeInSeconds:_SBWorkspaceGetBatteryStandbyTimeInSeconds()];
  [*(a1 + 32) setHasChargedPartially:_SBWorkspaceHaveChargedPartially()];
  v2 = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = SBWorkspaceApplicationSceneHandlesInLockedOrUnlockedEnvironmentLayoutState();
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v9 = [v8 sceneIfExists];
        v10 = [v9 settings];
        v11 = [v10 isForeground];

        if (v11)
        {
          v12 = [v8 application];
          v13 = [v12 bundleIdentifier];
          [v2 addObject:v13];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  [*(a1 + 32) setForegroundApplications:v2];
  v14 = dispatch_get_global_queue(*(a1 + 56), 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__SBBatteryLogger_saveLowBatteryLogWithCapacity_voltage_completion___block_invoke_2;
  block[3] = &unk_2783AA1E8;
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  dispatch_async(v14, block);
}

uint64_t __68__SBBatteryLogger_saveLowBatteryLogWithCapacity_voltage_completion___block_invoke_2(uint64_t a1)
{
  v93 = *MEMORY[0x277D85DE8];
  v73 = *(a1 + 32);
  v1 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v80[0] = MEMORY[0x277D85DD0];
  v80[1] = 3221225472;
  v80[2] = ___backgroundQueue_collectAndLogFromContext_block_invoke;
  v80[3] = &unk_2783B0830;
  v70 = v1;
  v81 = v70;
  *&AssertionsByPID[0] = 0;
  v2 = IOPMCopyAssertionsByProcess(AssertionsByPID);
  v3 = *&AssertionsByPID[0];
  if (!v2 && *&AssertionsByPID[0])
  {
    v4 = objc_alloc_init(_SBPowerAssertionContext);
    [(_SBPowerAssertionContext *)v4 setCollectionBlock:v80];
    CFDictionaryApplyFunction(*&AssertionsByPID[0], _arrayCallback_collectOneTask, v4);

    v3 = *&AssertionsByPID[0];
  }

  if (v3)
  {
    CFRelease(v3);
  }

  alloc = *MEMORY[0x277CBECE8];
  v5 = CFUUIDCreate(*MEMORY[0x277CBECE8]);
  v6 = CFUUIDCreateString(alloc, v5);
  CFRelease(v5);
  v7 = MGCopyAnswer();
  cf = v7;
  if (v7)
  {
    v8 = CFGetTypeID(v7);
    if (v8 == CFStringGetTypeID())
    {
      goto LABEL_10;
    }

    CFRelease(cf);
  }

  cf = 0;
LABEL_10:
  v68 = [MEMORY[0x277CBEAA8] date];
  if (_backgroundQueue_systemVersionDescription___once != -1)
  {
    __68__SBBatteryLogger_saveLowBatteryLogWithCapacity_voltage_completion___block_invoke_2_cold_1();
  }

  v71 = _backgroundQueue_systemVersionDescription___description;
  v9 = MEMORY[0x277CCAB68];
  v10 = [MEMORY[0x277CF0BF0] sharedInstance];
  v11 = [v10 formatDateAsLongYMDHMSZPosixLocaleWithDate:v68];
  v12 = [v9 stringWithFormat:@"Incident Identifier: %@\nCrashReporter Key:   %@\nDate:                %@\nOS Version:          %@\n\n", v6, cf, v11, v71];

  CFRelease(v6);
  if ([v70 length])
  {
    [v12 appendString:v70];
    [v12 appendString:@"\n"];
  }

  v69 = [v73 foregroundApplications];
  if ([v69 count])
  {
    [v12 appendString:@"Foreground Applications: "];
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v13 = v69;
    v14 = [v13 countByEnumeratingWithState:&v76 objects:v92 count:16];
    if (v14)
    {
      v15 = *v77;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v77 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ ", *(*(&v76 + 1) + 8 * i)];
          [v12 appendString:v17];
        }

        v14 = [v13 countByEnumeratingWithState:&v76 objects:v92 count:16];
      }

      while (v14);
    }

    [v12 appendString:@"\n"];
  }

  BKSDisplayBrightnessGetCurrent();
  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Screen Brightness: %f\n", v18];
  [v12 appendString:v19];

  v20 = _SBWorkspaceCopyRecentSleepsAndWakes();
  if (!v20)
  {
    goto LABEL_35;
  }

  v74 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"Recent Sleeps and Wakes\n"];
  v21 = [v20 count];
  if (v21)
  {
    for (j = 0; j != v21; ++j)
    {
      v23 = [v20 objectAtIndex:j];
      v24 = [v23 objectForKey:@"type"];
      v25 = [v23 objectForKey:@"time"];
      v26 = [v23 objectForKey:@"reason"];
      if (v24)
      {
        [v74 appendString:v24];
      }

      [v74 appendString:@" "];
      if (v25)
      {
        [v74 appendString:v25];
      }

      [v74 appendString:@"\n"];
      if (v26)
      {
        [v74 appendString:v26];
        [v74 appendString:@"\n"];
      }
    }
  }

  if (v74)
  {
    [v12 appendString:?];
    [v12 appendString:@"\n"];
  }

  else
  {
LABEL_35:
    v74 = 0;
  }

  memset(AssertionsByPID, 0, sizeof(AssertionsByPID));
  v75 = 256;
  sysctlbyname("hw.model", AssertionsByPID, &v75, 0, 0);
  v27 = MEMORY[0x277CCACA8];
  [v73 usageTimeInSeconds];
  v28 = BSFormattedTimeFromSeconds();
  [v73 usageTimeInSeconds];
  v30 = v29;
  [v73 standbyTimeInSeconds];
  v31 = BSFormattedTimeFromSeconds();
  [v73 standbyTimeInSeconds];
  v33 = v32;
  v34 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v73, "hasChargedPartially")}];
  v35 = [v34 stringValue];
  v36 = [v27 stringWithFormat:@"Hardware Model: %s\nAwake Time: %@ (%d)\nStandby Time: %@ (%d)\nPartial Charge: %@\nCapacity: %d\nVoltage: %d mV\n", AssertionsByPID, v28, v30, v31, v33, v35, objc_msgSend(v73, "capacity"), objc_msgSend(v73, "voltage")];
  [v12 appendString:v36];

  v85 = 0;
  v86 = &v85;
  v87 = 0x3032000000;
  v88 = __Block_byref_object_copy__28;
  v89 = __Block_byref_object_dispose__28;
  v90 = objc_opt_new();
  v83 = 0;
  v84 = 0;
  v37 = IOReportCopyChannelsInCategories();
  if (v37)
  {
    Subscription = IOReportCreateSubscription();
    v39 = Subscription;
    if (Subscription && v83)
    {
      Samples = IOReportCreateSamples();
      v82[0] = MEMORY[0x277D85DD0];
      v82[1] = 3221225472;
      v82[2] = ___backgroundQueue_getSOCStats_block_invoke;
      v82[3] = &unk_2783B0880;
      v82[4] = &v85;
      IOReportIterate();
      if (Samples)
      {
        CFRelease(Samples);
      }
    }

    else if (!Subscription)
    {
      goto LABEL_46;
    }

    CFRelease(v39);
  }

  else
  {
    v41 = SBLogCommon();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      __68__SBBatteryLogger_saveLowBatteryLogWithCapacity_voltage_completion___block_invoke_2_cold_2(&v84, v41);
    }
  }

LABEL_46:
  if (v84)
  {
    CFRelease(v84);
  }

  if (v83)
  {
    CFRelease(v83);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  v42 = *(v86 + 40);
  _Block_object_dispose(&v85, 8);

  if ([v42 count])
  {
    v43 = [v42 objectForKey:@"SOCHOT0_ACT"];
    v44 = [v42 objectForKey:@"SOCHOT0_Transitions"];
    v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"Voltage Droop Time: %@\n", v43];
    [v12 appendString:v45];

    v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"Voltage Droop Transitions: %@\n", v44];
    [v12 appendString:v46];
  }

  if ([MEMORY[0x277CF6ED8] isCPMSSupported])
  {
    v47 = [MEMORY[0x277CF6EE0] copyCPMSControlStateSnapshots];
    v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"CPMS has keys:\n %@ \n", v47];
    [v12 appendString:v48];
  }

  else
  {
    v49 = IOServiceMatching("ApplePPM");
    MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD2898], v49);
    v51 = MatchingService;
    if (MatchingService)
    {
      CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"PPMDebug", alloc, 0);
      v53 = CFProperty;
      if (CFProperty)
      {
        v54 = CFGetTypeID(CFProperty);
        if (v54 == CFArrayGetTypeID())
        {
          v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"PPMDebug has keys:\n %@ \n", v53];
          [v12 appendString:v55];
        }

        CFRelease(v53);
      }
    }

    IOObjectRelease(v51);
  }

  v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v71, @"os_version", @"120", @"bug_type", 0}];
  v82[0] = 0;
  v57 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v56 options:0 error:v82];
  v58 = v82[0];
  v59 = [v57 mutableCopy];

  [v59 appendBytes:"\n" length:1];
  v60 = [v12 dataUsingEncoding:4 allowLossyConversion:1];
  [v59 appendData:v60];

  v85 = MEMORY[0x277D85DD0];
  v86 = 3221225472;
  v87 = ___backgroundQueue_collectAndLogFromContext_block_invoke_2;
  v88 = &unk_2783B0858;
  v89 = v59;
  v61 = v59;
  LODWORD(v59) = OSAWriteLogForSubmission();

  v62 = SBLogCommon();
  v63 = v62;
  if (v59)
  {
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      [*(a1 + 40) timeIntervalSinceNow];
      LODWORD(AssertionsByPID[0]) = 134217984;
      *(AssertionsByPID + 4) = -v64;
      _os_log_impl(&dword_21ED4E000, v63, OS_LOG_TYPE_DEFAULT, "Finished saving battery log after %.2fs", AssertionsByPID, 0xCu);
    }
  }

  else if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
  {
    __68__SBBatteryLogger_saveLowBatteryLogWithCapacity_voltage_completion___block_invoke_2_cold_3(a1, v63);
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __68__SBBatteryLogger_saveLowBatteryLogWithCapacity_voltage_completion___block_invoke_2_cold_2(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Error when trying to get voltage droop stats: %{public}@", &v3, 0xCu);
}

void __68__SBBatteryLogger_saveLowBatteryLogWithCapacity_voltage_completion___block_invoke_2_cold_3(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  [*(a1 + 40) timeIntervalSinceNow];
  v4 = 134217984;
  v5 = -v3;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Failed to save battery log after %.2fs", &v4, 0xCu);
}

@end
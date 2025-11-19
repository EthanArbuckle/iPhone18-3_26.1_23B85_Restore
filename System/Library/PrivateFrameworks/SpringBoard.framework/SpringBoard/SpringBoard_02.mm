void __SBSystemAppMain_block_invoke_22(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setResetDarkBootState:1];
  v2 = _os_feature_enabled_impl();
  v3 = 3.0;
  if (v2)
  {
    v3 = 1.0;
  }

  [v4 setSystemSleepInterval:v3];
  [v4 setIndependentWatchdogPortName:@"com.apple.springboard.oswatchdog"];
  [v4 setRegisterAdditionalServicesBlock:&__block_literal_global_32];
}

void ___languageMayHaveChanged_block_invoke()
{
  v25 = *MEMORY[0x277D85DE8];
  v0 = +[SBSetupManager sharedInstance];
  v1 = [v0 isInSetupMode];

  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = +[SBLockScreenManager sharedInstanceIfExists];
  v3 = v2;
  if (!v2 || (v18 = v2, v4 = [v2 hasUIEverBeenLocked], v3 = v18, !v4) || (v5 = objc_msgSend(v18, "isUILocked"), v3 = v18, v5))
  {

LABEL_6:
    if (SBBootLanguages_block_invoke_changed)
    {
      return;
    }

    v6 = [MEMORY[0x277CBEAF8] preferredLanguages];
    if (!v6)
    {
      goto LABEL_12;
    }

    if (([SBBootLanguages isEqualToArray:v6] & 1) == 0)
    {
      SBBootLanguages_block_invoke_changed = 1;
      v8 = SBLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v22 = SBBootLanguages;
        v23 = 2114;
        v24 = v6;
        _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Preferred languages have changed from '%{public}@' to '%{public}@'. Relaunching.", buf, 0x16u);
      }

      if (!SBApp)
      {
        [MEMORY[0x277D46F50] identifierForCurrentProcess];
        v9 = [MEMORY[0x277D46FA0] predicateMatchingIdentifier:objc_claimAutoreleasedReturnValue()];
        v10 = [MEMORY[0x277D46FA0] predicateForClearTheBoard];
        v11 = MEMORY[0x277D46FA0];
        v20[0] = v9;
        v20[1] = v10;
        v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
        v13 = [v11 predicateMatchingAnyPredicate:v12];

        v14 = [objc_alloc(MEMORY[0x277D47010]) initWithExplanation:@"SBSystemApp-earlyLanguageChange"];
        [v14 setReportType:0];
        [v14 setExceptionDomain:10];
        [v14 setExceptionCode:1539435073];
        [v14 setMaximumTerminationResistance:40];
        v19 = 0;
        LOBYTE(v14) = [objc_msgSend(objc_alloc(MEMORY[0x277D47018]) initWithPredicate:v13 context:{v14), "execute:", &v19}];
        v15 = v19;
        if ((v14 & 1) == 0)
        {
          v16 = v15;
          v17 = SBLogCommon();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v22 = v16;
            _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "SBSystemApp failed to clear the board on early language change: %@", buf, 0xCu);
          }
        }

        exit(0);
      }

      [SBApp languageChanged];
      goto LABEL_19;
    }

    if (SBBootLanguages)
    {
      v7 = SBLogCommon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        ___languageMayHaveChanged_block_invoke_cold_1();
      }
    }

    else
    {
LABEL_12:
      v7 = SBLogCommon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        ___languageMayHaveChanged_block_invoke_cold_2();
      }
    }

LABEL_19:
    return;
  }
}

uint64_t ___performSpringBoardMigration_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = SBLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v9 = *(a1 + 32);
    v10 = 138412802;
    v11 = v9;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_error_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_ERROR, "failed while enumerating %@ : url=%@ error=%@", &v10, 0x20u);
  }

  return 0;
}

void sub_21EE253D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EE26394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EE27130(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_21EE27E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EE2831C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_21EE29AE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EE2B5EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EE301B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EE30400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EE309AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EE32A30(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21EE347C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 184));
  _Unwind_Resume(a1);
}

uint64_t _serviceAdded(void *a1, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    v5 = result;
    do
    {
      [a1 _handleServiceAdded:v5];
      IOObjectRelease(v5);
      result = IOIteratorNext(iterator);
      v5 = result;
    }

    while (result);
  }

  return result;
}

void sub_21EE3DC90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EE40204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EE40900(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL -[SBUIController _blocksAnimationForAccessoryType:](SBUIController *self, SEL a2, int64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  [(NSMutableDictionary *)self->_accessoriesAttachedByUUID allValues];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v11 + 1) + 8 * i) blocksAttachAnimationForAccessoryType:{a3, v11}])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

void sub_21EE428E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getWFSpringBoardWebClipMetadataClass_block_invoke(uint64_t a1)
{
  VoiceShortcutClientLibrary();
  result = objc_getClass("WFSpringBoardWebClipMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getWFSpringBoardWebClipMetadataClass_block_invoke_cold_1();
  }

  getWFSpringBoardWebClipMetadataClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void VoiceShortcutClientLibrary()
{
  v3 = *MEMORY[0x277D85DE8];
  v0[0] = 0;
  if (!VoiceShortcutClientLibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x277D85DD0];
    v0[2] = 3221225472;
    v0[3] = __VoiceShortcutClientLibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_2783A99A8;
    v2 = 0;
    VoiceShortcutClientLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!VoiceShortcutClientLibraryCore_frameworkLibrary)
  {
    VoiceShortcutClientLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __VoiceShortcutClientLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  VoiceShortcutClientLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getWFSpringBoardWorkflowRunnerClientClass_block_invoke(uint64_t a1)
{
  VoiceShortcutClientLibrary();
  result = objc_getClass("WFSpringBoardWorkflowRunnerClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getWFSpringBoardWorkflowRunnerClientClass_block_invoke_cold_1();
  }

  getWFSpringBoardWorkflowRunnerClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_21EE44320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t SBHIDIsAccessibilitySenderID(uint64_t a1)
{
  if (SBHIDIsAccessibilitySenderID_onceToken != -1)
  {
    SBHIDIsAccessibilitySenderID_cold_1();
  }

  v2 = SBHIDIsAccessibilitySenderID_accessibilitySenderIDs;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1];
  v4 = [v2 containsObject:v3];

  return v4;
}

void __SBHIDIsAccessibilitySenderID_block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithArray:&unk_28336DB48];
  v1 = SBHIDIsAccessibilitySenderID_accessibilitySenderIDs;
  SBHIDIsAccessibilitySenderID_accessibilitySenderIDs = v0;
}

void sub_21EE46304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EE4680C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _SBWorkspaceCopyScheduledPowerEvents()
{
  v0 = [__SBWAllKnownPowerEvents copy];

  return v0;
}

void _SBWorkspaceTrackPowerEvents(int a1)
{
  if (__SBWTrackPowerEvents != a1)
  {
    __SBWTrackPowerEvents = a1;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    if (a1)
    {

      CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, ScheduledWakeRegistered, @"com.apple.system.IOPMSchedulePowerEventNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }

    else
    {
      CFNotificationCenterRemoveObserver(DarwinNotifyCenter, 0, @"com.apple.system.IOPMSchedulePowerEventNotification", 0);
      v3 = __SBWAllKnownPowerEvents;
      __SBWAllKnownPowerEvents = 0;

      v4 = __SBWRecentSleepsAndWakes;
      __SBWRecentSleepsAndWakes = 0;
    }
  }
}

void ScheduledWakeRegistered()
{
  v0 = IOPMCopyScheduledPowerEvents();
  if (v0)
  {
    v1 = v0;
    if (!__SBWAllKnownPowerEvents)
    {
      v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v3 = __SBWAllKnownPowerEvents;
      __SBWAllKnownPowerEvents = v2;
    }

    Count = CFArrayGetCount(v1);
    if (Count >= 1)
    {
      v5 = Count;
      for (i = 0; i != v5; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v1, i);
        Value = CFDictionaryGetValue(ValueAtIndex, @"time");
        v9 = objc_alloc(MEMORY[0x277CCACA8]);
        [Value timeIntervalSinceReferenceDate];
        v11 = [v9 initWithFormat:@"%f", v10];
        v12 = [__SBWAllKnownPowerEvents objectForKey:v11];
        if (v12)
        {
          v13 = v12;
          v14 = CFDictionaryGetValue(ValueAtIndex, @"scheduledby");
          v15 = [v13 count];
          if (v15)
          {
            v16 = v15;
            while (1)
            {
              v17 = CFArrayGetValueAtIndex(v1, i);
              v18 = CFDictionaryGetValue(v17, @"scheduledby");
              if (CFStringCompare(v14, v18, 0) == kCFCompareEqualTo)
              {
                break;
              }

              if (!--v16)
              {
                goto LABEL_11;
              }
            }
          }

          else
          {
LABEL_11:
            [v13 addObject:ValueAtIndex];
          }
        }

        else
        {
          v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v13 addObject:ValueAtIndex];
          [__SBWAllKnownPowerEvents setObject:v13 forKey:v11];
        }
      }
    }

    CFRelease(v1);
  }
}

uint64_t SBWorkspaceApplicationCanLaunchWhilePasscodeLocked(void *a1)
{
  v1 = a1;
  v2 = +[SBDefaults localDefaults];
  v3 = [v2 testingDefaults];
  v4 = [v3 testRunnerRecoveryApplicationBundleIdentifier];

  if (SBWorkspaceApplicationCanLaunchWhilePasscodeLocked___onceToken != -1)
  {
    SBWorkspaceApplicationCanLaunchWhilePasscodeLocked_cold_1();
  }

  v5 = [v1 bundleIdentifier];
  v6 = BSEqualObjects();

  if (v6)
  {
    v7 = [v1 info];
    v8 = [v7 isAppleApplication];
  }

  else
  {
    v9 = SBWorkspaceApplicationCanLaunchWhilePasscodeLocked___allowedToLaunchWhileLockedApps;
    v7 = [v1 bundleIdentifier];
    v8 = [v9 containsObject:v7];
  }

  v10 = v8;

  return v10;
}

void __SBWorkspaceApplicationCanLaunchWhilePasscodeLocked_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"com.apple.calculator", @"com.apple.mobiletimer", @"com.apple.camera", @"com.apple.Magnifier", @"com.apple.BarcodeScanner", @"com.apple.TVRemoteUIService", 0}];
  v1 = SBWorkspaceApplicationCanLaunchWhilePasscodeLocked___allowedToLaunchWhileLockedApps;
  SBWorkspaceApplicationCanLaunchWhilePasscodeLocked___allowedToLaunchWhileLockedApps = v0;
}

uint64_t SBWorkspaceApplicationCanLaunchWhilePasscodeLockedIfSecureLaunchRequested(void *a1)
{
  v1 = SBWorkspaceApplicationCanLaunchWhilePasscodeLockedIfSecureLaunchRequested___onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    SBWorkspaceApplicationCanLaunchWhilePasscodeLockedIfSecureLaunchRequested_cold_1();
  }

  v3 = SBWorkspaceApplicationCanLaunchWhilePasscodeLockedIfSecureLaunchRequested___canLaunchSecureWhileLocked;
  v4 = [v2 bundleIdentifier];

  v5 = [v3 containsObject:v4];
  return v5;
}

void __SBWorkspaceApplicationCanLaunchWhilePasscodeLockedIfSecureLaunchRequested_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"com.apple.mobilenotes", @"com.apple.sidecar", @"com.apple.ContinuityCaptureShieldUI", @"com.apple.ContinuitySingShieldUI", @"com.apple.Translate", 0}];
  v1 = SBWorkspaceApplicationCanLaunchWhilePasscodeLockedIfSecureLaunchRequested___canLaunchSecureWhileLocked;
  SBWorkspaceApplicationCanLaunchWhilePasscodeLockedIfSecureLaunchRequested___canLaunchSecureWhileLocked = v0;
}

uint64_t SBWorkspaceApplicationCanResumeWhilePasscodeLocked(void *a1)
{
  v1 = a1;
  if (SBWorkspaceApplicationCanResumeWhilePasscodeLocked___onceToken != -1)
  {
    SBWorkspaceApplicationCanResumeWhilePasscodeLocked_cold_1();
  }

  v2 = SBSecureAppTypeForApplication(v1);
  v3 = SBWorkspaceApplicationCanResumeWhilePasscodeLocked___canResumeWhileLocked;
  v4 = [v1 bundleIdentifier];
  if ([v3 containsObject:v4])
  {
    v5 = +[SBSecureAppManager sharedInstance];
    v6 = [v5 hasSecureAppOfType:v2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __SBWorkspaceApplicationCanResumeWhilePasscodeLocked_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"com.apple.Maps", @"com.apple.VoiceMemos", @"com.apple.purplebuddy", 0}];
  v1 = SBWorkspaceApplicationCanResumeWhilePasscodeLocked___canResumeWhileLocked;
  SBWorkspaceApplicationCanResumeWhilePasscodeLocked___canResumeWhileLocked = v0;
}

uint64_t SBWorkspaceApplicationCanActivateWhilePasscodeLocked(void *a1)
{
  v1 = a1;
  if (SBWorkspaceApplicationCanLaunchWhilePasscodeLocked(v1) & 1) != 0 || (SBWorkspaceApplicationCanLaunchWhilePasscodeLockedIfSecureLaunchRequested(v1))
  {
    CanResumeWhilePasscodeLocked = 1;
  }

  else
  {
    CanResumeWhilePasscodeLocked = SBWorkspaceApplicationCanResumeWhilePasscodeLocked(v1);
  }

  return CanResumeWhilePasscodeLocked;
}

uint64_t SBWorkspaceDoesApplicationURLPresentLockApplicationLaunchVulnerability(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = SBApp;
  v6 = a3;
  v7 = [v5 lockOutController];
  v8 = [v6 authenticationStatusProvider];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = [SBApp authenticationController];
  }

  v10 = v9;

  if ([v7 isBlocked])
  {
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v11 = [v10 isAuthenticated];
    v12 = 0;
    if (!v4 || (v11 & 1) != 0)
    {
      goto LABEL_13;
    }
  }

  v13 = [v4 application];
  v14 = [v13 bundleIdentifier];
  if ([v14 isEqual:@"com.apple.purplebuddy"])
  {

LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  v15 = [v4 BOOLForActivationSetting:3];

  if (v15)
  {
    goto LABEL_12;
  }

  v17 = [v4 application];
  CanActivateWhilePasscodeLocked = SBWorkspaceApplicationCanActivateWhilePasscodeLocked(v17);

  v19 = [v4 activationSettings];
  if ([v19 BOOLForActivationSetting:36])
  {
    v20 = 1;
  }

  else
  {
    v20 = [v4 BOOLForActivationSetting:37];
  }

  v21 = [v4 activationSettings];
  v22 = [v21 BOOLForActivationSetting:41];

  v12 = [v10 isAuthenticated] | (CanActivateWhilePasscodeLocked | v20 | v22) ^ 1;
LABEL_13:

  return v12 & 1;
}

id SBWorkspaceApplicationForURLWithError(void *a1, int *a2, void *a3)
{
  v5 = a1;
  v6 = [v5 scheme];
  v7 = [v6 lowercaseString];

  if (!v7)
  {
    v11 = 0;
    v10 = -2;
    if (!a2)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if ([v7 isEqualToString:@"search"])
  {
    v8 = [v5 host];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      goto LABEL_18;
    }

    v10 = -2;
  }

  else
  {
    v10 = 0;
  }

  v14 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v15 = [v14 URLOverrideForURL:v5];

  v16 = [v14 applicationsAvailableForOpeningURL:v15];
  if (![v16 count])
  {

    v11 = 0;
    v10 = -3;
    goto LABEL_29;
  }

  v17 = [v16 objectAtIndex:0];
  v9 = [v17 applicationIdentifier];

  if (!v9)
  {
    v11 = 0;
LABEL_29:
    v5 = v15;
    if (!a2)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v5 = v15;
LABEL_18:
  if ([SBApp isBundleIdentifierRestrictionDisabled:v9])
  {
    v18 = SBLogCommon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      SBWorkspaceApplicationForURLWithError_cold_1();
    }

    v11 = 0;
    v10 = -4;
    if (!a2)
    {
      goto LABEL_7;
    }

LABEL_6:
    *a2 = v10;
    goto LABEL_7;
  }

  v19 = +[SBMainWorkspace sharedInstance];
  v11 = [v19 _applicationForIdentifier:v9];

  if (!v11)
  {
    v10 = -1;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  if (a3 && v11)
  {
    v12 = v5;
    *a3 = v5;
  }

  return v11;
}

uint64_t SBWorkspaceOpenURLIsHandledBySpringBoard(void *a1)
{
  v1 = a1;
  v2 = [v1 absoluteString];
  v3 = [v2 length];

  if (v3)
  {
    if ([v1 isWebcalURL] & 1) != 0 || (objc_msgSend(v1, "isAccountURL"))
    {
      v4 = 1;
    }

    else
    {
      v4 = [*MEMORY[0x277D76620] _shouldHandleTestURL:v1];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id SBWorkspaceDialRequestForURL(void *a1)
{
  v1 = a1;
  v2 = [v1 absoluteString];
  v3 = [v2 length];

  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D6EED0]) initWithURL:v1];
    if ([v4 isValid])
    {
      goto LABEL_5;
    }
  }

  v4 = 0;
LABEL_5:

  return v4;
}

uint64_t _SBWorkspaceCanLaunchApplication(void *a1, int a2, void *a3, void *a4, uint64_t *a5)
{
  v9 = a1;
  v10 = a3;
  v11 = a4;
  v12 = [v9 uniqueIdentifier];
  v13 = [v9 application];
  v14 = [v13 info];
  v15 = [v13 bundleIdentifier];
  if (v13)
  {
    if (a2 && ([v14 shouldLaunchSuspendedAlways] & 1) != 0)
    {
      v16 = 1;
      goto LABEL_44;
    }

    v41 = v12;
    v17 = v11;
    v18 = +[SBSetupManager sharedInstance];
    v19 = [v15 isEqualToString:@"com.apple.purplebuddy"];
    v20 = [v18 isInSetupMode];
    if ((v19 & 1) == 0 && v20)
    {
      v21 = [v18 updateInSetupMode];
      v22 = v10 ? 0 : a2;
      if ((v22 & 1) == 0 && v21 && ([v14 isLaunchableDuringSetup] & 1) == 0)
      {
        v33 = SBLogCommon();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          _SBWorkspaceCanLaunchApplication_cold_1();
        }

        v11 = v17;
        if (!a5)
        {
          v16 = 0;
          v12 = v41;
          goto LABEL_43;
        }

        v27 = 7;
        v12 = v41;
        goto LABEL_42;
      }
    }

    v39 = v14;
    v23 = v18;
    v24 = +[SBApplicationPlaceholderController sharedInstance];
    v25 = [v24 placeholderForDisplayID:v15];

    if (v25)
    {
      v26 = SBLogCommon();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        _SBWorkspaceCanLaunchApplication_cold_2();
      }

      v11 = v17;
      v18 = v23;
      if (!a5)
      {
        v16 = 0;
        v14 = v40;
        v12 = v41;
LABEL_43:

        goto LABEL_44;
      }

      v27 = 6;
      v14 = v40;
      v12 = v41;
LABEL_42:
      v16 = 0;
      *a5 = v27;
      goto LABEL_43;
    }

    v29 = [SBApp restartManager];
    v30 = [v29 isPendingExit];

    if (v30)
    {
      v31 = SBLogCommon();
      v11 = v17;
      v12 = v41;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        _SBWorkspaceCanLaunchApplication_cold_7();
      }

      v18 = v23;
      if (!a5)
      {
        v16 = 0;
        v14 = v40;
        goto LABEL_43;
      }

      v27 = 6;
      v14 = v40;
      goto LABEL_42;
    }

    v11 = v17;
    if ([v13 isAnyTerminationAssertionInEffect])
    {
      v32 = SBLogCommon();
      v12 = v41;
      v18 = v23;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        _SBWorkspaceCanLaunchApplication_cold_6();
      }

      v14 = v40;
      if (!a5)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v12 = v41;
      v18 = v23;
      if (![v13 isUninstalled])
      {
        v14 = v40;
        if ([SBApp isBundleIdentifierRestrictionDisabled:v15])
        {
          v37 = SBLogCommon();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            _SBWorkspaceCanLaunchApplication_cold_4();
          }

          if (a5)
          {
            v27 = 5;
            goto LABEL_42;
          }
        }

        else if ((a2 & 1) != 0 || !SBWorkspaceDoesApplicationURLPresentLockApplicationLaunchVulnerability(v9, v36, v11))
        {
          if (![v15 isEqualToString:@"com.apple.mobileiphoto"] && !objc_msgSend(v15, "isEqualToString:", @"com.apple.TVRemote"))
          {
            v16 = 1;
            goto LABEL_43;
          }

          if (a5)
          {
            v27 = 1;
            goto LABEL_42;
          }
        }

        else
        {
          v38 = SBLogCommon();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            _SBWorkspaceCanLaunchApplication_cold_3();
          }

          if (a5)
          {
            v27 = 3;
            goto LABEL_42;
          }
        }

LABEL_62:
        v16 = 0;
        goto LABEL_43;
      }

      v34 = SBLogCommon();
      v14 = v40;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        _SBWorkspaceCanLaunchApplication_cold_5();
      }

      if (!a5)
      {
        goto LABEL_62;
      }
    }

    v27 = 6;
    goto LABEL_42;
  }

  v28 = SBLogCommon();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    _SBWorkspaceCanLaunchApplication_cold_8(v10, v28);
  }

  v16 = 0;
  if (a5)
  {
    *a5 = 2;
  }

LABEL_44:

  return v16;
}

uint64_t SBWorkspaceActivateApplicationWithActionsAndResult(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1;
  v8 = +[SBMainWorkspace sharedInstance];
  v9 = [[SBDeviceApplicationSceneEntity alloc] initWithApplicationForMainDisplay:v7];

  if ([v5 count])
  {
    [(SBApplicationSceneEntity *)v9 addActions:v5];
  }

  v10 = [v8 createRequestForApplicationActivation:v9 options:0];
  v11 = [MEMORY[0x277CF0CD0] processHandle];
  [v10 setOriginatingProcess:v11];

  v12 = [v10 applicationContext];
  [v12 setResultBlock:v6];

  v13 = [v8 executeTransitionRequest:v10];
  return v13;
}

uint64_t _SBMainWorkspaceActivateApplicationFromURL(void *a1, void *a2, void *a3, int a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a5;
  if (v10)
  {
    v35 = 0;
    v13 = SBWorkspaceApplicationForURLWithError(v10, 0, &v35);
    v14 = v35;
    if (v13)
    {
      if (v11)
      {
        v15 = [v11 identity];
        v16 = +[SBSceneManagerCoordinator sharedInstance];
        v17 = [v16 sceneManagerForDisplayIdentity:v15];

        v18 = [SBDeviceApplicationSceneEntity defaultEntityWithApplication:v13 sceneHandleProvider:v17 displayIdentity:v15];
      }

      else
      {
        v18 = [[SBDeviceApplicationSceneEntity alloc] initWithApplicationForMainDisplay:v13];
      }

      if (a4)
      {
        v20 = 2;
      }

      else
      {
        v20 = 0;
      }

      v21 = [v13 info];
      v22 = [v21 alwaysDeliversOpenURLActionsUsingWorkspace];

      if (v22)
      {
        v23 = v20 | 0x10;
      }

      else
      {
        v23 = v20;
      }

      v24 = [v9 createRequestForApplicationActivation:v18 options:v23];
      v25 = [MEMORY[0x277CF0CD0] processHandle];
      [v24 setOriginatingProcess:v25];

      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = ___SBMainWorkspaceActivateApplicationFromURL_block_invoke;
      v32[3] = &unk_2783A96A0;
      v33 = v18;
      v34 = v14;
      v26 = v14;
      v27 = v18;
      [v24 modifyApplicationContext:v32];
      if (v12)
      {
        v12[2](v12, v24);
      }

      v19 = [v9 executeTransitionRequest:v24];

      v14 = v13;
    }

    else
    {
      if (a4)
      {
        v19 = 0;
LABEL_20:

        goto LABEL_21;
      }

      v28 = dispatch_get_global_queue(0, 0);
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = ___SBMainWorkspaceActivateApplicationFromURL_block_invoke_2;
      v30[3] = &unk_2783A8C18;
      v31 = v10;
      dispatch_async(v28, v30);

      v19 = 0;
      v26 = v31;
    }

    goto LABEL_20;
  }

  v19 = 0;
LABEL_21:

  return v19;
}

uint64_t SBWorkspaceActivateApplicationFromURLWithDisplayConfiguration(void *a1, void *a2, int a3, void *a4)
{
  v7 = a4;
  v8 = a2;
  v9 = a1;
  v10 = +[SBMainWorkspace sharedInstance];
  v11 = _SBMainWorkspaceActivateApplicationFromURL(v10, v9, v8, a3, v7);

  return v11;
}

uint64_t __SBWorkspaceActivateSpringBoardWithResult(uint64_t a1, void *a2, int a3, int a4, int a5, void *a6, void *a7)
{
  v13 = a2;
  v38 = a6;
  v39 = a7;
  v14 = +[SBMainWorkspace sharedInstance];
  v15 = [v13 identity];
  if (v15 && ([SBApp windowSceneManager], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "windowSceneForDisplayIdentity:", v15), v17 = objc_claimAutoreleasedReturnValue(), v16, v17))
  {
    v18 = v17;
    v36 = v18;
  }

  else
  {
    v19 = [SBApp windowSceneManager];
    v18 = [v19 activeDisplayWindowScene];

    v36 = 0;
  }

  v37 = v15;
  v20 = [v18 switcherController];
  if (v13)
  {
    if (!a3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v13 = [v18 _fbsDisplayConfiguration];
    if (!a3)
    {
      goto LABEL_11;
    }
  }

  v21 = [v14 transientOverlayPresentationManager];
  v22 = [v21 hasActivePresentation];

  if (v22)
  {
    v23 = 1;
    goto LABEL_12;
  }

LABEL_11:
  v23 = [v20 unlockedEnvironmentMode] != 1;
LABEL_12:
  v35 = v23;
  if (a4)
  {
    v24 = [v14 currentTransaction];
    v25 = v24;
    if (v24 && [v24 isInterruptible])
    {
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = ____SBWorkspaceActivateSpringBoardWithResult_block_invoke;
      v52[3] = &unk_2783A8C18;
      v53 = v25;
      v26 = MEMORY[0x223D6F7F0](v52);
    }

    else
    {
      v26 = 0;
    }

    if (v26)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v26 = 0;
  }

  if (a5)
  {
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = ____SBWorkspaceActivateSpringBoardWithResult_block_invoke_2;
    v50[3] = &unk_2783A8C18;
    v51 = v14;
    v26 = MEMORY[0x223D6F7F0](v50);
  }

LABEL_21:
  if (v26)
  {
    v26[2](v26);
  }

  v27 = [v14 createRequestWithOptions:0 displayConfiguration:v13];
  [v27 setEventLabel:@"ActivateSpringBoard"];
  [v27 setSource:a1];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = ____SBWorkspaceActivateSpringBoardWithResult_block_invoke_3;
  v48[3] = &unk_2783AA358;
  v28 = v38;
  v49 = v28;
  [v27 modifyApplicationContext:v48];
  objc_initWeak(&location, v18);
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = ____SBWorkspaceActivateSpringBoardWithResult_block_invoke_4;
  v40[3] = &unk_2783AA3A8;
  objc_copyWeak(&v44, &location);
  v45 = a5;
  v46 = a3;
  v29 = v14;
  v41 = v29;
  v30 = v39;
  v42 = v30;
  v31 = v28;
  v43 = v31;
  v32 = MEMORY[0x223D6F7F0](v40);
  v33 = +[SBReachabilityManager sharedInstance];
  [v33 deactivateReachability];

  LODWORD(v33) = [v29 executeTransitionRequest:v27 withValidator:v32];
  objc_destroyWeak(&v44);
  objc_destroyWeak(&location);

  return v33 & v35;
}

void sub_21EE4910C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void SBWorkspaceSuspendApplicationScene(void *a1)
{
  v1 = a1;
  v2 = SBWorkspaceApplicationSceneHandlesInLockedOrUnlockedEnvironmentLayoutState();
  v3 = [v2 containsObject:v1];

  if (v3)
  {

    __SBWorkspaceActivateSpringBoardWithResult(0, 0, 0, 0, 0, 0, 0);
  }
}

uint64_t SBWorkspaceHasApplicationSceneInLockedOrUnlockedEnvironmentLayoutStateMatchingApplication(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = SBWorkspaceApplicationSceneHandlesInLockedOrUnlockedEnvironmentLayoutState();
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(&v9 + 1) + 8 * i) application];
        v7 = [v6 isSameExecutableAsApplication:v1];

        if (v7)
        {
          v3 = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

uint64_t SBWorkspaceUnlockedEnvironmentLayoutStateHasMatchingApplication(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [SBApp windowSceneManager];
  v3 = [v2 activeDisplayWindowScene];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 switcherController];
  v5 = [v4 layoutStateApplicationSceneHandles];

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) application];
        v10 = [v9 isSameExecutableAsApplication:v1];

        if (v10)
        {
          v6 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

BOOL _SBWorkspaceIsBusyForTransaction()
{
  v0 = +[SBMainWorkspace _instanceIfExists];
  v1 = [v0 currentTransaction];

  v2 = v1 && ![v1 isComplete];
  return v2;
}

uint64_t SBWorkspaceInterruptBusynessIfPossible(void *a1)
{
  v1 = a1;
  if (__SBWFinishedBoot == 1 && _SBWorkspaceIsBusyForTransaction())
  {
    v2 = +[SBMainWorkspace _instanceIfExists];
    v3 = [v2 currentTransaction];

    v4 = [v3 isInterruptible];
    if (v4)
    {
      [v3 interruptWithReason:v1];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

__CFString *SBWorkspaceGetWhyBusy()
{
  if (__SBWFinishedBoot == 1)
  {
    if (_SBWorkspaceIsBusyForTransaction())
    {
      v0 = MEMORY[0x277CCACA8];
      v1 = +[SBMainWorkspace _instanceIfExists];
      v2 = [v1 currentTransaction];
      v3 = [v0 stringWithFormat:@"Ongoing transaction: %@", v2];
    }

    else
    {
      v3 = @"Not Busy";
    }
  }

  else
  {
    v3 = @"System boot is not complete";
  }

  return v3;
}

void SBWorkspaceDestroyApplicationEntity(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = SBLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = v1;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "SBWorkspaceDestroyApplicationEntity: %{public}@", &v4, 0xCu);
  }

  v3 = +[SBMainWorkspace sharedInstance];
  [v3 _destroyApplicationSceneEntity:v1];
}

void SBWorkspaceNoteApplicationEntityWasRemovedFromAppSwitcher(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = SBLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v1;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "SBWorkspaceNoteApplicationEntityWasRemovedFromAppSwitcher: %{public}@", &v5, 0xCu);
  }

  v3 = [SBApp hungApplicationInteractionObserver];
  [v3 observeRemovedApplicationSceneEntity:v1];

  v4 = +[SBMainWorkspace sharedInstance];
  [v4 _cleanupForRemovedAppEntity:v1];
}

void SBWorkspaceDestroyApplicationSceneHandlesWithIntent(void *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [MEMORY[0x277CBEB58] set];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      v13 = 0;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [[SBDeviceApplicationSceneEntity alloc] initWithApplicationSceneHandle:*(*(&v21 + 1) + 8 * v13)];
        if (v14)
        {
          [v8 addObject:v14];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v11);
  }

  if ([v8 count])
  {
    v15 = +[SBMainWorkspace sharedInstance];
    [v15 _removeApplicationEntities:v8 withDestructionIntent:v6 completion:v7];
LABEL_16:

    goto LABEL_17;
  }

  if (v7)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to retrieve any SBDeviceApplicationSceneEntity-s from the provided SBDeviceApplicationSceneHandle-s: %@", v9];
    v16 = SBLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      SBWorkspaceDestroyApplicationSceneHandlesWithIntent_cold_1();
    }

    v17 = MEMORY[0x277CCA9B8];
    v18 = SBWorkspaceErrorDomain;
    v25 = *MEMORY[0x277CCA068];
    v26 = v15;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v20 = [v17 errorWithDomain:v18 code:1 userInfo:v19];
    v7[2](v7, 0, v20);

    goto LABEL_16;
  }

LABEL_17:
}

void _SBWorkspaceTerminateApps(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v34 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v24 = a4;
  v10 = a5;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = ___SBWorkspaceTerminateApps_block_invoke;
  v31[3] = &unk_2783A9348;
  v11 = v10;
  v32 = v11;
  v12 = MEMORY[0x223D6F7F0](v31);
  if ([v9 count])
  {
    v13 = MEMORY[0x277CF0BA0];
    v14 = [v9 count];
    v22 = v12;
    v15 = [v13 sentinelWithQueue:MEMORY[0x277D85CD0] signalCount:v14 completion:v12];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v23 = v9;
    v16 = v9;
    v17 = [v16 countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v28;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v27 + 1) + 8 * i);
          if ([v21 isCurrentProcess])
          {
            [v15 signal];
          }

          else
          {
            v25[0] = MEMORY[0x277D85DD0];
            v25[1] = 3221225472;
            v25[2] = ___SBWorkspaceTerminateApps_block_invoke_2;
            v25[3] = &unk_2783A9398;
            v26 = v15;
            [v21 killForReason:a2 andReport:a3 withDescription:v24 completion:v25];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v27 objects:v33 count:16];
      }

      while (v18);
    }

    v9 = v23;
    v12 = v22;
  }

  else
  {
    v12[2](v12);
  }
}

void SBWorkspaceTerminateApplication(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a4;
  v11 = a5;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = FBSApplicationTerminationReasonDescription();
  }

  v13 = v12;
  v14 = SBLogCommon();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v9 bundleIdentifier];
    v19 = 138543618;
    v20 = v15;
    v21 = 2112;
    v22 = v13;
    _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "SBWorkspaceTerminateApplication: %{public}@: %@", &v19, 0x16u);
  }

  v16 = [MEMORY[0x277D0AAC0] sharedInstance];
  v17 = [v9 bundleIdentifier];
  v18 = [v16 applicationProcessesForBundleIdentifier:v17];

  _SBWorkspaceTerminateApps(v18, a2, a3, v10, v11);
}

void SBWorkspaceKillApplication(void *a1, int a2, void *a3, void *a4)
{
  if (a2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 5;
  }

  SBWorkspaceTerminateApplication(a1, v4, 0, a3, a4);
}

void SBWorkspaceTerminateAllApps(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = SBLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = FBSApplicationTerminationReasonDescription();
    v13 = 138412546;
    v14 = v10;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "SBWorkspaceTerminateAllApps: reason = %@; description = %@", &v13, 0x16u);
  }

  v11 = [MEMORY[0x277D0AAC0] sharedInstance];
  v12 = [v11 allApplicationProcesses];
  _SBWorkspaceTerminateApps(v12, a1, a2, v7, v8);
}

void SBWorkspaceTerminateProcesses(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a4;
  v11 = a5;
  v12 = SBLogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = [v9 description];
    v14 = FBSApplicationTerminationReasonDescription();
    v15 = 138412802;
    v16 = v13;
    v17 = 2112;
    v18 = v14;
    v19 = 2112;
    v20 = v10;
    _os_log_debug_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEBUG, "SBWorkspaceTerminateProcesses: %@; reason = %@; description = %@", &v15, 0x20u);
  }

  _SBWorkspaceTerminateApps(v9, a2, a3, v10, v11);
}

uint64_t SBWorkspaceActivateApplicationSuspended(void *a1)
{
  v1 = a1;
  v2 = +[SBWorkspace mainWorkspace];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __SBWorkspaceActivateApplicationSuspended_block_invoke;
  v6[3] = &unk_2783A98F0;
  v7 = v1;
  v3 = v1;
  v4 = [v2 requestTransitionWithBuilder:v6];

  return v4;
}

void __SBWorkspaceActivateApplicationSuspended_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSource:0];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __SBWorkspaceActivateApplicationSuspended_block_invoke_2;
  v4[3] = &unk_2783A98C8;
  v5 = *(a1 + 32);
  [v3 modifyApplicationContext:v4];
}

void __SBWorkspaceActivateApplicationSuspended_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[SBDeviceApplicationSceneEntity alloc] initWithApplicationForMainDisplay:*(a1 + 32)];
  [v3 setBackground:1];
  [v3 setEntity:v4 forLayoutRole:1];
}

uint64_t SBWorkspaceActivateApplicationIdempotent(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277D0AAC0] sharedInstance];
  v3 = [v1 bundleIdentifier];
  v4 = [v2 applicationProcessesForBundleIdentifier:v3];

  if ([v4 count])
  {
    v5 = 0;
  }

  else
  {
    v5 = SBWorkspaceActivateApplicationSuspended(v1);
  }

  return v5;
}

uint64_t SBWorkspaceLaunchMusicSuspended()
{
  v0 = +[SBApplicationController sharedInstance];
  v1 = [v0 musicApplication];

  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = +[SBSyncController sharedInstance];
  if (([v2 isRestoring] & 1) == 0)
  {
    v4 = +[SBSyncController sharedInstance];
    v5 = [v4 isResetting];

    if ((v5 & 1) == 0)
    {
      HasApplicationSceneInLockedOrUnlockedEnvironmentLayoutStateMatchingApplication = SBWorkspaceHasApplicationSceneInLockedOrUnlockedEnvironmentLayoutStateMatchingApplication(v1);

      if (HasApplicationSceneInLockedOrUnlockedEnvironmentLayoutStateMatchingApplication)
      {
        return 0;
      }

      v1 = +[SBApplicationController sharedInstance];
      v2 = [v1 musicApplication];
      v3 = SBWorkspaceActivateApplicationIdempotent(v2);
      goto LABEL_4;
    }

LABEL_6:
    v3 = 0;
    goto LABEL_7;
  }

  v3 = 0;
LABEL_4:

LABEL_7:
  return v3;
}

void SBWorkspaceHandleStatusBarReturnActionFromApp(void *a1, void *a2, void *a3, void *a4)
{
  v65 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = [SBApp lockOutController];
  v12 = [v11 isProximityReaderBlocked];

  if (!v12 || ([SBApp systemUIScenesCoordinator], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "proximityReaderUISceneController"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v9, "copy"), v55[0] = MEMORY[0x277D85DD0], v55[1] = 3221225472, v55[2] = __SBWorkspaceHandleStatusBarReturnActionFromApp_block_invoke, v55[3] = &unk_2783A9BD8, v56 = v7, v57 = v8, v58 = v9, v16 = v10, v59 = v16, v17 = objc_msgSend(v14, "handleBackgroundActivity:handler:", v15, v55), v15, v59, v58, v57, v56, v14, v13, (v17 & 1) == 0))
  {
    v18 = v9;
    if (SBWorkspaceReportUserInteractionViaSystemStatusDomainForBackgroundActivity_onceToken != -1)
    {
      SBWorkspaceHandleStatusBarReturnActionFromApp_cold_1();
    }

    if ([SBWorkspaceReportUserInteractionViaSystemStatusDomainForBackgroundActivity___callingActivityIdentifiers containsObject:v18])
    {
      v19 = [SBWorkspaceReportUserInteractionViaSystemStatusDomainForBackgroundActivity___callingDomain data];
      v20 = [objc_alloc(MEMORY[0x277D6B948]) initWithData:v19];
      if (!v20)
      {
LABEL_24:
        v32 = v10;

        goto LABEL_25;
      }

      v21 = SBWorkspaceReportUserInteractionViaSystemStatusDomainForBackgroundActivity___callingDomain;
    }

    else
    {
      if (![*MEMORY[0x277D6BCB0] isEqualToString:v18])
      {
        v51 = v10;
        v52 = v9;
        v53 = v8;
        v54 = v7;
        v19 = [SBWorkspaceReportUserInteractionViaSystemStatusDomainForBackgroundActivity___backgroundActivitiesDomain data];
        v20 = objc_alloc_init(MEMORY[0x277D6B9F8]);
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v22 = [v19 attributions];
        v23 = [v22 countByEnumeratingWithState:&v60 objects:v64 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v61;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v61 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v60 + 1) + 8 * i);
              v28 = [v27 backgroundActivityIdentifier];
              v29 = [v28 isEqualToString:v18];

              if (v29)
              {
                [v20 addAttribution:v27];
              }
            }

            v24 = [v22 countByEnumeratingWithState:&v60 objects:v64 count:16];
          }

          while (v24);
        }

        v30 = [v19 visualDescriptorForBackgroundActivityWithIdentifier:v18];
        [v20 setVisualDescriptor:v30 forBackgroundActivityWithIdentifier:v18];
        v31 = [objc_alloc(MEMORY[0x277D6B918]) initWithData:v20];
        if (v31)
        {
          [SBWorkspaceReportUserInteractionViaSystemStatusDomainForBackgroundActivity___backgroundActivitiesDomain reportUserInteraction:v31];
        }

        v8 = v53;
        v7 = v54;
        v10 = v51;
        v9 = v52;
        goto LABEL_24;
      }

      v19 = [SBWorkspaceReportUserInteractionViaSystemStatusDomainForBackgroundActivity___stewieDomain data];
      if (![v19 isStewieActive])
      {
        v32 = v10;
LABEL_25:

        v33 = [SBWorkspaceReportUserInteractionViaSystemStatusDomainForBackgroundActivity___backgroundActivitiesDomain data];
        v34 = [v33 visualDescriptorForBackgroundActivityWithIdentifier:v18];

        LOBYTE(v33) = [v34 prefersToSuppressDefaultUserInteractionHandler];
        if (v33)
        {
          v16 = v32;
          goto LABEL_40;
        }

        v35 = [SBApp windowSceneManager];
        v36 = [v35 windowSceneForSceneIdentifier:v8];

        v37 = v32;
        if (v32 || (v37 = v36) != 0)
        {
          v16 = v37;
        }

        else
        {
          v50 = [SBApp windowSceneManager];
          v16 = [v50 activeDisplayWindowScene];

          if (!v16)
          {
            goto LABEL_31;
          }
        }

        v38 = [v16 transientOverlayPresenter];
        v39 = [v38 handleDoubleHeightStatusBarTap];

        if (v39)
        {
LABEL_39:

          goto LABEL_40;
        }

LABEL_31:
        v40 = v9;
        v41 = v8;
        v42 = [v16 uiLockStateProvider];
        v43 = v42;
        if (v42)
        {
          v44 = v42;
        }

        else
        {
          v44 = +[SBLockScreenManager sharedInstance];
        }

        v45 = v44;

        if (![v45 isUILocked] || (+[SBCoverSheetPresentationManager sharedInstance](SBCoverSheetPresentationManager, "sharedInstance"), v46 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v46, "coverSheetHostedAppSceneHandle"), v47 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v47, "application"), v48 = objc_claimAutoreleasedReturnValue(), v48, v47, v46, v48 == v7))
        {
          v49 = +[SBBackgroundActivityAttributionManager sharedInstance];
          [v49 handleTapForBackgroundActivityWithIdentifier:v18 windowScene:v16];
        }

        v8 = v41;
        v9 = v40;
        goto LABEL_39;
      }

      v20 = objc_alloc_init(MEMORY[0x277D6BB80]);
      v21 = SBWorkspaceReportUserInteractionViaSystemStatusDomainForBackgroundActivity___stewieDomain;
    }

    [v21 reportUserInteraction:v20];
    goto LABEL_24;
  }

LABEL_40:
}

id _SBWorkspaceCopyRecentSleepsAndWakes()
{
  v1 = __SBWRecentSleepsAndWakes;
  if (__SBWRecentSleepsAndWakes)
  {
    v1 = [__SBWRecentSleepsAndWakes copy];
    v0 = vars8;
  }

  return v1;
}

void SBWorkspaceNoteSystemBootComplete()
{
  __SBWFinishedBoot = 1;
  v0 = SBLogCommon();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_21ED4E000, v0, OS_LOG_TYPE_INFO, "[SBWorkspace] SBWorkspaceNoteSystemBootComplete", v1, 2u);
  }
}

void SBWorkspaceLogUsage(int a1)
{
  if (a1)
  {
    _SBWorkspaceLogUsageForAppleCare(2);
  }

  else
  {
    _SBWorkspaceLogUsageForAppleCare(3);
  }
}

id _SBWorkspaceGetBatteryAwakeTime()
{
  _SBWorkspaceUpdateBatteryUsageTime(0);
  if (*&__SBWCurrentUsageTimeInSeconds <= 0.0)
  {
    v0 = 0;
  }

  else
  {
    v0 = BSFormattedTimeFromSeconds();
  }

  return v0;
}

double _SBWorkspaceGetBatteryStandbyTimeInSeconds()
{
  result = 0.0;
  if (*&__SBWInitialStandbyTimeGMT != 0.0)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    return *&__SBWSavedStandbyTime + v1 - *&__SBWInitialStandbyTimeGMT;
  }

  return result;
}

void SBWorkspaceLoadUsageTimes()
{
  v0 = +[SBDefaults localDefaults];
  v8 = [v0 usageDefaults];

  v1 = [v8 standbyTime];
  v2 = [v8 batteryUsageTime];
  v3 = v2;
  if (v1)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    __SBWHaveChargedPartially = [v8 hasChargedPartially];
    [v3 doubleValue];
    __SBWCurrentUsageTimeInSeconds = v5;
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    __SBWLastUsageTimeGMT = v6;
    __SBWInitialStandbyTimeGMT = v6;
    [v1 doubleValue];
    __SBWSavedStandbyTime = v7;
    __SBWTrustUsageTimes = 1;
    __SBWGatherUsageTime = 1;
    [v8 clearUsageDefaults];
  }
}

void _SBWorkspaceSaveUsageTimes()
{
  v0 = +[SBDefaults localDefaults];
  v5 = [v0 usageDefaults];

  _SBWorkspaceUpdateBatteryUsageTime(0);
  if (*&__SBWInitialStandbyTimeGMT > 0.0)
  {
    v1 = *&__SBWCurrentUsageTimeInSeconds;
    if (*&__SBWCurrentUsageTimeInSeconds > 0.0)
    {
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v3 = [MEMORY[0x277CCABB0] numberWithDouble:v2 - *&__SBWInitialStandbyTimeGMT + *&__SBWSavedStandbyTime];
      [v5 setStandbyTime:v3];

      v4 = [MEMORY[0x277CCABB0] numberWithDouble:v1];
      [v5 setBatteryUsageTime:v4];

      [v5 setHasChargedPartially:__SBWHaveChargedPartially];
      [v5 synchronizeDefaults];
    }
  }
}

void sub_21EE4CCE0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_21EE4E344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak((v18 - 56));
  _Unwind_Resume(a1);
}

void sub_21EE4EEFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id location)
{
  objc_destroyWeak((v34 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EE4FCAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EE500B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EE504EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EE5092C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t SBValidateLayoutRoleString(void *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = a1;
  v6 = v5;
  v7 = 0;
  if (!v5)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    if (!a2)
    {
      goto LABEL_14;
    }

LABEL_13:
    *a2 = v7;
    goto LABEL_14;
  }

  if ([v5 isEqual:*MEMORY[0x277D67098]])
  {
    v7 = 1;
    v8 = 1;
    v9 = 1;
    goto LABEL_12;
  }

  if ([v6 isEqual:*MEMORY[0x277D670A0]])
  {
    v7 = 2;
    v8 = 1;
    v9 = 3;
    goto LABEL_12;
  }

  if ([v6 isEqual:*MEMORY[0x277D670A8]])
  {
    v7 = 2;
    v8 = 1;
    v9 = 4;
    goto LABEL_12;
  }

  if ([v6 isEqual:*MEMORY[0x277D670B0]])
  {
    v8 = 0;
    v9 = 0;
    v7 = 3;
LABEL_12:
    v10 = 1;
    if (!a2)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v10 = [v6 isEqual:*MEMORY[0x277D67090]];
  v8 = 0;
  v9 = 0;
  if (v10)
  {
    v7 = 4;
  }

  if (a2)
  {
    goto LABEL_13;
  }

LABEL_14:
  v11 = v8 ^ 1;
  if (!a3)
  {
    v11 = 1;
  }

  if ((v11 & 1) == 0)
  {
    *a3 = v9;
  }

  return v10;
}

void __SBWorkspaceReportUserInteractionViaSystemStatusDomainForBackgroundActivity_block_invoke()
{
  v16[13] = *MEMORY[0x277D85DE8];
  v0 = [SBApp systemStatusServer];
  v1 = *MEMORY[0x277D6BC68];
  v16[0] = *MEMORY[0x277D6BC60];
  v16[1] = v1;
  v2 = *MEMORY[0x277D6BD08];
  v16[2] = *MEMORY[0x277D6BC10];
  v16[3] = v2;
  v3 = *MEMORY[0x277D6BCD8];
  v16[4] = *MEMORY[0x277D6BD00];
  v16[5] = v3;
  v4 = *MEMORY[0x277D6BCE0];
  v16[6] = *MEMORY[0x277D6BCE8];
  v16[7] = v4;
  v5 = *MEMORY[0x277D6BC58];
  v16[8] = *MEMORY[0x277D6BBD8];
  v16[9] = v5;
  v6 = *MEMORY[0x277D6BC18];
  v16[10] = *MEMORY[0x277D6BC08];
  v16[11] = v6;
  v16[12] = @"com.apple.systemstatus.background-activity.CallRecording";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:13];
  v8 = [MEMORY[0x277CBEB98] setWithArray:v7];
  v9 = SBWorkspaceReportUserInteractionViaSystemStatusDomainForBackgroundActivity___callingActivityIdentifiers;
  SBWorkspaceReportUserInteractionViaSystemStatusDomainForBackgroundActivity___callingActivityIdentifiers = v8;

  v10 = [objc_alloc(MEMORY[0x277D6B940]) initWithServerHandle:v0];
  v11 = SBWorkspaceReportUserInteractionViaSystemStatusDomainForBackgroundActivity___callingDomain;
  SBWorkspaceReportUserInteractionViaSystemStatusDomainForBackgroundActivity___callingDomain = v10;

  v12 = [objc_alloc(MEMORY[0x277D6BB70]) initWithServerHandle:v0];
  v13 = SBWorkspaceReportUserInteractionViaSystemStatusDomainForBackgroundActivity___stewieDomain;
  SBWorkspaceReportUserInteractionViaSystemStatusDomainForBackgroundActivity___stewieDomain = v12;

  v14 = [objc_alloc(MEMORY[0x277D6B8F8]) initWithServerHandle:v0];
  v15 = SBWorkspaceReportUserInteractionViaSystemStatusDomainForBackgroundActivity___backgroundActivitiesDomain;
  SBWorkspaceReportUserInteractionViaSystemStatusDomainForBackgroundActivity___backgroundActivitiesDomain = v14;
}

id __SBGetManagedWindowingModeDisplayConfigurationForName_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _fbsDisplayConfiguration];
  v3 = [v2 deviceName];

  return v3;
}

void sub_21EE68BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_21EE69004(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21EE6911C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_21EE69D34(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_21EE6CAD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  _Block_object_dispose(&a56, 8);
  _Block_object_dispose((v56 - 200), 8);
  _Block_object_dispose((v56 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_21EE723A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EE7253C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EE72740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EE728D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EE72AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EE72C88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EE72F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EE73288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EE73420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EE735B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EE73A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EE73C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __PPTIsRunningSwitcherGestureTest()
{
  v0 = MEMORY[0x277D76620];
  result = [*MEMORY[0x277D76620] isRunningTest];
  if (result)
  {
    if ([*v0 isRunningTest:@"SwipeToHome"] & 1) != 0 || (objc_msgSend(*v0, "isRunningTest:", @"SwipeToHomeOverFolder") & 1) != 0 || (objc_msgSend(*v0, "isRunningTest:", @"SwipeAndPauseForSwitcher") & 1) != 0 || (objc_msgSend(*v0, "isRunningTest:", @"SwipeAndPauseForSwitcherOverFolder") & 1) != 0 || (objc_msgSend(*v0, "isRunningTest:", @"BottomEdgeSwipe") & 1) != 0 || (objc_msgSend(*v0, "isRunningTest:", @"BottomEdgeSwipeMultipleApps") & 1) != 0 || (objc_msgSend(*v0, "isRunningTest:", @"ArcSwipe") & 1) != 0 || (objc_msgSend(*v0, "isRunningTest:", @"ArcSwipeStageManager") & 1) != 0 || (objc_msgSend(*v0, "isRunningTest:", @"ArcSwipeMultipleApps") & 1) != 0 || (objc_msgSend(*v0, "isRunningTest:", @"SwipeAndPauseForSwitcherFromHomeScreen") & 1) != 0 || (objc_msgSend(*v0, "isRunningTest:", @"BottomEdgeSwipeFromHomeScreen") & 1) != 0 || (objc_msgSend(*v0, "isRunningTest:", @"ArcSwipeFromHomeScreen") & 1) != 0 || (objc_msgSend(*v0, "isRunningTest:", @"FourFingerSwipe") & 1) != 0 || (objc_msgSend(*v0, "isRunningTest:", @"FourFingerSwipeMultipleApps") & 1) != 0 || (objc_msgSend(*v0, "isRunningTest:", @"ScrunchToHome") & 1) != 0 || (objc_msgSend(*v0, "isRunningTest:", @"ScrunchToAppSwitcher") & 1) != 0 || (objc_msgSend(*v0, "isRunningTest:", @"ScrunchAndSwipe") & 1) != 0 || (objc_msgSend(*v0, "isRunningTest:", @"ScrunchAndSwipeMultipleApps") & 1) != 0 || (objc_msgSend(*v0, "isRunningTest:", @"SwipeUpHomeToAutoPIP") & 1) != 0 || (objc_msgSend(*v0, "isRunningTest:", @"ScrunchHomeToAutoPIP") & 1) != 0 || (objc_msgSend(*v0, "isRunningTest:", @"SwipeUpHomeToAutoPiP"))
    {
      return 1;
    }

    else
    {
      v2 = *v0;

      return [v2 isRunningTest:@"ScrunchHomeToAutoPiP"];
    }
  }

  return result;
}

uint64_t __PPTExpectedFinalUnlockedEnvironmentModeForCurrentTest()
{
  v0 = MEMORY[0x277D76620];
  if (![*MEMORY[0x277D76620] isRunningTest])
  {
    return 0;
  }

  if ([*v0 isRunningTest:@"BottomEdgeSwipe"] & 1) != 0 || (objc_msgSend(*v0, "isRunningTest:", @"BottomEdgeSwipeMultipleApps") & 1) != 0 || (objc_msgSend(*v0, "isRunningTest:", @"ArcSwipe") & 1) != 0 || (objc_msgSend(*v0, "isRunningTest:", @"ArcSwipeMultipleApps") & 1) != 0 || (objc_msgSend(*v0, "isRunningTest:", @"BottomEdgeSwipeFromHomeScreen") & 1) != 0 || (objc_msgSend(*v0, "isRunningTest:", @"ArcSwipeFromHomeScreen") & 1) != 0 || (objc_msgSend(*v0, "isRunningTest:", @"FourFingerSwipe") & 1) != 0 || (objc_msgSend(*v0, "isRunningTest:", @"FourFingerSwipeMultipleApps") & 1) != 0 || (objc_msgSend(*v0, "isRunningTest:", @"ScrunchAndSwipe") & 1) != 0 || (objc_msgSend(*v0, "isRunningTest:", @"ScrunchAndSwipeMultipleApps"))
  {
    return 3;
  }

  if ([*v0 isRunningTest:@"SwipeToHome"] & 1) != 0 || (objc_msgSend(*v0, "isRunningTest:", @"SwipeToHomeOverFolder") & 1) != 0 || (objc_msgSend(*v0, "isRunningTest:", @"ScrunchToHome") & 1) != 0 || (objc_msgSend(*v0, "isRunningTest:", @"SwipeUpHomeToAutoPIP") & 1) != 0 || (objc_msgSend(*v0, "isRunningTest:", @"ScrunchHomeToAutoPIP") & 1) != 0 || (objc_msgSend(*v0, "isRunningTest:", @"SwipeUpHomeToAutoPiP") & 1) != 0 || (objc_msgSend(*v0, "isRunningTest:", @"ScrunchHomeToAutoPiP"))
  {
    return 1;
  }

  if ([*v0 isRunningTest:@"SwipeAndPauseForSwitcher"] & 1) != 0 || (objc_msgSend(*v0, "isRunningTest:", @"SwipeAndPauseForSwitcherOverFolder") & 1) != 0 || (objc_msgSend(*v0, "isRunningTest:", @"SwipeAndPauseForSwitcherFromHomeScreen") & 1) != 0 || (objc_msgSend(*v0, "isRunningTest:", @"ScrunchToAppSwitcher"))
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

void sub_21EE7DC48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EE83364(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21EE838E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21EE863FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  _Block_object_dispose(&a34, 8);
  objc_destroyWeak((v62 + 40));
  _Block_object_dispose(&a47, 8);
  objc_destroyWeak((v61 + 40));
  _Block_object_dispose(&a61, 8);
  objc_destroyWeak((v63 + 40));
  _Block_object_dispose((v64 - 248), 8);
  objc_destroyWeak((v64 - 208));
  _Block_object_dispose((v64 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_21EE86E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose((v36 - 192), 8);
  _Block_object_dispose((v36 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_21EE87424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_21EE898A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EE91E80(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

uint64_t SBMainDisplayLayoutStateSpaceConfigurationFromString(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    if ([v1 isEqual:@"full"])
    {
      v2 = 1;
    }

    else if ([v1 isEqual:@"narrow/wide"])
    {
      v2 = 2;
    }

    else if ([v1 isEqual:@"half/half"])
    {
      v2 = 3;
    }

    else if ([v1 isEqual:@"wide/narrow"])
    {
      v2 = 4;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t SBMainDisplayLayoutStateFloatingConfigurationFromString(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    if ([v1 isEqual:@"left"])
    {
      v2 = 1;
    }

    else if ([v1 isEqual:@"right"])
    {
      v2 = 2;
    }

    else if ([v1 isEqual:@"stashed left"])
    {
      v2 = 3;
    }

    else if ([v1 isEqual:@"stashed right"])
    {
      v2 = 4;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_21EE96048(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak(&location);
  _Block_object_dispose((v22 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1020(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x223D6F7F0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_21EE9691C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EE97088(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_21EE99B98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EE9E108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EE9EAF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EEA17FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void __SBSceneHostingDisplayControllerUpdateFlagsDescription_block_invoke(uint64_t a1, uint64_t a2)
{
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    [*(a1 + 32) appendString:@"|"];
  }

  switch(a2)
  {
    case 1:
      v4 = *(a1 + 32);
      v5 = @".Assertion";
      break;
    case 4:
      v4 = *(a1 + 32);
      v5 = @".SceneHosting";
      break;
    case 2:
      v4 = *(a1 + 32);
      v5 = @".Display";
      break;
    default:
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *SBSceneHostingDisplayControllerUpdateFlagsDescription(SBSceneHostingDisplayControllerUpdateFlags)_block_invoke"];
      [v6 handleFailureInFunction:v7 file:@"SBSceneHostingDisplayController.m" lineNumber:63 description:@"you shouldna done that"];

      goto LABEL_11;
  }

  [v4 appendString:v5];
LABEL_11:
  *(*(*(a1 + 40) + 8) + 24) = 0;
}

uint64_t SBPBSlideOverConfigurationReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v54) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v54 & 0x7F) << v5;
        if ((v54 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        break;
      }

      if (v13 > 5)
      {
        if (v13 == 6)
        {
          v39 = 0;
          v40 = 0;
          v41 = 0;
          while (1)
          {
            LOBYTE(v54) = 0;
            v42 = [a2 position] + 1;
            if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
            {
              v44 = [a2 data];
              [v44 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v41 |= (v54 & 0x7F) << v39;
            if ((v54 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v11 = v40++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_78;
            }
          }

          v20 = (v41 != 0) & ~[a2 hasError];
LABEL_78:
          v47 = 42;
        }

        else
        {
          if (v13 != 7)
          {
LABEL_56:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_91;
          }

          v23 = 0;
          v24 = 0;
          v25 = 0;
          while (1)
          {
            LOBYTE(v54) = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v54 & 0x7F) << v23;
            if ((v54 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_82;
            }
          }

          v20 = (v25 != 0) & ~[a2 hasError];
LABEL_82:
          v47 = 40;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v54 = 0;
          v37 = [a2 position] + 8;
          if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 8, v38 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:&v54 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v49 = v54;
          v50 = 24;
LABEL_90:
          *(a1 + v50) = v49;
          goto LABEL_91;
        }

        if (v13 != 5)
        {
          goto LABEL_56;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v54) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v54 & 0x7F) << v14;
          if ((v54 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_80;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_80:
        v47 = 41;
      }

      *(a1 + v47) = v20;
LABEL_91:
      v53 = [a2 position];
      if (v53 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 1:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        while (1)
        {
          LOBYTE(v54) = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v54 & 0x7F) << v29;
          if ((v54 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v11 = v30++ >= 9;
          if (v11)
          {
            v35 = 0;
            goto LABEL_76;
          }
        }

        if ([a2 hasError])
        {
          v35 = 0;
        }

        else
        {
          v35 = v31;
        }

LABEL_76:
        *(a1 + 8) = v35;
        goto LABEL_91;
      case 2:
        v54 = 0;
        v45 = [a2 position] + 8;
        if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 8, v46 <= objc_msgSend(a2, "length")))
        {
          v52 = [a2 data];
          [v52 getBytes:&v54 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v49 = v54;
        v50 = 32;
        break;
      case 3:
        v54 = 0;
        v21 = [a2 position] + 8;
        if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 8, v22 <= objc_msgSend(a2, "length")))
        {
          v51 = [a2 data];
          [v51 getBytes:&v54 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v49 = v54;
        v50 = 16;
        break;
      default:
        goto LABEL_56;
    }

    goto LABEL_90;
  }

  return [a2 hasError] ^ 1;
}

void sub_21EEA5B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EEA5E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EEA80AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EEA8A98(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 136));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

uint64_t _SBProvisioningFailureHandler(int a1, int a2, int a3, int a4, CFDictionaryRef theDict)
{
  valuePtr = 0;
  if (theDict && (Value = CFDictionaryGetValue(theDict, @"kCallSimSlot")) != 0)
  {
    CFNumberGetValue(Value, kCFNumberNSIntegerType, &valuePtr);
    v6 = valuePtr;
  }

  else
  {
    v6 = 0;
  }

  return [__sharedTelephonyManager _provisioningUpdateWithStatus:2 slot:v6];
}

void _SBEmergencyCallBackModeChangeHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v7 = +[SBIdleTimerGlobalCoordinator sharedInstance];
  [v7 resetIdleTimerForReason:@"TelephonyManager:EmergencyCallBackMode"];

  if (a5 && (v8 = CFDictionaryGetValue(a5, *MEMORY[0x277CC39E8])) != 0)
  {
    Value = CFBooleanGetValue(v8);
    v10 = __sharedTelephonyManager;

    [v10 _setIsInEmergencyCallbackMode:Value];
  }

  else
  {
    v11 = SBLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      _SBEmergencyCallBackModeChangeHandler_cold_1(a3, a5, v11);
    }
  }
}

void _DataPlanActivateFailed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v34 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    _DataPlanActivateFailed_cold_1();
  }

  v6 = SBWorkspaceApplicationSceneHandlesInLockedOrUnlockedEnvironmentLayoutState();
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = __Block_byref_object_copy__5;
  v31[4] = __Block_byref_object_dispose__5;
  v32 = 0;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = ___DataPlanActivateFailed_block_invoke;
  v30[3] = &unk_2783ABDA0;
  v30[4] = v31;
  v7 = [v6 objectsPassingTest:v30];
  if ([v7 count])
  {
    v8 = +[SBDefaults localDefaults];
    v9 = [v8 miscellaneousDefaults];
    v10 = [v9 dataPlanActivationPromptCount];

    v11 = CFDictionaryGetValue(a5, *MEMORY[0x277CC3BF8]);
    if (v11)
    {
      v25 = [MEMORY[0x277CBEBC0] URLWithString:v11];
    }

    else
    {
      v25 = 0;
    }

    v12 = CFDictionaryGetValue(a5, *MEMORY[0x277CC3C10]);
    v13 = [v12 BOOLValue];
    if (v10 == 2)
    {
      v14 = 0;
    }

    else
    {
      v14 = v10 + 1;
    }

    v24 = v14;
    v15 = [[SBDataPlanActivationAlertItem alloc] initWithAccountURL:v25 newAccount:v13 promptToDisable:v10 == 2];
    v16 = +[SBAlertItemsController sharedInstance];
    [v16 activateAlertItem:v15];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v17 = v7;
    v18 = [v17 countByEnumeratingWithState:&v26 objects:v33 count:16];
    if (v18)
    {
      v19 = *v27;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = [*(*(&v26 + 1) + 8 * i) application];
          [v21 setHasShownDataPlanAlertSinceLock:1];
        }

        v18 = [v17 countByEnumeratingWithState:&v26 objects:v33 count:16];
      }

      while (v18);
    }

    v22 = +[SBDefaults localDefaults];
    v23 = [v22 miscellaneousDefaults];
    [v23 setDataPlanActivationPromptCount:v24];
  }

  _Block_object_dispose(v31, 8);
}

void sub_21EEA8F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _DataPlanStatusHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v51 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    _DataPlanStatusHandler_cold_1();
  }

  v6 = CFDictionaryGetValue(a5, *MEMORY[0x277CC3BF8]);
  if (v6)
  {
    v7 = [MEMORY[0x277CBEBC0] URLWithString:v6];
  }

  else
  {
    v7 = 0;
  }

  Value = CFDictionaryGetValue(a5, *MEMORY[0x277CC3958]);
  if (!Value)
  {
    v17 = SBLogStatusBarish();
    if (!os_log_type_enabled(&v17->super.super.super.super, OS_LOG_TYPE_DEFAULT))
    {
LABEL_40:

      goto LABEL_41;
    }

    *cf = 138543362;
    *&cf[4] = 0;
    v18 = "Ignoring unsuccessful data plan status (statusType='%{public}@')";
LABEL_17:
    _os_log_impl(&dword_21ED4E000, &v17->super.super.super.super, OS_LOG_TYPE_DEFAULT, v18, cf, 0xCu);
    goto LABEL_40;
  }

  v9 = Value;
  if (CFEqual(Value, *MEMORY[0x277CC3930]))
  {
    *cf = 0;
    v10 = +[SBTelephonyManager sharedTelephonyManager];
    v11 = [v10 _primaryCarrierBundleInfo];
    v12 = [v11 carrierName];

    if (v12)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v12 = 0;
      }
    }

    CTTelephonyCenterGetDefault();
    if (_CTServerConnectionCopyOperatorName())
    {

      v12 = 0;
    }

    v13 = CFDictionaryGetValue(a5, *MEMORY[0x277CC3C10]);
    v14 = [v13 BOOLValue];
    v15 = CFDictionaryGetValue(a5, *MEMORY[0x277CC3938]);
    if ([v15 BOOLValue])
    {
      v16 = [[SBDataPlanCompletionAlertItem alloc] initWithCarrierName:v12 newAccount:v14];
    }

    else
    {
      v16 = [[SBDataPlanFailureAlertItem alloc] initWithAccountURL:v7 carrierName:v12 newAccount:v14];
    }

    v17 = v16;
    goto LABEL_38;
  }

  if (!CFEqual(v9, *MEMORY[0x277CC3978]))
  {
    v17 = SBLogStatusBarish();
    if (!os_log_type_enabled(&v17->super.super.super.super, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_40;
    }

    *cf = 138543362;
    *&cf[4] = v9;
    v18 = "Unknown data plan status type '%{public}@'";
    goto LABEL_17;
  }

  v19 = *MEMORY[0x277CC3970];
  v12 = CFDictionaryGetValue(a5, *MEMORY[0x277CC3970]);
  v20 = *MEMORY[0x277CC3948];
  v13 = CFDictionaryGetValue(a5, *MEMORY[0x277CC3948]);
  v21 = *MEMORY[0x277CC3968];
  v15 = CFDictionaryGetValue(a5, *MEMORY[0x277CC3968]);
  if (!v12 || ([v12 doubleValue], v22 == 0.0))
  {
    v23 = CFDictionaryGetValue(a5, *MEMORY[0x277CC3940]);
    v24 = v23;
    if (v23 && ([v23 BOOLValue] & 1) != 0)
    {
      v25 = SBLogStatusBarish();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *cf = 0;
        _os_log_impl(&dword_21ED4E000, v25, OS_LOG_TYPE_DEFAULT, "Ignoring data plan expiration notification because autorenew is enabled", cf, 2u);
      }
    }

    else
    {
      v25 = CFDictionaryGetValue(a5, *MEMORY[0x277CC3960]);
      if (v25)
      {
        v26 = [MEMORY[0x277CBEAA8] date];
        v27 = [v25 compare:v26];

        if (v27 == 1)
        {
          v28 = +[SBAlertItemsController sharedInstance];
          [v28 deactivateAlertItemsOfClass:objc_opt_class()];

          v17 = [[SBDataPlanExpirationAlertItem alloc] initWithAccountURL:v7 expirationDate:v25];
LABEL_36:

LABEL_37:
          goto LABEL_38;
        }
      }

      v29 = SBLogStatusBarish();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *cf = 0;
        _os_log_impl(&dword_21ED4E000, v29, OS_LOG_TYPE_DEFAULT, "Data plan expiration did not include expiration date", cf, 2u);
      }
    }

    v17 = 0;
    goto LABEL_36;
  }

  if (v13 | v15)
  {
    [v12 doubleValue];
    v32 = v31;
    if (v13)
    {
      v33 = v13;
    }

    else
    {
      v33 = v15;
    }

    [v33 doubleValue];
    v35 = 1.0;
    if (v32 > 0.0)
    {
      v36 = v34;
      if (v36 > 0.0)
      {
        v35 = (v36 - v32) / v36;
      }
    }

    v37 = [SBDataPlanUsageAlertItem alloc];
    *&v38 = v35;
    v24 = [MEMORY[0x277CCABB0] numberWithFloat:v38];
    v17 = [(SBDataPlanUsageAlertItem *)v37 initWithAccountURL:v7 usage:v24];
    goto LABEL_37;
  }

  v39 = SBLogStatusBarish();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    *cf = 138544642;
    *&cf[4] = v19;
    v41 = 2114;
    v42 = v12;
    v43 = 2114;
    v44 = v20;
    v45 = 2114;
    v46 = 0;
    v47 = 2114;
    v48 = v21;
    v49 = 2114;
    v50 = 0;
    _os_log_impl(&dword_21ED4E000, v39, OS_LOG_TYPE_DEFAULT, "Unsupported combination of usage values (%{public}@=%{public}@, %{public}@=%{public}@, %{public}@=%{public}@)", cf, 0x3Eu);
  }

  v17 = 0;
LABEL_38:

  if (v17)
  {
    v30 = +[SBAlertItemsController sharedInstance];
    [v30 activateAlertItem:v17];

    goto LABEL_40;
  }

LABEL_41:
}

void _SBTelephonyDaemonRestartHandler()
{
  v0 = +[SBTelephonyManager sharedTelephonyManager];
  [v0 _handleTelephonyDaemonRestart];
}

void _WirelessModemDynamicStoreCallBack()
{
  v0 = +[SBTelephonyManager sharedTelephonyManager];
  [v0 _queue_noteWirelessModemDynamicStoreChanged];
}

void _updateLocale(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2810000000;
  v26[3] = &unk_21F9DA6A3;
  v26[4] = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v25[3] = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = ___updateLocale_block_invoke;
  v21[3] = &unk_2783ABD50;
  v23 = v26;
  v11 = v8;
  v22 = v11;
  v24 = v25;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = ___updateLocale_block_invoke_2;
  v15[3] = &unk_2783ABD78;
  v19 = v26;
  v20 = v25;
  v12 = v9;
  v17 = v12;
  v13 = v7;
  v16 = v13;
  v14 = v10;
  v18 = v14;
  [v13 _performQueryInBackground:v21 withMainQueueResultHandler:v15];

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(v26, 8);
}

void sub_21EEAA8EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 120), 8);
  _Unwind_Resume(a1);
}

id SBTMCachedBooleanDebugName(uint64_t a1)
{
  if ((a1 + 2) >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%i)", a1];
  }

  else
  {
    v2 = *(&off_2783ABDC0 + (a1 + 2));
  }

  return v2;
}

Class __getRTTSettingsClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!RTTUtilitiesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __RTTUtilitiesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_2783ABD30;
    v5 = 0;
    RTTUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!RTTUtilitiesLibraryCore_frameworkLibrary)
  {
    __getRTTSettingsClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("RTTSettings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getRTTSettingsClass_block_invoke_cold_1();
  }

  getRTTSettingsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __RTTUtilitiesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  RTTUtilitiesLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t ___updateLocale_block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    result = (*(*(result + 32) + 16))();
    *(*(*(v2 + 40) + 8) + 32) = result;
  }

  return result;
}

uint64_t ___updateLocale_block_invoke_2(uint64_t a1)
{
  v2 = a1 + 56;
  if (*(*(*(a1 + 56) + 8) + 36))
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      ___updateLocale_block_invoke_2_cold_1(v2, v3);
    }
  }

  else if (*(*(*(a1 + 64) + 8) + 24))
  {
    (*(*(a1 + 40) + 16))();
    CFRelease(*(*(*(a1 + 64) + 8) + 24));
  }

  else if (([*(a1 + 32) hasCellularData] & 1) == 0)
  {
    (*(*(a1 + 40) + 16))();
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_21EEAF9C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_21EEB0270(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21EEB08F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21EEB0F80(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void *std::vector<std::vector<BezierCurve>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<BezierCurve>>>(result, a2);
    }

    std::vector<std::vector<BezierCurve>>::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void *std::vector<BezierCurve>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 6)
  {
    if (!(a2 >> 58))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<BezierCurve>>(result, a2);
    }

    std::vector<std::vector<BezierCurve>>::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void sub_21EEB34B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char *__p, uint64_t a24, uint64_t a25, char a26)
{
  __p = &a26;
  std::vector<std::vector<PathPoint>>::__destroy_vector::operator()[abi:nn200100](&__p);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<BezierCurve>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::vector<std::vector<BezierCurve>>::__throw_length_error[abi:nn200100]();
}

uint64_t std::__split_buffer<std::vector<BezierCurve>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<BezierCurve>>::__destruct_at_end[abi:nn200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<BezierCurve>>::__destruct_at_end[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<BezierCurve>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::vector<std::vector<BezierCurve>>::__throw_length_error[abi:nn200100]();
}

float32x4_t *BezierCurve::BezierCurve(float32x4_t *a1, void *a2, float32x4_t a3)
{
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:@"p0"];
  v6 = v5;
  v58 = 0u;
  if (v5 && [v5 count] == 4)
  {
    v7 = [v6 objectAtIndexedSubscript:0];
    [v7 floatValue];
    v59 = v8;
    v9 = [v6 objectAtIndexedSubscript:1];
    [v9 floatValue];
    v54 = v10;
    v11 = [v6 objectAtIndexedSubscript:2];
    [v11 floatValue];
    v50 = v12;
    v13 = [v6 objectAtIndexedSubscript:3];
    [v13 floatValue];
    v14.i64[0] = __PAIR64__(v54, v59);
    v14.i64[1] = __PAIR64__(v15, v50);
    v58 = v14;
  }

  *a1 = vmulq_f32(v58, a3);
  v16 = [v4 objectForKeyedSubscript:@"p1"];
  v17 = v16;
  v60 = 0u;
  if (v16 && [v16 count] == 4)
  {
    v18 = [v17 objectAtIndexedSubscript:0];
    [v18 floatValue];
    v61 = v19;
    v20 = [v17 objectAtIndexedSubscript:1];
    [v20 floatValue];
    v55 = v21;
    v22 = [v17 objectAtIndexedSubscript:2];
    [v22 floatValue];
    v51 = v23;
    v24 = [v17 objectAtIndexedSubscript:3];
    [v24 floatValue];
    v25.i64[0] = __PAIR64__(v55, v61);
    v25.i64[1] = __PAIR64__(v26, v51);
    v60 = v25;
  }

  a1[1] = vmulq_f32(v60, a3);
  v27 = [v4 objectForKeyedSubscript:@"p2"];
  v28 = v27;
  v62 = 0u;
  if (v27 && [v27 count] == 4)
  {
    v29 = [v28 objectAtIndexedSubscript:0];
    [v29 floatValue];
    v63 = v30;
    v31 = [v28 objectAtIndexedSubscript:1];
    [v31 floatValue];
    v56 = v32;
    v33 = [v28 objectAtIndexedSubscript:2];
    [v33 floatValue];
    v52 = v34;
    v35 = [v28 objectAtIndexedSubscript:3];
    [v35 floatValue];
    v36.i64[0] = __PAIR64__(v56, v63);
    v36.i64[1] = __PAIR64__(v37, v52);
    v62 = v36;
  }

  a1[2] = vmulq_f32(v62, a3);
  v38 = [v4 objectForKeyedSubscript:@"p3"];
  v39 = v38;
  v64 = 0u;
  if (v38 && [v38 count] == 4)
  {
    v40 = [v39 objectAtIndexedSubscript:0];
    [v40 floatValue];
    v65 = v41;
    v42 = [v39 objectAtIndexedSubscript:1];
    [v42 floatValue];
    v57 = v43;
    v44 = [v39 objectAtIndexedSubscript:2];
    [v44 floatValue];
    v53 = v45;
    v46 = [v39 objectAtIndexedSubscript:3];
    [v46 floatValue];
    v47.i64[0] = __PAIR64__(v57, v65);
    v47.i64[1] = __PAIR64__(v48, v53);
    v64 = v47;
  }

  a1[3] = vmulq_f32(v64, a3);
  return a1;
}

uint64_t std::vector<std::vector<BezierCurve>>::__emplace_back_slow_path<std::vector<BezierCurve>&>(uint64_t a1, void *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::vector<BezierCurve>>::__throw_length_error[abi:nn200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<BezierCurve>>>(a1, v6);
  }

  v13 = 0;
  v14 = 24 * v2;
  v15 = 24 * v2;
  v16 = 0;
  std::vector<BezierCurve>::vector[abi:nn200100]((24 * v2), a2);
  v7 = 24 * v2 + 24;
  v8 = *(a1 + 8) - *a1;
  v9 = 24 * v2 - v8;
  memcpy((v14 - v8), *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7;
  v11 = *(a1 + 16);
  *(a1 + 16) = v16;
  v15 = v10;
  v16 = v11;
  v13 = v10;
  v14 = v10;
  std::__split_buffer<std::vector<BezierCurve>>::~__split_buffer(&v13);
  return v7;
}

void sub_21EEB3C0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<BezierCurve>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::vector<BezierCurve>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<BezierCurve>::__vallocate[abi:nn200100](result, (v2 - *a2) >> 6);
  }

  return result;
}

void std::vector<BezierCurve>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<BezierCurve>>(a1, a2);
  }

  std::vector<std::vector<BezierCurve>>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<PathPoint>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::vector<std::vector<BezierCurve>>::__throw_length_error[abi:nn200100]();
}

void std::vector<std::vector<PathPoint>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<PathPoint>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<PathPoint>>::clear[abi:nn200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void sub_21EEBB5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EEBEEC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EEC21E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void *__BSSafeCast(void *a1, void *a2)
{
  v3 = a1;
  if (a2)
  {
    if (objc_opt_isKindOfClass())
    {
      a2 = v3;
    }

    else
    {
      a2 = 0;
    }
  }

  v4 = a2;

  return a2;
}

void SBHandleTetherDemoPrefsNeedUpdateNotification()
{
  v8 = +[SBDefaults localDefaults];
  v0 = [v8 powerDefaults];
  [v0 setDisableIdleSleep:0];

  v1 = [v8 powerDefaults];
  [v1 setHideACPower:1];

  v2 = [v8 miscellaneousDefaults];
  LODWORD(v3) = *"fff?";
  [v2 setBacklightLevel:v3];

  v4 = [v8 soundDefaults];
  [v4 setCalendarAlarmPath:&stru_283094718];

  v5 = +[SBDefaults externalDefaults];
  v6 = [v5 soundDefaults];
  [v6 setKeyboardPlaysSounds:0];

  v7 = [v5 phoneDefaults];
  [v7 setHideMyPhoneNumber:1];
}

void SBHandleTetherDemoModeStateChangedNotification()
{
  IsTethered = BKSDisplayServicesDisplayIsTethered();
  v6 = +[SBDefaults localDefaults];
  v1 = [v6 powerDefaults];
  v2 = +[SBDefaults localDefaults];
  v3 = [v2 miscellaneousDefaults];

  v4 = +[SBDefaults localDefaults];
  v5 = [v4 systemApertureDefaults];

  [v1 setHideACPower:IsTethered];
  [v1 setDisableIdleSleep:IsTethered];
  [v1 synchronizeDefaults];
  [v3 setSuppressAlertsForKeynote:IsTethered];
  [v3 synchronizeDefaults];
  [v5 setAlwaysShowSystemApertureOnClonedDisplays:IsTethered];
  [v5 synchronizeDefaults];
}

void SBValidateTimeZone()
{
  v0 = SBTimeZoneQueue();
  dispatch_async(v0, &__block_literal_global_1167);
}

void SBPreferencesChanged()
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v0 = *MEMORY[0x277CCA858];
  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v2 postNotificationName:v0 object:v1];
}

void SBRecordBootToNowTime(int a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:CFAbsoluteTimeGetCurrent() + *MEMORY[0x277CBECD0]];
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:CACurrentMediaTime()];
  if (a1)
  {
    v4 = SBLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      [v3 floatValue];
      *buf = 134217984;
      v10 = v5;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "bootToNowTime: %f seconds", buf, 0xCu);
    }

    v6 = SBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      [v2 doubleValue];
      *buf = 134217984;
      v10 = v7;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "timeWhenFinishedBooting: %f", buf, 0xCu);
    }

    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v3, @"bootToNowTimeInSeconds", v2, @"timeWhenFinishedBooting", 0}];
    [v8 writeToFile:@"/tmp/bootToNowTime.plist" atomically:1];
  }
}

void SPDNotificationCallback(uint64_t a1, uint64_t a2)
{
  v3 = +[SBApplicationController sharedInstance];
  v4 = [v3 applicationWithPid:a2];

  if (v4)
  {
    v5 = [v4 info];
    v6 = [v5 supportsLegacyVOIPBackgroundMode];

    if (v6)
    {
      v7 = [v4 legacyVOIPPeriodicWakeScheduler];
      [v7 wakeImmediately];
    }
  }

  else
  {
    v8 = SBLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      SPDNotificationCallback_cold_1();
    }
  }
}

void SPDNotificationErrorCallback()
{
  v0 = SBLogCommon();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    SPDNotificationErrorCallback_cold_1();
  }
}

void sub_21EECBAE4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_21EECC1A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EECC434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id SBTimeZoneQueue()
{
  if (SBTimeZoneQueue_once != -1)
  {
    SBTimeZoneQueue_cold_1();
  }

  v1 = SBTimeZoneQueue___sbTimezoneQueue;

  return v1;
}

void __SBTimeZoneQueue_block_invoke()
{
  v0 = BSDispatchQueueCreateWithQualityOfService();
  v1 = SBTimeZoneQueue___sbTimezoneQueue;
  SBTimeZoneQueue___sbTimezoneQueue = v0;
}

void _timezoneQueue_setTimeZone(uint64_t a1)
{
  v2 = SBTimeZoneQueue();
  dispatch_assert_queue_V2(v2);

  v3 = MEMORY[0x223D6BAE0](a1);
  if (v3)
  {
    [v3 UTF8String];
    v4 = tzlink();
    if (v4)
    {

      warnc(v4, "tzlink");
    }

    else
    {
      if (SBApp)
      {
        v5 = &__block_literal_global_1156;
      }

      else
      {
        v5 = &__block_literal_global_1161;
      }

      v6 = MEMORY[0x277D85CD0];

      dispatch_async(v6, v5);
    }
  }
}

void ___timezoneQueue_setTimeZone_block_invoke_2()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"SignificantTimeChangeNotification", 0, 0, 1u);
}

void __SBValidateTimeZone_block_invoke()
{
  v0 = SBLogCommon();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v0, OS_LOG_TYPE_DEFAULT, "validating timezone, checking whether automatic time zone is enabled", buf, 2u);
  }

  if (!TMIsAutomaticTimeZoneEnabled())
  {
    v1 = SBLogCommon();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_21ED4E000, v1, OS_LOG_TYPE_DEFAULT, "automatic timezone is not enabled, validating preferences timezone with locationd", v14, 2u);
    }

    v2 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:4 edit:0];
    [v2 setProperty:@"com.apple.preferences.datetime" forKey:*MEMORY[0x277D3FEF8]];
    [v2 setProperty:@"timezone" forKey:*MEMORY[0x277D3FFF0]];
    v3 = PSCityForSpecifier();
    v4 = v3;
    if (v3)
    {
      v5 = [v3 timeZone];
      v6 = CFTimeZoneCreateWithName(0, v5, 0);

      if (v6)
      {
        v7 = CFTimeZoneCopySystem();
        if (v7)
        {
          v8 = v7;
          v9 = CFEqual(v7, v6);
          v10 = SBLogCommon();
          v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
          if (v9)
          {
            if (v11)
            {
              *v12 = 0;
              _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "timezone verified, no work to do.", v12, 2u);
            }
          }

          else
          {
            if (v11)
            {
              *v13 = 0;
              _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "updating timezone symlink", v13, 2u);
            }

            _timezoneQueue_setTimeZone(v6);
          }

          CFRelease(v8);
        }

        CFRelease(v6);
      }
    }
  }
}

uint64_t SBMediaEventSourceFromBKSHIDEventSource(unsigned int a1)
{
  if (a1 > 9)
  {
    return 0;
  }

  else
  {
    return qword_21F8A5B78[a1];
  }
}

void SBApplyDeferringEnvironmentToKeyCommands(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277D66B00] systemKeyCommandOverlayEnvironment];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        v9 = objc_opt_class();
        v10 = v8;
        if (v9)
        {
          if (objc_opt_isKindOfClass())
          {
            v11 = v10;
          }

          else
          {
            v11 = 0;
          }
        }

        else
        {
          v11 = 0;
        }

        v12 = v11;

        if (v12)
        {
          [v12 _setEventDeferringEnvironment:{v2, v14}];
          v13 = [SBApp registeredSystemKeyboardShortcuts];
          if (!v13)
          {
            v13 = [MEMORY[0x277CBEB58] set];
            [SBApp setRegisteredSystemKeyboardShortcuts:v13];
          }

          [v13 addObject:v12];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }
}

void sub_21EEDC348(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EEDCD84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EEDEE40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a38, 8);
  objc_sync_exit(obj);
  _Unwind_Resume(a1);
}

void IAPRequestExtendedMode()
{
  v0 = __extendedModeActive;
  if ((__extendedModeNotifyTokenIsValid & 1) != 0 || (v1 = notify_register_check("com.apple.iapd.notify.extendedMode", &__extendedModeNotifyToken), __extendedModeNotifyTokenIsValid = v1 == 0, !v1))
  {
    check = 0;
    notify_check(__extendedModeNotifyToken, &check);
    if (check)
    {
      v4 = 0;
      notify_get_state(__extendedModeNotifyToken, &v4);
      v2 = v4 == 1;
      __extendedModeActive = v4 == 1;
    }

    else
    {
      v2 = __extendedModeActive;
    }
  }

  else
  {
    v2 = 0;
    __extendedModeActive = 0;
  }

  if (v0 != v2)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 postNotificationName:@"SBIAPExtendedModeChangedNotification" object:0];
  }
}

void sub_21EEE0CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EEE0EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EEE1038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EEE1198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EEE1300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EEE1598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EEE1744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EEE1888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EEE19C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EEE1AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EEE1CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

_SBSystemApertureMagiciansCurtainView *SBCreateSystemApertureMagiciansView()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = objc_alloc_init(_SBSystemApertureMagiciansCurtainView);
  SBSystemApertureContainerRenderingConfigurationMake(1, 0, 0, v5);
  [(_SBSystemApertureGainMapView *)v0 setRenderingConfiguration:v5];
  v1 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA2B8]];
  [v1 setValue:MEMORY[0x277CBEC38] forKey:@"inputReversed"];
  v2 = [(_SBSystemApertureMagiciansCurtainView *)v0 layer];
  v6[0] = v1;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [v2 setFilters:v3];

  return v0;
}

void sub_21EEE5B08(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_21EEE6A90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL SBScreenIsBlanked()
{
  v0 = [MEMORY[0x277CF0880] sharedBacklight];
  v1 = [v0 backlightState];

  return v1 == 0;
}

__CFString *NSStringFromSBHardwareButtonHintDropletStage(uint64_t a1)
{
  v1 = @"Initial";
  if (a1 == 1)
  {
    v1 = @"Presented";
  }

  if (a1 == 2)
  {
    return @"Flattened";
  }

  else
  {
    return v1;
  }
}

double _SBPIPContentViewPaddingWhileStashed(int a1)
{
  if (a1)
  {
    v1 = 42.0;
  }

  else
  {
    v1 = 10.0;
  }

  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      return v1;
    }
  }

  else
  {
    v2 = [MEMORY[0x277D75418] currentDevice];
    v3 = [v2 userInterfaceIdiom];

    if (v3 != 1)
    {
      return v1;
    }
  }

  v4 = [MEMORY[0x277CF0CA8] sharedInstance];
  v5 = [v4 homeButtonType];

  if (v5 == 2)
  {
    return 24.0;
  }

  else
  {
    return 20.0;
  }
}

void _SBSAXInsetForContainer(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, CGFloat a6)
{
  if (CGRectGetMinY(*&a1) + a5 > a6 || (v12.origin.x = a1, v12.origin.y = a2, v12.size.width = a3, v12.size.height = a4, CGRectGetMaxY(v12) - a5 < a6))
  {
    v13.origin.x = a1;
    v13.origin.y = a2;
    v13.size.width = a3;
    v13.size.height = a4;
    if (CGRectGetMinY(v13) + a5 <= a6)
    {
      v15.origin.x = a1;
      v15.origin.y = a2;
      v15.size.width = a3;
      v15.size.height = a4;
      CGRectGetMaxY(v15);
    }

    else
    {
      v14.origin.x = a1;
      v14.origin.y = a2;
      v14.size.width = a3;
      v14.size.height = a4;
      CGRectGetMinY(v14);
    }
  }
}

double _SBSAMicroIndicatorCenterXAlongsideContainer(double *a1, _OWORD *a2, void *a3, void *a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9)
{
  v17 = a4;
  v18 = a3;
  v19 = +[SBSystemApertureDomain rootSettings];
  [v17 inertContainerFrame];
  MidY = CGRectGetMidY(v79);
  v21 = [v18 activeIndicatorElementContext];

  [v21 indicatorSize];
  v23 = v22;
  v25 = v24;
  [v21 preferredEdgeOutsets];
  if (v23 >= v25)
  {
    v28 = v25;
  }

  else
  {
    v28 = v23;
  }

  v77 = v28;
  v75 = v28 - v26 - v27;
  [v19 indicatorContainerMinimumPadding];
  v30 = v29;
  [v19 indicatorMinimumScreenPadding];
  v74 = v31;
  *v76 = a5;
  *&v76[8] = a6;
  *&v76[16] = a7;
  *&v76[24] = a8;
  _SBSAXInsetForContainer(a5, a6, a7, a8, a9, MidY);
  v33 = v32;
  [v17 systemContainerBounds];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = [v17 platformMetrics];
  [v42 displayCornerRadius];
  _SBSAXInsetForContainer(v35, v37, v39, v41, v43, MidY);
  v45 = v44;

  [v19 indicatorContentMinimumScale];
  v73 = v46;
  [v19 indicatorContainerMinimumOutset];
  v72 = v47;
  [v19 indicatorContainerInterContainerPadding];
  v49 = v48;
  v50 = [v17 layoutDirection];
  [v17 systemContainerBounds];
  if (v50)
  {
    v55 = v33 + CGRectGetMinX(*v76) - v30;
    v56 = v74 + v45;
    v57 = v55 - (v74 + v45);
  }

  else
  {
    v58 = v51;
    v59 = v52;
    v60 = v53;
    v61 = v54;
    v55 = v30 + CGRectGetMaxX(*v76) - v33;
    v80.origin.x = v58;
    v80.origin.y = v59;
    v80.size.width = v60;
    v80.size.height = v61;
    v56 = CGRectGetMaxX(v80) - v45 - v74;
    v57 = v56 - v55;
  }

  v62 = v75;
  if (v57 < v75 + v49)
  {
    v63 = v72 + v72 + v73 * v77;
    if (v57 <= v30 + v63)
    {
      v62 = v72 + v72 + v73 * v77;
    }

    else
    {
      v62 = v63 + (v75 - v63) * ((v57 - (v30 + v63)) / (v75 + v49 - (v30 + v63)));
    }
  }

  v64 = v62 * 0.5;
  v65 = v57 * 0.5 + v55;
  tx = v56 - v62 * 0.5;
  if (v65 < tx)
  {
    tx = v65;
  }

  if (v49 + v55 + v64 < tx)
  {
    tx = v49 + v55 + v64;
  }

  if (a1)
  {
    [v17 displayScale];
    BSFloatRoundForScale();
    *a1 = tx;
  }

  if (a2)
  {
    [v17 displayScale];
    BSFloatRoundForScale();
    CGAffineTransformMakeScale(&v78, v67 / v77, v67 / v77);
    v68 = *&v78.c;
    *a2 = *&v78.a;
    a2[1] = v68;
    tx = v78.tx;
    a2[2] = *&v78.tx;
  }

  [v17 displayScale];
  BSFloatRoundForScale();
  v70 = v69;

  return v70;
}

double SBSAMicroIndicatorFrameHiddenUnderContainer(uint64_t a1, void *a2, void *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v12 = a3;
  v13 = a2;
  BSRectWithSize();
  v18 = SBSACornerRadiusForContainerBounds(a1, v12, v14, v15, v16, v17);
  v19 = [v12 layoutDirection];
  [v12 inertContainerFrame];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v47.origin.x = v21;
  v47.origin.y = v23;
  v47.size.width = v25;
  v47.size.height = v27;
  CGRectGetMidY(v47);
  v48.origin.x = a4;
  v48.origin.y = a5;
  v48.size.width = a6;
  v48.size.height = a7;
  Width = CGRectGetWidth(v48);
  v29 = +[SBSystemApertureDomain rootSettings];
  v30 = [v13 activeIndicatorElementContext];

  [v30 indicatorSize];
  v32 = v31;
  v34 = v33;
  [v30 preferredEdgeOutsets];
  if (v32 >= v34)
  {
    v37 = v34;
  }

  else
  {
    v37 = v32;
  }

  v38 = v18 + (v37 - v35 - v36) * 3.0;
  if (v38 > Width)
  {
    [v29 keyLineThickness];
    v38 = Width - v39 + -0.333333333;
  }

  v40 = a4;
  v41 = a5;
  v42 = a6;
  v43 = a7;
  if (v19 == 1)
  {
    v44 = v38 + CGRectGetMinX(*&v40);
  }

  else
  {
    v44 = CGRectGetMaxX(*&v40) - v38;
  }

  return v44;
}

uint64_t SBSAScaledAndClippedFrameByScalingLeadingTrailingViews(CGFloat *a1, void *a2, double a3, double a4, double a5, double a6, double a7, double a8, CGFloat a9, CGFloat a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v20 = a2;
  SBUnintegralizedRectCenteredAboutPoint();
  v47 = v21;
  v48 = v22;
  v49 = v23;
  v50 = v24;
  v51 = 0;
  v25 = SBSAPrimaryContainerBoundsForCompactScaledProvidedViews(v20, &v51, a9, a10, a9, a10, v21, v23, v22, v24);
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = [v20 platformMetrics];
  [v32 minimumEdgePadding];
  v34 = v33;

  [v20 systemContainerBounds];
  v57 = CGRectInset(v52, v34, v34);
  v53.origin.x = v25;
  v53.origin.y = v27;
  v53.size.width = v29;
  v53.size.height = v31;
  CGRectIntersection(v53, v57);
  [v20 displayScale];

  BSRectRoundForScale();
  BSRectWithSize();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  UIRectGetCenter();
  [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
  v54.origin.x = v36;
  v54.origin.y = v38;
  v54.size.width = v40;
  v54.size.height = v42;
  Height = CGRectGetHeight(v54);
  v55.origin.x = v47;
  v55.size.width = v48;
  v55.origin.y = v49;
  v55.size.height = v50;
  v44 = CGRectGetHeight(v55);
  v56.origin.x = v36;
  v56.origin.y = v38;
  v56.size.width = v40;
  v56.size.height = v42;
  Width = CGRectGetWidth(v56);
  if (a1)
  {
    *a1 = v47;
    a1[1] = v49;
    a1[2] = Width + (Height - v44) * -0.5 * 2.0;
    a1[3] = v50;
  }

  return SBUnintegralizedRectCenteredAboutPoint();
}

double SBSAPrimaryContainerBoundsForCompactScaledProvidedViews(void *a1, double *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7, double a8, double a9, double a10)
{
  v15 = a1;
  [v15 inertContainerFrame];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  if (!SBSARectApproximatelyContainsRect(a7, a8, a9, a10, v16, v18, v20, v22, 0.01))
  {
    v49 = 0.0;
    if (!a2)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v24 = [v15 layoutDirection] == 1;
  v92.origin.x = v17;
  v92.origin.y = v19;
  v92.size.width = v21;
  v92.size.height = v23;
  v83.origin.x = CGRectGetMinX(v92);
  v93.origin.x = a7;
  v93.origin.y = a8;
  v93.size.width = a9;
  v93.size.height = a10;
  v83.origin.y = a7;
  v25 = a8;
  v81 = v83.origin.x - CGRectGetMinX(v93);
  v94.origin.x = v83.origin.y;
  v94.origin.y = a8;
  v94.size.width = a9;
  v94.size.height = a10;
  MinX = CGRectGetMinX(v94);
  v95.origin.x = v83.origin.y;
  v95.origin.y = a8;
  v95.size.width = a9;
  v95.size.height = a10;
  MaxX = CGRectGetMaxX(v95);
  v96.origin.x = v17;
  v96.origin.y = v19;
  v96.size.width = v21;
  v96.size.height = v23;
  v27 = CGRectGetMaxX(v96);
  v97.size.width = v21;
  v28 = MaxX - v27;
  v83.origin.x = v17;
  v97.origin.x = v17;
  v64 = v23;
  v65 = v19;
  v97.origin.y = v19;
  r2 = v97.size.width;
  v97.size.height = v23;
  v29 = CGRectGetMaxX(v97);
  v30 = MEMORY[0x277D76620];
  if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
  {
    v31 = v28;
  }

  else
  {
    v31 = v81;
  }

  v80 = v31;
  if ([*v30 userInterfaceLayoutDirection] == 1)
  {
    v32 = v29;
  }

  else
  {
    v32 = MinX;
  }

  v79 = v32;
  if ([*v30 userInterfaceLayoutDirection] == 1)
  {
    v33 = v81;
  }

  else
  {
    v33 = v28;
  }

  v82 = v33;
  if ([*v30 userInterfaceLayoutDirection] == 1)
  {
    v29 = MinX;
  }

  v98.origin.x = v83.origin.y;
  v98.origin.y = v25;
  v98.size.width = a9;
  v98.size.height = a10;
  MinY = CGRectGetMinY(v98);
  v99.origin.x = v83.origin.y;
  v99.origin.y = v25;
  v99.size.width = a9;
  v99.size.height = a10;
  Height = CGRectGetHeight(v99);
  v100.origin.x = v83.origin.y;
  v100.origin.y = v25;
  v100.size.width = a9;
  v100.size.height = a10;
  v36 = CGRectGetMinY(v100);
  v101.origin.x = v83.origin.y;
  rect = v25;
  v101.origin.y = v25;
  v68 = a9;
  v70 = a10;
  v101.size.width = a9;
  v101.size.height = a10;
  v37 = CGRectGetHeight(v101);
  v90 = 0u;
  v91 = 0u;
  v89 = 0;
  SAUIMiddleAttachedTransformForProvidedViewWithScale(1, 0, v24, &v89, v79, MinY, v80, Height, a3, a4);
  v87 = 0u;
  v88 = 0u;
  v86 = 0;
  SAUIMiddleAttachedTransformForProvidedViewWithScale(0, 0, v24, &v86, v29, v36, v82, v37, a5, a6);
  v83.size = v89;
  v84 = v90;
  v85 = v91;
  v102.origin.x = v79;
  v72 = MinY;
  v102.origin.y = MinY;
  v102.size.width = v80;
  v66 = Height;
  v102.size.height = Height;
  v103 = CGRectApplyAffineTransform(v102, &v83.size);
  x = v103.origin.x;
  y = v103.origin.y;
  width = v103.size.width;
  v83.size = v86;
  v84 = v87;
  v85 = v88;
  v74 = v36;
  v76 = v29;
  v103.origin.x = v29;
  v41 = v103.size.height;
  v103.origin.y = v36;
  v103.size.width = v82;
  v67 = v37;
  v103.size.height = v37;
  v104 = CGRectApplyAffineTransform(v103, &v83.size);
  v78 = v104.origin.x;
  v42 = v104.origin.y;
  v43 = v104.size.width;
  v44 = v104.size.height;
  v104.origin.x = x;
  v104.origin.y = y;
  v104.size.width = width;
  v104.size.height = v41;
  v62 = x;
  v60 = v41;
  v61 = width;
  if (CGRectIsEmpty(v104))
  {
    v45 = v64;
    v46 = v65;
    v47 = r2;
    v48 = v83.origin.x;
  }

  else
  {
    v105.origin.x = x;
    v105.origin.y = y;
    v105.size.width = width;
    v105.size.height = v41;
    v115.origin.x = v83.origin.x;
    v115.size.height = v64;
    v115.origin.y = v65;
    v115.size.width = r2;
    v106 = CGRectUnion(v105, v115);
    v48 = v106.origin.x;
    v46 = v106.origin.y;
    v47 = v106.size.width;
    v45 = v106.size.height;
  }

  v107.origin.x = v78;
  v107.origin.y = v42;
  v107.size.width = v43;
  v107.size.height = v44;
  IsEmpty = CGRectIsEmpty(v107);
  v51 = v42;
  v52 = v78;
  if (!IsEmpty)
  {
    v53 = v43;
    v54 = v44;
    v116.origin.x = v48;
    v116.origin.y = v46;
    v116.size.width = v47;
    v116.size.height = v45;
    v108 = CGRectUnion(*&v52, v116);
    v48 = v108.origin.x;
    v46 = v108.origin.y;
    v47 = v108.size.width;
    v45 = v108.size.height;
  }

  v109.origin.x = v48;
  v109.origin.y = v46;
  v109.size.width = v47;
  v109.size.height = v45;
  CGRectGetHeight(v109);
  v110.origin.x = v83.origin.y;
  v110.origin.y = rect;
  v110.size.width = v68;
  v110.size.height = v70;
  CGRectGetHeight(v110);
  v111.origin.y = y;
  v111.origin.x = v62;
  v111.size.height = v60;
  v111.size.width = v61;
  v55 = CGRectGetWidth(v111);
  v112.origin.x = v79;
  v112.size.width = v80;
  v112.origin.y = v72;
  v112.size.height = v66;
  v56 = v55 - CGRectGetWidth(v112);
  v113.origin.x = v78;
  v113.origin.y = v42;
  v113.size.width = v43;
  v113.size.height = v44;
  v57 = CGRectGetWidth(v113);
  v114.origin.y = v74;
  v114.origin.x = v76;
  v114.size.width = v82;
  v114.size.height = v67;
  a7 = v48;
  v49 = (v56 - (v57 - CGRectGetWidth(v114))) * 0.5;
  if (a2)
  {
LABEL_21:
    *a2 = v49;
  }

LABEL_22:

  return a7;
}

uint64_t SBSAScaledAndClippedFrameByScalingDimensions(double *a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7, double a8, CGFloat a9, CGFloat a10)
{
  v17 = a2;
  CGAffineTransformMakeScale(&v39, a9, a10);
  *v38 = a3;
  *&v38[8] = a4;
  v40.origin.x = a3;
  v40.origin.y = a4;
  *&v38[16] = a5;
  *&v38[24] = a6;
  v40.size.width = a5;
  v40.size.height = a6;
  CGRectApplyAffineTransform(v40, &v39);
  SBUnintegralizedRectCenteredAboutPoint();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = [v17 platformMetrics];
  [v26 minimumEdgePadding];
  v28 = v27;

  [v17 systemContainerBounds];
  v47 = CGRectInset(v41, v28, v28);
  v42.origin.x = v19;
  v42.origin.y = v21;
  v42.size.width = v23;
  v42.size.height = v25;
  CGRectIntersection(v42, v47);
  [v17 displayScale];

  UIRectIntegralWithScale();
  BSRectWithSize();
  x = v43.origin.x;
  y = v43.origin.y;
  width = v43.size.width;
  height = v43.size.height;
  CGRectGetHeight(v43);
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  CGRectGetHeight(v44);
  if (a1)
  {
    v45.origin.x = x;
    v45.origin.y = y;
    v45.size.width = width;
    v45.size.height = height;
    v36 = CGRectGetWidth(v45);
    v37 = v36 / CGRectGetWidth(*v38);
    v46.origin.x = x;
    v46.origin.y = y;
    v46.size.width = width;
    v46.size.height = height;
    v35 = CGRectGetHeight(v46);
    v33 = CGRectGetHeight(*v38);
    *a1 = v37;
    a1[1] = v35 / v33;
  }

  return SBUnintegralizedRectCenteredAboutPoint();
}

uint64_t SBSABoundsForAdjunctContainerView(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  [v9 inertContainerFrame];
  BSRectWithSize();
  SBSARectApplyDirectionEdgeInsets([v9 layoutDirection], v10, v11, v12, v13, a2, a3, a4, a5);
  [v9 displayScale];

  return UIRectRoundToScale();
}

double SBSAInitialFrameForElementAtIndex(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [v5 inertContainerFrame];
  v7 = MinX;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if (a1)
  {
    [v5 inertContainerFrame];
    BSRectWithSize();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v28.origin.x = v7;
    v28.origin.y = v9;
    v28.size.width = v11;
    v28.size.height = v13;
    MinY = CGRectGetMinY(v28);
    v21 = v7;
    v22 = v9;
    v23 = v11;
    v24 = v13;
    if (a2 == 4)
    {
      MinX = CGRectGetMinX(*&v21);
    }

    else
    {
      CGRectGetMaxX(*&v21);
      v29.origin.x = v15;
      v29.origin.y = MinY;
      v29.size.width = v17;
      v29.size.height = v19;
      MinX = CGRectGetWidth(v29);
    }
  }

  [v5 displayScale];
  UIRectIntegralWithScale();
  v26 = v25;

  return v26;
}

double SBSAAdjunctFrameForElementInCollection(unint64_t a1, void *a2, void *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v13 = a2;
  v14 = a3;
  if (a1 && [v13 count] <= a1)
  {
    SBSAAdjunctFrameForElementInCollection_cold_1();
  }

  v15 = [v13 count];
  if (v15 <= a1)
  {
    v16 = 0;
  }

  else
  {
    v16 = [v13 objectAtIndexedSubscript:a1];
  }

  v17 = [v16 layoutMode];
  v18 = [v16 interfaceOrientation];
  v19 = v18 - 3;
  if (!a1 && v19 > 1)
  {
    goto LABEL_35;
  }

  if (v17 == 1)
  {
    recta = a7;
    [v14 inertContainerFrame];
    v74 = v40;
    v76 = v39;
    v71 = v42;
    v72 = v41;
    [v16 preferredEdgeOutsets];
    SBSABoundsForAdjunctContainerView(v14, v43, v44, v45, v46);
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;
    [v14 inertContainerFrame];
    v56 = v55;
    v82.origin.x = v48;
    v82.origin.y = v50;
    v82.size.width = v52;
    v82.size.height = v54;
    Width = CGRectGetWidth(v82);
    if (v56 >= Width)
    {
      v58 = v56;
    }

    else
    {
      v58 = Width;
    }

    v59 = SBSAAdjunctFrameIsOnLeft(a1, v13, v14);
    v60 = a4;
    v61 = a5;
    v62 = a6;
    v63 = recta;
    if (v59)
    {
      MinX = CGRectGetMinX(*&v60);
    }

    else
    {
      MinX = CGRectGetMaxX(*&v60);
    }

    v65 = MinX;
    v83.origin.y = v74;
    v83.origin.x = v76;
    v83.size.height = v71;
    v83.size.width = v72;
    MinY = CGRectGetMinY(v83);
    if (v19 < 2)
    {
      ++a1;
    }

    if (!a1)
    {
      SBSAAdjunctFrameForElementInCollection_cold_2();
    }

    v84.origin.x = v65;
    v84.origin.y = MinY;
    v84.size.width = v58;
    v84.size.height = v54;
    CGRectGetWidth(v84);
    goto LABEL_35;
  }

  if (v17 != 3)
  {
    goto LABEL_35;
  }

  [v16 preferredEdgeOutsets];
  SBSAPortraitFrameForPrimaryContainerView(v14, v20, v21, v22, v23);
  v28 = v24;
  v29 = v25;
  v30 = v26;
  v31 = v27;
  if (v19 <= 1)
  {
    rectb = CGRectGetHeight(*&v24);
    v81.origin.x = v28;
    v81.origin.y = v29;
    v81.size.width = v30;
    v81.size.height = v31;
    v31 = CGRectGetWidth(v81);
    v30 = rectb;
  }

  [v14 landscapeScreenEdgeInsets];
  v75 = v32;
  rect = v33;
  v73 = v34;
  [v14 systemContainerBounds];
  if (v18 < 3)
  {
    goto LABEL_34;
  }

  if (v18 == 3)
  {
    rectc = a7;
    v67 = CGRectGetMaxX(*&v35) - v73;
    v85.origin.x = v28;
    v85.origin.y = v29;
    v85.size.width = v30;
    v85.size.height = v31;
    v28 = v67 - CGRectGetWidth(v85);
    a7 = rectc;
    goto LABEL_31;
  }

  if (v18 == 4)
  {
    v28 = rect;
LABEL_31:
    v29 = v75;
    goto LABEL_32;
  }

  if (v19 > 1)
  {
    goto LABEL_35;
  }

LABEL_32:
  if (v15 > 1 || (v86.origin.x = v28, v86.origin.y = v29, v86.size.width = v30, v86.size.height = v31, v88.origin.x = a4, v88.origin.y = a5, v88.size.width = a6, v88.size.height = a7, CGRectIntersectsRect(v86, v88)))
  {
LABEL_34:
    v87.origin.x = a4;
    v87.origin.y = a5;
    v87.size.width = a6;
    v87.size.height = a7;
    CGRectGetMaxY(v87);
  }

LABEL_35:
  [v14 displayScale];
  UIRectIntegralWithScale();
  v69 = v68;

  return v69;
}

uint64_t SBSAAdjunctFrameIsOnLeft(unint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 count] <= a1)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 objectAtIndexedSubscript:a1];
  }

  v8 = [v6 layoutDirection];
  v9 = [v7 interfaceOrientation];
  v11 = (v9 - 1) < 2 && v8 == 1;
  v12 = v9 == 4 || v11;

  return v12;
}

uint64_t SAUIMiddleAttachedTransformForProvidedViewWithScale@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>, CGFloat a5@<D0>, CGFloat a6@<D1>, CGFloat a7@<D2>, CGFloat a8@<D3>, CGFloat a9@<D4>, CGFloat a10@<D5>)
{
  v19 = -1.0;
  if (a1)
  {
    v19 = 1.0;
  }

  if (a3)
  {
    v20 = v19;
  }

  else
  {
    v20 = -v19;
  }

  v21 = a5;
  Width = CGRectGetWidth(*(&a6 - 1));
  v38.origin.x = a5;
  v38.origin.y = a6;
  v38.size.width = a7;
  v38.size.height = a8;
  MidX = CGRectGetMidX(v38);
  v39.origin.x = a5;
  v39.origin.y = a6;
  v39.size.width = a7;
  v39.size.height = a8;
  MidY = CGRectGetMidY(v39);
  memset(&v37, 0, sizeof(v37));
  CGAffineTransformMakeTranslation(&v37, -MidX, -MidY);
  memset(&v36, 0, sizeof(v36));
  CGAffineTransformMakeTranslation(&v36, MidX, MidY);
  memset(&v35, 0, sizeof(v35));
  CGAffineTransformMakeScale(&v35, a9, a10);
  t1 = v37;
  memset(&v34, 0, sizeof(v34));
  t2 = v35;
  CGAffineTransformConcat(&v34, &t1, &t2);
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  t1 = v34;
  t2 = v36;
  CGAffineTransformConcat(a4, &t1, &t2);
  if (!BSFloatIsOne() || (result = BSFloatIsOne(), (result & 1) == 0))
  {
    v25 = 0.0;
    if (a1)
    {
      v25 = v20;
    }

    if (a2)
    {
      v26 = v25;
    }

    else
    {
      v26 = v20;
    }

    result = BSFloatIsZero();
    if ((result & 1) == 0)
    {
      memset(&t1, 0, sizeof(t1));
      CGAffineTransformMakeTranslation(&t1, v26 * (-(Width - Width * a9) / (a9 + a9)), 0.0);
      v31 = t1;
      v27 = *(a4 + 16);
      *&v30.a = *a4;
      *&v30.c = v27;
      *&v30.tx = *(a4 + 32);
      result = CGAffineTransformConcat(&t2, &v31, &v30);
      v28 = *&t2.c;
      *a4 = *&t2.a;
      *(a4 + 16) = v28;
      *(a4 + 32) = *&t2.tx;
    }
  }

  return result;
}

void sub_21EEF1824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EEF2D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EEF4634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EEF5940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  _Block_object_dispose(&a58, 8);
  _Block_object_dispose(&STACK[0x208], 8);
  _Block_object_dispose(&STACK[0x238], 8);
  _Unwind_Resume(a1);
}

void sub_21EEF61E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a57, 8);
  _Unwind_Resume(a1);
}

id _SBDisplayControllerTransactionLabel(objc_class *a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = NSStringFromClass(a1);
  v6 = [v3 stringWithFormat:@"%@:%@", v5, v4];

  return v6;
}

id _SBPreventIdleSleepReason(void *a1, uint64_t a2)
{
  v3 = a1;
  if (!v3)
  {
    _SBPreventIdleSleepReason_cold_1();
  }

  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", a2, v3];

  return v4;
}

__CFString *_SBDisplayControllerLoggingProem(void *a1)
{
  if (a1)
  {
    v2 = [a1 description];
  }

  else
  {
    v2 = @"disconnected";
  }

  return v2;
}

__CFString *SBCADisplayDifferenceMaskDescription(uint64_t a1)
{
  if (a1)
  {
    if (a1 == -1)
    {
      v2 = @"<invalid>";
    }

    else
    {
      v3 = [MEMORY[0x277CCAB68] stringWithString:@"["];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v12 = __SBCADisplayDifferenceMaskDescription_block_invoke;
      v13 = &unk_2783ACE80;
      v4 = v3;
      v14 = v4;
      v15 = @"[";
      v5 = v11;
      v6 = 0;
      v16 = 0;
      v7 = vcnt_s8(a1);
      v7.i16[0] = vaddlv_u8(v7);
      v8 = v7.i32[0];
      do
      {
        if (((1 << v6) & a1) != 0)
        {
          (v12)(v5);
          if (v16)
          {
            break;
          }

          --v8;
        }

        if (v6 > 0x3E)
        {
          break;
        }

        ++v6;
      }

      while (v8 > 0);

      [v4 appendString:@"]"];
      v9 = v15;
      v2 = v4;
    }
  }

  else
  {
    v2 = @"<none>";
  }

  return v2;
}

uint64_t __SBCADisplayDifferenceMaskDescription_block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) isEqualToString:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) appendString:@"|"];
  }

  v5 = a2 - 1;
  if (a2 - 1) <= 7 && ((0x8Bu >> v5))
  {
    v6 = off_2783ACEA0[v5];
    v7 = *(a1 + 32);

    return [v7 appendString:v6];
  }

  return result;
}

uint64_t SBCADifferenceMaskCalculate(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = v8;
  if (v10)
  {
    NSClassFromString(&cfstr_Cadisplaymode.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      SBCADifferenceMaskCalculate_cold_1();
    }

    v11 = [v7 currentMode];
    v12 = BSEqualObjects() ^ 1;
    v13 = [v7 overscanAdjustment];
    v14 = BSEqualStrings();
    if (v9)
    {
      v15 = v14;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      v12 |= 2uLL;
    }

    [v7 logicalScale];
    if ((!BSFloatApproximatelyEqualToFloat() || (BSFloatApproximatelyEqualToFloat() & 1) == 0) && !BSSizeEqualToSize())
    {
      v12 |= 4uLL;
    }

    if ([v7 pointScale] == a4 || a4 == 0)
    {
      v17 = v12;
    }

    else
    {
      v17 = v12 | 8;
    }
  }

  else
  {
    v17 = -1;
  }

  return v17;
}

uint64_t _SBXXDisplayIdentifierForPID(uint64_t a1, uint64_t a2, _BYTE *a3, _OWORD *a4)
{
  BSDispatchQueueAssertNotMain();
  v7 = [MEMORY[0x277D0AAF8] sharedSystemClientAuthenticator];
  v8 = a4[1];
  v19[0] = *a4;
  v19[1] = v8;
  v9 = [MEMORY[0x277CF0B98] tokenFromAuditToken:v19];
  v18 = 0;
  v10 = [v7 authenticateAuditToken:v9 error:&v18];
  v11 = v18;

  if (v10)
  {
    *a3 = 0;
    v12 = +[SBApplicationController sharedInstance];
    v13 = [v12 applicationWithPid:a2];

    v14 = [v13 bundleIdentifier];
    v15 = v14;
    if (v14)
    {
      [v14 getCString:a3 maxLength:1024 encoding:4];
    }

    v16 = 0;
  }

  else
  {
    v13 = SBLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      _SBXXDisplayIdentifierForPID_cold_1(v11);
    }

    v16 = 5;
  }

  return v16;
}

uint64_t _SBXXDisplayIdentifiersForPID(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4, _OWORD *a5)
{
  v22[1] = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertNotMain();
  v9 = [MEMORY[0x277D0AAF8] sharedSystemClientAuthenticator];
  v10 = a5[1];
  v21[0] = *a5;
  v21[1] = v10;
  v11 = [MEMORY[0x277CF0B98] tokenFromAuditToken:v21];
  v20 = 0;
  v12 = [v9 authenticateAuditToken:v11 error:&v20];
  v13 = v20;

  if (v12)
  {
    v14 = +[SBApplicationController sharedInstanceIfExists];
    v15 = [v14 applicationWithPid:a2];

    if (v15)
    {
      v16 = [v15 bundleIdentifier];
      v22[0] = v16;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    }

    else
    {
      v17 = MEMORY[0x277CBEBF8];
    }

    v18 = serializePropertyListObject(v17, a3, a4);
  }

  else
  {
    v15 = SBLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      _SBXXDisplayIdentifiersForPID_cold_1(v13);
    }

    v18 = 5;
  }

  return v18;
}

uint64_t _SBXXAppSwitcherServiceRegister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  BSDispatchQueueAssertNotMain();
  v26 = 0;
  v9 = a5[1];
  v25[0] = *a5;
  v25[1] = v9;
  v10 = [MEMORY[0x277D0AAF8] authenticateAuditToken:v25 forEntitlement:@"com.apple.springboard.switcherServiceRegistrar" error:&v26];
  v11 = v26;
  if (v10)
  {
    v12 = [objc_alloc(MEMORY[0x277CF0C60]) initWithPort:a2];
    v13 = [MEMORY[0x277CCACA8] stringWithCString:a3 encoding:134217984];
    v14 = [MEMORY[0x277CCACA8] stringWithCString:a4 encoding:134217984];
    v15 = [SBAppSwitcherService switcherServiceWithName:v13 viewServiceClassName:v14];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___SBXXAppSwitcherServiceRegister_block_invoke;
    block[3] = &unk_2783A8C18;
    v16 = v15;
    v24 = v16;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v17 = MEMORY[0x277CF0CB8];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___SBXXAppSwitcherServiceRegister_block_invoke_2;
    v21[3] = &unk_2783A8C18;
    v22 = v16;
    v18 = v16;
    [v17 monitorSendRight:v12 withHandler:v21];

    v19 = 0;
  }

  else
  {
    v12 = SBLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      _SBXXAppSwitcherServiceRegister_cold_1(v11);
    }

    v19 = 5;
  }

  return v19;
}

uint64_t _SBXXApplicationDisplayIdentifiers(uint64_t a1, int a2, int a3, void *a4, _DWORD *a5, _OWORD *a6)
{
  v40 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertNotMain();
  v11 = [MEMORY[0x277D0AAF8] sharedSystemClientAuthenticator];
  v12 = a6[1];
  v38[0] = *a6;
  v38[1] = v12;
  v13 = [MEMORY[0x277CF0B98] tokenFromAuditToken:v38];
  v37 = 0;
  v14 = [v11 authenticateAuditToken:v13 error:&v37];
  v15 = v37;

  if (v14)
  {
    if (!a2 && ![SBApp hasFinishedLaunching])
    {
      v21 = 5;
      goto LABEL_24;
    }

    v16 = [MEMORY[0x277CBEB58] set];
    if (!a3 || (+[SBPlatformController sharedInstance](SBPlatformController, "sharedInstance"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 isInternalInstall], v17, v18))
    {
      v19 = +[SBApplicationController sharedInstance];
      v20 = v19;
      if (a2)
      {
        [v19 runningApplications];
      }

      else
      {
        [v19 allApplications];
      }
      v22 = ;

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v23 = v22;
      v24 = [v23 countByEnumeratingWithState:&v33 objects:v39 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v34;
        do
        {
          v27 = 0;
          do
          {
            if (*v34 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = [*(*(&v33 + 1) + 8 * v27) bundleIdentifier];
            [v16 addObject:v28];

            ++v27;
          }

          while (v25 != v27);
          v25 = [v23 countByEnumeratingWithState:&v33 objects:v39 count:16];
        }

        while (v25);
      }

      if (!a2)
      {
        v29 = serverIconController();
        v30 = [v29 visibleIconStateDisplayIdentifiers];
        [v16 intersectSet:v30];
      }
    }

    v31 = [v16 allObjects];
    v21 = serializePropertyListObject(v31, a4, a5);
  }

  else
  {
    v16 = SBLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      _SBXXApplicationDisplayIdentifiers_cold_1(v15);
    }

    v21 = 5;
  }

LABEL_24:
  return v21;
}

uint64_t _SBXXFrontmostApplicationDisplayIdentifier(uint64_t a1, uint64_t a2, __int128 *a3)
{
  BSDispatchQueueAssertMain();
  v5 = [MEMORY[0x277D0AAF8] sharedSystemClientAuthenticator];
  v6 = a3[1];
  v26 = *a3;
  v27 = v6;
  v7 = [MEMORY[0x277CF0B98] tokenFromAuditToken:&v26];
  v30 = 0;
  v8 = [v5 authenticateAuditToken:v7 error:&v30];
  v9 = v30;

  if (v8)
  {
    *&v26 = 0;
    *(&v26 + 1) = &v26;
    *&v27 = 0x3032000000;
    *(&v27 + 1) = __Block_byref_object_copy__9;
    v28 = __Block_byref_object_dispose__9;
    v29 = 0;
    v10 = +[SBMainSwitcherControllerCoordinator _shim_activeSwitcherController];
    v11 = [v10 layoutStatePrimaryElement];
    v12 = [v11 workspaceEntity];
    v13 = [v12 applicationSceneEntity];
    v14 = [v13 sceneHandle];
    v15 = [v14 application];
    v16 = [v15 bundleIdentifier];

    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      v17 = *(&v26 + 1);
      v18 = v16;
      v19 = *(v17 + 40);
      *(v17 + 40) = v18;
    }

    else
    {
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = ___SBXXFrontmostApplicationDisplayIdentifier_block_invoke;
      v23[3] = &unk_2783A8CE0;
      v25 = &v26;
      v24 = v16;
      dispatch_sync(MEMORY[0x277D85CD0], v23);
      v19 = v24;
    }

    if ([*(*(&v26 + 1) + 40) getCString:a2 maxLength:1024 encoding:4])
    {
      v21 = 0;
    }

    else
    {
      v21 = 4;
    }

    _Block_object_dispose(&v26, 8);
  }

  else
  {
    v20 = SBLogCommon();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      _SBXXFrontmostApplicationDisplayIdentifier_cold_1(v9);
    }

    v21 = 5;
  }

  return v21;
}

void sub_21EEFA968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _SBXXBundlePathForDisplayIdentifier(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  BSDispatchQueueAssertNotMain();
  v7 = [MEMORY[0x277D0AAF8] sharedSystemClientAuthenticator];
  v8 = a4[1];
  v21[0] = *a4;
  v21[1] = v8;
  v9 = [MEMORY[0x277CF0B98] tokenFromAuditToken:v21];
  v20 = 0;
  v10 = [v7 authenticateAuditToken:v9 error:&v20];
  v11 = v20;

  if (v10)
  {
    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:a2];
    if (v12)
    {
      v13 = +[SBApplicationController sharedInstance];
      v14 = [v13 applicationWithBundleIdentifier:v12];
      v15 = [v14 info];

      v16 = [v15 bundleURL];
      v17 = [v16 path];
    }

    else
    {
      v17 = 0;
    }

    if ([v17 getCString:a3 maxLength:1024 encoding:4])
    {
      v18 = 0;
    }

    else
    {
      v18 = 4;
    }
  }

  else
  {
    v17 = SBLogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      _SBXXBundlePathForDisplayIdentifier_cold_1(v11);
    }

    v18 = 5;
  }

  return v18;
}

uint64_t _SBXXLocalizedApplicationNameForDisplayIdentifier(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  BSDispatchQueueAssertNotMain();
  v7 = [MEMORY[0x277D0AAF8] sharedSystemClientAuthenticator];
  v8 = a4[1];
  v26 = *a4;
  v27 = v8;
  v9 = [MEMORY[0x277CF0B98] tokenFromAuditToken:&v26];
  v30 = 0;
  v10 = [v7 authenticateAuditToken:v9 error:&v30];
  v11 = v30;

  if (v10)
  {
    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:a2];
    if (v12)
    {
      v13 = +[SBApplicationController sharedInstanceIfExists];
      v14 = [v13 applicationWithBundleIdentifier:v12];

      if (v14)
      {
        v15 = [v14 displayName];
      }

      else
      {
        v17 = [SBWebApplication _webClipIdentifierFromWebAppIdentifier:v12];
        v18 = v17;
        if (v17)
        {
          *&v26 = 0;
          *(&v26 + 1) = &v26;
          *&v27 = 0x3032000000;
          *(&v27 + 1) = __Block_byref_object_copy__9;
          v28 = __Block_byref_object_dispose__9;
          v29 = 0;
          v20 = MEMORY[0x277D85DD0];
          v21 = 3221225472;
          v22 = ___SBXXLocalizedApplicationNameForDisplayIdentifier_block_invoke;
          v23 = &unk_2783A8CE0;
          v25 = &v26;
          v24 = v17;
          dispatch_sync(MEMORY[0x277D85CD0], &v20);
          v15 = *(*(&v26 + 1) + 40);

          _Block_object_dispose(&v26, 8);
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 0;
    }

    if ([v15 getCString:a3 maxLength:1024 encoding:4, v20, v21, v22, v23])
    {
      v16 = 0;
    }

    else
    {
      v16 = 4;
    }
  }

  else
  {
    v15 = SBLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      _SBXXLocalizedApplicationNameForDisplayIdentifier_cold_1(v11);
    }

    v16 = 5;
  }

  return v16;
}

uint64_t _SBXXSuspendFrontmostApp(uint64_t a1, _OWORD *a2)
{
  v2 = a2[1];
  v11[0] = *a2;
  v11[1] = v2;
  v3 = [MEMORY[0x277CF0B98] tokenFromAuditToken:v11];
  v4 = [MEMORY[0x277D0AAF8] sharedSystemClientAuthenticator];
  v10 = 0;
  v5 = [v4 authenticateAuditToken:v3 error:&v10];
  v6 = v10;

  if (v5)
  {
    BSDispatchMain();
    v7 = 0;
  }

  else
  {
    v8 = SBLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      _SBXXSuspendFrontmostApp_cold_1(v6);
    }

    v7 = 5;
  }

  return v7;
}

uint64_t _SBXXInterruptKeybagRefetch(uint64_t a1, _OWORD *a2)
{
  BSDispatchQueueAssertNotMain();
  v3 = a2[1];
  v17[0] = *a2;
  v17[1] = v3;
  v4 = [MEMORY[0x277CF0B98] tokenFromAuditToken:v17];
  v5 = [MEMORY[0x277D0AAF8] sharedSystemClientAuthenticator];
  v16 = 0;
  v6 = [v5 authenticateAuditToken:v4 error:&v16];
  v7 = v16;

  if (v6)
  {
    v8 = [MEMORY[0x277D0AAC0] sharedInstance];
    v9 = [v8 processForPID:{objc_msgSend(v4, "pid")}];

    v10 = FBSProcessPrettyDescription();
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = ___SBXXInterruptKeybagRefetch_block_invoke;
    v14[3] = &unk_2783A8C18;
    v15 = v10;
    v11 = v10;
    dispatch_async(MEMORY[0x277D85CD0], v14);

    v12 = 0;
  }

  else
  {
    v9 = SBLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      _SBXXInterruptKeybagRefetch_cold_1(v7);
    }

    v12 = 5;
  }

  return v12;
}

uint64_t _SBXXGetInterfaceOrientation(uint64_t a1, _DWORD *a2)
{
  BSDispatchQueueAssertMain();
  if (a2)
  {
    *a2 = [SBApp activeInterfaceOrientation];
  }

  return 0;
}

uint64_t _SBXXSetWantsLockButtonEvents(uint64_t a1, int a2, _OWORD *a3)
{
  BSDispatchQueueAssertNotMain();
  v5 = a3[1];
  v13[0] = *a3;
  v13[1] = v5;
  if ([MEMORY[0x277D0AAF8] authenticateAuditToken:v13 forEntitlement:@"com.apple.springboard.setWantsLockButtonEvents" error:0])
  {
    v6 = SBRunningApplicationForAuditToken();
    v7 = v6;
    if (v6)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = ___SBXXSetWantsLockButtonEvents_block_invoke;
      v10[3] = &unk_2783AC098;
      v7 = v6;
      v11 = v7;
      v12 = a2;
      dispatch_async(MEMORY[0x277D85CD0], v10);
    }

    v8 = 0;
  }

  else
  {
    v7 = SBLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      _SBXXSetWantsLockButtonEvents_cold_1();
    }

    v8 = 5;
  }

  return v8;
}

uint64_t _SBXXPresentPowerDownUI(uint64_t a1, _OWORD *a2)
{
  BSDispatchQueueAssertNotMain();
  v3 = SBRunningApplicationForAuditToken();
  if ([v3 isSystemApplication])
  {
    v11 = 0;
    v4 = a2[1];
    v10[0] = *a2;
    v10[1] = v4;
    v5 = [MEMORY[0x277D0AAF8] authenticateAuditToken:v10 forEntitlement:@"com.apple.springboard.presentPowerDownUI" error:&v11];
    v6 = v11;

    if (v5)
    {
      dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_86);
      v7 = 0;
      goto LABEL_8;
    }
  }

  else
  {

    v6 = 0;
  }

  v8 = SBLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    _SBXXPresentPowerDownUI_cold_1(v6);
  }

  v7 = 5;
LABEL_8:

  return v7;
}

uint64_t _SBXXReboot(uint64_t a1, _OWORD *a2)
{
  v2 = a2[1];
  v13[0] = *a2;
  v13[1] = v2;
  v3 = [MEMORY[0x277CF0B98] tokenFromAuditToken:v13];
  v4 = [MEMORY[0x277D0AAF8] sharedSystemClientAuthenticator];
  v12 = 0;
  v5 = [v4 authenticateAuditToken:v3 error:&v12];
  v6 = v12;

  if (v5)
  {
    v7 = [MEMORY[0x277D0AAC0] sharedInstance];
    v8 = [v7 processForPID:{objc_msgSend(v3, "pid")}];

    v9 = v8;
    BSDispatchMain();

    v10 = 0;
  }

  else
  {
    v9 = SBLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      _SBXXReboot_cold_1(v6);
    }

    v10 = 5;
  }

  return v10;
}

uint64_t _SBXXShutDown(uint64_t a1, _OWORD *a2)
{
  v2 = a2[1];
  v13[0] = *a2;
  v13[1] = v2;
  v3 = [MEMORY[0x277CF0B98] tokenFromAuditToken:v13];
  v4 = [MEMORY[0x277D0AAF8] sharedSystemClientAuthenticator];
  v12 = 0;
  v5 = [v4 authenticateAuditToken:v3 error:&v12];
  v6 = v12;

  if (v5)
  {
    v7 = [MEMORY[0x277D0AAC0] sharedInstance];
    v8 = [v7 processForPID:{objc_msgSend(v3, "pid")}];

    v9 = v8;
    BSDispatchMain();

    v10 = 0;
  }

  else
  {
    v9 = SBLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      _SBXXShutDown_cold_1(v6);
    }

    v10 = 5;
  }

  return v10;
}

uint64_t _SBXXIsSystemApplication(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v5 = SBRunningApplicationForAuditToken();
  v6 = v5;
  if (v5)
  {
    *a2 = [v5 isSystemApplication];
    v7 = [v6 info];
    *a3 = [v7 isProvisioningProfileValidated];
  }

  else
  {
    *a2 = 0;
    *a3 = 0;
  }

  return 0;
}

uint64_t _SBXXSetApplicationBadgeNumber(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  BSDispatchQueueAssertNotMain();
  v7 = [MEMORY[0x277D0AAF8] sharedSystemClientAuthenticator];
  v8 = a4[1];
  v18[0] = *a4;
  v18[1] = v8;
  v9 = [MEMORY[0x277CF0B98] tokenFromAuditToken:v18];
  v17 = 0;
  v10 = [v7 authenticateAuditToken:v9 error:&v17];
  v11 = v17;

  if (v10)
  {
    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:a2];
    v13 = BSPIDForAuditToken();
    v14 = [MEMORY[0x277CCABB0] numberWithInt:a3];
    setApplicationBadge(v12, v14, v13);

    v15 = 0;
  }

  else
  {
    v12 = SBLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      _SBXXSetApplicationBadgeNumber_cold_1(v11);
    }

    v15 = 5;
  }

  return v15;
}

void setApplicationBadge(void *a1, void *a2, int a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = +[SBApplicationController sharedInstanceIfExists];
  v8 = [v7 applicationWithBundleIdentifier:v5];

  if (v8)
  {
    v9 = SBLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109634;
      v19 = a3;
      v20 = 2112;
      v21 = v5;
      v22 = 2114;
      v23 = v6;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Received request from pid %i to change application badge number of app '%@' to '%{public}@'", buf, 0x1Cu);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __setApplicationBadge_block_invoke;
    block[3] = &unk_2783A92D8;
    v16 = v8;
    v17 = v6;
    dispatch_async(MEMORY[0x277D85CD0], block);

    v10 = v16;
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v5 allowPlaceholder:1 error:0];
    if ([v10 isWebAppPlaceholder])
    {
      v11 = SBLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109634;
        v19 = a3;
        v20 = 2112;
        v21 = v5;
        v22 = 2114;
        v23 = v6;
        _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Received request from pid %i to change application badge number of web bookmark '%@' to '%{public}@'", buf, 0x1Cu);
      }

      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __setApplicationBadge_block_invoke_201;
      v12[3] = &unk_2783A92D8;
      v13 = v5;
      v14 = v6;
      dispatch_async(MEMORY[0x277D85CD0], v12);
    }
  }
}

uint64_t _SBXXSetApplicationBadgeString(uint64_t a1, uint64_t a2, _BYTE *a3, _OWORD *a4)
{
  BSDispatchQueueAssertNotMain();
  v16 = 0;
  v7 = a4[1];
  v15[0] = *a4;
  v15[1] = v7;
  v8 = [MEMORY[0x277D0AAF8] authenticateAuditToken:v15 forEntitlement:@"com.apple.springboard.setbadgestring" error:&v16];
  v9 = v16;
  if (v8)
  {
    if (*a3)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3];
    }

    else
    {
      v10 = 0;
    }

    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:a2];
    v13 = BSPIDForAuditToken();
    setApplicationBadge(v12, v10, v13);

    v11 = 0;
  }

  else
  {
    v10 = SBLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      _SBXXSetApplicationBadgeString_cold_1(v9);
    }

    v11 = 5;
  }

  return v11;
}

uint64_t _SBXXSetShowsProgress(uint64_t a1, int a2)
{
  BSDispatchQueueAssertNotMain();
  v3 = SBRunningApplicationForAuditToken();
  v4 = v3;
  if (v3)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = ___SBXXSetShowsProgress_block_invoke;
    v6[3] = &unk_2783AC098;
    v7 = v3;
    v8 = a2;
    dispatch_async(MEMORY[0x277D85CD0], v6);
  }

  return 0;
}

uint64_t __SetDisplayShowsProgress_block_invoke_99(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = SBLogStatusBarish();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = 138543874;
    v8 = v4;
    v9 = 1024;
    v10 = v3;
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_INFO, "SBDaemonRequest: disabling %{public}@ for pid: %i (%{public}@)", &v7, 0x1Cu);
  }

  return [*(a1 + 48) setShowsProgress:0];
}

void __SetDisplayShowsProgress_block_invoke_100(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = SBLogStatusBarish();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = 138543874;
    v8 = v4;
    v9 = 1024;
    v10 = v3;
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_INFO, "SBDaemonRequest: enabling %{public}@ for pid: %i (%{public}@)", &v7, 0x1Cu);
  }

  v6 = [SBApp statusBarStateAggregator];
  [v6 setShowsActivityIndicatorEverywhere:1];
}

void __SetDisplayShowsProgress_block_invoke_101(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = SBLogStatusBarish();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = 138543874;
    v8 = v4;
    v9 = 1024;
    v10 = v3;
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_INFO, "SBDaemonRequest: disabling %{public}@ for pid: %i (%{public}@)", &v7, 0x1Cu);
  }

  v6 = [SBApp statusBarStateAggregator];
  [v6 setShowsActivityIndicatorEverywhere:0];
}

uint64_t _SBXXSetAllApplicationsShowSyncIndicator(uint64_t a1, int a2, _OWORD *a3)
{
  BSDispatchQueueAssertNotMain();
  v5 = [MEMORY[0x277D0AAF8] sharedSystemClientAuthenticator];
  v6 = a3[1];
  v23[0] = *a3;
  v23[1] = v6;
  v7 = [MEMORY[0x277CF0B98] tokenFromAuditToken:v23];
  v22 = 0;
  v8 = [v5 authenticateAuditToken:v7 error:&v22];
  v9 = v22;

  if (v8)
  {
    v10 = BSPIDForAuditToken();
    v11 = [MEMORY[0x277D0AAC0] sharedInstance];
    v12 = [v11 processForPID:v10];
    v13 = FBSProcessPrettyDescription();

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = ___SBXXSetAllApplicationsShowSyncIndicator_block_invoke;
    v17[3] = &unk_2783AB2A8;
    v18 = @"ShowSyncIndicator";
    v19 = v13;
    v20 = a2;
    v21 = v10;
    v14 = v13;
    dispatch_async(MEMORY[0x277D85CD0], v17);

    v15 = 0;
  }

  else
  {
    v14 = SBLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      _SBXXSetAllApplicationsShowSyncIndicator_cold_1(v9);
    }

    v15 = 5;
  }

  return v15;
}

uint64_t _SBXXSetShowsOverridesForRecording(uint64_t a1, char a2, _OWORD *a3)
{
  BSDispatchQueueAssertNotMain();
  v5 = [MEMORY[0x277D0AAF8] sharedSystemClientAuthenticator];
  v6 = a3[1];
  v23[0] = *a3;
  v23[1] = v6;
  v7 = [MEMORY[0x277CF0B98] tokenFromAuditToken:v23];
  v22 = 0;
  v8 = [v5 authenticateAuditToken:v7 error:&v22];
  v9 = v22;

  if (v8)
  {
    v10 = BSPIDForAuditToken();
    v11 = [MEMORY[0x277D0AAC0] sharedInstance];
    v12 = [v11 processForPID:v10];
    v13 = FBSProcessPrettyDescription();

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = ___SBXXSetShowsOverridesForRecording_block_invoke;
    v17[3] = &unk_2783ACF10;
    v21 = a2;
    v18 = @"SetOverridesForRecording";
    v19 = v13;
    v20 = v10;
    v14 = v13;
    dispatch_async(MEMORY[0x277D85CD0], v17);

    v15 = 0;
  }

  else
  {
    v14 = SBLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      _SBXXSetShowsOverridesForRecording_cold_1(v9);
    }

    v15 = 5;
  }

  return v15;
}

uint64_t _SBXXEnableLockScreenBundle(uint64_t a1, char a2, uint64_t a3, uint64_t a4, unsigned int a5, _OWORD *a6)
{
  BSDispatchQueueAssertNotMain();
  v11 = SBRunningApplicationForAuditToken();
  if ([v11 isSystemApplication])
  {

    v12 = 0;
    goto LABEL_4;
  }

  v28 = 0;
  v13 = a6[1];
  v27[0] = *a6;
  v27[1] = v13;
  v14 = [MEMORY[0x277D0AAF8] authenticateAuditToken:v27 forEntitlement:@"com.apple.springboard.activateawayviewplugins" error:&v28];
  v12 = v28;

  if (v14)
  {
LABEL_4:
    v15 = 0;
    if (a4 && a5)
    {
      v16 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:a4 length:a5 freeWhenDone:0];
      v15 = [MEMORY[0x277CCAC58] propertyListWithData:v16 options:0 format:0 error:0];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v15 = 0;
      }
    }

    v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:a3];
    if (v17)
    {
      v18 = objc_alloc_init(MEMORY[0x277D67958]);
      [v18 setName:v17];
      v19 = [MEMORY[0x277D0AAC0] sharedInstance];
      v20 = [v19 processForPID:BSPIDForAuditToken()];
      [v18 setProcess:v20];

      [v18 setUserInfo:v15];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = ___SBXXEnableLockScreenBundle_block_invoke;
      v24[3] = &unk_2783A9F58;
      v26 = a2;
      v25 = v18;
      v21 = v18;
      dispatch_async(MEMORY[0x277D85CD0], v24);
    }

    v22 = 0;
    goto LABEL_15;
  }

  v15 = SBLogCommon();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    _SBXXEnableLockScreenBundle_cold_1(v12);
  }

  v22 = 5;
LABEL_15:

  return v22;
}

uint64_t _SBXXLockDeviceAndFeatures(uint64_t a1, char a2, char a3, _OWORD *a4)
{
  BSDispatchQueueAssertNotMain();
  v7 = a4[1];
  v20[0] = *a4;
  v20[1] = v7;
  v8 = [MEMORY[0x277CF0B98] tokenFromAuditToken:v20];
  v9 = [MEMORY[0x277D0AAF8] sharedSystemClientAuthenticator];
  v19 = 0;
  v10 = [v9 authenticateAuditToken:v8 error:&v19];
  v11 = v19;

  if (v10)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___SBXXLockDeviceAndFeatures_block_invoke;
    block[3] = &unk_2783AC158;
    v17 = a2;
    v16 = v8;
    v18 = a3;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v12 = 0;
    v13 = v16;
  }

  else
  {
    v13 = SBLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      _SBXXLockDeviceAndFeatures_cold_1(v11);
    }

    v12 = 5;
  }

  return v12;
}

uint64_t _SBXXShowNetworkPromptsIfNecessary(uint64_t a1, char a2)
{
  BSDispatchQueueAssertNotMain();
  v3 = SBRunningApplicationForAuditToken();
  v4 = v3;
  if (v3)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = ___SBXXShowNetworkPromptsIfNecessary_block_invoke;
    v6[3] = &unk_2783A9F58;
    v8 = a2;
    v7 = v3;
    dispatch_async(MEMORY[0x277D85CD0], v6);
  }

  return 0;
}

uint64_t _SBXXGetCurrentBacklightFactor(uint64_t a1, float *a2)
{
  v3 = [MEMORY[0x277CF0880] sharedBacklight];
  v4 = [v3 backlightState];

  v5 = 0.05;
  if (v4 != 3)
  {
    v5 = 0.0;
  }

  if (v4 == 2)
  {
    v5 = 1.0;
  }

  *a2 = v5;
  return 0;
}

uint64_t _SBXXDimScreen(uint64_t a1, int a2, _OWORD *a3)
{
  v4 = a3[1];
  v20[0] = *a3;
  v20[1] = v4;
  v5 = [MEMORY[0x277CF0B98] tokenFromAuditToken:v20];
  v6 = [MEMORY[0x277D0AAF8] sharedSystemClientAuthenticator];
  v19 = 0;
  v7 = [v6 authenticateAuditToken:v5 error:&v19];
  v8 = v19;
  if (v7)
  {

LABEL_4:
    v10 = [v5 pid];
    v11 = [MEMORY[0x277D0AAC0] sharedInstance];
    v12 = [v11 processForPID:v10];

    v13 = FBSProcessPrettyDescription();
    v14 = v13;
    if (a2)
    {
      v15 = SBLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        _SBXXDimScreen_cold_2();
      }
    }

    else
    {
      v18 = v13;
      BSDispatchMain();
      v15 = v18;
    }

    v16 = 0;
    goto LABEL_12;
  }

  v9 = [v5 hasEntitlement:@"com.apple.springboard.undim-screen"];

  if (v9)
  {
    goto LABEL_4;
  }

  v12 = SBLogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    _SBXXDimScreen_cold_1(v8);
  }

  v16 = 5;
LABEL_12:

  return v16;
}

uint64_t _SBXXGetBatteryAwakeTime(uint64_t a1, uint64_t a2, __int128 *a3)
{
  BSDispatchQueueAssertNotMain();
  v5 = [MEMORY[0x277D0AAF8] sharedSystemClientAuthenticator];
  v6 = a3[1];
  v15 = *a3;
  v16 = v6;
  v7 = [MEMORY[0x277CF0B98] tokenFromAuditToken:&v15];
  v19 = 0;
  v8 = [v5 authenticateAuditToken:v7 error:&v19];
  v9 = v19;

  if (v8)
  {
    *&v15 = 0;
    *(&v15 + 1) = &v15;
    *&v16 = 0x3032000000;
    *(&v16 + 1) = __Block_byref_object_copy__9;
    v17 = __Block_byref_object_dispose__9;
    v18 = 0;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___SBXXGetBatteryAwakeTime_block_invoke;
    block[3] = &unk_2783A9718;
    block[4] = &v15;
    dispatch_sync(MEMORY[0x277D85CD0], block);
    v10 = *(*(&v15 + 1) + 40);
    if (v10)
    {
      [v10 getCString:a2 maxLength:1024 encoding:4];
      v11 = 0;
    }

    else
    {
      v11 = 5;
    }

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v12 = SBLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      _SBXXGetBatteryAwakeTime_cold_1(v9);
    }

    v11 = 5;
  }

  return v11;
}

void sub_21EEFD8F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _SBXXGetRecentSleepsWakes(uint64_t a1, void *a2, _DWORD *a3, __int128 *a4)
{
  BSDispatchQueueAssertNotMain();
  v7 = [MEMORY[0x277D0AAF8] sharedSystemClientAuthenticator];
  v8 = a4[1];
  v16 = *a4;
  v17 = v8;
  v9 = [MEMORY[0x277CF0B98] tokenFromAuditToken:&v16];
  v20 = 0;
  v10 = [v7 authenticateAuditToken:v9 error:&v20];
  v11 = v20;

  if (v10)
  {
    *&v16 = 0;
    *(&v16 + 1) = &v16;
    *&v17 = 0x3032000000;
    *(&v17 + 1) = __Block_byref_object_copy__9;
    v18 = __Block_byref_object_dispose__9;
    v19 = 0;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___SBXXGetRecentSleepsWakes_block_invoke;
    block[3] = &unk_2783A9718;
    block[4] = &v16;
    dispatch_sync(MEMORY[0x277D85CD0], block);
    v12 = serializePropertyListObject(*(*(&v16 + 1) + 40), a2, a3);
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v13 = SBLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      _SBXXGetRecentSleepsWakes_cold_1(v11);
    }

    v12 = 5;
  }

  return v12;
}

void sub_21EEFDB00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _SBXXGetScheduledPowerEvents(uint64_t a1, void *a2, _DWORD *a3, __int128 *a4)
{
  BSDispatchQueueAssertNotMain();
  v7 = [MEMORY[0x277D0AAF8] sharedSystemClientAuthenticator];
  v8 = a4[1];
  v16 = *a4;
  v17 = v8;
  v9 = [MEMORY[0x277CF0B98] tokenFromAuditToken:&v16];
  v20 = 0;
  v10 = [v7 authenticateAuditToken:v9 error:&v20];
  v11 = v20;

  if (v10)
  {
    *&v16 = 0;
    *(&v16 + 1) = &v16;
    *&v17 = 0x3032000000;
    *(&v17 + 1) = __Block_byref_object_copy__9;
    v18 = __Block_byref_object_dispose__9;
    v19 = 0;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___SBXXGetScheduledPowerEvents_block_invoke;
    block[3] = &unk_2783A9718;
    block[4] = &v16;
    dispatch_sync(MEMORY[0x277D85CD0], block);
    v12 = serializePropertyListObject(*(*(&v16 + 1) + 40), a2, a3);
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v13 = SBLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      _SBXXGetScheduledPowerEvents_cold_1(v11);
    }

    v12 = 5;
  }

  return v12;
}

void sub_21EEFDD0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _SBXXGetBatteryUsageTimesInSeconds(uint64_t a1, float *a2, float *a3, _BYTE *a4, _BYTE *a5, _OWORD *a6)
{
  v11 = [MEMORY[0x277D0AAF8] sharedSystemClientAuthenticator];
  v12 = a6[1];
  v23[0] = *a6;
  v23[1] = v12;
  v13 = [MEMORY[0x277CF0B98] tokenFromAuditToken:v23];
  v22 = 0;
  v14 = [v11 authenticateAuditToken:v13 error:&v22];
  v15 = v22;

  if (v14)
  {
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      BatteryUsageTimeInSeconds = _SBWorkspaceGetBatteryUsageTimeInSeconds();
      *a2 = BatteryUsageTimeInSeconds;
      BatteryStandbyTimeInSeconds = _SBWorkspaceGetBatteryStandbyTimeInSeconds();
      *a3 = BatteryStandbyTimeInSeconds;
      *a4 = _SBWorkspaceAreUsageTimesTrusted();
      v18 = 0;
      *a5 = _SBWorkspaceHaveChargedPartially();
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = ___SBXXGetBatteryUsageTimesInSeconds_block_invoke;
      block[3] = &__block_descriptor_64_e5_v8__0l;
      block[4] = a2;
      block[5] = a3;
      block[6] = a4;
      block[7] = a5;
      dispatch_sync(MEMORY[0x277D85CD0], block);
      v18 = 0;
    }
  }

  else
  {
    v19 = SBLogCommon();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      _SBXXGetBatteryUsageTimesInSeconds_cold_1(v15);
    }

    v18 = 5;
  }

  return v18;
}

uint64_t _SBXXAddWebClipToHomeScreen(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  BSDispatchQueueAssertNotMain();
  v16 = 0;
  v5 = a3[1];
  v15[0] = *a3;
  v15[1] = v5;
  v6 = [MEMORY[0x277D0AAF8] authenticateAuditToken:v15 forEntitlement:@"com.apple.springboard.addWebClipToHomeScreen" error:&v16];
  v7 = v16;
  if (v6)
  {
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:a2];
    v9 = v8;
    if (v8 && !_validateWebClipIdentifier(v8))
    {
      v11 = SBLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        _SBXXAddWebClipToHomeScreen_cold_2();
      }

      v10 = 4;
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = ___SBXXAddWebClipToHomeScreen_block_invoke;
      block[3] = &unk_2783A8C18;
      v14 = v9;
      dispatch_async(MEMORY[0x277D85CD0], block);
      v10 = 0;
      v11 = v14;
    }
  }

  else
  {
    v9 = SBLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      _SBXXAddWebClipToHomeScreen_cold_1(v7);
    }

    v10 = 5;
  }

  return v10;
}

BOOL _validateWebClipIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 length] == 32)
  {
    v2 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"0123456789ABCDEF"];
    v3 = [v2 invertedSet];

    v4 = [v1 rangeOfCharacterFromSet:v3] == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t _SBXXRemoveWebClipFromHomeScreen(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  BSDispatchQueueAssertNotMain();
  v16 = 0;
  v5 = a3[1];
  v15[0] = *a3;
  v15[1] = v5;
  v6 = [MEMORY[0x277D0AAF8] authenticateAuditToken:v15 forEntitlement:@"com.apple.springboard.removeWebClipFromHomeScreen" error:&v16];
  v7 = v16;
  if (v6)
  {
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:a2];
    v9 = v8;
    if (v8 && !_validateWebClipIdentifier(v8))
    {
      v11 = SBLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        _SBXXAddWebClipToHomeScreen_cold_2();
      }

      v10 = 4;
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = ___SBXXRemoveWebClipFromHomeScreen_block_invoke;
      block[3] = &unk_2783A8C18;
      v14 = v9;
      dispatch_async(MEMORY[0x277D85CD0], block);
      v10 = 0;
      v11 = v14;
    }
  }

  else
  {
    v9 = SBLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      _SBXXRemoveWebClipFromHomeScreen_cold_1(v7);
    }

    v10 = 5;
  }

  return v10;
}

uint64_t _SBXXReloadIconForIdentifier(uint64_t a1, uint64_t a2)
{
  BSDispatchQueueAssertNotMain();
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:a2];
  v4 = v3;
  if (v3)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___SBXXReloadIconForIdentifier_block_invoke;
    block[3] = &unk_2783A8C18;
    v7 = v3;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  return 0;
}

uint64_t _SBXXGetNowPlayingAppBundleIdentifier(uint64_t a1, uint64_t a2, __int128 *a3)
{
  BSDispatchQueueAssertNotMain();
  v5 = [MEMORY[0x277D0AAF8] sharedSystemClientAuthenticator];
  v6 = a3[1];
  v15 = *a3;
  v16 = v6;
  v7 = [MEMORY[0x277CF0B98] tokenFromAuditToken:&v15];
  v19 = 0;
  v8 = [v5 authenticateAuditToken:v7 error:&v19];
  v9 = v19;

  if (v8)
  {
    *&v15 = 0;
    *(&v15 + 1) = &v15;
    *&v16 = 0x3032000000;
    *(&v16 + 1) = __Block_byref_object_copy__9;
    v17 = __Block_byref_object_dispose__9;
    v18 = 0;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___SBXXGetNowPlayingAppBundleIdentifier_block_invoke;
    block[3] = &unk_2783A9718;
    block[4] = &v15;
    dispatch_sync(MEMORY[0x277D85CD0], block);
    v10 = *(*(&v15 + 1) + 40);
    if (v10)
    {
      [v10 getCString:a2 maxLength:1024 encoding:4];
    }

    _Block_object_dispose(&v15, 8);

    v11 = 0;
  }

  else
  {
    v12 = SBLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      _SBXXGetNowPlayingAppBundleIdentifier_cold_1(v9);
    }

    v11 = 5;
  }

  return v11;
}

void sub_21EEFEA0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _SBXXGetTopButtonFrames(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 *a10)
{
  BSDispatchQueueAssertNotMain();
  v14 = [MEMORY[0x277D0AAF8] sharedSystemClientAuthenticator];
  v15 = a10[1];
  v31 = *a10;
  v32 = v15;
  v16 = [MEMORY[0x277CF0B98] tokenFromAuditToken:&v31];
  v30 = 0;
  v17 = [v14 authenticateAuditToken:v16 error:&v30];
  v18 = v30;

  if (v17)
  {
    v29 = 0;
    v19 = a10[1];
    v31 = *a10;
    v32 = v19;
    v20 = [MEMORY[0x277D0AAF8] authenticateAuditToken:&v31 forEntitlement:@"com.apple.springboard.topButtonFrames" error:&v29];
    v21 = v29;

    if (v20)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = ___SBXXGetTopButtonFrames_block_invoke;
      block[3] = &__block_descriptor_96_e5_v8__0l;
      block[4] = a2;
      block[5] = a3;
      block[6] = a4;
      block[7] = a5;
      block[8] = a6;
      block[9] = a7;
      block[10] = a8;
      block[11] = a9;
      dispatch_sync(MEMORY[0x277D85CD0], block);
      v22 = 0;
    }

    else
    {
      v22 = 5;
    }

    v18 = v21;
  }

  else
  {
    v23 = SBLogCommon();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      _SBXXGetTopButtonFrames_cold_1(v18);
    }

    v22 = 5;
  }

  return v22;
}

uint64_t _SBXXGetApplicationNetworkFlags(uint64_t a1, uint64_t a2, uint64_t a3)
{
  BSDispatchQueueAssertNotMain();
  v5 = SBRunningApplicationForAuditToken();
  v6 = v5;
  if (v5)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___SBXXGetApplicationNetworkFlags_block_invoke;
    block[3] = &unk_2783A8C40;
    v9 = v5;
    v10 = a2;
    v11 = a3;
    dispatch_sync(MEMORY[0x277D85CD0], block);
  }

  return 0;
}

uint64_t _SBXXGetDisplayIdentifiersForExternalAccessoryProtocols(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4, _OWORD *a5)
{
  v38 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertNotMain();
  v9 = [MEMORY[0x277D0AAF8] sharedSystemClientAuthenticator];
  v10 = a5[1];
  v36[0] = *a5;
  v36[1] = v10;
  v11 = [MEMORY[0x277CF0B98] tokenFromAuditToken:v36];
  v35 = 0;
  v12 = [v9 authenticateAuditToken:v11 error:&v35];
  v13 = v35;

  if (v12)
  {
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:a2];
    if (v14)
    {
      v29 = a3;
      v30 = a4;
      v15 = [MEMORY[0x277CBEB18] array];
      +[SBApplicationController sharedInstance];
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v28 = v34 = 0u;
      v16 = [v28 allApplications];
      v17 = [v16 countByEnumeratingWithState:&v31 objects:v37 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v32;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v32 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v31 + 1) + 8 * i);
            v22 = [v21 info];
            v23 = [v22 externalAccessoryProtocols];

            if (v23 && [v23 containsObject:v14])
            {
              v24 = [v21 info];
              v25 = [v24 bundleIdentifier];
              [v15 addObject:v25];
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v31 objects:v37 count:16];
        }

        while (v18);
      }

      v26 = serializePropertyListObject(v15, v29, v30);
    }

    else
    {
      v26 = 4;
    }
  }

  else
  {
    v14 = SBLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      _SBXXGetDisplayIdentifiersForExternalAccessoryProtocols_cold_1(v13);
    }

    v26 = 5;
  }

  return v26;
}

uint64_t _SBXXSetVoiceControlEnabled(uint64_t a1, int a2, _OWORD *a3)
{
  BSDispatchQueueAssertNotMain();
  v5 = SBRunningApplicationForAuditToken();
  v6 = [v5 bundleIdentifier];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = ___SBXXSetVoiceControlEnabled_block_invoke;
  v20[3] = &unk_2783A9F58;
  v22 = a2 == 0;
  v7 = v6;
  v21 = v7;
  v8 = MEMORY[0x223D6F7F0](v20);
  if ([v5 isSystemApplication])
  {
    dispatch_async(MEMORY[0x277D85CD0], v8);
    v9 = 0;
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x277CF0B98]);
    v11 = a3[1];
    v19[0] = *a3;
    v19[1] = v11;
    v12 = [v10 initWithAuditToken:v19];
    v13 = [MEMORY[0x277D0AAF8] sharedSystemClientAuthenticator];
    v18 = 0;
    v14 = [v13 authenticateAuditToken:v12 forEntitlement:@"com.apple.springboard.setVoiceControlEnabled" error:&v18];
    v15 = v18;
    if (v14)
    {
      dispatch_async(MEMORY[0x277D85CD0], v8);
      v9 = 0;
    }

    else
    {
      v16 = SBLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        _SBXXSetVoiceControlEnabled_cold_1(v12);
      }

      v9 = 5;
    }
  }

  return v9;
}

uint64_t _SBXXSetInterceptsMenuButton(uint64_t a1, char a2, char a3)
{
  BSDispatchQueueAssertNotMain();
  v5 = SBRunningApplicationForAuditToken();
  if ([v5 isSystemApplication])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___SBXXSetInterceptsMenuButton_block_invoke;
    v7[3] = &unk_2783AC158;
    v9 = a2;
    v8 = v5;
    v10 = a3;
    dispatch_async(MEMORY[0x277D85CD0], v7);
  }

  return 0;
}

uint64_t _SBXXGetMediaVolume(uint64_t a1, _DWORD *a2, _OWORD *a3)
{
  BSDispatchQueueAssertNotMain();
  v5 = [MEMORY[0x277D0AAF8] sharedSystemClientAuthenticator];
  v6 = a3[1];
  v15[0] = *a3;
  v15[1] = v6;
  v7 = [MEMORY[0x277CF0B98] tokenFromAuditToken:v15];
  v14 = 0;
  v8 = [v5 authenticateAuditToken:v7 error:&v14];
  v9 = v14;

  if (v8)
  {
    v10 = [SBApp volumeControl];
    [v10 _getMediaVolumeForIAP];
    v11 = 0;
    *a2 = v12;
  }

  else
  {
    v10 = SBLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      _SBXXGetMediaVolume_cold_1(v9);
    }

    v11 = 5;
  }

  return v11;
}

uint64_t _SBXXSetMediaVolume(float a1, uint64_t a2, _OWORD *a3)
{
  BSDispatchQueueAssertNotMain();
  v5 = [MEMORY[0x277D0AAF8] sharedSystemClientAuthenticator];
  v6 = a3[1];
  v16[0] = *a3;
  v16[1] = v6;
  v7 = [MEMORY[0x277CF0B98] tokenFromAuditToken:v16];
  v15 = 0;
  v8 = [v5 authenticateAuditToken:v7 error:&v15];
  v9 = v15;

  if (v8)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = ___SBXXSetMediaVolume_block_invoke;
    v13[3] = &__block_descriptor_36_e5_v8__0l;
    v14 = a1;
    dispatch_async(MEMORY[0x277D85CD0], v13);
    v10 = 0;
  }

  else
  {
    v11 = SBLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      _SBXXSetMediaVolume_cold_1(v9);
    }

    v10 = 5;
  }

  return v10;
}

uint64_t _SBXXGetHomeScreenIconMetrics(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  BSDispatchQueueAssertNotMain();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___SBXXGetHomeScreenIconMetrics_block_invoke;
  block[3] = &__block_descriptor_120_e5_v8__0l;
  block[4] = a2;
  block[5] = a3;
  block[6] = a4;
  block[7] = a5;
  block[8] = a6;
  block[9] = a7;
  block[10] = a8;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  dispatch_sync(MEMORY[0x277D85CD0], block);
  return 0;
}

uint64_t _SBXXGetIconState(uint64_t a1, char a2, void *a3, _DWORD *a4, __int128 *a5)
{
  BSDispatchQueueAssertNotMain();
  v21 = 0;
  v9 = a5[1];
  v17 = *a5;
  v18 = v9;
  v10 = [MEMORY[0x277D0AAF8] authenticateAuditToken:&v17 forEntitlement:@"com.apple.springboard.iconState" error:&v21];
  v11 = v21;
  if (v10)
  {
    *&v17 = 0;
    *(&v17 + 1) = &v17;
    *&v18 = 0x3032000000;
    *(&v18 + 1) = __Block_byref_object_copy__9;
    v19 = __Block_byref_object_dispose__9;
    v20 = 0;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = ___SBXXGetIconState_block_invoke;
    v15[3] = &unk_2783ACF98;
    v15[4] = &v17;
    v16 = a2;
    dispatch_sync(MEMORY[0x277D85CD0], v15);
    v12 = serializePropertyListObject(*(*(&v17 + 1) + 40), a3, a4);
    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v13 = SBLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      _SBXXGetIconState_cold_1(v11);
    }

    v12 = 5;
  }

  return v12;
}

void sub_21EEFFA50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _SBXXGetPendingIconState(uint64_t a1, char a2, void *a3, _DWORD *a4, __int128 *a5)
{
  BSDispatchQueueAssertNotMain();
  v21 = 0;
  v9 = a5[1];
  v17 = *a5;
  v18 = v9;
  v10 = [MEMORY[0x277D0AAF8] authenticateAuditToken:&v17 forEntitlement:@"com.apple.springboard.iconState" error:&v21];
  v11 = v21;
  if (v10)
  {
    *&v17 = 0;
    *(&v17 + 1) = &v17;
    *&v18 = 0x3032000000;
    *(&v18 + 1) = __Block_byref_object_copy__9;
    v19 = __Block_byref_object_dispose__9;
    v20 = 0;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = ___SBXXGetPendingIconState_block_invoke;
    v15[3] = &unk_2783ACF98;
    v15[4] = &v17;
    v16 = a2;
    dispatch_sync(MEMORY[0x277D85CD0], v15);
    v12 = serializePropertyListObject(*(*(&v17 + 1) + 40), a3, a4);
    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v13 = SBLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      _SBXXGetPendingIconState_cold_1(v11);
    }

    v12 = 5;
  }

  return v12;
}

void sub_21EEFFC70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _SBXXGetFlattenedIconState(uint64_t a1, char a2, void *a3, _DWORD *a4, __int128 *a5)
{
  BSDispatchQueueAssertNotMain();
  v21 = 0;
  v9 = a5[1];
  v17 = *a5;
  v18 = v9;
  v10 = [MEMORY[0x277D0AAF8] authenticateAuditToken:&v17 forEntitlement:@"com.apple.springboard.iconState" error:&v21];
  v11 = v21;
  if (v10)
  {
    *&v17 = 0;
    *(&v17 + 1) = &v17;
    *&v18 = 0x3032000000;
    *(&v18 + 1) = __Block_byref_object_copy__9;
    v19 = __Block_byref_object_dispose__9;
    v20 = 0;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = ___SBXXGetFlattenedIconState_block_invoke;
    v15[3] = &unk_2783ACF98;
    v15[4] = &v17;
    v16 = a2;
    dispatch_sync(MEMORY[0x277D85CD0], v15);
    v12 = serializePropertyListObject(*(*(&v17 + 1) + 40), a3, a4);
    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v13 = SBLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      _SBXXGetFlattenedIconState_cold_1(v11);
    }

    v12 = 5;
  }

  return v12;
}

void sub_21EEFFE94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _SBXXSetIconState(uint64_t a1, uint64_t a2, unsigned int a3, __int128 *a4)
{
  BSDispatchQueueAssertNotMain();
  v20 = 0;
  v7 = a4[1];
  v18 = *a4;
  v19 = v7;
  v8 = [MEMORY[0x277D0AAF8] authenticateAuditToken:&v18 forEntitlement:@"com.apple.springboard.iconState.mutate" error:&v20];
  v9 = v20;
  if (v8)
  {
    v10 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:a2 length:a3 freeWhenDone:0];
    v11 = [MEMORY[0x277CCAC58] propertyListWithData:v10 options:0 format:0 error:0];
    *&v18 = 0;
    *(&v18 + 1) = &v18;
    *&v19 = 0x2020000000;
    DWORD2(v19) = 0;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = ___SBXXSetIconState_block_invoke;
    v15[3] = &unk_2783A8CE0;
    v16 = v11;
    v17 = &v18;
    v12 = v11;
    dispatch_sync(MEMORY[0x277D85CD0], v15);
    v13 = *(*(&v18 + 1) + 24);

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v10 = SBLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      _SBXXSetIconState_cold_1(v9);
    }

    v13 = 5;
  }

  return v13;
}

uint64_t _SBXXGetIconPNGData(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5, __int128 *a6)
{
  BSDispatchQueueAssertNotMain();
  v30 = 0;
  v10 = a6[1];
  v26 = *a6;
  v27 = v10;
  v11 = [MEMORY[0x277D0AAF8] authenticateAuditToken:&v26 forEntitlement:@"com.apple.springboard.iconState" error:&v30];
  v12 = v30;
  if (v11)
  {
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:a2];
    *&v26 = 0;
    *(&v26 + 1) = &v26;
    *&v27 = 0x3032000000;
    *(&v27 + 1) = __Block_byref_object_copy__9;
    v28 = __Block_byref_object_dispose__9;
    v29 = 0;
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = ___SBXXGetIconPNGData_block_invoke;
    v23 = &unk_2783A9300;
    v14 = v13;
    v24 = v14;
    v25 = &v26;
    dispatch_sync(MEMORY[0x277D85CD0], &v20);
    v15 = *(*(&v26 + 1) + 40);
    if (v15)
    {
      v16 = UIImagePNGRepresentation(v15);
    }

    else
    {
      v16 = 0;
    }

    v18 = v16;
    *a4 = [v18 bytes];
    *a5 = [v16 length];
    if (v16)
    {
      v17 = 0;
    }

    else
    {
      v17 = 5;
    }

    _Block_object_dispose(&v26, 8);
  }

  else
  {
    v14 = SBLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      _SBXXGetIconPNGData_cold_1(v12);
    }

    v17 = 5;
  }

  return v17;
}

void sub_21EF0030C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _SBXXFlashColor(float a1, float a2, float a3)
{
  BSDispatchQueueAssertNotMain();
  v6 = [objc_alloc(MEMORY[0x277D75348]) initWithRed:a1 green:a2 blue:a3 alpha:1.0];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___SBXXFlashColor_block_invoke;
  block[3] = &unk_2783A8C18;
  v10 = v6;
  v7 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);

  return 0;
}

uint64_t _SBXXProgrammaticSwitchAppGestureMoveToLeft()
{
  BSDispatchQueueAssertNotMain();
  v0 = BSPIDForAuditToken();
  if (v0 != getpid())
  {
    return 5;
  }

  dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_147);
  return 0;
}

uint64_t _SBXXProgrammaticSwitchAppGestureMoveToRight()
{
  BSDispatchQueueAssertNotMain();
  v0 = BSPIDForAuditToken();
  if (v0 != getpid())
  {
    return 5;
  }

  dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_149);
  return 0;
}

uint64_t _SBXXSetVoiceRecognitionAudioInputPaths(uint64_t a1, uint64_t a2, unsigned int a3, _OWORD *a4)
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277D0AAF8] sharedSystemClientAuthenticator];
  v8 = a4[1];
  v35[0] = *a4;
  v35[1] = v8;
  v9 = [MEMORY[0x277CF0B98] tokenFromAuditToken:v35];
  v34 = 0;
  v10 = [v7 authenticateAuditToken:v9 error:&v34];
  v11 = v34;

  if (v10)
  {
    v12 = 0;
    if (a2 && a3)
    {
      v13 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:a2 length:a3 freeWhenDone:0];
      v33 = 0;
      v14 = [MEMORY[0x277CCAC58] propertyListWithData:v13 options:0 format:0 error:&v33];
      v15 = v33;
      if (v15)
      {
        v16 = SBLogCommon();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          _SBXXSetVoiceRecognitionAudioInputPaths_cold_2();
        }
      }

      v17 = objc_opt_class();
      v18 = v14;
      if (v17)
      {
        if (objc_opt_isKindOfClass())
        {
          v19 = v18;
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v19 = 0;
      }

      v22 = v19;

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v23 = v22;
      v24 = [v23 countByEnumeratingWithState:&v29 objects:v36 count:16];
      v12 = v23;
      if (v24)
      {
        v25 = v24;
        v26 = *v30;
        while (2)
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v30 != v26)
            {
              objc_enumerationMutation(v23);
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              v12 = 0;
              goto LABEL_26;
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v29 objects:v36 count:16];
          if (v25)
          {
            continue;
          }

          break;
        }

        v12 = v23;
      }

LABEL_26:
    }

    v20 = v12;
    BSDispatchMain();

    v21 = 0;
  }

  else
  {
    v20 = SBLogCommon();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      _SBXXSetVoiceRecognitionAudioInputPaths_cold_1(v11);
    }

    v21 = 5;
  }

  return v21;
}

uint64_t _SBXXSetAssistantRecognitionStrings(uint64_t a1, uint64_t a2, unsigned int a3, _OWORD *a4)
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277D0AAF8] sharedSystemClientAuthenticator];
  v8 = a4[1];
  v35[0] = *a4;
  v35[1] = v8;
  v9 = [MEMORY[0x277CF0B98] tokenFromAuditToken:v35];
  v34 = 0;
  v10 = [v7 authenticateAuditToken:v9 error:&v34];
  v11 = v34;

  if (v10)
  {
    v12 = 0;
    if (a2 && a3)
    {
      v13 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:a2 length:a3 freeWhenDone:0];
      v33 = 0;
      v14 = [MEMORY[0x277CCAC58] propertyListWithData:v13 options:0 format:0 error:&v33];
      v15 = v33;
      if (v15)
      {
        v16 = SBLogCommon();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          _SBXXSetAssistantRecognitionStrings_cold_2();
        }
      }

      v17 = objc_opt_class();
      v18 = v14;
      if (v17)
      {
        if (objc_opt_isKindOfClass())
        {
          v19 = v18;
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v19 = 0;
      }

      v22 = v19;

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v23 = v22;
      v24 = [v23 countByEnumeratingWithState:&v29 objects:v36 count:16];
      v12 = v23;
      if (v24)
      {
        v25 = v24;
        v26 = *v30;
        while (2)
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v30 != v26)
            {
              objc_enumerationMutation(v23);
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              v12 = 0;
              goto LABEL_26;
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v29 objects:v36 count:16];
          if (v25)
          {
            continue;
          }

          break;
        }

        v12 = v23;
      }

LABEL_26:
    }

    v20 = v12;
    BSDispatchMain();

    v21 = 0;
  }

  else
  {
    v20 = SBLogCommon();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      _SBXXSetAssistantRecognitionStrings_cold_1(v11);
    }

    v21 = 5;
  }

  return v21;
}

uint64_t _SBXXSetAlertSuppressionContextsBySectionIdentifier(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = 5;
  if (a2 && a3)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:a2 length:a3 freeWhenDone:0];
    v5 = [MEMORY[0x277CCAC58] propertyListWithData:v4 options:0 format:0 error:0];
    if (_SBValidateAlertSuppressionContextInput(v5))
    {
      v8 = v5;
      BSDispatchMain();
      v3 = 0;
      v6 = v8;
    }

    else
    {
      v6 = SBLogCommon();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        _SBXXSetAlertSuppressionContextsBySectionIdentifier_cold_1();
      }
    }
  }

  return v3;
}

uint64_t _SBXXSetAppIsConnectedToEA(uint64_t a1, uint64_t a2, int a3, _OWORD *a4)
{
  BSDispatchQueueAssertNotMain();
  v7 = a4[1];
  v12[0] = *a4;
  v12[1] = v7;
  if ([MEMORY[0x277D0AAF8] authenticateAuditToken:v12 forEntitlement:@"com.apple.springboard.appusingexternalaccessory" error:0])
  {
    v8 = +[SBApplicationController sharedInstance];
    v9 = [v8 applicationWithPid:a2];

    if (v9)
    {
      [v9 setConnectedToExternalAccessory:a3 != 0];
    }

    v10 = 0;
  }

  else
  {
    v9 = SBLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      _SBXXSetAppIsConnectedToEA_cold_1();
    }

    v10 = 5;
  }

  return v10;
}

id generateOrRetrieveMappedWallpaperPreview(void *a1, uint64_t a2, unsigned int a3, double a4)
{
  v7 = a1;
  v8 = +[SBWallpaperPreviewSnapshotCache sharedInstance];
  v9 = [objc_opt_class() cacheKeyForVariant:a2 options:a3 scalingWidth:a4];
  v10 = [v8 mappedWallpaperPreviewForKey:v9];
  if (!v10)
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__9;
    v37 = __Block_byref_object_dispose__9;
    v38 = 0;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __generateOrRetrieveMappedWallpaperPreview_block_invoke;
    block[3] = &unk_2783ACFC0;
    v11 = v8;
    v28 = v11;
    v31 = a2;
    v32 = a3;
    v29 = v7;
    v30 = &v33;
    dispatch_sync(MEMORY[0x277D85CD0], block);
    v12 = objc_autoreleasePoolPush();
    v13 = v34[5];
    [v13 size];
    v15 = v14;
    v16 = v13;
    v17 = [MEMORY[0x277D0AA90] mainConfiguration];
    [v17 pointScale];
    v19 = v18;

    v20 = [v16 sbf_scaleImage:a4 / v15];
    [v20 scale];
    if (v21 != v19)
    {
      v39 = 0;
      v22 = SBFCreateIOSurfaceForImage();
      v23 = [MEMORY[0x277D755B8] sbf_imageWithIOSurface:v22 scale:0 orientation:v19];

      if (v39)
      {
        CGImageBlockSetRelease();
      }

      v20 = v23;
    }

    objc_autoreleasePoolPop(v12);
    v24 = v34[5];
    v34[5] = 0;

    v25 = objc_autoreleasePoolPush();
    v10 = [v11 mappedWallpaperPreviewForScaledSnapshot:v20 variant:a2 cacheKey:v9];
    objc_autoreleasePoolPop(v25);

    _Block_object_dispose(&v33, 8);
  }

  return v10;
}

void sub_21EF01224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __generateOrRetrieveMappedWallpaperPreview_block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) snapshotProviderForVariant:*(a1 + 56) options:*(a1 + 64) wallpaperImage:*(a1 + 40)];
  v2 = objc_autoreleasePoolPush();
  v3 = [v6 snapshot];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  objc_autoreleasePoolPop(v2);
}

uint64_t _SBXXGetWallpaperPreviewSurface(double a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, mach_port_t *a6, _OWORD *a7)
{
  v38 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertNotMain();
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = __Block_byref_object_copy__9;
  v34[4] = __Block_byref_object_dispose__9;
  v35 = os_transaction_create();
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v13 = [MEMORY[0x277D65E28] sharedInstance];
    [v13 warmup];
  }

  v14 = +[SBWallpaperController accessAuthenticator];
  v15 = a7[1];
  *buf = *a7;
  v37 = v15;
  v16 = [MEMORY[0x277CF0B98] tokenFromAuditToken:buf];
  v33 = 0;
  v17 = [v14 authenticateAuditToken:v16 error:&v33];
  v18 = v33;

  if (v17)
  {
    v19 = [objc_alloc(MEMORY[0x277CD2930]) initWithMachPort:a5];
    if (v19)
    {
      v20 = MEMORY[0x277D755B8];
      v21 = [MEMORY[0x277D759A0] mainScreen];
      [v21 scale];
      v22 = [v20 sbf_imageWithIOSurface:v19 scale:0 orientation:?];
    }

    else
    {
      v22 = 0;
    }

    v25 = generateOrRetrieveMappedWallpaperPreview(v22, a3, a4, a1);
    if (v25)
    {
      v32 = 0;
      v26 = SBFCreateIOSurfaceForImage();
      v27 = SBLogWallpaper();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = PBUIStringForWallpaperVariant();
        *buf = 138543362;
        *&buf[4] = v28;
        _os_log_impl(&dword_21ED4E000, v27, OS_LOG_TYPE_DEFAULT, "GETTING WALLPAPER PREVIEW SURFACE FOR VARIANT: %{public}@", buf, 0xCu);
      }

      *a6 = IOSurfaceCreateMachPort(v26);
      if (v32)
      {
        CGImageBlockSetRelease();
      }
    }

    v29 = dispatch_time(0, 10000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___SBXXGetWallpaperPreviewSurface_block_invoke;
    block[3] = &unk_2783A9718;
    block[4] = v34;
    dispatch_after(v29, MEMORY[0x277D85CD0], block);
    if (*a6)
    {
      v24 = 0;
    }

    else
    {
      v24 = 5;
    }
  }

  else
  {
    v19 = SBLogCommon();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v23 = [v18 localizedDescription];
      _SBXXGetWallpaperPreviewSurface_cold_1(v23, buf, v19);
    }

    v24 = 5;
  }

  _Block_object_dispose(v34, 8);
  return v24;
}

void sub_21EF0163C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _SBXXGetWallpaperPreview(double a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, void *a7, _DWORD *a8, _OWORD *a9)
{
  v38 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertNotMain();
  v16 = os_transaction_create();
  v17 = +[SBWallpaperController accessAuthenticator];
  v18 = a9[1];
  *buf = *a9;
  v37 = v18;
  v19 = [MEMORY[0x277CF0B98] tokenFromAuditToken:buf];
  v35 = 0;
  v20 = [v17 authenticateAuditToken:v19 error:&v35];
  v21 = v35;

  if (v20)
  {
    if (a6)
    {
      v22 = objc_autoreleasePoolPush();
      v23 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:a5 length:a6 freeWhenDone:0];
      v24 = [MEMORY[0x277D755B8] bs_secureDecodedFromData:v23];

      objc_autoreleasePoolPop(v22);
    }

    else
    {
      v24 = 0;
    }

    v27 = generateOrRetrieveMappedWallpaperPreview(v24, a3, a4, a1);
    if (v27)
    {
      v28 = v27;
      v29 = [v27 sbf_CGImageBackedImage];

      v30 = [v29 bs_secureEncoded];
      *a7 = [v30 bytes];
      *a8 = [v30 length];
      v31 = SBLogWallpaper();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = PBUIStringForWallpaperVariant();
        *buf = 138543362;
        *&buf[4] = v32;
        _os_log_impl(&dword_21ED4E000, v31, OS_LOG_TYPE_DEFAULT, "GETTING WALLPAPER PREVIEW FOR VARIANT: %{public}@", buf, 0xCu);
      }
    }

    if (*a7)
    {
      v26 = 0;
    }

    else
    {
      v26 = 5;
    }

    v16 = v24;
  }

  else
  {
    v25 = SBLogCommon();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      _SBXXGetWallpaperPreview_cold_1(v21);
    }

    v26 = 5;
  }

  return v26;
}

uint64_t _SBXXSetWallpaperOptionsForLocations(float a1, float a2, float a3, float a4, float a5, float a6, double a7, uint64_t a8, char a9, char a10, char a11, uint64_t a12, char a13, uint64_t a14, _OWORD *a15)
{
  BSDispatchQueueAssertNotMain();
  v29 = +[SBWallpaperController accessAuthenticator];
  v30 = a15[1];
  v49[0] = *a15;
  v49[1] = v30;
  v31 = [MEMORY[0x277CF0B98] tokenFromAuditToken:v49];
  v48 = 0;
  v32 = [v29 authenticateAuditToken:v31 error:&v48];
  v33 = v48;

  if (v32)
  {
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = ___SBXXSetWallpaperOptionsForLocations_block_invoke;
    v37[3] = &__block_descriptor_84_e5_v8__0l;
    v37[4] = a12;
    v38 = a3;
    v39 = a4;
    v40 = a5;
    v41 = a6;
    v42 = a1;
    v43 = a2;
    v44 = a9;
    v45 = a10;
    v46 = a11;
    *&v37[5] = a7;
    v37[6] = a14;
    v47 = a13;
    dispatch_sync(MEMORY[0x277D85CD0], v37);
    v34 = 0;
  }

  else
  {
    v35 = SBLogCommon();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      _SBXXSetWallpaperOptionsForLocations_cold_1(v33);
    }

    v34 = 5;
  }

  return v34;
}

uint64_t _SBXXActivateAssistantWithContext(uint64_t a1, _OWORD *a2, int a3, uint64_t a4, unsigned int a5)
{
  v26 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertNotMain();
  v9 = a2[1];
  v25[0] = *a2;
  v25[1] = v9;
  if ([MEMORY[0x277D0AAF8] authenticateAuditToken:v25 forEntitlement:@"com.apple.springboard.activateassistant" error:0])
  {
    v10 = SBLogCommon();
    v11 = v10;
    if (a3 == 1)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v25[0]) = 136315138;
        *(v25 + 4) = "kern_return_t _SBXXActivateAssistantWithContext(mach_port_t, audit_token_t, uint32_t, sbs_property_list_data_t, mach_msg_type_number_t)";
        _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "%s is deprecated. Please move to using the SiriActivation.framework directly instead as SpringBoard can only make a best effort guess at the activation parameters.", v25, 0xCu);
      }

      v12 = 0;
      v11 = 0;
      if (!a4 || !a5)
      {
LABEL_18:
        v15 = *MEMORY[0x277D66EB8];
        v16 = [v11 objectForKey:*MEMORY[0x277D66EB8]];
        if (!v16)
        {
          v19 = SBLogCommon();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            LODWORD(v25[0]) = 138543362;
            *(v25 + 4) = 0;
            _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_INFO, "Attempt to active assistant by proxy for an application for car, but the corresponding application wasn't found: %{public}@", v25, 0xCu);
          }

          goto LABEL_32;
        }

        [v11 removeObjectForKey:v15];
        v17 = +[SBApplicationController sharedInstance];
        v18 = [v17 applicationWithBundleIdentifier:v16];
        v19 = [v18 info];

        if (v19)
        {
          [v11 setObject:v16 forKey:*MEMORY[0x277D67AE0]];
          v20 = [v19 carPlayDeclaration];

          if (v20)
          {
            [v11 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D67AE8]];
            if (_SBXXActivateAssistantWithContext_onceToken != -1)
            {
              _SBXXActivateAssistantWithContext_cold_3();
            }

            v21 = _SBXXActivateAssistantWithContext___directActionSource;
            v22 = [objc_alloc(MEMORY[0x277D551E0]) initWithPayload:v11];
            [v21 activateWithContext:v22];
            goto LABEL_31;
          }

          v22 = SBLogCommon();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            LODWORD(v25[0]) = 138543362;
            *(v25 + 4) = v16;
            v23 = "Attempt to active assistant by proxy for an application for car, but the corresponding declaration wasn't found: %{public}@";
            goto LABEL_30;
          }
        }

        else
        {
          v22 = SBLogCommon();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            LODWORD(v25[0]) = 138543362;
            *(v25 + 4) = v16;
            v23 = "Attempt to active assistant by proxy for an application for car, but the corresponding application wasn't found: %{public}@";
LABEL_30:
            _os_log_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_INFO, v23, v25, 0xCu);
          }
        }

LABEL_31:

LABEL_32:
        v14 = 0;
        goto LABEL_33;
      }

      v13 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:a4 length:a5 freeWhenDone:0];
      v12 = [MEMORY[0x277CCAC58] propertyListWithData:v13 options:0 format:0 error:0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v12)
        {
          v11 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v12];
LABEL_17:

          goto LABEL_18;
        }
      }

      else
      {

        v12 = 0;
      }

      v11 = 0;
      goto LABEL_17;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      _SBXXActivateAssistantWithContext_cold_2();
    }
  }

  else
  {
    v11 = SBLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      _SBXXActivateAssistantWithContext_cold_1();
    }
  }

  v14 = 5;
LABEL_33:

  return v14;
}

uint64_t _SBXXSetProceduralWallpaper(uint64_t a1, const char *a2, char a3, uint64_t a4, unsigned int a5, _OWORD *a6)
{
  BSDispatchQueueAssertNotMain();
  v11 = +[SBWallpaperController accessAuthenticator];
  v12 = a6[1];
  v28[0] = *a6;
  v28[1] = v12;
  v13 = [MEMORY[0x277CF0B98] tokenFromAuditToken:v28];
  v27 = 0;
  v14 = [v11 authenticateAuditToken:v13 error:&v27];
  v15 = v27;

  if (v14)
  {
    if (!strncmp("com.apple.springboard.unset-procedural-wallpaper", a2, 0x31uLL))
    {
      v16 = 0;
    }

    else
    {
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
    }

    v19 = 0;
    if (a4 && a5)
    {
      v20 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:a4 length:a5 freeWhenDone:0];
      v19 = [MEMORY[0x277CCAC58] propertyListWithData:v20 options:0 format:0 error:0];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v19 = 0;
      }
    }

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = ___SBXXSetProceduralWallpaper_block_invoke;
    v23[3] = &unk_2783A97D8;
    v24 = v16;
    v25 = v19;
    v26 = a3;
    v21 = v19;
    v17 = v16;
    dispatch_async(MEMORY[0x277D85CD0], v23);

    v18 = 0;
  }

  else
  {
    v17 = SBLogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      _SBXXSetProceduralWallpaper_cold_1(v15);
    }

    v18 = 5;
  }

  return v18;
}

uint64_t _SBXXSetWallpaperImageForLocations(float a1, float a2, float a3, float a4, float a5, float a6, double a7, uint64_t a8, uint64_t a9, unsigned int a10, char a11, char a12, char a13, char a14, uint64_t a15, char a16, char a17, char a18, uint64_t a19, int a20, uint64_t a21, _OWORD *a22)
{
  BSDispatchQueueAssertNotMain();
  v34 = os_transaction_create();
  v35 = +[SBWallpaperController accessAuthenticator];
  v36 = a22[1];
  v68[0] = *a22;
  v68[1] = v36;
  v37 = [MEMORY[0x277CF0B98] tokenFromAuditToken:v68];
  v67 = 0;
  v38 = [v35 authenticateAuditToken:v37 error:&v67];
  v39 = v67;

  if (v38)
  {
    if (!a10)
    {
      v43 = 0;
      goto LABEL_10;
    }

    v40 = objc_autoreleasePoolPush();
    v41 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:a9 length:a10 freeWhenDone:0];
    v42 = [MEMORY[0x277D755B8] bs_secureDecodedFromData:v41];

    objc_autoreleasePoolPop(v40);
    if (v42)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = ___SBXXSetWallpaperImageForLocations_block_invoke;
      block[3] = &unk_2783AD008;
      v53 = a3;
      v54 = a4;
      v55 = a5;
      v56 = a6;
      v57 = a2;
      v49 = a15;
      v50 = a19;
      v58 = a20;
      v59 = a1;
      v60 = a14;
      v42 = v42;
      v48 = v42;
      v61 = a13;
      v62 = a12;
      v51 = a7;
      v63 = a16;
      v64 = a17;
      v52 = a21;
      v65 = a11;
      v66 = a18;
      dispatch_sync(MEMORY[0x277D85CD0], block);
    }

    v43 = 0;
  }

  else
  {
    v42 = SBLogCommon();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      _SBXXSetWallpaperImageForLocations_cold_1(v39);
    }

    v43 = 5;
  }

LABEL_10:
  return v43;
}

uint64_t _SBXXSetWallpaperImageSurfaceForLocations(float a1, float a2, float a3, float a4, float a5, float a6, double a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12, uint64_t a13, int a14, char a15, char a16, char a17, char a18, uint64_t a19, char a20, char a21, char a22, uint64_t a23, int a24, uint64_t a25, _OWORD *a26)
{
  v74 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertNotMain();
  v71[0] = 0;
  v71[1] = v71;
  v71[2] = 0x3032000000;
  v71[3] = __Block_byref_object_copy__9;
  v71[4] = __Block_byref_object_dispose__9;
  v72 = os_transaction_create();
  v39 = +[SBWallpaperController accessAuthenticator];
  v40 = a26[1];
  buf[0] = *a26;
  buf[1] = v40;
  v41 = [MEMORY[0x277CF0B98] tokenFromAuditToken:buf];
  v70 = 0;
  v42 = [v39 authenticateAuditToken:v41 error:&v70];
  v43 = v70;

  if (v42)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___SBXXSetWallpaperImageSurfaceForLocations_block_invoke;
    block[3] = &__block_descriptor_131_e5_v8__0l;
    v52 = a9;
    v53 = a10;
    block[4] = a11;
    block[5] = a13;
    v54 = a12;
    v55 = a14;
    v56 = a3;
    v57 = a4;
    v58 = a5;
    v59 = a6;
    v60 = a2;
    block[6] = a19;
    block[7] = a23;
    v61 = a24;
    v62 = a1;
    v63 = a18;
    v64 = a17;
    v65 = a16;
    *&block[8] = a7;
    v66 = a20;
    v67 = a21;
    block[9] = a25;
    v68 = a15;
    v69 = a22;
    dispatch_sync(MEMORY[0x277D85CD0], block);
    BSMachSendRightRelease();
    BSMachSendRightRelease();
    v44 = dispatch_time(0, 10000000000);
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = ___SBXXSetWallpaperImageSurfaceForLocations_block_invoke_169;
    v50[3] = &unk_2783A9718;
    v50[4] = v71;
    v45 = MEMORY[0x277D85CD0];
    dispatch_after(v44, MEMORY[0x277D85CD0], v50);
    v46 = 0;
  }

  else
  {
    v45 = SBLogCommon();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v47 = [v43 localizedDescription];
      _SBXXSetWallpaperImageSurfaceForLocations_cold_1(v47, buf, v45);
    }

    v46 = 5;
  }

  _Block_object_dispose(v71, 8);
  return v46;
}

uint64_t _SBXXClearWallpaperAsset(uint64_t a1, _BYTE *a2, _OWORD *a3)
{
  BSDispatchQueueAssertNotMain();
  v5 = +[SBWallpaperController accessAuthenticator];
  v6 = a3[1];
  v14[0] = *a3;
  v14[1] = v6;
  v7 = [MEMORY[0x277CF0B98] tokenFromAuditToken:v14];
  v13 = 0;
  v8 = [v5 authenticateAuditToken:v7 error:&v13];
  v9 = v13;

  if (v8)
  {
    dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_171);
    v10 = 0;
    if (a2)
    {
      *a2 = 1;
    }
  }

  else
  {
    v11 = SBLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      _SBXXClearWallpaperAsset_cold_1(v9);
    }

    v10 = 5;
  }

  return v10;
}

uint64_t _SBXXGetWallpaperOptions(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, _DWORD *a14, __int128 *a15)
{
  BSDispatchQueueAssertNotMain();
  v20 = +[SBWallpaperController accessAuthenticator];
  v21 = a15[1];
  v32 = *a15;
  v33 = v21;
  v22 = [MEMORY[0x277CF0B98] tokenFromAuditToken:&v32];
  v36[0] = 0;
  v23 = [v20 authenticateAuditToken:v22 error:v36];
  v24 = v36[0];

  if (v23)
  {
    *&v32 = 0;
    *(&v32 + 1) = &v32;
    *&v33 = 0x3032000000;
    *(&v33 + 1) = __Block_byref_object_copy__9;
    v34 = __Block_byref_object_dispose__9;
    v35 = 0;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___SBXXGetWallpaperOptions_block_invoke;
    block[3] = &unk_2783AD050;
    v31 = a2;
    block[4] = &v32;
    block[5] = a3;
    block[6] = a4;
    block[7] = a9;
    block[8] = a5;
    block[9] = a6;
    block[10] = a7;
    block[11] = a8;
    block[12] = a10;
    block[13] = a11;
    block[14] = a12;
    dispatch_sync(MEMORY[0x277D85CD0], block);
    serializePropertyListObject(*(*(&v32 + 1) + 40), a13, a14);
    _Block_object_dispose(&v32, 8);

    v25 = 0;
  }

  else
  {
    v26 = SBLogCommon();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      _SBXXGetWallpaperOptions_cold_1(v24);
    }

    v25 = 5;
  }

  return v25;
}

uint64_t _SBXXSetWallpaperVariant(uint64_t a1, unsigned int a2, _BYTE *a3, __int128 *a4)
{
  BSDispatchQueueAssertNotMain();
  v7 = a4[1];
  v19 = *a4;
  v20 = v7;
  v8 = 0;
  if ([MEMORY[0x277D0AAF8] authenticateAuditToken:&v19 forEntitlement:@"com.apple.springboard.wallpaper-access" error:0] & 1) != 0 || (v18 = 0, v9 = a4[1], v19 = *a4, v20 = v9, v10 = objc_msgSend(MEMORY[0x277D0AAF8], "authenticateAuditToken:forEntitlement:error:", &v19, @"com.apple.springboard.setWallpaperVariant", &v18), v8 = v18, (v10))
  {
    v11 = +[SBWallpaperController sharedInstance];
    v12 = v11;
    if (a2 <= 1)
    {
      if (a3)
      {
        *a3 = 1;
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = ___SBXXSetWallpaperVariant_block_invoke;
      block[3] = &unk_2783A9F58;
      v12 = v11;
      v16 = v12;
      v17 = a2;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    v13 = 0;
  }

  else
  {
    v12 = SBLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      _SBXXSetWallpaperVariant_cold_1(v8);
    }

    v13 = 5;
  }

  return v13;
}

uint64_t _SBXXGetWallpaperLegibilitySettings(uint64_t a1, char a2, void *a3, _DWORD *a4, __int128 *a5)
{
  BSDispatchQueueAssertNotMain();
  v9 = +[SBWallpaperController accessAuthenticator];
  v10 = a5[1];
  v21 = *a5;
  v22 = v10;
  v11 = [MEMORY[0x277CF0B98] tokenFromAuditToken:&v21];
  v25 = 0;
  v12 = [v9 authenticateAuditToken:v11 error:&v25];
  v13 = v25;

  if (v12)
  {
    *&v21 = 0;
    *(&v21 + 1) = &v21;
    *&v22 = 0x3032000000;
    *(&v22 + 1) = __Block_byref_object_copy__9;
    v23 = __Block_byref_object_dispose__9;
    v24 = 0;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = ___SBXXGetWallpaperLegibilitySettings_block_invoke;
    v19[3] = &unk_2783ACF98;
    v19[4] = &v21;
    v20 = a2;
    dispatch_sync(MEMORY[0x277D85CD0], v19);
    v14 = *(*(&v21 + 1) + 40);
    if (v14)
    {
      v15 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v14 requiringSecureCoding:1 error:0];
      if (!a3)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v15 = 0;
      if (!a3)
      {
LABEL_4:
        if (!a4)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }
    }

    *a3 = [v15 bytes];
    if (!a4)
    {
LABEL_12:

      _Block_object_dispose(&v21, 8);
      v17 = 0;
      goto LABEL_13;
    }

LABEL_11:
    *a4 = [v15 length];
    goto LABEL_12;
  }

  v16 = SBLogCommon();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    _SBXXGetWallpaperLegibilitySettings_cold_1(v13);
  }

  v17 = 5;
LABEL_13:

  return v17;
}
double __sb__mainScreenReferenceBounds()
{
  v0 = __sb__mainDisplayConfiguration();
  [v0 bounds];
  v2 = v1;

  return v2;
}

id __sb__mainDisplayConfiguration()
{
  if (__sb__mainDisplayConfiguration___once != -1)
  {
    __sb__mainDisplayConfiguration_cold_1();
  }

  v1 = __sb__mainDisplayConfiguration___mainDisplayConfiguration;

  return v1;
}

void __SBApplicationStateBeginGeneratingChangeNotifications_block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"SBApplicationNotificationStateChanged" object:0 userInfo:*(a1 + 32)];
}

void __SBApplicationStateBeginGeneratingChangeNotifications_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __SBApplicationStateBeginGeneratingChangeNotifications_block_invoke_2;
  block[3] = &unk_1E735F9D0;
  v5 = v2;
  v3 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t _SBSupportedType(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v3 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v19;
      v6 = 1;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v19 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v8 = [v2 objectForKeyedSubscript:*(*(&v18 + 1) + 8 * i)];
          v6 &= _SBSupportedType(v8);
        }

        v4 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v4);
      goto LABEL_20;
    }

LABEL_19:
    LOBYTE(v6) = 1;
LABEL_20:

    goto LABEL_25;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = [v2 countByEnumeratingWithState:&v14 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      v6 = 1;
      do
      {
        for (j = 0; j != v10; ++j)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v2);
          }

          v6 &= _SBSupportedType(*(*(&v14 + 1) + 8 * j));
        }

        v10 = [v2 countByEnumeratingWithState:&v14 objects:v22 count:16];
      }

      while (v10);
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    objc_opt_class();
    LOBYTE(v6) = objc_opt_isKindOfClass();
  }

LABEL_25:

  return v6 & 1;
}

__CFString *SBSDisplayLayoutRoleDescription(unint64_t a1)
{
  if (a1 >= 0xD)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown (%d)", a1];
  }

  else
  {
    v2 = off_1E7360300[a1];
  }

  return v2;
}

BOOL SBSProcessIDForDisplayIdentifier(uint64_t a1, int *a2)
{
  v4 = objc_alloc_init(MEMORY[0x1E699FCA0]);
  v5 = [v4 pidForApplication:a1];
  if (a2 && v5 >= 1)
  {
    *a2 = v5;
  }

  v6 = v5 > 0;

  return v6;
}

uint64_t SBSBacklightChangeSourceForDisplayLayoutTransitionReason(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"com.apple.SpringBoard.backlight.transitionReason.programmatic"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"com.apple.SpringBoard.backlight.transitionReason.homeButton"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"com.apple.SpringBoard.backlight.transitionReason.lockButton"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"com.apple.SpringBoard.backlight.transitionReason.volumeButton"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"com.apple.SpringBoard.backlight.transitionReason.otherButton"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"com.apple.SpringBoard.backlight.transitionReason.keyboard"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"com.apple.SpringBoard.backlight.transitionReason.smartCover"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"com.apple.SpringBoard.backlight.transitionReason.idleTimer"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"com.apple.SpringBoard.backlight.transitionReason.touch"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"com.apple.SpringBoard.backlight.transitionReason.plugin"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"com.apple.SpringBoard.backlight.transitionReason.notification"])
  {
    v2 = 12;
  }

  else if ([v1 isEqualToString:@"com.apple.SpringBoard.backlight.transitionReason.prox"])
  {
    v2 = 13;
  }

  else if ([v1 isEqualToString:@"com.apple.SpringBoard.backlight.transitionReason.siri"])
  {
    v2 = 14;
  }

  else if ([v1 isEqualToString:@"com.apple.SpringBoard.backlight.transitionReason.boot"])
  {
    v2 = 15;
  }

  else if ([v1 isEqualToString:@"com.apple.SpringBoard.backlight.transitionReason.pocketState"])
  {
    v2 = 16;
  }

  else if ([v1 isEqualToString:@"com.apple.SpringBoard.backlight.transitionReason.externalRequest"])
  {
    v2 = 17;
  }

  else if ([v1 isEqualToString:@"com.apple.SpringBoard.backlight.transitionReason.externalAppRequest"])
  {
    v2 = 18;
  }

  else if ([v1 isEqualToString:@"com.apple.SpringBoard.backlight.transitionReason.springboardRequest"])
  {
    v2 = 19;
  }

  else if ([v1 isEqualToString:@"com.apple.SpringBoard.backlight.transitionReason.liftToWake"])
  {
    v2 = 20;
  }

  else if ([v1 isEqualToString:@"com.apple.SpringBoard.backlight.transitionReason.logout"])
  {
    v2 = 21;
  }

  else if ([v1 isEqualToString:@"com.apple.SpringBoard.backlight.transitionReason.notificationCenter"])
  {
    v2 = 22;
  }

  else if ([v1 isEqualToString:@"com.apple.SpringBoard.backlight.transitionReason.acPowerChange"])
  {
    v2 = 23;
  }

  else if ([v1 isEqualToString:@"com.apple.SpringBoard.backlight.transitionReason.chargingAccessoryChange"])
  {
    v2 = 24;
  }

  else if ([v1 isEqualToString:@"com.apple.SpringBoard.backlight.transitionReason.restoring"])
  {
    v2 = 25;
  }

  else if ([v1 isEqualToString:@"com.apple.SpringBoard.backlight.transitionReason.fullScreenAlert"])
  {
    v2 = 26;
  }

  else if ([v1 isEqualToString:@"com.apple.SpringBoard.backlight.transitionReason.languageChange"])
  {
    v2 = 27;
  }

  else if ([v1 isEqualToString:@"com.apple.SpringBoard.backlight.transitionReason.unknownUserEvent"])
  {
    v2 = 28;
  }

  else if ([v1 isEqualToString:@"com.apple.SpringBoard.backlight.transitionReason.coverSheet"])
  {
    v2 = 29;
  }

  else if ([v1 isEqualToString:@"com.apple.SpringBoard.backlight.transitionReason.SOSDismiss"])
  {
    v2 = 30;
  }

  else if ([v1 isEqualToString:@"com.apple.SpringBoard.backlight.transitionReason.actionButton"])
  {
    v2 = 31;
  }

  else if ([v1 isEqualToString:@"com.apple.SpringBoard.backlight.transitionReason.cameraButton"])
  {
    v2 = 32;
  }

  else if ([v1 isEqualToString:@"com.apple.SpringBoard.backlight.transitionReason.PowerDownDismiss"])
  {
    v2 = 33;
  }

  else if ([v1 isEqualToString:@"com.apple.SpringBoard.backlight.transitionReason.mouseButton"])
  {
    v2 = 34;
  }

  else if ([v1 isEqualToString:@"com.apple.SpringBoard.backlight.transitionReason.accessibility"])
  {
    v2 = 35;
  }

  else if ([v1 isEqualToString:@"com.apple.SpringBoard.backlight.transitionReason.accessoryAttached"])
  {
    v2 = 36;
  }

  else if ([v1 isEqualToString:@"com.apple.SpringBoard.backlight.transitionReason.authentication"])
  {
    v2 = 37;
  }

  else if ([v1 isEqualToString:@"com.apple.SpringBoard.backlight.transitionReason.sessionAlert"])
  {
    v2 = 40;
  }

  else if ([v1 isEqualToString:@"com.apple.SpringBoard.backlight.transitionReason.systemApertureClientRequest"])
  {
    v2 = 41;
  }

  else if ([v1 isEqualToString:@"com.apple.SpringBoard.backlight.transitionReason.ambient"])
  {
    v2 = 42;
  }

  else if ([v1 isEqualToString:@"com.apple.SpringBoard.backlight.transitionReason.bumpToWake"])
  {
    v2 = 43;
  }

  else if ([v1 isEqualToString:@"com.apple.SpringBoard.backlight.transitionReason.motionDetection"])
  {
    v2 = 44;
  }

  else if ([v1 isEqualToString:@"com.apple.SpringBoard.backlight.transitionReason.captureButton"])
  {
    v2 = 46;
  }

  else if ([v1 isEqualToString:@"com.apple.SpringBoard.backlight.transitionReason.captureButtonAccidentalActivationMitigation"])
  {
    v2 = 48;
  }

  else if ([v1 isEqualToString:@"com.apple.SpringBoard.backlight.transitionReason.magicKeyboardExtended"])
  {
    v2 = 47;
  }

  else if ([v1 isEqualToString:@"com.apple.SpringBoard.backlight.transitionReason.captureExtension"])
  {
    v2 = 49;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t SBSServerPortHelper(const char *a1, mach_port_name_t *a2)
{
  if (SBSServerPortHelper_onceToken != -1)
  {
    SBSServerPortHelper_cold_1();
  }

  if (SBSServerPortHelper_isAppleTV)
  {
    return 0;
  }

  pthread_mutex_lock(&springboardServerPortLock);
  ptype = 0;
  v5 = MEMORY[0x1E69E9A60];
  if (mach_port_type(*MEMORY[0x1E69E9A60], *a2, &ptype) || (ptype & 0x100000) != 0)
  {
    if (*a2 + 1 >= 2)
    {
      mach_port_deallocate(*v5, *a2);
    }

    *a2 = 0;
    bootstrap_look_up(*MEMORY[0x1E69E99F8], a1, a2);
  }

  v4 = *a2;
  pthread_mutex_unlock(&springboardServerPortLock);
  return v4;
}

uint64_t SBSUIAppDeactivateReachability()
{
  v0 = SBSSpringBoardServerPort();

  return SBDeactivateReachability(v0);
}

void __SBSServerPortHelper_block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = [v0 intValue];
  if (v0)
  {
    CFRelease(v0);
  }

  SBSServerPortHelper_isAppleTV = v1 == 4;
}

void *SBMigGetFunctionForSymbol(const void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(__SharedWorkloop);
  context = dispatch_mach_mig_demux_get_context();
  if (context)
  {
    v3 = context;
    value = 0;
    NSMapMember(__FunctionMap, a1, 0, &value);
    if (value)
    {
      v4 = "implemented";
    }

    else
    {
      v4 = "not implemented";
    }

    v5 = *(*(v3 + 8) + 20);
    v6 = [*(v3 + 16) pid];
    v7 = SBLogCommon();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);

    if (v8)
    {
      v9 = BSProcessNameForPID();
      v10 = SBLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v15 = [MEMORY[0x1E696AE30] processInfo];
        v16 = [v15 processName];
        *buf = 138544642;
        *v19 = v9;
        *&v19[8] = 1024;
        *&v19[10] = v6;
        v20 = 2082;
        *v21 = a1;
        *&v21[8] = 1024;
        *&v21[10] = v5;
        v22 = 2082;
        v23 = v4;
        v24 = 2114;
        v25 = v16;
        _os_log_debug_impl(&dword_19169D000, v10, OS_LOG_TYPE_DEBUG, "[SBMig] %{public}@:%d calling %{public}s (msgID %d) --> %{public}s by %{public}@.", buf, 0x36u);
      }
    }

    else
    {
      v9 = SBLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v13 = [MEMORY[0x1E696AE30] processInfo];
        v14 = [v13 processName];
        *buf = 67110146;
        *v19 = v6;
        *&v19[4] = 2082;
        *&v19[6] = a1;
        v20 = 1024;
        *v21 = v5;
        *&v21[4] = 2082;
        *&v21[6] = v4;
        v22 = 2114;
        v23 = v14;
        _os_log_impl(&dword_19169D000, v9, OS_LOG_TYPE_INFO, "[SBMig] Process %d calling %{public}s (msgID %d) --> %{public}s by %{public}@.", buf, 0x2Cu);
      }
    }

    return value;
  }

  else
  {
    v11 = SBLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      SBMigGetFunctionForSymbol_cold_1();
    }

    return 0;
  }
}

void SBSConvertOpenApplicationSBSKeysToFBSKeysIfNecessary(void *a1)
{
  v1 = a1;
  if (SBSConvertOpenApplicationSBSKeysToFBSKeysIfNecessary_onceToken != -1)
  {
    SBSConvertOpenApplicationSBSKeysToFBSKeysIfNecessary_cold_1();
  }

  v2 = SBSConvertOpenApplicationSBSKeysToFBSKeysIfNecessary___oldToNewKeys;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __SBSConvertOpenApplicationSBSKeysToFBSKeysIfNecessary_block_invoke_2;
  v4[3] = &unk_1E735EEB0;
  v5 = v1;
  v3 = v1;
  [v2 enumerateKeysAndObjectsUsingBlock:v4];
}

void __SBSConvertOpenApplicationSBSKeysToFBSKeysIfNecessary_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (([v8 isEqualToString:v5] & 1) == 0)
  {
    v6 = [*(a1 + 32) objectForKey:v5];

    if (!v6)
    {
      v7 = [*(a1 + 32) objectForKey:v8];
      if (v7)
      {
        [*(a1 + 32) setObject:v7 forKey:v5];
      }
    }

    [*(a1 + 32) removeObjectForKey:v8];
  }
}

void *SBSCopyBundleInfoValueForKeyAndProcessID(uint64_t a1, uint64_t a2)
{
  v4 = _SBApplicationStateGetMonitor();
  v5 = [v4 bundleInfoValueForKey:a1 PID:a2];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  return v6;
}

id _SBApplicationStateGetMonitor()
{
  pthread_mutex_lock(&sRegistrationCountLock);
  v0 = _SBApplicationStateGetMonitor_Locked();
  pthread_mutex_unlock(&sRegistrationCountLock);

  return v0;
}

id _SBApplicationStateGetMonitor_Locked()
{
  v0 = sMonitor;
  if (!sMonitor)
  {
    v1 = objc_alloc(MEMORY[0x1E698D028]);
    v2 = [v1 initWithBundleIDs:0 states:*MEMORY[0x1E698CFE8] elevatedPriority:1];
    v3 = sMonitor;
    sMonitor = v2;

    v0 = sMonitor;
  }

  return v0;
}

void SBMachChannelHandleEvent(uint64_t *a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  switch(a2)
  {
    case 7:
      v8 = SBLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        SBMachChannelHandleEvent_cold_1();
      }

      if (a1)
      {
        BSMachReceiveRightRelease();
        *(a1 + 2) = 0;
        v9 = a1[5];
        a1[5] = 0;
      }

      break;
    case 2:
      dispatch_mach_msg_get_msg();
      v11 = SBLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        SBMachChannelHandleEvent_cold_2();
      }

      break;
    case 1:
      if (a1)
      {
        v6 = SBLogCommon();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v7 = *a1;
          *buf = 136446210;
          *&buf[4] = v7;
          _os_log_impl(&dword_19169D000, v6, OS_LOG_TYPE_INFO, "[SBMig] Service connected: %{public}s", buf, 0xCu);
        }
      }

      break;
    default:
      v10 = SBLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *&buf[4] = a2;
        _os_log_impl(&dword_19169D000, v10, OS_LOG_TYPE_INFO, "[SBMig] Unhandled dispatch mach reason %lu.", buf, 0xCu);
      }

      break;
  }
}

id SBLogCommon()
{
  if (SBLogCommon_onceToken != -1)
  {
    SBLogCommon_cold_1();
  }

  v1 = SBLogCommon___logObj;

  return v1;
}

uint64_t _SBMigDeactivateReachability(uint64_t a1, _OWORD *a2)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXDeactivateReachability");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  return FunctionForSymbol(a1, v7);
}

uint64_t _SBSDeactivateReachability(mach_port_t a1)
{
  msg.msgh_size = 0;
  msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x186D600000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v1 = mach_msg(&msg, 2097153, 0x18u, 0, 0, 0, 0);
  if ((v1 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v1;
}

_DWORD *_XDeactivateReachability(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    v4 = -304;
  }

  else
  {
    v3 = result + 6;
    if (!result[6] && result[7] > 0x1Fu)
    {
      v5 = result[3];
      v6 = *(v3 + 9);
      v7[0] = *(v3 + 5);
      v7[1] = v6;
      result = _SBMigDeactivateReachability(v5, v7);
      *(a2 + 32) = result;
      return result;
    }

    v4 = -309;
  }

  *(a2 + 32) = v4;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t SBSUIAppSetWantsVolumeButtonEvents(uint64_t a1)
{
  v2 = SBSSpringBoardServerPort();

  return SBSetWantsVolumeButtonEvents(v2, a1);
}

uint64_t _SBSSetWantsVolumeButtonEvents(mach_port_t a1, int a2)
{
  v5 = *MEMORY[0x1E69E99E0];
  v6 = a2;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 200016;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v2 = mach_msg(&msg, 2097153, 0x24u, 0, 0, 0, 0);
  if ((v2 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v2;
}

uint64_t _SBMigSetWantsVolumeButtonEvents(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXSetWantsVolumeButtonEvents");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v7 = a3[1];
  v9[0] = *a3;
  v9[1] = v7;
  return FunctionForSymbol(a1, a2, v9);
}

uint64_t _XSetWantsVolumeButtonEvents(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 36)
  {
    v3 = -304;
  }

  else
  {
    if (!*(result + 36) && *(result + 40) > 0x1Fu)
    {
      v4 = *(result + 12);
      v5 = *(result + 32);
      v6 = *(result + 72);
      v7[0] = *(result + 56);
      v7[1] = v6;
      result = _SBMigSetWantsVolumeButtonEvents(v4, v5, v7);
      *(a2 + 32) = result;
      return result;
    }

    v3 = -309;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t SBSIsSystemApertureAvailable()
{
  if (SBSIsSystemApertureAvailable___onceToken != -1)
  {
    SBSIsSystemApertureAvailable_cold_1();
  }

  return SBSIsSystemApertureAvailable___isSystemApertureAvailable;
}

uint64_t __SBSIsSystemApertureAvailable_block_invoke()
{
  SBSIsSystemApertureAvailable___isSystemApertureAvailable = MGGetBoolAnswer();
  result = [MEMORY[0x1E699FAB8] isEmulatedDevice];
  if (result)
  {
    result = [MEMORY[0x1E699FAB8] emulatedArtworkSubtype];
    if (result < 1)
    {
      v1 = _block_invoke_deviceSubtype;
    }

    else
    {
      v1 = result;
      _block_invoke_deviceSubtype = result;
    }

    v2 = 1;
    if (v1 <= 2735)
    {
      if (v1 == 2556 || v1 == 2622)
      {
        goto LABEL_13;
      }
    }

    else if (v1 == 2736 || v1 == 2796 || v1 == 2868)
    {
      goto LABEL_13;
    }

    v2 = 0;
LABEL_13:
    SBSIsSystemApertureAvailable___isSystemApertureAvailable = v2;
  }

  return result;
}

void SBSSetAlertSuppressionContexts(void *a1)
{
  v7 = a1;
  v1 = objc_autoreleasePoolPush();
  v2 = [MEMORY[0x1E695DEF0] data];
  if (v7)
  {
    v3 = MEMORY[0x1E696AE40];
    v4 = [v7 allObjects];
    v5 = [v3 dataWithPropertyList:v4 format:200 options:0 error:0];

    v2 = v5;
  }

  v6 = SBSSpringBoardServerPort();
  SBSetAlertSuppressionContexts(v6, [v2 bytes], objc_msgSend(v2, "length"));

  objc_autoreleasePoolPop(v1);
}

BOOL SBSGetScreenLockStatus(BOOL *a1)
{
  v4 = 0;
  v2 = SBSSpringBoardServerPort();
  SBGetScreenLockStatus(v2, &v4 + 1, &v4);
  if (a1)
  {
    *a1 = v4 != 0;
  }

  return HIBYTE(v4) != 0;
}

uint64_t _SBSGetScreenLockStatus(int a1, _BYTE *a2, _BYTE *a3)
{
  *&msg[20] = 0u;
  v13 = 0u;
  *&msg[4] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x186A700000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v7 = *&msg[12];
  }

  else
  {
    v7 = special_reply_port;
  }

  v8 = mach_msg(msg, 3162115, 0x18u, 0x34u, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (*&msg[20] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&msg[20] == 100107)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 44)
          {
            if (!*&msg[8])
            {
              v9 = *&msg[32];
              if (!*&msg[32])
              {
                *a2 = v13;
                *a3 = BYTE4(v13);
                return v9;
              }

              goto LABEL_26;
            }
          }

          else if (*&msg[4] == 36)
          {
            if (*&msg[8])
            {
              v10 = 1;
            }

            else
            {
              v10 = *&msg[32] == 0;
            }

            if (v10)
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = *&msg[32];
            }

            goto LABEL_26;
          }
        }

        v9 = 4294966996;
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(msg);
      return v9;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v9 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    goto LABEL_26;
  }

  return v9;
}

uint64_t _SBMigGetScreenLockStatus(int a1, _BYTE *a2, _BYTE *a3)
{
  *a2 = 0;
  *a3 = 0;
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXGetScreenLockStatus");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___SBMigGetScreenLockStatus_block_invoke;
  block[3] = &unk_1E735FF70;
  block[4] = &v11;
  block[5] = FunctionForSymbol;
  v10 = a1;
  block[6] = a2;
  block[7] = a3;
  dispatch_sync(MEMORY[0x1E69E96A0], block);
  v7 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v7;
}

_DWORD *_XGetScreenLockStatus(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (result[6] || result[7] <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  result = _SBMigGetScreenLockStatus(result[3], (a2 + 36), (a2 + 40));
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!result)
  {
    *(a2 + 4) = 44;
  }

  return result;
}

void SBSSetStatusBarShowsActivityForApplication(int a1, void *a2, int a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = a2;
  if (!v7 || (v8 = v7, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    SBSSetStatusBarShowsActivityForApplication_cold_1();
  }

  if ([v8 lengthOfBytesUsingEncoding:4] <= 0x3FF)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SBSSetStatusBarShowsActivityForApplication-%@", v8];
    _SBSRestartLock();
    v10 = _SBSRestartGetInfoForIdentifier(v9);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 unsignedIntegerValue];
    }

    else
    {
      v11 = 0;
    }

    if (v11 == (a1 == 0))
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __SBSSetStatusBarShowsActivityForApplication_block_invoke;
      v17[3] = &unk_1E7360140;
      v18 = v8;
      v20 = a1;
      v19 = a3;
      v12 = MEMORY[0x193AFFB30](v17);
      v13 = v12;
      if (a1)
      {
        v14 = v12;
      }

      else
      {
        v14 = 0;
      }

      _SBSRestartScheduleBlockForIdentifier(v9, v14);
    }

    else
    {
      v13 = 0;
    }

    if (a1)
    {
      v15 = v11 + 1;
    }

    else
    {
      v15 = v11 - 1;
    }

    if (v15)
    {
      v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    }

    else
    {
      v16 = 0;
    }

    _SBSRestartSetInfoForIdentifier(v9, v16);
    if (v13)
    {
      v13[2](v13);
    }

    _SBSRestartUnlock();
  }

  objc_autoreleasePoolPop(v6);
}

uint64_t _SBSRestartLock()
{
  if (_SBSRestartLock_once != -1)
  {
    _SBSRestartLock_cold_1();
  }

  v1 = __SBSRestartLock;

  return [v1 lock];
}

const void *_SBSRestartGetInfoForIdentifier(CFTypeRef cf)
{
  if (!cf || (v2 = CFGetTypeID(cf), v2 != CFStringGetTypeID()))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"identifier must be valid"];
  }

  _SBSRestartLock();
  Value = CFDictionaryGetValue(__SBSRestartInfo, cf);
  [__SBSRestartLock unlock];
  return Value;
}

void _SBSRestartScheduleBlockForIdentifier(const void *a1, void *a2)
{
  v6 = a2;
  if (!a1 || (v3 = CFGetTypeID(a1), v3 != CFStringGetTypeID()))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"identifier must be valid"];
  }

  _SBSRestartLock();
  v4 = __SBSRestartBlocks;
  if (v6)
  {
    v5 = [v6 copy];
    [v4 setObject:v5 forKey:a1];
  }

  else
  {
    [__SBSRestartBlocks removeObjectForKey:a1];
  }

  [__SBSRestartLock unlock];
}

uint64_t _SBSRestartSetInfoForIdentifier(CFTypeRef cf, const void *a2)
{
  if (!cf || (v4 = CFGetTypeID(cf), v4 != CFStringGetTypeID()))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"identifier must be valid"];
  }

  _SBSRestartLock();
  if (a2)
  {
    CFDictionarySetValue(__SBSRestartInfo, cf, a2);
  }

  else
  {
    CFDictionaryRemoveValue(__SBSRestartInfo, cf);
  }

  v5 = __SBSRestartLock;

  return [v5 unlock];
}

uint64_t __SBSSetStatusBarShowsActivityForApplication_block_invoke(uint64_t a1)
{
  v2 = SBSSpringBoardServerPort();
  v3 = [*(a1 + 32) UTF8String];
  v4 = *(a1 + 44);
  v5 = *(a1 + 40);

  return SBSetApplicationShowsProgress(v2, v3, v4, v5);
}

uint64_t _SBSSetApplicationShowsProgress(mach_port_name_t a1, const char *a2, int a3, mach_msg_timeout_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  memset(v13, 0, 480);
  *name = 0u;
  v12 = 0u;
  *(&v12 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v7 = mig_strncpy_zerofill(v13 + 8, a2, 1024);
  }

  else
  {
    v7 = mig_strncpy(v13 + 8, a2, 1024);
  }

  LODWORD(v13[0]) = 0;
  DWORD1(v13[0]) = v7;
  v8 = (v7 + 3) & 0xFFFFFFFC;
  *(v13 + v8 + 8) = a3;
  name[0] = 19;
  name[2] = a1;
  name[3] = 0;
  *&v12 = 0x186D900000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
  }

  v9 = mach_msg(name, 2097169, v8 + 44, 0, 0, a4, 0);
  if ((v9 - 268435459) <= 1)
  {
    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

    mach_msg_destroy(name);
  }

  return v9;
}

_DWORD *_XSetApplicationShowsProgress(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && (v3 = result, v4 = result[1], v4 - 1069 >= 0xFFFFFBFF) && (v5 = result[9], v5 <= 0x400) && ((v6 = (v5 + 3) & 0xFFFFFFFC, v4 - 44 >= v5) ? (v7 = v4 == v6 + 44) : (v7 = 0), v7 && (v4 >= 0x428 ? (v8 = 1064) : (v8 = v4), (result = memchr(result + 10, 0, v8 - 40)) != 0)))
  {
    v9 = v3 + ((v4 + 3) & 0xFFC);
    if (!*v9 && *(v9 + 1) > 0x1Fu)
    {
      v11 = v3[3];
      v12 = *(v3 + v6 + 40);
      v13 = *(v9 + 36);
      v14[0] = *(v9 + 20);
      v14[1] = v13;
      result = _SBMigSetApplicationShowsProgress(v11, (v3 + 10), v12, v14);
      *(a2 + 32) = result;
      return result;
    }

    v10 = -309;
  }

  else
  {
    v10 = -304;
  }

  *(a2 + 32) = v10;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _SBMigSetApplicationShowsProgress(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXSetApplicationShowsProgress");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v9 = a4[1];
  v11[0] = *a4;
  v11[1] = v9;
  return FunctionForSymbol(a1, a2, a3, v11);
}

uint64_t _SBSSetAlertSuppressionContexts(int a1, uint64_t a2, int a3)
{
  v6 = a2;
  v7 = 16777472;
  v8 = a3;
  v9 = *MEMORY[0x1E69E99E0];
  v10 = a3;
  *msg = 2147483667;
  *&msg[8] = a1;
  *&msg[12] = xmmword_191729890;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
  }

  v3 = mach_msg(msg, 2097153, 0x38u, 0, 0, 0, 0);
  if ((v3 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    mach_msg_destroy(msg);
  }

  return v3;
}

uint64_t _SBMigSetAlertSuppressionContexts(int a1, uint64_t a2, int a3, __int128 *a4)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXSetAlertSuppressionContexts");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___SBMigSetAlertSuppressionContexts_block_invoke;
  v12[3] = &unk_1E7360010;
  v12[4] = &v17;
  v12[5] = FunctionForSymbol;
  v12[6] = a2;
  v13 = a1;
  v14 = a3;
  v9 = a4[1];
  v15 = *a4;
  v16 = v9;
  dispatch_sync(MEMORY[0x1E69E96A0], v12);
  v10 = *(v18 + 6);
  _Block_object_dispose(&v17, 8);
  return v10;
}

void _XSetAlertSuppressionContexts(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 56)
  {
    if (*(a1 + 39) == 1 && (v4 = *(a1 + 40), v4 == *(a1 + 52)))
    {
      if (!*(a1 + 56) && *(a1 + 60) > 0x1Fu)
      {
        v6 = *(a1 + 12);
        v7 = *(a1 + 28);
        v8 = *(a1 + 92);
        v9[0] = *(a1 + 76);
        v9[1] = v8;
        *(a2 + 32) = _SBMigSetAlertSuppressionContexts(v6, v7, v4, v9);
        mig_deallocate(*(a1 + 28), *(a1 + 40));
        *(a1 + 28) = 0;
        *(a1 + 40) = 0;
        return;
      }

      v5 = -309;
    }

    else
    {
      v5 = -300;
    }
  }

  else
  {
    v5 = -304;
  }

  *(a2 + 32) = v5;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
}

uint64_t _SBSSetApplicationNetworkFlags(int a1, char a2, char a3)
{
  *&msg[20] = 0u;
  v10 = 0;
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x1E69E99E0];
  msg[32] = a2;
  *&msg[33] = 0;
  msg[35] = 0;
  LOBYTE(v10) = a3;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x186B300000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v5 = *&msg[12];
  }

  else
  {
    v5 = special_reply_port;
  }

  v6 = mach_msg(msg, 3162115, 0x28u, 0x2Cu, v5, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) <= 0xE && ((1 << (v6 - 2)) & 0x4003) != 0)
  {
    goto LABEL_15;
  }

  if (v6)
  {
    mig_dealloc_special_reply_port();
LABEL_15:
    if ((v7 - 268435459) > 1)
    {
      return v7;
    }

    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

LABEL_20:
    mach_msg_destroy(msg);
    return v7;
  }

  if (*&msg[20] == 71)
  {
    v7 = 4294966988;
    goto LABEL_20;
  }

  if (*&msg[20] != 100119)
  {
    v7 = 4294966995;
    goto LABEL_20;
  }

  v7 = 4294966996;
  if ((*msg & 0x80000000) != 0)
  {
    goto LABEL_20;
  }

  if (*&msg[4] != 36)
  {
    goto LABEL_20;
  }

  if (*&msg[8])
  {
    goto LABEL_20;
  }

  v7 = *&msg[32];
  if (*&msg[32])
  {
    goto LABEL_20;
  }

  return v7;
}

uint64_t _SBMigSetApplicationNetworkFlags(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXSetApplicationNetworkFlags");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v9 = a4[1];
  v11[0] = *a4;
  v11[1] = v9;
  return FunctionForSymbol(a1, a2, a3, v11);
}

uint64_t _XSetApplicationNetworkFlags(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 40)
  {
    result = 4294966992;
  }

  else if (*(a1 + 40) || *(a1 + 44) < 0x20u)
  {
    result = 4294966987;
  }

  else
  {
    v4 = *(a1 + 12);
    v5 = *(a1 + 32);
    v6 = *(a1 + 36);
    v7 = *(a1 + 76);
    v8[0] = *(a1 + 60);
    v8[1] = v7;
    result = _SBMigSetApplicationNetworkFlags(v4, v5, v6, v8);
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

void sub_1916A188C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id SBLogIdleTimer()
{
  if (SBLogIdleTimer_onceToken != -1)
  {
    SBLogIdleTimer_cold_1();
  }

  v1 = SBLogIdleTimer___logObj;

  return v1;
}

uint64_t __sb__runningInSpringBoard()
{
  if (__sb__runningInSpringBoard___once != -1)
  {
    __sb__runningInSpringBoard_cold_1();
  }

  v1 = __sb__overrideRunningInSpringBoard;
  if (!__sb__overrideRunningInSpringBoard)
  {
    return __sb__runningInSpringBoard___result;
  }

  return [v1 BOOLValue];
}

uint64_t __SBLogCommon_block_invoke()
{
  SBLogCommon___logObj = os_log_create(SBLoggingSubsystem, "Common");

  return MEMORY[0x1EEE66BB8]();
}

__CFString *NSStringFromSBSHardwareButtonKind(unint64_t a1)
{
  if (a1 >= 0xB)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<unknown:%d>", a1];
  }

  else
  {
    v2 = off_1E735F8F8[a1];
  }

  return v2;
}

uint64_t _XAddBiometricAssertion(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0)
  {
LABEL_2:
    result = 4294966992;
    goto LABEL_3;
  }

  v5 = *(a1 + 24);
  result = 4294966992;
  if (v5 == 1)
  {
    v6 = *(a1 + 4);
    if (v6 - 1085 >= 0xFFFFFBFF)
    {
      if (*(a1 + 38) << 16 != 1114112)
      {
        result = 4294966996;
        goto LABEL_3;
      }

      v7 = *(a1 + 52);
      if (v7 <= 0x400 && v6 - 60 >= v7)
      {
        v8 = (v7 + 3) & 0xFFFFFFFC;
        if (v6 == v8 + 60)
        {
          if (v6 >= 0x438)
          {
            v9 = 1080;
          }

          else
          {
            v9 = v6;
          }

          if (!memchr((a1 + 56), 0, v9 - 56))
          {
            goto LABEL_2;
          }

          v10 = ((v6 + 3) & 0xFFC) + a1;
          if (*v10 || *(v10 + 4) < 0x20u)
          {
            result = 4294966987;
          }

          else
          {
            v11 = *(a1 + 12);
            v12 = *(a1 + 28);
            v13 = *(a1 + v8 + 56);
            v14 = *(v10 + 36);
            v15[0] = *(v10 + 20);
            v15[1] = v14;
            result = _SBMigAddBiometricAssertion(v11, a1 + 56, v12, v13, v15);
          }
        }
      }
    }
  }

LABEL_3:
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _SBMigAddBiometricAssertion(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXAddBiometricAssertion");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v11 = a5[1];
  v13[0] = *a5;
  v13[1] = v11;
  return FunctionForSymbol(a1, a2, a3, a4, v13);
}

uint64_t _SBSAddWallpaperAnimationSuspensionAssertion(mach_port_t a1, const char *a2, int a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  memset(v15, 0, 464);
  memset(&name, 0, sizeof(name));
  v12 = 1;
  v13 = a3;
  DWORD1(v14) = 1310720;
  *(&v14 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v4 = mig_strncpy_zerofill(v15 + 8, a2, 1024);
  }

  else
  {
    v4 = mig_strncpy(v15 + 8, a2, 1024);
  }

  LODWORD(v15[0]) = 0;
  DWORD1(v15[0]) = v4;
  v5 = (v4 + 3) & 0xFFFFFFFC;
  special_reply_port = mig_get_special_reply_port();
  name.msgh_remote_port = a1;
  name.msgh_local_port = special_reply_port;
  name.msgh_bits = -2147478253;
  *&name.msgh_voucher_port = 0x186D700000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&name);
    msgh_local_port = name.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v8 = mach_msg(&name, 3162115, v5 + 56, 0x2Cu, msgh_local_port, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) <= 0xE && ((1 << (v8 - 2)) & 0x4003) != 0)
  {
    goto LABEL_18;
  }

  if (v8)
  {
    mig_dealloc_special_reply_port();
LABEL_18:
    if ((v9 - 268435459) > 1)
    {
      return v9;
    }

    if ((name.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name.msgh_local_port);
    }

LABEL_23:
    mach_msg_destroy(&name);
    return v9;
  }

  if (name.msgh_id == 71)
  {
    v9 = 4294966988;
    goto LABEL_23;
  }

  if (name.msgh_id != 100155)
  {
    v9 = 4294966995;
    goto LABEL_23;
  }

  v9 = 4294966996;
  if ((name.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_23;
  }

  if (name.msgh_size != 36)
  {
    goto LABEL_23;
  }

  if (name.msgh_remote_port)
  {
    goto LABEL_23;
  }

  v9 = v14;
  if (v14)
  {
    goto LABEL_23;
  }

  return v9;
}

uint64_t _XAddWallpaperAnimationSuspensionAssertion(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0)
  {
    goto LABEL_2;
  }

  v5 = *(a1 + 24);
  result = 4294966992;
  if (v5 == 1)
  {
    v6 = *(a1 + 4);
    if ((v6 - 1081) >= 0xFFFFFBFF)
    {
      if (*(a1 + 38) << 16 != 1114112)
      {
        result = 4294966996;
        goto LABEL_3;
      }

      v7 = *(a1 + 52);
      if (v7 <= 0x400 && v6 - 56 >= v7 && v6 == ((v7 + 3) & 0xFFC) + 56)
      {
        if (!memchr((a1 + 56), 0, v6 - 56))
        {
LABEL_2:
          result = 4294966992;
          goto LABEL_3;
        }

        v8 = ((v6 + 3) & 0xFFC) + a1;
        if (*v8 || *(v8 + 4) < 0x20u)
        {
          result = 4294966987;
        }

        else
        {
          v9 = *(a1 + 12);
          v10 = *(a1 + 28);
          v11 = *(v8 + 36);
          v12[0] = *(v8 + 20);
          v12[1] = v11;
          result = _SBMigAddWallpaperAnimationSuspensionAssertion(v9, a1 + 56, v10, v12);
        }
      }
    }
  }

LABEL_3:
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _SBMigAddWallpaperAnimationSuspensionAssertion(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXAddWallpaperAnimationSuspensionAssertion");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v9 = a4[1];
  v11[0] = *a4;
  v11[1] = v9;
  return FunctionForSymbol(a1, a2, a3, v11);
}

__CFString *SBApplicationStateGetDescription(int a1)
{
  if (a1 <= 3)
  {
    if (!a1)
    {
      return @"Unknown";
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return @"Background Task Suspended";
      }

      return 0;
    }

    return @"Terminated";
  }

  else if (a1 > 15)
  {
    if (a1 != 16)
    {
      if (a1 == 32)
      {
        return @"Foreground Running Obscured";
      }

      return 0;
    }

    return @"Process Server";
  }

  else
  {
    if (a1 != 4)
    {
      if (a1 == 8)
      {
        return @"Foreground Running";
      }

      return 0;
    }

    return @"Background Running";
  }
}

uint64_t _SBSAddBiometricAssertion(mach_port_t a1, const char *a2, int a3, char a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  memset(v18, 0, 464);
  memset(&name, 0, sizeof(name));
  v15 = 1;
  v16 = a3;
  DWORD1(v17) = 1310720;
  *(&v17 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v6 = mig_strncpy_zerofill(v18 + 8, a2, 1024);
  }

  else
  {
    v6 = mig_strncpy(v18 + 8, a2, 1024);
  }

  LODWORD(v18[0]) = 0;
  DWORD1(v18[0]) = v6;
  v7 = (v6 + 3) & 0xFFFFFFFC;
  v8 = &name + v7;
  v8[56] = a4;
  *(v8 + 57) = 0;
  v8[59] = 0;
  special_reply_port = mig_get_special_reply_port();
  name.msgh_remote_port = a1;
  name.msgh_local_port = special_reply_port;
  name.msgh_bits = -2147478253;
  *&name.msgh_voucher_port = 0x186CE00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&name);
    msgh_local_port = name.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v11 = mach_msg(&name, 3162115, v7 + 60, 0x2Cu, msgh_local_port, 0, 0);
  v12 = v11;
  if ((v11 - 268435458) <= 0xE && ((1 << (v11 - 2)) & 0x4003) != 0)
  {
    goto LABEL_18;
  }

  if (v11)
  {
    mig_dealloc_special_reply_port();
LABEL_18:
    if ((v12 - 268435459) > 1)
    {
      return v12;
    }

    if ((name.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name.msgh_local_port);
    }

LABEL_23:
    mach_msg_destroy(&name);
    return v12;
  }

  if (name.msgh_id == 71)
  {
    v12 = 4294966988;
    goto LABEL_23;
  }

  if (name.msgh_id != 100146)
  {
    v12 = 4294966995;
    goto LABEL_23;
  }

  v12 = 4294966996;
  if ((name.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_23;
  }

  if (name.msgh_size != 36)
  {
    goto LABEL_23;
  }

  if (name.msgh_remote_port)
  {
    goto LABEL_23;
  }

  v12 = v17;
  if (v17)
  {
    goto LABEL_23;
  }

  return v12;
}

id SBLogActiveDisplay()
{
  if (SBLogActiveDisplay_onceToken != -1)
  {
    SBLogActiveDisplay_cold_1();
  }

  v1 = SBLogActiveDisplay___logObj;

  return v1;
}

uint64_t __SBLogActiveDisplay_block_invoke()
{
  SBLogActiveDisplay___logObj = os_log_create(SBLoggingSubsystem, "ActiveDisplay");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogDashBoardScrollGestures()
{
  if (SBLogDashBoardScrollGestures_onceToken != -1)
  {
    SBLogDashBoardScrollGestures_cold_1();
  }

  v1 = SBLogDashBoardScrollGestures___logObj;

  return v1;
}

id SBLogAnalytics()
{
  if (SBLogAnalytics_onceToken != -1)
  {
    SBLogAnalytics_cold_1();
  }

  v1 = SBLogAnalytics___logObj;

  return v1;
}

uint64_t __SBLogPhoneUnlockWithWatch_block_invoke()
{
  SBLogPhoneUnlockWithWatch___logObj = os_log_create(SBLoggingSubsystem, "PhoneUnlockWithWatch");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogPhoneUnlockWithWatch()
{
  if (SBLogPhoneUnlockWithWatch_onceToken != -1)
  {
    SBLogPhoneUnlockWithWatch_cold_1();
  }

  v1 = SBLogPhoneUnlockWithWatch___logObj;

  return v1;
}

id SBLogPhoneUnlockWithVision()
{
  if (SBLogPhoneUnlockWithVision_onceToken != -1)
  {
    SBLogPhoneUnlockWithVision_cold_1();
  }

  v1 = SBLogPhoneUnlockWithVision___logObj;

  return v1;
}

id SBLogLockScreenBiometricCoordinator()
{
  if (SBLogLockScreenBiometricCoordinator_onceToken != -1)
  {
    SBLogLockScreenBiometricCoordinator_cold_1();
  }

  v1 = SBLogLockScreenBiometricCoordinator___logObj;

  return v1;
}

uint64_t __SBSEventObserverGetDarwinNotificationFromEvent(const void *a1)
{
  if (CFEqual(a1, @"SignificantTimeChangeNotification"))
  {
    return a1;
  }

  return [@"com.apple.springboardservices.eventobserver.internal" stringByAppendingString:a1];
}

void __SBSEventObserverInitialize_block_invoke(uint64_t a1, void *a2)
{
  xdict = a2;
  v3 = MEMORY[0x193AFFE60]() == MEMORY[0x1E69E9E80];
  v4 = xdict;
  if (v3)
  {
    string = xpc_dictionary_get_string(xdict, *MEMORY[0x1E69E9E40]);
    v4 = xdict;
    if (string)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithCString:string encoding:4];
      if ([v6 hasPrefix:@"com.apple.springboardservices.eventobserver.internal"])
      {
        v7 = [v6 substringFromIndex:{objc_msgSend(@"com.apple.springboardservices.eventobserver.internal", "length")}];
      }

      else
      {
        v7 = v6;
      }

      v8 = v7;

      (*(*(a1 + 32) + 16))();
      v4 = xdict;
    }
  }
}

id SBLogLockScreenMesaHomeButtonSuppressAfterUnlockRecognizer()
{
  if (SBLogLockScreenMesaHomeButtonSuppressAfterUnlockRecognizer_onceToken != -1)
  {
    SBLogLockScreenMesaHomeButtonSuppressAfterUnlockRecognizer_cold_1();
  }

  v1 = SBLogLockScreenMesaHomeButtonSuppressAfterUnlockRecognizer___logObj;

  return v1;
}

uint64_t __SBLogLockScreenMesaHomeButtonSuppressAfterUnlockRecognizer_block_invoke()
{
  SBLogLockScreenMesaHomeButtonSuppressAfterUnlockRecognizer___logObj = os_log_create(SBBiometricLoggingSubsystem, "HomeButtonSuppressAfterUnlockRecognizer");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogAuthenticationModel()
{
  if (SBLogAuthenticationModel_onceToken != -1)
  {
    SBLogAuthenticationModel_cold_1();
  }

  v1 = SBLogAuthenticationModel___logObj;

  return v1;
}

id SBLogAuthenticationRequests()
{
  if (SBLogAuthenticationRequests_onceToken != -1)
  {
    SBLogAuthenticationRequests_cold_1();
  }

  v1 = SBLogAuthenticationRequests___logObj;

  return v1;
}

uint64_t __SBLogAuthenticationRequests_block_invoke()
{
  SBLogAuthenticationRequests___logObj = os_log_create(SBAuthLoggingSubsystem, "Requests");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogAuthenticationKeybag()
{
  if (SBLogAuthenticationKeybag_onceToken != -1)
  {
    SBLogAuthenticationKeybag_cold_1();
  }

  v1 = SBLogAuthenticationKeybag___logObj;

  return v1;
}

id SBLogSpotlight()
{
  if (SBLogSpotlight_onceToken != -1)
  {
    SBLogSpotlight_cold_1();
  }

  v1 = SBLogSpotlight___logObj;

  return v1;
}

uint64_t SBSCopyDisplayIdentifiers()
{
  v0 = objc_autoreleasePoolPush();
  v1 = +[_SBSDisplayIdentifiersCache sharedInstance];
  v2 = [v1 displayIdentifiers];
  v3 = [v2 copy];

  objc_autoreleasePoolPop(v0);
  return v3;
}

_DWORD *_XGetDisplayIdentifiers(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    v4 = -304;
    goto LABEL_7;
  }

  v3 = result + 6;
  if (result[6] || result[7] <= 0x1Fu)
  {
    v4 = -309;
LABEL_7:
    *(a2 + 32) = v4;
    goto LABEL_8;
  }

  *(a2 + 52) = 0;
  *(a2 + 36) = 16777472;
  v5 = result[3];
  v6 = *(v3 + 9);
  v7[0] = *(v3 + 5);
  v7[1] = v6;
  result = _SBMigGetDisplayIdentifiers(v5, (a2 + 28), (a2 + 52), v7);
  if (!result)
  {
    *(a2 + 40) = *(a2 + 52);
    *(a2 + 44) = *MEMORY[0x1E69E99E0];
    *a2 |= 0x80000000;
    *(a2 + 4) = 56;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_8:
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _SBMigGetDisplayIdentifiers(uint64_t a1, void *a2, _DWORD *a3, _OWORD *a4)
{
  *a2 = 0;
  *a3 = 0;
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXGetDisplayIdentifiers");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v9 = a4[1];
  v11[0] = *a4;
  v11[1] = v9;
  return (FunctionForSymbol)(a1, a2, a3, v11);
}

uint64_t _SBSGetDisplayIdentifiers(int a1, void *a2, _DWORD *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  memset(&msg_16[4], 0, 44);
  msg_4 = 0;
  special_reply_port = mig_get_special_reply_port();
  msg_8 = a1;
  msg_12 = special_reply_port;
  msg = 5395;
  *msg_16 = 0x30D4600000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    v7 = msg_12;
  }

  else
  {
    v7 = special_reply_port;
  }

  v8 = mach_msg(&msg, 3162115, 0x18u, 0x40u, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (*&msg_16[4] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&msg_16[4] == 200106)
      {
        if ((msg & 0x80000000) == 0)
        {
          if (msg_4 == 36)
          {
            v9 = 4294966996;
            if (*&msg_16[16])
            {
              if (msg_8)
              {
                v9 = 4294966996;
              }

              else
              {
                v9 = *&msg_16[16];
              }
            }
          }

          else
          {
            v9 = 4294966996;
          }

          goto LABEL_28;
        }

        v9 = 4294966996;
        if (*&msg_16[8] == 1 && msg_4 == 56 && !msg_8 && msg_16[23] == 1)
        {
          v10 = *&msg_16[24];
          if (*&msg_16[24] == *&msg_16[36])
          {
            v9 = 0;
            *a2 = *&msg_16[12];
            *a3 = v10;
            return v9;
          }
        }
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_28:
      mach_msg_destroy(&msg);
      return v9;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v9 - 268435459) <= 1)
  {
    if ((msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg_12);
    }

    goto LABEL_28;
  }

  return v9;
}

uint64_t SBSSetTypingActive(uint64_t a1)
{
  v2 = SBSSpringBoardBackgroundServerPort();

  return SBSetTypingActive(v2, a1);
}

id SBLogLayoutAttributes()
{
  if (SBLogLayoutAttributes_onceToken != -1)
  {
    SBLogLayoutAttributes_cold_1();
  }

  v1 = SBLogLayoutAttributes___logObj;

  return v1;
}

void ____sb__runningInSpringBoard_block_invoke()
{
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v1 bundleIdentifier];
  __sb__runningInSpringBoard___result = [v0 isEqualToString:@"com.apple.springboard"];
}

uint64_t _SBSSetTypingActive(mach_port_t a1, char a2)
{
  v5 = *MEMORY[0x1E69E99E0];
  v6 = a2;
  v7 = 0;
  v8 = 0;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 100051;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v2 = mach_msg(&msg, 2097153, 0x24u, 0, 0, 0, 0);
  if ((v2 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v2;
}

id SBLogInputUI()
{
  if (SBLogInputUI_onceToken != -1)
  {
    SBLogInputUI_cold_1();
  }

  v1 = SBLogInputUI___logObj;

  return v1;
}

uint64_t __SBLogInputUI_block_invoke()
{
  SBLogInputUI___logObj = os_log_create(SBLoggingSubsystem, "InputUI");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogAppShortcuts()
{
  if (SBLogAppShortcuts_onceToken != -1)
  {
    SBLogAppShortcuts_cold_1();
  }

  v1 = SBLogAppShortcuts___logObj;

  return v1;
}

uint64_t _SBMigSetTypingActive(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXSetTypingActive");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v7 = a3[1];
  v9[0] = *a3;
  v9[1] = v7;
  return FunctionForSymbol(a1, a2, v9);
}

uint64_t _XSetTypingActive(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 36)
  {
    v3 = -304;
  }

  else
  {
    if (!*(result + 36) && *(result + 40) > 0x1Fu)
    {
      v4 = *(result + 12);
      v5 = *(result + 32);
      v6 = *(result + 72);
      v7[0] = *(result + 56);
      v7[1] = v6;
      result = _SBMigSetTypingActive(v4, v5, v7);
      *(a2 + 32) = result;
      return result;
    }

    v3 = -309;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

id SBLogDashBoardTelemetrySignposts()
{
  if (SBLogDashBoardTelemetrySignposts_onceToken != -1)
  {
    SBLogDashBoardTelemetrySignposts_cold_1();
  }

  v1 = SBLogDashBoardTelemetrySignposts___logObj;

  return v1;
}

void SBSSetAllApplicationsShowProgress(int a1, int a2)
{
  v4 = objc_autoreleasePoolPush();
  _SBSRestartLock();
  v5 = _SBSRestartGetInfoForIdentifier(@"SBSSetAllApplicationsShowProgress");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 unsignedIntegerValue];
  }

  else
  {
    v6 = 0;
  }

  if (v6 == (a1 == 0))
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __SBSSetAllApplicationsShowProgress_block_invoke;
    v12[3] = &__block_descriptor_37_e5_v8__0l;
    v14 = a1;
    v13 = a2;
    v7 = MEMORY[0x193AFFB30](v12);
    v8 = v7;
    if (a1)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    _SBSRestartScheduleBlockForIdentifier(@"SBSSetAllApplicationsShowProgress", v9);
  }

  else
  {
    v8 = 0;
  }

  if (a1)
  {
    v10 = v6 + 1;
  }

  else
  {
    v10 = v6 - 1;
  }

  if (v10)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  }

  else
  {
    v11 = 0;
  }

  _SBSRestartSetInfoForIdentifier(@"SBSSetAllApplicationsShowProgress", v11);
  if (v8)
  {
    v8[2](v8);
  }

  _SBSRestartUnlock();

  objc_autoreleasePoolPop(v4);
}

uint64_t __SBSSetAllApplicationsShowProgress_block_invoke(uint64_t a1)
{
  v2 = SBSSpringBoardServerPort();
  v3 = *(a1 + 36);
  v4 = *(a1 + 32);

  return SBSetAllApplicationsShowProgress(v2, v3, v4);
}

uint64_t _SBSSetAllApplicationsShowProgress(mach_port_t a1, int a2, mach_msg_timeout_t timeout)
{
  v7 = *MEMORY[0x1E69E99E0];
  v8 = a2;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 100058;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v4 = mach_msg(&msg, 2097169, 0x24u, 0, 0, timeout, 0);
  if ((v4 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v4;
}

uint64_t _SBMigSetAllApplicationsShowProgress(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXSetAllApplicationsShowProgress");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v7 = a3[1];
  v9[0] = *a3;
  v9[1] = v7;
  return FunctionForSymbol(a1, a2, v9);
}

uint64_t _XSetAllApplicationsShowProgress(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 36)
  {
    v3 = -304;
  }

  else
  {
    if (!*(result + 36) && *(result + 40) > 0x1Fu)
    {
      v4 = *(result + 12);
      v5 = *(result + 32);
      v6 = *(result + 72);
      v7[0] = *(result + 56);
      v7[1] = v6;
      result = _SBMigSetAllApplicationsShowProgress(v4, v5, v7);
      *(a2 + 32) = result;
      return result;
    }

    v3 = -309;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

void sub_1916A45BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1916A4788(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

id SBLogDisplayControlling()
{
  if (SBLogDisplayControlling_onceToken != -1)
  {
    SBLogDisplayControlling_cold_1();
  }

  v1 = SBLogDisplayControlling___logObj;

  return v1;
}

id SBSBackgroundActivityAssertionClientInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F05C2E58];
  v1 = MEMORY[0x1E695DFD8];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_invalidateBackgroundActivityAssertionsWithIdentifiers_ argumentIndex:0 ofReply:0];

  return v0;
}

id SBLogStatusBarish()
{
  if (SBLogStatusBarish_onceToken != -1)
  {
    SBLogStatusBarish_cold_1();
  }

  v1 = SBLogStatusBarish___logObj;

  return v1;
}

uint64_t SystemStatusLibrary()
{
  v1 = 0;
  result = SystemStatusLibraryCore();
  if (!result)
  {
    SystemStatusLibrary_cold_1(&v1);
  }

  return result;
}

uint64_t SystemStatusLibraryCore()
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = SystemStatusLibraryCore_frameworkLibrary;
  v5 = SystemStatusLibraryCore_frameworkLibrary;
  if (!SystemStatusLibraryCore_frameworkLibrary)
  {
    v6 = xmmword_1E73611C8;
    v7 = *off_1E73611D8;
    v8 = 0;
    v3[3] = _sl_dlopen();
    SystemStatusLibraryCore_frameworkLibrary = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_1916A4AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SBBackgroundActivityAssertionServerInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F05C90A8];
  v1 = MEMORY[0x1E695DFD8];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_activateBackgroundActivityAssertions_reply_ argumentIndex:0 ofReply:0];

  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v5, v6, objc_opt_class(), 0}];
  [v0 setClasses:v7 forSelector:sel_activateBackgroundActivityAssertions_reply_ argumentIndex:0 ofReply:1];

  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  [v0 setClasses:v10 forSelector:sel_deactivateBackgroundActivityAssertionsWithIdentifiers_ argumentIndex:0 ofReply:0];

  v11 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v11 forSelector:sel_setStatusString_forAssertionWithIdentifier_ argumentIndex:0 ofReply:0];
  [v0 setClasses:v11 forSelector:sel_setStatusString_forAssertionWithIdentifier_ argumentIndex:1 ofReply:0];
  v12 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  [v0 setClasses:v14 forSelector:sel_setRegisteredBackgroundActivityIdentifiers_reply_ argumentIndex:0 ofReply:0];

  v15 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = [v15 setWithObjects:{v16, v17, objc_opt_class(), 0}];
  [v0 setClasses:v18 forSelector:sel_setRegisteredBackgroundActivityIdentifiers_reply_ argumentIndex:0 ofReply:1];

  return v0;
}

uint64_t soft_STBackgroundActivityIdentifiersDescription(uint64_t a1)
{
  STBackgroundActivityIdentifiersDescriptionSymbolLoc = getSTBackgroundActivityIdentifiersDescriptionSymbolLoc();
  if (!STBackgroundActivityIdentifiersDescriptionSymbolLoc)
  {
    soft_STBackgroundActivityIdentifiersDescription_cold_1();
  }

  return STBackgroundActivityIdentifiersDescriptionSymbolLoc(a1);
}

uint64_t getSTBackgroundActivityIdentifiersDescriptionSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getSTBackgroundActivityIdentifiersDescriptionSymbolLoc_ptr;
  v6 = getSTBackgroundActivityIdentifiersDescriptionSymbolLoc_ptr;
  if (!getSTBackgroundActivityIdentifiersDescriptionSymbolLoc_ptr)
  {
    v1 = SystemStatusLibrary();
    v4[3] = dlsym(v1, "STBackgroundActivityIdentifiersDescription");
    getSTBackgroundActivityIdentifiersDescriptionSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1916A4EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1916A5BE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1916A6670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t SBSCopyDisplayIdentifierForProcessID(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  memset(v5, 0, 512);
  v2 = SBSSpringBoardBackgroundServerPort();
  v3 = SBDisplayIdentifierForPID(v2, a1, v5);
  result = 0;
  if (!v3)
  {
    if (LOBYTE(v5[0]))
    {
      return [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v5];
    }
  }

  return result;
}

CFPropertyListRef SBSCopyDisplayIdentifiersForProcessID(uint64_t a1)
{
  v9 = 0;
  v8 = 0;
  v2 = SBSSpringBoardBackgroundServerPort();
  v3 = SBDisplayIdentifiersForPID(v2, a1, &v9, &v8);
  v4 = 0;
  if (!v3)
  {
    if (v9)
    {
      v5 = objc_alloc(MEMORY[0x1E695DEF0]);
      v6 = [v5 initWithBytesNoCopy:v9 length:v8 freeWhenDone:0];
      v4 = CFPropertyListCreateWithData(0, v6, 0, 0, 0);
      MEMORY[0x193AFFD40](*MEMORY[0x1E69E9A60], v9, v8);

      if (v4)
      {
        if (!CFArrayGetCount(v4))
        {
          CFRelease(v4);
          return 0;
        }
      }
    }
  }

  return v4;
}

CFPropertyListRef SBSCopyApplicationDisplayIdentifiers(uint64_t a1, uint64_t a2)
{
  memset(length, 0, sizeof(length));
  v4 = SBSSpringBoardBackgroundServerPort();
  v5 = SBApplicationDisplayIdentifiers(v4, a1, a2, &length[1], length);
  v6 = 0;
  if (!v5 && *&length[1])
  {
    v7 = CFDataCreateWithBytesNoCopy(0, *&length[1], length[0], *MEMORY[0x1E695E498]);
    v6 = CFPropertyListCreateWithData(0, v7, 0, 0, 0);
    CFRelease(v7);
    MEMORY[0x193AFFD40](*MEMORY[0x1E69E9A60], *&length[1], length[0]);
  }

  return v6;
}

CFStringRef SBSCopyFrontmostApplicationDisplayIdentifier()
{
  v4 = *MEMORY[0x1E69E9840];
  memset(v3, 0, 512);
  v0 = SBSSpringBoardBackgroundServerPort();
  v1 = SBFrontmostApplicationDisplayIdentifier(v0, v3);
  result = 0;
  if (!v1)
  {
    if (LOBYTE(v3[0]))
    {
      return CFStringCreateWithCString(0, v3, 0x8000100u);
    }
  }

  return result;
}

CFStringRef SBSCopyBundlePathForDisplayIdentifier(const __CFString *a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v10 = 0u;
  v9 = 0u;
  v8 = 0u;
  v7 = 0u;
  v6 = 0u;
  v5 = 0u;
  *buffer = 0u;
  memset(v3, 0, 512);
  if (CFStringGetCString(a1, buffer, 1024, 0x8000100u) && (v1 = SBSSpringBoardBackgroundServerPort(), !SBBundlePathForDisplayIdentifier(v1, buffer, v3)))
  {
    return CFStringCreateWithCString(0, v3, 0x8000100u);
  }

  else
  {
    return 0;
  }
}

const UInt8 *SBSCopyIconImagePNGDataForDisplayIdentifier(const __CFString *a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v6 = 0;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  v10 = 0u;
  v11 = 0u;
  *buffer = 0u;
  if (!CFStringGetCString(a1, buffer, 1024, 0x8000100u))
  {
    return 0;
  }

  v1 = SBSSpringBoardBackgroundServerPort();
  SBGetIconPNGData(v1, buffer, 0, &v7, &v6);
  v2 = v7;
  if (v7)
  {
    v3 = v6;
    context.version = 0;
    memset(&context.retain, 0, 40);
    context.info = v6;
    context.deallocate = vmDeallocateCallback;
    context.preferredSize = 0;
    v4 = CFAllocatorCreate(0, &context);
    v2 = CFDataCreateWithBytesNoCopy(0, v2, v3, v4);
    CFRelease(v4);
  }

  return v2;
}

const __CFURL *SBSCopyExecutablePathForDisplayIdentifier(const __CFString *a1)
{
  v1 = SBSCopyBundlePathForDisplayIdentifier(a1);
  if (v1)
  {
    v2 = v1;
    v3 = CFURLCreateWithFileSystemPath(0, v1, kCFURLPOSIXPathStyle, 1u);
    if (!v3)
    {
      v4 = v2;
LABEL_12:
      CFRelease(v4);
      return v3;
    }

    v4 = CFBundleCreate(0, v3);
    CFRelease(v3);
    CFRelease(v2);
    if (v4)
    {
      v5 = CFBundleCopyExecutableURL(v4);
      if (v5)
      {
        v6 = v5;
        v7 = CFURLCopyAbsoluteURL(v5);
        if (v7)
        {
          v8 = v7;
          v3 = CFURLCopyFileSystemPath(v7, kCFURLPOSIXPathStyle);
          CFRelease(v8);
        }

        else
        {
          v3 = 0;
        }

        CFRelease(v6);
      }

      else
      {
        v3 = 0;
      }

      goto LABEL_12;
    }
  }

  return 0;
}

CFStringRef SBSCopyLocalizedApplicationNameForDisplayIdentifier(const __CFString *a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v10 = 0u;
  v9 = 0u;
  v8 = 0u;
  v7 = 0u;
  v6 = 0u;
  v5 = 0u;
  *buffer = 0u;
  memset(v3, 0, 512);
  if (CFStringGetCString(a1, buffer, 1024, 0x8000100u) && (v1 = SBSSpringBoardBackgroundServerPort(), !SBLocalizedApplicationNameForDisplayIdentifier(v1, buffer, v3)))
  {
    return CFStringCreateWithCString(0, v3, 0x8000100u);
  }

  else
  {
    return 0;
  }
}

__CFString *SBSApplicationLaunchingErrorString(int a1)
{
  if ((a1 - 1) > 0xB)
  {
    return @"unknown error";
  }

  else
  {
    return off_1E735EF20[a1 - 1];
  }
}

uint64_t __SBSConvertOpenApplicationSBSKeysToFBSKeysIfNecessary_block_invoke()
{
  SBSConvertOpenApplicationSBSKeysToFBSKeysIfNecessary___oldToNewKeys = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{*MEMORY[0x1E699F8E8], @"launchSuspended", *MEMORY[0x1E699F8D8], @"launchInClassic", *MEMORY[0x1E699F990], @"unlockDevice", *MEMORY[0x1E699F990], @"unlockDevice", *MEMORY[0x1E699F970], @"promptUnlock", 0}];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t SBSApplicationCanBeLaunched(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E699FCA0]);
  v5 = 1;
  [v2 canOpenApplication:a1 reason:&v5];
  v3 = _mapFBSToSBSError(v5);

  return v3;
}

uint64_t _mapFBSToSBSError(unint64_t a1)
{
  if (a1 > 8)
  {
    return 12;
  }

  else
  {
    return dword_191729310[a1];
  }
}

uint64_t SBSLaunchApplicationWithIdentifierAndURLAndLaunchOptions(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  if (!a1)
  {
    return 2;
  }

  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v10 = objc_autoreleasePoolPush();
  v11 = objc_alloc_init(MEMORY[0x1E699FCA0]);
  v12 = [v11 createClientPort];

  v13 = [MEMORY[0x1E695DF90] dictionary];
  v31 = v13;
  v32 = 0;
  _splitOptionsIntoApplicationOptionsAndRealOptions(a4, &v32, &v31);
  v14 = v32;
  v15 = v31;

  SBSConvertOpenApplicationSBSKeysToFBSKeysIfNecessary(v15);
  [v15 bs_setSafeObject:a2 forKey:*MEMORY[0x1E699F960]];
  [v15 bs_setSafeObject:a3 forKey:*MEMORY[0x1E699F948]];
  v16 = [MEMORY[0x1E696AD98] numberWithBool:a5 != 0];
  [v15 bs_setSafeObject:v16 forKey:*MEMORY[0x1E699F8E8]];

  [v15 bs_setSafeObject:v14 forKey:*MEMORY[0x1E699F958]];
  v17 = dispatch_semaphore_create(0);
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v18 = objc_alloc_init(MEMORY[0x1E699FCA0]);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __SBSLaunchApplicationWithIdentifierAndURLAndLaunchOptions_block_invoke;
  v23[3] = &unk_1E735EED8;
  v25 = &v33;
  v26 = &v27;
  v19 = v17;
  v24 = v19;
  [v18 openApplication:a1 options:v15 clientPort:v12 withResult:v23];
  v20 = dispatch_time(0, 10000000000);
  dispatch_semaphore_wait(v19, v20);
  if ((v28[3] & 1) == 0)
  {
    *(v34 + 6) = 11;
  }

  _Block_object_dispose(&v27, 8);
  objc_autoreleasePoolPop(v10);
  v21 = *(v34 + 6);
  _Block_object_dispose(&v33, 8);
  return v21;
}

void sub_1916A7554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SBSCreateClientEntitlementEnforcementPort()
{
  v0 = objc_alloc_init(MEMORY[0x1E699FCA0]);
  v1 = [v0 createClientPort];

  return v1;
}

void _splitOptionsIntoApplicationOptionsAndRealOptions(void *a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (_splitOptionsIntoApplicationOptionsAndRealOptions_onceToken != -1)
  {
    _splitOptionsIntoApplicationOptionsAndRealOptions_cold_1();
  }

  if (v5)
  {
    [MEMORY[0x1E695DF90] dictionaryWithDictionary:v5];
  }

  else
  {
    [MEMORY[0x1E695DF90] dictionary];
  }
  v6 = ;
  v7 = [MEMORY[0x1E695DF90] dictionary];
  if (v5)
  {
    v17 = a3;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = _splitOptionsIntoApplicationOptionsAndRealOptions___realOptionsThatArentApplicationOptions;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = [v5 objectForKey:v13];
          if (v14)
          {
            [v7 setObject:v14 forKey:v13];
          }

          [v6 removeObjectForKey:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    a3 = v17;
  }

  if (a2)
  {
    if (!v6)
    {
      _splitOptionsIntoApplicationOptionsAndRealOptions_cold_2();
    }

    v15 = v6;
    *a2 = v6;
  }

  if (a3)
  {
    if (!v7)
    {
      _splitOptionsIntoApplicationOptionsAndRealOptions_cold_3();
    }

    v16 = v7;
    *a3 = v7;
  }
}

intptr_t __SBSLaunchApplicationWithIdentifierAndURLAndLaunchOptions_block_invoke(void *a1, void *a2)
{
  if (a2)
  {
    *(*(a1[5] + 8) + 24) = _mapFBSToSBSError([a2 code]);
  }

  *(*(a1[6] + 8) + 24) = 1;
  v3 = a1[4];

  return dispatch_semaphore_signal(v3);
}

void SBSCleanupClientEntitlementEnforcementPort(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E699FCA0]);
  [v2 cleanupClientPort:a1];
}

uint64_t SBSLaunchApplicationForDebuggingWithOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, __int16 a9)
{
  if (!(a1 | a2))
  {
    return 2;
  }

  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  context = objc_autoreleasePoolPush();
  v17 = objc_alloc_init(MEMORY[0x1E699FCA0]);
  v36 = [v17 createClientPort];

  v18 = [MEMORY[0x1E695DF90] dictionary];
  [v18 bs_setSafeObject:a3 forKey:*MEMORY[0x1E699F858]];
  [v18 bs_setSafeObject:a4 forKey:*MEMORY[0x1E699F878]];
  [v18 bs_setSafeObject:a7 forKey:*MEMORY[0x1E699F888]];
  [v18 bs_setSafeObject:a8 forKey:*MEMORY[0x1E699F880]];
  if ((a9 & 2) != 0)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v18 bs_setSafeObject:v19 forKey:*MEMORY[0x1E699F890]];
  }

  if ((a9 & 0x10) != 0)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v18 bs_setSafeObject:v20 forKey:*MEMORY[0x1E699F870]];
  }

  if ((a9 & 0x400) != 0)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v18 bs_setSafeObject:v21 forKey:*MEMORY[0x1E699F868]];
  }

  if ((a9 & 0x800) != 0)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v18 bs_setSafeObject:v22 forKey:*MEMORY[0x1E699F860]];
  }

  v23 = [MEMORY[0x1E695DF90] dictionary];
  v41 = v23;
  v42 = 0;
  _splitOptionsIntoApplicationOptionsAndRealOptions(a6, &v42, &v41);
  v24 = v42;
  v25 = v41;

  SBSConvertOpenApplicationSBSKeysToFBSKeysIfNecessary(v25);
  [v25 bs_setSafeObject:a2 forKey:*MEMORY[0x1E699F960]];
  [v25 bs_setSafeObject:v18 forKey:*MEMORY[0x1E699F908]];
  [v25 bs_setSafeObject:a5 forKey:*MEMORY[0x1E699F948]];
  [v25 bs_setSafeObject:v24 forKey:*MEMORY[0x1E699F958]];
  if (a9)
  {
    v26 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v25 bs_setSafeObject:v26 forKey:*MEMORY[0x1E699F8E8]];
  }

  if ((a9 & 0x2000) != 0)
  {
    v27 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v25 bs_setSafeObject:v27 forKey:*MEMORY[0x1E699F8D8]];
  }

  if ((a9 & 4) != 0)
  {
    v28 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v25 bs_setSafeObject:v28 forKey:*MEMORY[0x1E699F990]];
  }

  if ((a9 & 8) != 0)
  {
    v29 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v25 bs_setSafeObject:v29 forKey:@"revealIcon"];
  }

  if ((a9 & 0x1000) != 0)
  {
    v30 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v25 bs_setSafeObject:v30 forKey:*MEMORY[0x1E699F970]];
  }

  v31 = dispatch_semaphore_create(0);
  v32 = objc_alloc_init(MEMORY[0x1E699FCA0]);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __SBSLaunchApplicationForDebuggingWithOptions_block_invoke;
  v38[3] = &unk_1E735EF00;
  v40 = &v43;
  v33 = v31;
  v39 = v33;
  [v32 openApplication:a1 options:v25 clientPort:v36 withResult:v38];
  dispatch_semaphore_wait(v33, 0xFFFFFFFFFFFFFFFFLL);

  objc_autoreleasePoolPop(context);
  v34 = *(v44 + 6);
  _Block_object_dispose(&v43, 8);
  return v34;
}

void sub_1916A7D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t __SBSLaunchApplicationForDebuggingWithOptions_block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = _mapFBSToSBSError([a2 code]);
  }

  v3 = *(a1 + 32);

  return dispatch_semaphore_signal(v3);
}

uint64_t SBSOpenSensitiveURLAndUnlock(uint64_t a1, int a2)
{
  if (__loadLSIfNecessary_onceToken != -1)
  {
    SBSOpenSensitiveURLAndUnlock_cold_1();
  }

  if (!__loadLSIfNecessary_mobileCoreServices)
  {
    return 0;
  }

  if (a2)
  {
    v4 = MEMORY[0x1E695DF20];
    v5 = [MEMORY[0x1E696AD98] numberWithBool:1];
    v6 = [v4 dictionaryWithObject:v5 forKey:*MEMORY[0x1E699F990]];
  }

  else
  {
    v6 = 0;
  }

  v8 = [NSClassFromString(&cfstr_Lsapplicationw.isa) defaultWorkspace];
  v7 = [v8 openSensitiveURL:a1 withOptions:v6];

  return v7;
}

uint64_t SBSOpenDataActivationURL(uint64_t a1)
{
  v24[3] = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v20 = 0;
  v21[0] = &v20;
  v21[1] = 0x2020000000;
  v22 = 0;
  v3 = objc_alloc_init(MEMORY[0x1E699FCA0]);
  v4 = *MEMORY[0x1E699F8E8];
  v23[0] = *MEMORY[0x1E699F918];
  v23[1] = v4;
  v24[0] = MEMORY[0x1E695E118];
  v24[1] = MEMORY[0x1E695E118];
  v23[2] = *MEMORY[0x1E699F960];
  v24[2] = a1;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];
  v6 = dispatch_semaphore_create(0);
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __SBSOpenDataActivationURL_block_invoke;
  v12[3] = &unk_1E735EED8;
  v14 = &v20;
  v15 = &v16;
  v7 = v6;
  v13 = v7;
  [v3 openApplication:@"com.apple.DataActivation" options:v5 withResult:v12];
  v8 = dispatch_time(0, 10000000000);
  dispatch_semaphore_wait(v7, v8);
  if (v17[3])
  {
    if (!*(v21[0] + 24))
    {
      v9 = 1;
      goto LABEL_8;
    }
  }

  else
  {
    *(v21[0] + 24) = 11;
  }

  v10 = SBLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    SBSOpenDataActivationURL_cold_1(v21, v10);
  }

  v9 = 0;
LABEL_8:

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  objc_autoreleasePoolPop(v2);
  return v9;
}

void sub_1916A80D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

intptr_t __SBSOpenDataActivationURL_block_invoke(void *a1, void *a2)
{
  if (a2)
  {
    *(*(a1[5] + 8) + 24) = _mapFBSToSBSError([a2 code]);
  }

  *(*(a1[6] + 8) + 24) = 1;
  v3 = a1[4];

  return dispatch_semaphore_signal(v3);
}

uint64_t ___splitOptionsIntoApplicationOptionsAndRealOptions_block_invoke()
{
  _splitOptionsIntoApplicationOptionsAndRealOptions___realOptionsThatArentApplicationOptions = [MEMORY[0x1E695DFD8] setWithObjects:{@"launchSuspended", @"launchInClassic", @"unlockDevice", @"unlockDevice", @"promptUnlock", @"revealIcon", @"LSOpenSensitiveURLOption", 0}];

  return MEMORY[0x1EEE66BB8]();
}

void *____loadLSIfNecessary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/MobileCoreServices.framework/MobileCoreServices", 1);
  __loadLSIfNecessary_mobileCoreServices = result;
  return result;
}

void _SBFScreenTimeRegisterForExternalChangeNotification()
{
  if (_SBFScreenTimeRegisterForExternalChangeNotification___once != -1)
  {
    _SBFScreenTimeRegisterForExternalChangeNotification_cold_1();
  }
}

uint64_t _SBFScreenTimePostExternalChangeNotification(uint64_t state64)
{
  v1 = state64;
  LODWORD(state64) = _SBFScreenTimePostExternalChangeNotification_token;
  if (_SBFScreenTimePostExternalChangeNotification_token != -1 || (notify_register_check("com.apple.springboard.screenchanged", &_SBFScreenTimePostExternalChangeNotification_token), state64 = _SBFScreenTimePostExternalChangeNotification_token, _SBFScreenTimePostExternalChangeNotification_token != -1))
  {
    notify_set_state(state64, v1);

    return notify_post("com.apple.springboard.screenchanged");
  }

  return state64;
}

__CFString *_SBFScreenTimeNameForCategory(unsigned int a1)
{
  if (a1 > 0x13)
  {
    return 0;
  }

  else
  {
    return off_1E735EFB0[a1];
  }
}

void sub_1916A8A70(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1916A8BE4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_1916A984C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromSBSSmartCoverState(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<0x%X>", a1];
  }

  else
  {
    v2 = off_1E735F1B8[a1];
  }

  return v2;
}

void sub_1916AB638(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_1916ABFA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1916ACD0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1916AD034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1916AD35C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id NSStringFromSBSLibraryPodPresentationErrorCode(unint64_t a1)
{
  if (a1 >= 0xA)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown - %ld)", a1];
  }

  else
  {
    v2 = *(&off_1E735F2A0 + a1);
  }

  return v2;
}

uint64_t SBSWatchdogAssertionRegisterClass()
{
  result = _CFRuntimeRegisterClass();
  __SBSWatchdogTypeID = result;
  return result;
}

uint64_t SBSWatchdogAssertionCreateForPID(double a1)
{
  pthread_once(&__SBSWatchdogAssertionRegisterOnce, SBSWatchdogAssertionRegisterClass);
  Instance = _CFRuntimeCreateInstance();
  v3 = BKSWatchdogAssertionCreateForPID();
  *(Instance + 16) = 850045863;
  *(Instance + 24) = 0u;
  *(Instance + 40) = 0u;
  *(Instance + 56) = 0u;
  *(Instance + 72) = 0;
  *(Instance + 80) = v3;
  *(Instance + 88) = a1;
  if (!v3)
  {
    CFRelease(Instance);
    return 0;
  }

  return Instance;
}

uint64_t SBSWatchdogAssertionCancel(uint64_t a1)
{
  pthread_mutex_lock((a1 + 16));
  v2 = *(a1 + 80);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 80) = 0;

  return pthread_mutex_unlock((a1 + 16));
}

double SBSWatchdogAssertionGetRenewalInterval(uint64_t a1)
{
  pthread_mutex_lock((a1 + 16));
  if (*(a1 + 88) <= 0.0)
  {
    v2 = 60.0;
  }

  else
  {
    v2 = *(a1 + 88);
  }

  pthread_mutex_unlock((a1 + 16));
  return v2;
}

BOOL SBSWatchdogAssertionRenew(uint64_t a1)
{
  pthread_mutex_lock((a1 + 16));
  v2 = *(a1 + 80) != 0;
  pthread_mutex_unlock((a1 + 16));
  return v2;
}

void SBSWatchdogAssertionDestroy(uint64_t a1)
{
  pthread_mutex_lock((a1 + 16));
  v2 = *(a1 + 80);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 80) = 0;
}

id SBExternalDisplayLayoutServiceInstanceIdentifierForDisplay(void *a1)
{
  v1 = a1;
  if (([v1 isExternal] & 1) == 0)
  {
    SBExternalDisplayLayoutServiceInstanceIdentifierForDisplay_cold_1();
  }

  v2 = MEMORY[0x1E696AEC0];
  v3 = [v1 rootIdentity];
  v4 = [v2 stringWithFormat:@"com.apple.springboard.external:%@", v3];

  return v4;
}

id SBSCreateExternalDisplayLayoutServiceEndpoint()
{
  v0 = MEMORY[0x1E698F498];
  v1 = [MEMORY[0x1E699FAE0] serviceIdentifier];
  v2 = [v0 endpointForMachName:@"com.apple.frontboard.systemappservices" service:v1 instance:@"com.apple.springboard.external"];

  return v2;
}

id SBSCreateLayoutServiceEndpointForExternalDisplay(void *a1)
{
  v1 = a1;
  if (([v1 isExternal] & 1) == 0)
  {
    SBSCreateLayoutServiceEndpointForExternalDisplay_cold_1();
  }

  v2 = MEMORY[0x1E698F498];
  v3 = [MEMORY[0x1E699FAE0] serviceIdentifier];
  v4 = SBExternalDisplayLayoutServiceInstanceIdentifierForDisplay(v1);

  v5 = [v2 endpointForMachName:@"com.apple.frontboard.systemappservices" service:v3 instance:v4];

  return v5;
}

void sub_1916AEBA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1916AEDD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t SBSApplicationShortcutSystemIconTypeForString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeCompose"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypePlay"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypePause"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeAdd"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeLocation"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeSearch"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeShare"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeProhibit"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeContact"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeHome"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeMarkLocation"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeFavorite"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeLove"])
  {
    v2 = 12;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeCloud"])
  {
    v2 = 13;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeInvitation"])
  {
    v2 = 14;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeConfirmation"])
  {
    v2 = 15;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeMail"])
  {
    v2 = 16;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeMessage"])
  {
    v2 = 17;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeDate"])
  {
    v2 = 18;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeTime"])
  {
    v2 = 19;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeCapturePhoto"])
  {
    v2 = 20;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeCaptureVideo"])
  {
    v2 = 21;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeTask"])
  {
    v2 = 22;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeTaskCompleted"])
  {
    v2 = 23;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeAlarm"])
  {
    v2 = 24;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeBookmark"])
  {
    v2 = 25;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeShuffle"])
  {
    v2 = 26;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeAudio"])
  {
    v2 = 27;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeUpdate"])
  {
    v2 = 28;
  }

  else
  {
    v2 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v2;
}

uint64_t SBSApplicationShortcutItemActivationModeForString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"foreground"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"background"])
  {
    v2 = 1;
  }

  else
  {
    v2 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v2;
}

CFPropertyListRef SBSCopyDisplayIdentifiersForExternalAccessoryProtocol(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  memset(length, 0, sizeof(length));
  v3 = SBSSpringBoardBackgroundServerPort();
  SBGetDisplayIdentifiersForExternalAccessoryProtocols(v3, [a1 UTF8String], &length[1], length);
  if (length[0] && (v4 = *MEMORY[0x1E695E480], (v5 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], *&length[1], length[0], *MEMORY[0x1E695E498])) != 0))
  {
    v6 = v5;
    v7 = CFPropertyListCreateWithData(v4, v5, 0, 0, 0);
    CFRelease(v6);
  }

  else
  {
    v7 = 0;
  }

  if (*&length[1])
  {
    MEMORY[0x193AFFD40](*MEMORY[0x1E69E9A60], *&length[1], length[0]);
  }

  objc_autoreleasePoolPop(v2);
  return v7;
}

uint64_t SBSCopyNowPlayingAppBundleIdentifier()
{
  v3 = *MEMORY[0x1E69E9840];
  memset(v2, 0, 512);
  v0 = SBSSpringBoardServerPort();
  if (SBGetNowPlayingAppBundleIdentifier(v0, v2))
  {
    return 0;
  }

  else
  {
    return [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v2];
  }
}

uint64_t SBSTopButtonFramesForPosters@<X0>(void *a1@<X8>)
{
  v2 = *MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 16);
  *a1 = *MEMORY[0x1E695F058];
  *(a1 + 1) = v3;
  *(a1 + 2) = v2;
  *(a1 + 3) = v3;
  v4 = SBSSpringBoardServerPort();
  return SBGetTopButtonFrames(v4, a1, a1 + 1, a1 + 2, a1 + 3, a1 + 4, a1 + 5, a1 + 6, a1 + 7);
}

uint64_t SBSIsSystemApplication(_BYTE *a1)
{
  v4 = 0;
  v2 = SBSSpringBoardBackgroundServerPort();
  SBIsSystemApplication(v2, &v4 + 1, &v4);
  if (a1)
  {
    *a1 = v4;
  }

  return HIBYTE(v4);
}

uint64_t SBSSetInterceptsMenuButton(uint64_t a1)
{
  v2 = SBSSpringBoardServerPort();

  return SBSetInterceptsMenuButton(v2, a1, 0);
}

uint64_t SBSSetInterceptsMenuButtonForever(uint64_t a1)
{
  v2 = SBSSpringBoardServerPort();

  return SBSetInterceptsMenuButton(v2, a1, 1);
}

void SBSSetVoiceRecognitionAudioInputPaths(uint64_t a1)
{
  v5 = [MEMORY[0x1E695DEF0] data];
  if (a1)
  {
    v2 = [MEMORY[0x1E696AE40] dataWithPropertyList:a1 format:200 options:0 error:0];

    v5 = v2;
  }

  v3 = SBSSpringBoardServerPort();
  v4 = v5;
  SBSetVoiceRecognitionAudioInputPaths(v3, [v5 bytes], objc_msgSend(v5, "length"));
}

void SBSSetAssistantRecognitionStrings(uint64_t a1)
{
  v5 = [MEMORY[0x1E695DEF0] data];
  if (a1)
  {
    v2 = [MEMORY[0x1E696AE40] dataWithPropertyList:a1 format:200 options:0 error:0];

    v5 = v2;
  }

  v3 = SBSSpringBoardServerPort();
  v4 = v5;
  SBSetAssistantRecognitionStrings(v3, [v5 bytes], objc_msgSend(v5, "length"));
}

uint64_t SBSUndimScreen()
{
  v0 = SBSSpringBoardServerPort();

  return SBDimScreen(v0, 0);
}

uint64_t SBSLockDevice(uint64_t a1, uint64_t a2)
{
  v4 = SBSSpringBoardServerPort();

  return SBLockDeviceAndFeatures(v4, a1, a2);
}

void SBSRequestPasscodeUnlockUI(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(SBSLockScreenService);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __SBSRequestPasscodeUnlockUI_block_invoke;
  v5[3] = &unk_1E735F6B0;
  v6 = v2;
  v7 = v1;
  v3 = v2;
  v4 = v1;
  [(SBSLockScreenService *)v3 requestPasscodeUnlockUIWithOptions:0 withCompletion:v5];
}

void __SBSRequestPasscodeUnlockUI_block_invoke(uint64_t a1, char a2)
{
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __SBSRequestPasscodeUnlockUI_block_invoke_2;
  v7 = &unk_1E735F688;
  v8 = *(a1 + 40);
  v9 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], &v4);
  [*(a1 + 32) invalidate];
}

uint64_t __SBSRequestPasscodeUnlockUI_block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

void SBSRequestPasscodeUnlockAlertUI(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(SBSLockScreenService);
  v3 = objc_alloc_init(SBSUnlockOptions);
  [(SBSUnlockOptions *)v3 _setAboveOtherContexts:1];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __SBSRequestPasscodeUnlockAlertUI_block_invoke;
  v6[3] = &unk_1E735F6B0;
  v7 = v2;
  v8 = v1;
  v4 = v2;
  v5 = v1;
  [(SBSLockScreenService *)v4 requestPasscodeUnlockUIWithOptions:v3 withCompletion:v6];
}

void __SBSRequestPasscodeUnlockAlertUI_block_invoke(uint64_t a1, char a2)
{
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __SBSRequestPasscodeUnlockAlertUI_block_invoke_2;
  v7 = &unk_1E735F688;
  v8 = *(a1 + 40);
  v9 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], &v4);
  [*(a1 + 32) invalidate];
}

uint64_t __SBSRequestPasscodeUnlockAlertUI_block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

void SBSRequestPasscodeCheckUI(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = objc_alloc_init(SBSLockScreenService);
  v9 = objc_alloc_init(SBSUnlockOptions);
  [(SBSUnlockOptions *)v9 _setTitle:v7];

  [(SBSUnlockOptions *)v9 _setSubtitle:v6];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __SBSRequestPasscodeCheckUI_block_invoke;
  v12[3] = &unk_1E735F6B0;
  v13 = v8;
  v14 = v5;
  v10 = v8;
  v11 = v5;
  [(SBSLockScreenService *)v10 requestPasscodeCheckUIWithOptions:v9 withCompletion:v12];
}

void __SBSRequestPasscodeCheckUI_block_invoke(uint64_t a1, char a2)
{
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __SBSRequestPasscodeCheckUI_block_invoke_2;
  v7 = &unk_1E735F688;
  v8 = *(a1 + 40);
  v9 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], &v4);
  [*(a1 + 32) invalidate];
}

uint64_t __SBSRequestPasscodeCheckUI_block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

void SBSResetHomeScreenLayout(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(SBSHomeScreenService);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __SBSResetHomeScreenLayout_block_invoke;
  v4[3] = &unk_1E735F6D8;
  v5 = v1;
  v3 = v1;
  [(SBSHomeScreenService *)v2 resetHomeScreenLayoutWithCompletion:v4];
}

void __SBSResetHomeScreenLayout_block_invoke(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __SBSResetHomeScreenLayout_block_invoke_2;
  v3[3] = &unk_1E735F688;
  v4 = *(a1 + 32);
  v5 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

uint64_t __SBSResetHomeScreenLayout_block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

void SBSRequestSuggestedApplication(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_alloc_init(SBSHomeScreenService);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __SBSRequestSuggestedApplication_block_invoke;
  v7[3] = &unk_1E735F700;
  v8 = v3;
  v6 = v3;
  [(SBSHomeScreenService *)v5 requestSuggestedApplicationWithBundleIdentifier:v4 completion:v7];
}

void __SBSRequestSuggestedApplication_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __SBSRequestSuggestedApplication_block_invoke_2;
  v6[3] = &unk_1E735F120;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __SBSRequestSuggestedApplication_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(v2 + 16))(v2, *(a1 + 32));
  }

  else
  {
    return [*(a1 + 32) invalidate];
  }
}

void SBSRequestAppSwitcherAppearanceForHiddenApplication(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_alloc_init(SBSAppSwitcherSystemService);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __SBSRequestAppSwitcherAppearanceForHiddenApplication_block_invoke;
  v8[3] = &unk_1E735F728;
  v9 = v5;
  v10 = v3;
  v6 = v5;
  v7 = v3;
  [(SBSAppSwitcherSystemService *)v6 requestAppSwitcherAppearanceForHiddenApplicationWithBundleIdentifier:v4 completion:v8];
}

void __SBSRequestAppSwitcherAppearanceForHiddenApplication_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __SBSRequestAppSwitcherAppearanceForHiddenApplication_block_invoke_2;
  v9 = &unk_1E735F120;
  v4 = *(a1 + 40);
  v10 = v3;
  v11 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], &v6);
  [*(a1 + 32) invalidate];
}

uint64_t __SBSRequestAppSwitcherAppearanceForHiddenApplication_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(v2 + 16))(v2, *(a1 + 32));
  }

  else
  {
    return [*(a1 + 32) invalidate];
  }
}

void SBSRequestResetLayoutAttributes(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(SBSAppSwitcherSystemService);
  [(SBSAppSwitcherSystemService *)v2 requestResetLayoutAttributesWithCompletion:v1];
}

void SBSRequestUpdateSwitcherWindowingMode(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(SBSAppSwitcherSystemService);
  [(SBSAppSwitcherSystemService *)v4 requestUpdateWindowingMode:a1 withCompletion:v3];
}

uint64_t SBSShutDown()
{
  v0 = SBSSpringBoardServerPort();

  return SBShutDown(v0);
}

BOOL SBSActivateAssistantWithContext(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E695DEF0] data];
  if (a2)
  {
    v5 = [MEMORY[0x1E696AE40] dataWithPropertyList:a2 format:200 options:0 error:0];

    v4 = v5;
  }

  v6 = SBSSpringBoardServerPort();
  v7 = SBActivateAssistantWithContext(v6, a1, [v4 bytes], objc_msgSend(v4, "length")) == 0;

  return v7;
}

uint64_t SBSTagTouchForTypingMenu(uint64_t a1)
{
  v2 = SBSSpringBoardBackgroundServerPort();

  return SBTagTouchForTypingMenu(v2, a1);
}

void SBSAcquireFocusPreventingFullScreenPresentationAssertion(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  v5 = objc_alloc_init(MEMORY[0x1E698E6C0]);
  if ([v5 isUsable])
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __SBSAcquireFocusPreventingFullScreenPresentationAssertion_block_invoke;
    v6[3] = &unk_1E735F750;
    v7 = v3;
    v9 = &v10;
    v8 = v5;
    [v8 accessPort:v6];
  }

  v4[2](v4, v11[5]);

  _Block_object_dispose(&v10, 8);
}

void sub_1916B1A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __SBSAcquireFocusPreventingFullScreenPresentationAssertion_block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  memset(v8, 0, 512);
  if ([*(a1 + 32) getCString:v8 maxLength:1024 encoding:4])
  {
    v4 = SBSSpringBoardServerPort();
    if (!SBAcquireFocusPreventingFullScreenPresentationAssertion(v4, v8, a2))
    {
      v5 = [[SBSAssertion alloc] initWithAssertionName:@"SBSAcquireFocusPreventingFullScreenPresentationAssertion" reason:*(a1 + 32) receiveRight:*(a1 + 40)];
      v6 = *(*(a1 + 48) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;
    }
  }
}

uint64_t SBSIsReachabilityEnabled()
{
  v2 = 0;
  v0 = SBSSpringBoardServerPort();
  SBIsReachabilityEnabled(v0, &v2);
  return v2;
}

uint64_t SBSSetReachabilityEnabled(uint64_t a1)
{
  v2 = SBSSpringBoardServerPort();

  return SBSetReachabilityEnabled(v2, a1);
}

uint64_t SBSPresentPowerDownUI()
{
  v0 = SBSSpringBoardServerPort();

  return SBPresentPowerDownUI(v0);
}

uint64_t SBSOverrideDisplayedDate(const __CFString *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  memset(v3, 0, 512);
  CFStringGetCString(a1, v3, 1024, 0x8000100u);
  v1 = SBSSpringBoardServerPort();
  return SBOverrideDisplayedDate(v1, v3);
}

uint64_t SBSSetIdleText(const __CFString *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  memset(v3, 0, 512);
  CFStringGetCString(a1, v3, 1024, 0x8000100u);
  v1 = SBSSpringBoardServerPort();
  return SBSetIdleText(v1, v3);
}

void sub_1916B1FFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1916B2170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SBSCombineSupressionOptions_block_invoke(uint64_t a1, void *a2)
{
  result = [a2 unsignedIntegerValue];
  *(*(*(a1 + 32) + 8) + 24) |= result;
  return result;
}

__CFString *NSStringFromSBIdleTimerConfigSettingPrecedence(uint64_t a1)
{
  v1 = @"Normal";
  if (a1 == 1)
  {
    v1 = @"High";
  }

  if (a1 == 2)
  {
    return @"Critical";
  }

  else
  {
    return v1;
  }
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &buf, 0x3Au);
}

id SBLogDashBoard()
{
  if (SBLogDashBoard_onceToken != -1)
  {
    SBLogDashBoard_cold_1();
  }

  v1 = SBLogDashBoard___logObj;

  return v1;
}

uint64_t __SBLogDashBoard_block_invoke()
{
  SBLogDashBoard___logObj = os_log_create(SBLoggingSubsystem, "DashBoard");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __SBLogDashBoardScrollGestures_block_invoke()
{
  SBLogDashBoardScrollGestures___logObj = os_log_create(SBLoggingSubsystem, "DashBoardScrollGestures");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogDashBoardHostedAppViewController()
{
  if (SBLogDashBoardHostedAppViewController_onceToken != -1)
  {
    SBLogDashBoardHostedAppViewController_cold_1();
  }

  v1 = SBLogDashBoardHostedAppViewController___logObj;

  return v1;
}

uint64_t __SBLogDashBoardHostedAppViewController_block_invoke()
{
  SBLogDashBoardHostedAppViewController___logObj = os_log_create(SBLoggingSubsystem, "DashBoardHostedAppViewController");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogDashBoardCallToActionLabel()
{
  if (SBLogDashBoardCallToActionLabel_onceToken != -1)
  {
    SBLogDashBoardCallToActionLabel_cold_1();
  }

  v1 = SBLogDashBoardCallToActionLabel___logObj;

  return v1;
}

uint64_t __SBLogDashBoardCallToActionLabel_block_invoke()
{
  SBLogDashBoardCallToActionLabel___logObj = os_log_create(SBLoggingSubsystem, "DashBoardCallToActionLabel");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __SBLogDashBoardTelemetrySignposts_block_invoke()
{
  SBLogDashBoardTelemetrySignposts___logObj = os_log_create(SBLoggingSubsystem, "DashBoardTelemetrySignposts");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogDisplayAssertions()
{
  if (SBLogDisplayAssertions_onceToken != -1)
  {
    SBLogDisplayAssertions_cold_1();
  }

  v1 = SBLogDisplayAssertions___logObj;

  return v1;
}

uint64_t __SBLogDisplayAssertions_block_invoke()
{
  SBLogDisplayAssertions___logObj = os_log_create(SBLoggingSubsystem, "DisplayAssertions");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __SBLogDisplayControlling_block_invoke()
{
  SBLogDisplayControlling___logObj = os_log_create(SBLoggingSubsystem, "DisplayControlling");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogDisplayEducation()
{
  if (SBLogDisplayEducation_onceToken != -1)
  {
    SBLogDisplayEducation_cold_1();
  }

  v1 = SBLogDisplayEducation___logObj;

  return v1;
}

uint64_t __SBLogDisplayEducation_block_invoke()
{
  SBLogDisplayEducation___logObj = os_log_create(SBLoggingSubsystem, "DisplayEducation");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogDisplayScaleMapping()
{
  if (SBLogDisplayScaleMapping_onceToken != -1)
  {
    SBLogDisplayScaleMapping_cold_1();
  }

  v1 = SBLogDisplayScaleMapping___logObj;

  return v1;
}

uint64_t __SBLogDisplayScaleMapping_block_invoke()
{
  SBLogDisplayScaleMapping___logObj = os_log_create(SBLoggingSubsystem, "DisplayScaleMapping");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogDisplayTransforming()
{
  if (SBLogDisplayTransforming_onceToken != -1)
  {
    SBLogDisplayTransforming_cold_1();
  }

  v1 = SBLogDisplayTransforming___logObj;

  return v1;
}

uint64_t __SBLogDisplayTransforming_block_invoke()
{
  SBLogDisplayTransforming___logObj = os_log_create(SBLoggingSubsystem, "DisplayTransforming");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogFBDisplayManagerCallbacks()
{
  if (SBLogFBDisplayManagerCallbacks_onceToken != -1)
  {
    SBLogFBDisplayManagerCallbacks_cold_1();
  }

  v1 = SBLogFBDisplayManagerCallbacks___logObj;

  return v1;
}

uint64_t __SBLogFBDisplayManagerCallbacks_block_invoke()
{
  SBLogFBDisplayManagerCallbacks___logObj = os_log_create(SBLoggingSubsystem, "FBDisplayManagerCallbacks");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogDoNotDisturbWhileDriving()
{
  if (SBLogDoNotDisturbWhileDriving_onceToken != -1)
  {
    SBLogDoNotDisturbWhileDriving_cold_1();
  }

  v1 = SBLogDoNotDisturbWhileDriving___logObj;

  return v1;
}

uint64_t __SBLogDoNotDisturbWhileDriving_block_invoke()
{
  SBLogDoNotDisturbWhileDriving___logObj = os_log_create(SBLoggingSubsystem, "DoNotDisturbWhileDriving");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogDoNotDisturbBedtime()
{
  if (SBLogDoNotDisturbBedtime_onceToken != -1)
  {
    SBLogDoNotDisturbBedtime_cold_1();
  }

  v1 = SBLogDoNotDisturbBedtime___logObj;

  return v1;
}

uint64_t __SBLogDoNotDisturbBedtime_block_invoke()
{
  SBLogDoNotDisturbBedtime___logObj = os_log_create(SBLoggingSubsystem, "DoNotDisturbBedtime");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogFocusModes()
{
  if (SBLogFocusModes_onceToken != -1)
  {
    SBLogFocusModes_cold_1();
  }

  v1 = SBLogFocusModes___logObj;

  return v1;
}

uint64_t __SBLogFocusModes_block_invoke()
{
  SBLogFocusModes___logObj = os_log_create(SBLoggingSubsystem, "FocusModes");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogApplicationRestrictionMonitoring()
{
  if (SBLogApplicationRestrictionMonitoring_onceToken != -1)
  {
    SBLogApplicationRestrictionMonitoring_cold_1();
  }

  v1 = SBLogApplicationRestrictionMonitoring___logObj;

  return v1;
}

uint64_t __SBLogApplicationRestrictionMonitoring_block_invoke()
{
  SBLogApplicationRestrictionMonitoring___logObj = os_log_create(SBLoggingSubsystem, "ApplicationRestrictionMonitoring");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogHomeScreenConfiguration()
{
  if (SBLogHomeScreenConfiguration_onceToken != -1)
  {
    SBLogHomeScreenConfiguration_cold_1();
  }

  v1 = SBLogHomeScreenConfiguration___logObj;

  return v1;
}

uint64_t __SBLogHomeScreenConfiguration_block_invoke()
{
  SBLogHomeScreenConfiguration___logObj = os_log_create(SBLoggingSubsystem, "HomeScreenConfiguration");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __SBLogIdleTimer_block_invoke()
{
  SBLogIdleTimer___logObj = os_log_create(SBLoggingSubsystem, "IdleTimer");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogMotionGesture()
{
  if (SBLogMotionGesture_onceToken != -1)
  {
    SBLogMotionGesture_cold_1();
  }

  v1 = SBLogMotionGesture___logObj;

  return v1;
}

uint64_t __SBLogMotionGesture_block_invoke()
{
  SBLogMotionGesture___logObj = os_log_create(SBLoggingSubsystem, "MotionGesture");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogMotionAlarm()
{
  if (SBLogMotionAlarm_onceToken != -1)
  {
    SBLogMotionAlarm_cold_1();
  }

  v1 = SBLogMotionAlarm___logObj;

  return v1;
}

uint64_t __SBLogMotionAlarm_block_invoke()
{
  SBLogMotionAlarm___logObj = os_log_create(SBLoggingSubsystem, "MotionAlarm");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogPrototypeController()
{
  if (SBLogPrototypeController_onceToken != -1)
  {
    SBLogPrototypeController_cold_1();
  }

  v1 = SBLogPrototypeController___logObj;

  return v1;
}

uint64_t __SBLogPrototypeController_block_invoke()
{
  SBLogPrototypeController___logObj = os_log_create(SBLoggingSubsystem, "PrototypeController");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogWallet()
{
  if (SBLogWallet_onceToken != -1)
  {
    SBLogWallet_cold_1();
  }

  v1 = SBLogWallet___logObj;

  return v1;
}

uint64_t __SBLogWallet_block_invoke()
{
  SBLogWallet___logObj = os_log_create(SBLoggingSubsystem, "Wallet");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogLiquidDetection()
{
  if (SBLogLiquidDetection_onceToken != -1)
  {
    SBLogLiquidDetection_cold_1();
  }

  v1 = SBLogLiquidDetection___logObj;

  return v1;
}

uint64_t __SBLogLiquidDetection_block_invoke()
{
  SBLogLiquidDetection___logObj = os_log_create(SBLoggingSubsystem, "LiquidDetection");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogAutoLaunching()
{
  if (SBLogAutoLaunching_onceToken != -1)
  {
    SBLogAutoLaunching_cold_1();
  }

  v1 = SBLogAutoLaunching___logObj;

  return v1;
}

uint64_t __SBLogAutoLaunching_block_invoke()
{
  SBLogAutoLaunching___logObj = os_log_create(SBLoggingSubsystem, "AutoLaunching");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogCoverSheet()
{
  if (SBLogCoverSheet_onceToken != -1)
  {
    SBLogCoverSheet_cold_1();
  }

  v1 = SBLogCoverSheet___logObj;

  return v1;
}

uint64_t __SBLogCoverSheet_block_invoke()
{
  SBLogCoverSheet___logObj = os_log_create(SBLoggingSubsystem, "CoverSheet");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogCoverSheetActivities()
{
  if (SBLogCoverSheetActivities_onceToken != -1)
  {
    SBLogCoverSheetActivities_cold_1();
  }

  v1 = SBLogCoverSheetActivities___logObj;

  return v1;
}

uint64_t __SBLogCoverSheetActivities_block_invoke()
{
  SBLogCoverSheetActivities___logObj = os_log_create(SBLoggingSubsystem, "CoverSheetActivities");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogCoverSheetWidgets()
{
  if (SBLogCoverSheetWidgets_onceToken != -1)
  {
    SBLogCoverSheetWidgets_cold_1();
  }

  v1 = SBLogCoverSheetWidgets___logObj;

  return v1;
}

uint64_t __SBLogCoverSheetWidgets_block_invoke()
{
  SBLogCoverSheetWidgets___logObj = os_log_create(SBLoggingSubsystem, "CoverSheetWidgets");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogDockRecents()
{
  if (SBLogDockRecents_onceToken != -1)
  {
    SBLogDockRecents_cold_1();
  }

  v1 = SBLogDockRecents___logObj;

  return v1;
}

uint64_t __SBLogDockRecents_block_invoke()
{
  SBLogDockRecents___logObj = os_log_create(SBLoggingSubsystem, "DockRecents");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogDockFileStack()
{
  if (SBLogDockFileStack_onceToken != -1)
  {
    SBLogDockFileStack_cold_1();
  }

  v1 = SBLogDockFileStack___logObj;

  return v1;
}

uint64_t __SBLogDockFileStack_block_invoke()
{
  SBLogDockFileStack___logObj = os_log_create(SBLoggingSubsystem, "DockFileStack");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogIconDragging()
{
  if (SBLogIconDragging_onceToken != -1)
  {
    SBLogIconDragging_cold_1();
  }

  v1 = SBLogIconDragging___logObj;

  return v1;
}

uint64_t __SBLogIconDragging_block_invoke()
{
  SBLogIconDragging___logObj = os_log_create(SBLoggingSubsystem, "IconDragging");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogMedusaDropDestination()
{
  if (SBLogMedusaDropDestination_onceToken != -1)
  {
    SBLogMedusaDropDestination_cold_1();
  }

  v1 = SBLogMedusaDropDestination___logObj;

  return v1;
}

uint64_t __SBLogMedusaDropDestination_block_invoke()
{
  SBLogMedusaDropDestination___logObj = os_log_create(SBLoggingSubsystem, "MedusaDropDestination");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __SBLogAnalytics_block_invoke()
{
  SBLogAnalytics___logObj = os_log_create(SBLoggingSubsystem, "Analytics");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogLockScreenNowPlaying()
{
  if (SBLogLockScreenNowPlaying_onceToken != -1)
  {
    SBLogLockScreenNowPlaying_cold_1();
  }

  v1 = SBLogLockScreenNowPlaying___logObj;

  return v1;
}

uint64_t __SBLogLockScreenNowPlaying_block_invoke()
{
  SBLogLockScreenNowPlaying___logObj = os_log_create(SBLoggingSubsystem, "LockScreenNowPlaying");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogScreenWake()
{
  if (SBLogScreenWake_onceToken != -1)
  {
    SBLogScreenWake_cold_1();
  }

  v1 = SBLogScreenWake___logObj;

  return v1;
}

uint64_t __SBLogScreenWake_block_invoke()
{
  SBLogScreenWake___logObj = os_log_create(SBLoggingSubsystem, "ScreenWake");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __SBLogStatusBarish_block_invoke()
{
  SBLogStatusBarish___logObj = os_log_create(SBLoggingSubsystem, "StatusBarish");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __SBLogAppShortcuts_block_invoke()
{
  SBLogAppShortcuts___logObj = os_log_create(SBLoggingSubsystem, "AppShortcuts");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogWallpaper()
{
  if (SBLogWallpaper_onceToken != -1)
  {
    SBLogWallpaper_cold_1();
  }

  v1 = SBLogWallpaper___logObj;

  return v1;
}

uint64_t __SBLogWallpaper_block_invoke()
{
  SBLogWallpaper___logObj = os_log_create(SBLoggingSubsystem, "Wallpaper");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogCFUserNotifications()
{
  if (SBLogCFUserNotifications_onceToken != -1)
  {
    SBLogCFUserNotifications_cold_1();
  }

  v1 = SBLogCFUserNotifications___logObj;

  return v1;
}

uint64_t __SBLogCFUserNotifications_block_invoke()
{
  SBLogCFUserNotifications___logObj = os_log_create(SBLoggingSubsystem, "CFUserNotifications");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogTransientOverlay()
{
  if (SBLogTransientOverlay_onceToken != -1)
  {
    SBLogTransientOverlay_cold_1();
  }

  v1 = SBLogTransientOverlay___logObj;

  return v1;
}

uint64_t __SBLogTransientOverlay_block_invoke()
{
  SBLogTransientOverlay___logObj = os_log_create(SBLoggingSubsystem, "TransientOverlay");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogRootController()
{
  if (SBLogRootController_onceToken != -1)
  {
    SBLogRootController_cold_1();
  }

  v1 = SBLogRootController___logObj;

  return v1;
}

uint64_t __SBLogRootController_block_invoke()
{
  SBLogRootController___logObj = os_log_create(SBLoggingSubsystem, "RootController");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogWidgets()
{
  if (SBLogWidgets_onceToken != -1)
  {
    SBLogWidgets_cold_1();
  }

  v1 = SBLogWidgets___logObj;

  return v1;
}

uint64_t __SBLogWidgets_block_invoke()
{
  SBLogWidgets___logObj = os_log_create(SBLoggingSubsystem, "Widgets");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogAppQuitMonitor()
{
  if (SBLogAppQuitMonitor_onceToken != -1)
  {
    SBLogAppQuitMonitor_cold_1();
  }

  v1 = SBLogAppQuitMonitor___logObj;

  return v1;
}

uint64_t __SBLogAppQuitMonitor_block_invoke()
{
  SBLogAppQuitMonitor___logObj = os_log_create(SBLoggingSubsystem, "AppQuitMonitor");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogInCallPresentation()
{
  if (SBLogInCallPresentation_onceToken != -1)
  {
    SBLogInCallPresentation_cold_1();
  }

  v1 = SBLogInCallPresentation___logObj;

  return v1;
}

uint64_t __SBLogInCallPresentation_block_invoke()
{
  SBLogInCallPresentation___logObj = os_log_create(SBLoggingSubsystem, "InCallPresentation");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogSystemNotes()
{
  if (SBLogSystemNotes_onceToken != -1)
  {
    SBLogSystemNotes_cold_1();
  }

  v1 = SBLogSystemNotes___logObj;

  return v1;
}

uint64_t __SBLogSystemNotes_block_invoke()
{
  SBLogSystemNotes___logObj = os_log_create(SBLoggingSubsystem, "SystemNotes");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogAccessibilityWindowHosting()
{
  if (SBLogAccessibilityWindowHosting_onceToken != -1)
  {
    SBLogAccessibilityWindowHosting_cold_1();
  }

  v1 = SBLogAccessibilityWindowHosting___logObj;

  return v1;
}

uint64_t __SBLogAccessibilityWindowHosting_block_invoke()
{
  SBLogAccessibilityWindowHosting___logObj = os_log_create(SBLoggingSubsystem, "AccessibilityWindowHosting");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogBanners()
{
  if (SBLogBanners_onceToken != -1)
  {
    SBLogBanners_cold_1();
  }

  v1 = SBLogBanners___logObj;

  return v1;
}

uint64_t __SBLogBanners_block_invoke()
{
  SBLogBanners___logObj = os_log_create(SBLoggingSubsystem, "Banners");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogNotifications()
{
  if (SBLogNotifications_onceToken != -1)
  {
    SBLogNotifications_cold_1();
  }

  v1 = SBLogNotifications___logObj;

  return v1;
}

uint64_t __SBLogNotifications_block_invoke()
{
  SBLogNotifications___logObj = os_log_create(SBLoggingSubsystem, "Notifications");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogWebClip()
{
  if (SBLogWebClip_onceToken != -1)
  {
    SBLogWebClip_cold_1();
  }

  v1 = SBLogWebClip___logObj;

  return v1;
}

uint64_t __SBLogWebClip_block_invoke()
{
  SBLogWebClip___logObj = os_log_create(SBLoggingSubsystem, "WebClip");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogPIP()
{
  if (SBLogPIP_onceToken != -1)
  {
    SBLogPIP_cold_1();
  }

  v1 = SBLogPIP___logObj;

  return v1;
}

uint64_t __SBLogPIP_block_invoke()
{
  SBLogPIP___logObj = os_log_create(SBLoggingSubsystem, "PIP");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogZStack()
{
  if (SBLogZStack_onceToken != -1)
  {
    SBLogZStack_cold_1();
  }

  v1 = SBLogZStack___logObj;

  return v1;
}

uint64_t __SBLogZStack_block_invoke()
{
  SBLogZStack___logObj = os_log_create(SBLoggingSubsystem, "ZStack");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogKeyboardFocus()
{
  if (SBLogKeyboardFocus_onceToken != -1)
  {
    SBLogKeyboardFocus_cold_1();
  }

  v1 = SBLogKeyboardFocus___logObj;

  return v1;
}

uint64_t __SBLogKeyboardFocus_block_invoke()
{
  SBLogKeyboardFocus___logObj = os_log_create(SBLoggingSubsystem, "KeyboardFocus");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogTraitsArbiter()
{
  if (SBLogTraitsArbiter_onceToken != -1)
  {
    SBLogTraitsArbiter_cold_1();
  }

  v1 = SBLogTraitsArbiter___logObj;

  return v1;
}

uint64_t __SBLogTraitsArbiter_block_invoke()
{
  SBLogTraitsArbiter___logObj = os_log_create(SBLoggingSubsystem, "TraitsArbiter");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogMedusaKeyboard()
{
  if (SBLogMedusaKeyboard_onceToken != -1)
  {
    SBLogMedusaKeyboard_cold_1();
  }

  v1 = SBLogMedusaKeyboard___logObj;

  return v1;
}

uint64_t __SBLogMedusaKeyboard_block_invoke()
{
  SBLogMedusaKeyboard___logObj = os_log_create(SBLoggingSubsystem, "MedusaKeyboard");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogKeyboardDismissal()
{
  if (SBLogKeyboardDismissal_onceToken != -1)
  {
    SBLogKeyboardDismissal_cold_1();
  }

  v1 = SBLogKeyboardDismissal___logObj;

  return v1;
}

uint64_t __SBLogKeyboardDismissal_block_invoke()
{
  SBLogKeyboardDismissal___logObj = os_log_create(SBLoggingSubsystem, "KeyboardDismissal");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogZStackSystemApertureSuppression()
{
  if (SBLogZStackSystemApertureSuppression_onceToken != -1)
  {
    SBLogZStackSystemApertureSuppression_cold_1();
  }

  v1 = SBLogZStackSystemApertureSuppression___logObj;

  return v1;
}

uint64_t __SBLogZStackSystemApertureSuppression_block_invoke()
{
  SBLogZStackSystemApertureSuppression___logObj = os_log_create(SBLoggingSubsystem, "ZStackSystemApertureSuppression");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __SBLogSpotlight_block_invoke()
{
  SBLogSpotlight___logObj = os_log_create(SBLoggingSubsystem, "Spotlight");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogHearingTestMode()
{
  if (SBLogHearingTestMode_onceToken != -1)
  {
    SBLogHearingTestMode_cold_1();
  }

  v1 = SBLogHearingTestMode___logObj;

  return v1;
}

uint64_t __SBLogHearingTestMode_block_invoke()
{
  SBLogHearingTestMode___logObj = os_log_create(SBLoggingSubsystem, "HearingTestMode");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __SBLogPhoneUnlockWithVision_block_invoke()
{
  SBLogPhoneUnlockWithVision___logObj = os_log_create(SBLoggingSubsystem, "PhoneUnlockWithVision");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogProductivityGestures()
{
  if (SBLogProductivityGestures_onceToken != -1)
  {
    SBLogProductivityGestures_cold_1();
  }

  v1 = SBLogProductivityGestures___logObj;

  return v1;
}

uint64_t __SBLogProductivityGestures_block_invoke()
{
  SBLogProductivityGestures___logObj = os_log_create(SBLoggingSubsystem, "ProductivityGestures");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogSceneSnapshots()
{
  if (SBLogSceneSnapshots_onceToken != -1)
  {
    SBLogSceneSnapshots_cold_1();
  }

  v1 = SBLogSceneSnapshots___logObj;

  return v1;
}

uint64_t __SBLogSceneSnapshots_block_invoke()
{
  SBLogSceneSnapshots___logObj = os_log_create(SBLoggingSubsystem, "SceneSnapshots");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogSceneResolution()
{
  if (SBLogSceneResolution_onceToken != -1)
  {
    SBLogSceneResolution_cold_1();
  }

  v1 = SBLogSceneResolution___logObj;

  return v1;
}

uint64_t __SBLogSceneResolution_block_invoke()
{
  SBLogSceneResolution___logObj = os_log_create(SBLoggingSubsystem, "SceneResolution");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogSystemUIScene()
{
  if (SBLogSystemUIScene_onceToken != -1)
  {
    SBLogSystemUIScene_cold_1();
  }

  v1 = SBLogSystemUIScene___logObj;

  return v1;
}

uint64_t __SBLogSystemUIScene_block_invoke()
{
  SBLogSystemUIScene___logObj = os_log_create(SBLoggingSubsystem, "SystemUIScene");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __SBLogLayoutAttributes_block_invoke()
{
  SBLogLayoutAttributes___logObj = os_log_create(SBLoggingSubsystem, "LayoutAttributes");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogDeviceMotionEffect()
{
  if (SBLogDeviceMotionEffect_onceToken != -1)
  {
    SBLogDeviceMotionEffect_cold_1();
  }

  v1 = SBLogDeviceMotionEffect___logObj;

  return v1;
}

uint64_t __SBLogDeviceMotionEffect_block_invoke()
{
  SBLogDeviceMotionEffect___logObj = os_log_create(SBLoggingSubsystem, "DeviceMotionEffect");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogDynamicLighting()
{
  if (SBLogDynamicLighting_onceToken != -1)
  {
    SBLogDynamicLighting_cold_1();
  }

  v1 = SBLogDynamicLighting___logObj;

  return v1;
}

uint64_t __SBLogDynamicLighting_block_invoke()
{
  SBLogDynamicLighting___logObj = os_log_create(SBLoggingSubsystem, "DynamicLighting");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogBuddy()
{
  if (SBLogBuddy_onceToken != -1)
  {
    SBLogBuddy_cold_1();
  }

  v1 = SBLogBuddy___logObj;

  return v1;
}

uint64_t __SBLogBuddy_block_invoke()
{
  SBLogBuddy___logObj = os_log_create(SBLoggingSubsystem, "Buddy");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogBiometricResource()
{
  if (SBLogBiometricResource_onceToken != -1)
  {
    SBLogBiometricResource_cold_1();
  }

  v1 = SBLogBiometricResource___logObj;

  return v1;
}

uint64_t __SBLogBiometricResource_block_invoke()
{
  SBLogBiometricResource___logObj = os_log_create(SBBiometricLoggingSubsystem, "Resource");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __SBLogLockScreenBiometricCoordinator_block_invoke()
{
  SBLogLockScreenBiometricCoordinator___logObj = os_log_create(SBBiometricLoggingSubsystem, "Coordinator");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogLockScreenBiometricWalletPreArm()
{
  if (SBLogLockScreenBiometricWalletPreArm_onceToken != -1)
  {
    SBLogLockScreenBiometricWalletPreArm_cold_1();
  }

  v1 = SBLogLockScreenBiometricWalletPreArm___logObj;

  return v1;
}

uint64_t __SBLogLockScreenBiometricWalletPreArm_block_invoke()
{
  SBLogLockScreenBiometricWalletPreArm___logObj = os_log_create(SBBiometricLoggingSubsystem, "WalletPreArm");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogLockScreenBiometricFaceIDCoaching()
{
  if (SBLogLockScreenBiometricFaceIDCoaching_onceToken != -1)
  {
    SBLogLockScreenBiometricFaceIDCoaching_cold_1();
  }

  v1 = SBLogLockScreenBiometricFaceIDCoaching___logObj;

  return v1;
}

uint64_t __SBLogLockScreenBiometricFaceIDCoaching_block_invoke()
{
  SBLogLockScreenBiometricFaceIDCoaching___logObj = os_log_create(SBBiometricLoggingSubsystem, "FaceIDCoaching");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogLockScreenMesaWalletPreArm()
{
  if (SBLogLockScreenMesaWalletPreArm_onceToken != -1)
  {
    SBLogLockScreenMesaWalletPreArm_cold_1();
  }

  v1 = SBLogLockScreenMesaWalletPreArm___logObj;

  return v1;
}

uint64_t __SBLogLockScreenMesaWalletPreArm_block_invoke()
{
  SBLogLockScreenMesaWalletPreArm___logObj = os_log_create(SBBiometricLoggingSubsystem, "WalletPreArm");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogLockScreenMesaUnlockBehaviors()
{
  if (SBLogLockScreenMesaUnlockBehaviors_onceToken != -1)
  {
    SBLogLockScreenMesaUnlockBehaviors_cold_1();
  }

  v1 = SBLogLockScreenMesaUnlockBehaviors___logObj;

  return v1;
}

uint64_t __SBLogLockScreenMesaUnlockBehaviors_block_invoke()
{
  SBLogLockScreenMesaUnlockBehaviors___logObj = os_log_create(SBBiometricLoggingSubsystem, "UnlockBehaviors");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogLockScreenMesaHomeButtonPasscodeRecognizer()
{
  if (SBLogLockScreenMesaHomeButtonPasscodeRecognizer_onceToken != -1)
  {
    SBLogLockScreenMesaHomeButtonPasscodeRecognizer_cold_1();
  }

  v1 = SBLogLockScreenMesaHomeButtonPasscodeRecognizer___logObj;

  return v1;
}

uint64_t __SBLogLockScreenMesaHomeButtonPasscodeRecognizer_block_invoke()
{
  SBLogLockScreenMesaHomeButtonPasscodeRecognizer___logObj = os_log_create(SBBiometricLoggingSubsystem, "HomeButtonPasscodeRecognizer");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogAuthenticationController()
{
  if (SBLogAuthenticationController_onceToken != -1)
  {
    SBLogAuthenticationController_cold_1();
  }

  v1 = SBLogAuthenticationController___logObj;

  return v1;
}

uint64_t __SBLogAuthenticationController_block_invoke()
{
  SBLogAuthenticationController___logObj = os_log_create(SBAuthLoggingSubsystem, "Controller");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __SBLogAuthenticationKeybag_block_invoke()
{
  SBLogAuthenticationKeybag___logObj = os_log_create(SBAuthLoggingSubsystem, "Keybag");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogAuthenticationAssertions()
{
  if (SBLogAuthenticationAssertions_onceToken != -1)
  {
    SBLogAuthenticationAssertions_cold_1();
  }

  v1 = SBLogAuthenticationAssertions___logObj;

  return v1;
}

uint64_t __SBLogAuthenticationAssertions_block_invoke()
{
  SBLogAuthenticationAssertions___logObj = os_log_create(SBAuthLoggingSubsystem, "Assertions");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __SBLogAuthenticationModel_block_invoke()
{
  SBLogAuthenticationModel___logObj = os_log_create(SBAuthLoggingSubsystem, "Model");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogCameraCaptureAccidentalActivationMitigationSession()
{
  if (SBLogCameraCaptureAccidentalActivationMitigationSession_onceToken != -1)
  {
    SBLogCameraCaptureAccidentalActivationMitigationSession_cold_1();
  }

  v1 = SBLogCameraCaptureAccidentalActivationMitigationSession___logObj;

  return v1;
}

uint64_t __SBLogCameraCaptureAccidentalActivationMitigationSession_block_invoke()
{
  SBLogCameraCaptureAccidentalActivationMitigationSession___logObj = os_log_create(SBLoggingSubsystem, "CameraCaptureAccidentalActivationMitigationSession");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogCameraCaptureAppConfiguration()
{
  if (SBLogCameraCaptureAppConfiguration_onceToken != -1)
  {
    SBLogCameraCaptureAppConfiguration_cold_1();
  }

  v1 = SBLogCameraCaptureAppConfiguration___logObj;

  return v1;
}

uint64_t __SBLogCameraCaptureAppConfiguration_block_invoke()
{
  SBLogCameraCaptureAppConfiguration___logObj = os_log_create(SBLoggingSubsystem, "CameraCaptureAppConfiguration");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogCameraCaptureRestriction()
{
  if (SBLogCameraCaptureRestriction_onceToken != -1)
  {
    SBLogCameraCaptureRestriction_cold_1();
  }

  v1 = SBLogCameraCaptureRestriction___logObj;

  return v1;
}

uint64_t __SBLogCameraCaptureRestriction_block_invoke()
{
  SBLogCameraCaptureRestriction___logObj = os_log_create(SBLoggingSubsystem, "CameraCaptureRestriction");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogHardwareButtonService()
{
  if (SBLogHardwareButtonService_onceToken != -1)
  {
    SBLogHardwareButtonService_cold_1();
  }

  v1 = SBLogHardwareButtonService___logObj;

  return v1;
}

uint64_t __SBLogHardwareButtonService_block_invoke()
{
  SBLogHardwareButtonService___logObj = os_log_create(SBLoggingSubsystem, "HardwareButtonService");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogSystemApertureHosting()
{
  if (SBLogSystemApertureHosting_onceToken != -1)
  {
    SBLogSystemApertureHosting_cold_1();
  }

  v1 = SBLogSystemApertureHosting___logObj;

  return v1;
}

uint64_t __SBLogSystemApertureHosting_block_invoke()
{
  SBLogSystemApertureHosting___logObj = os_log_create(SBLoggingSubsystem, "SystemApertureHosting");

  return MEMORY[0x1EEE66BB8]();
}

id SBLogHangTracer()
{
  if (SBLogHangTracer_onceToken != -1)
  {
    SBLogHangTracer_cold_1();
  }

  v1 = SBLogHangTracer___logObj;

  return v1;
}

uint64_t __SBLogHangTracer_block_invoke()
{
  SBLogHangTracer___logObj = os_log_create(SBLoggingSubsystem, "HangTracer");

  return MEMORY[0x1EEE66BB8]();
}

__CFString *NSStringFromSBSHardwareButtonHapticType(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<unknown:%d>", a1];
  }

  else
  {
    v2 = off_1E735F8D8[a1];
  }

  return v2;
}

__CFString *NSStringFromSBSHardwareButtonToggleState(uint64_t a1)
{
  if ((a1 + 1) >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<unknown:%d>", a1];
  }

  else
  {
    v2 = off_1E735F950[a1 + 1];
  }

  return v2;
}

__CFString *NSStringFromSBSHardwareButtonEventPriority(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 100)
    {
      v2 = @"lockScreenPluginView";
    }

    else if (a1 == 300)
    {
      v2 = @"aboveGuidedAccess";
    }

    else
    {
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<unknown:%d>", a1];
    }
  }

  else
  {
    v2 = @"normal";
  }

  return v2;
}

__CFString *NSStringFromSBSHardwareButtonHintContentAppearState(uint64_t a1)
{
  v1 = @"<unknown>";
  if (a1 == 1)
  {
    v1 = @"visible";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"hidden";
  }
}

__CFString *NSStringFromSBSHardwareButtonSystemGlowStyle(uint64_t a1)
{
  v1 = @"<unknown>";
  if (a1 == 1)
  {
    v1 = @"fullyPresented";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"activating";
  }
}

__CFString *NSStringFromSBSCaptureButtonSuppressionOptions(uint64_t a1)
{
  if (a1)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<unrecognized:0x%X>", a1];
  }

  else
  {
    v2 = @"complete";
  }

  return v2;
}

uint64_t SBApplicationStateBeginGeneratingChangeNotifications()
{
  pthread_mutex_lock(&sRegistrationCountLock);
  if (!sRegisterCount++)
  {
    v1 = objc_autoreleasePoolPush();
    v2 = _SBApplicationStateGetMonitor_Locked();
    [v2 setHandler:&__block_literal_global_14];

    objc_autoreleasePoolPop(v1);
  }

  return pthread_mutex_unlock(&sRegistrationCountLock);
}

uint64_t SBApplicationStateEndGeneratingChangeNotifications()
{
  pthread_mutex_lock(&sRegistrationCountLock);
  if (!--sRegisterCount)
  {
    v0 = objc_autoreleasePoolPush();
    v1 = _SBApplicationStateGetMonitor_Locked();
    [v1 setHandler:0];

    objc_autoreleasePoolPop(v0);
  }

  return pthread_mutex_unlock(&sRegistrationCountLock);
}

uint64_t SBSGetApplicationState(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = _SBApplicationStateGetMonitor();
  v4 = [v3 applicationStateForApplication:a1];

  objc_autoreleasePoolPop(v2);
  return v4;
}

uint64_t SBSGetMostElevatedApplicationStateForProcessID(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = _SBApplicationStateGetMonitor();
  v4 = [v3 mostElevatedApplicationStateForPID:a1];

  objc_autoreleasePoolPop(v2);
  return v4;
}

uint64_t SBSCopyInfoForApplicationWithProcessID(uint64_t a1)
{
  v2 = _SBApplicationStateGetMonitor();
  v3 = [v2 applicationInfoForPID:a1];

  return v3;
}

void sub_1916B89B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getATXHomeScreenPageClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!AppPredictionClientLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __AppPredictionClientLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E735FA18;
    v5 = 0;
    AppPredictionClientLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AppPredictionClientLibraryCore_frameworkLibrary)
  {
    __getATXHomeScreenPageClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("ATXHomeScreenPage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getATXHomeScreenPageClass_block_invoke_cold_1();
  }

  getATXHomeScreenPageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AppPredictionClientLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AppPredictionClientLibraryCore_frameworkLibrary = result;
  return result;
}

id getBYSetupAssistantFinishedDarwinNotification()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getBYSetupAssistantFinishedDarwinNotificationSymbolLoc_ptr;
  v7 = getBYSetupAssistantFinishedDarwinNotificationSymbolLoc_ptr;
  if (!getBYSetupAssistantFinishedDarwinNotificationSymbolLoc_ptr)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getBYSetupAssistantFinishedDarwinNotificationSymbolLoc_block_invoke;
    v3[3] = &unk_1E735F9F8;
    v3[4] = &v4;
    __getBYSetupAssistantFinishedDarwinNotificationSymbolLoc_block_invoke(v3);
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getBYSetupAssistantFinishedDarwinNotification_cold_1();
  }

  v1 = *v0;

  return v1;
}

void sub_1916B933C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getBYSetupAssistantFinishedDarwinNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SetupAssistantLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SetupAssistantLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E735FA30;
    v6 = 0;
    SetupAssistantLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = SetupAssistantLibraryCore_frameworkLibrary;
  if (!SetupAssistantLibraryCore_frameworkLibrary)
  {
    __getBYSetupAssistantFinishedDarwinNotificationSymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "BYSetupAssistantFinishedDarwinNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBYSetupAssistantFinishedDarwinNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SetupAssistantLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SetupAssistantLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1916B9B1C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t SBSProcessAssertionRegisterClass()
{
  result = _CFRuntimeRegisterClass();
  __SBSProcessAssertionTypeID = result;
  return result;
}

uint64_t SBSProcessAssertionCreateForPID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  pthread_once(&__SBSProcessAssertionRegisterOnce, SBSProcessAssertionRegisterClass);
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v10 = objc_autoreleasePoolPush();
    *(Instance + 16) = 850045863;
    *(Instance + 24) = 0u;
    *(Instance + 40) = 0u;
    *(Instance + 56) = 0u;
    *(Instance + 72) = 0;
    *(Instance + 80) = a2;
    *(Instance + 84) = 1;
    *(Instance + 88) = 0;
    *(Instance + 96) = 0;
    v11 = [objc_alloc(MEMORY[0x1E698D038]) initWithPID:a2 flags:a3 reason:a4 name:a5];
    *(Instance + 104) = v11;
    if ([v11 acquire])
    {
      v12 = *(Instance + 104);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __SBSProcessAssertionCreateForPID_block_invoke;
      v15[3] = &__block_descriptor_36_e5_v8__0l;
      v16 = a2;
      [v12 setInvalidationHandler:v15];
      pthread_mutex_lock(&sAssertionArrayLock);
      Mutable = sAssertionArray;
      if (!sAssertionArray)
      {
        Mutable = CFArrayCreateMutable(0, 0, 0);
        sAssertionArray = Mutable;
      }

      CFArrayAppendValue(Mutable, Instance);
      pthread_mutex_unlock(&sAssertionArrayLock);
    }

    else
    {
      CFRelease(Instance);
      Instance = 0;
    }

    objc_autoreleasePoolPop(v10);
  }

  return Instance;
}

void __SBSProcessAssertionCreateForPID_block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __SBSProcessAssertionCreateForPID_block_invoke_2;
  block[3] = &__block_descriptor_36_e5_v8__0l;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __SBSProcessAssertionCreateForPID_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v3 = Mutable;
      pthread_mutex_lock(&sAssertionArrayLock);
      if (sAssertionArray)
      {
        Count = CFArrayGetCount(sAssertionArray);
        if (Count >= 1)
        {
          v5 = Count + 1;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(sAssertionArray, v5 - 2);
            if (ValueAtIndex[20] == v1)
            {
              v7 = ValueAtIndex;
              CFArrayAppendValue(v3, ValueAtIndex);
              CFArrayRemoveValueAtIndex(sAssertionArray, v5 - 2);
              *(v7 + 84) = 0;
            }

            --v5;
          }

          while (v5 > 1);
        }
      }

      pthread_mutex_unlock(&sAssertionArrayLock);
      v8 = CFArrayGetCount(v3);
      if (v8 >= 1)
      {
        v9 = v8;
        for (i = 0; i != v9; ++i)
        {
          v11 = CFArrayGetValueAtIndex(v3, i);
          v12 = v11[11];
          if (v12)
          {
            v12(v11, v11[12]);
          }
        }
      }

      CFRelease(v3);
    }
  }
}

uint64_t SBSProcessAssertionSetFlags(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    pthread_mutex_lock((result + 16));
    v4 = objc_autoreleasePoolPush();
    if (*(v3 + 84))
    {
      [*(v3 + 104) setFlags:a2];
    }

    objc_autoreleasePoolPop(v4);

    return pthread_mutex_unlock((v3 + 16));
  }

  return result;
}

uint64_t SBSProcessAssertionSetInvalidationCallBack(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    pthread_mutex_lock((result + 16));
    if (*(v5 + 84))
    {
      *(v5 + 88) = a2;
      *(v5 + 96) = a3;
    }

    return pthread_mutex_unlock((v5 + 16));
  }

  return result;
}

uint64_t SBSProcessAssertionIsValid(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  pthread_mutex_lock((a1 + 16));
  v2 = *(a1 + 84);
  pthread_mutex_unlock((a1 + 16));
  return v2;
}

CFTypeRef SBSProcessAssertionCopyIdentifier(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  pthread_mutex_lock((a1 + 16));
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_msgSend(*(a1 + 104) "name")];
  objc_autoreleasePoolPop(v2);
  pthread_mutex_unlock((a1 + 16));
  v4 = v3;
  if (!v4)
  {
    return 0;
  }

  return CFRetain(v4);
}

uint64_t SBSProcessAssertionDealloc(uint64_t a1)
{
  pthread_mutex_lock((a1 + 16));
  if (*(a1 + 84))
  {
    v2 = objc_autoreleasePoolPush();
    pthread_mutex_lock(&sAssertionArrayLock);
    v3 = sAssertionArray;
    if (sAssertionArray)
    {
      v7.length = CFArrayGetCount(sAssertionArray);
      v7.location = 0;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v3, v7, a1);
      if (FirstIndexOfValue != -1)
      {
        CFArrayRemoveValueAtIndex(sAssertionArray, FirstIndexOfValue);
      }
    }

    pthread_mutex_unlock(&sAssertionArrayLock);
    *(a1 + 84) = 0;
    objc_autoreleasePoolPop(v2);
  }

  [*(a1 + 104) setInvalidationHandler:0];
  [*(a1 + 104) invalidate];

  *(a1 + 104) = 0;

  return pthread_mutex_unlock((a1 + 16));
}

CFStringRef SBSProcessAssertionDescribe(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = CFGetAllocator(a1);
  if (*(a1 + 84))
  {
    v4 = @"engaged";
  }

  else
  {
    v4 = @"invalid";
  }

  v5 = CFStringCreateWithFormat(v3, 0, @"<SBSProcessAssertion %p> pid = %d %@ reason = %@", a1, *(a1 + 80), v4, [MEMORY[0x1E698D038] NameForReason:{objc_msgSend(*(a1 + 104), "reason")}]);
  objc_autoreleasePoolPop(v2);
  return v5;
}

uint64_t SBDataReset(uint64_t a1, int a2)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2050000000;
  v3 = getDDRResetOptionsClass_softClass;
  v23 = getDDRResetOptionsClass_softClass;
  if (!getDDRResetOptionsClass_softClass)
  {
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __getDDRResetOptionsClass_block_invoke;
    v18 = &unk_1E735F9F8;
    v19 = &v20;
    __getDDRResetOptionsClass_block_invoke(&v15);
    v3 = v21[3];
  }

  v4 = v3;
  _Block_object_dispose(&v20, 8);
  v5 = objc_alloc_init(v3);
  v6 = v5;
  if (a2 > 4)
  {
    if (a2 <= 6)
    {
      if (a2 == 5)
      {
        [v5 setEraseDataPlan:1];
        [v6 setHideProgress:1];
      }

      goto LABEL_19;
    }

    if (a2 != 7)
    {
      if (a2 != 8)
      {
        goto LABEL_25;
      }

      [v5 setEraseDataPlan:1];
      [v6 setHideProgress:1];
      v7 = 5;
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  if (a2 > 2)
  {
    if (a2 == 3)
    {
LABEL_19:
      v7 = 4;
      goto LABEL_20;
    }

LABEL_16:
    [v5 setEraseDataPlan:1];
    goto LABEL_19;
  }

  if (a2 == 1)
  {
    v7 = 3;
  }

  else
  {
    if (a2 != 2)
    {
      goto LABEL_25;
    }

    v7 = 2;
  }

LABEL_20:
  v20 = 0;
  v21 = &v20;
  v22 = 0x2050000000;
  v8 = getDDRResetRequestClass_softClass;
  v23 = getDDRResetRequestClass_softClass;
  if (!getDDRResetRequestClass_softClass)
  {
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __getDDRResetRequestClass_block_invoke;
    v18 = &unk_1E735F9F8;
    v19 = &v20;
    __getDDRResetRequestClass_block_invoke(&v15);
    v8 = v21[3];
  }

  v9 = v8;
  _Block_object_dispose(&v20, 8);
  v10 = [[v8 alloc] initWithMode:v7 options:v6 reason:@"unknown"];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2050000000;
  v11 = getDDRResetServiceClass_softClass;
  v23 = getDDRResetServiceClass_softClass;
  if (!getDDRResetServiceClass_softClass)
  {
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __getDDRResetServiceClass_block_invoke;
    v18 = &unk_1E735F9F8;
    v19 = &v20;
    __getDDRResetServiceClass_block_invoke(&v15);
    v11 = v21[3];
  }

  v12 = v11;
  _Block_object_dispose(&v20, 8);
  v13 = [v11 sharedInstance];
  [v13 resetWithRequest:v10 completion:0];

LABEL_25:
  return 0;
}

void sub_1916BAE74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getDDRResetOptionsClass_block_invoke(uint64_t a1)
{
  EmbeddedDataResetLibrary();
  result = objc_getClass("DDRResetOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getDDRResetOptionsClass_block_invoke_cold_1();
  }

  getDDRResetOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void EmbeddedDataResetLibrary()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!EmbeddedDataResetLibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = __EmbeddedDataResetLibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E735FA68;
    v2 = 0;
    EmbeddedDataResetLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!EmbeddedDataResetLibraryCore_frameworkLibrary)
  {
    EmbeddedDataResetLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __EmbeddedDataResetLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  EmbeddedDataResetLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getDDRResetRequestClass_block_invoke(uint64_t a1)
{
  EmbeddedDataResetLibrary();
  result = objc_getClass("DDRResetRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getDDRResetRequestClass_block_invoke_cold_1();
  }

  getDDRResetRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getDDRResetServiceClass_block_invoke(uint64_t a1)
{
  EmbeddedDataResetLibrary();
  result = objc_getClass("DDRResetService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getDDRResetServiceClass_block_invoke_cold_1();
  }

  getDDRResetServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void SBSAcquireBiometricUnlockSuppressionAssertion(void *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = a1;
    v5 = objc_alloc_init(SBSBiometricsService);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __SBSAcquireBiometricUnlockSuppressionAssertion_block_invoke;
    v7[3] = &unk_1E735F728;
    v8 = v5;
    v9 = v3;
    v6 = v5;
    [(SBSBiometricsService *)v6 acquireUnlockSuppressionAssertionForReason:v4 completion:v7];
  }
}

uint64_t __SBSAcquireBiometricUnlockSuppressionAssertion_block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

__CFString *SBSDisplayScaleDescription(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        v3 = [MEMORY[0x1E696AAA8] currentHandler];
        v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SBSDisplayScaleDescription(SBSDisplayScale)"];
        [v3 handleFailureInFunction:v4 file:@"SBSDisplayModeSettings.m" lineNumber:20 description:{@"invalid scale: %lu", 3}];

        return @"-INVALID-";
      }

LABEL_8:
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SBSDisplayScaleDescription(SBSDisplayScale)"];
      [v5 handleFailureInFunction:v6 file:@"SBSDisplayModeSettings.m" lineNumber:24 description:{@"invalid scale: %lu", a1}];

      return @"-INVALID-";
    }

    return @".MoreSpace";
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return @".Standard";
      }

      goto LABEL_8;
    }

    return @".LargerText";
  }
}

__CFString *SBSDisplayOverscanCompensationDescription(unint64_t a1)
{
  if (a1 < 3)
  {
    return off_1E735FAA8[a1];
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SBSDisplayOverscanCompensationDescription(SBSDisplayOverscanCompensation)"];
  [v3 handleFailureInFunction:v4 file:@"SBSDisplayModeSettings.m" lineNumber:34 description:{@"invalid compensation: %lu", a1}];

  return @"-INVALID-";
}

__CFString *SBSDisplayScaleMaskDescription(uint64_t a1)
{
  if (a1)
  {
    v2 = [MEMORY[0x1E696AD60] string];
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x2020000000;
    v15 = 1;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v10 = __SBSDisplayScaleMaskDescription_block_invoke;
    v11 = &unk_1E735FA88;
    v13 = v14;
    v3 = v2;
    v12 = v3;
    v4 = v9;
    v5 = 0;
    v16 = 0;
    v6 = vcnt_s8(a1);
    v6.i16[0] = vaddlv_u8(v6);
    v7 = v6.i32[0];
    do
    {
      if (((1 << v5) & a1) != 0)
      {
        (v10)(v4);
        if (v16)
        {
          break;
        }

        --v7;
      }

      if (v5 > 0x3E)
      {
        break;
      }

      ++v5;
    }

    while (v7 > 0);

    _Block_object_dispose(v14, 8);
  }

  else
  {
    v3 = @".None";
  }

  return v3;
}

void sub_1916BB7EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __SBSDisplayScaleMaskDescription_block_invoke(uint64_t a1, uint64_t a2)
{
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    [*(a1 + 32) appendString:@"|"];
  }

  if ((a2 ^ (a2 - 1)) <= a2 - 1)
  {
    __SBSDisplayScaleMaskDescription_block_invoke_cold_1();
  }

  if (a2 == 1)
  {
    v6 = 0;
  }

  else if (a2 == 4)
  {
    v6 = 2;
  }

  else
  {
    if (a2 != 2)
    {
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"SBSDisplayScale _SBSDisplayScaleFromSingleBitMask(SBSDisplayScaleMask)"];
      [v4 handleFailureInFunction:v5 file:@"SBSDisplayModeSettings.m" lineNumber:47 description:@"invalid mask"];
    }

    v6 = 1;
  }

  v7 = *(a1 + 32);
  v8 = SBSDisplayScaleDescription(v6);
  [v7 appendString:v8];

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

uint64_t SBSDisplayScaleMaskFromScale(uint64_t a1)
{
  if (a1 == 3)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"SBSDisplayScaleMask SBSDisplayScaleMaskFromScale(SBSDisplayScale)"];
    [v3 handleFailureInFunction:v4 file:@"SBSDisplayModeSettings.m" lineNumber:82 description:{@"invalid scale: %lu", 3}];

    return 0;
  }

  else
  {
    v1 = 1;
    if (a1 == 1)
    {
      v1 = 2;
    }

    if (a1 == 2)
    {
      return 4;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t FBSDisplayOverscanCompensationForDisplayValue(unint64_t a1)
{
  v1 = a1;
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"FBSDisplayOverscanCompensation FBSDisplayOverscanCompensationForDisplayValue(SBSDisplayOverscanCompensation)"];
    [v2 handleFailureInFunction:v3 file:@"SBSDisplayModeSettings.m" lineNumber:97 description:{@"invalid value: %lu", v1}];

    return -1;
  }

  return v1;
}

__CFString *NSStringFromSBSRemoteContentDismissType(unint64_t a1)
{
  if (a1 >= 9)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown dismiss type (%ld)", a1];
  }

  else
  {
    v2 = off_1E735FAE0[a1];
  }

  return v2;
}

__CFString *SBSInCallPresentationModeDescription(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_1E735FB28[a1];
  }
}

void sub_1916BFEE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1916C0104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1916C033C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1916C0574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromSBSAccidentalActivationMitigationSessionState(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"initial";
  }

  else
  {
    return off_1E735FB98[a1 - 1];
  }
}

void __SBSAppSwitcherSystemServiceReacquireHiddenAppAppearanceAssertion(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  objc_initWeak(&location, v3);
  v5 = objc_alloc_init(SBSAppSwitcherSystemService);
  v6 = [(SBSAbstractSystemService *)v5 client];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ____SBSAppSwitcherSystemServiceReacquireHiddenAppAppearanceAssertion_block_invoke;
  v9[3] = &unk_1E735FC08;
  v7 = v4;
  v10 = v7;
  objc_copyWeak(&v12, &location);
  v8 = v5;
  v11 = v8;
  [v6 requestAppSwitcherAppearanceForHiddenApplicationWithBundleIdentifier:v7 reacquiringExistingAssertion:v3 completion:v9];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void sub_1916C1504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double __sb__mainScreenScale()
{
  v0 = __sb__mainDisplayConfiguration();
  [v0 scale];
  v2 = v1;

  return v2;
}

void ____sb__mainDisplayConfiguration_block_invoke()
{
  if ((__sb__runningInSpringBoard() & 1) == 0)
  {
    ____sb__mainDisplayConfiguration_block_invoke_cold_1();
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v0 = getFBDisplayManagerClass_softClass;
  v9 = getFBDisplayManagerClass_softClass;
  if (!getFBDisplayManagerClass_softClass)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __getFBDisplayManagerClass_block_invoke;
    v5[3] = &unk_1E735F9F8;
    v5[4] = &v6;
    __getFBDisplayManagerClass_block_invoke(v5);
    v0 = v7[3];
  }

  v1 = v0;
  _Block_object_dispose(&v6, 8);
  v2 = [v0 sharedInstance];
  v3 = [v2 mainConfiguration];
  v4 = __sb__mainDisplayConfiguration___mainDisplayConfiguration;
  __sb__mainDisplayConfiguration___mainDisplayConfiguration = v3;
}

void sub_1916C1B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFBDisplayManagerClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!FrontBoardLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __FrontBoardLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E735FC50;
    v5 = 0;
    FrontBoardLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!FrontBoardLibraryCore_frameworkLibrary)
  {
    __getFBDisplayManagerClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("FBDisplayManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFBDisplayManagerClass_block_invoke_cold_1();
  }

  getFBDisplayManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __FrontBoardLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  FrontBoardLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1916C2CDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1916C6708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1916C69A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1916C6C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1916C6F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1916C7358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1916C74C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_1_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

_BYTE *OUTLINED_FUNCTION_4_0(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void OUTLINED_FUNCTION_6(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

uint64_t _SBMigDisplayIdentifierForPID(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXDisplayIdentifierForPID");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v9 = a4[1];
  v11[0] = *a4;
  v11[1] = v9;
  return FunctionForSymbol(a1, a2, a3, v11);
}

uint64_t _SBMigDisplayIdentifiersForPID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXDisplayIdentifiersForPID");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v11 = a5[1];
  v13[0] = *a5;
  v13[1] = v11;
  return FunctionForSymbol(a1, a2, a3, a4, v13);
}

uint64_t _SBMigAppSwitcherServiceRegister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXAppSwitcherServiceRegister");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v11 = a5[1];
  v13[0] = *a5;
  v13[1] = v11;
  return FunctionForSymbol(a1, a2, a3, a4, v13);
}

uint64_t _SBMigApplicationDisplayIdentifiers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXApplicationDisplayIdentifiers");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v13 = a6[1];
  v15[0] = *a6;
  v15[1] = v13;
  return FunctionForSymbol(a1, a2, a3, a4, a5, v15);
}

uint64_t _SBMigFrontmostApplicationDisplayIdentifier(int a1, uint64_t a2, __int128 *a3)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXFrontmostApplicationDisplayIdentifier");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v7 = a3[1];
  v11 = *a3;
  block[2] = ___SBMigFrontmostApplicationDisplayIdentifier_block_invoke;
  block[3] = &__block_descriptor_84_e5_v8__0l;
  v10 = a1;
  block[4] = FunctionForSymbol;
  block[5] = a2;
  v12 = v7;
  dispatch_sync(MEMORY[0x1E69E96A0], block);
  return 0;
}

uint64_t _SBMigBundlePathForDisplayIdentifier(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXBundlePathForDisplayIdentifier");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v9 = a4[1];
  v11[0] = *a4;
  v11[1] = v9;
  return FunctionForSymbol(a1, a2, a3, v11);
}

uint64_t _SBMigLocalizedApplicationNameForDisplayIdentifier(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXLocalizedApplicationNameForDisplayIdentifier");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v9 = a4[1];
  v11[0] = *a4;
  v11[1] = v9;
  return FunctionForSymbol(a1, a2, a3, v11);
}

uint64_t _SBMigSuspendFrontmostApp(int a1, __int128 *a2)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXSuspendFrontmostApp");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v5 = a2[1];
  v9 = *a2;
  v7[2] = ___SBMigSuspendFrontmostApp_block_invoke;
  v7[3] = &__block_descriptor_76_e5_v8__0l;
  v7[4] = FunctionForSymbol;
  v8 = a1;
  v10 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
  return 0;
}

uint64_t _SBMigInterruptKeybagRefetch(uint64_t a1, _OWORD *a2)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXInterruptKeybagRefetch");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  return FunctionForSymbol(a1, v7);
}

uint64_t _SBMigGetActiveInterfaceOrientation(int a1, uint64_t a2)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXGetInterfaceOrientation");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___SBMigGetActiveInterfaceOrientation_block_invoke;
  block[3] = &__block_descriptor_52_e5_v8__0l;
  v7 = a1;
  block[4] = FunctionForSymbol;
  block[5] = a2;
  dispatch_sync(MEMORY[0x1E69E96A0], block);
  return 0;
}

uint64_t _SBMigSetWantsLockButtonEvents(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXSetWantsLockButtonEvents");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v7 = a3[1];
  v9[0] = *a3;
  v9[1] = v7;
  return FunctionForSymbol(a1, a2, v9);
}

uint64_t _SBMigPresentPowerDownUI(uint64_t a1, _OWORD *a2)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXPresentPowerDownUI");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  return FunctionForSymbol(a1, v7);
}

uint64_t _SBMigReboot(int a1, __int128 *a2)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXReboot");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v5 = a2[1];
  v9 = *a2;
  v7[2] = ___SBMigReboot_block_invoke;
  v7[3] = &__block_descriptor_76_e5_v8__0l;
  v7[4] = FunctionForSymbol;
  v8 = a1;
  v10 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
  return 0;
}

uint64_t _SBMigShutDown(int a1, __int128 *a2)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXShutDown");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v5 = a2[1];
  v9 = *a2;
  v7[2] = ___SBMigShutDown_block_invoke;
  v7[3] = &__block_descriptor_76_e5_v8__0l;
  v7[4] = FunctionForSymbol;
  v8 = a1;
  v10 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
  return 0;
}

uint64_t _SBMigIsSystemApplication(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXIsSystemApplication");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v9 = a4[1];
  v11[0] = *a4;
  v11[1] = v9;
  return FunctionForSymbol(a1, a2, a3, v11);
}

uint64_t _SBMigSetApplicationBadgeNumber(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXSetApplicationBadgeNumber");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v9 = a4[1];
  v11[0] = *a4;
  v11[1] = v9;
  return FunctionForSymbol(a1, a2, a3, v11);
}

uint64_t _SBMigSetApplicationBadgeString(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXSetApplicationBadgeString");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v9 = a4[1];
  v11[0] = *a4;
  v11[1] = v9;
  return FunctionForSymbol(a1, a2, a3, v11);
}

uint64_t _SBMigSetShowsProgress(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXSetShowsProgress");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v7 = a3[1];
  v9[0] = *a3;
  v9[1] = v7;
  return FunctionForSymbol(a1, a2, v9);
}

uint64_t _SBMigSetAllApplicationsShowSyncIndicator(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXSetAllApplicationsShowSyncIndicator");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v7 = a3[1];
  v9[0] = *a3;
  v9[1] = v7;
  return FunctionForSymbol(a1, a2, v9);
}

uint64_t _SBMigSetShowsOverridesForRecording(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXSetShowsOverridesForRecording");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v7 = a3[1];
  v9[0] = *a3;
  v9[1] = v7;
  return FunctionForSymbol(a1, a2, v9);
}

uint64_t _SBMigEnableLockScreenBundle(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXEnableLockScreenBundle");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v13 = a6[1];
  v15[0] = *a6;
  v15[1] = v13;
  return FunctionForSymbol(a1, a2, a3, a4, a5, v15);
}

uint64_t _SBMigLockDeviceAndFeatures(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXLockDeviceAndFeatures");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v9 = a4[1];
  v11[0] = *a4;
  v11[1] = v9;
  return FunctionForSymbol(a1, a2, a3, v11);
}

uint64_t _SBMigLockDevice(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3[1];
  v9 = *a3;
  v10 = v5;
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXLockDeviceAndFeatures");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v8[0] = v9;
  v8[1] = v10;
  return FunctionForSymbol(a1, a2, 1, v8);
}

uint64_t _SBMigShowNetworkPromptsIfNecessary(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXShowNetworkPromptsIfNecessary");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v7 = a3[1];
  v9[0] = *a3;
  v9[1] = v7;
  return FunctionForSymbol(a1, a2, v9);
}

uint64_t _SBMigGetCurrentBacklightFactor(int a1, _DWORD *a2)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXGetCurrentBacklightFactor");
  if (FunctionForSymbol)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = ___SBMigGetCurrentBacklightFactor_block_invoke;
    v8[3] = &unk_1E735FF98;
    v8[4] = &v10;
    v8[5] = FunctionForSymbol;
    v9 = a1;
    v8[6] = a2;
    dispatch_sync(MEMORY[0x1E69E96A0], v8);
    v5 = *(v11 + 6);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    BKSHIDServicesGetBacklightFactor();
    *a2 = v6;
    return 5;
  }

  return v5;
}

uint64_t _SBMigDimScreen(int a1, char a2, __int128 *a3)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXDimScreen");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v7 = a3[1];
  v12 = *a3;
  block[2] = ___SBMigDimScreen_block_invoke;
  block[3] = &unk_1E735FFC0;
  block[4] = &v15;
  block[5] = FunctionForSymbol;
  v11 = a1;
  v14 = a2;
  v13 = v7;
  dispatch_sync(MEMORY[0x1E69E96A0], block);
  v8 = *(v16 + 6);
  _Block_object_dispose(&v15, 8);
  return v8;
}

uint64_t _SBMigGetBatteryAwakeTime(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXGetBatteryAwakeTime");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v7 = a3[1];
  v9[0] = *a3;
  v9[1] = v7;
  return FunctionForSymbol(a1, a2, v9);
}

uint64_t _SBMigGetRecentSleepsWakes(uint64_t a1, void *a2, _DWORD *a3, _OWORD *a4)
{
  *a2 = 0;
  *a3 = 0;
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXGetRecentSleepsWakes");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v9 = a4[1];
  v11[0] = *a4;
  v11[1] = v9;
  return (FunctionForSymbol)(a1, a2, a3, v11);
}

uint64_t _SBMigGetScheduledPowerEvents(uint64_t a1, void *a2, _DWORD *a3, _OWORD *a4)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXGetScheduledPowerEvents");
  if (FunctionForSymbol)
  {
    v9 = a4[1];
    v11[0] = *a4;
    v11[1] = v9;
    return (FunctionForSymbol)(a1, a2, a3, v11);
  }

  else
  {
    *a2 = 0;
    *a3 = 0;
    return 5;
  }
}

uint64_t _SBMigGetBatteryUsageTimesInSeconds(int a1, _DWORD *a2, _DWORD *a3, _BYTE *a4, _BYTE *a5, __int128 *a6)
{
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXGetBatteryUsageTimesInSeconds");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___SBMigGetBatteryUsageTimesInSeconds_block_invoke;
  block[3] = &unk_1E735FFE8;
  block[4] = &v20;
  block[5] = FunctionForSymbol;
  v17 = a1;
  block[6] = a2;
  block[7] = a3;
  block[8] = a4;
  block[9] = a5;
  v13 = *a6;
  v19 = a6[1];
  v18 = v13;
  dispatch_sync(MEMORY[0x1E69E96A0], block);
  v14 = *(v21 + 6);
  _Block_object_dispose(&v20, 8);
  return v14;
}

uint64_t _SBMigAddWebClipToHomeScreen(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXAddWebClipToHomeScreen");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v7 = a3[1];
  v9[0] = *a3;
  v9[1] = v7;
  return FunctionForSymbol(a1, a2, v9);
}

uint64_t _SBMigRemoveWebClipFromHomeScreen(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXRemoveWebClipFromHomeScreen");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v7 = a3[1];
  v9[0] = *a3;
  v9[1] = v7;
  return FunctionForSymbol(a1, a2, v9);
}

uint64_t _SBMigReloadIconForIdentifier(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXReloadIconForIdentifier");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v7 = a3[1];
  v9[0] = *a3;
  v9[1] = v7;
  return FunctionForSymbol(a1, a2, v9);
}

uint64_t _SBMigGetNowPlayingAppBundleIdentifier(uint64_t a1, _BYTE *a2, _OWORD *a3)
{
  *a2 = 0;
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXGetNowPlayingAppBundleIdentifier");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v7 = a3[1];
  v9[0] = *a3;
  v9[1] = v7;
  return (FunctionForSymbol)(a1, a2, v9);
}

uint64_t _SBMigGetTopButtonFrames(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _OWORD *a10)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXGetTopButtonFrames");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v19 = a10[1];
  v21[0] = *a10;
  v21[1] = v19;
  return FunctionForSymbol(a1, a2, a3, a4, a5, a6, a7, a8, a9, v21);
}

uint64_t _SBMigGetApplicationNetworkFlags(uint64_t a1, _BYTE *a2, _BYTE *a3, _OWORD *a4)
{
  *a2 = 0;
  *a3 = 0;
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXGetApplicationNetworkFlags");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v9 = a4[1];
  v11[0] = *a4;
  v11[1] = v9;
  return (FunctionForSymbol)(a1, a2, a3, v11);
}

uint64_t _SBMigGetDisplayIdentifiersForExternalAccessoryProtocols(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4, _OWORD *a5)
{
  *a3 = 0;
  *a4 = 0;
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXGetDisplayIdentifiersForExternalAccessoryProtocols");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v11 = a5[1];
  v13[0] = *a5;
  v13[1] = v11;
  return (FunctionForSymbol)(a1, a2, a3, a4, v13);
}

uint64_t _SBMigSetVoiceControlEnabled(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXSetVoiceControlEnabled");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v7 = a3[1];
  v9[0] = *a3;
  v9[1] = v7;
  return FunctionForSymbol(a1, a2, v9);
}

uint64_t _SBMigSetInterceptsMenuButton(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXSetInterceptsMenuButton");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v9 = a4[1];
  v11[0] = *a4;
  v11[1] = v9;
  return FunctionForSymbol(a1, a2, a3, v11);
}

void *_SBMigGetMediaVolume(uint64_t a1, _DWORD *a2, _OWORD *a3)
{
  result = SBMigGetFunctionForSymbol("_SBXXGetMediaVolume");
  if (result)
  {
    v7 = a3[1];
    v8[0] = *a3;
    v8[1] = v7;
    return (result)(a1, a2, v8);
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t _SBMigSetMediaVolume(uint64_t a1, _OWORD *a2, float a3)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXSetMediaVolume");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v7 = a2[1];
  v9[0] = *a2;
  v9[1] = v7;
  return FunctionForSymbol(a1, v9, a3);
}

uint64_t _SBMigGetHomeScreenIconMetrics(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXGetHomeScreenIconMetrics");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  return FunctionForSymbol(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t _SBMigGetIconState(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4, _OWORD *a5)
{
  *a3 = 0;
  *a4 = 0;
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXGetIconState");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v11 = a5[1];
  v13[0] = *a5;
  v13[1] = v11;
  return (FunctionForSymbol)(a1, a2, a3, a4, v13);
}

uint64_t _SBMigGetPendingIconState(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4, _OWORD *a5)
{
  *a3 = 0;
  *a4 = 0;
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXGetPendingIconState");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v11 = a5[1];
  v13[0] = *a5;
  v13[1] = v11;
  return (FunctionForSymbol)(a1, a2, a3, a4, v13);
}

uint64_t _SBMigGetFlattenedIconState(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4, _OWORD *a5)
{
  *a3 = 0;
  *a4 = 0;
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXGetFlattenedIconState");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v11 = a5[1];
  v13[0] = *a5;
  v13[1] = v11;
  return (FunctionForSymbol)(a1, a2, a3, a4, v13);
}

uint64_t _SBMigSetIconState(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXSetIconState");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v9 = a4[1];
  v11[0] = *a4;
  v11[1] = v9;
  return FunctionForSymbol(a1, a2, a3, v11);
}

uint64_t _SBMigGetIconPNGData(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5, _OWORD *a6)
{
  *a4 = 0;
  *a5 = 0;
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXGetIconPNGData");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v13 = a6[1];
  v15[0] = *a6;
  v15[1] = v13;
  return (FunctionForSymbol)(a1, a2, a3, a4, a5, v15);
}

uint64_t _SBMigFlashColor(uint64_t a1, float a2, float a3, float a4)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXFlashColor");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v9.n128_f32[0] = a2;
  v10.n128_f32[0] = a3;
  v11.n128_f32[0] = a4;

  return FunctionForSymbol(a1, v9, v10, v11);
}

uint64_t _SBMigProgrammaticSwitchAppGestureMoveToLeft(uint64_t a1, _OWORD *a2)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXProgrammaticSwitchAppGestureMoveToLeft");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  return FunctionForSymbol(a1, v7);
}

uint64_t _SBMigProgrammaticSwitchAppGestureMoveToRight(uint64_t a1, _OWORD *a2)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXProgrammaticSwitchAppGestureMoveToRight");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  return FunctionForSymbol(a1, v7);
}

uint64_t _SBMigSetVoiceRecognitionAudioInputPaths(int a1, uint64_t a2, int a3, __int128 *a4)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXSetVoiceRecognitionAudioInputPaths");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___SBMigSetVoiceRecognitionAudioInputPaths_block_invoke;
  v12[3] = &unk_1E7360010;
  v12[4] = &v17;
  v12[5] = FunctionForSymbol;
  v12[6] = a2;
  v13 = a1;
  v14 = a3;
  v9 = a4[1];
  v15 = *a4;
  v16 = v9;
  dispatch_sync(MEMORY[0x1E69E96A0], v12);
  v10 = *(v18 + 6);
  _Block_object_dispose(&v17, 8);
  return v10;
}

uint64_t _SBMigSetAssistantRecognitionStrings(int a1, uint64_t a2, int a3, __int128 *a4)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXSetAssistantRecognitionStrings");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___SBMigSetAssistantRecognitionStrings_block_invoke;
  v12[3] = &unk_1E7360010;
  v12[4] = &v17;
  v12[5] = FunctionForSymbol;
  v12[6] = a2;
  v13 = a1;
  v14 = a3;
  v9 = a4[1];
  v15 = *a4;
  v16 = v9;
  dispatch_sync(MEMORY[0x1E69E96A0], v12);
  v10 = *(v18 + 6);
  _Block_object_dispose(&v17, 8);
  return v10;
}

uint64_t _SBMigSetAlertSuppressionContextsBySectionIdentifier(int a1, uint64_t a2, int a3, __int128 *a4)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXSetAlertSuppressionContextsBySectionIdentifier");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___SBMigSetAlertSuppressionContextsBySectionIdentifier_block_invoke;
  v12[3] = &unk_1E7360010;
  v12[4] = &v17;
  v12[5] = FunctionForSymbol;
  v12[6] = a2;
  v13 = a1;
  v14 = a3;
  v9 = a4[1];
  v15 = *a4;
  v16 = v9;
  dispatch_sync(MEMORY[0x1E69E96A0], v12);
  v10 = *(v18 + 6);
  _Block_object_dispose(&v17, 8);
  return v10;
}

uint64_t _SBMigSetAppIsConnectedToEA(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXSetAppIsConnectedToEA");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v9 = a4[1];
  v11[0] = *a4;
  v11[1] = v9;
  return FunctionForSymbol(a1, a2, a3, v11);
}

uint64_t _SBMigGetWallpaperPreviewSurface(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, _OWORD *a6, double a7)
{
  *a5 = 0;
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXGetWallpaperPreviewSurface");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v15 = a6[1];
  v17[0] = *a6;
  v17[1] = v15;
  return (FunctionForSymbol)(a1, a2, a3, a4, a5, v17, a7);
}

uint64_t _SBMigGetWallpaperPreview(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, _OWORD *a8, double a9)
{
  *a7 = 0;
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXGetWallpaperPreview");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v19 = a8[1];
  v21[0] = *a8;
  v21[1] = v19;
  return (FunctionForSymbol)(a1, a2, a3, a4, a5, a6, a7, v21, a9);
}

uint64_t _SBMigSetWallpaperOptionsForLocations(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, _OWORD *a8, float a9, float a10, float a11, float a12, float a13, float a14, double a15)
{
  *a7 = 0;
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXSetWallpaperOptionsForLocations");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v31 = a8[1];
  v33[0] = *a8;
  v33[1] = v31;
  return (FunctionForSymbol)(a1, a2, a3, a4, a5, a6, a7, v33, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t _SBMigActivateAssistantWithContext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXActivateAssistantWithContext");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v11 = a5[1];
  v13[0] = *a5;
  v13[1] = v11;
  return FunctionForSymbol(a1, v13, a2, a3, a4);
}

uint64_t _SBMigSetProceduralWallpaper(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXSetProceduralWallpaper");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v13 = a6[1];
  v15[0] = *a6;
  v15[1] = v13;
  return FunctionForSymbol(a1, a2, a3, a4, a5, v15);
}

uint64_t _SBMigSetWallpaperImageForLocations(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, float a10, float a11, float a12, float a13, float a14, double a15, char a16, unsigned __int8 a17, unsigned __int8 a18, uint64_t a19, int a20, _BYTE *a21, _OWORD *a22)
{
  *a21 = 0;
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXSetWallpaperImageForLocations");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v38 = a22[1];
  v41[0] = *a22;
  v41[1] = v38;
  *(&v40 + 1) = __PAIR16__(a18, a17);
  LOBYTE(v40) = a16;
  return (FunctionForSymbol)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, v40, a19, a20, a21, v41);
}

uint64_t _SBMigSetWallpaperImageSurfaceForLocations(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, float a10, float a11, float a12, float a13, float a14, double a15, char a16, unsigned __int8 a17, unsigned __int8 a18, uint64_t a19, char a20, unsigned __int8 a21, unsigned __int8 a22, uint64_t a23, int a24, _BYTE *a25, _OWORD *a26)
{
  *a25 = 0;
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXSetWallpaperImageSurfaceForLocations");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v42 = a26[1];
  v46[0] = *a26;
  v46[1] = v42;
  *(&v45 + 1) = __PAIR16__(a22, a21);
  LOBYTE(v45) = a20;
  *(&v44 + 1) = __PAIR16__(a18, a17);
  LOBYTE(v44) = a16;
  return (FunctionForSymbol)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, v44, a19, v45, a23, a24, a25, v46);
}

uint64_t _SBMigClearWallpaperAsset(uint64_t a1, _BYTE *a2, _OWORD *a3)
{
  *a2 = 0;
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXClearWallpaperAsset");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v7 = a3[1];
  v9[0] = *a3;
  v9[1] = v7;
  return (FunctionForSymbol)(a1, a2, v9);
}

uint64_t _SBMigGetWallpaperOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, _OWORD *a15)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXGetWallpaperOptions");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v24 = a15[1];
  v26[0] = *a15;
  v26[1] = v24;
  return FunctionForSymbol(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, v26);
}

uint64_t _SBMigSetWallpaperVariant(uint64_t a1, uint64_t a2, _BYTE *a3, _OWORD *a4)
{
  *a3 = 0;
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXSetWallpaperVariant");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v9 = a4[1];
  v11[0] = *a4;
  v11[1] = v9;
  return (FunctionForSymbol)(a1, a2, a3, v11);
}

uint64_t _SBMigGetWallpaperLegibilitySettings(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4, _OWORD *a5)
{
  *a3 = 0;
  *a4 = 0;
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXGetWallpaperLegibilitySettings");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v11 = a5[1];
  v13[0] = *a5;
  v13[1] = v11;
  return (FunctionForSymbol)(a1, a2, a3, a4, v13);
}

uint64_t _SBMigAddAlertItemsSuppressionAssertion(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXAddAlertItemsSuppressionAssertion");
  if (FunctionForSymbol)
  {
    v9 = FunctionForSymbol;
    if (BSMachPortIsType())
    {
      v10 = a4[1];
      v13[0] = *a4;
      v13[1] = v10;
      return v9(a1, a2, a3, v13);
    }

    v12 = SBLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      _SBMigAddAlertItemsSuppressionAssertion_cold_1(v12);
    }
  }

  return 5;
}

uint64_t _SBMigTagTouchForTypingMenu(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXTagTouchForTypingMenu");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v7 = a3[1];
  v9[0] = *a3;
  v9[1] = v7;
  return FunctionForSymbol(a1, a2, v9);
}

uint64_t _SBMigAcquireFocusPreventingFullScreenPresentationAssertion(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXAcquireFocusPreventingFullScreenPresentationAssertion");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v9 = a4[1];
  v11[0] = *a4;
  v11[1] = v9;
  return FunctionForSymbol(a1, a2, a3, v11);
}

void *_SBMigIsReachabilityEnabled(uint64_t a1, _BYTE *a2, _OWORD *a3)
{
  *a2 = 0;
  result = SBMigGetFunctionForSymbol("_SBXXIsReachabilityEnabled");
  if (result)
  {
    v7 = a3[1];
    v8[0] = *a3;
    v8[1] = v7;
    return (result)(a1, a2, v8);
  }

  return result;
}

uint64_t _SBMigSetReachabilityEnabled(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXSetReachabilityEnabled");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v7 = a3[1];
  v9[0] = *a3;
  v9[1] = v7;
  return FunctionForSymbol(a1, a2, v9);
}

uint64_t _SBMigOverrideDisplayedDate(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXOverrideDisplayedDate");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v7 = a3[1];
  v9[0] = *a3;
  v9[1] = v7;
  return FunctionForSymbol(a1, a2, v9);
}

uint64_t _SBMigSetIdleText(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  FunctionForSymbol = SBMigGetFunctionForSymbol("_SBXXSetIdleText");
  if (!FunctionForSymbol)
  {
    return 5;
  }

  v7 = a3[1];
  v9[0] = *a3;
  v9[1] = v7;
  return FunctionForSymbol(a1, a2, v9);
}

uint64_t SBSSetStatusBarShowsActivity(uint64_t a1)
{
  v2 = SBSSpringBoardServerPort();

  return SBSetShowsProgress(v2, a1);
}

void SBSSetStatusBarShowsSyncActivity(int a1, int a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __SBSSetStatusBarShowsSyncActivity_block_invoke;
  v5[3] = &__block_descriptor_37_e5_v8__0l;
  v7 = a1;
  v6 = a2;
  v3 = MEMORY[0x193AFFB30](v5);
  _SBSRestartLock();
  if (a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  _SBSRestartScheduleBlockForIdentifier(@"SBSSetStatusBarShowsSyncActivity", v4);
  v3[2](v3);
  _SBSRestartUnlock();
}

uint64_t __SBSSetStatusBarShowsSyncActivity_block_invoke(uint64_t a1)
{
  v2 = SBSSpringBoardServerPort();
  v3 = *(a1 + 36);
  v4 = *(a1 + 32);

  return SBSetAllApplicationsShowSyncIndicator(v2, v3, v4);
}

void SBSSetStatusBarShowsOverridesForRecording(int a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __SBSSetStatusBarShowsOverridesForRecording_block_invoke;
  v4[3] = &__block_descriptor_33_e5_v8__0l;
  v5 = a1;
  v2 = MEMORY[0x193AFFB30](v4);
  _SBSRestartLock();
  if (a1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  _SBSRestartScheduleBlockForIdentifier(@"SBSSetStatusBarOverridesForRecording", v3);
  v2[2](v2);
  _SBSRestartUnlock();
}

uint64_t __SBSSetStatusBarShowsOverridesForRecording_block_invoke(uint64_t a1)
{
  v2 = SBSSpringBoardServerPort();
  v3 = *(a1 + 32);

  return SBSetShowsOverridesForRecording(v2, v3);
}

uint64_t SBSAlertItemsSuppressionAssertionGetTypeID()
{
  if (SBSAlertItemsSuppressionAssertionGetTypeID_once != -1)
  {
    SBSAlertItemsSuppressionAssertionGetTypeID_cold_1();
  }

  return SBSAlertItemsSuppressionAssertionGetTypeID_typeID;
}

uint64_t __SBSAlertItemsSuppressionAssertionGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  SBSAlertItemsSuppressionAssertionGetTypeID_typeID = result;
  return result;
}

uint64_t SBSAlertItemsSuppressionAssertionDestroy(uint64_t a1)
{
  pthread_mutex_lock((a1 + 16));
  v2 = *(a1 + 80);
  if (v2 + 1 >= 2)
  {
    mach_port_mod_refs(*MEMORY[0x1E69E9A60], v2, 1u, -1);
    *(a1 + 80) = 0;
    v3 = *(a1 + 88);
    if (v3)
    {
      CFRelease(v3);
    }
  }

  return pthread_mutex_unlock((a1 + 16));
}

CFStringRef SBSAlertItemsSuppressionAssertionDescribe(void *cf)
{
  v21 = *MEMORY[0x1E69E9840];
  memset(v20, 0, sizeof(v20));
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v10 = 0u;
  v9 = 0u;
  v8 = 0u;
  v7 = 0u;
  v6 = 0u;
  buffer = 48;
  v2 = cf[11];
  if (v2)
  {
    CFStringGetCString(v2, &buffer, 256, 0x8000100u);
  }

  v3 = CFGetAllocator(cf);
  return CFStringCreateWithFormat(v3, 0, @"<SBSAlertItemsSuppressionAssertion %p: reason='%s'>", cf, &buffer);
}

uint64_t SBSAlertItemsSuppressionAssertionCreate(const __CFAllocator *a1, const __CFString *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  if (SBSAlertItemsSuppressionAssertionGetTypeID_once != -1)
  {
    SBSAlertItemsSuppressionAssertionGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  *(Instance + 16) = 850045863;
  *(Instance + 24) = 0u;
  *(Instance + 40) = 0u;
  *(Instance + 56) = 0u;
  *(Instance + 72) = 0;
  if (a2)
  {
    Copy = CFStringCreateCopy(a1, a2);
  }

  else
  {
    Copy = 0;
  }

  *(Instance + 88) = Copy;
  name = 0;
  v6 = mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, &name);
  if (!v6)
  {
    *(Instance + 80) = name;
  }

  v7 = SBSSpringBoardServerPort();
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = (v7 - 1) > 0xFFFFFFFD;
  }

  if (v8 || (v9 = v7, v42 = 0u, v43 = 0u, v40 = 0u, v41 = 0u, v38 = 0u, v39 = 0u, v36 = 0u, v37 = 0u, v34 = 0u, v35 = 0u, v32 = 0u, v33 = 0u, v30 = 0u, v31 = 0u, v28 = 0u, v29 = 0u, v26 = 0u, v27 = 0u, v24 = 0u, v25 = 0u, v22 = 0u, v23 = 0u, v20 = 0u, v21 = 0u, v18 = 0u, v19 = 0u, v16 = 0u, v17 = 0u, v14 = 0u, v15 = 0u, *buffer = 0u, v13 = 0u, !CFStringGetCString(a2, buffer, 1024, 0x8000100u)) || SBAddAlertItemsSuppressionAssertion(v9, buffer, name))
  {
    CFRelease(Instance);
    return 0;
  }

  return Instance;
}

void sub_1916D11D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1916D1760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *SBSRemoteAlertHandleInvalidationErrorDescription(unint64_t a1)
{
  if (a1 > 8)
  {
    return @"invalidated due to unknown reason";
  }

  else
  {
    return off_1E73603E8[a1];
  }
}

uint64_t SBSRemoteAlertHandleInvalidationErrorCodeForInvalidationReason(unint64_t a1)
{
  if (a1 > 5)
  {
    return 1;
  }

  else
  {
    return qword_191729580[a1];
  }
}

__CFString *SBSHearingTestModeDescription(uint64_t a1)
{
  if (a1)
  {
    return @"active";
  }

  else
  {
    return @"inactive";
  }
}

void sub_1916D33A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_1916D3E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1916D4930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1916D5200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1916D6A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1916D6CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1916D6F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1916D716C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1916D74EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1916D779C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1916D7B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1916D7D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1916D8E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1916D8FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *SBSStringFromWebClipServiceLaunchOrigin(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E73606F8[a1];
  }
}

void sub_1916DC9EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1916DDD00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id SBSCreateOpenApplicationServiceEndpoint()
{
  v0 = MEMORY[0x1E698F498];
  v1 = [MEMORY[0x1E699FB78] serviceName];
  v2 = [v0 endpointForMachName:@"com.apple.frontboard.systemappservices" service:v1 instance:0];

  return v2;
}

__CFString *NSStringFromWindowingTelemetryMultitaskingMode(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E73608A8[a1 - 1];
  }
}

uint64_t SBSApplicationTerminationAssertionGetTypeID()
{
  if (SBSApplicationTerminationAssertionGetTypeID_pred != -1)
  {
    SBSApplicationTerminationAssertionGetTypeID_cold_1();
  }

  return SBSApplicationTerminationAssertionGetTypeID_typeID;
}

uint64_t SBSApplicationTerminationAssertionEqual(id *a1, void *a2)
{
  v4 = CFGetTypeID(a1);
  v5 = v4 == CFGetTypeID(a2);
  if (SBSApplicationTerminationAssertionGetTypeID_pred != -1)
  {
    SBSApplicationTerminationAssertionGetTypeID_cold_1();
  }

  if (SBSApplicationTerminationAssertionGetTypeID_typeID == v5)
  {
    return [a1[2] isEqual:a2[2]];
  }

  else
  {
    return 0;
  }
}

CFStringRef SBSApplicationTerminationAssertionCopyDebugDescription(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  v3 = *(a1 + 24);
  v4 = [*(a1 + 16) isValid];
  v5 = @"false";
  if (v4)
  {
    v5 = @"true";
  }

  return CFStringCreateWithFormat(v2, 0, @"<SBSApplicationTerminationAssertion %p> identifier = %@, valid = %@", a1, v3, v5);
}

uint64_t __SBSApplicationTerminationAssertionGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  SBSApplicationTerminationAssertionGetTypeID_typeID = result;
  return result;
}

void *SBSApplicationTerminationAssertionCreateWithError(uint64_t a1, const void *a2, int a3, _BYTE *a4)
{
  if (SBSApplicationTerminationAssertionGetTypeID_pred != -1)
  {
    SBSApplicationTerminationAssertionGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    if (a3)
    {
      v8 = 20;
    }

    else
    {
      v8 = 30;
    }

    if (a3 == 255)
    {
      v9 = 40;
    }

    else
    {
      v9 = v8;
    }

    v10 = [objc_alloc(MEMORY[0x1E69C7650]) initWithExplanation:@"SBSApplicationTerminationAssertion"];
    [v10 setReportType:0];
    [v10 setExceptionCode:95805101];
    [v10 setExceptionDomain:0];
    [v10 setMaximumTerminationResistance:v9];
    v11 = [MEMORY[0x1E69C7610] predicateMatchingBundleIdentifier:a2];
    v12 = [objc_alloc(MEMORY[0x1E69C7668]) initWithPredicate:v11 context:v10];
    v17 = 0;
    v13 = [v12 acquireWithError:&v17];

    if (v13)
    {
      Instance[2] = v12;
      v14 = CFRetain(a2);
      v15 = 0;
      Instance[3] = v14;
      if (!a4)
      {
        goto LABEL_15;
      }
    }

    else
    {
      [v12 invalidate];

      if ([v17 code] == 4)
      {
        v15 = 1;
      }

      else
      {
        v15 = 4;
      }

      if (!a4)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_14;
  }

  v15 = 4;
  if (a4)
  {
LABEL_14:
    *a4 = v15;
  }

LABEL_15:
  if (Instance && v15)
  {
    CFRelease(Instance);
    return 0;
  }

  return Instance;
}

void SBSApplicationTerminationAssertionInvalidate(uint64_t a1)
{
  [*(a1 + 16) invalidate];

  *(a1 + 16) = 0;
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }
}

__CFString *SBSApplicationTerminationAssertionErrorString(unsigned int a1)
{
  if (a1 > 4)
  {
    return @"unknown error";
  }

  else
  {
    return off_1E73608C0[a1];
  }
}

void sub_1916E1050(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

uint64_t SBSDiffSystemNotesPresentationConfigurations(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 15;
  if (v3 && v4)
  {
    v7 = [v3 sceneBundleIdentifier];
    v8 = [v5 sceneBundleIdentifier];
    v9 = [v7 isEqual:v8];

    v10 = [v3 preferredPresentationMode];
    if (v10 == [v5 preferredPresentationMode])
    {
      v11 = v9 ^ 1u;
    }

    else
    {
      v11 = v9 ^ 1u | 2;
    }

    v12 = [v3 userActivity];
    v13 = [v5 userActivity];
    if ([v12 isEqual:v13])
    {
    }

    else
    {
      v14 = [v3 userActivity];
      if (v14)
      {
        v15 = 1;
      }

      else
      {
        v16 = [v5 userActivity];
        v15 = v16 != 0;
      }

      if (v15)
      {
        v11 |= 4uLL;
      }
    }

    v17 = [v3 identifier];
    v18 = [v5 identifier];
    v19 = [v17 isEqual:v18];

    if (v19)
    {
      v6 = v11;
    }

    else
    {
      v6 = v11 | 8;
    }
  }

  return v6;
}

__CFString *NSStringFromSBSMultitaskingApplicationSupportedShortcutActionMask(char a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"fullscreen"];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"leftSplit"];
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  [v3 addObject:@"rightSplit"];
  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_12:
  [v3 addObject:@"allWindows"];
  if ((a1 & 0x10) != 0)
  {
LABEL_6:
    [v3 addObject:@"addToWindowSet"];
  }

LABEL_7:
  if ([v3 count])
  {
    v4 = [v3 componentsJoinedByString:{@", "}];
  }

  else
  {
    v4 = @"none";
  }

  return v4;
}

void sub_1916E2548(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

__CFString *SBSSystemNotesConnectionSourceDescription(unint64_t a1)
{
  if (a1 >= 3)
  {
    SBSSystemNotesConnectionSourceDescription_cold_1();
  }

  if (a1 > 2)
  {
    return @"-unknown-";
  }

  else
  {
    return off_1E7360A00[a1];
  }
}

void _SBSRestarted()
{
  v11 = *MEMORY[0x1E69E9840];
  v0 = objc_autoreleasePoolPush();
  _SBSRestartLock();
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v1 = [__SBSRestartBlocks allValues];
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5++) + 16))();
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }

  [__SBSRestartLock unlock];
  objc_autoreleasePoolPop(v0);
}

void sub_1916E3288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1916E342C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_1916E392C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1916E3AA0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

uint64_t SBSStringForHomeScreenIconStyleConfigurationType(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7360AB0 + a1);
  }
}

uint64_t SBSStringForHomeScreenIconStyleConfigurationVariant(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7360AE0 + a1);
  }
}

void SBSSetAlertSuppressionContextsBySectionIdentifier(void *a1)
{
  v1 = a1;
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x1E695DEF0] data];
  if (v1)
  {
    v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v1, "count")}];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __SBSSetAlertSuppressionContextsBySectionIdentifier_block_invoke;
    v8[3] = &unk_1E735EEB0;
    v9 = v4;
    v5 = v4;
    [v1 enumerateKeysAndObjectsUsingBlock:v8];
    v6 = [MEMORY[0x1E696AE40] dataWithPropertyList:v5 format:200 options:0 error:0];

    v3 = v6;
  }

  v7 = SBSSpringBoardServerPort();
  SBSetAlertSuppressionContextsBySectionIdentifier(v7, [v3 bytes], objc_msgSend(v3, "length"));

  objc_autoreleasePoolPop(v2);
}

void __SBSSetAlertSuppressionContextsBySectionIdentifier_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 allObjects];
  [v4 setObject:v6 forKey:v5];
}

__CFString *secureAppTypeName(uint64_t a1)
{
  if ((a1 - 1) > 0xF)
  {
    return @"SBSSecureAppTypeNone";
  }

  else
  {
    return *(&off_1E7360B00 + a1 - 1);
  }
}

uint64_t SBSSecureAppTypeForIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"com.apple.calculator"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"com.apple.mobiletimer"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"com.apple.mobilenotes"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"com.apple.camera"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"com.apple.Magnifier"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"com.apple.Maps"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"com.apple.purplebuddy"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"com.apple.VoiceMemos"])
  {
    v2 = 12;
  }

  else if ([v1 isEqualToString:@"com.apple.TVRemoteUIService"])
  {
    v2 = 13;
  }

  else if ([v1 isEqualToString:@"com.apple.VirtualDisplayTest"])
  {
    v2 = 15;
  }

  else if ([v1 isEqualToString:@"com.apple.sidecar"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"com.apple.ContinuityCaptureShieldUI"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"com.apple.ContinuitySingShieldUI"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"com.apple.BarcodeScanner"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"com.apple.Translate"])
  {
    v2 = 14;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t SBSIdentifierForSecureAppType(uint64_t a1)
{
  if ((a1 - 1) > 0xE)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7360B80 + a1 - 1);
  }
}

__CFString *SBSDisplayLayoutBacklightTransitionReasonForBacklightChangeSource(uint64_t a1)
{
  if ((a1 - 1) > 0x30)
  {
    return 0;
  }

  else
  {
    return off_1E7360F40[a1 - 1];
  }
}

id SBSDisplayLayoutTransitionReasonForSourceApplication(void *a1)
{
  if (a1)
  {
    a1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"SBSourceApplication:", a1];
    v1 = vars8;
  }

  return a1;
}

id SBSDisplayLayoutTransitionSourceApplicationFromReason(void *a1)
{
  v1 = a1;
  if ([v1 hasPrefix:@"SBSourceApplication:"])
  {
    v2 = [v1 substringFromIndex:{objc_msgSend(@"SBSourceApplication:", "length")}];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

double SBSConvertPointFromDisplayToNeighboringDisplay(void *a1, double a2, uint64_t a3, void *a4)
{
  v6 = a1;
  v7 = a4;
  v8 = [v6 hardwareIdentifier];
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = [v6 isMainDisplay];
  }

  v10 = [v7 hardwareIdentifier];
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = [v7 isMainDisplay];
  }

  if (v11 != v9)
  {
    if (__sb__runningInSpringBoard())
    {
      v12 = [MEMORY[0x1E695E000] standardUserDefaults];
    }

    else
    {
      v12 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.springboard"];
    }

    v13 = v12;
    v14 = [v12 objectForKey:@"SBExternalDisplayArrangementEdge"];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 unsignedIntValue];
    }

    else
    {
      v16 = 1;
    }

    if (v9)
    {
      v17 = v6;
    }

    else
    {
      v17 = v7;
    }

    [v17 bounds];
    v19 = v18;
    v21 = v20;
    if (BSInterfaceOrientationIsLandscape() && v19 < v21 || BSInterfaceOrientationIsPortrait() && v21 < v19)
    {
      v22 = v19;
    }

    else
    {
      v22 = v21;
      v21 = v19;
    }

    if (v9)
    {
      v23 = v7;
    }

    else
    {
      v23 = v6;
    }

    [v23 bounds];
    v25 = v24;
    v27 = v26;
    if (BSInterfaceOrientationIsLandscape() && v25 < v27 || BSInterfaceOrientationIsPortrait() && v27 < v25)
    {
      v28 = v25;
    }

    else
    {
      v28 = v27;
      v27 = v25;
    }

    v29 = v22 - v28;
    if ((v16 & 0xFFFFFFFD) == 1)
    {
      v29 = v21 - v27;
    }

    v30 = fabs(v29 * 0.5);
    if (v16 > 1)
    {
      if (v16 != 2)
      {
        if (v16 == 3)
        {
          if (!v9)
          {
            v30 = -v30;
          }

          a2 = a2 + v30;
        }

        goto LABEL_52;
      }

      v31 = -v21;
      if (!v9)
      {
        v31 = v21;
      }
    }

    else
    {
      if (v16)
      {
        if (v16 == 1)
        {
          if (!v9)
          {
            v30 = -v30;
          }

          a2 = a2 + v30;
        }

        goto LABEL_52;
      }

      v31 = -v27;
      if (v9)
      {
        v31 = v27;
      }
    }

    a2 = a2 + v31;
LABEL_52:

    goto LABEL_53;
  }

  a2 = 1.79769313e308;
LABEL_53:

  return a2;
}

BOOL SBSRectOnDisplayIntersectsNeighboringDisplay(void *a1, uint64_t a2, void *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v13 = a1;
  v14 = a3;
  v15 = [v13 hardwareIdentifier];
  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = [v13 isMainDisplay];
  }

  v17 = [v14 hardwareIdentifier];
  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = [v14 isMainDisplay];
  }

  if (v18 == v16)
  {
    goto LABEL_39;
  }

  if (v16)
  {
    v19 = v13;
  }

  else
  {
    v19 = v14;
  }

  [v19 bounds];
  v52 = v21;
  v53 = v20;
  v23 = v22;
  v25 = v24;
  v49 = a7;
  if ((!BSInterfaceOrientationIsLandscape() || v23 >= v25) && (!BSInterfaceOrientationIsPortrait() || v25 >= v23))
  {
    v26 = v23;
    v23 = v25;
    v25 = v26;
  }

  v27 = v16 ? v14 : v13;
  if (([v27 bounds], v50 = v29, v51 = v28, v31 = v30, v33 = v32, BSInterfaceOrientationIsLandscape()) && v31 < v33 || BSInterfaceOrientationIsPortrait() && v33 < v31)
  {
    v34 = v33;
  }

  else
  {
    v34 = v31;
    v31 = v33;
  }

  v35 = v16 ? v23 : v31;
  v36 = v16 ? v25 : v34;
  v37 = v16 ? v52 : v50;
  v38 = v16 ? v53 : v51;
  v54.origin.x = a4;
  v54.origin.y = a5;
  v54.size.width = a6;
  v54.size.height = v49;
  if (!CGRectIntersectsRect(v54, *(&v35 - 3)) || (SBSConvertRectFromDisplayToNeighboringDisplay(v13, a2, v14, a4), x = v55.origin.x, y = v55.origin.y, width = v55.size.width, height = v55.size.height, CGRectIsNull(v55)))
  {
LABEL_39:
    v43 = 0;
  }

  else
  {
    if (v16)
    {
      v45 = v31;
    }

    else
    {
      v45 = v23;
    }

    if (v16)
    {
      v46 = v34;
    }

    else
    {
      v46 = v25;
    }

    if (v16)
    {
      v47 = v50;
    }

    else
    {
      v47 = v52;
    }

    if (v16)
    {
      v48 = v51;
    }

    else
    {
      v48 = v53;
    }

    v56.origin.x = x;
    v56.origin.y = y;
    v56.size.width = width;
    v56.size.height = height;
    v43 = CGRectIntersectsRect(v56, *(&v45 - 3));
  }

  return v43;
}
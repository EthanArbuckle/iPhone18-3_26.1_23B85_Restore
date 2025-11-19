id _GetPowerMonitoringQueue()
{
  if (_GetPowerMonitoringQueue_onceToken != -1)
  {
    _GetPowerMonitoringQueue_cold_1();
  }

  v1 = sPowerMonitoringQueue;

  return v1;
}

__CFString *PCStringFromDate(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (PCStringFromDate_onceToken != -1)
    {
      PCStringFromDate_cold_1();
    }

    v2 = [PCStringFromDate_formatter stringFromDate:v1];
  }

  else
  {
    v2 = @"(null)";
  }

  return v2;
}

uint64_t __PCPrefsQueue_block_invoke()
{
  PCPrefsQueue_prefsQueue = dispatch_queue_create("PC-Prefs-Queue", 0);

  return MEMORY[0x2821F96F8]();
}

id PCPrefsQueue()
{
  if (PCPrefsQueue_onceToken != -1)
  {
    PCPrefsQueue_cold_1();
  }

  v1 = PCPrefsQueue_prefsQueue;

  return v1;
}

void __loadPCPrefsIfNeeded_block_invoke(_BYTE *a1)
{
  if (a1[32] == 1 && PCPrefsNeedLoading == 1)
  {
    Copy = CFStringCreateCopy(0, @"com.apple.persistentconnection");
    CFPreferencesAppSynchronize(Copy);
    CFRelease(Copy);
    PCPrefsNeedLoading = 0;
  }

  if (a1[33] == 1 && PCPrefsNeedLoadingConnectionClassNoSettings == 1)
  {
    v3 = CFStringCreateCopy(0, @"com.apple.persistentconnection-nosettings");
    CFPreferencesAppSynchronize(v3);
    CFRelease(v3);
    PCPrefsNeedLoadingConnectionClassNoSettings = 0;
  }

  if (a1[34] == 1 && PCPrefsNeedLoadingConnectionClassMailContactsCalendars == 1)
  {
    v4 = CFStringCreateCopy(0, @"com.apple.persistentconnection-mcc");
    CFPreferencesAppSynchronize(v4);
    CFRelease(v4);
    PCPrefsNeedLoadingConnectionClassMailContactsCalendars = 0;
  }
}

uint64_t PCSettingsGetClassPushEnabled(int a1)
{
  if (registerForPCPrefChanges_onceToken != -1)
  {
    PCSettingsGetClassPushEnabled_cold_1();
  }

  loadPCPrefsIfNeeded(a1 == 0, a1 == 1);
  if (!a1)
  {
    v2 = @"com.apple.persistentconnection-nosettings";
    goto LABEL_7;
  }

  if (a1 == 1)
  {
    v2 = @"com.apple.persistentconnection-mcc";
LABEL_7:
    Copy = CFStringCreateCopy(0, v2);
    goto LABEL_9;
  }

  Copy = 0;
LABEL_9:
  v4 = *MEMORY[0x277CBF010];
  v5 = CFPreferencesCopyValue(@"PCEnablePush", Copy, @"mobile", *MEMORY[0x277CBF010]);
  if (v5)
  {
    v6 = v5;
    v7 = CFGetTypeID(v5);
    if (v7 == CFBooleanGetTypeID())
    {
      Value = CFBooleanGetValue(v6);
      if (!Copy)
      {
        goto LABEL_20;
      }

LABEL_19:
      CFRelease(Copy);
      goto LABEL_20;
    }

LABEL_18:
    Value = 1;
    if (!Copy)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (a1 != 1)
  {
    v6 = 0;
    goto LABEL_18;
  }

  v9 = CFStringCreateCopy(0, @"com.apple.persistentconnection");
  v10 = CFPreferencesCopyValue(@"PCEnablePush", v9, @"mobile", v4);
  v6 = v10;
  if (v10 && (v11 = CFGetTypeID(v10), v11 == CFBooleanGetTypeID()))
  {
    Value = CFBooleanGetValue(v6);
  }

  else
  {
    Value = 1;
  }

  CFRelease(v9);
  if (Copy)
  {
    goto LABEL_19;
  }

LABEL_20:
  if (v6)
  {
    CFRelease(v6);
  }

  return Value;
}

uint64_t PCSettingsGetClassPollInterval(int a1)
{
  if (registerForPCPrefChanges_onceToken != -1)
  {
    PCSettingsGetClassPushEnabled_cold_1();
  }

  loadPCPrefsIfNeeded(a1 == 0, a1 == 1);
  valuePtr = 0;
  if (!a1)
  {
    v2 = @"com.apple.persistentconnection-nosettings";
    goto LABEL_7;
  }

  if (a1 == 1)
  {
    v2 = @"com.apple.persistentconnection-mcc";
LABEL_7:
    Copy = CFStringCreateCopy(0, v2);
    goto LABEL_9;
  }

  Copy = 0;
LABEL_9:
  v4 = *MEMORY[0x277CBF010];
  v5 = CFPreferencesCopyValue(@"PCDefaultPollInterval", Copy, @"mobile", *MEMORY[0x277CBF010]);
  if (v5)
  {
    v6 = v5;
    v7 = CFGetTypeID(v5);
    if (v7 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v6, kCFNumberIntType, &valuePtr);
    }

    v8 = v6;
LABEL_13:
    CFRelease(v8);
    goto LABEL_14;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v10 = CFStringCreateCopy(0, @"com.apple.persistentconnection");
      v11 = CFPreferencesCopyValue(@"PCDefaultPollInterval", v10, @"mobile", v4);
      if (v11)
      {
        v12 = v11;
        v13 = CFGetTypeID(v11);
        if (v13 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v12, kCFNumberIntType, &valuePtr);
        }

        CFRelease(v10);
        v8 = v12;
      }

      else
      {
        v8 = v10;
      }

      goto LABEL_13;
    }
  }

  else
  {
    valuePtr = 1800;
  }

LABEL_14:
  if (Copy)
  {
    CFRelease(Copy);
  }

  if (valuePtr < 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return valuePtr;
  }
}

void __registerForPCPrefChanges_block_invoke()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _PCPrefsChangedNotification, @"PCPreferencesDidChangeNotificationInternal", 0, CFNotificationSuspensionBehaviorCoalesce);
}

void loadPCPrefsIfNeeded(char a1, char a2)
{
  v4 = PCPrefsQueue();
  v5 = v4;
  if (v4)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __loadPCPrefsIfNeeded_block_invoke;
    block[3] = &__block_descriptor_35_e5_v8__0l;
    v7 = 1;
    v8 = a1;
    v9 = a2;
    dispatch_sync(v4, block);
  }
}

double currentKeepAliveInterval(uint64_t a1)
{
  if (os_log_type_enabled(*(a1 + 304), OS_LOG_TYPE_DEBUG))
  {
    currentKeepAliveInterval_cold_1(a1);
  }

  return *a1;
}

uint64_t growthStage(uint64_t a1)
{
  if (os_log_type_enabled(*(a1 + 304), OS_LOG_TYPE_DEBUG))
  {
    growthStage_cold_1(a1);
  }

  return *(a1 + 104);
}

uint64_t previousAction(uint64_t a1)
{
  if (os_log_type_enabled(*(a1 + 304), OS_LOG_TYPE_DEBUG))
  {
    previousAction_cold_1(a1);
  }

  return *(a1 + 108);
}

double PCScheduledWakeRTCPrecision()
{
  if (PCScheduledWakeRTCPrecision_onceToken != -1)
  {
    PCScheduledWakeRTCPrecision_cold_1();
  }

  return *&PCScheduledWakeRTCPrecision_scheduledWakeRTCPrecision;
}

void setIsServerOriginatedKeepAlive(uint64_t a1, char a2)
{
  if (os_log_type_enabled(*(a1 + 304), OS_LOG_TYPE_DEBUG))
  {
    setIsServerOriginatedKeepAlive_cold_1(a1);
  }

  *(a1 + 8) = a2;
}

uint64_t countOfGrowthActions(uint64_t a1)
{
  if (os_log_type_enabled(*(a1 + 304), OS_LOG_TYPE_DEBUG))
  {
    countOfGrowthActions_cold_1(a1);
  }

  return *(a1 + 80);
}

void processNextAction(uint64_t a1, uint64_t a2)
{
  v91 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 304);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = &off_279A1A328[a2];
    if (a2 >= 4)
    {
      v5 = &nil;
    }

    v6 = *v5;
    v7 = _stringForStage(*(a1 + 104));
    v83 = 136315650;
    v84 = (a1 + 176);
    v85 = 2080;
    *v86 = v6;
    *&v86[8] = 2080;
    *&v86[10] = v7;
    _os_log_impl(&dword_25E3EF000, v4, OS_LOG_TYPE_DEFAULT, "%s: received action %s while in stage %s", &v83, 0x20u);
  }

  if (!a2)
  {
    ++*(a1 + 80);
  }

  v8 = *(a1 + 312);
  if (v8 == 2)
  {
    if (*(a1 + 32) >= 2.22044605e-16)
    {
      if (*(a1 + 65))
      {
        goto LABEL_21;
      }

      goto LABEL_17;
    }

    goto LABEL_19;
  }

  if (v8 == 1)
  {
    if (*(a1 + 65) == 1)
    {
      goto LABEL_14;
    }

    if (*(a1 + 32) >= 2.22044605e-16)
    {
      goto LABEL_21;
    }

LABEL_19:
    v10 = 0;
    goto LABEL_20;
  }

  if (v8)
  {
    goto LABEL_21;
  }

  if (*(a1 + 65) != 1)
  {
    v9 = *(a1 + 32);
    if (v9 <= 2.22044605e-16)
    {
      goto LABEL_21;
    }

    _resetAlgorithmToInterval(a1, 2u, v9);
LABEL_17:
    v10 = 1;
    goto LABEL_20;
  }

LABEL_14:
  _resetAlgorithmToInterval(a1, 5u, *(a1 + 48));
  v10 = 2;
LABEL_20:
  *(a1 + 316) = v10;
LABEL_21:
  v11 = *(a1 + 304);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 312);
    if (v12 >= 3)
    {
      v13 = &nil;
    }

    else
    {
      v13 = &off_279A1A348[v12];
    }

    v14 = *v13;
    v15 = *(a1 + 316);
    v16 = &off_279A1A348[v15];
    if (v15 >= 3)
    {
      v16 = &nil;
    }

    v17 = *v16;
    v83 = 136315650;
    v84 = (a1 + 176);
    v85 = 2080;
    *v86 = v14;
    *&v86[8] = 2080;
    *&v86[10] = v17;
    _os_log_impl(&dword_25E3EF000, v11, OS_LOG_TYPE_DEFAULT, "%s: adjustGrowthAlgorithmMode. {lastMode: %s, currentMode: %s}", &v83, 0x20u);
  }

  if (a2 == 3)
  {
    v18 = *(a1 + 40);
    if (v18 <= 0.0)
    {
      v18 = *(a1 + 16);
    }

    _resetAlgorithmToInterval(a1, 2 * (v18 > 2.22044605e-16), v18);
    goto LABEL_88;
  }

  v19 = *(a1 + 104);
  if (v19 == 4)
  {
    v20 = *(a1 + 160);
    if (v20)
    {
      v21 = time(0);
      v22 = *v20;
      v23 = *v20 - v21;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v83 = 136316674;
        v84 = "_processMinimumIntervalFallbackStateAction";
        v85 = 1024;
        *v86 = 677;
        *&v86[4] = 2080;
        *&v86[6] = "_NSDate_timeIntervalSinceNow";
        *&v86[14] = 2048;
        *&v86[16] = v20;
        *&v86[24] = 2048;
        *&v86[26] = v22;
        v87 = 2048;
        v88 = v21;
        v89 = 2048;
        v90 = v23;
        _os_log_debug_impl(&dword_25E3EF000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s():%d | %s(%p) %llu - %llu = %llu", &v83, 0x44u);
      }

      v24 = *(a1 + 72);
      v25 = *(a1 + 160);
      if (v24 < v23)
      {
        v26 = _NSDate_alloc_initWithTimeIntervalSinceNow("_processMinimumIntervalFallbackStateAction", 679, v24);
        *(a1 + 160) = v26;
        v27 = *(a1 + 304);
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
LABEL_40:
          free(v25);
LABEL_87:
          *(a1 + 312) = *(a1 + 316);
          *(a1 + 108) = a2;
          goto LABEL_88;
        }

        v28 = *v25;
        v29 = *v26;
        v83 = 136315650;
        v84 = (a1 + 176);
        v85 = 2048;
        *v86 = v28;
        *&v86[8] = 2048;
        *&v86[10] = v29;
        v30 = "%s: Unexpected _leaveMinimumIntervalFallbackStateDate %llu in MinimumIntervalFallbackState, changing to %llu";
        v31 = v27;
        v32 = 32;
LABEL_39:
        _os_log_impl(&dword_25E3EF000, v31, OS_LOG_TYPE_DEFAULT, v30, &v83, v32);
        goto LABEL_40;
      }

      v46 = time(0);
      v47 = *v25;
      v48 = *v25 - v46;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v83 = 136316674;
        v84 = "_processMinimumIntervalFallbackStateAction";
        v85 = 1024;
        *v86 = 682;
        *&v86[4] = 2080;
        *&v86[6] = "_NSDate_timeIntervalSinceNow";
        *&v86[14] = 2048;
        *&v86[16] = v25;
        *&v86[24] = 2048;
        *&v86[26] = v47;
        v87 = 2048;
        v88 = v46;
        v89 = 2048;
        v90 = v48;
        _os_log_debug_impl(&dword_25E3EF000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s():%d | %s(%p) %llu - %llu = %llu", &v83, 0x44u);
      }

      if (v48 > 0)
      {
        goto LABEL_87;
      }

      v49 = *(a1 + 304);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v83 = 136315138;
        v84 = (a1 + 176);
        _os_log_impl(&dword_25E3EF000, v49, OS_LOG_TYPE_DEFAULT, "%s: leaveMinimumFallbackStateDate passed, acting", &v83, 0xCu);
      }

      if (a2 != 2)
      {
        if (a2 == 1)
        {
          v25 = *(a1 + 160);
          v68 = _NSDate_alloc_initWithTimeIntervalSinceNow("_processMinimumIntervalFallbackStateAction", 702, *(a1 + 72));
          *(a1 + 160) = v68;
          v69 = *(a1 + 304);
          if (!os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_40;
          }

          v70 = *v68;
          v83 = 136315394;
          v84 = (a1 + 176);
          v85 = 2048;
          *v86 = v70;
          v30 = "%s: after previous MinimumIntervalFallbackState ends, extend leaveMinimumIntervalFallbackStateDate to %llu";
          v31 = v69;
          v32 = 22;
          goto LABEL_39;
        }

        if (a2)
        {
          goto LABEL_87;
        }
      }

      free(*(a1 + 160));
      *(a1 + 160) = nil;
      v50 = *(a1 + 112);
      v51 = *(a1 + 48);
      if (v51 <= 0.0)
      {
        v51 = *(a1 + 24);
      }

      if (v50 <= v51)
      {
        goto LABEL_84;
      }

      setMaximumKeepAliveInterval(a1, v50);
      v43 = *(a1 + 304);
      if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_84;
      }

      v52 = *(a1 + 112);
      v83 = 136315394;
      v84 = (a1 + 176);
      v85 = 2048;
      *v86 = v52;
      v45 = "%s: Leave minimumIntervalFallbackState. Changing maximum keep alive interval back to %g";
    }

    else
    {
      v41 = *(a1 + 112);
      v42 = *(a1 + 48);
      if (v42 <= 0.0)
      {
        v42 = *(a1 + 24);
      }

      if (v41 <= v42)
      {
        goto LABEL_84;
      }

      setMaximumKeepAliveInterval(a1, v41);
      v43 = *(a1 + 304);
      if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_84;
      }

      v44 = *(a1 + 112);
      v83 = 136315394;
      v84 = (a1 + 176);
      v85 = 2048;
      *v86 = v44;
      v45 = "%s: _leaveMinimumIntervalFallbackStateDate is nil. Leave minimumIntervalFallbackState. Changing maximum keep alive interval back to %g";
    }

    _os_log_impl(&dword_25E3EF000, v43, OS_LOG_TYPE_DEFAULT, v45, &v83, 0x16u);
LABEL_84:
    *(a1 + 104) = 1;
LABEL_85:
    v53 = a1;
    v54 = a2;
LABEL_86:
    processNextAction(v53, v54);
    goto LABEL_87;
  }

  v33 = *(a1 + 48);
  v34 = v33;
  if (v33 <= 0.0)
  {
    v34 = *(a1 + 24);
  }

  v35 = *(a1 + 40);
  v36 = v35;
  if (v35 <= 0.0)
  {
    v36 = *(a1 + 16);
  }

  v37 = *&qword_27FCE4698;
  if (v34 - v36 > *&qword_27FCE4698)
  {
    if (v19 <= 2)
    {
      if (v19)
      {
        if (v19 != 1)
        {
          if (v19 != 2)
          {
            goto LABEL_87;
          }

          if (a2 == 2)
          {
LABEL_53:
            v38 = *(a1 + 152);
            if (v38)
            {
              if (_NSDate_timeIntervalSinceNow("_processSteadyStateAction", 609, v38) < 0.0)
              {
                v39 = *(a1 + 304);
                if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
                {
                  v83 = 136315138;
                  v84 = (a1 + 176);
                  _os_log_impl(&dword_25E3EF000, v39, OS_LOG_TYPE_DEFAULT, "%s: leaving the steady state and trying to grow again", &v83, 0xCu);
                }

                *(a1 + 104) = 1;
                free(*(a1 + 152));
                *(a1 + 152) = nil;
                goto LABEL_85;
              }

              if (*(a1 + 152))
              {
                goto LABEL_87;
              }
            }

            v74 = *(a1 + 128);
            if (v74 > 0.0 && *a1 >= v74 - *&qword_27FCE46C0)
            {
              v76 = _steadyStateTimeout(a1);
            }

            else
            {
              v75 = *(a1 + 304);
              if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
              {
                v83 = 136315394;
                v84 = (a1 + 176);
                v85 = 2048;
                *v86 = v74;
                _os_log_impl(&dword_25E3EF000, v75, OS_LOG_TYPE_DEFAULT, "%s: using double the current interval for the steady state timer interval since we are significantly below the high watermark of %g seconds", &v83, 0x16u);
              }

              v76 = *a1 + *a1;
              *(a1 + 128) = 0;
            }

            v79 = _NSDate_alloc_initWithTimeIntervalSinceNow("_processSteadyStateAction", 634, v76);
            *(a1 + 152) = v79;
            v80 = *(a1 + 304);
            if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
            {
              v81 = *v79;
              v83 = 136315394;
              v84 = (a1 + 176);
              v85 = 2048;
              *v86 = v81;
              _os_log_impl(&dword_25E3EF000, v80, OS_LOG_TYPE_DEFAULT, "%s: set the steady state expiration date to %llu", &v83, 0x16u);
            }

            goto LABEL_87;
          }

          if (a2 != 1)
          {
            if (a2)
            {
              goto LABEL_87;
            }

            goto LABEL_53;
          }

          v73 = *(a1 + 152);
          if (v73)
          {
            free(v73);
            *(a1 + 152) = nil;
          }

          if (*(a1 + 64) == 1 && !*(a1 + 160))
          {
            v82 = *(a1 + 48);
            if (v82 <= 0.0)
            {
              v82 = *(a1 + 24);
            }

            *(a1 + 112) = v82;
            setMaximumKeepAliveInterval(a1, *(a1 + 16));
            *(a1 + 160) = _NSDate_alloc_initWithTimeIntervalSinceNow("_processSteadyStateAction", 650, *(a1 + 72));
            *(a1 + 104) = 4;
            goto LABEL_87;
          }

          *(a1 + 104) = 3;
LABEL_150:
          v53 = a1;
          v54 = 1;
          goto LABEL_86;
        }

        if (a2 != 2)
        {
          if (a2 == 1)
          {
            _fallbackToLastSuccessfulKeepAliveInterval(a1);
            *(a1 + 104) = 2;
            goto LABEL_152;
          }

          if (a2)
          {
            goto LABEL_87;
          }

          v66 = *a1;
          if (*(a1 + 316) != 1)
          {
            v77 = *(a1 + 144);
            if (v66 >= v77 && v77 > 2.22044605e-16)
            {
              v78 = *(a1 + 304);
              if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
              {
                v83 = 136315394;
                v84 = (a1 + 176);
                v85 = 2048;
                *v86 = v77;
                _os_log_impl(&dword_25E3EF000, v78, OS_LOG_TYPE_DEFAULT, "%s: surpassed where the previous initial growth stopped at %g; reverting to initial growth.", &v83, 0x16u);
              }

LABEL_118:
              *(a1 + 104) = 0;
              goto LABEL_152;
            }
          }

          if (v66 > *(a1 + 128))
          {
            *(a1 + 128) = v66;
          }

          v62 = (v37 + v66);
          v61 = a1;
          goto LABEL_126;
        }
      }

      else if (a2 != 2)
      {
        if (a2 == 1)
        {
          v71 = *a1;
          _fallbackToLastSuccessfulKeepAliveInterval(a1);
          v72 = *(a1 + 304);
          if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
          {
            v83 = 136315138;
            v84 = (a1 + 176);
            _os_log_impl(&dword_25E3EF000, v72, OS_LOG_TYPE_DEFAULT, "%s: leaving the initial growth stage for refined growth", &v83, 0xCu);
          }

          *(a1 + 104) = 1;
          if (*a1 >= v71)
          {
            goto LABEL_150;
          }

LABEL_152:
          v53 = a1;
          v54 = 0;
          goto LABEL_86;
        }

        if (a2)
        {
          goto LABEL_87;
        }

        v63 = *a1;
        if (v33 <= 0.0)
        {
          v33 = *(a1 + 24);
        }

        if (v63 >= v33)
        {
          *(a1 + 104) = 2;
        }

        v64 = (v63 + *&qword_27FCE4690);
        if (v63 > *(a1 + 128))
        {
          *(a1 + 128) = v63;
        }

        v65 = v64;
        if (*(a1 + 136) < v64)
        {
          *(a1 + 144) = v65;
        }

        if (*(a1 + 316) == 1 && serverStatsExpectedKeepAliveInterval(a1) < v65)
        {
          *(a1 + 104) = 1;
        }

        v61 = a1;
        v62 = v65;
LABEL_126:
        v67 = 1;
        goto LABEL_144;
      }

LABEL_131:
      if (*(a1 + 8) == 1)
      {
        _fallbackToLastSuccessfulKeepAliveInterval(a1);
      }

      goto LABEL_87;
    }

    switch(v19)
    {
      case 3:
        if (a2 != 2)
        {
          if (a2 != 1)
          {
            if (a2)
            {
              goto LABEL_87;
            }

            goto LABEL_118;
          }

          v62 = *a1 * *&qword_27FCE46B8;
          v61 = a1;
          v67 = 0;
LABEL_144:
          _setCurrentKeepAliveInterval(v61, v67, 1, v62);
          goto LABEL_87;
        }

        goto LABEL_131;
      case 5:
        if (a2 == 1)
        {
          v62 = (*a1 - *&qword_27FCE46A0);
          if (*(a1 + 32) >= v62)
          {
            *(a1 + 104) = 6;
          }

          v61 = a1;
          goto LABEL_138;
        }

        break;
      case 6:
        if (a2 == 1)
        {
          v56 = *(a1 + 304);
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            v57 = *a1;
            v83 = 136315650;
            v84 = (a1 + 176);
            v85 = 2048;
            *v86 = v57;
            *&v86[8] = 2048;
            *&v86[10] = qword_27FCE46A8;
            _os_log_impl(&dword_25E3EF000, v56, OS_LOG_TYPE_DEFAULT, "%s: Shrinking %g by %g", &v83, 0x20u);
          }

          v58 = *a1 - *&qword_27FCE46A8;
          v59 = *(a1 + 32);
          if (v59 >= v58)
          {
            v60 = *(a1 + 304);
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
            {
              v83 = 136315650;
              v84 = (a1 + 176);
              v85 = 2048;
              *v86 = v58;
              *&v86[8] = 2048;
              *&v86[10] = v59;
              _os_log_impl(&dword_25E3EF000, v60, OS_LOG_TYPE_DEFAULT, "%s:   - forcing RefinedShrink (%lld <= %g)", &v83, 0x20u);
            }

            *(a1 + 104) = 6;
          }

          v61 = a1;
          v62 = v58;
LABEL_138:
          v67 = 2;
          goto LABEL_144;
        }

        break;
      default:
        goto LABEL_87;
    }

    if (a2)
    {
      goto LABEL_87;
    }

    *(a1 + 104) = 2;
    if (*a1 > *(a1 + 128))
    {
      *(a1 + 128) = *a1;
    }

    goto LABEL_152;
  }

  v40 = *(a1 + 304);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    if (v33 <= 0.0)
    {
      v33 = *(a1 + 24);
    }

    if (v35 <= 0.0)
    {
      v35 = *(a1 + 16);
    }

    v83 = 136315906;
    v84 = (a1 + 176);
    v85 = 2048;
    *v86 = v33;
    *&v86[8] = 2048;
    *&v86[10] = v35;
    *&v86[18] = 2048;
    *&v86[20] = v37;
    _os_log_impl(&dword_25E3EF000, v40, OS_LOG_TYPE_DEFAULT, "%s: moved into Steady State - %g - %g <= %g", &v83, 0x2Au);
  }

  *(a1 + 104) = 2;
LABEL_88:
  v55 = *MEMORY[0x277D85DE8];
}

uint64_t _stringForStage(unsigned int a1)
{
  v1 = &off_279A1A360[a1];
  if (a1 >= 7)
  {
    v1 = &nil;
  }

  return *v1;
}

void _fallbackToLastSuccessfulKeepAliveInterval(double *a1)
{
  v1 = a1[7];
  if (v1 > 2.22044605e-16 && v1 < *a1)
  {
    _setCurrentKeepAliveInterval(a1, 0, 1, v1);
  }
}

void sub_25E3F4AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v7);
  _Block_object_dispose((v8 - 64), 8);
  _Unwind_Resume(a1);
}

void _powerChangedHandler(uint64_t a1, uint64_t a2, int a3, intptr_t a4)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  v6 = _GetPowerMonitoringQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___powerChangedHandler_block_invoke;
  block[3] = &unk_279A1A308;
  block[4] = &v16;
  dispatch_sync(v6, block);

  HIDWORD(v8) = a3 + 536870288;
  LODWORD(v8) = a3 + 536870288;
  v7 = v8 >> 4;
  if (v7 <= 1)
  {
    if (v7)
    {
      if (v7 != 1)
      {
        goto LABEL_24;
      }

      v10 = +[PCLog timer];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_25E3EF000, v10, OS_LOG_TYPE_DEFAULT, "System will sleep: kIOMessageSystemWillSleep", v14, 2u);
      }

      _CallTimersWithSelector(v17[5], sel__powerNotificationSleepIsImminent);
    }

    else
    {
      v13 = +[PCLog timer];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_25E3EF000, v13, OS_LOG_TYPE_DEFAULT, "System can sleep query received: kIOMessageCanSystemSleep", v14, 2u);
      }
    }

    IOAllowPowerChange(sPMConnection, a4);
    goto LABEL_24;
  }

  if (v7 == 2 || v7 == 9)
  {
    if (a3 == -536870256)
    {
      v11 = +[PCLog timer];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        v12 = "System will not sleep: kIOMessageSystemWillNotSleep";
LABEL_18:
        _os_log_impl(&dword_25E3EF000, v11, OS_LOG_TYPE_DEFAULT, v12, v14, 2u);
      }
    }

    else
    {
      v11 = +[PCLog timer];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        v12 = "System woke: kIOMessageSystemHasPoweredOn";
        goto LABEL_18;
      }
    }

    _CallTimersWithSelector(v17[5], sel__powerNotificationSleepIsNotImminent);
    goto LABEL_24;
  }

  if (v7 == 11)
  {
    v9 = +[PCLog timer];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_25E3EF000, v9, OS_LOG_TYPE_DEFAULT, "System is waking: kIOMessageSystemWillPowerOn", v14, 2u);
    }
  }

LABEL_24:
  _Block_object_dispose(&v16, 8);
}

void sub_25E3F53D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___powerChangedHandler_block_invoke(uint64_t a1)
{
  v2 = [sPowerMonitoringTimers copy];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

void _CallTimersWithSelector(void *a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = a1;
  v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        v9 = [v7 _getTimerRunLoop];
        v10 = [v7 _getTimerMode];
        v11 = v10;
        if (v9)
        {
          v12 = v10 == 0;
        }

        else
        {
          v12 = 1;
        }

        if (v12)
        {
          v16[0] = MEMORY[0x277D85DD0];
          v16[1] = 3221225472;
          v16[2] = ___CallTimersWithSelector_block_invoke;
          v16[3] = &unk_279A1A158;
          v16[4] = v7;
          v16[5] = a2;
          [v7 _performBlockOnQueue:v16];
        }

        else
        {
          v13 = [MEMORY[0x277CBEA60] arrayWithObject:v10];
          [v9 performSelector:a2 target:v7 argument:0 order:0 modes:v13];

          CFRunLoopWakeUp([v9 getCFRunLoop]);
        }

        objc_autoreleasePoolPop(v8);
      }

      v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_25E3F8BBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25E403028(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25E40321C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      __76__PCConnectionManager__saveWWANKeepAliveIntervalWithInfo_resetStateMachine___block_invoke_2_cold_1();
    }

    objc_end_catch();
    JUMPOUT(0x25E4031C0);
  }

  _Unwind_Resume(a1);
}

void PCSettingsSetClassPushEnabled(int a1, int a2)
{
  if (a1)
  {
    v6 = [[PCDistributedLock alloc] initWithName:@"com.apple.persistentconnection.settings.lock"];
    [(PCDistributedLock *)v6 lock];
    if (registerForPCPrefChanges_onceToken != -1)
    {
      PCSettingsGetClassPushEnabled_cold_1();
    }

    loadPCPrefsIfNeeded(0, a1 == 1);
    if (a1 == 1)
    {
      Copy = CFStringCreateCopy(0, @"com.apple.persistentconnection-mcc");
    }

    else
    {
      Copy = 0;
    }

    v5 = MEMORY[0x277CBED28];
    if (!a2)
    {
      v5 = MEMORY[0x277CBED10];
    }

    CFPreferencesSetValue(@"PCEnablePush", *v5, Copy, @"mobile", *MEMORY[0x277CBF010]);
    synchronizeAndNotify(Copy);
    CFRelease(Copy);
    [(PCDistributedLock *)v6 unlock];
  }
}

void synchronizeAndNotify(const __CFString *a1)
{
  if (a1 && CFStringGetLength(a1) >= 1)
  {
    CFPreferencesAppSynchronize(a1);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"PCPreferencesDidChangeNotificationInternal", 0, 0, 1u);
}

void PCSettingsSetClassPollInterval(int a1, int a2)
{
  valuePtr = a2;
  if (a1)
  {
    v3 = [[PCDistributedLock alloc] initWithName:@"com.apple.persistentconnection.settings.lock"];
    [(PCDistributedLock *)v3 lock];
    if (registerForPCPrefChanges_onceToken != -1)
    {
      PCSettingsGetClassPushEnabled_cold_1();
    }

    loadPCPrefsIfNeeded(0, a1 == 1);
    if (a1 == 1)
    {
      Copy = CFStringCreateCopy(0, @"com.apple.persistentconnection-mcc");
    }

    else
    {
      Copy = 0;
    }

    v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFPreferencesSetValue(@"PCDefaultPollInterval", v5, Copy, @"mobile", *MEMORY[0x277CBF010]);
    CFRelease(v5);
    synchronizeAndNotify(Copy);
    CFRelease(Copy);
    [(PCDistributedLock *)v3 unlock];
  }
}

uint64_t PCSettingsGetPollInterval(uint64_t a1, const __CFString *a2)
{
  v2 = a1;
  if (PCSettingsGetStyle(a1, a2) == 2)
  {
    return 0xFFFFFFFFLL;
  }

  return PCSettingsGetClassPollInterval(v2);
}

uint64_t PCSettingsGetStyle(uint64_t result, const __CFString *a2)
{
  if (result)
  {
    v2 = result;
    if (a2)
    {
      result = _PCSettingsGetStyle(result, a2);
      if (result == 1)
      {
LABEL_7:
        if (PCSettingsGetClassPollInterval(v2) >= 0)
        {
          return 1;
        }

        else
        {
          return 2;
        }
      }

      if (result)
      {
        return result;
      }
    }

    if (PCSettingsGetClassPushEnabled(v2))
    {
      return 0;
    }

    goto LABEL_7;
  }

  return result;
}

const __CFNumber *_PCSettingsGetStyle(int a1, const __CFString *a2)
{
  if (!a2)
  {
    _PCSettingsGetStyle_cold_1();
  }

  if (registerForPCPrefChanges_onceToken != -1)
  {
    PCSettingsGetClassPushEnabled_cold_1();
  }

  loadPCPrefsIfNeeded(a1 == 0, a1 == 1);
  v4 = copyServiceIdentifierDictionary(a1, a2);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  Value = CFDictionaryGetValue(v4, @"PCStyle");
  v7 = Value;
  if (Value)
  {
    v8 = CFGetTypeID(Value);
    if (v8 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      CFNumberGetValue(v7, kCFNumberLongType, &valuePtr);
      v7 = valuePtr;
    }

    else
    {
      v7 = 0;
    }
  }

  CFRelease(v5);
  return v7;
}

CFPropertyListRef copyServiceIdentifierDictionary(int a1, const __CFString *a2)
{
  if (registerForPCPrefChanges_onceToken != -1)
  {
    PCSettingsGetClassPushEnabled_cold_1();
  }

  loadPCPrefsIfNeeded(a1 == 0, a1 == 1);
  MutableCopy = CFStringCreateMutableCopy(0, 0, @"PCServiceIdentifier-");
  CFStringAppend(MutableCopy, a2);
  if (!a1)
  {
    v6 = @"com.apple.persistentconnection-nosettings";
    goto LABEL_7;
  }

  Copy = 0;
  if (a1 == 1)
  {
    v6 = @"com.apple.persistentconnection-mcc";
LABEL_7:
    Copy = CFStringCreateCopy(0, v6);
  }

  v7 = *MEMORY[0x277CBF010];
  v8 = CFPreferencesCopyValue(MutableCopy, Copy, @"mobile", *MEMORY[0x277CBF010]);
  v9 = v8;
  if (a1 == 1 && !v8)
  {
    v10 = CFStringCreateCopy(0, @"com.apple.persistentconnection");
    v9 = CFPreferencesCopyValue(MutableCopy, v10, @"mobile", v7);
    CFRelease(v10);
  }

  CFRelease(MutableCopy);
  if (v9)
  {
    v11 = CFGetTypeID(v9);
    if (v11 != CFDictionaryGetTypeID())
    {
      CFRelease(v9);
      v9 = 0;
    }
  }

  CFRelease(Copy);
  return v9;
}

void PCSettingsSetStyle(int a1, const __CFString *a2, int a3)
{
  valuePtr = a3;
  if (a1)
  {
    v5 = [[PCDistributedLock alloc] initWithName:@"com.apple.persistentconnection.settings.lock"];
    [(PCDistributedLock *)v5 lock];
    if (registerForPCPrefChanges_onceToken != -1)
    {
      PCSettingsGetClassPushEnabled_cold_1();
    }

    loadPCPrefsIfNeeded(0, a1 == 1);
    v6 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    setServiceIdentifierKeyAndValue(a1, a2, @"PCStyle", v6);
    CFRelease(v6);
    [(PCDistributedLock *)v5 unlock];
  }
}

void setServiceIdentifierKeyAndValue(int a1, const __CFString *a2, const void *a3, const void *a4)
{
  if (registerForPCPrefChanges_onceToken != -1)
  {
    PCSettingsGetClassPushEnabled_cold_1();
  }

  loadPCPrefsIfNeeded(0, a1 == 1);
  v8 = copyServiceIdentifierDictionary(a1, a2);
  if (v8)
  {
    v9 = v8;
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v8);
    CFRelease(v9);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  CFDictionarySetValue(MutableCopy, a3, a4);
  if (registerForPCPrefChanges_onceToken != -1)
  {
    PCSettingsGetClassPushEnabled_cold_1();
  }

  loadPCPrefsIfNeeded(0, a1 == 1);
  if (!a1)
  {
    v11 = @"com.apple.persistentconnection-nosettings";
    goto LABEL_12;
  }

  if (a1 == 1)
  {
    v11 = @"com.apple.persistentconnection-mcc";
LABEL_12:
    Copy = CFStringCreateCopy(0, v11);
    goto LABEL_14;
  }

  Copy = 0;
LABEL_14:
  v13 = CFStringCreateMutableCopy(0, 0, @"PCServiceIdentifier-");
  CFStringAppend(v13, a2);
  v14 = *MEMORY[0x277CBF010];
  v15 = CFPreferencesCopyValue(v13, Copy, @"mobile", *MEMORY[0x277CBF010]);
  if (v15)
  {
    v16 = v15;
    if (!CFEqual(v15, MutableCopy))
    {
      CFPreferencesSetValue(v13, MutableCopy, Copy, @"mobile", v14);
      synchronizeAndNotify(Copy);
    }

    CFRelease(v16);
  }

  else
  {
    CFPreferencesSetValue(v13, MutableCopy, Copy, @"mobile", v14);
    synchronizeAndNotify(Copy);
  }

  CFRelease(Copy);
  CFRelease(v13);

  CFRelease(MutableCopy);
}

void PCSettingsSetDefaultStyle(int a1, const __CFString *a2, int a3)
{
  valuePtr = a3;
  if (a1)
  {
    v5 = [[PCDistributedLock alloc] initWithName:@"com.apple.persistentconnection.settings.lock"];
    [(PCDistributedLock *)v5 lock];
    if (registerForPCPrefChanges_onceToken != -1)
    {
      PCSettingsGetClassPushEnabled_cold_1();
    }

    loadPCPrefsIfNeeded(0, a1 == 1);
    v6 = copyServiceIdentifierDictionary(a1, a2);
    if (v6)
    {
      v7 = v6;
      if (!CFDictionaryContainsKey(v6, @"PCStyle"))
      {
        v8 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        setServiceIdentifierKeyAndValue(a1, a2, @"PCStyle", v8);
        CFRelease(v8);
      }
    }

    else
    {
      v7 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      setServiceIdentifierKeyAndValue(a1, a2, @"PCStyle", v7);
    }

    CFRelease(v7);
    [(PCDistributedLock *)v5 unlock];
  }
}

void PCSettingsPurgeDictionariesExceptForCurrent(int a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v19 = [[PCDistributedLock alloc] initWithName:@"com.apple.persistentconnection.settings.lock"];
    [(PCDistributedLock *)v19 lock];
    if (a1 == 1)
    {
      Copy = CFStringCreateCopy(0, @"com.apple.persistentconnection-mcc");
    }

    else
    {
      Copy = 0;
    }

    if (registerForPCPrefChanges_onceToken != -1)
    {
      PCSettingsGetClassPushEnabled_cold_1();
    }

    loadPCPrefsIfNeeded(0, a1 == 1);
    applicationID = Copy;
    hostName = *MEMORY[0x277CBF010];
    v5 = CFPreferencesCopyKeyList(Copy, @"mobile", *MEMORY[0x277CBF010]);
    theArray = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    Length = CFStringGetLength(@"PCServiceIdentifier-");
    context = objc_autoreleasePoolPush();
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = v5;
    v8 = [(__CFArray *)v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          if ([v12 hasPrefix:@"PCServiceIdentifier-"])
          {
            v13 = [v12 substringFromIndex:Length];
            v14 = [a2 containsObject:v13];

            if ((v14 & 1) == 0)
            {
              CFArrayAppendValue(theArray, v12);
            }
          }
        }

        v9 = [(__CFArray *)v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }

    objc_autoreleasePoolPop(context);
    if (CFArrayGetCount(theArray) >= 1)
    {
      CFPreferencesSetMultiple(0, theArray, applicationID, @"mobile", hostName);
      CFPreferencesAppSynchronize(applicationID);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    CFRelease(theArray);
    CFRelease(applicationID);
    [(PCDistributedLock *)v19 unlock];
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t PCSettingsGetGlobalMCCForceManualWhenRoaming()
{
  if (registerForPCPrefChanges_onceToken != -1)
  {
    PCSettingsGetClassPushEnabled_cold_1();
  }

  loadPCPrefsIfNeeded(0, 1);
  Copy = CFStringCreateCopy(0, @"com.apple.persistentconnection-mcc");
  v1 = CFPreferencesCopyValue(@"PCForceManualWhenRoaming", Copy, @"mobile", *MEMORY[0x277CBF010]);
  if (v1)
  {
    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 == CFBooleanGetTypeID())
    {
      Value = CFBooleanGetValue(v2);
    }

    else
    {
      Value = 0;
    }

    CFRelease(v2);
  }

  else
  {
    Value = 0;
  }

  CFRelease(Copy);
  return Value;
}

void PCSettingsSetGlobalMCCForceManualWhenRoaming(int a1)
{
  v4 = [[PCDistributedLock alloc] initWithName:@"com.apple.persistentconnection.settings.lock"];
  [(PCDistributedLock *)v4 lock];
  if (registerForPCPrefChanges_onceToken != -1)
  {
    PCSettingsGetClassPushEnabled_cold_1();
  }

  loadPCPrefsIfNeeded(0, 1);
  Copy = CFStringCreateCopy(0, @"com.apple.persistentconnection-mcc");
  v3 = MEMORY[0x277CBED28];
  if (!a1)
  {
    v3 = MEMORY[0x277CBED10];
  }

  CFPreferencesSetValue(@"PCForceManualWhenRoaming", *v3, Copy, @"mobile", *MEMORY[0x277CBF010]);
  synchronizeAndNotify(Copy);
  CFRelease(Copy);
  [(PCDistributedLock *)v4 unlock];
}

const __CFBoolean *PCSettingsGetForceManualWhenRoamingForMCCAccount(const __CFString *a1)
{
  if (registerForPCPrefChanges_onceToken != -1)
  {
    PCSettingsGetClassPushEnabled_cold_1();
  }

  loadPCPrefsIfNeeded(0, 1);
  v2 = copyServiceIdentifierDictionary(1, a1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  Value = CFDictionaryGetValue(v2, @"PCForceManualWhenRoaming");
  v5 = Value;
  if (Value)
  {
    v6 = CFGetTypeID(Value);
    if (v6 == CFBooleanGetTypeID())
    {
      v5 = (CFBooleanGetValue(v5) != 0);
    }

    else
    {
      v5 = 0;
    }
  }

  CFRelease(v3);
  return v5;
}

void PCSettingsSetForceManualWhenRoamingForMCCAccount(const __CFString *a1, int a2)
{
  v5 = [[PCDistributedLock alloc] initWithName:@"com.apple.persistentconnection.settings.lock"];
  [(PCDistributedLock *)v5 lock];
  if (registerForPCPrefChanges_onceToken != -1)
  {
    PCSettingsGetClassPushEnabled_cold_1();
  }

  loadPCPrefsIfNeeded(0, 1);
  v4 = MEMORY[0x277CBED28];
  if (!a2)
  {
    v4 = MEMORY[0x277CBED10];
  }

  setServiceIdentifierKeyAndValue(1, a1, @"PCForceManualWhenRoaming", *v4);
  [(PCDistributedLock *)v5 unlock];
}

void _PCPrefsChangedNotification()
{
  v0 = PCPrefsQueue();
  dispatch_sync(v0, &__block_literal_global_50);

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"PCPreferencesDidChangeNotification", 0, 0, 1u);
}

void __setPCPrefsNeedLoad_block_invoke()
{
  PCPrefsNeedLoading = 1;
  PCPrefsNeedLoadingConnectionClassNoSettings = 1;
  PCPrefsNeedLoadingConnectionClassMailContactsCalendars = 1;
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x12u);
}

uint64_t __PCStringFromDate_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = PCStringFromDate_formatter;
  PCStringFromDate_formatter = v0;

  v2 = PCStringFromDate_formatter;

  return [v2 setDateFormat:@"yyyy-MM-dd HH:mm:ss Z"];
}

id PCSharedSerialQueue()
{
  if (PCSharedSerialQueue_onceToken != -1)
  {
    PCSharedSerialQueue_cold_1();
  }

  v1 = PCSharedSerialQueue_sQueue;

  return v1;
}

uint64_t __PCSharedSerialQueue_block_invoke()
{
  PCSharedSerialQueue_sQueue = dispatch_queue_create("PCSharedSerialQueue", 0);

  return MEMORY[0x2821F96F8]();
}

NSObject *PCCreateQueue(const char *a1)
{
  v1 = dispatch_queue_create(a1, 0);
  v2 = PCSharedSerialQueue();
  dispatch_set_target_queue(v1, v2);

  return v1;
}

void *PCWeakLinkSymbol(void *a1, void *a2)
{
  v3 = a2;
  v4 = _PCDLHandleForLibrary_onceToken;
  v5 = a1;
  if (v4 != -1)
  {
    PCWeakLinkSymbol_cold_1();
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v6 = _PCDLHandleForLibrary_queue;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = ___PCDLHandleForLibrary_block_invoke_2;
  v16 = &unk_279A1A068;
  v17 = v3;
  v18 = &v19;
  v7 = v3;
  dispatch_sync(v6, &v13);
  v8 = v20[3];

  _Block_object_dispose(&v19, 8);
  v9 = v5;
  v10 = [v9 UTF8String];

  v11 = dlsym(v8, v10);
  return v11;
}

void sub_25E4068AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _dynamicStoreCallback(uint64_t a1, void *a2, void *a3)
{
  v5 = objc_autoreleasePoolPush();
  v6 = a2;
  v7 = [a3 object];
  [v7 _dynamicStoreCallbackForKeys:v6];

  objc_autoreleasePoolPop(v5);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __ServerConnectionCallback(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  v7 = objc_autoreleasePoolPush();
  v8 = [a4 object];
  if (CFEqual(a2, *MEMORY[0x277CC37E8]))
  {
    [v8 _processCallStatusChanged:a3];
  }

  objc_autoreleasePoolPop(v7);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25E40BBE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void __PCScheduledWakeRTCPrecision_block_invoke()
{
  v11 = *MEMORY[0x277D85DE8];
  keyExistsAndHasValidFormat = 0;
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"/var/mobile/Library/Preferences/%@", @"com.apple.persistentconnection"];
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"PCScheduledWakeRTCPrecisionOverride", v0, &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v2 = AppIntegerValue < 1;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    v3 = AppIntegerValue;
    v4 = +[PCLog timer];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v8 = @"PCScheduledWakeRTCPrecisionOverride";
      v9 = 2048;
      v10 = v3;
      _os_log_impl(&dword_25E3EF000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ set. Setting PCScheduledWakeRTCPrecision to %g seconds.", buf, 0x16u);
    }

    PCScheduledWakeRTCPrecision_scheduledWakeRTCPrecision = *&v3;
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __PCShouldUseSystemActivityAssertion_block_invoke()
{
  v11 = *MEMORY[0x277D85DE8];
  keyExistsAndHasValidFormat = 0;
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"/var/mobile/Library/Preferences/%@", @"com.apple.persistentconnection"];
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"PCShouldUseSystemActivityAssertion", v0, &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v2 = AppBooleanValue;
    v3 = +[PCLog timer];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = @"YES";
      if (!v2)
      {
        v4 = @"NO";
      }

      *buf = 138543618;
      v8 = @"PCShouldUseSystemActivityAssertion";
      v9 = 2114;
      v10 = v4;
      _os_log_impl(&dword_25E3EF000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ set. Setting PCShouldUseSystemActivityAssertion to %{public}@.", buf, 0x16u);
    }

    PCShouldUseSystemActivityAssertion_shouldUse = v2 != 0;
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void initWith(uint64_t a1, char *__s, NSObject *a3, int a4, double a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v10 = strlen(__s);
  if (v10 >= 0x7F)
  {
    v11 = 127;
  }

  else
  {
    v11 = v10;
  }

  *(a1 + 168) = v11;
  memcpy((a1 + 176), __s, v11);
  *(a1 + 304) = a3;
  *(a1 + 16) = PCMSGA_globals;
  *(a1 + 108) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 72) = qword_27FCE4688;
  v12 = nil;
  *(a1 + 152) = nil;
  *(a1 + 160) = v12;
  if (os_log_type_enabled(a3, OS_LOG_TYPE_DEFAULT))
  {
    v13 = "NO";
    v16 = 136315650;
    v17 = a1 + 176;
    if (a4)
    {
      v13 = "YES";
    }

    v18 = 2048;
    v19 = a5;
    v20 = 2080;
    v21 = v13;
    _os_log_impl(&dword_25E3EF000, a3, OS_LOG_TYPE_DEFAULT, "%s: Initialized with keepAliveInterval %g inInitialGrowth %s", &v16, 0x20u);
  }

  if (a4)
  {
    v14 = 0;
  }

  else
  {
    v14 = 2 * (a5 > 2.22044605e-16);
  }

  _resetAlgorithmToInterval(a1, v14, a5);
  v15 = *MEMORY[0x277D85DE8];
}

BOOL useIntervalIfImprovement(double *a1, double a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 38);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 15);
    v6 = *a1;
    v12 = 136315906;
    v13 = a1 + 22;
    v14 = 2048;
    v15 = a2;
    v16 = 2048;
    v17 = v5;
    v18 = 2048;
    v19 = v6;
    _os_log_impl(&dword_25E3EF000, v4, OS_LOG_TYPE_DEFAULT, "%s: useIntervalIfImprovement %g   lastKeepAliveInterval: %g  currentKeepAliveInterval: %g", &v12, 0x2Au);
  }

  v7 = a1[15];
  if (v7 >= *a1 || v7 <= 2.22044605e-16)
  {
    v9 = *a1;
  }

  else
  {
    v9 = a1[15];
  }

  if (v9 < a2)
  {
    _setCurrentKeepAliveInterval(a1, 0, 0, a2);
  }

  result = v9 < a2;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void _resetAlgorithmToInterval(uint64_t a1, unsigned int a2, double a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 304);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315650;
    v11 = a1 + 176;
    v12 = 2048;
    v13 = a3;
    v14 = 2080;
    v15 = _stringForStage(a2);
    _os_log_impl(&dword_25E3EF000, v6, OS_LOG_TYPE_DEFAULT, "%s: resetAlgorithmToInterval: %g state: %s", &v10, 0x20u);
  }

  *(a1 + 104) = a2;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0;
  v7 = *(a1 + 152);
  if (v7)
  {
    free(v7);
    *(a1 + 152) = nil;
  }

  v8 = *(a1 + 160);
  if (v8)
  {
    free(v8);
    *(a1 + 160) = nil;
  }

  _setCurrentKeepAliveInterval(a1, 0, 1, a3);
  v9 = *MEMORY[0x277D85DE8];
}

uint64_t isServerOriginatedKeepAlive(uint64_t a1)
{
  if (os_log_type_enabled(*(a1 + 304), OS_LOG_TYPE_DEBUG))
  {
    isServerOriginatedKeepAlive_cold_1(a1);
  }

  return *(a1 + 8);
}

double minimumKeepAliveInterval(uint64_t a1)
{
  result = *(a1 + 40);
  if (result <= 0.0)
  {
    return *(a1 + 16);
  }

  return result;
}

void setMinimumKeepAliveInterval(double *a1, double a2)
{
  a1[2] = a2;
  v3 = a1[6];
  if (v3 <= 0.0)
  {
    v3 = a1[3];
  }

  if (v3 < a2)
  {
    setMaximumKeepAliveInterval(a1, a2);
  }

  v4 = currentKeepAliveInterval(a1);

  _setCurrentKeepAliveInterval(a1, 0, 1, v4);
}

double maximumKeepAliveInterval(uint64_t a1)
{
  result = *(a1 + 48);
  if (result <= 0.0)
  {
    return *(a1 + 24);
  }

  return result;
}

void setMaximumKeepAliveInterval(double *a1, double a2)
{
  if (a2 <= 0.0)
  {
    setMaximumKeepAliveInterval_cold_1();
  }

  a1[3] = a2;
  v3 = a1[5];
  if (v3 <= 0.0)
  {
    v3 = a1[2];
  }

  if (v3 > a2)
  {
    setMinimumKeepAliveInterval(a1);
  }

  v4 = currentKeepAliveInterval(a1);

  _setCurrentKeepAliveInterval(a1, 0, 1, v4);
}

double serverStatsExpectedKeepAliveInterval(uint64_t a1)
{
  if (os_log_type_enabled(*(a1 + 304), OS_LOG_TYPE_DEBUG))
  {
    serverStatsExpectedKeepAliveInterval_cold_1(a1);
  }

  return *(a1 + 32);
}

void setServerStatsExpectedKeepAliveInterval(uint64_t a1, double a2)
{
  if (os_log_type_enabled(*(a1 + 304), OS_LOG_TYPE_DEBUG))
  {
    setServerStatsExpectedKeepAliveInterval_cold_1(a1);
  }

  *(a1 + 32) = a2;
}

double serverStatsMinKeepAliveInterval(uint64_t a1)
{
  if (os_log_type_enabled(*(a1 + 304), OS_LOG_TYPE_DEBUG))
  {
    serverStatsMinKeepAliveInterval_cold_1(a1);
  }

  return *(a1 + 40);
}

void setServerStatsMinKeepAliveInterval(uint64_t a1, double a2)
{
  if (os_log_type_enabled(*(a1 + 304), OS_LOG_TYPE_DEBUG))
  {
    setServerStatsMinKeepAliveInterval_cold_1(a1);
  }

  *(a1 + 40) = a2;
}

double serverStatsMaxKeepAliveInterval(uint64_t a1)
{
  if (os_log_type_enabled(*(a1 + 304), OS_LOG_TYPE_DEBUG))
  {
    serverStatsMaxKeepAliveInterval_cold_1(a1);
  }

  return *(a1 + 48);
}

void setServerStatsMaxKeepAliveInterval(uint64_t a1, double a2)
{
  if (os_log_type_enabled(*(a1 + 304), OS_LOG_TYPE_DEBUG))
  {
    setServerStatsMaxKeepAliveInterval_cold_1(a1);
  }

  *(a1 + 48) = a2;
}

double lastSuccessfulKeepAliveInterval(uint64_t a1)
{
  if (os_log_type_enabled(*(a1 + 304), OS_LOG_TYPE_DEBUG))
  {
    lastSuccessfulKeepAliveInterval_cold_1(a1);
  }

  return *(a1 + 56);
}

void setLastSuccessfulKeepAliveInterval(uint64_t a1, double a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(a1 + 56) != a2)
  {
    v4 = *(a1 + 304);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = a1 + 176;
      v8 = 2048;
      v9 = a2;
      _os_log_impl(&dword_25E3EF000, v4, OS_LOG_TYPE_DEFAULT, "%s: setting lastSuccessfulKeepAliveInterval to %g seconds", &v6, 0x16u);
    }

    *(a1 + 56) = a2;
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t minimumIntervalFallbackEnabled(uint64_t a1)
{
  if (os_log_type_enabled(*(a1 + 304), OS_LOG_TYPE_DEBUG))
  {
    minimumIntervalFallbackEnabled_cold_1(a1);
  }

  return *(a1 + 64);
}

void setMinimumIntervalFallbackEnabled(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == a2)
  {
    goto LABEL_10;
  }

  *(a1 + 64) = a2;
  v4 = *(a1 + 304);
  if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (a2)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v5 = "NO";
  if (a2)
  {
    v5 = "YES";
  }

  v8 = 136315394;
  v9 = a1 + 176;
  v10 = 2080;
  v11 = v5;
  _os_log_impl(&dword_25E3EF000, v4, OS_LOG_TYPE_DEFAULT, "%s: minimumIntervalFallbackEnabled changed to %s", &v8, 0x16u);
  if ((*(a1 + 64) & 1) == 0)
  {
LABEL_8:
    v6 = *(a1 + 160);
    if (v6)
    {
      free(v6);
      *(a1 + 160) = nil;
    }
  }

LABEL_10:
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t usingServerStatsAggressively(uint64_t a1)
{
  if (os_log_type_enabled(*(a1 + 304), OS_LOG_TYPE_DEBUG))
  {
    usingServerStatsAggressively_cold_1(a1);
  }

  return *(a1 + 65);
}

void setUsingServerStatsAggressively(uint64_t a1, char a2)
{
  if (os_log_type_enabled(*(a1 + 304), OS_LOG_TYPE_DEBUG))
  {
    setUsingServerStatsAggressively_cold_1(a1);
  }

  *(a1 + 65) = a2;
}

double minimumIntervalFallbackStateTimeout(uint64_t a1)
{
  if (os_log_type_enabled(*(a1 + 304), OS_LOG_TYPE_DEBUG))
  {
    minimumIntervalFallbackStateTimeout_cold_1(a1);
  }

  return *(a1 + 72);
}

void setMinimumIntervalFallbackStateTimeout(uint64_t a1, double a2)
{
  if (os_log_type_enabled(*(a1 + 304), OS_LOG_TYPE_DEBUG))
  {
    setMinimumIntervalFallbackStateTimeout_cold_1(a1);
  }

  *(a1 + 72) = a2;
}

double signalAvoidanceRange(double *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = a1[11];
  v3 = *(a1 + 12);
  v4 = *(a1 + 38);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136316930;
    v8 = "s/pc-msgrowth.c";
    v9 = 1024;
    v10 = 195;
    v11 = 2080;
    v12 = "signalAvoidanceRange";
    v13 = 2048;
    v14 = a1;
    v15 = 2080;
    v16 = a1 + 22;
    v17 = 2080;
    v18 = "signalAvoidanceRange";
    v19 = 2048;
    v20 = v2;
    v21 = 2048;
    v22 = v3;
    _os_log_debug_impl(&dword_25E3EF000, v4, OS_LOG_TYPE_DEBUG, "[%15s:%-4d| %-30s] PCMSGA(%p) %s: %s() {%g,%g}", &v7, 0x4Eu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

void setSignalAvoidanceRange(double *a1, double a2, double a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 38);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 11);
    v9 = *(a1 + 12);
    v10 = 136317442;
    v11 = "s/pc-msgrowth.c";
    v12 = 1024;
    v13 = 201;
    v14 = 2080;
    v15 = "setSignalAvoidanceRange";
    v16 = 2048;
    v17 = a1;
    v18 = 2080;
    v19 = a1 + 22;
    v20 = 2080;
    v21 = "setSignalAvoidanceRange";
    v22 = 2048;
    v23 = a2;
    v24 = 2048;
    v25 = a3;
    v26 = 2048;
    v27 = v8;
    v28 = 2048;
    v29 = v9;
    _os_log_debug_impl(&dword_25E3EF000, v6, OS_LOG_TYPE_DEBUG, "[%15s:%-4d| %-30s] PCMSGA(%p) %s: %s({%g,%g}) [{%g,%g}]", &v10, 0x62u);
  }

  a1[11] = a2;
  a1[12] = a3;
  v7 = *MEMORY[0x277D85DE8];
}

void _setCurrentKeepAliveInterval(uint64_t a1, int a2, int a3, double a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 304);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v34 = 136315906;
    v35 = a1 + 176;
    v36 = 2048;
    if (a3)
    {
      v9 = "YES";
    }

    else
    {
      v9 = "NO";
    }

    v37 = a4;
    v38 = 1024;
    *v39 = a2;
    *&v39[4] = 2080;
    *&v39[6] = v9;
    _os_log_impl(&dword_25E3EF000, v8, OS_LOG_TYPE_DEFAULT, "%s: setCurrentKeepAlive with interval %g varianceMode %u allowRoundup %s", &v34, 0x26u);
  }

  if (a4 <= 0.0)
  {
    a4 = *&qword_27FCE4680;
    v10 = *(a1 + 304);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 136315394;
      v35 = a1 + 176;
      v36 = 2048;
      v37 = a4;
      _os_log_impl(&dword_25E3EF000, v10, OS_LOG_TYPE_DEFAULT, "%s: override interval %g", &v34, 0x16u);
    }
  }

  v11 = *(a1 + 40);
  if (v11 <= 0.0)
  {
    v11 = *(a1 + 16);
  }

  if (a4 < v11)
  {
    v12 = *(a1 + 304);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 136315394;
      v35 = a1 + 176;
      v36 = 2048;
      v37 = v11;
      v13 = "%s: override min interval %g";
LABEL_19:
      _os_log_impl(&dword_25E3EF000, v12, OS_LOG_TYPE_DEFAULT, v13, &v34, 0x16u);
      goto LABEL_20;
    }

    goto LABEL_20;
  }

  v11 = *(a1 + 48);
  if (v11 <= 0.0)
  {
    v11 = *(a1 + 24);
  }

  if (a4 > v11)
  {
    v12 = *(a1 + 304);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 136315394;
      v35 = a1 + 176;
      v36 = 2048;
      v37 = v11;
      v13 = "%s: override max interval %g";
      goto LABEL_19;
    }

LABEL_20:
    a2 = 0;
    a4 = v11;
  }

  v15 = *(a1 + 88);
  v14 = *(a1 + 96);
  if (v14 == 0.0 || v15 == 0.0)
  {
    v16 = *(a1 + 304);
  }

  else
  {
    v16 = *(a1 + 304);
    if (v15 < a4)
    {
      v17 = v15 + v14;
      if (v15 + v14 > a4)
      {
        v18 = *a1;
        if (os_log_type_enabled(*(a1 + 304), OS_LOG_TYPE_DEFAULT))
        {
          v34 = 136315650;
          v35 = a1 + 176;
          if (a4 <= v18)
          {
            *&v19 = COERCE_DOUBLE("NO");
          }

          else
          {
            *&v19 = COERCE_DOUBLE("YES");
          }

          v36 = 2080;
          v37 = *&v19;
          v38 = 2048;
          *v39 = v15 + v14;
          _os_log_impl(&dword_25E3EF000, v16, OS_LOG_TYPE_DEFAULT, "%s: signalAvoidanceRange contained, increasing %s, end %g", &v34, 0x20u);
        }

        v20 = *(a1 + 104);
        v21 = 0.5;
        if (v20 <= 6)
        {
          v21 = dbl_25E4163B8[v20];
        }

        v23 = *(a1 + 88);
        v22 = *(a1 + 96);
        v24 = v23;
        if (a3)
        {
          v25 = (a4 - v23) / v22;
          if (a4 <= v18)
          {
            v26 = v25 <= v21;
            v27 = *(a1 + 88);
            if (!v26)
            {
              v27 = *a1;
              if (v17 < *a1)
              {
                v27 = v17;
              }

              if (v17 == *a1)
              {
                v27 = *(a1 + 88);
              }
            }
          }

          else
          {
            v26 = v25 <= v21;
            v27 = v17;
            if (v26)
            {
              v27 = *a1;
              if (v23 > *a1)
              {
                v27 = *(a1 + 88);
              }

              if (v23 == *a1)
              {
                v27 = v17;
              }
            }
          }

          v24 = *(a1 + 88);
          if (v27 <= *(a1 + 24))
          {
            v24 = v27;
            if (v27 < *(a1 + 16))
            {
              v24 = v17;
            }
          }
        }

        v33 = *(a1 + 304);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = 136316418;
          v35 = a1 + 176;
          v36 = 2048;
          v37 = a4;
          v38 = 2048;
          *v39 = v24;
          *&v39[8] = 2048;
          *&v39[10] = v23;
          v40 = 2048;
          v41 = v22;
          v42 = 2048;
          v43 = v21;
          _os_log_impl(&dword_25E3EF000, v33, OS_LOG_TYPE_DEFAULT, "%s: triggered signaling avoidance {interval: %g, adjustedInterval: %g, _signalAvoidanceRange.start: %g, _signalAvoidanceRange.duration: %g, roundUpRatio: %g}", &v34, 0x3Eu);
        }

        goto LABEL_44;
      }
    }
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v34 = 136315906;
    v35 = a1 + 176;
    v36 = 2048;
    v37 = a4;
    v38 = 2048;
    *v39 = v15;
    *&v39[8] = 2048;
    *&v39[10] = v14;
    _os_log_impl(&dword_25E3EF000, v16, OS_LOG_TYPE_DEFAULT, "%s: no signal avoidance {interval: %g, _signalAvoidanceRange.start: %g, _signalAvoidanceRange.duration: %g}", &v34, 0x2Au);
  }

  v24 = a4;
LABEL_44:
  if (a2 == 2)
  {
    v29 = arc4random();
    v24 = v24 - -(*&qword_27FCE46B0 - (v29 / 4294967300.0 + v29 / 4294967300.0) * *&qword_27FCE46B0);
  }

  else if (a2 == 1)
  {
    v28 = arc4random();
    v24 = v24 - (*&qword_27FCE46B0 - (v28 / 4294967300.0 + v28 / 4294967300.0) * *&qword_27FCE46B0);
  }

  v30 = *a1;
  if (*a1 != v24)
  {
    v31 = *(a1 + 304);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 136315394;
      v35 = a1 + 176;
      v36 = 2048;
      v37 = v24;
      _os_log_impl(&dword_25E3EF000, v31, OS_LOG_TYPE_DEFAULT, "%s: setting current interval to %g seconds", &v34, 0x16u);
      v30 = *a1;
    }

    *(a1 + 120) = v30;
    *a1 = v24;
  }

  v32 = *MEMORY[0x277D85DE8];
}

double _NSDate_timeIntervalSinceNow(uint64_t a1, int a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = time(0);
  v7 = *a3;
  v8 = *a3 - v6;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v11 = 136316674;
    v12 = a1;
    v13 = 1024;
    v14 = a2;
    v15 = 2080;
    v16 = "_NSDate_timeIntervalSinceNow";
    v17 = 2048;
    v18 = a3;
    v19 = 2048;
    v20 = v7;
    v21 = 2048;
    v22 = v6;
    v23 = 2048;
    v24 = v8;
    _os_log_debug_impl(&dword_25E3EF000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s():%d | %s(%p) %llu - %llu = %llu", &v11, 0x44u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

double _steadyStateTimeout(double *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = fmax(*a1 * 24.0, 3600.0);
  v4 = *(a1 + 38);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315650;
    v8 = a1 + 22;
    v9 = 2048;
    v10 = v3;
    v11 = 2048;
    v12 = v2;
    _os_log_impl(&dword_25E3EF000, v4, OS_LOG_TYPE_DEFAULT, "%s: using a steady state timeout of %g for current interval %g", &v7, 0x20u);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

void *_NSDate_alloc_initWithTimeIntervalSinceNow(uint64_t a1, int a2, double a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v9 = 136316162;
    v10 = a1;
    v11 = 1024;
    v12 = a2;
    v13 = 2080;
    v14 = "_NSDate_alloc_initWithTimeIntervalSinceNow";
    v15 = 2048;
    v16 = a3;
    v17 = 2048;
    v18 = v6;
    _os_log_debug_impl(&dword_25E3EF000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s():%d | %s(%g) malloc %p", &v9, 0x30u);
    if (!v6)
    {
      goto LABEL_5;
    }
  }

  else if (!v6)
  {
    goto LABEL_5;
  }

  *v6 = (time(0) + a3);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    _NSDate_alloc_initWithTimeIntervalSinceNow_cold_1();
  }

LABEL_5:
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

void OUTLINED_FUNCTION_10(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x46u);
}

void currentKeepAliveInterval_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x44u);
  v7 = *MEMORY[0x277D85DE8];
}

void isServerOriginatedKeepAlive_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 8);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x40u);
  v7 = *MEMORY[0x277D85DE8];
}

void setIsServerOriginatedKeepAlive_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 8);
  LODWORD(v5) = 136316930;
  *(&v5 + 4) = "s/pc-msgrowth.c";
  LODWORD(v6) = 136314880;
  *(&v6 + 4) = "setIsServerOriginatedKeepAlive";
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_10(&dword_25E3EF000, v2, v3, "[%15s:%-4d| %-30s] PCMSGA(%p) %s: %s(%d) [%d]", v5, "s/pc-msgrowth.c" >> 32, v6, "setIsServerOriginatedKeepAlive" >> 32, v7, v8, v9, v10);
  v4 = *MEMORY[0x277D85DE8];
}

void serverStatsExpectedKeepAliveInterval_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x44u);
  v7 = *MEMORY[0x277D85DE8];
}

void setServerStatsExpectedKeepAliveInterval_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x4Eu);
  v7 = *MEMORY[0x277D85DE8];
}

void serverStatsMinKeepAliveInterval_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x44u);
  v7 = *MEMORY[0x277D85DE8];
}

void setServerStatsMinKeepAliveInterval_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x4Eu);
  v7 = *MEMORY[0x277D85DE8];
}

void serverStatsMaxKeepAliveInterval_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 48);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x44u);
  v7 = *MEMORY[0x277D85DE8];
}

void setServerStatsMaxKeepAliveInterval_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 48);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x4Eu);
  v7 = *MEMORY[0x277D85DE8];
}

void lastSuccessfulKeepAliveInterval_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 56);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x44u);
  v7 = *MEMORY[0x277D85DE8];
}

void minimumIntervalFallbackEnabled_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 64);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x40u);
  v7 = *MEMORY[0x277D85DE8];
}

void usingServerStatsAggressively_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 65);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x40u);
  v7 = *MEMORY[0x277D85DE8];
}

void setUsingServerStatsAggressively_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 65);
  LODWORD(v5) = 136316930;
  *(&v5 + 4) = "s/pc-msgrowth.c";
  LODWORD(v6) = 136314880;
  *(&v6 + 4) = "etUsingServerStatsAggressively";
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_10(&dword_25E3EF000, v2, v3, "[%15s:%-4d| %-30s] PCMSGA(%p) %s: %s(%d) [%d]", v5, "s/pc-msgrowth.c" >> 32, v6, "etUsingServerStatsAggressively" >> 32, v7, v8, v9, v10);
  v4 = *MEMORY[0x277D85DE8];
}

void minimumIntervalFallbackStateTimeout_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 72);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x44u);
  v7 = *MEMORY[0x277D85DE8];
}

void setMinimumIntervalFallbackStateTimeout_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 72);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x4Eu);
  v7 = *MEMORY[0x277D85DE8];
}

void countOfGrowthActions_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 80);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x44u);
  v7 = *MEMORY[0x277D85DE8];
}

void growthStage_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 104);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x40u);
  v7 = *MEMORY[0x277D85DE8];
}

void previousAction_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 108);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x40u);
  v7 = *MEMORY[0x277D85DE8];
}

void _NSDate_alloc_initWithTimeIntervalSinceNow_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

void _PCSettingsGetStyle_cold_1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"PCConnectionStyle _PCSettingsGetStyle(PCConnectionClassType, CFStringRef)"}];
  [v1 handleFailureInFunction:v0 file:@"PCSettings.m" lineNumber:314 description:{@"%s requires a non-NULL serviceIdentifier", "PCConnectionStyle _PCSettingsGetStyle(PCConnectionClassType, CFStringRef)"}];
}
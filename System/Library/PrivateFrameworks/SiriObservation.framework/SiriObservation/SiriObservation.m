id SOClockAlarmCreateFromMTAlarm(void *a1)
{
  v1 = a1;
  v2 = [v1 alarmID];
  if (v2)
  {
    v3 = [v1 sound];
    v4 = [v3 toneIdentifier];

    if (!v4)
    {
      goto LABEL_5;
    }

    v5 = [getTLToneManagerClass() sharedToneManager];
    v6 = [v1 sound];
    v7 = [v6 toneIdentifier];
    v8 = [v5 _hasUnderlyingPlaybackArchiveForToneIdentifier:v7];

    if (v8)
    {
      v9 = 1;
    }

    else
    {
LABEL_5:
      v9 = 0;
    }

    v10 = MEMORY[0x277CEF1E8];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __SOClockAlarmCreateFromMTAlarm_block_invoke;
    v13[3] = &unk_279C3CE48;
    v14 = v2;
    v15 = v1;
    v16 = v9;
    v11 = [v10 newWithBuilder:v13];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __SOClockAlarmCreateFromMTAlarm_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setAlarmID:v3];
  v5 = [*(a1 + 40) alarmURL];
  [v4 setAlarmURL:v5];

  [v4 setIsFiring:{objc_msgSend(*(a1 + 40), "isFiring")}];
  v6 = [*(a1 + 40) title];
  [v4 setTitle:v6];

  [v4 setType:*(a1 + 48)];
  [v4 setHour:{objc_msgSend(*(a1 + 40), "hour")}];
  [v4 setMinute:{objc_msgSend(*(a1 + 40), "minute")}];
  [v4 setRepeatOptions:{objc_msgSend(*(a1 + 40), "repeatSchedule") & 0x7F}];
  [v4 setIsEnabled:{objc_msgSend(*(a1 + 40), "isEnabled")}];
  [v4 setIsSnoozed:{objc_msgSend(*(a1 + 40), "isSnoozed")}];
  v7 = [*(a1 + 40) firedDate];
  [v4 setFiredDate:v7];

  v8 = [*(a1 + 40) dismissedDate];
  [v4 setDismissedDate:v8];

  v9 = [*(a1 + 40) lastModifiedDate];
  [v4 setLastModifiedDate:v9];
}

id initTLToneManager()
{
  if (initTLToneManager_sOnce != -1)
  {
    dispatch_once(&initTLToneManager_sOnce, &__block_literal_global);
  }

  v1 = classTLToneManager;

  return v1;
}

Class __initTLToneManager_block_invoke()
{
  if (ToneLibraryLibrary_sOnce != -1)
  {
    dispatch_once(&ToneLibraryLibrary_sOnce, &__block_literal_global_5);
  }

  result = objc_getClass("TLToneManager");
  classTLToneManager = result;
  getTLToneManagerClass = TLToneManagerFunction;
  return result;
}

void *__ToneLibraryLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/ToneLibrary.framework/ToneLibrary", 2);
  ToneLibraryLibrary_sLib = result;
  return result;
}

id SOClockAlarmCreateFromMTAlarms(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 count];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v2];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = v1;
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = SOClockAlarmCreateFromMTAlarm(*(*(&v13 + 1) + 8 * i));
          if (v9)
          {
            [v3 addObject:{v9, v13}];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    if ([v3 count])
    {
      v10 = [v3 copy];
    }

    else
    {
      v10 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void sub_2685916A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v26 + 56));
  objc_destroyWeak((v25 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_268592110(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v8 + 32));
  objc_destroyWeak((v7 + 32));
  objc_destroyWeak((v6 + 32));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v9 - 128));
  _Unwind_Resume(a1);
}

id _SOClockAlarmObserverGetAlarmIDsFromAlarms(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 count];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v2];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = v1;
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v13 + 1) + 8 * i) alarmID];
          if (v9)
          {
            [v3 addObject:v9];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    if ([v3 count])
    {
      v10 = [v3 copy];
    }

    else
    {
      v10 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t SOClockTimerGetTimerStateFromMTTimer(void *a1)
{
  result = [a1 state];
  if ((result - 1) >= 3)
  {
    return 0;
  }

  return result;
}

id SOClockTimerCreateFromMTTimer(void *a1)
{
  v1 = a1;
  v2 = [v1 timerID];
  if (v2)
  {
    v3 = [v1 state];
    v4 = MEMORY[0x277CEF200];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __SOClockTimerCreateFromMTTimer_block_invoke;
    v7[3] = &unk_279C3CF38;
    v8 = v2;
    v9 = v1;
    v10 = v3;
    v5 = [v4 newWithBuilder:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __SOClockTimerCreateFromMTTimer_block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  [v14 setTimerID:*(a1 + 32)];
  v3 = [*(a1 + 40) timerURL];
  [v14 setTimerURL:v3];

  [v14 setIsFiring:{objc_msgSend(*(a1 + 40), "isFiring")}];
  v4 = [*(a1 + 40) title];
  [v14 setTitle:v4];

  if ((*(a1 + 48) - 1) >= 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a1 + 48);
  }

  [v14 setState:v5];
  [*(a1 + 40) duration];
  [v14 setDuration:?];
  v6 = *(a1 + 48);
  if ((v6 - 1) <= 1)
  {
    [*(a1 + 40) remainingTime];
    [v14 setFireTimeInterval:?];
    v6 = *(a1 + 48);
  }

  if (v6 == 3)
  {
    v7 = [*(a1 + 40) fireDate];
    [v14 setFireDate:v7];
  }

  v8 = [*(a1 + 40) siriContext];
  v9 = [v8 objectForKeyedSubscript:@"MTTimerIntentSupportSiriContextTimerTypeKey"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = [v9 integerValue];
  }

  else
  {
    v10 = 1;
  }

  [v14 setType:v10];
  v11 = [*(a1 + 40) firedDate];
  [v14 setFiredDate:v11];

  v12 = [*(a1 + 40) dismissedDate];
  [v14 setDismissedDate:v12];

  v13 = [*(a1 + 40) lastModifiedDate];
  [v14 setLastModifiedDate:v13];
}

id SOClockTimerCreateFromMTTimers(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 count];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v2];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = v1;
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = SOClockTimerCreateFromMTTimer(*(*(&v13 + 1) + 8 * i));
          if (v9)
          {
            [v3 addObject:{v9, v13}];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    if ([v3 count])
    {
      v10 = [v3 copy];
    }

    else
    {
      v10 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

id SOAlarmRepeatScheduleGetNames(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v3 = v2;
    if (v1)
    {
      [v2 addObject:@"monday"];
      if ((v1 & 2) == 0)
      {
LABEL_4:
        if ((v1 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_17;
      }
    }

    else if ((v1 & 2) == 0)
    {
      goto LABEL_4;
    }

    [v3 addObject:@"tuesday"];
    if ((v1 & 4) == 0)
    {
LABEL_5:
      if ((v1 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_18;
    }

LABEL_17:
    [v3 addObject:@"wednesday"];
    if ((v1 & 8) == 0)
    {
LABEL_6:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }

LABEL_18:
    [v3 addObject:@"thursday"];
    if ((v1 & 0x10) == 0)
    {
LABEL_7:
      if ((v1 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_20;
    }

LABEL_19:
    [v3 addObject:@"friday"];
    if ((v1 & 0x20) == 0)
    {
LABEL_8:
      if ((v1 & 0x40) == 0)
      {
LABEL_10:
        v4 = [v3 copy];

        goto LABEL_12;
      }

LABEL_9:
      [v3 addObject:@"sunday"];
      goto LABEL_10;
    }

LABEL_20:
    [v3 addObject:@"saturday"];
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v4 = MEMORY[0x277CBEBF8];
LABEL_12:

  return v4;
}

uint64_t SOAlarmRepeatScheduleGetFromNames(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v13 = v1;
    v2 = v1;
    v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = 0;
      v6 = *v15;
      do
      {
        v7 = 0;
        do
        {
          if (*v15 != v6)
          {
            objc_enumerationMutation(v2);
          }

          v8 = *(*(&v14 + 1) + 8 * v7);
          if ([v8 length])
          {
            if (_SOAlarmRepeatScheduleGetFromName_onceToken != -1)
            {
              dispatch_once(&_SOAlarmRepeatScheduleGetFromName_onceToken, &__block_literal_global_34);
            }

            v9 = [_SOAlarmRepeatScheduleGetFromName_map objectForKey:v8];
            v10 = [v9 unsignedIntegerValue];
          }

          else
          {
            v10 = 0;
          }

          v5 |= v10;
          ++v7;
        }

        while (v4 != v7);
        v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v4);
    }

    else
    {
      v5 = 0;
    }

    v1 = v13;
  }

  else
  {
    v5 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

id initMTAlarmManagerAlarmsChanged()
{
  if (initMTAlarmManagerAlarmsChanged_sOnce != -1)
  {
    dispatch_once(&initMTAlarmManagerAlarmsChanged_sOnce, &__block_literal_global_56);
  }

  v1 = constantMTAlarmManagerAlarmsChanged;

  return v1;
}

void __initMTAlarmManagerAlarmsChanged_block_invoke()
{
  if (MobileTimerLibrary_sOnce != -1)
  {
    dispatch_once(&MobileTimerLibrary_sOnce, &__block_literal_global_32);
  }

  v0 = dlsym(MobileTimerLibrary_sLib, "MTAlarmManagerAlarmsChanged");
  if (v0)
  {
    objc_storeStrong(&constantMTAlarmManagerAlarmsChanged, *v0);
  }

  getMTAlarmManagerAlarmsChanged = MTAlarmManagerAlarmsChangedFunction;
}

void *__MobileTimerLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/MobileTimer.framework/MobileTimer", 2);
  MobileTimerLibrary_sLib = result;
  return result;
}

id initMTAlarmManagerStateReset()
{
  if (initMTAlarmManagerStateReset_sOnce != -1)
  {
    dispatch_once(&initMTAlarmManagerStateReset_sOnce, &__block_literal_global_53);
  }

  v1 = constantMTAlarmManagerStateReset;

  return v1;
}

void __initMTAlarmManagerStateReset_block_invoke()
{
  if (MobileTimerLibrary_sOnce != -1)
  {
    dispatch_once(&MobileTimerLibrary_sOnce, &__block_literal_global_32);
  }

  v0 = dlsym(MobileTimerLibrary_sLib, "MTAlarmManagerStateReset");
  if (v0)
  {
    objc_storeStrong(&constantMTAlarmManagerStateReset, *v0);
  }

  getMTAlarmManagerStateReset = MTAlarmManagerStateResetFunction;
}

id initMTAlarmManagerFiringAlarmChanged()
{
  if (initMTAlarmManagerFiringAlarmChanged_sOnce != -1)
  {
    dispatch_once(&initMTAlarmManagerFiringAlarmChanged_sOnce, &__block_literal_global_50);
  }

  v1 = constantMTAlarmManagerFiringAlarmChanged;

  return v1;
}

void __initMTAlarmManagerFiringAlarmChanged_block_invoke()
{
  if (MobileTimerLibrary_sOnce != -1)
  {
    dispatch_once(&MobileTimerLibrary_sOnce, &__block_literal_global_32);
  }

  v0 = dlsym(MobileTimerLibrary_sLib, "MTAlarmManagerFiringAlarmChanged");
  if (v0)
  {
    objc_storeStrong(&constantMTAlarmManagerFiringAlarmChanged, *v0);
  }

  getMTAlarmManagerFiringAlarmChanged = MTAlarmManagerFiringAlarmChangedFunction;
}

id initMTAlarmManagerFiringAlarmDismissed()
{
  if (initMTAlarmManagerFiringAlarmDismissed_sOnce != -1)
  {
    dispatch_once(&initMTAlarmManagerFiringAlarmDismissed_sOnce, &__block_literal_global_47);
  }

  v1 = constantMTAlarmManagerFiringAlarmDismissed;

  return v1;
}

void __initMTAlarmManagerFiringAlarmDismissed_block_invoke()
{
  if (MobileTimerLibrary_sOnce != -1)
  {
    dispatch_once(&MobileTimerLibrary_sOnce, &__block_literal_global_32);
  }

  v0 = dlsym(MobileTimerLibrary_sLib, "MTAlarmManagerFiringAlarmDismissed");
  if (v0)
  {
    objc_storeStrong(&constantMTAlarmManagerFiringAlarmDismissed, *v0);
  }

  getMTAlarmManagerFiringAlarmDismissed = MTAlarmManagerFiringAlarmDismissedFunction;
}

id initMTAlarmManagerAlarmFired()
{
  if (initMTAlarmManagerAlarmFired_sOnce != -1)
  {
    dispatch_once(&initMTAlarmManagerAlarmFired_sOnce, &__block_literal_global_44);
  }

  v1 = constantMTAlarmManagerAlarmFired;

  return v1;
}

void __initMTAlarmManagerAlarmFired_block_invoke()
{
  if (MobileTimerLibrary_sOnce != -1)
  {
    dispatch_once(&MobileTimerLibrary_sOnce, &__block_literal_global_32);
  }

  v0 = dlsym(MobileTimerLibrary_sLib, "MTAlarmManagerAlarmFired");
  if (v0)
  {
    objc_storeStrong(&constantMTAlarmManagerAlarmFired, *v0);
  }

  getMTAlarmManagerAlarmFired = MTAlarmManagerAlarmFiredFunction;
}

id initMTAlarmManagerAlarmsRemoved()
{
  if (initMTAlarmManagerAlarmsRemoved_sOnce != -1)
  {
    dispatch_once(&initMTAlarmManagerAlarmsRemoved_sOnce, &__block_literal_global_41);
  }

  v1 = constantMTAlarmManagerAlarmsRemoved;

  return v1;
}

void __initMTAlarmManagerAlarmsRemoved_block_invoke()
{
  if (MobileTimerLibrary_sOnce != -1)
  {
    dispatch_once(&MobileTimerLibrary_sOnce, &__block_literal_global_32);
  }

  v0 = dlsym(MobileTimerLibrary_sLib, "MTAlarmManagerAlarmsRemoved");
  if (v0)
  {
    objc_storeStrong(&constantMTAlarmManagerAlarmsRemoved, *v0);
  }

  getMTAlarmManagerAlarmsRemoved = MTAlarmManagerAlarmsRemovedFunction;
}

id initMTAlarmManagerAlarmsUpdated()
{
  if (initMTAlarmManagerAlarmsUpdated_sOnce != -1)
  {
    dispatch_once(&initMTAlarmManagerAlarmsUpdated_sOnce, &__block_literal_global_38);
  }

  v1 = constantMTAlarmManagerAlarmsUpdated;

  return v1;
}

void __initMTAlarmManagerAlarmsUpdated_block_invoke()
{
  if (MobileTimerLibrary_sOnce != -1)
  {
    dispatch_once(&MobileTimerLibrary_sOnce, &__block_literal_global_32);
  }

  v0 = dlsym(MobileTimerLibrary_sLib, "MTAlarmManagerAlarmsUpdated");
  if (v0)
  {
    objc_storeStrong(&constantMTAlarmManagerAlarmsUpdated, *v0);
  }

  getMTAlarmManagerAlarmsUpdated = MTAlarmManagerAlarmsUpdatedFunction;
}

id initMTAlarmManagerAlarmsAdded()
{
  if (initMTAlarmManagerAlarmsAdded_sOnce != -1)
  {
    dispatch_once(&initMTAlarmManagerAlarmsAdded_sOnce, &__block_literal_global_35);
  }

  v1 = constantMTAlarmManagerAlarmsAdded;

  return v1;
}

void __initMTAlarmManagerAlarmsAdded_block_invoke()
{
  if (MobileTimerLibrary_sOnce != -1)
  {
    dispatch_once(&MobileTimerLibrary_sOnce, &__block_literal_global_32);
  }

  v0 = dlsym(MobileTimerLibrary_sLib, "MTAlarmManagerAlarmsAdded");
  if (v0)
  {
    objc_storeStrong(&constantMTAlarmManagerAlarmsAdded, *v0);
  }

  getMTAlarmManagerAlarmsAdded = MTAlarmManagerAlarmsAddedFunction;
}

id initMTAlarm()
{
  if (initMTAlarm_sOnce != -1)
  {
    dispatch_once(&initMTAlarm_sOnce, &__block_literal_global_65);
  }

  v1 = classMTAlarm;

  return v1;
}

Class __initMTAlarm_block_invoke()
{
  if (MobileTimerLibrary_sOnce != -1)
  {
    dispatch_once(&MobileTimerLibrary_sOnce, &__block_literal_global_32);
  }

  result = objc_getClass("MTAlarm");
  classMTAlarm = result;
  getMTAlarmClass = MTAlarmFunction;
  return result;
}

id initMTAlarmManagerAlarmsKey()
{
  if (initMTAlarmManagerAlarmsKey_sOnce != -1)
  {
    dispatch_once(&initMTAlarmManagerAlarmsKey_sOnce, &__block_literal_global_62);
  }

  v1 = constantMTAlarmManagerAlarmsKey;

  return v1;
}

void __initMTAlarmManagerAlarmsKey_block_invoke()
{
  if (MobileTimerLibrary_sOnce != -1)
  {
    dispatch_once(&MobileTimerLibrary_sOnce, &__block_literal_global_32);
  }

  v0 = dlsym(MobileTimerLibrary_sLib, "MTAlarmManagerAlarmsKey");
  if (v0)
  {
    objc_storeStrong(&constantMTAlarmManagerAlarmsKey, *v0);
  }

  getMTAlarmManagerAlarmsKey = MTAlarmManagerAlarmsKeyFunction;
}

id initMTAlarmManager()
{
  if (initMTAlarmManager_sOnce != -1)
  {
    dispatch_once(&initMTAlarmManager_sOnce, &__block_literal_global_64);
  }

  v1 = classMTAlarmManager;

  return v1;
}

Class __initMTAlarmManager_block_invoke()
{
  if (MobileTimerLibrary_sOnce != -1)
  {
    dispatch_once(&MobileTimerLibrary_sOnce, &__block_literal_global_32);
  }

  result = objc_getClass("MTAlarmManager");
  classMTAlarmManager = result;
  getMTAlarmManagerClass = MTAlarmManagerFunction;
  return result;
}

__CFString *SOTimerTypeGetName(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"(unknown)";
  }

  else
  {
    return off_279C3CFC0[a1];
  }
}

uint64_t SOTimerTypeGetFromName(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    if (SOTimerTypeGetFromName_onceToken != -1)
    {
      dispatch_once(&SOTimerTypeGetFromName_onceToken, &__block_literal_global_83);
    }

    v2 = [SOTimerTypeGetFromName_map objectForKey:v1];
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __SOTimerTypeGetFromName_block_invoke()
{
  v0 = SOTimerTypeGetFromName_map;
  SOTimerTypeGetFromName_map = &unk_287922F70;
}

id initMTAlarmManagerStateReset_135()
{
  if (initMTAlarmManagerStateReset_sOnce_136 != -1)
  {
    dispatch_once(&initMTAlarmManagerStateReset_sOnce_136, &__block_literal_global_83_137);
  }

  v1 = constantMTAlarmManagerStateReset_138;

  return v1;
}

void __initMTAlarmManagerStateReset_block_invoke_140()
{
  if (MobileTimerLibrary_sOnce_141 != -1)
  {
    dispatch_once(&MobileTimerLibrary_sOnce_141, &__block_literal_global_62_142);
  }

  v0 = dlsym(MobileTimerLibrary_sLib_143, "MTAlarmManagerStateReset");
  if (v0)
  {
    objc_storeStrong(&constantMTAlarmManagerStateReset_138, *v0);
  }

  getMTAlarmManagerStateReset_133 = MTAlarmManagerStateResetFunction_145;
}

void *__MobileTimerLibrary_block_invoke_148()
{
  result = dlopen("/System/Library/PrivateFrameworks/MobileTimer.framework/MobileTimer", 2);
  MobileTimerLibrary_sLib_143 = result;
  return result;
}

id initMTAlarmManagerFiringAlarmDismissed_151()
{
  if (initMTAlarmManagerFiringAlarmDismissed_sOnce_152 != -1)
  {
    dispatch_once(&initMTAlarmManagerFiringAlarmDismissed_sOnce_152, &__block_literal_global_80);
  }

  v1 = constantMTAlarmManagerFiringAlarmDismissed_153;

  return v1;
}

void __initMTAlarmManagerFiringAlarmDismissed_block_invoke_155()
{
  if (MobileTimerLibrary_sOnce_141 != -1)
  {
    dispatch_once(&MobileTimerLibrary_sOnce_141, &__block_literal_global_62_142);
  }

  v0 = dlsym(MobileTimerLibrary_sLib_143, "MTAlarmManagerFiringAlarmDismissed");
  if (v0)
  {
    objc_storeStrong(&constantMTAlarmManagerFiringAlarmDismissed_153, *v0);
  }

  getMTAlarmManagerFiringAlarmDismissed_132 = MTAlarmManagerFiringAlarmDismissedFunction_157;
}

id initMTAlarmManagerFiringAlarmChanged_159()
{
  if (initMTAlarmManagerFiringAlarmChanged_sOnce_160 != -1)
  {
    dispatch_once(&initMTAlarmManagerFiringAlarmChanged_sOnce_160, &__block_literal_global_77);
  }

  v1 = constantMTAlarmManagerFiringAlarmChanged_161;

  return v1;
}

void __initMTAlarmManagerFiringAlarmChanged_block_invoke_163()
{
  if (MobileTimerLibrary_sOnce_141 != -1)
  {
    dispatch_once(&MobileTimerLibrary_sOnce_141, &__block_literal_global_62_142);
  }

  v0 = dlsym(MobileTimerLibrary_sLib_143, "MTAlarmManagerFiringAlarmChanged");
  if (v0)
  {
    objc_storeStrong(&constantMTAlarmManagerFiringAlarmChanged_161, *v0);
  }

  getMTAlarmManagerFiringAlarmChanged_131 = MTAlarmManagerFiringAlarmChangedFunction_165;
}

id initMTAlarmManagerAlarmFired_167()
{
  if (initMTAlarmManagerAlarmFired_sOnce_168 != -1)
  {
    dispatch_once(&initMTAlarmManagerAlarmFired_sOnce_168, &__block_literal_global_74);
  }

  v1 = constantMTAlarmManagerAlarmFired_169;

  return v1;
}

void __initMTAlarmManagerAlarmFired_block_invoke_171()
{
  if (MobileTimerLibrary_sOnce_141 != -1)
  {
    dispatch_once(&MobileTimerLibrary_sOnce_141, &__block_literal_global_62_142);
  }

  v0 = dlsym(MobileTimerLibrary_sLib_143, "MTAlarmManagerAlarmFired");
  if (v0)
  {
    objc_storeStrong(&constantMTAlarmManagerAlarmFired_169, *v0);
  }

  getMTAlarmManagerAlarmFired_130 = MTAlarmManagerAlarmFiredFunction_173;
}

id initMTAlarmManagerAlarmsRemoved_175()
{
  if (initMTAlarmManagerAlarmsRemoved_sOnce_176 != -1)
  {
    dispatch_once(&initMTAlarmManagerAlarmsRemoved_sOnce_176, &__block_literal_global_71);
  }

  v1 = constantMTAlarmManagerAlarmsRemoved_177;

  return v1;
}

void __initMTAlarmManagerAlarmsRemoved_block_invoke_179()
{
  if (MobileTimerLibrary_sOnce_141 != -1)
  {
    dispatch_once(&MobileTimerLibrary_sOnce_141, &__block_literal_global_62_142);
  }

  v0 = dlsym(MobileTimerLibrary_sLib_143, "MTAlarmManagerAlarmsRemoved");
  if (v0)
  {
    objc_storeStrong(&constantMTAlarmManagerAlarmsRemoved_177, *v0);
  }

  getMTAlarmManagerAlarmsRemoved_129 = MTAlarmManagerAlarmsRemovedFunction_181;
}

id initMTAlarmManagerAlarmsUpdated_183()
{
  if (initMTAlarmManagerAlarmsUpdated_sOnce_184 != -1)
  {
    dispatch_once(&initMTAlarmManagerAlarmsUpdated_sOnce_184, &__block_literal_global_68);
  }

  v1 = constantMTAlarmManagerAlarmsUpdated_185;

  return v1;
}

void __initMTAlarmManagerAlarmsUpdated_block_invoke_187()
{
  if (MobileTimerLibrary_sOnce_141 != -1)
  {
    dispatch_once(&MobileTimerLibrary_sOnce_141, &__block_literal_global_62_142);
  }

  v0 = dlsym(MobileTimerLibrary_sLib_143, "MTAlarmManagerAlarmsUpdated");
  if (v0)
  {
    objc_storeStrong(&constantMTAlarmManagerAlarmsUpdated_185, *v0);
  }

  getMTAlarmManagerAlarmsUpdated_128 = MTAlarmManagerAlarmsUpdatedFunction_189;
}

id initMTAlarmManagerAlarmsAdded_191()
{
  if (initMTAlarmManagerAlarmsAdded_sOnce_192 != -1)
  {
    dispatch_once(&initMTAlarmManagerAlarmsAdded_sOnce_192, &__block_literal_global_65_193);
  }

  v1 = constantMTAlarmManagerAlarmsAdded_194;

  return v1;
}

void __initMTAlarmManagerAlarmsAdded_block_invoke_197()
{
  if (MobileTimerLibrary_sOnce_141 != -1)
  {
    dispatch_once(&MobileTimerLibrary_sOnce_141, &__block_literal_global_62_142);
  }

  v0 = dlsym(MobileTimerLibrary_sLib_143, "MTAlarmManagerAlarmsAdded");
  if (v0)
  {
    objc_storeStrong(&constantMTAlarmManagerAlarmsAdded_194, *v0);
  }

  getMTAlarmManagerAlarmsAdded_127 = MTAlarmManagerAlarmsAddedFunction_200;
}

id initMTAlarmManager_212()
{
  if (initMTAlarmManager_sOnce_213 != -1)
  {
    dispatch_once(&initMTAlarmManager_sOnce_213, &__block_literal_global_214);
  }

  v1 = classMTAlarmManager_215;

  return v1;
}

Class __initMTAlarmManager_block_invoke_218()
{
  if (MobileTimerLibrary_sOnce_141 != -1)
  {
    dispatch_once(&MobileTimerLibrary_sOnce_141, &__block_literal_global_62_142);
  }

  result = objc_getClass("MTAlarmManager");
  classMTAlarmManager_215 = result;
  getMTAlarmManagerClass_207 = MTAlarmManagerFunction_220;
  return result;
}

void sub_2685983D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 120));
  _Unwind_Resume(a1);
}

void sub_268598AA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26859C7C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v26 + 56));
  objc_destroyWeak((v25 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26859D234(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v8 + 32));
  objc_destroyWeak((v7 + 32));
  objc_destroyWeak((v6 + 32));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v9 - 128));
  _Unwind_Resume(a1);
}

id _SOClockTimerObserverGetTimerIDsFromTimers(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 count];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v2];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = v1;
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v13 + 1) + 8 * i) timerID];
          if (v9)
          {
            [v3 addObject:v9];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    if ([v3 count])
    {
      v10 = [v3 copy];
    }

    else
    {
      v10 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

__CFString *SOTimerStateGetName(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"(unknown)";
  }

  else
  {
    return off_279C3D430[a1];
  }
}

uint64_t SOTimerStateGetFromName(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    if (SOTimerStateGetFromName_onceToken != -1)
    {
      dispatch_once(&SOTimerStateGetFromName_onceToken, &__block_literal_global_640);
    }

    v2 = [SOTimerStateGetFromName_map objectForKey:v1];
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __SOTimerStateGetFromName_block_invoke()
{
  v0 = SOTimerStateGetFromName_map;
  SOTimerStateGetFromName_map = &unk_287922F98;
}

id initMTTimerManagerStateReset()
{
  if (initMTTimerManagerStateReset_sOnce != -1)
  {
    dispatch_once(&initMTTimerManagerStateReset_sOnce, &__block_literal_global_80_936);
  }

  v1 = constantMTTimerManagerStateReset;

  return v1;
}

void __initMTTimerManagerStateReset_block_invoke()
{
  if (MobileTimerLibrary_sOnce_938 != -1)
  {
    dispatch_once(&MobileTimerLibrary_sOnce_938, &__block_literal_global_59);
  }

  v0 = dlsym(MobileTimerLibrary_sLib_939, "MTTimerManagerStateReset");
  if (v0)
  {
    objc_storeStrong(&constantMTTimerManagerStateReset, *v0);
  }

  getMTTimerManagerStateReset = MTTimerManagerStateResetFunction;
}

void *__MobileTimerLibrary_block_invoke_942()
{
  result = dlopen("/System/Library/PrivateFrameworks/MobileTimer.framework/MobileTimer", 2);
  MobileTimerLibrary_sLib_939 = result;
  return result;
}

id initMTTimerManagerFiringTimerDismissed()
{
  if (initMTTimerManagerFiringTimerDismissed_sOnce != -1)
  {
    dispatch_once(&initMTTimerManagerFiringTimerDismissed_sOnce, &__block_literal_global_77_944);
  }

  v1 = constantMTTimerManagerFiringTimerDismissed;

  return v1;
}

void __initMTTimerManagerFiringTimerDismissed_block_invoke()
{
  if (MobileTimerLibrary_sOnce_938 != -1)
  {
    dispatch_once(&MobileTimerLibrary_sOnce_938, &__block_literal_global_59);
  }

  v0 = dlsym(MobileTimerLibrary_sLib_939, "MTTimerManagerFiringTimerDismissed");
  if (v0)
  {
    objc_storeStrong(&constantMTTimerManagerFiringTimerDismissed, *v0);
  }

  getMTTimerManagerFiringTimerDismissed = MTTimerManagerFiringTimerDismissedFunction;
}

id initMTTimerManagerFiringTimerChanged()
{
  if (initMTTimerManagerFiringTimerChanged_sOnce != -1)
  {
    dispatch_once(&initMTTimerManagerFiringTimerChanged_sOnce, &__block_literal_global_74_947);
  }

  v1 = constantMTTimerManagerFiringTimerChanged;

  return v1;
}

void __initMTTimerManagerFiringTimerChanged_block_invoke()
{
  if (MobileTimerLibrary_sOnce_938 != -1)
  {
    dispatch_once(&MobileTimerLibrary_sOnce_938, &__block_literal_global_59);
  }

  v0 = dlsym(MobileTimerLibrary_sLib_939, "MTTimerManagerFiringTimerChanged");
  if (v0)
  {
    objc_storeStrong(&constantMTTimerManagerFiringTimerChanged, *v0);
  }

  getMTTimerManagerFiringTimerChanged = MTTimerManagerFiringTimerChangedFunction;
}

id initMTTimerManagerTimerFired()
{
  if (initMTTimerManagerTimerFired_sOnce != -1)
  {
    dispatch_once(&initMTTimerManagerTimerFired_sOnce, &__block_literal_global_71_950);
  }

  v1 = constantMTTimerManagerTimerFired;

  return v1;
}

void __initMTTimerManagerTimerFired_block_invoke()
{
  if (MobileTimerLibrary_sOnce_938 != -1)
  {
    dispatch_once(&MobileTimerLibrary_sOnce_938, &__block_literal_global_59);
  }

  v0 = dlsym(MobileTimerLibrary_sLib_939, "MTTimerManagerTimerFired");
  if (v0)
  {
    objc_storeStrong(&constantMTTimerManagerTimerFired, *v0);
  }

  getMTTimerManagerTimerFired = MTTimerManagerTimerFiredFunction;
}

id initMTTimerManagerTimersRemoved()
{
  if (initMTTimerManagerTimersRemoved_sOnce != -1)
  {
    dispatch_once(&initMTTimerManagerTimersRemoved_sOnce, &__block_literal_global_68_953);
  }

  v1 = constantMTTimerManagerTimersRemoved;

  return v1;
}

void __initMTTimerManagerTimersRemoved_block_invoke()
{
  if (MobileTimerLibrary_sOnce_938 != -1)
  {
    dispatch_once(&MobileTimerLibrary_sOnce_938, &__block_literal_global_59);
  }

  v0 = dlsym(MobileTimerLibrary_sLib_939, "MTTimerManagerTimersRemoved");
  if (v0)
  {
    objc_storeStrong(&constantMTTimerManagerTimersRemoved, *v0);
  }

  getMTTimerManagerTimersRemoved = MTTimerManagerTimersRemovedFunction;
}

id initMTTimerManagerTimersUpdated()
{
  if (initMTTimerManagerTimersUpdated_sOnce != -1)
  {
    dispatch_once(&initMTTimerManagerTimersUpdated_sOnce, &__block_literal_global_65_956);
  }

  v1 = constantMTTimerManagerTimersUpdated;

  return v1;
}

void __initMTTimerManagerTimersUpdated_block_invoke()
{
  if (MobileTimerLibrary_sOnce_938 != -1)
  {
    dispatch_once(&MobileTimerLibrary_sOnce_938, &__block_literal_global_59);
  }

  v0 = dlsym(MobileTimerLibrary_sLib_939, "MTTimerManagerTimersUpdated");
  if (v0)
  {
    objc_storeStrong(&constantMTTimerManagerTimersUpdated, *v0);
  }

  getMTTimerManagerTimersUpdated = MTTimerManagerTimersUpdatedFunction;
}

id initMTTimerManagerTimersAdded()
{
  if (initMTTimerManagerTimersAdded_sOnce != -1)
  {
    dispatch_once(&initMTTimerManagerTimersAdded_sOnce, &__block_literal_global_62_959);
  }

  v1 = constantMTTimerManagerTimersAdded;

  return v1;
}

void __initMTTimerManagerTimersAdded_block_invoke()
{
  if (MobileTimerLibrary_sOnce_938 != -1)
  {
    dispatch_once(&MobileTimerLibrary_sOnce_938, &__block_literal_global_59);
  }

  v0 = dlsym(MobileTimerLibrary_sLib_939, "MTTimerManagerTimersAdded");
  if (v0)
  {
    objc_storeStrong(&constantMTTimerManagerTimersAdded, *v0);
  }

  getMTTimerManagerTimersAdded = MTTimerManagerTimersAddedFunction;
}

id initMTTimerManager()
{
  if (initMTTimerManager_sOnce != -1)
  {
    dispatch_once(&initMTTimerManager_sOnce, &__block_literal_global_970);
  }

  v1 = classMTTimerManager;

  return v1;
}

Class __initMTTimerManager_block_invoke()
{
  if (MobileTimerLibrary_sOnce_938 != -1)
  {
    dispatch_once(&MobileTimerLibrary_sOnce_938, &__block_literal_global_59);
  }

  result = objc_getClass("MTTimerManager");
  classMTTimerManager = result;
  getMTTimerManagerClass = MTTimerManagerFunction;
  return result;
}

id initMTTimerManagerStateReset_1014()
{
  if (initMTTimerManagerStateReset_sOnce_1015 != -1)
  {
    dispatch_once(&initMTTimerManagerStateReset_sOnce_1015, &__block_literal_global_57);
  }

  v1 = constantMTTimerManagerStateReset_1016;

  return v1;
}

void __initMTTimerManagerStateReset_block_invoke_1018()
{
  if (MobileTimerLibrary_sOnce_1019 != -1)
  {
    dispatch_once(&MobileTimerLibrary_sOnce_1019, &__block_literal_global_33);
  }

  v0 = dlsym(MobileTimerLibrary_sLib_1020, "MTTimerManagerStateReset");
  if (v0)
  {
    objc_storeStrong(&constantMTTimerManagerStateReset_1016, *v0);
  }

  getMTTimerManagerStateReset_1012 = MTTimerManagerStateResetFunction_1023;
}

void *__MobileTimerLibrary_block_invoke_1025()
{
  result = dlopen("/System/Library/PrivateFrameworks/MobileTimer.framework/MobileTimer", 2);
  MobileTimerLibrary_sLib_1020 = result;
  return result;
}

id initMTTimerManagerTimersChanged()
{
  if (initMTTimerManagerTimersChanged_sOnce != -1)
  {
    dispatch_once(&initMTTimerManagerTimersChanged_sOnce, &__block_literal_global_54);
  }

  v1 = constantMTTimerManagerTimersChanged;

  return v1;
}

void __initMTTimerManagerTimersChanged_block_invoke()
{
  if (MobileTimerLibrary_sOnce_1019 != -1)
  {
    dispatch_once(&MobileTimerLibrary_sOnce_1019, &__block_literal_global_33);
  }

  v0 = dlsym(MobileTimerLibrary_sLib_1020, "MTTimerManagerTimersChanged");
  if (v0)
  {
    objc_storeStrong(&constantMTTimerManagerTimersChanged, *v0);
  }

  getMTTimerManagerTimersChanged = MTTimerManagerTimersChangedFunction;
}

id initMTTimerManagerFiringTimerDismissed_1029()
{
  if (initMTTimerManagerFiringTimerDismissed_sOnce_1030 != -1)
  {
    dispatch_once(&initMTTimerManagerFiringTimerDismissed_sOnce_1030, &__block_literal_global_51);
  }

  v1 = constantMTTimerManagerFiringTimerDismissed_1031;

  return v1;
}

void __initMTTimerManagerFiringTimerDismissed_block_invoke_1033()
{
  if (MobileTimerLibrary_sOnce_1019 != -1)
  {
    dispatch_once(&MobileTimerLibrary_sOnce_1019, &__block_literal_global_33);
  }

  v0 = dlsym(MobileTimerLibrary_sLib_1020, "MTTimerManagerFiringTimerDismissed");
  if (v0)
  {
    objc_storeStrong(&constantMTTimerManagerFiringTimerDismissed_1031, *v0);
  }

  getMTTimerManagerFiringTimerDismissed_1011 = MTTimerManagerFiringTimerDismissedFunction_1036;
}

id initMTTimerManagerFiringTimerChanged_1038()
{
  if (initMTTimerManagerFiringTimerChanged_sOnce_1039 != -1)
  {
    dispatch_once(&initMTTimerManagerFiringTimerChanged_sOnce_1039, &__block_literal_global_48);
  }

  v1 = constantMTTimerManagerFiringTimerChanged_1040;

  return v1;
}

void __initMTTimerManagerFiringTimerChanged_block_invoke_1042()
{
  if (MobileTimerLibrary_sOnce_1019 != -1)
  {
    dispatch_once(&MobileTimerLibrary_sOnce_1019, &__block_literal_global_33);
  }

  v0 = dlsym(MobileTimerLibrary_sLib_1020, "MTTimerManagerFiringTimerChanged");
  if (v0)
  {
    objc_storeStrong(&constantMTTimerManagerFiringTimerChanged_1040, *v0);
  }

  getMTTimerManagerFiringTimerChanged_1010 = MTTimerManagerFiringTimerChangedFunction_1045;
}

id initMTTimerManagerTimerFired_1047()
{
  if (initMTTimerManagerTimerFired_sOnce_1048 != -1)
  {
    dispatch_once(&initMTTimerManagerTimerFired_sOnce_1048, &__block_literal_global_45);
  }

  v1 = constantMTTimerManagerTimerFired_1049;

  return v1;
}

void __initMTTimerManagerTimerFired_block_invoke_1051()
{
  if (MobileTimerLibrary_sOnce_1019 != -1)
  {
    dispatch_once(&MobileTimerLibrary_sOnce_1019, &__block_literal_global_33);
  }

  v0 = dlsym(MobileTimerLibrary_sLib_1020, "MTTimerManagerTimerFired");
  if (v0)
  {
    objc_storeStrong(&constantMTTimerManagerTimerFired_1049, *v0);
  }

  getMTTimerManagerTimerFired_1009 = MTTimerManagerTimerFiredFunction_1054;
}

id initMTTimerManagerTimersRemoved_1056()
{
  if (initMTTimerManagerTimersRemoved_sOnce_1057 != -1)
  {
    dispatch_once(&initMTTimerManagerTimersRemoved_sOnce_1057, &__block_literal_global_42);
  }

  v1 = constantMTTimerManagerTimersRemoved_1058;

  return v1;
}

void __initMTTimerManagerTimersRemoved_block_invoke_1060()
{
  if (MobileTimerLibrary_sOnce_1019 != -1)
  {
    dispatch_once(&MobileTimerLibrary_sOnce_1019, &__block_literal_global_33);
  }

  v0 = dlsym(MobileTimerLibrary_sLib_1020, "MTTimerManagerTimersRemoved");
  if (v0)
  {
    objc_storeStrong(&constantMTTimerManagerTimersRemoved_1058, *v0);
  }

  getMTTimerManagerTimersRemoved_1008 = MTTimerManagerTimersRemovedFunction_1062;
}

id initMTTimerManagerTimersUpdated_1064()
{
  if (initMTTimerManagerTimersUpdated_sOnce_1065 != -1)
  {
    dispatch_once(&initMTTimerManagerTimersUpdated_sOnce_1065, &__block_literal_global_39);
  }

  v1 = constantMTTimerManagerTimersUpdated_1066;

  return v1;
}

void __initMTTimerManagerTimersUpdated_block_invoke_1068()
{
  if (MobileTimerLibrary_sOnce_1019 != -1)
  {
    dispatch_once(&MobileTimerLibrary_sOnce_1019, &__block_literal_global_33);
  }

  v0 = dlsym(MobileTimerLibrary_sLib_1020, "MTTimerManagerTimersUpdated");
  if (v0)
  {
    objc_storeStrong(&constantMTTimerManagerTimersUpdated_1066, *v0);
  }

  getMTTimerManagerTimersUpdated_1007 = MTTimerManagerTimersUpdatedFunction_1070;
}

id initMTTimerManagerTimersAdded_1072()
{
  if (initMTTimerManagerTimersAdded_sOnce_1073 != -1)
  {
    dispatch_once(&initMTTimerManagerTimersAdded_sOnce_1073, &__block_literal_global_36);
  }

  v1 = constantMTTimerManagerTimersAdded_1074;

  return v1;
}

void __initMTTimerManagerTimersAdded_block_invoke_1077()
{
  if (MobileTimerLibrary_sOnce_1019 != -1)
  {
    dispatch_once(&MobileTimerLibrary_sOnce_1019, &__block_literal_global_33);
  }

  v0 = dlsym(MobileTimerLibrary_sLib_1020, "MTTimerManagerTimersAdded");
  if (v0)
  {
    objc_storeStrong(&constantMTTimerManagerTimersAdded_1074, *v0);
  }

  getMTTimerManagerTimersAdded_1006 = MTTimerManagerTimersAddedFunction_1080;
}

id initMTTimer()
{
  if (initMTTimer_sOnce != -1)
  {
    dispatch_once(&initMTTimer_sOnce, &__block_literal_global_66);
  }

  v1 = classMTTimer;

  return v1;
}

Class __initMTTimer_block_invoke()
{
  if (MobileTimerLibrary_sOnce_1019 != -1)
  {
    dispatch_once(&MobileTimerLibrary_sOnce_1019, &__block_literal_global_33);
  }

  result = objc_getClass("MTTimer");
  classMTTimer = result;
  getMTTimerClass = MTTimerFunction;
  return result;
}

id initMTTimerManagerTimersKey()
{
  if (initMTTimerManagerTimersKey_sOnce != -1)
  {
    dispatch_once(&initMTTimerManagerTimersKey_sOnce, &__block_literal_global_63);
  }

  v1 = constantMTTimerManagerTimersKey;

  return v1;
}

void __initMTTimerManagerTimersKey_block_invoke()
{
  if (MobileTimerLibrary_sOnce_1019 != -1)
  {
    dispatch_once(&MobileTimerLibrary_sOnce_1019, &__block_literal_global_33);
  }

  v0 = dlsym(MobileTimerLibrary_sLib_1020, "MTTimerManagerTimersKey");
  if (v0)
  {
    objc_storeStrong(&constantMTTimerManagerTimersKey, *v0);
  }

  getMTTimerManagerTimersKey = MTTimerManagerTimersKeyFunction;
}

id initMTTimerManager_1095()
{
  if (initMTTimerManager_sOnce_1096 != -1)
  {
    dispatch_once(&initMTTimerManager_sOnce_1096, &__block_literal_global_1097);
  }

  v1 = classMTTimerManager_1098;

  return v1;
}

Class __initMTTimerManager_block_invoke_1101()
{
  if (MobileTimerLibrary_sOnce_1019 != -1)
  {
    dispatch_once(&MobileTimerLibrary_sOnce_1019, &__block_literal_global_33);
  }

  result = objc_getClass("MTTimerManager");
  classMTTimerManager_1098 = result;
  getMTTimerManagerClass_1091 = MTTimerManagerFunction_1104;
  return result;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}
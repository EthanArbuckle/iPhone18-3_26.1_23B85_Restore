@interface TIKeyboardApplicationStateMonitor
- (BOOL)flushPendingChangesToDisk;
- (BOOL)ignoreAppExtension:(id)a3;
- (BOOL)threadUnsafeFlushChangesToDiskWithImmediacy:(BOOL)a3;
- (TIKeyboardApplicationStateMonitor)initWithAppActivityTimeDurationThreshold:(double)a3 keyboardUsageFractionThreshold:(double)a4;
- (TIKeyboardApplicationStateResponses)delegate;
- (id)databaseLocation;
- (void)applicationUninstalled:(id)a3;
- (void)dealloc;
- (void)handleApplicationStateChange:(id)a3;
- (void)keyboardInUse;
- (void)keyboardNoLongerInUse;
- (void)logOutKeyboardActivity:(double)a3;
- (void)startANewKeyboardActivity:(id)a3;
@end

@implementation TIKeyboardApplicationStateMonitor

- (TIKeyboardApplicationStateResponses)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)ignoreAppExtension:(id)a3
{
  v3 = ignoreAppExtension__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&ignoreAppExtension__onceToken, &__block_literal_global_106);
  }

  v5 = [ignoreAppExtension__ignoreList containsObject:v4];

  return v5;
}

uint64_t __56__TIKeyboardApplicationStateMonitor_ignoreAppExtension___block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.CryptoTokenKit.setoken", @"com.apple.Sharing.AirDropDiagnostic", @"com.apple.CloudDocs.MobileDocumentsFileProvider", @"com.apple.UIKit.ShareUI", @"com.apple.WebKit.WebContent", @"com.apple.WebKit.Networking", @"com.apple.mobileslideshow.PhotosDiagnostics", @"com.apple.CarKit.CarPlayDiagnosticsExtension", @"com.apple.CloudDocsDaemon.diagnostic", @"com.apple.Maps.DEMapsExtension", @"com.apple.Search.framework.SpotlightDiagnostic", @"com.apple.BiometricKit.BioLogDiagnostic", @"com.apple.audio.toolbox.AudioToolbox.DiagnosticExtensions", @"com.apple.Symptoms.SFDiagnosticExtension.appex", @"com.apple.news.articlenotificationserviceextension", @"com.apple.DiagnosticsService.SystemReport", @"com.apple.FileProvider.LocalStorage", @"com.apple.news.diagnosticextension", @"com.apple.mobilesafari.SafariDiagnosticExtension", @"com.apple.mobilemail.DiagnosticExtension", @"com.apple.mobilecal.diagnosticextension", @"com.apple.accessibility.Accessibility.AXTapToRadar", @"com.apple.accessibility.Accessibility.GuidedAccessTapToRadar", @"com.apple.accessibility.Accessibility.HearingAidsTapToRadar", @"com.apple.accessibility.Accessibility.SwitchControlTapToRadar", @"com.apple.accessibility.Accessibility.VoiceOverTapToRadar", @"com.apple.audio.toolbox.AudioToolbox.DiagnosticExtensions", @"com.apple.duet.expertcenter.diagnosticextension", @"com.apple.keyboard.TypoTracker.DiagnosticExtension", @"com.apple.PowerlogCore.diagnosticextension", @"com.apple.PassKit.applepay.diagnosticextension", @"com.apple.HomeKit.diagnosticextensioncom.apple.MediaPlayer.DiagnosticExtension", @"com.apple.MobileAddressBook", @"com.apple.MobileBackup.framework.DiagnosticExtension", @"com.apple.CoreRoutine.RTDiagnosticExtension", @"com.apple.DiagnosticExtensions.sysdiagnose", @"com.apple.DiagnosticExtensions.Bluetooth", @"com.apple.DiagnosticExtensions.WiFi", @"com.apple.DiagnosticExtensions.Syslog", @"com.apple.DiagnosticExtensions.StackShot", @"com.apple.DiagnosticExtensions.Keyboard", @"com.apple.DiagnosticExtensions.CrashLogs", @"com.apple.DiagnosticExtensions.Panic", @"com.apple.DiagnosticExtensions.LowMemory", @"com.apple.DiagnosticExtensions.Siri", 0}];
  v1 = ignoreAppExtension__ignoreList;
  ignoreAppExtension__ignoreList = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (BOOL)flushPendingChangesToDisk
{
  v3 = [(TIKeyboardApplicationStateMonitor *)self databaseInUseLock];
  v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:1.0];
  v5 = [v3 lockBeforeDate:v4];

  if (!v5)
  {
    return 1;
  }

  v6 = [(TIKeyboardApplicationStateMonitor *)self threadUnsafeFlushChangesToDiskWithImmediacy:1];
  v7 = [(TIKeyboardApplicationStateMonitor *)self databaseInUseLock];
  [v7 unlock];

  return v6;
}

- (BOOL)threadUnsafeFlushChangesToDiskWithImmediacy:(BOOL)a3
{
  v19 = *MEMORY[0x277D85DE8];
  if (a3 || (-[TIKeyboardApplicationStateMonitor timeOfLastFlushToDisk](self, "timeOfLastFlushToDisk"), v4 = objc_claimAutoreleasedReturnValue(), [v4 timeIntervalSinceNow], v6 = fabs(v5), v4, v6 >= 120.0))
  {
    v8 = [(TIKeyboardApplicationStateMonitor *)self applicationStateDatabase];
    v9 = [(TIKeyboardApplicationStateMonitor *)self databaseLocation];
    v10 = [v8 writeToURL:v9 atomically:1];

    v11 = [(TIKeyboardApplicationStateMonitor *)self databaseLocation];
    v12 = [v11 setResourceValue:*MEMORY[0x277CBE7F0] forKey:*MEMORY[0x277CBE7F8] error:0];

    v13 = [MEMORY[0x277CBEAA8] date];
    [(TIKeyboardApplicationStateMonitor *)self setTimeOfLastFlushToDisk:v13];

    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v14 = TIOSLogFacility();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Flushed changes to disk", "-[TIKeyboardApplicationStateMonitor threadUnsafeFlushChangesToDiskWithImmediacy:]"];
        *buf = 138412290;
        v18 = v16;
        _os_log_debug_impl(&dword_22CA55000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    result = v10 & v12;
  }

  else
  {
    result = 1;
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)databaseLocation
{
  if (databaseLocation_onceToken != -1)
  {
    dispatch_once(&databaseLocation_onceToken, &__block_literal_global_15939);
  }

  v3 = databaseLocation_url;

  return v3;
}

void __53__TIKeyboardApplicationStateMonitor_databaseLocation__block_invoke()
{
  v2 = [MEMORY[0x277CBEBC0] fileURLWithPath:TI_KB_USER_DIRECTORY() isDirectory:1];
  v0 = [v2 URLByAppendingPathComponent:@"app_usage_database.plist"];
  v1 = databaseLocation_url;
  databaseLocation_url = v0;
}

- (void)keyboardNoLongerInUse
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = TIGetCurrentTime();
  v4 = [(TIKeyboardApplicationStateMonitor *)self activeStateDataLock];
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:1.0];
  v6 = [v4 lockBeforeDate:v5];

  if (v6)
  {
    [(TIKeyboardApplicationStateMonitor *)self activeKeyboardStartTime];
    if (v7 != 0.0)
    {
      v8 = MEMORY[0x277CCABB0];
      [(TIKeyboardApplicationStateMonitor *)self activeKeyboardStartTime];
      v10 = [v8 numberWithDouble:v3 - v9];
      [(TIKeyboardApplicationStateMonitor *)self setActiveKeyboardStartTime:0.0];
      v11 = [(TIKeyboardApplicationStateMonitor *)self keyboardUsageTimes];
      [v11 addObject:v10];

      if (TICanLogMessageAtLevel_onceToken != -1)
      {
        dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
      }

      if (TICanLogMessageAtLevel_logLevel >= 2)
      {
        v12 = TIOSLogFacility();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Recorded keyboard usage time data", "-[TIKeyboardApplicationStateMonitor keyboardNoLongerInUse]"];
          *buf = 138412290;
          v17 = v15;
          _os_log_debug_impl(&dword_22CA55000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v13 = [(TIKeyboardApplicationStateMonitor *)self activeStateDataLock];
    [v13 unlock];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)keyboardInUse
{
  v3 = TIGetCurrentTime();
  v4 = [(TIKeyboardApplicationStateMonitor *)self activeStateDataLock];
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:1.0];
  v6 = [v4 lockBeforeDate:v5];

  if (v6)
  {
    [(TIKeyboardApplicationStateMonitor *)self setActiveKeyboardStartTime:v3];
    v7 = [(TIKeyboardApplicationStateMonitor *)self activeStateDataLock];
    [v7 unlock];
  }
}

- (void)dealloc
{
  [(BKSApplicationStateMonitor *)self->_applicationStateMonitor invalidate];
  [(TIKeyboardApplicationStateMonitor *)self setDelegate:0];
  v3.receiver = self;
  v3.super_class = TIKeyboardApplicationStateMonitor;
  [(TIKeyboardApplicationStateMonitor *)&v3 dealloc];
}

- (void)logOutKeyboardActivity:(double)a3
{
  v108 = *MEMORY[0x277D85DE8];
  v5 = TIGetCurrentTime();
  v6 = [(TIKeyboardApplicationStateMonitor *)self activeStateDataLock];
  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:1.0];
  v8 = [v6 lockBeforeDate:v7];

  if (!v8)
  {
    v21 = 0;
    goto LABEL_57;
  }

  [(TIKeyboardApplicationStateMonitor *)self activeKeyboardStartTime];
  if (v9 != 0.0)
  {
    v10 = MEMORY[0x277CCABB0];
    [(TIKeyboardApplicationStateMonitor *)self activeKeyboardStartTime];
    v12 = [v10 numberWithDouble:v5 - v11];
    [(TIKeyboardApplicationStateMonitor *)self setActiveKeyboardStartTime:0.0];
    v13 = [(TIKeyboardApplicationStateMonitor *)self keyboardUsageTimes];
    [v13 addObject:v12];

    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v14 = TIOSLogFacility();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v75 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s App went background without dismissing keyboard", "-[TIKeyboardApplicationStateMonitor logOutKeyboardActivity:]"];
        *buf = 138412290;
        v107 = v75;
        _os_log_debug_impl(&dword_22CA55000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v15 = MEMORY[0x277CCABB0];
  [(TIKeyboardApplicationStateMonitor *)self activeAppStartTime];
  v17 = [v15 numberWithDouble:a3 - v16];
  v105[0] = v17;
  v104[0] = @"appTime";
  v104[1] = @"keyboardTimes";
  v18 = [(TIKeyboardApplicationStateMonitor *)self keyboardUsageTimes];
  v105[1] = v18;
  v104[2] = @"startDate";
  v19 = [(TIKeyboardApplicationStateMonitor *)self activeAppStartDate];
  if (v19)
  {
    v20 = [(TIKeyboardApplicationStateMonitor *)self activeAppStartDate];
  }

  else
  {
    v20 = @"unknown";
  }

  v105[2] = v20;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v105 forKeys:v104 count:3];
  if (v19)
  {
  }

  v23 = [(TIKeyboardApplicationStateMonitor *)self activeStateDataLock];
  [v23 unlock];

  v24 = [(TIKeyboardApplicationStateMonitor *)self databaseInUseLock];
  [v24 lock];

  v25 = [(TIKeyboardApplicationStateMonitor *)self applicationStateDatabase];
  v76 = v22;
  if (v25)
  {
    v26 = v25;
LABEL_19:
    v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v30 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-345600.0];
    v96[0] = MEMORY[0x277D85DD0];
    v96[1] = 3221225472;
    v96[2] = __60__TIKeyboardApplicationStateMonitor_logOutKeyboardActivity___block_invoke;
    v96[3] = &unk_278732298;
    v31 = v30;
    v97 = v31;
    v32 = v29;
    v98 = v32;
    [v26 enumerateKeysAndObjectsUsingBlock:v96];
    v33 = [(TIKeyboardApplicationStateMonitor *)self activeAppBundleID];
    v34 = [v32 objectForKey:v33];

    if (v34)
    {
      [v34 arrayByAddingObject:v22];
    }

    else
    {
      v103 = v22;
      [MEMORY[0x277CBEA60] arrayWithObjects:&v103 count:1];
    }
    v35 = ;
    v36 = [(TIKeyboardApplicationStateMonitor *)self activeAppBundleID];
    [v32 setValue:v35 forKey:v36];

    v37 = [v32 copy];
    [(TIKeyboardApplicationStateMonitor *)self setApplicationStateDatabase:v37];

    goto LABEL_23;
  }

  v27 = MEMORY[0x277CBEAC0];
  v28 = [(TIKeyboardApplicationStateMonitor *)self databaseLocation];
  v26 = [v27 dictionaryWithContentsOfURL:v28];

  if (v26)
  {
    goto LABEL_19;
  }

  v73 = MEMORY[0x277CBEAC0];
  v102 = v22;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v102 count:1];
  v32 = [(TIKeyboardApplicationStateMonitor *)self activeAppBundleID];
  v31 = [v73 dictionaryWithObject:v26 forKey:v32];
  [(TIKeyboardApplicationStateMonitor *)self setApplicationStateDatabase:v31];
LABEL_23:

  [(TIKeyboardApplicationStateMonitor *)self threadUnsafeFlushChangesToDiskWithImmediacy:0];
  v38 = [(TIKeyboardApplicationStateMonitor *)self databaseInUseLock];
  [v38 unlock];

  v39 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [(TIKeyboardApplicationStateMonitor *)self setImSuppressingBundleIDs:v39];

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v40 = [(TIKeyboardApplicationStateMonitor *)self applicationStateDatabase];
  v41 = [v40 allKeys];

  obj = v41;
  v80 = [v41 countByEnumeratingWithState:&v92 objects:v101 count:16];
  if (v80)
  {
    v78 = self;
    v79 = *v93;
    do
    {
      for (i = 0; i != v80; ++i)
      {
        if (*v93 != v79)
        {
          objc_enumerationMutation(obj);
        }

        v43 = *(*(&v92 + 1) + 8 * i);
        v44 = [(TIKeyboardApplicationStateMonitor *)self applicationStateDatabase];
        v81 = v43;
        v45 = [v44 objectForKeyedSubscript:v43];

        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v46 = v45;
        v47 = [v46 countByEnumeratingWithState:&v88 objects:v100 count:16];
        if (v47)
        {
          v48 = v47;
          v82 = i;
          v49 = 0;
          v50 = *v89;
          v51 = 0.0;
          v52 = 0.0;
          do
          {
            v83 = v49;
            for (j = 0; j != v48; ++j)
            {
              if (*v89 != v50)
              {
                objc_enumerationMutation(v46);
              }

              v54 = *(*(&v88 + 1) + 8 * j);
              v55 = [v54 objectForKeyedSubscript:@"appTime"];
              [v55 doubleValue];
              v57 = v56;

              v86 = 0u;
              v87 = 0u;
              v84 = 0u;
              v85 = 0u;
              v58 = [v54 objectForKeyedSubscript:@"keyboardTimes"];
              v59 = [v58 countByEnumeratingWithState:&v84 objects:v99 count:16];
              if (v59)
              {
                v60 = v59;
                v61 = *v85;
                do
                {
                  for (k = 0; k != v60; ++k)
                  {
                    if (*v85 != v61)
                    {
                      objc_enumerationMutation(v58);
                    }

                    [*(*(&v84 + 1) + 8 * k) doubleValue];
                    v52 = v52 + v63;
                  }

                  v60 = [v58 countByEnumeratingWithState:&v84 objects:v99 count:16];
                }

                while (v60);
              }

              v51 = v51 + v57;
            }

            v49 = v83 + v48;
            v48 = [v46 countByEnumeratingWithState:&v88 objects:v100 count:16];
          }

          while (v48);
          v64 = v49;
          self = v78;
          i = v82;
        }

        else
        {
          v51 = 0.0;
          v52 = 0.0;
          v64 = 0.0;
        }

        if (v52 / v51 < self->_appActivityKeyboardUsageFractionThreshold && v51 / v64 > self->_appActivityTimeDurationThreshold)
        {
          v65 = [(TIKeyboardApplicationStateMonitor *)self imSuppressingBundleIDs];
          [v65 addObject:v81];
        }
      }

      v80 = [obj countByEnumeratingWithState:&v92 objects:v101 count:16];
    }

    while (v80);
  }

  [(TIKeyboardApplicationStateMonitor *)self setActiveAppBundleID:0];
  if (TICanLogMessageAtLevel_onceToken != -1)
  {
    dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
  }

  v21 = v76;
  if (TICanLogMessageAtLevel_logLevel >= 2)
  {
    v66 = TIOSLogFacility();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
    {
      v74 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Wrote out app usage data", "-[TIKeyboardApplicationStateMonitor logOutKeyboardActivity:]"];
      *buf = 138412290;
      v107 = v74;
      _os_log_debug_impl(&dword_22CA55000, v66, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  v67 = [(TIKeyboardApplicationStateMonitor *)self activeStateDataLock];
  v68 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:1.0];
  v69 = [v67 lockBeforeDate:v68];

  if (v69)
  {
    [(TIKeyboardApplicationStateMonitor *)self setActiveKeyboardStartTime:0.0];
    v70 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(TIKeyboardApplicationStateMonitor *)self setKeyboardUsageTimes:v70];

    v71 = [(TIKeyboardApplicationStateMonitor *)self activeStateDataLock];
    [v71 unlock];
  }

LABEL_57:

  v72 = *MEMORY[0x277D85DE8];
}

void __60__TIKeyboardApplicationStateMonitor_logOutKeyboardActivity___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v16 = a2;
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 objectForKey:@"startDate"];
        v14 = [v13 compare:*(a1 + 32)];

        if (v14 == 1)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  if ([v6 count])
  {
    [*(a1 + 40) setObject:v6 forKey:v16];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)startANewKeyboardActivity:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TIKeyboardApplicationStateMonitor *)self activeStateDataLock];
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:1.0];
  v7 = [v5 lockBeforeDate:v6];

  if (v7)
  {
    [(TIKeyboardApplicationStateMonitor *)self setActiveKeyboardStartTime:0.0];
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(TIKeyboardApplicationStateMonitor *)self setKeyboardUsageTimes:v8];

    v9 = [(TIKeyboardApplicationStateMonitor *)self activeStateDataLock];
    [v9 unlock];

    if (v4)
    {
      [(TIKeyboardApplicationStateMonitor *)self setActiveAppBundleID:v4];
      v10 = [(TIKeyboardApplicationStateMonitor *)self utcCalendar];
      v11 = [MEMORY[0x277CBEAA8] date];
      v12 = [v10 startOfDayForDate:v11];
      [(TIKeyboardApplicationStateMonitor *)self setActiveAppStartDate:v12];

      v13 = [(TIKeyboardApplicationStateMonitor *)self imSuppressingBundleIDs];
      if (v13)
      {
        v14 = v13;
        v15 = [(TIKeyboardApplicationStateMonitor *)self imSuppressingBundleIDs];
        v16 = [v15 containsObject:v4];

        if (v16)
        {
          if (TICanLogMessageAtLevel_onceToken != -1)
          {
            dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
          }

          if (TICanLogMessageAtLevel_logLevel)
          {
            v17 = TIOSLogFacility();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Notify delegate of keyboard unlikely app launch", "-[TIKeyboardApplicationStateMonitor startANewKeyboardActivity:]"];
              *buf = 138412290;
              v21 = v19;
              _os_log_debug_impl(&dword_22CA55000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }

          TIDispatchAsync();
        }
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __63__TIKeyboardApplicationStateMonitor_startANewKeyboardActivity___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 releaseInputManagers];
}

- (void)handleApplicationStateChange:(id)a3
{
  v62 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = TIGetCurrentTime();
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v7 = getSBApplicationStateDisplayIDKeySymbolLoc_ptr;
  v57 = getSBApplicationStateDisplayIDKeySymbolLoc_ptr;
  if (!getSBApplicationStateDisplayIDKeySymbolLoc_ptr)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v59 = __getSBApplicationStateDisplayIDKeySymbolLoc_block_invoke;
    v60 = &unk_278733760;
    v61 = &v54;
    __getSBApplicationStateDisplayIDKeySymbolLoc_block_invoke(&buf);
    v7 = v55[3];
  }

  _Block_object_dispose(&v54, 8);
  if (v7)
  {
    v7 = [v5 objectForKey:*v7];
    v3 = &unk_27D9ED000;
    if ([(TIKeyboardApplicationStateMonitor *)self ignoreAppExtension:v7])
    {
      if (TICanLogMessageAtLevel_onceToken == -1)
      {
        goto LABEL_6;
      }

      goto LABEL_111;
    }

    v10 = [v5 objectForKey:*MEMORY[0x277CEEE60]];
    v11 = [v5 objectForKey:*MEMORY[0x277CEEE70]];
    if ([v10 BOOLValue])
    {
      v12 = [v11 longLongValue] == 8 || objc_msgSend(v11, "longLongValue") == 32;
    }

    else
    {
      v12 = 0;
    }

    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v13 = TIOSLogFacility();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s New app state for (%@), isFront: %@, state: %@, isFrontmost: %d", "-[TIKeyboardApplicationStateMonitor handleApplicationStateChange:]", v7, v10, v11, v12];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v40;
        _os_log_debug_impl(&dword_22CA55000, v13, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
      }
    }

    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v14 = TIOSLogFacility();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v41 = MEMORY[0x277CCACA8];
        v42 = [(TIKeyboardApplicationStateMonitor *)self foregroundApps];
        v43 = [v41 stringWithFormat:@"%s Initial foreground apps: %@", "-[TIKeyboardApplicationStateMonitor handleApplicationStateChange:]", v42];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v43;
        _os_log_debug_impl(&dword_22CA55000, v14, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
      }
    }

    v15 = [(TIKeyboardApplicationStateMonitor *)self foregroundApps];
    v16 = [v15 count];

    if (!v16)
    {
LABEL_48:
      v23 = [(TIKeyboardApplicationStateMonitor *)self foregroundApps];
      v24 = [v23 count];

      if (v24 >= 2)
      {
        if (TICanLogMessageAtLevel_onceToken != -1)
        {
          dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
        }

        if (TICanLogMessageAtLevel_logLevel < 2)
        {
          v8 = 0;
LABEL_104:

          goto LABEL_105;
        }

        v25 = TIOSLogFacility();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Multiple apps foreground, no activity tracking will take place", "-[TIKeyboardApplicationStateMonitor handleApplicationStateChange:]"];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v44;
          _os_log_debug_impl(&dword_22CA55000, v25, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
        }

        v8 = 0;
LABEL_103:

        goto LABEL_104;
      }

      v26 = [(TIKeyboardApplicationStateMonitor *)self foregroundApps];
      v27 = [v26 count];

      if (v27 == 1)
      {
        if (TICanLogMessageAtLevel_onceToken != -1)
        {
          dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
        }

        if (TICanLogMessageAtLevel_logLevel >= 2)
        {
          v28 = TIOSLogFacility();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Foreground app set now empty", "-[TIKeyboardApplicationStateMonitor handleApplicationStateChange:]"];
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v48;
            _os_log_debug_impl(&dword_22CA55000, v28, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
          }
        }

        v29 = [(TIKeyboardApplicationStateMonitor *)self foregroundApps];
        [v29 removeAllObjects];
      }

      v30 = [(TIKeyboardApplicationStateMonitor *)self activeAppBundleID];
      v8 = v30;
      if (v30)
      {
        v31 = [v30 isEqualToString:v7];
        if (TICanLogMessageAtLevel_onceToken != -1)
        {
          dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
        }

        if (v31)
        {
          if (v12)
          {
            if (TICanLogMessageAtLevel_logLevel >= 2)
            {
              v32 = TIOSLogFacility();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
              {
                v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Foreground app remained foreground", "-[TIKeyboardApplicationStateMonitor handleApplicationStateChange:]"];
                LODWORD(buf) = 138412290;
                *(&buf + 4) = v33;
LABEL_109:
                _os_log_debug_impl(&dword_22CA55000, v32, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);

                goto LABEL_97;
              }

              goto LABEL_97;
            }

            goto LABEL_98;
          }

          if (TICanLogMessageAtLevel_logLevel >= 2)
          {
            v38 = TIOSLogFacility();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
            {
              v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Record activity for foreground app that is now background", "-[TIKeyboardApplicationStateMonitor handleApplicationStateChange:]"];
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v53;
              _os_log_debug_impl(&dword_22CA55000, v38, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
            }
          }

          [(TIKeyboardApplicationStateMonitor *)self logOutKeyboardActivity:v6];
        }

        else
        {
          if (!v12)
          {
            if (TICanLogMessageAtLevel_logLevel >= 2)
            {
              v32 = TIOSLogFacility();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
              {
                v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Discarding activity for background app", "-[TIKeyboardApplicationStateMonitor handleApplicationStateChange:]"];
                LODWORD(buf) = 138412290;
                *(&buf + 4) = v33;
                goto LABEL_109;
              }

              goto LABEL_97;
            }

            goto LABEL_98;
          }

          if (TICanLogMessageAtLevel_logLevel >= 2)
          {
            v35 = TIOSLogFacility();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
            {
              v52 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Record activity of app that went background directly", "-[TIKeyboardApplicationStateMonitor handleApplicationStateChange:]"];
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v52;
              _os_log_debug_impl(&dword_22CA55000, v35, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
            }
          }

          [(TIKeyboardApplicationStateMonitor *)self logOutKeyboardActivity:v6];
          v36 = [(TIKeyboardApplicationStateMonitor *)self foregroundApps];
          [v36 addObject:v8];

          v37 = [(TIKeyboardApplicationStateMonitor *)self foregroundApps];
          [v37 addObject:v7];
        }

        [(TIKeyboardApplicationStateMonitor *)self startANewKeyboardActivity:0];
        goto LABEL_98;
      }

      if (TICanLogMessageAtLevel_onceToken != -1)
      {
        dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
      }

      if (v12)
      {
        if (TICanLogMessageAtLevel_logLevel >= 2)
        {
          v34 = TIOSLogFacility();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Start recording activity for new foreground app", "-[TIKeyboardApplicationStateMonitor handleApplicationStateChange:]"];
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v51;
            _os_log_debug_impl(&dword_22CA55000, v34, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
          }
        }

        [(TIKeyboardApplicationStateMonitor *)self startANewKeyboardActivity:v7];
        [(TIKeyboardApplicationStateMonitor *)self setActiveAppStartTime:v6];
        goto LABEL_98;
      }

      if (TICanLogMessageAtLevel_logLevel >= 2)
      {
        v32 = TIOSLogFacility();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Discarding fresh activity for background app", "-[TIKeyboardApplicationStateMonitor handleApplicationStateChange:]"];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v33;
          goto LABEL_109;
        }

LABEL_97:
      }

LABEL_98:
      if (TICanLogMessageAtLevel_onceToken != -1)
      {
        dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
      }

      if (TICanLogMessageAtLevel_logLevel < 2)
      {
        goto LABEL_104;
      }

      v25 = TIOSLogFacility();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v45 = MEMORY[0x277CCACA8];
        v46 = [(TIKeyboardApplicationStateMonitor *)self foregroundApps];
        v47 = [v45 stringWithFormat:@"%s Current foreground apps: %@", "-[TIKeyboardApplicationStateMonitor handleApplicationStateChange:]", v46];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v47;
        _os_log_debug_impl(&dword_22CA55000, v25, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
      }

      goto LABEL_103;
    }

    v17 = [(TIKeyboardApplicationStateMonitor *)self foregroundApps];
    v18 = [v17 containsObject:v7];

    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (v18)
    {
      if (!v12)
      {
        if (TICanLogMessageAtLevel_logLevel >= 2)
        {
          v22 = TIOSLogFacility();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Multiple apps - Foreground app went away", "-[TIKeyboardApplicationStateMonitor handleApplicationStateChange:]"];
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v50;
            _os_log_debug_impl(&dword_22CA55000, v22, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
          }
        }

        v19 = [(TIKeyboardApplicationStateMonitor *)self foregroundApps];
        [v19 removeObject:v7];
        goto LABEL_47;
      }

      if (TICanLogMessageAtLevel_logLevel < 2)
      {
        goto LABEL_48;
      }

      v19 = TIOSLogFacility();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_47;
      }

      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Multiple apps - Foreground app still foreground", "-[TIKeyboardApplicationStateMonitor handleApplicationStateChange:]"];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v20;
    }

    else
    {
      if (v12)
      {
        if (TICanLogMessageAtLevel_logLevel >= 2)
        {
          v21 = TIOSLogFacility();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Multiple apps - Background app is now foreground", "-[TIKeyboardApplicationStateMonitor handleApplicationStateChange:]"];
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v49;
            _os_log_debug_impl(&dword_22CA55000, v21, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
          }
        }

        v19 = [(TIKeyboardApplicationStateMonitor *)self foregroundApps];
        [v19 addObject:v7];
        goto LABEL_47;
      }

      if (TICanLogMessageAtLevel_logLevel < 2)
      {
        goto LABEL_48;
      }

      v19 = TIOSLogFacility();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_47;
      }

      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Multiple apps - Background app still background", "-[TIKeyboardApplicationStateMonitor handleApplicationStateChange:]"];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v20;
    }

    _os_log_debug_impl(&dword_22CA55000, v19, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);

LABEL_47:
    goto LABEL_48;
  }

  dlerror();
  abort_report_np();
LABEL_111:
  dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
LABEL_6:
  if (v3[952] >= 2u)
  {
    v8 = TIOSLogFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Ignoring activity for bundle ID (%@)", "-[TIKeyboardApplicationStateMonitor handleApplicationStateChange:]", v7];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v9;
      _os_log_debug_impl(&dword_22CA55000, v8, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
    }

    goto LABEL_104;
  }

LABEL_105:

  v39 = *MEMORY[0x277D85DE8];
}

- (void)applicationUninstalled:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = [a3 object];
  v5 = [(TIKeyboardApplicationStateMonitor *)self databaseInUseLock];
  [v5 lock];

  v6 = [(TIKeyboardApplicationStateMonitor *)self applicationStateDatabase];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v8 = MEMORY[0x277CBEAC0];
    v9 = [(TIKeyboardApplicationStateMonitor *)self databaseLocation];
    v7 = [v8 dictionaryWithContentsOfURL:v9];

    if (!v7)
    {
      goto LABEL_18;
    }
  }

  v22 = v7;
  v10 = [v7 mutableCopy];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v23 = v4;
  v11 = v4;
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      v15 = 0;
      do
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v25 + 1) + 8 * v15);
        if (TICanLogMessageAtLevel_onceToken != -1)
        {
          dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
        }

        if (TICanLogMessageAtLevel_logLevel >= 2)
        {
          v17 = TIOSLogFacility();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Deleting data for bundle ID (%@)", "-[TIKeyboardApplicationStateMonitor applicationUninstalled:]", v16];
            *buf = 138412290;
            v30 = v24;
            _os_log_debug_impl(&dword_22CA55000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }

        [v10 removeObjectForKey:v16];
        v18 = [(TIKeyboardApplicationStateMonitor *)self imSuppressingBundleIDs];
        [v18 removeObject:v16];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v13);
  }

  v19 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v10];
  [(TIKeyboardApplicationStateMonitor *)self setApplicationStateDatabase:v19];

  [(TIKeyboardApplicationStateMonitor *)self threadUnsafeFlushChangesToDiskWithImmediacy:1];
  v4 = v23;
LABEL_18:
  v20 = [(TIKeyboardApplicationStateMonitor *)self databaseInUseLock];
  [v20 unlock];

  v21 = *MEMORY[0x277D85DE8];
}

- (TIKeyboardApplicationStateMonitor)initWithAppActivityTimeDurationThreshold:(double)a3 keyboardUsageFractionThreshold:(double)a4
{
  v35.receiver = self;
  v35.super_class = TIKeyboardApplicationStateMonitor;
  v6 = [(TIKeyboardApplicationStateMonitor *)&v35 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    keyboardUsageTimes = v6->_keyboardUsageTimes;
    v6->_keyboardUsageTimes = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    foregroundApps = v6->_foregroundApps;
    v6->_foregroundApps = v9;

    v6->_appActivityTimeDurationThreshold = a3;
    v6->_appActivityKeyboardUsageFractionThreshold = a4;
    activeAppBundleID = v6->_activeAppBundleID;
    v6->_activeAppBundleID = 0;

    activeAppStartDate = v6->_activeAppStartDate;
    v6->_activeAppStartDate = 0;

    v6->_activeAppStartTime = 0.0;
    applicationStateDatabase = v6->_applicationStateDatabase;
    v6->_applicationStateDatabase = 0;

    imSuppressingBundleIDs = v6->_imSuppressingBundleIDs;
    v6->_imSuppressingBundleIDs = 0;

    v15 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    activeStateDataLock = v6->_activeStateDataLock;
    v6->_activeStateDataLock = v15;

    v17 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    databaseInUseLock = v6->_databaseInUseLock;
    v6->_databaseInUseLock = v17;

    v19 = [MEMORY[0x277CBEAA8] date];
    timeOfLastFlushToDisk = v6->_timeOfLastFlushToDisk;
    v6->_timeOfLastFlushToDisk = v19;

    v21 = objc_alloc(MEMORY[0x277CBEA80]);
    v22 = [v21 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
    utcCalendar = v6->_utcCalendar;
    v6->_utcCalendar = v22;

    v24 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
    [(NSCalendar *)v6->_utcCalendar setTimeZone:v24];

    v25 = objc_alloc_init(MEMORY[0x277CEEE90]);
    applicationStateMonitor = v6->_applicationStateMonitor;
    v6->_applicationStateMonitor = v25;

    objc_initWeak(&location, v6);
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __109__TIKeyboardApplicationStateMonitor_initWithAppActivityTimeDurationThreshold_keyboardUsageFractionThreshold___block_invoke;
    v32 = &unk_278732270;
    objc_copyWeak(&v33, &location);
    [(BKSApplicationStateMonitor *)v6->_applicationStateMonitor setHandler:&v29];
    v27 = [MEMORY[0x277CCAB98] defaultCenter];
    [v27 addObserver:v6 selector:sel_applicationUninstalled_ name:@"TIApplicationUnregisteredNotification_Private" object:0];

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __109__TIKeyboardApplicationStateMonitor_initWithAppActivityTimeDurationThreshold_keyboardUsageFractionThreshold___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleApplicationStateChange:v3];
}

@end
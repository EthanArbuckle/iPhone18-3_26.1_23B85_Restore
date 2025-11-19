@interface AppStateMonitor
+ (BOOL)hasAnyForegroundApp;
+ (id)foregroundAppKeys;
+ (id)getAppsWithStates;
+ (id)sharedInstance;
- (AppStateMonitor)init;
- (BOOL)_trackerSetHasForeground:(id)a3;
- (BOOL)hasAnyForegroundApp;
- (BOOL)identifierShouldBeIgnored:(id)a3;
- (BOOL)rbsProcessStateToForeground:(id)a3;
- (id)foregroundAppKeys;
- (id)getAppsWithStates;
- (id)trackerForPid:(int)a3;
- (void)_removeStateTracker:(id)a3 hadForeground:(BOOL *)a4 hasForeground:(BOOL *)a5;
- (void)enable;
- (void)handleStateUpdate:(id)a3 forProcess:(id)a4;
@end

@implementation AppStateMonitor

+ (id)getAppsWithStates
{
  v2 = [a1 sharedInstance];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 queue];

    if (v4)
    {
      v4 = [v3 getAppsWithStates];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __36__AppStateMonitor_getAppsWithStates__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    v10 = &unk_2847EF5C0;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(v6);
      }

      if ([*(*(&v13 + 1) + 8 * v11) foreground])
      {
        break;
      }

      if (v8 == ++v11)
      {
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        v10 = &unk_2847EF5D8;
        break;
      }
    }
  }

  else
  {
    v10 = &unk_2847EF5D8;
  }

  [*(a1 + 32) setObject:v10 forKey:v5];
  v12 = *MEMORY[0x277D85DE8];
}

- (id)getAppsWithStates
{
  v3 = self->_appBundlesMonitored;
  objc_sync_enter(v3);
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  appBundlesMonitored = self->_appBundlesMonitored;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __36__AppStateMonitor_getAppsWithStates__block_invoke;
  v8[3] = &unk_27898B7F0;
  v6 = v4;
  v9 = v6;
  [(NSMutableDictionary *)appBundlesMonitored enumerateKeysAndObjectsUsingBlock:v8];

  objc_sync_exit(v3);

  return v6;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__AppStateMonitor_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_pred_10 != -1)
  {
    dispatch_once(&sharedInstance_pred_10, block);
  }

  v2 = sharedInstance_sharedInstance_10;

  return v2;
}

+ (id)foregroundAppKeys
{
  v2 = [a1 sharedInstance];
  v3 = [v2 foregroundAppKeys];

  return v3;
}

- (id)foregroundAppKeys
{
  v3 = self->_appBundlesMonitored;
  objc_sync_enter(v3);
  v4 = [(NSMutableDictionary *)self->_appBundlesMonitored keysOfEntriesPassingTest:&__block_literal_global_8];
  objc_sync_exit(v3);

  return v4;
}

uint64_t __36__AppStateMonitor_foregroundAppKeys__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v9 + 1) + 8 * i) foreground])
        {
          v4 = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

+ (BOOL)hasAnyForegroundApp
{
  v2 = [a1 sharedInstance];
  v3 = [v2 hasAnyForegroundApp];

  return v3;
}

- (BOOL)hasAnyForegroundApp
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = procStateLogHandle;
  if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_DEBUG))
  {
    hasAnyForegroundApp = self->_hasAnyForegroundApp;
    v7[0] = 67109120;
    v7[1] = hasAnyForegroundApp;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "Check for hasAnyForegroundApp returns %d", v7, 8u);
  }

  result = self->_hasAnyForegroundApp;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)trackerForPid:(int)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__2;
  v12 = __Block_byref_object_dispose__2;
  v13 = 0;
  appBundlesMonitored = self->_appBundlesMonitored;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__AppStateMonitor_trackerForPid___block_invoke;
  v6[3] = &unk_27898B818;
  v7 = a3;
  v6[4] = &v8;
  [(NSMutableDictionary *)appBundlesMonitored enumerateKeysAndObjectsUsingBlock:v6];
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

void __33__AppStateMonitor_trackerForPid___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 pid] == *(a1 + 40))
        {
          objc_storeStrong((*(*(a1 + 32) + 8) + 40), v11);
          *a4 = 1;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)_trackerSetHasForeground:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v5);
          }

          if ([*(*(&v11 + 1) + 8 * i) foreground])
          {
            LOBYTE(v6) = 1;
            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)_removeStateTracker:(id)a3 hadForeground:(BOOL *)a4 hasForeground:(BOOL *)a5
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [v8 identifier];
  if (v9)
  {
    v10 = [(NSMutableDictionary *)self->_appBundlesMonitored objectForKeyedSubscript:v9];
    if (v10)
    {
      if (a4)
      {
        *a4 = [(AppStateMonitor *)self _trackerSetHasForeground:v10];
      }

      [v10 removeObject:v8];
      if (a5)
      {
        *a5 = [(AppStateMonitor *)self _trackerSetHasForeground:v10];
      }

      if (![v10 count])
      {
        [(NSMutableDictionary *)self->_appBundlesMonitored removeObjectForKey:v9];
      }
    }

    else
    {
      v12 = procStateLogHandle;
      if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_ERROR))
      {
        v14 = 138412290;
        v15 = v9;
        _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_ERROR, "_removeStateTracker can't find trackers for bundle name %@", &v14, 0xCu);
      }
    }
  }

  else
  {
    v11 = procStateLogHandle;
    if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = v8;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "_removeStateTracker can't get bundle name for %@", &v14, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)identifierShouldBeIgnored:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (identifierShouldBeIgnored__onceToken != -1)
  {
    [AppStateMonitor identifierShouldBeIgnored:];
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = [identifierShouldBeIgnored__kIdentifiersToIgnore containsObject:v4];
LABEL_6:

  return v5;
}

void __45__AppStateMonitor_identifierShouldBeIgnored___block_invoke()
{
  v0 = identifierShouldBeIgnored__kIdentifiersToIgnore;
  identifierShouldBeIgnored__kIdentifiersToIgnore = &unk_2847EEB38;
}

- (void)handleStateUpdate:(id)a3 forProcess:(id)a4
{
  v82 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 identity];
  v9 = [v8 embeddedApplicationIdentifier];
  if (!v9)
  {
    v9 = [v8 xpcServiceIdentifier];
    if (!v9)
    {
      if (![v7 hasConsistentLaunchdJob] || (objc_msgSend(v7, "consistentJobLabel"), (v9 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v10 = [v7 bundle];
        v9 = [v10 identifier];
      }
    }
  }

  if ([(AppStateMonitor *)self identifierShouldBeIgnored:v9])
  {
    v11 = procStateLogHandle;
    if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      *v81 = v9;
      *&v81[8] = 2112;
      *&v81[10] = v6;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEBUG, "%@ incorrectly identified as app with update %@, ignoring", buf, 0x16u);
    }

LABEL_57:

    goto LABEL_58;
  }

  if (v9)
  {
    v75 = 0;
    v12 = [v7 pid];
    v70 = pid_to_uuid(v12);
    v13 = [v6 state];
    v14 = [(AppStateMonitor *)self rbsProcessStateToForeground:v13];

    obj = self->_appBundlesMonitored;
    objc_sync_enter(obj);
    hasAnyForegroundApp = self->_hasAnyForegroundApp;
    v73 = [(AppStateMonitor *)self trackerForPid:v12];
    v15 = [v6 state];
    if ([v15 taskState] == 1)
    {
    }

    else
    {
      v21 = [v6 state];
      v22 = [v21 taskState];

      if (v22 != 3)
      {
        v30 = [v6 state];
        v31 = [v30 taskState];

        if (!v31)
        {
          v60 = procStateLogHandle;
          if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *v81 = v73;
            _os_log_impl(&dword_23255B000, v60, OS_LOG_TYPE_ERROR, "Process state is unknown %@", buf, 0xCu);
          }

          goto LABEL_24;
        }

        if (v73)
        {
          v32 = [v73 uuid];
          v33 = [v32 isEqual:v70];

          if ((v33 & 1) == 0)
          {
            v61 = procStateLogHandle;
            if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
            {
              v62 = [v73 uuid];
              *buf = 67109634;
              *v81 = v12;
              *&v81[4] = 2112;
              *&v81[6] = v70;
              *&v81[14] = 2112;
              *&v81[16] = v62;
              _os_log_impl(&dword_23255B000, v61, OS_LOG_TYPE_ERROR, "State change notification for pid %d has uuid %@, not matching previous %@", buf, 0x1Cu);
            }

            goto LABEL_24;
          }

          v34 = [v73 identifier];
          v35 = [v34 isEqualToString:v9];

          if (v35)
          {
            v36 = [v73 identifier];

            v37 = [(NSMutableDictionary *)self->_appBundlesMonitored objectForKeyedSubscript:v36];
            HIBYTE(v75) = [(AppStateMonitor *)self _trackerSetHasForeground:v37];
            [v73 setForeground:v14];
            LOBYTE(v75) = v14;

            v72 = 0;
            v27 = 0;
            v9 = v36;
            goto LABEL_25;
          }

          v63 = [v73 identifier];
          v64 = procStateLogHandle;
          if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109634;
            *v81 = v12;
            *&v81[4] = 2112;
            *&v81[6] = v9;
            *&v81[14] = 2112;
            *&v81[16] = v63;
            _os_log_impl(&dword_23255B000, v64, OS_LOG_TYPE_DEFAULT, "State change notification for pid %d now has bundle %@, not matching previous %@", buf, 0x1Cu);
          }

          buf[0] = 0;
          v74 = 0;
          [(AppStateMonitor *)self _removeStateTracker:v73 hadForeground:buf hasForeground:&v74];
          if (buf[0] == v74 || !buf[0])
          {
            v72 = 0;
            v27 = 0;
          }

          else
          {
            v27 = v63;
            v72 = v70;
          }
        }

        else
        {
          v72 = 0;
          v27 = 0;
        }

        v65 = objc_alloc_init(AppStateTracker);

        if (v65)
        {
          [(AppStateTracker *)v65 setIdentifier:v9];
          [(AppStateTracker *)v65 setUuid:v70];
          [(AppStateTracker *)v65 setPid:v12];
          [(AppStateTracker *)v65 setForeground:v14];
          v66 = [(NSMutableDictionary *)self->_appBundlesMonitored objectForKeyedSubscript:v9];
          if (v66)
          {
            HIBYTE(v75) = [(AppStateMonitor *)self _trackerSetHasForeground:v66];
          }

          else
          {
            v66 = objc_alloc_init(MEMORY[0x277CBEB58]);
            [(NSMutableDictionary *)self->_appBundlesMonitored setObject:v66 forKey:v9];
          }

          [v66 addObject:v65];
          LOBYTE(v75) = [(AppStateMonitor *)self _trackerSetHasForeground:v66];

          v73 = v65;
        }

        else
        {
          v73 = 0;
        }

        goto LABEL_25;
      }
    }

    if (v73)
    {
      v23 = [v73 identifier];

      [(AppStateMonitor *)self _removeStateTracker:v73 hadForeground:&v75 + 1 hasForeground:&v75];
      v24 = procStateLogHandle;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v25 = [v6 state];
        v26 = [v25 taskState];
        *buf = 67109634;
        *v81 = v26;
        *&v81[4] = 1024;
        *&v81[6] = v12;
        *&v81[10] = 2112;
        *&v81[12] = v23;
        _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEBUG, "Removed state tracker with taskState %u, pid %d, for %@", buf, 0x18u);
      }

      v72 = 0;
      v27 = 0;
      v9 = v23;
LABEL_25:
      v28 = v75;
      if (HIBYTE(v75) == v75)
      {
        v71 = 0;
      }

      else
      {
        v29 = v9;
        if (v28)
        {
          v71 = v70;
          self->_hasAnyForegroundApp = 1;
LABEL_38:
          v67 = self->_hasAnyForegroundApp;
          v40 = +[AppStateMonitor getAppsWithStates];
          if (([(NSMutableDictionary *)self->_appsWithStates isEqualToDictionary:v40]& 1) == 0)
          {
            v41 = [v40 mutableCopy];
            appsWithStates = self->_appsWithStates;
            self->_appsWithStates = v41;

            v43 = procStateLogHandle;
            if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_INFO))
            {
              v44 = self->_appsWithStates;
              *buf = 138543362;
              *v81 = v44;
              _os_log_impl(&dword_23255B000, v43, OS_LOG_TYPE_INFO, "Report apps state change: %{public}@", buf, 0xCu);
            }

            v45 = self->_appsWithStates;
            v78 = @"kAppStateKeyAppsActivityDetail";
            v79 = v45;
            v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
            v47 = [MEMORY[0x277CCAB98] defaultCenter];
            [v47 postNotificationName:@"kAppStateStatsNotificationAppsWithStatesChanged" object:self userInfo:v46];
          }

          objc_sync_exit(obj);
          if (v29)
          {
            v48 = procStateLogHandle;
            if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *v81 = v29;
              _os_log_impl(&dword_23255B000, v48, OS_LOG_TYPE_INFO, "Report state change to foreground for %@", buf, 0xCu);
            }

            v49 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v50 = [MEMORY[0x277CCABB0] numberWithBool:1];
            [v49 setObject:v50 forKeyedSubscript:@"kAppStateKeyForegroundActivityState"];

            [v49 setObject:v29 forKeyedSubscript:@"kAppStateKeyForegroundActivityBundleName"];
            if (v71)
            {
              [v49 setObject:v71 forKeyedSubscript:@"kAppStateKeyForegroundActivityBundleUUID"];
            }

            v51 = [MEMORY[0x277CCAB98] defaultCenter];
            [v51 postNotificationName:@"kAppStateStatsNotificationAppForegroundStateChanged" object:self userInfo:v49];
          }

          if (v27)
          {
            v52 = procStateLogHandle;
            if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *v81 = v27;
              _os_log_impl(&dword_23255B000, v52, OS_LOG_TYPE_INFO, "Report state change to background for %@", buf, 0xCu);
            }

            v53 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v54 = [MEMORY[0x277CCABB0] numberWithBool:0];
            [v53 setObject:v54 forKeyedSubscript:@"kAppStateKeyForegroundActivityState"];

            [v53 setObject:v27 forKeyedSubscript:@"kAppStateKeyForegroundActivityBundleName"];
            if (v72)
            {
              [v53 setObject:v72 forKeyedSubscript:@"kAppStateKeyForegroundActivityBundleUUID"];
            }

            v55 = [MEMORY[0x277CCAB98] defaultCenter];
            [v55 postNotificationName:@"kAppStateStatsNotificationAppForegroundStateChanged" object:self userInfo:v53];
          }

          if (hasAnyForegroundApp != v67)
          {
            v76 = @"kAppStateKeyForegroundActivityState";
            v56 = [MEMORY[0x277CCABB0] numberWithBool:?];
            v77 = v56;
            v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v77 forKeys:&v76 count:1];

            v58 = [MEMORY[0x277CCAB98] defaultCenter];
            [v58 postNotificationName:@"kAppStateNotificationForegroundActivity" object:self userInfo:v57];
          }

          goto LABEL_57;
        }

        v38 = v70;
        v39 = [(AppStateMonitor *)self foregroundAppKeys];
        if (![v39 count])
        {
          self->_hasAnyForegroundApp = 0;
        }

        v71 = 0;
        v72 = v38;
        v27 = v29;
      }

      v29 = 0;
      goto LABEL_38;
    }

    v73 = 0;
LABEL_24:
    v72 = 0;
    v27 = 0;
    goto LABEL_25;
  }

  v16 = procStateLogHandle;
  if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    *v81 = v6;
    *&v81[8] = 2112;
    *&v81[10] = v7;
    _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_ERROR, "handleStateUpdate unable to determine app identifier, update is %@ process %@", buf, 0x16u);
  }

  v9 = +[SystemSettingsRelay defaultRelay];
  if (![v9 autoBugCaptureEnabled])
  {
    goto LABEL_57;
  }

  v17 = +[SystemProperties sharedInstance];
  v18 = [v17 internalBuild];

  if (v18)
  {
    v19 = objc_alloc_init(MEMORY[0x277D6AFC8]);
    v9 = v19;
    if (v19)
    {
      v20 = [v19 signatureWithDomain:*MEMORY[0x277D6B020] type:*MEMORY[0x277D6B220] subType:@"AppState handling" subtypeContext:@"Unable to retrieve identifier" detectedProcess:@"symptomsd" triggerThresholdValues:0];
      [v9 snapshotWithSignature:v20 duration:0 events:0 payload:0 actions:&__block_literal_global_142 reply:0.0];
    }

    goto LABEL_57;
  }

LABEL_58:

  v59 = *MEMORY[0x277D85DE8];
}

void __48__AppStateMonitor_handleStateUpdate_forProcess___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = procStateLogHandle;
  if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_INFO, "handleStateUpdate ABC case for unable to retrieve identifier has response: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)rbsProcessStateToForeground:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 taskState];
  if (v4 == 4 || v4 == 2)
  {
    v6 = [v3 endowmentNamespaces];
    v7 = [v6 containsObject:@"com.apple.frontboard.visibility"];
  }

  else
  {
    v7 = 0;
  }

  v8 = procStateLogHandle;
  if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v9 = v8;
    v10 = [v3 taskState];
    v11 = [v3 process];
    v14[0] = 67109376;
    v14[1] = v10;
    v15 = 1024;
    v16 = [v11 pid];
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "AppStateMonitor RBS taskState %u, pid %d", v14, 0xEu);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

- (AppStateMonitor)init
{
  v8.receiver = self;
  v8.super_class = AppStateMonitor;
  v2 = [(AppStateMonitor *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    appBundlesMonitored = v2->_appBundlesMonitored;
    v2->_appBundlesMonitored = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    appsWithStates = v2->_appsWithStates;
    v2->_appsWithStates = v5;

    if (!v2->_appBundlesMonitored || !v2->_appsWithStates)
    {

      return 0;
    }
  }

  return v2;
}

- (void)enable
{
  p_queue = &self->_queue;
  if (!self->_queue)
  {
    v4 = procStateLogHandle;
    if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_ERROR, "AppStateMonitor enable with no queue set, use default queue", v8, 2u);
    }

    objc_storeStrong(p_queue, MEMORY[0x277D85CD0]);
  }

  v5 = [[AppEventListener alloc] initWithQueue:self->_queue];
  appEventListener = self->_appEventListener;
  self->_appEventListener = v5;

  v7 = self->_appEventListener;
  if (v7)
  {
    [(AppEventListener *)v7 setAppStateDelegate:self];
  }
}

uint64_t __33__AppStateMonitor_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sharedInstance_10 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

@end
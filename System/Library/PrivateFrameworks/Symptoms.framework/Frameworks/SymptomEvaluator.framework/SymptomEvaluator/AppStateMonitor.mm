@interface AppStateMonitor
+ (BOOL)hasAnyForegroundApp;
+ (id)foregroundAppKeys;
+ (id)getAppsWithStates;
+ (id)sharedInstance;
- (AppStateMonitor)init;
- (BOOL)_trackerSetHasForeground:(id)foreground;
- (BOOL)hasAnyForegroundApp;
- (BOOL)identifierShouldBeIgnored:(id)ignored;
- (BOOL)rbsProcessStateToForeground:(id)foreground;
- (id)foregroundAppKeys;
- (id)getAppsWithStates;
- (id)trackerForPid:(int)pid;
- (void)_removeStateTracker:(id)tracker hadForeground:(BOOL *)foreground hasForeground:(BOOL *)hasForeground;
- (void)enable;
- (void)handleStateUpdate:(id)update forProcess:(id)process;
@end

@implementation AppStateMonitor

+ (id)getAppsWithStates
{
  sharedInstance = [self sharedInstance];
  v3 = sharedInstance;
  if (sharedInstance)
  {
    queue = [sharedInstance queue];

    if (queue)
    {
      queue = [v3 getAppsWithStates];
    }
  }

  else
  {
    queue = 0;
  }

  return queue;
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
  block[4] = self;
  if (sharedInstance_pred_10 != -1)
  {
    dispatch_once(&sharedInstance_pred_10, block);
  }

  v2 = sharedInstance_sharedInstance_10;

  return v2;
}

+ (id)foregroundAppKeys
{
  sharedInstance = [self sharedInstance];
  foregroundAppKeys = [sharedInstance foregroundAppKeys];

  return foregroundAppKeys;
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
  sharedInstance = [self sharedInstance];
  hasAnyForegroundApp = [sharedInstance hasAnyForegroundApp];

  return hasAnyForegroundApp;
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

- (id)trackerForPid:(int)pid
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
  pidCopy = pid;
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

- (BOOL)_trackerSetHasForeground:(id)foreground
{
  v16 = *MEMORY[0x277D85DE8];
  foregroundCopy = foreground;
  v4 = foregroundCopy;
  if (foregroundCopy)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = foregroundCopy;
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

- (void)_removeStateTracker:(id)tracker hadForeground:(BOOL *)foreground hasForeground:(BOOL *)hasForeground
{
  v16 = *MEMORY[0x277D85DE8];
  trackerCopy = tracker;
  identifier = [trackerCopy identifier];
  if (identifier)
  {
    v10 = [(NSMutableDictionary *)self->_appBundlesMonitored objectForKeyedSubscript:identifier];
    if (v10)
    {
      if (foreground)
      {
        *foreground = [(AppStateMonitor *)self _trackerSetHasForeground:v10];
      }

      [v10 removeObject:trackerCopy];
      if (hasForeground)
      {
        *hasForeground = [(AppStateMonitor *)self _trackerSetHasForeground:v10];
      }

      if (![v10 count])
      {
        [(NSMutableDictionary *)self->_appBundlesMonitored removeObjectForKey:identifier];
      }
    }

    else
    {
      v12 = procStateLogHandle;
      if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_ERROR))
      {
        v14 = 138412290;
        v15 = identifier;
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
      v15 = trackerCopy;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "_removeStateTracker can't get bundle name for %@", &v14, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)identifierShouldBeIgnored:(id)ignored
{
  ignoredCopy = ignored;
  v4 = ignoredCopy;
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

  if (!ignoredCopy)
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

- (void)handleStateUpdate:(id)update forProcess:(id)process
{
  v82 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  processCopy = process;
  identity = [processCopy identity];
  embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
  if (!embeddedApplicationIdentifier)
  {
    embeddedApplicationIdentifier = [identity xpcServiceIdentifier];
    if (!embeddedApplicationIdentifier)
    {
      if (![processCopy hasConsistentLaunchdJob] || (objc_msgSend(processCopy, "consistentJobLabel"), (embeddedApplicationIdentifier = objc_claimAutoreleasedReturnValue()) == 0))
      {
        bundle = [processCopy bundle];
        embeddedApplicationIdentifier = [bundle identifier];
      }
    }
  }

  if ([(AppStateMonitor *)self identifierShouldBeIgnored:embeddedApplicationIdentifier])
  {
    v11 = procStateLogHandle;
    if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      *v81 = embeddedApplicationIdentifier;
      *&v81[8] = 2112;
      *&v81[10] = updateCopy;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEBUG, "%@ incorrectly identified as app with update %@, ignoring", buf, 0x16u);
    }

LABEL_57:

    goto LABEL_58;
  }

  if (embeddedApplicationIdentifier)
  {
    v75 = 0;
    v12 = [processCopy pid];
    v70 = pid_to_uuid(v12);
    state = [updateCopy state];
    v14 = [(AppStateMonitor *)self rbsProcessStateToForeground:state];

    obj = self->_appBundlesMonitored;
    objc_sync_enter(obj);
    hasAnyForegroundApp = self->_hasAnyForegroundApp;
    v73 = [(AppStateMonitor *)self trackerForPid:v12];
    state2 = [updateCopy state];
    if ([state2 taskState] == 1)
    {
    }

    else
    {
      state3 = [updateCopy state];
      taskState = [state3 taskState];

      if (taskState != 3)
      {
        state4 = [updateCopy state];
        taskState2 = [state4 taskState];

        if (!taskState2)
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
          uuid = [v73 uuid];
          v33 = [uuid isEqual:v70];

          if ((v33 & 1) == 0)
          {
            v61 = procStateLogHandle;
            if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
            {
              uuid2 = [v73 uuid];
              *buf = 67109634;
              *v81 = v12;
              *&v81[4] = 2112;
              *&v81[6] = v70;
              *&v81[14] = 2112;
              *&v81[16] = uuid2;
              _os_log_impl(&dword_23255B000, v61, OS_LOG_TYPE_ERROR, "State change notification for pid %d has uuid %@, not matching previous %@", buf, 0x1Cu);
            }

            goto LABEL_24;
          }

          identifier = [v73 identifier];
          v35 = [identifier isEqualToString:embeddedApplicationIdentifier];

          if (v35)
          {
            identifier2 = [v73 identifier];

            v37 = [(NSMutableDictionary *)self->_appBundlesMonitored objectForKeyedSubscript:identifier2];
            HIBYTE(v75) = [(AppStateMonitor *)self _trackerSetHasForeground:v37];
            [v73 setForeground:v14];
            LOBYTE(v75) = v14;

            v72 = 0;
            v27 = 0;
            embeddedApplicationIdentifier = identifier2;
            goto LABEL_25;
          }

          identifier3 = [v73 identifier];
          v64 = procStateLogHandle;
          if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109634;
            *v81 = v12;
            *&v81[4] = 2112;
            *&v81[6] = embeddedApplicationIdentifier;
            *&v81[14] = 2112;
            *&v81[16] = identifier3;
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
            v27 = identifier3;
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
          [(AppStateTracker *)v65 setIdentifier:embeddedApplicationIdentifier];
          [(AppStateTracker *)v65 setUuid:v70];
          [(AppStateTracker *)v65 setPid:v12];
          [(AppStateTracker *)v65 setForeground:v14];
          v66 = [(NSMutableDictionary *)self->_appBundlesMonitored objectForKeyedSubscript:embeddedApplicationIdentifier];
          if (v66)
          {
            HIBYTE(v75) = [(AppStateMonitor *)self _trackerSetHasForeground:v66];
          }

          else
          {
            v66 = objc_alloc_init(MEMORY[0x277CBEB58]);
            [(NSMutableDictionary *)self->_appBundlesMonitored setObject:v66 forKey:embeddedApplicationIdentifier];
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
      identifier4 = [v73 identifier];

      [(AppStateMonitor *)self _removeStateTracker:v73 hadForeground:&v75 + 1 hasForeground:&v75];
      v24 = procStateLogHandle;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        state5 = [updateCopy state];
        taskState3 = [state5 taskState];
        *buf = 67109634;
        *v81 = taskState3;
        *&v81[4] = 1024;
        *&v81[6] = v12;
        *&v81[10] = 2112;
        *&v81[12] = identifier4;
        _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEBUG, "Removed state tracker with taskState %u, pid %d, for %@", buf, 0x18u);
      }

      v72 = 0;
      v27 = 0;
      embeddedApplicationIdentifier = identifier4;
LABEL_25:
      v28 = v75;
      if (HIBYTE(v75) == v75)
      {
        v71 = 0;
      }

      else
      {
        v29 = embeddedApplicationIdentifier;
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
            defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
            [defaultCenter postNotificationName:@"kAppStateStatsNotificationAppsWithStatesChanged" object:self userInfo:v46];
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

            defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
            [defaultCenter2 postNotificationName:@"kAppStateStatsNotificationAppForegroundStateChanged" object:self userInfo:v49];
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

            defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
            [defaultCenter3 postNotificationName:@"kAppStateStatsNotificationAppForegroundStateChanged" object:self userInfo:v53];
          }

          if (hasAnyForegroundApp != v67)
          {
            v76 = @"kAppStateKeyForegroundActivityState";
            v56 = [MEMORY[0x277CCABB0] numberWithBool:?];
            v77 = v56;
            v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v77 forKeys:&v76 count:1];

            defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
            [defaultCenter4 postNotificationName:@"kAppStateNotificationForegroundActivity" object:self userInfo:v57];
          }

          goto LABEL_57;
        }

        v38 = v70;
        foregroundAppKeys = [(AppStateMonitor *)self foregroundAppKeys];
        if (![foregroundAppKeys count])
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
    *v81 = updateCopy;
    *&v81[8] = 2112;
    *&v81[10] = processCopy;
    _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_ERROR, "handleStateUpdate unable to determine app identifier, update is %@ process %@", buf, 0x16u);
  }

  embeddedApplicationIdentifier = +[SystemSettingsRelay defaultRelay];
  if (![embeddedApplicationIdentifier autoBugCaptureEnabled])
  {
    goto LABEL_57;
  }

  v17 = +[SystemProperties sharedInstance];
  internalBuild = [v17 internalBuild];

  if (internalBuild)
  {
    v19 = objc_alloc_init(MEMORY[0x277D6AFC8]);
    embeddedApplicationIdentifier = v19;
    if (v19)
    {
      v20 = [v19 signatureWithDomain:*MEMORY[0x277D6B020] type:*MEMORY[0x277D6B220] subType:@"AppState handling" subtypeContext:@"Unable to retrieve identifier" detectedProcess:@"symptomsd" triggerThresholdValues:0];
      [embeddedApplicationIdentifier snapshotWithSignature:v20 duration:0 events:0 payload:0 actions:&__block_literal_global_142 reply:0.0];
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

- (BOOL)rbsProcessStateToForeground:(id)foreground
{
  v17 = *MEMORY[0x277D85DE8];
  foregroundCopy = foreground;
  taskState = [foregroundCopy taskState];
  if (taskState == 4 || taskState == 2)
  {
    endowmentNamespaces = [foregroundCopy endowmentNamespaces];
    v7 = [endowmentNamespaces containsObject:@"com.apple.frontboard.visibility"];
  }

  else
  {
    v7 = 0;
  }

  v8 = procStateLogHandle;
  if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v9 = v8;
    taskState2 = [foregroundCopy taskState];
    process = [foregroundCopy process];
    v14[0] = 67109376;
    v14[1] = taskState2;
    v15 = 1024;
    v16 = [process pid];
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
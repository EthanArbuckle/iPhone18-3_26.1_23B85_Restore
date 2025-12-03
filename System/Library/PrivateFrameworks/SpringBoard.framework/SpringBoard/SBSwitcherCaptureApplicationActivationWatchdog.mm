@interface SBSwitcherCaptureApplicationActivationWatchdog
- (SBSwitcherCaptureApplicationActivationWatchdog)initWithDelegate:(id)delegate;
- (id)_addEntryForEntity:(id)entity;
- (id)_entryForEntity:(id)entity;
- (id)_entryForMonitor:(id)monitor;
- (id)_entryForSceneHandle:(id)handle;
- (void)_beginMonitoringAppRepresentedByEntity:(id)entity;
- (void)_endMonitoringAppRepresentedByEntity:(id)entity;
- (void)_removeEntryForEntity:(id)entity;
- (void)captureApplicationMonitor:(id)monitor hasMetLaunchRequirements:(BOOL)requirements unmetReason:(id)reason;
- (void)foregroundWorkspaceEntitiesUpdatedTo:(id)to;
- (void)sceneHandle:(id)handle didCreateScene:(id)scene;
- (void)sceneHandle:(id)handle replacedWithSceneHandle:(id)sceneHandle;
@end

@implementation SBSwitcherCaptureApplicationActivationWatchdog

- (SBSwitcherCaptureApplicationActivationWatchdog)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = SBSwitcherCaptureApplicationActivationWatchdog;
  v5 = [(SBSwitcherCaptureApplicationActivationWatchdog *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCAA50] hashTableWithOptions:512];
    watchdogEntries = v5->_watchdogEntries;
    v5->_watchdogEntries = v6;

    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v5;
}

- (void)foregroundWorkspaceEntitiesUpdatedTo:(id)to
{
  v57 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v32 = [toCopy mutableCopy];
  v5 = [(NSSet *)self->_lastEntitiesUpdate mutableCopy];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v6 = toCopy;
  v7 = [v6 countByEnumeratingWithState:&v49 objects:v56 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v50;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v50 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v49 + 1) + 8 * i);
        lastEntitiesUpdate = self->_lastEntitiesUpdate;
        v47[0] = MEMORY[0x277D85DD0];
        v47[1] = 3221225472;
        v47[2] = __87__SBSwitcherCaptureApplicationActivationWatchdog_foregroundWorkspaceEntitiesUpdatedTo___block_invoke;
        v47[3] = &unk_2783BD948;
        v47[4] = v11;
        v48 = v32;
        [(NSSet *)lastEntitiesUpdate enumerateObjectsUsingBlock:v47];
      }

      v8 = [v6 countByEnumeratingWithState:&v49 objects:v56 count:16];
    }

    while (v8);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v13 = self->_lastEntitiesUpdate;
  v14 = [(NSSet *)v13 countByEnumeratingWithState:&v43 objects:v55 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v44;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v44 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v43 + 1) + 8 * j);
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __87__SBSwitcherCaptureApplicationActivationWatchdog_foregroundWorkspaceEntitiesUpdatedTo___block_invoke_2;
        v41[3] = &unk_2783BD948;
        v41[4] = v18;
        v42 = v5;
        [v6 enumerateObjectsUsingBlock:v41];
      }

      v15 = [(NSSet *)v13 countByEnumeratingWithState:&v43 objects:v55 count:16];
    }

    while (v15);
  }

  v19 = [v6 copy];
  v20 = self->_lastEntitiesUpdate;
  self->_lastEntitiesUpdate = v19;

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v21 = v5;
  v22 = [v21 countByEnumeratingWithState:&v37 objects:v54 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v38;
    do
    {
      for (k = 0; k != v23; ++k)
      {
        if (*v38 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [(SBSwitcherCaptureApplicationActivationWatchdog *)self _endMonitoringAppRepresentedByEntity:*(*(&v37 + 1) + 8 * k)];
      }

      v23 = [v21 countByEnumeratingWithState:&v37 objects:v54 count:16];
    }

    while (v23);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v26 = v32;
  v27 = [v26 countByEnumeratingWithState:&v33 objects:v53 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v34;
    do
    {
      for (m = 0; m != v28; ++m)
      {
        if (*v34 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v33 + 1) + 8 * m);
        if ([v31 flagForActivationSetting:36] == 1 && objc_msgSend(v31, "flagForActivationSetting:", 38) != 1)
        {
          [(SBSwitcherCaptureApplicationActivationWatchdog *)self _beginMonitoringAppRepresentedByEntity:v31];
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v33 objects:v53 count:16];
    }

    while (v28);
  }
}

uint64_t __87__SBSwitcherCaptureApplicationActivationWatchdog_foregroundWorkspaceEntitiesUpdatedTo___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) isAnalogousToEntity:a2];
  if (result)
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v4 removeObject:v5];
  }

  return result;
}

uint64_t __87__SBSwitcherCaptureApplicationActivationWatchdog_foregroundWorkspaceEntitiesUpdatedTo___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) isAnalogousToEntity:a2];
  if (result)
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v4 removeObject:v5];
  }

  return result;
}

- (void)_beginMonitoringAppRepresentedByEntity:(id)entity
{
  v20 = *MEMORY[0x277D85DE8];
  entityCopy = entity;
  applicationSceneEntity = [entityCopy applicationSceneEntity];
  sceneHandle = [applicationSceneEntity sceneHandle];

  sceneIfExists = [sceneHandle sceneIfExists];
  v8 = SBLogCaptureApplication();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (sceneIfExists)
  {
    if (v9)
    {
      applicationSceneEntity2 = [entityCopy applicationSceneEntity];
      application = [applicationSceneEntity2 application];
      bundleIdentifier = [application bundleIdentifier];
      v18 = 138543362;
      v19 = bundleIdentifier;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Unlocked: Capture watchdog monitoring BEGINNING for %{public}@", &v18, 0xCu);
    }

    v13 = [(SBSwitcherCaptureApplicationActivationWatchdog *)self _addEntryForEntity:entityCopy];
    v14 = [[SBCaptureApplicationLaunchMonitor alloc] initWithScene:sceneIfExists delegate:self];
    [v13 setCaptureAppLaunchMonitor:v14];
    [(SBCaptureApplicationLaunchMonitor *)v14 start];
  }

  else
  {
    if (v9)
    {
      applicationSceneEntity3 = [entityCopy applicationSceneEntity];
      application2 = [applicationSceneEntity3 application];
      bundleIdentifier2 = [application2 bundleIdentifier];
      v18 = 138543362;
      v19 = bundleIdentifier2;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Unlocked: Capture watchdog monitoring PENDING for %{public}@", &v18, 0xCu);
    }

    v13 = [(SBSwitcherCaptureApplicationActivationWatchdog *)self _addEntryForEntity:entityCopy];
    [v13 setSceneHandle:sceneHandle];
    [sceneHandle addObserver:self];
  }
}

- (void)_endMonitoringAppRepresentedByEntity:(id)entity
{
  v13 = *MEMORY[0x277D85DE8];
  entityCopy = entity;
  v5 = [(SBSwitcherCaptureApplicationActivationWatchdog *)self _entryForEntity:entityCopy];
  if (v5)
  {
    v6 = SBLogCaptureApplication();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      applicationSceneEntity = [entityCopy applicationSceneEntity];
      application = [applicationSceneEntity application];
      bundleIdentifier = [application bundleIdentifier];
      v11 = 138543362;
      v12 = bundleIdentifier;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Unlocked: Capture watchdog ENDED for %{public}@", &v11, 0xCu);
    }

    captureAppLaunchMonitor = [v5 captureAppLaunchMonitor];
    [captureAppLaunchMonitor invalidate];

    [(SBSwitcherCaptureApplicationActivationWatchdog *)self _removeEntryForEntity:entityCopy];
  }
}

- (void)captureApplicationMonitor:(id)monitor hasMetLaunchRequirements:(BOOL)requirements unmetReason:(id)reason
{
  requirementsCopy = requirements;
  v24 = *MEMORY[0x277D85DE8];
  monitorCopy = monitor;
  reasonCopy = reason;
  v11 = [(SBSwitcherCaptureApplicationActivationWatchdog *)self _entryForMonitor:monitorCopy];
  if (!v11)
  {
    [SBSwitcherCaptureApplicationActivationWatchdog captureApplicationMonitor:a2 hasMetLaunchRequirements:? unmetReason:?];
  }

  v12 = v11;
  v13 = SBLogCaptureApplication();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    entity = [v12 entity];
    applicationSceneEntity = [entity applicationSceneEntity];
    application = [applicationSceneEntity application];
    bundleIdentifier = [application bundleIdentifier];
    v21[0] = 67109378;
    v21[1] = requirementsCopy;
    v22 = 2114;
    v23 = bundleIdentifier;
    _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "Unlocked: Capture watchdog met requirements? (%{BOOL}u) for %{public}@", v21, 0x12u);
  }

  if (!requirementsCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    entity2 = [v12 entity];
    [WeakRetained watchdog:self requestsTerminationOf:entity2 forReason:reasonCopy];
  }

  entity3 = [v12 entity];
  [(SBSwitcherCaptureApplicationActivationWatchdog *)self _endMonitoringAppRepresentedByEntity:entity3];
}

- (void)sceneHandle:(id)handle didCreateScene:(id)scene
{
  handleCopy = handle;
  sceneCopy = scene;
  v8 = [(SBSwitcherCaptureApplicationActivationWatchdog *)self _entryForSceneHandle:handleCopy];
  if (!v8)
  {
    [SBSwitcherCaptureApplicationActivationWatchdog sceneHandle:a2 didCreateScene:?];
  }

  v9 = v8;
  entity = [v8 entity];
  [(SBSwitcherCaptureApplicationActivationWatchdog *)self _removeEntryForEntity:entity];

  entity2 = [v9 entity];
  [(SBSwitcherCaptureApplicationActivationWatchdog *)self _beginMonitoringAppRepresentedByEntity:entity2];
}

- (void)sceneHandle:(id)handle replacedWithSceneHandle:(id)sceneHandle
{
  handleCopy = handle;
  sceneHandleCopy = sceneHandle;
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unhandled"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v10 = NSStringFromSelector(a2);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = 138544642;
    v14 = v10;
    v15 = 2114;
    v16 = v12;
    v17 = 2048;
    selfCopy = self;
    v19 = 2114;
    v20 = @"SBSwitcherCaptureApplicationActivationWatchdog.m";
    v21 = 1024;
    v22 = 142;
    v23 = 2114;
    v24 = v9;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v13, 0x3Au);
  }

  [v9 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (id)_entryForEntity:(id)entity
{
  v18 = *MEMORY[0x277D85DE8];
  entityCopy = entity;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_watchdogEntries;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        entity = [v9 entity];
        v11 = [entity isAnalogousToEntity:entityCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (id)_entryForMonitor:(id)monitor
{
  v17 = *MEMORY[0x277D85DE8];
  monitorCopy = monitor;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_watchdogEntries;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        captureAppLaunchMonitor = [v9 captureAppLaunchMonitor];

        if (captureAppLaunchMonitor == monitorCopy)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (id)_entryForSceneHandle:(id)handle
{
  v18 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_watchdogEntries;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        sceneHandle = [v9 sceneHandle];
        v11 = [sceneHandle isEqual:handleCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (id)_addEntryForEntity:(id)entity
{
  entityCopy = entity;
  v6 = [(SBSwitcherCaptureApplicationActivationWatchdog *)self _entryForEntity:entityCopy];

  if (v6)
  {
    [SBSwitcherCaptureApplicationActivationWatchdog _addEntryForEntity:a2];
  }

  v7 = objc_alloc_init(_SBWatchdogEntry);
  [(_SBWatchdogEntry *)v7 setEntity:entityCopy];
  [(NSHashTable *)self->_watchdogEntries addObject:v7];

  return v7;
}

- (void)_removeEntryForEntity:(id)entity
{
  v6 = [(SBSwitcherCaptureApplicationActivationWatchdog *)self _entryForEntity:entity];
  sceneHandle = [v6 sceneHandle];
  v5 = sceneHandle;
  if (sceneHandle)
  {
    [sceneHandle removeObserver:self];
    [v6 setSceneHandle:0];
  }

  [(NSHashTable *)self->_watchdogEntries removeObject:v6];
}

- (void)captureApplicationMonitor:(const char *)a1 hasMetLaunchRequirements:unmetReason:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown state"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4_2(&dword_21ED4E000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)sceneHandle:(const char *)a1 didCreateScene:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Observed change for unmonitored entity"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4_2(&dword_21ED4E000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_addEntryForEntity:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Can't add duplicate entry"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4_2(&dword_21ED4E000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end
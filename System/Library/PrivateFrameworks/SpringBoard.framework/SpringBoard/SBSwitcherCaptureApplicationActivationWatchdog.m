@interface SBSwitcherCaptureApplicationActivationWatchdog
- (SBSwitcherCaptureApplicationActivationWatchdog)initWithDelegate:(id)a3;
- (id)_addEntryForEntity:(id)a3;
- (id)_entryForEntity:(id)a3;
- (id)_entryForMonitor:(id)a3;
- (id)_entryForSceneHandle:(id)a3;
- (void)_beginMonitoringAppRepresentedByEntity:(id)a3;
- (void)_endMonitoringAppRepresentedByEntity:(id)a3;
- (void)_removeEntryForEntity:(id)a3;
- (void)captureApplicationMonitor:(id)a3 hasMetLaunchRequirements:(BOOL)a4 unmetReason:(id)a5;
- (void)foregroundWorkspaceEntitiesUpdatedTo:(id)a3;
- (void)sceneHandle:(id)a3 didCreateScene:(id)a4;
- (void)sceneHandle:(id)a3 replacedWithSceneHandle:(id)a4;
@end

@implementation SBSwitcherCaptureApplicationActivationWatchdog

- (SBSwitcherCaptureApplicationActivationWatchdog)initWithDelegate:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBSwitcherCaptureApplicationActivationWatchdog;
  v5 = [(SBSwitcherCaptureApplicationActivationWatchdog *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCAA50] hashTableWithOptions:512];
    watchdogEntries = v5->_watchdogEntries;
    v5->_watchdogEntries = v6;

    objc_storeWeak(&v5->_delegate, v4);
  }

  return v5;
}

- (void)foregroundWorkspaceEntitiesUpdatedTo:(id)a3
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v32 = [v4 mutableCopy];
  v5 = [(NSSet *)self->_lastEntitiesUpdate mutableCopy];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v6 = v4;
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

- (void)_beginMonitoringAppRepresentedByEntity:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 applicationSceneEntity];
  v6 = [v5 sceneHandle];

  v7 = [v6 sceneIfExists];
  v8 = SBLogCaptureApplication();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v10 = [v4 applicationSceneEntity];
      v11 = [v10 application];
      v12 = [v11 bundleIdentifier];
      v18 = 138543362;
      v19 = v12;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Unlocked: Capture watchdog monitoring BEGINNING for %{public}@", &v18, 0xCu);
    }

    v13 = [(SBSwitcherCaptureApplicationActivationWatchdog *)self _addEntryForEntity:v4];
    v14 = [[SBCaptureApplicationLaunchMonitor alloc] initWithScene:v7 delegate:self];
    [v13 setCaptureAppLaunchMonitor:v14];
    [(SBCaptureApplicationLaunchMonitor *)v14 start];
  }

  else
  {
    if (v9)
    {
      v15 = [v4 applicationSceneEntity];
      v16 = [v15 application];
      v17 = [v16 bundleIdentifier];
      v18 = 138543362;
      v19 = v17;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Unlocked: Capture watchdog monitoring PENDING for %{public}@", &v18, 0xCu);
    }

    v13 = [(SBSwitcherCaptureApplicationActivationWatchdog *)self _addEntryForEntity:v4];
    [v13 setSceneHandle:v6];
    [v6 addObserver:self];
  }
}

- (void)_endMonitoringAppRepresentedByEntity:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBSwitcherCaptureApplicationActivationWatchdog *)self _entryForEntity:v4];
  if (v5)
  {
    v6 = SBLogCaptureApplication();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v4 applicationSceneEntity];
      v8 = [v7 application];
      v9 = [v8 bundleIdentifier];
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Unlocked: Capture watchdog ENDED for %{public}@", &v11, 0xCu);
    }

    v10 = [v5 captureAppLaunchMonitor];
    [v10 invalidate];

    [(SBSwitcherCaptureApplicationActivationWatchdog *)self _removeEntryForEntity:v4];
  }
}

- (void)captureApplicationMonitor:(id)a3 hasMetLaunchRequirements:(BOOL)a4 unmetReason:(id)a5
{
  v6 = a4;
  v24 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = [(SBSwitcherCaptureApplicationActivationWatchdog *)self _entryForMonitor:v9];
  if (!v11)
  {
    [SBSwitcherCaptureApplicationActivationWatchdog captureApplicationMonitor:a2 hasMetLaunchRequirements:? unmetReason:?];
  }

  v12 = v11;
  v13 = SBLogCaptureApplication();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v12 entity];
    v15 = [v14 applicationSceneEntity];
    v16 = [v15 application];
    v17 = [v16 bundleIdentifier];
    v21[0] = 67109378;
    v21[1] = v6;
    v22 = 2114;
    v23 = v17;
    _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "Unlocked: Capture watchdog met requirements? (%{BOOL}u) for %{public}@", v21, 0x12u);
  }

  if (!v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v19 = [v12 entity];
    [WeakRetained watchdog:self requestsTerminationOf:v19 forReason:v10];
  }

  v20 = [v12 entity];
  [(SBSwitcherCaptureApplicationActivationWatchdog *)self _endMonitoringAppRepresentedByEntity:v20];
}

- (void)sceneHandle:(id)a3 didCreateScene:(id)a4
{
  v12 = a3;
  v7 = a4;
  v8 = [(SBSwitcherCaptureApplicationActivationWatchdog *)self _entryForSceneHandle:v12];
  if (!v8)
  {
    [SBSwitcherCaptureApplicationActivationWatchdog sceneHandle:a2 didCreateScene:?];
  }

  v9 = v8;
  v10 = [v8 entity];
  [(SBSwitcherCaptureApplicationActivationWatchdog *)self _removeEntryForEntity:v10];

  v11 = [v9 entity];
  [(SBSwitcherCaptureApplicationActivationWatchdog *)self _beginMonitoringAppRepresentedByEntity:v11];
}

- (void)sceneHandle:(id)a3 replacedWithSceneHandle:(id)a4
{
  v7 = a3;
  v8 = a4;
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
    v18 = self;
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

- (id)_entryForEntity:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
        v10 = [v9 entity];
        v11 = [v10 isAnalogousToEntity:v4];

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

- (id)_entryForMonitor:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
        v10 = [v9 captureAppLaunchMonitor];

        if (v10 == v4)
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

- (id)_entryForSceneHandle:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
        v10 = [v9 sceneHandle];
        v11 = [v10 isEqual:v4];

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

- (id)_addEntryForEntity:(id)a3
{
  v5 = a3;
  v6 = [(SBSwitcherCaptureApplicationActivationWatchdog *)self _entryForEntity:v5];

  if (v6)
  {
    [SBSwitcherCaptureApplicationActivationWatchdog _addEntryForEntity:a2];
  }

  v7 = objc_alloc_init(_SBWatchdogEntry);
  [(_SBWatchdogEntry *)v7 setEntity:v5];
  [(NSHashTable *)self->_watchdogEntries addObject:v7];

  return v7;
}

- (void)_removeEntryForEntity:(id)a3
{
  v6 = [(SBSwitcherCaptureApplicationActivationWatchdog *)self _entryForEntity:a3];
  v4 = [v6 sceneHandle];
  v5 = v4;
  if (v4)
  {
    [v4 removeObserver:self];
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
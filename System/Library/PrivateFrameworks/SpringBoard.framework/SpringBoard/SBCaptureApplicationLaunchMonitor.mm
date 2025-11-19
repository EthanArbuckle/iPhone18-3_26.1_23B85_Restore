@interface SBCaptureApplicationLaunchMonitor
+ (id)TCCServer;
- (BOOL)_isCaptureApplicationLaunchMonitorIgnored;
- (BOOL)_isViewfinderSessionAuditTokenMatching:(id)a3;
- (BOOL)_updateSceneReadyStatusForReason:(id)a3;
- (SBCaptureApplicationLaunchMonitor)initWithScene:(id)a3 delegate:(id)a4;
- (SBFCaptureApplicationLaunchMonitorDelegate)delegate;
- (id)_unmetReason;
- (void)_cameraViewfinderMonitorSessionDetected:(id)a3 auditToken:(id)a4;
- (void)_checkAllRequirementsForScene:(id)a3;
- (void)_checkForButtonConfiguration:(id)a3;
- (void)_checkForCameraInUseWithAuditToken:(id)a3;
- (void)_checkForTCCAccess;
- (void)_publishLaunchRequirementsIfNeededForScene:(id)a3 forced:(BOOL)a4;
- (void)_updateMonitorTimerIfNeeded;
- (void)cameraViewfinderMonitorSessionDidBegin:(id)a3 auditToken:(id)a4;
- (void)cameraViewfinderMonitorSessionWillBegin:(id)a3 auditToken:(id)a4;
- (void)cancel;
- (void)dealloc;
- (void)invalidate;
- (void)scene:(id)a3 didUpdateClientSettings:(id)a4;
- (void)scene:(id)a3 didUpdateSettings:(id)a4;
- (void)sceneContentStateDidChange:(id)a3;
- (void)sceneDidInvalidate:(id)a3;
- (void)start;
@end

@implementation SBCaptureApplicationLaunchMonitor

- (SBCaptureApplicationLaunchMonitor)initWithScene:(id)a3 delegate:(id)a4
{
  v8 = a3;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = SBCaptureApplicationLaunchMonitor;
  v10 = [(SBCaptureApplicationLaunchMonitor *)&v14 init];
  if (v10)
  {
    v11 = v8;
    if (!v11)
    {
      [SBCaptureApplicationLaunchMonitor initWithScene:a2 delegate:v10];
    }

    v12 = v11;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(SBCaptureApplicationLaunchMonitor *)v12 initWithScene:a2 delegate:v10];
    }

    if (!v9)
    {
      [SBCaptureApplicationLaunchMonitor initWithScene:a2 delegate:v10];
    }

    objc_storeStrong(&v10->_scene, a3);
    objc_storeWeak(&v10->_delegate, v9);
  }

  return v10;
}

- (void)invalidate
{
  if (self->_scene)
  {
    [(SBCaptureApplicationLaunchMonitor *)self cancel];
    scene = self->_scene;
    self->_scene = 0;

    objc_storeWeak(&self->_delegate, 0);
  }
}

- (void)cancel
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = SBLogCaptureApplication();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(FBScene *)self->_scene clientHandle];
    v5 = [v4 bundleIdentifier];
    v11 = 134218242;
    v12 = self;
    v13 = 2114;
    v14 = v5;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "CALM %p stop observing %{public}@", &v11, 0x16u);
  }

  v6 = self->_scene;
  [(FBScene *)v6 removeObserver:self];
  monitorTimer = self->_monitorTimer;
  if (monitorTimer)
  {
    [(BSAbsoluteMachTimer *)monitorTimer invalidate];
    v8 = self->_monitorTimer;
    self->_monitorTimer = 0;
  }

  viewfinderMonitoringToken = self->_viewfinderMonitoringToken;
  if (viewfinderMonitoringToken)
  {
    [(SBCameraViewfinderMonitoring *)viewfinderMonitoringToken cancel];
    v10 = self->_viewfinderMonitoringToken;
    self->_viewfinderMonitoringToken = 0;
  }

  *&self->_isCameraInUse = 0;
  *&self->_launchRequirementsPublished = 0;
}

- (void)dealloc
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"must -invalidate before dealloc"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_1();
    v9 = @"SBCaptureApplicationLaunchMonitor.m";
    v10 = 1024;
    v11 = 95;
    v12 = v6;
    v13 = v2;
    OUTLINED_FUNCTION_0(&dword_21ED4E000, MEMORY[0x277D86220], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)start
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"unexpected additional watchdog start invocation"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_1();
    v9 = @"SBCaptureApplicationLaunchMonitor.m";
    v10 = 1024;
    v11 = 103;
    v12 = v6;
    v13 = v2;
    OUTLINED_FUNCTION_0(&dword_21ED4E000, MEMORY[0x277D86220], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (BOOL)_updateSceneReadyStatusForReason:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self->_scene;
  v6 = [(FBScene *)v5 contentState];
  v7 = [(FBScene *)v5 settings];
  v8 = objc_opt_class();
  v9 = v7;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = [v11 deactivationReasons];
  v14 = v6 == 2 && v12 == 0;
  v15 = SBLogCaptureApplication();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(FBScene *)v5 clientHandle];
    v17 = [v16 bundleIdentifier];
    v18 = NSStringFromFBSceneContentState();
    v21 = 134219266;
    v22 = self;
    v23 = 2112;
    v24 = v4;
    v25 = 2114;
    v26 = v17;
    v27 = 1024;
    v28 = v14;
    v29 = 2114;
    v30 = v18;
    v31 = 2048;
    v32 = v12;
    _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "CALM %p updateSceneReadyStatus(%@) %{public}@ active:%{BOOL}u contentState:%{public}@ deactivationReasons:%lX", &v21, 0x3Au);
  }

  if (self->_sceneIsReadyForWatchdogging == v14 && self->_firstReadyStatusUpdateComplete)
  {
    v19 = 0;
  }

  else
  {
    v19 = 1;
    self->_firstReadyStatusUpdateComplete = 1;
    self->_sceneIsReadyForWatchdogging = v14;
  }

  return v19;
}

- (BOOL)_isCaptureApplicationLaunchMonitorIgnored
{
  v2 = +[SBDefaults localDefaults];
  v3 = [v2 captureApplicationDefaults];
  v4 = [v3 ignoreCaptureApplicationLaunchMonitor];

  return v4;
}

- (BOOL)_isViewfinderSessionAuditTokenMatching:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  scene = self->_scene;
  p_scene = &self->_scene;
  v7 = [(FBScene *)scene clientHandle];
  v8 = v7;
  if (!v7)
  {
    v10 = SBLogCaptureApplication();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(SBCaptureApplicationLaunchMonitor *)p_scene _isViewfinderSessionAuditTokenMatching:v4];
    }

    goto LABEL_10;
  }

  v9 = [v7 processHandle];
  if (!v9)
  {
    v10 = SBLogCaptureApplication();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(SBCaptureApplicationLaunchMonitor *)p_scene _isViewfinderSessionAuditTokenMatching:v4];
    }

LABEL_10:
    LOBYTE(v13) = 0;
    goto LABEL_11;
  }

  v10 = v9;
  v11 = MEMORY[0x277CF0B98];
  [v9 auditToken];
  v12 = [v11 tokenFromAuditToken:&v18];
  v13 = [v12 hasSameProcessAsAuditToken:v4];
  v14 = SBLogCaptureApplication();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(FBScene *)*p_scene clientHandle];
    v16 = [v15 bundleIdentifier];
    v18 = 138412546;
    v19 = v16;
    v20 = 1024;
    v21 = v13;
    _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "Capture Application - %@ -: Process matching result: %{BOOL}u", &v18, 0x12u);
  }

LABEL_11:
  return v13;
}

- (void)_checkForButtonConfiguration:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  if (!self->_hasCameraCaptureButtonConfiguration)
  {
    v4 = [a3 clientSettings];
    v5 = [v4 physicalButtonConfigurations];

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          if (![*(*(&v11 + 1) + 8 * i) _behavior])
          {
            self->_hasCameraCaptureButtonConfiguration = 1;
            goto LABEL_12;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }
}

+ (id)TCCServer
{
  if (TCCServer_onceToken != -1)
  {
    +[SBCaptureApplicationLaunchMonitor TCCServer];
  }

  v3 = TCCServer_tccServer;

  return v3;
}

void __46__SBCaptureApplicationLaunchMonitor_TCCServer__block_invoke()
{
  v2 = dispatch_queue_create("com.apple.springboard.capture.tccserver", 0);
  v0 = tcc_server_create();
  v1 = TCCServer_tccServer;
  TCCServer_tccServer = v0;
}

- (void)_checkForTCCAccess
{
  if (!self->_hasTCCAccess)
  {
    v3 = [(FBScene *)self->_scene clientHandle];
    v4 = [v3 processHandle];
    v5 = v4;
    if (v4)
    {
      v13 = 0u;
      v14 = 0u;
      [v4 auditToken];
      v6 = tcc_service_singleton_for_CF_name();
      v7 = tcc_credential_create_for_process_with_audit_token();
      v8 = tcc_message_options_create();
      tcc_message_options_set_reply_handler_policy();
      tcc_message_options_set_request_prompt_policy();
      v10 = 0;
      v11 = &v10;
      v12 = 0x2020000000uLL;
      v9 = [objc_opt_class() TCCServer];
      tcc_server_message_request_authorization();

      self->_hasTCCAccess = v11[3] == 2;
      _Block_object_dispose(&v10, 8);
    }
  }
}

uint64_t __55__SBCaptureApplicationLaunchMonitor__checkForTCCAccess__block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (!a3)
    {
      v3 = result;
      result = tcc_authorization_record_get_authorization_right();
      *(*(*(v3 + 32) + 8) + 24) = result;
    }
  }

  return result;
}

- (void)_checkForCameraInUseWithAuditToken:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (self->_isCameraInUse)
  {
    v6 = SBLogCaptureApplication();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(FBScene *)self->_scene clientHandle];
      v8 = [v7 bundleIdentifier];
      v10 = 138412290;
      v11 = v8;
      v9 = "Capture Application - %@ -: Camera is already in use";
LABEL_9:
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, v9, &v10, 0xCu);

      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if (!v4)
  {
    v6 = SBLogCaptureApplication();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(FBScene *)self->_scene clientHandle];
      v8 = [v7 bundleIdentifier];
      v10 = 138412290;
      v11 = v8;
      v9 = "Capture Application - %@ -: Can't check camera usage with no audit token";
      goto LABEL_9;
    }

LABEL_10:

    goto LABEL_11;
  }

  if ([(SBCaptureApplicationLaunchMonitor *)self _isViewfinderSessionAuditTokenMatching:v4])
  {
    self->_isCameraInUse = 1;
  }

LABEL_11:
}

- (id)_unmetReason
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = v3;
  if (!self->_hasTCCAccess)
  {
    [v3 addObject:@"Camera usage not authorized"];
  }

  if (!self->_isCameraInUse)
  {
    [v4 addObject:@"Camera not actively used"];
  }

  if (!self->_hasCameraCaptureButtonConfiguration)
  {
    [v4 addObject:@"AVCaptureEventInteraction not installed"];
  }

  if ([v4 count])
  {
    v5 = [v4 componentsJoinedByString:@" "];;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_checkAllRequirementsForScene:(id)a3
{
  [(SBCaptureApplicationLaunchMonitor *)self _checkForButtonConfiguration:a3];
  [(SBCaptureApplicationLaunchMonitor *)self _checkForTCCAccess];
  v4 = [(SBCameraViewfinderMonitoring *)self->_viewfinderMonitoringToken auditTokenForProcessWithActiveOrImminentViewfinderSession];
  [(SBCaptureApplicationLaunchMonitor *)self _checkForCameraInUseWithAuditToken:v4];
}

- (void)_publishLaunchRequirementsIfNeededForScene:(id)a3 forced:(BOOL)a4
{
  v4 = a4;
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!self->_launchRequirementsPublished)
  {
    [(SBCaptureApplicationLaunchMonitor *)self _checkAllRequirementsForScene:v6];
    v7 = [(SBCaptureApplicationLaunchMonitor *)self _hasCaptureApplicationRequirements];
    v8 = [(SBCaptureApplicationLaunchMonitor *)self _isCaptureApplicationLaunchMonitorIgnored];
    v9 = v8 || v7;
    v10 = SBLogCaptureApplication();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v6 clientHandle];
      v12 = [v11 bundleIdentifier];
      hasTCCAccess = self->_hasTCCAccess;
      isCameraInUse = self->_isCameraInUse;
      hasCameraCaptureButtonConfiguration = self->_hasCameraCaptureButtonConfiguration;
      v20 = 138413570;
      v21 = v12;
      v22 = 1024;
      v23 = v9 & 1;
      v24 = 1024;
      v25 = v8;
      v26 = 1024;
      v27 = hasTCCAccess;
      v28 = 1024;
      v29 = isCameraInUse;
      v30 = 1024;
      v31 = hasCameraCaptureButtonConfiguration;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Capture Application - %@ -: Launch monitor result: hasMetLaunchRequirements: %{BOOL}u, isCaptureApplicationLaunchMonitorIgnored: %{BOOL}u, hasTCCAccess: %{BOOL}u, isCameraInUse: %{BOOL}u, hasCameraCaptureButtonConfiguration: %{BOOL}u", &v20, 0x2Au);
    }

    if ((v4 | v9))
    {
      viewfinderMonitoringToken = self->_viewfinderMonitoringToken;
      if (viewfinderMonitoringToken)
      {
        [(SBCameraViewfinderMonitoring *)viewfinderMonitoringToken cancel];
        v17 = self->_viewfinderMonitoringToken;
        self->_viewfinderMonitoringToken = 0;
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        if (v9)
        {
          [WeakRetained captureApplicationMonitor:self hasMetLaunchRequirements:1 unmetReason:0];
        }

        else
        {
          v19 = [(SBCaptureApplicationLaunchMonitor *)self _unmetReason];
          [WeakRetained captureApplicationMonitor:self hasMetLaunchRequirements:0 unmetReason:v19];
        }
      }

      else
      {
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
LABEL_14:

          goto LABEL_15;
        }

        [WeakRetained captureApplicationMonitor:self hasMetLaunchRequirements:v9 & 1];
      }

      self->_launchRequirementsPublished = 1;
      goto LABEL_14;
    }
  }

LABEL_15:
}

- (void)_updateMonitorTimerIfNeeded
{
  if (self->_scene && !self->_launchRequirementsPublished)
  {
    if (self->_sceneIsReadyForWatchdogging)
    {
      if (!self->_monitorTimer)
      {
        v3 = SBLogCaptureApplication();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Creating a new watchdog timer", buf, 2u);
        }

        v4 = objc_alloc(MEMORY[0x277CF0B50]);
        v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"SBFCaptureApplicationLaunchMonitor.monitorTimer"];
        v6 = [v4 initWithIdentifier:v5];
        monitorTimer = self->_monitorTimer;
        self->_monitorTimer = v6;

        objc_initWeak(buf, self);
        v8 = self->_monitorTimer;
        v9 = +[SBCaptureApplicationCenter captureApplicationSettings];
        [v9 launchMonitorDurationInSeconds];
        v11 = v10;
        v12 = MEMORY[0x277D85CD0];
        v13 = MEMORY[0x277D85CD0];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __64__SBCaptureApplicationLaunchMonitor__updateMonitorTimerIfNeeded__block_invoke;
        v17[3] = &unk_2783A9918;
        objc_copyWeak(&v18, buf);
        [(BSAbsoluteMachTimer *)v8 scheduleWithFireInterval:v12 leewayInterval:v17 queue:v11 handler:0.05];

        objc_destroyWeak(&v18);
        objc_destroyWeak(buf);
      }
    }

    else
    {
      v14 = SBLogCaptureApplication();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "Scene is not ready to start the watchdog timer", buf, 2u);
      }

      if (self->_monitorTimer)
      {
        v15 = SBLogCaptureApplication();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "Invalidating the current watchdog timer", buf, 2u);
        }

        [(BSAbsoluteMachTimer *)self->_monitorTimer invalidate];
        v16 = self->_monitorTimer;
        self->_monitorTimer = 0;
      }
    }
  }
}

void __64__SBCaptureApplicationLaunchMonitor__updateMonitorTimerIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained scene];
  [WeakRetained _publishLaunchRequirementsIfNeededForScene:v1 forced:1];
}

- (void)sceneContentStateDidChange:(id)a3
{
  v5 = a3;
  v6 = v5;
  scene = self->_scene;
  if (scene)
  {
    if (scene != v5)
    {
      [(SBCaptureApplicationLaunchMonitor *)a2 sceneContentStateDidChange:?];
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __64__SBCaptureApplicationLaunchMonitor_sceneContentStateDidChange___block_invoke;
    v9[3] = &unk_2783A92D8;
    v9[4] = self;
    v10 = v6;
    dispatch_async(MEMORY[0x277D85CD0], v9);
  }

  else
  {
    v8 = SBLogCaptureApplication();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Capture Application - Scene is invalid, ignoring sceneContentStateDidChange call", buf, 2u);
    }
  }
}

void *__64__SBCaptureApplicationLaunchMonitor_sceneContentStateDidChange___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[3])
  {
    [result _updateSceneReadyStatusForReason:@"sceneContentStateDidChange"];
    [*(a1 + 32) _publishLaunchRequirementsIfNeededForScene:*(a1 + 40) forced:0];
    v3 = *(a1 + 32);

    return [v3 _updateMonitorTimerIfNeeded];
  }

  return result;
}

- (void)sceneDidInvalidate:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogCaptureApplication();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 clientHandle];
    v7 = [v6 bundleIdentifier];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Capture Application - %@ - Launch Monitor state: Scene did invalidate", &v8, 0xCu);
  }

  [(SBCaptureApplicationLaunchMonitor *)self invalidate];
}

- (void)scene:(id)a3 didUpdateSettings:(id)a4
{
  v5 = a3;
  [(SBCaptureApplicationLaunchMonitor *)self _updateSceneReadyStatusForReason:@"didUpdateSettings"];
  [(SBCaptureApplicationLaunchMonitor *)self _publishLaunchRequirementsIfNeededForScene:v5 forced:0];

  [(SBCaptureApplicationLaunchMonitor *)self _updateMonitorTimerIfNeeded];
}

- (void)scene:(id)a3 didUpdateClientSettings:(id)a4
{
  v5 = a3;
  [(SBCaptureApplicationLaunchMonitor *)self _updateSceneReadyStatusForReason:@"didUpdateClientSettings"];
  [(SBCaptureApplicationLaunchMonitor *)self _publishLaunchRequirementsIfNeededForScene:v5 forced:0];

  [(SBCaptureApplicationLaunchMonitor *)self _updateMonitorTimerIfNeeded];
}

- (void)_cameraViewfinderMonitorSessionDetected:(id)a3 auditToken:(id)a4
{
  [(SBCaptureApplicationLaunchMonitor *)self _checkForCameraInUseWithAuditToken:a4];
  if (self->_isCameraInUse)
  {
    v5 = [(SBCaptureApplicationLaunchMonitor *)self scene];
    [(SBCaptureApplicationLaunchMonitor *)self _publishLaunchRequirementsIfNeededForScene:v5 forced:0];
  }
}

- (void)cameraViewfinderMonitorSessionWillBegin:(id)a3 auditToken:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(SBCaptureApplicationLaunchMonitor *)self scene];
  v9 = SBLogCaptureApplication();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v8 clientHandle];
    v11 = [v10 bundleIdentifier];
    v12 = 138412290;
    v13 = v11;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Capture Application - %@ -: Viewfinder session will begin", &v12, 0xCu);
  }

  [(SBCaptureApplicationLaunchMonitor *)self _cameraViewfinderMonitorSessionDetected:v7 auditToken:v6];
}

- (void)cameraViewfinderMonitorSessionDidBegin:(id)a3 auditToken:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(SBCaptureApplicationLaunchMonitor *)self scene];
  v9 = SBLogCaptureApplication();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v8 clientHandle];
    v11 = [v10 bundleIdentifier];
    v12 = 138412290;
    v13 = v11;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Capture Application - %@ -: Viewfinder session did begin", &v12, 0xCu);
  }

  [(SBCaptureApplicationLaunchMonitor *)self _cameraViewfinderMonitorSessionDetected:v7 auditToken:v6];
}

- (SBFCaptureApplicationLaunchMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithScene:(uint64_t)a3 delegate:.cold.1(void *a1, const char *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = [a1 classForCoder];
  if (!v6)
  {
    v6 = objc_opt_class();
  }

  v7 = NSStringFromClass(v6);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v5 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"scene", v7, v9];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v11 = NSStringFromSelector(a2);
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v15 = 138544642;
    v16 = v11;
    v17 = 2114;
    v18 = v13;
    v19 = 2048;
    v20 = a3;
    v21 = 2114;
    v22 = @"SBCaptureApplicationLaunchMonitor.m";
    v23 = 1024;
    v24 = 50;
    v25 = 2114;
    v26 = v10;
    OUTLINED_FUNCTION_0(&dword_21ED4E000, MEMORY[0x277D86220], v14, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v15);
  }

  [v10 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithScene:(const char *)a1 delegate:(uint64_t)a2 .cold.2(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"delegate != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = a2;
    v15 = 2114;
    v16 = @"SBCaptureApplicationLaunchMonitor.m";
    v17 = 1024;
    v18 = 51;
    v19 = 2114;
    v20 = v4;
    OUTLINED_FUNCTION_0(&dword_21ED4E000, MEMORY[0x277D86220], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithScene:(const char *)a1 delegate:(uint64_t)a2 .cold.3(const char *a1, uint64_t a2)
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"scene", v6];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v8 = NSStringFromSelector(a1);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v12 = 138544642;
    v13 = v8;
    v14 = 2114;
    v15 = v10;
    v16 = 2048;
    v17 = a2;
    v18 = 2114;
    v19 = @"SBCaptureApplicationLaunchMonitor.m";
    v20 = 1024;
    v21 = 50;
    v22 = 2114;
    v23 = v7;
    OUTLINED_FUNCTION_0(&dword_21ED4E000, MEMORY[0x277D86220], v11, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v12);
  }

  [v7 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_isViewfinderSessionAuditTokenMatching:(id *)a1 .cold.1(id *a1, void *a2)
{
  v3 = [*a1 clientHandle];
  v4 = [v3 bundleIdentifier];
  [a2 pid];
  OUTLINED_FUNCTION_0_20();
  OUTLINED_FUNCTION_3_6(&dword_21ED4E000, v5, v6, "Capture Application - %@ -: No process handle found for the scene, can't check viewfinder session audit token for pid: %i", v7, v8, v9, v10, v11);
}

- (void)_isViewfinderSessionAuditTokenMatching:(id *)a1 .cold.2(id *a1, void *a2)
{
  v3 = [*a1 clientHandle];
  v4 = [v3 bundleIdentifier];
  [a2 pid];
  OUTLINED_FUNCTION_0_20();
  OUTLINED_FUNCTION_3_6(&dword_21ED4E000, v5, v6, "Capture Application - %@ -: No client handle found for the scene, can't check viewfinder session audit token for pid: %i", v7, v8, v9, v10, v11);
}

- (void)sceneContentStateDidChange:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBCaptureApplicationLaunchMonitor.m" lineNumber:329 description:{@"Invalid parameter not satisfying: %@", @"scene == _scene"}];
}

@end
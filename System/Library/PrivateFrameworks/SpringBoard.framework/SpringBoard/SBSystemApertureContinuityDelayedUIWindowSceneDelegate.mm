@interface SBSystemApertureContinuityDelayedUIWindowSceneDelegate
- (void)_initializeUIIfNecessaryForReason:(id)reason;
- (void)_tearDownUIAndInvalidateIfNecessaryForReason:(id)reason;
- (void)continuitySessionDidUpdateState:(id)state;
- (void)didConnectToSession:(id)session;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
@end

@implementation SBSystemApertureContinuityDelayedUIWindowSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  v34 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  sessionCopy = session;
  if (SBSIsSystemApertureAvailable())
  {
    role = [sessionCopy role];
    v11 = [role isEqualToString:*MEMORY[0x277D68050]];
    v12 = [role isEqualToString:*MEMORY[0x277D68058]];
    v13 = v12;
    if ((v11 & 1) != 0 || v12)
    {
      v14 = @"systemApertureCurtain";
      if (v11)
      {
        v14 = @"systemAperture";
      }

      debugName = self->_debugName;
      self->_debugName = &v14->isa;
    }

    v16 = SBLogContinuityDisplay();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = self->_debugName;
      *buf = 134218242;
      v31 = sceneCopy;
      v32 = 2114;
      v33 = v17;
      _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "System Aperture Scene <%p>:%{public}@ willConnectToSession", buf, 0x16u);
    }

    if (v11)
    {
      v18 = objc_opt_class();
      v19 = sceneCopy;
      if (v18)
      {
        if (objc_opt_isKindOfClass())
        {
          v18 = v19;
        }

        else
        {
          v18 = 0;
        }
      }

      v20 = v18;

      if (!v20)
      {
        [SBSystemApertureContinuityDelayedUIWindowSceneDelegate scene:willConnectToSession:options:];
      }

      objc_storeStrong(&self->_systemApertureContinuityWindowScene, v18);
      windowScene = self->_windowScene;
      self->_windowScene = v20;
      v22 = v20;

      currentHandler = +[SBContinuitySessionManager sharedInstance];
      v24 = [currentHandler registerSystemApertureWindowScene:v22];
    }

    else
    {
      if (!v13)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"SBSystemApertureContinuityDelayedUIWindowSceneDelegate.m" lineNumber:76 description:{@"unexpected role for SBSystemApertureContinuityWindowSceneDelegate: %@", role}];
        goto LABEL_29;
      }

      v25 = objc_opt_class();
      v26 = sceneCopy;
      if (v25)
      {
        if (objc_opt_isKindOfClass())
        {
          v25 = v26;
        }

        else
        {
          v25 = 0;
        }
      }

      v27 = v25;

      if (!v27)
      {
        [SBSystemApertureContinuityDelayedUIWindowSceneDelegate scene:willConnectToSession:options:];
      }

      objc_storeStrong(&self->_systemApertureContinuityCurtainWindowScene, v25);
      v28 = self->_windowScene;
      self->_windowScene = v27;
      v22 = v27;

      currentHandler = +[SBContinuitySessionManager sharedInstance];
      v24 = [currentHandler registerSystemApertureCurtainWindowScene:v22];
    }

    continuitySessionManagerRegistration = self->_continuitySessionManagerRegistration;
    self->_continuitySessionManagerRegistration = v24;

LABEL_29:
    goto LABEL_30;
  }

  role = SBLogContinuityDisplay();
  if (os_log_type_enabled(role, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, role, OS_LOG_TYPE_DEFAULT, "Ignoring Jindo continuity scene on non-jindo phone, plz stop sending them to me 125755442", buf, 2u);
  }

LABEL_30:
}

- (void)sceneDidDisconnect:(id)disconnect
{
  v15 = *MEMORY[0x277D85DE8];
  disconnectCopy = disconnect;
  v5 = SBLogContinuityDisplay();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    debugName = self->_debugName;
    v11 = 134218242;
    v12 = disconnectCopy;
    v13 = 2114;
    v14 = debugName;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "System Aperture Scene <%p>:%{public}@ didDisconnect", &v11, 0x16u);
  }

  [(BSInvalidatable *)self->_continuitySessionManagerRegistration invalidate];
  continuitySessionManagerRegistration = self->_continuitySessionManagerRegistration;
  self->_continuitySessionManagerRegistration = 0;

  [(SBSystemApertureContinuityDelayedUIWindowSceneDelegate *)self _tearDownUIAndInvalidateIfNecessaryForReason:@"scene disconnected"];
  windowScene = self->_windowScene;
  self->_windowScene = 0;

  systemApertureContinuityWindowScene = self->_systemApertureContinuityWindowScene;
  self->_systemApertureContinuityWindowScene = 0;

  systemApertureContinuityCurtainWindowScene = self->_systemApertureContinuityCurtainWindowScene;
  self->_systemApertureContinuityCurtainWindowScene = 0;
}

- (void)didConnectToSession:(id)session
{
  v19 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  if (self->_continuitySession)
  {
    [SBSystemApertureContinuityDelayedUIWindowSceneDelegate didConnectToSession:];
  }

  v6 = SBLogContinuityDisplay();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    windowScene = self->_windowScene;
    debugName = self->_debugName;
    v11 = 134218754;
    v12 = windowScene;
    v13 = 2114;
    v14 = debugName;
    v15 = 2048;
    v16 = sessionCopy;
    v17 = 2112;
    v18 = sessionCopy;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "System aperture scene <%p>:%{public}@ connected to session: <%p>:%@", &v11, 0x2Au);
  }

  objc_storeStrong(&self->_continuitySession, session);
  [sessionCopy addStateObserver:self];
  _FBSScene = [(UIWindowScene *)self->_windowScene _FBSScene];
  continuitySessionParticipantClientComponent = [_FBSScene continuitySessionParticipantClientComponent];

  if (!continuitySessionParticipantClientComponent)
  {
    [SBSystemApertureContinuityDelayedUIWindowSceneDelegate didConnectToSession:];
  }

  [continuitySessionParticipantClientComponent setContinuitySession:sessionCopy];
  [(SBSystemApertureContinuityDelayedUIWindowSceneDelegate *)self continuitySessionDidUpdateState:sessionCopy];
}

- (void)continuitySessionDidUpdateState:(id)state
{
  stateCopy = state;
  if (self->_continuitySession != stateCopy)
  {
    [(SBSystemApertureContinuityDelayedUIWindowSceneDelegate *)self continuitySessionDidUpdateState:a2, stateCopy];
  }

  state = [(SBContinuitySession *)stateCopy state];
  if (state <= 6)
  {
    if (state > 3)
    {
      if (state == 4)
      {
        if (self->_initializedUI)
        {
          [SBSystemApertureContinuityDelayedUIWindowSceneDelegate continuitySessionDidUpdateState:];
        }
      }

      else if (state == 5)
      {
        if (self->_initializedUI)
        {
          [SBSystemApertureContinuityDelayedUIWindowSceneDelegate continuitySessionDidUpdateState:];
        }
      }

      else if (self->_initializedUI)
      {
        [SBSystemApertureContinuityDelayedUIWindowSceneDelegate continuitySessionDidUpdateState:];
      }
    }

    else if (state == 1)
    {
      if (self->_initializedUI)
      {
        [SBSystemApertureContinuityDelayedUIWindowSceneDelegate continuitySessionDidUpdateState:];
      }
    }

    else if (state == 2)
    {
      if (self->_initializedUI)
      {
        [SBSystemApertureContinuityDelayedUIWindowSceneDelegate continuitySessionDidUpdateState:];
      }
    }

    else if (state == 3 && self->_initializedUI)
    {
      [SBSystemApertureContinuityDelayedUIWindowSceneDelegate continuitySessionDidUpdateState:];
    }

    goto LABEL_49;
  }

  if (state <= 9)
  {
    if (state != 7)
    {
      if (state == 8)
      {
        if (!self->_initializedUI)
        {
          [SBSystemApertureContinuityDelayedUIWindowSceneDelegate continuitySessionDidUpdateState:];
        }
      }

      else if (!self->_initializedUI)
      {
        [SBSystemApertureContinuityDelayedUIWindowSceneDelegate continuitySessionDidUpdateState:];
      }

      goto LABEL_49;
    }

    reasons = [(SBContinuitySession *)stateCopy reasons];
    v8 = reasons;
    if (self->_systemApertureContinuityWindowScene)
    {
      if ([reasons containsObject:@"checkpoint.waiting-for-ui-ready"])
      {
        v9 = SBLogContinuitySession();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          [SBSystemApertureContinuityDelayedUIWindowSceneDelegate continuitySessionDidUpdateState:];
        }

LABEL_45:

LABEL_48:
        goto LABEL_49;
      }
    }

    else
    {
      if (!self->_systemApertureContinuityCurtainWindowScene)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"SBSystemApertureContinuityDelayedUIWindowSceneDelegate.m" lineNumber:167 description:@"What kind of system aperture scene is this??"];

        goto LABEL_48;
      }

      if ([reasons containsObject:@"checkpoint.waiting-for-system-aperture-ui-ready"])
      {
        v9 = SBLogContinuitySession();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          [SBSystemApertureContinuityDelayedUIWindowSceneDelegate continuitySessionDidUpdateState:];
        }

        goto LABEL_45;
      }
    }

    [(SBSystemApertureContinuityDelayedUIWindowSceneDelegate *)self _initializeUIIfNecessaryForReason:@"session state .activating"];
    goto LABEL_48;
  }

  switch(state)
  {
    case 10:
      if (!self->_initializedUI)
      {
        [SBSystemApertureContinuityDelayedUIWindowSceneDelegate continuitySessionDidUpdateState:];
      }

      break;
    case 11:
      if (!self->_initializedUI)
      {
        [SBSystemApertureContinuityDelayedUIWindowSceneDelegate continuitySessionDidUpdateState:];
      }

      break;
    case 12:
      [(SBSystemApertureContinuityDelayedUIWindowSceneDelegate *)self _tearDownUIAndInvalidateIfNecessaryForReason:@"session state is .invalid"];
      break;
  }

LABEL_49:
}

- (void)_initializeUIIfNecessaryForReason:(id)reason
{
  v29 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v6 = SBLogContinuitySession();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    windowScene = self->_windowScene;
    debugName = self->_debugName;
    v23 = 134218498;
    v24 = windowScene;
    v25 = 2114;
    v26 = debugName;
    v27 = 2114;
    v28 = reasonCopy;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "System aperture scene <%p>:%{public}@ initializing UI if necessary - %{public}@", &v23, 0x20u);
  }

  if (self->_initializedUI)
  {
    mainWindowScene = SBLogContinuitySession();
    if (os_log_type_enabled(mainWindowScene, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_21ED4E000, mainWindowScene, OS_LOG_TYPE_DEFAULT, "--> already initialized UI", &v23, 2u);
    }
  }

  else
  {
    state = [(SBContinuitySession *)self->_continuitySession state];
    v11 = SBLogContinuitySession();
    mainWindowScene = v11;
    if (state == 7)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [SBSystemApertureContinuityDelayedUIWindowSceneDelegate _initializeUIIfNecessaryForReason:];
      }

      v12 = SBLogContinuitySession();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [SBSystemApertureContinuityDelayedUIWindowSceneDelegate _initializeUIIfNecessaryForReason:];
      }

      mainWindowScene = [(SBContinuitySession *)self->_continuitySession mainWindowScene];
      if (!mainWindowScene)
      {
        [SBSystemApertureContinuityDelayedUIWindowSceneDelegate _initializeUIIfNecessaryForReason:];
      }

      v13 = SBLogContinuitySession();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        _sceneIdentifier = [mainWindowScene _sceneIdentifier];
        v23 = 134218242;
        v24 = mainWindowScene;
        v25 = 2114;
        v26 = _sceneIdentifier;
        _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "--> associated main window scene is <%p>:%{public}@", &v23, 0x16u);
      }

      systemApertureController = [mainWindowScene systemApertureController];
      if (!systemApertureController)
      {
        [SBSystemApertureContinuityDelayedUIWindowSceneDelegate _initializeUIIfNecessaryForReason:];
      }

      systemApertureContinuityWindowScene = self->_systemApertureContinuityWindowScene;
      if (systemApertureContinuityWindowScene)
      {
        [(SBAccessoryWindowScene *)systemApertureContinuityWindowScene setAssociatedWindowScene:mainWindowScene];
        [systemApertureController highLevelContinuitySystemApertureWindowSceneDidConnect:self->_systemApertureContinuityWindowScene];
        [(SBContinuitySession *)self->_continuitySession noteSystemApertureUIIsReady:self->_systemApertureContinuityWindowScene];
      }

      else
      {
        systemApertureContinuityCurtainWindowScene = self->_systemApertureContinuityCurtainWindowScene;
        if (systemApertureContinuityCurtainWindowScene)
        {
          [(SBAccessoryWindowScene *)systemApertureContinuityCurtainWindowScene setAssociatedWindowScene:mainWindowScene];
          [systemApertureController superHighLevelContinuityCurtainWindowSceneDidConnect:self->_systemApertureContinuityCurtainWindowScene];
          [(SBContinuitySession *)self->_continuitySession noteSystemApertureCurtainUIIsReady:self->_systemApertureContinuityCurtainWindowScene];
        }

        else
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"SBSystemApertureContinuityDelayedUIWindowSceneDelegate.m" lineNumber:223 description:@"What kind of system aperture scene is this??"];
        }
      }

      self->_initializedUI = 1;
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v17 = self->_windowScene;
      v18 = self->_debugName;
      continuitySession = self->_continuitySession;
      if (continuitySession)
      {
        v20 = NSStringFromSBContinuitySessionState(state);
      }

      else
      {
        v20 = @".unknown because we don't have a session yet!";
      }

      v23 = 134218498;
      v24 = v17;
      v25 = 2114;
      v26 = v18;
      v27 = 2114;
      v28 = v20;
      _os_log_impl(&dword_21ED4E000, mainWindowScene, OS_LOG_TYPE_DEFAULT, "<%p>:%{public}@ refuses to initialize UI because the session state is %{public}@", &v23, 0x20u);
      if (continuitySession)
      {
      }
    }
  }
}

- (void)_tearDownUIAndInvalidateIfNecessaryForReason:(id)reason
{
  v26 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v6 = SBLogContinuitySession();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    windowScene = self->_windowScene;
    debugName = self->_debugName;
    v20 = 134218498;
    v21 = windowScene;
    v22 = 2114;
    v23 = debugName;
    v24 = 2114;
    v25 = reasonCopy;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "System aperture scene <%p>:%{public}@ tear down UI and invalidate if necessary - %{public}@", &v20, 0x20u);
  }

  if (!self->_invalidated)
  {
    [(SBContinuitySession *)self->_continuitySession removeStateObserver:self];
    continuitySession = self->_continuitySession;
    self->_continuitySession = 0;

    initializedUI = self->_initializedUI;
    associatedWindowScene = SBLogContinuitySession();
    v13 = os_log_type_enabled(associatedWindowScene, OS_LOG_TYPE_DEFAULT);
    if (!initializedUI)
    {
      if (v13)
      {
        LOWORD(v20) = 0;
        _os_log_impl(&dword_21ED4E000, associatedWindowScene, OS_LOG_TYPE_DEFAULT, "--> never initialized UI", &v20, 2u);
      }

      goto LABEL_21;
    }

    if (v13)
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_21ED4E000, associatedWindowScene, OS_LOG_TYPE_DEFAULT, "--> tearing down UI now...", &v20, 2u);
    }

    systemApertureContinuityWindowScene = self->_systemApertureContinuityWindowScene;
    if (systemApertureContinuityWindowScene)
    {
      associatedWindowScene = [(SBAccessoryWindowScene *)systemApertureContinuityWindowScene associatedWindowScene];
      systemApertureController = [associatedWindowScene systemApertureController];
      v16 = systemApertureController;
      if (associatedWindowScene)
      {
        if (systemApertureController)
        {
LABEL_13:
          [v16 highLevelContinuitySystemApertureWindowSceneDidDisconnect:self->_systemApertureContinuityWindowScene];
          v17 = self->_systemApertureContinuityWindowScene;
          self->_systemApertureContinuityWindowScene = 0;
LABEL_20:

LABEL_21:
          self->_invalidated = 1;
          goto LABEL_22;
        }
      }

      else
      {
        [SBSystemApertureContinuityDelayedUIWindowSceneDelegate _tearDownUIAndInvalidateIfNecessaryForReason:];
        if (v16)
        {
          goto LABEL_13;
        }
      }

      [SBSystemApertureContinuityDelayedUIWindowSceneDelegate _tearDownUIAndInvalidateIfNecessaryForReason:];
      goto LABEL_13;
    }

    systemApertureContinuityCurtainWindowScene = self->_systemApertureContinuityCurtainWindowScene;
    if (!systemApertureContinuityCurtainWindowScene)
    {
      associatedWindowScene = [MEMORY[0x277CCA890] currentHandler];
      [associatedWindowScene handleFailureInMethod:a2 object:self file:@"SBSystemApertureContinuityDelayedUIWindowSceneDelegate.m" lineNumber:274 description:@"What kind of system aperture scene is this??"];
      goto LABEL_21;
    }

    associatedWindowScene = [(SBAccessoryWindowScene *)systemApertureContinuityCurtainWindowScene associatedWindowScene];
    systemApertureController2 = [associatedWindowScene systemApertureController];
    v16 = systemApertureController2;
    if (associatedWindowScene)
    {
      if (systemApertureController2)
      {
LABEL_19:
        [v16 superHighLevelContinuityCurtainWindowSceneDidDisconnect:self->_systemApertureContinuityCurtainWindowScene];
        v17 = self->_systemApertureContinuityCurtainWindowScene;
        self->_systemApertureContinuityCurtainWindowScene = 0;
        goto LABEL_20;
      }
    }

    else
    {
      [SBSystemApertureContinuityDelayedUIWindowSceneDelegate _tearDownUIAndInvalidateIfNecessaryForReason:];
      if (v16)
      {
        goto LABEL_19;
      }
    }

    [SBSystemApertureContinuityDelayedUIWindowSceneDelegate _tearDownUIAndInvalidateIfNecessaryForReason:];
    goto LABEL_19;
  }

  v9 = SBLogContinuitySession();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v20) = 0;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "--> already invalidated", &v20, 2u);
  }

LABEL_22:
}

- (void)scene:willConnectToSession:options:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v2 = objc_opt_class();
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:v2 object:? file:? lineNumber:? description:?];
}

- (void)scene:willConnectToSession:options:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v2 = objc_opt_class();
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:v2 object:? file:? lineNumber:? description:?];
}

- (void)didConnectToSession:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)didConnectToSession:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)continuitySessionDidUpdateState:(uint64_t)a3 .cold.1(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a3 object:a1 file:@"SBSystemApertureContinuityDelayedUIWindowSceneDelegate.m" lineNumber:121 description:{@"System aperture scene <%p>:%@ state update for session <%p> is not the one i'm tracking <%p>", *(a1 + 24), *(a1 + 56), a4, *a2}];
}

- (void)continuitySessionDidUpdateState:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)continuitySessionDidUpdateState:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)continuitySessionDidUpdateState:.cold.4()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)continuitySessionDidUpdateState:.cold.5()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)continuitySessionDidUpdateState:.cold.6()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)continuitySessionDidUpdateState:.cold.7()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)continuitySessionDidUpdateState:.cold.8()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)continuitySessionDidUpdateState:.cold.9()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)continuitySessionDidUpdateState:.cold.10()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)continuitySessionDidUpdateState:.cold.11()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)continuitySessionDidUpdateState:.cold.12()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)continuitySessionDidUpdateState:.cold.13()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_initializeUIIfNecessaryForReason:.cold.3()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v3 = *v0;
  OUTLINED_FUNCTION_0_3();
  [v2 handleFailureInMethod:v3 object:? file:? lineNumber:? description:?];
}

- (void)_initializeUIIfNecessaryForReason:.cold.4()
{
  OUTLINED_FUNCTION_3_1();
  v3 = [MEMORY[0x277CCA890] currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"SBSystemApertureContinuityDelayedUIWindowSceneDelegate.m" lineNumber:211 description:{@"Couldn't find the system aperture controller for the continuity display's main scene <%p>", v0}];
}

- (void)_tearDownUIAndInvalidateIfNecessaryForReason:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0_36();
  OUTLINED_FUNCTION_5_7();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_tearDownUIAndInvalidateIfNecessaryForReason:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0_36();
  OUTLINED_FUNCTION_5_7();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_tearDownUIAndInvalidateIfNecessaryForReason:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0_36();
  OUTLINED_FUNCTION_5_7();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_tearDownUIAndInvalidateIfNecessaryForReason:.cold.4()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0_36();
  OUTLINED_FUNCTION_5_7();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end
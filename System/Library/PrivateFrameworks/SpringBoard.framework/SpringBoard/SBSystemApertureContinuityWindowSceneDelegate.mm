@interface SBSystemApertureContinuityWindowSceneDelegate
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
@end

@implementation SBSystemApertureContinuityWindowSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  v39 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  sessionCopy = session;
  v10 = SBLogContinuityDisplay();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    _sceneIdentifier = [sceneCopy _sceneIdentifier];
    *buf = 134218242;
    v36 = sceneCopy;
    v37 = 2114;
    v38 = _sceneIdentifier;
    _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "<%p>:%{public}@ connected", buf, 0x16u);
  }

  _FBSScene = [sceneCopy _FBSScene];
  continuitySessionSceneParticipant = [_FBSScene continuitySessionSceneParticipant];

  continuitySession = [continuitySessionSceneParticipant continuitySession];
  mainWindowScene = [continuitySession mainWindowScene];
  if (!mainWindowScene)
  {
    [SBSystemApertureContinuityWindowSceneDelegate scene:willConnectToSession:options:];
  }

  systemApertureController = [mainWindowScene systemApertureController];
  if (!systemApertureController)
  {
    [SBSystemApertureContinuityWindowSceneDelegate scene:willConnectToSession:options:];
  }

  v33 = a2;
  role = [sessionCopy role];
  v18 = [role isEqualToString:@"SBWindowSceneSessionRoleSystemApertureContinuity"];
  v19 = [role isEqualToString:@"SBWindowSceneSessionRoleSystemApertureContinuityCurtain"];
  if (v18)
  {
    v34 = sessionCopy;
    v20 = objc_opt_class();
    v21 = sceneCopy;
    if (v20)
    {
      if (objc_opt_isKindOfClass())
      {
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
    }

    v27 = v22;

    if (!v27)
    {
      [SBSystemApertureContinuityWindowSceneDelegate scene:willConnectToSession:options:];
    }

    objc_storeStrong(&self->_systemApertureContinuityWindowScene, v22);
    windowScene = self->_windowScene;
    self->_windowScene = v27;
    currentHandler = v27;

    debugName = self->_debugName;
    self->_debugName = @"systemAperture";

    [(UIWindowScene *)currentHandler setAssociatedWindowScene:mainWindowScene];
    [continuitySession noteSystemApertureSceneConnected:currentHandler];
    [systemApertureController highLevelContinuitySystemApertureWindowSceneDidConnect:currentHandler];
    [continuitySession noteSystemApertureUIIsReady:currentHandler];
LABEL_26:
    sessionCopy = v34;
    goto LABEL_27;
  }

  if (v19)
  {
    v34 = sessionCopy;
    v23 = objc_opt_class();
    v24 = sceneCopy;
    if (v23)
    {
      if (objc_opt_isKindOfClass())
      {
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
    }

    v30 = v25;

    if (!v30)
    {
      [SBSystemApertureContinuityWindowSceneDelegate scene:willConnectToSession:options:];
    }

    objc_storeStrong(&self->_systemApertureContinuityCurtainWindowScene, v25);
    v31 = self->_windowScene;
    self->_windowScene = v30;
    currentHandler = v30;

    v32 = self->_debugName;
    self->_debugName = @"systemApertureCurtain";

    [(UIWindowScene *)currentHandler setAssociatedWindowScene:mainWindowScene];
    [continuitySession noteSystemApertureCurtainSceneConnected:currentHandler];
    [systemApertureController superHighLevelContinuityCurtainWindowSceneDidConnect:currentHandler];
    [continuitySession noteSystemApertureCurtainUIIsReady:currentHandler];
    goto LABEL_26;
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [(UIWindowScene *)currentHandler handleFailureInMethod:v33 object:self file:@"SBSystemApertureContinuityWindowSceneDelegate.m" lineNumber:73 description:@"unexpected role for SBSystemApertureContinuityWindowSceneDelegate: %@", role];
LABEL_27:
}

- (void)sceneDidDisconnect:(id)disconnect
{
  v20 = *MEMORY[0x277D85DE8];
  disconnectCopy = disconnect;
  v6 = SBLogContinuityDisplay();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    _sceneIdentifier = [disconnectCopy _sceneIdentifier];
    v16 = 134218242;
    v17 = disconnectCopy;
    v18 = 2114;
    v19 = _sceneIdentifier;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "<%p>:%{public}@ disconnected", &v16, 0x16u);
  }

  v8 = objc_opt_class();
  v9 = disconnectCopy;
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

  associatedWindowScene = [(SBAccessoryWindowScene *)v11 associatedWindowScene];
  if (!associatedWindowScene)
  {
    [SBSystemApertureContinuityWindowSceneDelegate sceneDidDisconnect:];
  }

  systemApertureController = [associatedWindowScene systemApertureController];
  if (!systemApertureController)
  {
    [(SBSystemApertureContinuityWindowSceneDelegate *)self sceneDidDisconnect:a2, associatedWindowScene, v9];
  }

  if (self->_systemApertureContinuityWindowScene == v9)
  {
    [systemApertureController highLevelContinuitySystemApertureWindowSceneDidDisconnect:?];
    systemApertureContinuityWindowScene = self->_systemApertureContinuityWindowScene;
    self->_systemApertureContinuityWindowScene = 0;
  }

  else if (self->_systemApertureContinuityCurtainWindowScene == v9)
  {
    [systemApertureController superHighLevelContinuityCurtainWindowSceneDidDisconnect:?];
    systemApertureContinuityWindowScene = self->_systemApertureContinuityCurtainWindowScene;
    self->_systemApertureContinuityCurtainWindowScene = 0;
  }

  else
  {
    systemApertureContinuityWindowScene = [MEMORY[0x277CCA890] currentHandler];
    [systemApertureContinuityWindowScene handleFailureInMethod:a2 object:self file:@"SBSystemApertureContinuityWindowSceneDelegate.m" lineNumber:94 description:@"What kind of system aperture scene is this??"];
  }

  windowScene = self->_windowScene;
  self->_windowScene = 0;
}

- (void)scene:willConnectToSession:options:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v3 = [MEMORY[0x277CCA890] currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"SBSystemApertureContinuityWindowSceneDelegate.m" lineNumber:43 description:{@"We don't have an main window scene for the session: %@", v0}];
}

- (void)scene:willConnectToSession:options:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v3 = [MEMORY[0x277CCA890] currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"SBSystemApertureContinuityWindowSceneDelegate.m" lineNumber:45 description:{@"Couldn't find the system aperture controller for the continuity display's main scene <%p>", v0}];
}

- (void)scene:willConnectToSession:options:.cold.3()
{
  OUTLINED_FUNCTION_3_1();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"SBSystemApertureContinuityWindowSceneDelegate.m" lineNumber:63 description:{@"systemApertureCurtainRole's scene is the wrong type %@", objc_opt_class()}];
}

- (void)scene:willConnectToSession:options:.cold.4()
{
  OUTLINED_FUNCTION_3_1();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"SBSystemApertureContinuityWindowSceneDelegate.m" lineNumber:52 description:{@"systemApertureRole's scene is the wrong type %@", objc_opt_class()}];
}

- (void)sceneDidDisconnect:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v3 = [MEMORY[0x277CCA890] currentHandler];
  [v3 handleFailureInMethod:v1 object:v2 file:@"SBSystemApertureContinuityWindowSceneDelegate.m" lineNumber:82 description:{@"We don't have an associated window scene for <%p>:%@", v0, *(v2 + 32)}];
}

- (void)sceneDidDisconnect:(uint64_t)a3 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a2 object:a1 file:@"SBSystemApertureContinuityWindowSceneDelegate.m" lineNumber:85 description:{@"Couldn't find the system aperture controller for the continuity display's main scene <%p> for scene <%p>:%@", a3, a4, *(a1 + 32)}];
}

@end
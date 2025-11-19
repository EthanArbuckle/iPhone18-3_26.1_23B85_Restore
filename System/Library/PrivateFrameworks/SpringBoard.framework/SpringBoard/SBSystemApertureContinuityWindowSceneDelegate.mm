@interface SBSystemApertureContinuityWindowSceneDelegate
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidDisconnect:(id)a3;
@end

@implementation SBSystemApertureContinuityWindowSceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = SBLogContinuityDisplay();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v8 _sceneIdentifier];
    *buf = 134218242;
    v36 = v8;
    v37 = 2114;
    v38 = v11;
    _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "<%p>:%{public}@ connected", buf, 0x16u);
  }

  v12 = [v8 _FBSScene];
  v13 = [v12 continuitySessionSceneParticipant];

  v14 = [v13 continuitySession];
  v15 = [v14 mainWindowScene];
  if (!v15)
  {
    [SBSystemApertureContinuityWindowSceneDelegate scene:willConnectToSession:options:];
  }

  v16 = [v15 systemApertureController];
  if (!v16)
  {
    [SBSystemApertureContinuityWindowSceneDelegate scene:willConnectToSession:options:];
  }

  v33 = a2;
  v17 = [v9 role];
  v18 = [v17 isEqualToString:@"SBWindowSceneSessionRoleSystemApertureContinuity"];
  v19 = [v17 isEqualToString:@"SBWindowSceneSessionRoleSystemApertureContinuityCurtain"];
  if (v18)
  {
    v34 = v9;
    v20 = objc_opt_class();
    v21 = v8;
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
    v26 = v27;

    debugName = self->_debugName;
    self->_debugName = @"systemAperture";

    [(UIWindowScene *)v26 setAssociatedWindowScene:v15];
    [v14 noteSystemApertureSceneConnected:v26];
    [v16 highLevelContinuitySystemApertureWindowSceneDidConnect:v26];
    [v14 noteSystemApertureUIIsReady:v26];
LABEL_26:
    v9 = v34;
    goto LABEL_27;
  }

  if (v19)
  {
    v34 = v9;
    v23 = objc_opt_class();
    v24 = v8;
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
    v26 = v30;

    v32 = self->_debugName;
    self->_debugName = @"systemApertureCurtain";

    [(UIWindowScene *)v26 setAssociatedWindowScene:v15];
    [v14 noteSystemApertureCurtainSceneConnected:v26];
    [v16 superHighLevelContinuityCurtainWindowSceneDidConnect:v26];
    [v14 noteSystemApertureCurtainUIIsReady:v26];
    goto LABEL_26;
  }

  v26 = [MEMORY[0x277CCA890] currentHandler];
  [(UIWindowScene *)v26 handleFailureInMethod:v33 object:self file:@"SBSystemApertureContinuityWindowSceneDelegate.m" lineNumber:73 description:@"unexpected role for SBSystemApertureContinuityWindowSceneDelegate: %@", v17];
LABEL_27:
}

- (void)sceneDidDisconnect:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = SBLogContinuityDisplay();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 _sceneIdentifier];
    v16 = 134218242;
    v17 = v5;
    v18 = 2114;
    v19 = v7;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "<%p>:%{public}@ disconnected", &v16, 0x16u);
  }

  v8 = objc_opt_class();
  v9 = v5;
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

  v12 = [(SBAccessoryWindowScene *)v11 associatedWindowScene];
  if (!v12)
  {
    [SBSystemApertureContinuityWindowSceneDelegate sceneDidDisconnect:];
  }

  v13 = [v12 systemApertureController];
  if (!v13)
  {
    [(SBSystemApertureContinuityWindowSceneDelegate *)self sceneDidDisconnect:a2, v12, v9];
  }

  if (self->_systemApertureContinuityWindowScene == v9)
  {
    [v13 highLevelContinuitySystemApertureWindowSceneDidDisconnect:?];
    systemApertureContinuityWindowScene = self->_systemApertureContinuityWindowScene;
    self->_systemApertureContinuityWindowScene = 0;
  }

  else if (self->_systemApertureContinuityCurtainWindowScene == v9)
  {
    [v13 superHighLevelContinuityCurtainWindowSceneDidDisconnect:?];
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
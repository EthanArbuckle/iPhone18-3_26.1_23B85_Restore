@interface SBEmbeddedScenesConnectionManager
- (void)_reevaluateSceneConnection;
- (void)noteMainSceneConnected:(id)a3;
- (void)noteSystemApertureCurtainSceneConnected:(id)a3;
- (void)noteSystemApertureSceneConnected:(id)a3;
@end

@implementation SBEmbeddedScenesConnectionManager

- (void)noteMainSceneConnected:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  WeakRetained = objc_loadWeakRetained(&self->_mainSBWindowScene);
  if (WeakRetained)
  {
    [SBEmbeddedScenesConnectionManager noteMainSceneConnected:];
  }

  v6 = SBLogStartup();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = _SBFLoggingMethodProem();
    v8 = [v4 _sceneIdentifier];
    v9 = 138543874;
    v10 = v7;
    v11 = 2048;
    v12 = v4;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] main scene connected: <%p>:%{public}@", &v9, 0x20u);
  }

  objc_storeWeak(&self->_mainSBWindowScene, v4);
  [(SBEmbeddedScenesConnectionManager *)self _reevaluateSceneConnection];
}

- (void)noteSystemApertureSceneConnected:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  WeakRetained = objc_loadWeakRetained(&self->_systemApertureScene);
  if (WeakRetained)
  {
    [SBEmbeddedScenesConnectionManager noteSystemApertureSceneConnected:];
  }

  v6 = SBLogStartup();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = _SBFLoggingMethodProem();
    v8 = [v4 _sceneIdentifier];
    v9 = 138543874;
    v10 = v7;
    v11 = 2048;
    v12 = v4;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] system aperture scene connected: <%p>:%{public}@", &v9, 0x20u);
  }

  objc_storeWeak(&self->_systemApertureScene, v4);
  [(SBEmbeddedScenesConnectionManager *)self _reevaluateSceneConnection];
}

- (void)noteSystemApertureCurtainSceneConnected:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  WeakRetained = objc_loadWeakRetained(&self->_systemApertureCurtainScene);
  if (WeakRetained)
  {
    [SBEmbeddedScenesConnectionManager noteSystemApertureCurtainSceneConnected:];
  }

  v6 = SBLogStartup();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = _SBFLoggingMethodProem();
    v8 = [v4 _sceneIdentifier];
    v9 = 138543874;
    v10 = v7;
    v11 = 2048;
    v12 = v4;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] system aperture curtain scene connected: <%p>:%{public}@", &v9, 0x20u);
  }

  objc_storeWeak(&self->_systemApertureCurtainScene, v4);
  [(SBEmbeddedScenesConnectionManager *)self _reevaluateSceneConnection];
}

- (void)_reevaluateSceneConnection
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_mainSBWindowScene);
  v4 = objc_loadWeakRetained(&self->_systemApertureScene);
  v5 = objc_loadWeakRetained(&self->_systemApertureCurtainScene);
  if (SBSIsSystemApertureAvailable())
  {
    v6 = SBLogStartup();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (WeakRetained && v4 && v5)
    {
      if (v7)
      {
        v8 = _SBFLoggingMethodProem();
        v17 = 138543362;
        v18 = v8;
        v9 = "[%{public}@] all embedded scenes are connected, ready to complete startup";
LABEL_10:
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, v9, &v17, 0xCu);

        goto LABEL_11;
      }

      goto LABEL_11;
    }

    if (!v7)
    {
      goto LABEL_22;
    }

    v15 = _SBFLoggingMethodProem();
    v17 = 138543362;
    v18 = v15;
    v16 = "[%{public}@] still waiting for scenes to connect";
LABEL_21:
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, v16, &v17, 0xCu);

    goto LABEL_22;
  }

  v6 = SBLogStartup();
  v10 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (!WeakRetained)
  {
    if (!v10)
    {
      goto LABEL_22;
    }

    v15 = _SBFLoggingMethodProem();
    v17 = 138543362;
    v18 = v15;
    v16 = "[%{public}@] still waiting for main scene to connect";
    goto LABEL_21;
  }

  if (v10)
  {
    v8 = _SBFLoggingMethodProem();
    v17 = 138543362;
    v18 = v8;
    v9 = "[%{public}@] main scene is connected, ready to complete startup";
    goto LABEL_10;
  }

LABEL_11:

  v11 = [WeakRetained delegate];
  v12 = objc_opt_class();
  v13 = v11;
  if (v12)
  {
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v6 = v14;

  [v6 completeStartupAfterAllEmbeddedScenesConnect];
LABEL_22:
}

- (void)noteMainSceneConnected:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [v0 _sceneIdentifier];
  [OUTLINED_FUNCTION_0_19(v1 v2];
}

- (void)noteSystemApertureSceneConnected:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [v0 _sceneIdentifier];
  [OUTLINED_FUNCTION_0_19(v1 v2];
}

- (void)noteSystemApertureCurtainSceneConnected:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [v0 _sceneIdentifier];
  [OUTLINED_FUNCTION_0_19(v1 v2];
}

@end
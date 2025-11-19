@interface SBAccessibilityUIServerUISceneController
+ (id)_setupInfo;
+ (id)_setupInfoForSceneSpecification:(id)a3;
- (void)_activeSceneControllersAfterRemoving:(id)a3;
- (void)_evaluateAvailablePresenters:(id)a3 forSceneControllers:(id)a4;
- (void)_invalidateAllSceneControllers;
- (void)_invalidateSceneControllersForWindowScene:(id)a3;
- (void)dealloc;
- (void)setActiveWindowScenePresenter:(id)a3;
- (void)windowSceneDidDisconnect:(id)a3;
@end

@implementation SBAccessibilityUIServerUISceneController

+ (id)_setupInfo
{
  v6[8] = *MEMORY[0x277D85DE8];
  v5[0] = @"class";
  v6[0] = objc_opt_class();
  v5[1] = @"enabled";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:_os_feature_enabled_impl()];
  v6[1] = v2;
  v6[2] = MEMORY[0x277CBEC38];
  v5[2] = @"isDaemon";
  v5[3] = @"jobLabel";
  v6[3] = @"com.apple.AccessibilityUIServer";
  v6[4] = &unk_28336F1D0;
  v5[4] = @"hostLevel";
  v5[5] = @"traitsRole";
  v6[5] = @"SBTraitsParticipantRoleAXUIServer";
  v6[6] = &unk_28336F8F0;
  v5[6] = @"vendingStrategy";
  v5[7] = @"workspaceID";
  v6[7] = @"com.apple.SpringBoard.SceneWorkspace.AccessibilityUIServerUI";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:8];

  return v3;
}

+ (id)_setupInfoForSceneSpecification:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _setupInfo];
  v5 = [v4 mutableCopy];

  v6 = [v3 uiSceneSessionRole];

  v7 = SBLogSystemUIScene();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    +[SBAccessibilityUIServerUISceneController _setupInfoForSceneSpecification:];
  }

  if ([v6 isEqualToString:*MEMORY[0x277D67F38]])
  {
    [v5 setObject:&unk_28336F908 forKey:@"presentationStyle"];
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D76EE8] + 30.0 + -1.0];
    [v5 setObject:v8 forKey:@"hostLevel"];
  }

  return v5;
}

- (void)dealloc
{
  [(SBAccessibilityUIServerUISceneController *)self setActiveWindowScenePresenter:0];
  v3.receiver = self;
  v3.super_class = SBAccessibilityUIServerUISceneController;
  [(SBSystemUISceneController *)&v3 dealloc];
}

- (void)_evaluateAvailablePresenters:(id)a3 forSceneControllers:(id)a4
{
  v31 = a2;
  v45 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v39.receiver = self;
  v39.super_class = SBAccessibilityUIServerUISceneController;
  [(SBSystemUISceneController *)&v39 _evaluateAvailablePresenters:a3 forSceneControllers:v6];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v8)
  {
    v9 = v8;
    v34 = *v36;
    v33 = v7;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v36 != v34)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v35 + 1) + 8 * i);
        v12 = [v11 sceneOptions];
        v13 = [v12 specification];
        v14 = [objc_opt_class() _setupInfoForSceneSpecification:v13];
        v15 = [v14 objectForKey:@"presentationStyle"];
        v16 = [v15 integerValue];

        if (v16 == 2)
        {
          v17 = SBLogSystemUIScene();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            v30 = [(SBAccessibilityUIServerUISceneController *)self activeWindowScenePresenter];
            *buf = 138543618;
            v41 = v30;
            v42 = 2114;
            v43 = v11;
            _os_log_debug_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEBUG, "AXUIServer activeWindowScenePresenter: %{public}@ for sceneController: %{public}@", buf, 0x16u);
          }

          v18 = [(SBAccessibilityUIServerUISceneController *)self activeWindowScenePresenter];

          if (!v18)
          {
            v19 = [SBApp windowSceneManager];
            v20 = [v19 activeDisplayWindowScene];

            if ([v20 isContinuityDisplayWindowScene])
            {
              v21 = SBLogSystemUIScene();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_INFO, "AXUIServer Active display is continuity - forcing main display", buf, 2u);
              }

              v22 = [SBApp windowSceneManager];
              v23 = [v22 embeddedDisplayWindowScene];

              v20 = v23;
            }

            v24 = [[SBSystemUISceneDefaultPresenter alloc] initWithWindowHostingPresentationOnWindowScene:v20];
            [(SBAccessibilityUIServerUISceneController *)self setActiveWindowScenePresenter:v24];

            v25 = [v14 objectForKey:@"hostLevel"];
            v26 = [(SBAccessibilityUIServerUISceneController *)self activeWindowScenePresenter];
            [v26 setPreferredWindowLevel:v25];

            v27 = SBLogSystemUIScene();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              v32 = [(SBAccessibilityUIServerUISceneController *)self activeWindowScenePresenter];
              *buf = 138543618;
              v41 = v32;
              v42 = 2114;
              v43 = v11;
              _os_log_debug_impl(&dword_21ED4E000, v27, OS_LOG_TYPE_DEBUG, "AXUIServer Created activeWindowScenePresenter: %{public}@ for sceneController: %{public}@", buf, 0x16u);
            }

            v7 = v33;
          }

          v28 = [(SBAccessibilityUIServerUISceneController *)self activeWindowScenePresenter];

          if (!v28)
          {
            [SBAccessibilityUIServerUISceneController _evaluateAvailablePresenters:v31 forSceneControllers:self];
          }

          v29 = [(SBAccessibilityUIServerUISceneController *)self activeWindowScenePresenter];
          [v11 setPresenter:v29];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v9);
  }
}

- (void)_activeSceneControllersAfterRemoving:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogSystemUIScene();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SBAccessibilityUIServerUISceneController _activeSceneControllersAfterRemoving:?];
  }

  v6 = [(SBAccessibilityUIServerUISceneController *)self activeWindowScenePresenter];

  if (v6)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = v4;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      v11 = *MEMORY[0x277D67F38];
      while (2)
      {
        v12 = 0;
        do
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = [*(*(&v19 + 1) + 8 * v12) sceneOptions];
          v14 = [v13 specification];
          v15 = [v14 uiSceneSessionRole];
          if ([v15 isEqualToString:v11])
          {
            v17 = SBLogSystemUIScene();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              [SBAccessibilityUIServerUISceneController _activeSceneControllersAfterRemoving:];
            }

            goto LABEL_18;
          }

          ++v12;
        }

        while (v9 != v12);
        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v16 = SBLogSystemUIScene();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [SBAccessibilityUIServerUISceneController _activeSceneControllersAfterRemoving:?];
    }

    [(SBAccessibilityUIServerUISceneController *)self setActiveWindowScenePresenter:0];
LABEL_18:
    v4 = v18;
  }
}

- (void)windowSceneDidDisconnect:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SBAccessibilityUIServerUISceneController;
  [(SBSystemUISceneController *)&v10 windowSceneDidDisconnect:v4];
  v5 = SBLogSystemUIScene();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SBAccessibilityUIServerUISceneController windowSceneDidDisconnect:];
  }

  v6 = [(SBAccessibilityUIServerUISceneController *)self activeWindowScenePresenter];
  v7 = [v6 targetWindowScene];
  v8 = [v7 isEqual:v4];

  if (v8)
  {
    v9 = SBLogSystemUIScene();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [SBAccessibilityUIServerUISceneController _activeSceneControllersAfterRemoving:?];
    }

    [(SBAccessibilityUIServerUISceneController *)self setActiveWindowScenePresenter:0];
  }
}

- (void)_invalidateSceneControllersForWindowScene:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SBAccessibilityUIServerUISceneController;
  [(SBSystemUISceneController *)&v10 _invalidateSceneControllersForWindowScene:v4];
  v5 = SBLogSystemUIScene();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SBAccessibilityUIServerUISceneController _invalidateSceneControllersForWindowScene:];
  }

  v6 = [(SBAccessibilityUIServerUISceneController *)self activeWindowScenePresenter];
  v7 = [v6 targetWindowScene];
  v8 = [v7 isEqual:v4];

  if (v8)
  {
    v9 = SBLogSystemUIScene();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [SBAccessibilityUIServerUISceneController _activeSceneControllersAfterRemoving:?];
    }

    [(SBAccessibilityUIServerUISceneController *)self setActiveWindowScenePresenter:0];
  }
}

- (void)_invalidateAllSceneControllers
{
  v1 = [a1 activeWindowScenePresenter];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)setActiveWindowScenePresenter:(id)a3
{
  v5 = a3;
  activeWindowScenePresenter = self->_activeWindowScenePresenter;
  if (activeWindowScenePresenter != v5)
  {
    v7 = v5;
    [(SBSystemUISceneDefaultPresenter *)activeWindowScenePresenter dismissAllScenes];
    objc_storeStrong(&self->_activeWindowScenePresenter, a3);
    v5 = v7;
  }
}

- (void)_evaluateAvailablePresenters:(uint64_t)a1 forSceneControllers:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBAccessibilityDaemonUISceneControllers.m" lineNumber:166 description:{@"AXUIServer client needs to set ActiveWindowScene for scene controller, but it's nil"}];
}

- (void)_activeSceneControllersAfterRemoving:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 activeWindowScenePresenter];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_activeSceneControllersAfterRemoving:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  v3 = 2114;
  v4 = v0;
  _os_log_debug_impl(&dword_21ED4E000, v1, OS_LOG_TYPE_DEBUG, "AXUIServer sessionRole: %{public}@ Active sceneController: %{public}@", v2, 0x16u);
}

- (void)_activeSceneControllersAfterRemoving:(void *)a1 .cold.3(void *a1)
{
  v1 = [a1 activeWindowScenePresenter];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end
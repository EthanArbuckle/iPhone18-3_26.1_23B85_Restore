@interface SBAccessibilityUIServerUISceneController
+ (id)_setupInfo;
+ (id)_setupInfoForSceneSpecification:(id)specification;
- (void)_activeSceneControllersAfterRemoving:(id)removing;
- (void)_evaluateAvailablePresenters:(id)presenters forSceneControllers:(id)controllers;
- (void)_invalidateAllSceneControllers;
- (void)_invalidateSceneControllersForWindowScene:(id)scene;
- (void)dealloc;
- (void)setActiveWindowScenePresenter:(id)presenter;
- (void)windowSceneDidDisconnect:(id)disconnect;
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

+ (id)_setupInfoForSceneSpecification:(id)specification
{
  specificationCopy = specification;
  _setupInfo = [objc_opt_class() _setupInfo];
  v5 = [_setupInfo mutableCopy];

  uiSceneSessionRole = [specificationCopy uiSceneSessionRole];

  v7 = SBLogSystemUIScene();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    +[SBAccessibilityUIServerUISceneController _setupInfoForSceneSpecification:];
  }

  if ([uiSceneSessionRole isEqualToString:*MEMORY[0x277D67F38]])
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

- (void)_evaluateAvailablePresenters:(id)presenters forSceneControllers:(id)controllers
{
  v31 = a2;
  v45 = *MEMORY[0x277D85DE8];
  controllersCopy = controllers;
  v39.receiver = self;
  v39.super_class = SBAccessibilityUIServerUISceneController;
  [(SBSystemUISceneController *)&v39 _evaluateAvailablePresenters:presenters forSceneControllers:controllersCopy];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v7 = controllersCopy;
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
        sceneOptions = [v11 sceneOptions];
        specification = [sceneOptions specification];
        v14 = [objc_opt_class() _setupInfoForSceneSpecification:specification];
        v15 = [v14 objectForKey:@"presentationStyle"];
        integerValue = [v15 integerValue];

        if (integerValue == 2)
        {
          v17 = SBLogSystemUIScene();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            activeWindowScenePresenter = [(SBAccessibilityUIServerUISceneController *)self activeWindowScenePresenter];
            *buf = 138543618;
            v41 = activeWindowScenePresenter;
            v42 = 2114;
            v43 = v11;
            _os_log_debug_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEBUG, "AXUIServer activeWindowScenePresenter: %{public}@ for sceneController: %{public}@", buf, 0x16u);
          }

          activeWindowScenePresenter2 = [(SBAccessibilityUIServerUISceneController *)self activeWindowScenePresenter];

          if (!activeWindowScenePresenter2)
          {
            windowSceneManager = [SBApp windowSceneManager];
            activeDisplayWindowScene = [windowSceneManager activeDisplayWindowScene];

            if ([activeDisplayWindowScene isContinuityDisplayWindowScene])
            {
              v21 = SBLogSystemUIScene();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_INFO, "AXUIServer Active display is continuity - forcing main display", buf, 2u);
              }

              windowSceneManager2 = [SBApp windowSceneManager];
              embeddedDisplayWindowScene = [windowSceneManager2 embeddedDisplayWindowScene];

              activeDisplayWindowScene = embeddedDisplayWindowScene;
            }

            v24 = [[SBSystemUISceneDefaultPresenter alloc] initWithWindowHostingPresentationOnWindowScene:activeDisplayWindowScene];
            [(SBAccessibilityUIServerUISceneController *)self setActiveWindowScenePresenter:v24];

            v25 = [v14 objectForKey:@"hostLevel"];
            activeWindowScenePresenter3 = [(SBAccessibilityUIServerUISceneController *)self activeWindowScenePresenter];
            [activeWindowScenePresenter3 setPreferredWindowLevel:v25];

            v27 = SBLogSystemUIScene();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              activeWindowScenePresenter4 = [(SBAccessibilityUIServerUISceneController *)self activeWindowScenePresenter];
              *buf = 138543618;
              v41 = activeWindowScenePresenter4;
              v42 = 2114;
              v43 = v11;
              _os_log_debug_impl(&dword_21ED4E000, v27, OS_LOG_TYPE_DEBUG, "AXUIServer Created activeWindowScenePresenter: %{public}@ for sceneController: %{public}@", buf, 0x16u);
            }

            v7 = v33;
          }

          activeWindowScenePresenter5 = [(SBAccessibilityUIServerUISceneController *)self activeWindowScenePresenter];

          if (!activeWindowScenePresenter5)
          {
            [SBAccessibilityUIServerUISceneController _evaluateAvailablePresenters:v31 forSceneControllers:self];
          }

          activeWindowScenePresenter6 = [(SBAccessibilityUIServerUISceneController *)self activeWindowScenePresenter];
          [v11 setPresenter:activeWindowScenePresenter6];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v9);
  }
}

- (void)_activeSceneControllersAfterRemoving:(id)removing
{
  v24 = *MEMORY[0x277D85DE8];
  removingCopy = removing;
  v5 = SBLogSystemUIScene();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SBAccessibilityUIServerUISceneController _activeSceneControllersAfterRemoving:?];
  }

  activeWindowScenePresenter = [(SBAccessibilityUIServerUISceneController *)self activeWindowScenePresenter];

  if (activeWindowScenePresenter)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = removingCopy;
    v7 = removingCopy;
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

          sceneOptions = [*(*(&v19 + 1) + 8 * v12) sceneOptions];
          specification = [sceneOptions specification];
          uiSceneSessionRole = [specification uiSceneSessionRole];
          if ([uiSceneSessionRole isEqualToString:v11])
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
    removingCopy = v18;
  }
}

- (void)windowSceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v10.receiver = self;
  v10.super_class = SBAccessibilityUIServerUISceneController;
  [(SBSystemUISceneController *)&v10 windowSceneDidDisconnect:disconnectCopy];
  v5 = SBLogSystemUIScene();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SBAccessibilityUIServerUISceneController windowSceneDidDisconnect:];
  }

  activeWindowScenePresenter = [(SBAccessibilityUIServerUISceneController *)self activeWindowScenePresenter];
  targetWindowScene = [activeWindowScenePresenter targetWindowScene];
  v8 = [targetWindowScene isEqual:disconnectCopy];

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

- (void)_invalidateSceneControllersForWindowScene:(id)scene
{
  sceneCopy = scene;
  v10.receiver = self;
  v10.super_class = SBAccessibilityUIServerUISceneController;
  [(SBSystemUISceneController *)&v10 _invalidateSceneControllersForWindowScene:sceneCopy];
  v5 = SBLogSystemUIScene();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SBAccessibilityUIServerUISceneController _invalidateSceneControllersForWindowScene:];
  }

  activeWindowScenePresenter = [(SBAccessibilityUIServerUISceneController *)self activeWindowScenePresenter];
  targetWindowScene = [activeWindowScenePresenter targetWindowScene];
  v8 = [targetWindowScene isEqual:sceneCopy];

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
  activeWindowScenePresenter = [self activeWindowScenePresenter];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)setActiveWindowScenePresenter:(id)presenter
{
  presenterCopy = presenter;
  activeWindowScenePresenter = self->_activeWindowScenePresenter;
  if (activeWindowScenePresenter != presenterCopy)
  {
    v7 = presenterCopy;
    [(SBSystemUISceneDefaultPresenter *)activeWindowScenePresenter dismissAllScenes];
    objc_storeStrong(&self->_activeWindowScenePresenter, presenter);
    presenterCopy = v7;
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
@interface UVInjectedScene
+ (id)_baseSceneSettings:(id)a3 sceneIdentifier:(id)a4 parentSettings:(id)a5;
+ (id)_injectInProcessHandle:(id)a3 error:(id *)a4;
+ (id)injectInRunningTarget:(id)a3 error:(id *)a4;
- (BOOL)_computeAndUpdateSceneSettings:(id *)a3;
- (BOOL)setMaximizedWithParent:(id)a3 error:(id *)a4;
- (BOOL)setMinimizedWithParent:(id)a3 size:(CGSize)a4 maximumSize:(CGSize)a5 error:(id *)a6;
- (CGSize)sceneSize;
- (NSString)description;
- (id)_computeSceneSettingsUsing:(id)a3 error:(id *)a4;
- (id)_initWithScene:(id)a3;
- (void)_handleActionsFromHostedScene:(id)a3;
- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8;
- (void)_setParentScene:(id)a3;
- (void)_updateSceneSettings:(id)a3 transitionContext:(id)a4;
- (void)dealloc;
- (void)invalidate;
- (void)scene:(id)a3 didUpdateClientSettingsWithDiff:(id)a4 oldClientSettings:(id)a5 transitionContext:(id)a6;
- (void)sceneDidInvalidate:(id)a3;
- (void)sendAction:(id)a3;
- (void)setActionHandler:(id)a3;
- (void)setInvalidationHandler:(id)a3;
- (void)setSceneResizeHandler:(id)a3;
@end

@implementation UVInjectedScene

- (id)_initWithScene:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = UVInjectedScene;
  v6 = [(UVInjectedScene *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scene, a3);
    v7->_maximized = 1;
    v8 = *MEMORY[0x277CBF3A8];
    v7->_overrideSceneSize = *MEMORY[0x277CBF3A8];
    v7->_overrideMaximumSize = v8;
    [(FBScene *)v7->_scene setDelegate:v7];
  }

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(FBScene *)self->_scene identifier];
  v7 = [v3 stringWithFormat:@"<%@ %p, identifier: %@>", v5, self, v6];

  return v7;
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  v8 = [MEMORY[0x277CCACC8] callStackSymbols];
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  v15 = *MEMORY[0x277D85DE8];
  if (!self->_invalidated)
  {
    v3 = UVLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = self;
      _os_log_impl(&dword_25F542000, v3, OS_LOG_TYPE_DEFAULT, "Invalidation of %@", &v13, 0xCu);
    }

    self->_invalidated = 1;
    [(FBScene *)self->_scene setDelegate:0];
    v4 = [MEMORY[0x277D0AAD8] sharedInstance];
    v5 = [(FBScene *)self->_scene identifier];
    v6 = [v4 sceneWithIdentifier:v5];

    if (v6)
    {
      v7 = [(FBScene *)self->_scene identifier];
      [v4 destroyScene:v7 withTransitionContext:0];
    }

    [(UVInjectedScene *)self _setParentScene:0];
    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2]();
      v9 = self->_invalidationHandler;
    }

    else
    {
      v9 = 0;
    }

    self->_invalidationHandler = 0;

    sceneResizeHandler = self->_sceneResizeHandler;
    self->_sceneResizeHandler = 0;

    actionHandler = self->_actionHandler;
    self->_actionHandler = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)setInvalidationHandler:(id)a3
{
  v4 = a3;
  if (self->_invalidated)
  {
    if (!v4)
    {
      goto LABEL_6;
    }

    v7 = v4;
    v4[2]();
  }

  else
  {
    v7 = v4;
    v5 = _Block_copy(v4);
    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = v5;
  }

  v4 = v7;
LABEL_6:
}

- (void)setSceneResizeHandler:(id)a3
{
  if (!self->_invalidated)
  {
    v5 = _Block_copy(a3);
    sceneResizeHandler = self->_sceneResizeHandler;
    self->_sceneResizeHandler = v5;

    MEMORY[0x2821F96F8](v5, sceneResizeHandler);
  }
}

- (void)setActionHandler:(id)a3
{
  if (!self->_invalidated)
  {
    v5 = _Block_copy(a3);
    actionHandler = self->_actionHandler;
    self->_actionHandler = v5;

    MEMORY[0x2821F96F8](v5, actionHandler);
  }
}

- (void)sendAction:(id)a3
{
  scene = self->_scene;
  v4 = [MEMORY[0x277CBEB98] setWithObject:a3];
  [(FBScene *)scene sendActions:v4];
}

- (void)_handleActionsFromHostedScene:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (self->_actionHandler)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * v9);
          (*(self->_actionHandler + 2))();
          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)scene:(id)a3 didUpdateClientSettingsWithDiff:(id)a4 oldClientSettings:(id)a5 transitionContext:(id)a6
{
  v7 = [a6 actions];
  [(UVInjectedScene *)self _handleActionsFromHostedScene:v7];
}

- (void)sceneDidInvalidate:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = UVLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = self;
    _os_log_impl(&dword_25F542000, v4, OS_LOG_TYPE_DEFAULT, "Scene triggered invalidation of %@", &v6, 0xCu);
  }

  [(UVInjectedScene *)self invalidate];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8
{
  v13 = a7;
  v10 = [a4 settings];
  v11 = [(UVInjectedScene *)self _computeSceneSettingsUsing:v10 error:0];

  if (v11)
  {
    v12 = [v13 copy];

    [v12 setActions:0];
    [(UVInjectedScene *)self _updateSceneSettings:v11 transitionContext:v12];
    v13 = v12;
  }
}

- (void)_setParentScene:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  parentScene = self->_parentScene;
  if (parentScene != v5)
  {
    v7 = [(FBScene *)self->_scene identifier];
    [(UIWindowScene *)parentScene _unregisterSettingsDiffActionArrayForKey:v7];

    objc_storeStrong(&self->_parentScene, a3);
    v8 = self->_parentScene;
    v12[0] = self;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v10 = [(FBScene *)self->_scene identifier];
    [(UIWindowScene *)v8 _registerSettingsDiffActionArray:v9 forKey:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)setMaximizedWithParent:(id)a3 error:(id *)a4
{
  [(UVInjectedScene *)self _setParentScene:a3];
  self->_maximized = 1;

  return [(UVInjectedScene *)self _computeAndUpdateSceneSettings:a4];
}

- (BOOL)setMinimizedWithParent:(id)a3 size:(CGSize)a4 maximumSize:(CGSize)a5 error:(id *)a6
{
  height = a5.height;
  width = a5.width;
  v9 = a4.height;
  v10 = a4.width;
  [(UVInjectedScene *)self _setParentScene:a3];
  self->_maximized = 0;
  self->_overrideSceneSize.width = v10;
  self->_overrideSceneSize.height = v9;
  self->_overrideMaximumSize.width = width;
  self->_overrideMaximumSize.height = height;

  return [(UVInjectedScene *)self _computeAndUpdateSceneSettings:a6];
}

- (CGSize)sceneSize
{
  v2 = [(FBScene *)self->_scene settings];
  [v2 frame];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (BOOL)_computeAndUpdateSceneSettings:(id *)a3
{
  v5 = [(UIWindowScene *)self->_parentScene _FBSScene];
  v6 = [v5 settings];

  v7 = [(UVInjectedScene *)self _computeSceneSettingsUsing:v6 error:a3];
  if (v7)
  {
    [(UVInjectedScene *)self _updateSceneSettings:v7 transitionContext:0];
  }

  return v7 != 0;
}

- (id)_computeSceneSettingsUsing:(id)a3 error:(id *)a4
{
  v6 = a3;
  v14 = v6;
  if (v6)
  {
    v15 = v6;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [v15 displayConfiguration];
      if (v23)
      {
        if (self->_maximized)
        {
          v24 = [(FBSSettings *)[UVMutablePreviewSceneSettings alloc] initWithSettings:v15];
          [(UVMutablePreviewSceneSettings *)v24 frame];
          [(UVMutablePreviewSceneSettings *)v24 setPreviewMaximumSize:v25, v26];
          [(UVMutablePreviewSceneSettings *)v24 setInterruptionPolicy:1];
        }

        else
        {
          v24 = [objc_opt_class() _baseSceneSettings:v23 sceneIdentifier:0 parentSettings:0];
          [(UVMutablePreviewSceneSettings *)v24 setInterruptionPolicy:1];
          -[UVMutablePreviewSceneSettings setForeground:](v24, "setForeground:", [v15 isForeground]);
          -[UVMutablePreviewSceneSettings setUserInterfaceStyle:](v24, "setUserInterfaceStyle:", [v15 userInterfaceStyle]);
          -[UVMutablePreviewSceneSettings setInterfaceOrientation:](v24, "setInterfaceOrientation:", [v15 interfaceOrientation]);
          -[UVMutablePreviewSceneSettings setDeviceOrientation:](v24, "setDeviceOrientation:", [v15 deviceOrientation]);
          [(UVMutablePreviewSceneSettings *)v24 interfaceOrientation];
          IsLandscape = BSInterfaceOrientationIsLandscape();
          v44 = 40;
          if (IsLandscape)
          {
            v45 = 32;
          }

          else
          {
            v45 = 40;
          }

          if (!IsLandscape)
          {
            v44 = 32;
          }

          [(UVMutablePreviewSceneSettings *)v24 setFrame:0.0, 0.0, *(&self->super.isa + v44), *(&self->super.isa + v45)];
          [(UVMutablePreviewSceneSettings *)v24 setPreviewMaximumSize:self->_overrideMaximumSize.width, self->_overrideMaximumSize.height];
        }

        v29 = [(UVMutablePreviewSceneSettings *)v24 copy];

        goto LABEL_28;
      }

      v40 = UVPreviewsServicesError(@"cannot compute settings from parent settings with nil display config", v16, v17, v18, v19, v20, v21, v22, v47);
      v41 = UVLog();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
      {
        [UVInjectedScene _computeSceneSettingsUsing:v40 error:?];
      }

      if (a4)
      {
        v42 = v40;
        *a4 = v40;
      }
    }

    else
    {
      v30 = objc_opt_class();
      v23 = UVPreviewsServicesError(@"cannot compute settings from parent scene with non-UI settings: %@", v31, v32, v33, v34, v35, v36, v37, v30);
      v38 = UVLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
      {
        [UVInjectedScene _computeSceneSettingsUsing:v23 error:?];
      }

      if (a4)
      {
        v39 = v23;
        v29 = 0;
        *a4 = v23;
LABEL_28:

        goto LABEL_29;
      }
    }

    v29 = 0;
    goto LABEL_28;
  }

  v15 = UVPreviewsServicesError(@"cannot compute settings without parent settings", v7, v8, v9, v10, v11, v12, v13, v47);
  v27 = UVLog();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
  {
    [UVInjectedScene _computeSceneSettingsUsing:v15 error:?];
  }

  if (a4)
  {
    v28 = v15;
    v29 = 0;
    *a4 = v15;
  }

  else
  {
    v29 = 0;
  }

LABEL_29:

  return v29;
}

- (void)_updateSceneSettings:(id)a3 transitionContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(UVInjectedScene *)self sceneSize];
  v9 = v8;
  v11 = v10;
  v15 = [(UVInjectedScene *)self _prepareSceneSettingsForUpdate:v7];

  [(FBScene *)self->_scene updateSettings:v15 withTransitionContext:v6];
  [(UVInjectedScene *)self sceneSize];
  if (v9 != v13 || v11 != v12)
  {
    sceneResizeHandler = self->_sceneResizeHandler;
    if (sceneResizeHandler)
    {
      sceneResizeHandler[2]();
    }
  }
}

+ (id)_baseSceneSettings:(id)a3 sceneIdentifier:(id)a4 parentSettings:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(FBSSettings *)[UVMutablePreviewSceneSettings alloc] initWithSettings:v8];

  if (v7)
  {
    v12 = UVSceneIdentifierToPersistenceIdentifier(v7, v11);
    [(UVMutablePreviewSceneSettings *)v10 setPersistenceIdentifier:v12];
  }

  [(UVMutablePreviewSceneSettings *)v10 setDisplayConfiguration:v9];
  [(UVMutablePreviewSceneSettings *)v10 setLevel:1.0];
  [(UVMutablePreviewSceneSettings *)v10 setForeground:1];
  [(UVMutablePreviewSceneSettings *)v10 setInterfaceOrientation:1];
  [(UVMutablePreviewSceneSettings *)v10 setStatusBarDisabled:1];
  [v9 bounds];
  [(UVMutablePreviewSceneSettings *)v10 setFrame:?];
  [v9 bounds];
  v14 = v13;
  v16 = v15;

  [(UVMutablePreviewSceneSettings *)v10 setPreviewMaximumSize:v14, v16];

  return v10;
}

+ (id)injectInRunningTarget:(id)a3 error:(id *)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277D46FA0] predicateMatchingBundleIdentifier:v6];
  v17 = 0;
  v8 = [MEMORY[0x277D46F48] handleForPredicate:v7 error:&v17];
  v9 = v17;
  if (v8)
  {
    v10 = [a1 _injectInProcessHandle:v8 error:a4];
  }

  else
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to get process handle for %@: %@", v6, v9];
    v12 = UVLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[UVInjectedScene injectInRunningTarget:error:];
    }

    if (a4)
    {
      v13 = MEMORY[0x277CCA9B8];
      v18 = *MEMORY[0x277CCA450];
      v19[0] = v11;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      *a4 = [v13 errorWithDomain:@"UVErrorDomain" code:1 userInfo:v14];
    }

    v10 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)_injectInProcessHandle:(id)a3 error:(id *)a4
{
  v37[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277D0AAC0] sharedInstance];
  v34 = v6;
  v32 = a4;
  if (v6)
  {
    [v6 auditToken];
  }

  else
  {
    memset(v35, 0, sizeof(v35));
  }

  v8 = [v7 registerProcessForAuditToken:v35];

  v9 = MEMORY[0x277D0ADA8];
  v10 = [v8 identity];
  v11 = [v9 identityForProcessIdentity:v10];

  v12 = MEMORY[0x277CCACA8];
  v13 = getpid();
  v14 = [v12 stringWithFormat:@"%@-(%d)-%d", @"UV-InjectedScene", v13, ++_NextIdentifier_identifier];
  v15 = +[(FBSSceneSpecification *)UVInjectedSceneSpecification];
  v16 = [MEMORY[0x277D0AD50] parametersForSpecification:v15];
  v17 = [MEMORY[0x277D759A0] mainScreen];
  v18 = [v17 displayConfiguration];

  v33 = v18;
  v19 = [a1 _baseSceneSettings:v18 sceneIdentifier:v14 parentSettings:0];
  v20 = [v19 copy];
  [v16 setSettings:v20];

  v21 = [MEMORY[0x277D0AD48] definition];
  v22 = [MEMORY[0x277D0ADC0] identityForIdentifier:v14];
  [v21 setIdentity:v22];

  [v21 setClientIdentity:v11];
  [v21 setSpecification:v15];
  v23 = [MEMORY[0x277D0AAD8] sharedInstance];
  v24 = [v23 createSceneWithDefinition:v21 initialParameters:v16];

  if (v24)
  {
    v25 = [[UVInjectedScene alloc] _initWithScene:v24];
  }

  else
  {
    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to create scene for process %@", v8];
    v27 = UVLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      +[UVInjectedScene injectInRunningTarget:error:];
    }

    if (v32)
    {
      v31 = MEMORY[0x277CCA9B8];
      v36 = *MEMORY[0x277CCA450];
      v37[0] = v26;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
      *v32 = [v31 errorWithDomain:@"UVErrorDomain" code:2 userInfo:v28];
    }

    v25 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];

  return v25;
}

- (void)_computeSceneSettingsUsing:(void *)a1 error:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)injectInRunningTarget:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_25F542000, v0, v1, "%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end
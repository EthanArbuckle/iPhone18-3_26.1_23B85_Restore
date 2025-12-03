@interface UVInjectedScene
+ (id)_baseSceneSettings:(id)settings sceneIdentifier:(id)identifier parentSettings:(id)parentSettings;
+ (id)_injectInProcessHandle:(id)handle error:(id *)error;
+ (id)injectInRunningTarget:(id)target error:(id *)error;
- (BOOL)_computeAndUpdateSceneSettings:(id *)settings;
- (BOOL)setMaximizedWithParent:(id)parent error:(id *)error;
- (BOOL)setMinimizedWithParent:(id)parent size:(CGSize)size maximumSize:(CGSize)maximumSize error:(id *)error;
- (CGSize)sceneSize;
- (NSString)description;
- (id)_computeSceneSettingsUsing:(id)using error:(id *)error;
- (id)_initWithScene:(id)scene;
- (void)_handleActionsFromHostedScene:(id)scene;
- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type;
- (void)_setParentScene:(id)scene;
- (void)_updateSceneSettings:(id)settings transitionContext:(id)context;
- (void)dealloc;
- (void)invalidate;
- (void)scene:(id)scene didUpdateClientSettingsWithDiff:(id)diff oldClientSettings:(id)settings transitionContext:(id)context;
- (void)sceneDidInvalidate:(id)invalidate;
- (void)sendAction:(id)action;
- (void)setActionHandler:(id)handler;
- (void)setInvalidationHandler:(id)handler;
- (void)setSceneResizeHandler:(id)handler;
@end

@implementation UVInjectedScene

- (id)_initWithScene:(id)scene
{
  sceneCopy = scene;
  v10.receiver = self;
  v10.super_class = UVInjectedScene;
  v6 = [(UVInjectedScene *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scene, scene);
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
  identifier = [(FBScene *)self->_scene identifier];
  v7 = [v3 stringWithFormat:@"<%@ %p, identifier: %@>", v5, self, identifier];

  return v7;
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
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
      selfCopy = self;
      _os_log_impl(&dword_25F542000, v3, OS_LOG_TYPE_DEFAULT, "Invalidation of %@", &v13, 0xCu);
    }

    self->_invalidated = 1;
    [(FBScene *)self->_scene setDelegate:0];
    mEMORY[0x277D0AAD8] = [MEMORY[0x277D0AAD8] sharedInstance];
    identifier = [(FBScene *)self->_scene identifier];
    v6 = [mEMORY[0x277D0AAD8] sceneWithIdentifier:identifier];

    if (v6)
    {
      identifier2 = [(FBScene *)self->_scene identifier];
      [mEMORY[0x277D0AAD8] destroyScene:identifier2 withTransitionContext:0];
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

- (void)setInvalidationHandler:(id)handler
{
  handlerCopy = handler;
  if (self->_invalidated)
  {
    if (!handlerCopy)
    {
      goto LABEL_6;
    }

    v7 = handlerCopy;
    handlerCopy[2]();
  }

  else
  {
    v7 = handlerCopy;
    v5 = _Block_copy(handlerCopy);
    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = v5;
  }

  handlerCopy = v7;
LABEL_6:
}

- (void)setSceneResizeHandler:(id)handler
{
  if (!self->_invalidated)
  {
    v5 = _Block_copy(handler);
    sceneResizeHandler = self->_sceneResizeHandler;
    self->_sceneResizeHandler = v5;

    MEMORY[0x2821F96F8](v5, sceneResizeHandler);
  }
}

- (void)setActionHandler:(id)handler
{
  if (!self->_invalidated)
  {
    v5 = _Block_copy(handler);
    actionHandler = self->_actionHandler;
    self->_actionHandler = v5;

    MEMORY[0x2821F96F8](v5, actionHandler);
  }
}

- (void)sendAction:(id)action
{
  scene = self->_scene;
  v4 = [MEMORY[0x277CBEB98] setWithObject:action];
  [(FBScene *)scene sendActions:v4];
}

- (void)_handleActionsFromHostedScene:(id)scene
{
  v17 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  v5 = sceneCopy;
  if (self->_actionHandler)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [sceneCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (void)scene:(id)scene didUpdateClientSettingsWithDiff:(id)diff oldClientSettings:(id)settings transitionContext:(id)context
{
  actions = [context actions];
  [(UVInjectedScene *)self _handleActionsFromHostedScene:actions];
}

- (void)sceneDidInvalidate:(id)invalidate
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = UVLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_25F542000, v4, OS_LOG_TYPE_DEFAULT, "Scene triggered invalidation of %@", &v6, 0xCu);
  }

  [(UVInjectedScene *)self invalidate];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type
{
  contextCopy = context;
  settings = [sScene settings];
  v11 = [(UVInjectedScene *)self _computeSceneSettingsUsing:settings error:0];

  if (v11)
  {
    v12 = [contextCopy copy];

    [v12 setActions:0];
    [(UVInjectedScene *)self _updateSceneSettings:v11 transitionContext:v12];
    contextCopy = v12;
  }
}

- (void)_setParentScene:(id)scene
{
  v12[1] = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  parentScene = self->_parentScene;
  if (parentScene != sceneCopy)
  {
    identifier = [(FBScene *)self->_scene identifier];
    [(UIWindowScene *)parentScene _unregisterSettingsDiffActionArrayForKey:identifier];

    objc_storeStrong(&self->_parentScene, scene);
    v8 = self->_parentScene;
    v12[0] = self;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    identifier2 = [(FBScene *)self->_scene identifier];
    [(UIWindowScene *)v8 _registerSettingsDiffActionArray:v9 forKey:identifier2];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)setMaximizedWithParent:(id)parent error:(id *)error
{
  [(UVInjectedScene *)self _setParentScene:parent];
  self->_maximized = 1;

  return [(UVInjectedScene *)self _computeAndUpdateSceneSettings:error];
}

- (BOOL)setMinimizedWithParent:(id)parent size:(CGSize)size maximumSize:(CGSize)maximumSize error:(id *)error
{
  height = maximumSize.height;
  width = maximumSize.width;
  v9 = size.height;
  v10 = size.width;
  [(UVInjectedScene *)self _setParentScene:parent];
  self->_maximized = 0;
  self->_overrideSceneSize.width = v10;
  self->_overrideSceneSize.height = v9;
  self->_overrideMaximumSize.width = width;
  self->_overrideMaximumSize.height = height;

  return [(UVInjectedScene *)self _computeAndUpdateSceneSettings:error];
}

- (CGSize)sceneSize
{
  settings = [(FBScene *)self->_scene settings];
  [settings frame];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (BOOL)_computeAndUpdateSceneSettings:(id *)settings
{
  _FBSScene = [(UIWindowScene *)self->_parentScene _FBSScene];
  settings = [_FBSScene settings];

  v7 = [(UVInjectedScene *)self _computeSceneSettingsUsing:settings error:settings];
  if (v7)
  {
    [(UVInjectedScene *)self _updateSceneSettings:v7 transitionContext:0];
  }

  return v7 != 0;
}

- (id)_computeSceneSettingsUsing:(id)using error:(id *)error
{
  usingCopy = using;
  v14 = usingCopy;
  if (usingCopy)
  {
    v15 = usingCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      displayConfiguration = [v15 displayConfiguration];
      if (displayConfiguration)
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
          v24 = [objc_opt_class() _baseSceneSettings:displayConfiguration sceneIdentifier:0 parentSettings:0];
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

      if (error)
      {
        v42 = v40;
        *error = v40;
      }
    }

    else
    {
      v30 = objc_opt_class();
      displayConfiguration = UVPreviewsServicesError(@"cannot compute settings from parent scene with non-UI settings: %@", v31, v32, v33, v34, v35, v36, v37, v30);
      v38 = UVLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
      {
        [UVInjectedScene _computeSceneSettingsUsing:displayConfiguration error:?];
      }

      if (error)
      {
        v39 = displayConfiguration;
        v29 = 0;
        *error = displayConfiguration;
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

  if (error)
  {
    v28 = v15;
    v29 = 0;
    *error = v15;
  }

  else
  {
    v29 = 0;
  }

LABEL_29:

  return v29;
}

- (void)_updateSceneSettings:(id)settings transitionContext:(id)context
{
  contextCopy = context;
  settingsCopy = settings;
  [(UVInjectedScene *)self sceneSize];
  v9 = v8;
  v11 = v10;
  v15 = [(UVInjectedScene *)self _prepareSceneSettingsForUpdate:settingsCopy];

  [(FBScene *)self->_scene updateSettings:v15 withTransitionContext:contextCopy];
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

+ (id)_baseSceneSettings:(id)settings sceneIdentifier:(id)identifier parentSettings:(id)parentSettings
{
  identifierCopy = identifier;
  parentSettingsCopy = parentSettings;
  settingsCopy = settings;
  v10 = [(FBSSettings *)[UVMutablePreviewSceneSettings alloc] initWithSettings:parentSettingsCopy];

  if (identifierCopy)
  {
    v12 = UVSceneIdentifierToPersistenceIdentifier(identifierCopy, v11);
    [(UVMutablePreviewSceneSettings *)v10 setPersistenceIdentifier:v12];
  }

  [(UVMutablePreviewSceneSettings *)v10 setDisplayConfiguration:settingsCopy];
  [(UVMutablePreviewSceneSettings *)v10 setLevel:1.0];
  [(UVMutablePreviewSceneSettings *)v10 setForeground:1];
  [(UVMutablePreviewSceneSettings *)v10 setInterfaceOrientation:1];
  [(UVMutablePreviewSceneSettings *)v10 setStatusBarDisabled:1];
  [settingsCopy bounds];
  [(UVMutablePreviewSceneSettings *)v10 setFrame:?];
  [settingsCopy bounds];
  v14 = v13;
  v16 = v15;

  [(UVMutablePreviewSceneSettings *)v10 setPreviewMaximumSize:v14, v16];

  return v10;
}

+ (id)injectInRunningTarget:(id)target error:(id *)error
{
  v19[1] = *MEMORY[0x277D85DE8];
  targetCopy = target;
  v7 = [MEMORY[0x277D46FA0] predicateMatchingBundleIdentifier:targetCopy];
  v17 = 0;
  v8 = [MEMORY[0x277D46F48] handleForPredicate:v7 error:&v17];
  v9 = v17;
  if (v8)
  {
    v10 = [self _injectInProcessHandle:v8 error:error];
  }

  else
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to get process handle for %@: %@", targetCopy, v9];
    v12 = UVLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[UVInjectedScene injectInRunningTarget:error:];
    }

    if (error)
    {
      v13 = MEMORY[0x277CCA9B8];
      v18 = *MEMORY[0x277CCA450];
      v19[0] = v11;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      *error = [v13 errorWithDomain:@"UVErrorDomain" code:1 userInfo:v14];
    }

    v10 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)_injectInProcessHandle:(id)handle error:(id *)error
{
  v37[1] = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  mEMORY[0x277D0AAC0] = [MEMORY[0x277D0AAC0] sharedInstance];
  v34 = handleCopy;
  errorCopy = error;
  if (handleCopy)
  {
    [handleCopy auditToken];
  }

  else
  {
    memset(v35, 0, sizeof(v35));
  }

  v8 = [mEMORY[0x277D0AAC0] registerProcessForAuditToken:v35];

  v9 = MEMORY[0x277D0ADA8];
  identity = [v8 identity];
  v11 = [v9 identityForProcessIdentity:identity];

  v12 = MEMORY[0x277CCACA8];
  v13 = getpid();
  v14 = [v12 stringWithFormat:@"%@-(%d)-%d", @"UV-InjectedScene", v13, ++_NextIdentifier_identifier];
  v15 = +[(FBSSceneSpecification *)UVInjectedSceneSpecification];
  v16 = [MEMORY[0x277D0AD50] parametersForSpecification:v15];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  displayConfiguration = [mainScreen displayConfiguration];

  v33 = displayConfiguration;
  v19 = [self _baseSceneSettings:displayConfiguration sceneIdentifier:v14 parentSettings:0];
  v20 = [v19 copy];
  [v16 setSettings:v20];

  definition = [MEMORY[0x277D0AD48] definition];
  v22 = [MEMORY[0x277D0ADC0] identityForIdentifier:v14];
  [definition setIdentity:v22];

  [definition setClientIdentity:v11];
  [definition setSpecification:v15];
  mEMORY[0x277D0AAD8] = [MEMORY[0x277D0AAD8] sharedInstance];
  v24 = [mEMORY[0x277D0AAD8] createSceneWithDefinition:definition initialParameters:v16];

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

    if (errorCopy)
    {
      v31 = MEMORY[0x277CCA9B8];
      v36 = *MEMORY[0x277CCA450];
      v37[0] = v26;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
      *errorCopy = [v31 errorWithDomain:@"UVErrorDomain" code:2 userInfo:v28];
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
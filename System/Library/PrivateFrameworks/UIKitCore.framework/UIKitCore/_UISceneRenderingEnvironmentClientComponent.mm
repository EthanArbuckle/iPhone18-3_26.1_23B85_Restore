@interface _UISceneRenderingEnvironmentClientComponent
- (BOOL)isCapturingContentForAdditionalRenderingDestination;
- (BOOL)prefersContentProtection;
- (NSString)systemDisplayIdentifier;
- (_UIWindowSceneTraitProvider)_traitProvider;
- (id)clientSettings;
- (id)settings;
- (id)traitOverridesForTraitProvider:(id)provider;
- (void)_setupTraitProviderWithUIScene:(id)scene;
- (void)_uiSceneDidInitializeSceneComponents:(id)components;
- (void)scene:(id)scene didUpdateSettings:(id)settings;
- (void)sceneWillInvalidate:(id)invalidate;
- (void)setPrefersContentProtection:(BOOL)protection;
- (void)setScene:(id)scene;
- (void)updateClientSettings:(id)settings;
@end

@implementation _UISceneRenderingEnvironmentClientComponent

- (_UIWindowSceneTraitProvider)_traitProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_traitProvider);

  return WeakRetained;
}

- (BOOL)isCapturingContentForAdditionalRenderingDestination
{
  settings = [(_UISceneRenderingEnvironmentClientComponent *)self settings];
  modern_isCapturingContentForAdditionalRenderingDestination = [settings modern_isCapturingContentForAdditionalRenderingDestination];

  return modern_isCapturingContentForAdditionalRenderingDestination;
}

- (id)settings
{
  scene = [(FBSSceneComponent *)self scene];
  settings = [scene settings];

  return settings;
}

- (NSString)systemDisplayIdentifier
{
  settings = [(_UISceneRenderingEnvironmentClientComponent *)self settings];
  systemDisplayIdentifier = [settings systemDisplayIdentifier];

  return systemDisplayIdentifier;
}

- (id)clientSettings
{
  scene = [(FBSSceneComponent *)self scene];
  clientSettings = [scene clientSettings];

  return clientSettings;
}

- (void)updateClientSettings:(id)settings
{
  settingsCopy = settings;
  clientScene = [(FBSSceneComponent *)self clientScene];
  [clientScene updateClientSettings:settingsCopy];
}

- (void)setScene:(id)scene
{
  v7.receiver = self;
  v7.super_class = _UISceneRenderingEnvironmentClientComponent;
  [(FBSSceneComponent *)&v7 setScene:scene];
  clientScene = [(FBSSceneComponent *)self clientScene];
  if (clientScene)
  {
    v5 = [UIScene _sceneForFBSScene:clientScene];
    if (v5)
    {
      [(_UISceneRenderingEnvironmentClientComponent *)self _setupTraitProviderWithUIScene:v5];
    }

    else
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:self selector:sel__uiSceneDidInitializeSceneComponents_ name:@"_UISceneDidInitializeSceneComponentsNotification" object:0];
    }
  }
}

- (BOOL)prefersContentProtection
{
  clientSettings = [(_UISceneRenderingEnvironmentClientComponent *)self clientSettings];
  prefersContentProtection = [clientSettings prefersContentProtection];

  return prefersContentProtection;
}

- (void)setPrefersContentProtection:(BOOL)protection
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __75___UISceneRenderingEnvironmentClientComponent_setPrefersContentProtection___block_invoke;
  v3[3] = &__block_descriptor_33_e113_v24__0__FBSMutableSceneClientSettings__UISceneRenderingEnvironmentClientSettings__8__FBSSceneTransitionContext_16l;
  protectionCopy = protection;
  [(_UISceneRenderingEnvironmentClientComponent *)self updateClientSettings:v3];
}

- (void)scene:(id)scene didUpdateSettings:(id)settings
{
  sceneCopy = scene;
  settingsCopy = settings;
  settingsDiff = [settingsCopy settingsDiff];
  v9 = [settingsDiff containsProperty:sel_modern_isCapturingContentForAdditionalRenderingDestination];
  v10 = [settingsDiff containsProperty:sel_displayConfiguration];
  if ([settingsDiff containsProperty:sel_foreground])
  {
    settings = [sceneCopy settings];
    isForeground = [settings isForeground];

    isCapturingContentForAdditionalRenderingDestination = [(_UISceneRenderingEnvironmentClientComponent *)self isCapturingContentForAdditionalRenderingDestination];
    v14 = isCapturingContentForAdditionalRenderingDestination;
    if (((v9 | v10 & isCapturingContentForAdditionalRenderingDestination) & 1) == 0)
    {
      if (!isForeground)
      {
        goto LABEL_22;
      }

      settings2 = [settingsCopy settings];
      displayConfiguration = [settings2 displayConfiguration];
      identity = [displayConfiguration identity];
      v18 = [UIScreen _screenWithFBSDisplayIdentity:identity];

      if (v14 != [v18 isCaptured])
      {
        v19 = MEMORY[0x1E696AEC0];
        clientScene = [(FBSSceneComponent *)self clientScene];
        identityToken = [clientScene identityToken];
        v22 = [v19 stringWithFormat:@"moving to foreground: %@", identityToken];

        v23 = dispatch_time(0, 100000000);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __71___UISceneRenderingEnvironmentClientComponent_scene_didUpdateSettings___block_invoke;
        block[3] = &unk_1E70F35B8;
        v51 = v18;
        v52 = v22;
        v24 = v22;
        dispatch_after(v23, MEMORY[0x1E69E96A0], block);
      }

      goto LABEL_21;
    }
  }

  else
  {
    isCapturingContentForAdditionalRenderingDestination2 = [(_UISceneRenderingEnvironmentClientComponent *)self isCapturingContentForAdditionalRenderingDestination];
    if (((v9 | v10 & isCapturingContentForAdditionalRenderingDestination2) & 1) == 0)
    {
      goto LABEL_22;
    }

    v14 = isCapturingContentForAdditionalRenderingDestination2;
  }

  v49 = sceneCopy;
  settings3 = [settingsCopy settings];
  displayConfiguration2 = [settings3 displayConfiguration];
  identity2 = [displayConfiguration2 identity];
  v18 = [UIScreen _screenWithFBSDisplayIdentity:identity2];

  if (v14 != [v18 isCaptured])
  {
    v29 = MEMORY[0x1E696AEC0];
    clientScene2 = [(FBSSceneComponent *)self clientScene];
    identityToken2 = [clientScene2 identityToken];
    v32 = NSStringFromBOOL();
    v33 = [v29 stringWithFormat:@"update for %@, capturing:%@", identityToken2, v32];
    [(UIScreen *)v18 _evaluateCapturedStateForReason:v33];
  }

  sceneCopy = v49;
  if (v10)
  {
    previousSettings = [settingsCopy previousSettings];
    displayConfiguration3 = [previousSettings displayConfiguration];
    identity3 = [displayConfiguration3 identity];
    v37 = [UIScreen _screenWithFBSDisplayIdentity:identity3];

    clientScene3 = v18;
    v39 = v37;
    v40 = v39;
    if (clientScene3 == v39)
    {
      identityToken3 = v39;
    }

    else
    {
      if (clientScene3 && v39)
      {
        v41 = [clientScene3 isEqual:v39];

        if (v41)
        {
          goto LABEL_20;
        }
      }

      else
      {
      }

      v43 = MEMORY[0x1E696AEC0];
      clientScene3 = [(FBSSceneComponent *)self clientScene];
      identityToken3 = [clientScene3 identityToken];
      v44 = NSStringFromBOOL();
      v45 = [v43 stringWithFormat:@"old display for %@, capturing:%@", identityToken3, v44];
      [(UIScreen *)v40 _evaluateCapturedStateForReason:v45];
    }

LABEL_20:
  }

LABEL_21:

LABEL_22:
  settingsDiff2 = [settingsCopy settingsDiff];
  v47 = [settingsDiff2 containsProperty:sel_activeAppearance];

  if (v47)
  {
    _traitProvider = [(_UISceneRenderingEnvironmentClientComponent *)self _traitProvider];
    [_traitProvider invalidateTraitOverrides];
  }
}

- (void)sceneWillInvalidate:(id)invalidate
{
  if ([(_UISceneRenderingEnvironmentClientComponent *)self isCapturingContentForAdditionalRenderingDestination])
  {
    self->_isInvalidating = 1;
    scene = [(FBSSceneComponent *)self scene];
    settings = [scene settings];
    displayConfiguration = [settings displayConfiguration];
    identity = [displayConfiguration identity];
    v12 = [UIScreen _screenWithFBSDisplayIdentity:identity];

    v8 = MEMORY[0x1E696AEC0];
    clientScene = [(FBSSceneComponent *)self clientScene];
    identityToken = [clientScene identityToken];
    v11 = [v8 stringWithFormat:@"scene invalidating: %@", identityToken];
    [(UIScreen *)v12 _evaluateCapturedStateForReason:v11];
  }
}

- (id)traitOverridesForTraitProvider:(id)provider
{
  providerCopy = provider;
  if (dyld_program_sdk_at_least())
  {
    _scene = [providerCopy _scene];
    _effectiveSettings = [_scene _effectiveSettings];

    if ([_effectiveSettings activeAppearance] < 2)
    {
      [UITraitCollection traitCollectionWithActiveAppearance:?];
    }

    else
    {
      +[UITraitCollection _emptyTraitCollection];
    }
    v6 = ;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_setupTraitProviderWithUIScene:(id)scene
{
  sceneCopy = scene;
  _traitProvider = [(_UISceneRenderingEnvironmentClientComponent *)self _traitProvider];

  if (!_traitProvider)
  {
    v5 = [[_UIWindowSceneTraitProvider alloc] initWithScene:sceneCopy];
    [(_UIWindowSceneTraitProvider *)v5 setSource:self];
    [sceneCopy _registerSceneComponent:v5 forKey:@"RenderingEnvironmentTraitProviderKey"];
    [(_UISceneRenderingEnvironmentClientComponent *)self set_traitProvider:v5];
  }
}

- (void)_uiSceneDidInitializeSceneComponents:(id)components
{
  componentsCopy = components;
  object = [componentsCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = componentsCopy;
  if (isKindOfClass)
  {
    object2 = [componentsCopy object];
    clientScene = [(FBSSceneComponent *)self clientScene];
    _FBSScene = [object2 _FBSScene];
    v10 = [clientScene isEqual:_FBSScene];

    if (v10)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter removeObserver:self name:@"_UISceneDidInitializeSceneComponentsNotification" object:0];

      [(_UISceneRenderingEnvironmentClientComponent *)self _setupTraitProviderWithUIScene:object2];
    }

    v6 = componentsCopy;
  }
}

@end
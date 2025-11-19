@interface _UISceneRenderingEnvironmentClientComponent
- (BOOL)isCapturingContentForAdditionalRenderingDestination;
- (BOOL)prefersContentProtection;
- (NSString)systemDisplayIdentifier;
- (_UIWindowSceneTraitProvider)_traitProvider;
- (id)clientSettings;
- (id)settings;
- (id)traitOverridesForTraitProvider:(id)a3;
- (void)_setupTraitProviderWithUIScene:(id)a3;
- (void)_uiSceneDidInitializeSceneComponents:(id)a3;
- (void)scene:(id)a3 didUpdateSettings:(id)a4;
- (void)sceneWillInvalidate:(id)a3;
- (void)setPrefersContentProtection:(BOOL)a3;
- (void)setScene:(id)a3;
- (void)updateClientSettings:(id)a3;
@end

@implementation _UISceneRenderingEnvironmentClientComponent

- (_UIWindowSceneTraitProvider)_traitProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_traitProvider);

  return WeakRetained;
}

- (BOOL)isCapturingContentForAdditionalRenderingDestination
{
  v2 = [(_UISceneRenderingEnvironmentClientComponent *)self settings];
  v3 = [v2 modern_isCapturingContentForAdditionalRenderingDestination];

  return v3;
}

- (id)settings
{
  v2 = [(FBSSceneComponent *)self scene];
  v3 = [v2 settings];

  return v3;
}

- (NSString)systemDisplayIdentifier
{
  v2 = [(_UISceneRenderingEnvironmentClientComponent *)self settings];
  v3 = [v2 systemDisplayIdentifier];

  return v3;
}

- (id)clientSettings
{
  v2 = [(FBSSceneComponent *)self scene];
  v3 = [v2 clientSettings];

  return v3;
}

- (void)updateClientSettings:(id)a3
{
  v4 = a3;
  v5 = [(FBSSceneComponent *)self clientScene];
  [v5 updateClientSettings:v4];
}

- (void)setScene:(id)a3
{
  v7.receiver = self;
  v7.super_class = _UISceneRenderingEnvironmentClientComponent;
  [(FBSSceneComponent *)&v7 setScene:a3];
  v4 = [(FBSSceneComponent *)self clientScene];
  if (v4)
  {
    v5 = [UIScene _sceneForFBSScene:v4];
    if (v5)
    {
      [(_UISceneRenderingEnvironmentClientComponent *)self _setupTraitProviderWithUIScene:v5];
    }

    else
    {
      v6 = [MEMORY[0x1E696AD88] defaultCenter];
      [v6 addObserver:self selector:sel__uiSceneDidInitializeSceneComponents_ name:@"_UISceneDidInitializeSceneComponentsNotification" object:0];
    }
  }
}

- (BOOL)prefersContentProtection
{
  v2 = [(_UISceneRenderingEnvironmentClientComponent *)self clientSettings];
  v3 = [v2 prefersContentProtection];

  return v3;
}

- (void)setPrefersContentProtection:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __75___UISceneRenderingEnvironmentClientComponent_setPrefersContentProtection___block_invoke;
  v3[3] = &__block_descriptor_33_e113_v24__0__FBSMutableSceneClientSettings__UISceneRenderingEnvironmentClientSettings__8__FBSSceneTransitionContext_16l;
  v4 = a3;
  [(_UISceneRenderingEnvironmentClientComponent *)self updateClientSettings:v3];
}

- (void)scene:(id)a3 didUpdateSettings:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 settingsDiff];
  v9 = [v8 containsProperty:sel_modern_isCapturingContentForAdditionalRenderingDestination];
  v10 = [v8 containsProperty:sel_displayConfiguration];
  if ([v8 containsProperty:sel_foreground])
  {
    v11 = [v6 settings];
    v12 = [v11 isForeground];

    v13 = [(_UISceneRenderingEnvironmentClientComponent *)self isCapturingContentForAdditionalRenderingDestination];
    v14 = v13;
    if (((v9 | v10 & v13) & 1) == 0)
    {
      if (!v12)
      {
        goto LABEL_22;
      }

      v15 = [v7 settings];
      v16 = [v15 displayConfiguration];
      v17 = [v16 identity];
      v18 = [UIScreen _screenWithFBSDisplayIdentity:v17];

      if (v14 != [v18 isCaptured])
      {
        v19 = MEMORY[0x1E696AEC0];
        v20 = [(FBSSceneComponent *)self clientScene];
        v21 = [v20 identityToken];
        v22 = [v19 stringWithFormat:@"moving to foreground: %@", v21];

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
    v25 = [(_UISceneRenderingEnvironmentClientComponent *)self isCapturingContentForAdditionalRenderingDestination];
    if (((v9 | v10 & v25) & 1) == 0)
    {
      goto LABEL_22;
    }

    v14 = v25;
  }

  v49 = v6;
  v26 = [v7 settings];
  v27 = [v26 displayConfiguration];
  v28 = [v27 identity];
  v18 = [UIScreen _screenWithFBSDisplayIdentity:v28];

  if (v14 != [v18 isCaptured])
  {
    v29 = MEMORY[0x1E696AEC0];
    v30 = [(FBSSceneComponent *)self clientScene];
    v31 = [v30 identityToken];
    v32 = NSStringFromBOOL();
    v33 = [v29 stringWithFormat:@"update for %@, capturing:%@", v31, v32];
    [(UIScreen *)v18 _evaluateCapturedStateForReason:v33];
  }

  v6 = v49;
  if (v10)
  {
    v34 = [v7 previousSettings];
    v35 = [v34 displayConfiguration];
    v36 = [v35 identity];
    v37 = [UIScreen _screenWithFBSDisplayIdentity:v36];

    v38 = v18;
    v39 = v37;
    v40 = v39;
    if (v38 == v39)
    {
      v42 = v39;
    }

    else
    {
      if (v38 && v39)
      {
        v41 = [v38 isEqual:v39];

        if (v41)
        {
          goto LABEL_20;
        }
      }

      else
      {
      }

      v43 = MEMORY[0x1E696AEC0];
      v38 = [(FBSSceneComponent *)self clientScene];
      v42 = [v38 identityToken];
      v44 = NSStringFromBOOL();
      v45 = [v43 stringWithFormat:@"old display for %@, capturing:%@", v42, v44];
      [(UIScreen *)v40 _evaluateCapturedStateForReason:v45];
    }

LABEL_20:
  }

LABEL_21:

LABEL_22:
  v46 = [v7 settingsDiff];
  v47 = [v46 containsProperty:sel_activeAppearance];

  if (v47)
  {
    v48 = [(_UISceneRenderingEnvironmentClientComponent *)self _traitProvider];
    [v48 invalidateTraitOverrides];
  }
}

- (void)sceneWillInvalidate:(id)a3
{
  if ([(_UISceneRenderingEnvironmentClientComponent *)self isCapturingContentForAdditionalRenderingDestination])
  {
    self->_isInvalidating = 1;
    v4 = [(FBSSceneComponent *)self scene];
    v5 = [v4 settings];
    v6 = [v5 displayConfiguration];
    v7 = [v6 identity];
    v12 = [UIScreen _screenWithFBSDisplayIdentity:v7];

    v8 = MEMORY[0x1E696AEC0];
    v9 = [(FBSSceneComponent *)self clientScene];
    v10 = [v9 identityToken];
    v11 = [v8 stringWithFormat:@"scene invalidating: %@", v10];
    [(UIScreen *)v12 _evaluateCapturedStateForReason:v11];
  }
}

- (id)traitOverridesForTraitProvider:(id)a3
{
  v3 = a3;
  if (dyld_program_sdk_at_least())
  {
    v4 = [v3 _scene];
    v5 = [v4 _effectiveSettings];

    if ([v5 activeAppearance] < 2)
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

- (void)_setupTraitProviderWithUIScene:(id)a3
{
  v6 = a3;
  v4 = [(_UISceneRenderingEnvironmentClientComponent *)self _traitProvider];

  if (!v4)
  {
    v5 = [[_UIWindowSceneTraitProvider alloc] initWithScene:v6];
    [(_UIWindowSceneTraitProvider *)v5 setSource:self];
    [v6 _registerSceneComponent:v5 forKey:@"RenderingEnvironmentTraitProviderKey"];
    [(_UISceneRenderingEnvironmentClientComponent *)self set_traitProvider:v5];
  }
}

- (void)_uiSceneDidInitializeSceneComponents:(id)a3
{
  v12 = a3;
  v4 = [v12 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = v12;
  if (isKindOfClass)
  {
    v7 = [v12 object];
    v8 = [(FBSSceneComponent *)self clientScene];
    v9 = [v7 _FBSScene];
    v10 = [v8 isEqual:v9];

    if (v10)
    {
      v11 = [MEMORY[0x1E696AD88] defaultCenter];
      [v11 removeObserver:self name:@"_UISceneDidInitializeSceneComponentsNotification" object:0];

      [(_UISceneRenderingEnvironmentClientComponent *)self _setupTraitProviderWithUIScene:v7];
    }

    v6 = v12;
  }
}

@end
@interface _UICarPlaySceneComponent
- (BOOL)blackWallpaperModeEnabled;
- (BOOL)disableFiveRowKeyboards;
- (UICarPlayApplicationSceneSettings)carPlaySceneSettings;
- (UIScene)_scene;
- (UITraitCollection)_traitOverrides;
- (_UICarPlaySceneComponent)initWithScene:(id)a3;
- (id)_settingsDiffActionsForScene:(id)a3;
- (void)_invalidateTraitOverrides;
@end

@implementation _UICarPlaySceneComponent

- (UITraitCollection)_traitOverrides
{
  if ([(_UICarPlaySceneComponent *)self blackWallpaperModeEnabled])
  {
    v2 = objc_opt_self();
    v3 = [UITraitCollection traitCollectionWithNSIntegerValue:1 forTrait:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)blackWallpaperModeEnabled
{
  v2 = [(_UICarPlaySceneComponent *)self carPlaySceneSettings];
  v3 = [v2 blackWallpaperModeEnabled];

  return v3;
}

- (UICarPlayApplicationSceneSettings)carPlaySceneSettings
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v3 = [WeakRetained _FBSScene];
  v4 = [v3 settings];
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v6;
    }

    else
    {
      v5 = 0;
    }
  }

  v7 = v5;

  return v5;
}

- (_UICarPlaySceneComponent)initWithScene:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UICarPlaySceneComponent;
  v5 = [(_UICarPlaySceneComponent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scene, v4);
  }

  return v6;
}

- (id)_settingsDiffActionsForScene:(id)a3
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  return v4;
}

- (void)_invalidateTraitOverrides
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [WeakRetained _componentDidUpdateTraitOverrides:self];
  }
}

- (BOOL)disableFiveRowKeyboards
{
  v2 = [(_UICarPlaySceneComponent *)self carPlaySceneSettings];
  v3 = [v2 disableFiveRowKeyboards];

  return v3;
}

- (UIScene)_scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end
@interface _UIWindowSceneTraitProvider
- (UIScene)_scene;
- (UITraitCollection)_traitOverrides;
- (_UIWindowSceneTraitProvider)initWithScene:(id)a3;
- (_UIWindowSceneTraitSource)source;
- (void)invalidateTraitOverrides;
@end

@implementation _UIWindowSceneTraitProvider

- (UITraitCollection)_traitOverrides
{
  v3 = [(_UIWindowSceneTraitProvider *)self source];
  v4 = [v3 traitOverridesForTraitProvider:self];

  return v4;
}

- (_UIWindowSceneTraitSource)source
{
  WeakRetained = objc_loadWeakRetained(&self->_source);

  return WeakRetained;
}

- (UIScene)_scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

- (void)invalidateTraitOverrides
{
  v3 = [(_UIWindowSceneTraitProvider *)self _scene];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 _componentDidUpdateTraitOverrides:self];
  }
}

- (_UIWindowSceneTraitProvider)initWithScene:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UIWindowSceneTraitProvider;
  v5 = [(_UIWindowSceneTraitProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scene, v4);
  }

  return v6;
}

@end
@interface _UIWindowSceneTraitProvider
- (UIScene)_scene;
- (UITraitCollection)_traitOverrides;
- (_UIWindowSceneTraitProvider)initWithScene:(id)scene;
- (_UIWindowSceneTraitSource)source;
- (void)invalidateTraitOverrides;
@end

@implementation _UIWindowSceneTraitProvider

- (UITraitCollection)_traitOverrides
{
  source = [(_UIWindowSceneTraitProvider *)self source];
  v4 = [source traitOverridesForTraitProvider:self];

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
  _scene = [(_UIWindowSceneTraitProvider *)self _scene];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [_scene _componentDidUpdateTraitOverrides:self];
  }
}

- (_UIWindowSceneTraitProvider)initWithScene:(id)scene
{
  sceneCopy = scene;
  v8.receiver = self;
  v8.super_class = _UIWindowSceneTraitProvider;
  v5 = [(_UIWindowSceneTraitProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scene, sceneCopy);
  }

  return v6;
}

@end
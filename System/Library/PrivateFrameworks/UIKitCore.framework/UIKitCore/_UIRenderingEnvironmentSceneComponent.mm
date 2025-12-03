@interface _UIRenderingEnvironmentSceneComponent
- (NSString)description;
- (UIScene)_scene;
- (UITraitCollection)_traitOverrides;
- (_UIRenderingEnvironmentSceneComponent)initWithScene:(id)scene;
- (void)_invalidateTraitOverrides;
@end

@implementation _UIRenderingEnvironmentSceneComponent

- (void)_invalidateTraitOverrides
{
  if (!self)
  {
    return;
  }

  WeakRetained = objc_loadWeakRetained((self + 16));
  _FBSScene = [WeakRetained _FBSScene];
  settings = [_FBSScene settings];
  displayConfiguration = [settings displayConfiguration];

  v5 = *(self + 24);
  if (!displayConfiguration)
  {
    v6 = 0;
    goto LABEL_7;
  }

  if (!v5 || ([v5 refersToSameDisplayConfiguration:displayConfiguration] & 1) == 0)
  {
    v6 = [[_UIRenderingEnvironmentAttributes alloc] initWithDisplayConfiguration:displayConfiguration];
    v5 = *(self + 24);
LABEL_7:
    *(self + 24) = v6;

    v7 = *(self + 8);
    *(self + 8) = 0;
  }
}

- (UITraitCollection)_traitOverrides
{
  currentAttributes = self->_currentAttributes;
  if (currentAttributes)
  {
    traitOverrides = self->_traitOverrides;
    if (!traitOverrides)
    {
      v5 = [UITraitCollection traitCollectionWithObject:currentAttributes forTrait:objc_opt_class()];
      v6 = self->_traitOverrides;
      self->_traitOverrides = v5;

      traitOverrides = self->_traitOverrides;
    }

    v7 = traitOverrides;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (_UIRenderingEnvironmentSceneComponent)initWithScene:(id)scene
{
  sceneCopy = scene;
  v8.receiver = self;
  v8.super_class = _UIRenderingEnvironmentSceneComponent;
  v5 = [(_UIRenderingEnvironmentSceneComponent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scene, sceneCopy);
    [(_UIRenderingEnvironmentSceneComponent *)v6 _invalidateTraitOverrides];
  }

  return v6;
}

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = _UIRenderingEnvironmentSceneComponent;
  v3 = [(_UIRenderingEnvironmentSceneComponent *)&v7 description];
  v4 = [v3 mutableCopy];

  WeakRetained = objc_loadWeakRetained(&self->_scene);
  [v4 appendFormat:@" scene=%p", WeakRetained];

  if (self->_currentAttributes)
  {
    [v4 appendFormat:@" attributes=%@", self->_currentAttributes];
  }

  return v4;
}

- (UIScene)_scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end
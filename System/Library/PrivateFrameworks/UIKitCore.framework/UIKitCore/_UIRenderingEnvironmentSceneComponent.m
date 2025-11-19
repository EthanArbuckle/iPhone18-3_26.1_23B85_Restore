@interface _UIRenderingEnvironmentSceneComponent
- (NSString)description;
- (UIScene)_scene;
- (UITraitCollection)_traitOverrides;
- (_UIRenderingEnvironmentSceneComponent)initWithScene:(id)a3;
- (void)_invalidateTraitOverrides;
@end

@implementation _UIRenderingEnvironmentSceneComponent

- (void)_invalidateTraitOverrides
{
  if (!a1)
  {
    return;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 16));
  v3 = [WeakRetained _FBSScene];
  v4 = [v3 settings];
  v8 = [v4 displayConfiguration];

  v5 = *(a1 + 24);
  if (!v8)
  {
    v6 = 0;
    goto LABEL_7;
  }

  if (!v5 || ([v5 refersToSameDisplayConfiguration:v8] & 1) == 0)
  {
    v6 = [[_UIRenderingEnvironmentAttributes alloc] initWithDisplayConfiguration:v8];
    v5 = *(a1 + 24);
LABEL_7:
    *(a1 + 24) = v6;

    v7 = *(a1 + 8);
    *(a1 + 8) = 0;
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

- (_UIRenderingEnvironmentSceneComponent)initWithScene:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UIRenderingEnvironmentSceneComponent;
  v5 = [(_UIRenderingEnvironmentSceneComponent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scene, v4);
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
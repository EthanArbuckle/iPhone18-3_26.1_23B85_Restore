@interface CALayer(DisplayConfigurationProviding)
- (id)_uis_provideRenderingAttributes;
@end

@implementation CALayer(DisplayConfigurationProviding)

- (id)_uis_provideRenderingAttributes
{
  v1 = _UIViewLayerGetNearestAncestorView(self);
  traitCollection = [v1 traitCollection];
  v3 = [traitCollection objectForTrait:objc_opt_class()];
  if (!v3)
  {
    _window = [v1 _window];
    windowScene = [_window windowScene];
    v6 = [(UIScene *)windowScene _renderingEnvironmentSceneComponentRegisteringIfNecessary:?];

    if (v6)
    {
      v7 = v6[3];
    }

    else
    {
      v7 = 0;
    }

    v3 = v7;
  }

  return v3;
}

@end
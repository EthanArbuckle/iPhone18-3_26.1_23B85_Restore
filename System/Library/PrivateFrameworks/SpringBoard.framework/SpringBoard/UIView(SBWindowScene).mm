@interface UIView(SBWindowScene)
- (id)_sbDisplayConfiguration;
- (id)_sbWindowScene;
@end

@implementation UIView(SBWindowScene)

- (id)_sbWindowScene
{
  window = [self window];
  _sbWindowScene = [window _sbWindowScene];

  return _sbWindowScene;
}

- (id)_sbDisplayConfiguration
{
  _sbWindowScene = [self _sbWindowScene];
  _sbDisplayConfiguration = [_sbWindowScene _sbDisplayConfiguration];

  return _sbDisplayConfiguration;
}

@end
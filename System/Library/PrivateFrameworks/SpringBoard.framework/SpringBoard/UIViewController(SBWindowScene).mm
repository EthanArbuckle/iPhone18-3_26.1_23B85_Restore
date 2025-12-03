@interface UIViewController(SBWindowScene)
- (id)_sbDisplayConfiguration;
- (id)_sbWindowScene;
@end

@implementation UIViewController(SBWindowScene)

- (id)_sbWindowScene
{
  view = [self view];
  _sbWindowScene = [view _sbWindowScene];

  return _sbWindowScene;
}

- (id)_sbDisplayConfiguration
{
  _sbWindowScene = [self _sbWindowScene];
  _sbDisplayConfiguration = [_sbWindowScene _sbDisplayConfiguration];

  return _sbDisplayConfiguration;
}

@end
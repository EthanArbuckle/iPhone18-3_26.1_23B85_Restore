@interface UIViewController(SBWindowScene)
- (id)_sbDisplayConfiguration;
- (id)_sbWindowScene;
@end

@implementation UIViewController(SBWindowScene)

- (id)_sbWindowScene
{
  v1 = [a1 view];
  v2 = [v1 _sbWindowScene];

  return v2;
}

- (id)_sbDisplayConfiguration
{
  v1 = [a1 _sbWindowScene];
  v2 = [v1 _sbDisplayConfiguration];

  return v2;
}

@end
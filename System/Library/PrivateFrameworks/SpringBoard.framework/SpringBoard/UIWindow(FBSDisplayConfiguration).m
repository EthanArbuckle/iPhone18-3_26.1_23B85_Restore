@interface UIWindow(FBSDisplayConfiguration)
- (id)_fbsDisplayConfiguration;
- (id)_fbsDisplayIdentity;
@end

@implementation UIWindow(FBSDisplayConfiguration)

- (id)_fbsDisplayIdentity
{
  v1 = [a1 windowScene];
  v2 = [v1 screen];
  v3 = [v2 displayIdentity];

  return v3;
}

- (id)_fbsDisplayConfiguration
{
  v1 = [a1 windowScene];
  v2 = [v1 screen];
  v3 = [v2 displayConfiguration];

  return v3;
}

@end
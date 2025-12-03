@interface UIWindow(FBSDisplayConfiguration)
- (id)_fbsDisplayConfiguration;
- (id)_fbsDisplayIdentity;
@end

@implementation UIWindow(FBSDisplayConfiguration)

- (id)_fbsDisplayIdentity
{
  windowScene = [self windowScene];
  screen = [windowScene screen];
  displayIdentity = [screen displayIdentity];

  return displayIdentity;
}

- (id)_fbsDisplayConfiguration
{
  windowScene = [self windowScene];
  screen = [windowScene screen];
  displayConfiguration = [screen displayConfiguration];

  return displayConfiguration;
}

@end
@interface UIViewController(FBSDisplayConfiguration)
- (id)_fbsDisplayConfiguration;
- (id)_fbsDisplayIdentity;
@end

@implementation UIViewController(FBSDisplayConfiguration)

- (id)_fbsDisplayIdentity
{
  _screen = [self _screen];
  displayIdentity = [_screen displayIdentity];

  return displayIdentity;
}

- (id)_fbsDisplayConfiguration
{
  _screen = [self _screen];
  displayConfiguration = [_screen displayConfiguration];

  return displayConfiguration;
}

@end
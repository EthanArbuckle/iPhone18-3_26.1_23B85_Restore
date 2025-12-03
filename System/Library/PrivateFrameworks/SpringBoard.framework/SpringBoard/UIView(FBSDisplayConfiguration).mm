@interface UIView(FBSDisplayConfiguration)
- (id)_fbsDisplayConfiguration;
- (id)_fbsDisplayIdentity;
@end

@implementation UIView(FBSDisplayConfiguration)

- (id)_fbsDisplayConfiguration
{
  _screen = [self _screen];
  displayConfiguration = [_screen displayConfiguration];

  return displayConfiguration;
}

- (id)_fbsDisplayIdentity
{
  _screen = [self _screen];
  displayIdentity = [_screen displayIdentity];

  return displayIdentity;
}

@end
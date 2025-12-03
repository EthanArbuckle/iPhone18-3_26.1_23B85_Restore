@interface UIWindowScene(FBSDisplayConfiguration)
- (id)_fbsDisplayConfiguration;
- (id)_fbsDisplayIdentity;
@end

@implementation UIWindowScene(FBSDisplayConfiguration)

- (id)_fbsDisplayIdentity
{
  screen = [self screen];
  displayIdentity = [screen displayIdentity];

  return displayIdentity;
}

- (id)_fbsDisplayConfiguration
{
  screen = [self screen];
  displayConfiguration = [screen displayConfiguration];

  return displayConfiguration;
}

@end
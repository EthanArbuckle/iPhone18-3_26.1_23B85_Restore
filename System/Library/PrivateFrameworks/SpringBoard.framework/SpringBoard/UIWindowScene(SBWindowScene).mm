@interface UIWindowScene(SBWindowScene)
- (id)_sbDisplayConfiguration;
- (void)_sbWindowScene;
@end

@implementation UIWindowScene(SBWindowScene)

- (id)_sbDisplayConfiguration
{
  _FBSScene = [self _FBSScene];
  settings = [_FBSScene settings];
  displayConfiguration = [settings displayConfiguration];

  return displayConfiguration;
}

- (void)_sbWindowScene
{
  v2 = objc_opt_class();
  selfCopy = self;
  if (v2)
  {
    if (objc_opt_isKindOfClass())
    {
      v2 = selfCopy;
    }

    else
    {
      v2 = 0;
    }
  }

  v4 = v2;

  return v2;
}

@end
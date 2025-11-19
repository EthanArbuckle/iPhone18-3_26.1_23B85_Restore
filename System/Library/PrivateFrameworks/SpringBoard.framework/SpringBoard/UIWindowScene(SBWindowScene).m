@interface UIWindowScene(SBWindowScene)
- (id)_sbDisplayConfiguration;
- (void)_sbWindowScene;
@end

@implementation UIWindowScene(SBWindowScene)

- (id)_sbDisplayConfiguration
{
  v1 = [a1 _FBSScene];
  v2 = [v1 settings];
  v3 = [v2 displayConfiguration];

  return v3;
}

- (void)_sbWindowScene
{
  v2 = objc_opt_class();
  v3 = a1;
  if (v2)
  {
    if (objc_opt_isKindOfClass())
    {
      v2 = v3;
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
@interface FBScene(SceneMasking)
- (id)_sceneMaskingDelegate;
- (void)_sceneMaskingHostProvider;
- (void)_setSceneMaskingDelegate:()SceneMasking;
@end

@implementation FBScene(SceneMasking)

- (void)_sceneMaskingHostProvider
{
  v2 = objc_opt_class();
  v3 = [self componentForExtension:v2 ofClass:objc_opt_class()];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v5;
    }

    else
    {
      v4 = 0;
    }
  }

  v6 = v4;

  return v4;
}

- (void)_setSceneMaskingDelegate:()SceneMasking
{
  v4 = a3;
  _sceneMaskingHostProvider = [self _sceneMaskingHostProvider];
  [_sceneMaskingHostProvider set_sceneMaskingHost:v4];
}

- (id)_sceneMaskingDelegate
{
  _sceneMaskingHostProvider = [self _sceneMaskingHostProvider];
  _sceneMaskingHost = [_sceneMaskingHostProvider _sceneMaskingHost];

  return _sceneMaskingHost;
}

@end
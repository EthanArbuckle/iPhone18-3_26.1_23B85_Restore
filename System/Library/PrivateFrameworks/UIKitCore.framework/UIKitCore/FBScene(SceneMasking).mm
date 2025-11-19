@interface FBScene(SceneMasking)
- (id)_sceneMaskingDelegate;
- (void)_sceneMaskingHostProvider;
- (void)_setSceneMaskingDelegate:()SceneMasking;
@end

@implementation FBScene(SceneMasking)

- (void)_sceneMaskingHostProvider
{
  v2 = objc_opt_class();
  v3 = [a1 componentForExtension:v2 ofClass:objc_opt_class()];
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
  v5 = [a1 _sceneMaskingHostProvider];
  [v5 set_sceneMaskingHost:v4];
}

- (id)_sceneMaskingDelegate
{
  v1 = [a1 _sceneMaskingHostProvider];
  v2 = [v1 _sceneMaskingHost];

  return v2;
}

@end
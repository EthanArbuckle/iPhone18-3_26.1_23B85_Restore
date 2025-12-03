@interface FBScene(UISceneHostingController)
- (void)uiSceneHostingController;
@end

@implementation FBScene(UISceneHostingController)

- (void)uiSceneHostingController
{
  delegate = [self delegate];
  v2 = objc_opt_class();
  v3 = delegate;
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
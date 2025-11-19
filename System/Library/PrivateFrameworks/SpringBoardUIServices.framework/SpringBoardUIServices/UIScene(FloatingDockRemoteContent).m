@interface UIScene(FloatingDockRemoteContent)
- (void)floatingDockRemoteContentClientComponent;
@end

@implementation UIScene(FloatingDockRemoteContent)

- (void)floatingDockRemoteContentClientComponent
{
  v1 = [a1 _FBSScene];
  v2 = objc_opt_class();
  v3 = [v1 componentForExtension:v2 ofClass:objc_opt_class()];
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

@end
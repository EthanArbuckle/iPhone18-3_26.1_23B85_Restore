@interface UIWindow(SBWindowScene)
- (id)_sbDisplayConfiguration;
- (id)_sbWindowScene;
@end

@implementation UIWindow(SBWindowScene)

- (id)_sbWindowScene
{
  v1 = [a1 windowScene];
  v2 = objc_opt_class();
  v3 = v1;
  if (v2)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (!v5)
  {
    v6 = objc_opt_class();
    v7 = v3;
    if (v6)
    {
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    v5 = [v9 associatedWindowScene];
  }

  return v5;
}

- (id)_sbDisplayConfiguration
{
  v1 = [a1 _sbWindowScene];
  v2 = [v1 _sbDisplayConfiguration];

  return v2;
}

@end
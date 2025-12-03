@interface UIWindow(SBWindowScene)
- (id)_sbDisplayConfiguration;
- (id)_sbWindowScene;
@end

@implementation UIWindow(SBWindowScene)

- (id)_sbWindowScene
{
  windowScene = [self windowScene];
  v2 = objc_opt_class();
  v3 = windowScene;
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

  associatedWindowScene = v4;

  if (!associatedWindowScene)
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

    associatedWindowScene = [v9 associatedWindowScene];
  }

  return associatedWindowScene;
}

- (id)_sbDisplayConfiguration
{
  _sbWindowScene = [self _sbWindowScene];
  _sbDisplayConfiguration = [_sbWindowScene _sbDisplayConfiguration];

  return _sbDisplayConfiguration;
}

@end
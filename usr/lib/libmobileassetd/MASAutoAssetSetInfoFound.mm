@interface MASAutoAssetSetInfoFound
+ (id)newServerMessageClasses:(id)a3;
+ (id)newShimmedFromFramework:(id)a3;
+ (id)newShimmedFromFrameworkMessage:(id)a3 forKey:(id)a4;
+ (id)newShimmedToFramework:(id)a3;
@end

@implementation MASAutoAssetSetInfoFound

+ (id)newServerMessageClasses:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [v3 setByAddingObject:objc_opt_class()];

    if (__isPlatformVersionAtLeast(2, 17, 0, 0))
    {
      if (objc_opt_class())
      {
        v5 = [v4 setByAddingObject:objc_opt_class()];

        v4 = v5;
      }

      if (objc_opt_class())
      {
        v6 = [v4 setByAddingObject:objc_opt_class()];

        v4 = v6;
      }

      if (objc_opt_class())
      {
        v7 = [v4 setByAddingObject:objc_opt_class()];

        v4 = v7;
      }

      if (objc_opt_class())
      {
        v8 = [v4 setByAddingObject:objc_opt_class()];

        v4 = v8;
      }

      if (objc_opt_class())
      {
        v9 = [v4 setByAddingObject:objc_opt_class()];

        v4 = v9;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)newShimmedToFramework:(id)a3
{
  v3 = a3;
  if (v3 && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && objc_opt_class() && (v4 = [MAAutoAssetSetInfoFound alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = [v3 currentSetStatus];
    v7 = [MASAutoAssetSetStatus newShimmedToFramework:v6];

    v8 = [MAAutoAssetSetInfoFound alloc];
    v9 = [v3 assetSetIdentifier];
    v10 = [v8 initForAssetSetIdentifier:v9 reportingStatus:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)newShimmedFromFramework:(id)a3
{
  v3 = a3;
  if (v3 && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && objc_opt_class() && (v4 = [MAAutoAssetSetInfoFound alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = v3;
    v7 = [MANAutoAssetSetInfoFound alloc];
    v8 = [v6 assetSetIdentifier];
    v9 = [v6 currentSetStatus];

    v10 = [MASAutoAssetSetStatus newShimmedFromFramework:v9];
    v11 = [(MANAutoAssetSetInfoFound *)v7 initForAssetSetIdentifier:v8 reportingStatus:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)newShimmedFromFrameworkMessage:(id)a3 forKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    if (__isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && (v9 = [MAAutoAssetSetInfoFound alloc], v10 = objc_opt_respondsToSelector(), v9, (v10 & 1) != 0))
    {
      v11 = [v5 safeObjectForKey:v7 ofClass:objc_opt_class()];
      v8 = [MASAutoAssetSetInfoFound newShimmedFromFramework:v11];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end
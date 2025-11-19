@interface MASAutoAssetSetInfoControl
+ (id)newServerMessageClasses:(id)a3;
+ (id)newShimmedFromFramework:(id)a3;
+ (id)newShimmedFromFrameworkMessage:(id)a3 forKey:(id)a4;
+ (id)newShimmedToFramework:(id)a3;
@end

@implementation MASAutoAssetSetInfoControl

+ (id)newServerMessageClasses:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = v3;
    if (__isPlatformVersionAtLeast(2, 17, 0, 0))
    {
      v4 = v3;
      if (objc_opt_class())
      {
        v4 = [v3 setByAddingObject:objc_opt_class()];
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
  if (v3 && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && (v4 = [MAAutoAssetSetInfoControl alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = [MAAutoAssetSetInfoControl alloc];
    v7 = [v3 clearingAfter];
    v8 = [v3 limitedToClientDomains];
    v9 = [v3 limitedToSetIdentifiers];
    v10 = [v6 initClearingAfter:v7 limitedToClientDomains:v8 limitedToSetIdentifiers:v9];
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
  if (v3 && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && (v4 = [MAAutoAssetSetInfoControl alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = v3;
    v7 = [MANAutoAssetSetInfoControl alloc];
    v8 = [v6 clearingAfter];
    v9 = [v6 limitedToClientDomains];
    v10 = [v6 limitedToSetIdentifiers];

    v11 = [(MANAutoAssetSetInfoControl *)v7 initClearingAfter:v8 limitedToClientDomains:v9 limitedToSetIdentifiers:v10];
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
    if (__isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && (v9 = [MAAutoAssetSetInfoControl alloc], v10 = objc_opt_respondsToSelector(), v9, (v10 & 1) != 0))
    {
      v11 = [v5 safeObjectForKey:v7 ofClass:objc_opt_class()];
      v8 = [MASAutoAssetSetInfoControl newShimmedFromFramework:v11];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end
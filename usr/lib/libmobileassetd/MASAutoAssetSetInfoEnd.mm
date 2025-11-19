@interface MASAutoAssetSetInfoEnd
+ (id)newServerMessageClasses:(id)a3;
+ (id)newShimmedFromFramework:(id)a3;
+ (id)newShimmedFromFrameworkMessage:(id)a3 forKey:(id)a4;
+ (id)newShimmedToFramework:(id)a3;
@end

@implementation MASAutoAssetSetInfoEnd

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
  if (v3 && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && (v4 = [MAAutoAssetSetInfoEnd alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = [MAAutoAssetSetInfoEnd alloc];
    v7 = [v3 endLockReason];
    v8 = [v6 initWithLockReason:v7 endingLockCount:{objc_msgSend(v3, "endLockCount")}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)newShimmedFromFramework:(id)a3
{
  v3 = a3;
  if (v3 && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && (v4 = [MAAutoAssetSetInfoEnd alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = v3;
    v7 = [MANAutoAssetSetInfoEnd alloc];
    v8 = [v6 endLockReason];
    v9 = [v6 endLockCount];

    v10 = [(MANAutoAssetSetInfoEnd *)v7 initWithLockReason:v8 endingLockCount:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)newShimmedFromFrameworkMessage:(id)a3 forKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    if (__isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && (v9 = [MAAutoAssetSetInfoEnd alloc], v10 = objc_opt_respondsToSelector(), v9, (v10 & 1) != 0))
    {
      v11 = [v5 safeObjectForKey:v7 ofClass:objc_opt_class()];
      v8 = [MASAutoAssetSetInfoEnd newShimmedFromFramework:v11];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end
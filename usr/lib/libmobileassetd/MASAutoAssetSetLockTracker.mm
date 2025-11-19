@interface MASAutoAssetSetLockTracker
+ (id)newServerMessageClasses:(id)a3;
+ (id)newShimmedFromFramework:(id)a3;
+ (id)newShimmedFromFrameworkMessage:(id)a3 forKey:(id)a4;
+ (id)newShimmedToFramework:(id)a3;
@end

@implementation MASAutoAssetSetLockTracker

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
  if (v3 && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && objc_opt_class() && (v4 = [MAAutoAssetSetLockTracker alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = [v3 lockUsagePolicy];
    v7 = [MASAutoAssetSetPolicy newShimmedToFramework:v6];

    v8 = [MAAutoAssetSetLockTracker alloc];
    v9 = [v3 clientLockReason];
    v10 = [v8 initForClientLockReason:v9 lockingWithUsagePolicy:v7];

    if (objc_opt_respondsToSelector())
    {
      [v10 setActiveLockCount:{objc_msgSend(v3, "activeLockCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v10 setMaximumLockCount:{objc_msgSend(v3, "maximumLockCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v10 setTotalLockCount:{objc_msgSend(v3, "totalLockCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v10 setContinueCount:{objc_msgSend(v3, "continueCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      v11 = [v3 firstLockTimestamp];
      [v10 setFirstLockTimestamp:v11];
    }

    if (objc_opt_respondsToSelector())
    {
      v12 = [v3 lastRefreshTimestamp];
      [v10 setLastRefreshTimestamp:v12];
    }
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
  if (v3 && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && objc_opt_class() && (v4 = [MAAutoAssetSetLockTracker alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = v3;
    v7 = [MANAutoAssetSetLockTracker alloc];
    v8 = [v6 clientLockReason];
    v9 = [v6 lockUsagePolicy];
    v10 = [MASAutoAssetSetPolicy newShimmedFromFramework:v9];
    v11 = [(MANAutoAssetSetLockTracker *)v7 initForClientLockReason:v8 lockingWithUsagePolicy:v10];

    if (objc_opt_respondsToSelector())
    {
      [v11 setActiveLockCount:{objc_msgSend(v6, "activeLockCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v11 setMaximumLockCount:{objc_msgSend(v6, "maximumLockCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v11 setTotalLockCount:{objc_msgSend(v6, "totalLockCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v11 setContinueCount:{objc_msgSend(v6, "continueCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      v12 = [v6 firstLockTimestamp];
      [v11 setFirstLockTimestamp:v12];
    }

    if (objc_opt_respondsToSelector())
    {
      v13 = [v6 lastRefreshTimestamp];
      [v11 setLastRefreshTimestamp:v13];
    }
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
    if (__isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && (v9 = [MAAutoAssetSetLockTracker alloc], v10 = objc_opt_respondsToSelector(), v9, (v10 & 1) != 0))
    {
      v11 = [v5 safeObjectForKey:v7 ofClass:objc_opt_class()];
      v8 = [MASAutoAssetSetLockTracker newShimmedFromFramework:v11];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end
@interface MASAutoAssetSetLockTracker
+ (id)newServerMessageClasses:(id)classes;
+ (id)newShimmedFromFramework:(id)framework;
+ (id)newShimmedFromFrameworkMessage:(id)message forKey:(id)key;
+ (id)newShimmedToFramework:(id)framework;
@end

@implementation MASAutoAssetSetLockTracker

+ (id)newServerMessageClasses:(id)classes
{
  classesCopy = classes;
  if (classesCopy)
  {
    v4 = classesCopy;
    if (__isPlatformVersionAtLeast(2, 17, 0, 0))
    {
      v4 = classesCopy;
      if (objc_opt_class())
      {
        v4 = [classesCopy setByAddingObject:objc_opt_class()];
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

+ (id)newShimmedToFramework:(id)framework
{
  frameworkCopy = framework;
  if (frameworkCopy && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && objc_opt_class() && (v4 = [MAAutoAssetSetLockTracker alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    lockUsagePolicy = [frameworkCopy lockUsagePolicy];
    v7 = [MASAutoAssetSetPolicy newShimmedToFramework:lockUsagePolicy];

    v8 = [MAAutoAssetSetLockTracker alloc];
    clientLockReason = [frameworkCopy clientLockReason];
    v10 = [v8 initForClientLockReason:clientLockReason lockingWithUsagePolicy:v7];

    if (objc_opt_respondsToSelector())
    {
      [v10 setActiveLockCount:{objc_msgSend(frameworkCopy, "activeLockCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v10 setMaximumLockCount:{objc_msgSend(frameworkCopy, "maximumLockCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v10 setTotalLockCount:{objc_msgSend(frameworkCopy, "totalLockCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v10 setContinueCount:{objc_msgSend(frameworkCopy, "continueCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      firstLockTimestamp = [frameworkCopy firstLockTimestamp];
      [v10 setFirstLockTimestamp:firstLockTimestamp];
    }

    if (objc_opt_respondsToSelector())
    {
      lastRefreshTimestamp = [frameworkCopy lastRefreshTimestamp];
      [v10 setLastRefreshTimestamp:lastRefreshTimestamp];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)newShimmedFromFramework:(id)framework
{
  frameworkCopy = framework;
  if (frameworkCopy && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && objc_opt_class() && (v4 = [MAAutoAssetSetLockTracker alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = frameworkCopy;
    v7 = [MANAutoAssetSetLockTracker alloc];
    clientLockReason = [v6 clientLockReason];
    lockUsagePolicy = [v6 lockUsagePolicy];
    v10 = [MASAutoAssetSetPolicy newShimmedFromFramework:lockUsagePolicy];
    v11 = [(MANAutoAssetSetLockTracker *)v7 initForClientLockReason:clientLockReason lockingWithUsagePolicy:v10];

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
      firstLockTimestamp = [v6 firstLockTimestamp];
      [v11 setFirstLockTimestamp:firstLockTimestamp];
    }

    if (objc_opt_respondsToSelector())
    {
      lastRefreshTimestamp = [v6 lastRefreshTimestamp];
      [v11 setLastRefreshTimestamp:lastRefreshTimestamp];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)newShimmedFromFrameworkMessage:(id)message forKey:(id)key
{
  messageCopy = message;
  keyCopy = key;
  v7 = keyCopy;
  v8 = 0;
  if (messageCopy && keyCopy)
  {
    if (__isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && (v9 = [MAAutoAssetSetLockTracker alloc], v10 = objc_opt_respondsToSelector(), v9, (v10 & 1) != 0))
    {
      v11 = [messageCopy safeObjectForKey:v7 ofClass:objc_opt_class()];
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
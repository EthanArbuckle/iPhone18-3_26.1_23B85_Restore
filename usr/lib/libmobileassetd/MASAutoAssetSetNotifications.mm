@interface MASAutoAssetSetNotifications
+ (id)newServerMessageClasses:(id)a3;
+ (id)newShimmedFromFramework:(id)a3;
+ (id)newShimmedFromFrameworkMessage:(id)a3 forKey:(id)a4;
+ (id)newShimmedToFramework:(id)a3;
@end

@implementation MASAutoAssetSetNotifications

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
  if (v3 && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && (v4 = [MAAutoAssetSetNotifications alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = objc_alloc_init(MAAutoAssetSetNotifications);
    if (objc_opt_respondsToSelector())
    {
      [v6 setAtomicInstanceDiscovered:{objc_msgSend(v3, "atomicInstanceDiscovered")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setAtomicInstanceAvailableForUse:{objc_msgSend(v3, "atomicInstanceAvailableForUse")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setLockUsageCheck:{objc_msgSend(v3, "lockUsageCheck")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setFilesystemSpaceCritical:{objc_msgSend(v3, "filesystemSpaceCritical")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setAtomicInstancePurged:{objc_msgSend(v3, "atomicInstancePurged")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setDownloadPending:{objc_msgSend(v3, "downloadPending")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setDownloadProgress:{objc_msgSend(v3, "downloadProgress")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setDownloadAbandoned:{objc_msgSend(v3, "downloadAbandoned")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setDownloadedBecameIncomplete:{objc_msgSend(v3, "downloadedBecameIncomplete")}];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)newShimmedFromFramework:(id)a3
{
  v3 = a3;
  if (v3 && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && (v4 = [MAAutoAssetSetNotifications alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = v3;
    v7 = objc_alloc_init(MANAutoAssetSetNotifications);
    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetSetNotifications setAtomicInstanceDiscovered:](v7, "setAtomicInstanceDiscovered:", [v6 atomicInstanceDiscovered]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetSetNotifications setAtomicInstanceAvailableForUse:](v7, "setAtomicInstanceAvailableForUse:", [v6 atomicInstanceAvailableForUse]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetSetNotifications setLockUsageCheck:](v7, "setLockUsageCheck:", [v6 lockUsageCheck]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetSetNotifications setFilesystemSpaceCritical:](v7, "setFilesystemSpaceCritical:", [v6 filesystemSpaceCritical]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetSetNotifications setAtomicInstancePurged:](v7, "setAtomicInstancePurged:", [v6 atomicInstancePurged]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetSetNotifications setDownloadPending:](v7, "setDownloadPending:", [v6 downloadPending]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetSetNotifications setDownloadProgress:](v7, "setDownloadProgress:", [v6 downloadProgress]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetSetNotifications setDownloadAbandoned:](v7, "setDownloadAbandoned:", [v6 downloadAbandoned]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetSetNotifications setDownloadedBecameIncomplete:](v7, "setDownloadedBecameIncomplete:", [v6 downloadedBecameIncomplete]);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)newShimmedFromFrameworkMessage:(id)a3 forKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    if (__isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && (v9 = [MAAutoAssetSetNotifications alloc], v10 = objc_opt_respondsToSelector(), v9, (v10 & 1) != 0))
    {
      v11 = [v5 safeObjectForKey:v7 ofClass:objc_opt_class()];
      v8 = [MASAutoAssetSetNotifications newShimmedFromFramework:v11];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end
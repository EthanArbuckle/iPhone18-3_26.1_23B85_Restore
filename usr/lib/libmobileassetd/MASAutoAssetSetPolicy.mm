@interface MASAutoAssetSetPolicy
+ (id)newServerMessageClasses:(id)classes;
+ (id)newShimmedFromFramework:(id)framework;
+ (id)newShimmedFromFrameworkMessage:(id)message forKey:(id)key;
+ (id)newShimmedToFramework:(id)framework;
@end

@implementation MASAutoAssetSetPolicy

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
  if (frameworkCopy && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && (v4 = [MAAutoAssetSetPolicy alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = objc_alloc_init(MAAutoAssetSetPolicy);
    if (objc_opt_respondsToSelector())
    {
      [v6 setUserInitiated:{objc_msgSend(frameworkCopy, "userInitiated")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setLockInhibitsEmergencyRemoval:{objc_msgSend(frameworkCopy, "lockInhibitsEmergencyRemoval")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setSupportingShortTermLocks:{objc_msgSend(frameworkCopy, "supportingShortTermLocks")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setAllowCheckDownloadOnBattery:{objc_msgSend(frameworkCopy, "allowCheckDownloadOnBattery")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setAllowCheckDownloadWhenBatteryLow:{objc_msgSend(frameworkCopy, "allowCheckDownloadWhenBatteryLow")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setAllowCheckDownloadWhenCPUHigh:{objc_msgSend(frameworkCopy, "allowCheckDownloadWhenCPUHigh")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setAllowCheckDownloadOverExpensive:{objc_msgSend(frameworkCopy, "allowCheckDownloadOverExpensive")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setAllowCheckDownloadOverCellular:{objc_msgSend(frameworkCopy, "allowCheckDownloadOverCellular")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setBlockCheckDownload:{objc_msgSend(frameworkCopy, "blockCheckDownload")}];
    }

    if (objc_opt_respondsToSelector())
    {
      additionalPolicyControl = [frameworkCopy additionalPolicyControl];
      [v6 setAdditionalPolicyControl:additionalPolicyControl];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)newShimmedFromFramework:(id)framework
{
  frameworkCopy = framework;
  if (frameworkCopy && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && (v4 = [MAAutoAssetSetPolicy alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = frameworkCopy;
    v7 = objc_alloc_init(MANAutoAssetSetPolicy);
    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetSetPolicy setUserInitiated:](v7, "setUserInitiated:", [v6 userInitiated]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetSetPolicy setLockInhibitsEmergencyRemoval:](v7, "setLockInhibitsEmergencyRemoval:", [v6 lockInhibitsEmergencyRemoval]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetSetPolicy setSupportingShortTermLocks:](v7, "setSupportingShortTermLocks:", [v6 supportingShortTermLocks]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetSetPolicy setAllowCheckDownloadOnBattery:](v7, "setAllowCheckDownloadOnBattery:", [v6 allowCheckDownloadOnBattery]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetSetPolicy setAllowCheckDownloadWhenBatteryLow:](v7, "setAllowCheckDownloadWhenBatteryLow:", [v6 allowCheckDownloadWhenBatteryLow]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetSetPolicy setAllowCheckDownloadWhenCPUHigh:](v7, "setAllowCheckDownloadWhenCPUHigh:", [v6 allowCheckDownloadWhenCPUHigh]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetSetPolicy setAllowCheckDownloadOverExpensive:](v7, "setAllowCheckDownloadOverExpensive:", [v6 allowCheckDownloadOverExpensive]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetSetPolicy setAllowCheckDownloadOverCellular:](v7, "setAllowCheckDownloadOverCellular:", [v6 allowCheckDownloadOverCellular]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetSetPolicy setBlockCheckDownload:](v7, "setBlockCheckDownload:", [v6 blockCheckDownload]);
    }

    if (objc_opt_respondsToSelector())
    {
      additionalPolicyControl = [v6 additionalPolicyControl];
      [(MANAutoAssetSetPolicy *)v7 setAdditionalPolicyControl:additionalPolicyControl];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)newShimmedFromFrameworkMessage:(id)message forKey:(id)key
{
  messageCopy = message;
  keyCopy = key;
  v7 = keyCopy;
  v8 = 0;
  if (messageCopy && keyCopy)
  {
    if (__isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && (v9 = [MAAutoAssetSetPolicy alloc], v10 = objc_opt_respondsToSelector(), v9, (v10 & 1) != 0))
    {
      v11 = [messageCopy safeObjectForKey:v7 ofClass:objc_opt_class()];
      v8 = [MASAutoAssetSetPolicy newShimmedFromFramework:v11];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end
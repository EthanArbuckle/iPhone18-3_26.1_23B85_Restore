@interface MASAutoAssetSetPolicy
+ (id)newServerMessageClasses:(id)a3;
+ (id)newShimmedFromFramework:(id)a3;
+ (id)newShimmedFromFrameworkMessage:(id)a3 forKey:(id)a4;
+ (id)newShimmedToFramework:(id)a3;
@end

@implementation MASAutoAssetSetPolicy

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
  if (v3 && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && (v4 = [MAAutoAssetSetPolicy alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = objc_alloc_init(MAAutoAssetSetPolicy);
    if (objc_opt_respondsToSelector())
    {
      [v6 setUserInitiated:{objc_msgSend(v3, "userInitiated")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setLockInhibitsEmergencyRemoval:{objc_msgSend(v3, "lockInhibitsEmergencyRemoval")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setSupportingShortTermLocks:{objc_msgSend(v3, "supportingShortTermLocks")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setAllowCheckDownloadOnBattery:{objc_msgSend(v3, "allowCheckDownloadOnBattery")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setAllowCheckDownloadWhenBatteryLow:{objc_msgSend(v3, "allowCheckDownloadWhenBatteryLow")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setAllowCheckDownloadWhenCPUHigh:{objc_msgSend(v3, "allowCheckDownloadWhenCPUHigh")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setAllowCheckDownloadOverExpensive:{objc_msgSend(v3, "allowCheckDownloadOverExpensive")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setAllowCheckDownloadOverCellular:{objc_msgSend(v3, "allowCheckDownloadOverCellular")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setBlockCheckDownload:{objc_msgSend(v3, "blockCheckDownload")}];
    }

    if (objc_opt_respondsToSelector())
    {
      v7 = [v3 additionalPolicyControl];
      [v6 setAdditionalPolicyControl:v7];
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
  if (v3 && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && (v4 = [MAAutoAssetSetPolicy alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = v3;
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
      v8 = [v6 additionalPolicyControl];
      [(MANAutoAssetSetPolicy *)v7 setAdditionalPolicyControl:v8];
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
    if (__isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && (v9 = [MAAutoAssetSetPolicy alloc], v10 = objc_opt_respondsToSelector(), v9, (v10 & 1) != 0))
    {
      v11 = [v5 safeObjectForKey:v7 ofClass:objc_opt_class()];
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
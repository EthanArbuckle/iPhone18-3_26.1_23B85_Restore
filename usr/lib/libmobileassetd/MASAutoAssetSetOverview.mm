@interface MASAutoAssetSetOverview
+ (id)newServerMessageClasses:(id)a3;
+ (id)newShimmedArrayToFramework:(id)a3;
+ (id)newShimmedFromFramework:(id)a3;
+ (id)newShimmedFromFrameworkMessage:(id)a3 forKey:(id)a4;
+ (id)newShimmedToFramework:(id)a3;
@end

@implementation MASAutoAssetSetOverview

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
  if (!a3)
  {
    return 0;
  }

  v3 = [NSArray arrayWithObjects:0];
  v4 = [MASAutoAssetSetOverview newShimmedArrayToFramework:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectAtIndexedSubscript:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)newShimmedArrayToFramework:(id)a3
{
  v3 = a3;
  if (v3 && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && (p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt, objc_opt_class()) && (v5 = [MAAutoAssetSetOverview alloc], v6 = objc_opt_respondsToSelector(), v5, (v6 & 1) != 0))
  {
    v7 = objc_alloc_init(NSMutableArray);
    v21 = [v3 count];
    if (v21 >= 1)
    {
      v19 = v7;
      v20 = v3;
      for (i = 0; i != v21; ++i)
      {
        v9 = [v3 objectAtIndex:i];
        v10 = v9;
        if (v9)
        {
          v11 = [v9 configuredAssetEntries];
          v23 = [MASAutoAssetSetEntry newShimmedArrayToFramework:v11];

          v22 = objc_alloc(p_weak_ivar_lyt[249]);
          v12 = [v10 clientDomainName];
          v13 = [v10 assetSetIdentifier];
          v14 = [v10 latestDownloadedAtomicInstance];
          v15 = [v10 downloadedAtomicInstances];
          v16 = [v10 discoveredAtomicInstance];
          v17 = [v22 initWithDomainName:v12 forAssetSetIdentifier:v13 withConfiguredAssetEntries:v23 withLatestDownloadedAtomicInstance:v14 withDownloadedAtomicInstances:v15 withDiscoveredAtomicInstance:v16 withActiveClientCount:objc_msgSend(v10 withActiveMonitorCount:"activeClientCount") withMaximumClientCount:objc_msgSend(v10 withTotalClientCount:{"activeMonitorCount"), objc_msgSend(v10, "maximumClientCount"), objc_msgSend(v10, "totalClientCount")}];

          if (v17)
          {
            [v19 addObject:v17];
          }

          v3 = v20;
          p_weak_ivar_lyt = (&MAAIRBMobileAssetOperationMetadata__metaData + 56);
        }
      }

      v7 = v19;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)newShimmedFromFramework:(id)a3
{
  v3 = a3;
  if (v3 && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && objc_opt_class() && (v4 = [MAAutoAssetSetOverview alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = v3;
    v19 = [MANAutoAssetSetOverview alloc];
    v18 = [v6 clientDomainName];
    v17 = [v6 assetSetIdentifier];
    v20 = [v6 configuredAssetEntries];
    v7 = [MASAutoAssetSetEntry newShimmedArrayFromFramework:v20];
    v8 = [v6 latestDownloadedAtomicInstance];
    v9 = [v6 downloadedAtomicInstances];
    v10 = [v6 discoveredAtomicInstance];
    v11 = [v6 activeClientCount];
    v12 = [v6 activeMonitorCount];
    v13 = [v6 maximumClientCount];
    v14 = [v6 totalClientCount];

    v15 = [(MANAutoAssetSetOverview *)v19 initWithDomainName:v18 forAssetSetIdentifier:v17 withConfiguredAssetEntries:v7 withLatestDownloadedAtomicInstance:v8 withDownloadedAtomicInstances:v9 withDiscoveredAtomicInstance:v10 withActiveClientCount:v11 withActiveMonitorCount:v12 withMaximumClientCount:v13 withTotalClientCount:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)newShimmedFromFrameworkMessage:(id)a3 forKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    if (__isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && (v9 = [MAAutoAssetSetOverview alloc], v10 = objc_opt_respondsToSelector(), v9, (v10 & 1) != 0))
    {
      v11 = [v5 safeObjectForKey:v7 ofClass:objc_opt_class()];
      v8 = [MASAutoAssetSetOverview newShimmedFromFramework:v11];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end
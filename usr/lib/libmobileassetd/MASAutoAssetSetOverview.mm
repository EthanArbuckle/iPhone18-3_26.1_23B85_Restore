@interface MASAutoAssetSetOverview
+ (id)newServerMessageClasses:(id)classes;
+ (id)newShimmedArrayToFramework:(id)framework;
+ (id)newShimmedFromFramework:(id)framework;
+ (id)newShimmedFromFrameworkMessage:(id)message forKey:(id)key;
+ (id)newShimmedToFramework:(id)framework;
@end

@implementation MASAutoAssetSetOverview

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
  if (!framework)
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

+ (id)newShimmedArrayToFramework:(id)framework
{
  frameworkCopy = framework;
  if (frameworkCopy && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && (p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt, objc_opt_class()) && (v5 = [MAAutoAssetSetOverview alloc], v6 = objc_opt_respondsToSelector(), v5, (v6 & 1) != 0))
  {
    v7 = objc_alloc_init(NSMutableArray);
    v21 = [frameworkCopy count];
    if (v21 >= 1)
    {
      v19 = v7;
      v20 = frameworkCopy;
      for (i = 0; i != v21; ++i)
      {
        v9 = [frameworkCopy objectAtIndex:i];
        v10 = v9;
        if (v9)
        {
          configuredAssetEntries = [v9 configuredAssetEntries];
          v23 = [MASAutoAssetSetEntry newShimmedArrayToFramework:configuredAssetEntries];

          v22 = objc_alloc(p_weak_ivar_lyt[249]);
          clientDomainName = [v10 clientDomainName];
          assetSetIdentifier = [v10 assetSetIdentifier];
          latestDownloadedAtomicInstance = [v10 latestDownloadedAtomicInstance];
          downloadedAtomicInstances = [v10 downloadedAtomicInstances];
          discoveredAtomicInstance = [v10 discoveredAtomicInstance];
          v17 = [v22 initWithDomainName:clientDomainName forAssetSetIdentifier:assetSetIdentifier withConfiguredAssetEntries:v23 withLatestDownloadedAtomicInstance:latestDownloadedAtomicInstance withDownloadedAtomicInstances:downloadedAtomicInstances withDiscoveredAtomicInstance:discoveredAtomicInstance withActiveClientCount:objc_msgSend(v10 withActiveMonitorCount:"activeClientCount") withMaximumClientCount:objc_msgSend(v10 withTotalClientCount:{"activeMonitorCount"), objc_msgSend(v10, "maximumClientCount"), objc_msgSend(v10, "totalClientCount")}];

          if (v17)
          {
            [v19 addObject:v17];
          }

          frameworkCopy = v20;
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

+ (id)newShimmedFromFramework:(id)framework
{
  frameworkCopy = framework;
  if (frameworkCopy && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && objc_opt_class() && (v4 = [MAAutoAssetSetOverview alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = frameworkCopy;
    v19 = [MANAutoAssetSetOverview alloc];
    clientDomainName = [v6 clientDomainName];
    assetSetIdentifier = [v6 assetSetIdentifier];
    configuredAssetEntries = [v6 configuredAssetEntries];
    v7 = [MASAutoAssetSetEntry newShimmedArrayFromFramework:configuredAssetEntries];
    latestDownloadedAtomicInstance = [v6 latestDownloadedAtomicInstance];
    downloadedAtomicInstances = [v6 downloadedAtomicInstances];
    discoveredAtomicInstance = [v6 discoveredAtomicInstance];
    activeClientCount = [v6 activeClientCount];
    activeMonitorCount = [v6 activeMonitorCount];
    maximumClientCount = [v6 maximumClientCount];
    totalClientCount = [v6 totalClientCount];

    v15 = [(MANAutoAssetSetOverview *)v19 initWithDomainName:clientDomainName forAssetSetIdentifier:assetSetIdentifier withConfiguredAssetEntries:v7 withLatestDownloadedAtomicInstance:latestDownloadedAtomicInstance withDownloadedAtomicInstances:downloadedAtomicInstances withDiscoveredAtomicInstance:discoveredAtomicInstance withActiveClientCount:activeClientCount withActiveMonitorCount:activeMonitorCount withMaximumClientCount:maximumClientCount withTotalClientCount:totalClientCount];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)newShimmedFromFrameworkMessage:(id)message forKey:(id)key
{
  messageCopy = message;
  keyCopy = key;
  v7 = keyCopy;
  v8 = 0;
  if (messageCopy && keyCopy)
  {
    if (__isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && (v9 = [MAAutoAssetSetOverview alloc], v10 = objc_opt_respondsToSelector(), v9, (v10 & 1) != 0))
    {
      v11 = [messageCopy safeObjectForKey:v7 ofClass:objc_opt_class()];
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
@interface MASAutoAssetSetInstanceDescriptor
+ (id)newServerMessageClasses:(id)classes;
+ (id)newShimmedFromFramework:(id)framework;
+ (id)newShimmedToFramework:(id)framework;
@end

@implementation MASAutoAssetSetInstanceDescriptor

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
  frameworkCopy = framework;
  if (frameworkCopy && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && objc_opt_class() && (v4 = [MAAutoAssetSetInstanceDescriptor alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    atomicInstanceEntries = [frameworkCopy atomicInstanceEntries];
    v7 = [MASAutoAssetSetAtomicEntry newShimmedArrayToFramework:atomicInstanceEntries];

    v8 = [MAAutoAssetSetInstanceDescriptor alloc];
    clientDomainName = [frameworkCopy clientDomainName];
    assetSetIdentifier = [frameworkCopy assetSetIdentifier];
    isFullyDownloaded = [frameworkCopy isFullyDownloaded];
    neverBeenLocked = [frameworkCopy neverBeenLocked];
    downloadUserInitiated = [frameworkCopy downloadUserInitiated];
    downloadedNetworkBytes = [frameworkCopy downloadedNetworkBytes];
    downloadedFilesystemBytes = [frameworkCopy downloadedFilesystemBytes];
    LOBYTE(v18) = [frameworkCopy stagedPriorToAvailable];
    v16 = [v8 initForClientDomainName:clientDomainName forAssetSetIdentifier:assetSetIdentifier withAtomicInstanceEntries:v7 withFullyDownloaded:isFullyDownloaded withNeverBeenLocked:neverBeenLocked withDownloadUserInitiated:downloadUserInitiated withDownloadedNetworkBytes:downloadedNetworkBytes withDownloadedFilesystemBytes:downloadedFilesystemBytes withStagedPriorToAvailable:v18];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)newShimmedFromFramework:(id)framework
{
  frameworkCopy = framework;
  if (frameworkCopy && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && objc_opt_class() && (v4 = [MAAutoAssetSetInstanceDescriptor alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = frameworkCopy;
    v20 = [MANAutoAssetSetInstanceDescriptor alloc];
    clientDomainName = [v6 clientDomainName];
    assetSetIdentifier = [v6 assetSetIdentifier];
    atomicInstanceEntries = [v6 atomicInstanceEntries];
    v8 = [MASAutoAssetSetAtomicEntry newShimmedArrayFromFramework:atomicInstanceEntries];
    isFullyDownloaded = [v6 isFullyDownloaded];
    neverBeenLocked = [v6 neverBeenLocked];
    downloadUserInitiated = [v6 downloadUserInitiated];
    downloadedNetworkBytes = [v6 downloadedNetworkBytes];
    downloadedFilesystemBytes = [v6 downloadedFilesystemBytes];
    stagedPriorToAvailable = [v6 stagedPriorToAvailable];

    LOBYTE(v17) = stagedPriorToAvailable;
    v15 = [(MANAutoAssetSetInstanceDescriptor *)v20 initForClientDomainName:clientDomainName forAssetSetIdentifier:assetSetIdentifier withAtomicInstanceEntries:v8 withFullyDownloaded:isFullyDownloaded withNeverBeenLocked:neverBeenLocked withDownloadUserInitiated:downloadUserInitiated withDownloadedNetworkBytes:downloadedNetworkBytes withDownloadedFilesystemBytes:downloadedFilesystemBytes withStagedPriorToAvailable:v17];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end
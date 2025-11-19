@interface MASAutoAssetSetInstanceDescriptor
+ (id)newServerMessageClasses:(id)a3;
+ (id)newShimmedFromFramework:(id)a3;
+ (id)newShimmedToFramework:(id)a3;
@end

@implementation MASAutoAssetSetInstanceDescriptor

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
  v3 = a3;
  if (v3 && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && objc_opt_class() && (v4 = [MAAutoAssetSetInstanceDescriptor alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = [v3 atomicInstanceEntries];
    v7 = [MASAutoAssetSetAtomicEntry newShimmedArrayToFramework:v6];

    v8 = [MAAutoAssetSetInstanceDescriptor alloc];
    v9 = [v3 clientDomainName];
    v10 = [v3 assetSetIdentifier];
    v11 = [v3 isFullyDownloaded];
    v12 = [v3 neverBeenLocked];
    v13 = [v3 downloadUserInitiated];
    v14 = [v3 downloadedNetworkBytes];
    v15 = [v3 downloadedFilesystemBytes];
    LOBYTE(v18) = [v3 stagedPriorToAvailable];
    v16 = [v8 initForClientDomainName:v9 forAssetSetIdentifier:v10 withAtomicInstanceEntries:v7 withFullyDownloaded:v11 withNeverBeenLocked:v12 withDownloadUserInitiated:v13 withDownloadedNetworkBytes:v14 withDownloadedFilesystemBytes:v15 withStagedPriorToAvailable:v18];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)newShimmedFromFramework:(id)a3
{
  v3 = a3;
  if (v3 && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && objc_opt_class() && (v4 = [MAAutoAssetSetInstanceDescriptor alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = v3;
    v20 = [MANAutoAssetSetInstanceDescriptor alloc];
    v19 = [v6 clientDomainName];
    v18 = [v6 assetSetIdentifier];
    v7 = [v6 atomicInstanceEntries];
    v8 = [MASAutoAssetSetAtomicEntry newShimmedArrayFromFramework:v7];
    v9 = [v6 isFullyDownloaded];
    v10 = [v6 neverBeenLocked];
    v11 = [v6 downloadUserInitiated];
    v12 = [v6 downloadedNetworkBytes];
    v13 = [v6 downloadedFilesystemBytes];
    v14 = [v6 stagedPriorToAvailable];

    LOBYTE(v17) = v14;
    v15 = [(MANAutoAssetSetInstanceDescriptor *)v20 initForClientDomainName:v19 forAssetSetIdentifier:v18 withAtomicInstanceEntries:v8 withFullyDownloaded:v9 withNeverBeenLocked:v10 withDownloadUserInitiated:v11 withDownloadedNetworkBytes:v12 withDownloadedFilesystemBytes:v13 withStagedPriorToAvailable:v17];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end
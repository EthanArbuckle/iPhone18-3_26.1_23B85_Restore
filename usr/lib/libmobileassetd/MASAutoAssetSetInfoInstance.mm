@interface MASAutoAssetSetInfoInstance
+ (id)newServerMessageClasses:(id)classes;
+ (id)newShimmedFromFramework:(id)framework;
+ (id)newShimmedFromFrameworkMessage:(id)message forKey:(id)key;
+ (id)newShimmedToFramework:(id)framework;
@end

@implementation MASAutoAssetSetInfoInstance

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
  if (frameworkCopy && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && objc_opt_class() && objc_opt_class() && (v4 = [MAAutoAssetSetInfoInstance alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = [MAAutoAssetSetInfoInstance alloc];
    clientDomainName = [frameworkCopy clientDomainName];
    autoAssetSetClientName = [frameworkCopy autoAssetSetClientName];
    clientProcessName = [frameworkCopy clientProcessName];
    clientProcessID = [frameworkCopy clientProcessID];
    assetSetIdentifier = [frameworkCopy assetSetIdentifier];
    atomicInstance = [frameworkCopy atomicInstance];
    autoAssetEntries = [frameworkCopy autoAssetEntries];
    v9 = [MASAutoAssetSetEntry newShimmedArrayToFramework:autoAssetEntries];
    entriesWhenTargeting = [frameworkCopy entriesWhenTargeting];
    v11 = [MASAutoAssetSetTarget newShimmedArrayToFramework:entriesWhenTargeting];
    frameworkInstanceUUID = [frameworkCopy frameworkInstanceUUID];
    v13 = [v6 initUsingClientDomain:clientDomainName forClientName:autoAssetSetClientName withProcessName:clientProcessName withProcessID:clientProcessID forAssetSetIdentifier:assetSetIdentifier forAtomicInstance:atomicInstance comprisedOfEntries:v9 asEntriesWhenTargeting:v11 associatingFrameworkUUID:frameworkInstanceUUID];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)newShimmedFromFramework:(id)framework
{
  frameworkCopy = framework;
  if (frameworkCopy && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && objc_opt_class() && objc_opt_class() && (v4 = [MAAutoAssetSetInfoInstance alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = frameworkCopy;
    v7 = [MANAutoAssetSetInfoInstance alloc];
    clientDomainName = [v6 clientDomainName];
    autoAssetSetClientName = [v6 autoAssetSetClientName];
    clientProcessName = [v6 clientProcessName];
    clientProcessID = [v6 clientProcessID];
    assetSetIdentifier = [v6 assetSetIdentifier];
    atomicInstance = [v6 atomicInstance];
    autoAssetEntries = [v6 autoAssetEntries];
    v10 = [MASAutoAssetSetEntry newShimmedArrayFromFramework:autoAssetEntries];
    entriesWhenTargeting = [v6 entriesWhenTargeting];
    v12 = [MASAutoAssetSetTarget newShimmedArrayFromFramework:entriesWhenTargeting];
    frameworkInstanceUUID = [v6 frameworkInstanceUUID];

    v14 = [(MANAutoAssetSetInfoInstance *)v7 initUsingClientDomain:clientDomainName forClientName:autoAssetSetClientName withProcessName:clientProcessName withProcessID:clientProcessID forAssetSetIdentifier:assetSetIdentifier forAtomicInstance:atomicInstance comprisedOfEntries:v10 asEntriesWhenTargeting:v12 associatingFrameworkUUID:frameworkInstanceUUID];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)newShimmedFromFrameworkMessage:(id)message forKey:(id)key
{
  messageCopy = message;
  keyCopy = key;
  v7 = keyCopy;
  v8 = 0;
  if (messageCopy && keyCopy)
  {
    if (__isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && (v9 = [MAAutoAssetSetInfoInstance alloc], v10 = objc_opt_respondsToSelector(), v9, (v10 & 1) != 0))
    {
      v11 = [messageCopy safeObjectForKey:v7 ofClass:objc_opt_class()];
      v8 = [MASAutoAssetSetInfoInstance newShimmedFromFramework:v11];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end
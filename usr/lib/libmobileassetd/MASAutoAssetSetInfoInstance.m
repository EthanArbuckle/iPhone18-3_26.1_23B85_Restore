@interface MASAutoAssetSetInfoInstance
+ (id)newServerMessageClasses:(id)a3;
+ (id)newShimmedFromFramework:(id)a3;
+ (id)newShimmedFromFrameworkMessage:(id)a3 forKey:(id)a4;
+ (id)newShimmedToFramework:(id)a3;
@end

@implementation MASAutoAssetSetInfoInstance

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
  if (v3 && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && objc_opt_class() && objc_opt_class() && (v4 = [MAAutoAssetSetInfoInstance alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = [MAAutoAssetSetInfoInstance alloc];
    v15 = [v3 clientDomainName];
    v19 = [v3 autoAssetSetClientName];
    v17 = [v3 clientProcessName];
    v16 = [v3 clientProcessID];
    v7 = [v3 assetSetIdentifier];
    v8 = [v3 atomicInstance];
    v18 = [v3 autoAssetEntries];
    v9 = [MASAutoAssetSetEntry newShimmedArrayToFramework:v18];
    v10 = [v3 entriesWhenTargeting];
    v11 = [MASAutoAssetSetTarget newShimmedArrayToFramework:v10];
    v12 = [v3 frameworkInstanceUUID];
    v13 = [v6 initUsingClientDomain:v15 forClientName:v19 withProcessName:v17 withProcessID:v16 forAssetSetIdentifier:v7 forAtomicInstance:v8 comprisedOfEntries:v9 asEntriesWhenTargeting:v11 associatingFrameworkUUID:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)newShimmedFromFramework:(id)a3
{
  v3 = a3;
  if (v3 && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && objc_opt_class() && objc_opt_class() && (v4 = [MAAutoAssetSetInfoInstance alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = v3;
    v7 = [MANAutoAssetSetInfoInstance alloc];
    v20 = [v6 clientDomainName];
    v19 = [v6 autoAssetSetClientName];
    v16 = [v6 clientProcessName];
    v17 = [v6 clientProcessID];
    v8 = [v6 assetSetIdentifier];
    v9 = [v6 atomicInstance];
    v18 = [v6 autoAssetEntries];
    v10 = [MASAutoAssetSetEntry newShimmedArrayFromFramework:v18];
    v11 = [v6 entriesWhenTargeting];
    v12 = [MASAutoAssetSetTarget newShimmedArrayFromFramework:v11];
    v13 = [v6 frameworkInstanceUUID];

    v14 = [(MANAutoAssetSetInfoInstance *)v7 initUsingClientDomain:v20 forClientName:v19 withProcessName:v16 withProcessID:v17 forAssetSetIdentifier:v8 forAtomicInstance:v9 comprisedOfEntries:v10 asEntriesWhenTargeting:v12 associatingFrameworkUUID:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)newShimmedFromFrameworkMessage:(id)a3 forKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    if (__isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && (v9 = [MAAutoAssetSetInfoInstance alloc], v10 = objc_opt_respondsToSelector(), v9, (v10 & 1) != 0))
    {
      v11 = [v5 safeObjectForKey:v7 ofClass:objc_opt_class()];
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
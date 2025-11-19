@interface MASAutoAssetSetInfoDesire
+ (id)newServerMessageClasses:(id)a3;
+ (id)newShimmedFromFramework:(id)a3;
+ (id)newShimmedFromFrameworkMessage:(id)a3 forKey:(id)a4;
+ (id)newShimmedToFramework:(id)a3;
@end

@implementation MASAutoAssetSetInfoDesire

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
  if (v3 && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && objc_opt_class() && (v4 = [MAAutoAssetSetInfoDesire alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = [MAAutoAssetSetInfoDesire alloc];
    v7 = [v3 clientAssetSetPolicy];
    v8 = [MASAutoAssetSetPolicy newShimmedToFramework:v7];
    v9 = [v3 desireReason];
    v10 = [v6 initForClientAssetSetPolicy:v8 reasonDesired:v9 awaitingDownloadOfDiscovered:objc_msgSend(v3 withCheckWaitTimeout:"awaitDownloadingOfDiscovered") withLockWaitTimeout:objc_msgSend(v3 desiringProgress:{"checkWaitTimeoutSecs"), objc_msgSend(v3, "lockWaitTimeoutSecs"), objc_msgSend(v3, "downloadProgressDesired")}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)newShimmedFromFramework:(id)a3
{
  v3 = a3;
  if (v3 && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && objc_opt_class() && (v4 = [MAAutoAssetSetInfoDesire alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = v3;
    v7 = [MANAutoAssetSetInfoDesire alloc];
    v8 = [v6 clientAssetSetPolicy];
    v9 = [MASAutoAssetSetPolicy newShimmedFromFramework:v8];
    v10 = [v6 desireReason];
    v11 = [v6 awaitDownloadingOfDiscovered];
    v12 = [v6 checkWaitTimeoutSecs];
    v13 = [v6 lockWaitTimeoutSecs];
    v14 = [v6 downloadProgressDesired];

    v15 = [(MANAutoAssetSetInfoDesire *)v7 initForClientAssetSetPolicy:v9 reasonDesired:v10 awaitingDownloadOfDiscovered:v11 withCheckWaitTimeout:v12 withLockWaitTimeout:v13 desiringProgress:v14];
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
    if (__isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && (v9 = [MAAutoAssetSetInfoDesire alloc], v10 = objc_opt_respondsToSelector(), v9, (v10 & 1) != 0))
    {
      v11 = [v5 safeObjectForKey:v7 ofClass:objc_opt_class()];
      v8 = [MASAutoAssetSetInfoDesire newShimmedFromFramework:v11];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end
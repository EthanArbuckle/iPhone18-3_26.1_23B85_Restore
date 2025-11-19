@interface MASAutoAssetSetProgress
+ (id)newServerMessageClasses:(id)a3;
+ (id)newShimmedFromFramework:(id)a3;
+ (id)newShimmedFromFrameworkMessage:(id)a3 forKey:(id)a4;
+ (id)newShimmedToFramework:(id)a3;
@end

@implementation MASAutoAssetSetProgress

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
  if (v3 && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && (v4 = [MAAutoAssetSetProgress alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = objc_alloc_init(MAAutoAssetSetProgress);
    if (objc_opt_respondsToSelector())
    {
      [v6 setDownloadedAssetCount:{objc_msgSend(v3, "downloadedAssetCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setRemainingAssetCount:{objc_msgSend(v3, "remainingAssetCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setTotalExpectedBytes:{objc_msgSend(v3, "totalExpectedBytes")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setTotalWrittenBytes:{objc_msgSend(v3, "totalWrittenBytes")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setIsStalled:{objc_msgSend(v3, "isStalled")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v3 expectedTimeRemainingSecs];
      [v6 setExpectedTimeRemainingSecs:?];
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
  if (v3 && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && (v4 = [MAAutoAssetSetProgress alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = v3;
    v7 = objc_alloc_init(MANAutoAssetSetProgress);
    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetSetProgress setDownloadedAssetCount:](v7, "setDownloadedAssetCount:", [v6 downloadedAssetCount]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetSetProgress setRemainingAssetCount:](v7, "setRemainingAssetCount:", [v6 remainingAssetCount]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetSetProgress setTotalExpectedBytes:](v7, "setTotalExpectedBytes:", [v6 totalExpectedBytes]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetSetProgress setTotalWrittenBytes:](v7, "setTotalWrittenBytes:", [v6 totalWrittenBytes]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetSetProgress setIsStalled:](v7, "setIsStalled:", [v6 isStalled]);
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 expectedTimeRemainingSecs];
      [(MANAutoAssetSetProgress *)v7 setExpectedTimeRemainingSecs:?];
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
    if (__isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && (v9 = [MAAutoAssetSetProgress alloc], v10 = objc_opt_respondsToSelector(), v9, (v10 & 1) != 0))
    {
      v11 = [v5 safeObjectForKey:v7 ofClass:objc_opt_class()];
      v8 = [MASAutoAssetSetProgress newShimmedFromFramework:v11];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end
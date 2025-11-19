@interface MASAutoAssetControlStatisticsBySize
+ (id)newServerMessageClasses:(id)a3;
+ (id)newShimmedFromFramework:(id)a3;
+ (id)newShimmedFromFrameworkMessage:(id)a3 forKey:(id)a4;
+ (id)newShimmedToFramework:(id)a3;
@end

@implementation MASAutoAssetControlStatisticsBySize

+ (id)newServerMessageClasses:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = v3;
    if (objc_opt_class())
    {
      v4 = [v3 setByAddingObject:objc_opt_class()];
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
  if (v3 && objc_opt_class() && (v4 = [MAAutoAssetControlStatisticsBySize alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = objc_alloc_init(MAAutoAssetControlStatisticsBySize);
    if (objc_opt_respondsToSelector())
    {
      [v6 setPatchedAssets:{objc_msgSend(v3, "patchedAssets")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setPatchedBytes:{objc_msgSend(v3, "patchedBytes")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setFullAssets:{objc_msgSend(v3, "fullAssets")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setFullBytes:{objc_msgSend(v3, "fullBytes")}];
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
  if (v3 && (v4 = [MAAutoAssetControlStatisticsBySize alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = v3;
    v7 = objc_alloc_init(MANAutoAssetControlStatisticsBySize);
    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStatisticsBySize setPatchedAssets:](v7, "setPatchedAssets:", [v6 patchedAssets]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStatisticsBySize setPatchedBytes:](v7, "setPatchedBytes:", [v6 patchedBytes]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStatisticsBySize setFullAssets:](v7, "setFullAssets:", [v6 fullAssets]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStatisticsBySize setFullBytes:](v7, "setFullBytes:", [v6 fullBytes]);
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
    v9 = [MAAutoAssetControlStatisticsBySize alloc];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [v5 safeObjectForKey:v7 ofClass:objc_opt_class()];
      v8 = [MASAutoAssetControlStatisticsBySize newShimmedFromFramework:v11];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end
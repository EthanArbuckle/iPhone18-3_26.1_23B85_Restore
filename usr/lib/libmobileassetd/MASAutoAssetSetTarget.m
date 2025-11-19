@interface MASAutoAssetSetTarget
+ (id)newServerMessageClasses:(id)a3;
+ (id)newShimmedArrayFromFramework:(id)a3;
+ (id)newShimmedArrayToFramework:(id)a3;
+ (id)newShimmedFromFramework:(id)a3;
+ (id)newShimmedFromFrameworkMessage:(id)a3 forKey:(id)a4;
+ (id)newShimmedToFramework:(id)a3;
@end

@implementation MASAutoAssetSetTarget

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
  if (v3 && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && objc_opt_class() && (v4 = [MAAutoAssetSetTarget alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = [MAAutoAssetSetTarget alloc];
    v7 = [v3 minTargetOSVersion];
    v8 = [v3 maxTargetOSVersion];
    v9 = [v3 autoAssetEntries];
    v10 = [MASAutoAssetSetEntry newShimmedArrayToFramework:v9];
    v11 = [v6 initForMinTargetOSVersion:v7 toMaxTargetOSVersion:v8 asEntriesWhenTargeting:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)newShimmedFromFramework:(id)a3
{
  v3 = a3;
  if (v3 && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && objc_opt_class() && (v4 = [MAAutoAssetSetTarget alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = v3;
    v7 = [MANAutoAssetSetTarget alloc];
    v8 = [v6 minTargetOSVersion];
    v9 = [v6 maxTargetOSVersion];
    v10 = [v6 autoAssetEntries];

    v11 = [MASAutoAssetSetEntry newShimmedArrayFromFramework:v10];
    v12 = [(MANAutoAssetSetTarget *)v7 initForMinTargetOSVersion:v8 toMaxTargetOSVersion:v9 asEntriesWhenTargeting:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)newShimmedFromFrameworkMessage:(id)a3 forKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    if (__isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && (v9 = [MAAutoAssetSetTarget alloc], v10 = objc_opt_respondsToSelector(), v9, (v10 & 1) != 0))
    {
      v11 = [v5 safeObjectForKey:v7 ofClass:objc_opt_class()];
      v8 = [MASAutoAssetSetTarget newShimmedFromFramework:v11];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

+ (id)newShimmedArrayToFramework:(id)a3
{
  v3 = a3;
  if (v3 && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && objc_opt_class() && (v4 = [MAAutoAssetSetTarget alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = [v3 count];
    if (v7 >= 1)
    {
      v8 = v7;
      for (i = 0; i != v8; ++i)
      {
        v10 = [v3 objectAtIndex:i];
        if (v10)
        {
          v11 = [MAAutoAssetSetTarget alloc];
          v12 = [v10 minTargetOSVersion];
          v13 = [v10 maxTargetOSVersion];
          v14 = [v10 autoAssetEntries];
          v15 = [MASAutoAssetSetEntry newShimmedArrayToFramework:v14];
          v16 = [v11 initForMinTargetOSVersion:v12 toMaxTargetOSVersion:v13 asEntriesWhenTargeting:v15];

          if (v16)
          {
            [v6 addObject:v16];
          }
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)newShimmedArrayFromFramework:(id)a3
{
  v3 = a3;
  if (v3 && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && objc_opt_class() && (v4 = [MAAutoAssetSetTarget alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = objc_alloc_init(NSMutableArray);
      v8 = [v6 count];
      if (v8 >= 1)
      {
        v9 = v8;
        v10 = 0;
        v19 = v6;
        do
        {
          v11 = [v6 objectAtIndex:v10];
          if (v11)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v12 = [MANAutoAssetSetTarget alloc];
              v13 = [v11 minTargetOSVersion];
              v14 = [v11 maxTargetOSVersion];
              v15 = [v11 autoAssetEntries];
              v16 = [MASAutoAssetSetEntry newShimmedArrayFromFramework:v15];
              v17 = [(MANAutoAssetSetTarget *)v12 initForMinTargetOSVersion:v13 toMaxTargetOSVersion:v14 asEntriesWhenTargeting:v16];

              if (v17)
              {
                [v7 addObject:v17];
              }

              v6 = v19;
            }
          }

          ++v10;
        }

        while (v9 != v10);
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end
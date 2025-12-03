@interface MASAutoAssetSetTarget
+ (id)newServerMessageClasses:(id)classes;
+ (id)newShimmedArrayFromFramework:(id)framework;
+ (id)newShimmedArrayToFramework:(id)framework;
+ (id)newShimmedFromFramework:(id)framework;
+ (id)newShimmedFromFrameworkMessage:(id)message forKey:(id)key;
+ (id)newShimmedToFramework:(id)framework;
@end

@implementation MASAutoAssetSetTarget

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
  if (frameworkCopy && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && objc_opt_class() && (v4 = [MAAutoAssetSetTarget alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = [MAAutoAssetSetTarget alloc];
    minTargetOSVersion = [frameworkCopy minTargetOSVersion];
    maxTargetOSVersion = [frameworkCopy maxTargetOSVersion];
    autoAssetEntries = [frameworkCopy autoAssetEntries];
    v10 = [MASAutoAssetSetEntry newShimmedArrayToFramework:autoAssetEntries];
    v11 = [v6 initForMinTargetOSVersion:minTargetOSVersion toMaxTargetOSVersion:maxTargetOSVersion asEntriesWhenTargeting:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)newShimmedFromFramework:(id)framework
{
  frameworkCopy = framework;
  if (frameworkCopy && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && objc_opt_class() && (v4 = [MAAutoAssetSetTarget alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = frameworkCopy;
    v7 = [MANAutoAssetSetTarget alloc];
    minTargetOSVersion = [v6 minTargetOSVersion];
    maxTargetOSVersion = [v6 maxTargetOSVersion];
    autoAssetEntries = [v6 autoAssetEntries];

    v11 = [MASAutoAssetSetEntry newShimmedArrayFromFramework:autoAssetEntries];
    v12 = [(MANAutoAssetSetTarget *)v7 initForMinTargetOSVersion:minTargetOSVersion toMaxTargetOSVersion:maxTargetOSVersion asEntriesWhenTargeting:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)newShimmedFromFrameworkMessage:(id)message forKey:(id)key
{
  messageCopy = message;
  keyCopy = key;
  v7 = keyCopy;
  v8 = 0;
  if (messageCopy && keyCopy)
  {
    if (__isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && (v9 = [MAAutoAssetSetTarget alloc], v10 = objc_opt_respondsToSelector(), v9, (v10 & 1) != 0))
    {
      v11 = [messageCopy safeObjectForKey:v7 ofClass:objc_opt_class()];
      v8 = [MASAutoAssetSetTarget newShimmedFromFramework:v11];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

+ (id)newShimmedArrayToFramework:(id)framework
{
  frameworkCopy = framework;
  if (frameworkCopy && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && objc_opt_class() && (v4 = [MAAutoAssetSetTarget alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = [frameworkCopy count];
    if (v7 >= 1)
    {
      v8 = v7;
      for (i = 0; i != v8; ++i)
      {
        v10 = [frameworkCopy objectAtIndex:i];
        if (v10)
        {
          v11 = [MAAutoAssetSetTarget alloc];
          minTargetOSVersion = [v10 minTargetOSVersion];
          maxTargetOSVersion = [v10 maxTargetOSVersion];
          autoAssetEntries = [v10 autoAssetEntries];
          v15 = [MASAutoAssetSetEntry newShimmedArrayToFramework:autoAssetEntries];
          v16 = [v11 initForMinTargetOSVersion:minTargetOSVersion toMaxTargetOSVersion:maxTargetOSVersion asEntriesWhenTargeting:v15];

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

+ (id)newShimmedArrayFromFramework:(id)framework
{
  frameworkCopy = framework;
  if (frameworkCopy && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && objc_opt_class() && (v4 = [MAAutoAssetSetTarget alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = frameworkCopy;
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
              minTargetOSVersion = [v11 minTargetOSVersion];
              maxTargetOSVersion = [v11 maxTargetOSVersion];
              autoAssetEntries = [v11 autoAssetEntries];
              v16 = [MASAutoAssetSetEntry newShimmedArrayFromFramework:autoAssetEntries];
              v17 = [(MANAutoAssetSetTarget *)v12 initForMinTargetOSVersion:minTargetOSVersion toMaxTargetOSVersion:maxTargetOSVersion asEntriesWhenTargeting:v16];

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
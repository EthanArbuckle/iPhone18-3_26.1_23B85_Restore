@interface MASAutoAssetSetInfoFound
+ (id)newServerMessageClasses:(id)classes;
+ (id)newShimmedFromFramework:(id)framework;
+ (id)newShimmedFromFrameworkMessage:(id)message forKey:(id)key;
+ (id)newShimmedToFramework:(id)framework;
@end

@implementation MASAutoAssetSetInfoFound

+ (id)newServerMessageClasses:(id)classes
{
  classesCopy = classes;
  if (classesCopy)
  {
    v4 = [classesCopy setByAddingObject:objc_opt_class()];

    if (__isPlatformVersionAtLeast(2, 17, 0, 0))
    {
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

      if (objc_opt_class())
      {
        v7 = [v4 setByAddingObject:objc_opt_class()];

        v4 = v7;
      }

      if (objc_opt_class())
      {
        v8 = [v4 setByAddingObject:objc_opt_class()];

        v4 = v8;
      }

      if (objc_opt_class())
      {
        v9 = [v4 setByAddingObject:objc_opt_class()];

        v4 = v9;
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
  if (frameworkCopy && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && objc_opt_class() && (v4 = [MAAutoAssetSetInfoFound alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    currentSetStatus = [frameworkCopy currentSetStatus];
    v7 = [MASAutoAssetSetStatus newShimmedToFramework:currentSetStatus];

    v8 = [MAAutoAssetSetInfoFound alloc];
    assetSetIdentifier = [frameworkCopy assetSetIdentifier];
    v10 = [v8 initForAssetSetIdentifier:assetSetIdentifier reportingStatus:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)newShimmedFromFramework:(id)framework
{
  frameworkCopy = framework;
  if (frameworkCopy && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && objc_opt_class() && (v4 = [MAAutoAssetSetInfoFound alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = frameworkCopy;
    v7 = [MANAutoAssetSetInfoFound alloc];
    assetSetIdentifier = [v6 assetSetIdentifier];
    currentSetStatus = [v6 currentSetStatus];

    v10 = [MASAutoAssetSetStatus newShimmedFromFramework:currentSetStatus];
    v11 = [(MANAutoAssetSetInfoFound *)v7 initForAssetSetIdentifier:assetSetIdentifier reportingStatus:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)newShimmedFromFrameworkMessage:(id)message forKey:(id)key
{
  messageCopy = message;
  keyCopy = key;
  v7 = keyCopy;
  v8 = 0;
  if (messageCopy && keyCopy)
  {
    if (__isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && (v9 = [MAAutoAssetSetInfoFound alloc], v10 = objc_opt_respondsToSelector(), v9, (v10 & 1) != 0))
    {
      v11 = [messageCopy safeObjectForKey:v7 ofClass:objc_opt_class()];
      v8 = [MASAutoAssetSetInfoFound newShimmedFromFramework:v11];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end
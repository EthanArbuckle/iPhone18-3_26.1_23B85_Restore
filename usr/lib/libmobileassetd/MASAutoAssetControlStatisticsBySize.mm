@interface MASAutoAssetControlStatisticsBySize
+ (id)newServerMessageClasses:(id)classes;
+ (id)newShimmedFromFramework:(id)framework;
+ (id)newShimmedFromFrameworkMessage:(id)message forKey:(id)key;
+ (id)newShimmedToFramework:(id)framework;
@end

@implementation MASAutoAssetControlStatisticsBySize

+ (id)newServerMessageClasses:(id)classes
{
  classesCopy = classes;
  if (classesCopy)
  {
    v4 = classesCopy;
    if (objc_opt_class())
    {
      v4 = [classesCopy setByAddingObject:objc_opt_class()];
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
  if (frameworkCopy && objc_opt_class() && (v4 = [MAAutoAssetControlStatisticsBySize alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = objc_alloc_init(MAAutoAssetControlStatisticsBySize);
    if (objc_opt_respondsToSelector())
    {
      [v6 setPatchedAssets:{objc_msgSend(frameworkCopy, "patchedAssets")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setPatchedBytes:{objc_msgSend(frameworkCopy, "patchedBytes")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setFullAssets:{objc_msgSend(frameworkCopy, "fullAssets")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setFullBytes:{objc_msgSend(frameworkCopy, "fullBytes")}];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)newShimmedFromFramework:(id)framework
{
  frameworkCopy = framework;
  if (frameworkCopy && (v4 = [MAAutoAssetControlStatisticsBySize alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = frameworkCopy;
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

+ (id)newShimmedFromFrameworkMessage:(id)message forKey:(id)key
{
  messageCopy = message;
  keyCopy = key;
  v7 = keyCopy;
  v8 = 0;
  if (messageCopy && keyCopy)
  {
    v9 = [MAAutoAssetControlStatisticsBySize alloc];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [messageCopy safeObjectForKey:v7 ofClass:objc_opt_class()];
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
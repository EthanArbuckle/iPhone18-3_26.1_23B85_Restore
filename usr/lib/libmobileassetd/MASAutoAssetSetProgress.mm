@interface MASAutoAssetSetProgress
+ (id)newServerMessageClasses:(id)classes;
+ (id)newShimmedFromFramework:(id)framework;
+ (id)newShimmedFromFrameworkMessage:(id)message forKey:(id)key;
+ (id)newShimmedToFramework:(id)framework;
@end

@implementation MASAutoAssetSetProgress

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
  if (frameworkCopy && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && (v4 = [MAAutoAssetSetProgress alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = objc_alloc_init(MAAutoAssetSetProgress);
    if (objc_opt_respondsToSelector())
    {
      [v6 setDownloadedAssetCount:{objc_msgSend(frameworkCopy, "downloadedAssetCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setRemainingAssetCount:{objc_msgSend(frameworkCopy, "remainingAssetCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setTotalExpectedBytes:{objc_msgSend(frameworkCopy, "totalExpectedBytes")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setTotalWrittenBytes:{objc_msgSend(frameworkCopy, "totalWrittenBytes")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setIsStalled:{objc_msgSend(frameworkCopy, "isStalled")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [frameworkCopy expectedTimeRemainingSecs];
      [v6 setExpectedTimeRemainingSecs:?];
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
  if (frameworkCopy && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && (v4 = [MAAutoAssetSetProgress alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = frameworkCopy;
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

+ (id)newShimmedFromFrameworkMessage:(id)message forKey:(id)key
{
  messageCopy = message;
  keyCopy = key;
  v7 = keyCopy;
  v8 = 0;
  if (messageCopy && keyCopy)
  {
    if (__isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && (v9 = [MAAutoAssetSetProgress alloc], v10 = objc_opt_respondsToSelector(), v9, (v10 & 1) != 0))
    {
      v11 = [messageCopy safeObjectForKey:v7 ofClass:objc_opt_class()];
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
@interface MASAutoAssetSetInfoDesire
+ (id)newServerMessageClasses:(id)classes;
+ (id)newShimmedFromFramework:(id)framework;
+ (id)newShimmedFromFrameworkMessage:(id)message forKey:(id)key;
+ (id)newShimmedToFramework:(id)framework;
@end

@implementation MASAutoAssetSetInfoDesire

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
  if (frameworkCopy && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && objc_opt_class() && (v4 = [MAAutoAssetSetInfoDesire alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = [MAAutoAssetSetInfoDesire alloc];
    clientAssetSetPolicy = [frameworkCopy clientAssetSetPolicy];
    v8 = [MASAutoAssetSetPolicy newShimmedToFramework:clientAssetSetPolicy];
    desireReason = [frameworkCopy desireReason];
    v10 = [v6 initForClientAssetSetPolicy:v8 reasonDesired:desireReason awaitingDownloadOfDiscovered:objc_msgSend(frameworkCopy withCheckWaitTimeout:"awaitDownloadingOfDiscovered") withLockWaitTimeout:objc_msgSend(frameworkCopy desiringProgress:{"checkWaitTimeoutSecs"), objc_msgSend(frameworkCopy, "lockWaitTimeoutSecs"), objc_msgSend(frameworkCopy, "downloadProgressDesired")}];
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
  if (frameworkCopy && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && objc_opt_class() && (v4 = [MAAutoAssetSetInfoDesire alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = frameworkCopy;
    v7 = [MANAutoAssetSetInfoDesire alloc];
    clientAssetSetPolicy = [v6 clientAssetSetPolicy];
    v9 = [MASAutoAssetSetPolicy newShimmedFromFramework:clientAssetSetPolicy];
    desireReason = [v6 desireReason];
    awaitDownloadingOfDiscovered = [v6 awaitDownloadingOfDiscovered];
    checkWaitTimeoutSecs = [v6 checkWaitTimeoutSecs];
    lockWaitTimeoutSecs = [v6 lockWaitTimeoutSecs];
    downloadProgressDesired = [v6 downloadProgressDesired];

    v15 = [(MANAutoAssetSetInfoDesire *)v7 initForClientAssetSetPolicy:v9 reasonDesired:desireReason awaitingDownloadOfDiscovered:awaitDownloadingOfDiscovered withCheckWaitTimeout:checkWaitTimeoutSecs withLockWaitTimeout:lockWaitTimeoutSecs desiringProgress:downloadProgressDesired];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)newShimmedFromFrameworkMessage:(id)message forKey:(id)key
{
  messageCopy = message;
  keyCopy = key;
  v7 = keyCopy;
  v8 = 0;
  if (messageCopy && keyCopy)
  {
    if (__isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && (v9 = [MAAutoAssetSetInfoDesire alloc], v10 = objc_opt_respondsToSelector(), v9, (v10 & 1) != 0))
    {
      v11 = [messageCopy safeObjectForKey:v7 ofClass:objc_opt_class()];
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
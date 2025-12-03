@interface MASAutoAssetSetInfoControl
+ (id)newServerMessageClasses:(id)classes;
+ (id)newShimmedFromFramework:(id)framework;
+ (id)newShimmedFromFrameworkMessage:(id)message forKey:(id)key;
+ (id)newShimmedToFramework:(id)framework;
@end

@implementation MASAutoAssetSetInfoControl

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
  if (frameworkCopy && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && (v4 = [MAAutoAssetSetInfoControl alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = [MAAutoAssetSetInfoControl alloc];
    clearingAfter = [frameworkCopy clearingAfter];
    limitedToClientDomains = [frameworkCopy limitedToClientDomains];
    limitedToSetIdentifiers = [frameworkCopy limitedToSetIdentifiers];
    v10 = [v6 initClearingAfter:clearingAfter limitedToClientDomains:limitedToClientDomains limitedToSetIdentifiers:limitedToSetIdentifiers];
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
  if (frameworkCopy && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && (v4 = [MAAutoAssetSetInfoControl alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = frameworkCopy;
    v7 = [MANAutoAssetSetInfoControl alloc];
    clearingAfter = [v6 clearingAfter];
    limitedToClientDomains = [v6 limitedToClientDomains];
    limitedToSetIdentifiers = [v6 limitedToSetIdentifiers];

    v11 = [(MANAutoAssetSetInfoControl *)v7 initClearingAfter:clearingAfter limitedToClientDomains:limitedToClientDomains limitedToSetIdentifiers:limitedToSetIdentifiers];
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
    if (__isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && (v9 = [MAAutoAssetSetInfoControl alloc], v10 = objc_opt_respondsToSelector(), v9, (v10 & 1) != 0))
    {
      v11 = [messageCopy safeObjectForKey:v7 ofClass:objc_opt_class()];
      v8 = [MASAutoAssetSetInfoControl newShimmedFromFramework:v11];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end
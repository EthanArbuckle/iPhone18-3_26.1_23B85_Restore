@interface TTSAssetSource
+ (TTSAssetSource)adhoc;
+ (TTSAssetSource)factory;
+ (TTSAssetSource)macosLegacy;
+ (TTSAssetSource)mobileAsset;
+ (TTSAssetSource)preinstalled;
+ (TTSAssetSource)turiTrial;
+ (TTSAssetSource)uaf;
@end

@implementation TTSAssetSource

+ (TTSAssetSource)macosLegacy
{
  v2 = static TTSAssetSource.macosLegacy.getter();

  return v2;
}

+ (TTSAssetSource)mobileAsset
{
  v2 = static TTSAssetSource.mobileAsset.getter();

  return v2;
}

+ (TTSAssetSource)turiTrial
{
  v2 = static TTSAssetSource.turiTrial.getter();

  return v2;
}

+ (TTSAssetSource)uaf
{
  v2 = static TTSAssetSource.uaf.getter();

  return v2;
}

+ (TTSAssetSource)adhoc
{
  v2 = static TTSAssetSource.adhoc.getter();

  return v2;
}

+ (TTSAssetSource)preinstalled
{
  v2 = static TTSAssetSource.preinstalled.getter();

  return v2;
}

+ (TTSAssetSource)factory
{
  v2 = static TTSAssetSource.factory.getter();

  return v2;
}

@end
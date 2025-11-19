@interface TTSAssetQuality
+ (TTSAssetQuality)beta;
+ (TTSAssetQuality)compact;
+ (TTSAssetQuality)premium;
+ (TTSAssetQuality)premiumhigh;
@end

@implementation TTSAssetQuality

+ (TTSAssetQuality)compact
{
  v2 = static TTSAssetQuality.compact.getter();

  return v2;
}

+ (TTSAssetQuality)premium
{
  v2 = static TTSAssetQuality.premium.getter();

  return v2;
}

+ (TTSAssetQuality)premiumhigh
{
  v2 = static TTSAssetQuality.premiumhigh.getter();

  return v2;
}

+ (TTSAssetQuality)beta
{
  v2 = static TTSAssetQuality.beta.getter();

  return v2;
}

@end
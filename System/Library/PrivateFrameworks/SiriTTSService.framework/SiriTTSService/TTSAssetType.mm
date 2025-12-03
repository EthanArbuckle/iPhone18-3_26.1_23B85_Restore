@interface TTSAssetType
+ (TTSAssetType)combinedVoice;
+ (TTSAssetType)customVoice;
+ (TTSAssetType)gryphonVoice;
+ (TTSAssetType)macintalkVoice;
+ (TTSAssetType)vocalizerVoice;
+ (TTSAssetType)voiceResources;
- (id)pathComponent;
@end

@implementation TTSAssetType

+ (TTSAssetType)macintalkVoice
{
  v2 = static TTSAssetType.macintalkVoice.getter();

  return v2;
}

+ (TTSAssetType)vocalizerVoice
{
  v2 = static TTSAssetType.vocalizerVoice.getter();

  return v2;
}

+ (TTSAssetType)combinedVoice
{
  v2 = static TTSAssetType.combinedVoice.getter();

  return v2;
}

+ (TTSAssetType)customVoice
{
  v2 = static TTSAssetType.customVoice.getter();

  return v2;
}

+ (TTSAssetType)gryphonVoice
{
  v2 = static TTSAssetType.gryphonVoice.getter();

  return v2;
}

+ (TTSAssetType)voiceResources
{
  v2 = static TTSAssetType.voiceResources.getter();

  return v2;
}

- (id)pathComponent
{
  selfCopy = self;
  TTSAssetType.pathComponent()();

  v3 = sub_1B1C2CB28();

  return v3;
}

@end
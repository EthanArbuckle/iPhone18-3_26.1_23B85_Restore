@interface CSVTUIAssetConfigDecoderHelper
+ (BOOL)getUseRecognizerCombinationFromSecondPassConfigWithSecureAsset:(id)asset;
+ (float)getPreTriggerAudioTimeFromSecondPassConfigWithSecureAsset:(id)asset;
- (_TtC18SpeakerRecognition30CSVTUIAssetConfigDecoderHelper)init;
@end

@implementation CSVTUIAssetConfigDecoderHelper

+ (BOOL)getUseRecognizerCombinationFromSecondPassConfigWithSecureAsset:(id)asset
{
  assetCopy = asset;
  v4 = _s18SpeakerRecognition30CSVTUIAssetConfigDecoderHelperC041getUseRecognizerCombinationFromSecondPassD011secureAssetSbSo06SecureO0C_tFZ_0();

  return v4 & 1;
}

+ (float)getPreTriggerAudioTimeFromSecondPassConfigWithSecureAsset:(id)asset
{
  assetCopy = asset;
  v4 = _s18SpeakerRecognition30CSVTUIAssetConfigDecoderHelperC036getPreTriggerAudioTimeFromSecondPassD011secureAssetSfSo06SecureP0C_tFZ_0();

  return v4;
}

- (_TtC18SpeakerRecognition30CSVTUIAssetConfigDecoderHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CSVTUIAssetConfigDecoderHelper();
  return [(CSVTUIAssetConfigDecoderHelper *)&v3 init];
}

@end
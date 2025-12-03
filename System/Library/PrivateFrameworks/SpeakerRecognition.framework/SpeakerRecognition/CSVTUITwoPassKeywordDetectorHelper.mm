@interface CSVTUITwoPassKeywordDetectorHelper
- (_TtC18SpeakerRecognition34CSVTUITwoPassKeywordDetectorHelper)init;
- (_TtC18SpeakerRecognition34CSVTUITwoPassKeywordDetectorHelper)initWithAsset:(id)asset;
- (_TtC18SpeakerRecognition34CSVTUITwoPassKeywordDetectorHelper)initWithSecureAsset:(id)asset supportMph:(BOOL)mph;
- (id)analyzeWithBuffer:(id)buffer;
- (id)triggeredUtteranceWithVoiceTriggerEventInfo:(id)info;
- (void)reset;
@end

@implementation CSVTUITwoPassKeywordDetectorHelper

- (_TtC18SpeakerRecognition34CSVTUITwoPassKeywordDetectorHelper)initWithAsset:(id)asset
{
  assetCopy = asset;
  CSVTUITwoPassKeywordDetectorHelper.init(asset:)(asset);
  return 0;
}

- (_TtC18SpeakerRecognition34CSVTUITwoPassKeywordDetectorHelper)initWithSecureAsset:(id)asset supportMph:(BOOL)mph
{
  mphCopy = mph;
  assetCopy = asset;
  return CSVTUITwoPassKeywordDetectorHelper.init(secureAsset:supportMph:)(asset, mphCopy);
}

- (void)reset
{
  selfCopy = self;
  sub_225E18BD8();
  v2 = *MEMORY[0x277D015D8];
  sub_225EA272C();
  sub_225EA268C();

  v3 = *(&selfCopy->super.isa + OBJC_IVAR____TtC18SpeakerRecognition34CSVTUITwoPassKeywordDetectorHelper_audioBuffer);
  [v3 reset];
}

- (id)analyzeWithBuffer:(id)buffer
{
  bufferCopy = buffer;
  selfCopy = self;
  sub_225E18DD4(bufferCopy);
  v7 = v6;

  return v7;
}

- (id)triggeredUtteranceWithVoiceTriggerEventInfo:(id)info
{
  infoCopy = info;
  selfCopy = self;
  sub_225E1B3D0(infoCopy);
  v7 = v6;
  v9 = v8;

  v10 = sub_225EA230C();
  sub_225E16FB0(v7, v9);

  return v10;
}

- (_TtC18SpeakerRecognition34CSVTUITwoPassKeywordDetectorHelper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
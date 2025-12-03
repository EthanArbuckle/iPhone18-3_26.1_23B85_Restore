@interface CSVTUIKeywordDetectorHelper
- (_TtC18SpeakerRecognition27CSVTUIKeywordDetectorHelper)init;
- (_TtC18SpeakerRecognition27CSVTUIKeywordDetectorHelper)initWithAsset:(id)asset;
- (id)analyzeWithBuffer:(id)buffer;
- (id)triggeredUtteranceWithVoiceTriggerEventInfo:(id)info;
- (void)reset;
@end

@implementation CSVTUIKeywordDetectorHelper

- (_TtC18SpeakerRecognition27CSVTUIKeywordDetectorHelper)initWithAsset:(id)asset
{
  assetCopy = asset;
  CSVTUIKeywordDetectorHelper.init(asset:)(asset);
  return 0;
}

- (void)reset
{
  selfCopy = self;
  sub_225E15554();
}

- (id)analyzeWithBuffer:(id)buffer
{
  bufferCopy = buffer;
  selfCopy = self;
  v6 = sub_225E15618(bufferCopy);

  return v6;
}

- (id)triggeredUtteranceWithVoiceTriggerEventInfo:(id)info
{
  infoCopy = info;
  selfCopy = self;
  sub_225E16268(infoCopy);
  v7 = v6;
  v9 = v8;

  v10 = sub_225EA230C();
  sub_225E16FB0(v7, v9);

  return v10;
}

- (_TtC18SpeakerRecognition27CSVTUIKeywordDetectorHelper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
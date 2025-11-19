@interface CSVTUIKeywordDetectorHelper
- (_TtC18SpeakerRecognition27CSVTUIKeywordDetectorHelper)init;
- (_TtC18SpeakerRecognition27CSVTUIKeywordDetectorHelper)initWithAsset:(id)a3;
- (id)analyzeWithBuffer:(id)a3;
- (id)triggeredUtteranceWithVoiceTriggerEventInfo:(id)a3;
- (void)reset;
@end

@implementation CSVTUIKeywordDetectorHelper

- (_TtC18SpeakerRecognition27CSVTUIKeywordDetectorHelper)initWithAsset:(id)a3
{
  v4 = a3;
  CSVTUIKeywordDetectorHelper.init(asset:)(a3);
  return 0;
}

- (void)reset
{
  v2 = self;
  sub_225E15554();
}

- (id)analyzeWithBuffer:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_225E15618(v4);

  return v6;
}

- (id)triggeredUtteranceWithVoiceTriggerEventInfo:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_225E16268(v4);
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
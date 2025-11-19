@interface CSVTUITwoPassKeywordDetectorHelper
- (_TtC18SpeakerRecognition34CSVTUITwoPassKeywordDetectorHelper)init;
- (_TtC18SpeakerRecognition34CSVTUITwoPassKeywordDetectorHelper)initWithAsset:(id)a3;
- (_TtC18SpeakerRecognition34CSVTUITwoPassKeywordDetectorHelper)initWithSecureAsset:(id)a3 supportMph:(BOOL)a4;
- (id)analyzeWithBuffer:(id)a3;
- (id)triggeredUtteranceWithVoiceTriggerEventInfo:(id)a3;
- (void)reset;
@end

@implementation CSVTUITwoPassKeywordDetectorHelper

- (_TtC18SpeakerRecognition34CSVTUITwoPassKeywordDetectorHelper)initWithAsset:(id)a3
{
  v4 = a3;
  CSVTUITwoPassKeywordDetectorHelper.init(asset:)(a3);
  return 0;
}

- (_TtC18SpeakerRecognition34CSVTUITwoPassKeywordDetectorHelper)initWithSecureAsset:(id)a3 supportMph:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  return CSVTUITwoPassKeywordDetectorHelper.init(secureAsset:supportMph:)(a3, v4);
}

- (void)reset
{
  v4 = self;
  sub_225E18BD8();
  v2 = *MEMORY[0x277D015D8];
  sub_225EA272C();
  sub_225EA268C();

  v3 = *(&v4->super.isa + OBJC_IVAR____TtC18SpeakerRecognition34CSVTUITwoPassKeywordDetectorHelper_audioBuffer);
  [v3 reset];
}

- (id)analyzeWithBuffer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_225E18DD4(v4);
  v7 = v6;

  return v7;
}

- (id)triggeredUtteranceWithVoiceTriggerEventInfo:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_225E1B3D0(v4);
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
@interface VCUIPhoneticVocabularyRecordingManager
- (_TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager)init;
- (void)dealloc;
- (void)dictationConnection:(id)a3 didRecognizeTranscriptionObjects:(id)a4 languageModel:(id)a5;
- (void)dictationConnection:(id)a3 speechRecognitionDidFail:(id)a4;
- (void)dictationConnection:(id)a3 speechRecordingDidFail:(id)a4;
- (void)dictationConnectionSpeechRecognitionDidSucceed:(id)a3;
- (void)dictationConnectionSpeechRecordingDidBegin:(id)a3;
- (void)dictationConnectionSpeechRecordingDidCancel:(id)a3;
- (void)dictationConnectionSpeechRecordingDidEnd:(id)a3;
@end

@implementation VCUIPhoneticVocabularyRecordingManager

- (void)dealloc
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_connection);
  v4 = self;
  if (v3)
  {
    [v3 endSession];
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for VCUIPhoneticVocabularyRecordingManager(0);
  [(VCUIPhoneticVocabularyRecordingManager *)&v5 dealloc];
}

- (void)dictationConnectionSpeechRecordingDidBegin:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_272417744(a3);
}

- (void)dictationConnection:(id)a3 didRecognizeTranscriptionObjects:(id)a4 languageModel:(id)a5
{
  if (a4)
  {
    v8 = sub_272434A50();
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  if (a5)
  {
LABEL_3:
    sub_272434930();
  }

LABEL_4:
  v9 = a3;
  v10 = self;
  sub_272429130(a3, v8);
}

- (void)dictationConnection:(id)a3 speechRecordingDidFail:(id)a4
{
  v7 = a3;
  v8 = self;
  v9 = a4;
  sub_272417CA4(a3, a4);
}

- (void)dictationConnection:(id)a3 speechRecognitionDidFail:(id)a4
{
  v7 = a3;
  v8 = self;
  v9 = a4;
  sub_272417D34(a3, a4);
}

- (void)dictationConnectionSpeechRecordingDidCancel:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_272418164(a3);
}

- (void)dictationConnectionSpeechRecognitionDidSucceed:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_2724184E0(a3);
}

- (void)dictationConnectionSpeechRecordingDidEnd:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_272418800(a3);
}

- (_TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
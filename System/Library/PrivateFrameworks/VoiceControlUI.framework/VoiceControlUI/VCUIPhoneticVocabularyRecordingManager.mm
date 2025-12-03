@interface VCUIPhoneticVocabularyRecordingManager
- (_TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager)init;
- (void)dealloc;
- (void)dictationConnection:(id)connection didRecognizeTranscriptionObjects:(id)objects languageModel:(id)model;
- (void)dictationConnection:(id)connection speechRecognitionDidFail:(id)fail;
- (void)dictationConnection:(id)connection speechRecordingDidFail:(id)fail;
- (void)dictationConnectionSpeechRecognitionDidSucceed:(id)succeed;
- (void)dictationConnectionSpeechRecordingDidBegin:(id)begin;
- (void)dictationConnectionSpeechRecordingDidCancel:(id)cancel;
- (void)dictationConnectionSpeechRecordingDidEnd:(id)end;
@end

@implementation VCUIPhoneticVocabularyRecordingManager

- (void)dealloc
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_connection);
  selfCopy = self;
  if (v3)
  {
    [v3 endSession];
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for VCUIPhoneticVocabularyRecordingManager(0);
  [(VCUIPhoneticVocabularyRecordingManager *)&v5 dealloc];
}

- (void)dictationConnectionSpeechRecordingDidBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  sub_272417744(begin);
}

- (void)dictationConnection:(id)connection didRecognizeTranscriptionObjects:(id)objects languageModel:(id)model
{
  if (objects)
  {
    v8 = sub_272434A50();
    if (!model)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  if (model)
  {
LABEL_3:
    sub_272434930();
  }

LABEL_4:
  connectionCopy = connection;
  selfCopy = self;
  sub_272429130(connection, v8);
}

- (void)dictationConnection:(id)connection speechRecordingDidFail:(id)fail
{
  connectionCopy = connection;
  selfCopy = self;
  failCopy = fail;
  sub_272417CA4(connection, fail);
}

- (void)dictationConnection:(id)connection speechRecognitionDidFail:(id)fail
{
  connectionCopy = connection;
  selfCopy = self;
  failCopy = fail;
  sub_272417D34(connection, fail);
}

- (void)dictationConnectionSpeechRecordingDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  sub_272418164(cancel);
}

- (void)dictationConnectionSpeechRecognitionDidSucceed:(id)succeed
{
  succeedCopy = succeed;
  selfCopy = self;
  sub_2724184E0(succeed);
}

- (void)dictationConnectionSpeechRecordingDidEnd:(id)end
{
  endCopy = end;
  selfCopy = self;
  sub_272418800(end);
}

- (_TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
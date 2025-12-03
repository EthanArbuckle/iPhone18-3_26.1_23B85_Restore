@interface RDSAPISwiftSpeechAnalyzer
- (_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer)init;
- (_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer)initWithDelegate:(id)delegate locale:(id)locale highPriority:(BOOL)priority farField:(BOOL)field supportEmojiRecognition:(BOOL)recognition;
- (void)addAudioSamplesPCMWithAudio:(id)audio;
- (void)addAudioSamplesWithAudio:(id)audio;
- (void)attachAnalysisContextWithCompletionHandler:(id)handler;
- (void)attachTranscriberWithTask:(NSString *)task completionHandler:(id)handler;
- (void)cancelRecognition;
- (void)endAudio;
- (void)setRecognitionReplacementsWithUseRecognitionReplacements:(BOOL)replacements completionHandler:(id)handler;
- (void)setTextWithLeftContextText:(id)text;
- (void)startRecognitionFromFile;
- (void)startRecognitionWithTranscriberModuleWrapper:(id)wrapper;
- (void)useRecognitionReplacements;
@end

@implementation RDSAPISwiftSpeechAnalyzer

- (_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer)initWithDelegate:(id)delegate locale:(id)locale highPriority:(BOOL)priority farField:(BOOL)field supportEmojiRecognition:(BOOL)recognition
{
  recognitionCopy = recognition;
  fieldCopy = field;
  priorityCopy = priority;
  delegateCopy = delegate;
  localeCopy = locale;
  v13 = sub_10006CC3C(delegateCopy, localeCopy, priorityCopy, fieldCopy, recognitionCopy);

  return v13;
}

- (void)attachAnalysisContextWithCompletionHandler:(id)handler
{
  v5 = sub_100052CBC(&qword_10010DCC0, &qword_1000D1B20);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_1000C9C34();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1000D2000;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1000D2008;
  v13[5] = v12;
  selfCopy = self;
  sub_100068BCC(0, 0, v8, &unk_1000D2010, v13);
}

- (void)attachTranscriberWithTask:(NSString *)task completionHandler:(id)handler
{
  v7 = sub_100052CBC(&qword_10010DCC0, &qword_1000D1B20);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = task;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1000C9C34();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000D1FE0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1000D1FE8;
  v15[5] = v14;
  taskCopy = task;
  selfCopy = self;
  sub_100068BCC(0, 0, v10, &unk_1000D1FF0, v15);
}

- (void)setRecognitionReplacementsWithUseRecognitionReplacements:(BOOL)replacements completionHandler:(id)handler
{
  v7 = sub_100052CBC(&qword_10010DCC0, &qword_1000D1B20);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  *(v12 + 16) = replacements;
  *(v12 + 24) = v11;
  *(v12 + 32) = self;
  v13 = sub_1000C9C34();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000D1F98;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1000D1FA8;
  v15[5] = v14;
  selfCopy = self;
  sub_100068BCC(0, 0, v10, &unk_1000D1FB8, v15);
}

- (void)cancelRecognition
{
  selfCopy = self;
  RDSAPISwiftSpeechAnalyzer.cancelRecognition()();
}

- (void)setTextWithLeftContextText:(id)text
{
  v4 = sub_100052CBC(&qword_10010DCC0, &qword_1000D1B20);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v14 - v6;
  v8 = sub_1000C9B04();
  v10 = v9;
  v11 = sub_1000C9C34();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = self;
  v12[5] = v8;
  v12[6] = v10;
  selfCopy = self;
  sub_100055D64(0, 0, v7, &unk_1000D1F88, v12);
}

- (void)useRecognitionReplacements
{
  selfCopy = self;
  RDSAPISwiftSpeechAnalyzer.useRecognitionReplacements()();
}

- (void)addAudioSamplesWithAudio:(id)audio
{
  v4 = sub_1000C9B74();
  selfCopy = self;
  RDSAPISwiftSpeechAnalyzer.addAudioSamples(audio:)(v4);
}

- (void)endAudio
{
  selfCopy = self;
  RDSAPISwiftSpeechAnalyzer.endAudio()();
}

- (void)addAudioSamplesPCMWithAudio:(id)audio
{
  v5 = sub_1000C98A4();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_100052CBC(&qword_10010DF48, &qword_1000D1E00);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19 - v10;
  v12 = sub_100052CBC(&qword_10010DF68, &qword_1000D1E88);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v19 - v15;
  (*(v8 + 16))(v11, self + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__inputStreamBuilder, v7);
  audioCopy = audio;
  selfCopy = self;
  CMTimeMake(&v20, 0, 1);
  sub_1000C9884();
  sub_1000C9C54();

  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
}

- (void)startRecognitionWithTranscriberModuleWrapper:(id)wrapper
{
  v5 = sub_100052CBC(&qword_10010DCC0, &qword_1000D1B20);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = sub_1000C9C34();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = self;
  v10[5] = wrapper;
  selfCopy = self;
  wrapperCopy = wrapper;
  v13 = sub_100055D64(0, 0, v8, &unk_1000D1F70, v10);
  v14 = *(&selfCopy->super.isa + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__recognitionTask);
  *(&selfCopy->super.isa + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__recognitionTask) = v13;
}

- (void)startRecognitionFromFile
{
  selfCopy = self;
  RDSAPISwiftSpeechAnalyzer.startRecognitionFromFile()();
}

- (_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
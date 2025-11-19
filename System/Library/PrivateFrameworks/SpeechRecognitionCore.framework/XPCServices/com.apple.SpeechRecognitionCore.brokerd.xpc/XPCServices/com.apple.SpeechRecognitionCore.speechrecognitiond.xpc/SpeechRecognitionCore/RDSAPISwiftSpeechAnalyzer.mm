@interface RDSAPISwiftSpeechAnalyzer
- (_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer)init;
- (_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer)initWithDelegate:(id)a3 locale:(id)a4 highPriority:(BOOL)a5 farField:(BOOL)a6 supportEmojiRecognition:(BOOL)a7;
- (void)addAudioSamplesPCMWithAudio:(id)a3;
- (void)addAudioSamplesWithAudio:(id)a3;
- (void)attachAnalysisContextWithCompletionHandler:(id)a3;
- (void)attachTranscriberWithTask:(NSString *)a3 completionHandler:(id)a4;
- (void)cancelRecognition;
- (void)endAudio;
- (void)setRecognitionReplacementsWithUseRecognitionReplacements:(BOOL)a3 completionHandler:(id)a4;
- (void)setTextWithLeftContextText:(id)a3;
- (void)startRecognitionFromFile;
- (void)startRecognitionWithTranscriberModuleWrapper:(id)a3;
- (void)useRecognitionReplacements;
@end

@implementation RDSAPISwiftSpeechAnalyzer

- (_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer)initWithDelegate:(id)a3 locale:(id)a4 highPriority:(BOOL)a5 farField:(BOOL)a6 supportEmojiRecognition:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v11 = a3;
  v12 = a4;
  v13 = sub_10006CC3C(v11, v12, v9, v8, v7);

  return v13;
}

- (void)attachAnalysisContextWithCompletionHandler:(id)a3
{
  v5 = sub_100052CBC(&qword_10010DCC0, &qword_1000D1B20);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
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
  v14 = self;
  sub_100068BCC(0, 0, v8, &unk_1000D2010, v13);
}

- (void)attachTranscriberWithTask:(NSString *)a3 completionHandler:(id)a4
{
  v7 = sub_100052CBC(&qword_10010DCC0, &qword_1000D1B20);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_100068BCC(0, 0, v10, &unk_1000D1FF0, v15);
}

- (void)setRecognitionReplacementsWithUseRecognitionReplacements:(BOOL)a3 completionHandler:(id)a4
{
  v7 = sub_100052CBC(&qword_10010DCC0, &qword_1000D1B20);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
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
  v16 = self;
  sub_100068BCC(0, 0, v10, &unk_1000D1FB8, v15);
}

- (void)cancelRecognition
{
  v2 = self;
  RDSAPISwiftSpeechAnalyzer.cancelRecognition()();
}

- (void)setTextWithLeftContextText:(id)a3
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
  v13 = self;
  sub_100055D64(0, 0, v7, &unk_1000D1F88, v12);
}

- (void)useRecognitionReplacements
{
  v2 = self;
  RDSAPISwiftSpeechAnalyzer.useRecognitionReplacements()();
}

- (void)addAudioSamplesWithAudio:(id)a3
{
  v4 = sub_1000C9B74();
  v5 = self;
  RDSAPISwiftSpeechAnalyzer.addAudioSamples(audio:)(v4);
}

- (void)endAudio
{
  v2 = self;
  RDSAPISwiftSpeechAnalyzer.endAudio()();
}

- (void)addAudioSamplesPCMWithAudio:(id)a3
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
  v17 = a3;
  v18 = self;
  CMTimeMake(&v20, 0, 1);
  sub_1000C9884();
  sub_1000C9C54();

  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
}

- (void)startRecognitionWithTranscriberModuleWrapper:(id)a3
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
  v10[5] = a3;
  v11 = self;
  v12 = a3;
  v13 = sub_100055D64(0, 0, v8, &unk_1000D1F70, v10);
  v14 = *(&v11->super.isa + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__recognitionTask);
  *(&v11->super.isa + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__recognitionTask) = v13;
}

- (void)startRecognitionFromFile
{
  v2 = self;
  RDSAPISwiftSpeechAnalyzer.startRecognitionFromFile()();
}

- (_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
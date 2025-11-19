@interface RDSwiftSpeechDonation
- (_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation)init;
- (_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation)initWithDonorBundleID:(id)a3 donorReferenceID:(id)a4 recordingDate:(id)a5 locale:(id)a6 taskHint:(id)a7 transcription:(id)a8;
- (void)donateWithAudioBuffers:(id)a3 logAudioFile:(BOOL)a4;
@end

@implementation RDSwiftSpeechDonation

- (_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation)initWithDonorBundleID:(id)a3 donorReferenceID:(id)a4 recordingDate:(id)a5 locale:(id)a6 taskHint:(id)a7 transcription:(id)a8
{
  v28[1] = self;
  v8 = sub_1000C9564();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000C9514();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000C9B04();
  v18 = v17;
  v19 = sub_1000C9B04();
  v21 = v20;
  sub_1000C9504();
  sub_1000C9554();
  v22 = sub_1000C9B04();
  v24 = v23;
  v25 = sub_1000C9B04();
  return RDSwiftSpeechDonation.init(donorBundleID:donorReferenceID:recordingDate:locale:taskHint:transcription:)(v16, v18, v19, v21, v15, v11, v22, v24, v25, v26);
}

- (void)donateWithAudioBuffers:(id)a3 logAudioFile:(BOOL)a4
{
  sub_100056E30();
  v6 = sub_1000C9B74();
  v7 = self;
  RDSwiftSpeechDonation.donate(audioBuffers:logAudioFile:)(v6, a4);
}

- (_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
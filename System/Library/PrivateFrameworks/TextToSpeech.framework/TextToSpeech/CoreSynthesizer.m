@interface CoreSynthesizer
- (AVAudioSession)_audioSession;
- (AVAudioSession)auxiliarySession;
- (BOOL)_audioSessionAutomaticallyDeactivatesAfterSpeaking;
- (BOOL)_auxSessionParticipatesInNowPlayingAppPolicy;
- (BOOL)continueSpeaking;
- (BOOL)mixToTelephonyUplink;
- (BOOL)useAuxiliarySession;
- (NSArray)_effects;
- (NSArray)channels;
- (NSArray)effects;
- (NSArray)offlineChain;
- (NSString)_auxSessionCategory;
- (NSString)_bundleIdentifier;
- (NSString)bundleIdentifier;
- (TTSWrappedAudioQueue)_audioQueue;
- (_TtC12TextToSpeech13VoiceResolver)_voiceResolver;
- (_TtC12TextToSpeech13VoiceResolver)voiceResolver;
- (_TtC12TextToSpeech15CoreSynthesizer)init;
- (unint64_t)_auxSessionCategoryOptions;
- (unint64_t)auxSessionCategoryOptions;
- (unsigned)audioQueueFlags;
- (void)pauseSpeakingAt:(int64_t)a3 completionHandler:(id)a4;
- (void)setAudioQueue:(id)a3;
- (void)setAudioSession:(id)a3;
- (void)setAudioSessionAutomaticallyDeactivatesAfterSpeaking:(BOOL)a3;
- (void)setAuxSessionCategory:(id)a3;
- (void)setAuxSessionCategoryOptions:(unint64_t)a3;
- (void)setAuxSessionParticipatesInNowPlayingAppPolicy:(BOOL)a3;
- (void)setAuxiliarySession:(id)a3;
- (void)setBundleIdentifier:(id)a3;
- (void)setChannels:(id)a3;
- (void)setEffects:(id)a3;
- (void)setLegacySubstitutions:(id)a3;
- (void)setMixToTelephonyUplink:(BOOL)a3;
- (void)setOfflineChain:(id)a3;
- (void)setUseAuxiliarySession:(BOOL)a3;
- (void)setVoiceResolver:(id)a3;
- (void)set_audioQueue:(id)a3;
- (void)set_audioSession:(id)a3;
- (void)set_audioSessionAutomaticallyDeactivatesAfterSpeaking:(BOOL)a3;
- (void)set_auxSessionCategory:(id)a3;
- (void)set_auxSessionCategoryOptions:(unint64_t)a3;
- (void)set_auxSessionParticipatesInNowPlayingAppPolicy:(BOOL)a3;
- (void)set_auxiliarySession:(id)a3;
- (void)set_bundleIdentifier:(id)a3;
- (void)set_effects:(id)a3;
- (void)set_voiceResolver:(id)a3;
- (void)speak:(AVSpeechUtterance *)a3 synth:(AVSpeechSynthesizer *)a4 completionHandler:(id)a5;
- (void)speakWithRequest:(id)a3 language:(id)a4 synthesizer:(id)a5 completionHandler:(id)a6;
- (void)stopSpeakingAt:(int64_t)a3 completionHandler:(id)a4;
- (void)stopWithCompletionHandler:(id)a3;
- (void)voiceWithIdentifier:(NSString *)a3 completionHandler:(id)a4;
- (void)voiceWithLocale:(NSLocale *)a3 completionHandler:(id)a4;
- (void)write:(AVSpeechUtterance *)a3 toBufferCallback:(id)a4 toMarkerCallback:synth:completionHandler:;
- (void)write:(_TtC12TextToSpeech15CoreSynthesizer *)self toBufferCallback:(SEL)a2 synth:(AVSpeechUtterance *)a3 completionHandler:(id)a4;
- (void)writeWithSpeechPhrase:(NSString *)a3 toAudioFile:(NSURL *)a4 withAudioSettings:(NSDictionary *)a5 completionHandler:(id)a6;
@end

@implementation CoreSynthesizer

- (_TtC12TextToSpeech13VoiceResolver)_voiceResolver
{
  v3 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__voiceResolver;
  swift_beginAccess();
  v4 = *(self + v3);

  return v5;
}

- (void)set_voiceResolver:(id)a3
{
  v5 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__voiceResolver;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
}

- (_TtC12TextToSpeech13VoiceResolver)voiceResolver
{
  KeyPath = swift_getKeyPath();
  v4 = *((*MEMORY[0x1E69E7D40] & *self) + 0x698);
  v5 = self;
  v4(KeyPath);

  v6 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__voiceResolver;
  swift_beginAccess();
  v7 = *(v5 + v6);

  return v7;
}

- (void)setVoiceResolver:(id)a3
{

  v5 = self;
  sub_1A93FD104(a3);
}

- (TTSWrappedAudioQueue)_audioQueue
{
  v3 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__audioQueue;
  swift_beginAccess();
  return *(self + v3);
}

- (void)set_audioQueue:(id)a3
{
  v5 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__audioQueue;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (void)setAudioQueue:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1A93FD908(v4);
}

- (NSArray)offlineChain
{
  sub_1A93FE594();
  sub_1A9387478(0, &qword_1EB386D70, 0x1E6958430);
  v2 = sub_1A957C4B8();

  return v2;
}

- (void)setOfflineChain:(id)a3
{
  sub_1A9387478(0, &qword_1EB386D70, 0x1E6958430);
  v4 = sub_1A957C4C8();
  v5 = *(self + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer____lazy_storage___offlineChain);
  *(self + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer____lazy_storage___offlineChain) = v4;
}

- (NSString)_bundleIdentifier
{
  v2 = (self + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__bundleIdentifier);
  swift_beginAccess();
  if (v2[1])
  {
    v3 = *v2;

    v4 = sub_1A957C0C8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)set_bundleIdentifier:(id)a3
{
  if (a3)
  {
    v4 = sub_1A957C0F8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__bundleIdentifier);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (NSString)bundleIdentifier
{
  KeyPath = swift_getKeyPath();
  v4 = *((*MEMORY[0x1E69E7D40] & *self) + 0x698);
  v5 = self;
  v4(KeyPath);

  v6 = (v5 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__bundleIdentifier);
  swift_beginAccess();
  v8 = *v6;
  v7 = v6[1];

  if (v7)
  {
    v9 = sub_1A957C0C8();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setBundleIdentifier:(id)a3
{
  if (a3)
  {
    v4 = sub_1A957C0F8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_1A93FEB28(v4, v6);
}

- (NSArray)_effects
{
  v3 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__effects;
  swift_beginAccess();
  v4 = *(self + v3);
  sub_1A957BA58();

  v5 = sub_1A957C4B8();

  return v5;
}

- (void)set_effects:(id)a3
{
  v4 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v15 - v7;
  sub_1A957BA58();
  v9 = sub_1A957C4C8();
  v10 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__effects;
  swift_beginAccess();
  v11 = *(self + v10);
  *(self + v10) = v9;
  v12 = self;

  v13 = sub_1A957C688();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v12;
  sub_1A938A404(0, 0, v8, &unk_1A958BE80, v14);
}

- (NSArray)effects
{
  KeyPath = swift_getKeyPath();
  v4 = *((*MEMORY[0x1E69E7D40] & *self) + 0x698);
  v5 = self;
  v4(KeyPath);

  v6 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__effects;
  swift_beginAccess();
  v7 = *(v5 + v6);

  sub_1A957BA58();
  v8 = sub_1A957C4B8();

  return v8;
}

- (void)setEffects:(id)a3
{
  sub_1A957BA58();
  v4 = sub_1A957C4C8();
  v5 = self;
  sub_1A9400320(v4);
}

- (AVAudioSession)_audioSession
{
  v3 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__audioSession;
  swift_beginAccess();
  return *(self + v3);
}

- (void)set_audioSession:(id)a3
{
  v5 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__audioSession;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
  v8 = self;

  v9 = MEMORY[0x1E69E7D40];
  v10 = (*((*MEMORY[0x1E69E7D40] & *v8) + 0x1F8))();
  v11 = (*((*v9 & *v8) + 0x410))();
  [v10 setAudioSession_];
}

- (void)setAudioSession:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1A94010B8(v4);
}

- (NSArray)channels
{
  v2 = *((*MEMORY[0x1E69E7D40] & *self) + 0x1F8);
  v3 = self;
  v4 = v2();
  v5 = [v4 channels];

  if (!v5)
  {
    sub_1A9387478(0, &qword_1EB3870D0, 0x1E6958470);
    sub_1A957C4C8();
    v5 = sub_1A957C4B8();
  }

  return v5;
}

- (void)setChannels:(id)a3
{
  v4 = *((*MEMORY[0x1E69E7D40] & *self) + 0x1F8);
  v5 = a3;
  v7 = self;
  v6 = v4();
  [v6 setChannels_];
}

- (unsigned)audioQueueFlags
{
  v2 = *((*MEMORY[0x1E69E7D40] & *self) + 0x1F8);
  v3 = self;
  v4 = v2();
  v5 = [v4 audioQueueFlags];

  return v5;
}

- (_TtC12TextToSpeech15CoreSynthesizer)init
{
  ObjectType = swift_getObjectType();
  sub_1A9387410();
  sub_1A937829C(&unk_1EB388360, qword_1A958B690);
  sub_1A93B744C(&qword_1ED96FEB8, &unk_1EB388360, qword_1A958B690);
  sub_1A957CE08();
  type metadata accessor for VoiceDatabaseClient();
  v4 = sub_1A938983C();
  v5 = VoiceDatabaseClient.__allocating_init(readOnly:)(v4 & 1);
  v6 = sub_1A94102EC(v5, v10, 1, ObjectType);
  v7 = *((*MEMORY[0x1E69E7D40] & *self) + 0x30);
  v8 = *((*MEMORY[0x1E69E7D40] & *self) + 0x34);
  swift_deallocPartialClassInstance();
  return v6;
}

- (void)voiceWithIdentifier:(NSString *)a3 completionHandler:(id)a4
{
  v7 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = &v19 - v10;
  v12 = _Block_copy(a4);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = v12;
  v13[4] = self;
  v14 = sub_1A957C688();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1A958BE68;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1A958BE70;
  v16[5] = v15;
  v17 = a3;
  v18 = self;
  sub_1A93CC8FC(0, 0, v11, &unk_1A958BE78, v16);
}

- (void)voiceWithLocale:(NSLocale *)a3 completionHandler:(id)a4
{
  v7 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = &v19 - v10;
  v12 = _Block_copy(a4);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = v12;
  v13[4] = self;
  v14 = sub_1A957C688();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1A958BE40;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1A958BE48;
  v16[5] = v15;
  v17 = a3;
  v18 = self;
  sub_1A93CC8FC(0, 0, v11, &unk_1A958BE50, v16);
}

- (void)writeWithSpeechPhrase:(NSString *)a3 toAudioFile:(NSURL *)a4 withAudioSettings:(NSDictionary *)a5 completionHandler:(id)a6
{
  v11 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v15 = &v25 - v14;
  v16 = _Block_copy(a6);
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = a5;
  v17[5] = v16;
  v17[6] = self;
  v18 = sub_1A957C688();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1A958BE20;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_1A958BE28;
  v20[5] = v19;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = self;
  sub_1A93CC8FC(0, 0, v15, &unk_1A958BE30, v20);
}

- (void)stopWithCompletionHandler:(id)a3
{
  v5 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v16 - v8;
  v10 = _Block_copy(a3);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = self;
  v12 = sub_1A957C688();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1A958BDE8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1A958BDF8;
  v14[5] = v13;
  v15 = self;
  sub_1A93CC8FC(0, 0, v9, &unk_1A958BE08, v14);
}

- (BOOL)mixToTelephonyUplink
{
  v2 = *((*MEMORY[0x1E69E7D40] & *self) + 0x418);
  v3 = self;
  LODWORD(v2) = v2();

  return (v2 >> 8) & 1;
}

- (void)setMixToTelephonyUplink:(BOOL)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *self) + 0x418);
  v8 = self;
  v6 = v5();
  if (v3)
  {
    v7 = 256;
  }

  else
  {
    v7 = 0;
  }

  (*((*v4 & *v8) + 0x420))(v6 & 0xFFFFFEFF | v7);
}

- (NSString)_auxSessionCategory
{
  v3 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxSessionCategory;
  swift_beginAccess();
  return *(self + v3);
}

- (void)set_auxSessionCategory:(id)a3
{
  v5 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxSessionCategory;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
  v8 = self;

  sub_1A940B330();
}

- (void)setAuxSessionCategory:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1A9402920(v4);
}

- (unint64_t)_auxSessionCategoryOptions
{
  v3 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxSessionCategoryOptions;
  swift_beginAccess();
  return *(self + v3);
}

- (void)set_auxSessionCategoryOptions:(unint64_t)a3
{
  v5 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxSessionCategoryOptions;
  swift_beginAccess();
  *(self + v5) = a3;
  v6 = self;
  sub_1A940BA24();
}

- (unint64_t)auxSessionCategoryOptions
{
  KeyPath = swift_getKeyPath();
  v4 = *((*MEMORY[0x1E69E7D40] & *self) + 0x698);
  v5 = self;
  v4(KeyPath);

  v6 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxSessionCategoryOptions;
  swift_beginAccess();
  v7 = *(v5 + v6);

  return v7;
}

- (void)setAuxSessionCategoryOptions:(unint64_t)a3
{
  v4 = self;
  sub_1A9402AB0(a3);
}

- (BOOL)_auxSessionParticipatesInNowPlayingAppPolicy
{
  v3 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxSessionParticipatesInNowPlayingAppPolicy;
  swift_beginAccess();
  return *(self + v3);
}

- (void)set_auxSessionParticipatesInNowPlayingAppPolicy:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxSessionParticipatesInNowPlayingAppPolicy;
  swift_beginAccess();
  *(self + v5) = a3;
  v6 = self;
  sub_1A940C0C0();
}

- (void)setAuxSessionParticipatesInNowPlayingAppPolicy:(BOOL)a3
{
  v4 = self;
  sub_1A9402BC8(a3);
}

- (BOOL)_audioSessionAutomaticallyDeactivatesAfterSpeaking
{
  v3 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__audioSessionAutomaticallyDeactivatesAfterSpeaking;
  swift_beginAccess();
  return *(self + v3);
}

- (void)set_audioSessionAutomaticallyDeactivatesAfterSpeaking:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__audioSessionAutomaticallyDeactivatesAfterSpeaking;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (void)setAudioSessionAutomaticallyDeactivatesAfterSpeaking:(BOOL)a3
{
  v4 = self;
  sub_1A9402CE0(a3);
}

- (void)set_auxiliarySession:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxiliarySession);
  *(self + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxiliarySession) = a3;
  v5 = a3;
  v9 = self;

  v6 = MEMORY[0x1E69E7D40];
  v7 = (*((*MEMORY[0x1E69E7D40] & *v9) + 0x1F8))();
  v8 = (*((*v6 & *v9) + 0x410))();
  [v7 setAudioSession_];
}

- (AVAudioSession)auxiliarySession
{
  KeyPath = swift_getKeyPath();
  v4 = *((*MEMORY[0x1E69E7D40] & *self) + 0x698);
  v5 = self;
  v4(KeyPath);

  v6 = *(v5 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxiliarySession);
  v7 = v6;

  return v6;
}

- (void)setAuxiliarySession:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1A9402EF4(a3);
}

- (BOOL)useAuxiliarySession
{
  KeyPath = swift_getKeyPath();
  v4 = *((*MEMORY[0x1E69E7D40] & *self) + 0x698);
  v5 = self;
  v4(KeyPath);

  LOBYTE(self) = *(v5 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___usingAuxiliarySession);

  return self;
}

- (void)setUseAuxiliarySession:(BOOL)a3
{
  v4 = self;
  sub_1A940D13C(a3);
}

- (void)speak:(AVSpeechUtterance *)a3 synth:(AVSpeechSynthesizer *)a4 completionHandler:(id)a5
{
  v9 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v22 - v12;
  v14 = _Block_copy(a5);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = v14;
  v15[5] = self;
  v16 = sub_1A957C688();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1A9595880;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1A9595888;
  v18[5] = v17;
  v19 = a3;
  v20 = a4;
  v21 = self;
  sub_1A93CC8FC(0, 0, v13, &unk_1A9595890, v18);
}

- (void)write:(_TtC12TextToSpeech15CoreSynthesizer *)self toBufferCallback:(SEL)a2 synth:(AVSpeechUtterance *)a3 completionHandler:(id)a4
{
  v6 = v5;
  v7 = v4;
  v11 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v15 = &v25 - v14;
  v16 = _Block_copy(a4);
  v17 = _Block_copy(v6);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = v16;
  v18[4] = v7;
  v18[5] = v17;
  v18[6] = self;
  v19 = sub_1A957C688();
  (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_1A9595860;
  v20[5] = v18;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_1A9595868;
  v21[5] = v20;
  v22 = a3;
  v23 = v7;
  v24 = self;
  sub_1A93CC8FC(0, 0, v15, &unk_1A9595870, v21);
}

- (void)write:(AVSpeechUtterance *)a3 toBufferCallback:(id)a4 toMarkerCallback:synth:completionHandler:
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v13 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v17 = &v28 - v16;
  v18 = _Block_copy(a4);
  v19 = _Block_copy(v9);
  v20 = _Block_copy(v7);
  v21 = swift_allocObject();
  v21[2] = a3;
  v21[3] = v18;
  v21[4] = v19;
  v21[5] = v8;
  v21[6] = v20;
  v21[7] = self;
  v22 = sub_1A957C688();
  (*(*(v22 - 8) + 56))(v17, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_1A9595840;
  v23[5] = v21;
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = &unk_1A9595848;
  v24[5] = v23;
  v25 = a3;
  v26 = v8;
  v27 = self;
  sub_1A93CC8FC(0, 0, v17, &unk_1A9595850, v24);
}

- (void)stopSpeakingAt:(int64_t)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = self;
  sub_1A94CE3F0(a3, v7, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)pauseSpeakingAt:(int64_t)a3 completionHandler:(id)a4
{
  v7 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = &v18 - v10;
  v12 = _Block_copy(a4);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = v12;
  v13[4] = self;
  v14 = sub_1A957C688();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1A95957F8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1A9595808;
  v16[5] = v15;
  v17 = self;
  sub_1A93CC8FC(0, 0, v11, &unk_1A9595818, v16);
}

- (BOOL)continueSpeaking
{
  v3 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v13 - v6;
  v8 = self;
  v9 = [(CoreSynthesizer *)v8 isPaused];
  v10 = sub_1A957C688();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v8;
  sub_1A938A404(0, 0, v7, &unk_1A95957E8, v11);

  return v9;
}

- (void)speakWithRequest:(id)a3 language:(id)a4 synthesizer:(id)a5 completionHandler:(id)a6
{
  v10 = _Block_copy(a6);
  if (a4)
  {
    v11 = sub_1A957C0F8();
    a4 = v12;
  }

  else
  {
    v11 = 0;
  }

  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  v14 = a3;
  v15 = a5;
  v16 = self;
  CoreSynthesizer.speak(request:language:synthesizer:completionHandler:)(v14, v11, a4, v15, sub_1A94D93D0, v13);
}

- (void)setLegacySubstitutions:(id)a3
{
  sub_1A9387478(0, &qword_1EB385F18, off_1E787F2F8);
  v4 = sub_1A957C4C8();
  v6 = self;
  v5 = sub_1A94C6720(v4);

  (*((*MEMORY[0x1E69E7D40] & *v6) + 0x3B0))(v5);
}

@end
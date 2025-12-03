@interface TTSAURenderer
+ (void)formatForVoice:(AVSpeechSynthesisProviderVoice *)voice completionHandler:(id)handler;
@end

@implementation TTSAURenderer

+ (void)formatForVoice:(AVSpeechSynthesisProviderVoice *)voice completionHandler:(id)handler
{
  v7 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = &v18 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = voice;
  v13[3] = v12;
  v13[4] = self;
  v14 = sub_1A957C688();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1A9589908;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1A9589918;
  v16[5] = v15;
  voiceCopy = voice;
  sub_1A93CC8FC(0, 0, v11, &unk_1A9589928, v16);
}

@end
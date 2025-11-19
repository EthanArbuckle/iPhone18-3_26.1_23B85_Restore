@interface VoiceResolver
+ (_TtC12TextToSpeech13VoiceResolver)shared;
+ (void)setShared:(id)a3;
- (void)currentLocaleIdentifiersWithCompletionHandler:(id)a3;
- (void)currentSystemLocaleIdentifierWithCompletionHandler:(id)a3;
- (void)currentSystemLocaleWithCompletionHandler:(id)a3;
- (void)fallbackForVoice:(TTSSpeechVoice *)a3 completionHandler:(id)a4;
- (void)voiceForIdentifier:(NSString *)a3 completionHandler:(id)a4;
- (void)voiceForIdentifier:(id)a3 preferringLanguage:(id)a4 completionHandler:(id)a5;
- (void)voiceForLocale:(NSLocale *)a3 completionHandler:(id)a4;
- (void)voiceForLocaleIdentifier:(id)a3 completionHandler:(id)a4;
@end

@implementation VoiceResolver

+ (_TtC12TextToSpeech13VoiceResolver)shared
{
  if (qword_1EB390CF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return v2;
}

+ (void)setShared:(id)a3
{
  v4 = qword_1EB390CF0;

  if (v4 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EB390CF8 = a3;
}

- (void)currentSystemLocaleWithCompletionHandler:(id)a3
{
  v5 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v15 - v8;
  v10 = _Block_copy(a3);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = self;
  v12 = sub_1A957C688();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1A958C720;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1A958C728;
  v14[5] = v13;

  sub_1A93CC8FC(0, 0, v9, &unk_1A958C730, v14);
}

- (void)currentLocaleIdentifiersWithCompletionHandler:(id)a3
{
  v5 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v16 - v8;
  v10 = _Block_copy(a3);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = *self->executor;
  v13 = sub_1A942C3E8(&qword_1ED96FE68, type metadata accessor for TTSExecutor);
  v14 = sub_1A957C688();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = sub_1A9431A3C;
  v15[3] = v11;
  v15[4] = self;

  sub_1A942E63C(0, 0, v12, v13, v9, &unk_1A958C710, v15);
}

- (void)currentSystemLocaleIdentifierWithCompletionHandler:(id)a3
{
  v5 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v15 - v8;
  v10 = _Block_copy(a3);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = self;
  v12 = sub_1A957C688();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1A958C6F8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1A958C700;
  v14[5] = v13;

  sub_1A93CC8FC(0, 0, v9, &unk_1A958C708, v14);
}

- (void)voiceForIdentifier:(NSString *)a3 completionHandler:(id)a4
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
  v15[4] = &unk_1A958C6D8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1A958C6E0;
  v16[5] = v15;
  v17 = a3;

  sub_1A93CC8FC(0, 0, v11, &unk_1A958C6E8, v16);
}

- (void)voiceForLocale:(NSLocale *)a3 completionHandler:(id)a4
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
  v15[4] = &unk_1A958C6B8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1A958C6C0;
  v16[5] = v15;
  v17 = a3;

  sub_1A93CC8FC(0, 0, v11, &unk_1A958C6C8, v16);
}

- (void)voiceForLocaleIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v20 - v9;
  v11 = _Block_copy(a4);
  v12 = sub_1A957C0F8();
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  v16 = *self->executor;
  v17 = sub_1A942C3E8(&qword_1ED96FE68, type metadata accessor for TTSExecutor);
  v18 = sub_1A957C688();
  (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = sub_1A9431DEC;
  v19[3] = v15;
  v19[4] = self;
  v19[5] = v12;
  v19[6] = v14;

  sub_1A942E63C(0, 0, v16, v17, v10, &unk_1A958C6A8, v19);
}

- (void)voiceForIdentifier:(id)a3 preferringLanguage:(id)a4 completionHandler:(id)a5
{
  v9 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v24 - v12;
  v14 = _Block_copy(a5);
  if (!a3)
  {
    v16 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v18 = 0;
    goto LABEL_6;
  }

  a3 = sub_1A957C0F8();
  v16 = v15;
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  a4 = sub_1A957C0F8();
  v18 = v17;
LABEL_6:
  v19 = swift_allocObject();
  *(v19 + 16) = v14;
  v20 = *self->executor;
  v21 = sub_1A942C3E8(&qword_1ED96FE68, type metadata accessor for TTSExecutor);
  v22 = sub_1A957C688();
  (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = sub_1A9431740;
  v23[3] = v19;
  v23[4] = self;
  v23[5] = a3;
  v23[6] = v16;
  v23[7] = a4;
  v23[8] = v18;

  sub_1A942E63C(0, 0, v20, v21, v13, &unk_1A958C690, v23);
}

- (void)fallbackForVoice:(TTSSpeechVoice *)a3 completionHandler:(id)a4
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
  v15[4] = &unk_1A958C660;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1A958C670;
  v16[5] = v15;
  v17 = a3;

  sub_1A93CC8FC(0, 0, v11, &unk_1A958C680, v16);
}

@end
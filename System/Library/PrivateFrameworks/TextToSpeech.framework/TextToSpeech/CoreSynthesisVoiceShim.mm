@interface CoreSynthesisVoiceShim
+ (_TtC12TextToSpeech22CoreSynthesisVoiceShim)shared;
+ (void)setShared:(id)a3;
- (_TtC12TextToSpeech22CoreSynthesisVoiceShim)init;
- (id)internalVoicesIncludingSiri:(BOOL)a3;
- (id)publicVoices;
- (id)resourceVoicesWithOnlyInstalled:(BOOL)a3;
- (id)resourcesWithLanguageCode:(id)a3;
- (id)voiceWithLanguageCode:(id)a3;
- (void)internalVoiceWithIdentifier:(NSString *)a3 completionHandler:(id)a4;
- (void)internalVoicesIncludingSiri:(BOOL)a3 completionHandler:(id)a4;
- (void)publicVoicesWithCompletionHandler:(id)a3;
- (void)reloadPublicResolver;
- (void)resourceVoiceWithIdentifier:(NSString *)a3 completionHandler:(id)a4;
- (void)resourceVoicesWithOnlyInstalled:(BOOL)a3 completionHandler:(id)a4;
- (void)resourcesWithLanguageCode:(NSString *)a3 completionHandler:(id)a4;
- (void)voiceWithIdentifier:(NSString *)a3 completionHandler:(id)a4;
- (void)voiceWithLanguageCode:(NSString *)a3 completionHandler:(id)a4;
@end

@implementation CoreSynthesisVoiceShim

+ (_TtC12TextToSpeech22CoreSynthesisVoiceShim)shared
{
  if (qword_1EB389558 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return qword_1EB389560;
}

+ (void)setShared:(id)a3
{
  v3 = qword_1EB389558;
  v4 = a3;
  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_1EB389560;
  qword_1EB389560 = v4;
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
  v15[4] = &unk_1A9595700;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1A9595708;
  v16[5] = v15;
  v17 = a3;
  v18 = self;
  sub_1A93CC8FC(0, 0, v11, &unk_1A9595710, v16);
}

- (void)voiceWithLanguageCode:(NSString *)a3 completionHandler:(id)a4
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
  v15[4] = &unk_1A95956D8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1A95956E0;
  v16[5] = v15;
  v17 = a3;
  v18 = self;
  sub_1A93CC8FC(0, 0, v11, &unk_1A95956E8, v16);
}

- (id)voiceWithLanguageCode:(id)a3
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

  v7 = *(&self->super.isa + OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim_executor);
  sub_1A94C46C8();
  v8 = swift_allocObject();
  v8[2] = self;
  v8[3] = v4;
  v8[4] = v6;
  v9 = self;
  sub_1A937829C(&qword_1EB387FD0, &qword_1A9595480);
  sub_1A957B9C8();

  return v11;
}

- (void)publicVoicesWithCompletionHandler:(id)a3
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
  v13[4] = &unk_1A95956B0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1A95956B8;
  v14[5] = v13;
  v15 = self;
  sub_1A93CC8FC(0, 0, v9, &unk_1A95956C0, v14);
}

- (id)publicVoices
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim_executor);
  sub_1A94C46C8();
  *(swift_allocObject() + 16) = self;
  v4 = self;
  sub_1A937829C(&qword_1EB387FD8, &qword_1A95954C0);
  sub_1A957B9C8();

  sub_1A9387478(0, &qword_1EB385ED8, 0x1E69584F8);
  v5 = sub_1A957C4B8();

  return v5;
}

- (void)internalVoicesIncludingSiri:(BOOL)a3 completionHandler:(id)a4
{
  v7 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = &v18 - v10;
  v12 = _Block_copy(a4);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = v12;
  *(v13 + 32) = self;
  v14 = sub_1A957C688();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1A9595688;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1A9595690;
  v16[5] = v15;
  v17 = self;
  sub_1A93CC8FC(0, 0, v11, &unk_1A9595698, v16);
}

- (id)internalVoicesIncludingSiri:(BOOL)a3
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim_executor);
  sub_1A94C46C8();
  v6 = swift_allocObject();
  *(v6 + 16) = self;
  *(v6 + 24) = a3;
  v7 = self;
  sub_1A937829C(&qword_1EB387FD8, &qword_1A95954C0);
  sub_1A957B9C8();

  sub_1A9387478(0, &qword_1EB385ED8, 0x1E69584F8);
  v8 = sub_1A957C4B8();

  return v8;
}

- (void)internalVoiceWithIdentifier:(NSString *)a3 completionHandler:(id)a4
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
  v15[4] = &unk_1A9595660;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1A9595668;
  v16[5] = v15;
  v17 = a3;
  v18 = self;
  sub_1A93CC8FC(0, 0, v11, &unk_1A9595670, v16);
}

- (void)resourceVoiceWithIdentifier:(NSString *)a3 completionHandler:(id)a4
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
  v15[4] = &unk_1A9595638;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1A9595640;
  v16[5] = v15;
  v17 = a3;
  v18 = self;
  sub_1A93CC8FC(0, 0, v11, &unk_1A9595648, v16);
}

- (void)resourceVoicesWithOnlyInstalled:(BOOL)a3 completionHandler:(id)a4
{
  v7 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = &v18 - v10;
  v12 = _Block_copy(a4);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = v12;
  *(v13 + 32) = self;
  v14 = sub_1A957C688();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1A9595610;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1A9595618;
  v16[5] = v15;
  v17 = self;
  sub_1A93CC8FC(0, 0, v11, &unk_1A9595620, v16);
}

- (id)resourceVoicesWithOnlyInstalled:(BOOL)a3
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim_executor);
  sub_1A94C46C8();
  v6 = swift_allocObject();
  *(v6 + 16) = self;
  *(v6 + 24) = a3;
  v7 = self;
  sub_1A937829C(&qword_1EB387FE8, &qword_1A9595530);
  sub_1A957B9C8();

  sub_1A9387478(0, &qword_1EB385F28, off_1E787F2E0);
  v8 = sub_1A957C4B8();

  return v8;
}

- (void)resourcesWithLanguageCode:(NSString *)a3 completionHandler:(id)a4
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
  v15[4] = &unk_1A95955D0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1A95955E0;
  v16[5] = v15;
  v17 = a3;
  v18 = self;
  sub_1A93CC8FC(0, 0, v11, &unk_1A95955F0, v16);
}

- (id)resourcesWithLanguageCode:(id)a3
{
  v4 = sub_1A957C0F8();
  v6 = v5;
  v7 = *(&self->super.isa + OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim_executor);
  sub_1A94C46C8();
  v8 = swift_allocObject();
  v8[2] = self;
  v8[3] = v4;
  v8[4] = v6;
  v9 = self;
  sub_1A937829C(&qword_1EB387FE8, &qword_1A9595530);
  sub_1A957B9C8();

  sub_1A9387478(0, &qword_1EB385F28, off_1E787F2E0);
  v10 = sub_1A957C4B8();

  return v10;
}

- (void)reloadPublicResolver
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0xD8);
  v5 = self;
  v4 = v3();
  (*((*v2 & v5->super.isa) + 0xC8))(v4);
}

- (_TtC12TextToSpeech22CoreSynthesisVoiceShim)init
{
  v3 = OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim_executor;
  v4 = sub_1A957B978();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *(&self->super.isa + v3) = sub_1A957B968();
  *(&self->super.isa + OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim____lazy_storage___voiceSource) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim____lazy_storage___resourceResolver) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim____lazy_storage___internalResolver) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim____lazy_storage___publicResolver) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CoreSynthesisVoiceShim();
  return [(CoreSynthesisVoiceShim *)&v8 init];
}

@end
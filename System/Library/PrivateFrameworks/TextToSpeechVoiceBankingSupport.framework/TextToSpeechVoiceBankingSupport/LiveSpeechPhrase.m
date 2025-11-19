@interface LiveSpeechPhrase
+ (id)makeEmptyPhrase;
+ (id)observeChanges:(id)a3;
+ (int64_t)maxPreferredPhraseCount;
+ (void)setMaxPreferredPhraseCount:(int64_t)a3;
- (LiveSpeechPhrase)init;
- (NSDate)creationDate;
- (void)setCreationDate:(id)a3;
@end

@implementation LiveSpeechPhrase

- (LiveSpeechPhrase)init
{
  v3 = (self + OBJC_IVAR___LiveSpeechPhrase_categoryID);
  *v3 = 0;
  v3[1] = 0;
  v4 = (self + OBJC_IVAR___LiveSpeechPhrase_inputID);
  *v4 = 0;
  v4[1] = 0;
  v5 = (self + OBJC_IVAR___LiveSpeechPhrase_anyCreationDate);
  *v5 = 0u;
  v5[1] = 0u;
  v6 = (self + OBJC_IVAR___LiveSpeechPhrase_text);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  swift_beginAccess();
  *v4 = 0;
  v4[1] = 0;
  swift_beginAccess();
  *v3 = 0;
  v3[1] = 0;
  v8.receiver = self;
  v8.super_class = LiveSpeechPhrase;
  return [(LiveSpeechPhrase *)&v8 init];
}

- (NSDate)creationDate
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = self;
  sub_2331EF0B8(v6);

  v8 = sub_23328CE1C();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_23328CD9C();
    (*(v9 + 8))(v6, v8);
    v11 = v12;
  }

  return v11;
}

- (void)setCreationDate:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;
  if (a3)
  {
    sub_23328CDDC();
    v9 = sub_23328CE1C();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = sub_23328CE1C();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  v11 = self;
  sub_2331EF2F4(v8);
}

+ (id)makeEmptyPhrase
{
  v2 = sub_2331F4B14();

  return v2;
}

+ (id)observeChanges:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  if (qword_27DDF8160 != -1)
  {
    swift_once();
  }

  v5 = qword_27DDF8168;
  swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2331F81DC;
  *(v6 + 24) = v4;
  v7 = v5;

  v8 = sub_23328CACC();

  return v8;
}

+ (int64_t)maxPreferredPhraseCount
{
  if (qword_27DDF8160 != -1)
  {
    swift_once();
  }

  v2 = qword_27DDF8168;
  v3 = sub_23328D95C();
  v4 = [v2 integerForKey_];

  return v4;
}

+ (void)setMaxPreferredPhraseCount:(int64_t)a3
{
  if (qword_27DDF8160 != -1)
  {
    swift_once();
  }

  v3 = qword_27DDF8168;
  v4 = sub_23328DD5C();
  v5 = sub_23328D95C();
  [v3 setValue:v4 forKey:v5];
}

@end
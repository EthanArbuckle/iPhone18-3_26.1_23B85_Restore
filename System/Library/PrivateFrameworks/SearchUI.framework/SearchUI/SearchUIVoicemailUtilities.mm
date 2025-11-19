@interface SearchUIVoicemailUtilities
+ (void)pauseVoicemail;
+ (void)playVoicemailWithIdentifier:(NSString *)a3 completionHandler:(id)a4;
+ (void)resumeVoicemail;
- (_TtC8SearchUI26SearchUIVoicemailUtilities)init;
@end

@implementation SearchUIVoicemailUtilities

+ (void)playVoicemailWithIdentifier:(NSString *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA33B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = a1;
  v12 = sub_1DA25F3C4();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1DA275F28;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1DA275AD0;
  v14[5] = v13;
  v15 = a3;
  sub_1DA2599D4(0, 0, v9, &unk_1DA275860, v14);
}

+ (void)resumeVoicemail
{
  if (qword_1ECBA5740)
  {
    [qword_1ECBA5740 play];
  }
}

+ (void)pauseVoicemail
{
  if (qword_1ECBA5740)
  {
    [qword_1ECBA5740 pause];
  }
}

- (_TtC8SearchUI26SearchUIVoicemailUtilities)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SearchUIVoicemailUtilities();
  return [(SearchUIVoicemailUtilities *)&v3 init];
}

@end
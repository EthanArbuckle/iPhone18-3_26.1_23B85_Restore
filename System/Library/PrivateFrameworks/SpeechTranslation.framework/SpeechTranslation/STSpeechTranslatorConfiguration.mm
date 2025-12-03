@interface STSpeechTranslatorConfiguration
- (BOOL)omitTranslatedAudio;
- (NSURL)offlineMTModel;
- (STSpeechTranslatorConfiguration)init;
- (STSpeechTranslatorConfiguration)initWithSourceLocale:(id)locale targetLocale:(id)targetLocale;
- (STSpeechTranslatorConfiguration)initWithSourceLocale:(id)locale targetLocale:(id)targetLocale offlineMTModel:(id)model taskHint:(int64_t)hint;
- (int64_t)taskHint;
- (void)encodeWithCoder:(id)coder;
- (void)setOmitTranslatedAudio:(BOOL)audio;
- (void)setTaskHint:(int64_t)hint;
@end

@implementation STSpeechTranslatorConfiguration

- (BOOL)omitTranslatedAudio
{
  v3 = OBJC_IVAR___STSpeechTranslatorConfiguration_omitTranslatedAudio;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setOmitTranslatedAudio:(BOOL)audio
{
  v5 = OBJC_IVAR___STSpeechTranslatorConfiguration_omitTranslatedAudio;
  swift_beginAccess();
  *(&self->super.isa + v5) = audio;
}

- (NSURL)offlineMTModel
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280408120, &unk_26B5E3C60);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  selfCopy = self;
  _offlineMTModel = [(STSpeechTranslatorConfiguration *)selfCopy _offlineMTModel];
  if (_offlineMTModel)
  {
    v12 = _offlineMTModel;
    sub_26B5E153C();

    v13 = sub_26B5E154C();
    (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  }

  else
  {

    v13 = sub_26B5E154C();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  }

  sub_26B5DEF90(v7, v9);
  sub_26B5E154C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v9, 1, v13);
  v16 = 0;
  if (v15 != 1)
  {
    v17 = sub_26B5E152C();
    (*(v14 + 8))(v9, v13);
    v16 = v17;
  }

  return v16;
}

- (int64_t)taskHint
{
  v3 = OBJC_IVAR___STSpeechTranslatorConfiguration_taskHint;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setTaskHint:(int64_t)hint
{
  v5 = OBJC_IVAR___STSpeechTranslatorConfiguration_taskHint;
  swift_beginAccess();
  *(&self->super.isa + v5) = hint;
}

- (STSpeechTranslatorConfiguration)initWithSourceLocale:(id)locale targetLocale:(id)targetLocale
{
  v5 = sub_26B5E161C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - v11;
  sub_26B5E160C();
  sub_26B5E160C();
  v13 = sub_26B5E15FC();
  v14 = sub_26B5E15FC();
  v15 = [(STSpeechTranslatorConfiguration *)self initWithSourceLocale:v13 targetLocale:v14 offlineMTModel:0 taskHint:9];

  v16 = *(v6 + 8);
  v16(v10, v5);
  v16(v12, v5);
  return v15;
}

- (STSpeechTranslatorConfiguration)initWithSourceLocale:(id)locale targetLocale:(id)targetLocale offlineMTModel:(id)model taskHint:(int64_t)hint
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280408120, &unk_26B5E3C60);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v22 - v10;
  v12 = sub_26B5E161C();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v22 - v17;
  sub_26B5E160C();
  sub_26B5E160C();
  if (model)
  {
    sub_26B5E153C();
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = sub_26B5E154C();
  (*(*(v20 - 8) + 56))(v11, v19, 1, v20);
  return STSpeechTranslatorConfiguration.init(source:target:offlineMTModel:taskHint:)(v18, v16, v11, hint);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  STSpeechTranslatorConfiguration.encode(with:)(coderCopy);
}

- (STSpeechTranslatorConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
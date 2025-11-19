@interface STSpeechTranslator
+ (void)preferredInputAudioFormatForLocale:(id)a3 completion:(id)a4;
- (AVAudioFormat)currentOutputFormat;
- (AVAudioFormat)preferredOutputAudioFormat;
- (STSpeechTranslator)init;
- (STSpeechTranslator)initWithConfiguration:(id)a3 delegate:(id)a4;
- (STSpeechTranslator)initWithSourceLocale:(id)a3 targetLocale:(id)a4 delegate:(id)a5;
- (STSpeechTranslatorDelegate)delegate;
- (void)addAudio:(id)a3;
- (void)finishAudio;
- (void)setConfiguration:(id)a3;
- (void)setPreferredOutputAudioFormat:(id)a3;
- (void)translator:(id)a3 didEncounterError:(id)a4;
- (void)translator:(id)a3 didProduceSpeakableOutput:(id)a4;
- (void)translator:(id)a3 didProduceTranslatedOutputs:(id)a4;
- (void)translatorDidFinish:(id)a3;
@end

@implementation STSpeechTranslator

- (void)setConfiguration:(id)a3
{
  v4 = *(self + OBJC_IVAR___STSpeechTranslator_configuration);
  *(self + OBJC_IVAR___STSpeechTranslator_configuration) = a3;
  v3 = a3;
}

- (STSpeechTranslatorDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

+ (void)preferredInputAudioFormatForLocale:(id)a3 completion:(id)a4
{
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407E80, &qword_26B5E3C70) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v7 = &v22 - v6;
  v8 = sub_26B5E161C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = (MEMORY[0x28223BE20])();
  v12 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - v13;
  v15 = _Block_copy(a4);
  sub_26B5E160C();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = sub_26B5E1A9C();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  (*(v9 + 16))(v12, v14, v8);
  v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v19 = (v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  (*(v9 + 32))(v20 + v18, v12, v8);
  v21 = (v20 + v19);
  *v21 = sub_26B5DD2BC;
  v21[1] = v16;

  sub_26B5D37D0(0, 0, v7, &unk_26B5E3D50, v20);

  (*(v9 + 8))(v14, v8);
}

- (AVAudioFormat)preferredOutputAudioFormat
{
  v3 = OBJC_IVAR___STSpeechTranslator_preferredOutputAudioFormat;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPreferredOutputAudioFormat:(id)a3
{
  v5 = OBJC_IVAR___STSpeechTranslator_preferredOutputAudioFormat;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (STSpeechTranslator)initWithConfiguration:(id)a3 delegate:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  return STSpeechTranslator.init(configuration:delegate:)(v5, a4);
}

- (STSpeechTranslator)initWithSourceLocale:(id)a3 targetLocale:(id)a4 delegate:(id)a5
{
  v6 = sub_26B5E161C();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  sub_26B5E160C();
  sub_26B5E160C();
  swift_unknownObjectRetain();
  v13 = sub_26B5DC508(v12, v10, a5);
  swift_unknownObjectRelease();
  return v13;
}

- (void)addAudio:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_26B5D5740(v4);
}

- (void)finishAudio
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407E80, &qword_26B5E3C70);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  v7 = sub_26B5E1A9C();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = self;
  v9 = self;
  sub_26B5D37D0(0, 0, v6, &unk_26B5E3D18, v8);
}

- (AVAudioFormat)currentOutputFormat
{
  v2 = self;
  v3 = sub_26B5D5F5C();

  return v3;
}

- (STSpeechTranslator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)translator:(id)a3 didProduceTranslatedOutputs:(id)a4
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407E80, &qword_26B5E3C70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13 - v7;
  sub_26B5DD43C(0, &qword_280408038, 0x277CE1BC8);
  v9 = sub_26B5E1A2C();
  v10 = sub_26B5E1A9C();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v9;
  v11[5] = self;
  v12 = self;
  sub_26B5D37D0(0, 0, v8, &unk_26B5E3D08, v11);
}

- (void)translator:(id)a3 didProduceSpeakableOutput:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_26B5DC7B0(v7);
}

- (void)translator:(id)a3 didEncounterError:(id)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407E80, &qword_26B5E3C70);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  v10 = sub_26B5E1A9C();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a4;
  v11[5] = self;
  v12 = a4;
  v13 = self;
  sub_26B5D37D0(0, 0, v9, &unk_26B5E3D00, v11);
}

- (void)translatorDidFinish:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407E80, &qword_26B5E3C70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  v8 = sub_26B5E1A9C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = self;
  v10 = self;
  sub_26B5D37D0(0, 0, v7, &unk_26B5E3CF8, v9);
}

@end
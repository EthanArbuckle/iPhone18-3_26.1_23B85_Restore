@interface SCROBrailleUILiveSpeechManager
- (SCROBrailleUILiveSpeechManager)init;
- (SCROBrailleUILiveSpeechManager)initWithClient:(id)a3;
- (void)speak:(NSString *)a3 completionHandler:(id)a4;
@end

@implementation SCROBrailleUILiveSpeechManager

- (SCROBrailleUILiveSpeechManager)initWithClient:(id)a3
{
  *(&self->super.isa + OBJC_IVAR___SCROBrailleUILiveSpeechManager____lazy_storage___synth) = 0;
  *(&self->super.isa + OBJC_IVAR___SCROBrailleUILiveSpeechManager_client) = a3;
  v4.receiver = self;
  v4.super_class = SCROBrailleUILiveSpeechManager;
  swift_unknownObjectRetain();
  return [(SCROBrailleUILiveSpeechManager *)&v4 init];
}

- (void)speak:(NSString *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86DD0, &qword_26498CEE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9, v10);
  v12 = &v20 - v11;
  v13 = _Block_copy(a4);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = v13;
  v14[4] = self;
  v15 = sub_2649828E4();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_26498D270;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_26498D278;
  v17[5] = v16;
  v18 = a3;
  v19 = self;
  sub_264978F68(0, 0, v12, &unk_26498D280, v17);
}

- (SCROBrailleUILiveSpeechManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
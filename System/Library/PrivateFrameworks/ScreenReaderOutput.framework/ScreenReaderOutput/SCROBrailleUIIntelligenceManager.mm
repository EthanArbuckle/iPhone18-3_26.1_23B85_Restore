@interface SCROBrailleUIIntelligenceManager
- (SCROBrailleUIIntelligenceManager)init;
- (void)summarize:(NSString *)summarize completionHandler:(id)handler;
@end

@implementation SCROBrailleUIIntelligenceManager

- (void)summarize:(NSString *)summarize completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86DD0, &qword_26498CEE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9, v10);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = summarize;
  v14[3] = v13;
  v14[4] = self;
  v15 = sub_2649828E4();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_26498CF60;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_26498CF68;
  v17[5] = v16;
  summarizeCopy = summarize;
  selfCopy = self;
  sub_264978F68(0, 0, v12, &unk_26498CF70, v17);
}

- (SCROBrailleUIIntelligenceManager)init
{
  *(&self->super.isa + OBJC_IVAR___SCROBrailleUIIntelligenceManager____lazy_storage___lazyLLMManager) = 0;
  v3.receiver = self;
  v3.super_class = SCROBrailleUIIntelligenceManager;
  return [(SCROBrailleUIIntelligenceManager *)&v3 init];
}

@end
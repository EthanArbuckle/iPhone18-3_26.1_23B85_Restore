@interface VoiceRefreshViewModel
- (void)timerFired;
@end

@implementation VoiceRefreshViewModel

- (void)timerFired
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v12 - v6;
  v8 = sub_26EF3B30C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_26EF3B2DC();
  swift_retain_n();
  v9 = sub_26EF3B2CC();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = self;
  sub_26EE2C388(0, 0, v7, &unk_26EF41578, v10);
}

@end
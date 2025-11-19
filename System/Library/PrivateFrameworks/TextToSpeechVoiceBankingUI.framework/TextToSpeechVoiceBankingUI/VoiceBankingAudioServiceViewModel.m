@interface VoiceBankingAudioServiceViewModel
- (void)applicationDidResign;
- (void)audioPlayerDidFinishPlaying:(id)a3 successfully:(BOOL)a4;
- (void)speechSynthesizer:(id)a3 didFinishSpeechUtterance:(id)a4;
@end

@implementation VoiceBankingAudioServiceViewModel

- (void)audioPlayerDidFinishPlaying:(id)a3 successfully:(BOOL)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v16 - v9;
  v11 = sub_26EF3B30C();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_26EF3B2DC();
  v12 = self;
  v13 = sub_26EF3B2CC();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  *(v14 + 16) = v13;
  *(v14 + 24) = v15;
  *(v14 + 32) = a4;
  *(v14 + 40) = v12;
  sub_26EE2C388(0, 0, v10, &unk_26EF44460, v14);
}

- (void)applicationDidResign
{
  v2 = self;
  sub_26EF1E0A0();
}

- (void)speechSynthesizer:(id)a3 didFinishSpeechUtterance:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_26EF214E0();
}

@end
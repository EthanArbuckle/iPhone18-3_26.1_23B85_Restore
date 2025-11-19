@interface VoiceManagementViewBridge
+ (id)makeVoiceManagementViewControllerWithVoiceID:(id)a3 voiceName:(id)a4 dismissCallback:(id)a5;
- (VoiceManagementViewBridge)init;
@end

@implementation VoiceManagementViewBridge

+ (id)makeVoiceManagementViewControllerWithVoiceID:(id)a3 voiceName:(id)a4 dismissCallback:(id)a5
{
  v7 = type metadata accessor for VoiceManagementView();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26EF37EDC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v28 - v20;
  v22 = _Block_copy(a5);
  sub_26EF37EBC();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  (*(v13 + 16))(v18, v21, v12);
  v24 = a4;

  VoiceManagementView.init(voiceID:dismissCallback:)(v18, sub_26EEB15E8, v23, v11);
  v25 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8B98, &unk_26EF417E0));
  v26 = sub_26EF39F8C();
  [v26 setTitle_];

  (*(v13 + 8))(v21, v12);

  return v26;
}

- (VoiceManagementViewBridge)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for VoiceManagementViewBridge();
  return [(VoiceManagementViewBridge *)&v3 init];
}

@end
@interface MockScreenTimeAgentClient
- (void)deleteUserSettingsFor:(_TtC14ScreenTimeCore6UserID *)for completionHandler:(id)handler;
- (void)insertWithUserSettings:(_TtC14ScreenTimeCore12UserSettings *)settings for:(_TtC14ScreenTimeCore6UserID *)for completionHandler:(id)handler;
- (void)updateWithUserSettings:(_TtC14ScreenTimeCore12UserSettings *)settings for:(_TtC14ScreenTimeCore6UserID *)for completionHandler:(id)handler;
- (void)userIdentifiersWithCompletionHandler:(id)handler;
- (void)userSettingsFor:(_TtC14ScreenTimeCore6UserID *)for completionHandler:(id)handler;
@end

@implementation MockScreenTimeAgentClient

- (void)insertWithUserSettings:(_TtC14ScreenTimeCore12UserSettings *)settings for:(_TtC14ScreenTimeCore6UserID *)for completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1E60, &qword_264E26A80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = settings;
  v14[3] = for;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_264E25248();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_264E26B60;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_264E26B68;
  v17[5] = v16;
  settingsCopy = settings;
  forCopy = for;

  sub_264D9A9F0(0, 0, v12, &unk_264E26B70, v17);
}

- (void)updateWithUserSettings:(_TtC14ScreenTimeCore12UserSettings *)settings for:(_TtC14ScreenTimeCore6UserID *)for completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1E60, &qword_264E26A80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = settings;
  v14[3] = for;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_264E25248();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_264E26B40;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_264E26B48;
  v17[5] = v16;
  settingsCopy = settings;
  forCopy = for;

  sub_264D9A9F0(0, 0, v12, &unk_264E26B50, v17);
}

- (void)deleteUserSettingsFor:(_TtC14ScreenTimeCore6UserID *)for completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1E60, &qword_264E26A80);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = for;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_264E25248();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_264E26B20;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_264E26B28;
  v15[5] = v14;
  forCopy = for;

  sub_264D9A9F0(0, 0, v10, &unk_264E26B30, v15);
}

- (void)userIdentifiersWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1E60, &qword_264E26A80);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_264E25248();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_264E26B00;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_264E26B08;
  v13[5] = v12;

  sub_264D9A9F0(0, 0, v8, &unk_264E26B10, v13);
}

- (void)userSettingsFor:(_TtC14ScreenTimeCore6UserID *)for completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1E60, &qword_264E26A80);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = for;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_264E25248();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_264E26A90;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_264E26AA0;
  v15[5] = v14;
  forCopy = for;

  sub_264D9A9F0(0, 0, v10, &unk_264E26AB0, v15);
}

@end
@interface SMTapToRadarManagerInternal
+ (void)fileRadarWithError:(NSError *)error conversationIdentifier:(NSString *)identifier completionHandler:(id)handler;
+ (void)fileRadarWithTitle:(NSString *)title description:(NSString *)description conversationIdentifier:(NSString *)identifier completionHandler:(id)handler;
- (_TtC13SafetyMonitor27SMTapToRadarManagerInternal)init;
@end

@implementation SMTapToRadarManagerInternal

+ (void)fileRadarWithError:(NSError *)error conversationIdentifier:(NSString *)identifier completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72828, &qword_2645D9630);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = error;
  v14[3] = identifier;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_2645D3ACC();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_2645DA628;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_2645DA630;
  v17[5] = v16;
  errorCopy = error;
  identifierCopy = identifier;
  sub_26457A174(0, 0, v12, &unk_2645DA638, v17);
}

+ (void)fileRadarWithTitle:(NSString *)title description:(NSString *)description conversationIdentifier:(NSString *)identifier completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72828, &qword_2645D9630);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  v16[2] = title;
  v16[3] = description;
  v16[4] = identifier;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_2645D3ACC();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_2645DA5E0;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_2645DA5F0;
  v19[5] = v18;
  titleCopy = title;
  descriptionCopy = description;
  identifierCopy = identifier;
  sub_26457A174(0, 0, v14, &unk_2645DA600, v19);
}

- (_TtC13SafetyMonitor27SMTapToRadarManagerInternal)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
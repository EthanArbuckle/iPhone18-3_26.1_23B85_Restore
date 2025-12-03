@interface SelectedValueProvider
- (_TtC20ScreenTimeSettingsUIP33_1F8FFC74632442D0312FE90BEC37062821SelectedValueProvider)init;
- (void)loadValuesByRestrictionWithCompletionHandler:(id)handler;
@end

@implementation SelectedValueProvider

- (void)loadValuesByRestrictionWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFAA380);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_264CC477C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_264CD5198;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_264CD4550;
  v12[5] = v11;
  selfCopy = self;
  sub_264CB853C(0, 0, v7, &unk_264CD4558, v12);
}

- (_TtC20ScreenTimeSettingsUIP33_1F8FFC74632442D0312FE90BEC37062821SelectedValueProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
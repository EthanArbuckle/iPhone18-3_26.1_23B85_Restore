@interface SettingsPresetViewModel
- (_TtC20ScreenTimeSettingsUI23SettingsPresetViewModel)init;
- (_TtC20ScreenTimeSettingsUI23SettingsPresetViewModel)initWithDsid:(id)a3 childAge:(id)a4 isInitialSetup:(BOOL)a5 restrictionsToPresetMappingViewModel:(id)a6 restrictionsDefaultValueProvider:(id)a7 agePresetsAnalytics:(id)a8;
- (void)loadWithCompletionHandler:(id)a3;
@end

@implementation SettingsPresetViewModel

- (_TtC20ScreenTimeSettingsUI23SettingsPresetViewModel)initWithDsid:(id)a3 childAge:(id)a4 isInitialSetup:(BOOL)a5 restrictionsToPresetMappingViewModel:(id)a6 restrictionsDefaultValueProvider:(id)a7 agePresetsAnalytics:(id)a8
{
  v11 = a5;
  v13 = a3;
  v14 = a4;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return SettingsPresetViewModel.init(dsid:childAge:isInitialSetup:restrictionsToPresetMappingViewModel:restrictionsDefaultValueProvider:agePresetsAnalytics:)(v13, a4, v11, a6, a7, a8);
}

- (void)loadWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFAA380);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_264CC477C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_264CD4548;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_264CD4550;
  v12[5] = v11;
  v13 = self;
  sub_264CB853C(0, 0, v7, &unk_264CD4558, v12);
}

- (_TtC20ScreenTimeSettingsUI23SettingsPresetViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
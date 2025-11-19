@interface STIntroPresetsViewController
- (_TtC20ScreenTimeSettingsUI28STIntroPresetsViewController)initWithIntroductionModel:(id)a3 settingsPresetViewModel:(id)a4 name:(id)a5 updateExistingSettings:(BOOL)a6 onContinue:(id)a7;
- (_TtC20ScreenTimeSettingsUI28STIntroPresetsViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC20ScreenTimeSettingsUI28STIntroPresetsViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)continue;
- (void)notNow;
- (void)viewDidLoad;
@end

@implementation STIntroPresetsViewController

- (_TtC20ScreenTimeSettingsUI28STIntroPresetsViewController)initWithIntroductionModel:(id)a3 settingsPresetViewModel:(id)a4 name:(id)a5 updateExistingSettings:(BOOL)a6 onContinue:(id)a7
{
  v10 = _Block_copy(a7);
  v11 = sub_264CC45DC();
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  swift_unknownObjectRetain();
  return STIntroPresetsViewController.init(introductionModel:settingsPresetViewModel:name:updateExistingSettings:onContinue:)(a3, a4, v11, v13, a6, sub_264C8A724, v14);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_264C8D0E0();
}

- (void)continue
{
  v2 = self;
  sub_264C8DAD4();
}

- (void)notNow
{
  v2 = self;
  sub_264C8DD00();
}

- (_TtC20ScreenTimeSettingsUI28STIntroPresetsViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC20ScreenTimeSettingsUI28STIntroPresetsViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
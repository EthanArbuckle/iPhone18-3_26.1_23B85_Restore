@interface STIntroPresetsViewController
- (_TtC20ScreenTimeSettingsUI28STIntroPresetsViewController)initWithIntroductionModel:(id)model settingsPresetViewModel:(id)viewModel name:(id)name updateExistingSettings:(BOOL)settings onContinue:(id)continue;
- (_TtC20ScreenTimeSettingsUI28STIntroPresetsViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC20ScreenTimeSettingsUI28STIntroPresetsViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)continue;
- (void)notNow;
- (void)viewDidLoad;
@end

@implementation STIntroPresetsViewController

- (_TtC20ScreenTimeSettingsUI28STIntroPresetsViewController)initWithIntroductionModel:(id)model settingsPresetViewModel:(id)viewModel name:(id)name updateExistingSettings:(BOOL)settings onContinue:(id)continue
{
  v10 = _Block_copy(continue);
  v11 = sub_264CC45DC();
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  swift_unknownObjectRetain();
  return STIntroPresetsViewController.init(introductionModel:settingsPresetViewModel:name:updateExistingSettings:onContinue:)(model, viewModel, v11, v13, settings, sub_264C8A724, v14);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_264C8D0E0();
}

- (void)continue
{
  selfCopy = self;
  sub_264C8DAD4();
}

- (void)notNow
{
  selfCopy = self;
  sub_264C8DD00();
}

- (_TtC20ScreenTimeSettingsUI28STIntroPresetsViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC20ScreenTimeSettingsUI28STIntroPresetsViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
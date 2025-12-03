@interface PASUIWelcomeController
- (_TtC23ProximityAppleIDSetupUI22PASUIWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon;
- (_TtC23ProximityAppleIDSetupUI22PASUIWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC23ProximityAppleIDSetupUI22PASUIWelcomeController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
@end

@implementation PASUIWelcomeController

- (_TtC23ProximityAppleIDSetupUI22PASUIWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon
{
  v7 = sub_26115B6A4();
  v9 = v8;
  if (text)
  {
    text = sub_26115B6A4();
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  iconCopy = icon;
  return sub_261156BBC(v7, v9, text, v11, icon);
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for PASUIWelcomeController();
  v2 = v5.receiver;
  [(OBBaseWelcomeController *)&v5 viewDidLoad];
  v3 = OBJC_IVAR____TtC23ProximityAppleIDSetupUI22PASUIWelcomeController_activityIndicatorView;
  [*&v2[OBJC_IVAR____TtC23ProximityAppleIDSetupUI22PASUIWelcomeController_activityIndicatorView] setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v4) = 1148846080;
  [*&v2[v3] setContentCompressionResistancePriority:1 forAxis:v4];
  sub_261157170();
  sub_261156E04();
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  sub_261156E04();
}

- (_TtC23ProximityAppleIDSetupUI22PASUIWelcomeController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC23ProximityAppleIDSetupUI22PASUIWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface PASUIWelcomeController
- (_TtC23ProximityAppleIDSetupUI22PASUIWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5;
- (_TtC23ProximityAppleIDSetupUI22PASUIWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC23ProximityAppleIDSetupUI22PASUIWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
@end

@implementation PASUIWelcomeController

- (_TtC23ProximityAppleIDSetupUI22PASUIWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5
{
  v7 = sub_26115B6A4();
  v9 = v8;
  if (a4)
  {
    a4 = sub_26115B6A4();
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = a5;
  return sub_261156BBC(v7, v9, a4, v11, a5);
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

- (void)traitCollectionDidChange:(id)a3
{
  v3 = self;
  sub_261156E04();
}

- (_TtC23ProximityAppleIDSetupUI22PASUIWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC23ProximityAppleIDSetupUI22PASUIWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface PASUIWelcomeProtoAccountController
- (_TtC23ProximityAppleIDSetupUI34PASUIWelcomeProtoAccountController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC23ProximityAppleIDSetupUI34PASUIWelcomeProtoAccountController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
@end

@implementation PASUIWelcomeProtoAccountController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for PASUIWelcomeProtoAccountController();
  v2 = v5.receiver;
  [(OBBaseWelcomeController *)&v5 viewDidLoad];
  v3 = OBJC_IVAR____TtC23ProximityAppleIDSetupUI34PASUIWelcomeProtoAccountController_activityIndicatorView;
  [*&v2[OBJC_IVAR____TtC23ProximityAppleIDSetupUI34PASUIWelcomeProtoAccountController_activityIndicatorView] setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v4) = 1148846080;
  [*&v2[v3] setContentCompressionResistancePriority:1 forAxis:v4];
  sub_261151384();
}

- (void)traitCollectionDidChange:(id)a3
{
  v3 = self;
  sub_261151384();
}

- (_TtC23ProximityAppleIDSetupUI34PASUIWelcomeProtoAccountController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC23ProximityAppleIDSetupUI34PASUIWelcomeProtoAccountController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
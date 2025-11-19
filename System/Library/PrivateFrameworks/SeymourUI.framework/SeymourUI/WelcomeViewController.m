@interface WelcomeViewController
- (_TtC9SeymourUI21WelcomeViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC9SeymourUI21WelcomeViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)didTapContinueButton;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation WelcomeViewController

- (void)viewDidLoad
{
  v2 = self;
  WelcomeViewController.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  ObjectType = swift_getObjectType();
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = self;
  sub_20C13B534();
  sub_20C13BB64();
  (*(v7 + 8))(v9, v6);
  v11.receiver = v10;
  v11.super_class = ObjectType;
  [(OBBaseWelcomeController *)&v11 viewDidAppear:v3];
}

- (void)didTapContinueButton
{
  v2 = self;
  sub_20BDD56AC();
}

- (_TtC9SeymourUI21WelcomeViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9SeymourUI21WelcomeViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
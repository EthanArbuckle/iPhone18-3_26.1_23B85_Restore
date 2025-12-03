@interface WelcomeViewController
- (_TtC9SeymourUI21WelcomeViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC9SeymourUI21WelcomeViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)didTapContinueButton;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation WelcomeViewController

- (void)viewDidLoad
{
  selfCopy = self;
  WelcomeViewController.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  ObjectType = swift_getObjectType();
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_20C13B534();
  sub_20C13BB64();
  (*(v7 + 8))(v9, v6);
  v11.receiver = selfCopy;
  v11.super_class = ObjectType;
  [(OBBaseWelcomeController *)&v11 viewDidAppear:appearCopy];
}

- (void)didTapContinueButton
{
  selfCopy = self;
  sub_20BDD56AC();
}

- (_TtC9SeymourUI21WelcomeViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9SeymourUI21WelcomeViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
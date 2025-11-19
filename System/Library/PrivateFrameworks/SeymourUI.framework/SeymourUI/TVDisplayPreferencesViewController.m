@interface TVDisplayPreferencesViewController
- (_TtC9SeymourUI34TVDisplayPreferencesViewController)initWithCoder:(id)a3;
- (_TtC9SeymourUI34TVDisplayPreferencesViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation TVDisplayPreferencesViewController

- (_TtC9SeymourUI34TVDisplayPreferencesViewController)initWithCoder:(id)a3
{
  v4 = MEMORY[0x277D84F90];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI34TVDisplayPreferencesViewController_currentSections) = MEMORY[0x277D84F90];
  v5 = OBJC_IVAR____TtC9SeymourUI34TVDisplayPreferencesViewController_currentActions;
  *(&self->super.super.super.isa + v5) = sub_20B6B325C(v4);
  v6 = (&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI34TVDisplayPreferencesViewController_onSettingsDismissed);
  *v6 = 0;
  v6[1] = 0;
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for TVDisplayPreferencesViewController();
  [(TVDisplayPreferencesViewController *)&v2 viewDidLoad];
}

- (_TtC9SeymourUI34TVDisplayPreferencesViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
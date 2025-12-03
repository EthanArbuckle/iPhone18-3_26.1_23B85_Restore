@interface TVWorkoutPlanHandoffViewController
- (_TtC9SeymourUI34TVWorkoutPlanHandoffViewController)initWithCoder:(id)coder;
- (_TtC9SeymourUI34TVWorkoutPlanHandoffViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation TVWorkoutPlanHandoffViewController

- (_TtC9SeymourUI34TVWorkoutPlanHandoffViewController)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanHandoffViewController_handoffView;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(type metadata accessor for TVWorkoutPlanHandoffView()) init];
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_20C0D9A1C();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_20C0D9DA4(appear);
}

- (_TtC9SeymourUI34TVWorkoutPlanHandoffViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
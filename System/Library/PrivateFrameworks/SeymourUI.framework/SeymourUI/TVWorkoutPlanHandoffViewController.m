@interface TVWorkoutPlanHandoffViewController
- (_TtC9SeymourUI34TVWorkoutPlanHandoffViewController)initWithCoder:(id)a3;
- (_TtC9SeymourUI34TVWorkoutPlanHandoffViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation TVWorkoutPlanHandoffViewController

- (_TtC9SeymourUI34TVWorkoutPlanHandoffViewController)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanHandoffViewController_handoffView;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(type metadata accessor for TVWorkoutPlanHandoffView()) init];
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_20C0D9A1C();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_20C0D9DA4(a3);
}

- (_TtC9SeymourUI34TVWorkoutPlanHandoffViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
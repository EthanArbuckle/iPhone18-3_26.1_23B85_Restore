@interface WorkoutHostingRemoteViewController
- (_TtC12WorkoutKitUI34WorkoutHostingRemoteViewController)initWithCoder:(id)a3;
- (_TtC12WorkoutKitUI34WorkoutHostingRemoteViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation WorkoutHostingRemoteViewController

- (_TtC12WorkoutKitUI34WorkoutHostingRemoteViewController)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC12WorkoutKitUI34WorkoutHostingRemoteViewController_dismissCompletion);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12WorkoutKitUI34WorkoutHostingRemoteViewController_presentedRemoteViewController) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  WorkoutHostingRemoteViewController.viewDidLoad()();
}

- (_TtC12WorkoutKitUI34WorkoutHostingRemoteViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
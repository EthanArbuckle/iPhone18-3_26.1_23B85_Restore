@interface WorkoutHostingRemoteViewController
- (_TtC12WorkoutKitUI34WorkoutHostingRemoteViewController)initWithCoder:(id)coder;
- (_TtC12WorkoutKitUI34WorkoutHostingRemoteViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation WorkoutHostingRemoteViewController

- (_TtC12WorkoutKitUI34WorkoutHostingRemoteViewController)initWithCoder:(id)coder
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
  selfCopy = self;
  WorkoutHostingRemoteViewController.viewDidLoad()();
}

- (_TtC12WorkoutKitUI34WorkoutHostingRemoteViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
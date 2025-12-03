@interface MirroredStartViewController
- (_TtC9WorkoutUI27MirroredStartViewController)initWithCoder:(id)coder;
- (_TtC9WorkoutUI27MirroredStartViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation MirroredStartViewController

- (_TtC9WorkoutUI27MirroredStartViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9WorkoutUI27MirroredStartViewController_workoutStateCancellable) = 0;
  v3 = (self + OBJC_IVAR____TtC9WorkoutUI27MirroredStartViewController_idleTimerToken);
  *v3 = 0u;
  v3[1] = 0u;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9WorkoutUI27MirroredStartViewController_mirroredStartTimeoutInterval) = 0x403E000000000000;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9WorkoutUI27MirroredStartViewController_mirroredStartTimeoutTimer) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  MirroredStartViewController.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  MirroredStartViewController.viewDidAppear(_:)(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  MirroredStartViewController.viewDidDisappear(_:)(disappear);
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = _sIeyB_Ieg_TRTA_2;
  }

  else
  {
    v7 = 0;
  }

  selfCopy = self;
  MirroredStartViewController.dismiss(animated:completion:)(animated, v6, v7);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v6);
}

- (_TtC9WorkoutUI27MirroredStartViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface MirroredStartViewController
- (_TtC9WorkoutUI27MirroredStartViewController)initWithCoder:(id)a3;
- (_TtC9WorkoutUI27MirroredStartViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation MirroredStartViewController

- (_TtC9WorkoutUI27MirroredStartViewController)initWithCoder:(id)a3
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
  v2 = self;
  MirroredStartViewController.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  MirroredStartViewController.viewDidAppear(_:)(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  MirroredStartViewController.viewDidDisappear(_:)(a3);
}

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
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

  v8 = self;
  MirroredStartViewController.dismiss(animated:completion:)(a3, v6, v7);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v6);
}

- (_TtC9WorkoutUI27MirroredStartViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface WorkoutSessionViewController
- (_TtC9WorkoutUI28WorkoutSessionViewController)initWithCoder:(id)a3;
- (_TtC9WorkoutUI28WorkoutSessionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation WorkoutSessionViewController

- (_TtC9WorkoutUI28WorkoutSessionViewController)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC9WorkoutUI28WorkoutSessionViewController_summaryViewControllerCompletion);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9WorkoutUI28WorkoutSessionViewController_connectedDevicesHeartRateCancellable) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9WorkoutUI28WorkoutSessionViewController_connectedDevicesPedometerCancellable) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9WorkoutUI28WorkoutSessionViewController_workoutAlertPresenter) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  WorkoutSessionViewController.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  WorkoutSessionViewController.viewDidAppear(_:)(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v4 = self;

  ScreenAssertionManager.releaseAssertion()();

  v5.receiver = v4;
  v5.super_class = type metadata accessor for WorkoutSessionViewController();
  [(WorkoutSessionViewController *)&v5 viewDidDisappear:v3];
}

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = partial apply for thunk for @escaping @callee_unowned @convention(block) () -> ();
  }

  else
  {
    v7 = 0;
  }

  v8 = self;
  WorkoutSessionViewController.dismiss(animated:completion:)(a3, v6, v7);
  sub_20C6861E4(v6);
}

- (_TtC9WorkoutUI28WorkoutSessionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
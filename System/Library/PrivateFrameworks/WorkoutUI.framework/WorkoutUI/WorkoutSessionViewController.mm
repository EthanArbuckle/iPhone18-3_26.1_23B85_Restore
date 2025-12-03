@interface WorkoutSessionViewController
- (_TtC9WorkoutUI28WorkoutSessionViewController)initWithCoder:(id)coder;
- (_TtC9WorkoutUI28WorkoutSessionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation WorkoutSessionViewController

- (_TtC9WorkoutUI28WorkoutSessionViewController)initWithCoder:(id)coder
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
  selfCopy = self;
  WorkoutSessionViewController.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  WorkoutSessionViewController.viewDidAppear(_:)(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  selfCopy = self;

  ScreenAssertionManager.releaseAssertion()();

  v5.receiver = selfCopy;
  v5.super_class = type metadata accessor for WorkoutSessionViewController();
  [(WorkoutSessionViewController *)&v5 viewDidDisappear:disappearCopy];
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  v6 = _Block_copy(completion);
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

  selfCopy = self;
  WorkoutSessionViewController.dismiss(animated:completion:)(animated, v6, v7);
  sub_20C6861E4(v6);
}

- (_TtC9WorkoutUI28WorkoutSessionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
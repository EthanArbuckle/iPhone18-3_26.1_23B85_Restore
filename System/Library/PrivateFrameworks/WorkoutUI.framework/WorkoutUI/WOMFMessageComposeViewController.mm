@interface WOMFMessageComposeViewController
- (_TtC9WorkoutUI32WOMFMessageComposeViewController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC9WorkoutUI32WOMFMessageComposeViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC9WorkoutUI32WOMFMessageComposeViewController)initWithRootViewController:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation WOMFMessageComposeViewController

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  WOMFMessageComposeViewController.viewDidAppear(_:)(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  WOMFMessageComposeViewController.viewDidDisappear(_:)(a3);
}

- (_TtC9WorkoutUI32WOMFMessageComposeViewController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  if (!a3)
  {
    ObjCClassMetadata = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return WOMFMessageComposeViewController.init(navigationBarClass:toolbarClass:)(ObjCClassMetadata, v6);
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = swift_getObjCClassMetadata();
  return WOMFMessageComposeViewController.init(navigationBarClass:toolbarClass:)(ObjCClassMetadata, v6);
}

- (_TtC9WorkoutUI32WOMFMessageComposeViewController)initWithRootViewController:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9WorkoutUI32WOMFMessageComposeViewController_messageComposeTimeoutEnabled) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9WorkoutUI32WOMFMessageComposeViewController_workoutActivityType) = 3000;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9WorkoutUI32WOMFMessageComposeViewController_safetyMonitorManager) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9WorkoutUI32WOMFMessageComposeViewController_messageComposeTimeout) = 0x403E000000000000;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9WorkoutUI32WOMFMessageComposeViewController_messageComposeTimer) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for WOMFMessageComposeViewController();
  return [(WOMFMessageComposeViewController *)&v5 initWithRootViewController:a3];
}

- (_TtC9WorkoutUI32WOMFMessageComposeViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return WOMFMessageComposeViewController.init(nibName:bundle:)(v5, v7, a4);
}

@end
@interface WOMFMessageComposeViewController
- (_TtC9WorkoutUI32WOMFMessageComposeViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC9WorkoutUI32WOMFMessageComposeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC9WorkoutUI32WOMFMessageComposeViewController)initWithRootViewController:(id)controller;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation WOMFMessageComposeViewController

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  WOMFMessageComposeViewController.viewDidAppear(_:)(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  WOMFMessageComposeViewController.viewDidDisappear(_:)(disappear);
}

- (_TtC9WorkoutUI32WOMFMessageComposeViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  if (!class)
  {
    ObjCClassMetadata = 0;
    if (toolbarClass)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return WOMFMessageComposeViewController.init(navigationBarClass:toolbarClass:)(ObjCClassMetadata, v6);
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  if (!toolbarClass)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = swift_getObjCClassMetadata();
  return WOMFMessageComposeViewController.init(navigationBarClass:toolbarClass:)(ObjCClassMetadata, v6);
}

- (_TtC9WorkoutUI32WOMFMessageComposeViewController)initWithRootViewController:(id)controller
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9WorkoutUI32WOMFMessageComposeViewController_messageComposeTimeoutEnabled) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9WorkoutUI32WOMFMessageComposeViewController_workoutActivityType) = 3000;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9WorkoutUI32WOMFMessageComposeViewController_safetyMonitorManager) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9WorkoutUI32WOMFMessageComposeViewController_messageComposeTimeout) = 0x403E000000000000;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9WorkoutUI32WOMFMessageComposeViewController_messageComposeTimer) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for WOMFMessageComposeViewController();
  return [(WOMFMessageComposeViewController *)&v5 initWithRootViewController:controller];
}

- (_TtC9WorkoutUI32WOMFMessageComposeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return WOMFMessageComposeViewController.init(nibName:bundle:)(v5, v7, bundle);
}

@end
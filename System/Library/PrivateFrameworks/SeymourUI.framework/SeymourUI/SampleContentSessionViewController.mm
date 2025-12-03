@interface SampleContentSessionViewController
- (_TtC9SeymourUI34SampleContentSessionViewController)initWithCoder:(id)coder;
- (_TtC9SeymourUI34SampleContentSessionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
- (unint64_t)supportedInterfaceOrientations;
- (void)viewDidLoad;
@end

@implementation SampleContentSessionViewController

- (unint64_t)supportedInterfaceOrientations
{
  selfCopy = self;
  v3 = SampleContentSessionViewController.supportedInterfaceOrientations.getter();

  return v3;
}

- (_TtC9SeymourUI34SampleContentSessionViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI34SampleContentSessionViewController_overrideSupportedInterfaceOrientations) = 0;
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(SampleContentSessionViewController *)&v3 viewDidLoad];
  sub_20BDDA648();
}

- (_TtC9SeymourUI34SampleContentSessionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  v7 = objc_opt_self();
  controllerCopy = controller;
  viewControllerCopy = viewController;
  v10 = [v7 sheetPresentationControllerForPresentedController:controllerCopy presentingController:viewControllerCopy];
  [v10 setPrefersPageSizing_];
  v11 = [objc_opt_self() smu:5.0 effectWithBlurRadius:?];
  [v10 setBackgroundBlurEffect_];

  return v10;
}

@end
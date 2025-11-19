@interface SampleContentSessionViewController
- (_TtC9SeymourUI34SampleContentSessionViewController)initWithCoder:(id)a3;
- (_TtC9SeymourUI34SampleContentSessionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
- (unint64_t)supportedInterfaceOrientations;
- (void)viewDidLoad;
@end

@implementation SampleContentSessionViewController

- (unint64_t)supportedInterfaceOrientations
{
  v2 = self;
  v3 = SampleContentSessionViewController.supportedInterfaceOrientations.getter();

  return v3;
}

- (_TtC9SeymourUI34SampleContentSessionViewController)initWithCoder:(id)a3
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

- (_TtC9SeymourUI34SampleContentSessionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v7 = objc_opt_self();
  v8 = a3;
  v9 = a4;
  v10 = [v7 sheetPresentationControllerForPresentedController:v8 presentingController:v9];
  [v10 setPrefersPageSizing_];
  v11 = [objc_opt_self() smu:5.0 effectWithBlurRadius:?];
  [v10 setBackgroundBlurEffect_];

  return v10;
}

@end
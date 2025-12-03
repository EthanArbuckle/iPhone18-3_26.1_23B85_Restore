@interface TTRWorkflowViewController
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (_TtC12PhotosUICore25TTRWorkflowViewController)initWithCoder:(id)coder;
- (_TtC12PhotosUICore25TTRWorkflowViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC12PhotosUICore25TTRWorkflowViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC12PhotosUICore25TTRWorkflowViewController)initWithRootViewController:(id)controller;
- (id)popViewControllerAnimated:(BOOL)animated;
- (void)handleCachedControl:(id)control;
- (void)pushViewController:(id)controller animated:(BOOL)animated;
- (void)viewDidLoad;
@end

@implementation TTRWorkflowViewController

- (_TtC12PhotosUICore25TTRWorkflowViewController)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC12PhotosUICore25TTRWorkflowViewController_actionCache;
  *(&self->super.super.super.super.isa + v3) = sub_1A4A0357C(MEMORY[0x1E69E7CC0]);
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for TTRWorkflowViewController();
  v2 = v6.receiver;
  [(TTRWorkflowViewController *)&v6 viewDidLoad];
  [v2 setNavigationBarHidden:1 animated:{0, v6.receiver, v6.super_class}];
  interactivePopGestureRecognizer = [v2 interactivePopGestureRecognizer];
  if (interactivePopGestureRecognizer)
  {
    v4 = interactivePopGestureRecognizer;
    [interactivePopGestureRecognizer setDelegate_];
  }

  interactivePopGestureRecognizer2 = [v2 interactivePopGestureRecognizer];
  [interactivePopGestureRecognizer2 setEnabled_];
}

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1A4A036C8(controllerCopy);
}

- (id)popViewControllerAnimated:(BOOL)animated
{
  selfCopy = self;
  v4 = sub_1A4A037D0();

  return v4;
}

- (void)handleCachedControl:(id)control
{
  controlCopy = control;
  selfCopy = self;
  sub_1A49FCFD4(controlCopy);
}

- (_TtC12PhotosUICore25TTRWorkflowViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC12PhotosUICore25TTRWorkflowViewController)initWithRootViewController:(id)controller
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC12PhotosUICore25TTRWorkflowViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  selfCopy = self;
  viewControllers = [(TTRWorkflowViewController *)selfCopy viewControllers];
  sub_1A3C52C70(0, &qword_1EB126B10);
  v5 = sub_1A524CA34();

  if (v5 >> 62)
  {
    v6 = sub_1A524E2B4();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v6 > 1;
}

@end
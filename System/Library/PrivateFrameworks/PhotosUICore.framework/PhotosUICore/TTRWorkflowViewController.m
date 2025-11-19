@interface TTRWorkflowViewController
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (_TtC12PhotosUICore25TTRWorkflowViewController)initWithCoder:(id)a3;
- (_TtC12PhotosUICore25TTRWorkflowViewController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC12PhotosUICore25TTRWorkflowViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC12PhotosUICore25TTRWorkflowViewController)initWithRootViewController:(id)a3;
- (id)popViewControllerAnimated:(BOOL)a3;
- (void)handleCachedControl:(id)a3;
- (void)pushViewController:(id)a3 animated:(BOOL)a4;
- (void)viewDidLoad;
@end

@implementation TTRWorkflowViewController

- (_TtC12PhotosUICore25TTRWorkflowViewController)initWithCoder:(id)a3
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
  v3 = [v2 interactivePopGestureRecognizer];
  if (v3)
  {
    v4 = v3;
    [v3 setDelegate_];
  }

  v5 = [v2 interactivePopGestureRecognizer];
  [v5 setEnabled_];
}

- (void)pushViewController:(id)a3 animated:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  sub_1A4A036C8(v5);
}

- (id)popViewControllerAnimated:(BOOL)a3
{
  v3 = self;
  v4 = sub_1A4A037D0();

  return v4;
}

- (void)handleCachedControl:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1A49FCFD4(v4);
}

- (_TtC12PhotosUICore25TTRWorkflowViewController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC12PhotosUICore25TTRWorkflowViewController)initWithRootViewController:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC12PhotosUICore25TTRWorkflowViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v3 = self;
  v4 = [(TTRWorkflowViewController *)v3 viewControllers];
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
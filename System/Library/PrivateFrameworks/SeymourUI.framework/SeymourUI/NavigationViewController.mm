@interface NavigationViewController
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (_TtC9SeymourUI24NavigationViewController)init;
- (_TtC9SeymourUI24NavigationViewController)initWithCoder:(id)a3;
- (_TtC9SeymourUI24NavigationViewController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC9SeymourUI24NavigationViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)menuButtonTapped;
- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5;
- (void)viewDidLoad;
@end

@implementation NavigationViewController

- (_TtC9SeymourUI24NavigationViewController)init
{
  v3 = [objc_allocWithZone(type metadata accessor for PlaceholderViewController()) init];
  [*&v3[OBJC_IVAR____TtC9SeymourUI25PlaceholderViewController_activityIndicator] startAnimating];
  v4 = [(NavigationViewController *)self initWithRootViewController:v3];

  return v4;
}

- (_TtC9SeymourUI24NavigationViewController)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI24NavigationViewController_onShouldBeginRecognizing);
  *v3 = 0;
  v3[1] = 0;
  v4 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI24NavigationViewController_onMenuTapped);
  *v4 = 0;
  v4[1] = 0;
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for NavigationViewController();
  v2 = v5.receiver;
  [(NavigationViewController *)&v5 viewDidLoad];
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    [v3 addGestureRecognizer_];
  }

  else
  {
    __break(1u);
  }
}

- (void)menuButtonTapped
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI24NavigationViewController_onMenuTapped);
  if (v2)
  {
    v3 = self;
    v4 = sub_20B584050(v2);
    v2(v4);

    sub_20B583ECC(v2);
  }
}

- (_TtC9SeymourUI24NavigationViewController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9SeymourUI24NavigationViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI24NavigationViewController_onShouldBeginRecognizing);
  if (v3)
  {
    v5 = a3;
    v6 = self;
    sub_20B584050(v3);
    v7 = v3(v6, v5);

    sub_20B583ECC(v3);
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_20B8A3D78(v8);
}

@end
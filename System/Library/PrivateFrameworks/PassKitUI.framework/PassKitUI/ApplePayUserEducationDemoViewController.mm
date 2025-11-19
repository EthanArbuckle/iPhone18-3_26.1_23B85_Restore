@interface ApplePayUserEducationDemoViewController
- (_TtC9PassKitUI39ApplePayUserEducationDemoViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation ApplePayUserEducationDemoViewController

- (void)loadView
{
  v2 = self;
  sub_1BD563D58();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_1BD5644AC();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for ApplePayUserEducationDemoViewController();
  v4 = v6.receiver;
  [(ApplePayUserEducationDemoViewController *)&v6 viewDidAppear:v3];
  v5 = v4[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stage];
  v4[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stage] = 1;
  sub_1BD564A24(v5);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_1BD564780(a3);
}

- (_TtC9PassKitUI39ApplePayUserEducationDemoViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface ApplePayUserEducationDemoViewController
- (_TtC9PassKitUI39ApplePayUserEducationDemoViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation ApplePayUserEducationDemoViewController

- (void)loadView
{
  selfCopy = self;
  sub_1BD563D58();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_1BD5644AC();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for ApplePayUserEducationDemoViewController();
  v4 = v6.receiver;
  [(ApplePayUserEducationDemoViewController *)&v6 viewDidAppear:appearCopy];
  v5 = v4[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stage];
  v4[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stage] = 1;
  sub_1BD564A24(v5);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1BD564780(disappear);
}

- (_TtC9PassKitUI39ApplePayUserEducationDemoViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
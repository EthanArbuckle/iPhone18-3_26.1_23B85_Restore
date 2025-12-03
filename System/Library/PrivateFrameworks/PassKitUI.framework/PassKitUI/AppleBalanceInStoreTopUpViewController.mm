@interface AppleBalanceInStoreTopUpViewController
- (_TtC9PassKitUI38AppleBalanceInStoreTopUpViewController)initWithCoder:(id)coder;
- (_TtC9PassKitUI38AppleBalanceInStoreTopUpViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)viewWillLayoutSubviews;
@end

@implementation AppleBalanceInStoreTopUpViewController

- (_TtC9PassKitUI38AppleBalanceInStoreTopUpViewController)initWithCoder:(id)coder
{
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)loadView
{
  selfCopy = self;
  sub_1BD465D24();
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = type metadata accessor for AppleBalanceInStoreTopUpViewController();
  v2 = v14.receiver;
  [(AppleBalanceInStoreTopUpViewController *)&v14 viewWillLayoutSubviews];
  view = [v2 view];
  if (view)
  {
    v4 = view;
    [view bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    view2 = [*&v2[OBJC_IVAR____TtC9PassKitUI38AppleBalanceInStoreTopUpViewController_hostingVC] view];
    [view2 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC9PassKitUI38AppleBalanceInStoreTopUpViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
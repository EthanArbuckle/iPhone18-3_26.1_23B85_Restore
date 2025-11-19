@interface AppleBalanceInStoreTopUpViewController
- (_TtC9PassKitUI38AppleBalanceInStoreTopUpViewController)initWithCoder:(id)a3;
- (_TtC9PassKitUI38AppleBalanceInStoreTopUpViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)viewWillLayoutSubviews;
@end

@implementation AppleBalanceInStoreTopUpViewController

- (_TtC9PassKitUI38AppleBalanceInStoreTopUpViewController)initWithCoder:(id)a3
{
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)loadView
{
  v2 = self;
  sub_1BD465D24();
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = type metadata accessor for AppleBalanceInStoreTopUpViewController();
  v2 = v14.receiver;
  [(AppleBalanceInStoreTopUpViewController *)&v14 viewWillLayoutSubviews];
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    [v3 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = [*&v2[OBJC_IVAR____TtC9PassKitUI38AppleBalanceInStoreTopUpViewController_hostingVC] view];
    [v13 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC9PassKitUI38AppleBalanceInStoreTopUpViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
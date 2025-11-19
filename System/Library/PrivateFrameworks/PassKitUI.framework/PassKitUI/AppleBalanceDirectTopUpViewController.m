@interface AppleBalanceDirectTopUpViewController
- (_TtC9PassKitUI37AppleBalanceDirectTopUpViewController)initWithCoder:(id)a3;
- (_TtC9PassKitUI37AppleBalanceDirectTopUpViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)addAction;
- (void)loadView;
- (void)viewWillLayoutSubviews;
- (void)webViewController:(id)a3 didFinishPurchaseWithResult:(id)a4 error:(id)a5;
@end

@implementation AppleBalanceDirectTopUpViewController

- (_TtC9PassKitUI37AppleBalanceDirectTopUpViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_addItem) = 0;
  v4 = self + OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_amount;
  *v4 = MEMORY[0x1BFB403C0](0, a2, a3);
  *(v4 + 1) = v5;
  *(v4 + 4) = v6;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_biometricsUnavailable) = 0;
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)loadView
{
  v2 = self;
  sub_1BD23FF80();
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = type metadata accessor for AppleBalanceDirectTopUpViewController();
  v2 = v14.receiver;
  [(AppleBalanceDirectTopUpViewController *)&v14 viewWillLayoutSubviews];
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    [v3 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = [*&v2[OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_hostingVC] view];
    [v13 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

- (void)addAction
{
  v2 = self;
  sub_1BD2406CC();
}

- (void)webViewController:(id)a3 didFinishPurchaseWithResult:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_1BD242F48(a4, a5);
}

- (_TtC9PassKitUI37AppleBalanceDirectTopUpViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
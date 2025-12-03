@interface AppleBalanceAddMoneyViewController
- (_TtC9PassKitUI34AppleBalanceAddMoneyViewController)initWithCoder:(id)coder;
- (_TtC9PassKitUI34AppleBalanceAddMoneyViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)viewWillLayoutSubviews;
@end

@implementation AppleBalanceAddMoneyViewController

- (_TtC9PassKitUI34AppleBalanceAddMoneyViewController)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC9PassKitUI34AppleBalanceAddMoneyViewController_paymentWebService;
  *(&self->super.super.super.isa + v4) = [objc_opt_self() sharedService];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9PassKitUI34AppleBalanceAddMoneyViewController_dtuConfiguration) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9PassKitUI34AppleBalanceAddMoneyViewController_cancelItem) = 0;
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)loadView
{
  selfCopy = self;
  sub_1BD291838();
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = type metadata accessor for AppleBalanceAddMoneyViewController();
  v2 = v14.receiver;
  [(AppleBalanceAddMoneyViewController *)&v14 viewWillLayoutSubviews];
  view = [v2 view];
  if (view)
  {
    v4 = view;
    [view bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    view2 = [*&v2[OBJC_IVAR____TtC9PassKitUI34AppleBalanceAddMoneyViewController_hostingVC] view];
    [view2 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC9PassKitUI34AppleBalanceAddMoneyViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
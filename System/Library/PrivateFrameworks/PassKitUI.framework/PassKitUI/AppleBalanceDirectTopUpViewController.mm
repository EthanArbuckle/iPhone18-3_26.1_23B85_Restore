@interface AppleBalanceDirectTopUpViewController
- (_TtC9PassKitUI37AppleBalanceDirectTopUpViewController)initWithCoder:(id)coder;
- (_TtC9PassKitUI37AppleBalanceDirectTopUpViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)addAction;
- (void)loadView;
- (void)viewWillLayoutSubviews;
- (void)webViewController:(id)controller didFinishPurchaseWithResult:(id)result error:(id)error;
@end

@implementation AppleBalanceDirectTopUpViewController

- (_TtC9PassKitUI37AppleBalanceDirectTopUpViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_addItem) = 0;
  v4 = self + OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_amount;
  *v4 = MEMORY[0x1BFB403C0](0, a2, coder);
  *(v4 + 1) = v5;
  *(v4 + 4) = v6;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_biometricsUnavailable) = 0;
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)loadView
{
  selfCopy = self;
  sub_1BD23FF80();
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = type metadata accessor for AppleBalanceDirectTopUpViewController();
  v2 = v14.receiver;
  [(AppleBalanceDirectTopUpViewController *)&v14 viewWillLayoutSubviews];
  view = [v2 view];
  if (view)
  {
    v4 = view;
    [view bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    view2 = [*&v2[OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_hostingVC] view];
    [view2 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

- (void)addAction
{
  selfCopy = self;
  sub_1BD2406CC();
}

- (void)webViewController:(id)controller didFinishPurchaseWithResult:(id)result error:(id)error
{
  controllerCopy = controller;
  resultCopy = result;
  selfCopy = self;
  errorCopy = error;
  sub_1BD242F48(result, error);
}

- (_TtC9PassKitUI37AppleBalanceDirectTopUpViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
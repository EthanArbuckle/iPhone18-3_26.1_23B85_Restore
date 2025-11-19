@interface PKNearbyPeerPaymentAmountEntryViewController
- ($85E40A55691FE2F31975A98F57E3065D)pkui_navigationStatusBarStyleDescriptor;
- (PKNearbyPeerPaymentAmountEntryViewController)initWithInitialAmount:(id)a3 initialMemo:(id)a4;
- (PKNearbyPeerPaymentAmountEntryViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)currentBalance;
- (void)amountDidChangeTo:(id)a3;
- (void)handleAction:(unint64_t)a3 completion:(id)a4;
- (void)loadView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PKNearbyPeerPaymentAmountEntryViewController

- (PKNearbyPeerPaymentAmountEntryViewController)initWithInitialAmount:(id)a3 initialMemo:(id)a4
{
  if (a4)
  {
    v5 = sub_1BE052434();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  NearbyPeerPaymentAmountEntryViewController.init(initialAmount:initialMemo:)(a3, v5, v7);
  return result;
}

- (void)loadView
{
  v2 = self;
  sub_1BD9971B8();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1BD9972C4();
}

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = type metadata accessor for NearbyPeerPaymentAmountEntryViewController();
  v2 = v15.receiver;
  [(PKNearbyPeerPaymentAmountEntryViewController *)&v15 viewWillLayoutSubviews];
  v3 = [*&v2[OBJC_IVAR___PKNearbyPeerPaymentAmountEntryViewController_amountEntryVC] view];
  if (v3)
  {
    v4 = v3;
    v5 = [v2 view];
    if (v5)
    {
      v6 = v5;
      [v5 bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      [v4 setFrame_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1BD997734(a3, &selRef_viewDidAppear_);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_1BD997734(a3, &selRef_viewDidDisappear_);
}

- ($85E40A55691FE2F31975A98F57E3065D)pkui_navigationStatusBarStyleDescriptor
{
  v2 = 1;
  v3 = 1;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (id)currentBalance
{
  v2 = [*(&self->super.super.super.isa + OBJC_IVAR___PKNearbyPeerPaymentAmountEntryViewController_peerPaymentAccount) currentBalance];

  return v2;
}

- (void)amountDidChangeTo:(id)a3
{
  v3 = self;
  sub_1BD997A7C();
}

- (void)handleAction:(unint64_t)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = self;
  sub_1BD999FC8(a3, v7, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (PKNearbyPeerPaymentAmountEntryViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
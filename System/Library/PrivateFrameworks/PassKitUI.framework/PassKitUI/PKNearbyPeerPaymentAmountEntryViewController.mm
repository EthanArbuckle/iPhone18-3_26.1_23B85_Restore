@interface PKNearbyPeerPaymentAmountEntryViewController
- ($85E40A55691FE2F31975A98F57E3065D)pkui_navigationStatusBarStyleDescriptor;
- (PKNearbyPeerPaymentAmountEntryViewController)initWithInitialAmount:(id)amount initialMemo:(id)memo;
- (PKNearbyPeerPaymentAmountEntryViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)currentBalance;
- (void)amountDidChangeTo:(id)to;
- (void)handleAction:(unint64_t)action completion:(id)completion;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PKNearbyPeerPaymentAmountEntryViewController

- (PKNearbyPeerPaymentAmountEntryViewController)initWithInitialAmount:(id)amount initialMemo:(id)memo
{
  if (memo)
  {
    v5 = sub_1BE052434();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  amountCopy = amount;
  NearbyPeerPaymentAmountEntryViewController.init(initialAmount:initialMemo:)(amount, v5, v7);
  return result;
}

- (void)loadView
{
  selfCopy = self;
  sub_1BD9971B8();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1BD9972C4();
}

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = type metadata accessor for NearbyPeerPaymentAmountEntryViewController();
  v2 = v15.receiver;
  [(PKNearbyPeerPaymentAmountEntryViewController *)&v15 viewWillLayoutSubviews];
  view = [*&v2[OBJC_IVAR___PKNearbyPeerPaymentAmountEntryViewController_amountEntryVC] view];
  if (view)
  {
    v4 = view;
    view2 = [v2 view];
    if (view2)
    {
      v6 = view2;
      [view2 bounds];
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

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1BD997734(appear, &selRef_viewDidAppear_);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1BD997734(disappear, &selRef_viewDidDisappear_);
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
  currentBalance = [*(&self->super.super.super.isa + OBJC_IVAR___PKNearbyPeerPaymentAmountEntryViewController_peerPaymentAccount) currentBalance];

  return currentBalance;
}

- (void)amountDidChangeTo:(id)to
{
  selfCopy = self;
  sub_1BD997A7C();
}

- (void)handleAction:(unint64_t)action completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  selfCopy = self;
  sub_1BD999FC8(action, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (PKNearbyPeerPaymentAmountEntryViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
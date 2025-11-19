@interface PKPeerPaymentGroupedPaymentsViewController
- (PKPeerPaymentGroupedPaymentsViewController)initWithCoder:(id)a3;
- (PKPeerPaymentGroupedPaymentsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (PKPeerPaymentGroupedPaymentsViewController)initWithRequest:(id)a3 transactionSourceCollection:(id)a4 context:(unint64_t)a5;
- (void)loadView;
- (void)viewWillLayoutSubviews;
@end

@implementation PKPeerPaymentGroupedPaymentsViewController

- (PKPeerPaymentGroupedPaymentsViewController)initWithRequest:(id)a3 transactionSourceCollection:(id)a4 context:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = sub_1BD9ACE4C(v7, v8, a5);

  return v9;
}

- (PKPeerPaymentGroupedPaymentsViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR___PKPeerPaymentGroupedPaymentsViewController_hostingVC) = 0;
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)loadView
{
  v2 = self;
  PeerPaymentGroupedPaymentsViewController.loadView()();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  PeerPaymentGroupedPaymentsViewController.viewWillLayoutSubviews()();
}

- (PKPeerPaymentGroupedPaymentsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
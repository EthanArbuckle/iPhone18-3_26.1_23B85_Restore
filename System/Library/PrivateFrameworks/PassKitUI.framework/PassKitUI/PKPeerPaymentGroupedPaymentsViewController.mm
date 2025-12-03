@interface PKPeerPaymentGroupedPaymentsViewController
- (PKPeerPaymentGroupedPaymentsViewController)initWithCoder:(id)coder;
- (PKPeerPaymentGroupedPaymentsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (PKPeerPaymentGroupedPaymentsViewController)initWithRequest:(id)request transactionSourceCollection:(id)collection context:(unint64_t)context;
- (void)loadView;
- (void)viewWillLayoutSubviews;
@end

@implementation PKPeerPaymentGroupedPaymentsViewController

- (PKPeerPaymentGroupedPaymentsViewController)initWithRequest:(id)request transactionSourceCollection:(id)collection context:(unint64_t)context
{
  requestCopy = request;
  collectionCopy = collection;
  v9 = sub_1BD9ACE4C(requestCopy, collectionCopy, context);

  return v9;
}

- (PKPeerPaymentGroupedPaymentsViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR___PKPeerPaymentGroupedPaymentsViewController_hostingVC) = 0;
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)loadView
{
  selfCopy = self;
  PeerPaymentGroupedPaymentsViewController.loadView()();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  PeerPaymentGroupedPaymentsViewController.viewWillLayoutSubviews()();
}

- (PKPeerPaymentGroupedPaymentsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
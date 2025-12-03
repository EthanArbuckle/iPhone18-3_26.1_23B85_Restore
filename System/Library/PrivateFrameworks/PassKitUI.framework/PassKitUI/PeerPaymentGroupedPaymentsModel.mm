@interface PeerPaymentGroupedPaymentsModel
- (_TtC9PassKitUI31PeerPaymentGroupedPaymentsModel)init;
- (void)transactionsChanged:(id)changed;
@end

@implementation PeerPaymentGroupedPaymentsModel

- (void)transactionsChanged:(id)changed
{
  if (changed)
  {
    sub_1BD0E5E8C(0, &qword_1EBD4AB10);
    sub_1BE052744();
  }

  selfCopy = self;
  sub_1BD8F972C();
}

- (_TtC9PassKitUI31PeerPaymentGroupedPaymentsModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface PeerPaymentAmountEntryKeypadView.Coordinator
- (_TtCV9PassKitUI32PeerPaymentAmountEntryKeypadView11Coordinator)init;
- (id)currentBalance;
- (void)amountDidChangeTo:(id)to;
- (void)memoDidChangeTo:(id)to;
@end

@implementation PeerPaymentAmountEntryKeypadView.Coordinator

- (id)currentBalance
{
  currentBalance = [*(&self->super.isa + OBJC_IVAR____TtCV9PassKitUI32PeerPaymentAmountEntryKeypadView11Coordinator_peerPaymentAccount) currentBalance];

  return currentBalance;
}

- (void)amountDidChangeTo:(id)to
{
  if (to)
  {
    toCopy = to;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48B68);
    sub_1BE0518F4();
  }

  else
  {
    __break(1u);
  }
}

- (void)memoDidChangeTo:(id)to
{
  if (to)
  {
    sub_1BE052434();
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48B70);
    sub_1BE0518F4();
  }

  else
  {
    __break(1u);
  }
}

- (_TtCV9PassKitUI32PeerPaymentAmountEntryKeypadView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
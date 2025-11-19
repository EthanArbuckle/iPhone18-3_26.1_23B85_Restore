@interface PeerPaymentAmountEntryKeypadView.Coordinator
- (_TtCV9PassKitUI32PeerPaymentAmountEntryKeypadView11Coordinator)init;
- (id)currentBalance;
- (void)amountDidChangeTo:(id)a3;
- (void)memoDidChangeTo:(id)a3;
@end

@implementation PeerPaymentAmountEntryKeypadView.Coordinator

- (id)currentBalance
{
  v2 = [*(&self->super.isa + OBJC_IVAR____TtCV9PassKitUI32PeerPaymentAmountEntryKeypadView11Coordinator_peerPaymentAccount) currentBalance];

  return v2;
}

- (void)amountDidChangeTo:(id)a3
{
  if (a3)
  {
    v3 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48B68);
    sub_1BE0518F4();
  }

  else
  {
    __break(1u);
  }
}

- (void)memoDidChangeTo:(id)a3
{
  if (a3)
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
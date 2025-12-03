@interface AccountAutomaticPaymentsEnterAmountView.Coordinator
- (BOOL)enterCurrencyAmountView:(id)view shouldChangeAmountFrom:(id)from to:(id)to;
- (_TtCV9PassKitUI39AccountAutomaticPaymentsEnterAmountView11Coordinator)init;
- (void)enterCurrencyAmountViewDidChangeAmount:(id)amount;
@end

@implementation AccountAutomaticPaymentsEnterAmountView.Coordinator

- (BOOL)enterCurrencyAmountView:(id)view shouldChangeAmountFrom:(id)from to:(id)to
{
  viewCopy = view;
  fromCopy = from;
  toCopy = to;
  selfCopy = self;
  LOBYTE(to) = sub_1BD7E7B88(view, from, to);

  return to & 1;
}

- (void)enterCurrencyAmountViewDidChangeAmount:(id)amount
{
  amountCopy = amount;
  selfCopy = self;
  sub_1BD7E7E80(amount);
}

- (_TtCV9PassKitUI39AccountAutomaticPaymentsEnterAmountView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
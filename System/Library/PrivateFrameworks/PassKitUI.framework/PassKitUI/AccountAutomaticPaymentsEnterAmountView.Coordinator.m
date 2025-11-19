@interface AccountAutomaticPaymentsEnterAmountView.Coordinator
- (BOOL)enterCurrencyAmountView:(id)a3 shouldChangeAmountFrom:(id)a4 to:(id)a5;
- (_TtCV9PassKitUI39AccountAutomaticPaymentsEnterAmountView11Coordinator)init;
- (void)enterCurrencyAmountViewDidChangeAmount:(id)a3;
@end

@implementation AccountAutomaticPaymentsEnterAmountView.Coordinator

- (BOOL)enterCurrencyAmountView:(id)a3 shouldChangeAmountFrom:(id)a4 to:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = self;
  LOBYTE(a5) = sub_1BD7E7B88(a3, a4, a5);

  return a5 & 1;
}

- (void)enterCurrencyAmountViewDidChangeAmount:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1BD7E7E80(a3);
}

- (_TtCV9PassKitUI39AccountAutomaticPaymentsEnterAmountView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
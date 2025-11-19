@interface AppleBalanceEnterAmountView.Coordinator
- (BOOL)enterCurrencyAmountView:(id)a3 shouldChangeAmountFrom:(id)a4 to:(id)a5;
- (_TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator)init;
- (void)enterCurrencyAmountViewDidChangeAmount:(id)a3;
- (void)numberPadSuggestionsView:(id)a3 didSelectSuggestion:(id)a4;
@end

@implementation AppleBalanceEnterAmountView.Coordinator

- (BOOL)enterCurrencyAmountView:(id)a3 shouldChangeAmountFrom:(id)a4 to:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1BD676A74(a4, a5);
  LOBYTE(a5) = v12;

  return a5 & 1;
}

- (void)enterCurrencyAmountViewDidChangeAmount:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1BD6756EC(a3);
}

- (void)numberPadSuggestionsView:(id)a3 didSelectSuggestion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1BD676B98(a4);
}

- (_TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
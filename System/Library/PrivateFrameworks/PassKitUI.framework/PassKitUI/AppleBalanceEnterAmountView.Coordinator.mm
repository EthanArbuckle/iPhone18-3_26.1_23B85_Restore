@interface AppleBalanceEnterAmountView.Coordinator
- (BOOL)enterCurrencyAmountView:(id)view shouldChangeAmountFrom:(id)from to:(id)to;
- (_TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator)init;
- (void)enterCurrencyAmountViewDidChangeAmount:(id)amount;
- (void)numberPadSuggestionsView:(id)view didSelectSuggestion:(id)suggestion;
@end

@implementation AppleBalanceEnterAmountView.Coordinator

- (BOOL)enterCurrencyAmountView:(id)view shouldChangeAmountFrom:(id)from to:(id)to
{
  viewCopy = view;
  fromCopy = from;
  toCopy = to;
  selfCopy = self;
  sub_1BD676A74(from, to);
  LOBYTE(to) = v12;

  return to & 1;
}

- (void)enterCurrencyAmountViewDidChangeAmount:(id)amount
{
  amountCopy = amount;
  selfCopy = self;
  sub_1BD6756EC(amount);
}

- (void)numberPadSuggestionsView:(id)view didSelectSuggestion:(id)suggestion
{
  viewCopy = view;
  suggestionCopy = suggestion;
  selfCopy = self;
  sub_1BD676B98(suggestion);
}

- (_TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
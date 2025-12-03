@interface EnterCurrencyAmountView.Coordinator
- (BOOL)enterCurrencyAmountView:(id)view shouldChangeAmountFrom:(id)from to:(id)to;
- (_TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator)init;
- (void)enterCurrencyAmountView:(id)view didSelectSuggestion:(id)suggestion;
- (void)enterCurrencyAmountViewDidChangeAmount:(id)amount;
@end

@implementation EnterCurrencyAmountView.Coordinator

- (BOOL)enterCurrencyAmountView:(id)view shouldChangeAmountFrom:(id)from to:(id)to
{
  viewCopy = view;
  fromCopy = from;
  toCopy = to;
  selfCopy = self;
  LOBYTE(to) = sub_1BDA3BE9C(view, from, to);

  return to & 1;
}

- (void)enterCurrencyAmountViewDidChangeAmount:(id)amount
{
  amountCopy = amount;
  selfCopy = self;
  sub_1BDA3C2CC(amount);
}

- (void)enterCurrencyAmountView:(id)view didSelectSuggestion:(id)suggestion
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_keypadSuggestionSelected);
  if (!v4)
  {
    return;
  }

  if (!suggestion)
  {
    __break(1u);
    goto LABEL_9;
  }

  selfCopy = self;
  suggestionCopy = suggestion;
  value = [suggestionCopy value];
  if (!value)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v8 = value;
  v9 = sub_1BE0533F4();
  v11 = v10;
  v13 = v12;

  v4(v9, v11, v13);
}

- (_TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
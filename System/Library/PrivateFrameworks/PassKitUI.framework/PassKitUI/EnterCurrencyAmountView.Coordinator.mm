@interface EnterCurrencyAmountView.Coordinator
- (BOOL)enterCurrencyAmountView:(id)a3 shouldChangeAmountFrom:(id)a4 to:(id)a5;
- (_TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator)init;
- (void)enterCurrencyAmountView:(id)a3 didSelectSuggestion:(id)a4;
- (void)enterCurrencyAmountViewDidChangeAmount:(id)a3;
@end

@implementation EnterCurrencyAmountView.Coordinator

- (BOOL)enterCurrencyAmountView:(id)a3 shouldChangeAmountFrom:(id)a4 to:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = self;
  LOBYTE(a5) = sub_1BDA3BE9C(a3, a4, a5);

  return a5 & 1;
}

- (void)enterCurrencyAmountViewDidChangeAmount:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1BDA3C2CC(a3);
}

- (void)enterCurrencyAmountView:(id)a3 didSelectSuggestion:(id)a4
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_keypadSuggestionSelected);
  if (!v4)
  {
    return;
  }

  if (!a4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = self;
  v14 = a4;
  v7 = [v14 value];
  if (!v7)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v8 = v7;
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
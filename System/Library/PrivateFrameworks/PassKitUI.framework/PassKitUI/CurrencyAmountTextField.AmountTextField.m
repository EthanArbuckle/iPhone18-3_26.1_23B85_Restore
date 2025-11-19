@interface CurrencyAmountTextField.AmountTextField
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldEndEditing:(id)a3;
- (CGRect)caretRectForPosition:(id)a3;
- (_TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField)initWithCoder:(id)a3;
- (_TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField)initWithFrame:(CGRect)a3;
- (id)selectionRectsForRange:(id)a3;
- (void)dealloc;
- (void)editingChanged;
- (void)resetSelection;
- (void)textInputResponderIsReloaded:(void *)a1;
@end

@implementation CurrencyAmountTextField.AmountTextField

- (void)textInputResponderIsReloaded:(void *)a1
{
  v1 = a1;
  sub_1BD3EB3A0();
}

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver:v4 name:*MEMORY[0x1E69DE6E8] object:0];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for CurrencyAmountTextField.AmountTextField();
  [(CurrencyAmountTextField.AmountTextField *)&v6 dealloc];
}

- (_TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField_firstEdit) = 1;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField____lazy_storage___currencyFormatter) = 0;
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)editingChanged
{
  v2 = self;
  sub_1BD3EA848();
}

- (void)resetSelection
{
  v5 = self;
  v2 = [(CurrencyAmountTextField.AmountTextField *)v5 endOfDocument];
  v3 = [(CurrencyAmountTextField.AmountTextField *)v5 endOfDocument];
  v4 = [(CurrencyAmountTextField.AmountTextField *)v5 textRangeFromPosition:v2 toPosition:v3];

  [(CurrencyAmountTextField.AmountTextField *)v5 setSelectedTextRange:v4];
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = sub_1BE052434();
  v11 = v10;
  v12 = a3;
  v13 = self;
  LOBYTE(length) = sub_1BD3EAC48(v12, location, length, v9, v11);

  return length & 1;
}

- (BOOL)textFieldShouldEndEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1BD3EBD88();

  return self & 1;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    swift_unknownObjectRetain();
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  sub_1BD0DE53C(v5, &qword_1EBD3EC90);
  return 0;
}

- (id)selectionRectsForRange:(id)a3
{
  sub_1BD0E5E8C(0, &unk_1EBD450F8);
  v3 = sub_1BE052724();

  return v3;
}

- (CGRect)caretRectForPosition:(id)a3
{
  v3 = *MEMORY[0x1E695F050];
  v4 = *(MEMORY[0x1E695F050] + 8);
  v5 = *(MEMORY[0x1E695F050] + 16);
  v6 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (_TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
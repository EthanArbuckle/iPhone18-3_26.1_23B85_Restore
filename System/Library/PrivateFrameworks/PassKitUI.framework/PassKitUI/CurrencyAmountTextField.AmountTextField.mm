@interface CurrencyAmountTextField.AmountTextField
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldEndEditing:(id)editing;
- (CGRect)caretRectForPosition:(id)position;
- (_TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField)initWithCoder:(id)coder;
- (_TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField)initWithFrame:(CGRect)frame;
- (id)selectionRectsForRange:(id)range;
- (void)dealloc;
- (void)editingChanged;
- (void)resetSelection;
- (void)textInputResponderIsReloaded:(void *)reloaded;
@end

@implementation CurrencyAmountTextField.AmountTextField

- (void)textInputResponderIsReloaded:(void *)reloaded
{
  reloadedCopy = reloaded;
  sub_1BD3EB3A0();
}

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver:selfCopy name:*MEMORY[0x1E69DE6E8] object:0];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for CurrencyAmountTextField.AmountTextField();
  [(CurrencyAmountTextField.AmountTextField *)&v6 dealloc];
}

- (_TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField_firstEdit) = 1;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField____lazy_storage___currencyFormatter) = 0;
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)editingChanged
{
  selfCopy = self;
  sub_1BD3EA848();
}

- (void)resetSelection
{
  selfCopy = self;
  endOfDocument = [(CurrencyAmountTextField.AmountTextField *)selfCopy endOfDocument];
  endOfDocument2 = [(CurrencyAmountTextField.AmountTextField *)selfCopy endOfDocument];
  v4 = [(CurrencyAmountTextField.AmountTextField *)selfCopy textRangeFromPosition:endOfDocument toPosition:endOfDocument2];

  [(CurrencyAmountTextField.AmountTextField *)selfCopy setSelectedTextRange:v4];
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  v9 = sub_1BE052434();
  v11 = v10;
  fieldCopy = field;
  selfCopy = self;
  LOBYTE(length) = sub_1BD3EAC48(fieldCopy, location, length, v9, v11);

  return length & 1;
}

- (BOOL)textFieldShouldEndEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  LOBYTE(self) = sub_1BD3EBD88();

  return self & 1;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
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

- (id)selectionRectsForRange:(id)range
{
  sub_1BD0E5E8C(0, &unk_1EBD450F8);
  v3 = sub_1BE052724();

  return v3;
}

- (CGRect)caretRectForPosition:(id)position
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

- (_TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
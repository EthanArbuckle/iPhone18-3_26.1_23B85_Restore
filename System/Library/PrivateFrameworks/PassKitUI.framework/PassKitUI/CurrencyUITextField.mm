@interface CurrencyUITextField
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (_TtC9PassKitUI19CurrencyUITextField)initWithCoder:(id)coder;
- (_TtC9PassKitUI19CurrencyUITextField)initWithFrame:(CGRect)frame;
- (void)deleteBackward;
- (void)editingChanged;
- (void)resetSelection;
@end

@implementation CurrencyUITextField

- (_TtC9PassKitUI19CurrencyUITextField)initWithCoder:(id)coder
{
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)deleteBackward
{
  selfCopy = self;
  text = [(CurrencyUITextField *)selfCopy text];
  if (text)
  {
    v3 = text;
    sub_1BE052434();
  }

  sub_1BD3EBC7C();

  v4 = sub_1BD6447CC(1);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  MEMORY[0x1BFB3F570](v4, v6, v8, v10);

  v11 = sub_1BE052404();

  [(CurrencyUITextField *)selfCopy setText:v11];

  [(CurrencyUITextField *)selfCopy sendActionsForControlEvents:0x20000];
}

- (void)editingChanged
{
  selfCopy = self;
  sub_1BD643E74();
}

- (void)resetSelection
{
  selfCopy = self;
  endOfDocument = [(CurrencyUITextField *)selfCopy endOfDocument];
  endOfDocument2 = [(CurrencyUITextField *)selfCopy endOfDocument];
  v4 = [(CurrencyUITextField *)selfCopy textRangeFromPosition:endOfDocument toPosition:endOfDocument2];

  [(CurrencyUITextField *)selfCopy setSelectedTextRange:v4];
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  v9 = sub_1BE052434();
  v11 = v10;
  fieldCopy = field;
  selfCopy = self;
  LOBYTE(length) = sub_1BD644240(fieldCopy, location, length, v9, v11);

  return length & 1;
}

- (_TtC9PassKitUI19CurrencyUITextField)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
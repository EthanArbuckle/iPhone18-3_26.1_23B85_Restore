@interface CurrencyUITextField
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (_TtC9PassKitUI19CurrencyUITextField)initWithCoder:(id)a3;
- (_TtC9PassKitUI19CurrencyUITextField)initWithFrame:(CGRect)a3;
- (void)deleteBackward;
- (void)editingChanged;
- (void)resetSelection;
@end

@implementation CurrencyUITextField

- (_TtC9PassKitUI19CurrencyUITextField)initWithCoder:(id)a3
{
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)deleteBackward
{
  v12 = self;
  v2 = [(CurrencyUITextField *)v12 text];
  if (v2)
  {
    v3 = v2;
    sub_1BE052434();
  }

  sub_1BD3EBC7C();

  v4 = sub_1BD6447CC(1);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  MEMORY[0x1BFB3F570](v4, v6, v8, v10);

  v11 = sub_1BE052404();

  [(CurrencyUITextField *)v12 setText:v11];

  [(CurrencyUITextField *)v12 sendActionsForControlEvents:0x20000];
}

- (void)editingChanged
{
  v2 = self;
  sub_1BD643E74();
}

- (void)resetSelection
{
  v5 = self;
  v2 = [(CurrencyUITextField *)v5 endOfDocument];
  v3 = [(CurrencyUITextField *)v5 endOfDocument];
  v4 = [(CurrencyUITextField *)v5 textRangeFromPosition:v2 toPosition:v3];

  [(CurrencyUITextField *)v5 setSelectedTextRange:v4];
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = sub_1BE052434();
  v11 = v10;
  v12 = a3;
  v13 = self;
  LOBYTE(length) = sub_1BD644240(v12, location, length, v9, v11);

  return length & 1;
}

- (_TtC9PassKitUI19CurrencyUITextField)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
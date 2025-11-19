@interface TextFieldValidator
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldReturn:(id)a3;
- (_TtC8StocksUI18TextFieldValidator)init;
@end

@implementation TextFieldValidator

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8StocksUI18TextFieldValidator_isTextValid);
  v5 = a3;
  v6 = self;
  v7 = [v5 text];
  if (v7)
  {
    v8 = v7;
    v9 = sub_22089136C();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  v12 = v4(v9, v11);

  if (v12)
  {
    (*(&v6->super.isa + OBJC_IVAR____TtC8StocksUI18TextFieldValidator_submit))(v13);
  }

  return v12 & 1;
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  sub_22089136C();
  v7 = a3;
  v8 = self;
  sub_22085D5AC(v7);

  return 1;
}

- (_TtC8StocksUI18TextFieldValidator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
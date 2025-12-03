@interface TextFieldValidator
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldReturn:(id)return;
- (_TtC8StocksUI18TextFieldValidator)init;
@end

@implementation TextFieldValidator

- (BOOL)textFieldShouldReturn:(id)return
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8StocksUI18TextFieldValidator_isTextValid);
  returnCopy = return;
  selfCopy = self;
  text = [returnCopy text];
  if (text)
  {
    v8 = text;
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
    (*(&selfCopy->super.isa + OBJC_IVAR____TtC8StocksUI18TextFieldValidator_submit))(v13);
  }

  return v12 & 1;
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  sub_22089136C();
  fieldCopy = field;
  selfCopy = self;
  sub_22085D5AC(fieldCopy);

  return 1;
}

- (_TtC8StocksUI18TextFieldValidator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
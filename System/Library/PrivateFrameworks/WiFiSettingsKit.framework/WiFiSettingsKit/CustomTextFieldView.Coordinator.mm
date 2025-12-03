@interface CustomTextFieldView.Coordinator
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (_TtCV15WiFiSettingsKit19CustomTextFieldView11Coordinator)init;
@end

@implementation CustomTextFieldView.Coordinator

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  sub_2741C7E7C();
  fieldCopy = field;
  selfCopy = self;
  LOBYTE(length) = sub_2740DDB50(fieldCopy, location, length);

  return length & 1;
}

- (_TtCV15WiFiSettingsKit19CustomTextFieldView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
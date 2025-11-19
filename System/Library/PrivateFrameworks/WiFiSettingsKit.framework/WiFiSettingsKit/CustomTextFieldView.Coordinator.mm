@interface CustomTextFieldView.Coordinator
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (_TtCV15WiFiSettingsKit19CustomTextFieldView11Coordinator)init;
@end

@implementation CustomTextFieldView.Coordinator

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  sub_2741C7E7C();
  v9 = a3;
  v10 = self;
  LOBYTE(length) = sub_2740DDB50(v9, location, length);

  return length & 1;
}

- (_TtCV15WiFiSettingsKit19CustomTextFieldView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
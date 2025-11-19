@interface PaymentSetupFieldEntryTextFieldView.Coordinator
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (_TtCV9PassKitUIP33_A630CC2BCDAA4C518AB8B8F441FB0D6D35PaymentSetupFieldEntryTextFieldView11Coordinator)init;
- (void)textFieldDidChangeSelection:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
@end

@implementation PaymentSetupFieldEntryTextFieldView.Coordinator

- (void)textFieldDidChangeSelection:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BD660CAC(v4);
}

- (void)textFieldDidEndEditing:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtCV9PassKitUIP33_A630CC2BCDAA4C518AB8B8F441FB0D6D35PaymentSetupFieldEntryTextFieldView11Coordinator_field);
  v5 = a3;
  v7 = self;
  v6 = [v4 displayString];
  [v5 setText_];
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = sub_1BE052434();
  v11 = v10;
  v12 = a3;
  v13 = self;
  sub_1BD660EF8(v12, location, length, v9, v11);
  LOBYTE(length) = v14;

  return length & 1;
}

- (_TtCV9PassKitUIP33_A630CC2BCDAA4C518AB8B8F441FB0D6D35PaymentSetupFieldEntryTextFieldView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface PaymentSetupFieldEntryTextFieldView.Coordinator
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (_TtCV9PassKitUIP33_A630CC2BCDAA4C518AB8B8F441FB0D6D35PaymentSetupFieldEntryTextFieldView11Coordinator)init;
- (void)textFieldDidChangeSelection:(id)selection;
- (void)textFieldDidEndEditing:(id)editing;
@end

@implementation PaymentSetupFieldEntryTextFieldView.Coordinator

- (void)textFieldDidChangeSelection:(id)selection
{
  selectionCopy = selection;
  selfCopy = self;
  sub_1BD660CAC(selectionCopy);
}

- (void)textFieldDidEndEditing:(id)editing
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtCV9PassKitUIP33_A630CC2BCDAA4C518AB8B8F441FB0D6D35PaymentSetupFieldEntryTextFieldView11Coordinator_field);
  editingCopy = editing;
  selfCopy = self;
  displayString = [v4 displayString];
  [editingCopy setText_];
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  v9 = sub_1BE052434();
  v11 = v10;
  fieldCopy = field;
  selfCopy = self;
  sub_1BD660EF8(fieldCopy, location, length, v9, v11);
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
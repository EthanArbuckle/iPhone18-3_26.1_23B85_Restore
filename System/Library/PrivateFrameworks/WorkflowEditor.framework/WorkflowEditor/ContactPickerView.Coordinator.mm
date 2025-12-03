@interface ContactPickerView.Coordinator
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
- (void)contactPicker:(id)picker didSelectContactProperty:(id)property;
- (void)contactPickerDidCancel:(id)cancel;
- (void)recipientViewControllerDidFinish:(id)finish cancelled:(BOOL)cancelled;
@end

@implementation ContactPickerView.Coordinator

- (void)contactPickerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  sub_2745DCD0C();
}

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  pickerCopy = picker;
  contactCopy = contact;
  selfCopy = self;
  sub_2745DCF00(selfCopy, contactCopy);
}

- (void)contactPicker:(id)picker didSelectContactProperty:(id)property
{
  pickerCopy = picker;
  propertyCopy = property;
  selfCopy = self;
  sub_2745DD030(selfCopy, propertyCopy);
}

- (void)recipientViewControllerDidFinish:(id)finish cancelled:(BOOL)cancelled
{
  finishCopy = finish;
  selfCopy = self;
  sub_2745DD22C(finishCopy, cancelled);
}

@end
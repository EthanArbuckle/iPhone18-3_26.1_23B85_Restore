@interface LocationPickerView.Coordinator
- (void)locationPicker:(id)picker didFinishWithValue:(id)value;
- (void)locationPickerDidCancel:(id)cancel;
@end

@implementation LocationPickerView.Coordinator

- (void)locationPicker:(id)picker didFinishWithValue:(id)value
{
  pickerCopy = picker;
  valueCopy = value;
  selfCopy = self;
  sub_274457710(selfCopy, value);
}

- (void)locationPickerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  sub_27445793C();
}

@end
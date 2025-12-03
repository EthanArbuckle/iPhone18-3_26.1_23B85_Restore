@interface DurationPickerView
- (double)pickerView:(id)view widthForComponent:(int64_t)component;
- (id)pickerView:(id)view viewForRow:(int64_t)row forComponent:(int64_t)component reusingView:(id)reusingView;
- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component;
@end

@implementation DurationPickerView

- (id)pickerView:(id)view viewForRow:(int64_t)row forComponent:(int64_t)component reusingView:(id)reusingView
{
  viewCopy = view;
  reusingViewCopy = reusingView;
  selfCopy = self;
  v13 = sub_2744CF4A0(selfCopy, row, component, reusingView);

  return v13;
}

- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component
{
  viewCopy = view;
  selfCopy = self;
  sub_2744CF840();
}

- (double)pickerView:(id)view widthForComponent:(int64_t)component
{
  viewCopy = view;
  selfCopy = self;
  v7 = sub_2744CFB40();

  return v7;
}

@end
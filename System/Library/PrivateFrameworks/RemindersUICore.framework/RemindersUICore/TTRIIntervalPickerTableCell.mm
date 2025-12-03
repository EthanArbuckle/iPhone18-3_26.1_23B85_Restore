@interface TTRIIntervalPickerTableCell
- (id)pickerView:(id)view viewForRow:(int64_t)row forComponent:(int64_t)component reusingView:(id)reusingView;
- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component;
- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component;
@end

@implementation TTRIIntervalPickerTableCell

- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component
{
  if ((component & 0x8000000000000000) == 0)
  {
    v5 = *(self + qword_27CE64260);
    if (*(v5 + 16) > component && (*(v5 + component + 32) & 1) != 0)
    {
      return 5;
    }
  }

  viewCopy = view;
  selfCopy = self;
  sub_21D979728();

  return 200;
}

- (id)pickerView:(id)view viewForRow:(int64_t)row forComponent:(int64_t)component reusingView:(id)reusingView
{
  if (reusingView && (objc_opt_self(), (v11 = swift_dynamicCastObjCClass()) != 0))
  {
    v12 = v11;
    reusingViewCopy = reusingView;
    viewCopy = view;
    selfCopy = self;
  }

  else
  {
    reusingViewCopy2 = reusingView;
    viewCopy2 = view;
    selfCopy2 = self;
    v12 = sub_21D979A14(component);
  }

  sub_21D979BB8(row, component);
  v19 = sub_21DBFA12C();

  [v12 setText_];

  return v12;
}

- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component
{
  viewCopy = view;
  selfCopy = self;
  sub_21D97A540();
}

@end
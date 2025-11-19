@interface DurationPickerView
- (double)pickerView:(id)a3 widthForComponent:(int64_t)a4;
- (id)pickerView:(id)a3 viewForRow:(int64_t)a4 forComponent:(int64_t)a5 reusingView:(id)a6;
- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5;
@end

@implementation DurationPickerView

- (id)pickerView:(id)a3 viewForRow:(int64_t)a4 forComponent:(int64_t)a5 reusingView:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = self;
  v13 = sub_2744CF4A0(v12, a4, a5, a6);

  return v13;
}

- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5
{
  v6 = a3;
  v7 = self;
  sub_2744CF840();
}

- (double)pickerView:(id)a3 widthForComponent:(int64_t)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_2744CFB40();

  return v7;
}

@end
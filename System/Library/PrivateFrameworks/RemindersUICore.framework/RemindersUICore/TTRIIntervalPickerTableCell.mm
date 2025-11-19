@interface TTRIIntervalPickerTableCell
- (id)pickerView:(id)a3 viewForRow:(int64_t)a4 forComponent:(int64_t)a5 reusingView:(id)a6;
- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4;
- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5;
@end

@implementation TTRIIntervalPickerTableCell

- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4
{
  if ((a4 & 0x8000000000000000) == 0)
  {
    v5 = *(self + qword_27CE64260);
    if (*(v5 + 16) > a4 && (*(v5 + a4 + 32) & 1) != 0)
    {
      return 5;
    }
  }

  v7 = a3;
  v8 = self;
  sub_21D979728();

  return 200;
}

- (id)pickerView:(id)a3 viewForRow:(int64_t)a4 forComponent:(int64_t)a5 reusingView:(id)a6
{
  if (a6 && (objc_opt_self(), (v11 = swift_dynamicCastObjCClass()) != 0))
  {
    v12 = v11;
    v13 = a6;
    v14 = a3;
    v15 = self;
  }

  else
  {
    v16 = a6;
    v17 = a3;
    v18 = self;
    v12 = sub_21D979A14(a5);
  }

  sub_21D979BB8(a4, a5);
  v19 = sub_21DBFA12C();

  [v12 setText_];

  return v12;
}

- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5
{
  v6 = a3;
  v7 = self;
  sub_21D97A540();
}

@end
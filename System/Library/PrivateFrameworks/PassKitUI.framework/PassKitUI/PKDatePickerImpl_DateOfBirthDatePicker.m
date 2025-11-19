@interface PKDatePickerImpl_DateOfBirthDatePicker
- (id)initShowingDay:(BOOL)a3 month:(BOOL)a4 year:(BOOL)a5 locale:(id)a6 calendar:(id)a7;
@end

@implementation PKDatePickerImpl_DateOfBirthDatePicker

- (id)initShowingDay:(BOOL)a3 month:(BOOL)a4 year:(BOOL)a5 locale:(id)a6 calendar:(id)a7
{
  v14.receiver = self;
  v14.super_class = PKDatePickerImpl_DateOfBirthDatePicker;
  v7 = [(PKDatePickerImpl_DatePicker *)&v14 initShowingDay:a3 month:a4 year:a5 locale:a6 calendar:a7];
  if (v7)
  {
    v8 = [MEMORY[0x1E695DF00] date];
    v9 = objc_alloc_init(MEMORY[0x1E695DF10]);
    [v9 setYear:-150];
    v10 = [v7 calendar];
    v11 = [v10 dateByAddingComponents:v9 toDate:v8 options:0];

    [v7 setMinimumDate:v11];
    v12 = PKEndOfYear();
    [v7 setMaximumDate:v12];
  }

  return v7;
}

@end
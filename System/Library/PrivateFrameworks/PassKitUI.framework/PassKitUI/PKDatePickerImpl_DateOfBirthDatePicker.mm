@interface PKDatePickerImpl_DateOfBirthDatePicker
- (id)initShowingDay:(BOOL)day month:(BOOL)month year:(BOOL)year locale:(id)locale calendar:(id)calendar;
@end

@implementation PKDatePickerImpl_DateOfBirthDatePicker

- (id)initShowingDay:(BOOL)day month:(BOOL)month year:(BOOL)year locale:(id)locale calendar:(id)calendar
{
  v14.receiver = self;
  v14.super_class = PKDatePickerImpl_DateOfBirthDatePicker;
  v7 = [(PKDatePickerImpl_DatePicker *)&v14 initShowingDay:day month:month year:year locale:locale calendar:calendar];
  if (v7)
  {
    date = [MEMORY[0x1E695DF00] date];
    v9 = objc_alloc_init(MEMORY[0x1E695DF10]);
    [v9 setYear:-150];
    calendar = [v7 calendar];
    v11 = [calendar dateByAddingComponents:v9 toDate:date options:0];

    [v7 setMinimumDate:v11];
    v12 = PKEndOfYear();
    [v7 setMaximumDate:v12];
  }

  return v7;
}

@end
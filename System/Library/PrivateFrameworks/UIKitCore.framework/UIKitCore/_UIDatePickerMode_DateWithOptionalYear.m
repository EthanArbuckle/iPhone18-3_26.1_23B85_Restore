@interface _UIDatePickerMode_DateWithOptionalYear
- (BOOL)_shouldEnableValueForRow:(int64_t)a3 inComponent:(int64_t)a4 calendarUnit:(unint64_t)a5;
- (id)dateComponentsByRestrictingSelectedComponents:(id)a3 withLastManipulatedColumn:(int64_t)a4;
- (id)titleForRow:(int64_t)a3 inComponent:(int64_t)a4;
- (int64_t)numberOfRowsForCalendarUnit:(unint64_t)a3;
- (int64_t)rowForDate:(id)a3 dateComponents:(id)a4 component:(int64_t)a5 currentRow:(int64_t)a6;
- (int64_t)yearForRow:(int64_t)a3;
- (void)_updateSelectedDateComponentsWithNewValueInComponent:(int64_t)a3 usingSelectionBarValue:(BOOL)a4;
@end

@implementation _UIDatePickerMode_DateWithOptionalYear

- (int64_t)numberOfRowsForCalendarUnit:(unint64_t)a3
{
  if (a3 == 4)
  {
    return [(_UIDatePickerMode *)self yearsSinceBaseDate]+ 2;
  }

  v4.receiver = self;
  v4.super_class = _UIDatePickerMode_DateWithOptionalYear;
  return [(_UIDatePickerMode_Date *)&v4 numberOfRowsForCalendarUnit:?];
}

- (id)titleForRow:(int64_t)a3 inComponent:(int64_t)a4
{
  if ([(_UIDatePickerMode *)self calendarUnitForComponent:a4]== 4 && [(_UIDatePickerMode *)self yearsSinceBaseDate]< a3)
  {
    v7 = @"----";
  }

  else
  {
    v9.receiver = self;
    v9.super_class = _UIDatePickerMode_DateWithOptionalYear;
    v7 = [(_UIDatePickerMode *)&v9 titleForRow:a3 inComponent:a4];
  }

  return v7;
}

- (int64_t)yearForRow:(int64_t)a3
{
  if ([(_UIDatePickerMode *)self yearsSinceBaseDate]>= a3)
  {
    v7.receiver = self;
    v7.super_class = _UIDatePickerMode_DateWithOptionalYear;
    return [(_UIDatePickerMode *)&v7 yearForRow:a3];
  }

  else
  {
    v5 = [(_UIDatePickerMode *)self monthForRow:a3];

    return [(_UIDatePickerMode *)self _yearlessYearForMonth:v5];
  }
}

- (int64_t)rowForDate:(id)a3 dateComponents:(id)a4 component:(int64_t)a5 currentRow:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  if ([(_UIDatePickerMode *)self calendarUnitForComponent:a5]!= 4)
  {
    goto LABEL_6;
  }

  v12 = [(_UIDatePickerMode *)self calendar];
  v13 = [v12 components:12 fromDate:v10];

  v14 = [v13 year];
  if (v14 != -[_UIDatePickerMode _yearlessYearForMonth:](self, "_yearlessYearForMonth:", [v13 month]))
  {

LABEL_6:
    v17.receiver = self;
    v17.super_class = _UIDatePickerMode_DateWithOptionalYear;
    v15 = [(_UIDatePickerMode_Date *)&v17 rowForDate:v10 dateComponents:v11 component:a5 currentRow:a6];
    goto LABEL_7;
  }

  v15 = ([(_UIDatePickerMode *)self yearsSinceBaseDate]+ 1);

  if (v15 == -1)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v15;
}

- (void)_updateSelectedDateComponentsWithNewValueInComponent:(int64_t)a3 usingSelectionBarValue:(BOOL)a4
{
  v10.receiver = self;
  v10.super_class = _UIDatePickerMode_DateWithOptionalYear;
  [(_UIDatePickerMode *)&v10 _updateSelectedDateComponentsWithNewValueInComponent:a3 usingSelectionBarValue:a4];
  if (self->super.super._selectedDateComponents && (a3 == 0x7FFFFFFFFFFFFFFFLL || [(_UIDatePickerMode *)self calendarUnitForComponent:a3]== 4))
  {
    v6 = [(_UIDatePickerMode *)self datePickerView];
    v7 = [v6 selectedRowInComponent:{-[_UIDatePickerMode componentForCalendarUnit:](self, "componentForCalendarUnit:", 4)}];

    if (v7 > [(_UIDatePickerMode *)self yearsSinceBaseDate])
    {
      v8 = self->super.super._selectedDateComponents;
      [(NSDateComponents *)v8 setYear:[(_UIDatePickerMode *)self _yearlessYearForMonth:v8]];
      selectedDateComponents = self->super.super._selectedDateComponents;
      self->super.super._selectedDateComponents = v8;
    }
  }
}

- (BOOL)_shouldEnableValueForRow:(int64_t)a3 inComponent:(int64_t)a4 calendarUnit:(unint64_t)a5
{
  if (a5 == 4 && [(_UIDatePickerMode *)self yearsSinceBaseDate]< a3)
  {
    return 1;
  }

  v10.receiver = self;
  v10.super_class = _UIDatePickerMode_DateWithOptionalYear;
  return [(_UIDatePickerMode_Date *)&v10 _shouldEnableValueForRow:a3 inComponent:a4 calendarUnit:a5];
}

- (id)dateComponentsByRestrictingSelectedComponents:(id)a3 withLastManipulatedColumn:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 copy];
  v11.receiver = self;
  v11.super_class = _UIDatePickerMode_DateWithOptionalYear;
  v8 = [(_UIDatePickerMode *)&v11 dateComponentsByRestrictingSelectedComponents:v6 withLastManipulatedColumn:a4];

  v9 = [v7 year];
  if (v9 == -[_UIDatePickerMode _yearlessYearForMonth:](self, "_yearlessYearForMonth:", [v7 month]))
  {
    [v8 setYear:{-[_UIDatePickerMode _yearlessYearForMonth:](self, "_yearlessYearForMonth:", objc_msgSend(v8, "month"))}];
  }

  return v8;
}

@end
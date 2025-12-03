@interface _UIDatePickerMode_DateWithOptionalYear
- (BOOL)_shouldEnableValueForRow:(int64_t)row inComponent:(int64_t)component calendarUnit:(unint64_t)unit;
- (id)dateComponentsByRestrictingSelectedComponents:(id)components withLastManipulatedColumn:(int64_t)column;
- (id)titleForRow:(int64_t)row inComponent:(int64_t)component;
- (int64_t)numberOfRowsForCalendarUnit:(unint64_t)unit;
- (int64_t)rowForDate:(id)date dateComponents:(id)components component:(int64_t)component currentRow:(int64_t)row;
- (int64_t)yearForRow:(int64_t)row;
- (void)_updateSelectedDateComponentsWithNewValueInComponent:(int64_t)component usingSelectionBarValue:(BOOL)value;
@end

@implementation _UIDatePickerMode_DateWithOptionalYear

- (int64_t)numberOfRowsForCalendarUnit:(unint64_t)unit
{
  if (unit == 4)
  {
    return [(_UIDatePickerMode *)self yearsSinceBaseDate]+ 2;
  }

  v4.receiver = self;
  v4.super_class = _UIDatePickerMode_DateWithOptionalYear;
  return [(_UIDatePickerMode_Date *)&v4 numberOfRowsForCalendarUnit:?];
}

- (id)titleForRow:(int64_t)row inComponent:(int64_t)component
{
  if ([(_UIDatePickerMode *)self calendarUnitForComponent:component]== 4 && [(_UIDatePickerMode *)self yearsSinceBaseDate]< row)
  {
    v7 = @"----";
  }

  else
  {
    v9.receiver = self;
    v9.super_class = _UIDatePickerMode_DateWithOptionalYear;
    v7 = [(_UIDatePickerMode *)&v9 titleForRow:row inComponent:component];
  }

  return v7;
}

- (int64_t)yearForRow:(int64_t)row
{
  if ([(_UIDatePickerMode *)self yearsSinceBaseDate]>= row)
  {
    v7.receiver = self;
    v7.super_class = _UIDatePickerMode_DateWithOptionalYear;
    return [(_UIDatePickerMode *)&v7 yearForRow:row];
  }

  else
  {
    v5 = [(_UIDatePickerMode *)self monthForRow:row];

    return [(_UIDatePickerMode *)self _yearlessYearForMonth:v5];
  }
}

- (int64_t)rowForDate:(id)date dateComponents:(id)components component:(int64_t)component currentRow:(int64_t)row
{
  dateCopy = date;
  componentsCopy = components;
  if ([(_UIDatePickerMode *)self calendarUnitForComponent:component]!= 4)
  {
    goto LABEL_6;
  }

  calendar = [(_UIDatePickerMode *)self calendar];
  v13 = [calendar components:12 fromDate:dateCopy];

  year = [v13 year];
  if (year != -[_UIDatePickerMode _yearlessYearForMonth:](self, "_yearlessYearForMonth:", [v13 month]))
  {

LABEL_6:
    v17.receiver = self;
    v17.super_class = _UIDatePickerMode_DateWithOptionalYear;
    v15 = [(_UIDatePickerMode_Date *)&v17 rowForDate:dateCopy dateComponents:componentsCopy component:component currentRow:row];
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

- (void)_updateSelectedDateComponentsWithNewValueInComponent:(int64_t)component usingSelectionBarValue:(BOOL)value
{
  v10.receiver = self;
  v10.super_class = _UIDatePickerMode_DateWithOptionalYear;
  [(_UIDatePickerMode *)&v10 _updateSelectedDateComponentsWithNewValueInComponent:component usingSelectionBarValue:value];
  if (self->super.super._selectedDateComponents && (component == 0x7FFFFFFFFFFFFFFFLL || [(_UIDatePickerMode *)self calendarUnitForComponent:component]== 4))
  {
    datePickerView = [(_UIDatePickerMode *)self datePickerView];
    v7 = [datePickerView selectedRowInComponent:{-[_UIDatePickerMode componentForCalendarUnit:](self, "componentForCalendarUnit:", 4)}];

    if (v7 > [(_UIDatePickerMode *)self yearsSinceBaseDate])
    {
      v8 = self->super.super._selectedDateComponents;
      [(NSDateComponents *)v8 setYear:[(_UIDatePickerMode *)self _yearlessYearForMonth:v8]];
      selectedDateComponents = self->super.super._selectedDateComponents;
      self->super.super._selectedDateComponents = v8;
    }
  }
}

- (BOOL)_shouldEnableValueForRow:(int64_t)row inComponent:(int64_t)component calendarUnit:(unint64_t)unit
{
  if (unit == 4 && [(_UIDatePickerMode *)self yearsSinceBaseDate]< row)
  {
    return 1;
  }

  v10.receiver = self;
  v10.super_class = _UIDatePickerMode_DateWithOptionalYear;
  return [(_UIDatePickerMode_Date *)&v10 _shouldEnableValueForRow:row inComponent:component calendarUnit:unit];
}

- (id)dateComponentsByRestrictingSelectedComponents:(id)components withLastManipulatedColumn:(int64_t)column
{
  componentsCopy = components;
  v7 = [componentsCopy copy];
  v11.receiver = self;
  v11.super_class = _UIDatePickerMode_DateWithOptionalYear;
  v8 = [(_UIDatePickerMode *)&v11 dateComponentsByRestrictingSelectedComponents:componentsCopy withLastManipulatedColumn:column];

  year = [v7 year];
  if (year == -[_UIDatePickerMode _yearlessYearForMonth:](self, "_yearlessYearForMonth:", [v7 month]))
  {
    [v8 setYear:{-[_UIDatePickerMode _yearlessYearForMonth:](self, "_yearlessYearForMonth:", objc_msgSend(v8, "month"))}];
  }

  return v8;
}

@end
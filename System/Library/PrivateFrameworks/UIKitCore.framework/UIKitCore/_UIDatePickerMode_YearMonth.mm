@interface _UIDatePickerMode_YearMonth
- (id)localizedFormatString;
- (unint64_t)nextUnitLargerThanUnit:(unint64_t)unit;
- (unint64_t)nextUnitSmallerThanUnit:(unint64_t)unit;
@end

@implementation _UIDatePickerMode_YearMonth

- (unint64_t)nextUnitLargerThanUnit:(unint64_t)unit
{
  if (unit == 8)
  {
    return 4;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (unint64_t)nextUnitSmallerThanUnit:(unint64_t)unit
{
  if (unit == 4)
  {
    return 8;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (id)localizedFormatString
{
  localizedFormatString = self->super.super._localizedFormatString;
  if (!localizedFormatString)
  {
    locale = [(_UIDatePickerMode *)self locale];
    v5 = _UIDatePickerDateFormatFromTemplate(@"MMMMy", locale, [(_UIDatePickerMode *)self followsSystemHourCycle]);

    [(_UIDatePickerMode *)self setLocalizedFormatString:v5];
    localizedFormatString = self->super.super._localizedFormatString;
  }

  return localizedFormatString;
}

@end
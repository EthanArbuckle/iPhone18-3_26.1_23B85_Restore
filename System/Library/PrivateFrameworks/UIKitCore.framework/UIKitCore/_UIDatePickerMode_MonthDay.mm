@interface _UIDatePickerMode_MonthDay
- (unint64_t)nextUnitLargerThanUnit:(unint64_t)unit;
- (unint64_t)nextUnitSmallerThanUnit:(unint64_t)unit;
@end

@implementation _UIDatePickerMode_MonthDay

- (unint64_t)nextUnitLargerThanUnit:(unint64_t)unit
{
  if (unit == 16)
  {
    return 8;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (unint64_t)nextUnitSmallerThanUnit:(unint64_t)unit
{
  if (unit == 8)
  {
    return 16;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

@end
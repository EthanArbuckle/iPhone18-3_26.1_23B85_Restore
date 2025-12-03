@interface _UIDatePickerChineseCalendar
+ (id)cyclicalFromRelated:(id)related;
+ (id)relatedFromCyclical:(id)cyclical;
- (_NSRange)maximumRangeOfUnit:(unint64_t)unit;
- (_NSRange)rangeOfUnit:(unint64_t)unit inUnit:(unint64_t)inUnit forDate:(id)date;
- (_UIDatePickerChineseCalendar)initWithCalendar:(id)calendar;
- (id)components:(unint64_t)components fromDate:(id)date;
- (id)components:(unint64_t)components fromDate:(id)date toDate:(id)toDate options:(unint64_t)options;
- (id)dateFromComponents:(id)components;
@end

@implementation _UIDatePickerChineseCalendar

+ (id)relatedFromCyclical:(id)cyclical
{
  if ([cyclical year] != 0x7FFFFFFFFFFFFFFFLL || (v4 = cyclical, objc_msgSend(cyclical, "month") != 0x7FFFFFFFFFFFFFFFLL))
  {
    v4 = [cyclical copy];
  }

  if ([cyclical year] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v4 setEra:1];
    v5 = [cyclical era];
    v6 = [cyclical year] + 60 * v5;
    if (v6 == 112)
    {
LABEL_6:
      v7 = 1604;
    }

    else
    {
      v8 = 0;
      while (v8 != 11)
      {
        v9 = chineseLeapMonthExtendedYears[v8++ + 2];
        if (v9 == v6 - 61)
        {
          if (v8 < 0xC)
          {
            goto LABEL_6;
          }

          break;
        }
      }

      v7 = v6 - 2697;
    }

    [v4 setYear:v7];
  }

  if ([cyclical month] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v4 setMonth:{2 * objc_msgSend(cyclical, "month") - (objc_msgSend(cyclical, "isLeapMonth") ^ 1)}];
    [v4 setLeapMonth:0];
  }

  return v4;
}

+ (id)cyclicalFromRelated:(id)related
{
  month = [related month];
  v7 = (month - 1) / 2 + 1;
  year = [related year];
  if (year != 0x7FFFFFFFFFFFFFFFLL || (v9 = related, month != 0x7FFFFFFFFFFFFFFFLL))
  {
    v9 = [related copy];
    if (month == 0x7FFFFFFFFFFFFFFFLL && year == 1604)
    {
      [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    }

    else
    {
      if (year == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_10;
      }

      if (year != 1604)
      {
        v10 = year + 2636;
        goto LABEL_9;
      }
    }

    v10 = chineseLeapMonthExtendedYears[v7];
LABEL_9:
    v11 = v10 % 60;
    [v9 setEra:v10 / 60 + 1];
    [v9 setYear:v11 + 1];
  }

LABEL_10:
  if ([related month] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v9 setMonth:v7];
    [v9 setLeapMonth:(month & 1) == 0];
  }

  return v9;
}

- (_UIDatePickerChineseCalendar)initWithCalendar:(id)calendar
{
  v6.receiver = self;
  v6.super_class = _UIDatePickerChineseCalendar;
  -[_UIDatePickerChineseCalendar initWithCalendarIdentifier:](&v6, sel_initWithCalendarIdentifier_, [calendar calendarIdentifier]);
  if (self)
  {
    [(_UIDatePickerChineseCalendar *)self setRealCalendar:calendar];
  }

  return self;
}

- (id)dateFromComponents:(id)components
{
  realCalendar = self->_realCalendar;
  v4 = [objc_opt_class() cyclicalFromRelated:components];

  return [(NSCalendar *)realCalendar dateFromComponents:v4];
}

- (id)components:(unint64_t)components fromDate:(id)date toDate:(id)toDate options:(unint64_t)options
{
  v6 = [(NSCalendar *)self->_realCalendar components:components fromDate:date toDate:toDate options:options];
  if ([(NSDateComponents *)v6 year]!= 0x7FFFFFFFFFFFFFFFLL && [(NSDateComponents *)v6 era]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSDateComponents *)v6 setYear:[(NSDateComponents *)v6 year]+ 60 * [(NSDateComponents *)v6 era]];
    [(NSDateComponents *)v6 setEra:0];
  }

  return v6;
}

- (id)components:(unint64_t)components fromDate:(id)date
{
  if ((components & 8) != 0)
  {
    v7 = 6;
  }

  else
  {
    v7 = (components >> 1) & 2;
  }

  v8 = objc_opt_class();
  v9 = [(NSCalendar *)self->_realCalendar components:v7 | components fromDate:date];

  return [v8 relatedFromCyclical:v9];
}

- (_NSRange)maximumRangeOfUnit:(unint64_t)unit
{
  if (unit == 2)
  {
    goto LABEL_4;
  }

  if (unit != 8)
  {
    if (unit != 4)
    {
      realCalendar = self->_realCalendar;
      goto LABEL_7;
    }

LABEL_4:
    realCalendar = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
LABEL_7:
    v5 = [(NSCalendar *)realCalendar maximumRangeOfUnit:unit];
    goto LABEL_8;
  }

  v5 = [(NSCalendar *)self->_realCalendar maximumRangeOfUnit:8];
  v7 = 2 * v6;
LABEL_8:
  result.length = v7;
  result.location = v5;
  return result;
}

- (_NSRange)rangeOfUnit:(unint64_t)unit inUnit:(unint64_t)inUnit forDate:(id)date
{
  if (unit == 4 && inUnit == 2)
  {
    realCalendar = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
    unit = 4;
    inUnit = 2;
  }

  else
  {
    realCalendar = self->_realCalendar;
    if (unit == 8 && inUnit == 4)
    {
      v7 = [(NSCalendar *)realCalendar rangeOfUnit:8 inUnit:4 forDate:date];
      v8 = 2 * v9;
      goto LABEL_8;
    }
  }

  v7 = [(NSCalendar *)realCalendar rangeOfUnit:unit inUnit:inUnit forDate:date];
LABEL_8:
  result.length = v8;
  result.location = v7;
  return result;
}

@end
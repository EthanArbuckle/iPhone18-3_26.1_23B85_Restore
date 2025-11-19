@interface _UIDatePickerChineseCalendar
+ (id)cyclicalFromRelated:(id)a3;
+ (id)relatedFromCyclical:(id)a3;
- (_NSRange)maximumRangeOfUnit:(unint64_t)a3;
- (_NSRange)rangeOfUnit:(unint64_t)a3 inUnit:(unint64_t)a4 forDate:(id)a5;
- (_UIDatePickerChineseCalendar)initWithCalendar:(id)a3;
- (id)components:(unint64_t)a3 fromDate:(id)a4;
- (id)components:(unint64_t)a3 fromDate:(id)a4 toDate:(id)a5 options:(unint64_t)a6;
- (id)dateFromComponents:(id)a3;
@end

@implementation _UIDatePickerChineseCalendar

+ (id)relatedFromCyclical:(id)a3
{
  if ([a3 year] != 0x7FFFFFFFFFFFFFFFLL || (v4 = a3, objc_msgSend(a3, "month") != 0x7FFFFFFFFFFFFFFFLL))
  {
    v4 = [a3 copy];
  }

  if ([a3 year] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v4 setEra:1];
    v5 = [a3 era];
    v6 = [a3 year] + 60 * v5;
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

  if ([a3 month] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v4 setMonth:{2 * objc_msgSend(a3, "month") - (objc_msgSend(a3, "isLeapMonth") ^ 1)}];
    [v4 setLeapMonth:0];
  }

  return v4;
}

+ (id)cyclicalFromRelated:(id)a3
{
  v6 = [a3 month];
  v7 = (v6 - 1) / 2 + 1;
  v8 = [a3 year];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL || (v9 = a3, v6 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v9 = [a3 copy];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL && v8 == 1604)
    {
      [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    }

    else
    {
      if (v8 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_10;
      }

      if (v8 != 1604)
      {
        v10 = v8 + 2636;
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
  if ([a3 month] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v9 setMonth:v7];
    [v9 setLeapMonth:(v6 & 1) == 0];
  }

  return v9;
}

- (_UIDatePickerChineseCalendar)initWithCalendar:(id)a3
{
  v6.receiver = self;
  v6.super_class = _UIDatePickerChineseCalendar;
  -[_UIDatePickerChineseCalendar initWithCalendarIdentifier:](&v6, sel_initWithCalendarIdentifier_, [a3 calendarIdentifier]);
  if (self)
  {
    [(_UIDatePickerChineseCalendar *)self setRealCalendar:a3];
  }

  return self;
}

- (id)dateFromComponents:(id)a3
{
  realCalendar = self->_realCalendar;
  v4 = [objc_opt_class() cyclicalFromRelated:a3];

  return [(NSCalendar *)realCalendar dateFromComponents:v4];
}

- (id)components:(unint64_t)a3 fromDate:(id)a4 toDate:(id)a5 options:(unint64_t)a6
{
  v6 = [(NSCalendar *)self->_realCalendar components:a3 fromDate:a4 toDate:a5 options:a6];
  if ([(NSDateComponents *)v6 year]!= 0x7FFFFFFFFFFFFFFFLL && [(NSDateComponents *)v6 era]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSDateComponents *)v6 setYear:[(NSDateComponents *)v6 year]+ 60 * [(NSDateComponents *)v6 era]];
    [(NSDateComponents *)v6 setEra:0];
  }

  return v6;
}

- (id)components:(unint64_t)a3 fromDate:(id)a4
{
  if ((a3 & 8) != 0)
  {
    v7 = 6;
  }

  else
  {
    v7 = (a3 >> 1) & 2;
  }

  v8 = objc_opt_class();
  v9 = [(NSCalendar *)self->_realCalendar components:v7 | a3 fromDate:a4];

  return [v8 relatedFromCyclical:v9];
}

- (_NSRange)maximumRangeOfUnit:(unint64_t)a3
{
  if (a3 == 2)
  {
    goto LABEL_4;
  }

  if (a3 != 8)
  {
    if (a3 != 4)
    {
      realCalendar = self->_realCalendar;
      goto LABEL_7;
    }

LABEL_4:
    realCalendar = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
LABEL_7:
    v5 = [(NSCalendar *)realCalendar maximumRangeOfUnit:a3];
    goto LABEL_8;
  }

  v5 = [(NSCalendar *)self->_realCalendar maximumRangeOfUnit:8];
  v7 = 2 * v6;
LABEL_8:
  result.length = v7;
  result.location = v5;
  return result;
}

- (_NSRange)rangeOfUnit:(unint64_t)a3 inUnit:(unint64_t)a4 forDate:(id)a5
{
  if (a3 == 4 && a4 == 2)
  {
    realCalendar = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
    a3 = 4;
    a4 = 2;
  }

  else
  {
    realCalendar = self->_realCalendar;
    if (a3 == 8 && a4 == 4)
    {
      v7 = [(NSCalendar *)realCalendar rangeOfUnit:8 inUnit:4 forDate:a5];
      v8 = 2 * v9;
      goto LABEL_8;
    }
  }

  v7 = [(NSCalendar *)realCalendar rangeOfUnit:a3 inUnit:a4 forDate:a5];
LABEL_8:
  result.length = v8;
  result.location = v7;
  return result;
}

@end
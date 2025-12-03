@interface _REPeriodOfDay
- (BOOL)isEqual:(id)equal;
- (_REPeriodOfDay)initWithInterval:(id)interval periodOfDay:(unint64_t)day;
@end

@implementation _REPeriodOfDay

- (_REPeriodOfDay)initWithInterval:(id)interval periodOfDay:(unint64_t)day
{
  intervalCopy = interval;
  v11.receiver = self;
  v11.super_class = _REPeriodOfDay;
  v7 = [(_REPeriodOfDay *)&v11 init];
  if (v7)
  {
    v8 = [intervalCopy copy];
    interval = v7->_interval;
    v7->_interval = v8;

    v7->_periodOfDay = day;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5[2];
    v7 = self->_interval;
    v8 = v7;
    if (v7 == v6)
    {
    }

    else
    {
      v9 = [(NSDateInterval *)v7 isEqual:v6];

      if (!v9)
      {
        v10 = 0;
LABEL_8:

        goto LABEL_9;
      }
    }

    v10 = self->_periodOfDay == v5[1];
    goto LABEL_8;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

@end
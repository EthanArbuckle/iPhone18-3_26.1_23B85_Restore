@interface SCLHistoryGroupKey
- (BOOL)isEqual:(id)equal;
- (SCLHistoryGroupKey)initWithCalendar:(id)calendar referenceDate:(id)date;
- (id)description;
- (unint64_t)hash;
@end

@implementation SCLHistoryGroupKey

- (SCLHistoryGroupKey)initWithCalendar:(id)calendar referenceDate:(id)date
{
  calendarCopy = calendar;
  dateCopy = date;
  v12.receiver = self;
  v12.super_class = SCLHistoryGroupKey;
  v9 = [(SCLHistoryGroupKey *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_calendar, calendar);
    objc_storeStrong(&v10->_referenceDate, date);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      calendar = [(SCLHistoryGroupKey *)equalCopy calendar];
      calendar2 = [(SCLHistoryGroupKey *)self calendar];
      if ([calendar isEqual:calendar2])
      {
        referenceDate = [(SCLHistoryGroupKey *)equalCopy referenceDate];
        referenceDate2 = [(SCLHistoryGroupKey *)self referenceDate];
        v9 = [referenceDate isEqual:referenceDate2];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  calendar = [(SCLHistoryGroupKey *)self calendar];
  v4 = [calendar hash];
  referenceDate = [(SCLHistoryGroupKey *)self referenceDate];
  v6 = [referenceDate hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  calendarIdentifier = [(NSCalendar *)self->_calendar calendarIdentifier];
  timeZone = [(NSCalendar *)self->_calendar timeZone];
  v8 = [v3 stringWithFormat:@"<%@ %p %@; %@; referenceDate=%@>", v5, self, calendarIdentifier, timeZone, self->_referenceDate];;

  return v8;
}

@end
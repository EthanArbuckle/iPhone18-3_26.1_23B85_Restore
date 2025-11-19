@interface SCLHistoryGroupKey
- (BOOL)isEqual:(id)a3;
- (SCLHistoryGroupKey)initWithCalendar:(id)a3 referenceDate:(id)a4;
- (id)description;
- (unint64_t)hash;
@end

@implementation SCLHistoryGroupKey

- (SCLHistoryGroupKey)initWithCalendar:(id)a3 referenceDate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SCLHistoryGroupKey;
  v9 = [(SCLHistoryGroupKey *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_calendar, a3);
    objc_storeStrong(&v10->_referenceDate, a4);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(SCLHistoryGroupKey *)v4 calendar];
      v6 = [(SCLHistoryGroupKey *)self calendar];
      if ([v5 isEqual:v6])
      {
        v7 = [(SCLHistoryGroupKey *)v4 referenceDate];
        v8 = [(SCLHistoryGroupKey *)self referenceDate];
        v9 = [v7 isEqual:v8];
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
  v3 = [(SCLHistoryGroupKey *)self calendar];
  v4 = [v3 hash];
  v5 = [(SCLHistoryGroupKey *)self referenceDate];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSCalendar *)self->_calendar calendarIdentifier];
  v7 = [(NSCalendar *)self->_calendar timeZone];
  v8 = [v3 stringWithFormat:@"<%@ %p %@; %@; referenceDate=%@>", v5, self, v6, v7, self->_referenceDate];;

  return v8;
}

@end
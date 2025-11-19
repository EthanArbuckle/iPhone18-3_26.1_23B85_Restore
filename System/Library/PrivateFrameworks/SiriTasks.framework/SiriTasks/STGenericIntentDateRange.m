@interface STGenericIntentDateRange
- (STGenericIntentDateRange)initWithCoder:(id)a3;
- (STGenericIntentDateRange)initWithStartDate:(id)a3 endDate:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STGenericIntentDateRange

- (STGenericIntentDateRange)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = STGenericIntentDateRange;
  v5 = [(STGenericIntentDateRange *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v10;

    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"_name"];
  [v5 encodeObject:self->_startDate forKey:@"_startDate"];
  [v5 encodeObject:self->_endDate forKey:@"_endDate"];
}

- (STGenericIntentDateRange)initWithStartDate:(id)a3 endDate:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([v7 compare:v8] == 1)
  {
    v9 = 0;
  }

  else
  {
    v18.receiver = self;
    v18.super_class = STGenericIntentDateRange;
    v10 = [(STGenericIntentDateRange *)&v18 init];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_startDate, a3);
      if (v8 && ![v7 isEqualToDate:v8])
      {
        v16 = v8;
        endDate = v11->_endDate;
        v11->_endDate = v16;
      }

      else
      {
        v12 = MEMORY[0x277CBEAA8];
        [(NSDate *)v11->_startDate timeIntervalSince1970];
        endDate = [v12 dateWithTimeIntervalSince1970:?];
        v14 = [endDate dateByAddingTimeInterval:86400.0];
        v15 = v11->_endDate;
        v11->_endDate = v14;
      }
    }

    self = v11;
    v9 = self;
  }

  return v9;
}

@end
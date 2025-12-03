@interface STGenericIntentDateRange
- (STGenericIntentDateRange)initWithCoder:(id)coder;
- (STGenericIntentDateRange)initWithStartDate:(id)date endDate:(id)endDate;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STGenericIntentDateRange

- (STGenericIntentDateRange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = STGenericIntentDateRange;
  v5 = [(STGenericIntentDateRange *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v10;

    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"_name"];
  [coderCopy encodeObject:self->_startDate forKey:@"_startDate"];
  [coderCopy encodeObject:self->_endDate forKey:@"_endDate"];
}

- (STGenericIntentDateRange)initWithStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  if ([dateCopy compare:endDateCopy] == 1)
  {
    selfCopy = 0;
  }

  else
  {
    v18.receiver = self;
    v18.super_class = STGenericIntentDateRange;
    v10 = [(STGenericIntentDateRange *)&v18 init];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_startDate, date);
      if (endDateCopy && ![dateCopy isEqualToDate:endDateCopy])
      {
        v16 = endDateCopy;
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
    selfCopy = self;
  }

  return selfCopy;
}

@end
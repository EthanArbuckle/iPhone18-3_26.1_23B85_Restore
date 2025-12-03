@interface REDateContentProvider
+ (id)dateContentProviderWithDate:(id)date units:(unint64_t)units timeZone:(id)zone;
- (BOOL)isEqual:(id)equal;
- (REDateContentProvider)initWithCoder:(id)coder;
- (REDateContentProvider)initWithDate:(id)date units:(unint64_t)units timeZone:(id)zone;
- (id)attributedStringRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REDateContentProvider

+ (id)dateContentProviderWithDate:(id)date units:(unint64_t)units timeZone:(id)zone
{
  zoneCopy = zone;
  dateCopy = date;
  v10 = [[self alloc] initWithDate:dateCopy units:units timeZone:zoneCopy];

  return v10;
}

- (REDateContentProvider)initWithDate:(id)date units:(unint64_t)units timeZone:(id)zone
{
  dateCopy = date;
  zoneCopy = zone;
  v16.receiver = self;
  v16.super_class = REDateContentProvider;
  v10 = [(REDateContentProvider *)&v16 init];
  if (v10)
  {
    v11 = [dateCopy copy];
    date = v10->_date;
    v10->_date = v11;

    v10->_units = units;
    v13 = [zoneCopy copy];
    timeZone = v10->_timeZone;
    v10->_timeZone = v13;
  }

  return v10;
}

- (id)attributedStringRepresentation
{
  v3 = objc_alloc(MEMORY[0x277CCA898]);
  v4 = MEMORY[0x277CCABB0];
  [(NSDate *)self->_date timeIntervalSinceReferenceDate];
  v5 = [v4 numberWithDouble:?];
  stringValue = [v5 stringValue];
  v7 = [v3 initWithString:stringValue];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  date = self->_date;
  units = self->_units;
  timeZone = self->_timeZone;

  return [v4 initWithDate:date units:units timeZone:timeZone];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if ([v5 units] == self->_units)
    {
      date = [v5 date];
      v7 = date;
      if (date == self->_date || [(NSDate *)date isEqual:?])
      {
        timeZone = [v5 timeZone];
        v9 = timeZone;
        if (timeZone == self->_timeZone)
        {
          v10 = 1;
        }

        else
        {
          v10 = [(NSTimeZone *)timeZone isEqual:?];
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  date = self->_date;
  coderCopy = coder;
  [coderCopy encodeObject:date forKey:@"date"];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_units];
  [coderCopy encodeObject:v5 forKey:@"units"];

  [coderCopy encodeObject:self->_timeZone forKey:@"timeZone"];
}

- (REDateContentProvider)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"units"];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"text"];

  v9 = [(REDateContentProvider *)self initWithDate:v5 units:unsignedIntegerValue timeZone:v8];
  return v9;
}

@end
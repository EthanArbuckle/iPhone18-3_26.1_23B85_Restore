@interface RETimeIntervalContentProvider
+ (id)timeIntervalContentProviderWithStartDate:(id)date endDate:(id)endDate timeZone:(id)zone;
- (BOOL)isEqual:(id)equal;
- (RETimeIntervalContentProvider)initWithCoder:(id)coder;
- (RETimeIntervalContentProvider)initWithStartDate:(id)date endDate:(id)endDate timeZone:(id)zone;
- (id)attributedStringRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RETimeIntervalContentProvider

+ (id)timeIntervalContentProviderWithStartDate:(id)date endDate:(id)endDate timeZone:(id)zone
{
  zoneCopy = zone;
  endDateCopy = endDate;
  dateCopy = date;
  v11 = [[self alloc] initWithStartDate:dateCopy endDate:endDateCopy timeZone:zoneCopy];

  return v11;
}

- (RETimeIntervalContentProvider)initWithStartDate:(id)date endDate:(id)endDate timeZone:(id)zone
{
  dateCopy = date;
  endDateCopy = endDate;
  zoneCopy = zone;
  v19.receiver = self;
  v19.super_class = RETimeIntervalContentProvider;
  v11 = [(RETimeIntervalContentProvider *)&v19 init];
  if (v11)
  {
    v12 = [dateCopy copy];
    startDate = v11->_startDate;
    v11->_startDate = v12;

    v14 = [endDateCopy copy];
    endDate = v11->_endDate;
    v11->_endDate = v14;

    v16 = [zoneCopy copy];
    timeZone = v11->_timeZone;
    v11->_timeZone = v16;
  }

  return v11;
}

- (id)attributedStringRepresentation
{
  v3 = objc_alloc(MEMORY[0x277CCA898]);
  v4 = MEMORY[0x277CCACA8];
  v5 = MEMORY[0x277CCABB0];
  [(NSDate *)self->_startDate timeIntervalSinceReferenceDate];
  v6 = [v5 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [(NSDate *)self->_endDate timeIntervalSinceReferenceDate];
  v8 = [v7 numberWithDouble:?];
  v9 = [v4 stringWithFormat:@"%@-%@", v6, v8];
  v10 = [v3 initWithString:v9];

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  startDate = self->_startDate;
  endDate = self->_endDate;
  timeZone = self->_timeZone;

  return [v4 initWithStartDate:startDate endDate:endDate timeZone:timeZone];
}

- (unint64_t)hash
{
  v3 = [(NSDate *)self->_startDate hash];
  v4 = [(NSDate *)self->_endDate hash]^ v3;
  return v4 ^ [(NSTimeZone *)self->_timeZone hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    startDate = [v5 startDate];
    v7 = startDate;
    if (startDate == self->_startDate || [(NSDate *)startDate isEqual:?])
    {
      endDate = [v5 endDate];
      v9 = endDate;
      if (endDate == self->_endDate || [(NSDate *)endDate isEqual:?])
      {
        timeZone = [v5 timeZone];
        v11 = timeZone;
        if (timeZone == self->_timeZone)
        {
          v12 = 1;
        }

        else
        {
          v12 = [(NSTimeZone *)timeZone isEqual:?];
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  startDate = self->_startDate;
  coderCopy = coder;
  [coderCopy encodeObject:startDate forKey:@"startDate"];
  [coderCopy encodeObject:self->_endDate forKey:@"endDate"];
  [coderCopy encodeObject:self->_timeZone forKey:@"timeZone"];
}

- (RETimeIntervalContentProvider)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeZone"];

  v8 = [(RETimeIntervalContentProvider *)self initWithStartDate:v5 endDate:v6 timeZone:v7];
  return v8;
}

@end
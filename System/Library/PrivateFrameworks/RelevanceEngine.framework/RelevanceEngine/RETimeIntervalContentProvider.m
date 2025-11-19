@interface RETimeIntervalContentProvider
+ (id)timeIntervalContentProviderWithStartDate:(id)a3 endDate:(id)a4 timeZone:(id)a5;
- (BOOL)isEqual:(id)a3;
- (RETimeIntervalContentProvider)initWithCoder:(id)a3;
- (RETimeIntervalContentProvider)initWithStartDate:(id)a3 endDate:(id)a4 timeZone:(id)a5;
- (id)attributedStringRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RETimeIntervalContentProvider

+ (id)timeIntervalContentProviderWithStartDate:(id)a3 endDate:(id)a4 timeZone:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithStartDate:v10 endDate:v9 timeZone:v8];

  return v11;
}

- (RETimeIntervalContentProvider)initWithStartDate:(id)a3 endDate:(id)a4 timeZone:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = RETimeIntervalContentProvider;
  v11 = [(RETimeIntervalContentProvider *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    startDate = v11->_startDate;
    v11->_startDate = v12;

    v14 = [v9 copy];
    endDate = v11->_endDate;
    v11->_endDate = v14;

    v16 = [v10 copy];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 startDate];
    v7 = v6;
    if (v6 == self->_startDate || [(NSDate *)v6 isEqual:?])
    {
      v8 = [v5 endDate];
      v9 = v8;
      if (v8 == self->_endDate || [(NSDate *)v8 isEqual:?])
      {
        v10 = [v5 timeZone];
        v11 = v10;
        if (v10 == self->_timeZone)
        {
          v12 = 1;
        }

        else
        {
          v12 = [(NSTimeZone *)v10 isEqual:?];
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

- (void)encodeWithCoder:(id)a3
{
  startDate = self->_startDate;
  v5 = a3;
  [v5 encodeObject:startDate forKey:@"startDate"];
  [v5 encodeObject:self->_endDate forKey:@"endDate"];
  [v5 encodeObject:self->_timeZone forKey:@"timeZone"];
}

- (RETimeIntervalContentProvider)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeZone"];

  v8 = [(RETimeIntervalContentProvider *)self initWithStartDate:v5 endDate:v6 timeZone:v7];
  return v8;
}

@end
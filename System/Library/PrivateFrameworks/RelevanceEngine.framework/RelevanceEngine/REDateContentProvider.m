@interface REDateContentProvider
+ (id)dateContentProviderWithDate:(id)a3 units:(unint64_t)a4 timeZone:(id)a5;
- (BOOL)isEqual:(id)a3;
- (REDateContentProvider)initWithCoder:(id)a3;
- (REDateContentProvider)initWithDate:(id)a3 units:(unint64_t)a4 timeZone:(id)a5;
- (id)attributedStringRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REDateContentProvider

+ (id)dateContentProviderWithDate:(id)a3 units:(unint64_t)a4 timeZone:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[a1 alloc] initWithDate:v9 units:a4 timeZone:v8];

  return v10;
}

- (REDateContentProvider)initWithDate:(id)a3 units:(unint64_t)a4 timeZone:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = REDateContentProvider;
  v10 = [(REDateContentProvider *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    date = v10->_date;
    v10->_date = v11;

    v10->_units = a4;
    v13 = [v9 copy];
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
  v6 = [v5 stringValue];
  v7 = [v3 initWithString:v6];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  date = self->_date;
  units = self->_units;
  timeZone = self->_timeZone;

  return [v4 initWithDate:date units:units timeZone:timeZone];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if ([v5 units] == self->_units)
    {
      v6 = [v5 date];
      v7 = v6;
      if (v6 == self->_date || [(NSDate *)v6 isEqual:?])
      {
        v8 = [v5 timeZone];
        v9 = v8;
        if (v8 == self->_timeZone)
        {
          v10 = 1;
        }

        else
        {
          v10 = [(NSTimeZone *)v8 isEqual:?];
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

- (void)encodeWithCoder:(id)a3
{
  date = self->_date;
  v6 = a3;
  [v6 encodeObject:date forKey:@"date"];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_units];
  [v6 encodeObject:v5 forKey:@"units"];

  [v6 encodeObject:self->_timeZone forKey:@"timeZone"];
}

- (REDateContentProvider)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"units"];
  v7 = [v6 unsignedIntegerValue];

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"text"];

  v9 = [(REDateContentProvider *)self initWithDate:v5 units:v7 timeZone:v8];
  return v9;
}

@end
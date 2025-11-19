@interface RERelativeDateContentProvider
+ (id)relativeDateContentProviderWithDate:(id)a3 style:(int64_t)a4 units:(unint64_t)a5;
- (BOOL)isEqual:(id)a3;
- (RERelativeDateContentProvider)initWithCoder:(id)a3;
- (RERelativeDateContentProvider)initWithDate:(id)a3 style:(int64_t)a4 units:(unint64_t)a5;
- (id)attributedStringRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RERelativeDateContentProvider

+ (id)relativeDateContentProviderWithDate:(id)a3 style:(int64_t)a4 units:(unint64_t)a5
{
  v7 = a3;
  v8 = [[RERelativeDateContentProvider alloc] initWithDate:v7 style:a4 units:a5];

  return v8;
}

- (RERelativeDateContentProvider)initWithDate:(id)a3 style:(int64_t)a4 units:(unint64_t)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = RERelativeDateContentProvider;
  v9 = [(RERelativeDateContentProvider *)&v13 init];
  if (v9)
  {
    v10 = [v8 copy];
    date = v9->_date;
    v9->_date = v10;

    v9->_style = a4;
    v9->_units = a5;
  }

  return v9;
}

- (id)attributedStringRepresentation
{
  v3 = objc_alloc(MEMORY[0x277CCA898]);
  v4 = MEMORY[0x277CCABB0];
  [(NSDate *)self->_date timeIntervalSinceNow];
  v5 = [v4 numberWithDouble:?];
  v6 = [v5 stringValue];
  v7 = [v3 initWithString:v6];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  date = self->_date;
  style = self->_style;
  units = self->_units;

  return [v4 initWithDate:date style:style units:units];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if ([v5 units] == self->_units && objc_msgSend(v5, "style") == self->_style)
    {
      v6 = [v5 date];
      v7 = v6;
      if (v6 == self->_date)
      {
        v8 = 1;
      }

      else
      {
        v8 = [(NSDate *)v6 isEqual:?];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  date = self->_date;
  v5 = a3;
  [v5 encodeObject:date forKey:@"date"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_units];
  [v5 encodeObject:v6 forKey:@"units"];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:self->_style];
  [v5 encodeObject:v7 forKey:@"style"];
}

- (RERelativeDateContentProvider)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"units"];
  v7 = [v6 unsignedIntegerValue];

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"style"];

  v9 = [v8 unsignedIntegerValue];
  v10 = [(RERelativeDateContentProvider *)self initWithDate:v5 style:v9 units:v7];

  return v10;
}

@end
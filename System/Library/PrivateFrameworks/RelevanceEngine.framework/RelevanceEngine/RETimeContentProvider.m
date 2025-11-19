@interface RETimeContentProvider
+ (id)timeContentProviderWithDate:(id)a3 timeZone:(id)a4;
- (BOOL)isEqual:(id)a3;
- (RETimeContentProvider)initWithCoder:(id)a3;
- (RETimeContentProvider)initWithDate:(id)a3 timeZone:(id)a4;
- (id)attributedStringRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RETimeContentProvider

+ (id)timeContentProviderWithDate:(id)a3 timeZone:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithDate:v7 timeZone:v6];

  return v8;
}

- (RETimeContentProvider)initWithDate:(id)a3 timeZone:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = RETimeContentProvider;
  v8 = [(RETimeContentProvider *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    date = v8->_date;
    v8->_date = v9;

    v11 = [v7 copy];
    timeZone = v8->_timeZone;
    v8->_timeZone = v11;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  date = self->_date;
  timeZone = self->_timeZone;

  return [v4 initWithDate:date timeZone:timeZone];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  date = self->_date;
  v5 = a3;
  [v5 encodeObject:date forKey:@"date"];
  [v5 encodeObject:self->_timeZone forKey:@"timeZone"];
}

- (RETimeContentProvider)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"text"];

  v7 = [(RETimeContentProvider *)self initWithDate:v5 timeZone:v6];
  return v7;
}

- (id)attributedStringRepresentation
{
  if (attributedStringRepresentation_onceToken != -1)
  {
    [RETimeContentProvider attributedStringRepresentation];
  }

  v3 = objc_alloc(MEMORY[0x277CCA898]);
  v4 = [attributedStringRepresentation_formatter stringFromDate:self->_date];
  v5 = [v3 initWithString:v4];

  return v5;
}

uint64_t __55__RETimeContentProvider_attributedStringRepresentation__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = attributedStringRepresentation_formatter;
  attributedStringRepresentation_formatter = v0;

  [attributedStringRepresentation_formatter setTimeStyle:2];
  v2 = attributedStringRepresentation_formatter;

  return [v2 setDateStyle:0];
}

@end
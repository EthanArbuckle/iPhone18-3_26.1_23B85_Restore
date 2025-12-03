@interface RETimeContentProvider
+ (id)timeContentProviderWithDate:(id)date timeZone:(id)zone;
- (BOOL)isEqual:(id)equal;
- (RETimeContentProvider)initWithCoder:(id)coder;
- (RETimeContentProvider)initWithDate:(id)date timeZone:(id)zone;
- (id)attributedStringRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RETimeContentProvider

+ (id)timeContentProviderWithDate:(id)date timeZone:(id)zone
{
  zoneCopy = zone;
  dateCopy = date;
  v8 = [[self alloc] initWithDate:dateCopy timeZone:zoneCopy];

  return v8;
}

- (RETimeContentProvider)initWithDate:(id)date timeZone:(id)zone
{
  dateCopy = date;
  zoneCopy = zone;
  v14.receiver = self;
  v14.super_class = RETimeContentProvider;
  v8 = [(RETimeContentProvider *)&v14 init];
  if (v8)
  {
    v9 = [dateCopy copy];
    date = v8->_date;
    v8->_date = v9;

    v11 = [zoneCopy copy];
    timeZone = v8->_timeZone;
    v8->_timeZone = v11;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  date = self->_date;
  timeZone = self->_timeZone;

  return [v4 initWithDate:date timeZone:timeZone];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  date = self->_date;
  coderCopy = coder;
  [coderCopy encodeObject:date forKey:@"date"];
  [coderCopy encodeObject:self->_timeZone forKey:@"timeZone"];
}

- (RETimeContentProvider)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"text"];

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
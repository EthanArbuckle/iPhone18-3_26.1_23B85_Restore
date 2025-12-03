@interface RERelativeDateContentProvider
+ (id)relativeDateContentProviderWithDate:(id)date style:(int64_t)style units:(unint64_t)units;
- (BOOL)isEqual:(id)equal;
- (RERelativeDateContentProvider)initWithCoder:(id)coder;
- (RERelativeDateContentProvider)initWithDate:(id)date style:(int64_t)style units:(unint64_t)units;
- (id)attributedStringRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RERelativeDateContentProvider

+ (id)relativeDateContentProviderWithDate:(id)date style:(int64_t)style units:(unint64_t)units
{
  dateCopy = date;
  v8 = [[RERelativeDateContentProvider alloc] initWithDate:dateCopy style:style units:units];

  return v8;
}

- (RERelativeDateContentProvider)initWithDate:(id)date style:(int64_t)style units:(unint64_t)units
{
  dateCopy = date;
  v13.receiver = self;
  v13.super_class = RERelativeDateContentProvider;
  v9 = [(RERelativeDateContentProvider *)&v13 init];
  if (v9)
  {
    v10 = [dateCopy copy];
    date = v9->_date;
    v9->_date = v10;

    v9->_style = style;
    v9->_units = units;
  }

  return v9;
}

- (id)attributedStringRepresentation
{
  v3 = objc_alloc(MEMORY[0x277CCA898]);
  v4 = MEMORY[0x277CCABB0];
  [(NSDate *)self->_date timeIntervalSinceNow];
  v5 = [v4 numberWithDouble:?];
  stringValue = [v5 stringValue];
  v7 = [v3 initWithString:stringValue];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  date = self->_date;
  style = self->_style;
  units = self->_units;

  return [v4 initWithDate:date style:style units:units];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if ([v5 units] == self->_units && objc_msgSend(v5, "style") == self->_style)
    {
      date = [v5 date];
      v7 = date;
      if (date == self->_date)
      {
        v8 = 1;
      }

      else
      {
        v8 = [(NSDate *)date isEqual:?];
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

- (void)encodeWithCoder:(id)coder
{
  date = self->_date;
  coderCopy = coder;
  [coderCopy encodeObject:date forKey:@"date"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_units];
  [coderCopy encodeObject:v6 forKey:@"units"];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:self->_style];
  [coderCopy encodeObject:v7 forKey:@"style"];
}

- (RERelativeDateContentProvider)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"units"];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"style"];

  unsignedIntegerValue2 = [v8 unsignedIntegerValue];
  v10 = [(RERelativeDateContentProvider *)self initWithDate:v5 style:unsignedIntegerValue2 units:unsignedIntegerValue];

  return v10;
}

@end
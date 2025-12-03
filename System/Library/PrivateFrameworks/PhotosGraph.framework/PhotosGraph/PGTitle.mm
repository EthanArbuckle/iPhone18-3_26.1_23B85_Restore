@interface PGTitle
+ (PGTitle)titleWithString:(id)string category:(int64_t)category;
- (BOOL)isEqual:(id)equal;
- (id)description;
@end

@implementation PGTitle

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p> %@ (%lu)", v5, self, self->_stringValue, self->_category];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = equalCopy;
      stringValue = [(PGTitle *)v7 stringValue];
      category = self->_category;
      if (category == [(PGTitle *)v7 category])
      {
        stringValue = self->_stringValue;
        if (stringValue == stringValue)
        {
          v6 = 1;
        }

        else
        {
          v6 = [(NSString *)stringValue isEqualToString:stringValue];
        }
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

+ (PGTitle)titleWithString:(id)string category:(int64_t)category
{
  stringCopy = string;
  v6 = objc_alloc_init(PGTitle);
  stringValue = v6->_stringValue;
  v6->_stringValue = stringCopy;

  v6->_category = category;

  return v6;
}

@end
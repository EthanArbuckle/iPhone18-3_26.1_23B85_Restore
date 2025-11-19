@interface PGTitle
+ (PGTitle)titleWithString:(id)a3 category:(int64_t)a4;
- (BOOL)isEqual:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = v4;
      v8 = [(PGTitle *)v7 stringValue];
      category = self->_category;
      if (category == [(PGTitle *)v7 category])
      {
        stringValue = self->_stringValue;
        if (stringValue == v8)
        {
          v6 = 1;
        }

        else
        {
          v6 = [(NSString *)stringValue isEqualToString:v8];
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

+ (PGTitle)titleWithString:(id)a3 category:(int64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(PGTitle);
  stringValue = v6->_stringValue;
  v6->_stringValue = v5;

  v6->_category = a4;

  return v6;
}

@end
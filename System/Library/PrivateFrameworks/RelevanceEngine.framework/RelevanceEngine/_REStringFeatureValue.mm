@interface _REStringFeatureValue
+ (id)featureValueWithString:(id)string;
- (BOOL)isEqual:(id)equal;
- (_REStringFeatureValue)initWithValue:(id)value;
@end

@implementation _REStringFeatureValue

- (_REStringFeatureValue)initWithValue:(id)value
{
  valueCopy = value;
  v9.receiver = self;
  v9.super_class = _REStringFeatureValue;
  v5 = [(_REStringFeatureValue *)&v9 init];
  if (v5)
  {
    v6 = [valueCopy copy];
    value = v5->_value;
    v5->_value = v6;
  }

  return v5;
}

+ (id)featureValueWithString:(id)string
{
  stringCopy = string;
  v4 = [[_REStringFeatureValue alloc] initWithValue:stringCopy];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      value = self->_value;
      v6 = equalCopy->_value;
      v7 = value;
      v8 = v7;
      if (v7 == v6)
      {
        v9 = 1;
      }

      else
      {
        v9 = [(NSString *)v7 isEqual:v6];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

@end
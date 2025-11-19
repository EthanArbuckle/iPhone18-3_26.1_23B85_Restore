@interface _REStringFeatureValue
+ (id)featureValueWithString:(id)a3;
- (BOOL)isEqual:(id)a3;
- (_REStringFeatureValue)initWithValue:(id)a3;
@end

@implementation _REStringFeatureValue

- (_REStringFeatureValue)initWithValue:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _REStringFeatureValue;
  v5 = [(_REStringFeatureValue *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    value = v5->_value;
    v5->_value = v6;
  }

  return v5;
}

+ (id)featureValueWithString:(id)a3
{
  v3 = a3;
  v4 = [[_REStringFeatureValue alloc] initWithValue:v3];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      value = self->_value;
      v6 = v4->_value;
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
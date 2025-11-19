@interface STTemperature
- (STTemperature)initWithCoder:(id)a3;
- (id)_initWithValue:(double)a3 units:(int64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STTemperature

- (STTemperature)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = STTemperature;
  v5 = [(STSiriModelObject *)&v8 initWithCoder:v4];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"_value"];
    v5->_value = v6;
    v5->_units = [v4 decodeIntegerForKey:@"_units"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STTemperature;
  v4 = a3;
  [(STSiriModelObject *)&v5 encodeWithCoder:v4];
  [v4 encodeDouble:@"_value" forKey:{self->_value, v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_units forKey:@"_units"];
}

- (id)_initWithValue:(double)a3 units:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = STTemperature;
  result = [(STTemperature *)&v7 init];
  if (result)
  {
    *(result + 2) = a3;
    *(result + 3) = a4;
  }

  return result;
}

@end
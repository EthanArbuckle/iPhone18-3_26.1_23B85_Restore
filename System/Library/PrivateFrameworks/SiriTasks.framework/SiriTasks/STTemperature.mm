@interface STTemperature
- (STTemperature)initWithCoder:(id)coder;
- (id)_initWithValue:(double)value units:(int64_t)units;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STTemperature

- (STTemperature)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = STTemperature;
  v5 = [(STSiriModelObject *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"_value"];
    v5->_value = v6;
    v5->_units = [coderCopy decodeIntegerForKey:@"_units"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STTemperature;
  coderCopy = coder;
  [(STSiriModelObject *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeDouble:@"_value" forKey:{self->_value, v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_units forKey:@"_units"];
}

- (id)_initWithValue:(double)value units:(int64_t)units
{
  v7.receiver = self;
  v7.super_class = STTemperature;
  result = [(STTemperature *)&v7 init];
  if (result)
  {
    *(result + 2) = value;
    *(result + 3) = units;
  }

  return result;
}

@end
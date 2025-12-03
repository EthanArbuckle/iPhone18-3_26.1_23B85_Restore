@interface STWeatherUnits
- (STWeatherUnits)initWithCoder:(id)coder;
- (id)_initWithTemperatureUnits:(int64_t)units;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STWeatherUnits

- (STWeatherUnits)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = STWeatherUnits;
  v5 = [(STSiriModelObject *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_temperatureUnits = [coderCopy decodeIntegerForKey:@"_temperatureUnits"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STWeatherUnits;
  coderCopy = coder;
  [(STSiriModelObject *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_temperatureUnits forKey:{@"_temperatureUnits", v5.receiver, v5.super_class}];
}

- (id)_initWithTemperatureUnits:(int64_t)units
{
  v5.receiver = self;
  v5.super_class = STWeatherUnits;
  result = [(STWeatherUnits *)&v5 init];
  if (result)
  {
    *(result + 2) = units;
  }

  return result;
}

@end
@interface STWeatherUnits
- (STWeatherUnits)initWithCoder:(id)a3;
- (id)_initWithTemperatureUnits:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STWeatherUnits

- (STWeatherUnits)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = STWeatherUnits;
  v5 = [(STSiriModelObject *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_temperatureUnits = [v4 decodeIntegerForKey:@"_temperatureUnits"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STWeatherUnits;
  v4 = a3;
  [(STSiriModelObject *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_temperatureUnits forKey:{@"_temperatureUnits", v5.receiver, v5.super_class}];
}

- (id)_initWithTemperatureUnits:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = STWeatherUnits;
  result = [(STWeatherUnits *)&v5 init];
  if (result)
  {
    *(result + 2) = a3;
  }

  return result;
}

@end
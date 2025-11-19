@interface STWeatherHourlyForecast
- (STWeatherHourlyForecast)initWithCoder:(id)a3;
- (id)_initWithConditionCodeIndex:(int64_t)a3 timeIndex:(int64_t)a4 temperature:(id)a5 chanceOfPrecipitation:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STWeatherHourlyForecast

- (STWeatherHourlyForecast)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = STWeatherHourlyForecast;
  v5 = [(STSiriModelObject *)&v11 initWithCoder:v4];
  if (v5)
  {
    v5->_conditionCode = [v4 decodeIntegerForKey:@"_conditionCode"];
    v5->_timeIndex = [v4 decodeIntegerForKey:@"_timeIndex"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_temperature"];
    temperature = v5->_temperature;
    v5->_temperature = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_chanceOfPrecipitation"];
    chanceOfPrecipitation = v5->_chanceOfPrecipitation;
    v5->_chanceOfPrecipitation = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STWeatherHourlyForecast;
  v4 = a3;
  [(STSiriModelObject *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_conditionCode forKey:{@"_conditionCode", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_timeIndex forKey:@"_timeIndex"];
  [v4 encodeObject:self->_temperature forKey:@"_temperature"];
  [v4 encodeObject:self->_chanceOfPrecipitation forKey:@"_chanceOfPrecipitation"];
}

- (id)_initWithConditionCodeIndex:(int64_t)a3 timeIndex:(int64_t)a4 temperature:(id)a5 chanceOfPrecipitation:(id)a6
{
  v11 = a5;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = STWeatherHourlyForecast;
  v13 = [(STWeatherHourlyForecast *)&v16 init];
  p_isa = &v13->super.super.isa;
  if (v13)
  {
    v13->_conditionCode = a3;
    v13->_timeIndex = a4;
    objc_storeStrong(&v13->_temperature, a5);
    objc_storeStrong(p_isa + 5, a6);
  }

  return p_isa;
}

@end
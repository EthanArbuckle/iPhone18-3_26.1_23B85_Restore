@interface STWeatherHourlyForecast
- (STWeatherHourlyForecast)initWithCoder:(id)coder;
- (id)_initWithConditionCodeIndex:(int64_t)index timeIndex:(int64_t)timeIndex temperature:(id)temperature chanceOfPrecipitation:(id)precipitation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STWeatherHourlyForecast

- (STWeatherHourlyForecast)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = STWeatherHourlyForecast;
  v5 = [(STSiriModelObject *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_conditionCode = [coderCopy decodeIntegerForKey:@"_conditionCode"];
    v5->_timeIndex = [coderCopy decodeIntegerForKey:@"_timeIndex"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_temperature"];
    temperature = v5->_temperature;
    v5->_temperature = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_chanceOfPrecipitation"];
    chanceOfPrecipitation = v5->_chanceOfPrecipitation;
    v5->_chanceOfPrecipitation = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STWeatherHourlyForecast;
  coderCopy = coder;
  [(STSiriModelObject *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_conditionCode forKey:{@"_conditionCode", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_timeIndex forKey:@"_timeIndex"];
  [coderCopy encodeObject:self->_temperature forKey:@"_temperature"];
  [coderCopy encodeObject:self->_chanceOfPrecipitation forKey:@"_chanceOfPrecipitation"];
}

- (id)_initWithConditionCodeIndex:(int64_t)index timeIndex:(int64_t)timeIndex temperature:(id)temperature chanceOfPrecipitation:(id)precipitation
{
  temperatureCopy = temperature;
  precipitationCopy = precipitation;
  v16.receiver = self;
  v16.super_class = STWeatherHourlyForecast;
  v13 = [(STWeatherHourlyForecast *)&v16 init];
  p_isa = &v13->super.super.isa;
  if (v13)
  {
    v13->_conditionCode = index;
    v13->_timeIndex = timeIndex;
    objc_storeStrong(&v13->_temperature, temperature);
    objc_storeStrong(p_isa + 5, precipitation);
  }

  return p_isa;
}

@end
@interface STShowWeatherForecastRequest
- (STShowWeatherForecastRequest)initWithCoder:(id)coder;
- (id)_initWithCurrentConditions:(id)conditions hourlyForecasts:(id)forecasts city:(id)city units:(id)units forecastType:(int64_t)type;
- (id)createResponse;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STShowWeatherForecastRequest

- (STShowWeatherForecastRequest)initWithCoder:(id)coder
{
  v20[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = STShowWeatherForecastRequest;
  v5 = [(AFSiriRequest *)&v19 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_currentConditions"];
    currentConditions = v5->_currentConditions;
    v5->_currentConditions = v6;

    v8 = MEMORY[0x277CBEB98];
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
    v10 = [v8 setWithArray:v9];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"_hourlyForecasts"];
    hourlyForecasts = v5->_hourlyForecasts;
    v5->_hourlyForecasts = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_city"];
    city = v5->_city;
    v5->_city = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_units"];
    units = v5->_units;
    v5->_units = v15;

    v5->_forecastType = [coderCopy decodeIntegerForKey:@"_forecastType"];
  }

  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STShowWeatherForecastRequest;
  coderCopy = coder;
  [(AFSiriRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_currentConditions forKey:{@"_currentConditions", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_hourlyForecasts forKey:@"_hourlyForecasts"];
  [coderCopy encodeObject:self->_city forKey:@"_city"];
  [coderCopy encodeObject:self->_units forKey:@"_units"];
  [coderCopy encodeInteger:self->_forecastType forKey:@"_forecastType"];
}

- (id)createResponse
{
  v2 = [objc_alloc(MEMORY[0x277CEF3F8]) _initWithRequest:self];

  return v2;
}

- (id)_initWithCurrentConditions:(id)conditions hourlyForecasts:(id)forecasts city:(id)city units:(id)units forecastType:(int64_t)type
{
  conditionsCopy = conditions;
  forecastsCopy = forecasts;
  cityCopy = city;
  unitsCopy = units;
  v20.receiver = self;
  v20.super_class = STShowWeatherForecastRequest;
  v17 = [(AFSiriRequest *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_currentConditions, conditions);
    objc_storeStrong(&v18->_hourlyForecasts, forecasts);
    objc_storeStrong(&v18->_city, city);
    objc_storeStrong(&v18->_units, units);
    v18->_forecastType = type;
  }

  return v18;
}

@end
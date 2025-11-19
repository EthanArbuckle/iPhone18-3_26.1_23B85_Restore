@interface STShowWeatherForecastRequest
- (STShowWeatherForecastRequest)initWithCoder:(id)a3;
- (id)_initWithCurrentConditions:(id)a3 hourlyForecasts:(id)a4 city:(id)a5 units:(id)a6 forecastType:(int64_t)a7;
- (id)createResponse;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STShowWeatherForecastRequest

- (STShowWeatherForecastRequest)initWithCoder:(id)a3
{
  v20[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19.receiver = self;
  v19.super_class = STShowWeatherForecastRequest;
  v5 = [(AFSiriRequest *)&v19 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_currentConditions"];
    currentConditions = v5->_currentConditions;
    v5->_currentConditions = v6;

    v8 = MEMORY[0x277CBEB98];
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
    v10 = [v8 setWithArray:v9];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"_hourlyForecasts"];
    hourlyForecasts = v5->_hourlyForecasts;
    v5->_hourlyForecasts = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_city"];
    city = v5->_city;
    v5->_city = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_units"];
    units = v5->_units;
    v5->_units = v15;

    v5->_forecastType = [v4 decodeIntegerForKey:@"_forecastType"];
  }

  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STShowWeatherForecastRequest;
  v4 = a3;
  [(AFSiriRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_currentConditions forKey:{@"_currentConditions", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_hourlyForecasts forKey:@"_hourlyForecasts"];
  [v4 encodeObject:self->_city forKey:@"_city"];
  [v4 encodeObject:self->_units forKey:@"_units"];
  [v4 encodeInteger:self->_forecastType forKey:@"_forecastType"];
}

- (id)createResponse
{
  v2 = [objc_alloc(MEMORY[0x277CEF3F8]) _initWithRequest:self];

  return v2;
}

- (id)_initWithCurrentConditions:(id)a3 hourlyForecasts:(id)a4 city:(id)a5 units:(id)a6 forecastType:(int64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v20.receiver = self;
  v20.super_class = STShowWeatherForecastRequest;
  v17 = [(AFSiriRequest *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_currentConditions, a3);
    objc_storeStrong(&v18->_hourlyForecasts, a4);
    objc_storeStrong(&v18->_city, a5);
    objc_storeStrong(&v18->_units, a6);
    v18->_forecastType = a7;
  }

  return v18;
}

@end
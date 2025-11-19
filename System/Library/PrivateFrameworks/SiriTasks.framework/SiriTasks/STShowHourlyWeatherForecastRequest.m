@interface STShowHourlyWeatherForecastRequest
- (STShowHourlyWeatherForecastRequest)initWithCoder:(id)a3;
- (id)_initWithCurrentAttributes:(id)a3 hourlyAttributes:(id)a4 city:(id)a5 startHour:(int64_t)a6 forecastType:(int64_t)a7;
- (id)createResponse;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STShowHourlyWeatherForecastRequest

- (STShowHourlyWeatherForecastRequest)initWithCoder:(id)a3
{
  v18[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = STShowHourlyWeatherForecastRequest;
  v5 = [(AFSiriRequest *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_currentAttributes"];
    currentAttributes = v5->_currentAttributes;
    v5->_currentAttributes = v6;

    v8 = MEMORY[0x277CBEB98];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    v10 = [v8 setWithArray:v9];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"_hourlyAttributes"];
    hourlyAttributes = v5->_hourlyAttributes;
    v5->_hourlyAttributes = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_city"];
    city = v5->_city;
    v5->_city = v13;

    v5->_startHour = [v4 decodeIntegerForKey:@"_startHour"];
    v5->_forecastType = [v4 decodeIntegerForKey:@"_forecastType"];
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STShowHourlyWeatherForecastRequest;
  v4 = a3;
  [(AFSiriRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_currentAttributes forKey:{@"_currentAttributes", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_hourlyAttributes forKey:@"_hourlyAttributes"];
  [v4 encodeObject:self->_city forKey:@"_city"];
  [v4 encodeInteger:self->_startHour forKey:@"_startHour"];
  [v4 encodeInteger:self->_forecastType forKey:@"_forecastType"];
}

- (id)createResponse
{
  v2 = [objc_alloc(MEMORY[0x277CEF3F8]) _initWithRequest:self];

  return v2;
}

- (id)_initWithCurrentAttributes:(id)a3 hourlyAttributes:(id)a4 city:(id)a5 startHour:(int64_t)a6 forecastType:(int64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v21.receiver = self;
  v21.super_class = STShowHourlyWeatherForecastRequest;
  v16 = [(AFSiriRequest *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_currentAttributes, a3);
    v18 = [v14 copy];
    hourlyAttributes = v17->_hourlyAttributes;
    v17->_hourlyAttributes = v18;

    objc_storeStrong(&v17->_city, a5);
    v17->_startHour = a6;
    v17->_forecastType = a7;
  }

  return v17;
}

@end
@interface STShowDailyWeatherForecastRequest
- (STShowDailyWeatherForecastRequest)initWithCoder:(id)a3;
- (id)_initWithCurrentAttributes:(id)a3 dailyAttributes:(id)a4 city:(id)a5 startWeekday:(int64_t)a6;
- (id)createResponse;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STShowDailyWeatherForecastRequest

- (STShowDailyWeatherForecastRequest)initWithCoder:(id)a3
{
  v18[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = STShowDailyWeatherForecastRequest;
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
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"_dailyAttributes"];
    dailyAttributes = v5->_dailyAttributes;
    v5->_dailyAttributes = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_city"];
    city = v5->_city;
    v5->_city = v13;

    v5->_startWeekday = [v4 decodeIntegerForKey:@"_startWeekday"];
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STShowDailyWeatherForecastRequest;
  v4 = a3;
  [(AFSiriRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_currentAttributes forKey:{@"_currentAttributes", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_dailyAttributes forKey:@"_dailyAttributes"];
  [v4 encodeObject:self->_city forKey:@"_city"];
  [v4 encodeInteger:self->_startWeekday forKey:@"_startWeekday"];
}

- (id)createResponse
{
  v2 = [objc_alloc(MEMORY[0x277CEF3F8]) _initWithRequest:self];

  return v2;
}

- (id)_initWithCurrentAttributes:(id)a3 dailyAttributes:(id)a4 city:(id)a5 startWeekday:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v19.receiver = self;
  v19.super_class = STShowDailyWeatherForecastRequest;
  v14 = [(AFSiriRequest *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_currentAttributes, a3);
    v16 = [v12 copy];
    dailyAttributes = v15->_dailyAttributes;
    v15->_dailyAttributes = v16;

    objc_storeStrong(&v15->_city, a5);
    v15->_startWeekday = a6;
  }

  return v15;
}

@end
@interface STShowDailyWeatherForecastRequest
- (STShowDailyWeatherForecastRequest)initWithCoder:(id)coder;
- (id)_initWithCurrentAttributes:(id)attributes dailyAttributes:(id)dailyAttributes city:(id)city startWeekday:(int64_t)weekday;
- (id)createResponse;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STShowDailyWeatherForecastRequest

- (STShowDailyWeatherForecastRequest)initWithCoder:(id)coder
{
  v18[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = STShowDailyWeatherForecastRequest;
  v5 = [(AFSiriRequest *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_currentAttributes"];
    currentAttributes = v5->_currentAttributes;
    v5->_currentAttributes = v6;

    v8 = MEMORY[0x277CBEB98];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    v10 = [v8 setWithArray:v9];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"_dailyAttributes"];
    dailyAttributes = v5->_dailyAttributes;
    v5->_dailyAttributes = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_city"];
    city = v5->_city;
    v5->_city = v13;

    v5->_startWeekday = [coderCopy decodeIntegerForKey:@"_startWeekday"];
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STShowDailyWeatherForecastRequest;
  coderCopy = coder;
  [(AFSiriRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_currentAttributes forKey:{@"_currentAttributes", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_dailyAttributes forKey:@"_dailyAttributes"];
  [coderCopy encodeObject:self->_city forKey:@"_city"];
  [coderCopy encodeInteger:self->_startWeekday forKey:@"_startWeekday"];
}

- (id)createResponse
{
  v2 = [objc_alloc(MEMORY[0x277CEF3F8]) _initWithRequest:self];

  return v2;
}

- (id)_initWithCurrentAttributes:(id)attributes dailyAttributes:(id)dailyAttributes city:(id)city startWeekday:(int64_t)weekday
{
  attributesCopy = attributes;
  dailyAttributesCopy = dailyAttributes;
  cityCopy = city;
  v19.receiver = self;
  v19.super_class = STShowDailyWeatherForecastRequest;
  v14 = [(AFSiriRequest *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_currentAttributes, attributes);
    v16 = [dailyAttributesCopy copy];
    dailyAttributes = v15->_dailyAttributes;
    v15->_dailyAttributes = v16;

    objc_storeStrong(&v15->_city, city);
    v15->_startWeekday = weekday;
  }

  return v15;
}

@end
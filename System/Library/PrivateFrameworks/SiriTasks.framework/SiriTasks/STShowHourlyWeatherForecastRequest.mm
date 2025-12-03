@interface STShowHourlyWeatherForecastRequest
- (STShowHourlyWeatherForecastRequest)initWithCoder:(id)coder;
- (id)_initWithCurrentAttributes:(id)attributes hourlyAttributes:(id)hourlyAttributes city:(id)city startHour:(int64_t)hour forecastType:(int64_t)type;
- (id)createResponse;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STShowHourlyWeatherForecastRequest

- (STShowHourlyWeatherForecastRequest)initWithCoder:(id)coder
{
  v18[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = STShowHourlyWeatherForecastRequest;
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
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"_hourlyAttributes"];
    hourlyAttributes = v5->_hourlyAttributes;
    v5->_hourlyAttributes = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_city"];
    city = v5->_city;
    v5->_city = v13;

    v5->_startHour = [coderCopy decodeIntegerForKey:@"_startHour"];
    v5->_forecastType = [coderCopy decodeIntegerForKey:@"_forecastType"];
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STShowHourlyWeatherForecastRequest;
  coderCopy = coder;
  [(AFSiriRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_currentAttributes forKey:{@"_currentAttributes", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_hourlyAttributes forKey:@"_hourlyAttributes"];
  [coderCopy encodeObject:self->_city forKey:@"_city"];
  [coderCopy encodeInteger:self->_startHour forKey:@"_startHour"];
  [coderCopy encodeInteger:self->_forecastType forKey:@"_forecastType"];
}

- (id)createResponse
{
  v2 = [objc_alloc(MEMORY[0x277CEF3F8]) _initWithRequest:self];

  return v2;
}

- (id)_initWithCurrentAttributes:(id)attributes hourlyAttributes:(id)hourlyAttributes city:(id)city startHour:(int64_t)hour forecastType:(int64_t)type
{
  attributesCopy = attributes;
  hourlyAttributesCopy = hourlyAttributes;
  cityCopy = city;
  v21.receiver = self;
  v21.super_class = STShowHourlyWeatherForecastRequest;
  v16 = [(AFSiriRequest *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_currentAttributes, attributes);
    v18 = [hourlyAttributesCopy copy];
    hourlyAttributes = v17->_hourlyAttributes;
    v17->_hourlyAttributes = v18;

    objc_storeStrong(&v17->_city, city);
    v17->_startHour = hour;
    v17->_forecastType = type;
  }

  return v17;
}

@end
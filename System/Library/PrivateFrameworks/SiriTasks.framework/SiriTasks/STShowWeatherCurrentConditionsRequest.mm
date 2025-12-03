@interface STShowWeatherCurrentConditionsRequest
- (STShowWeatherCurrentConditionsRequest)initWithCoder:(id)coder;
- (id)_initWithCurrentConditions:(id)conditions city:(id)city units:(id)units;
- (id)createResponse;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STShowWeatherCurrentConditionsRequest

- (STShowWeatherCurrentConditionsRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = STShowWeatherCurrentConditionsRequest;
  v5 = [(AFSiriRequest *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_currentConditions"];
    currentConditions = v5->_currentConditions;
    v5->_currentConditions = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_city"];
    city = v5->_city;
    v5->_city = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_units"];
    units = v5->_units;
    v5->_units = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STShowWeatherCurrentConditionsRequest;
  coderCopy = coder;
  [(AFSiriRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_currentConditions forKey:{@"_currentConditions", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_city forKey:@"_city"];
  [coderCopy encodeObject:self->_units forKey:@"_units"];
}

- (id)createResponse
{
  v2 = [objc_alloc(MEMORY[0x277CEF3F8]) _initWithRequest:self];

  return v2;
}

- (id)_initWithCurrentConditions:(id)conditions city:(id)city units:(id)units
{
  conditionsCopy = conditions;
  cityCopy = city;
  unitsCopy = units;
  v15.receiver = self;
  v15.super_class = STShowWeatherCurrentConditionsRequest;
  v12 = [(AFSiriRequest *)&v15 init];
  p_isa = &v12->super.super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_currentConditions, conditions);
    objc_storeStrong(p_isa + 6, city);
    objc_storeStrong(p_isa + 7, units);
  }

  return p_isa;
}

@end
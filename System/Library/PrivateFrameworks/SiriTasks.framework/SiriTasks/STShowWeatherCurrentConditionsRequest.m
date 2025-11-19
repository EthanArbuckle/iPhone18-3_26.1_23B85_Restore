@interface STShowWeatherCurrentConditionsRequest
- (STShowWeatherCurrentConditionsRequest)initWithCoder:(id)a3;
- (id)_initWithCurrentConditions:(id)a3 city:(id)a4 units:(id)a5;
- (id)createResponse;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STShowWeatherCurrentConditionsRequest

- (STShowWeatherCurrentConditionsRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = STShowWeatherCurrentConditionsRequest;
  v5 = [(AFSiriRequest *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_currentConditions"];
    currentConditions = v5->_currentConditions;
    v5->_currentConditions = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_city"];
    city = v5->_city;
    v5->_city = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_units"];
    units = v5->_units;
    v5->_units = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STShowWeatherCurrentConditionsRequest;
  v4 = a3;
  [(AFSiriRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_currentConditions forKey:{@"_currentConditions", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_city forKey:@"_city"];
  [v4 encodeObject:self->_units forKey:@"_units"];
}

- (id)createResponse
{
  v2 = [objc_alloc(MEMORY[0x277CEF3F8]) _initWithRequest:self];

  return v2;
}

- (id)_initWithCurrentConditions:(id)a3 city:(id)a4 units:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = STShowWeatherCurrentConditionsRequest;
  v12 = [(AFSiriRequest *)&v15 init];
  p_isa = &v12->super.super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_currentConditions, a3);
    objc_storeStrong(p_isa + 6, a4);
    objc_storeStrong(p_isa + 7, a5);
  }

  return p_isa;
}

@end